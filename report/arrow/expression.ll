inline.NumInlined: 7294
inline.NumDeleted: 3038
begin_hunk_0_@_ZN5arrow7compute10Expression4Call11ComputeHashEv:bb.a
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #29
  unreachable

_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  store i64 %i.d, ptr %i.g, align 8, !tbaa !39
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !62   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !62   ; 2 uses
  %i.l = icmp eq ptr %i.i, %i.k
  br i1 %i.l, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNK5arrow7compute10Expression4hashEv.exit, %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit
  ret void

.lr.ph:                                           ; preds = %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit, %_ZNK5arrow7compute10Expression4hashEv.exit
  %.sroa.04.08 = phi ptr [ %i.ae, %_ZNK5arrow7compute10Expression4hashEv.exit ], [ %i.i, %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit ] ; 2 uses
  %i.m = load ptr, ptr %.sroa.04.08, align 8, !tbaa !63, !nonnull !66, !noundef !66 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 144
  %i.o = load i8, ptr %i.n, align 8, !tbaa !67
  switch i8 %i.o, label %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i.i [
    i8 0, label %_ZNK5arrow7compute10Expression7literalEv.exit.i
    i8 1, label %bb.c
  ]

_ZNK5arrow7compute10Expression7literalEv.exit.i:  ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.q = load i8, ptr %i.p, align 8, !tbaa !69
  %i.r = icmp eq i8 %i.q, 1
  br i1 %i.r, label %_ZNK5arrow5Datum6scalarEv.exit.i, label %_ZNK5arrow7compute10Expression4hashEv.exit

_ZNK5arrow5Datum6scalarEv.exit.i:                 ; preds = %_ZNK5arrow7compute10Expression7literalEv.exit.i
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !71
  %i.t = tail call noundef i64 @_ZNK5arrow6Scalar4hashEv(ptr noundef nonnull align 8 dereferenceable(41) %i.s)
  br label %_ZNK5arrow7compute10Expression4hashEv.exit

bb.c:                                             ; preds = %.lr.ph
  %i.u = tail call noundef i64 @_ZNK5arrow8FieldRef4hashEv(ptr noundef nonnull align 8 dereferenceable(40) %i.m)
  br label %_ZNK5arrow7compute10Expression4hashEv.exit

_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i.i: ; preds = %.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %i.w = load i64, ptr %i.v, align 8, !tbaa !39
  br label %_ZNK5arrow7compute10Expression4hashEv.exit

_ZNK5arrow7compute10Expression4hashEv.exit:       ; preds = %_ZNK5arrow7compute10Expression7literalEv.exit.i, %_ZNK5arrow5Datum6scalarEv.exit.i, %bb.c, %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i.i
  %.2.i = phi i64 [ %i.w, %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i.i ], [ %i.u, %bb.c ], [ 0, %_ZNK5arrow7compute10Expression7literalEv.exit.i ], [ %i.t, %_ZNK5arrow5Datum6scalarEv.exit.i ]
  %i.x = add i64 %.2.i, 2654435769
  %i.y = load i64, ptr %i.g, align 8, !tbaa !74   ; 3 uses
  %i.z = shl i64 %i.y, 6
  %i.aa = add i64 %i.x, %i.z
  %i.ab = lshr i64 %i.y, 2
  %i.ac = add i64 %i.aa, %i.ab
  %i.ad = xor i64 %i.ac, %i.y
  store i64 %i.ad, ptr %i.g, align 8, !tbaa !74
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.04.08, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.k
  br i1 %i.af, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK5arrow7compute10Expression4hashEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #1 align 2 {
_ZSt6get_ifIN5arrow5DatumEJS1_NS0_7compute10Expression9ParameterENS3_4CallEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i:
  %i.a = load ptr, ptr %0, align 8, !tbaa !63, !nonnull !66, !noundef !66 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.c = load i8, ptr %i.b, align 8, !tbaa !67
  switch i8 %i.c, label %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i [
    i8 0, label %_ZNK5arrow7compute10Expression7literalEv.exit
    i8 1, label %bb.a
  ]

_ZNK5arrow7compute10Expression7literalEv.exit:    ; preds = %_ZSt6get_ifIN5arrow5DatumEJS1_NS0_7compute10Expression9ParameterENS3_4CallEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load i8, ptr %i.d, align 8, !tbaa !69
  %i.f = icmp eq i8 %i.e, 1
  br i1 %i.f, label %_ZNK5arrow5Datum6scalarEv.exit, label %.thread

_ZNK5arrow5Datum6scalarEv.exit:                   ; preds = %_ZNK5arrow7compute10Expression7literalEv.exit
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !71
  %i.h = tail call noundef i64 @_ZNK5arrow6Scalar4hashEv(ptr noundef nonnull align 8 dereferenceable(41) %i.g)
  br label %.thread

bb.a:                                             ; preds = %_ZSt6get_ifIN5arrow5DatumEJS1_NS0_7compute10Expression9ParameterENS3_4CallEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i
  %i.i = tail call noundef i64 @_ZNK5arrow8FieldRef4hashEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
  br label %.thread

_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i: ; preds = %_ZSt6get_ifIN5arrow5DatumEJS1_NS0_7compute10Expression9ParameterENS3_4CallEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.k = load i64, ptr %i.j, align 8, !tbaa !39
  br label %.thread

.thread:                                          ; preds = %_ZNK5arrow7compute10Expression7literalEv.exit, %_ZNK5arrow5Datum6scalarEv.exit, %bb.a, %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i
  %.2 = phi i64 [ %i.k, %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i ], [ %i.i, %bb.a ], [ 0, %_ZNK5arrow7compute10Expression7literalEv.exit ], [ %i.h, %_ZNK5arrow5Datum6scalarEv.exit ]
  ret i64 %.2
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute10ExpressionC2ENS1_4CallE(ptr noundef nonnull align 8 dereferenceable(16) initializes((0, 16)) %0, ptr noundef nonnull %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @_ZN5arrow7compute10Expression4Call11ComputeHashEv(ptr noundef nonnull align 8 dereferenceable(144) %1)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.a = invoke noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #30
          to label %bb.c unwind label %bb.k       ; 3 uses

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNSt23_Sp_counted_ptr_inplaceISt7variantIJN5arrow5DatumENS1_7compute10Expression9ParameterENS4_4CallEEESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJS6_EEES8_DpOT_(ptr noundef nonnull align 8 dereferenceable(168) %i.a, ptr noundef nonnull align 8 dereferenceable(144) %1), !noalias !75
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %0, align 8, !tbaa !78
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !79   ; 8 uses
  store ptr %i.a, ptr %i.c, align 8, !tbaa !79
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNSt12__shared_ptrISt7variantIJN5arrow5DatumENS1_7compute10Expression9ParameterENS4_4CallEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.e, align 8, !tbaa !80
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !82
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !83
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #31, !inline_history !85
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !83
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #31, !inline_history !85
  br label %_ZNSt12__shared_ptrISt7variantIJN5arrow5DatumENS1_7compute10Expression9ParameterENS4_4CallEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i = phi i32 [ %i.h, %bb.g ], [ %i.r, %bb.h ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.s, label %bb.i, label %_ZNSt12__shared_ptrISt7variantIJN5arrow5DatumENS1_7compute10Expression9ParameterENS4_4CallEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !87

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #31
  br label %_ZNSt12__shared_ptrISt7variantIJN5arrow5DatumENS1_7compute10Expression9ParameterENS4_4CallEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrISt7variantIJN5arrow5DatumENS1_7compute10Expression9ParameterENS4_4CallEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.e, %bb.c
  ret void

bb.j:                                             ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.b
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.u, %bb.k ], [ %i.t, %bb.j ]
  tail call void @_ZNSt12__shared_ptrISt7variantIJN5arrow5DatumENS1_7compute10Expression9ParameterENS4_4CallEEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #31
  resume { ptr, i32 } %.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute10ExpressionC2ENS_5DatumE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree noundef captures(none) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88)
  %i.a = tail call noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #30, !noalias !91 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !80, !noalias !88
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !82, !noalias !88
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceISt7variantIJN5arrow5DatumENS1_7compute10Expression9ParameterENS4_4CallEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !83, !noalias !88
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i8, ptr %i.d, align 8, !tbaa !69, !noalias !88 ; 2 uses
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %_ZSt11make_sharedISt7variantIJN5arrow5DatumENS1_7compute10Expression9ParameterENS4_4CallEEEJS2_EESt10shared_ptrIT_EDpOT0_.exit, label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load <2 x ptr>, ptr %1, align 8, !tbaa !94, !noalias !88
  store ptr null, ptr %i.h, align 8, !tbaa !79, !noalias !88
  store <2 x ptr> %i.i, ptr %i.g, align 8, !tbaa !94, !noalias !88
  store ptr null, ptr %1, align 8, !tbaa !94, !noalias !88
  br label %_ZSt11make_sharedISt7variantIJN5arrow5DatumENS1_7compute10Expression9ParameterENS4_4CallEEEJS2_EESt10shared_ptrIT_EDpOT0_.exit

_ZSt11make_sharedISt7variantIJN5arrow5DatumENS1_7compute10Expression9ParameterENS4_4CallEEEJS2_EESt10shared_ptrIT_EDpOT0_.exit: ; preds = %bb.a, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 %i.e, ptr %i.k, align 8, !tbaa !69, !noalias !88
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store i8 0, ptr %i.l, align 8, !tbaa !67, !noalias !88
  store ptr %i.a, ptr %i.j, align 8, !tbaa !79, !alias.scope !88
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.m, ptr %0, align 8, !tbaa !78, !alias.scope !88
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute10ExpressionC2ENS1_9ParameterE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #30, !noalias !98 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 1, ptr %i.c, align 8, !tbaa !80, !noalias !95
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 1, ptr %i.d, align 4, !tbaa !82, !noalias !95
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceISt7variantIJN5arrow5DatumENS1_7compute10Expression9ParameterENS4_4CallEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.b, align 8, !tbaa !83, !noalias !95
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  tail call void @_ZNSt8__detail9__variant14_UninitializedIN5arrow7compute10Expression9ParameterELb0EEC2IJS5_EEESt16in_place_index_tILm0EEDpOT_(ptr noundef nonnull align 8 dereferenceable(145) %i.e, ptr noundef nonnull align 8 dereferenceable(96) %1), !noalias !95
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store i8 1, ptr %i.f, align 8, !tbaa !67, !noalias !95
  store ptr %i.b, ptr %i.a, align 8, !tbaa !79, !alias.scope !95
  store ptr %i.e, ptr %0, align 8, !tbaa !78, !alias.scope !95
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute7literalENS_5DatumE(ptr dead_on_unwind noalias writable sret(%"class.arrow::compute::Expression") align 8 %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.365, align 1            ; 3 uses
  %3 = alloca %"struct.arrow::Datum", align 16    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i8, ptr %i.b, align 8, !tbaa !69    ; 2 uses
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %_ZN5arrow5DatumC2EOS0_.exit, label %.sink.split.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i:                      ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load <2 x ptr>, ptr %1, align 8, !tbaa !94
  store ptr null, ptr %i.e, align 8, !tbaa !79
  store <2 x ptr> %i.f, ptr %3, align 16, !tbaa !94
  store ptr null, ptr %1, align 8, !tbaa !94
  br label %_ZN5arrow5DatumC2EOS0_.exit

_ZN5arrow5DatumC2EOS0_.exit:                      ; preds = %bb.a, %.sink.split.i.i.i.i.i.i.i.i
  store i8 %i.c, ptr %i.a, align 16, !tbaa !69
  invoke void @_ZN5arrow7compute10ExpressionC1ENS_5DatumE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN5arrow5DatumC2EOS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %_ZN5arrow5DatumD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  call void @__clang_call_terminate(ptr %i.h) #29
  unreachable

_ZN5arrow5DatumD2Ev.exit:                         ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  ret void

bb.d:                                             ; preds = %_ZN5arrow5DatumC2EOS0_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow5DatumD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #31
  resume { ptr, i32 } %i.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow5DatumD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.365, align 1            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(17) %0)
          to label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS2_6ScalarEES5_INS2_9ArrayDataEES5_INS2_12ChunkedArrayEES5_INS2_11RecordBatchEES5_INS2_5TableEEEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  call void @__clang_call_terminate(ptr %i.b) #29
  unreachable

_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS2_6ScalarEES5_INS2_9ArrayDataEES5_INS2_12ChunkedArrayEES5_INS2_11RecordBatchEES5_INS2_5TableEEEED2Ev.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute9field_refENS_8FieldRefE(ptr dead_on_unwind noalias writable sret(%"class.arrow::compute::Expression") align 8 %0, ptr noundef %1) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.arrow::compute::Expression::Parameter", align 16 ; 25 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load i8, ptr %i.b, align 8, !tbaa !101   ; 2 uses
  switch i8 %i.c, label %bb.f [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.e
    i8 -1, label %_ZN5arrow8FieldRefC2EOS0_.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = load <2 x ptr>, ptr %1, align 8, !tbaa !103
  store <2 x ptr> %i.d, ptr %2, align 16, !tbaa !103
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !105
  store ptr %i.g, ptr %i.e, align 16, !tbaa !105
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, i8 0, i64 24, i1 false)
  br label %_ZN5arrow8FieldRefC2EOS0_.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.h, ptr %2, align 16, !tbaa !107
  %i.i = load ptr, ptr %1, align 8, !tbaa !33     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !38   ; 3 uses
  %i.n = icmp ult i64 %i.m, 16
  call void @llvm.assume(i1 %i.n)
  %i.o = add nuw nsw i64 %i.m, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.h, ptr noundef nonnull align 8 dereferenceable(1) %i.j, i64 %i.o, i1 false)
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS5_8FieldRefESaISE_EEEEC1EOSH_EUlOT_T0_E_OSt7variantIJS6_SC_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESN_SQ_.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  store ptr %i.i, ptr %2, align 16, !tbaa !33
  %i.p = load i64, ptr %i.j, align 8, !tbaa !86
  store i64 %i.p, ptr %i.h, align 16, !tbaa !86
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !38
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS5_8FieldRefESaISE_EEEEC1EOSH_EUlOT_T0_E_OSt7variantIJS6_SC_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESN_SQ_.exit.i.i.i.i.i.i.i.i

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS5_8FieldRefESaISE_EEEEC1EOSH_EUlOT_T0_E_OSt7variantIJS6_SC_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESN_SQ_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.d
  %i.q = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.m, %bb.d ]
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.q, ptr %i.s, align 8, !tbaa !38
  store ptr %i.j, ptr %1, align 8, !tbaa !33
  store i64 0, ptr %i.r, align 8, !tbaa !38
  store i8 0, ptr %i.j, align 8, !tbaa !86
  br label %_ZN5arrow8FieldRefC2EOS0_.exit

bb.e:                                             ; preds = %bb.a
  %i.t = load <2 x ptr>, ptr %1, align 8, !tbaa !108
  store <2 x ptr> %i.t, ptr %2, align 16, !tbaa !108
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !110
  store ptr %i.w, ptr %i.u, align 16, !tbaa !110
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, i8 0, i64 24, i1 false)
  br label %_ZN5arrow8FieldRefC2EOS0_.exit

bb.f:                                             ; preds = %bb.a
  unreachable

_ZN5arrow8FieldRefC2EOS0_.exit:                   ; preds = %bb.a, %bb.b, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS5_8FieldRefESaISE_EEEEC1EOSH_EUlOT_T0_E_OSt7variantIJS6_SC_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESN_SQ_.exit.i.i.i.i.i.i.i.i, %bb.e
  store i8 %i.c, ptr %i.a, align 16, !tbaa !101
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false)
  store ptr %i.y, ptr %i.aa, align 16, !tbaa !112
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  store i64 0, ptr %i.ab, align 8, !tbaa !115
  store i64 1, ptr %i.z, align 8, !tbaa !116
  store i32 -1, ptr %i.y, align 16, !tbaa !3
  invoke void @_ZN5arrow7compute10ExpressionC1ENS1_9ParameterE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %2)
          to label %bb.g unwind label %.critedge

bb.g:                                             ; preds = %_ZN5arrow8FieldRefC2EOS0_.exit
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !115
  %.not.i.i.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.i.i, label %_ZN5arrow8internal16StaticVectorImplIiLm2ENS0_18SmallVectorStorageIiLm2EEEED2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = load ptr, ptr %i.aa, align 16, !tbaa !112 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_ZN5arrow8internal16StaticVectorImplIiLm2ENS0_18SmallVectorStorageIiLm2EEEED2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZdaPv(ptr noundef nonnull %i.ad) #32
  br label %_ZN5arrow8internal16StaticVectorImplIiLm2ENS0_18SmallVectorStorageIiLm2EEEED2Ev.exit.i

_ZN5arrow8internal16StaticVectorImplIiLm2ENS0_18SmallVectorStorageIiLm2EEEED2Ev.exit.i: ; preds = %bb.i, %bb.h, %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !79 ; 8 uses
  %.not.i.i.i1.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i1.i, label %_ZN5arrow10TypeHolderD2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZN5arrow8internal16StaticVectorImplIiLm2ENS0_18SmallVectorStorageIiLm2EEEED2Ev.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 4 uses
  %i.ai = load atomic i64, ptr %i.ah acquire, align 8 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 4294967297
  %i.ak = trunc i64 %i.ai to i32                  ; 2 uses
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ah, align 8, !tbaa !80
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  store i32 0, ptr %i.al, align 4, !tbaa !82
  %i.am = load ptr, ptr %i.ag, align 8, !tbaa !83
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #31, !inline_history !117
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !83
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
end_hunk_0
begin_hunk_1_@_ZN5arrow7compute12_GLOBAL__N_110PrintDatumB5cxx11ERKNS_5DatumE:bb.a
bb.b:                                             ; preds = %_ZNK5arrow5Datum6scalarEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.g = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow5Datum4typeEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !139  ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !83
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  call void %i.k(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(72) %i.h, i1 noundef zeroext false)
  %i.l = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.34, i64 noundef 5)
          to label %.noexc unwind label %bb.i     ; 8 uses

.noexc:                                           ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 13 uses
  store ptr %i.m, ptr %2, align 8, !tbaa !107, !alias.scope !190
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !33   ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 7 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread, label %bb.c

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread: ; preds = %.noexc
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !38   ; 5 uses
  %i.s = icmp ult i64 %i.r, 16
  call void @llvm.assume(i1 %i.s)
  %i.t = add nuw nsw i64 %i.r, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.m, ptr noundef nonnull align 8 dereferenceable(1) %i.o, i64 %i.t, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.r, ptr %i.v, align 8, !tbaa !38, !alias.scope !190
  store ptr %i.o, ptr %i.l, align 8, !tbaa !33
  store i64 0, ptr %i.u, align 8, !tbaa !38
  store i8 0, ptr %i.o, align 8, !tbaa !86
  %i.w = add nuw nsw i64 %i.r, 1
  br label %bb.e

bb.c:                                             ; preds = %.noexc
  store ptr %i.n, ptr %2, align 8, !tbaa !33, !alias.scope !190
  %i.x = load i64, ptr %i.o, align 8, !tbaa !86
  store i64 %i.x, ptr %i.m, align 8, !tbaa !86, !alias.scope !190
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !38 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 %.pre.i, ptr %i.z, align 8, !tbaa !38, !alias.scope !190
  store ptr %i.o, ptr %i.l, align 8, !tbaa !33
  store i64 0, ptr %i.y, align 8, !tbaa !38
  store i8 0, ptr %i.o, align 8, !tbaa !86
  call void @llvm.experimental.noalias.scope.decl(metadata !193)
  %i.aa = icmp eq i64 %.pre.i, 9223372036854775807
  br i1 %i.aa, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #33
          to label %.noexc27 unwind label %bb.j

.noexc27:                                         ; preds = %bb.d
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.c
  %i.ab = add nsw i64 %.pre.i, 1                  ; 2 uses
  %i.ac = icmp eq ptr %i.n, %i.m
  br i1 %i.ac, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.ad = phi i64 [ %i.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread ], [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i ]
  %i.ae = phi ptr [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread ], [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i ]
  %i.af = phi i64 [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i ] ; 2 uses
  %i.ag = phi ptr [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread ], [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i ]
  %i.ah = icmp ult i64 %i.af, 16
  call void @llvm.assume(i1 %i.ah)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.ai = phi i1 [ true, %bb.e ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i ]
  %i.aj = phi i64 [ %i.ad, %bb.e ], [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i ] ; 3 uses
  %i.ak = phi ptr [ %i.ae, %bb.e ], [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i ]
  %i.al = phi i64 [ %i.af, %bb.e ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i ] ; 2 uses
  %i.am = phi ptr [ %i.ag, %bb.e ], [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i ] ; 4 uses
  %i.an = load i64, ptr %i.m, align 8, !noalias !193
  %i.ao = select i1 %i.ai, i64 15, i64 %i.an
  %.not.i.i.i24 = icmp ugt i64 %i.aj, %i.ao
  br i1 %.not.i.i.i24, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.al
  store i8 93, ptr %i.ap, align 1, !tbaa !86, !noalias !193
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.al, i64 noundef 0, ptr noundef nonnull @.str.35, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i unwind label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.g, %bb.f
  store i64 %i.aj, ptr %i.am, align 8, !tbaa !38, !noalias !193
  %i.aq = load ptr, ptr %2, align 8, !tbaa !33, !noalias !193
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.aj
  store i8 0, ptr %i.ar, align 1, !tbaa !86, !noalias !193
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.as, ptr %0, align 8, !tbaa !107, !alias.scope !193
  %i.at = load ptr, ptr %2, align 8, !tbaa !33, !noalias !193 ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.m
  br i1 %i.au, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.av = load i64, ptr %i.am, align 8, !tbaa !38, !noalias !193 ; 3 uses
  %i.aw = icmp ult i64 %i.av, 16
  call void @llvm.assume(i1 %i.aw)
  %i.ax = add nuw nsw i64 %i.av, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.as, ptr noundef nonnull align 8 dereferenceable(1) %i.m, i64 %i.ax, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.at, ptr %0, align 8, !tbaa !33, !alias.scope !193
  %i.ay = load i64, ptr %i.m, align 8, !tbaa !86, !noalias !193
  store i64 %i.ay, ptr %i.as, align 8, !tbaa !86, !alias.scope !193
  %.pre.i26 = load i64, ptr %i.am, align 8, !tbaa !38, !noalias !193
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25, %bb.h
  %i.az = phi i64 [ %i.av, %bb.h ], [ %.pre.i26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25 ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.az, ptr %i.ba, align 8, !tbaa !38, !alias.scope !193
  store ptr %i.m, ptr %2, align 8, !tbaa !33, !noalias !193
  store i64 0, ptr %i.am, align 8, !tbaa !38, !noalias !193
  store i8 0, ptr %i.m, align 8, !tbaa !86, !noalias !193
  %i.bb = load ptr, ptr %3, align 8, !tbaa !33    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !86
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %bb.ap

bb.i:                                             ; preds = %bb.b
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

bb.j:                                             ; preds = %bb.g, %bb.d
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bi = load ptr, ptr %2, align 8, !tbaa !33    ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.m
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %bb.j
  %i.bk = load i64, ptr %i.m, align 8, !tbaa !86
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33, %bb.i
  %.pn17 = phi { ptr, i32 } [ %i.bg, %bb.i ], [ %i.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33 ], [ %i.bh, %bb.j ]
  %i.bm = load ptr, ptr %3, align 8, !tbaa !33    ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !86
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %bb.aq

bb.k:                                             ; preds = %_ZNK5arrow5Datum6scalarEv.exit
  %i.br = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow5Datum4typeEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !139
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !196
  switch i32 %i.bu, label %bb.ad [
    i32 13, label %bb.l
    i32 34, label %bb.l
    i32 14, label %bb.u
    i32 15, label %bb.u
    i32 35, label %bb.u
  ]

bb.l:                                             ; preds = %bb.k, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.bv = load i8, ptr %i.a, align 8, !tbaa !69
  %.not.i.i.i.i = icmp eq i8 %i.bv, 1
  br i1 %.not.i.i.i.i, label %_ZNK5arrow5Datum9scalar_asINS_16BaseBinaryScalarEEERKT_v.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bw = tail call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.bw, align 8, !tbaa !83
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store ptr @.str.44, ptr %i.bx, align 8, !tbaa !210
  tail call void @__cxa_throw(ptr nonnull %i.bw, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #33
  unreachable

_ZNK5arrow5Datum9scalar_asINS_16BaseBinaryScalarEEERKT_v.exit: ; preds = %bb.l
  %i.by = load ptr, ptr %1, align 8, !tbaa !71
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 48
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !213 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !216
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !223
  call void @_ZN5arrow6EscapeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, i64 %i.ce, ptr %i.cc)
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EES5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i8 noundef signext 34, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.n unwind label %bb.s

bb.n:                                             ; preds = %_ZNK5arrow5Datum9scalar_asINS_16BaseBinaryScalarEEERKT_v.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !224)
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !38, !noalias !224 ; 5 uses
  %i.ch = icmp eq i64 %i.cg, 9223372036854775807
  br i1 %i.ch, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #33
          to label %.noexc43 unwind label %bb.t

.noexc43:                                         ; preds = %bb.o
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.n
  %i.ci = add nsw i64 %i.cg, 1                    ; 3 uses
  %i.cj = load ptr, ptr %4, align 8, !tbaa !33, !noalias !224 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.cl = icmp eq ptr %i.cj, %i.ck                ; 2 uses
  br i1 %i.cl, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i39

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.cm = icmp ult i64 %i.cg, 16
  call void @llvm.assume(i1 %i.cm)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i39: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.cn = load i64, ptr %i.ck, align 8, !noalias !224
  %i.co = select i1 %i.cl, i64 15, i64 %i.cn
  %.not.i.i.i40 = icmp ugt i64 %i.ci, %i.co
  br i1 %.not.i.i.i40, label %bb.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit.i

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i39
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.cg, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc44 unwind label %bb.t

.noexc44:                                         ; preds = %bb.q
  %.pre.i42 = load ptr, ptr %4, align 8, !tbaa !33, !noalias !224
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit.i: ; preds = %.noexc44, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i39
  %i.cp = phi ptr [ %i.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i39 ], [ %.pre.i42, %.noexc44 ]
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cg
  store i8 34, ptr %i.cq, align 1, !tbaa !86, !noalias !224
  store i64 %i.ci, ptr %i.cf, align 8, !tbaa !38, !noalias !224
  %i.cr = load ptr, ptr %4, align 8, !tbaa !33, !noalias !224
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.ci
  store i8 0, ptr %i.cs, align 1, !tbaa !86, !noalias !224
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ct, ptr %0, align 8, !tbaa !107, !alias.scope !224
  %i.cu = load ptr, ptr %4, align 8, !tbaa !33, !noalias !224 ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.ck
  br i1 %i.cv, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit.i
  %i.cw = load i64, ptr %i.cf, align 8, !tbaa !38, !noalias !224 ; 3 uses
  %i.cx = icmp ult i64 %i.cw, 16
  call void @llvm.assume(i1 %i.cx)
  %i.cy = add nuw nsw i64 %i.cw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ct, ptr noundef nonnull align 8 dereferenceable(1) %i.ck, i64 %i.cy, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit.i
  store ptr %i.cu, ptr %0, align 8, !tbaa !33, !alias.scope !224
  %i.cz = load i64, ptr %i.ck, align 8, !tbaa !86, !noalias !224
  store i64 %i.cz, ptr %i.ct, align 8, !tbaa !86, !alias.scope !224
  %.pre1.i = load i64, ptr %i.cf, align 8, !tbaa !38, !noalias !224
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41, %bb.r
  %i.da = phi i64 [ %i.cw, %bb.r ], [ %.pre1.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41 ]
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.da, ptr %i.db, align 8, !tbaa !38, !alias.scope !224
  store ptr %i.ck, ptr %4, align 8, !tbaa !33, !noalias !224
  store i64 0, ptr %i.cf, align 8, !tbaa !38, !noalias !224
  store i8 0, ptr %i.ck, align 8, !tbaa !86, !noalias !224
  %i.dc = load ptr, ptr %5, align 8, !tbaa !33    ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.de = icmp eq ptr %i.dc, %i.dd
  br i1 %i.de, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47
  %i.df = load i64, ptr %i.dd, align 8, !tbaa !86
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.dg) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.ap

bb.s:                                             ; preds = %_ZNK5arrow5Datum9scalar_asINS_16BaseBinaryScalarEEERKT_v.exit
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

bb.t:                                             ; preds = %bb.q, %bb.o
  %i.di = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dj = load ptr, ptr %4, align 8, !tbaa !33    ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.dl = icmp eq ptr %i.dj, %i.dk
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.t
  %i.dm = load i64, ptr %i.dk, align 8, !tbaa !86
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dn) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51, %bb.s
  %.pn21 = phi { ptr, i32 } [ %i.dh, %bb.s ], [ %i.di, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51 ], [ %i.di, %bb.t ]
  %i.do = load ptr, ptr %5, align 8, !tbaa !33    ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.dq = icmp eq ptr %i.do, %i.dp
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  %i.dr = load i64, ptr %i.dp, align 8, !tbaa !86
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.ds) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.aq

bb.u:                                             ; preds = %bb.k, %bb.k, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.dt = load i8, ptr %i.a, align 8, !tbaa !69
  %.not.i.i.i.i57 = icmp eq i8 %i.dt, 1
  br i1 %.not.i.i.i.i57, label %_ZNK5arrow5Datum9scalar_asINS_16BaseBinaryScalarEEERKT_v.exit58, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.du = tail call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.du, align 8, !tbaa !83
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store ptr @.str.44, ptr %i.dv, align 8, !tbaa !210
  tail call void @__cxa_throw(ptr nonnull %i.du, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #33
  unreachable

_ZNK5arrow5Datum9scalar_asINS_16BaseBinaryScalarEEERKT_v.exit58: ; preds = %bb.u
  %i.dw = load ptr, ptr %1, align 8, !tbaa !71
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 48
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !213
  call void @_ZN5arrow6Buffer11ToHexStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(80) %i.dy)
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EES5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, i8 noundef signext 34, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.w unwind label %bb.ab

bb.w:                                             ; preds = %_ZNK5arrow5Datum9scalar_asINS_16BaseBinaryScalarEEERKT_v.exit58
  call void @llvm.experimental.noalias.scope.decl(metadata !227)
  %i.dz = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !38, !noalias !227 ; 5 uses
  %i.eb = icmp eq i64 %i.ea, 9223372036854775807
  br i1 %i.eb, label %bb.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i59

bb.x:                                             ; preds = %bb.w
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #33
          to label %.noexc66 unwind label %bb.ac

.noexc66:                                         ; preds = %bb.x
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i59: ; preds = %bb.w
  %i.ec = add nsw i64 %i.ea, 1                    ; 3 uses
  %i.ed = load ptr, ptr %6, align 8, !tbaa !33, !noalias !227 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.ef = icmp eq ptr %i.ed, %i.ee                ; 2 uses
  br i1 %i.ef, label %bb.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i60

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i59
  %i.eg = icmp ult i64 %i.ea, 16
  call void @llvm.assume(i1 %i.eg)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i60: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i59
  %i.eh = load i64, ptr %i.ee, align 8, !noalias !227
  %i.ei = select i1 %i.ef, i64 15, i64 %i.eh
  %.not.i.i.i61 = icmp ugt i64 %i.ec, %i.ei
  br i1 %.not.i.i.i61, label %bb.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit.i62

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i60
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.ea, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc67 unwind label %bb.ac

.noexc67:                                         ; preds = %bb.z
  %.pre.i65 = load ptr, ptr %6, align 8, !tbaa !33, !noalias !227
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit.i62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit.i62: ; preds = %.noexc67, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i60
  %i.ej = phi ptr [ %i.ed, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i60 ], [ %.pre.i65, %.noexc67 ]
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.ea
  store i8 34, ptr %i.ek, align 1, !tbaa !86, !noalias !227
  store i64 %i.ec, ptr %i.dz, align 8, !tbaa !38, !noalias !227
  %i.el = load ptr, ptr %6, align 8, !tbaa !33, !noalias !227
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ec
  store i8 0, ptr %i.em, align 1, !tbaa !86, !noalias !227
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.en, ptr %0, align 8, !tbaa !107, !alias.scope !227
  %i.eo = load ptr, ptr %6, align 8, !tbaa !33, !noalias !227 ; 2 uses
  %i.ep = icmp eq ptr %i.eo, %i.ee
  br i1 %i.ep, label %bb.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit.i62
  %i.eq = load i64, ptr %i.dz, align 8, !tbaa !38, !noalias !227 ; 3 uses
  %i.er = icmp ult i64 %i.eq, 16
  call void @llvm.assume(i1 %i.er)
  %i.es = add nuw nsw i64 %i.eq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.en, ptr noundef nonnull align 8 dereferenceable(1) %i.ee, i64 %i.es, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit.i62
  store ptr %i.eo, ptr %0, align 8, !tbaa !33, !alias.scope !227
  %i.et = load i64, ptr %i.ee, align 8, !tbaa !86, !noalias !227
  store i64 %i.et, ptr %i.en, align 8, !tbaa !86, !alias.scope !227
  %.pre1.i64 = load i64, ptr %i.dz, align 8, !tbaa !38, !noalias !227
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63, %bb.aa
  %i.eu = phi i64 [ %i.eq, %bb.aa ], [ %.pre1.i64, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63 ]
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.eu, ptr %i.ev, align 8, !tbaa !38, !alias.scope !227
  store ptr %i.ee, ptr %6, align 8, !tbaa !33, !noalias !227
  store i64 0, ptr %i.dz, align 8, !tbaa !38, !noalias !227
  store i8 0, ptr %i.ee, align 8, !tbaa !86, !noalias !227
  %i.ew = load ptr, ptr %7, align 8, !tbaa !33    ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ey = icmp eq ptr %i.ew, %i.ex
  br i1 %i.ey, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71
  %i.ez = load i64, ptr %i.ex, align 8, !tbaa !86
  %i.fa = add i64 %i.ez, 1
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.fa) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %bb.ap

bb.ab:                                            ; preds = %_ZNK5arrow5Datum9scalar_asINS_16BaseBinaryScalarEEERKT_v.exit58
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

bb.ac:                                            ; preds = %bb.z, %bb.x
  %i.fc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fd = load ptr, ptr %6, align 8, !tbaa !33    ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ff = icmp eq ptr %i.fd, %i.fe
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75: ; preds = %bb.ac
  %i.fg = load i64, ptr %i.fe, align 8, !tbaa !86
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fh) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75, %bb.ab
  %.pn19 = phi { ptr, i32 } [ %i.fb, %bb.ab ], [ %i.fc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75 ], [ %i.fc, %bb.ac ]
  %i.fi = load ptr, ptr %7, align 8, !tbaa !33    ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.fk = icmp eq ptr %i.fi, %i.fj
  br i1 %i.fk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77
  %i.fl = load i64, ptr %i.fj, align 8, !tbaa !86
  %i.fm = add i64 %i.fl, 1
  call void @_ZdlPvm(ptr noundef %i.fi, i64 noundef %i.fm) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %bb.aq

bb.ad:                                            ; preds = %bb.k
  %i.fn = load i8, ptr %i.a, align 8, !tbaa !69
  %.not.i.i.i81 = icmp eq i8 %i.fn, 1
  br i1 %.not.i.i.i81, label %_ZNK5arrow5Datum6scalarEv.exit82, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fo = tail call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.fo, align 8, !tbaa !83
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  store ptr @.str.44, ptr %i.fp, align 8, !tbaa !210
  tail call void @__cxa_throw(ptr nonnull %i.fo, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #33
  unreachable

_ZNK5arrow5Datum6scalarEv.exit82:                 ; preds = %bb.ad
  %i.fq = load ptr, ptr %1, align 8, !tbaa !71
  tail call void @_ZNK5arrow6Scalar8ToStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(41) %i.fq)
  br label %bb.ap

bb.af:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  %i.fr = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow5Datum4typeEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !139 ; 2 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !83
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 32
  %i.fv = load ptr, ptr %i.fu, align 8
  call void %i.fv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(72) %i.fs, i1 noundef zeroext false)
  %i.fw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.36, i64 noundef 6)
          to label %.noexc86 unwind label %bb.am  ; 8 uses

.noexc86:                                         ; preds = %bb.af
  %i.fx = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 13 uses
  store ptr %i.fx, ptr %8, align 8, !tbaa !107, !alias.scope !230
  %i.fy = load ptr, ptr %i.fw, align 8, !tbaa !33 ; 5 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 16 ; 7 uses
  %i.ga = icmp eq ptr %i.fy, %i.fz
  br i1 %i.ga, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i88.thread, label %bb.ag

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i88.thread: ; preds = %.noexc86
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !38 ; 5 uses
  %i.gd = icmp ult i64 %i.gc, 16
  call void @llvm.assume(i1 %i.gd)
  %i.ge = add nuw nsw i64 %i.gc, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fx, ptr noundef nonnull align 8 dereferenceable(1) %i.fz, i64 %i.ge, i1 false)
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.gg = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 %i.gc, ptr %i.gg, align 8, !tbaa !38, !alias.scope !230
  store ptr %i.fz, ptr %i.fw, align 8, !tbaa !33
  store i64 0, ptr %i.gf, align 8, !tbaa !38
  store i8 0, ptr %i.fz, align 8, !tbaa !86
  %i.gh = add nuw nsw i64 %i.gc, 1
  br label %bb.ai

bb.ag:                                            ; preds = %.noexc86
  store ptr %i.fy, ptr %8, align 8, !tbaa !33, !alias.scope !230
  %i.gi = load i64, ptr %i.fz, align 8, !tbaa !86
  store i64 %i.gi, ptr %i.fx, align 8, !tbaa !86, !alias.scope !230
  %.phi.trans.insert.i84 = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %.pre.i85 = load i64, ptr %.phi.trans.insert.i84, align 8, !tbaa !38 ; 5 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.gk = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store i64 %.pre.i85, ptr %i.gk, align 8, !tbaa !38, !alias.scope !230
  store ptr %i.fz, ptr %i.fw, align 8, !tbaa !33
  store i64 0, ptr %i.gj, align 8, !tbaa !38
  store i8 0, ptr %i.fz, align 8, !tbaa !86
  call void @llvm.experimental.noalias.scope.decl(metadata !233)
  %i.gl = icmp eq i64 %.pre.i85, 9223372036854775807
  br i1 %i.gl, label %bb.ah, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i88

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #33
          to label %.noexc96 unwind label %bb.an

.noexc96:                                         ; preds = %bb.ah
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i88: ; preds = %bb.ag
  %i.gm = add nsw i64 %.pre.i85, 1                ; 2 uses
  %i.gn = icmp eq ptr %i.fy, %i.fx
  br i1 %i.gn, label %bb.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i89

bb.ai:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i88.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i88
  %i.go = phi i64 [ %i.gh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i88.thread ], [ %i.gm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i88 ]
  %i.gp = phi ptr [ %i.fx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i88.thread ], [ %i.fy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i88 ]
  %i.gq = phi i64 [ %i.gc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i88.thread ], [ %.pre.i85, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i88 ] ; 2 uses
  %i.gr = phi ptr [ %i.gg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i88.thread ], [ %i.gk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i88 ]
  %i.gs = icmp ult i64 %i.gq, 16
  call void @llvm.assume(i1 %i.gs)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i89: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i88
  %i.gt = phi i1 [ true, %bb.ai ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i88 ]
  %i.gu = phi i64 [ %i.go, %bb.ai ], [ %i.gm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i88 ] ; 3 uses
  %i.gv = phi ptr [ %i.gp, %bb.ai ], [ %i.fy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i88 ]
  %i.gw = phi i64 [ %i.gq, %bb.ai ], [ %.pre.i85, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i88 ] ; 2 uses
  %i.gx = phi ptr [ %i.gr, %bb.ai ], [ %i.gk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i88 ] ; 4 uses
  %i.gy = load i64, ptr %i.fx, align 8, !noalias !233
  %i.gz = select i1 %i.gt, i64 15, i64 %i.gy
  %.not.i.i.i90 = icmp ugt i64 %i.gu, %i.gz
  br i1 %.not.i.i.i90, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i89
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.gw
  store i8 93, ptr %i.ha, align 1, !tbaa !86, !noalias !233
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i93

bb.ak:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i89
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.gw, i64 noundef 0, ptr noundef nonnull @.str.35, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i93 unwind label %bb.an

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i93: ; preds = %bb.ak, %bb.aj
  store i64 %i.gu, ptr %i.gx, align 8, !tbaa !38, !noalias !233
  %i.hb = load ptr, ptr %8, align 8, !tbaa !33, !noalias !233
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.gu
  store i8 0, ptr %i.hc, align 1, !tbaa !86, !noalias !233
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.hd, ptr %0, align 8, !tbaa !107, !alias.scope !233
  %i.he = load ptr, ptr %8, align 8, !tbaa !33, !noalias !233 ; 2 uses
  %i.hf = icmp eq ptr %i.he, %i.fx
  br i1 %i.hf, label %bb.al, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i93
  %i.hg = load i64, ptr %i.gx, align 8, !tbaa !38, !noalias !233 ; 3 uses
  %i.hh = icmp ult i64 %i.hg, 16
  call void @llvm.assume(i1 %i.hh)
  %i.hi = add nuw nsw i64 %i.hg, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.hd, ptr noundef nonnull align 8 dereferenceable(1) %i.fx, i64 %i.hi, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i93
  store ptr %i.he, ptr %0, align 8, !tbaa !33, !alias.scope !233
  %i.hj = load i64, ptr %i.fx, align 8, !tbaa !86, !noalias !233
  store i64 %i.hj, ptr %i.hd, align 8, !tbaa !86, !alias.scope !233
  %.pre.i95 = load i64, ptr %i.gx, align 8, !tbaa !38, !noalias !233
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94, %bb.al
  %i.hk = phi i64 [ %i.hg, %bb.al ], [ %.pre.i95, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94 ]
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.hk, ptr %i.hl, align 8, !tbaa !38, !alias.scope !233
  store ptr %i.fx, ptr %8, align 8, !tbaa !33, !noalias !233
  store i64 0, ptr %i.gx, align 8, !tbaa !38, !noalias !233
  store i8 0, ptr %i.fx, align 8, !tbaa !86, !noalias !233
  %i.hm = load ptr, ptr %9, align 8, !tbaa !33    ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ho = icmp eq ptr %i.hm, %i.hn
  br i1 %i.ho, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101
  %i.hp = load i64, ptr %i.hn, align 8, !tbaa !86
  %i.hq = add i64 %i.hp, 1
  call void @_ZdlPvm(ptr noundef %i.hm, i64 noundef %i.hq) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %bb.ap

bb.am:                                            ; preds = %bb.af
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

bb.an:                                            ; preds = %bb.ak, %bb.ah
  %i.hs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ht = load ptr, ptr %8, align 8, !tbaa !33    ; 2 uses
  %i.hu = icmp eq ptr %i.ht, %i.fx
  br i1 %i.hu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105: ; preds = %bb.an
  %i.hv = load i64, ptr %i.fx, align 8, !tbaa !86
  %i.hw = add i64 %i.hv, 1
  call void @_ZdlPvm(ptr noundef %i.ht, i64 noundef %i.hw) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105, %bb.am
  %.pn = phi { ptr, i32 } [ %i.hr, %bb.am ], [ %i.hs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105 ], [ %i.hs, %bb.an ]
  %i.hx = load ptr, ptr %9, align 8, !tbaa !33    ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.hz = icmp eq ptr %i.hx, %i.hy
  br i1 %i.hz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107
  %i.ia = load i64, ptr %i.hy, align 8, !tbaa !86
  %i.ib = add i64 %i.ia, 1
  call void @_ZdlPvm(ptr noundef %i.hx, i64 noundef %i.ib) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %bb.aq

bb.ao:                                            ; preds = %bb.a
  tail call void @_ZNK5arrow5Datum8ToStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, %_ZNK5arrow5Datum6scalarEv.exit82, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32
  ret void

bb.aq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38
  %.pn21.pn = phi { ptr, i32 } [ %.pn21, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56 ], [ %.pn19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80 ], [ %.pn17, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110 ]
  resume { ptr, i32 } %.pn21.pn
}

end_hunk_1
begin_hunk_2_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.m = phi ptr [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i ], [ %.pre.i, %bb.e ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.b ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.d, 1
  br i1 %cond.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i
  store i8 0, ptr %i.n, align 1, !tbaa !86
  br label %.sink.split.i

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.n, i8 0, i64 %i.d, i1 false)
  br label %.sink.split.i

bb.h:                                             ; preds = %bb.a
  %i.o = icmp ult i64 %1, %i.b
  br i1 %i.o, label %.sink.split.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit

.sink.split.i:                                    ; preds = %bb.h, %bb.g, %bb.f
  store i64 %1, ptr %i.a, align 8, !tbaa !38
  %i.p = load ptr, ptr %0, align 8, !tbaa !33
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %1
  store i8 0, ptr %i.q, align 1, !tbaa !86
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit: ; preds = %bb.h, %.sink.split.i
  ret void
}

declare void @_ZNK5arrow7compute15FunctionOptions8ToStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute7PrintToERKNS0_10ExpressionEPSo(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @_ZNK5arrow7compute10Expression8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.a = load ptr, ptr %2, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !38
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.a, i64 noundef %i.c)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.c ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !33     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.h = load i64, ptr %i.f, align 8, !tbaa !86
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  %i.j = call noundef zeroext i1 @_ZNK5arrow7compute10Expression7IsBoundEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  br i1 %i.j, label %bb.b, label %bb.d

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.5, i64 noundef 7) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %2, align 8, !tbaa !33     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.c
  %i.p = load i64, ptr %i.n, align 8, !tbaa !86
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  resume { ptr, i32 } %i.l

bb.d:                                             ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK5arrow7compute10Expression7IsBoundEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !63     ; 5 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNK5arrow7compute10Expression4typeEv.exit.thread, label %_ZNK5arrow7compute10Expression7literalEv.exit.i

_ZNK5arrow7compute10Expression7literalEv.exit.i:  ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.c = load i8, ptr %i.b, align 8, !tbaa !67
  switch i8 %i.c, label %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i.i [
    i8 0, label %bb.b
    i8 1, label %bb.c
  ]

bb.b:                                             ; preds = %_ZNK5arrow7compute10Expression7literalEv.exit.i
  %i.d = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow5Datum4typeEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  br label %_ZNK5arrow7compute10Expression4typeEv.exit

bb.c:                                             ; preds = %_ZNK5arrow7compute10Expression7literalEv.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br label %_ZNK5arrow7compute10Expression4typeEv.exit

_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i.i: ; preds = %_ZNK5arrow7compute10Expression7literalEv.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  br label %_ZNK5arrow7compute10Expression4typeEv.exit

_ZNK5arrow7compute10Expression4typeEv.exit:       ; preds = %bb.b, %bb.c, %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i.i
  %.2.i.in = phi ptr [ %i.d, %bb.b ], [ %i.f, %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i.i ], [ %i.e, %bb.c ]
  %.2.i = load ptr, ptr %.2.i.in, align 8, !tbaa !255
  %i.g = icmp eq ptr %.2.i, null
  br i1 %i.g, label %_ZNK5arrow7compute10Expression4typeEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNK5arrow7compute10Expression4typeEv.exit
  %i.h = load ptr, ptr %0, align 8, !tbaa !63     ; 5 uses
  %.not.i.i15 = icmp eq ptr %i.h, null
  br i1 %.not.i.i15, label %_ZNK5arrow7compute10Expression4typeEv.exit.thread, label %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i

_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i: ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %i.j = load i8, ptr %i.i, align 8, !tbaa !67
  %i.k = icmp eq i8 %i.j, 2
  br i1 %i.k, label %_ZNK5arrow7compute10Expression4callEv.exit, label %_ZNK5arrow7compute10Expression4typeEv.exit.thread

_ZNK5arrow7compute10Expression4callEv.exit:       ; preds = %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !256
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZNK5arrow7compute10Expression4typeEv.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK5arrow7compute10Expression4callEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !62   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !62   ; 2 uses
  %i.s = icmp eq ptr %i.p, %i.r
  br i1 %i.s, label %_ZNK5arrow7compute10Expression4typeEv.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %.sroa.016.022 = phi ptr [ %i.u, %.lr.ph ], [ %i.p, %bb.e ] ; 2 uses
  %i.t = tail call noundef zeroext i1 @_ZNK5arrow7compute10Expression7IsBoundEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.016.022) ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.016.022, i64 16 ; 2 uses
  %i.v = icmp ne ptr %i.u, %i.r
  %or.cond.not = select i1 %i.t, i1 %i.v, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %_ZNK5arrow7compute10Expression4typeEv.exit.thread

_ZNK5arrow7compute10Expression4typeEv.exit.thread: ; preds = %.lr.ph, %bb.e, %_ZNK5arrow7compute10Expression4callEv.exit, %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i, %bb.d, %bb.a, %_ZNK5arrow7compute10Expression4typeEv.exit
  %.5 = phi i1 [ false, %bb.a ], [ false, %_ZNK5arrow7compute10Expression4typeEv.exit ], [ false, %_ZNK5arrow7compute10Expression4callEv.exit ], [ true, %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i ], [ true, %bb.d ], [ true, %bb.e ], [ %i.t, %.lr.ph ]
  ret i1 %.5
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK5arrow7compute10Expression6EqualsERKS1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.arrow::EqualOptions", align 8 ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !63     ; 11 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !63     ; 10 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %.thread76, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %i.a, null
  %.not.i42 = icmp eq ptr %i.b, null
  %or.cond = or i1 %.not.i, %.not.i42
  br i1 %or.cond, label %.thread76, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.e = load i8, ptr %i.d, align 8, !tbaa !67    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.g = load i8, ptr %i.f, align 8, !tbaa !67
  %.not = icmp eq i8 %i.e, %i.g
  br i1 %.not, label %_ZNK5arrow7compute10Expression7literalEv.exit, label %.thread76

_ZNK5arrow7compute10Expression7literalEv.exit:    ; preds = %bb.c
  switch i8 %i.e, label %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i [
    i8 0, label %bb.d
    i8 1, label %_ZNK5arrow7compute10Expression9field_refEv.exit
  ]

bb.d:                                             ; preds = %_ZNK5arrow7compute10Expression7literalEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  store double 1.000000e-05, ptr %2, align 8, !tbaa !257
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 16777473, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !259
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = load i8, ptr %i.h, align 8, !tbaa !69
  %.not.i.i.i = icmp eq i8 %i.i, 1
  br i1 %.not.i.i.i, label %_ZNK5arrow7compute10Expression7literalEv.exit47, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.j, align 8, !tbaa !83
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @.str.44, ptr %i.k, align 8, !tbaa !210
  tail call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #33
  unreachable

_ZNK5arrow7compute10Expression7literalEv.exit47:  ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.m = load i8, ptr %i.l, align 8, !tbaa !69
  %.not.i.i.i48 = icmp eq i8 %i.m, 1
  br i1 %.not.i.i.i48, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK5arrow7compute10Expression7literalEv.exit47
  %i.n = tail call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.n, align 8, !tbaa !83
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @.str.44, ptr %i.o, align 8, !tbaa !210
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #33
  unreachable

bb.g:                                             ; preds = %_ZNK5arrow7compute10Expression7literalEv.exit47
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !71
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !71
  %i.r = call noundef zeroext i1 @_ZNK5arrow6Scalar6EqualsERKS0_RKNS_12EqualOptionsE(ptr noundef nonnull align 8 dereferenceable(41) %i.p, ptr noundef nonnull align 8 dereferenceable(41) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %.thread76

_ZNK5arrow7compute10Expression9field_refEv.exit:  ; preds = %_ZNK5arrow7compute10Expression7literalEv.exit
  %i.s = tail call noundef zeroext i1 @_ZNK5arrow8FieldRef6EqualsERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.b)
  br label %.thread76

_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i: ; preds = %_ZNK5arrow7compute10Expression7literalEv.exit
  %i.t = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b) #31
  br i1 %i.t, label %bb.h, label %.thread76

bb.h:                                             ; preds = %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !256
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !256
  %.not39 = icmp eq ptr %i.v, %i.x
  br i1 %.not39, label %.preheader, label %.thread76

.preheader:                                       ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !131
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !130 ; 2 uses
  %.not4080.not = icmp eq ptr %i.aa, %i.ab
  br i1 %.not4080.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %i.ad = add nuw i64 %.081, 1                    ; 2 uses
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !131
  %i.af = load ptr, ptr %i.y, align 8, !tbaa !130 ; 2 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = ashr exact i64 %i.ai, 4
  %.not40 = icmp ult i64 %i.ad, %i.aj
  br i1 %.not40, label %bb.j, label %._crit_edge, !llvm.loop !261

bb.j:                                             ; preds = %.lr.ph, %bb.i
  %i.ak = phi ptr [ %i.ab, %.lr.ph ], [ %i.af, %bb.i ]
  %.081 = phi i64 [ 0, %.lr.ph ], [ %i.ad, %bb.i ] ; 3 uses
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %.081
  %i.am = load ptr, ptr %i.ac, align 8, !tbaa !130
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %.081
  %i.ao = tail call noundef zeroext i1 @_ZNK5arrow7compute10Expression6EqualsERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull align 8 dereferenceable(16) %i.an)
  br i1 %i.ao, label %bb.i, label %.thread76

._crit_edge:                                      ; preds = %bb.i, %.preheader
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !136 ; 3 uses
  %i.as = load ptr, ptr %i.aq, align 8, !tbaa !136 ; 3 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %.thread76, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.au = icmp ne ptr %i.ar, null
  %i.av = icmp ne ptr %i.as, null
  %or.cond78 = and i1 %i.au, %i.av
  br i1 %or.cond78, label %bb.l, label %.thread76

bb.l:                                             ; preds = %bb.k
  %i.aw = tail call noundef zeroext i1 @_ZNK5arrow7compute15FunctionOptions6EqualsERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %i.as)
  br label %.thread76

.thread76:                                        ; preds = %bb.j, %_ZNK5arrow7compute10Expression9field_refEv.exit, %bb.g, %bb.l, %bb.h, %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i, %._crit_edge, %bb.k, %bb.c, %bb.b, %bb.a
  %.4 = phi i1 [ %i.r, %bb.g ], [ true, %bb.a ], [ false, %bb.b ], [ false, %bb.c ], [ %i.s, %_ZNK5arrow7compute10Expression9field_refEv.exit ], [ false, %bb.h ], [ false, %bb.k ], [ false, %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i ], [ %i.aw, %bb.l ], [ true, %._crit_edge ], [ false, %bb.j ]
  ret i1 %.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN5arrow7compute10Expression9IdenticalERKS1_S3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !63
  %i.b = load ptr, ptr %1, align 8, !tbaa !63
  %i.c = icmp eq ptr %i.a, %i.b
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow5Datum6scalarEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !69
  %.not.i.i = icmp eq i8 %i.b, 1
  br i1 %.not.i.i, label %_ZSt3getISt10shared_ptrIN5arrow6ScalarEEJNS1_5Datum5EmptyES3_S0_INS1_9ArrayDataEES0_INS1_12ChunkedArrayEES0_INS1_11RecordBatchEES0_INS1_5TableEEEERKT_RKSt7variantIJDpT0_EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.c, align 8, !tbaa !83
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @.str.44, ptr %i.d, align 8, !tbaa !210
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #33
  unreachable

_ZSt3getISt10shared_ptrIN5arrow6ScalarEEJNS1_5Datum5EmptyES3_S0_INS1_9ArrayDataEES0_INS1_12ChunkedArrayEES0_INS1_11RecordBatchEES0_INS1_5TableEEEERKT_RKSt7variantIJDpT0_EE.exit: ; preds = %bb.a
  ret ptr %0
}

declare noundef zeroext i1 @_ZNK5arrow6Scalar6EqualsERKS0_RKNS_12EqualOptionsE(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef nonnull align 8 dereferenceable(41), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5arrow8FieldRef6EqualsERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !101
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i8, ptr %i.c, align 8, !tbaa !101   ; 4 uses
  switch i8 %i.b, label %bb.j [
    i8 0, label %bb.b
    i8 1, label %bb.e
    i8 2, label %bb.h
    i8 -1, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %_ZSt3getILm0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS0_8FieldRefESaIS9_EEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKSG_.exit.i.i.i.i, label %_ZNSt8__detail9__variant15__raw_idx_visitIZSteqIJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS3_8FieldRefESaISC_EEEEbRKSt7variantIJDpT_EESK_EUlOT_T0_E_JRKSF_IJS4_SA_SE_EEEEEvSM_DpOT0_.exit

_ZSt3getILm0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS0_8FieldRefESaIS9_EEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKSG_.exit.i.i.i.i: ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !262  ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !119    ; 3 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !262
  %i.n = load ptr, ptr %1, align 8, !tbaa !119    ; 2 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = icmp eq i64 %i.k, %i.q
  br i1 %i.r, label %bb.c, label %_ZNSt8__detail9__variant15__raw_idx_visitIZSteqIJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS3_8FieldRefESaISC_EEEEbRKSt7variantIJDpT_EESK_EUlOT_T0_E_JRKSF_IJS4_SA_SE_EEEEEvSM_DpOT0_.exit

bb.c:                                             ; preds = %_ZSt3getILm0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS0_8FieldRefESaIS9_EEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKSG_.exit.i.i.i.i
  %.not.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, %i.h
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant15__raw_idx_visitIZSteqIJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS3_8FieldRefESaISC_EEEEbRKSt7variantIJDpT_EESK_EUlOT_T0_E_JRKSF_IJS4_SA_SE_EEEEEvSM_DpOT0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %bcmp.i.i.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.h, ptr %i.n, i64 %i.k)
  %.not9.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i, 0
  br label %_ZNSt8__detail9__variant15__raw_idx_visitIZSteqIJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS3_8FieldRefESaISC_EEEEbRKSt7variantIJDpT_EESK_EUlOT_T0_E_JRKSF_IJS4_SA_SE_EEEEEvSM_DpOT0_.exit

bb.e:                                             ; preds = %bb.a
  %i.s = icmp eq i8 %i.d, 1
  br i1 %i.s, label %_ZSt3getILm1EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS0_8FieldRefESaIS9_EEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKSG_.exit.i.i.i.i, label %_ZNSt8__detail9__variant15__raw_idx_visitIZSteqIJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS3_8FieldRefESaISC_EEEEbRKSt7variantIJDpT_EESK_EUlOT_T0_E_JRKSF_IJS4_SA_SE_EEEEEvSM_DpOT0_.exit

_ZSt3getILm1EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS0_8FieldRefESaIS9_EEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKSG_.exit.i.i.i.i: ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !38   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !38
  %i.x = icmp eq i64 %i.u, %i.w
  br i1 %i.x, label %bb.f, label %_ZNSt8__detail9__variant15__raw_idx_visitIZSteqIJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS3_8FieldRefESaISC_EEEEbRKSt7variantIJDpT_EESK_EUlOT_T0_E_JRKSF_IJS4_SA_SE_EEEEEvSM_DpOT0_.exit

bb.f:                                             ; preds = %_ZSt3getILm1EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS0_8FieldRefESaIS9_EEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKSG_.exit.i.i.i.i
  %i.y = icmp eq i64 %i.u, 0
  br i1 %i.y, label %_ZNSt8__detail9__variant15__raw_idx_visitIZSteqIJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS3_8FieldRefESaISC_EEEEbRKSt7variantIJDpT_EESK_EUlOT_T0_E_JRKSF_IJS4_SA_SE_EEEEEvSM_DpOT0_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = load ptr, ptr %1, align 8, !tbaa !33
  %i.aa = load ptr, ptr %0, align 8, !tbaa !33
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr %i.aa, ptr %i.z, i64 %i.u)
  %i.ab = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br label %_ZNSt8__detail9__variant15__raw_idx_visitIZSteqIJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS3_8FieldRefESaISC_EEEEbRKSt7variantIJDpT_EESK_EUlOT_T0_E_JRKSF_IJS4_SA_SE_EEEEEvSM_DpOT0_.exit

bb.h:                                             ; preds = %bb.a
  %i.ac = icmp eq i8 %i.d, 2
  br i1 %i.ac, label %_ZSt3getILm2EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS0_8FieldRefESaIS9_EEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKSG_.exit, label %_ZNSt8__detail9__variant15__raw_idx_visitIZSteqIJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS3_8FieldRefESaISC_EEEEbRKSt7variantIJDpT_EESK_EUlOT_T0_E_JRKSF_IJS4_SA_SE_EEEEEvSM_DpOT0_.exit

_ZSt3getILm2EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS0_8FieldRefESaIS9_EEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKSG_.exit: ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !122 ; 3 uses
  %i.af = load ptr, ptr %0, align 8, !tbaa !121   ; 3 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !122
  %i.al = load ptr, ptr %1, align 8, !tbaa !121   ; 2 uses
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = icmp eq i64 %i.ai, %i.ao
  br i1 %i.ap, label %.preheader, label %_ZNSt8__detail9__variant15__raw_idx_visitIZSteqIJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS3_8FieldRefESaISC_EEEEbRKSt7variantIJDpT_EESK_EUlOT_T0_E_JRKSF_IJS4_SA_SE_EEEEEvSM_DpOT0_.exit

.preheader:                                       ; preds = %_ZSt3getILm2EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS0_8FieldRefESaIS9_EEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKSG_.exit
  %.not.i.i15 = icmp eq ptr %i.af, %i.ae
  br i1 %.not.i.i15, label %_ZNSt8__detail9__variant15__raw_idx_visitIZSteqIJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS3_8FieldRefESaISC_EEEEbRKSt7variantIJDpT_EESK_EUlOT_T0_E_JRKSF_IJS4_SA_SE_EEEEEvSM_DpOT0_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.0.i.i17 = phi ptr [ %i.as, %.lr.ph ], [ %i.al, %.preheader ] ; 2 uses
  %.08.i.i16 = phi ptr [ %i.ar, %.lr.ph ], [ %i.af, %.preheader ] ; 2 uses
  %i.aq = tail call noundef zeroext i1 @_ZNK5arrow8FieldRef6EqualsERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %.08.i.i16, ptr noundef nonnull align 8 dereferenceable(40) %.0.i.i17), !inline_history !263 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.08.i.i16, i64 40 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i.i17, i64 40
  %.not.i.i = icmp ne ptr %i.ar, %i.ae
  %or.cond.not = select i1 %i.aq, i1 %.not.i.i, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %_ZNSt8__detail9__variant15__raw_idx_visitIZSteqIJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS3_8FieldRefESaISC_EEEEbRKSt7variantIJDpT_EESK_EUlOT_T0_E_JRKSF_IJS4_SA_SE_EEEEEvSM_DpOT0_.exit, !llvm.loop !264

bb.i:                                             ; preds = %bb.a
  %i.at = icmp eq i8 %i.d, -1
  br label %_ZNSt8__detail9__variant15__raw_idx_visitIZSteqIJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS3_8FieldRefESaISC_EEEEbRKSt7variantIJDpT_EESK_EUlOT_T0_E_JRKSF_IJS4_SA_SE_EEEEEvSM_DpOT0_.exit

bb.j:                                             ; preds = %bb.a
  unreachable

_ZNSt8__detail9__variant15__raw_idx_visitIZSteqIJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS3_8FieldRefESaISC_EEEEbRKSt7variantIJDpT_EESK_EUlOT_T0_E_JRKSF_IJS4_SA_SE_EEEEEvSM_DpOT0_.exit: ; preds = %.lr.ph, %.preheader, %_ZSt3getILm2EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS0_8FieldRefESaIS9_EEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKSG_.exit, %bb.h, %bb.g, %bb.f, %_ZSt3getILm1EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS0_8FieldRefESaIS9_EEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKSG_.exit.i.i.i.i, %bb.e, %bb.d, %bb.c, %_ZSt3getILm0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS0_8FieldRefESaIS9_EEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKSG_.exit.i.i.i.i, %bb.b, %bb.i
  %.0 = phi i1 [ %i.at, %bb.i ], [ false, %bb.b ], [ false, %bb.e ], [ true, %bb.c ], [ false, %_ZSt3getILm0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS0_8FieldRefESaIS9_EEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKSG_.exit.i.i.i.i ], [ %.not9.i.i.i.i.i.i.i.i.i.i, %bb.d ], [ true, %bb.f ], [ false, %_ZSt3getILm1EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS0_8FieldRefESaIS9_EEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKSG_.exit.i.i.i.i ], [ %i.ab, %bb.g ], [ false, %bb.h ], [ false, %_ZSt3getILm2EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS0_8FieldRefESaIS9_EEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKSG_.exit ], [ true, %.preheader ], [ %i.aq, %.lr.ph ]
  ret i1 %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !38   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !38
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %i.b, 0
  br i1 %i.f, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %1, align 8, !tbaa !33
  %i.h = load ptr, ptr %0, align 8, !tbaa !33
  %bcmp = tail call i32 @bcmp(ptr %i.h, ptr %i.g, i64 %i.b)
  %i.i = icmp eq i32 %bcmp, 0
  br label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit:       ; preds = %bb.c, %bb.b, %bb.a
  %i.j = phi i1 [ false, %bb.a ], [ %i.i, %bb.c ], [ true, %bb.b ]
  ret i1 %i.j
}

declare noundef zeroext i1 @_ZNK5arrow7compute15FunctionOptions6EqualsERKS1_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #6

declare noundef i64 @_ZNK5arrow6Scalar4hashEv(ptr noundef nonnull align 8 dereferenceable(41)) local_unnamed_addr #6

declare noundef i64 @_ZNK5arrow8FieldRef4hashEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK5arrow7compute10Expression18IsScalarExpressionEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
_ZSt6get_ifIN5arrow5DatumEJS1_NS0_7compute10Expression9ParameterENS3_4CallEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i:
  %1 = alloca %"class.arrow::Result", align 8     ; 8 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !63, !nonnull !66, !noundef !66 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.c = load i8, ptr %i.b, align 8, !tbaa !67
  switch i8 %i.c, label %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i [
    i8 0, label %bb.a
    i8 1, label %_ZNK5arrow7compute10Expression9field_refEv.exit
  ]

bb.a:                                             ; preds = %_ZSt6get_ifIN5arrow5DatumEJS1_NS0_7compute10Expression9ParameterENS3_4CallEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load i8, ptr %i.d, align 8, !tbaa !69
  %i.f = icmp eq i8 %i.e, 1
  br label %_ZNK5arrow7compute10Expression9field_refEv.exit

_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i: ; preds = %_ZSt6get_ifIN5arrow5DatumEJS1_NS0_7compute10Expression9ParameterENS3_4CallEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !62   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !62   ; 2 uses
  %i.k = icmp eq ptr %i.h, %i.j
  br i1 %i.k, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.037.055, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.j
  br i1 %i.m, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i, %bb.b
  %.sroa.037.055 = phi ptr [ %i.l, %bb.b ], [ %i.h, %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i ] ; 2 uses
  %i.n = tail call noundef zeroext i1 @_ZNK5arrow7compute10Expression18IsScalarExpressionEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.037.055)
  br i1 %i.n, label %bb.b, label %_ZNK5arrow7compute10Expression9field_refEv.exit

._crit_edge:                                      ; preds = %bb.b, %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !137  ; 2 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.r = load i32, ptr %i.q, align 8, !tbaa !265
end_hunk_2
begin_hunk_3_@_ZNK5arrow7compute10Expression13IsSatisfiableEv:bb.a

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit112, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43
  %i.by = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !62 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !62 ; 4 uses
  %i.cc = ptrtoint ptr %i.cb to i64               ; 2 uses
  %i.cd = ptrtoint ptr %i.bz to i64
  %i.ce = sub i64 %i.cc, %i.cd                    ; 2 uses
  %i.cf = ashr i64 %i.ce, 6                       ; 2 uses
  %i.cg = icmp sgt i64 %i.cf, 0
  br i1 %i.cg, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43.thread, %bb.j
  %.0.i44103 = phi i64 [ %i.cp, %bb.j ], [ %i.cf, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43.thread ] ; 2 uses
  %.sroa.057.0102 = phi ptr [ %i.co, %bb.j ], [ %i.bz, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43.thread ] ; 6 uses
  %i.ch = tail call noundef zeroext i1 @_ZNK5arrow7compute10Expression13IsSatisfiableEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.057.0102), !inline_history !295
  br i1 %i.ch, label %bb.g, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEENS0_5__ops12_Iter_negateIZNKS4_13IsSatisfiableEvE3$_0EEET_SF_SF_T0_St26random_access_iterator_tag.exit"

bb.g:                                             ; preds = %.lr.ph
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.057.0102, i64 16 ; 2 uses
  %i.cj = tail call noundef zeroext i1 @_ZNK5arrow7compute10Expression13IsSatisfiableEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ci), !inline_history !295
  br i1 %i.cj, label %bb.h, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEENS0_5__ops12_Iter_negateIZNKS4_13IsSatisfiableEvE3$_0EEET_SF_SF_T0_St26random_access_iterator_tag.exit"

bb.h:                                             ; preds = %bb.g
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.057.0102, i64 32 ; 2 uses
  %i.cl = tail call noundef zeroext i1 @_ZNK5arrow7compute10Expression13IsSatisfiableEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ck), !inline_history !295
  br i1 %i.cl, label %bb.i, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEENS0_5__ops12_Iter_negateIZNKS4_13IsSatisfiableEvE3$_0EEET_SF_SF_T0_St26random_access_iterator_tag.exit"

bb.i:                                             ; preds = %bb.h
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.057.0102, i64 48 ; 2 uses
  %i.cn = tail call noundef zeroext i1 @_ZNK5arrow7compute10Expression13IsSatisfiableEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cm), !inline_history !295
  br i1 %i.cn, label %bb.j, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEENS0_5__ops12_Iter_negateIZNKS4_13IsSatisfiableEvE3$_0EEET_SF_SF_T0_St26random_access_iterator_tag.exit"

bb.j:                                             ; preds = %bb.i
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.057.0102, i64 64 ; 3 uses
  %i.cp = add nsw i64 %.0.i44103, -1
  %i.cq = icmp sgt i64 %.0.i44103, 1
  br i1 %i.cq, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !296

._crit_edge.loopexit:                             ; preds = %bb.j
  %.pre = ptrtoint ptr %i.co to i64
  %.pre105 = sub i64 %i.cc, %.pre
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43.thread
  %.pre-phi106 = phi i64 [ %.pre105, %._crit_edge.loopexit ], [ %i.ce, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43.thread ]
  %.sroa.057.0.lcssa = phi ptr [ %i.co, %._crit_edge.loopexit ], [ %i.bz, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43.thread ] ; 5 uses
  %i.cr = ashr exact i64 %.pre-phi106, 4
  switch i64 %i.cr, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEENS0_5__ops12_Iter_negateIZNKS4_13IsSatisfiableEvE3$_0EEET_SF_SF_T0_St26random_access_iterator_tag.exit" [
    i64 3, label %bb.k
    i64 2, label %bb.m
    i64 1, label %bb.o
  ]

bb.k:                                             ; preds = %._crit_edge
  %i.cs = tail call noundef zeroext i1 @_ZNK5arrow7compute10Expression13IsSatisfiableEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.057.0.lcssa), !inline_history !295
  br i1 %i.cs, label %bb.l, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEENS0_5__ops12_Iter_negateIZNKS4_13IsSatisfiableEvE3$_0EEET_SF_SF_T0_St26random_access_iterator_tag.exit"

bb.l:                                             ; preds = %bb.k
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.057.0.lcssa, i64 16
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge
  %.sroa.057.2 = phi ptr [ %i.ct, %bb.l ], [ %.sroa.057.0.lcssa, %._crit_edge ] ; 3 uses
  %i.cu = tail call noundef zeroext i1 @_ZNK5arrow7compute10Expression13IsSatisfiableEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.057.2), !inline_history !295
  br i1 %i.cu, label %bb.n, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEENS0_5__ops12_Iter_negateIZNKS4_13IsSatisfiableEvE3$_0EEET_SF_SF_T0_St26random_access_iterator_tag.exit"

bb.n:                                             ; preds = %bb.m
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.057.2, i64 16
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge
  %.sroa.057.1 = phi ptr [ %i.cv, %bb.n ], [ %.sroa.057.0.lcssa, %._crit_edge ] ; 2 uses
  %i.cw = tail call noundef zeroext i1 @_ZNK5arrow7compute10Expression13IsSatisfiableEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.057.1), !inline_history !295
  %spec.select = select i1 %i.cw, ptr %i.cb, ptr %.sroa.057.1
  br label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEENS0_5__ops12_Iter_negateIZNKS4_13IsSatisfiableEvE3$_0EEET_SF_SF_T0_St26random_access_iterator_tag.exit"

"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEENS0_5__ops12_Iter_negateIZNKS4_13IsSatisfiableEvE3$_0EEET_SF_SF_T0_St26random_access_iterator_tag.exit": ; preds = %.lr.ph, %bb.g, %bb.h, %bb.i, %bb.o, %._crit_edge, %bb.k, %bb.m
  %.sroa.08.0.in.i.sroa.speculated = phi ptr [ %.sroa.057.2, %bb.m ], [ %spec.select, %bb.o ], [ %i.cb, %._crit_edge ], [ %.sroa.057.0.lcssa, %bb.k ], [ %i.cm, %bb.i ], [ %i.ck, %bb.h ], [ %i.ci, %bb.g ], [ %.sroa.057.0102, %.lr.ph ]
  %i.cx = icmp eq ptr %i.cb, %.sroa.08.0.in.i.sroa.speculated
  br label %_ZNK5arrow7compute10Expression9field_refEv.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit114: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43.thread100
  %i.cy = load ptr, ptr %i.p, align 8, !tbaa !33  ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 1
  %i.da = xor i64 %i.cz, 7954875833152139887
  %i.db = getelementptr i8, ptr %i.cy, i64 8
  %i.dc = load i8, ptr %i.db, align 1
  %i.dd = zext i8 %i.dc to i64
  %i.de = xor i64 %i.dd, 101
  %i.df = or i64 %i.da, %i.de
  %i.dg = icmp ne i64 %i.df, 0
  %i.dh = zext i1 %i.dg to i32
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit114.thread, label %_ZNK5arrow7compute10Expression9field_refEv.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit125: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43.thread100
  %.pre129 = load ptr, ptr %i.p, align 8, !tbaa !33
  %bcmp.i124 = tail call i32 @bcmp(ptr %.pre129, ptr nonnull @.str.11, i64 %i.bm)
  %i.dj = icmp eq i32 %bcmp.i124, 0
  br i1 %i.dj, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit114.thread, label %_ZNK5arrow7compute10Expression9field_refEv.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit114.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit125, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit114
  %i.dk = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !62 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !62 ; 4 uses
  %i.do = ptrtoint ptr %i.dn to i64               ; 2 uses
  %i.dp = ptrtoint ptr %i.dl to i64
  %i.dq = sub i64 %i.do, %i.dp                    ; 2 uses
  %i.dr = ashr i64 %i.dq, 6                       ; 2 uses
  %i.ds = icmp sgt i64 %i.dr, 0
  br i1 %i.ds, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit114.thread, %bb.s
  %.0.i.i34.i = phi i64 [ %i.eb, %bb.s ], [ %i.dr, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit114.thread ] ; 2 uses
  %.sroa.016.033.i = phi ptr [ %i.ea, %bb.s ], [ %i.dl, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit114.thread ] ; 6 uses
  %i.dt = tail call noundef zeroext i1 @_ZNK5arrow7compute10Expression13IsSatisfiableEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.016.033.i), !inline_history !297
  br i1 %i.dt, label %"_ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEEZNKS4_13IsSatisfiableEvE3$_1EbT_SC_T0_.exit", label %bb.p

bb.p:                                             ; preds = %.lr.ph.i
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.016.033.i, i64 16 ; 2 uses
  %i.dv = tail call noundef zeroext i1 @_ZNK5arrow7compute10Expression13IsSatisfiableEv(ptr noundef nonnull align 8 dereferenceable(16) %i.du), !inline_history !297
  br i1 %i.dv, label %"_ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEEZNKS4_13IsSatisfiableEvE3$_1EbT_SC_T0_.exit", label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.016.033.i, i64 32 ; 2 uses
  %i.dx = tail call noundef zeroext i1 @_ZNK5arrow7compute10Expression13IsSatisfiableEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dw), !inline_history !297
  br i1 %i.dx, label %"_ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEEZNKS4_13IsSatisfiableEvE3$_1EbT_SC_T0_.exit", label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.016.033.i, i64 48 ; 2 uses
  %i.dz = tail call noundef zeroext i1 @_ZNK5arrow7compute10Expression13IsSatisfiableEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dy), !inline_history !297
  br i1 %i.dz, label %"_ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEEZNKS4_13IsSatisfiableEvE3$_1EbT_SC_T0_.exit", label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.016.033.i, i64 64 ; 3 uses
  %i.eb = add nsw i64 %.0.i.i34.i, -1
  %i.ec = icmp sgt i64 %.0.i.i34.i, 1
  br i1 %i.ec, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !298

._crit_edge.loopexit.i:                           ; preds = %bb.s
  %.pre.i = ptrtoint ptr %i.ea to i64
  %.pre35.i = sub i64 %i.do, %.pre.i
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit114.thread
  %.pre-phi36.i = phi i64 [ %.pre35.i, %._crit_edge.loopexit.i ], [ %i.dq, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit114.thread ]
  %.sroa.016.0.lcssa.i = phi ptr [ %i.ea, %._crit_edge.loopexit.i ], [ %i.dl, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit114.thread ] ; 5 uses
  %i.ed = ashr exact i64 %.pre-phi36.i, 4
  switch i64 %i.ed, label %"_ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEEZNKS4_13IsSatisfiableEvE3$_1EbT_SC_T0_.exit" [
    i64 3, label %bb.t
    i64 2, label %bb.v
    i64 1, label %bb.x
  ]

bb.t:                                             ; preds = %._crit_edge.i
  %i.ee = tail call noundef zeroext i1 @_ZNK5arrow7compute10Expression13IsSatisfiableEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.016.0.lcssa.i), !inline_history !297
  br i1 %i.ee, label %"_ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEEZNKS4_13IsSatisfiableEvE3$_1EbT_SC_T0_.exit", label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.016.0.lcssa.i, i64 16
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge.i
  %.sroa.016.2.i = phi ptr [ %i.ef, %bb.u ], [ %.sroa.016.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.eg = tail call noundef zeroext i1 @_ZNK5arrow7compute10Expression13IsSatisfiableEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.016.2.i), !inline_history !297
  br i1 %i.eg, label %"_ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEEZNKS4_13IsSatisfiableEvE3$_1EbT_SC_T0_.exit", label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.016.2.i, i64 16
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %._crit_edge.i
  %.sroa.016.1.i = phi ptr [ %i.eh, %bb.w ], [ %.sroa.016.0.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.ei = tail call noundef zeroext i1 @_ZNK5arrow7compute10Expression13IsSatisfiableEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.016.1.i), !inline_history !297
  %spec.select.i = select i1 %i.ei, ptr %.sroa.016.1.i, ptr %i.dn
  br label %"_ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEEZNKS4_13IsSatisfiableEvE3$_1EbT_SC_T0_.exit"

"_ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEEZNKS4_13IsSatisfiableEvE3$_1EbT_SC_T0_.exit": ; preds = %.lr.ph.i, %bb.p, %bb.q, %bb.r, %._crit_edge.i, %bb.t, %bb.v, %bb.x
  %.sroa.08.0.in.i.i.sroa.speculated.i = phi ptr [ %.sroa.016.2.i, %bb.v ], [ %spec.select.i, %bb.x ], [ %i.dn, %._crit_edge.i ], [ %.sroa.016.0.lcssa.i, %bb.t ], [ %i.dy, %bb.r ], [ %i.dw, %bb.q ], [ %i.du, %bb.p ], [ %.sroa.016.033.i, %.lr.ph.i ]
  %i.ej = icmp ne ptr %i.dn, %.sroa.08.0.in.i.i.sroa.speculated.i
  br label %_ZNK5arrow7compute10Expression9field_refEv.exit

_ZNK5arrow7compute10Expression9field_refEv.exit:  ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit114, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit112, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43.thread100, %_ZSt6get_ifIN5arrow5DatumEJS1_NS0_7compute10Expression9ParameterENS3_4CallEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i, %_ZNK5arrow7compute10Expression7literalEv.exit, %_ZNK5arrow5Datum9scalar_asINS_13BooleanScalarEEERKT_v.exit, %bb.f, %bb.a, %_ZNK5arrow7compute10Expression4callEv.exit, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEENS0_5__ops12_Iter_negateIZNKS4_13IsSatisfiableEvE3$_0EEET_SF_SF_T0_St26random_access_iterator_tag.exit", %"_ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEEZNKS4_13IsSatisfiableEvE3$_1EbT_SC_T0_.exit", %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit125, %_ZNK5arrow7compute10Expression4typeEv.exit34, %_ZNK5arrow7compute10Expression4typeEv.exit
  %.3 = phi i1 [ true, %bb.a ], [ true, %_ZNK5arrow7compute10Expression4typeEv.exit ], [ true, %_ZNK5arrow7compute10Expression4typeEv.exit34 ], [ false, %_ZNK5arrow7compute10Expression4callEv.exit ], [ %i.cx, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEENS0_5__ops12_Iter_negateIZNKS4_13IsSatisfiableEvE3$_0EEET_SF_SF_T0_St26random_access_iterator_tag.exit" ], [ %i.ej, %"_ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEEZNKS4_13IsSatisfiableEvE3$_1EbT_SC_T0_.exit" ], [ true, %_ZSt6get_ifIN5arrow5DatumEJS1_NS0_7compute10Expression9ParameterENS3_4CallEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit125 ], [ false, %_ZNK5arrow7compute10Expression7literalEv.exit ], [ %i.ab, %_ZNK5arrow5Datum9scalar_asINS_13BooleanScalarEEERKT_v.exit ], [ true, %bb.f ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43.thread100 ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit112 ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit114 ]
  ret i1 %.3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(42) ptr @_ZNK5arrow5Datum9scalar_asINS_13BooleanScalarEEERKT_v(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !69
  %.not.i.i.i = icmp eq i8 %i.b, 1
  br i1 %.not.i.i.i, label %_ZNK5arrow5Datum6scalarEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.c, align 8, !tbaa !83
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @.str.44, ptr %i.d, align 8, !tbaa !210
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #33
  unreachable

_ZNK5arrow5Datum6scalarEv.exit:                   ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !71
  ret ptr %i.e
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !38   ; 3 uses
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #31
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !33
  %bcmp = tail call i32 @bcmp(ptr %i.f, ptr nonnull %1, i64 %i.b)
  %i.g = icmp eq i32 %bcmp, 0
  br label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit:       ; preds = %bb.c, %bb.b, %bb.a
  %i.h = phi i1 [ false, %bb.a ], [ %i.g, %bb.c ], [ true, %bb.b ]
  ret i1 %i.h
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow7compute10Expression4BindERKNS_10TypeHolderEPNS0_11ExecContextE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.155") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noundef %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::compute::Expression", align 16 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !79   ; 2 uses
  %i.d = load <2 x ptr>, ptr %1, align 8, !tbaa !94
  store <2 x ptr> %i.d, ptr %4, align 16, !tbaa !94
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow7compute10ExpressionC2ERKS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !3
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !3
  br label %_ZN5arrow7compute10ExpressionC2ERKS1_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5arrow7compute10ExpressionC2ERKS1_.exit

_ZN5arrow7compute10ExpressionC2ERKS1_.exit:       ; preds = %bb.a, %bb.c, %bb.d
  %i.j = load ptr, ptr %2, align 8, !tbaa !299
  invoke fastcc void @_ZN5arrow7compute12_GLOBAL__N_18BindImplINS_8DataTypeEEENS_6ResultINS0_10ExpressionEEES5_RKT_PNS0_11ExecContextE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(72) %i.j, ptr noundef %3)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %_ZN5arrow7compute10ExpressionC2ERKS1_.exit
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !79   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZN5arrow7compute10ExpressionD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 4 uses
  %i.m = load atomic i64, ptr %i.l acquire, align 8 ; 2 uses
  %i.n = icmp eq i64 %i.m, 4294967297
  %i.o = trunc i64 %i.m to i32                    ; 2 uses
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.l, align 8, !tbaa !80
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i32 0, ptr %i.p, align 4, !tbaa !82
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !83
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #31, !inline_history !300
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !83
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #31, !inline_history !300
  br label %_ZN5arrow7compute10ExpressionD2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i4 = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i.i4, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = add nsw i32 %i.o, -1
  store i32 %i.x, ptr %i.l, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.y = atomicrmw volatile add ptr %i.l, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.o, %bb.i ], [ %i.y, %bb.j ]
  %i.z = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.z, label %bb.k, label %_ZN5arrow7compute10ExpressionD2Ev.exit, !prof !87

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #31
  br label %_ZN5arrow7compute10ExpressionD2Ev.exit

_ZN5arrow7compute10ExpressionD2Ev.exit:           ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.k
  ret void

bb.l:                                             ; preds = %_ZN5arrow7compute10ExpressionC2ERKS1_.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute10ExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #31
  resume { ptr, i32 } %i.aa
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow7compute12_GLOBAL__N_18BindImplINS_8DataTypeEEENS_6ResultINS0_10ExpressionEEES5_RKT_PNS0_11ExecContextE(ptr dead_on_unwind noalias writable align 8 %0, ptr nofree noundef nonnull captures(none) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef %3) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::compute::ExecContext", align 8 ; 5 uses
  %5 = alloca %"class.arrow::compute::Expression", align 16 ; 4 uses
  %6 = alloca %"class.arrow::Result.600", align 8 ; 14 uses
  %7 = alloca %"class.arrow::FieldPath", align 16 ; 11 uses
  %8 = alloca %"struct.arrow::compute::Expression::Parameter", align 16 ; 41 uses
  %9 = alloca %"class.arrow::Result.604", align 8 ; 13 uses
  %10 = alloca %"class.std::shared_ptr.198", align 16 ; 6 uses
  %11 = alloca %"class.arrow::compute::Expression", align 16 ; 7 uses
  %12 = alloca %"struct.arrow::compute::Expression::Parameter", align 16 ; 25 uses
  %13 = alloca %"struct.arrow::compute::Expression::Call", align 8 ; 25 uses
  %14 = alloca %"class.arrow::Result.155", align 8 ; 10 uses
  %15 = alloca %"class.arrow::compute::Expression", align 16 ; 4 uses
  %16 = alloca %"struct.arrow::compute::Expression::Call", align 8 ; 15 uses
  %i.a = icmp eq ptr %3, null
  br i1 %i.a, label %bb.b, label %_ZSt6get_ifIN5arrow5DatumEJS1_NS0_7compute10Expression9ParameterENS3_4CallEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.b = tail call noundef ptr @_ZN5arrow19default_memory_poolEv()
  call void @_ZN5arrow7compute11ExecContextC1EPNS_10MemoryPoolEPNS_8internal8ExecutorEPNS0_16FunctionRegistryE(ptr noundef nonnull align 8 dereferenceable(34) %4, ptr noundef %i.b, ptr noundef null, ptr noundef null)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load <2 x ptr>, ptr %1, align 8, !tbaa !94
  store ptr null, ptr %i.c, align 8, !tbaa !79
  store <2 x ptr> %i.d, ptr %5, align 16, !tbaa !94
  store ptr null, ptr %1, align 8, !tbaa !63
  invoke fastcc void @_ZN5arrow7compute12_GLOBAL__N_18BindImplINS_8DataTypeEEENS_6ResultINS0_10ExpressionEEES5_RKT_PNS0_11ExecContextE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull %4)
          to label %bb.c unwind label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !79   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZN5arrow7compute10ExpressionD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.h = load atomic i64, ptr %i.g acquire, align 8 ; 2 uses
  %i.i = icmp eq i64 %i.h, 4294967297
  %i.j = trunc i64 %i.h to i32                    ; 2 uses
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.g, align 8, !tbaa !80
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 0, ptr %i.k, align 4, !tbaa !82
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !83
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #31, !inline_history !300
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !83
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #31, !inline_history !300
  br label %_ZN5arrow7compute10ExpressionD2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = add nsw i32 %i.j, -1
  store i32 %i.s, ptr %i.g, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.t = atomicrmw volatile add ptr %i.g, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i = phi i32 [ %i.j, %bb.g ], [ %i.t, %bb.h ]
end_hunk_3
begin_hunk_4_@_ZN5arrow7compute13MakeExecBatchERKNS_6SchemaERKNS_5DatumENS0_10ExpressionE:bb.a
  invoke void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_15_Copy_ctor_baseILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEEC1ERKSI_EUlOT_T0_E_JRKSt7variantIJS6_S9_SB_SD_SF_SH_EEEEDcOSN_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(24) %i.dz)
          to label %_ZSt12construct_atIN5arrow5DatumEJRS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ed = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS2_6ScalarEES5_INS2_9ArrayDataEES5_INS2_12ChunkedArrayEES5_INS2_11RecordBatchEES5_INS2_5TableEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(24) %i.ea) #31
  br label %.body

_ZSt12construct_atIN5arrow5DatumEJRS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i: ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i309, i64 64
  %i.ef = load i8, ptr %i.ee, align 8, !tbaa !69
  store i8 %i.ef, ptr %i.ec, align 8, !tbaa !69
  %i.eg = load ptr, ptr %i.bo, align 8, !tbaa !435
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  store ptr %i.eh, ptr %i.bo, align 8, !tbaa !435
  br label %_ZNSt6vectorIN5arrow5DatumESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit

bb.ag:                                            ; preds = %_ZNSt13unordered_mapIN5arrow8FieldRefENS0_5DatumENS1_4HashESt8equal_toIS1_ESaISt4pairIKS1_S2_EEE4findERS7_.exit.thread307
  invoke void @_ZNSt6vectorIN5arrow5DatumESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr %i.ea, ptr noundef nonnull align 8 dereferenceable(24) %i.dz)
          to label %_ZNSt6vectorIN5arrow5DatumESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit unwind label %.loopexit.split-lp.loopexit.split-lp

.loopexit316:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  %lpad.loopexit318 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5arrow8FieldRefD2Ev.exit211

.loopexit.split-lp317:                            ; preds = %.noexc.i, %.noexc6.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5arrow8FieldRefD2Ev.exit211

.loopexit:                                        ; preds = %bb.z
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %_ZNKSt8__detail15_Hashtable_baseIN5arrow8FieldRefESt4pairIKS2_NS1_5DatumEENS_10_Select1stESt8equal_toIS2_ENS2_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.i.i.i.i
  %lpad.loopexit312 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.ag, %bb.aa
  %lpad.loopexit.split-lp313 = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt13unordered_mapIN5arrow8FieldRefENS0_5DatumENS1_4HashESt8equal_toIS1_ESaISt4pairIKS1_S2_EEE4findERS7_.exit.thread: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN5arrow8FieldRefESt4pairIKS2_NS1_5DatumEENS_10_Select1stESt8equal_toIS2_ENS2_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i.i.i, %bb.ad, %.preheader, %.noexc152, %_ZNSt13unordered_mapIN5arrow8FieldRefENS0_5DatumENS1_4HashESt8equal_toIS1_ESaISt4pairIKS1_S2_EEE4findERS7_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #31
  invoke void @_ZNK5arrow8FieldRef12GetOneOrNoneINS_11RecordBatchEEENS_6ResultIDTcldtcldtclL_ZSt7declvalINS_9FieldPathEEDTcl9__declvalIT_ELi0EEEvEE3Getclsr3stdE7declvalIS6_EEE10ValueOrDieEEEERKS6_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.206") align 8 %18, ptr noundef nonnull align 8 dereferenceable(40) %16, ptr noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %bb.ah unwind label %bb.aj

bb.ah:                                            ; preds = %_ZNSt13unordered_mapIN5arrow8FieldRefENS0_5DatumENS1_4HashESt8equal_toIS1_ESaISt4pairIKS1_S2_EEE4findERS7_.exit.thread
  %i.ei = load ptr, ptr %18, align 8, !tbaa !274
  %i.ej = icmp eq ptr %i.ei, null
  br i1 %i.ej, label %bb.ak, label %bb.ai, !prof !290

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN5arrow6ResultINS_7compute9ExecBatchEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %18) #31
  br label %bb.eg

bb.aj:                                            ; preds = %_ZNSt13unordered_mapIN5arrow8FieldRefENS0_5DatumENS1_4HashESt8equal_toIS1_ESaISt4pairIKS1_S2_EEE4findERS7_.exit.thread
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ak:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !440)
  call void @llvm.experimental.noalias.scope.decl(metadata !443)
  %i.el = load <2 x ptr>, ptr %i.bq, align 8, !tbaa !94, !noalias !446
  %i.em = load ptr, ptr %i.bq, align 8, !tbaa !447, !noalias !446 ; 2 uses
  store ptr null, ptr %i.bs, align 8, !tbaa !79, !noalias !446
  store <2 x ptr> %i.el, ptr %19, align 16, !tbaa !94, !alias.scope !446
  store ptr null, ptr %i.bq, align 8, !tbaa !447, !noalias !446
  %.not311 = icmp eq ptr %i.em, null
  br i1 %.not311, label %bb.de, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !450
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !139
  %i.eq = load ptr, ptr %.sroa.0303.0327, align 8, !tbaa !330
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 56
  %i.es = invoke noundef zeroext i1 @_ZNK5arrow8DataType6EqualsERKSt10shared_ptrIS0_Eb(ptr noundef nonnull align 8 dereferenceable(72) %i.ep, ptr noundef nonnull align 8 dereferenceable(16) %i.er, i1 noundef zeroext false)
          to label %bb.am unwind label %bb.ca

bb.am:                                            ; preds = %bb.al
  br i1 %i.es, label %bb.db, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #31
  invoke void @_ZN5arrow5DatumC1ERKSt10shared_ptrINS_5ArrayEE(ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef nonnull align 8 dereferenceable(16) %19)
          to label %bb.ao unwind label %bb.cb

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #31
  %i.et = load ptr, ptr %.sroa.0303.0327, align 8, !tbaa !330 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 56
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !139 ; 3 uses
  store ptr %i.ev, ptr %23, align 8, !tbaa !139
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 64
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !79 ; 4 uses
  store ptr %i.ex, ptr %i.bt, align 8, !tbaa !79
  %.not.i.i.i155 = icmp eq ptr %i.ex, null
  br i1 %.not.i.i.i155, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8 ; 3 uses
  %i.ez = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i156 = icmp eq i8 %i.ez, 0
  br i1 %.not.i.i.i.i156, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fa = load i32, ptr %i.ey, align 4, !tbaa !3
  %i.fb = add nsw i32 %i.fa, 1
  store i32 %i.fb, ptr %i.ey, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

bb.ar:                                            ; preds = %bb.ap
  %i.fc = atomicrmw volatile add ptr %i.ey, i32 1 acq_rel, align 4 ; 0 uses
  %.pre341 = load ptr, ptr %23, align 8, !tbaa !139
  %.pre342 = load ptr, ptr %i.bt, align 8, !tbaa !79
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit: ; preds = %bb.ao, %bb.aq, %bb.ar
  %i.fd = phi ptr [ null, %bb.ao ], [ %i.ex, %bb.aq ], [ %.pre342, %bb.ar ]
  %i.fe = phi ptr [ %i.ev, %bb.ao ], [ %i.ev, %bb.aq ], [ %.pre341, %bb.ar ] ; 2 uses
  store ptr %i.fe, ptr %22, align 8, !tbaa !299
  store ptr %i.fe, ptr %i.bu, align 8, !tbaa !139
  store ptr null, ptr %i.bt, align 8, !tbaa !79
  store ptr %i.fd, ptr %i.bv, align 8, !tbaa !79
  store ptr null, ptr %23, align 8, !tbaa !139
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !453)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %25, i8 0, i64 24, i1 false)
  invoke void @_ZN5arrow7compute11CastOptionsC1Eb(ptr noundef nonnull align 8 dereferenceable(46) %24, i1 noundef zeroext true)
          to label %.noexc159 unwind label %bb.cc

.noexc159:                                        ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit
  store ptr null, ptr %i.bw, align 8, !tbaa !299, !alias.scope !453
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.by, i8 0, i64 16, i1 false), !noalias !453
  store ptr null, ptr %i.bx, align 8, !tbaa !255, !alias.scope !453
  %i.ff = load ptr, ptr %i.ca, align 8, !tbaa !79, !alias.scope !453 ; 8 uses
  store ptr null, ptr %i.ca, align 8, !tbaa !79, !alias.scope !453
  %.not.i.i.i.i.i.i157 = icmp eq ptr %i.ff, null
  br i1 %.not.i.i.i.i.i.i157, label %_ZN5arrow7compute11CastOptions4SafeENS_10TypeHolderE.exit, label %bb.as

bb.as:                                            ; preds = %.noexc159
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8 ; 4 uses
  %i.fh = load atomic i64, ptr %i.fg acquire, align 8 ; 2 uses
  %i.fi = icmp eq i64 %i.fh, 4294967297
  %i.fj = trunc i64 %i.fh to i32                  ; 2 uses
  br i1 %i.fi, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  store i32 0, ptr %i.fg, align 8, !tbaa !80
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ff, i64 12
  store i32 0, ptr %i.fk, align 4, !tbaa !82
  %i.fl = load ptr, ptr %i.ff, align 8, !tbaa !83
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fn = load ptr, ptr %i.fm, align 8
  call void %i.fn(ptr noundef nonnull align 8 dereferenceable(16) %i.ff) #31, !inline_history !456
  %i.fo = load ptr, ptr %i.ff, align 8, !tbaa !83
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 24
  %i.fq = load ptr, ptr %i.fp, align 8
  call void %i.fq(ptr noundef nonnull align 8 dereferenceable(16) %i.ff) #31, !inline_history !456
  br label %_ZN5arrow7compute11CastOptions4SafeENS_10TypeHolderE.exit

bb.au:                                            ; preds = %bb.as
  %i.fr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86, !noalias !453
  %.not.i.i.i.i.i.i.i158 = icmp eq i8 %i.fr, 0
  br i1 %.not.i.i.i.i.i.i.i158, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fs = add nsw i32 %i.fj, -1
  store i32 %i.fs, ptr %i.fg, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.aw:                                            ; preds = %bb.au
  %i.ft = atomicrmw volatile add ptr %i.fg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.aw, %bb.av
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.fj, %bb.av ], [ %i.ft, %bb.aw ]
  %i.fu = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.fu, label %bb.ax, label %_ZN5arrow7compute11CastOptions4SafeENS_10TypeHolderE.exit, !prof !87

bb.ax:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ff) #31
  br label %_ZN5arrow7compute11CastOptions4SafeENS_10TypeHolderE.exit

_ZN5arrow7compute11CastOptions4SafeENS_10TypeHolderE.exit: ; preds = %bb.ax, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.at, %.noexc159
  invoke void @_ZN5arrow7compute4CastERKNS_5DatumERKNS_10TypeHolderERKNS0_11CastOptionsEPNS0_11ExecContextE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.213") align 8 %20, ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef nonnull align 8 dereferenceable(24) %22, ptr noundef nonnull align 8 dereferenceable(46) %24, ptr noundef null)
          to label %bb.ay unwind label %bb.cd

bb.ay:                                            ; preds = %_ZN5arrow7compute11CastOptions4SafeENS_10TypeHolderE.exit
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow7compute11CastOptionsE, i64 16), ptr %24, align 8, !tbaa !83
  %i.fv = load ptr, ptr %i.ca, align 8, !tbaa !79 ; 8 uses
  %.not.i.i.i.i160 = icmp eq ptr %i.fv, null
  br i1 %.not.i.i.i.i160, label %_ZN5arrow7compute11CastOptionsD2Ev.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8 ; 4 uses
  %i.fx = load atomic i64, ptr %i.fw acquire, align 8 ; 2 uses
  %i.fy = icmp eq i64 %i.fx, 4294967297
  %i.fz = trunc i64 %i.fx to i32                  ; 2 uses
  br i1 %i.fy, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  store i32 0, ptr %i.fw, align 8, !tbaa !80
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fv, i64 12
  store i32 0, ptr %i.ga, align 4, !tbaa !82
  %i.gb = load ptr, ptr %i.fv, align 8, !tbaa !83
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  %i.gd = load ptr, ptr %i.gc, align 8
  call void %i.gd(ptr noundef nonnull align 8 dereferenceable(16) %i.fv) #31, !inline_history !457
  %i.ge = load ptr, ptr %i.fv, align 8, !tbaa !83
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 24
  %i.gg = load ptr, ptr %i.gf, align 8
  call void %i.gg(ptr noundef nonnull align 8 dereferenceable(16) %i.fv) #31, !inline_history !457
  br label %_ZN5arrow7compute11CastOptionsD2Ev.exit

bb.bb:                                            ; preds = %bb.az
  %i.gh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i161 = icmp eq i8 %i.gh, 0
  br i1 %.not.i.i.i.i.i161, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gi = add nsw i32 %i.fz, -1
  store i32 %i.gi, ptr %i.fw, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.bd:                                            ; preds = %bb.bb
  %i.gj = atomicrmw volatile add ptr %i.fw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.bd, %bb.bc
  %.0.i.i.i.i.i.i = phi i32 [ %i.fz, %bb.bc ], [ %i.gj, %bb.bd ]
  %i.gk = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.gk, label %bb.be, label %_ZN5arrow7compute11CastOptionsD2Ev.exit, !prof !87

bb.be:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fv) #31, !inline_history !458
  br label %_ZN5arrow7compute11CastOptionsD2Ev.exit

_ZN5arrow7compute11CastOptionsD2Ev.exit:          ; preds = %bb.ay, %bb.ba, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.be
  %i.gl = load ptr, ptr %i.bz, align 8, !tbaa !79 ; 8 uses
  %.not.i.i.i162 = icmp eq ptr %i.gl, null
  br i1 %.not.i.i.i162, label %_ZN5arrow10TypeHolderD2Ev.exit, label %bb.bf

bb.bf:                                            ; preds = %_ZN5arrow7compute11CastOptionsD2Ev.exit
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 8 ; 4 uses
  %i.gn = load atomic i64, ptr %i.gm acquire, align 8 ; 2 uses
  %i.go = icmp eq i64 %i.gn, 4294967297
  %i.gp = trunc i64 %i.gn to i32                  ; 2 uses
  br i1 %i.go, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  store i32 0, ptr %i.gm, align 8, !tbaa !80
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gl, i64 12
  store i32 0, ptr %i.gq, align 4, !tbaa !82
  %i.gr = load ptr, ptr %i.gl, align 8, !tbaa !83
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %i.gt = load ptr, ptr %i.gs, align 8
  call void %i.gt(ptr noundef nonnull align 8 dereferenceable(16) %i.gl) #31, !inline_history !127
  %i.gu = load ptr, ptr %i.gl, align 8, !tbaa !83
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 24
  %i.gw = load ptr, ptr %i.gv, align 8
  call void %i.gw(ptr noundef nonnull align 8 dereferenceable(16) %i.gl) #31, !inline_history !127
  br label %_ZN5arrow10TypeHolderD2Ev.exit

bb.bh:                                            ; preds = %bb.bf
  %i.gx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i163 = icmp eq i8 %i.gx, 0
  br i1 %.not.i.i.i.i163, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gy = add nsw i32 %i.gp, -1
  store i32 %i.gy, ptr %i.gm, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.bj:                                            ; preds = %bb.bh
  %i.gz = atomicrmw volatile add ptr %i.gm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.bj, %bb.bi
  %.0.i.i.i.i.i = phi i32 [ %i.gp, %bb.bi ], [ %i.gz, %bb.bj ]
  %i.ha = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ha, label %bb.bk, label %_ZN5arrow10TypeHolderD2Ev.exit, !prof !87

bb.bk:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gl) #31
  br label %_ZN5arrow10TypeHolderD2Ev.exit

_ZN5arrow10TypeHolderD2Ev.exit:                   ; preds = %_ZN5arrow7compute11CastOptionsD2Ev.exit, %bb.bg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #31
  %i.hb = load ptr, ptr %i.bv, align 8, !tbaa !79 ; 8 uses
  %.not.i.i.i164 = icmp eq ptr %i.hb, null
  br i1 %.not.i.i.i164, label %_ZN5arrow10TypeHolderD2Ev.exit168, label %bb.bl

bb.bl:                                            ; preds = %_ZN5arrow10TypeHolderD2Ev.exit
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8 ; 4 uses
  %i.hd = load atomic i64, ptr %i.hc acquire, align 8 ; 2 uses
  %i.he = icmp eq i64 %i.hd, 4294967297
  %i.hf = trunc i64 %i.hd to i32                  ; 2 uses
  br i1 %i.he, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  store i32 0, ptr %i.hc, align 8, !tbaa !80
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hb, i64 12
  store i32 0, ptr %i.hg, align 4, !tbaa !82
  %i.hh = load ptr, ptr %i.hb, align 8, !tbaa !83
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  %i.hj = load ptr, ptr %i.hi, align 8
  call void %i.hj(ptr noundef nonnull align 8 dereferenceable(16) %i.hb) #31, !inline_history !127
  %i.hk = load ptr, ptr %i.hb, align 8, !tbaa !83
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 24
  %i.hm = load ptr, ptr %i.hl, align 8
  call void %i.hm(ptr noundef nonnull align 8 dereferenceable(16) %i.hb) #31, !inline_history !127
  br label %_ZN5arrow10TypeHolderD2Ev.exit168

bb.bn:                                            ; preds = %bb.bl
  %i.hn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i165 = icmp eq i8 %i.hn, 0
  br i1 %.not.i.i.i.i165, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ho = add nsw i32 %i.hf, -1
  store i32 %i.ho, ptr %i.hc, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i166

bb.bp:                                            ; preds = %bb.bn
  %i.hp = atomicrmw volatile add ptr %i.hc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i166

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i166: ; preds = %bb.bp, %bb.bo
  %.0.i.i.i.i.i167 = phi i32 [ %i.hf, %bb.bo ], [ %i.hp, %bb.bp ]
  %i.hq = icmp eq i32 %.0.i.i.i.i.i167, 1
  br i1 %i.hq, label %bb.bq, label %_ZN5arrow10TypeHolderD2Ev.exit168, !prof !87

bb.bq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i166
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hb) #31
  br label %_ZN5arrow10TypeHolderD2Ev.exit168

_ZN5arrow10TypeHolderD2Ev.exit168:                ; preds = %_ZN5arrow10TypeHolderD2Ev.exit, %bb.bm, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i166, %bb.bq
  %i.hr = load ptr, ptr %i.bt, align 8, !tbaa !79 ; 8 uses
  %.not.i.i = icmp eq ptr %i.hr, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.br

bb.br:                                            ; preds = %_ZN5arrow10TypeHolderD2Ev.exit168
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 8 ; 4 uses
  %i.ht = load atomic i64, ptr %i.hs acquire, align 8 ; 2 uses
  %i.hu = icmp eq i64 %i.ht, 4294967297
  %i.hv = trunc i64 %i.ht to i32                  ; 2 uses
  br i1 %i.hu, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  store i32 0, ptr %i.hs, align 8, !tbaa !80
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hr, i64 12
  store i32 0, ptr %i.hw, align 4, !tbaa !82
  %i.hx = load ptr, ptr %i.hr, align 8, !tbaa !83
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  %i.hz = load ptr, ptr %i.hy, align 8
  call void %i.hz(ptr noundef nonnull align 8 dereferenceable(16) %i.hr) #31, !inline_history !129
  %i.ia = load ptr, ptr %i.hr, align 8, !tbaa !83
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 24
  %i.ic = load ptr, ptr %i.ib, align 8
  call void %i.ic(ptr noundef nonnull align 8 dereferenceable(16) %i.hr) #31, !inline_history !129
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bt:                                            ; preds = %bb.br
  %i.id = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i169 = icmp eq i8 %i.id, 0
  br i1 %.not.i.i.i169, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ie = add nsw i32 %i.hv, -1
  store i32 %i.ie, ptr %i.hs, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.bv:                                            ; preds = %bb.bt
  %i.if = atomicrmw volatile add ptr %i.hs, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.bv, %bb.bu
  %.0.i.i.i.i170 = phi i32 [ %i.hv, %bb.bu ], [ %i.if, %bb.bv ]
  %i.ig = icmp eq i32 %.0.i.i.i.i170, 1
  br i1 %i.ig, label %bb.bw, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !87

bb.bw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hr) #31
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5arrow10TypeHolderD2Ev.exit168, %bb.bs, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %11, ptr noundef nonnull align 8 dereferenceable(24) %21)
end_hunk_4
begin_hunk_5_@_ZNK5arrow8FieldRef12GetOneOrNoneINS_11RecordBatchEEENS_6ResultIDTcldtcldtclL_ZSt7declvalINS_9FieldPathEEDTcl9__declvalIT_ELi0EEEvEE3Getclsr3stdE7declvalIS6_EEE10ValueOrDieEEEERKS6_:bb.a
bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %5, align 8, !tbaa !274, !noalias !516
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit15, label %bb.f, !prof !290

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN5arrow8internal17InvalidValueOrDieERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %._ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit15_crit_edge unwind label %bb.i

._ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit15_crit_edge: ; preds = %bb.f
  %.pre = load ptr, ptr %5, align 8, !tbaa !274
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit15

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit15: ; preds = %._ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit15_crit_edge, %bb.e
  %i.m = phi ptr [ %.pre, %._ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit15_crit_edge ], [ null, %bb.e ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load <2 x ptr>, ptr %i.n, align 8, !tbaa !94, !noalias !519
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  store ptr null, ptr %0, align 8, !tbaa !274
  store <2 x ptr> %i.p, ptr %i.o, align 8, !tbaa !94
  %i.q = icmp eq ptr %i.m, null
  br i1 %i.q, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i, !prof !290

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i: ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit15
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %.pre25 = load i8, ptr %.phi.trans.insert, align 1, !tbaa !284, !range !189
  %i.r = trunc nuw i8 %.pre25 to i1
  br i1 %i.r, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #31
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit15, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %.pre26 = load ptr, ptr %4, align 8, !tbaa !119
  br label %bb.l

bb.h:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #31
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.t, %bb.i ], [ %i.s, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.u = load ptr, ptr %4, align 8, !tbaa !119    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9FieldPathD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = load ptr, ptr %i.g, align 8, !tbaa !105
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = sub i64 %i.w, %i.x
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.y) #32
  br label %_ZN5arrow9FieldPathD2Ev.exit

bb.l:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.z = phi ptr [ %.pre26, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit ], [ %i.d, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %.not.i.i.i.i17 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i17, label %_ZN5arrow9FieldPathD2Ev.exit18, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aa = load ptr, ptr %i.g, align 8, !tbaa !105
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ad) #32
  br label %_ZN5arrow9FieldPathD2Ev.exit18

_ZN5arrow9FieldPathD2Ev.exit18:                   ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.n

_ZN5arrow9FieldPathD2Ev.exit:                     ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @_ZN5arrow6ResultINS_9FieldPathEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  resume { ptr, i32 } %.pn

bb.n:                                             ; preds = %_ZN5arrow9FieldPathD2Ev.exit18, %bb.b
  %i.ae = load ptr, ptr %3, align 8, !tbaa !274   ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.o, label %_ZN5arrow6ResultINS_9FieldPathEE7DestroyEv.exit.thread.i, !prof !290

bb.o:                                             ; preds = %bb.n
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !119 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5arrow6ResultINS_9FieldPathEED2Ev.exit, label %_ZN5arrow6ResultINS_9FieldPathEE7DestroyEv.exit.i

_ZN5arrow6ResultINS_9FieldPathEE7DestroyEv.exit.i: ; preds = %bb.o
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !105
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = sub i64 %i.ak, %i.al
  call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.am) #32
  %.pr.pre.i = load ptr, ptr %3, align 8, !tbaa !274 ; 2 uses
  %.not.i.i19 = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i.i19, label %_ZN5arrow6ResultINS_9FieldPathEED2Ev.exit, label %_ZN5arrow6ResultINS_9FieldPathEE7DestroyEv.exit.thread.i, !prof !283

_ZN5arrow6ResultINS_9FieldPathEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultINS_9FieldPathEE7DestroyEv.exit.i, %bb.n
  %i.an = phi ptr [ %.pr.pre.i, %_ZN5arrow6ResultINS_9FieldPathEE7DestroyEv.exit.i ], [ %i.ae, %bb.n ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !284, !range !189, !noundef !66
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %_ZN5arrow6ResultINS_9FieldPathEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN5arrow6ResultINS_9FieldPathEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #31
  br label %_ZN5arrow6ResultINS_9FieldPathEED2Ev.exit

_ZN5arrow6ResultINS_9FieldPathEED2Ev.exit:        ; preds = %bb.o, %_ZN5arrow6ResultINS_9FieldPathEE7DestroyEv.exit.i, %_ZN5arrow6ResultINS_9FieldPathEE7DestroyEv.exit.thread.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  ret void
}

declare noundef zeroext i1 @_ZNK5arrow8DataType6EqualsERKSt10shared_ptrIS0_Eb(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(16), i1 noundef zeroext) local_unnamed_addr #6

declare void @_ZN5arrow7compute4CastERKNS_5DatumERKNS_10TypeHolderERKNS0_11CastOptionsEPNS0_11ExecContextE(ptr dead_on_unwind writable sret(%"class.arrow::Result.213") align 8, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(46), ptr noundef) local_unnamed_addr #6

declare void @_ZN5arrow5DatumC1ERKSt10shared_ptrINS_5ArrayEE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute11CastOptions4SafeENS_10TypeHolderE(ptr dead_on_unwind noalias writable sret(%"class.arrow::compute::CastOptions") align 8 %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN5arrow7compute11CastOptionsC1Eb(ptr noundef nonnull align 8 dereferenceable(46) %0, i1 noundef zeroext true)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !79
  %i.e = load <2 x ptr>, ptr %1, align 8, !tbaa !255
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  store <2 x ptr> %i.e, ptr %i.a, align 8, !tbaa !255
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !79   ; 8 uses
  store ptr %i.d, ptr %i.f, align 8, !tbaa !79
  %.not.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow10TypeHolderaSEOS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.i = load atomic i64, ptr %i.h acquire, align 8 ; 2 uses
  %i.j = icmp eq i64 %i.i, 4294967297
  %i.k = trunc i64 %i.i to i32                    ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.h, align 8, !tbaa !80
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 0, ptr %i.l, align 4, !tbaa !82
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !83
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #31, !inline_history !333
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !83
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #31, !inline_history !333
  br label %_ZN5arrow10TypeHolderaSEOS0_.exit

bb.d:                                             ; preds = %bb.b
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = add nsw i32 %i.k, -1
  store i32 %i.t, ptr %i.h, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.u = atomicrmw volatile add ptr %i.h, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.k, %bb.e ], [ %i.u, %bb.f ]
  %i.v = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.v, label %bb.g, label %_ZN5arrow10TypeHolderaSEOS0_.exit, !prof !87

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #31
  br label %_ZN5arrow10TypeHolderaSEOS0_.exit

_ZN5arrow10TypeHolderaSEOS0_.exit:                ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute11CastOptionsD2Ev(ptr noundef nonnull align 8 dereferenceable(46) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow7compute11CastOptionsE, i64 16), ptr %0, align 8, !tbaa !83
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !79   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN5arrow10TypeHolderD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !80
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !82
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !83
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !127
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !83
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !127
  br label %_ZN5arrow10TypeHolderD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN5arrow10TypeHolderD2Ev.exit, !prof !87

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31
  br label %_ZN5arrow10TypeHolderD2Ev.exit

_ZN5arrow10TypeHolderD2Ev.exit:                   ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !79   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !80
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !82
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !83
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !522
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !83
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !522
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !87

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

declare void @_ZNK5arrow5Datum10make_arrayEv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.210") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultINS_5DatumEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.365, align 1            ; 3 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !274    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread, !prof !290

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  call void @__clang_call_terminate(ptr %i.e) #29
  unreachable

_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit:      ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  %.pr = load ptr, ptr %0, align 8, !tbaa !274    ; 2 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread, !prof !283

_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit
  %i.f = phi ptr [ %.pr, %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !284, !range !189, !noundef !66
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #31
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit, %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread, %bb.d
  ret void
}

declare void @_ZN5arrow14MakeNullScalarESt10shared_ptrINS_8DataTypeEE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.25") align 8, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !274    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread, !prof !290

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !79   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !80
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !82
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !83
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #31, !inline_history !523
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !83
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #31, !inline_history !523
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
end_hunk_5
begin_hunk_6_@_ZN5arrow7compute23ExecuteScalarExpressionERKNS0_10ExpressionERKNS0_9ExecBatchEPNS0_11ExecContextE:bb.a
  br label %bb.bx

bb.br:                                            ; preds = %bb.bo
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.bs:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !556)
  call void @llvm.experimental.noalias.scope.decl(metadata !559)
  %i.hy = load i8, ptr %i.hh, align 8, !tbaa !69, !noalias !562 ; 2 uses
  %i.hz = icmp eq i8 %i.hy, 0
  br i1 %i.hz, label %bb.bt, label %.sink.split.i.i.i.i.i.i.i.i.i.i185

.sink.split.i.i.i.i.i.i.i.i.i.i185:               ; preds = %bb.bs
  %i.ia = load <2 x ptr>, ptr %i.hi, align 8, !tbaa !94, !noalias !562
  store ptr null, ptr %i.hj, align 8, !tbaa !79, !noalias !562
  store <2 x ptr> %i.ia, ptr %37, align 16, !tbaa !94, !alias.scope !562
  store ptr null, ptr %i.hi, align 8, !tbaa !94, !noalias !562
  br label %bb.bt

bb.bt:                                            ; preds = %.sink.split.i.i.i.i.i.i.i.i.i.i185, %bb.bs
  store i8 %i.hy, ptr %i.hk, align 16, !tbaa !69, !alias.scope !562
  %i.ib = load ptr, ptr %35, align 8, !tbaa !527
  %i.ic = getelementptr inbounds nuw [24 x i8], ptr %i.ib, i64 %.093237
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  store ptr %i.ic, ptr %7, align 8, !tbaa !499
  invoke void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_17_Move_assign_baseILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEEaSEOSI_EUlOT_T0_E_JRSt7variantIJS6_S9_SB_SD_SF_SH_EEEEDcOSM_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(24) %37)
          to label %_ZN5arrow5DatumaSEOS0_.exit unwind label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.id = landingpad { ptr, i32 }
          catch ptr null
  %i.ie = extractvalue { ptr, i32 } %i.id, 0
  call void @__clang_call_terminate(ptr %i.ie) #29
  unreachable

_ZN5arrow5DatumaSEOS0_.exit:                      ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(24) %37)
          to label %bb.bw unwind label %bb.bv

bb.bv:                                            ; preds = %_ZN5arrow5DatumaSEOS0_.exit
  %i.if = landingpad { ptr, i32 }
          catch ptr null
  %i.ig = extractvalue { ptr, i32 } %i.if, 0
  call void @__clang_call_terminate(ptr %i.ig) #29
  unreachable

bb.bw:                                            ; preds = %_ZN5arrow5DatumaSEOS0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #31
  %i.ih = load ptr, ptr %35, align 8, !tbaa !527
  %i.ii = getelementptr inbounds nuw [24 x i8], ptr %i.ih, i64 %.093237
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  %i.ik = load i8, ptr %i.ij, align 8, !tbaa !69
  %i.il = icmp eq i8 %i.ik, 1
  %i.im = icmp ne i8 %.094236, 0
  %i.in = select i1 %i.il, i1 %i.im, i1 false
  %i.io = zext i1 %i.in to i8
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bq
  %.195 = phi i8 [ %.094236, %bb.bq ], [ %i.io, %bb.bw ] ; 2 uses
  %i.ip = load ptr, ptr %36, align 8, !tbaa !274  ; 2 uses
  %i.iq = icmp eq ptr %i.ip, null
  br i1 %i.iq, label %bb.by, label %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i, !prof !290

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.hi)
          to label %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i unwind label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ir = landingpad { ptr, i32 }
          catch ptr null
  %i.is = extractvalue { ptr, i32 } %i.ir, 0
  call void @__clang_call_terminate(ptr %i.is) #29
  unreachable

_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i:    ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %.pr.i = load ptr, ptr %36, align 8, !tbaa !274 ; 2 uses
  %.not.i.i188 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i188, label %_ZN5arrow6ResultINS_5DatumEED2Ev.exit, label %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i, !prof !283

_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i, %bb.bx
  %i.it = phi ptr [ %.pr.i, %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i ], [ %i.ip, %bb.bx ]
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 1
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !284, !range !189, !noundef !66
  %i.iw = trunc nuw i8 %i.iv to i1
  br i1 %i.iw, label %_ZN5arrow6ResultINS_5DatumEED2Ev.exit, label %bb.ca

bb.ca:                                            ; preds = %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %36) #31
  br label %_ZN5arrow6ResultINS_5DatumEED2Ev.exit

_ZN5arrow6ResultINS_5DatumEED2Ev.exit:            ; preds = %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i, %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #31
  br i1 %i.hw, label %bb.bm, label %.thread228

._crit_edge:                                      ; preds = %bb.bm
  %i.ix = icmp ne ptr %i.hn, %i.hm
  %i.iy = trunc nuw i8 %.195 to i1
  %i.iz = select i1 %i.ix, i1 %i.iy, i1 false
  %i.ja = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.jb = load i64, ptr %i.ja, align 8
  %cond.fr = freeze i1 %i.iz
  %spec.select = select i1 %cond.fr, i64 1, i64 %i.jb
  br label %bb.cb

bb.cb:                                            ; preds = %._crit_edge, %._crit_edge.thread
  %i.jc = phi ptr [ %i.gy, %._crit_edge.thread ], [ %i.hf, %._crit_edge ]
  %i.jd = phi ptr [ %i.gz, %._crit_edge.thread ], [ %i.hg, %._crit_edge ]
  %i.je = phi i64 [ %i.hb, %._crit_edge.thread ], [ %spec.select, %._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #31
  invoke void @_ZN5arrow7compute6detail14KernelExecutor10MakeScalarEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.227") align 8 %38)
          to label %bb.cc unwind label %bb.ch

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #31
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ai, i64 96
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !256 ; 2 uses
  store ptr %3, ptr %39, align 8, !tbaa !563
  %i.jh = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.ji = getelementptr inbounds nuw i8, ptr %39, i64 16
  store ptr %i.jg, ptr %i.ji, align 8, !tbaa !566
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ai, i64 104
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !138
  store ptr %i.jk, ptr %i.jh, align 8, !tbaa !567
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #31
  invoke void @_ZN5arrow7compute8GetTypesERKSt6vectorINS_5DatumESaIS2_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.235") align 8 %40, ptr noundef nonnull align 8 dereferenceable(24) %35)
          to label %bb.cd unwind label %bb.ci

bb.cd:                                            ; preds = %bb.cc
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !136
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #31
  %i.jn = load ptr, ptr %38, align 8, !tbaa !568  ; 2 uses
  store ptr %i.jg, ptr %43, align 8, !tbaa !570
  %i.jo = getelementptr inbounds nuw i8, ptr %43, i64 8
  store ptr %40, ptr %i.jo, align 8, !tbaa !573
  %i.jp = getelementptr inbounds nuw i8, ptr %43, i64 16
  store ptr %i.jm, ptr %i.jp, align 8, !tbaa !574
  %i.jq = load ptr, ptr %i.jn, align 8, !tbaa !83
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 16
  %i.js = load ptr, ptr %i.jr, align 8
  invoke void %i.js(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %42, ptr noundef nonnull align 8 dereferenceable(8) %i.jn, ptr noundef nonnull %39, ptr noundef nonnull byval(%"struct.arrow::compute::KernelInitArgs") align 8 %43)
          to label %_ZN5arrow6StatusD2Ev.exit190 unwind label %bb.cj

_ZN5arrow6StatusD2Ev.exit190:                     ; preds = %bb.cd
  %i.jt = load ptr, ptr %42, align 8, !tbaa !274  ; 2 uses
  store ptr %i.jt, ptr %41, align 8, !tbaa !274
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #31
  %i.ju = icmp eq ptr %i.jt, null
  br i1 %i.ju, label %_ZN5arrow6StatusD2Ev.exit196, label %bb.ce, !prof !290

bb.ce:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit190
  call void @_ZN5arrow6ResultINS_5DatumEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %41) #31
  %i.jv = load ptr, ptr %41, align 8, !tbaa !274  ; 2 uses
  %.not.i191 = icmp eq ptr %i.jv, null
  br i1 %.not.i191, label %_ZN5arrow6StatusD2Ev.exit192, label %bb.cf, !prof !290

bb.cf:                                            ; preds = %bb.ce
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 1
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !284, !range !189, !noundef !66
  %i.jy = trunc nuw i8 %i.jx to i1
  br i1 %i.jy, label %_ZN5arrow6StatusD2Ev.exit192, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %41) #31
  br label %_ZN5arrow6StatusD2Ev.exit192

_ZN5arrow6StatusD2Ev.exit192:                     ; preds = %bb.ce, %bb.cf, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #31
  br label %bb.cy

bb.ch:                                            ; preds = %bb.cb
  %i.jz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5arrow7compute6detail14KernelExecutorESt14default_deleteIS3_EED2Ev.exit208

bb.ci:                                            ; preds = %bb.cc
  %i.ka = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

bb.cj:                                            ; preds = %bb.cd
  %i.kb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #31
  br label %bb.cz

_ZN5arrow6StatusD2Ev.exit196:                     ; preds = %_ZN5arrow6StatusD2Ev.exit190
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5arrow7compute6detail16DatumAccumulatorE, i64 16), ptr %44, align 8, !tbaa !83
  %i.kc = getelementptr inbounds nuw i8, ptr %44, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kc, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #31
  %i.kd = load ptr, ptr %38, align 8, !tbaa !568  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #31
  invoke void @_ZNSt6vectorIN5arrow5DatumESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %48, ptr noundef nonnull align 8 dereferenceable(24) %35)
          to label %bb.ck unwind label %bb.cp

bb.ck:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit196
  invoke void @_ZN5arrow7compute9ExecBatchC2ESt6vectorINS_5DatumESaIS3_EEl(ptr noundef nonnull align 8 dereferenceable(72) %47, ptr noundef nonnull %48, i64 noundef %i.je)
          to label %bb.cl unwind label %bb.cq

bb.cl:                                            ; preds = %bb.ck
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !83
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 24
  %i.kg = load ptr, ptr %i.kf, align 8
  invoke void %i.kg(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %46, ptr noundef nonnull align 8 dereferenceable(8) %i.kd, ptr noundef nonnull align 8 dereferenceable(72) %47, ptr noundef nonnull %44)
          to label %_ZN5arrow6StatusD2Ev.exit198 unwind label %bb.cr

_ZN5arrow6StatusD2Ev.exit198:                     ; preds = %bb.cl
  %i.kh = load ptr, ptr %46, align 8, !tbaa !274  ; 2 uses
  store ptr %i.kh, ptr %45, align 8, !tbaa !274
  store ptr null, ptr %46, align 8, !tbaa !274
  call void @_ZN5arrow7compute9ExecBatchD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %47) #31
  call void @_ZNSt6vectorIN5arrow5DatumESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %48) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #31
  %i.ki = icmp eq ptr %i.kh, null
  br i1 %i.ki, label %_ZN5arrow6StatusD2Ev.exit204, label %bb.cm, !prof !290

bb.cm:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit198
  call void @_ZN5arrow6ResultINS_5DatumEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %45) #31
  %i.kj = load ptr, ptr %45, align 8, !tbaa !274  ; 2 uses
  %.not.i199 = icmp eq ptr %i.kj, null
  br i1 %.not.i199, label %_ZN5arrow6StatusD2Ev.exit200, label %bb.cn, !prof !290

bb.cn:                                            ; preds = %bb.cm
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 1
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !284, !range !189, !noundef !66
  %i.km = trunc nuw i8 %i.kl to i1
  br i1 %i.km, label %_ZN5arrow6StatusD2Ev.exit200, label %bb.co

bb.co:                                            ; preds = %bb.cn
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %45) #31
  br label %_ZN5arrow6StatusD2Ev.exit200

_ZN5arrow6StatusD2Ev.exit200:                     ; preds = %bb.cm, %bb.cn, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #31
  br label %bb.cw

bb.cp:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit196
  %i.kn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.cq:                                            ; preds = %bb.ck
  %i.ko = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

bb.cr:                                            ; preds = %bb.cl
  %i.kp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute9ExecBatchD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %47) #31
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %.pn122.pn = phi { ptr, i32 } [ %i.kp, %bb.cr ], [ %i.ko, %bb.cq ]
  call void @_ZNSt6vectorIN5arrow5DatumESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %48) #31
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cp
  %.pn122.pn.pn = phi { ptr, i32 } [ %.pn122.pn, %bb.cs ], [ %i.kn, %bb.cp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #31
  br label %bb.cx

_ZN5arrow6StatusD2Ev.exit204:                     ; preds = %_ZN5arrow6StatusD2Ev.exit198
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #31
  %i.kq = load ptr, ptr %38, align 8, !tbaa !568  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !575)
  %i.kr = load <2 x ptr>, ptr %i.kc, align 8, !tbaa !470, !noalias !575
  store <2 x ptr> %i.kr, ptr %50, align 16, !tbaa !470, !alias.scope !575
  %i.ks = getelementptr inbounds nuw i8, ptr %50, i64 16
  %i.kt = getelementptr inbounds nuw i8, ptr %44, i64 24
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !436, !noalias !575
  store ptr %i.ku, ptr %i.ks, align 16, !tbaa !436, !alias.scope !575
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kc, i8 0, i64 24, i1 false), !noalias !575
  %i.kv = load ptr, ptr %i.kq, align 8, !tbaa !83
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 32
  %i.kx = load ptr, ptr %i.kw, align 8
  invoke void %i.kx(ptr dead_on_unwind nonnull writable sret(%"struct.arrow::Datum") align 8 %49, ptr noundef nonnull align 8 dereferenceable(8) %i.kq, ptr noundef nonnull align 8 dereferenceable(24) %35, ptr noundef nonnull align 8 dereferenceable(24) %50)
          to label %bb.cu unwind label %bb.cv

bb.cu:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit204
  call void @_ZNSt6vectorIN5arrow5DatumESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %50) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #31
  call void @_ZN5arrow6ResultINS_5DatumEEC2IKS1_vEEOT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %49) #31
  call void @_ZN5arrow5DatumD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %49) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #31
  br label %bb.cw

bb.cv:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit204
  %i.ky = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN5arrow5DatumESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %50) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #31
  br label %bb.cx

bb.cw:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit200, %bb.cu
  call void @_ZN5arrow7compute6detail16DatumAccumulatorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %44) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #31
  br label %bb.cy

bb.cx:                                            ; preds = %bb.cv, %bb.ct
  %.pn126 = phi { ptr, i32 } [ %i.ky, %bb.cv ], [ %.pn122.pn.pn, %bb.ct ]
  call void @_ZN5arrow7compute6detail16DatumAccumulatorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %44) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #31
  br label %bb.cz

bb.cy:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit192, %bb.cw
  call void @_ZNSt6vectorIN5arrow10TypeHolderESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %40) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #31
  %i.kz = load ptr, ptr %38, align 8, !tbaa !568  ; 3 uses
  %.not.i205 = icmp eq ptr %i.kz, null
  br i1 %.not.i205, label %_ZNSt10unique_ptrIN5arrow7compute6detail14KernelExecutorESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow7compute6detail14KernelExecutorEEclEPS3_.exit.i

_ZNKSt14default_deleteIN5arrow7compute6detail14KernelExecutorEEclEPS3_.exit.i: ; preds = %bb.cy
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !83
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  %i.lc = load ptr, ptr %i.lb, align 8
  call void %i.lc(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.kz) #31, !inline_history !578
  br label %_ZNSt10unique_ptrIN5arrow7compute6detail14KernelExecutorESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow7compute6detail14KernelExecutorESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.cy, %_ZNKSt14default_deleteIN5arrow7compute6detail14KernelExecutorEEclEPS3_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #31
  br label %.thread228

bb.cz:                                            ; preds = %bb.cx, %bb.cj
  %.pn126.pn = phi { ptr, i32 } [ %.pn126, %bb.cx ], [ %i.kb, %bb.cj ]
  call void @_ZNSt6vectorIN5arrow10TypeHolderESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %40) #31
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.ci
  %.pn126.pn.pn = phi { ptr, i32 } [ %.pn126.pn, %bb.cz ], [ %i.ka, %bb.ci ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #31
  %i.ld = load ptr, ptr %38, align 8, !tbaa !568  ; 3 uses
  %.not.i206 = icmp eq ptr %i.ld, null
  br i1 %.not.i206, label %_ZNSt10unique_ptrIN5arrow7compute6detail14KernelExecutorESt14default_deleteIS3_EED2Ev.exit208, label %_ZNKSt14default_deleteIN5arrow7compute6detail14KernelExecutorEEclEPS3_.exit.i207

_ZNKSt14default_deleteIN5arrow7compute6detail14KernelExecutorEEclEPS3_.exit.i207: ; preds = %bb.da
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !83
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 8
  %i.lg = load ptr, ptr %i.lf, align 8
  call void %i.lg(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ld) #31, !inline_history !578
  br label %_ZNSt10unique_ptrIN5arrow7compute6detail14KernelExecutorESt14default_deleteIS3_EED2Ev.exit208

_ZNSt10unique_ptrIN5arrow7compute6detail14KernelExecutorESt14default_deleteIS3_EED2Ev.exit208: ; preds = %_ZNKSt14default_deleteIN5arrow7compute6detail14KernelExecutorEEclEPS3_.exit.i207, %bb.da, %bb.ch
  %.pn126.pn.pn.pn = phi { ptr, i32 } [ %i.jz, %bb.ch ], [ %.pn126.pn.pn, %bb.da ], [ %.pn126.pn.pn, %_ZNKSt14default_deleteIN5arrow7compute6detail14KernelExecutorEEclEPS3_.exit.i207 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #31
  br label %bb.dd

.thread228:                                       ; preds = %_ZN5arrow6ResultINS_5DatumEED2Ev.exit, %_ZNSt10unique_ptrIN5arrow7compute6detail14KernelExecutorESt14default_deleteIS3_EED2Ev.exit
  %i.lh = phi ptr [ %i.jd, %_ZNSt10unique_ptrIN5arrow7compute6detail14KernelExecutorESt14default_deleteIS3_EED2Ev.exit ], [ %i.hg, %_ZN5arrow6ResultINS_5DatumEED2Ev.exit ]
  %i.li = phi ptr [ %i.jc, %_ZNSt10unique_ptrIN5arrow7compute6detail14KernelExecutorESt14default_deleteIS3_EED2Ev.exit ], [ %i.hf, %_ZN5arrow6ResultINS_5DatumEED2Ev.exit ]
  %i.lj = load ptr, ptr %35, align 8, !tbaa !527  ; 3 uses
  %i.lk = load ptr, ptr %i.li, align 8, !tbaa !435 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.lj, %i.lk
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.thread228, %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ln, %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i.i ], [ %i.lj, %.thread228 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(24) %.05.i.i.i)
          to label %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i.i unwind label %bb.db

bb.db:                                            ; preds = %.lr.ph.i.i.i
  %i.ll = landingpad { ptr, i32 }
          catch ptr null
  %i.lm = extractvalue { ptr, i32 } %i.ll, 0
  call void @__clang_call_terminate(ptr %i.lm) #29
  unreachable

_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i.i:     ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %i.ln = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i209 = icmp eq ptr %i.ln, %i.lk
  br i1 %.not.i.i.i209, label %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !528

_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i.i
  %.pr.i210 = load ptr, ptr %35, align 8, !tbaa !527
  br label %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit.i

end_hunk_6
begin_hunk_7_@_ZN5arrow5DatumC2ERKS0_:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i8, ptr %i.c, align 8, !tbaa !69
  store i8 %i.d, ptr %i.a, align 8, !tbaa !69
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEEC2IPKivEET_S5_RKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 7 uses
  %i.d = icmp ugt i64 %i.c, 9223372036854775804
  br i1 %i.d, label %bb.b, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.60) #33
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i = icmp eq ptr %2, %1
  br i1 %.not.i.i, label %.thread.i, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i

.thread.i:                                        ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr null, i64 %i.c ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %i.f, align 8, !tbaa !105
  br label %bb.f

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.g = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #30
          to label %.noexc4 unwind label %bb.g    ; 4 uses

.noexc4:                                          ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  store ptr %i.g, ptr %0, align 8, !tbaa !119
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.c ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.h, ptr %i.i, align 8, !tbaa !105
  %i.j = icmp samesign ugt i64 %i.c, 4
  br i1 %i.j, label %bb.c, label %bb.d, !prof !283

bb.c:                                             ; preds = %.noexc4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.g, ptr align 4 %1, i64 %i.c, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %.noexc4
  %i.k = icmp eq i64 %i.c, 4
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = load i32, ptr %1, align 4, !tbaa !3
  store i32 %i.l, ptr %i.g, align 4, !tbaa !3
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %.thread.i
  %i.m = phi ptr [ %i.h, %bb.c ], [ %i.h, %bb.d ], [ %i.h, %bb.e ], [ %i.e, %.thread.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %i.n, align 8, !tbaa !262
  ret void

bb.g:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i, %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %0, align 8, !tbaa !119    ; 3 uses
  %.not.i.i5 = icmp eq ptr %i.p, null
  br i1 %.not.i.i5, label %_ZNSt12_Vector_baseIiSaIiEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !105
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #32
  br label %_ZNSt12_Vector_baseIiSaIiEED2Ev.exit

_ZNSt12_Vector_baseIiSaIiEED2Ev.exit:             ; preds = %bb.g, %bb.h
  resume { ptr, i32 } %i.o
}

declare void @_ZN5arrow7compute18StructFieldOptionsC1ESt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) unnamed_addr #6

declare void @_ZN5arrow7compute12CallFunctionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS_5DatumESaISA_EEPKNS0_15FunctionOptionsEPNS0_11ExecContextE(ptr dead_on_unwind writable sret(%"class.arrow::Result.213") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5arrow5DatumESaIS1_EEC2ESt16initializer_listIS1_ERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.idx7 = mul nuw nsw i64 %2, 24                 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.idx7
  %i.b = icmp ugt i64 %2, 384307168202282325
  br i1 %i.b, label %bb.b, label %_ZNSt6vectorIN5arrow5DatumESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.60) #33
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt6vectorIN5arrow5DatumESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.a
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EE11_M_allocateEm.exit.i, label %_ZNSt15__new_allocatorIN5arrow5DatumEE8allocateEmPKv.exit.i.i

_ZNSt15__new_allocatorIN5arrow5DatumEE8allocateEmPKv.exit.i.i: ; preds = %_ZNSt6vectorIN5arrow5DatumESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.c = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx7) #30
          to label %_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EE11_M_allocateEm.exit.i unwind label %bb.d

_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EE11_M_allocateEm.exit.i: ; preds = %_ZNSt15__new_allocatorIN5arrow5DatumEE8allocateEmPKv.exit.i.i, %_ZNSt6vectorIN5arrow5DatumESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.d = phi ptr [ null, %_ZNSt6vectorIN5arrow5DatumESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %i.c, %_ZNSt15__new_allocatorIN5arrow5DatumEE8allocateEmPKv.exit.i.i ] ; 3 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !527
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx7
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %i.f, align 8, !tbaa !436
  %i.g = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN5arrow5DatumEPS1_ET0_T_S6_S5_(ptr noundef %1, ptr noundef %i.a, ptr noundef %i.d)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EE11_M_allocateEm.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.h, align 8, !tbaa !435
  ret void

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EE11_M_allocateEm.exit.i, %_ZNSt15__new_allocatorIN5arrow5DatumEE8allocateEmPKv.exit.i.i, %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %0, align 8, !tbaa !527    ; 3 uses
  %.not.i.i5 = icmp eq ptr %i.j, null
  br i1 %.not.i.i5, label %_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !436
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #32
  br label %_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EED2Ev.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN5arrow5DatumESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.365, align 1            ; 3 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !527    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !435  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.f, %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %.05.i.i)
          to label %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  call void @__clang_call_terminate(ptr %i.e) #29
  unreachable

_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i:       ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !528

_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !527
  br label %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.g = phi ptr [ %.pr, %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.g, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !436
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #32
  br label %_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute18StructFieldOptionsD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow7compute18StructFieldOptionsE, i64 16), ptr %0, align 8, !tbaa !83
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS2_8FieldRefESaISB_EEEE8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %_ZN5arrow8FieldRefD2Ev.exit unwind label %bb.b, !inline_history !128

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #29, !inline_history !128
  unreachable

_ZN5arrow8FieldRefD2Ev.exit:                      ; preds = %bb.a
  ret void
}

declare noundef zeroext i1 @_ZNK5arrow8DataType6EqualsERKS0_b(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status7InvalidIJRA18_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA6_S2_SA_RA23_S2_SA_EEES0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(18) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(6) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(23) %5, ptr noundef nonnull align 8 dereferenceable(32) %6) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31, !noalias !579
  call void @_ZN5arrow8internal12JoinToStringIJRA18_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA6_S2_SA_RA23_S2_SA_EEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 1 dereferenceable(18) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(6) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(23) %5, ptr noundef nonnull align 8 dereferenceable(32) %6), !noalias !579
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %7, align 8, !tbaa !33, !noalias !579 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZN5arrow6Status8FromArgsIJRA18_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA6_S2_SA_RA23_S2_SA_EEES0_NS_10StatusCodeEDpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.d = load i64, ptr %i.b, align 8, !tbaa !86, !noalias !579
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #32
  br label %_ZN5arrow6Status8FromArgsIJRA18_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA6_S2_SA_RA23_S2_SA_EEES0_NS_10StatusCodeEDpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %7, align 8, !tbaa !33, !noalias !579 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i: ; preds = %bb.c
  %i.j = load i64, ptr %i.h, align 8, !tbaa !86, !noalias !579
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31, !noalias !579
  resume { ptr, i32 } %i.f

_ZN5arrow6Status8FromArgsIJRA18_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA6_S2_SA_RA23_S2_SA_EEES0_NS_10StatusCodeEDpOT_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31, !noalias !579
  ret void
}

declare void @_ZN5arrow7compute6detail14KernelExecutor10MakeScalarEv(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.227") align 8) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8GetTypesERKSt6vectorINS_5DatumESaIS2_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.235") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !435  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !527    ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = sdiv exact i64 %i.f, 24
  %i.h = icmp ugt i64 %i.g, 384307168202282325
  br i1 %i.h, label %.noexc, label %_ZNSt6vectorIN5arrow10TypeHolderESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.60) #33
  unreachable

_ZNSt6vectorIN5arrow10TypeHolderESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %.thread, label %.lr.ph.preheader

.thread:                                          ; preds = %_ZNSt6vectorIN5arrow10TypeHolderESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorIN5arrow10TypeHolderESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #30 ; 3 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !582
  %i.j = getelementptr i8, ptr %i.i, i64 %i.f     ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.i, i8 0, i64 %i.f, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.j, ptr %i.l, align 8, !tbaa !585
  store ptr %i.j, ptr %i.k, align 8, !tbaa !586
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.m = phi ptr [ %i.at, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %i.c, %.lr.ph.preheader ]
  %.021 = phi i64 [ %i.ar, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %.021
  %i.o = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow5Datum4typeEv(ptr noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %bb.b unwind label %bb.l       ; 2 uses

bb.b:                                             ; preds = %.lr.ph
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !139  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !79   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i13 = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i.i13, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load i32, ptr %i.s, align 4, !tbaa !3
  %i.v = add nsw i32 %i.u, 1
  store i32 %i.v, ptr %i.s, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

bb.e:                                             ; preds = %bb.c
  %i.w = atomicrmw volatile add ptr %i.s, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit: ; preds = %bb.b, %bb.d, %bb.e
  %i.x = load ptr, ptr %0, align 8, !tbaa !582
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %.021 ; 3 uses
  store ptr %i.p, ptr %i.y, align 8, !tbaa !299
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.p, ptr %i.z, align 8, !tbaa !255
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !79 ; 8 uses
  store ptr %i.r, ptr %i.aa, align 8, !tbaa !79
  %.not.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 4 uses
  %i.ad = load atomic i64, ptr %i.ac acquire, align 8 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 4294967297
  %i.af = trunc i64 %i.ad to i32                  ; 2 uses
  br i1 %i.ae, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.ac, align 8, !tbaa !80
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  store i32 0, ptr %i.ag, align 4, !tbaa !82
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !83
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #31, !inline_history !333
  %i.ak = load ptr, ptr %i.ab, align 8, !tbaa !83
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #31, !inline_history !333
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.an = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i.i = icmp eq i8 %i.an, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = add nsw i32 %i.af, -1
  store i32 %i.ao, ptr %i.ac, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ap = atomicrmw volatile add ptr %i.ac, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.af, %bb.i ], [ %i.ap, %bb.j ]
  %i.aq = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.aq, label %bb.k, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !87

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #31
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.k
  %i.ar = add nuw i64 %.021, 1                    ; 2 uses
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !435
  %i.at = load ptr, ptr %1, align 8, !tbaa !527   ; 2 uses
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = sdiv exact i64 %i.aw, 24
  %i.ay = icmp ult i64 %i.ar, %i.ax
  br i1 %i.ay, label %.lr.ph, label %._crit_edge, !llvm.loop !587

bb.l:                                             ; preds = %.lr.ph
  %i.az = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorIN5arrow10TypeHolderESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #31
  resume { ptr, i32 } %i.az

._crit_edge:                                      ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5arrow5DatumESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !435  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !527    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sdiv exact i64 %i.f, 24
  %i.h = icmp ugt i64 %i.g, 384307168202282325
  br i1 %i.h, label %.noexc.i, label %_ZNSt15__new_allocatorIN5arrow5DatumEE8allocateEmPKv.exit.i.i.i, !prof !87

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #33
  unreachable

_ZNSt15__new_allocatorIN5arrow5DatumEE8allocateEmPKv.exit.i.i.i: ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #30
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN5arrow5DatumEE8allocateEmPKv.exit.i.i.i, %bb.a
  %i.j = phi ptr [ null, %bb.a ], [ %i.i, %_ZNSt15__new_allocatorIN5arrow5DatumEE8allocateEmPKv.exit.i.i.i ] ; 4 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !527
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !435
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !436
  %i.n = load ptr, ptr %1, align 8, !tbaa !470
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !470
  %i.p = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN5arrow5DatumESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_(ptr %i.n, ptr %i.o, ptr noundef %i.j)
          to label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN5arrow5DatumESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit unwind label %bb.d

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN5arrow5DatumESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit: ; preds = %bb.c
  store ptr %i.p, ptr %i.k, align 8, !tbaa !435
  ret void

bb.d:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %0, align 8, !tbaa !527    ; 3 uses
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !436
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.v) #32
  br label %_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EED2Ev.exit: ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute9ExecBatchC2ESt6vectorINS_5DatumESaIS3_EEl(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = load <2 x ptr>, ptr %1, align 8, !tbaa !470
  store <2 x ptr> %i.b, ptr %0, align 8, !tbaa !470
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !436
  store ptr %i.e, ptr %i.c, align 8, !tbaa !436
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i8 1, ptr %i.a, align 1, !tbaa !385
  invoke void @_ZN5arrow7compute7literalIbEENS0_10ExpressionEOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::compute::Expression") align 8 %i.g, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %2, ptr %i.h, align 8, !tbaa !386
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 -1, ptr %i.i, align 8, !tbaa !398
  ret void

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  call void @_ZNSt12__shared_ptrIN5arrow7compute15SelectionVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #31
  call void @_ZNSt6vectorIN5arrow5DatumESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #31
  resume { ptr, i32 } %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultINS_5DatumEEC2IKS1_vEEOT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.450, align 8            ; 5 uses
  store ptr null, ptr %0, align 8, !tbaa !274
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i8 -1, ptr %i.b, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  store ptr %i.a, ptr %2, align 8, !tbaa !437
  invoke void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_15_Copy_ctor_baseILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEEC1ERKSI_EUlOT_T0_E_JRKSt7variantIJS6_S9_SB_SD_SF_SH_EEEEDcOSN_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZN5arrow6ResultINS_5DatumEE14ConstructValueIKS1_EEvOT_.exit unwind label %.body.i.i

.body.i.i:                                        ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS2_6ScalarEES5_INS2_9ArrayDataEES5_INS2_12ChunkedArrayEES5_INS2_11RecordBatchEES5_INS2_5TableEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(24) %i.a) #31
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  call void @__clang_call_terminate(ptr %i.d) #29
  unreachable

_ZN5arrow6ResultINS_5DatumEE14ConstructValueIKS1_EEvOT_.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !69
  store i8 %i.f, ptr %i.b, align 8, !tbaa !69
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute6detail16DatumAccumulatorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.365, align 1            ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5arrow7compute6detail16DatumAccumulatorE, i64 16), ptr %0, align 8, !tbaa !83
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !527  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !435  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.g, %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %.05.i.i.i)
          to label %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i.i unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  call void @__clang_call_terminate(ptr %i.f) #29
  unreachable

_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i.i:     ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !528

_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !527
  br label %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.h = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5arrow5DatumESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !436
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #32
  br label %_ZNSt6vectorIN5arrow5DatumESaIS1_EED2Ev.exit

_ZNSt6vectorIN5arrow5DatumESaIS1_EED2Ev.exit:     ; preds = %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit.i, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN5arrow10TypeHolderESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !582    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !586  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN5arrow10TypeHolderES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN5arrow10TypeHolderEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.u, %_ZSt8_DestroyIN5arrow10TypeHolderEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !79   ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5arrow10TypeHolderEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !80
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !82
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !83
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #31, !inline_history !588
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !83
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #31, !inline_history !588
  br label %_ZSt8_DestroyIN5arrow10TypeHolderEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZSt8_DestroyIN5arrow10TypeHolderEEvPT_.exit.i.i, !prof !87

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #31
  br label %_ZSt8_DestroyIN5arrow10TypeHolderEEvPT_.exit.i.i

_ZSt8_DestroyIN5arrow10TypeHolderEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN5arrow10TypeHolderES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !589

_ZSt8_DestroyIPN5arrow10TypeHolderES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN5arrow10TypeHolderEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !582
  br label %_ZSt8_DestroyIPN5arrow10TypeHolderES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN5arrow10TypeHolderES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN5arrow10TypeHolderES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.v = phi ptr [ %.pr, %_ZSt8_DestroyIPN5arrow10TypeHolderES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.v, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN5arrow10TypeHolderESaIS1_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN5arrow10TypeHolderES1_EvT_S3_RSaIT0_E.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !585
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #32
  br label %_ZNSt12_Vector_baseIN5arrow10TypeHolderESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN5arrow10TypeHolderESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow10TypeHolderES1_EvT_S3_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute18FieldsInExpressionERKNS0_10ExpressionE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.74") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
_ZSt6get_ifIN5arrow5DatumEJS1_NS0_7compute10Expression9ParameterENS3_4CallEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i:
  %2 = alloca %class.anon.463, align 8            ; 5 uses
  %3 = alloca [1 x %"class.arrow::FieldRef"], align 8 ; 10 uses
  %4 = alloca %"class.std::vector.74", align 8    ; 10 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !63, !nonnull !66, !noundef !66 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.c = load i8, ptr %i.b, align 8, !tbaa !67
  switch i8 %i.c, label %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i [
    i8 0, label %_ZNK5arrow7compute10Expression7literalEv.exit
    i8 1, label %_ZNK5arrow7compute10Expression9field_refEv.exit
  ]

_ZNK5arrow7compute10Expression7literalEv.exit:    ; preds = %_ZSt6get_ifIN5arrow5DatumEJS1_NS0_7compute10Expression9ParameterENS3_4CallEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNK5arrow7compute10Expression9field_refEv.exit:  ; preds = %_ZSt6get_ifIN5arrow5DatumEJS1_NS0_7compute10Expression9ParameterENS3_4CallEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store i8 -1, ptr %i.d, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  store ptr %3, ptr %2, align 8, !tbaa !590
  invoke void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_15_Copy_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS4_8FieldRefESaISD_EEEEC1ERKSG_EUlOT_T0_E_JRKSt7variantIJS5_SB_SF_EEEEDcOSL_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %bb.c unwind label %bb.a, !inline_history !593

bb.a:                                             ; preds = %_ZNK5arrow7compute10Expression9field_refEv.exit
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  invoke void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS2_8FieldRefESaISB_EEEE8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %.body unwind label %bb.b, !inline_history !594

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  call void @__clang_call_terminate(ptr %i.g) #29, !inline_history !594
  unreachable

bb.c:                                             ; preds = %_ZNK5arrow7compute10Expression9field_refEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.i = load i8, ptr %i.h, align 8, !tbaa !101
  store i8 %i.i, ptr %i.d, align 8, !tbaa !101
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.j = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #30
          to label %_ZNSt12_Vector_baseIN5arrow8FieldRefESaIS1_EE11_M_allocateEm.exit.i.i unwind label %.thread ; 4 uses

.thread:                                          ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body26

_ZNSt12_Vector_baseIN5arrow8FieldRefESaIS1_EE11_M_allocateEm.exit.i.i: ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %i.j, ptr %0, align 8, !tbaa !121
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.m, ptr %i.n, align 8, !tbaa !110
  %i.o = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN5arrow8FieldRefEPS1_ET0_T_S6_S5_(ptr noundef nonnull %3, ptr noundef nonnull %i.l, ptr noundef nonnull %i.j)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIN5arrow8FieldRefESaIS1_EE11_M_allocateEm.exit.i.i
end_hunk_7
begin_hunk_8_@"_ZN5arrow7compute16ModifyExpressionIZNS0_28ReplaceFieldsWithKnownValuesERKNS0_16KnownFieldValuesENS0_10ExpressionEE3$_0ZNS0_28ReplaceFieldsWithKnownValuesES4_S5_E3$_1EENS_6ResultIS5_EES5_RKT_RKT0_":bb.a
bb.ah:                                            ; preds = %bb.ad
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute11CastOptionsD2Ev(ptr noundef nonnull align 8 dereferenceable(46) %20) #31, !noalias !621
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.pn.i = phi { ptr, i32 } [ %i.cw, %bb.ah ], [ %i.cv, %bb.ag ]
  call void @_ZN5arrow10TypeHolderD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %21) #31, !noalias !621
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #31, !noalias !621
  call void @_ZN5arrow10TypeHolderD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %18) #31, !noalias !621
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %19) #31, !noalias !621
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #31, !noalias !621
  br label %bb.dc

bb.aj:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #31, !noalias !621
  call void @llvm.experimental.noalias.scope.decl(metadata !630)
  call void @llvm.experimental.noalias.scope.decl(metadata !633)
  %i.cx = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.cy = load i8, ptr %i.cx, align 8, !tbaa !69, !noalias !636 ; 2 uses
  %i.cz = icmp eq i8 %i.cy, 0
  br i1 %i.cz, label %.thread.i, label %.sink.split.i.i.i.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.aj
  %i.da = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.dc = load <2 x ptr>, ptr %i.da, align 8, !tbaa !94, !noalias !636
  store ptr null, ptr %i.db, align 8, !tbaa !79, !noalias !636
  store <2 x ptr> %i.dc, ptr %22, align 16, !tbaa !94, !alias.scope !637, !noalias !621
  store ptr null, ptr %i.da, align 8, !tbaa !94, !noalias !636
  br label %.thread.i

.thread.i:                                        ; preds = %.sink.split.i.i.i.i.i.i.i.i.i.i.i, %bb.aj
  %i.dd = getelementptr inbounds nuw i8, ptr %22, i64 16
  store i8 %i.cy, ptr %i.dd, align 16, !tbaa !69, !alias.scope !637, !noalias !621
  %i.de = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5arrow5DatumaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %22) #31, !noalias !621 ; 0 uses
  call void @_ZN5arrow5DatumD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %22) #31, !noalias !621
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #31, !noalias !621
  call void @_ZN5arrow6ResultINS_5DatumEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %17) #31, !noalias !621
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #31, !noalias !621
  br label %bb.al

bb.ak:                                            ; preds = %bb.ae
  call void @_ZN5arrow6ResultINS_7compute10ExpressionEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %37, ptr noundef nonnull align 8 dereferenceable(8) %17) #31
  call void @_ZN5arrow6ResultINS_5DatumEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %17) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #31, !noalias !621
  br label %bb.da

bb.al:                                            ; preds = %.thread.i, %bb.y
  %i.df = load i8, ptr %i.ai, align 16, !tbaa !69, !noalias !621
  %i.dg = icmp eq i8 %i.df, 1
  br i1 %i.dg, label %bb.am, label %.critedge.i

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #31, !noalias !621
  %i.dh = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow5Datum6scalarEv(ptr noundef nonnull align 8 dereferenceable(24) %14)
          to label %bb.an unwind label %bb.aq, !noalias !621

bb.an:                                            ; preds = %bb.am
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !71, !noalias !621
  %i.dj = invoke noundef ptr @_ZN5arrow19default_memory_poolEv()
          to label %bb.ao unwind label %bb.aq, !noalias !621

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZN5arrow19MakeArrayFromScalarERKNS_6ScalarElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.206") align 8 %23, ptr noundef nonnull align 8 dereferenceable(41) %i.di, i64 noundef 1, ptr noundef %i.dj)
          to label %bb.ap unwind label %bb.aq, !noalias !621

bb.ap:                                            ; preds = %bb.ao
  %i.dk = load ptr, ptr %23, align 8, !tbaa !274, !noalias !621
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %bb.ar, label %bb.at, !prof !290

bb.aq:                                            ; preds = %bb.ao, %bb.an, %bb.am
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %bb.dc

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #31, !noalias !621
  call void @llvm.experimental.noalias.scope.decl(metadata !638)
  call void @llvm.experimental.noalias.scope.decl(metadata !641)
  %i.dn = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.dp = load <2 x ptr>, ptr %i.dn, align 8, !tbaa !94, !noalias !644
  store ptr null, ptr %i.do, align 8, !tbaa !79, !noalias !644
  store <2 x ptr> %i.dp, ptr %24, align 16, !tbaa !94, !alias.scope !645, !noalias !621
  store ptr null, ptr %i.dn, align 8, !tbaa !447, !noalias !644
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #31, !noalias !621
  invoke void @_ZN5arrow10MakeScalarIiNS_11CTypeTraitsIiEENS_11Int32ScalarES3_EESt10shared_ptrINS_6ScalarEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.25") align 8 %27, i32 noundef 0)
          to label %bb.as unwind label %bb.au, !noalias !621

bb.as:                                            ; preds = %bb.ar
  %i.dq = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.dr = load <2 x ptr>, ptr %24, align 16, !tbaa !94, !noalias !621
  store ptr null, ptr %i.dq, align 8, !tbaa !79, !noalias !621
  store <2 x ptr> %i.dr, ptr %28, align 16, !tbaa !94, !noalias !621
  store ptr null, ptr %24, align 16, !tbaa !447, !noalias !621
  invoke void @_ZN5arrow16DictionaryScalar4MakeESt10shared_ptrINS_6ScalarEES1_INS_5ArrayEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.744") align 8 %26, ptr noundef nonnull %27, ptr noundef nonnull %28)
          to label %.thread126.i unwind label %bb.av, !noalias !621

.thread126.i:                                     ; preds = %bb.as
  %i.ds = load <2 x ptr>, ptr %26, align 16, !tbaa !94, !noalias !621
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %26, i8 0, i64 16, i1 false), !noalias !621
  store <2 x ptr> %i.ds, ptr %25, align 16, !tbaa !94, !noalias !621
  %i.dt = getelementptr inbounds nuw i8, ptr %25, i64 16
  store i8 1, ptr %i.dt, align 16, !tbaa !69, !noalias !621
  %i.du = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5arrow5DatumaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %25) #31, !noalias !621 ; 0 uses
  call void @_ZN5arrow5DatumD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %25) #31, !noalias !621
  call void @_ZNSt12__shared_ptrIN5arrow16DictionaryScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %26) #31, !noalias !621
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %28) #31, !noalias !621
  call void @_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %27) #31, !noalias !621
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #31, !noalias !621
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %24) #31, !noalias !621
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #31, !noalias !621
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %23) #31, !noalias !621
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #31, !noalias !621
  br label %.critedge.i

bb.at:                                            ; preds = %bb.ap
  call void @_ZN5arrow6ResultINS_7compute10ExpressionEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %37, ptr noundef nonnull align 8 dereferenceable(8) %23) #31
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %23) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #31, !noalias !621
  br label %bb.da

bb.au:                                            ; preds = %bb.ar
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.av:                                            ; preds = %bb.as
  %i.dw = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %28) #31, !noalias !621
  call void @_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %27) #31, !noalias !621
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.pn48.i = phi { ptr, i32 } [ %i.dw, %bb.av ], [ %i.dv, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #31, !noalias !621
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %24) #31, !noalias !621
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #31, !noalias !621
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %23) #31, !noalias !621
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #31, !noalias !621
  br label %bb.dc

.critedge.i:                                      ; preds = %.thread126.i, %bb.al, %bb.u, %_ZNK5arrow7compute10Expression4typeEv.exit70.i
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #31, !noalias !621
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #31, !noalias !621
  %i.dx = load ptr, ptr %38, align 8, !tbaa !63, !noalias !621, !nonnull !66, !noundef !66 ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 144
  %i.dz = load i8, ptr %i.dy, align 8, !tbaa !67, !noalias !621
  switch i8 %i.dz, label %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i.i82.i [
    i8 0, label %bb.ax
    i8 1, label %bb.ay
  ]

bb.ax:                                            ; preds = %.critedge.i
  %i.ea = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow5Datum4typeEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dx)
          to label %_ZNK5arrow7compute10Expression4typeEv.exit84.i unwind label %bb.ck, !noalias !621

bb.ay:                                            ; preds = %.critedge.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 40
  br label %_ZNK5arrow7compute10Expression4typeEv.exit84.i

_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i.i82.i: ; preds = %.critedge.i
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dx, i64 120
  br label %_ZNK5arrow7compute10Expression4typeEv.exit84.i

_ZNK5arrow7compute10Expression4typeEv.exit84.i:   ; preds = %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i.i82.i, %bb.ay, %bb.ax
  %.2.i81.in.i = phi ptr [ %i.eb, %bb.ay ], [ %i.ec, %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i.i82.i ], [ %i.ea, %bb.ax ]
  %.2.i81.i = load ptr, ptr %.2.i81.in.i, align 8, !tbaa !255, !noalias !621 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !646)
  call void @llvm.experimental.noalias.scope.decl(metadata !649)
  %i.ed = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.2.i81.i, i64 32
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !652, !noalias !653 ; 3 uses
  store ptr %i.ef, ptr %i.ed, align 8, !tbaa !79, !alias.scope !654, !noalias !621
  %i.eg = icmp eq ptr %i.ef, null
  br i1 %i.eg, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i.i, label %bb.az

bb.az:                                            ; preds = %_ZNK5arrow7compute10Expression4typeEv.exit84.i
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 2 uses
  %i.ei = load atomic i32, ptr %i.eh monotonic, align 8, !noalias !653
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bb, %bb.az
  %.06.i.i.i.i.i.i.i = phi i32 [ %i.ei, %bb.az ], [ %i.em, %bb.bb ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ej = add nsw i32 %.06.i.i.i.i.i.i.i, 1
  %i.ek = cmpxchg weak ptr %i.eh, i32 %.06.i.i.i.i.i.i.i, i32 %i.ej acq_rel monotonic, align 8, !noalias !653 ; 2 uses
  %i.el = extractvalue { i32, i1 } %i.ek, 1
  %i.em = extractvalue { i32, i1 } %i.ek, 0
  br i1 %i.el, label %bb.bc, label %bb.ba, !llvm.loop !655

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i.i: ; preds = %bb.ba, %_ZNK5arrow7compute10Expression4typeEv.exit84.i
  %i.en = call ptr @__cxa_allocate_exception(i64 8) #31, !noalias !653 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12bad_weak_ptr, i64 16), ptr %i.en, align 8, !tbaa !83, !noalias !653
  invoke void @__cxa_throw(ptr nonnull %i.en, ptr nonnull @_ZTISt12bad_weak_ptr, ptr nonnull @_ZNSt12bad_weak_ptrD1Ev) #33
          to label %.noexc85.i unwind label %bb.ck, !noalias !621

.noexc85.i:                                       ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i.i
  unreachable

bb.bc:                                            ; preds = %bb.bb
  %i.eo = getelementptr inbounds nuw i8, ptr %.2.i81.i, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !656, !noalias !653 ; 2 uses
  store ptr %i.ep, ptr %30, align 8, !tbaa !299, !noalias !621
  %i.eq = getelementptr inbounds nuw i8, ptr %30, i64 8
  store ptr %i.ep, ptr %i.eq, align 8, !tbaa !139, !noalias !621
  %i.er = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %i.es = load ptr, ptr %i.ed, align 8, !tbaa !79, !noalias !621
  store ptr null, ptr %i.ed, align 8, !tbaa !79, !noalias !621
  store ptr %i.es, ptr %i.er, align 8, !tbaa !79, !noalias !621
  store ptr null, ptr %31, align 8, !tbaa !139, !noalias !621
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #31, !noalias !621
  call void @llvm.experimental.noalias.scope.decl(metadata !657)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %33, i8 0, i64 24, i1 false), !noalias !621
  invoke void @_ZN5arrow7compute11CastOptionsC1Eb(ptr noundef nonnull align 8 dereferenceable(46) %32, i1 noundef zeroext true)
          to label %.noexc86.i unwind label %bb.cl, !noalias !621

.noexc86.i:                                       ; preds = %bb.bc
  %i.et = getelementptr inbounds nuw i8, ptr %32, i64 16
  store ptr null, ptr %i.et, align 8, !tbaa !299, !alias.scope !657, !noalias !621
  %i.eu = getelementptr inbounds nuw i8, ptr %32, i64 24
  %i.ev = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.ew = getelementptr inbounds nuw i8, ptr %33, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ev, i8 0, i64 16, i1 false), !noalias !660
  store ptr null, ptr %i.eu, align 8, !tbaa !255, !alias.scope !657, !noalias !621
  %i.ex = getelementptr inbounds nuw i8, ptr %32, i64 32 ; 3 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !79, !alias.scope !657, !noalias !621 ; 8 uses
  store ptr null, ptr %i.ex, align 8, !tbaa !79, !alias.scope !657, !noalias !621
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ey, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5arrow7compute11CastOptions4SafeENS_10TypeHolderE.exit.i, label %bb.bd

bb.bd:                                            ; preds = %.noexc86.i
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8 ; 4 uses
  %i.fa = load atomic i64, ptr %i.ez acquire, align 8, !noalias !621 ; 2 uses
  %i.fb = icmp eq i64 %i.fa, 4294967297
  %i.fc = trunc i64 %i.fa to i32                  ; 2 uses
  br i1 %i.fb, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  store i32 0, ptr %i.ez, align 8, !tbaa !80, !noalias !621
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ey, i64 12
  store i32 0, ptr %i.fd, align 4, !tbaa !82, !noalias !621
  %i.fe = load ptr, ptr %i.ey, align 8, !tbaa !83, !noalias !621
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.fg = load ptr, ptr %i.ff, align 8, !noalias !621
  call void %i.fg(ptr noundef nonnull align 8 dereferenceable(16) %i.ey) #31, !noalias !621, !inline_history !661
  %i.fh = load ptr, ptr %i.ey, align 8, !tbaa !83, !noalias !621
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 24
  %i.fj = load ptr, ptr %i.fi, align 8, !noalias !621
  call void %i.fj(ptr noundef nonnull align 8 dereferenceable(16) %i.ey) #31, !noalias !621, !inline_history !661
  br label %_ZN5arrow7compute11CastOptions4SafeENS_10TypeHolderE.exit.i

bb.bf:                                            ; preds = %bb.bd
  %i.fk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86, !noalias !660
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.fk, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.fl = add nsw i32 %i.fc, -1
  store i32 %i.fl, ptr %i.ez, align 8, !tbaa !3, !noalias !621
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.bh:                                            ; preds = %bb.bf
  %i.fm = atomicrmw volatile add ptr %i.ez, i32 -1 acq_rel, align 4, !noalias !621
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.bh, %bb.bg
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.fc, %bb.bg ], [ %i.fm, %bb.bh ]
  %i.fn = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.fn, label %bb.bi, label %_ZN5arrow7compute11CastOptions4SafeENS_10TypeHolderE.exit.i, !prof !87

bb.bi:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ey) #31, !noalias !621
  br label %_ZN5arrow7compute11CastOptions4SafeENS_10TypeHolderE.exit.i

_ZN5arrow7compute11CastOptions4SafeENS_10TypeHolderE.exit.i: ; preds = %bb.bi, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.be, %.noexc86.i
  invoke void @_ZN5arrow7compute4CastERKNS_5DatumERKNS_10TypeHolderERKNS0_11CastOptionsEPNS0_11ExecContextE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.213") align 8 %29, ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %30, ptr noundef nonnull align 8 dereferenceable(46) %32, ptr noundef null)
          to label %bb.bj unwind label %bb.cm, !noalias !621

bb.bj:                                            ; preds = %_ZN5arrow7compute11CastOptions4SafeENS_10TypeHolderE.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow7compute11CastOptionsE, i64 16), ptr %32, align 8, !tbaa !83, !noalias !621
  %i.fo = load ptr, ptr %i.ex, align 8, !tbaa !79, !noalias !621 ; 8 uses
  %.not.i.i.i.i87.i = icmp eq ptr %i.fo, null
  br i1 %.not.i.i.i.i87.i, label %_ZN5arrow7compute11CastOptionsD2Ev.exit.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8 ; 4 uses
  %i.fq = load atomic i64, ptr %i.fp acquire, align 8, !noalias !621 ; 2 uses
  %i.fr = icmp eq i64 %i.fq, 4294967297
  %i.fs = trunc i64 %i.fq to i32                  ; 2 uses
  br i1 %i.fr, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  store i32 0, ptr %i.fp, align 8, !tbaa !80, !noalias !621
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fo, i64 12
  store i32 0, ptr %i.ft, align 4, !tbaa !82, !noalias !621
  %i.fu = load ptr, ptr %i.fo, align 8, !tbaa !83, !noalias !621
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.fw = load ptr, ptr %i.fv, align 8, !noalias !621
  call void %i.fw(ptr noundef nonnull align 8 dereferenceable(16) %i.fo) #31, !noalias !621, !inline_history !662
  %i.fx = load ptr, ptr %i.fo, align 8, !tbaa !83, !noalias !621
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 24
  %i.fz = load ptr, ptr %i.fy, align 8, !noalias !621
  call void %i.fz(ptr noundef nonnull align 8 dereferenceable(16) %i.fo) #31, !noalias !621, !inline_history !662
  br label %_ZN5arrow7compute11CastOptionsD2Ev.exit.i

bb.bm:                                            ; preds = %bb.bk
  %i.ga = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86, !noalias !621
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ga, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.gb = add nsw i32 %i.fs, -1
  store i32 %i.gb, ptr %i.fp, align 8, !tbaa !3, !noalias !621
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.bo:                                            ; preds = %bb.bm
  %i.gc = atomicrmw volatile add ptr %i.fp, i32 -1 acq_rel, align 4, !noalias !621
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.bo, %bb.bn
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.fs, %bb.bn ], [ %i.gc, %bb.bo ]
  %i.gd = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.gd, label %bb.bp, label %_ZN5arrow7compute11CastOptionsD2Ev.exit.i, !prof !87

bb.bp:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fo) #31, !noalias !621, !inline_history !458
  br label %_ZN5arrow7compute11CastOptionsD2Ev.exit.i

_ZN5arrow7compute11CastOptionsD2Ev.exit.i:        ; preds = %bb.bp, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.bl, %bb.bj
  %i.ge = load ptr, ptr %i.ew, align 8, !tbaa !79, !noalias !621 ; 8 uses
  %.not.i.i.i88.i = icmp eq ptr %i.ge, null
  br i1 %.not.i.i.i88.i, label %_ZN5arrow10TypeHolderD2Ev.exit.i, label %bb.bq

bb.bq:                                            ; preds = %_ZN5arrow7compute11CastOptionsD2Ev.exit.i
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 8 ; 4 uses
  %i.gg = load atomic i64, ptr %i.gf acquire, align 8, !noalias !621 ; 2 uses
  %i.gh = icmp eq i64 %i.gg, 4294967297
  %i.gi = trunc i64 %i.gg to i32                  ; 2 uses
  br i1 %i.gh, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  store i32 0, ptr %i.gf, align 8, !tbaa !80, !noalias !621
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ge, i64 12
  store i32 0, ptr %i.gj, align 4, !tbaa !82, !noalias !621
  %i.gk = load ptr, ptr %i.ge, align 8, !tbaa !83, !noalias !621
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  %i.gm = load ptr, ptr %i.gl, align 8, !noalias !621
  call void %i.gm(ptr noundef nonnull align 8 dereferenceable(16) %i.ge) #31, !noalias !621, !inline_history !663
  %i.gn = load ptr, ptr %i.ge, align 8, !tbaa !83, !noalias !621
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 24
  %i.gp = load ptr, ptr %i.go, align 8, !noalias !621
  call void %i.gp(ptr noundef nonnull align 8 dereferenceable(16) %i.ge) #31, !noalias !621, !inline_history !663
  br label %_ZN5arrow10TypeHolderD2Ev.exit.i

bb.bs:                                            ; preds = %bb.bq
  %i.gq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86, !noalias !621
  %.not.i.i.i.i89.i = icmp eq i8 %i.gq, 0
  br i1 %.not.i.i.i.i89.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.gr = add nsw i32 %i.gi, -1
  store i32 %i.gr, ptr %i.gf, align 8, !tbaa !3, !noalias !621
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i90.i

bb.bu:                                            ; preds = %bb.bs
  %i.gs = atomicrmw volatile add ptr %i.gf, i32 -1 acq_rel, align 4, !noalias !621
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i90.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i90.i: ; preds = %bb.bu, %bb.bt
  %.0.i.i.i.i.i91.i = phi i32 [ %i.gi, %bb.bt ], [ %i.gs, %bb.bu ]
  %i.gt = icmp eq i32 %.0.i.i.i.i.i91.i, 1
  br i1 %i.gt, label %bb.bv, label %_ZN5arrow10TypeHolderD2Ev.exit.i, !prof !87

bb.bv:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i90.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ge) #31, !noalias !621
  br label %_ZN5arrow10TypeHolderD2Ev.exit.i

_ZN5arrow10TypeHolderD2Ev.exit.i:                 ; preds = %bb.bv, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i90.i, %bb.br, %_ZN5arrow7compute11CastOptionsD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #31, !noalias !621
  %i.gu = load ptr, ptr %i.er, align 8, !tbaa !79, !noalias !621 ; 8 uses
  %.not.i.i.i92.i = icmp eq ptr %i.gu, null
  br i1 %.not.i.i.i92.i, label %_ZN5arrow10TypeHolderD2Ev.exit96.i, label %bb.bw

bb.bw:                                            ; preds = %_ZN5arrow10TypeHolderD2Ev.exit.i
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8 ; 4 uses
  %i.gw = load atomic i64, ptr %i.gv acquire, align 8, !noalias !621 ; 2 uses
  %i.gx = icmp eq i64 %i.gw, 4294967297
  %i.gy = trunc i64 %i.gw to i32                  ; 2 uses
  br i1 %i.gx, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  store i32 0, ptr %i.gv, align 8, !tbaa !80, !noalias !621
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gu, i64 12
  store i32 0, ptr %i.gz, align 4, !tbaa !82, !noalias !621
  %i.ha = load ptr, ptr %i.gu, align 8, !tbaa !83, !noalias !621
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %i.hc = load ptr, ptr %i.hb, align 8, !noalias !621
  call void %i.hc(ptr noundef nonnull align 8 dereferenceable(16) %i.gu) #31, !noalias !621, !inline_history !663
  %i.hd = load ptr, ptr %i.gu, align 8, !tbaa !83, !noalias !621
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 24
  %i.hf = load ptr, ptr %i.he, align 8, !noalias !621
  call void %i.hf(ptr noundef nonnull align 8 dereferenceable(16) %i.gu) #31, !noalias !621, !inline_history !663
  br label %_ZN5arrow10TypeHolderD2Ev.exit96.i

bb.by:                                            ; preds = %bb.bw
  %i.hg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86, !noalias !621
  %.not.i.i.i.i93.i = icmp eq i8 %i.hg, 0
  br i1 %.not.i.i.i.i93.i, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.hh = add nsw i32 %i.gy, -1
  store i32 %i.hh, ptr %i.gv, align 8, !tbaa !3, !noalias !621
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i94.i

bb.ca:                                            ; preds = %bb.by
  %i.hi = atomicrmw volatile add ptr %i.gv, i32 -1 acq_rel, align 4, !noalias !621
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i94.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i94.i: ; preds = %bb.ca, %bb.bz
  %.0.i.i.i.i.i95.i = phi i32 [ %i.gy, %bb.bz ], [ %i.hi, %bb.ca ]
  %i.hj = icmp eq i32 %.0.i.i.i.i.i95.i, 1
  br i1 %i.hj, label %bb.cb, label %_ZN5arrow10TypeHolderD2Ev.exit96.i, !prof !87

bb.cb:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i94.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gu) #31, !noalias !621
  br label %_ZN5arrow10TypeHolderD2Ev.exit96.i

_ZN5arrow10TypeHolderD2Ev.exit96.i:               ; preds = %bb.cb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i94.i, %bb.bx, %_ZN5arrow10TypeHolderD2Ev.exit.i
  %i.hk = load ptr, ptr %i.ed, align 8, !tbaa !79, !noalias !621 ; 8 uses
  %.not.i.i97.i = icmp eq ptr %i.hk, null
  br i1 %.not.i.i97.i, label %bb.ci, label %bb.cc

bb.cc:                                            ; preds = %_ZN5arrow10TypeHolderD2Ev.exit96.i
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 8 ; 4 uses
  %i.hm = load atomic i64, ptr %i.hl acquire, align 8, !noalias !621 ; 2 uses
  %i.hn = icmp eq i64 %i.hm, 4294967297
  %i.ho = trunc i64 %i.hm to i32                  ; 2 uses
  br i1 %i.hn, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  store i32 0, ptr %i.hl, align 8, !tbaa !80, !noalias !621
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hk, i64 12
  store i32 0, ptr %i.hp, align 4, !tbaa !82, !noalias !621
  %i.hq = load ptr, ptr %i.hk, align 8, !tbaa !83, !noalias !621
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  %i.hs = load ptr, ptr %i.hr, align 8, !noalias !621
  call void %i.hs(ptr noundef nonnull align 8 dereferenceable(16) %i.hk) #31, !noalias !621, !inline_history !664
  %i.ht = load ptr, ptr %i.hk, align 8, !tbaa !83, !noalias !621
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 24
  %i.hv = load ptr, ptr %i.hu, align 8, !noalias !621
  call void %i.hv(ptr noundef nonnull align 8 dereferenceable(16) %i.hk) #31, !noalias !621, !inline_history !664
  br label %bb.ci

bb.ce:                                            ; preds = %bb.cc
  %i.hw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86, !noalias !621
  %.not.i.i.i98.i = icmp eq i8 %i.hw, 0
  br i1 %.not.i.i.i98.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.hx = add nsw i32 %i.ho, -1
  store i32 %i.hx, ptr %i.hl, align 8, !tbaa !3, !noalias !621
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.cg:                                            ; preds = %bb.ce
  %i.hy = atomicrmw volatile add ptr %i.hl, i32 -1 acq_rel, align 4, !noalias !621
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.cg, %bb.cf
  %.0.i.i.i.i99.i = phi i32 [ %i.ho, %bb.cf ], [ %i.hy, %bb.cg ]
  %i.hz = icmp eq i32 %.0.i.i.i.i99.i, 1
  br i1 %i.hz, label %bb.ch, label %bb.ci, !prof !87

bb.ch:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hk) #31, !noalias !621
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.cd, %_ZN5arrow10TypeHolderD2Ev.exit96.i
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #31, !noalias !621
  %i.ia = load ptr, ptr %29, align 8, !tbaa !274, !noalias !621
  %i.ib = icmp eq ptr %i.ia, null
end_hunk_8
begin_hunk_9_@"_ZN5arrow7compute16ModifyExpressionIZNS0_15RemoveNamedRefsENS0_10ExpressionEE3$_0ZNS0_15RemoveNamedRefsES2_E3$_1EENS_6ResultIS2_EES2_RKT_RKT0_":bb.a
  %i.ng = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !79 ; 8 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.nh, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5arrow7compute10ExpressionEEvPT_.exit.i.i.i, label %bb.ct

bb.ct:                                            ; preds = %.lr.ph.i.i.i107
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 8 ; 4 uses
  %i.nj = load atomic i64, ptr %i.ni acquire, align 8 ; 2 uses
  %i.nk = icmp eq i64 %i.nj, 4294967297
  %i.nl = trunc i64 %i.nj to i32                  ; 2 uses
  br i1 %i.nk, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  store i32 0, ptr %i.ni, align 8, !tbaa !80
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nh, i64 12
  store i32 0, ptr %i.nm, align 4, !tbaa !82
  %i.nn = load ptr, ptr %i.nh, align 8, !tbaa !83
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 16
  %i.np = load ptr, ptr %i.no, align 8
  call void %i.np(ptr noundef nonnull align 8 dereferenceable(16) %i.nh) #31, !inline_history !143
  %i.nq = load ptr, ptr %i.nh, align 8, !tbaa !83
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 24
  %i.ns = load ptr, ptr %i.nr, align 8
  call void %i.ns(ptr noundef nonnull align 8 dereferenceable(16) %i.nh) #31, !inline_history !143
  br label %_ZSt8_DestroyIN5arrow7compute10ExpressionEEvPT_.exit.i.i.i

bb.cv:                                            ; preds = %bb.ct
  %i.nt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.nt, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.nu = add nsw i32 %i.nl, -1
  store i32 %i.nu, ptr %i.ni, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.cx:                                            ; preds = %bb.cv
  %i.nv = atomicrmw volatile add ptr %i.ni, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.cx, %bb.cw
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.nl, %bb.cw ], [ %i.nv, %bb.cx ]
  %i.nw = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.nw, label %bb.cy, label %_ZSt8_DestroyIN5arrow7compute10ExpressionEEvPT_.exit.i.i.i, !prof !87

bb.cy:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.nh) #31
  br label %_ZSt8_DestroyIN5arrow7compute10ExpressionEEvPT_.exit.i.i.i

_ZSt8_DestroyIN5arrow7compute10ExpressionEEvPT_.exit.i.i.i: ; preds = %bb.cy, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.cu, %.lr.ph.i.i.i107
  %i.nx = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i108 = icmp eq ptr %i.nx, %i.nf
  br i1 %.not.i.i.i108, label %_ZSt8_DestroyIPN5arrow7compute10ExpressionES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i107, !llvm.loop !134

_ZSt8_DestroyIPN5arrow7compute10ExpressionES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5arrow7compute10ExpressionEEvPT_.exit.i.i.i
  %.pr.i109 = load ptr, ptr %7, align 16, !tbaa !130
  br label %_ZSt8_DestroyIPN5arrow7compute10ExpressionES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5arrow7compute10ExpressionES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5arrow7compute10ExpressionES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %.thread
  %i.ny = phi ptr [ %.pr.i109, %_ZSt8_DestroyIPN5arrow7compute10ExpressionES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.nd, %.thread ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ny, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5arrow7compute10ExpressionESaIS2_EED2Ev.exit, label %bb.cz

bb.cz:                                            ; preds = %_ZSt8_DestroyIPN5arrow7compute10ExpressionES2_EvT_S4_RSaIT0_E.exit.i
  %i.nz = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.oa = load ptr, ptr %i.nz, align 16, !tbaa !132
  %i.ob = ptrtoint ptr %i.oa to i64
  %i.oc = ptrtoint ptr %i.ny to i64
  %i.od = sub i64 %i.ob, %i.oc
  call void @_ZdlPvm(ptr noundef nonnull %i.ny, i64 noundef %i.od) #32
  br label %_ZNSt6vectorIN5arrow7compute10ExpressionESaIS2_EED2Ev.exit

_ZNSt6vectorIN5arrow7compute10ExpressionESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow7compute10ExpressionES2_EvT_S4_RSaIT0_E.exit.i, %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %bb.db

bb.da:                                            ; preds = %bb.be, %bb.bi, %bb.cs
  %.pn46.pn = phi { ptr, i32 } [ %.pn46, %bb.cs ], [ %i.hs, %bb.bi ], [ %i.hj, %bb.be ]
  call void @_ZNSt6vectorIN5arrow7compute10ExpressionESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @_ZN5arrow6ResultINS_7compute10ExpressionEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.dk

bb.db:                                            ; preds = %bb.ar, %_ZNSt6vectorIN5arrow7compute10ExpressionESaIS2_EED2Ev.exit, %bb.ai
  %i.oe = load ptr, ptr %4, align 8, !tbaa !274   ; 2 uses
  %i.of = icmp eq ptr %i.oe, null
  br i1 %i.of, label %bb.dc, label %_ZN5arrow6ResultINS_7compute10ExpressionEE7DestroyEv.exit.thread.i110, !prof !290

bb.dc:                                            ; preds = %bb.db
  %i.og = load ptr, ptr %i.ee, align 8, !tbaa !79 ; 8 uses
  %.not.i.i.i.i.i.i111 = icmp eq ptr %i.og, null
  br i1 %.not.i.i.i.i.i.i111, label %_ZN5arrow6ResultINS_7compute10ExpressionEED2Ev.exit118, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 8 ; 4 uses
  %i.oi = load atomic i64, ptr %i.oh acquire, align 8 ; 2 uses
  %i.oj = icmp eq i64 %i.oi, 4294967297
  %i.ok = trunc i64 %i.oi to i32                  ; 2 uses
  br i1 %i.oj, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  store i32 0, ptr %i.oh, align 8, !tbaa !80
  %i.ol = getelementptr inbounds nuw i8, ptr %i.og, i64 12
  store i32 0, ptr %i.ol, align 4, !tbaa !82
  %i.om = load ptr, ptr %i.og, align 8, !tbaa !83
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 16
  %i.oo = load ptr, ptr %i.on, align 8
  call void %i.oo(ptr noundef nonnull align 8 dereferenceable(16) %i.og) #31, !inline_history !346
  %i.op = load ptr, ptr %i.og, align 8, !tbaa !83
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 24
  %i.or = load ptr, ptr %i.oq, align 8
  call void %i.or(ptr noundef nonnull align 8 dereferenceable(16) %i.og) #31, !inline_history !346
  br label %_ZN5arrow6ResultINS_7compute10ExpressionEE7DestroyEv.exit.i115

bb.df:                                            ; preds = %bb.dd
  %i.os = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i.i.i112 = icmp eq i8 %i.os, 0
  br i1 %.not.i.i.i.i.i.i.i112, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.ot = add nsw i32 %i.ok, -1
  store i32 %i.ot, ptr %i.oh, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i113

bb.dh:                                            ; preds = %bb.df
  %i.ou = atomicrmw volatile add ptr %i.oh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i113

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i113: ; preds = %bb.dh, %bb.dg
  %.0.i.i.i.i.i.i.i.i114 = phi i32 [ %i.ok, %bb.dg ], [ %i.ou, %bb.dh ]
  %i.ov = icmp eq i32 %.0.i.i.i.i.i.i.i.i114, 1
  br i1 %i.ov, label %bb.di, label %_ZN5arrow6ResultINS_7compute10ExpressionEE7DestroyEv.exit.i115, !prof !87

bb.di:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i113
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.og) #31
  br label %_ZN5arrow6ResultINS_7compute10ExpressionEE7DestroyEv.exit.i115

_ZN5arrow6ResultINS_7compute10ExpressionEE7DestroyEv.exit.i115: ; preds = %bb.di, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i113, %bb.de
  %.pr.i116.pr = load ptr, ptr %4, align 8, !tbaa !274 ; 2 uses
  %.not.i.i117 = icmp eq ptr %.pr.i116.pr, null
  br i1 %.not.i.i117, label %_ZN5arrow6ResultINS_7compute10ExpressionEED2Ev.exit118, label %_ZN5arrow6ResultINS_7compute10ExpressionEE7DestroyEv.exit.thread.i110, !prof !283

_ZN5arrow6ResultINS_7compute10ExpressionEE7DestroyEv.exit.thread.i110: ; preds = %_ZN5arrow6ResultINS_7compute10ExpressionEE7DestroyEv.exit.i115, %bb.db
  %i.ow = phi ptr [ %.pr.i116.pr, %_ZN5arrow6ResultINS_7compute10ExpressionEE7DestroyEv.exit.i115 ], [ %i.oe, %bb.db ]
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 1
  %i.oy = load i8, ptr %i.ox, align 1, !tbaa !284, !range !189, !noundef !66
  %i.oz = trunc nuw i8 %i.oy to i1
  br i1 %i.oz, label %_ZN5arrow6ResultINS_7compute10ExpressionEED2Ev.exit118, label %bb.dj

bb.dj:                                            ; preds = %_ZN5arrow6ResultINS_7compute10ExpressionEE7DestroyEv.exit.thread.i110
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #31
  br label %_ZN5arrow6ResultINS_7compute10ExpressionEED2Ev.exit118

_ZN5arrow6ResultINS_7compute10ExpressionEED2Ev.exit118: ; preds = %bb.dc, %_ZN5arrow6ResultINS_7compute10ExpressionEE7DestroyEv.exit.i115, %_ZN5arrow6ResultINS_7compute10ExpressionEE7DestroyEv.exit.thread.i110, %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  ret void

bb.dk:                                            ; preds = %bb.da, %.body
  %.pn46.pn.pn.pn = phi { ptr, i32 } [ %.pn46.pn, %bb.da ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.pn46.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute9SerializeERKNS0_10ExpressionE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.279") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %3 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %4 = alloca %"class.std::vector.147", align 8   ; 14 uses
  %5 = alloca %"class.std::shared_ptr.198", align 16 ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::shared_ptr.16", align 16 ; 6 uses
  %8 = alloca %"class.std::shared_ptr.203", align 8 ; 6 uses
  %9 = alloca %"class.std::shared_ptr.43", align 16 ; 7 uses
  %10 = alloca %"class.std::shared_ptr.183", align 8 ; 6 uses
  %11 = alloca %"class.std::vector.147", align 8  ; 9 uses
  %12 = alloca %"class.std::shared_ptr.203", align 16 ; 6 uses
  %13 = alloca %"class.std::vector.287", align 16 ; 9 uses
  %14 = alloca %"class.std::shared_ptr.513", align 8 ; 6 uses
  %15 = alloca %struct.anon.283, align 16         ; 13 uses
  %16 = alloca %"class.arrow::Result.217", align 8 ; 15 uses
  %17 = alloca %"class.std::shared_ptr.43", align 16 ; 8 uses
  %18 = alloca %"class.arrow::Result.292", align 8 ; 13 uses
  %19 = alloca %"class.std::shared_ptr.296", align 8 ; 7 uses
  %20 = alloca %"class.arrow::Result.299", align 8 ; 13 uses
  %21 = alloca %"class.std::shared_ptr.303", align 8 ; 4 uses
  %22 = alloca %"struct.arrow::ipc::IpcWriteOptions", align 8 ; 7 uses
  %23 = alloca %"class.std::shared_ptr.203", align 8 ; 7 uses
  %24 = alloca %"class.std::shared_ptr.317", align 8 ; 6 uses
  %25 = alloca %"class.arrow::Status", align 8    ; 8 uses
  %26 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %27 = alloca %"class.arrow::Status", align 8    ; 8 uses
  %28 = alloca %"class.arrow::Status", align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #31
  tail call void @llvm.experimental.noalias.scope.decl(metadata !796)
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #30, !noalias !799 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !80, !noalias !796
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !82, !noalias !796
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow16KeyValueMetadataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !83, !noalias !796
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  invoke void @_ZN5arrow16KeyValueMetadataC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %"_ZZN5arrow7compute9SerializeERKNS0_10ExpressionEEN3$_0C2Ev.exit" unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow16KeyValueMetadataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit8.i.i.i.i.i, !noalias !796

common.resume:                                    ; preds = %.body, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow16KeyValueMetadataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit8.i.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.e, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow16KeyValueMetadataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit8.i.i.i.i.i ], [ %.pn32.pn.pn.pn.pn.pn.pn.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow16KeyValueMetadataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit8.i.i.i.i.i: ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #32, !noalias !796
  br label %common.resume

"_ZZN5arrow7compute9SerializeERKNS0_10ExpressionEEN3$_0C2Ev.exit": ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store ptr %i.a, ptr %i.f, align 8, !tbaa !79, !alias.scope !796
  store ptr %i.d, ptr %15, align 16, !tbaa !802, !alias.scope !796
  %i.g = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #31
  tail call void @llvm.experimental.noalias.scope.decl(metadata !804)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31, !noalias !804
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31, !noalias !804
  invoke fastcc void @"_ZZN5arrow7compute9SerializeERKNS0_10ExpressionEEN3$_05VisitES3_"(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef nonnull align 8 dereferenceable(40) %15, ptr noundef nonnull readonly align 8 dereferenceable(16) %1)
          to label %.noexc unwind label %bb.cd

.noexc:                                           ; preds = %"_ZZN5arrow7compute9SerializeERKNS0_10ExpressionEEN3$_0C2Ev.exit"
  %i.h = load ptr, ptr %3, align 8, !tbaa !274, !noalias !804 ; 2 uses
  store ptr %i.h, ptr %2, align 8, !tbaa !274, !noalias !804
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !804
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %bb.b, !prof !290

bb.b:                                             ; preds = %.noexc
  call void @_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(8) %2) #31
  %.pr.i = load ptr, ptr %2, align 8, !tbaa !274, !noalias !804 ; 2 uses
  %.not.i23.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i23.i, label %_ZN5arrow6StatusD2Ev.exit24.thread.i, label %bb.c, !prof !736

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.pr.i, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !284, !range !189, !noundef !66
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %_ZN5arrow6StatusD2Ev.exit24.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #31
  br label %_ZN5arrow6StatusD2Ev.exit24.thread.i

_ZN5arrow6StatusD2Ev.exit24.thread.i:             ; preds = %bb.d, %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31, !noalias !804
  br label %bb.cb

bb.e:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31, !noalias !804
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31, !noalias !804
  %i.m = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !807, !noalias !804 ; 2 uses
  %i.o = load ptr, ptr %i.g, align 16, !tbaa !810, !noalias !804 ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q                       ; 4 uses
  %i.s = icmp ugt i64 %i.r, 9223372036854775792
  br i1 %i.s, label %.noexc.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i

.noexc.i:                                         ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.60) #33
          to label %.noexc43 unwind label %bb.cd

.noexc43:                                         ; preds = %.noexc.i
  unreachable

_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i: ; preds = %bb.e
  %.not.i.i.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not.i.i.i.i.i, label %.thread.i, label %bb.f

.thread.i:                                        ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %._crit_edge.i

bb.f:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i
  %i.v = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #30
          to label %.noexc44 unwind label %bb.cd  ; 3 uses

.noexc44:                                         ; preds = %bb.f
  store ptr %i.v, ptr %4, align 8, !tbaa !811, !noalias !804
  %i.w = getelementptr i8, ptr %i.v, i64 %i.r     ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.r, i1 false), !noalias !804
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.w, ptr %i.y, align 8, !tbaa !812, !noalias !804
  store ptr %i.w, ptr %i.x, align 8, !tbaa !813, !noalias !804
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %._crit_edge.i.i.i

._crit_edge.loopexit.i:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %.pre.i = load ptr, ptr %i.y, align 8, !tbaa !812, !noalias !804
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.thread.i
  %i.ae = phi ptr [ %i.u, %.thread.i ], [ %i.y, %._crit_edge.loopexit.i ]
  %i.af = phi ptr [ %i.t, %.thread.i ], [ %i.x, %._crit_edge.loopexit.i ]
  %i.ag = phi ptr [ null, %.thread.i ], [ %.pre.i, %._crit_edge.loopexit.i ]
  %.lcssa89.i = phi ptr [ null, %.thread.i ], [ %i.dt, %._crit_edge.loopexit.i ]
  %.lcssa.i = phi ptr [ null, %.thread.i ], [ %i.du, %._crit_edge.loopexit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31, !noalias !804
  store ptr %.lcssa.i, ptr %11, align 8, !tbaa !811, !noalias !804
  %i.ah = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store ptr %.lcssa89.i, ptr %i.ah, align 8, !tbaa !813, !noalias !804
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  store ptr %i.ag, ptr %i.ai, align 8, !tbaa !812, !noalias !804
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false), !noalias !804
  %i.aj = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ak = load <2 x ptr>, ptr %15, align 16, !tbaa !94, !noalias !804
  store ptr null, ptr %i.f, align 8, !tbaa !79, !noalias !804
  store <2 x ptr> %i.ak, ptr %12, align 16, !tbaa !94, !noalias !804
  store ptr null, ptr %15, align 16, !tbaa !814, !noalias !804
  invoke void @_ZN5arrow6schemaESt6vectorISt10shared_ptrINS_5FieldEESaIS3_EES1_IKNS_16KeyValueMetadataEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.183") align 8 %10, ptr noundef nonnull %11, ptr noundef nonnull %12)
          to label %bb.aj unwind label %bb.bx, !noalias !804

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %.noexc44
  %.093.i = phi i64 [ 0, %.noexc44 ], [ %i.ds, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31, !noalias !804
  store ptr %i.z, ptr %6, align 8, !tbaa !107, !noalias !804
  store i64 0, ptr %i.aa, align 8, !tbaa !38, !noalias !804
  store i8 0, ptr %i.z, align 8, !tbaa !86, !noalias !804
  %i.al = load ptr, ptr %i.g, align 16, !tbaa !810, !noalias !804
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %.093.i
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !447, !noalias !804
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !450, !noalias !804 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !79, !noalias !804 ; 2 uses
  %i.as = load <2 x ptr>, ptr %i.ap, align 8, !tbaa !94, !noalias !804
  store <2 x ptr> %i.as, ptr %7, align 16, !tbaa !94, !noalias !804
  %.not.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i, label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 3 uses
  %i.au = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86, !noalias !804
  %.not.i.i.i.i29.i = icmp eq i8 %i.au, 0
  br i1 %.not.i.i.i.i29.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = load i32, ptr %i.at, align 4, !tbaa !3, !noalias !804
  %i.aw = add nsw i32 %i.av, 1
  store i32 %i.aw, ptr %i.at, align 4, !tbaa !3, !noalias !804
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i

bb.i:                                             ; preds = %bb.g
  %i.ax = atomicrmw volatile add ptr %i.at, i32 1 acq_rel, align 4, !noalias !804 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i: ; preds = %bb.i, %bb.h, %._crit_edge.i.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false), !noalias !804
  invoke void @_ZN5arrow5fieldENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_8DataTypeEEbS6_IKNS_16KeyValueMetadataEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.198") align 8 %5, ptr noundef nonnull %6, ptr noundef nonnull %7, i1 noundef zeroext true, ptr noundef nonnull %8)
          to label %bb.j unwind label %bb.ai, !noalias !804

bb.j:                                             ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i
  %i.ay = load ptr, ptr %4, align 8, !tbaa !811, !noalias !804
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %.093.i ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load <2 x ptr>, ptr %5, align 16, !tbaa !94, !noalias !804
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, i8 0, i64 16, i1 false), !noalias !804
  %i.bc = load ptr, ptr %i.ba, align 8, !tbaa !79, !noalias !804 ; 8 uses
  store <2 x ptr> %i.bb, ptr %i.az, align 8, !tbaa !94, !noalias !804
  %.not.i.i.i.i30.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i30.i, label %_ZNSt10shared_ptrIN5arrow5FieldEEaSEOS2_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 4 uses
  %i.be = load atomic i64, ptr %i.bd acquire, align 8, !noalias !804 ; 2 uses
  %i.bf = icmp eq i64 %i.be, 4294967297
  %i.bg = trunc i64 %i.be to i32                  ; 2 uses
  br i1 %i.bf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.bd, align 8, !tbaa !80, !noalias !804
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  store i32 0, ptr %i.bh, align 4, !tbaa !82, !noalias !804
  %i.bi = load ptr, ptr %i.bc, align 8, !tbaa !83, !noalias !804
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !noalias !804
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %i.bc) #31, !noalias !804, !inline_history !816
  %i.bl = load ptr, ptr %i.bc, align 8, !tbaa !83, !noalias !804
end_hunk_9
begin_hunk_10_@_ZZN5arrow7compute11DeserializeESt10shared_ptrINS_6BufferEEEN15FromRecordBatch6GetOneEv:bb.a
  %i.ah = xor i32 %i.ag, 1818325605
  %i.ai = or i32 %i.ae, %i.ah
  %i.aj = icmp ne i32 %i.ai, 0
  %i.ak = zext i1 %i.aj to i32
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit128.thread185

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  call fastcc void @_ZZN5arrow7compute11DeserializeESt10shared_ptrINS_6BufferEEEN15FromRecordBatch9GetScalarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.x)
  %i.am = load ptr, ptr %6, align 8, !tbaa !274
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.g, label %bb.f, !prof !290

bb.f:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  call void @_ZN5arrow6ResultINS_7compute10ExpressionEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %6) #31
  br label %bb.o

bb.g:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !903)
  call void @llvm.experimental.noalias.scope.decl(metadata !906)
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.aq = load <2 x ptr>, ptr %i.ao, align 8, !tbaa !94, !noalias !909
  store ptr null, ptr %i.ap, align 8, !tbaa !79, !noalias !909
  store <2 x ptr> %i.aq, ptr %7, align 16, !tbaa !94, !alias.scope !909
  store ptr null, ptr %i.ao, align 8, !tbaa !71, !noalias !909
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  invoke void @_ZN5arrow7compute7literalISt10shared_ptrINS_6ScalarEEEENS0_10ExpressionEOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::compute::Expression") align 8 %8, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %_ZN5arrow7compute10ExpressionD2Ev.exit unwind label %bb.n

_ZN5arrow7compute10ExpressionD2Ev.exit:           ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %0, align 8, !tbaa !274
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.at = load <2 x ptr>, ptr %8, align 16, !tbaa !94
  store <2 x ptr> %i.at, ptr %i.as, align 8, !tbaa !94
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  %i.au = load ptr, ptr %i.ar, align 8, !tbaa !79 ; 8 uses
  %.not.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5arrow7compute10ExpressionD2Ev.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 4 uses
  %i.aw = load atomic i64, ptr %i.av acquire, align 8 ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 4294967297
  %i.ay = trunc i64 %i.aw to i32                  ; 2 uses
  br i1 %i.ax, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.av, align 8, !tbaa !80
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  store i32 0, ptr %i.az, align 4, !tbaa !82
  %i.ba = load ptr, ptr %i.au, align 8, !tbaa !83
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #31, !inline_history !468
  %i.bd = load ptr, ptr %i.au, align 8, !tbaa !83
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #31, !inline_history !468
  br label %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.bg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i86 = icmp eq i8 %i.bg, 0
  br i1 %.not.i.i.i86, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = add nsw i32 %i.ay, -1
  store i32 %i.bh, ptr %i.av, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.bi = atomicrmw volatile add ptr %i.av, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.ay, %bb.k ], [ %i.bi, %bb.l ]
  %i.bj = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bj, label %bb.m, label %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !87

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #31
  br label %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5arrow7compute10ExpressionD2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %bb.o

bb.n:                                             ; preds = %bb.g
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  call void @_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %common.resume

bb.o:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.f
  %i.bl = load ptr, ptr %6, align 8, !tbaa !274   ; 2 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %bb.p, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i, !prof !290

bb.p:                                             ; preds = %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !79 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 4 uses
  %i.bq = load atomic i64, ptr %i.bp acquire, align 8 ; 2 uses
  %i.br = icmp eq i64 %i.bq, 4294967297
  %i.bs = trunc i64 %i.bq to i32                  ; 2 uses
  br i1 %i.br, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.bp, align 8, !tbaa !80
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  store i32 0, ptr %i.bt, align 4, !tbaa !82
  %i.bu = load ptr, ptr %i.bo, align 8, !tbaa !83
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #31, !inline_history !502
  %i.bx = load ptr, ptr %i.bo, align 8, !tbaa !83
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load ptr, ptr %i.by, align 8
  call void %i.bz(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #31, !inline_history !502
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i

bb.s:                                             ; preds = %bb.q
  %i.ca = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ca, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cb = add nsw i32 %i.bs, -1
  store i32 %i.cb, ptr %i.bp, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.cc = atomicrmw volatile add ptr %i.bp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bs, %bb.t ], [ %i.cc, %bb.u ]
  %i.cd = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.cd, label %bb.v, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i, !prof !87

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #31
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i: ; preds = %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.r, %bb.p
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !274  ; 2 uses
  %.not.i.i87 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i87, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i, !prof !283

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i, %bb.o
  %i.ce = phi ptr [ %.pr.i, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i ], [ %i.bl, %bb.o ]
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 1
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !284, !range !189, !noundef !66
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %6) #31
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %bb.eu

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit89: ; preds = %bb.e
  %.pre = load ptr, ptr %i.r, align 8, !tbaa !33
  %bcmp.i88 = tail call i32 @bcmp(ptr %.pre, ptr nonnull @.str.70, i64 %i.ab)
  %i.ci = icmp eq i32 %bcmp.i88, 0
  br i1 %i.ci, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit89.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit128.thread185

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit89.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit89
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.cj = load ptr, ptr %i.x, align 8, !tbaa !33
  %i.ck = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !38
  %i.cm = load atomic i8, ptr @_ZGVZN5arrow8internal10ParseValueINS_9Int32TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type acquire, align 8
  %i.cn = icmp eq i8 %i.cm, 0
  br i1 %i.cn, label %bb.x, label %_ZZN5arrow7compute11DeserializeESt10shared_ptrINS_6BufferEEEN15FromRecordBatch12ParseIntegerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPi.exit, !prof !236

bb.x:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit89.thread
  %i.co = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5arrow8internal10ParseValueINS_9Int32TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type) #31
  %.not.i.i90 = icmp eq i32 %i.co, 0
  br i1 %.not.i.i90, label %_ZZN5arrow7compute11DeserializeESt10shared_ptrINS_6BufferEEEN15FromRecordBatch12ParseIntegerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPi.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZZN5arrow8internal10ParseValueINS_9Int32TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, i64 8), i8 0, i64 32, i1 false)
  store i32 7, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow8internal10ParseValueINS_9Int32TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, i64 40), align 8, !tbaa !196
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZZN5arrow8internal10ParseValueINS_9Int32TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, i64 48), i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN5arrow9Int32TypeE, i64 16), ptr @_ZZN5arrow8internal10ParseValueINS_9Int32TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, align 8, !tbaa !83
  %i.cp = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5arrow11IntegerTypeD2Ev, ptr nonnull @_ZZN5arrow8internal10ParseValueINS_9Int32TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, ptr nonnull @__dso_handle) #31 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5arrow8internal10ParseValueINS_9Int32TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type) #31
  br label %_ZZN5arrow7compute11DeserializeESt10shared_ptrINS_6BufferEEEN15FromRecordBatch12ParseIntegerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPi.exit

_ZZN5arrow7compute11DeserializeESt10shared_ptrINS_6BufferEEEN15FromRecordBatch12ParseIntegerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPi.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit89.thread, %bb.x, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.cq = call noundef zeroext i1 @_ZN5arrow8internal31StringToSignedIntConverterMixinINS_9Int32TypeEE7ConvertERKS2_PKcmPi(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN5arrow8internal10ParseValueINS_9Int32TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, ptr noundef %i.cj, i64 noundef %i.cl, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br i1 %i.cq, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %_ZZN5arrow7compute11DeserializeESt10shared_ptrINS_6BufferEEEN15FromRecordBatch12ParseIntegerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  call void @_ZN5arrow6Status8FromArgsIJRA39_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %9, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(39) @.str.74)
  call void @_ZN5arrow6ResultINS_7compute10ExpressionEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %9) #31
  %i.cr = load ptr, ptr %9, align 8, !tbaa !274   ; 2 uses
  %.not.i91 = icmp eq ptr %i.cr, null
  br i1 %.not.i91, label %_ZN5arrow6StatusD2Ev.exit92, label %bb.aa, !prof !290

bb.aa:                                            ; preds = %bb.z
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 1
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !284, !range !189, !noundef !66
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %_ZN5arrow6StatusD2Ev.exit92, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #31
  br label %_ZN5arrow6StatusD2Ev.exit92

_ZN5arrow6StatusD2Ev.exit92:                      ; preds = %bb.z, %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %bb.bt

bb.ac:                                            ; preds = %_ZZN5arrow7compute11DeserializeESt10shared_ptrINS_6BufferEEEN15FromRecordBatch12ParseIntegerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPi.exit
  %i.cv = load i32, ptr %i.a, align 4, !tbaa !3   ; 2 uses
  %i.cw = icmp slt i32 %i.cv, 1
  br i1 %i.cw, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  call void @_ZN5arrow6Status8FromArgsIJRA36_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %10, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(36) @.str.75)
  call void @_ZN5arrow6ResultINS_7compute10ExpressionEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %10) #31
  %i.cx = load ptr, ptr %10, align 8, !tbaa !274  ; 2 uses
  %.not.i93 = icmp eq ptr %i.cx, null
  br i1 %.not.i93, label %_ZN5arrow6StatusD2Ev.exit94, label %bb.ae, !prof !290

bb.ae:                                            ; preds = %bb.ad
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 1
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !284, !range !189, !noundef !66
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %_ZN5arrow6StatusD2Ev.exit94, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #31
  br label %_ZN5arrow6StatusD2Ev.exit94

_ZN5arrow6StatusD2Ev.exit94:                      ; preds = %bb.ad, %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br label %bb.bt

bb.ag:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.db = zext nneg i32 %i.cv to i64
  invoke void @_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef %i.db)
          to label %.preheader unwind label %bb.ak

.preheader:                                       ; preds = %bb.ag
  %i.dc = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  br label %bb.ah

bb.ah:                                            ; preds = %.preheader, %_ZN5arrow6ResultINS_7compute10ExpressionEED2Ev.exit
  %i.dh = load i32, ptr %i.a, align 4, !tbaa !3   ; 2 uses
  %i.di = add nsw i32 %i.dh, -1
  store i32 %i.di, ptr %i.a, align 4, !tbaa !3
  %i.dj = icmp sgt i32 %i.dh, 0
  br i1 %i.dj, label %bb.ai, label %bb.bk

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  invoke fastcc void @_ZZN5arrow7compute11DeserializeESt10shared_ptrINS_6BufferEEEN15FromRecordBatch6GetOneEv(ptr dead_on_unwind noalias nonnull writable align 8 %12, ptr noundef nonnull align 8 dereferenceable(12) %1)
          to label %bb.aj unwind label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.dk = load ptr, ptr %12, align 8, !tbaa !274
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %bb.am, label %.critedge, !prof !290

.critedge:                                        ; preds = %bb.aj
  call void @_ZN5arrow6ResultINS_7compute10ExpressionEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %12) #31
  call void @_ZN5arrow6ResultINS_7compute10ExpressionEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %12) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  br label %.loopexit

bb.ak:                                            ; preds = %bb.ag
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.al:                                            ; preds = %bb.ai
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.am:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !910)
  call void @llvm.experimental.noalias.scope.decl(metadata !913)
  %i.do = load ptr, ptr %i.dc, align 8, !tbaa !63, !noalias !916 ; 6 uses
  store ptr %i.do, ptr %13, align 8, !tbaa !63, !alias.scope !916
  %i.dp = load ptr, ptr %i.de, align 8, !tbaa !79, !noalias !916 ; 9 uses
  store ptr null, ptr %i.de, align 8, !tbaa !79, !noalias !916
  store ptr %i.dp, ptr %i.dd, align 8, !tbaa !79, !alias.scope !916
  store ptr null, ptr %i.dc, align 8, !tbaa !63, !noalias !916
  %.not.i.i.i95 = icmp eq ptr %i.do, null
  br i1 %.not.i.i.i95, label %bb.an, label %_ZSt6get_ifIN5arrow7compute10Expression9ParameterEJNS0_5DatumES3_NS2_4CallEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i

_ZSt6get_ifIN5arrow7compute10Expression9ParameterEJNS0_5DatumES3_NS2_4CallEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i: ; preds = %bb.am
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 144
  %i.dr = load i8, ptr %i.dq, align 8, !tbaa !67
  %i.ds = icmp eq i8 %i.dr, 1
  br i1 %i.ds, label %_ZNK5arrow7compute10Expression9field_refEv.exit102, label %bb.an

bb.an:                                            ; preds = %_ZSt6get_ifIN5arrow7compute10Expression9ParameterEJNS0_5DatumES3_NS2_4CallEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i, %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #31
  invoke void @_ZN5arrow6Status8FromArgsIJRA25_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %14, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(25) @.str.76)
          to label %_ZN5arrow6Status7InvalidIJRA25_KcEEES0_DpOT_.exit unwind label %bb.aq

_ZN5arrow6Status7InvalidIJRA25_KcEEES0_DpOT_.exit: ; preds = %bb.an
  call void @_ZN5arrow6ResultINS_7compute10ExpressionEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %14) #31
  %i.dt = load ptr, ptr %14, align 8, !tbaa !274  ; 2 uses
  %.not.i96 = icmp eq ptr %i.dt, null
  br i1 %.not.i96, label %_ZN5arrow6StatusD2Ev.exit97, label %bb.ao, !prof !290

bb.ao:                                            ; preds = %_ZN5arrow6Status7InvalidIJRA25_KcEEES0_DpOT_.exit
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 1
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !284, !range !189, !noundef !66
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %_ZN5arrow6StatusD2Ev.exit97, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %14) #31
  br label %_ZN5arrow6StatusD2Ev.exit97

_ZN5arrow6StatusD2Ev.exit97:                      ; preds = %_ZN5arrow6Status7InvalidIJRA25_KcEEES0_DpOT_.exit, %bb.ao, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #31
  br label %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE9push_backERKS1_.exit

bb.aq:                                            ; preds = %bb.an
  %i.dx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #31
  br label %.body

_ZNK5arrow7compute10Expression9field_refEv.exit102: ; preds = %_ZSt6get_ifIN5arrow7compute10Expression9ParameterEJNS0_5DatumES3_NS2_4CallEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i
  %i.dy = load ptr, ptr %i.df, align 8, !tbaa !122 ; 5 uses
  %i.dz = load ptr, ptr %i.dg, align 16, !tbaa !110
  %.not.i103 = icmp eq ptr %i.dy, %i.dz
  br i1 %.not.i103, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %_ZNK5arrow7compute10Expression9field_refEv.exit102
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 32 ; 2 uses
  store i8 -1, ptr %i.ea, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  store ptr %i.dy, ptr %3, align 8, !tbaa !590
  invoke void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_15_Copy_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS4_8FieldRefESaISD_EEEEC1ERKSG_EUlOT_T0_E_JRKSt7variantIJS5_SB_SF_EEEEDcOSL_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(40) %i.do)
          to label %_ZSt12construct_atIN5arrow8FieldRefEJRKS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit.i unwind label %bb.as, !inline_history !593

bb.as:                                            ; preds = %bb.ar
  %i.eb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  invoke void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS2_8FieldRefESaISB_EEEE8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(40) %i.dy)
          to label %.body unwind label %bb.at, !inline_history !594

bb.at:                                            ; preds = %bb.as
  %i.ec = landingpad { ptr, i32 }
          catch ptr null
  %i.ed = extractvalue { ptr, i32 } %i.ec, 0
  call void @__clang_call_terminate(ptr %i.ed) #29, !inline_history !594
  unreachable

_ZSt12construct_atIN5arrow8FieldRefEJRKS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit.i: ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.ee = getelementptr inbounds nuw i8, ptr %i.do, i64 32
  %i.ef = load i8, ptr %i.ee, align 8, !tbaa !101
  store i8 %i.ef, ptr %i.ea, align 8, !tbaa !101
  %i.eg = load ptr, ptr %i.df, align 8, !tbaa !122
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 40
  store ptr %i.eh, ptr %i.df, align 8, !tbaa !122
  br label %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE9push_backERKS1_.exit

bb.au:                                            ; preds = %_ZNK5arrow7compute10Expression9field_refEv.exit102
  invoke void @_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr %i.dy, ptr noundef nonnull align 8 dereferenceable(40) %i.do)
          to label %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE9push_backERKS1_.exit unwind label %bb.bj

_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE9push_backERKS1_.exit: ; preds = %_ZSt12construct_atIN5arrow8FieldRefEJRKS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit.i, %bb.au, %_ZN5arrow6StatusD2Ev.exit97
end_hunk_10
begin_hunk_11_@_ZN5arrow7compute7projectESt6vectorINS0_10ExpressionESaIS2_EES1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EE:._crit_edge.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.u, %i.o
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !951

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %6, align 16, !tbaa !949
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.b
  %i.v = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.n, %bb.b ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.w = load ptr, ptr %i.k, align 16, !tbaa !948
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = sub i64 %i.x, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.z) #32
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.c
  %i.aa = load ptr, ptr %4, align 16, !tbaa !130  ; 3 uses
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !131 ; 2 uses
  %.not4.i.i.i7 = icmp eq ptr %i.aa, %i.ab
  br i1 %.not4.i.i.i7, label %_ZSt8_DestroyIPN5arrow7compute10ExpressionES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i8

.lr.ph.i.i.i8:                                    ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZSt8_DestroyIN5arrow7compute10ExpressionEEvPT_.exit.i.i.i
  %.05.i.i.i9 = phi ptr [ %i.at, %_ZSt8_DestroyIN5arrow7compute10ExpressionEEvPT_.exit.i.i.i ], [ %i.aa, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.05.i.i.i9, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !79 ; 8 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5arrow7compute10ExpressionEEvPT_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.ae, align 8, !tbaa !80
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !82
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !83
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #31, !inline_history !143
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !83
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #31, !inline_history !143
  br label %_ZSt8_DestroyIN5arrow7compute10ExpressionEEvPT_.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ah, %bb.g ], [ %i.ar, %bb.h ]
  %i.as = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.as, label %bb.i, label %_ZSt8_DestroyIN5arrow7compute10ExpressionEEvPT_.exit.i.i.i, !prof !87

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #31
  br label %_ZSt8_DestroyIN5arrow7compute10ExpressionEEvPT_.exit.i.i.i

_ZSt8_DestroyIN5arrow7compute10ExpressionEEvPT_.exit.i.i.i: ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.e, %.lr.ph.i.i.i8
  %i.at = getelementptr inbounds nuw i8, ptr %.05.i.i.i9, i64 16 ; 2 uses
  %.not.i.i.i10 = icmp eq ptr %i.at, %i.ab
  br i1 %.not.i.i.i10, label %_ZSt8_DestroyIPN5arrow7compute10ExpressionES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i8, !llvm.loop !134

_ZSt8_DestroyIPN5arrow7compute10ExpressionES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5arrow7compute10ExpressionEEvPT_.exit.i.i.i
  %.pr.i11 = load ptr, ptr %4, align 16, !tbaa !130
  br label %_ZSt8_DestroyIPN5arrow7compute10ExpressionES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5arrow7compute10ExpressionES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5arrow7compute10ExpressionES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.au = phi ptr [ %.pr.i11, %_ZSt8_DestroyIPN5arrow7compute10ExpressionES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.aa, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i12 = icmp eq ptr %i.au, null
  br i1 %.not.i.i1.i12, label %_ZNSt6vectorIN5arrow7compute10ExpressionESaIS2_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPN5arrow7compute10ExpressionES2_EvT_S4_RSaIT0_E.exit.i
  %i.av = load ptr, ptr %i.f, align 16, !tbaa !132
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = sub i64 %i.aw, %i.ax
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.ay) #32
  br label %_ZNSt6vectorIN5arrow7compute10ExpressionESaIS2_EED2Ev.exit

_ZNSt6vectorIN5arrow7compute10ExpressionESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow7compute10ExpressionES2_EvT_S4_RSaIT0_E.exit.i, %bb.j
  %i.az = load ptr, ptr %3, align 8, !tbaa !33    ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.a
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIN5arrow7compute10ExpressionESaIS2_EED2Ev.exit
  %i.bb = load i64, ptr %i.a, align 8, !tbaa !86
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIN5arrow7compute10ExpressionESaIS2_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.a
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute17MakeStructOptionsD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %5) #31
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.be, %bb.l ], [ %i.bd, %bb.k ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #31
  call void @_ZNSt6vectorIN5arrow7compute10ExpressionESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #31
  %i.bf = load ptr, ptr %3, align 8, !tbaa !33    ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.a
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %bb.m
  %i.bh = load i64, ptr %i.a, align 8, !tbaa !86
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute4callINS0_17MakeStructOptionsEvEENS0_10ExpressionENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS3_SaIS3_EET_(ptr dead_on_unwind noalias writable sret(%"class.arrow::compute::Expression") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %5 = alloca %"class.std::vector", align 16      ; 7 uses
  %6 = alloca %"class.std::shared_ptr", align 8   ; 4 uses
  %7 = alloca %"class.std::shared_ptr.832", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !107
  %i.b = load ptr, ptr %1, align 8, !tbaa !33     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !38   ; 3 uses
  %i.g = icmp ult i64 %i.f, 16
  call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.b, ptr %4, align 8, !tbaa !33
  %i.i = load i64, ptr %i.c, align 8, !tbaa !86
  store i64 %i.i, ptr %i.a, align 8, !tbaa !86
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.j = phi i64 [ %i.f, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.j, ptr %i.l, align 8, !tbaa !38
  store ptr %i.c, ptr %1, align 8, !tbaa !33
  store i64 0, ptr %i.k, align 8, !tbaa !38
  store i8 0, ptr %i.c, align 8, !tbaa !86
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.n = load <2 x ptr>, ptr %2, align 8, !tbaa !62
  store <2 x ptr> %i.n, ptr %5, align 16, !tbaa !62
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !132
  store ptr %i.q, ptr %i.o, align 16, !tbaa !132
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.s = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #30
          to label %bb.c unwind label %bb.x       ; 10 uses

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i32 1, ptr %i.t, align 8, !tbaa !80, !noalias !952
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 1, ptr %i.u, align 4, !tbaa !82, !noalias !952
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow7compute17MakeStructOptionsESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.s, align 8, !tbaa !83, !noalias !952
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow7compute17MakeStructOptionsE, i64 16), ptr %i.v, align 8, !tbaa !83, !noalias !952
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.z = load <2 x ptr>, ptr %i.x, align 8, !tbaa !94, !noalias !952
  store <2 x ptr> %i.z, ptr %i.w, align 8, !tbaa !94, !noalias !952
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ac = load <2 x ptr>, ptr %i.ab, align 8, !tbaa !168, !noalias !952
  store <2 x ptr> %i.ac, ptr %i.aa, align 8, !tbaa !168, !noalias !952
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false), !noalias !952
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ad, ptr noundef nonnull align 8 dereferenceable(40) %i.ae, i64 40, i1 false), !noalias !952
  store ptr null, ptr %i.ae, align 8, !noalias !952
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i32 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !952
  %.sroa.51.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr null, ptr %.sroa.51.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !952
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i32 0, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !952
  %.sroa.72.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 72
  store ptr null, ptr %.sroa.72.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !952
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 96
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %i.ah = load <2 x ptr>, ptr %i.ag, align 8, !tbaa !955, !noalias !952
  store <2 x ptr> %i.ah, ptr %i.af, align 8, !tbaa !955, !noalias !952
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 112
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !957, !noalias !952
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !957, !noalias !952
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i8 0, i64 24, i1 false), !noalias !952
  store ptr %i.v, ptr %6, align 8, !tbaa !136
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr null, ptr %i.r, align 8, !tbaa !79
  store ptr %i.s, ptr %i.al, align 8, !tbaa !79
  store ptr null, ptr %7, align 8, !tbaa !959
  invoke void @_ZN5arrow7compute4callENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS0_10ExpressionESaIS8_EESt10shared_ptrINS0_15FunctionOptionsEE(ptr dead_on_unwind writable sret(%"class.arrow::compute::Expression") align 8 %0, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6)
          to label %bb.d unwind label %bb.y

bb.d:                                             ; preds = %bb.c
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !79 ; 8 uses
  %.not.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow7compute15FunctionOptionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 4 uses
  %i.ao = load atomic i64, ptr %i.an acquire, align 8 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 4294967297
  %i.aq = trunc i64 %i.ao to i32                  ; 2 uses
  br i1 %i.ap, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.an, align 8, !tbaa !80
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  store i32 0, ptr %i.ar, align 4, !tbaa !82
  %i.as = load ptr, ptr %i.am, align 8, !tbaa !83
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #31, !inline_history !142
  %i.av = load ptr, ptr %i.am, align 8, !tbaa !83
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #31, !inline_history !142
  br label %_ZNSt12__shared_ptrIN5arrow7compute15FunctionOptionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.ay = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i = icmp eq i8 %i.ay, 0
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.az = add nsw i32 %i.aq, -1
  store i32 %i.az, ptr %i.an, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ba = atomicrmw volatile add ptr %i.an, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.aq, %bb.h ], [ %i.ba, %bb.i ]
  %i.bb = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bb, label %bb.j, label %_ZNSt12__shared_ptrIN5arrow7compute15FunctionOptionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !87

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #31
  br label %_ZNSt12__shared_ptrIN5arrow7compute15FunctionOptionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow7compute15FunctionOptionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.d, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j
  %i.bc = load ptr, ptr %i.r, align 8, !tbaa !79  ; 8 uses
  %.not.i.i3 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i3, label %_ZNSt12__shared_ptrIN5arrow7compute17MakeStructOptionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow7compute15FunctionOptionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 4 uses
  %i.be = load atomic i64, ptr %i.bd acquire, align 8 ; 2 uses
  %i.bf = icmp eq i64 %i.be, 4294967297
  %i.bg = trunc i64 %i.be to i32                  ; 2 uses
  br i1 %i.bf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.bd, align 8, !tbaa !80
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  store i32 0, ptr %i.bh, align 4, !tbaa !82
  %i.bi = load ptr, ptr %i.bc, align 8, !tbaa !83
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %i.bc) #31, !inline_history !962
  %i.bl = load ptr, ptr %i.bc, align 8, !tbaa !83
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %i.bc) #31, !inline_history !962
  br label %_ZNSt12__shared_ptrIN5arrow7compute17MakeStructOptionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.bo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i4 = icmp eq i8 %i.bo, 0
  br i1 %.not.i.i.i4, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bp = add nsw i32 %i.bg, -1
  store i32 %i.bp, ptr %i.bd, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i5

bb.o:                                             ; preds = %bb.m
  %i.bq = atomicrmw volatile add ptr %i.bd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i5

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i5: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i6 = phi i32 [ %i.bg, %bb.n ], [ %i.bq, %bb.o ]
  %i.br = icmp eq i32 %.0.i.i.i.i6, 1
  br i1 %i.br, label %bb.p, label %_ZNSt12__shared_ptrIN5arrow7compute17MakeStructOptionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !87

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i5
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bc) #31
  br label %_ZNSt12__shared_ptrIN5arrow7compute17MakeStructOptionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow7compute17MakeStructOptionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow7compute15FunctionOptionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i5, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  %i.bs = load ptr, ptr %5, align 16, !tbaa !130  ; 3 uses
  %i.bt = load ptr, ptr %i.m, align 8, !tbaa !131 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bs, %i.bt
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5arrow7compute10ExpressionES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12__shared_ptrIN5arrow7compute17MakeStructOptionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZSt8_DestroyIN5arrow7compute10ExpressionEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.cl, %_ZSt8_DestroyIN5arrow7compute10ExpressionEEvPT_.exit.i.i.i ], [ %i.bs, %_ZNSt12__shared_ptrIN5arrow7compute17MakeStructOptionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !79 ; 8 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5arrow7compute10ExpressionEEvPT_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 4 uses
  %i.bx = load atomic i64, ptr %i.bw acquire, align 8 ; 2 uses
  %i.by = icmp eq i64 %i.bx, 4294967297
  %i.bz = trunc i64 %i.bx to i32                  ; 2 uses
  br i1 %i.by, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.bw, align 8, !tbaa !80
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  store i32 0, ptr %i.ca, align 4, !tbaa !82
  %i.cb = load ptr, ptr %i.bv, align 8, !tbaa !83
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8
  call void %i.cd(ptr noundef nonnull align 8 dereferenceable(16) %i.bv) #31, !inline_history !143
  %i.ce = load ptr, ptr %i.bv, align 8, !tbaa !83
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(16) %i.bv) #31, !inline_history !143
  br label %_ZSt8_DestroyIN5arrow7compute10ExpressionEEvPT_.exit.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.ch = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ch, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ci = add nsw i32 %i.bz, -1
  store i32 %i.ci, ptr %i.bw, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.cj = atomicrmw volatile add ptr %i.bw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bz, %bb.t ], [ %i.cj, %bb.u ]
  %i.ck = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ck, label %bb.v, label %_ZSt8_DestroyIN5arrow7compute10ExpressionEEvPT_.exit.i.i.i, !prof !87

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bv) #31
  br label %_ZSt8_DestroyIN5arrow7compute10ExpressionEEvPT_.exit.i.i.i

_ZSt8_DestroyIN5arrow7compute10ExpressionEEvPT_.exit.i.i.i: ; preds = %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.r, %.lr.ph.i.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i7 = icmp eq ptr %i.cl, %i.bt
  br i1 %.not.i.i.i7, label %_ZSt8_DestroyIPN5arrow7compute10ExpressionES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !134

_ZSt8_DestroyIPN5arrow7compute10ExpressionES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5arrow7compute10ExpressionEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %5, align 16, !tbaa !130
  br label %_ZSt8_DestroyIPN5arrow7compute10ExpressionES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5arrow7compute10ExpressionES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5arrow7compute10ExpressionES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZNSt12__shared_ptrIN5arrow7compute17MakeStructOptionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cm = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN5arrow7compute10ExpressionES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.bs, %_ZNSt12__shared_ptrIN5arrow7compute17MakeStructOptionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.cm, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5arrow7compute10ExpressionESaIS2_EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZSt8_DestroyIPN5arrow7compute10ExpressionES2_EvT_S4_RSaIT0_E.exit.i
  %i.cn = load ptr, ptr %i.o, align 16, !tbaa !132
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = ptrtoint ptr %i.cm to i64
  %i.cq = sub i64 %i.co, %i.cp
  call void @_ZdlPvm(ptr noundef nonnull %i.cm, i64 noundef %i.cq) #32
  br label %_ZNSt6vectorIN5arrow7compute10ExpressionESaIS2_EED2Ev.exit

_ZNSt6vectorIN5arrow7compute10ExpressionESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow7compute10ExpressionES2_EvT_S4_RSaIT0_E.exit.i, %bb.w
  %i.cr = load ptr, ptr %4, align 8, !tbaa !33    ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.a
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIN5arrow7compute10ExpressionESaIS2_EED2Ev.exit
  %i.ct = load i64, ptr %i.a, align 8, !tbaa !86
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cu) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIN5arrow7compute10ExpressionESaIS2_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.y:                                             ; preds = %bb.c
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow7compute15FunctionOptionsELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #31
  call void @_ZNSt12__shared_ptrIN5arrow7compute17MakeStructOptionsELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #31
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pn = phi { ptr, i32 } [ %i.cw, %bb.y ], [ %i.cv, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @_ZNSt6vectorIN5arrow7compute10ExpressionESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #31
  %i.cx = load ptr, ptr %4, align 8, !tbaa !33    ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.a
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %bb.z
  %i.cz = load i64, ptr %i.a, align 8, !tbaa !86
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.da) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  resume { ptr, i32 } %.pn
}

declare void @_ZN5arrow7compute17MakeStructOptionsC1ESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef) unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute17MakeStructOptionsD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow7compute17MakeStructOptionsE, i64 16), ptr %0, align 8, !tbaa !83
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !963  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !964  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIKN5arrow16KeyValueMetadataEES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyISt10shared_ptrIKN5arrow16KeyValueMetadataEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.v, %_ZSt8_DestroyISt10shared_ptrIKN5arrow16KeyValueMetadataEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !79   ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIKN5arrow16KeyValueMetadataEEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.h = load atomic i64, ptr %i.g acquire, align 8 ; 2 uses
  %i.i = icmp eq i64 %i.h, 4294967297
  %i.j = trunc i64 %i.h to i32                    ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.g, align 8, !tbaa !80
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 0, ptr %i.k, align 4, !tbaa !82
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !83
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #31, !inline_history !965
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !83
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #31, !inline_history !965
  br label %_ZSt8_DestroyISt10shared_ptrIKN5arrow16KeyValueMetadataEEEvPT_.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = add nsw i32 %i.j, -1
  store i32 %i.s, ptr %i.g, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.t = atomicrmw volatile add ptr %i.g, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.j, %bb.e ], [ %i.t, %bb.f ]
  %i.u = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.u, label %bb.g, label %_ZSt8_DestroyISt10shared_ptrIKN5arrow16KeyValueMetadataEEEvPT_.exit.i.i.i, !prof !87

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #31
  br label %_ZSt8_DestroyISt10shared_ptrIKN5arrow16KeyValueMetadataEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIKN5arrow16KeyValueMetadataEEEvPT_.exit.i.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIKN5arrow16KeyValueMetadataEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !966

_ZSt8_DestroyIPSt10shared_ptrIKN5arrow16KeyValueMetadataEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIKN5arrow16KeyValueMetadataEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !963
  br label %_ZSt8_DestroyIPSt10shared_ptrIKN5arrow16KeyValueMetadataEES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIKN5arrow16KeyValueMetadataEES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIKN5arrow16KeyValueMetadataEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.w = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10shared_ptrIKN5arrow16KeyValueMetadataEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIKN5arrow16KeyValueMetadataEESaIS4_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIKN5arrow16KeyValueMetadataEES4_EvT_S6_RSaIT0_E.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !957
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #32
  br label %_ZNSt6vectorISt10shared_ptrIKN5arrow16KeyValueMetadataEESaIS4_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIKN5arrow16KeyValueMetadataEESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIKN5arrow16KeyValueMetadataEES4_EvT_S6_RSaIT0_E.exit.i, %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !967 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIKN5arrow16KeyValueMetadataEESaIS4_EED2Ev.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !970 ; 2 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 2 uses
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub nsw i64 0, %i.aj
  %i.al = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ak
  tail call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ai) #32
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %_ZNSt6vectorISt10shared_ptrIKN5arrow16KeyValueMetadataEESaIS4_EED2Ev.exit, %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !949 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !950 ; 2 uses
  %.not4.i.i.i1 = icmp eq ptr %i.an, %i.ap
  br i1 %.not4.i.i.i1, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i2

.lr.ph.i.i.i2:                                    ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i3 = phi ptr [ %i.av, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.an, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit ] ; 3 uses
  %i.aq = load ptr, ptr %.05.i.i.i3, align 8, !tbaa !33 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i2
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !86
  %i.au = add i64 %i.at, 1
  tail call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 32 ; 2 uses
  %.not.i.i.i4 = icmp eq ptr %i.av, %i.ap
  br i1 %.not.i.i.i4, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i2, !llvm.loop !951

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i5 = load ptr, ptr %i.am, align 8, !tbaa !949
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  %i.aw = phi ptr [ %.pr.i5, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.an, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i6 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i1.i6, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !948
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.az, %i.ba
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.bb) #32
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.j
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !949    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !950  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !33 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !86
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !951

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !949
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !948
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #32
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute5equalENS0_10ExpressionES1_(ptr dead_on_unwind noalias writable sret(%"class.arrow::compute::Expression") align 8 %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
end_hunk_11
begin_hunk_12_@_ZN5arrow7compute7is_nullENS0_10ExpressionEb:._crit_edge.i.i
bb.i:                                             ; preds = %bb.h
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.y, %bb.i ], [ %i.ai, %bb.j ]
  %i.aj = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.aj, label %bb.k, label %_ZSt8_DestroyIN5arrow7compute10ExpressionEEvPT_.exit.i.i.i, !prof !87

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #31
  br label %_ZSt8_DestroyIN5arrow7compute10ExpressionEEvPT_.exit.i.i.i

_ZSt8_DestroyIN5arrow7compute10ExpressionEEvPT_.exit.i.i.i: ; preds = %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.g, %.lr.ph.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ak, %i.s
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow7compute10ExpressionES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !134

_ZSt8_DestroyIPN5arrow7compute10ExpressionES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5arrow7compute10ExpressionEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !130
  br label %_ZSt8_DestroyIPN5arrow7compute10ExpressionES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5arrow7compute10ExpressionES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5arrow7compute10ExpressionES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.e
  %i.al = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN5arrow7compute10ExpressionES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.r, %bb.e ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5arrow7compute10ExpressionESaIS2_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZSt8_DestroyIPN5arrow7compute10ExpressionES2_EvT_S4_RSaIT0_E.exit.i
  %i.am = load ptr, ptr %i.j, align 8, !tbaa !132
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.al to i64
  %i.ap = sub i64 %i.an, %i.ao
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.ap) #32
  br label %_ZNSt6vectorIN5arrow7compute10ExpressionESaIS2_EED2Ev.exit

_ZNSt6vectorIN5arrow7compute10ExpressionESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow7compute10ExpressionES2_EvT_S4_RSaIT0_E.exit.i, %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !79 ; 8 uses
  %.not.i.i.i11 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i11, label %_ZN5arrow7compute10ExpressionD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN5arrow7compute10ExpressionESaIS2_EED2Ev.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 4 uses
  %i.at = load atomic i64, ptr %i.as acquire, align 8 ; 2 uses
  %i.au = icmp eq i64 %i.at, 4294967297
  %i.av = trunc i64 %i.at to i32                  ; 2 uses
  br i1 %i.au, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.as, align 8, !tbaa !80
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  store i32 0, ptr %i.aw, align 4, !tbaa !82
  %i.ax = load ptr, ptr %i.ar, align 8, !tbaa !83
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #31, !inline_history !300
  %i.ba = load ptr, ptr %i.ar, align 8, !tbaa !83
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #31, !inline_history !300
  br label %_ZN5arrow7compute10ExpressionD2Ev.exit

bb.o:                                             ; preds = %bb.m
  %i.bd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i = icmp eq i8 %i.bd, 0
  br i1 %.not.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.be = add nsw i32 %i.av, -1
  store i32 %i.be, ptr %i.as, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bf = atomicrmw volatile add ptr %i.as, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i = phi i32 [ %i.av, %bb.p ], [ %i.bf, %bb.q ]
  %i.bg = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bg, label %bb.r, label %_ZN5arrow7compute10ExpressionD2Ev.exit, !prof !87

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #31
  br label %_ZN5arrow7compute10ExpressionD2Ev.exit

_ZN5arrow7compute10ExpressionD2Ev.exit:           ; preds = %_ZNSt6vectorIN5arrow7compute10ExpressionESaIS2_EED2Ev.exit, %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.bh = load ptr, ptr %3, align 8, !tbaa !33    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.a
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5arrow7compute10ExpressionD2Ev.exit
  %i.bj = load i64, ptr %i.a, align 8, !tbaa !86
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5arrow7compute10ExpressionD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void

bb.s:                                             ; preds = %._crit_edge.i.i
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.t:                                             ; preds = %_ZSt10_ConstructIN5arrow7compute10ExpressionEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %bb.d
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.bn, %bb.u ], [ %i.bm, %bb.t ]
  call void @_ZNSt6vectorIN5arrow7compute10ExpressionESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #31
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.s
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.v ], [ %i.bl, %bb.s ]
  call void @_ZN5arrow7compute10ExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.bo = load ptr, ptr %3, align 8, !tbaa !33    ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.a
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.w
  %i.bq = load i64, ptr %i.a, align 8, !tbaa !86
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.br) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute4callINS0_11NullOptionsEvEENS0_10ExpressionENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS3_SaIS3_EET_(ptr dead_on_unwind noalias writable sret(%"class.arrow::compute::Expression") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %5 = alloca %"class.std::vector", align 16      ; 7 uses
  %6 = alloca %"class.std::shared_ptr", align 8   ; 4 uses
  %7 = alloca %"class.std::shared_ptr.843", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !107
  %i.b = load ptr, ptr %1, align 8, !tbaa !33     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !38   ; 3 uses
  %i.g = icmp ult i64 %i.f, 16
  call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.b, ptr %4, align 8, !tbaa !33
  %i.i = load i64, ptr %i.c, align 8, !tbaa !86
  store i64 %i.i, ptr %i.a, align 8, !tbaa !86
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.j = phi i64 [ %i.f, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.j, ptr %i.l, align 8, !tbaa !38
  store ptr %i.c, ptr %1, align 8, !tbaa !33
  store i64 0, ptr %i.k, align 8, !tbaa !38
  store i8 0, ptr %i.c, align 8, !tbaa !86
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.n = load <2 x ptr>, ptr %2, align 8, !tbaa !62
  store <2 x ptr> %i.n, ptr %5, align 16, !tbaa !62
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !132
  store ptr %i.q, ptr %i.o, align 16, !tbaa !132
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.s = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #30
          to label %bb.c unwind label %bb.x       ; 7 uses

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i32 1, ptr %i.t, align 8, !tbaa !80, !noalias !973
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 1, ptr %i.u, align 4, !tbaa !82, !noalias !973
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow7compute11NullOptionsESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.s, align 8, !tbaa !83, !noalias !973
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !976, !noalias !973
  store ptr %i.y, ptr %i.w, align 8, !tbaa !976, !noalias !973
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow7compute11NullOptionsE, i64 16), ptr %i.v, align 8, !tbaa !83, !noalias !973
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !979, !range !189, !noalias !973, !noundef !66
  store i8 %i.ab, ptr %i.z, align 8, !tbaa !979, !noalias !973
  store ptr %i.v, ptr %6, align 8, !tbaa !136
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr null, ptr %i.r, align 8, !tbaa !79
  store ptr %i.s, ptr %i.ac, align 8, !tbaa !79
  store ptr null, ptr %7, align 8, !tbaa !981
  invoke void @_ZN5arrow7compute4callENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS0_10ExpressionESaIS8_EESt10shared_ptrINS0_15FunctionOptionsEE(ptr dead_on_unwind writable sret(%"class.arrow::compute::Expression") align 8 %0, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6)
          to label %bb.d unwind label %bb.y

bb.d:                                             ; preds = %bb.c
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !79 ; 8 uses
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow7compute15FunctionOptionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.ae, align 8, !tbaa !80
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !82
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !83
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #31, !inline_history !142
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !83
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #31, !inline_history !142
  br label %_ZNSt12__shared_ptrIN5arrow7compute15FunctionOptionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.ah, %bb.h ], [ %i.ar, %bb.i ]
  %i.as = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.as, label %bb.j, label %_ZNSt12__shared_ptrIN5arrow7compute15FunctionOptionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !87

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #31
  br label %_ZNSt12__shared_ptrIN5arrow7compute15FunctionOptionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow7compute15FunctionOptionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.d, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j
  %i.at = load ptr, ptr %i.r, align 8, !tbaa !79  ; 8 uses
  %.not.i.i3 = icmp eq ptr %i.at, null
  br i1 %.not.i.i3, label %_ZNSt12__shared_ptrIN5arrow7compute11NullOptionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow7compute15FunctionOptionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 4 uses
  %i.av = load atomic i64, ptr %i.au acquire, align 8 ; 2 uses
  %i.aw = icmp eq i64 %i.av, 4294967297
  %i.ax = trunc i64 %i.av to i32                  ; 2 uses
  br i1 %i.aw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.au, align 8, !tbaa !80
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  store i32 0, ptr %i.ay, align 4, !tbaa !82
  %i.az = load ptr, ptr %i.at, align 8, !tbaa !83
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %i.at) #31, !inline_history !984
  %i.bc = load ptr, ptr %i.at, align 8, !tbaa !83
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(16) %i.at) #31, !inline_history !984
  br label %_ZNSt12__shared_ptrIN5arrow7compute11NullOptionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.bf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i4 = icmp eq i8 %i.bf, 0
  br i1 %.not.i.i.i4, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bg = add nsw i32 %i.ax, -1
  store i32 %i.bg, ptr %i.au, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i5

bb.o:                                             ; preds = %bb.m
  %i.bh = atomicrmw volatile add ptr %i.au, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i5

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i5: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i6 = phi i32 [ %i.ax, %bb.n ], [ %i.bh, %bb.o ]
  %i.bi = icmp eq i32 %.0.i.i.i.i6, 1
  br i1 %i.bi, label %bb.p, label %_ZNSt12__shared_ptrIN5arrow7compute11NullOptionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !87

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i5
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.at) #31
  br label %_ZNSt12__shared_ptrIN5arrow7compute11NullOptionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow7compute11NullOptionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow7compute15FunctionOptionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i5, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  %i.bj = load ptr, ptr %5, align 16, !tbaa !130  ; 3 uses
  %i.bk = load ptr, ptr %i.m, align 8, !tbaa !131 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bj, %i.bk
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5arrow7compute10ExpressionES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12__shared_ptrIN5arrow7compute11NullOptionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZSt8_DestroyIN5arrow7compute10ExpressionEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.cc, %_ZSt8_DestroyIN5arrow7compute10ExpressionEEvPT_.exit.i.i.i ], [ %i.bj, %_ZNSt12__shared_ptrIN5arrow7compute11NullOptionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !79 ; 8 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5arrow7compute10ExpressionEEvPT_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 4 uses
  %i.bo = load atomic i64, ptr %i.bn acquire, align 8 ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 4294967297
  %i.bq = trunc i64 %i.bo to i32                  ; 2 uses
  br i1 %i.bp, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.bn, align 8, !tbaa !80
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  store i32 0, ptr %i.br, align 4, !tbaa !82
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !83
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #31, !inline_history !143
  %i.bv = load ptr, ptr %i.bm, align 8, !tbaa !83
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #31, !inline_history !143
  br label %_ZSt8_DestroyIN5arrow7compute10ExpressionEEvPT_.exit.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.by = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.by, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bz = add nsw i32 %i.bq, -1
  store i32 %i.bz, ptr %i.bn, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.ca = atomicrmw volatile add ptr %i.bn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bq, %bb.t ], [ %i.ca, %bb.u ]
  %i.cb = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.cb, label %bb.v, label %_ZSt8_DestroyIN5arrow7compute10ExpressionEEvPT_.exit.i.i.i, !prof !87

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #31
  br label %_ZSt8_DestroyIN5arrow7compute10ExpressionEEvPT_.exit.i.i.i

_ZSt8_DestroyIN5arrow7compute10ExpressionEEvPT_.exit.i.i.i: ; preds = %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.r, %.lr.ph.i.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i7 = icmp eq ptr %i.cc, %i.bk
  br i1 %.not.i.i.i7, label %_ZSt8_DestroyIPN5arrow7compute10ExpressionES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !134

_ZSt8_DestroyIPN5arrow7compute10ExpressionES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5arrow7compute10ExpressionEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %5, align 16, !tbaa !130
  br label %_ZSt8_DestroyIPN5arrow7compute10ExpressionES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5arrow7compute10ExpressionES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5arrow7compute10ExpressionES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZNSt12__shared_ptrIN5arrow7compute11NullOptionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cd = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN5arrow7compute10ExpressionES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.bj, %_ZNSt12__shared_ptrIN5arrow7compute11NullOptionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5arrow7compute10ExpressionESaIS2_EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZSt8_DestroyIPN5arrow7compute10ExpressionES2_EvT_S4_RSaIT0_E.exit.i
  %i.ce = load ptr, ptr %i.o, align 16, !tbaa !132
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = ptrtoint ptr %i.cd to i64
  %i.ch = sub i64 %i.cf, %i.cg
  call void @_ZdlPvm(ptr noundef nonnull %i.cd, i64 noundef %i.ch) #32
  br label %_ZNSt6vectorIN5arrow7compute10ExpressionESaIS2_EED2Ev.exit

_ZNSt6vectorIN5arrow7compute10ExpressionESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow7compute10ExpressionES2_EvT_S4_RSaIT0_E.exit.i, %bb.w
  %i.ci = load ptr, ptr %4, align 8, !tbaa !33    ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.a
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIN5arrow7compute10ExpressionESaIS2_EED2Ev.exit
  %i.ck = load i64, ptr %i.a, align 8, !tbaa !86
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cl) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
end_hunk_12
begin_hunk_13_@_ZNSt6vectorIN5arrow5DatumESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a

_ZNKSt6vectorIN5arrow5DatumESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 24                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 384307168202282325)
  %i.l = select i1 %i.j, i64 384307168202282325, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 24                 ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #30 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  store i8 -1, ptr %i.r, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  store ptr %i.q, ptr %5, align 8, !tbaa !437
  invoke void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_15_Copy_ctor_baseILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEEC1ERKSI_EUlOT_T0_E_JRKSt7variantIJS6_S9_SB_SD_SF_SH_EEEEDcOSN_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.c unwind label %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit

bb.c:                                             ; preds = %_ZNKSt6vectorIN5arrow5DatumESaIS1_EE12_M_check_lenEmPKc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.t = load i8, ptr %i.s, align 8, !tbaa !69
  store i8 %i.t, ptr %i.r, align 8, !tbaa !69
  %.not11.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not11.i.i.i, label %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i
  %.013.i.i.i = phi ptr [ %i.ad, %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %bb.c ] ; 3 uses
  %.0912.i.i.i = phi ptr [ %i.ac, %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %bb.c ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1019)
  call void @llvm.experimental.noalias.scope.decl(metadata !1022)
  %i.u = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %.0912.i.i.i, i64 16
  %i.w = load i8, ptr %i.v, align 8, !tbaa !69, !alias.scope !1022, !noalias !1019 ; 2 uses
  %i.x = icmp eq i8 %i.w, 0
  br i1 %i.x, label %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %.lr.ph.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.0912.i.i.i, i64 8
  %i.z = load <2 x ptr>, ptr %.0912.i.i.i, align 8, !tbaa !94, !alias.scope !1022, !noalias !1019
  store ptr null, ptr %i.y, align 8, !tbaa !79, !alias.scope !1022, !noalias !1019
  store <2 x ptr> %i.z, ptr %.013.i.i.i, align 8, !tbaa !94, !alias.scope !1019, !noalias !1022
  store ptr null, ptr %.0912.i.i.i, align 8, !tbaa !94, !alias.scope !1022, !noalias !1019
  br label %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i

_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i: ; preds = %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i
  store i8 %i.w, ptr %i.u, align 8, !tbaa !69, !alias.scope !1019, !noalias !1022
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31, !noalias !1024
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(24) %.0912.i.i.i)
          to label %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i unwind label %bb.d, !noalias !1019

bb.d:                                             ; preds = %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #29, !noalias !1019
  unreachable

_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31, !noalias !1024
  %i.ac = getelementptr inbounds nuw i8, ptr %.0912.i.i.i, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ac, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !1025

_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i, %bb.c
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %bb.c ], [ %i.ad, %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 24 ; 2 uses
  %.not11.i.i.i26 = icmp eq ptr %1, %i.b
  br i1 %.not11.i.i.i26, label %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i32
  %.013.i.i.i28 = phi ptr [ %i.ao, %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i32 ], [ %i.ae, %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 3 uses
  %.0912.i.i.i29 = phi ptr [ %i.an, %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i32 ], [ %1, %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1026)
  call void @llvm.experimental.noalias.scope.decl(metadata !1029)
  %i.af = getelementptr inbounds nuw i8, ptr %.013.i.i.i28, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %.0912.i.i.i29, i64 16
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !69, !alias.scope !1029, !noalias !1026 ; 2 uses
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i31, label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i30

.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i30:          ; preds = %.lr.ph.i.i.i27
  %i.aj = getelementptr inbounds nuw i8, ptr %.0912.i.i.i29, i64 8
  %i.ak = load <2 x ptr>, ptr %.0912.i.i.i29, align 8, !tbaa !94, !alias.scope !1029, !noalias !1026
  store ptr null, ptr %i.aj, align 8, !tbaa !79, !alias.scope !1029, !noalias !1026
  store <2 x ptr> %i.ak, ptr %.013.i.i.i28, align 8, !tbaa !94, !alias.scope !1026, !noalias !1029
  store ptr null, ptr %.0912.i.i.i29, align 8, !tbaa !94, !alias.scope !1029, !noalias !1026
  br label %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i31

_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i31: ; preds = %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i30, %.lr.ph.i.i.i27
  store i8 %i.ah, ptr %i.af, align 8, !tbaa !69, !alias.scope !1026, !noalias !1029
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31, !noalias !1031
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(24) %.0912.i.i.i29)
          to label %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i32 unwind label %bb.e, !noalias !1026

bb.e:                                             ; preds = %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i31
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  call void @__clang_call_terminate(ptr %i.am) #29, !noalias !1026
  unreachable

_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i32: ; preds = %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !1031
  %i.an = getelementptr inbounds nuw i8, ptr %.0912.i.i.i29, i64 24 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.013.i.i.i28, i64 24 ; 2 uses
  %.not.i.i.i33 = icmp eq ptr %i.an, %i.b
  br i1 %.not.i.i.i33, label %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35, label %.lr.ph.i.i.i27, !llvm.loop !1025

_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35: ; preds = %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i32, %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i34 = phi ptr [ %i.ae, %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.ao, %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i32 ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !436
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = sub i64 %i.ar, %i.e
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.as) #32
  br label %_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !527
  store ptr %.0.lcssa.i.i.i34, ptr %i.a, align 8, !tbaa !435
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.l
  store ptr %i.at, ptr %i.ap, align 8, !tbaa !436
  ret void

bb.g:                                             ; preds = %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZNKSt6vectorIN5arrow5DatumESaIS1_EE12_M_check_lenEmPKc.exit
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS2_6ScalarEES5_INS2_9ArrayDataEES5_INS2_12ChunkedArrayEES5_INS2_11RecordBatchEES5_INS2_5TableEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(24) %i.q) #31
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  %i.ax = call ptr @__cxa_begin_catch(ptr %i.aw) #31 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #32
  invoke void @__cxa_rethrow() #33
          to label %bb.j unwind label %bb.g

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.au

bb.i:                                             ; preds = %bb.g
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  call void @__clang_call_terminate(ptr %i.az) #29
  unreachable

bb.j:                                             ; preds = %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt8_DestroyIPN5arrow5DatumEEvT_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.365, align 1            ; 3 uses
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow5DatumEEEvT_S5_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i
  %.05.i = phi ptr [ %i.c, %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i ], [ %0, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %.05.i)
          to label %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  call void @__clang_call_terminate(ptr %i.b) #29
  unreachable

_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i:         ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  %i.c = getelementptr inbounds nuw i8, ptr %.05.i, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %i.c, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow5DatumEEEvT_S5_.exit, label %.lr.ph.i, !llvm.loop !528

_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow5DatumEEEvT_S5_.exit: ; preds = %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i, %bb.a
  ret void
}

declare void @_ZN5arrow7compute11CastOptionsC1Eb(ptr noundef nonnull align 8 dereferenceable(46), i1 noundef zeroext) unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute11CastOptionsD0Ev(ptr noundef nonnull align 8 dereferenceable(46) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow7compute11CastOptionsE, i64 16), ptr %0, align 8, !tbaa !83
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !79   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow7compute11CastOptionsD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !80
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !82
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !83
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !457
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !83
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !457
  br label %_ZN5arrow7compute11CastOptionsD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN5arrow7compute11CastOptionsD2Ev.exit, !prof !87

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !458
  br label %_ZN5arrow7compute11CastOptionsD2Ev.exit

_ZN5arrow7compute11CastOptionsD2Ev.exit:          ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #32
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5arrow5DatumESaIS1_EE17_M_realloc_insertIJSt10shared_ptrINS0_5ArrayEEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.anon.365, align 1            ; 3 uses
  %4 = alloca %class.anon.365, align 1            ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !435  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !527    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN5arrow5DatumESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.59) #33
  unreachable

_ZNKSt6vectorIN5arrow5DatumESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 24                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 384307168202282325)
  %i.l = select i1 %i.j, i64 384307168202282325, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 24                 ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #30 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  invoke void @_ZN5arrow5DatumC1ERKSt10shared_ptrINS_5ArrayEE(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZNSt16allocator_traitsISaIN5arrow5DatumEEE9constructIS1_JSt10shared_ptrINS0_5ArrayEEEEEvRS2_PT_DpOT0_.exit unwind label %bb.g

_ZNSt16allocator_traitsISaIN5arrow5DatumEEE9constructIS1_JSt10shared_ptrINS0_5ArrayEEEEEvRS2_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN5arrow5DatumESaIS1_EE12_M_check_lenEmPKc.exit
  %.not11.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not11.i.i.i, label %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt16allocator_traitsISaIN5arrow5DatumEEE9constructIS1_JSt10shared_ptrINS0_5ArrayEEEEEvRS2_PT_DpOT0_.exit, %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i
  %.013.i.i.i = phi ptr [ %i.aa, %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNSt16allocator_traitsISaIN5arrow5DatumEEE9constructIS1_JSt10shared_ptrINS0_5ArrayEEEEEvRS2_PT_DpOT0_.exit ] ; 3 uses
  %.0912.i.i.i = phi ptr [ %i.z, %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN5arrow5DatumEEE9constructIS1_JSt10shared_ptrINS0_5ArrayEEEEEvRS2_PT_DpOT0_.exit ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1032)
  call void @llvm.experimental.noalias.scope.decl(metadata !1035)
  %i.r = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %.0912.i.i.i, i64 16
  %i.t = load i8, ptr %i.s, align 8, !tbaa !69, !alias.scope !1035, !noalias !1032 ; 2 uses
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %.lr.ph.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.0912.i.i.i, i64 8
  %i.w = load <2 x ptr>, ptr %.0912.i.i.i, align 8, !tbaa !94, !alias.scope !1035, !noalias !1032
  store ptr null, ptr %i.v, align 8, !tbaa !79, !alias.scope !1035, !noalias !1032
  store <2 x ptr> %i.w, ptr %.013.i.i.i, align 8, !tbaa !94, !alias.scope !1032, !noalias !1035
  store ptr null, ptr %.0912.i.i.i, align 8, !tbaa !94, !alias.scope !1035, !noalias !1032
  br label %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i

_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i: ; preds = %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i
  store i8 %i.t, ptr %i.r, align 8, !tbaa !69, !alias.scope !1032, !noalias !1035
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31, !noalias !1037
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(24) %.0912.i.i.i)
          to label %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i unwind label %bb.c, !noalias !1032

bb.c:                                             ; preds = %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  call void @__clang_call_terminate(ptr %i.y) #29, !noalias !1032
  unreachable

_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31, !noalias !1037
  %i.z = getelementptr inbounds nuw i8, ptr %.0912.i.i.i, i64 24 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.z, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !1025

_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt16allocator_traitsISaIN5arrow5DatumEEE9constructIS1_JSt10shared_ptrINS0_5ArrayEEEEEvRS2_PT_DpOT0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaIN5arrow5DatumEEE9constructIS1_JSt10shared_ptrINS0_5ArrayEEEEEvRS2_PT_DpOT0_.exit ], [ %i.aa, %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 24 ; 2 uses
  %.not11.i.i.i26 = icmp eq ptr %1, %i.b
  br i1 %.not11.i.i.i26, label %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i32
  %.013.i.i.i28 = phi ptr [ %i.al, %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i32 ], [ %i.ab, %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 3 uses
  %.0912.i.i.i29 = phi ptr [ %i.ak, %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i32 ], [ %1, %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1038)
  call void @llvm.experimental.noalias.scope.decl(metadata !1041)
  %i.ac = getelementptr inbounds nuw i8, ptr %.013.i.i.i28, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %.0912.i.i.i29, i64 16
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !69, !alias.scope !1041, !noalias !1038 ; 2 uses
  %i.af = icmp eq i8 %i.ae, 0
  br i1 %i.af, label %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i31, label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i30

.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i30:          ; preds = %.lr.ph.i.i.i27
  %i.ag = getelementptr inbounds nuw i8, ptr %.0912.i.i.i29, i64 8
  %i.ah = load <2 x ptr>, ptr %.0912.i.i.i29, align 8, !tbaa !94, !alias.scope !1041, !noalias !1038
  store ptr null, ptr %i.ag, align 8, !tbaa !79, !alias.scope !1041, !noalias !1038
  store <2 x ptr> %i.ah, ptr %.013.i.i.i28, align 8, !tbaa !94, !alias.scope !1038, !noalias !1041
  store ptr null, ptr %.0912.i.i.i29, align 8, !tbaa !94, !alias.scope !1041, !noalias !1038
  br label %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i31

_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i31: ; preds = %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i30, %.lr.ph.i.i.i27
  store i8 %i.ae, ptr %i.ac, align 8, !tbaa !69, !alias.scope !1038, !noalias !1041
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31, !noalias !1043
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(24) %.0912.i.i.i29)
          to label %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i32 unwind label %bb.d, !noalias !1038

bb.d:                                             ; preds = %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i31
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #29, !noalias !1038
  unreachable

_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i32: ; preds = %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !1043
  %i.ak = getelementptr inbounds nuw i8, ptr %.0912.i.i.i29, i64 24 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.013.i.i.i28, i64 24 ; 2 uses
  %.not.i.i.i33 = icmp eq ptr %i.ak, %i.b
  br i1 %.not.i.i.i33, label %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35, label %.lr.ph.i.i.i27, !llvm.loop !1025

_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35: ; preds = %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i32, %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i34 = phi ptr [ %i.ab, %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.al, %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i32 ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !436
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = sub i64 %i.ao, %i.e
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ap) #32
  br label %_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35, %bb.e
  store ptr %i.p, ptr %0, align 8, !tbaa !527
  store ptr %.0.lcssa.i.i.i34, ptr %i.a, align 8, !tbaa !435
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.l
  store ptr %i.aq, ptr %i.am, align 8, !tbaa !436
  ret void

bb.f:                                             ; preds = %bb.g
  %i.ar = landingpad { ptr, i32 }
          cleanup
end_hunk_13
begin_hunk_14_@_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_15_Copy_ctor_baseILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEEC1ERKSI_EUlOT_T0_E_JRKSt7variantIJS6_S9_SB_SD_SF_SH_EEEEDcOSN_DpOT1_:bb.a
bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !437
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !79   ; 2 uses
  %i.f = load <2 x ptr>, ptr %1, align 8, !tbaa !94
  store <2 x ptr> %i.f, ptr %i.c, align 8, !tbaa !94
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS5_6ScalarEES8_INS5_9ArrayDataEES8_INS5_12ChunkedArrayEES8_INS5_11RecordBatchEES8_INS5_5TableEEEEC1ERKSJ_EUlOT_T0_E_RKSt7variantIJS7_SA_SC_SE_SG_SI_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESQ_SU_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.h = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load i32, ptr %i.g, align 4, !tbaa !3
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.g, align 4, !tbaa !3
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS5_6ScalarEES8_INS5_9ArrayDataEES8_INS5_12ChunkedArrayEES8_INS5_11RecordBatchEES8_INS5_5TableEEEEC1ERKSJ_EUlOT_T0_E_RKSt7variantIJS7_SA_SC_SE_SG_SI_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESQ_SU_.exit

bb.e:                                             ; preds = %bb.c
  %i.k = atomicrmw volatile add ptr %i.g, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS5_6ScalarEES8_INS5_9ArrayDataEES8_INS5_12ChunkedArrayEES8_INS5_11RecordBatchEES8_INS5_5TableEEEEC1ERKSJ_EUlOT_T0_E_RKSt7variantIJS7_SA_SC_SE_SG_SI_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESQ_SU_.exit

bb.f:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %0, align 8, !tbaa !437
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !79   ; 2 uses
  %i.o = load <2 x ptr>, ptr %1, align 8, !tbaa !94
  store <2 x ptr> %i.o, ptr %i.l, align 8, !tbaa !94
  %.not.i.i.i.i.i.i.i.i.i.i.i.i16 = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i16, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS5_6ScalarEES8_INS5_9ArrayDataEES8_INS5_12ChunkedArrayEES8_INS5_11RecordBatchEES8_INS5_5TableEEEEC1ERKSJ_EUlOT_T0_E_RKSt7variantIJS7_SA_SC_SE_SG_SI_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESQ_SU_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = load i32, ptr %i.p, align 4, !tbaa !3
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.p, align 4, !tbaa !3
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS5_6ScalarEES8_INS5_9ArrayDataEES8_INS5_12ChunkedArrayEES8_INS5_11RecordBatchEES8_INS5_5TableEEEEC1ERKSJ_EUlOT_T0_E_RKSt7variantIJS7_SA_SC_SE_SG_SI_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESQ_SU_.exit

bb.i:                                             ; preds = %bb.g
  %i.t = atomicrmw volatile add ptr %i.p, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS5_6ScalarEES8_INS5_9ArrayDataEES8_INS5_12ChunkedArrayEES8_INS5_11RecordBatchEES8_INS5_5TableEEEEC1ERKSJ_EUlOT_T0_E_RKSt7variantIJS7_SA_SC_SE_SG_SI_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESQ_SU_.exit

bb.j:                                             ; preds = %bb.a
  %i.u = load ptr, ptr %0, align 8, !tbaa !437
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !79   ; 2 uses
  %i.x = load <2 x ptr>, ptr %1, align 8, !tbaa !94
  store <2 x ptr> %i.x, ptr %i.u, align 8, !tbaa !94
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i17 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i17, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS5_6ScalarEES8_INS5_9ArrayDataEES8_INS5_12ChunkedArrayEES8_INS5_11RecordBatchEES8_INS5_5TableEEEEC1ERKSJ_EUlOT_T0_E_RKSt7variantIJS7_SA_SC_SE_SG_SI_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESQ_SU_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 3 uses
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = load i32, ptr %i.y, align 4, !tbaa !3
  %i.ab = add nsw i32 %i.aa, 1
  store i32 %i.ab, ptr %i.y, align 4, !tbaa !3
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS5_6ScalarEES8_INS5_9ArrayDataEES8_INS5_12ChunkedArrayEES8_INS5_11RecordBatchEES8_INS5_5TableEEEEC1ERKSJ_EUlOT_T0_E_RKSt7variantIJS7_SA_SC_SE_SG_SI_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESQ_SU_.exit

bb.m:                                             ; preds = %bb.k
  %i.ac = atomicrmw volatile add ptr %i.y, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS5_6ScalarEES8_INS5_9ArrayDataEES8_INS5_12ChunkedArrayEES8_INS5_11RecordBatchEES8_INS5_5TableEEEEC1ERKSJ_EUlOT_T0_E_RKSt7variantIJS7_SA_SC_SE_SG_SI_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESQ_SU_.exit

bb.n:                                             ; preds = %bb.a
  %i.ad = load ptr, ptr %0, align 8, !tbaa !437
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !79 ; 2 uses
  %i.ag = load <2 x ptr>, ptr %1, align 8, !tbaa !94
  store <2 x ptr> %i.ag, ptr %i.ad, align 8, !tbaa !94
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i18 = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i18, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS5_6ScalarEES8_INS5_9ArrayDataEES8_INS5_12ChunkedArrayEES8_INS5_11RecordBatchEES8_INS5_5TableEEEEC1ERKSJ_EUlOT_T0_E_RKSt7variantIJS7_SA_SC_SE_SG_SI_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESQ_SU_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 3 uses
  %i.ai = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !3
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ah, align 4, !tbaa !3
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS5_6ScalarEES8_INS5_9ArrayDataEES8_INS5_12ChunkedArrayEES8_INS5_11RecordBatchEES8_INS5_5TableEEEEC1ERKSJ_EUlOT_T0_E_RKSt7variantIJS7_SA_SC_SE_SG_SI_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESQ_SU_.exit

bb.q:                                             ; preds = %bb.o
  %i.al = atomicrmw volatile add ptr %i.ah, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS5_6ScalarEES8_INS5_9ArrayDataEES8_INS5_12ChunkedArrayEES8_INS5_11RecordBatchEES8_INS5_5TableEEEEC1ERKSJ_EUlOT_T0_E_RKSt7variantIJS7_SA_SC_SE_SG_SI_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESQ_SU_.exit

bb.r:                                             ; preds = %bb.a
  %i.am = load ptr, ptr %0, align 8, !tbaa !437
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !79 ; 2 uses
  %i.ap = load <2 x ptr>, ptr %1, align 8, !tbaa !94
  store <2 x ptr> %i.ap, ptr %i.am, align 8, !tbaa !94
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i19 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i19, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS5_6ScalarEES8_INS5_9ArrayDataEES8_INS5_12ChunkedArrayEES8_INS5_11RecordBatchEES8_INS5_5TableEEEEC1ERKSJ_EUlOT_T0_E_RKSt7variantIJS7_SA_SC_SE_SG_SI_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESQ_SU_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 3 uses
  %i.ar = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ar, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !3
  %i.at = add nsw i32 %i.as, 1
  store i32 %i.at, ptr %i.aq, align 4, !tbaa !3
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS5_6ScalarEES8_INS5_9ArrayDataEES8_INS5_12ChunkedArrayEES8_INS5_11RecordBatchEES8_INS5_5TableEEEEC1ERKSJ_EUlOT_T0_E_RKSt7variantIJS7_SA_SC_SE_SG_SI_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESQ_SU_.exit

bb.u:                                             ; preds = %bb.s
  %i.au = atomicrmw volatile add ptr %i.aq, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS5_6ScalarEES8_INS5_9ArrayDataEES8_INS5_12ChunkedArrayEES8_INS5_11RecordBatchEES8_INS5_5TableEEEEC1ERKSJ_EUlOT_T0_E_RKSt7variantIJS7_SA_SC_SE_SG_SI_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESQ_SU_.exit

bb.v:                                             ; preds = %bb.a
  unreachable

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS5_6ScalarEES8_INS5_9ArrayDataEES8_INS5_12ChunkedArrayEES8_INS5_11RecordBatchEES8_INS5_5TableEEEEC1ERKSJ_EUlOT_T0_E_RKSt7variantIJS7_SA_SC_SE_SG_SI_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESQ_SU_.exit: ; preds = %bb.u, %bb.t, %bb.r, %bb.q, %bb.p, %bb.n, %bb.m, %bb.l, %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt16__do_uninit_copyIPKN5arrow5DatumEPS1_ET0_T_S6_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.anon.450, align 8            ; 5 uses
  %.not14 = icmp eq ptr %0, %1
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.016 = phi ptr [ %i.h, %bb.b ], [ %2, %bb.a ]  ; 5 uses
  %.01215 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.016, i64 16 ; 2 uses
  store i8 -1, ptr %i.a, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  store ptr %.016, ptr %3, align 8, !tbaa !437
  invoke void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_15_Copy_ctor_baseILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEEC1ERKSI_EUlOT_T0_E_JRKSt7variantIJS6_S9_SB_SD_SF_SH_EEEEDcOSN_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %.01215)
          to label %bb.b unwind label %.body

.body:                                            ; preds = %.lr.ph
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS2_6ScalarEES5_INS2_9ArrayDataEES5_INS2_12ChunkedArrayEES5_INS2_11RecordBatchEES5_INS2_5TableEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(24) %.016) #31
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  %i.d = call ptr @__cxa_begin_catch(ptr %i.c) #31 ; 0 uses
  invoke void @_ZSt8_DestroyIPN5arrow5DatumEEvT_S3_(ptr noundef %2, ptr noundef nonnull %.016)
          to label %bb.c unwind label %bb.d

bb.b:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.e = getelementptr inbounds nuw i8, ptr %.01215, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !69
  store i8 %i.f, ptr %i.a, align 8, !tbaa !69
  %i.g = getelementptr inbounds nuw i8, ptr %.01215, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.016, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.g, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1069

bb.c:                                             ; preds = %.body
  invoke void @__cxa_rethrow() #33
          to label %bb.g unwind label %bb.d

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.h, %bb.b ]
  ret ptr %.0.lcssa

bb.d:                                             ; preds = %bb.c, %.body
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.i

bb.f:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #29
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute18StructFieldOptionsD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow7compute18StructFieldOptionsE, i64 16), ptr %0, align 8, !tbaa !83
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS2_8FieldRefESaISB_EEEE8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %_ZN5arrow7compute18StructFieldOptionsD2Ev.exit unwind label %bb.b, !inline_history !1070

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #29, !inline_history !1070
  unreachable

_ZN5arrow7compute18StructFieldOptionsD2Ev.exit:   ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #32
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute6detail16DatumAccumulatorD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.365, align 1            ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5arrow7compute6detail16DatumAccumulatorE, i64 16), ptr %0, align 8, !tbaa !83
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !527  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !435  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.g, %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %.05.i.i.i.i)
          to label %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i.i.i unwind label %bb.b, !inline_history !1071

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  call void @__clang_call_terminate(ptr %i.f) #29, !inline_history !1071
  unreachable

_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i.i.i:   ; preds = %.lr.ph.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !528

_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !527
  br label %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.a
  %i.h = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute6detail16DatumAccumulatorD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !436
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #32, !inline_history !1071
  br label %_ZN5arrow7compute6detail16DatumAccumulatorD2Ev.exit

_ZN5arrow7compute6detail16DatumAccumulatorD2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.c
  call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #32
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute6detail16DatumAccumulator8OnResultENS_5DatumE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.anon.450, align 8            ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !435  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !436
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i8 -1, ptr %i.e, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  store ptr %i.b, ptr %3, align 8, !tbaa !437
  invoke void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_15_Copy_ctor_baseILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEEC1ERKSI_EUlOT_T0_E_JRKSt7variantIJS6_S9_SB_SD_SF_SH_EEEEDcOSN_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_ZSt12construct_atIN5arrow5DatumEJRS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS2_6ScalarEES5_INS2_9ArrayDataEES5_INS2_12ChunkedArrayEES5_INS2_11RecordBatchEES5_INS2_5TableEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(24) %i.b) #31
  resume { ptr, i32 } %i.f

_ZSt12construct_atIN5arrow5DatumEJRS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load i8, ptr %i.g, align 8, !tbaa !69
  store i8 %i.h, ptr %i.e, align 8, !tbaa !69
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !435
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %i.j, ptr %i.a, align 8, !tbaa !435
  br label %_ZNSt6vectorIN5arrow5DatumESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZNSt6vectorIN5arrow5DatumESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZNSt6vectorIN5arrow5DatumESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit

_ZNSt6vectorIN5arrow5DatumESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit: ; preds = %_ZSt12construct_atIN5arrow5DatumEJRS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i, %bb.d
  store ptr null, ptr %0, align 8, !tbaa !274, !alias.scope !1072
  ret void
}

declare void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext, ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #6

declare void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #6

declare void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #18

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN5arrow5DatumESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.anon.450, align 8            ; 5 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.013 = phi ptr [ %i.i, %bb.b ], [ %2, %bb.a ]  ; 5 uses
  %.sroa.08.012 = phi ptr [ %i.h, %bb.b ], [ %0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.013, i64 16 ; 2 uses
  store i8 -1, ptr %i.b, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  store ptr %.013, ptr %3, align 8, !tbaa !437
  invoke void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_15_Copy_ctor_baseILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEEC1ERKSI_EUlOT_T0_E_JRKSt7variantIJS6_S9_SB_SD_SF_SH_EEEEDcOSN_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.08.012)
          to label %bb.b unwind label %.body

.body:                                            ; preds = %.lr.ph
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS2_6ScalarEES5_INS2_9ArrayDataEES5_INS2_12ChunkedArrayEES5_INS2_11RecordBatchEES5_INS2_5TableEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(24) %.013) #31
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  %i.e = call ptr @__cxa_begin_catch(ptr %i.d) #31 ; 0 uses
  invoke void @_ZSt8_DestroyIPN5arrow5DatumEEvT_S3_(ptr noundef %2, ptr noundef nonnull %.013)
          to label %bb.c unwind label %bb.d

bb.b:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.08.012, i64 16
  %i.g = load i8, ptr %i.f, align 8, !tbaa !69
  store i8 %i.g, ptr %i.b, align 8, !tbaa !69
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.08.012, i64 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.013, i64 24 ; 2 uses
  %i.j = icmp eq ptr %i.h, %1
  br i1 %i.j, label %._crit_edge, label %.lr.ph, !llvm.loop !1075

bb.c:                                             ; preds = %.body
  invoke void @__cxa_rethrow() #33
          to label %bb.g unwind label %bb.d

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.i, %bb.b ]
  ret ptr %.0.lcssa

bb.d:                                             ; preds = %bb.c, %.body
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.k

bb.f:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  call void @__clang_call_terminate(ptr %i.m) #29
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_15_Copy_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS4_8FieldRefESaISD_EEEEC1ERKSG_EUlOT_T0_E_JRKSt7variantIJS5_SB_SF_EEEEDcOSL_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(33) %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !101
  switch i8 %i.b, label %bb.n [
    i8 0, label %bb.b
    i8 1, label %bb.h
    i8 2, label %bb.m
    i8 -1, label %bb.o
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !590    ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !262  ; 2 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !119    ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = icmp ugt i64 %i.i, 9223372036854775804
  br i1 %i.j, label %.noexc.i.i.i.i.i.i.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i, !prof !87

.noexc.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #33
  unreachable
end_hunk_14
begin_hunk_15_@"_ZN9__gnu_cxx5__ops10_Iter_predIZN5arrow8internal12FilterVectorINS2_7compute10ExpressionEZNS5_12_GLOBAL__N_123ExtractKnownFieldValuesEPSt6vectorIS6_SaIS6_EEPNS5_16KnownFieldValuesEE3$_0EES8_IT_SaISF_EESH_OT0_EUlRKS6_E_EclINS_17__normal_iteratorIPS6_SA_EEEEbSF_":bb.a
  %.not.i.i.i.i6.i.i = icmp eq ptr %i.hi, %i.hh
  br i1 %.not.i.i.i.i6.i.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !124

_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.loopexit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre.i.i.i.i = load ptr, ptr %11, align 16, !tbaa !121
  br label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.i.i.i.i

_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.i.i.i.i: ; preds = %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.loopexit.i.i.i.i, %bb.au
  %i.hj = phi ptr [ %.pre.i.i.i.i, %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.loopexit.i.i.i.i ], [ %i.hf, %bb.au ] ; 3 uses
  %.not.i.i.i.i.i7.i.i = icmp eq ptr %i.hj, null
  br i1 %.not.i.i.i.i.i7.i.i, label %"_ZZN5arrow8internal12FilterVectorINS_7compute10ExpressionEZNS2_12_GLOBAL__N_123ExtractKnownFieldValuesEPSt6vectorIS3_SaIS3_EEPNS2_16KnownFieldValuesEE3$_0EES5_IT_SaISC_EESE_OT0_ENKUlRKS3_E_clESI_.exit", label %bb.av

bb.av:                                            ; preds = %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.i.i.i.i
  %i.hk = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.hl = load ptr, ptr %i.hk, align 16, !tbaa !110
  %i.hm = ptrtoint ptr %i.hl to i64
  %i.hn = ptrtoint ptr %i.hj to i64
  %i.ho = sub i64 %i.hm, %i.hn
  call void @_ZdlPvm(ptr noundef nonnull %i.hj, i64 noundef %i.ho) #32, !inline_history !126
  br label %"_ZZN5arrow8internal12FilterVectorINS_7compute10ExpressionEZNS2_12_GLOBAL__N_123ExtractKnownFieldValuesEPSt6vectorIS3_SaIS3_EEPNS2_16KnownFieldValuesEE3$_0EES5_IT_SaISC_EESE_OT0_ENKUlRKS3_E_clESI_.exit"

bb.aw:                                            ; preds = %_ZN5arrow5DatumD2Ev.exit.i.i.i.i.i.i.i
  unreachable

"_ZZN5arrow8internal12FilterVectorINS_7compute10ExpressionEZNS2_12_GLOBAL__N_123ExtractKnownFieldValuesEPSt6vectorIS3_SaIS3_EEPNS2_16KnownFieldValuesEE3$_0EES5_IT_SaISC_EESE_OT0_ENKUlRKS3_E_clESI_.exit": ; preds = %bb.at, %_ZN5arrow7compute12_GLOBAL__N_120ExtractOneFieldValueERKNS0_10ExpressionE.exit.i.i, %_ZNSt13unordered_mapIN5arrow8FieldRefENS0_5DatumENS1_4HashESt8equal_toIS1_ESaISt4pairIKS1_S2_EEE6insertIS6_IS1_S2_EEENSt9enable_ifIXsr16is_constructibleIS8_OT_EE5valueES6_INSt8__detail14_Node_iteratorIS8_Lb0ELb1EEEbEE4typeESF_.exit.i.i, %_ZN5arrow5DatumD2Ev.exit.i.i.i.i.i.i.i, %bb.ar, %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i, %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.i.i.i.i, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  ret i1 %i.gk
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt14_Optional_baseISt4pairIN5arrow8FieldRefENS1_5DatumEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.365, align 1            ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !1133, !range !189, !noundef !66
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !1133
  br i1 %i.c, label %bb.b, label %_ZNSt17_Optional_payloadISt4pairIN5arrow8FieldRefENS1_5DatumEELb0ELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_ZN5arrow5DatumD2Ev.exit.i.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  call void @__clang_call_terminate(ptr %i.f) #29
  unreachable

_ZN5arrow5DatumD2Ev.exit.i.i.i.i:                 ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  invoke void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS2_8FieldRefESaISB_EEEE8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(65) %0)
          to label %_ZNSt17_Optional_payloadISt4pairIN5arrow8FieldRefENS1_5DatumEELb0ELb0ELb0EED2Ev.exit unwind label %bb.d, !inline_history !128

bb.d:                                             ; preds = %_ZN5arrow5DatumD2Ev.exit.i.i.i.i
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  call void @__clang_call_terminate(ptr %i.h) #29, !inline_history !128
  unreachable

_ZNSt17_Optional_payloadISt4pairIN5arrow8FieldRefENS1_5DatumEELb0ELb0ELb0EED2Ev.exit: ; preds = %bb.a, %_ZN5arrow5DatumD2Ev.exit.i.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow10NullScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !79   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !80
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !82
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !83
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !522
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !83
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !522
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !87

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt4pairIN5arrow8FieldRefENS0_5DatumEEC2ERKS1_RKS2_Qcl16_S_constructibleIRKT_RKT0_EE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.anon.450, align 8            ; 5 uses
  %4 = alloca %class.anon.463, align 8            ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i8 -1, ptr %i.a, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  store ptr %0, ptr %4, align 8, !tbaa !590
  invoke void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_15_Copy_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS4_8FieldRefESaISD_EEEEC1ERKSG_EUlOT_T0_E_JRKSt7variantIJS5_SB_SF_EEEEDcOSL_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %_ZN5arrow8FieldRefC2ERKS0_.exit unwind label %bb.b, !inline_history !593

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  invoke void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS2_8FieldRefESaISB_EEEE8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %common.resume unwind label %bb.c, !inline_history !594

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  call void @__clang_call_terminate(ptr %i.d) #29, !inline_history !594
  unreachable

common.resume:                                    ; preds = %.body, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.i, %.body ]
  resume { ptr, i32 } %common.resume.op

_ZN5arrow8FieldRefC2ERKS0_.exit:                  ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i8, ptr %i.e, align 8, !tbaa !101
  store i8 %i.f, ptr %i.a, align 8, !tbaa !101
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 -1, ptr %i.h, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  store ptr %i.g, ptr %3, align 8, !tbaa !437
  invoke void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_15_Copy_ctor_baseILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEEC1ERKSI_EUlOT_T0_E_JRKSt7variantIJS6_S9_SB_SD_SF_SH_EEEEDcOSN_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.d unwind label %.body

.body:                                            ; preds = %_ZN5arrow8FieldRefC2ERKS0_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS2_6ScalarEES5_INS2_9ArrayDataEES5_INS2_12ChunkedArrayEES5_INS2_11RecordBatchEES5_INS2_5TableEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(24) %i.g) #31
  invoke void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS2_8FieldRefESaISB_EEEE8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %common.resume unwind label %bb.e, !inline_history !128

bb.d:                                             ; preds = %_ZN5arrow8FieldRefC2ERKS0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load i8, ptr %i.j, align 8, !tbaa !69
  store i8 %i.k, ptr %i.h, align 8, !tbaa !69
  ret void

bb.e:                                             ; preds = %.body
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  call void @__clang_call_terminate(ptr %i.m) #29, !inline_history !128
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow10NullScalarELN9__gnu_cxx12_Lock_policyE2EEC2ISaIvEJEEESt20_Sp_alloc_shared_tagIT_EDpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !1143
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #30, !noalias !1146 ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 1, ptr %i.c, align 8, !tbaa !80
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 4 uses
  store i32 1, ptr %i.d, align 4, !tbaa !82
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow10NullScalarESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.b, align 8, !tbaa !83
  %i.e = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow4nullEv()
          to label %.noexc.i unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow10NullScalarESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit8.i ; 2 uses

.noexc.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !79   ; 2 uses
  %i.h = load <2 x ptr>, ptr %i.e, align 8, !tbaa !94
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.noexc.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.j = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load i32, ptr %i.i, align 4, !tbaa !3
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.i, align 4, !tbaa !3
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.m = atomicrmw volatile add ptr %i.i, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.e

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow10NullScalarESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit8.i: ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 64) #32
  resume { ptr, i32 } %i.n

bb.e:                                             ; preds = %.noexc.i, %bb.c, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store <2 x ptr> %i.h, ptr %i.r, align 8, !tbaa !94
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i8 0, ptr %i.s, align 8, !tbaa !182
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow10NullScalarE, i64 16), ptr %i.o, align 8, !tbaa !83
  store ptr %i.b, ptr %i.a, align 8, !tbaa !79
  store ptr %i.o, ptr %0, align 8, !tbaa !1149
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !1150
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i3.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i3.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.thread

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.thread: ; preds = %bb.e
  %i.v = load i32, ptr %i.d, align 4, !tbaa !3
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.d, align 4, !tbaa !3
  br label %_ZNSt12__shared_ptrIN5arrow10NullScalarELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS1_S1_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i: ; preds = %bb.e
  %i.x = atomicrmw volatile add ptr %i.d, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i.i.i = load ptr, ptr %i.t, align 8, !tbaa !652 ; 4 uses
  %.not6.i.i.i.i = icmp eq ptr %.pre.i.i.i, null
  br i1 %.not6.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow10NullScalarELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS1_S1_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 12 ; 3 uses
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i7.i.i.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i7.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = load i32, ptr %i.y, align 4, !tbaa !3   ; 2 uses
  %i.ab = add nsw i32 %i.aa, -1
  store i32 %i.ab, ptr %i.y, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ac = atomicrmw volatile add ptr %i.y, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i = phi i32 [ %i.aa, %bb.g ], [ %i.ac, %bb.h ]
  %i.ad = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ad, label %bb.i, label %_ZNSt12__shared_ptrIN5arrow10NullScalarELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS1_S1_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  %i.ae = load ptr, ptr %.pre.i.i.i, align 8, !tbaa !83
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %.pre.i.i.i) #31, !inline_history !1151
  br label %_ZNSt12__shared_ptrIN5arrow10NullScalarELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS1_S1_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit

_ZNSt12__shared_ptrIN5arrow10NullScalarELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS1_S1_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.thread
  store ptr %i.b, ptr %i.t, align 8, !tbaa !652
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow10NullScalarESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow10NullScalarESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow10NullScalarEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !83
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(41) %i.a) #31, !inline_history !1152
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow10NullScalarESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow10NullScalarESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow10NullScalarESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1153 ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !86
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #31
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #21

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow10NullScalarD0Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow6ScalarE, i64 16), ptr %0, align 8, !tbaa !83
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !79   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !80
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !82
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !83
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !1155
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !83
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !1155
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !87

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !1156
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.c, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !652  ; 4 uses
  %.not.i.i.i1.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i1.i, label %_ZN5arrow6ScalarD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 12 ; 3 uses
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = load i32, ptr %i.t, align 4, !tbaa !3    ; 2 uses
  %i.w = add nsw i32 %i.v, -1
  store i32 %i.w, ptr %i.t, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.x = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.v, %bb.i ], [ %i.x, %bb.j ]
  %i.y = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.y, label %bb.k, label %_ZN5arrow6ScalarD2Ev.exit

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !83
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31, !inline_history !1157
  br label %_ZN5arrow6ScalarD2Ev.exit

_ZN5arrow6ScalarD2Ev.exit:                        ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.k
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ScalarD0Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow6ScalarE, i64 16), ptr %0, align 8, !tbaa !83
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !79   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !80
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !82
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !83
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !1155
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !83
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !1155
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !87

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !1156
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.c, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !652  ; 4 uses
  %.not.i.i.i1.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i1.i, label %_ZN5arrow6ScalarD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 12 ; 3 uses
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = load i32, ptr %i.t, align 4, !tbaa !3    ; 2 uses
  %i.w = add nsw i32 %i.v, -1
  store i32 %i.w, ptr %i.t, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.x = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.v, %bb.i ], [ %i.x, %bb.j ]
  %i.y = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.y, label %bb.k, label %_ZN5arrow6ScalarD2Ev.exit

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !83
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31, !inline_history !1157
  br label %_ZN5arrow6ScalarD2Ev.exit

_ZN5arrow6ScalarD2Ev.exit:                        ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.k
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #32
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt10_HashtableIN5arrow8FieldRefESt4pairIKS1_NS0_5DatumEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS1_ENS1_4HashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJS2_IS1_S4_EEEES2_INS7_14_Node_iteratorIS5_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.365, align 1            ; 3 uses
  %3 = alloca %"struct.std::_Hashtable<arrow::FieldRef, std::pair<const arrow::FieldRef, arrow::Datum>, std::allocator<std::pair<const arrow::FieldRef, arrow::Datum>>, std::__detail::_Select1st, std::equal_to<arrow::FieldRef>, arrow::FieldRef::Hash, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, false, true>>::_Scoped_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  store ptr %0, ptr %3, align 8, !tbaa !1158
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #30 ; 13 uses
  store ptr null, ptr %i.a, align 8, !tbaa !423
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load i8, ptr %i.d, align 8, !tbaa !101   ; 2 uses
  switch i8 %i.e, label %bb.f [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.e
    i8 -1, label %_ZN5arrow8FieldRefC2EOS0_.exit.i.i.i.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = load <2 x ptr>, ptr %1, align 8, !tbaa !103
  store <2 x ptr> %i.f, ptr %i.b, align 8, !tbaa !103
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !105
  store ptr %i.i, ptr %i.g, align 8, !tbaa !105
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %1, i8 0, i64 24, i1 false)
  br label %_ZN5arrow8FieldRefC2EOS0_.exit.i.i.i.i

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  store ptr %i.j, ptr %i.b, align 8, !tbaa !107
  %i.k = load ptr, ptr %1, align 8, !tbaa !33     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !38   ; 3 uses
  %i.p = icmp ult i64 %i.o, 16
  tail call void @llvm.assume(i1 %i.p)
  %i.q = add nuw nsw i64 %i.o, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.j, ptr noundef nonnull align 8 dereferenceable(1) %i.l, i64 %i.q, i1 false)
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS5_8FieldRefESaISE_EEEEC1EOSH_EUlOT_T0_E_OSt7variantIJS6_SC_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESN_SQ_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  store ptr %i.k, ptr %i.b, align 8, !tbaa !33
  %i.r = load i64, ptr %i.l, align 8, !tbaa !86
  store i64 %i.r, ptr %i.j, align 8, !tbaa !86
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !38
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS5_8FieldRefESaISE_EEEEC1EOSH_EUlOT_T0_E_OSt7variantIJS6_SC_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESN_SQ_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS5_8FieldRefESaISE_EEEEC1EOSH_EUlOT_T0_E_OSt7variantIJS6_SC_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESN_SQ_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.d
  %i.s = phi i64 [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.o, %bb.d ]
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.s, ptr %i.u, align 8, !tbaa !38
  store ptr %i.l, ptr %1, align 8, !tbaa !33
  store i64 0, ptr %i.t, align 8, !tbaa !38
  store i8 0, ptr %i.l, align 8, !tbaa !86
  br label %_ZN5arrow8FieldRefC2EOS0_.exit.i.i.i.i

bb.e:                                             ; preds = %bb.a
  %i.v = load <2 x ptr>, ptr %1, align 8, !tbaa !108
  store <2 x ptr> %i.v, ptr %i.b, align 8, !tbaa !108
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !110
  store ptr %i.y, ptr %i.w, align 8, !tbaa !110
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %1, i8 0, i64 24, i1 false)
  br label %_ZN5arrow8FieldRefC2EOS0_.exit.i.i.i.i

bb.f:                                             ; preds = %bb.a
  unreachable

_ZN5arrow8FieldRefC2EOS0_.exit.i.i.i.i:           ; preds = %bb.e, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS5_8FieldRefESaISE_EEEEC1EOSH_EUlOT_T0_E_OSt7variantIJS6_SC_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESN_SQ_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.b, %bb.a
  store i8 %i.e, ptr %i.c, align 8, !tbaa !101
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !69   ; 2 uses
  %i.ab = icmp eq i8 %i.aa, 0
  br i1 %i.ab, label %_ZNSt10_HashtableIN5arrow8FieldRefESt4pairIKS1_NS0_5DatumEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS1_ENS1_4HashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJS2_IS1_S4_EEEEPNS7_16_Hashtable_allocISaINS7_10_Hash_nodeIS5_Lb1EEEEEEDpOT_.exit, label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %_ZN5arrow8FieldRefC2EOS0_.exit.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.af = load <2 x ptr>, ptr %i.ac, align 8, !tbaa !94
  store ptr null, ptr %i.ae, align 8, !tbaa !79
  store <2 x ptr> %i.af, ptr %i.ad, align 8, !tbaa !94
  store ptr null, ptr %i.ac, align 8, !tbaa !94
  br label %_ZNSt10_HashtableIN5arrow8FieldRefESt4pairIKS1_NS0_5DatumEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS1_ENS1_4HashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJS2_IS1_S4_EEEEPNS7_16_Hashtable_allocISaINS7_10_Hash_nodeIS5_Lb1EEEEEEDpOT_.exit

_ZNSt10_HashtableIN5arrow8FieldRefESt4pairIKS1_NS0_5DatumEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS1_ENS1_4HashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJS2_IS1_S4_EEEEPNS7_16_Hashtable_allocISaINS7_10_Hash_nodeIS5_Lb1EEEEEEDpOT_.exit: ; preds = %_ZN5arrow8FieldRefC2EOS0_.exit.i.i.i.i, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i8 %i.aa, ptr %i.ah, align 8, !tbaa !69
  store ptr %i.a, ptr %i.ag, align 8, !tbaa !1162
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !424
  %.not.not = icmp eq i64 %i.aj, 0
  br i1 %.not.not, label %bb.g, label %.critedge

bb.g:                                             ; preds = %_ZNSt10_HashtableIN5arrow8FieldRefESt4pairIKS1_NS0_5DatumEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS1_ENS1_4HashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJS2_IS1_S4_EEEEPNS7_16_Hashtable_allocISaINS7_10_Hash_nodeIS5_Lb1EEEEEEDpOT_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.h

end_hunk_15
begin_hunk_16_@_ZN5arrow8internal7ToCharsImJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_DpOT0_:bb.a
  br i1 %i.db, label %bb.ae, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i16

bb.ae:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i15
  %i.dc = icmp ult i64 %i.cs, 16
  tail call void @llvm.assume(i1 %i.dc)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i16: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i15
  %i.dd = load i64, ptr %i.a, align 8
  %i.de = select i1 %i.db, i64 15, i64 %i.dd
  %.not.i.i.i.i17 = icmp ugt i64 %i.cw, %i.de
  br i1 %.not.i.i.i.i17, label %bb.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i18

bb.af:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.cs, i64 noundef 0, ptr noundef null, i64 noundef %i.cy)
          to label %.noexc22 unwind label %bb.aj

.noexc22:                                         ; preds = %bb.af
  %.pre.i.i20 = load ptr, ptr %0, align 8, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i18: ; preds = %.noexc22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i16
  %i.df = phi ptr [ %i.ct, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i16 ], [ %.pre.i.i20, %.noexc22 ]
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.cs ; 2 uses
  %cond.i.i.i.i19 = icmp eq i64 %i.cy, 1
  br i1 %cond.i.i.i.i19, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i18
  store i8 0, ptr %i.dg, align 1, !tbaa !86
  br label %.sink.split.i.i14

bb.ah:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i18
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.dg, i8 0, i64 %i.cy, i1 false)
  br label %.sink.split.i.i14

bb.ai:                                            ; preds = %bb.ab
  %i.dh = icmp ult i64 %i.cw, %i.cs
  br i1 %i.dh, label %.sink.split.i.i14, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit23

.sink.split.i.i14:                                ; preds = %bb.ai, %bb.ah, %bb.ag
  store i64 %i.cw, ptr %i.b, align 8, !tbaa !38
  %i.di = load ptr, ptr %0, align 8, !tbaa !33
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.cw
  store i8 0, ptr %i.dj, align 1, !tbaa !86
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit23

bb.aj:                                            ; preds = %bb.af, %bb.ad
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.ak:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.aj
  %.pn10 = phi { ptr, i32 } [ %i.dk, %bb.aj ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.dl = load ptr, ptr %0, align 8, !tbaa !33    ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.a
  br i1 %i.dm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ak
  %i.dn = load i64, ptr %i.a, align 8, !tbaa !86
  %i.do = add i64 %i.dn, 1
  tail call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.do) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit23: ; preds = %.sink.split.i.i14, %bb.ai
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn10
}

declare void @_ZN5arrow8internal14DieWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

declare void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !807  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !810    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.59) #33
  unreachable

_ZNKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #30 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load <2 x ptr>, ptr %2, align 8, !tbaa !94
  store ptr null, ptr %i.r, align 8, !tbaa !79
  store <2 x ptr> %i.s, ptr %i.q, align 8, !tbaa !94
  store ptr null, ptr %2, align 8, !tbaa !447
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1242)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1245)
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.u = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !94, !alias.scope !1245, !noalias !1242
  store ptr null, ptr %i.t, align 8, !tbaa !79, !alias.scope !1245, !noalias !1242
  store <2 x ptr> %i.u, ptr %.012.i.i.i, align 8, !tbaa !94, !alias.scope !1242, !noalias !1245
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !447, !alias.scope !1245, !noalias !1242
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !1247

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.w, %.lr.ph.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.ab, %.lr.ph.i.i.i17 ], [ %i.x, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.aa, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1248)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1251)
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.z = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !94, !alias.scope !1251, !noalias !1248
  store ptr null, ptr %i.y, align 8, !tbaa !79, !alias.scope !1251, !noalias !1248
  store <2 x ptr> %i.z, ptr %.012.i.i.i18, align 8, !tbaa !94, !alias.scope !1248, !noalias !1251
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !447, !alias.scope !1251, !noalias !1248
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.aa, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !1247

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.x, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.ab, %.lr.ph.i.i.i17 ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !822
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #32
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !810
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !807
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ag, ptr %i.ac, align 8, !tbaa !822
  ret void
}

declare noundef i64 @_ZNK5arrow16KeyValueMetadata4sizeEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5arrow16KeyValueMetadata3keyB5cxx11El(ptr noundef nonnull align 8 dereferenceable(48), i64 noundef) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5arrow16KeyValueMetadata5valueB5cxx11El(ptr noundef nonnull align 8 dereferenceable(48), i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZZN5arrow7compute11DeserializeESt10shared_ptrINS_6BufferEEEN15FromRecordBatch9GetScalarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::internal::StringConverter", align 1 ; 3 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %6 = alloca %"class.std::shared_ptr.210", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.b = load ptr, ptr %2, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !38
  %i.e = load atomic i8, ptr @_ZGVZN5arrow8internal10ParseValueINS_9Int32TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.b, label %_ZZN5arrow7compute11DeserializeESt10shared_ptrINS_6BufferEEEN15FromRecordBatch12ParseIntegerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPi.exit, !prof !236

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5arrow8internal10ParseValueINS_9Int32TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type) #31
  %.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i, label %_ZZN5arrow7compute11DeserializeESt10shared_ptrINS_6BufferEEEN15FromRecordBatch12ParseIntegerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZZN5arrow8internal10ParseValueINS_9Int32TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, i64 8), i8 0, i64 32, i1 false)
  store i32 7, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow8internal10ParseValueINS_9Int32TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, i64 40), align 8, !tbaa !196
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZZN5arrow8internal10ParseValueINS_9Int32TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, i64 48), i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN5arrow9Int32TypeE, i64 16), ptr @_ZZN5arrow8internal10ParseValueINS_9Int32TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, align 8, !tbaa !83
  %i.h = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5arrow11IntegerTypeD2Ev, ptr nonnull @_ZZN5arrow8internal10ParseValueINS_9Int32TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, ptr nonnull @__dso_handle) #31 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5arrow8internal10ParseValueINS_9Int32TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type) #31
  br label %_ZZN5arrow7compute11DeserializeESt10shared_ptrINS_6BufferEEEN15FromRecordBatch12ParseIntegerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPi.exit

_ZZN5arrow7compute11DeserializeESt10shared_ptrINS_6BufferEEEN15FromRecordBatch12ParseIntegerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPi.exit: ; preds = %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.i = call noundef zeroext i1 @_ZN5arrow8internal31StringToSignedIntConverterMixinINS_9Int32TypeEE7ConvertERKS2_PKcmPi(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN5arrow8internal10ParseValueINS_9Int32TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, ptr noundef %i.b, i64 noundef %i.d, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br i1 %i.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_ZZN5arrow7compute11DeserializeESt10shared_ptrINS_6BufferEEEN15FromRecordBatch12ParseIntegerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(28) @.str.78)
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %4) #31
  %i.j = load ptr, ptr %4, align 8, !tbaa !274    ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.e, !prof !290

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !284, !range !189, !noundef !66
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %_ZN5arrow6StatusD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #31
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.t

bb.g:                                             ; preds = %_ZZN5arrow7compute11DeserializeESt10shared_ptrINS_6BufferEEEN15FromRecordBatch12ParseIntegerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPi.exit
  %i.n = load i32, ptr %i.a, align 4, !tbaa !3
  %i.o = load ptr, ptr %1, align 8, !tbaa !902, !nonnull !66, !align !239
  %i.p = call noundef i32 @_ZNK5arrow11RecordBatch11num_columnsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.o)
  %.not = icmp slt i32 %i.n, %i.p
  br i1 %.not, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @_ZN5arrow6Status8FromArgsIJRA27_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(27) @.str.79)
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #31
  %i.q = load ptr, ptr %5, align 8, !tbaa !274    ; 2 uses
  %.not.i3 = icmp eq ptr %i.q, null
  br i1 %.not.i3, label %_ZN5arrow6StatusD2Ev.exit4, label %bb.i, !prof !290

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !284, !range !189, !noundef !66
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %_ZN5arrow6StatusD2Ev.exit4, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #31
  br label %_ZN5arrow6StatusD2Ev.exit4

_ZN5arrow6StatusD2Ev.exit4:                       ; preds = %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.t

bb.k:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.u = load ptr, ptr %1, align 8, !tbaa !902, !nonnull !66, !align !239 ; 2 uses
  %i.v = load i32, ptr %i.a, align 4, !tbaa !3
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !83
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.210") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i32 noundef %i.v)
  %i.z = load ptr, ptr %6, align 8, !tbaa !447
  invoke void @_ZNK5arrow5Array9GetScalarEl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.222") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %i.z, i64 noundef 0)
          to label %bb.l unwind label %bb.s

bb.l:                                             ; preds = %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !79 ; 8 uses
  %.not.i.i5 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i5, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 4 uses
  %i.ad = load atomic i64, ptr %i.ac acquire, align 8 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 4294967297
  %i.af = trunc i64 %i.ad to i32                  ; 2 uses
  br i1 %i.ae, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.ac, align 8, !tbaa !80
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  store i32 0, ptr %i.ag, align 4, !tbaa !82
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !83
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #31, !inline_history !467
  %i.ak = load ptr, ptr %i.ab, align 8, !tbaa !83
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #31, !inline_history !467
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.o:                                             ; preds = %bb.m
  %i.an = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i = icmp eq i8 %i.an, 0
  br i1 %.not.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ao = add nsw i32 %i.af, -1
  store i32 %i.ao, ptr %i.ac, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.ap = atomicrmw volatile add ptr %i.ac, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i = phi i32 [ %i.af, %bb.p ], [ %i.ap, %bb.q ]
  %i.aq = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.aq, label %bb.r, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !87

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #31
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.l, %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %bb.t

bb.s:                                             ; preds = %bb.k
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  resume { ptr, i32 } %i.ar

bb.t:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit4, %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute7literalISt10shared_ptrINS_6ScalarEEEENS0_10ExpressionEOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::compute::Expression") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
_ZN5arrow5DatumC2EOS0_.exit.i:
  %2 = alloca %class.anon.365, align 1            ; 3 uses
  %3 = alloca %class.anon.365, align 1            ; 3 uses
  %4 = alloca %"struct.arrow::Datum", align 16    ; 7 uses
  %5 = alloca %"struct.arrow::Datum", align 8     ; 5 uses
  %6 = alloca %"class.std::shared_ptr.25", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %i.a, align 8, !tbaa !79
  store ptr null, ptr %6, align 8, !tbaa !71
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i8 1, ptr %i.d, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr null, ptr %i.c, align 8, !tbaa !79, !noalias !1253
  %i.f = load <2 x ptr>, ptr %1, align 8, !tbaa !94
  store ptr null, ptr %i.b, align 8, !tbaa !79
  store ptr null, ptr %1, align 8, !tbaa !71
  store <2 x ptr> %i.f, ptr %4, align 16, !tbaa !94, !noalias !1253
  store ptr null, ptr %5, align 8, !tbaa !94, !noalias !1253
  store i8 1, ptr %i.e, align 16, !tbaa !69, !noalias !1253
  invoke void @_ZN5arrow7compute10ExpressionC1ENS_5DatumE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %4)
          to label %bb.a unwind label %.body

bb.a:                                             ; preds = %_ZN5arrow5DatumC2EOS0_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31, !noalias !1253
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  call void @__clang_call_terminate(ptr %i.h) #29
  unreachable

.body:                                            ; preds = %_ZN5arrow5DatumC2EOS0_.exit.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow5DatumD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #31
  call void @_ZN5arrow5DatumD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #31
  call void @_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #31
  resume { ptr, i32 } %i.i

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !1253
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #29
  unreachable
end_hunk_16
begin_hunk_17_@_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a
  %.013.i.i.i28 = phi ptr [ %i.bv, %_ZSt19__relocate_object_aIN5arrow8FieldRefES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i30 ], [ %i.aw, %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 10 uses
  %.0912.i.i.i29 = phi ptr [ %i.bu, %_ZSt19__relocate_object_aIN5arrow8FieldRefES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i30 ], [ %1, %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 15 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1289)
  call void @llvm.experimental.noalias.scope.decl(metadata !1292)
  %i.ax = getelementptr inbounds nuw i8, ptr %.0912.i.i.i29, i64 32
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !101, !alias.scope !1292, !noalias !1289 ; 2 uses
  switch i8 %i.ay, label %bb.o [
    i8 0, label %bb.k
    i8 1, label %bb.l
    i8 2, label %bb.n
    i8 -1, label %_ZSt19__relocate_object_aIN5arrow8FieldRefES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i30
  ]

bb.k:                                             ; preds = %.lr.ph.i.i.i27
  %i.az = load <2 x ptr>, ptr %.0912.i.i.i29, align 8, !tbaa !103, !alias.scope !1292, !noalias !1289
  store <2 x ptr> %i.az, ptr %.013.i.i.i28, align 8, !tbaa !103, !alias.scope !1289, !noalias !1292
  %i.ba = getelementptr inbounds nuw i8, ptr %.013.i.i.i28, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %.0912.i.i.i29, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !105, !alias.scope !1292, !noalias !1289
  store ptr %i.bc, ptr %i.ba, align 8, !tbaa !105, !alias.scope !1289, !noalias !1292
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.0912.i.i.i29, i8 0, i64 24, i1 false), !alias.scope !1292, !noalias !1289
  br label %_ZSt19__relocate_object_aIN5arrow8FieldRefES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i30

bb.l:                                             ; preds = %.lr.ph.i.i.i27
  %i.bd = getelementptr inbounds nuw i8, ptr %.013.i.i.i28, i64 16 ; 3 uses
  store ptr %i.bd, ptr %.013.i.i.i28, align 8, !tbaa !107, !alias.scope !1289, !noalias !1292
  %i.be = load ptr, ptr %.0912.i.i.i29, align 8, !tbaa !33, !alias.scope !1292, !noalias !1289 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.0912.i.i.i29, i64 16 ; 5 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i33

bb.m:                                             ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %.0912.i.i.i29, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !38, !alias.scope !1292, !noalias !1289 ; 3 uses
  %i.bj = icmp ult i64 %i.bi, 16
  call void @llvm.assume(i1 %i.bj)
  %i.bk = add nuw nsw i64 %i.bi, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bd, ptr noundef nonnull align 8 dereferenceable(1) %i.bf, i64 %i.bk, i1 false), !alias.scope !1294
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS5_8FieldRefESaISE_EEEEC1EOSH_EUlOT_T0_E_OSt7variantIJS6_SC_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESN_SQ_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i33: ; preds = %bb.l
  store ptr %i.be, ptr %.013.i.i.i28, align 8, !tbaa !33, !alias.scope !1289, !noalias !1292
  %i.bl = load i64, ptr %i.bf, align 8, !tbaa !86, !alias.scope !1292, !noalias !1289
  store i64 %i.bl, ptr %i.bd, align 8, !tbaa !86, !alias.scope !1289, !noalias !1292
  %.phi.trans.insert.i.i.i.i34 = getelementptr inbounds nuw i8, ptr %.0912.i.i.i29, i64 8
  %.pre.i.i.i.i35 = load i64, ptr %.phi.trans.insert.i.i.i.i34, align 8, !tbaa !38, !alias.scope !1292, !noalias !1289
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS5_8FieldRefESaISE_EEEEC1EOSH_EUlOT_T0_E_OSt7variantIJS6_SC_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESN_SQ_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i36

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS5_8FieldRefESaISE_EEEEC1EOSH_EUlOT_T0_E_OSt7variantIJS6_SC_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESN_SQ_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i36: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i33, %bb.m
  %i.bm = phi i64 [ %.pre.i.i.i.i35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i33 ], [ %i.bi, %bb.m ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.0912.i.i.i29, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %.013.i.i.i28, i64 8
  store i64 %i.bm, ptr %i.bo, align 8, !tbaa !38, !alias.scope !1289, !noalias !1292
  store ptr %i.bf, ptr %.0912.i.i.i29, align 8, !tbaa !33, !alias.scope !1292, !noalias !1289
  store i64 0, ptr %i.bn, align 8, !tbaa !38, !alias.scope !1292, !noalias !1289
  store i8 0, ptr %i.bf, align 8, !tbaa !86, !alias.scope !1292, !noalias !1289
  br label %_ZSt19__relocate_object_aIN5arrow8FieldRefES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i30

bb.n:                                             ; preds = %.lr.ph.i.i.i27
  %i.bp = load <2 x ptr>, ptr %.0912.i.i.i29, align 8, !tbaa !108, !alias.scope !1292, !noalias !1289
  store <2 x ptr> %i.bp, ptr %.013.i.i.i28, align 8, !tbaa !108, !alias.scope !1289, !noalias !1292
  %i.bq = getelementptr inbounds nuw i8, ptr %.013.i.i.i28, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %.0912.i.i.i29, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !110, !alias.scope !1292, !noalias !1289
  store ptr %i.bs, ptr %i.bq, align 8, !tbaa !110, !alias.scope !1289, !noalias !1292
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.0912.i.i.i29, i8 0, i64 24, i1 false), !alias.scope !1292, !noalias !1289
  br label %_ZSt19__relocate_object_aIN5arrow8FieldRefES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i30

bb.o:                                             ; preds = %.lr.ph.i.i.i27
  unreachable

_ZSt19__relocate_object_aIN5arrow8FieldRefES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i30: ; preds = %bb.n, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS5_8FieldRefESaISE_EEEEC1EOSH_EUlOT_T0_E_OSt7variantIJS6_SC_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESN_SQ_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i36, %bb.k, %.lr.ph.i.i.i27
  %i.bt = getelementptr inbounds nuw i8, ptr %.013.i.i.i28, i64 32
  store i8 %i.ay, ptr %i.bt, align 8, !tbaa !101, !alias.scope !1289, !noalias !1292
  call void @_ZSt10destroy_atIN5arrow8FieldRefEEvPT_(ptr noundef nonnull %.0912.i.i.i29)
  %i.bu = getelementptr inbounds nuw i8, ptr %.0912.i.i.i29, i64 40 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.013.i.i.i28, i64 40 ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.bu, %i.b
  br i1 %.not.i.i.i31, label %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit37, label %.lr.ph.i.i.i27, !llvm.loop !1095

_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit37: ; preds = %_ZSt19__relocate_object_aIN5arrow8FieldRefES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i30, %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i32 = phi ptr [ %i.aw, %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.bv, %_ZSt19__relocate_object_aIN5arrow8FieldRefES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i30 ]
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i38 = icmp eq ptr %i.c, null
  br i1 %.not.i38, label %_ZNSt12_Vector_baseIN5arrow8FieldRefESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit37
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !110
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = sub i64 %i.by, %i.e
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bz) #32
  br label %_ZNSt12_Vector_baseIN5arrow8FieldRefESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN5arrow8FieldRefESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit37, %bb.p
  store ptr %i.p, ptr %0, align 8, !tbaa !121
  store ptr %.0.lcssa.i.i.i32, ptr %i.a, align 8, !tbaa !122
  %i.ca = getelementptr inbounds nuw [40 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ca, ptr %i.bw, align 8, !tbaa !110
  ret void

bb.q:                                             ; preds = %_ZSt8_DestroyIPN5arrow8FieldRefES1_EvT_S3_RSaIT0_E.exit
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.r unwind label %bb.s

_ZSt8_DestroyIPN5arrow8FieldRefES1_EvT_S3_RSaIT0_E.exit: ; preds = %bb.c
  %i.cc = extractvalue { ptr, i32 } %i.s, 0
  %i.cd = call ptr @__cxa_begin_catch(ptr %i.cc) #31 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #32
  invoke void @__cxa_rethrow() #33
          to label %bb.t unwind label %bb.q

bb.r:                                             ; preds = %bb.q
  resume { ptr, i32 } %i.cb

bb.s:                                             ; preds = %bb.q
  %i.ce = landingpad { ptr, i32 }
          catch ptr null
  %i.cf = extractvalue { ptr, i32 } %i.ce, 0
  call void @__clang_call_terminate(ptr %i.cf) #29
  unreachable

bb.t:                                             ; preds = %_ZSt8_DestroyIPN5arrow8FieldRefES1_EvT_S3_RSaIT0_E.exit
  unreachable
}

declare void @_ZN5arrow8FieldRef7FlattenESt6vectorIS0_SaIS0_EE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal12JoinToStringIJRA40_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1230, !nonnull !66, !align !239
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(40) %1) #31
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(40) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA40_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_ENKUlOT_E0_clIS4_EEDaSH_.exit unwind label %bb.c ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA40_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_ENKUlOT_E0_clIS4_EEDaSH_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !1230, !nonnull !66, !align !239
  %i.f = load ptr, ptr %2, align 8, !tbaa !33
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !38
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %i.f, i64 noundef %i.h)
          to label %_ZZN5arrow8internal12JoinToStringIJRA40_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_ENKUlOT_E_clISC_EEDaSH_.exit unwind label %bb.d ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA40_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_ENKUlOT_E_clISC_EEDaSH_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA40_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_ENKUlOT_E0_clIS4_EEDaSH_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA40_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_ENKUlOT_E_clISC_EEDaSH_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  ret void

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.d:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA40_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_ENKUlOT_E0_clIS4_EEDaSH_.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA40_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_ENKUlOT_E_clISC_EEDaSH_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %.pn6 = phi { ptr, i32 } [ %i.l, %bb.e ], [ %i.k, %bb.d ], [ %i.j, %bb.c ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  resume { ptr, i32 } %.pn6
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow7compute15FunctionOptionsELN9__gnu_cxx12_Lock_policyE2EEC2IS2_St14default_deleteIS2_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !936    ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !136
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !79
  %i.c = icmp eq ptr %i.a, null
  br i1 %i.c, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #30
          to label %bb.c unwind label %bb.p       ; 10 uses

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %1, align 8, !tbaa !936
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 7 uses
  store i32 1, ptr %i.e, align 8, !tbaa !80
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 2 uses
  store i32 1, ptr %i.f, align 4, !tbaa !82
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt19_Sp_counted_deleterIPN5arrow7compute15FunctionOptionsESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.d, align 8, !tbaa !83
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.a, ptr %i.g, align 8, !tbaa !1295
  %i.h = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread: ; preds = %bb.c
  store i32 2, ptr %i.e, align 8, !tbaa !3
  br label %bb.j

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i: ; preds = %bb.c
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i = load ptr, ptr %i.b, align 8, !tbaa !79 ; 8 uses
  %.not8.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not8.i, label %bb.j, label %bb.d

bb.d:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %.pr.pre.i, i64 8 ; 4 uses
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.j, align 8, !tbaa !80
  %i.n = getelementptr inbounds nuw i8, ptr %.pr.pre.i, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !82
  %i.o = load ptr, ptr %.pr.pre.i, align 8, !tbaa !83
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #31, !inline_history !1297
  %i.r = load ptr, ptr %.pr.pre.i, align 8, !tbaa !83
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #31, !inline_history !1297
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i9.i = icmp eq i8 %i.u, 0
  br i1 %.not.i9.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = add nsw i32 %i.m, -1
  store i32 %i.v, ptr %i.j, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.w = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i = phi i32 [ %i.m, %bb.g ], [ %i.w, %bb.h ]
  %i.x = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.x, label %bb.i, label %bb.j, !prof !87

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #31
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.e, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i
  store ptr %i.d, ptr %i.b, align 8, !tbaa !79
  %i.y = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.e, align 8, !tbaa !80
  store i32 0, ptr %i.f, align 4, !tbaa !82
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !83
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #31, !inline_history !522
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !83
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #31, !inline_history !522
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i7 = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i7, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = add nsw i32 %i.aa, -1
  store i32 %i.ai, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8

bb.n:                                             ; preds = %bb.l
  %i.aj = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8: ; preds = %bb.n, %bb.m
  %.0.i.i.i9 = phi i32 [ %i.aa, %bb.m ], [ %i.aj, %bb.n ]
  %i.ak = icmp eq i32 %.0.i.i.i9, 1
  br i1 %i.ak, label %bb.o, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !87

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #31
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8, %bb.o
  ret void

bb.p:                                             ; preds = %bb.b
  %i.al = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #31
  resume { ptr, i32 } %i.al
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow7compute15FunctionOptionsESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow7compute15FunctionOptionsESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1298 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNKSt14default_deleteIN5arrow7compute15FunctionOptionsEEclEPS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !83
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !1300
  br label %_ZNKSt14default_deleteIN5arrow7compute15FunctionOptionsEEclEPS2_.exit

_ZNKSt14default_deleteIN5arrow7compute15FunctionOptionsEEclEPS2_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow7compute15FunctionOptionsESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt19_Sp_counted_deleterIPN5arrow7compute15FunctionOptionsESt14default_deleteIS3_ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt19_Sp_counted_deleterIPN5arrow7compute15FunctionOptionsESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1153 ; 3 uses
  %i.c = icmp eq ptr %i.b, @_ZTSSt14default_deleteIN5arrow7compute15FunctionOptionsEE
  br i1 %i.c, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.b, align 1, !tbaa !86
  %.not.i = icmp eq i8 %i.d, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread3, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.b
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(54) @_ZTSSt14default_deleteIN5arrow7compute15FunctionOptionsEE) #31
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.a, %_ZNKSt9type_infoeqERKS_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread3:             ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit, %_ZNKSt9type_infoeqERKS_.exit.thread
  %i.h = phi ptr [ %i.g, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.b ]
  ret ptr %i.h
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow2io12BufferReaderD2Ev(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !83
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %i.a, i64 -56
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.e
  store ptr %i.c, ptr %i.f, align 8, !tbaa !83
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load ptr, ptr %0, align 8, !tbaa !83
  %i.j = getelementptr i8, ptr %i.i, i64 -64
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %0, i64 %i.k
  store ptr %i.h, ptr %i.l, align 8, !tbaa !83
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5arrow2io12BufferReaderE, i64 256), ptr %i.m, align 8, !tbaa !83
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !79   ; 8 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 4 uses
  %i.q = load atomic i64, ptr %i.p acquire, align 8 ; 2 uses
  %i.r = icmp eq i64 %i.q, 4294967297
  %i.s = trunc i64 %i.q to i32                    ; 2 uses
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.p, align 8, !tbaa !80
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 0, ptr %i.t, align 4, !tbaa !82
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !83
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #31, !inline_history !871
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !83
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #31, !inline_history !871
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.aa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = add nsw i32 %i.s, -1
  store i32 %i.ab, ptr %i.p, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.ac = atomicrmw volatile add ptr %i.p, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.s, %bb.e ], [ %i.ac, %bb.f ]
  %i.ad = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ad, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !87

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #31
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  store ptr %i.af, ptr %0, align 8, !tbaa !83
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = getelementptr i8, ptr %i.af, i64 -56
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds i8, ptr %0, i64 %i.aj
  store ptr %i.ah, ptr %i.ak, align 8, !tbaa !83
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = load ptr, ptr %0, align 8, !tbaa !83
  %i.ao = getelementptr i8, ptr %i.an, i64 -64
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds i8, ptr %0, i64 %i.ap
  store ptr %i.am, ptr %i.aq, align 8, !tbaa !83
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5arrow2io8internal34RandomAccessFileConcurrencyWrapperINS0_12BufferReaderEEE, i64 248), ptr %i.m, align 8, !tbaa !83
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !79 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow2io8internal34RandomAccessFileConcurrencyWrapperINS0_12BufferReaderEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 4 uses
  %i.au = load atomic i64, ptr %i.at acquire, align 8 ; 2 uses
  %i.av = icmp eq i64 %i.au, 4294967297
  %i.aw = trunc i64 %i.au to i32                  ; 2 uses
  br i1 %i.av, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.at, align 8, !tbaa !80
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store i32 0, ptr %i.ax, align 4, !tbaa !82
  %i.ay = load ptr, ptr %i.as, align 8, !tbaa !83
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  tail call void %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #31, !inline_history !1301
  %i.bb = load ptr, ptr %i.as, align 8, !tbaa !83
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8
  tail call void %i.bd(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #31, !inline_history !1301
  br label %_ZN5arrow2io8internal34RandomAccessFileConcurrencyWrapperINS0_12BufferReaderEED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.be = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i = icmp eq i8 %i.be, 0
  br i1 %.not.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bf = add nsw i32 %i.aw, -1
  store i32 %i.bf, ptr %i.at, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.bg = atomicrmw volatile add ptr %i.at, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i = phi i32 [ %i.aw, %bb.k ], [ %i.bg, %bb.l ]
  %i.bh = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bh, label %bb.m, label %_ZN5arrow2io8internal34RandomAccessFileConcurrencyWrapperINS0_12BufferReaderEED2Ev.exit, !prof !87

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #31
  br label %_ZN5arrow2io8internal34RandomAccessFileConcurrencyWrapperINS0_12BufferReaderEED2Ev.exit

_ZN5arrow2io8internal34RandomAccessFileConcurrencyWrapperINS0_12BufferReaderEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.m
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_ZN5arrow2io16RandomAccessFileD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %i.bi) #31
  ret void
}

; Function Attrs: nounwind
declare void @_ZN5arrow2io13FileInterfaceD2Ev(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #18

; Function Attrs: nounwind
declare void @_ZN5arrow2io16RandomAccessFileD2Ev(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #18

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZNK5arrow2io8Readable10io_contextEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

declare noundef zeroext i1 @_ZNK5arrow2io11InputStream18supports_zero_copyEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

declare void @_ZN5arrow2io11InputStream12ReadMetadataEv() unnamed_addr

declare void @_ZN5arrow2io11InputStream17ReadMetadataAsyncERKNS0_9IOContextE() unnamed_addr

declare void @_ZN5arrow2io16RandomAccessFile9ReadAsyncERKNS0_9IOContextEll() unnamed_addr

declare void @_ZN5arrow2io16RandomAccessFile13ReadManyAsyncERKNS0_9IOContextERKSt6vectorINS0_9ReadRangeESaIS6_EE() unnamed_addr

declare void @_ZN5arrow2io16RandomAccessFile8WillNeedERKSt6vectorINS0_9ReadRangeESaIS3_EE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 1) unnamed_addr #6

declare void @_ZN5arrow2io13FileInterface10CloseAsyncEv(ptr dead_on_unwind writable sret(%"class.arrow::Future") align 8, ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow2io8internal34RandomAccessFileConcurrencyWrapperINS0_12BufferReaderEED1Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #29
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow2io8internal34RandomAccessFileConcurrencyWrapperINS0_12BufferReaderEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #29
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow2io8internal34RandomAccessFileConcurrencyWrapperINS0_12BufferReaderEE4ReadElPv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.577") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %2, ptr noundef %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  tail call void @_ZN5arrow2io8internal22SharedExclusiveChecker13LockExclusiveEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a), !noalias !1302
  invoke void @_ZN5arrow2io12BufferReader6DoReadElPv(ptr dead_on_unwind writable sret(%"class.arrow::Result.577") align 8 %0, ptr noundef nonnull align 8 dereferenceable(81) %1, i64 noundef %2, ptr noundef %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5arrow2io8internal22SharedExclusiveChecker15UnlockExclusiveEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_ZN5arrow2io8internal18ExclusiveLockGuardINS1_22SharedExclusiveCheckerEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #29
  unreachable

_ZN5arrow2io8internal18ExclusiveLockGuardINS1_22SharedExclusiveCheckerEED2Ev.exit: ; preds = %bb.b
  ret void

bb.d:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN5arrow2io8internal22SharedExclusiveChecker15UnlockExclusiveEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_ZN5arrow2io8internal18ExclusiveLockGuardINS1_22SharedExclusiveCheckerEED2Ev.exit4 unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #29
  unreachable

_ZN5arrow2io8internal18ExclusiveLockGuardINS1_22SharedExclusiveCheckerEED2Ev.exit4: ; preds = %bb.d
  resume { ptr, i32 } %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow2io8internal34RandomAccessFileConcurrencyWrapperINS0_12BufferReaderEE4ReadEl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.279") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  tail call void @_ZN5arrow2io8internal22SharedExclusiveChecker13LockExclusiveEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a), !noalias !1305
  invoke void @_ZN5arrow2io12BufferReader6DoReadEl(ptr dead_on_unwind writable sret(%"class.arrow::Result.279") align 8 %0, ptr noundef nonnull align 8 dereferenceable(81) %1, i64 noundef %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5arrow2io8internal22SharedExclusiveChecker15UnlockExclusiveEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_ZN5arrow2io8internal18ExclusiveLockGuardINS1_22SharedExclusiveCheckerEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #29
  unreachable

_ZN5arrow2io8internal18ExclusiveLockGuardINS1_22SharedExclusiveCheckerEED2Ev.exit: ; preds = %bb.b
  ret void

bb.d:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN5arrow2io8internal22SharedExclusiveChecker15UnlockExclusiveEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_ZN5arrow2io8internal18ExclusiveLockGuardINS1_22SharedExclusiveCheckerEED2Ev.exit3 unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #29
  unreachable

_ZN5arrow2io8internal18ExclusiveLockGuardINS1_22SharedExclusiveCheckerEED2Ev.exit3: ; preds = %bb.d
  resume { ptr, i32 } %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow2io8internal34RandomAccessFileConcurrencyWrapperINS0_12BufferReaderEE4PeekEl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.573") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  tail call void @_ZN5arrow2io8internal22SharedExclusiveChecker13LockExclusiveEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a), !noalias !1308
  %i.b = load ptr, ptr %1, align 8, !tbaa !83
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.d = load ptr, ptr %i.c, align 8
  invoke void %i.d(ptr dead_on_unwind writable sret(%"class.arrow::Result.573") align 8 %0, ptr noundef nonnull align 8 dereferenceable(81) %1, i64 noundef %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5arrow2io8internal22SharedExclusiveChecker15UnlockExclusiveEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_ZN5arrow2io8internal18ExclusiveLockGuardINS1_22SharedExclusiveCheckerEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #29
  unreachable

_ZN5arrow2io8internal18ExclusiveLockGuardINS1_22SharedExclusiveCheckerEED2Ev.exit: ; preds = %bb.b
  ret void

bb.d:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN5arrow2io8internal22SharedExclusiveChecker15UnlockExclusiveEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_ZN5arrow2io8internal18ExclusiveLockGuardINS1_22SharedExclusiveCheckerEED2Ev.exit3 unwind label %bb.e

end_hunk_17
begin_hunk_18_@_ZN5arrow6Status8FromArgsIJRA21_KcEEES0_NS_10StatusCodeEDpOT_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !1353
  br label %common.resume

_ZN5arrow8internal12JoinToStringIJRA21_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA21_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !1353
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA21_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.g = load ptr, ptr %4, align 8, !tbaa !33     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !86
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  ret void

bb.f:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA21_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !33     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8, !tbaa !86
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute17MakeStructOptionsD0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZN5arrow7compute17MakeStructOptionsD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #31
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #32
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #6

declare void @_ZN5arrow5DatumC1Eb(ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrISt7variantIJN5arrow5DatumENS1_7compute10Expression9ParameterENS4_4CallEEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !79   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !80
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !82
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !83
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !522
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !83
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !522
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !87

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status8FromArgsIJRA43_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 1 dereferenceable(43) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31, !noalias !1356
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !1356
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1230, !noalias !1356, !nonnull !66, !align !239
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(43) %2) #31, !noalias !1356
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(43) %2, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA43_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i unwind label %bb.b, !noalias !1356 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA43_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN5arrow8internal12JoinToStringIJRA43_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA43_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.d ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !1356
  br label %common.resume

_ZN5arrow8internal12JoinToStringIJRA43_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA43_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !1356
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA43_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.g = load ptr, ptr %4, align 8, !tbaa !33     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !86
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  ret void

bb.f:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA43_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !33     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8, !tbaa !86
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %common.resume
}

declare noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceISt7variantIJN5arrow5DatumENS1_7compute10Expression9ParameterENS4_4CallEEESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJS6_EEES8_DpOT_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(144) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !80
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.b, align 4, !tbaa !82
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceISt7variantIJN5arrow5DatumENS1_7compute10Expression9ParameterENS4_4CallEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %0, align 8, !tbaa !83
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !107
  %i.e = load ptr, ptr %1, align 8, !tbaa !33     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !38   ; 2 uses
  %i.j = icmp ult i64 %i.i, 16
  tail call void @llvm.assume(i1 %i.j)
  %i.k = add nuw nsw i64 %i.i, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(1) %i.f, i64 %i.k, i1 false)
  br label %_ZSt10_ConstructISt7variantIJN5arrow5DatumENS1_7compute10Expression9ParameterENS4_4CallEEEJS6_EEvPT_DpOT0_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.a
  store ptr %i.e, ptr %i.c, align 8, !tbaa !33
  %i.l = load i64, ptr %i.f, align 8, !tbaa !86
  store i64 %i.l, ptr %i.d, align 8, !tbaa !86
  br label %_ZSt10_ConstructISt7variantIJN5arrow5DatumENS1_7compute10Expression9ParameterENS4_4CallEEEJS6_EEvPT_DpOT0_.exit

_ZSt10_ConstructISt7variantIJN5arrow5DatumENS1_7compute10Expression9ParameterENS4_4CallEEEJS6_EEvPT_DpOT0_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !38
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.n, ptr %i.o, align 8, !tbaa !38
  store ptr %i.f, ptr %1, align 8, !tbaa !33
  store i64 0, ptr %i.m, align 8, !tbaa !38
  store i8 0, ptr %i.f, align 8, !tbaa !86
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.r = load <2 x ptr>, ptr %i.q, align 8, !tbaa !62
  store <2 x ptr> %i.r, ptr %i.p, align 8, !tbaa !62
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !132
  store ptr %i.u, ptr %i.s, align 8, !tbaa !132
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr null, ptr %i.x, align 8, !tbaa !79
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.z = load <2 x ptr>, ptr %i.w, align 8, !tbaa !94
  store ptr null, ptr %i.y, align 8, !tbaa !79
  store <2 x ptr> %i.z, ptr %i.v, align 8, !tbaa !94
  store ptr null, ptr %i.w, align 8, !tbaa !136
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !39
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !39
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr null, ptr %i.af, align 8, !tbaa !79
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ah = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !94
  store ptr null, ptr %i.ag, align 8, !tbaa !79
  store <2 x ptr> %i.ah, ptr %i.ad, align 8, !tbaa !94
  store ptr null, ptr %i.ae, align 8, !tbaa !137
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.al = load <2 x ptr>, ptr %i.aj, align 8, !tbaa !94
  store <2 x ptr> %i.al, ptr %i.ai, align 8, !tbaa !94
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  store ptr null, ptr %i.am, align 8, !tbaa !79
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  store ptr null, ptr %i.ak, align 8, !tbaa !138
  %i.ao = load <2 x ptr>, ptr %i.an, align 8, !tbaa !94
  store ptr null, ptr %i.an, align 8, !tbaa !79
  store <2 x ptr> %i.ao, ptr %i.am, align 8, !tbaa !94
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr null, ptr %i.ar, align 8, !tbaa !79
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.at = load <2 x ptr>, ptr %i.aq, align 8, !tbaa !94
  store ptr null, ptr %i.as, align 8, !tbaa !79
  store <2 x ptr> %i.at, ptr %i.ap, align 8, !tbaa !94
  store ptr null, ptr %i.aq, align 8, !tbaa !139
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i8 2, ptr %i.au, align 8, !tbaa !67
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceISt7variantIJN5arrow5DatumENS1_7compute10Expression9ParameterENS4_4CallEEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 168) #32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceISt7variantIJN5arrow5DatumENS1_7compute10Expression9ParameterENS4_4CallEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.365, align 1            ; 3 uses
  %2 = alloca %class.anon.596, align 1            ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.c = load i8, ptr %i.b, align 8, !tbaa !67    ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.c, -1
  br i1 %.not.i.i.i.i, label %_ZNSt16allocator_traitsISaIvEE7destroyISt7variantIJN5arrow5DatumENS4_7compute10Expression9ParameterENS7_4CallEEEEEvRS0_PT_.exit, label %bb.b, !prof !87

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  switch i8 %i.c, label %bb.g [
    i8 0, label %bb.c
    i8 1, label %bb.e
    i8 2, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(145) %i.a)
          to label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5arrow5DatumENS4_7compute10Expression9ParameterENS7_4CallEEE8_M_resetEvEUlOT_E_RSt7variantIJS5_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.i.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  call void @__clang_call_terminate(ptr %i.e) #29
  unreachable

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5arrow5DatumENS4_7compute10Expression9ParameterENS7_4CallEEE8_M_resetEvEUlOT_E_RSt7variantIJS5_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.i.i.i.i.i: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  br label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5DatumENS3_7compute10Expression9ParameterENS6_4CallEEE8_M_resetEvEUlOT_E_JRSt7variantIJS4_S7_S8_EEEEDcOT0_DpOT1_.exit.i.i.i.i

bb.e:                                             ; preds = %bb.b
  invoke void @_ZSt13__invoke_implIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5DatumENS3_7compute10Expression9ParameterENS6_4CallEEE8_M_resetEvEUlOT_E_JRS7_EESA_St14__invoke_otherOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(145) %i.a)
          to label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5DatumENS3_7compute10Expression9ParameterENS6_4CallEEE8_M_resetEvEUlOT_E_JRSt7variantIJS4_S7_S8_EEEEDcOT0_DpOT1_.exit.i.i.i.i unwind label %bb.h

bb.f:                                             ; preds = %bb.b
  tail call void @_ZN5arrow7compute10Expression4CallD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(145) %i.a) #31
  br label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5DatumENS3_7compute10Expression9ParameterENS6_4CallEEE8_M_resetEvEUlOT_E_JRSt7variantIJS4_S7_S8_EEEEDcOT0_DpOT1_.exit.i.i.i.i

bb.g:                                             ; preds = %bb.b
  unreachable

_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5DatumENS3_7compute10Expression9ParameterENS6_4CallEEE8_M_resetEvEUlOT_E_JRSt7variantIJS4_S7_S8_EEEEDcOT0_DpOT1_.exit.i.i.i.i: ; preds = %bb.f, %bb.e, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5arrow5DatumENS4_7compute10Expression9ParameterENS7_4CallEEE8_M_resetEvEUlOT_E_RSt7variantIJS5_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %_ZNSt16allocator_traitsISaIvEE7destroyISt7variantIJN5arrow5DatumENS4_7compute10Expression9ParameterENS7_4CallEEEEEvRS0_PT_.exit

bb.h:                                             ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  call void @__clang_call_terminate(ptr %i.g) #29
  unreachable

_ZNSt16allocator_traitsISaIvEE7destroyISt7variantIJN5arrow5DatumENS4_7compute10Expression9ParameterENS7_4CallEEEEEvRS0_PT_.exit: ; preds = %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5DatumENS3_7compute10Expression9ParameterENS6_4CallEEE8_M_resetEvEUlOT_E_JRSt7variantIJS4_S7_S8_EEEEDcOT0_DpOT1_.exit.i.i.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceISt7variantIJN5arrow5DatumENS1_7compute10Expression9ParameterENS4_4CallEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceISt7variantIJN5arrow5DatumENS2_7compute10Expression9ParameterENS5_4CallEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 168) #32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceISt7variantIJN5arrow5DatumENS1_7compute10Expression9ParameterENS4_4CallEEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1153 ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !86
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #31
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt13__invoke_implIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5DatumENS3_7compute10Expression9ParameterENS6_4CallEEE8_M_resetEvEUlOT_E_JRS7_EESA_St14__invoke_otherOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = load i64, ptr %i.a, align 8, !tbaa !115
end_hunk_18
begin_hunk_19_@_ZN5arrow7compute12_GLOBAL__N_116BindNonRecursiveENS0_10Expression4CallEbPNS0_11ExecContextE:bb.a
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #31
  br label %_ZNSt12__shared_ptrIN5arrow7compute8FunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow7compute8FunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #31
  %i.z = load ptr, ptr %i.g, align 8, !tbaa !137  ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !83
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  invoke void %i.ac(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.624") align 8 %19, ptr noundef nonnull align 8 dereferenceable(192) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %17)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow7compute8FunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ad = load ptr, ptr %19, align 8, !tbaa !274
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.af = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1380 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 96
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !256
  br label %bb.nx

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow7compute8FunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5arrow6ResultIPKNS_7compute6KernelEED2Ev.exit261

bb.o:                                             ; preds = %bb.l
  br i1 %2, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZN5arrow6ResultINS_7compute10ExpressionEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %19) #31
  br label %bb.po

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !1381)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !131, !noalias !1381 ; 2 uses
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !130, !noalias !1381 ; 3 uses
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = ashr exact i64 %i.ao, 4                 ; 3 uses
  %i.aq = icmp ugt i64 %i.ap, 384307168202282325
  %.sink402.i.sroa.gep145.i = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %.sink402.i.sroa.gep146.i = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %.sink402.i.sroa.gep147.i = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %.sink402.i.sroa.gep149.i = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %.sink402.i.sroa.gep150.i = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %.sink402.i.sroa.gep152.i = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  br i1 %i.aq, label %.noexc.i, label %_ZNSt6vectorIN5arrow10TypeHolderESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i

.noexc.i:                                         ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.60) #33
          to label %.noexc103 unwind label %bb.ic

.noexc103:                                        ; preds = %.noexc.i
  unreachable

_ZNSt6vectorIN5arrow10TypeHolderESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i: ; preds = %bb.q
  %.not.i.i.i.i.i100 = icmp eq ptr %i.ak, %i.al
  br i1 %.not.i.i.i.i.i100, label %_ZN5arrow7compute12_GLOBAL__N_141GetTypesWithSmallestLiteralRepresentationERKSt6vectorINS0_10ExpressionESaIS3_EE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIN5arrow10TypeHolderESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i
  %i.ar = mul nuw nsw i64 %i.ap, 24               ; 3 uses
  %i.as = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #30
          to label %.noexc104 unwind label %bb.ic ; 4 uses

.noexc104:                                        ; preds = %.lr.ph.i
  store ptr %i.as, ptr %20, align 16, !tbaa !582, !alias.scope !1381
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.as, i64 %i.ap
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.as, i8 0, i64 %i.ar, i1 false), !noalias !1381
  %scevgep.i.i.i.i.i.i = getelementptr i8, ptr %i.as, i64 %i.ar
  %i.au = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  store ptr %i.at, ptr %i.av, align 16, !tbaa !585, !alias.scope !1381
  store ptr %scevgep.i.i.i.i.i.i, ptr %i.au, align 8, !tbaa !586, !alias.scope !1381
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %_ZN5arrow10TypeHolderD2Ev.exit.i, %.noexc104
  %i.ax = phi ptr [ %i.al, %.noexc104 ], [ %i.st, %_ZN5arrow10TypeHolderD2Ev.exit.i ]
  %.0195.i = phi i64 [ 0, %.noexc104 ], [ %i.sr, %_ZN5arrow10TypeHolderD2Ev.exit.i ] ; 4 uses
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.ax, i64 %.0195.i
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !63, !noalias !1381 ; 22 uses
  %.not.i.i.i101 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i101, label %_ZNK5arrow7compute10Expression4typeEv.exit.i, label %_ZSt6get_ifIN5arrow5DatumEJS1_NS0_7compute10Expression9ParameterENS3_4CallEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i

_ZSt6get_ifIN5arrow5DatumEJS1_NS0_7compute10Expression9ParameterENS3_4CallEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i: ; preds = %bb.r
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 144
  %i.bb = load i8, ptr %i.ba, align 8, !tbaa !67, !noalias !1381
  switch i8 %i.bb, label %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i.i.i [
    i8 0, label %bb.s
    i8 1, label %_ZNK5arrow7compute10Expression4typeEv.exit.sink.split.i
  ]

bb.s:                                             ; preds = %_ZSt6get_ifIN5arrow5DatumEJS1_NS0_7compute10Expression9ParameterENS3_4CallEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 11 uses
  %i.bd = load i8, ptr %i.bc, align 8, !tbaa !69, !noalias !1381
  %i.be = icmp eq i8 %i.bd, 1
  br i1 %i.be, label %bb.t, label %_ZN5arrow10TypeHolderD2Ev.exit.i

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0162.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %11), !noalias !1381
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0160.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %12), !noalias !1381
  call void @llvm.lifetime.start.p0(ptr nonnull %13), !noalias !1381
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0158.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %14), !noalias !1381
  call void @llvm.lifetime.start.p0(ptr nonnull %15), !noalias !1381
  call void @llvm.lifetime.start.p0(ptr nonnull %16), !noalias !1381
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0156.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0154.i)
  %i.bf = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow5Datum4typeEv(ptr noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %.noexc23.i unwind label %.loopexit.i, !noalias !1381

.noexc23.i:                                       ; preds = %bb.t
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !139, !noalias !1381
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !196, !noalias !1381
  switch i32 %i.bi, label %bb.gu [
    i32 3, label %bb.u
    i32 2, label %bb.y
    i32 5, label %bb.ac
    i32 4, label %bb.al
    i32 7, label %bb.au
    i32 6, label %bb.bj
    i32 9, label %bb.bx
    i32 8, label %bb.cr
    i32 12, label %bb.dk
    i32 34, label %bb.dy
    i32 35, label %bb.eh
    i32 18, label %bb.eq
  ]

bb.u:                                             ; preds = %.noexc23.i
  %i.bj = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow4int8Ev()
          to label %.noexc24.i unwind label %.loopexit.i, !noalias !1381 ; 2 uses

.noexc24.i:                                       ; preds = %bb.u
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !139, !noalias !1381 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !79, !noalias !1381 ; 4 uses
  %.not.i.i.i.i22.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i22.i, label %bb.gy, label %bb.v

bb.v:                                             ; preds = %.noexc24.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 3 uses
  %i.bo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86, !noalias !1384
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bo, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bp = load i32, ptr %i.bn, align 4, !tbaa !3, !noalias !1381
  %i.bq = add nsw i32 %i.bp, 1
  store i32 %i.bq, ptr %i.bn, align 4, !tbaa !3, !noalias !1381
  br label %bb.gy

bb.x:                                             ; preds = %bb.v
  %i.br = atomicrmw volatile add ptr %i.bn, i32 1 acq_rel, align 4, !noalias !1381 ; 0 uses
  br label %bb.gy

bb.y:                                             ; preds = %.noexc23.i
  %i.bs = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow5uint8Ev()
          to label %.noexc25.i unwind label %.loopexit.i, !noalias !1381 ; 2 uses

.noexc25.i:                                       ; preds = %bb.y
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !139, !noalias !1381 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !79, !noalias !1381 ; 4 uses
  %.not.i.i.i78.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i78.i.i, label %bb.gy, label %bb.z

bb.z:                                             ; preds = %.noexc25.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 3 uses
  %i.bx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86, !noalias !1384
  %.not.i.i.i.i79.i.i = icmp eq i8 %i.bx, 0
  br i1 %.not.i.i.i.i79.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.by = load i32, ptr %i.bw, align 4, !tbaa !3, !noalias !1381
  %i.bz = add nsw i32 %i.by, 1
  store i32 %i.bz, ptr %i.bw, align 4, !tbaa !3, !noalias !1381
  br label %bb.gy

bb.ab:                                            ; preds = %bb.z
  %i.ca = atomicrmw volatile add ptr %i.bw, i32 1 acq_rel, align 4, !noalias !1381 ; 0 uses
  br label %bb.gy

bb.ac:                                            ; preds = %.noexc23.i
  %i.cb = load i8, ptr %i.bc, align 8, !tbaa !69, !noalias !1384
  %.not.i.i.i.i86.i.i = icmp eq i8 %i.cb, 1
  br i1 %.not.i.i.i.i86.i.i, label %_ZNK5arrow5Datum9scalar_asINS_11Int16ScalarEEERKT_v.exit.i.i, label %.invoke.i

.invoke.i:                                        ; preds = %bb.eh, %bb.dy, %bb.dk, %bb.cr, %bb.bx, %bb.bj, %bb.au, %bb.al, %bb.ac
  %i.cc = call ptr @__cxa_allocate_exception(i64 16) #31, !noalias !1381 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.cc, align 8, !tbaa !83, !noalias !1381
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store ptr @.str.44, ptr %i.cd, align 8, !tbaa !210, !noalias !1381
  invoke void @__cxa_throw(ptr nonnull %i.cc, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #33
          to label %.cont.i unwind label %.loopexit.split-lp.i, !noalias !1381

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_ZNK5arrow5Datum9scalar_asINS_11Int16ScalarEEERKT_v.exit.i.i: ; preds = %bb.ac
  %i.ce = load ptr, ptr %i.az, align 8, !tbaa !71, !noalias !1384
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 42
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !1387, !noalias !1381
  %i.ch = add i16 %i.cg, -128
  %or.cond.i.i = icmp ult i16 %i.ch, -256
  br i1 %or.cond.i.i, label %bb.ah, label %bb.ad

bb.ad:                                            ; preds = %_ZNK5arrow5Datum9scalar_asINS_11Int16ScalarEEERKT_v.exit.i.i
  %i.ci = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow4int8Ev()
          to label %.noexc27.i unwind label %.loopexit.i, !noalias !1381 ; 2 uses

.noexc27.i:                                       ; preds = %bb.ad
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !139, !noalias !1381 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !79, !noalias !1381 ; 4 uses
  %.not.i.i.i87.i.i = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i87.i.i, label %bb.gy, label %bb.ae

bb.ae:                                            ; preds = %.noexc27.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 3 uses
  %i.cn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86, !noalias !1384
  %.not.i.i.i.i88.i.i = icmp eq i8 %i.cn, 0
  br i1 %.not.i.i.i.i88.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.co = load i32, ptr %i.cm, align 4, !tbaa !3, !noalias !1381
  %i.cp = add nsw i32 %i.co, 1
  store i32 %i.cp, ptr %i.cm, align 4, !tbaa !3, !noalias !1381
  br label %bb.gy

bb.ag:                                            ; preds = %bb.ae
  %i.cq = atomicrmw volatile add ptr %i.cm, i32 1 acq_rel, align 4, !noalias !1381 ; 0 uses
  br label %bb.gy

bb.ah:                                            ; preds = %_ZNK5arrow5Datum9scalar_asINS_11Int16ScalarEEERKT_v.exit.i.i
  %i.cr = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow5int16Ev()
          to label %.noexc28.i unwind label %.loopexit.i, !noalias !1381 ; 2 uses

.noexc28.i:                                       ; preds = %bb.ah
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !139, !noalias !1381 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !79, !noalias !1381 ; 4 uses
  %.not.i.i.i90.i.i = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i90.i.i, label %bb.gy, label %bb.ai

bb.ai:                                            ; preds = %.noexc28.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 3 uses
  %i.cw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86, !noalias !1384
  %.not.i.i.i.i91.i.i = icmp eq i8 %i.cw, 0
  br i1 %.not.i.i.i.i91.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cx = load i32, ptr %i.cv, align 4, !tbaa !3, !noalias !1381
  %i.cy = add nsw i32 %i.cx, 1
  store i32 %i.cy, ptr %i.cv, align 4, !tbaa !3, !noalias !1381
  br label %bb.gy

bb.ak:                                            ; preds = %bb.ai
  %i.cz = atomicrmw volatile add ptr %i.cv, i32 1 acq_rel, align 4, !noalias !1381 ; 0 uses
  br label %bb.gy

bb.al:                                            ; preds = %.noexc23.i
  %i.da = load i8, ptr %i.bc, align 8, !tbaa !69, !noalias !1384
  %.not.i.i.i.i98.i.i = icmp eq i8 %i.da, 1
  br i1 %.not.i.i.i.i98.i.i, label %_ZNK5arrow5Datum9scalar_asINS_12UInt16ScalarEEERKT_v.exit.i.i, label %.invoke.i

_ZNK5arrow5Datum9scalar_asINS_12UInt16ScalarEEERKT_v.exit.i.i: ; preds = %bb.al
  %i.db = load ptr, ptr %i.az, align 8, !tbaa !71, !noalias !1384
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 42
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !1389, !noalias !1381
  %.not74.i.i = icmp ugt i16 %i.dd, 255
  br i1 %.not74.i.i, label %bb.aq, label %bb.am

bb.am:                                            ; preds = %_ZNK5arrow5Datum9scalar_asINS_12UInt16ScalarEEERKT_v.exit.i.i
  %i.de = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow5uint8Ev()
          to label %.noexc30.i unwind label %.loopexit.i, !noalias !1381 ; 2 uses

.noexc30.i:                                       ; preds = %bb.am
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !139, !noalias !1381 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !79, !noalias !1381 ; 4 uses
  %.not.i.i.i99.i.i = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i99.i.i, label %bb.gy, label %bb.an

bb.an:                                            ; preds = %.noexc30.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8 ; 3 uses
  %i.dj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86, !noalias !1384
  %.not.i.i.i.i100.i.i = icmp eq i8 %i.dj, 0
  br i1 %.not.i.i.i.i100.i.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dk = load i32, ptr %i.di, align 4, !tbaa !3, !noalias !1381
  %i.dl = add nsw i32 %i.dk, 1
  store i32 %i.dl, ptr %i.di, align 4, !tbaa !3, !noalias !1381
  br label %bb.gy

bb.ap:                                            ; preds = %bb.an
  %i.dm = atomicrmw volatile add ptr %i.di, i32 1 acq_rel, align 4, !noalias !1381 ; 0 uses
  br label %bb.gy

bb.aq:                                            ; preds = %_ZNK5arrow5Datum9scalar_asINS_12UInt16ScalarEEERKT_v.exit.i.i
  %i.dn = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow6uint16Ev()
          to label %.noexc31.i unwind label %.loopexit.i, !noalias !1381 ; 2 uses

.noexc31.i:                                       ; preds = %bb.aq
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !139, !noalias !1381 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !79, !noalias !1381 ; 4 uses
  %.not.i.i.i107.i.i = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i107.i.i, label %bb.gy, label %bb.ar

bb.ar:                                            ; preds = %.noexc31.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8 ; 3 uses
  %i.ds = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86, !noalias !1384
  %.not.i.i.i.i108.i.i = icmp eq i8 %i.ds, 0
  br i1 %.not.i.i.i.i108.i.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dt = load i32, ptr %i.dr, align 4, !tbaa !3, !noalias !1381
  %i.du = add nsw i32 %i.dt, 1
  store i32 %i.du, ptr %i.dr, align 4, !tbaa !3, !noalias !1381
  br label %bb.gy

bb.at:                                            ; preds = %bb.ar
  %i.dv = atomicrmw volatile add ptr %i.dr, i32 1 acq_rel, align 4, !noalias !1381 ; 0 uses
  br label %bb.gy

bb.au:                                            ; preds = %.noexc23.i
  %i.dw = load i8, ptr %i.bc, align 8, !tbaa !69, !noalias !1384
  %.not.i.i.i.i115.i.i = icmp eq i8 %i.dw, 1
  br i1 %.not.i.i.i.i115.i.i, label %_ZNK5arrow5Datum9scalar_asINS_11Int32ScalarEEERKT_v.exit.i.i, label %.invoke.i

_ZNK5arrow5Datum9scalar_asINS_11Int32ScalarEEERKT_v.exit.i.i: ; preds = %bb.au
  %i.dx = load ptr, ptr %i.az, align 8, !tbaa !71, !noalias !1384
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 44
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !1391, !noalias !1381 ; 4 uses
  %.not70.i.i = icmp sgt i32 %i.dz, 127
  br i1 %.not70.i.i, label %bb.ba, label %bb.av

bb.av:                                            ; preds = %_ZNK5arrow5Datum9scalar_asINS_11Int32ScalarEEERKT_v.exit.i.i
  %.not71.i.i = icmp slt i32 %i.dz, -128
  br i1 %.not71.i.i, label %bb.bb, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ea = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow4int8Ev()
          to label %.noexc33.i unwind label %.loopexit.i, !noalias !1381 ; 2 uses

.noexc33.i:                                       ; preds = %bb.aw
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !139, !noalias !1381 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !79, !noalias !1381 ; 4 uses
  %.not.i.i.i116.i.i = icmp eq ptr %i.ed, null
  br i1 %.not.i.i.i116.i.i, label %bb.gy, label %bb.ax

bb.ax:                                            ; preds = %.noexc33.i
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8 ; 3 uses
  %i.ef = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86, !noalias !1384
  %.not.i.i.i.i117.i.i = icmp eq i8 %i.ef, 0
  br i1 %.not.i.i.i.i117.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.eg = load i32, ptr %i.ee, align 4, !tbaa !3, !noalias !1381
  %i.eh = add nsw i32 %i.eg, 1
  store i32 %i.eh, ptr %i.ee, align 4, !tbaa !3, !noalias !1381
  br label %bb.gy

bb.az:                                            ; preds = %bb.ax
  %i.ei = atomicrmw volatile add ptr %i.ee, i32 1 acq_rel, align 4, !noalias !1381 ; 0 uses
  br label %bb.gy

bb.ba:                                            ; preds = %_ZNK5arrow5Datum9scalar_asINS_11Int32ScalarEEERKT_v.exit.i.i
  %.not72.i.i = icmp samesign ugt i32 %i.dz, 32767
  br i1 %.not72.i.i, label %bb.bf, label %.thread321.i.i

bb.bb:                                            ; preds = %bb.av
  %.not73.i.i = icmp samesign ult i32 %i.dz, -32768
  br i1 %.not73.i.i, label %bb.bf, label %.thread321.i.i

.thread321.i.i:                                   ; preds = %bb.bb, %bb.ba
  %i.ej = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow5int16Ev()
          to label %.noexc34.i unwind label %.loopexit.i, !noalias !1381 ; 2 uses

.noexc34.i:                                       ; preds = %.thread321.i.i
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !139, !noalias !1381 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !79, !noalias !1381 ; 4 uses
  %.not.i.i.i119.i.i = icmp eq ptr %i.em, null
  br i1 %.not.i.i.i119.i.i, label %bb.gy, label %bb.bc

bb.bc:                                            ; preds = %.noexc34.i
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8 ; 3 uses
end_hunk_19
begin_hunk_20_@_ZN5arrow7compute12_GLOBAL__N_116BindNonRecursiveENS0_10Expression4CallEbPNS0_11ExecContextE:bb.a
bb.du:                                            ; preds = %bb.dp
  %i.kj = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow7float64Ev()
          to label %.noexc53.i unwind label %.loopexit.i, !noalias !1381 ; 2 uses

.noexc53.i:                                       ; preds = %bb.du
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !139, !noalias !1381 ; 3 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !79, !noalias !1381 ; 4 uses
  %.not.i.i.i198.i.i = icmp eq ptr %i.km, null
  br i1 %.not.i.i.i198.i.i, label %bb.gy, label %bb.dv

bb.dv:                                            ; preds = %.noexc53.i
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 8 ; 3 uses
  %i.ko = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86, !noalias !1384
  %.not.i.i.i.i199.i.i = icmp eq i8 %i.ko, 0
  br i1 %.not.i.i.i.i199.i.i, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.kp = load i32, ptr %i.kn, align 4, !tbaa !3, !noalias !1381
  %i.kq = add nsw i32 %i.kp, 1
  store i32 %i.kq, ptr %i.kn, align 4, !tbaa !3, !noalias !1381
  br label %bb.gy

bb.dx:                                            ; preds = %bb.dv
  %i.kr = atomicrmw volatile add ptr %i.kn, i32 1 acq_rel, align 4, !noalias !1381 ; 0 uses
  br label %bb.gy

bb.dy:                                            ; preds = %.noexc23.i
  %i.ks = load i8, ptr %i.bc, align 8, !tbaa !69, !noalias !1384
  %.not.i.i.i.i201.i.i = icmp eq i8 %i.ks, 1
  br i1 %.not.i.i.i.i201.i.i, label %_ZNK5arrow5Datum9scalar_asINS_17LargeStringScalarEEERKT_v.exit.i.i, label %.invoke.i

_ZNK5arrow5Datum9scalar_asINS_17LargeStringScalarEEERKT_v.exit.i.i: ; preds = %bb.dy
  %i.kt = load ptr, ptr %i.az, align 8, !tbaa !71, !noalias !1384
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 48
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !213, !noalias !1381
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 24
  %i.kx = load i64, ptr %i.kw, align 8, !tbaa !223, !noalias !1381
  %.not58.i.i = icmp sgt i64 %i.kx, 2147483647
  br i1 %.not58.i.i, label %bb.ed, label %bb.dz

bb.dz:                                            ; preds = %_ZNK5arrow5Datum9scalar_asINS_17LargeStringScalarEEERKT_v.exit.i.i
  %i.ky = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow4utf8Ev()
          to label %.noexc55.i unwind label %.loopexit.i, !noalias !1381 ; 2 uses

.noexc55.i:                                       ; preds = %bb.dz
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !139, !noalias !1381 ; 3 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !79, !noalias !1381 ; 4 uses
  %.not.i.i.i202.i.i = icmp eq ptr %i.lb, null
  br i1 %.not.i.i.i202.i.i, label %bb.gy, label %bb.ea

bb.ea:                                            ; preds = %.noexc55.i
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 8 ; 3 uses
  %i.ld = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86, !noalias !1384
  %.not.i.i.i.i203.i.i = icmp eq i8 %i.ld, 0
  br i1 %.not.i.i.i.i203.i.i, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.le = load i32, ptr %i.lc, align 4, !tbaa !3, !noalias !1381
  %i.lf = add nsw i32 %i.le, 1
  store i32 %i.lf, ptr %i.lc, align 4, !tbaa !3, !noalias !1381
  br label %bb.gy

bb.ec:                                            ; preds = %bb.ea
  %i.lg = atomicrmw volatile add ptr %i.lc, i32 1 acq_rel, align 4, !noalias !1381 ; 0 uses
  br label %bb.gy

bb.ed:                                            ; preds = %_ZNK5arrow5Datum9scalar_asINS_17LargeStringScalarEEERKT_v.exit.i.i
  %i.lh = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow10large_utf8Ev()
          to label %.noexc56.i unwind label %.loopexit.i, !noalias !1381 ; 2 uses

.noexc56.i:                                       ; preds = %bb.ed
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !139, !noalias !1381 ; 3 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !79, !noalias !1381 ; 4 uses
  %.not.i.i.i210.i.i = icmp eq ptr %i.lk, null
  br i1 %.not.i.i.i210.i.i, label %bb.gy, label %bb.ee

bb.ee:                                            ; preds = %.noexc56.i
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 8 ; 3 uses
  %i.lm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86, !noalias !1384
  %.not.i.i.i.i211.i.i = icmp eq i8 %i.lm, 0
  br i1 %.not.i.i.i.i211.i.i, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.ln = load i32, ptr %i.ll, align 4, !tbaa !3, !noalias !1381
  %i.lo = add nsw i32 %i.ln, 1
  store i32 %i.lo, ptr %i.ll, align 4, !tbaa !3, !noalias !1381
  br label %bb.gy

bb.eg:                                            ; preds = %bb.ee
  %i.lp = atomicrmw volatile add ptr %i.ll, i32 1 acq_rel, align 4, !noalias !1381 ; 0 uses
  br label %bb.gy

bb.eh:                                            ; preds = %.noexc23.i
  %i.lq = load i8, ptr %i.bc, align 8, !tbaa !69, !noalias !1384
  %.not.i.i.i.i218.i.i = icmp eq i8 %i.lq, 1
  br i1 %.not.i.i.i.i218.i.i, label %_ZNK5arrow5Datum9scalar_asINS_17LargeBinaryScalarEEERKT_v.exit.i.i, label %.invoke.i

_ZNK5arrow5Datum9scalar_asINS_17LargeBinaryScalarEEERKT_v.exit.i.i: ; preds = %bb.eh
  %i.lr = load ptr, ptr %i.az, align 8, !tbaa !71, !noalias !1384
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 48
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !213, !noalias !1381
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 24
  %i.lv = load i64, ptr %i.lu, align 8, !tbaa !223, !noalias !1381
  %.not.i.i102 = icmp sgt i64 %i.lv, 2147483647
  br i1 %.not.i.i102, label %bb.em, label %bb.ei

bb.ei:                                            ; preds = %_ZNK5arrow5Datum9scalar_asINS_17LargeBinaryScalarEEERKT_v.exit.i.i
  %i.lw = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow6binaryEv()
          to label %.noexc58.i unwind label %.loopexit.i, !noalias !1381 ; 2 uses

.noexc58.i:                                       ; preds = %bb.ei
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !139, !noalias !1381 ; 3 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lw, i64 8
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !79, !noalias !1381 ; 4 uses
  %.not.i.i.i219.i.i = icmp eq ptr %i.lz, null
  br i1 %.not.i.i.i219.i.i, label %bb.gy, label %bb.ej

bb.ej:                                            ; preds = %.noexc58.i
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 8 ; 3 uses
  %i.mb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86, !noalias !1384
  %.not.i.i.i.i220.i.i = icmp eq i8 %i.mb, 0
  br i1 %.not.i.i.i.i220.i.i, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.mc = load i32, ptr %i.ma, align 4, !tbaa !3, !noalias !1381
  %i.md = add nsw i32 %i.mc, 1
  store i32 %i.md, ptr %i.ma, align 4, !tbaa !3, !noalias !1381
  br label %bb.gy

bb.el:                                            ; preds = %bb.ej
  %i.me = atomicrmw volatile add ptr %i.ma, i32 1 acq_rel, align 4, !noalias !1381 ; 0 uses
  br label %bb.gy

bb.em:                                            ; preds = %_ZNK5arrow5Datum9scalar_asINS_17LargeBinaryScalarEEERKT_v.exit.i.i
  %i.mf = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow12large_binaryEv()
          to label %.noexc59.i unwind label %.loopexit.i, !noalias !1381 ; 2 uses

.noexc59.i:                                       ; preds = %bb.em
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !139, !noalias !1381 ; 3 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mf, i64 8
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !79, !noalias !1381 ; 4 uses
  %.not.i.i.i227.i.i = icmp eq ptr %i.mi, null
  br i1 %.not.i.i.i227.i.i, label %bb.gy, label %bb.en

bb.en:                                            ; preds = %.noexc59.i
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 8 ; 3 uses
  %i.mk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86, !noalias !1384
  %.not.i.i.i.i228.i.i = icmp eq i8 %i.mk, 0
  br i1 %.not.i.i.i.i228.i.i, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.ml = load i32, ptr %i.mj, align 4, !tbaa !3, !noalias !1381
  %i.mm = add nsw i32 %i.ml, 1
  store i32 %i.mm, ptr %i.mj, align 4, !tbaa !3, !noalias !1381
  br label %bb.gy

bb.ep:                                            ; preds = %bb.en
  %i.mn = atomicrmw volatile add ptr %i.mj, i32 1 acq_rel, align 4, !noalias !1381 ; 0 uses
  br label %bb.gy

bb.eq:                                            ; preds = %.noexc23.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31, !noalias !1384
  %i.mo = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow5Datum4typeEv(ptr noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %.noexc60.i unwind label %.loopexit.i, !noalias !1381 ; 2 uses

.noexc60.i:                                       ; preds = %bb.eq
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !139, !noalias !1381 ; 8 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mo, i64 8
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !79, !noalias !1381 ; 3 uses
  %.not.i.i.i235.i.i = icmp eq ptr %i.mr, null
  br i1 %.not.i.i.i235.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit242.i.i, label %bb.er

bb.er:                                            ; preds = %.noexc60.i
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 8 ; 3 uses
  %i.mt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86, !noalias !1384
  %.not.i.i.i.i236.i.i = icmp eq i8 %i.mt, 0
  br i1 %.not.i.i.i.i236.i.i, label %bb.et, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.mu = load i32, ptr %i.ms, align 4, !tbaa !3, !noalias !1381
  %i.mv = add nsw i32 %i.mu, 1
  store i32 %i.mv, ptr %i.ms, align 4, !tbaa !3, !noalias !1381
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit242.i.i

bb.et:                                            ; preds = %bb.er
  %i.mw = atomicrmw volatile add ptr %i.ms, i32 1 acq_rel, align 4, !noalias !1381 ; 0 uses
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit242.i.i

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit242.i.i: ; preds = %bb.et, %bb.es, %.noexc60.i
  store ptr %i.mp, ptr %10, align 8, !tbaa !1401, !alias.scope !1404, !noalias !1384
  store ptr %i.mr, ptr %i.aw, align 8, !tbaa !79, !alias.scope !1404, !noalias !1384
  %i.mx = load i8, ptr %i.bc, align 8, !tbaa !69, !noalias !1384
  %.not.i.i.i.i243.i.i = icmp eq i8 %i.mx, 1
  br i1 %.not.i.i.i.i243.i.i, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit242.i.i
  %i.my = call ptr @__cxa_allocate_exception(i64 16) #31, !noalias !1381 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.my, align 8, !tbaa !83, !noalias !1381
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 8
  store ptr @.str.44, ptr %i.mz, align 8, !tbaa !210, !noalias !1381
  invoke void @__cxa_throw(ptr nonnull %i.my, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #33
          to label %.noexc.i.i unwind label %.loopexit.split-lp191.i, !noalias !1381

.noexc.i.i:                                       ; preds = %bb.eu
  unreachable

bb.ev:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit242.i.i
  %i.na = load ptr, ptr %i.az, align 8, !tbaa !71, !noalias !1384
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 48
  %i.nc = load i64, ptr %i.nb, align 8, !tbaa !1409, !noalias !1381 ; 6 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mp, i64 72
  %i.ne = load i32, ptr %i.nd, align 8, !tbaa !1411, !noalias !1381
  switch i32 %i.ne, label %bb.gj [
    i32 0, label %bb.ex
    i32 1, label %bb.fc
    i32 2, label %bb.fk
    i32 3, label %bb.fv
  ]

.loopexit190.i:                                   ; preds = %bb.gj, %bb.ge, %bb.gc, %bb.fz, %bb.fw, %bb.fq, %bb.fo, %bb.fl, %bb.ff, %bb.fd, %bb.ex
  %lpad.loopexit192.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ew

.loopexit.split-lp191.i:                          ; preds = %bb.eu
  %lpad.loopexit.split-lp193.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ew

bb.ew:                                            ; preds = %.loopexit.split-lp191.i, %.loopexit190.i
  %lpad.phi194.i = phi { ptr, i32 } [ %lpad.loopexit192.i, %.loopexit190.i ], [ %lpad.loopexit.split-lp193.i, %.loopexit.split-lp191.i ]
  call void @_ZNSt12__shared_ptrIN5arrow13TimestampTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #31, !noalias !1381
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31, !noalias !1384
  br label %.body.i

bb.ex:                                            ; preds = %bb.ev
  %i.nf = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow5Datum4typeEv(ptr noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %bb.ey unwind label %.loopexit190.i, !noalias !1381 ; 2 uses

bb.ey:                                            ; preds = %bb.ex
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !139, !noalias !1381 ; 4 uses
  store ptr %i.ng, ptr %.sroa.0162.i, align 8, !tbaa !139, !noalias !1384
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nf, i64 8
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !79, !noalias !1381 ; 4 uses
  %.not.i.i.i244.i.i = icmp eq ptr %i.ni, null
  br i1 %.not.i.i.i244.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 8 ; 3 uses
  %i.nk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86, !noalias !1384
  %.not.i.i.i.i245.i.i = icmp eq i8 %i.nk, 0
  br i1 %.not.i.i.i.i245.i.i, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.nl = load i32, ptr %i.nj, align 4, !tbaa !3, !noalias !1381
  %i.nm = add nsw i32 %i.nl, 1
  store i32 %i.nm, ptr %i.nj, align 4, !tbaa !3, !noalias !1381
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.fb:                                            ; preds = %bb.ez
  %i.nn = atomicrmw volatile add ptr %i.nj, i32 1 acq_rel, align 4, !noalias !1381 ; 0 uses
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.fc:                                            ; preds = %bb.ev
  %i.no = urem i64 %i.nc, 1000
  %i.np = icmp eq i64 %i.no, 0
  br i1 %i.np, label %bb.fd, label %bb.ff

bb.fd:                                            ; preds = %bb.fc
  %i.nq = getelementptr inbounds nuw i8, ptr %i.mp, i64 80
  invoke void @_ZN5arrow9timestampENS_8TimeUnit4typeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.16") align 8 %11, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %i.nq)
          to label %bb.fe unwind label %.loopexit190.i, !noalias !1381

bb.fe:                                            ; preds = %bb.fd
  %i.nr = load ptr, ptr %11, align 8, !tbaa !139, !noalias !1384
  %i.ns = load ptr, ptr %.sink402.i.sroa.gep152.i, align 8, !tbaa !79, !noalias !1384
  store ptr null, ptr %.sink402.i.sroa.gep152.i, align 8, !tbaa !79, !noalias !1384
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.ff:                                            ; preds = %bb.fc
  %i.nt = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow5Datum4typeEv(ptr noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %bb.fg unwind label %.loopexit190.i, !noalias !1381 ; 2 uses

bb.fg:                                            ; preds = %bb.ff
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !139, !noalias !1381 ; 4 uses
  store ptr %i.nu, ptr %.sroa.0160.i, align 8, !tbaa !139, !noalias !1384
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nt, i64 8
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !79, !noalias !1381 ; 4 uses
  %.not.i.i.i247.i.i = icmp eq ptr %i.nw, null
  br i1 %.not.i.i.i247.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 8 ; 3 uses
  %i.ny = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86, !noalias !1384
  %.not.i.i.i.i248.i.i = icmp eq i8 %i.ny, 0
  br i1 %.not.i.i.i.i248.i.i, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.nz = load i32, ptr %i.nx, align 4, !tbaa !3, !noalias !1381
  %i.oa = add nsw i32 %i.nz, 1
  store i32 %i.oa, ptr %i.nx, align 4, !tbaa !3, !noalias !1381
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.fj:                                            ; preds = %bb.fh
  %i.ob = atomicrmw volatile add ptr %i.nx, i32 1 acq_rel, align 4, !noalias !1381 ; 0 uses
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.fk:                                            ; preds = %bb.ev
  %i.oc = urem i64 %i.nc, 1000000
  %i.od = icmp eq i64 %i.oc, 0
  br i1 %i.od, label %bb.fl, label %bb.fn

bb.fl:                                            ; preds = %bb.fk
  %i.oe = getelementptr inbounds nuw i8, ptr %i.mp, i64 80
  invoke void @_ZN5arrow9timestampENS_8TimeUnit4typeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.16") align 8 %12, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %i.oe)
          to label %bb.fm unwind label %.loopexit190.i, !noalias !1381

bb.fm:                                            ; preds = %bb.fl
  %i.of = load ptr, ptr %12, align 8, !tbaa !139, !noalias !1384
  %i.og = load ptr, ptr %.sink402.i.sroa.gep150.i, align 8, !tbaa !79, !noalias !1384
  store ptr null, ptr %.sink402.i.sroa.gep150.i, align 8, !tbaa !79, !noalias !1384
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.fn:                                            ; preds = %bb.fk
  %i.oh = urem i64 %i.nc, 1000
  %i.oi = icmp eq i64 %i.oh, 0
  br i1 %i.oi, label %bb.fo, label %bb.fq

bb.fo:                                            ; preds = %bb.fn
  %i.oj = getelementptr inbounds nuw i8, ptr %i.mp, i64 80
  invoke void @_ZN5arrow9timestampENS_8TimeUnit4typeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.16") align 8 %13, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(32) %i.oj)
          to label %bb.fp unwind label %.loopexit190.i, !noalias !1381

bb.fp:                                            ; preds = %bb.fo
  %i.ok = load ptr, ptr %13, align 8, !tbaa !139, !noalias !1384
  %i.ol = load ptr, ptr %.sink402.i.sroa.gep149.i, align 8, !tbaa !79, !noalias !1384
  store ptr null, ptr %.sink402.i.sroa.gep149.i, align 8, !tbaa !79, !noalias !1384
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.fq:                                            ; preds = %bb.fn
  %i.om = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow5Datum4typeEv(ptr noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %bb.fr unwind label %.loopexit190.i, !noalias !1381 ; 2 uses

bb.fr:                                            ; preds = %bb.fq
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !139, !noalias !1381 ; 4 uses
  store ptr %i.on, ptr %.sroa.0158.i, align 8, !tbaa !139, !noalias !1384
  %i.oo = getelementptr inbounds nuw i8, ptr %i.om, i64 8
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !79, !noalias !1381 ; 4 uses
  %.not.i.i.i250.i.i = icmp eq ptr %i.op, null
  br i1 %.not.i.i.i250.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 8 ; 3 uses
  %i.or = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86, !noalias !1384
  %.not.i.i.i.i251.i.i = icmp eq i8 %i.or, 0
  br i1 %.not.i.i.i.i251.i.i, label %bb.fu, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.os = load i32, ptr %i.oq, align 4, !tbaa !3, !noalias !1381
  %i.ot = add nsw i32 %i.os, 1
  store i32 %i.ot, ptr %i.oq, align 4, !tbaa !3, !noalias !1381
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.fu:                                            ; preds = %bb.fs
  %i.ou = atomicrmw volatile add ptr %i.oq, i32 1 acq_rel, align 4, !noalias !1381 ; 0 uses
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.fv:                                            ; preds = %bb.ev
  %i.ov = urem i64 %i.nc, 1000000000
  %i.ow = icmp eq i64 %i.ov, 0
  br i1 %i.ow, label %bb.fw, label %bb.fy

bb.fw:                                            ; preds = %bb.fv
  %i.ox = getelementptr inbounds nuw i8, ptr %i.mp, i64 80
  invoke void @_ZN5arrow9timestampENS_8TimeUnit4typeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.16") align 8 %14, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %i.ox)
          to label %bb.fx unwind label %.loopexit190.i, !noalias !1381

bb.fx:                                            ; preds = %bb.fw
  %i.oy = load ptr, ptr %14, align 8, !tbaa !139, !noalias !1384
  %i.oz = load ptr, ptr %.sink402.i.sroa.gep147.i, align 8, !tbaa !79, !noalias !1384
  store ptr null, ptr %.sink402.i.sroa.gep147.i, align 8, !tbaa !79, !noalias !1384
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.fy:                                            ; preds = %bb.fv
  %i.pa = urem i64 %i.nc, 1000000
  %i.pb = icmp eq i64 %i.pa, 0
  br i1 %i.pb, label %bb.fz, label %bb.gb

bb.fz:                                            ; preds = %bb.fy
  %i.pc = getelementptr inbounds nuw i8, ptr %i.mp, i64 80
  invoke void @_ZN5arrow9timestampENS_8TimeUnit4typeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.16") align 8 %15, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(32) %i.pc)
          to label %bb.ga unwind label %.loopexit190.i, !noalias !1381

bb.ga:                                            ; preds = %bb.fz
  %i.pd = load ptr, ptr %15, align 8, !tbaa !139, !noalias !1384
  %i.pe = load ptr, ptr %.sink402.i.sroa.gep146.i, align 8, !tbaa !79, !noalias !1384
  store ptr null, ptr %.sink402.i.sroa.gep146.i, align 8, !tbaa !79, !noalias !1384
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
end_hunk_20
begin_hunk_21_@_ZN5arrow7compute12_GLOBAL__N_116BindNonRecursiveENS0_10Expression4CallEbPNS0_11ExecContextE:bb.a
  %i.vt = load ptr, ptr %17, align 16, !tbaa !582 ; 2 uses
  %.not322.not = icmp eq ptr %i.vs, %i.vt
  br i1 %.not322.not, label %_ZN5arrow6ResultIPKNS_7compute6KernelEED2Ev.exit217.thread, label %.lr.ph

_ZN5arrow6ResultIPKNS_7compute6KernelEED2Ev.exit217.thread: ; preds = %bb.ie
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #31
  br label %_ZN5arrow6ResultIPKNS_7compute6KernelEED2Ev.exit217._crit_edge

.lr.ph:                                           ; preds = %bb.ie
  %i.vu = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.vv = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 4 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.vx = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.vz = getelementptr inbounds nuw i8, ptr %26, i64 24
  %i.wa = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.wb = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.wc = getelementptr inbounds nuw i8, ptr %26, i64 32 ; 3 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.we = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 3 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.wg = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.wh = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.wk = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.wl = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.wm = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 7 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 4 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %31, i64 32 ; 4 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %31, i64 80 ; 3 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.wr = getelementptr inbounds nuw i8, ptr %32, i64 16
  %i.ws = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 4 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 2 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %33, i64 16
  %i.ww = getelementptr inbounds nuw i8, ptr %33, i64 24 ; 3 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %33, i64 32 ; 4 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.wz = getelementptr inbounds nuw i8, ptr %33, i64 40
  %i.xa = getelementptr inbounds nuw i8, ptr %31, i64 56 ; 3 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %31, i64 64 ; 3 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 3 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.xe = getelementptr inbounds nuw i8, ptr %37, i64 32
  %i.xf = getelementptr inbounds nuw i8, ptr %37, i64 48
  %i.xg = getelementptr inbounds nuw i8, ptr %31, i64 48
  %i.xh = getelementptr inbounds nuw i8, ptr %37, i64 56
  %i.xi = getelementptr inbounds nuw i8, ptr %37, i64 72
  %i.xj = getelementptr inbounds nuw i8, ptr %31, i64 72
  %i.xk = getelementptr inbounds nuw i8, ptr %37, i64 80
  %i.xl = getelementptr inbounds nuw i8, ptr %31, i64 88
  %i.xm = getelementptr inbounds nuw i8, ptr %37, i64 96
  %i.xn = getelementptr inbounds nuw i8, ptr %31, i64 96
  %i.xo = getelementptr inbounds nuw i8, ptr %31, i64 104
  %i.xp = getelementptr inbounds nuw i8, ptr %37, i64 112
  %i.xq = getelementptr inbounds nuw i8, ptr %31, i64 112 ; 2 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %37, i64 128
  %i.xs = getelementptr inbounds nuw i8, ptr %31, i64 128 ; 2 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %31, i64 136
  %i.xu = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 2 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %36, i64 16
  %i.xw = getelementptr inbounds nuw i8, ptr %32, i64 8
  br label %bb.if

bb.if:                                            ; preds = %.lr.ph, %bb.nq
  %i.xx = phi ptr [ %i.vt, %.lr.ph ], [ %i.amj, %bb.nq ]
  %.071323 = phi i64 [ 0, %.lr.ph ], [ %i.amh, %bb.nq ] ; 9 uses
  %i.xy = getelementptr inbounds nuw [24 x i8], ptr %i.xx, i64 %.071323
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #31
  %i.xz = load ptr, ptr %i.b, align 8, !tbaa !130
  %i.ya = getelementptr inbounds nuw [16 x i8], ptr %i.xz, i64 %.071323
  %i.yb = load ptr, ptr %i.ya, align 8, !tbaa !63 ; 5 uses
  %.not.i.i108 = icmp eq ptr %i.yb, null
  br i1 %.not.i.i108, label %_ZNK5arrow7compute10Expression4typeEv.exit, label %_ZNK5arrow7compute10Expression7literalEv.exit.i

_ZNK5arrow7compute10Expression7literalEv.exit.i:  ; preds = %bb.if
  %i.yc = getelementptr inbounds nuw i8, ptr %i.yb, i64 144
  %i.yd = load i8, ptr %i.yc, align 8, !tbaa !67
  switch i8 %i.yd, label %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i.i [
    i8 0, label %bb.ig
    i8 1, label %bb.ih
  ]

bb.ig:                                            ; preds = %_ZNK5arrow7compute10Expression7literalEv.exit.i
  %i.ye = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow5Datum4typeEv(ptr noundef nonnull align 8 dereferenceable(24) %i.yb)
          to label %.noexc109 unwind label %bb.ik

.noexc109:                                        ; preds = %bb.ig
  %i.yf = load ptr, ptr %i.ye, align 8, !tbaa !139
  br label %_ZNK5arrow7compute10Expression4typeEv.exit

bb.ih:                                            ; preds = %_ZNK5arrow7compute10Expression7literalEv.exit.i
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yb, i64 40
  %i.yh = load ptr, ptr %i.yg, align 8, !tbaa !144
  br label %_ZNK5arrow7compute10Expression4typeEv.exit

_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i.i: ; preds = %_ZNK5arrow7compute10Expression7literalEv.exit.i
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yb, i64 120
  %i.yj = load ptr, ptr %i.yi, align 8, !tbaa !154
  br label %_ZNK5arrow7compute10Expression4typeEv.exit

_ZNK5arrow7compute10Expression4typeEv.exit:       ; preds = %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i.i, %bb.ih, %.noexc109, %bb.if
  %.2.i = phi ptr [ %i.yf, %.noexc109 ], [ %i.yj, %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i.i ], [ %i.yh, %bb.ih ], [ null, %bb.if ] ; 4 uses
  store ptr %.2.i, ptr %22, align 8, !tbaa !299
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.vu, i8 0, i64 16, i1 false)
  %i.yk = load ptr, ptr %i.xy, align 8, !tbaa !299 ; 3 uses
  %i.yl = icmp eq ptr %i.yk, %.2.i
  br i1 %i.yl, label %_ZN5arrow10TypeHolderD2Ev.exit.thread, label %bb.ii

_ZN5arrow10TypeHolderD2Ev.exit.thread:            ; preds = %_ZNK5arrow7compute10Expression4typeEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #31
  br label %bb.nq

bb.ii:                                            ; preds = %_ZNK5arrow7compute10Expression4typeEv.exit
  %i.ym = icmp eq ptr %i.yk, null
  %i.yn = icmp eq ptr %.2.i, null
  %or.cond.i = or i1 %i.yn, %i.ym
  br i1 %or.cond.i, label %_ZN5arrow10TypeHolderD2Ev.exit.thread455, label %bb.ij

_ZN5arrow10TypeHolderD2Ev.exit.thread455:         ; preds = %bb.ii
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #31
  br label %bb.in

bb.ij:                                            ; preds = %bb.ii
  %i.yo = invoke noundef zeroext i1 @_ZNK5arrow8DataType6EqualsERKS0_b(ptr noundef nonnull align 8 dereferenceable(72) %i.yk, ptr noundef nonnull align 8 dereferenceable(72) %.2.i, i1 noundef zeroext false)
          to label %_ZN5arrow10TypeHolderD2Ev.exit unwind label %bb.il

_ZN5arrow10TypeHolderD2Ev.exit:                   ; preds = %bb.ij
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #31
  br i1 %i.yo, label %bb.nq, label %bb.in

bb.ik:                                            ; preds = %bb.ig
  %i.yp = landingpad { ptr, i32 }
          cleanup
  br label %bb.im

bb.il:                                            ; preds = %bb.ij
  %i.yq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow10TypeHolderD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %22) #31
  br label %bb.im

bb.im:                                            ; preds = %bb.il, %bb.ik
  %.pn = phi { ptr, i32 } [ %i.yq, %bb.il ], [ %i.yp, %bb.ik ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #31
  br label %bb.nu

bb.in:                                            ; preds = %_ZN5arrow10TypeHolderD2Ev.exit.thread455, %_ZN5arrow10TypeHolderD2Ev.exit
  %i.yr = load ptr, ptr %i.b, align 8, !tbaa !130
  %i.ys = getelementptr inbounds nuw [16 x i8], ptr %i.yr, i64 %.071323
  %i.yt = load ptr, ptr %i.ys, align 8, !tbaa !63 ; 3 uses
  %.not.i.i114 = icmp eq ptr %i.yt, null
  br i1 %.not.i.i114, label %.thread293, label %_ZSt6get_ifIN5arrow5DatumEJS1_NS0_7compute10Expression9ParameterENS3_4CallEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i

_ZSt6get_ifIN5arrow5DatumEJS1_NS0_7compute10Expression9ParameterENS3_4CallEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i: ; preds = %bb.in
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 144
  %i.yv = load i8, ptr %i.yu, align 8, !tbaa !67
  %i.yw = icmp eq i8 %i.yv, 0
  br i1 %i.yw, label %_ZNK5arrow7compute10Expression7literalEv.exit, label %.thread293

_ZNK5arrow7compute10Expression7literalEv.exit:    ; preds = %_ZSt6get_ifIN5arrow5DatumEJS1_NS0_7compute10Expression9ParameterENS3_4CallEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #31
  %i.yx = load ptr, ptr %17, align 16, !tbaa !582
  %i.yy = getelementptr inbounds nuw [24 x i8], ptr %i.yx, i64 %.071323
  call void @llvm.experimental.noalias.scope.decl(metadata !1422)
  %i.yz = load ptr, ptr %i.yy, align 8, !tbaa !299, !noalias !1422 ; 3 uses
  %.not.i = icmp eq ptr %i.yz, null
  br i1 %.not.i, label %_ZNK5arrow10TypeHolder12GetSharedPtrEv.exit, label %bb.io

bb.io:                                            ; preds = %_ZNK5arrow7compute10Expression7literalEv.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !1425)
  call void @llvm.experimental.noalias.scope.decl(metadata !1428)
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 32
  %i.zb = load ptr, ptr %i.za, align 8, !tbaa !652, !noalias !1431 ; 3 uses
  store ptr %i.zb, ptr %i.vv, align 8, !tbaa !79, !alias.scope !1431
  %i.zc = icmp eq ptr %i.zb, null
  br i1 %i.zc, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i.i, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zb, i64 8 ; 2 uses
  %i.ze = load atomic i32, ptr %i.zd monotonic, align 8, !noalias !1431
  br label %bb.iq

bb.iq:                                            ; preds = %bb.ir, %bb.ip
  %.06.i.i.i.i.i.i.i = phi i32 [ %i.ze, %bb.ip ], [ %i.zi, %bb.ir ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i.i, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  %i.zf = add nsw i32 %.06.i.i.i.i.i.i.i, 1
  %i.zg = cmpxchg weak ptr %i.zd, i32 %.06.i.i.i.i.i.i.i, i32 %i.zf acq_rel monotonic, align 8, !noalias !1431 ; 2 uses
  %i.zh = extractvalue { i32, i1 } %i.zg, 1
  %i.zi = extractvalue { i32, i1 } %i.zg, 0
  br i1 %i.zh, label %_ZNK5arrow8DataType12GetSharedPtrEv.exit.i, label %bb.iq, !llvm.loop !655

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i.i: ; preds = %bb.io, %bb.iq
  %i.zj = call ptr @__cxa_allocate_exception(i64 8) #31, !noalias !1431 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12bad_weak_ptr, i64 16), ptr %i.zj, align 8, !tbaa !83, !noalias !1431
  invoke void @__cxa_throw(ptr nonnull %i.zj, ptr nonnull @_ZTISt12bad_weak_ptr, ptr nonnull @_ZNSt12bad_weak_ptrD1Ev) #33
          to label %.noexc116 unwind label %bb.jz

.noexc116:                                        ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i.i
  unreachable

_ZNK5arrow8DataType12GetSharedPtrEv.exit.i:       ; preds = %bb.ir
  %i.zk = getelementptr inbounds nuw i8, ptr %i.yz, i64 24
  %i.zl = load ptr, ptr %i.zk, align 8, !tbaa !656, !noalias !1431
  %.pre334 = load ptr, ptr %i.vv, align 8, !tbaa !79
  br label %_ZNK5arrow10TypeHolder12GetSharedPtrEv.exit

_ZNK5arrow10TypeHolder12GetSharedPtrEv.exit:      ; preds = %_ZNK5arrow7compute10Expression7literalEv.exit, %_ZNK5arrow8DataType12GetSharedPtrEv.exit.i
  %i.zm = phi ptr [ %.pre334, %_ZNK5arrow8DataType12GetSharedPtrEv.exit.i ], [ null, %_ZNK5arrow7compute10Expression7literalEv.exit ]
  %i.zn = phi ptr [ %i.zl, %_ZNK5arrow8DataType12GetSharedPtrEv.exit.i ], [ null, %_ZNK5arrow7compute10Expression7literalEv.exit ] ; 2 uses
  store ptr %i.zn, ptr %24, align 8, !tbaa !299
  store ptr %i.zn, ptr %i.vw, align 8, !tbaa !139
  store ptr null, ptr %i.vv, align 8, !tbaa !79
  store ptr %i.zm, ptr %i.vx, align 8, !tbaa !79
  store ptr null, ptr %25, align 8, !tbaa !139
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !1432)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %27, i8 0, i64 24, i1 false)
  invoke void @_ZN5arrow7compute11CastOptionsC1Eb(ptr noundef nonnull align 8 dereferenceable(46) %26, i1 noundef zeroext true)
          to label %.noexc121 unwind label %bb.ka

.noexc121:                                        ; preds = %_ZNK5arrow10TypeHolder12GetSharedPtrEv.exit
  store ptr null, ptr %i.vy, align 8, !tbaa !299, !alias.scope !1432
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.wa, i8 0, i64 16, i1 false), !noalias !1432
  store ptr null, ptr %i.vz, align 8, !tbaa !255, !alias.scope !1432
  %i.zo = load ptr, ptr %i.wc, align 8, !tbaa !79, !alias.scope !1432 ; 8 uses
  store ptr null, ptr %i.wc, align 8, !tbaa !79, !alias.scope !1432
  %.not.i.i.i.i.i.i117 = icmp eq ptr %i.zo, null
  br i1 %.not.i.i.i.i.i.i117, label %_ZN5arrow7compute11CastOptions4SafeENS_10TypeHolderE.exit, label %bb.is

bb.is:                                            ; preds = %.noexc121
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zo, i64 8 ; 4 uses
  %i.zq = load atomic i64, ptr %i.zp acquire, align 8 ; 2 uses
  %i.zr = icmp eq i64 %i.zq, 4294967297
  %i.zs = trunc i64 %i.zq to i32                  ; 2 uses
  br i1 %i.zr, label %bb.it, label %bb.iu

bb.it:                                            ; preds = %bb.is
  store i32 0, ptr %i.zp, align 8, !tbaa !80
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zo, i64 12
  store i32 0, ptr %i.zt, align 4, !tbaa !82
  %i.zu = load ptr, ptr %i.zo, align 8, !tbaa !83
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zu, i64 16
  %i.zw = load ptr, ptr %i.zv, align 8
  call void %i.zw(ptr noundef nonnull align 8 dereferenceable(16) %i.zo) #31, !inline_history !456
  %i.zx = load ptr, ptr %i.zo, align 8, !tbaa !83
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zx, i64 24
  %i.zz = load ptr, ptr %i.zy, align 8
  call void %i.zz(ptr noundef nonnull align 8 dereferenceable(16) %i.zo) #31, !inline_history !456
  br label %_ZN5arrow7compute11CastOptions4SafeENS_10TypeHolderE.exit

bb.iu:                                            ; preds = %bb.is
  %i.aaa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86, !noalias !1432
  %.not.i.i.i.i.i.i.i118 = icmp eq i8 %i.aaa, 0
  br i1 %.not.i.i.i.i.i.i.i118, label %bb.iw, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  %i.aab = add nsw i32 %i.zs, -1
  store i32 %i.aab, ptr %i.zp, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i119

bb.iw:                                            ; preds = %bb.iu
  %i.aac = atomicrmw volatile add ptr %i.zp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i119

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i119: ; preds = %bb.iw, %bb.iv
  %.0.i.i.i.i.i.i.i.i120 = phi i32 [ %i.zs, %bb.iv ], [ %i.aac, %bb.iw ]
  %i.aad = icmp eq i32 %.0.i.i.i.i.i.i.i.i120, 1
  br i1 %i.aad, label %bb.ix, label %_ZN5arrow7compute11CastOptions4SafeENS_10TypeHolderE.exit, !prof !87

bb.ix:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i119
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.zo) #31
  br label %_ZN5arrow7compute11CastOptions4SafeENS_10TypeHolderE.exit

_ZN5arrow7compute11CastOptions4SafeENS_10TypeHolderE.exit: ; preds = %bb.ix, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i119, %bb.it, %.noexc121
  invoke void @_ZN5arrow7compute4CastERKNS_5DatumERKNS_10TypeHolderERKNS0_11CastOptionsEPNS0_11ExecContextE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.213") align 8 %23, ptr noundef nonnull align 8 dereferenceable(24) %i.yt, ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef nonnull align 8 dereferenceable(46) %26, ptr noundef null)
          to label %bb.iy unwind label %bb.kb

bb.iy:                                            ; preds = %_ZN5arrow7compute11CastOptions4SafeENS_10TypeHolderE.exit
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow7compute11CastOptionsE, i64 16), ptr %26, align 8, !tbaa !83
  %i.aae = load ptr, ptr %i.wc, align 8, !tbaa !79 ; 8 uses
  %.not.i.i.i.i122 = icmp eq ptr %i.aae, null
  br i1 %.not.i.i.i.i122, label %_ZN5arrow7compute11CastOptionsD2Ev.exit, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aae, i64 8 ; 4 uses
  %i.aag = load atomic i64, ptr %i.aaf acquire, align 8 ; 2 uses
  %i.aah = icmp eq i64 %i.aag, 4294967297
  %i.aai = trunc i64 %i.aag to i32                ; 2 uses
  br i1 %i.aah, label %bb.ja, label %bb.jb

bb.ja:                                            ; preds = %bb.iz
  store i32 0, ptr %i.aaf, align 8, !tbaa !80
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aae, i64 12
  store i32 0, ptr %i.aaj, align 4, !tbaa !82
  %i.aak = load ptr, ptr %i.aae, align 8, !tbaa !83
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aak, i64 16
  %i.aam = load ptr, ptr %i.aal, align 8
  call void %i.aam(ptr noundef nonnull align 8 dereferenceable(16) %i.aae) #31, !inline_history !457
  %i.aan = load ptr, ptr %i.aae, align 8, !tbaa !83
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aan, i64 24
  %i.aap = load ptr, ptr %i.aao, align 8
  call void %i.aap(ptr noundef nonnull align 8 dereferenceable(16) %i.aae) #31, !inline_history !457
  br label %_ZN5arrow7compute11CastOptionsD2Ev.exit

bb.jb:                                            ; preds = %bb.iz
  %i.aaq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i123 = icmp eq i8 %i.aaq, 0
  br i1 %.not.i.i.i.i.i123, label %bb.jd, label %bb.jc

bb.jc:                                            ; preds = %bb.jb
  %i.aar = add nsw i32 %i.aai, -1
  store i32 %i.aar, ptr %i.aaf, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i124

bb.jd:                                            ; preds = %bb.jb
  %i.aas = atomicrmw volatile add ptr %i.aaf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i124

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i124: ; preds = %bb.jd, %bb.jc
  %.0.i.i.i.i.i.i125 = phi i32 [ %i.aai, %bb.jc ], [ %i.aas, %bb.jd ]
  %i.aat = icmp eq i32 %.0.i.i.i.i.i.i125, 1
  br i1 %i.aat, label %bb.je, label %_ZN5arrow7compute11CastOptionsD2Ev.exit, !prof !87

bb.je:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i124
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aae) #31, !inline_history !458
  br label %_ZN5arrow7compute11CastOptionsD2Ev.exit

_ZN5arrow7compute11CastOptionsD2Ev.exit:          ; preds = %bb.iy, %bb.ja, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i124, %bb.je
  %i.aau = load ptr, ptr %i.wb, align 8, !tbaa !79 ; 8 uses
  %.not.i.i.i127 = icmp eq ptr %i.aau, null
  br i1 %.not.i.i.i127, label %_ZN5arrow10TypeHolderD2Ev.exit132, label %bb.jf

bb.jf:                                            ; preds = %_ZN5arrow7compute11CastOptionsD2Ev.exit
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aau, i64 8 ; 4 uses
  %i.aaw = load atomic i64, ptr %i.aav acquire, align 8 ; 2 uses
  %i.aax = icmp eq i64 %i.aaw, 4294967297
  %i.aay = trunc i64 %i.aaw to i32                ; 2 uses
  br i1 %i.aax, label %bb.jg, label %bb.jh

bb.jg:                                            ; preds = %bb.jf
  store i32 0, ptr %i.aav, align 8, !tbaa !80
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aau, i64 12
  store i32 0, ptr %i.aaz, align 4, !tbaa !82
  %i.aba = load ptr, ptr %i.aau, align 8, !tbaa !83
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aba, i64 16
  %i.abc = load ptr, ptr %i.abb, align 8
  call void %i.abc(ptr noundef nonnull align 8 dereferenceable(16) %i.aau) #31, !inline_history !127
  %i.abd = load ptr, ptr %i.aau, align 8, !tbaa !83
  %i.abe = getelementptr inbounds nuw i8, ptr %i.abd, i64 24
  %i.abf = load ptr, ptr %i.abe, align 8
  call void %i.abf(ptr noundef nonnull align 8 dereferenceable(16) %i.aau) #31, !inline_history !127
  br label %_ZN5arrow10TypeHolderD2Ev.exit132

bb.jh:                                            ; preds = %bb.jf
  %i.abg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i128 = icmp eq i8 %i.abg, 0
  br i1 %.not.i.i.i.i128, label %bb.jj, label %bb.ji

bb.ji:                                            ; preds = %bb.jh
  %i.abh = add nsw i32 %i.aay, -1
  store i32 %i.abh, ptr %i.aav, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i129

bb.jj:                                            ; preds = %bb.jh
  %i.abi = atomicrmw volatile add ptr %i.aav, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i129

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i129: ; preds = %bb.jj, %bb.ji
  %.0.i.i.i.i.i130 = phi i32 [ %i.aay, %bb.ji ], [ %i.abi, %bb.jj ]
  %i.abj = icmp eq i32 %.0.i.i.i.i.i130, 1
  br i1 %i.abj, label %bb.jk, label %_ZN5arrow10TypeHolderD2Ev.exit132, !prof !87

bb.jk:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i129
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aau) #31
  br label %_ZN5arrow10TypeHolderD2Ev.exit132

_ZN5arrow10TypeHolderD2Ev.exit132:                ; preds = %_ZN5arrow7compute11CastOptionsD2Ev.exit, %bb.jg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i129, %bb.jk
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #31
  %i.abk = load ptr, ptr %i.vx, align 8, !tbaa !79 ; 8 uses
  %.not.i.i.i133 = icmp eq ptr %i.abk, null
  br i1 %.not.i.i.i133, label %_ZN5arrow10TypeHolderD2Ev.exit138, label %bb.jl

bb.jl:                                            ; preds = %_ZN5arrow10TypeHolderD2Ev.exit132
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abk, i64 8 ; 4 uses
  %i.abm = load atomic i64, ptr %i.abl acquire, align 8 ; 2 uses
  %i.abn = icmp eq i64 %i.abm, 4294967297
  %i.abo = trunc i64 %i.abm to i32                ; 2 uses
  br i1 %i.abn, label %bb.jm, label %bb.jn

bb.jm:                                            ; preds = %bb.jl
  store i32 0, ptr %i.abl, align 8, !tbaa !80
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abk, i64 12
  store i32 0, ptr %i.abp, align 4, !tbaa !82
  %i.abq = load ptr, ptr %i.abk, align 8, !tbaa !83
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abq, i64 16
  %i.abs = load ptr, ptr %i.abr, align 8
  call void %i.abs(ptr noundef nonnull align 8 dereferenceable(16) %i.abk) #31, !inline_history !127
  %i.abt = load ptr, ptr %i.abk, align 8, !tbaa !83
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abt, i64 24
  %i.abv = load ptr, ptr %i.abu, align 8
  call void %i.abv(ptr noundef nonnull align 8 dereferenceable(16) %i.abk) #31, !inline_history !127
  br label %_ZN5arrow10TypeHolderD2Ev.exit138

bb.jn:                                            ; preds = %bb.jl
  %i.abw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i134 = icmp eq i8 %i.abw, 0
  br i1 %.not.i.i.i.i134, label %bb.jp, label %bb.jo

bb.jo:                                            ; preds = %bb.jn
  %i.abx = add nsw i32 %i.abo, -1
  store i32 %i.abx, ptr %i.abl, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i135

bb.jp:                                            ; preds = %bb.jn
  %i.aby = atomicrmw volatile add ptr %i.abl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i135

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i135: ; preds = %bb.jp, %bb.jo
  %.0.i.i.i.i.i136 = phi i32 [ %i.abo, %bb.jo ], [ %i.aby, %bb.jp ]
  %i.abz = icmp eq i32 %.0.i.i.i.i.i136, 1
  br i1 %i.abz, label %bb.jq, label %_ZN5arrow10TypeHolderD2Ev.exit138, !prof !87

bb.jq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i135
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.abk) #31
  br label %_ZN5arrow10TypeHolderD2Ev.exit138

_ZN5arrow10TypeHolderD2Ev.exit138:                ; preds = %_ZN5arrow10TypeHolderD2Ev.exit132, %bb.jm, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i135, %bb.jq
  %i.aca = load ptr, ptr %i.vv, align 8, !tbaa !79 ; 8 uses
  %.not.i.i139 = icmp eq ptr %i.aca, null
  br i1 %.not.i.i139, label %bb.jx, label %bb.jr

bb.jr:                                            ; preds = %_ZN5arrow10TypeHolderD2Ev.exit138
  %i.acb = getelementptr inbounds nuw i8, ptr %i.aca, i64 8 ; 4 uses
  %i.acc = load atomic i64, ptr %i.acb acquire, align 8 ; 2 uses
  %i.acd = icmp eq i64 %i.acc, 4294967297
  %i.ace = trunc i64 %i.acc to i32                ; 2 uses
  br i1 %i.acd, label %bb.js, label %bb.jt

bb.js:                                            ; preds = %bb.jr
  store i32 0, ptr %i.acb, align 8, !tbaa !80
  %i.acf = getelementptr inbounds nuw i8, ptr %i.aca, i64 12
  store i32 0, ptr %i.acf, align 4, !tbaa !82
  %i.acg = load ptr, ptr %i.aca, align 8, !tbaa !83
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acg, i64 16
  %i.aci = load ptr, ptr %i.ach, align 8
  call void %i.aci(ptr noundef nonnull align 8 dereferenceable(16) %i.aca) #31, !inline_history !129
  %i.acj = load ptr, ptr %i.aca, align 8, !tbaa !83
  %i.ack = getelementptr inbounds nuw i8, ptr %i.acj, i64 24
  %i.acl = load ptr, ptr %i.ack, align 8
  call void %i.acl(ptr noundef nonnull align 8 dereferenceable(16) %i.aca) #31, !inline_history !129
  br label %bb.jx

bb.jt:                                            ; preds = %bb.jr
  %i.acm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i140 = icmp eq i8 %i.acm, 0
  br i1 %.not.i.i.i140, label %bb.jv, label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  %i.acn = add nsw i32 %i.ace, -1
  store i32 %i.acn, ptr %i.acb, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i141

bb.jv:                                            ; preds = %bb.jt
  %i.aco = atomicrmw volatile add ptr %i.acb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i141

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i141: ; preds = %bb.jv, %bb.ju
  %.0.i.i.i.i142 = phi i32 [ %i.ace, %bb.ju ], [ %i.aco, %bb.jv ]
  %i.acp = icmp eq i32 %.0.i.i.i.i142, 1
  br i1 %i.acp, label %bb.jw, label %bb.jx, !prof !87

bb.jw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i141
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aca) #31
  br label %bb.jx

bb.jx:                                            ; preds = %bb.jw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i141, %bb.js, %_ZN5arrow10TypeHolderD2Ev.exit138
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #31
  %i.acq = load ptr, ptr %23, align 8, !tbaa !274
  %i.acr = icmp eq ptr %i.acq, null               ; 2 uses
end_hunk_21
begin_hunk_22_@_ZN5arrow7compute12_GLOBAL__N_116BindNonRecursiveENS0_10Expression4CallEbPNS0_11ExecContextE:bb.a
  %.not.i.i.i.i148 = icmp eq i8 %i.aeh, 0
  br i1 %.not.i.i.i.i148, label %bb.ks, label %bb.kr

bb.kr:                                            ; preds = %bb.kq
  %i.aei = add nsw i32 %i.adz, -1
  store i32 %i.aei, ptr %i.adw, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i149

bb.ks:                                            ; preds = %bb.kq
  %i.aej = atomicrmw volatile add ptr %i.adw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i149

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i149: ; preds = %bb.ks, %bb.kr
  %.0.i.i.i.i.i150 = phi i32 [ %i.adz, %bb.kr ], [ %i.aej, %bb.ks ]
  %i.aek = icmp eq i32 %.0.i.i.i.i.i150, 1
  br i1 %i.aek, label %bb.kt, label %_ZN5arrow7compute10ExpressionD2Ev.exit, !prof !87

bb.kt:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i149
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.adv) #31
  br label %_ZN5arrow7compute10ExpressionD2Ev.exit

_ZN5arrow7compute10ExpressionD2Ev.exit:           ; preds = %_ZN5arrow7compute10ExpressionaSEOS1_.exit, %bb.kp, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i149, %bb.kt
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(24) %30)
          to label %_ZN5arrow5DatumD2Ev.exit unwind label %bb.ku

bb.ku:                                            ; preds = %_ZN5arrow7compute10ExpressionD2Ev.exit
  %i.ael = landingpad { ptr, i32 }
          catch ptr null
  %i.aem = extractvalue { ptr, i32 } %i.ael, 0
  call void @__clang_call_terminate(ptr %i.aem) #29
  unreachable

_ZN5arrow5DatumD2Ev.exit:                         ; preds = %_ZN5arrow7compute10ExpressionD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(24) %28)
          to label %_ZN5arrow5DatumD2Ev.exit151 unwind label %bb.kv

bb.kv:                                            ; preds = %_ZN5arrow5DatumD2Ev.exit
  %i.aen = landingpad { ptr, i32 }
          catch ptr null
  %i.aeo = extractvalue { ptr, i32 } %i.aen, 0
  call void @__clang_call_terminate(ptr %i.aeo) #29
  unreachable

_ZN5arrow5DatumD2Ev.exit151:                      ; preds = %_ZN5arrow5DatumD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #31
  br label %bb.kw

bb.kw:                                            ; preds = %_ZN5arrow5DatumD2Ev.exit151, %bb.jy
  %i.aep = load ptr, ptr %23, align 8, !tbaa !274 ; 2 uses
  %i.aeq = icmp eq ptr %i.aep, null
  br i1 %i.aeq, label %bb.kx, label %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i, !prof !290

bb.kx:                                            ; preds = %bb.kw
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.we)
          to label %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i unwind label %bb.ky

bb.ky:                                            ; preds = %bb.kx
  %i.aer = landingpad { ptr, i32 }
          catch ptr null
  %i.aes = extractvalue { ptr, i32 } %i.aer, 0
  call void @__clang_call_terminate(ptr %i.aes) #29
  unreachable

_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i:    ; preds = %bb.kx
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %.pr.i152 = load ptr, ptr %23, align 8, !tbaa !274 ; 2 uses
  %.not.i.i153 = icmp eq ptr %.pr.i152, null
  br i1 %.not.i.i153, label %bb.la, label %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i, !prof !283

_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i, %bb.kw
  %i.aet = phi ptr [ %.pr.i152, %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i ], [ %i.aep, %bb.kw ]
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aet, i64 1
  %i.aev = load i8, ptr %i.aeu, align 1, !tbaa !284, !range !189, !noundef !66
  %i.aew = trunc nuw i8 %i.aev to i1
  br i1 %i.aew, label %bb.la, label %bb.kz

bb.kz:                                            ; preds = %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %23) #31
  br label %bb.la

bb.la:                                            ; preds = %bb.kz, %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i, %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #31
  br i1 %i.acr, label %bb.nq, label %._crit_edge

.thread293:                                       ; preds = %_ZSt6get_ifIN5arrow5DatumEJS1_NS0_7compute10Expression9ParameterENS3_4CallEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i, %bb.in
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #31
  store ptr %i.wm, ptr %31, align 8, !tbaa !107
  store i64 0, ptr %i.wn, align 8, !tbaa !38
  store i8 0, ptr %i.wm, align 8, !tbaa !86
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.wo, i8 0, i64 40, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.wp, i8 0, i64 64, i1 false)
  %i.aex = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %31, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.86, i64 noundef 4)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.mt ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %.thread293
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #31
  %i.aey = load ptr, ptr %i.b, align 8, !tbaa !130
  %i.aez = getelementptr inbounds nuw [16 x i8], ptr %i.aey, i64 %.071323 ; 3 uses
  store ptr null, ptr %i.wq, align 8, !tbaa !79
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aez, i64 8
  %i.afb = load <2 x ptr>, ptr %i.aez, align 8, !tbaa !94
  store ptr null, ptr %i.afa, align 8, !tbaa !79
  store <2 x ptr> %i.afb, ptr %32, align 16, !tbaa !94
  store ptr null, ptr %i.aez, align 8, !tbaa !63
  invoke void @_ZNSt6vectorIN5arrow7compute10ExpressionESaIS2_EE13_M_assign_auxIPKS2_EEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.wo, ptr noundef nonnull %32, ptr noundef nonnull %i.wr)
          to label %_ZNSt6vectorIN5arrow7compute10ExpressionESaIS2_EEaSESt16initializer_listIS2_E.exit.preheader unwind label %bb.mu

_ZNSt6vectorIN5arrow7compute10ExpressionESaIS2_EEaSESt16initializer_listIS2_E.exit.preheader: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.afc = load ptr, ptr %i.xw, align 8, !tbaa !79 ; 8 uses
  %.not.i.i.i156 = icmp eq ptr %i.afc, null
  br i1 %.not.i.i.i156, label %_ZN5arrow7compute10ExpressionD2Ev.exit160, label %bb.lb

bb.lb:                                            ; preds = %_ZNSt6vectorIN5arrow7compute10ExpressionESaIS2_EEaSESt16initializer_listIS2_E.exit.preheader
  %i.afd = getelementptr inbounds nuw i8, ptr %i.afc, i64 8 ; 4 uses
  %i.afe = load atomic i64, ptr %i.afd acquire, align 8 ; 2 uses
  %i.aff = icmp eq i64 %i.afe, 4294967297
  %i.afg = trunc i64 %i.afe to i32                ; 2 uses
  br i1 %i.aff, label %bb.lc, label %bb.ld

bb.lc:                                            ; preds = %bb.lb
  store i32 0, ptr %i.afd, align 8, !tbaa !80
  %i.afh = getelementptr inbounds nuw i8, ptr %i.afc, i64 12
  store i32 0, ptr %i.afh, align 4, !tbaa !82
  %i.afi = load ptr, ptr %i.afc, align 8, !tbaa !83
  %i.afj = getelementptr inbounds nuw i8, ptr %i.afi, i64 16
  %i.afk = load ptr, ptr %i.afj, align 8
  call void %i.afk(ptr noundef nonnull align 8 dereferenceable(16) %i.afc) #31, !inline_history !300
  %i.afl = load ptr, ptr %i.afc, align 8, !tbaa !83
  %i.afm = getelementptr inbounds nuw i8, ptr %i.afl, i64 24
  %i.afn = load ptr, ptr %i.afm, align 8
  call void %i.afn(ptr noundef nonnull align 8 dereferenceable(16) %i.afc) #31, !inline_history !300
  br label %_ZN5arrow7compute10ExpressionD2Ev.exit160

bb.ld:                                            ; preds = %bb.lb
  %i.afo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i157 = icmp eq i8 %i.afo, 0
  br i1 %.not.i.i.i.i157, label %bb.lf, label %bb.le

bb.le:                                            ; preds = %bb.ld
  %i.afp = add nsw i32 %i.afg, -1
  store i32 %i.afp, ptr %i.afd, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i158

bb.lf:                                            ; preds = %bb.ld
  %i.afq = atomicrmw volatile add ptr %i.afd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i158

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i158: ; preds = %bb.lf, %bb.le
  %.0.i.i.i.i.i159 = phi i32 [ %i.afg, %bb.le ], [ %i.afq, %bb.lf ]
  %i.afr = icmp eq i32 %.0.i.i.i.i.i159, 1
  br i1 %i.afr, label %bb.lg, label %_ZN5arrow7compute10ExpressionD2Ev.exit160, !prof !87

bb.lg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i158
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.afc) #31
  br label %_ZN5arrow7compute10ExpressionD2Ev.exit160

_ZN5arrow7compute10ExpressionD2Ev.exit160:        ; preds = %_ZNSt6vectorIN5arrow7compute10ExpressionESaIS2_EEaSESt16initializer_listIS2_E.exit.preheader, %bb.lc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i158, %bb.lg
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #31
  %i.afs = load ptr, ptr %17, align 16, !tbaa !582
  %i.aft = getelementptr inbounds nuw [24 x i8], ptr %i.afs, i64 %.071323
  call void @llvm.experimental.noalias.scope.decl(metadata !1445)
  %i.afu = load ptr, ptr %i.aft, align 8, !tbaa !299, !noalias !1445 ; 3 uses
  %.not.i161 = icmp eq ptr %i.afu, null
  br i1 %.not.i161, label %_ZNK5arrow10TypeHolder12GetSharedPtrEv.exit167, label %bb.lh

bb.lh:                                            ; preds = %_ZN5arrow7compute10ExpressionD2Ev.exit160
  call void @llvm.experimental.noalias.scope.decl(metadata !1448)
  call void @llvm.experimental.noalias.scope.decl(metadata !1451)
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afu, i64 32
  %i.afw = load ptr, ptr %i.afv, align 8, !tbaa !652, !noalias !1454 ; 3 uses
  store ptr %i.afw, ptr %i.ws, align 8, !tbaa !79, !alias.scope !1454
  %i.afx = icmp eq ptr %i.afw, null
  br i1 %i.afx, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i.i165, label %bb.li

bb.li:                                            ; preds = %bb.lh
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afw, i64 8 ; 2 uses
  %i.afz = load atomic i32, ptr %i.afy monotonic, align 8, !noalias !1454
  br label %bb.lj

bb.lj:                                            ; preds = %bb.lk, %bb.li
  %.06.i.i.i.i.i.i.i162 = phi i32 [ %i.afz, %bb.li ], [ %i.agd, %bb.lk ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i.i163 = icmp eq i32 %.06.i.i.i.i.i.i.i162, 0
  br i1 %.not.not.not.i.not.i.i.i.i.i.i163, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i.i165, label %bb.lk

bb.lk:                                            ; preds = %bb.lj
  %i.aga = add nsw i32 %.06.i.i.i.i.i.i.i162, 1
  %i.agb = cmpxchg weak ptr %i.afy, i32 %.06.i.i.i.i.i.i.i162, i32 %i.aga acq_rel monotonic, align 8, !noalias !1454 ; 2 uses
  %i.agc = extractvalue { i32, i1 } %i.agb, 1
  %i.agd = extractvalue { i32, i1 } %i.agb, 0
  br i1 %i.agc, label %_ZNK5arrow8DataType12GetSharedPtrEv.exit.i164, label %bb.lj, !llvm.loop !655

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i.i165: ; preds = %bb.lh, %bb.lj
  %i.age = call ptr @__cxa_allocate_exception(i64 8) #31, !noalias !1454 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12bad_weak_ptr, i64 16), ptr %i.age, align 8, !tbaa !83, !noalias !1454
  invoke void @__cxa_throw(ptr nonnull %i.age, ptr nonnull @_ZTISt12bad_weak_ptr, ptr nonnull @_ZNSt12bad_weak_ptrD1Ev) #33
          to label %.noexc166 unwind label %bb.mv

.noexc166:                                        ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i.i165
  unreachable

_ZNK5arrow8DataType12GetSharedPtrEv.exit.i164:    ; preds = %bb.lk
  %i.agf = getelementptr inbounds nuw i8, ptr %i.afu, i64 24
  %i.agg = load ptr, ptr %i.agf, align 8, !tbaa !656, !noalias !1454
  %.pre335 = load ptr, ptr %i.ws, align 8, !tbaa !79
  br label %_ZNK5arrow10TypeHolder12GetSharedPtrEv.exit167

_ZNK5arrow10TypeHolder12GetSharedPtrEv.exit167:   ; preds = %_ZN5arrow7compute10ExpressionD2Ev.exit160, %_ZNK5arrow8DataType12GetSharedPtrEv.exit.i164
  %i.agh = phi ptr [ %.pre335, %_ZNK5arrow8DataType12GetSharedPtrEv.exit.i164 ], [ null, %_ZN5arrow7compute10ExpressionD2Ev.exit160 ] ; 2 uses
  %i.agi = phi ptr [ %i.agg, %_ZNK5arrow8DataType12GetSharedPtrEv.exit.i164 ], [ null, %_ZN5arrow7compute10ExpressionD2Ev.exit160 ] ; 4 uses
  store ptr %i.agi, ptr %34, align 8, !tbaa !299
  store ptr %i.agi, ptr %i.wt, align 8, !tbaa !139
  store ptr null, ptr %i.ws, align 8, !tbaa !79
  store ptr %i.agh, ptr %i.wu, align 8, !tbaa !79
  store ptr null, ptr %35, align 8, !tbaa !139
  call void @llvm.experimental.noalias.scope.decl(metadata !1455)
  invoke void @_ZN5arrow7compute11CastOptionsC1Eb(ptr noundef nonnull align 8 dereferenceable(46) %33, i1 noundef zeroext true)
          to label %.noexc172 unwind label %bb.mw

.noexc172:                                        ; preds = %_ZNK5arrow10TypeHolder12GetSharedPtrEv.exit167
  store ptr %i.agi, ptr %i.wv, align 8, !tbaa !299, !alias.scope !1455
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.wt, i8 0, i64 16, i1 false), !noalias !1455
  store ptr %i.agi, ptr %i.ww, align 8, !tbaa !255, !alias.scope !1455
  %i.agj = load ptr, ptr %i.wx, align 8, !tbaa !79, !alias.scope !1455 ; 8 uses
  store ptr %i.agh, ptr %i.wx, align 8, !tbaa !79, !alias.scope !1455
  %.not.i.i.i.i.i.i168 = icmp eq ptr %i.agj, null
  br i1 %.not.i.i.i.i.i.i168, label %_ZN5arrow7compute11CastOptions4SafeENS_10TypeHolderE.exit173, label %bb.ll

bb.ll:                                            ; preds = %.noexc172
  %i.agk = getelementptr inbounds nuw i8, ptr %i.agj, i64 8 ; 4 uses
  %i.agl = load atomic i64, ptr %i.agk acquire, align 8 ; 2 uses
  %i.agm = icmp eq i64 %i.agl, 4294967297
  %i.agn = trunc i64 %i.agl to i32                ; 2 uses
  br i1 %i.agm, label %bb.lm, label %bb.ln

bb.lm:                                            ; preds = %bb.ll
  store i32 0, ptr %i.agk, align 8, !tbaa !80
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agj, i64 12
  store i32 0, ptr %i.ago, align 4, !tbaa !82
  %i.agp = load ptr, ptr %i.agj, align 8, !tbaa !83
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agp, i64 16
  %i.agr = load ptr, ptr %i.agq, align 8
  call void %i.agr(ptr noundef nonnull align 8 dereferenceable(16) %i.agj) #31, !inline_history !456
  %i.ags = load ptr, ptr %i.agj, align 8, !tbaa !83
  %i.agt = getelementptr inbounds nuw i8, ptr %i.ags, i64 24
  %i.agu = load ptr, ptr %i.agt, align 8
  call void %i.agu(ptr noundef nonnull align 8 dereferenceable(16) %i.agj) #31, !inline_history !456
  br label %_ZN5arrow7compute11CastOptions4SafeENS_10TypeHolderE.exit173

bb.ln:                                            ; preds = %bb.ll
  %i.agv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86, !noalias !1455
  %.not.i.i.i.i.i.i.i169 = icmp eq i8 %i.agv, 0
  br i1 %.not.i.i.i.i.i.i.i169, label %bb.lp, label %bb.lo

bb.lo:                                            ; preds = %bb.ln
  %i.agw = add nsw i32 %i.agn, -1
  store i32 %i.agw, ptr %i.agk, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i170

bb.lp:                                            ; preds = %bb.ln
  %i.agx = atomicrmw volatile add ptr %i.agk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i170

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i170: ; preds = %bb.lp, %bb.lo
  %.0.i.i.i.i.i.i.i.i171 = phi i32 [ %i.agn, %bb.lo ], [ %i.agx, %bb.lp ]
  %i.agy = icmp eq i32 %.0.i.i.i.i.i.i.i.i171, 1
  br i1 %i.agy, label %bb.lq, label %_ZN5arrow7compute11CastOptions4SafeENS_10TypeHolderE.exit173, !prof !87

bb.lq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i170
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.agj) #31
  br label %_ZN5arrow7compute11CastOptions4SafeENS_10TypeHolderE.exit173

_ZN5arrow7compute11CastOptions4SafeENS_10TypeHolderE.exit173: ; preds = %bb.lq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i170, %bb.lm, %.noexc172
  %i.agz = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #30
          to label %bb.lr unwind label %bb.mx     ; 8 uses

bb.lr:                                            ; preds = %_ZN5arrow7compute11CastOptions4SafeENS_10TypeHolderE.exit173
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agz, i64 8
  store i32 1, ptr %i.aha, align 8, !tbaa !80, !noalias !1458
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.agz, i64 12
  store i32 1, ptr %i.ahb, align 4, !tbaa !82, !noalias !1458
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow7compute11CastOptionsESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.agz, align 8, !tbaa !83, !noalias !1458
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.agz, i64 16 ; 2 uses
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.agz, i64 24
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow7compute11CastOptionsE, i64 16), ptr %i.ahc, align 8, !tbaa !83, !noalias !1458
  %i.ahe = load <2 x ptr>, ptr %i.wy, align 8, !tbaa !94, !noalias !1458
  store <2 x ptr> %i.ahe, ptr %i.ahd, align 8, !tbaa !94, !noalias !1458
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.agz, i64 40
  %i.ahg = load <2 x ptr>, ptr %i.ww, align 8, !tbaa !94, !noalias !1458
  store ptr null, ptr %i.wx, align 8, !tbaa !79, !noalias !1458
  store <2 x ptr> %i.ahg, ptr %i.ahf, align 8, !tbaa !94, !noalias !1458
  store ptr null, ptr %i.ww, align 8, !tbaa !139, !noalias !1458
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.agz, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.ahh, ptr noundef nonnull align 8 dereferenceable(6) %i.wz, i64 6, i1 false), !noalias !1458
  store ptr %i.ahc, ptr %i.xa, align 8, !tbaa !936
  %i.ahi = load ptr, ptr %i.xb, align 8, !tbaa !79 ; 8 uses
  store ptr %i.agz, ptr %i.xb, align 8, !tbaa !79
  %.not.i.i.i.i175 = icmp eq ptr %i.ahi, null
  br i1 %.not.i.i.i.i175, label %_ZNSt12__shared_ptrIN5arrow7compute11CastOptionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ls

bb.ls:                                            ; preds = %bb.lr
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahi, i64 8 ; 4 uses
  %i.ahk = load atomic i64, ptr %i.ahj acquire, align 8 ; 2 uses
  %i.ahl = icmp eq i64 %i.ahk, 4294967297
  %i.ahm = trunc i64 %i.ahk to i32                ; 2 uses
  br i1 %i.ahl, label %bb.lt, label %bb.lu

bb.lt:                                            ; preds = %bb.ls
  store i32 0, ptr %i.ahj, align 8, !tbaa !80
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahi, i64 12
  store i32 0, ptr %i.ahn, align 4, !tbaa !82
  %i.aho = load ptr, ptr %i.ahi, align 8, !tbaa !83
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.aho, i64 16
  %i.ahq = load ptr, ptr %i.ahp, align 8
  call void %i.ahq(ptr noundef nonnull align 8 dereferenceable(16) %i.ahi) #31, !inline_history !1461
  %i.ahr = load ptr, ptr %i.ahi, align 8, !tbaa !83
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahr, i64 24
  %i.aht = load ptr, ptr %i.ahs, align 8
  call void %i.aht(ptr noundef nonnull align 8 dereferenceable(16) %i.ahi) #31, !inline_history !1461
  br label %_ZNSt12__shared_ptrIN5arrow7compute11CastOptionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.lu:                                            ; preds = %bb.ls
  %i.ahu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i176 = icmp eq i8 %i.ahu, 0
  br i1 %.not.i.i.i.i.i176, label %bb.lw, label %bb.lv

bb.lv:                                            ; preds = %bb.lu
  %i.ahv = add nsw i32 %i.ahm, -1
  store i32 %i.ahv, ptr %i.ahj, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i177

bb.lw:                                            ; preds = %bb.lu
  %i.ahw = atomicrmw volatile add ptr %i.ahj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i177

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i177: ; preds = %bb.lw, %bb.lv
  %.0.i.i.i.i.i.i178 = phi i32 [ %i.ahm, %bb.lv ], [ %i.ahw, %bb.lw ]
  %i.ahx = icmp eq i32 %.0.i.i.i.i.i.i178, 1
  br i1 %i.ahx, label %bb.lx, label %_ZNSt12__shared_ptrIN5arrow7compute11CastOptionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !87

bb.lx:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i177
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ahi) #31
  br label %_ZNSt12__shared_ptrIN5arrow7compute11CastOptionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow7compute11CastOptionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.lx, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i177, %bb.lt, %bb.lr
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow7compute11CastOptionsE, i64 16), ptr %33, align 8, !tbaa !83
  %i.ahy = load ptr, ptr %i.wx, align 8, !tbaa !79 ; 8 uses
  %.not.i.i.i.i183 = icmp eq ptr %i.ahy, null
  br i1 %.not.i.i.i.i183, label %_ZN5arrow7compute11CastOptionsD2Ev.exit188, label %bb.ly

bb.ly:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow7compute11CastOptionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.ahy, i64 8 ; 4 uses
  %i.aia = load atomic i64, ptr %i.ahz acquire, align 8 ; 2 uses
  %i.aib = icmp eq i64 %i.aia, 4294967297
  %i.aic = trunc i64 %i.aia to i32                ; 2 uses
  br i1 %i.aib, label %bb.lz, label %bb.ma

bb.lz:                                            ; preds = %bb.ly
  store i32 0, ptr %i.ahz, align 8, !tbaa !80
  %i.aid = getelementptr inbounds nuw i8, ptr %i.ahy, i64 12
  store i32 0, ptr %i.aid, align 4, !tbaa !82
  %i.aie = load ptr, ptr %i.ahy, align 8, !tbaa !83
  %i.aif = getelementptr inbounds nuw i8, ptr %i.aie, i64 16
  %i.aig = load ptr, ptr %i.aif, align 8
  call void %i.aig(ptr noundef nonnull align 8 dereferenceable(16) %i.ahy) #31, !inline_history !457
  %i.aih = load ptr, ptr %i.ahy, align 8, !tbaa !83
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aih, i64 24
  %i.aij = load ptr, ptr %i.aii, align 8
  call void %i.aij(ptr noundef nonnull align 8 dereferenceable(16) %i.ahy) #31, !inline_history !457
  br label %_ZN5arrow7compute11CastOptionsD2Ev.exit188

bb.ma:                                            ; preds = %bb.ly
  %i.aik = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i184 = icmp eq i8 %i.aik, 0
  br i1 %.not.i.i.i.i.i184, label %bb.mc, label %bb.mb

bb.mb:                                            ; preds = %bb.ma
  %i.ail = add nsw i32 %i.aic, -1
  store i32 %i.ail, ptr %i.ahz, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i185

bb.mc:                                            ; preds = %bb.ma
  %i.aim = atomicrmw volatile add ptr %i.ahz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i185

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i185: ; preds = %bb.mc, %bb.mb
  %.0.i.i.i.i.i.i186 = phi i32 [ %i.aic, %bb.mb ], [ %i.aim, %bb.mc ]
  %i.ain = icmp eq i32 %.0.i.i.i.i.i.i186, 1
  br i1 %i.ain, label %bb.md, label %_ZN5arrow7compute11CastOptionsD2Ev.exit188, !prof !87

bb.md:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i185
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ahy) #31, !inline_history !458
  br label %_ZN5arrow7compute11CastOptionsD2Ev.exit188

_ZN5arrow7compute11CastOptionsD2Ev.exit188:       ; preds = %_ZNSt12__shared_ptrIN5arrow7compute11CastOptionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.lz, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i185, %bb.md
  %i.aio = load ptr, ptr %i.wu, align 8, !tbaa !79 ; 8 uses
  %.not.i.i.i189 = icmp eq ptr %i.aio, null
  br i1 %.not.i.i.i189, label %_ZN5arrow10TypeHolderD2Ev.exit194, label %bb.me

bb.me:                                            ; preds = %_ZN5arrow7compute11CastOptionsD2Ev.exit188
  %i.aip = getelementptr inbounds nuw i8, ptr %i.aio, i64 8 ; 4 uses
  %i.aiq = load atomic i64, ptr %i.aip acquire, align 8 ; 2 uses
  %i.air = icmp eq i64 %i.aiq, 4294967297
  %i.ais = trunc i64 %i.aiq to i32                ; 2 uses
  br i1 %i.air, label %bb.mf, label %bb.mg

bb.mf:                                            ; preds = %bb.me
  store i32 0, ptr %i.aip, align 8, !tbaa !80
  %i.ait = getelementptr inbounds nuw i8, ptr %i.aio, i64 12
  store i32 0, ptr %i.ait, align 4, !tbaa !82
  %i.aiu = load ptr, ptr %i.aio, align 8, !tbaa !83
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.aiu, i64 16
  %i.aiw = load ptr, ptr %i.aiv, align 8
  call void %i.aiw(ptr noundef nonnull align 8 dereferenceable(16) %i.aio) #31, !inline_history !127
  %i.aix = load ptr, ptr %i.aio, align 8, !tbaa !83
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.aix, i64 24
  %i.aiz = load ptr, ptr %i.aiy, align 8
  call void %i.aiz(ptr noundef nonnull align 8 dereferenceable(16) %i.aio) #31, !inline_history !127
  br label %_ZN5arrow10TypeHolderD2Ev.exit194

bb.mg:                                            ; preds = %bb.me
  %i.aja = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i190 = icmp eq i8 %i.aja, 0
  br i1 %.not.i.i.i.i190, label %bb.mi, label %bb.mh

bb.mh:                                            ; preds = %bb.mg
  %i.ajb = add nsw i32 %i.ais, -1
  store i32 %i.ajb, ptr %i.aip, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i191

bb.mi:                                            ; preds = %bb.mg
  %i.ajc = atomicrmw volatile add ptr %i.aip, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i191

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i191: ; preds = %bb.mi, %bb.mh
  %.0.i.i.i.i.i192 = phi i32 [ %i.ais, %bb.mh ], [ %i.ajc, %bb.mi ]
  %i.ajd = icmp eq i32 %.0.i.i.i.i.i192, 1
  br i1 %i.ajd, label %bb.mj, label %_ZN5arrow10TypeHolderD2Ev.exit194, !prof !87

bb.mj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i191
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aio) #31
  br label %_ZN5arrow10TypeHolderD2Ev.exit194

_ZN5arrow10TypeHolderD2Ev.exit194:                ; preds = %_ZN5arrow7compute11CastOptionsD2Ev.exit188, %bb.mf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i191, %bb.mj
  %i.aje = load ptr, ptr %i.ws, align 8, !tbaa !79 ; 8 uses
  %.not.i.i195 = icmp eq ptr %i.aje, null
  br i1 %.not.i.i195, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit199, label %bb.mk

bb.mk:                                            ; preds = %_ZN5arrow10TypeHolderD2Ev.exit194
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.aje, i64 8 ; 4 uses
  %i.ajg = load atomic i64, ptr %i.ajf acquire, align 8 ; 2 uses
  %i.ajh = icmp eq i64 %i.ajg, 4294967297
  %i.aji = trunc i64 %i.ajg to i32                ; 2 uses
  br i1 %i.ajh, label %bb.ml, label %bb.mm

bb.ml:                                            ; preds = %bb.mk
  store i32 0, ptr %i.ajf, align 8, !tbaa !80
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.aje, i64 12
  store i32 0, ptr %i.ajj, align 4, !tbaa !82
  %i.ajk = load ptr, ptr %i.aje, align 8, !tbaa !83
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.ajk, i64 16
  %i.ajm = load ptr, ptr %i.ajl, align 8
  call void %i.ajm(ptr noundef nonnull align 8 dereferenceable(16) %i.aje) #31, !inline_history !129
  %i.ajn = load ptr, ptr %i.aje, align 8, !tbaa !83
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.ajn, i64 24
  %i.ajp = load ptr, ptr %i.ajo, align 8
  call void %i.ajp(ptr noundef nonnull align 8 dereferenceable(16) %i.aje) #31, !inline_history !129
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit199

bb.mm:                                            ; preds = %bb.mk
  %i.ajq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i196 = icmp eq i8 %i.ajq, 0
  br i1 %.not.i.i.i196, label %bb.mo, label %bb.mn

bb.mn:                                            ; preds = %bb.mm
  %i.ajr = add nsw i32 %i.aji, -1
  store i32 %i.ajr, ptr %i.ajf, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i197

bb.mo:                                            ; preds = %bb.mm
  %i.ajs = atomicrmw volatile add ptr %i.ajf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i197

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i197: ; preds = %bb.mo, %bb.mn
  %.0.i.i.i.i198 = phi i32 [ %i.aji, %bb.mn ], [ %i.ajs, %bb.mo ]
  %i.ajt = icmp eq i32 %.0.i.i.i.i198, 1
  br i1 %i.ajt, label %bb.mp, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit199, !prof !87

bb.mp:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i197
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aje) #31
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit199

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit199: ; preds = %_ZN5arrow10TypeHolderD2Ev.exit194, %bb.ml, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i197, %bb.mp
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #31
  store ptr %i.xc, ptr %37, align 8, !tbaa !107
  %i.aju = load ptr, ptr %31, align 8, !tbaa !33  ; 2 uses
  %i.ajv = icmp eq ptr %i.aju, %i.wm
  br i1 %i.ajv, label %bb.mq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.mq:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit199
  %i.ajw = load i64, ptr %i.wn, align 8, !tbaa !38 ; 3 uses
  %i.ajx = icmp ult i64 %i.ajw, 16
  call void @llvm.assume(i1 %i.ajx)
  %i.ajy = add nuw nsw i64 %i.ajw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.xc, ptr noundef nonnull align 8 dereferenceable(1) %i.wm, i64 %i.ajy, i1 false)
  br label %_ZN5arrow7compute10Expression4CallC2EOS2_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit199
  store ptr %i.aju, ptr %37, align 8, !tbaa !33
  %i.ajz = load i64, ptr %i.wm, align 8, !tbaa !86
  store i64 %i.ajz, ptr %i.xc, align 8, !tbaa !86
  %.pre336 = load i64, ptr %i.wn, align 8, !tbaa !38
  br label %_ZN5arrow7compute10Expression4CallC2EOS2_.exit

_ZN5arrow7compute10Expression4CallC2EOS2_.exit:   ; preds = %bb.mq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.aka = phi i64 [ %i.ajw, %bb.mq ], [ %.pre336, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  store i64 %i.aka, ptr %i.xd, align 8, !tbaa !38
  store ptr %i.wm, ptr %31, align 8, !tbaa !33
  store i64 0, ptr %i.wn, align 8, !tbaa !38
  store i8 0, ptr %i.wm, align 8, !tbaa !86
  %i.akb = load <2 x ptr>, ptr %i.wo, align 8, !tbaa !62
  store <2 x ptr> %i.akb, ptr %i.xe, align 8, !tbaa !62
  %i.akc = load ptr, ptr %i.xg, align 8, !tbaa !132
  store ptr %i.akc, ptr %i.xf, align 8, !tbaa !132
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.wo, i8 0, i64 24, i1 false)
  %i.akd = load <2 x ptr>, ptr %i.xa, align 8, !tbaa !94
  store ptr null, ptr %i.xb, align 8, !tbaa !79
  store <2 x ptr> %i.akd, ptr %i.xh, align 8, !tbaa !94
  store ptr null, ptr %i.xa, align 8, !tbaa !136
  %i.ake = load i64, ptr %i.xj, align 8, !tbaa !39
  store i64 %i.ake, ptr %i.xi, align 8, !tbaa !39
  %i.akf = load <2 x ptr>, ptr %i.wp, align 8, !tbaa !94
  store ptr null, ptr %i.xl, align 8, !tbaa !79
  store <2 x ptr> %i.akf, ptr %i.xk, align 8, !tbaa !94
  store ptr null, ptr %i.wp, align 8, !tbaa !137
  %i.akg = load <2 x ptr>, ptr %i.xn, align 8, !tbaa !94
  store <2 x ptr> %i.akg, ptr %i.xm, align 8, !tbaa !94
  store ptr null, ptr %i.xo, align 8, !tbaa !138
  %i.akh = load <2 x ptr>, ptr %i.xq, align 8, !tbaa !94
  store ptr null, ptr %i.xq, align 8, !tbaa !79
  store <2 x ptr> %i.akh, ptr %i.xp, align 8, !tbaa !94
  %i.aki = load <2 x ptr>, ptr %i.xs, align 8, !tbaa !94
  store ptr null, ptr %i.xt, align 8, !tbaa !79
  store <2 x ptr> %i.aki, ptr %i.xr, align 8, !tbaa !94
  store ptr null, ptr %i.xs, align 8, !tbaa !139
end_hunk_22
begin_hunk_23_@_ZNSt6vectorIN5arrow7compute10ExpressionESaIS2_EE13_M_assign_auxIPKS2_EEvT_S8_St20forward_iterator_tag:bb.a
  %.not.i.i.i.i.i.i.i.i.i.i29 = icmp eq i8 %i.di, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i29, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dj = load i32, ptr %i.dh, align 4, !tbaa !3
  %i.dk = add nsw i32 %i.dj, 1
  store i32 %i.dk, ptr %i.dh, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i30

bb.ai:                                            ; preds = %bb.ag
  %i.dl = atomicrmw volatile add ptr %i.dh, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i.i.i.i.i.i37 = load ptr, ptr %i.dd, align 8, !tbaa !79
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i30

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i30: ; preds = %bb.ai, %bb.ah, %bb.af
  %i.dm = phi ptr [ %i.dg, %bb.af ], [ %i.dg, %bb.ah ], [ %.pr.pre.i.i.i.i.i.i.i.i.i37, %bb.ai ] ; 8 uses
  %.not8.i.i.i.i.i.i.i.i.i31 = icmp eq ptr %i.dm, null
  br i1 %.not8.i.i.i.i.i.i.i.i.i31, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i35, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i30
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8 ; 4 uses
  %i.do = load atomic i64, ptr %i.dn acquire, align 8 ; 2 uses
  %i.dp = icmp eq i64 %i.do, 4294967297
  %i.dq = trunc i64 %i.do to i32                  ; 2 uses
  br i1 %i.dp, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 0, ptr %i.dn, align 8, !tbaa !80
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 12
  store i32 0, ptr %i.dr, align 4, !tbaa !82
  %i.ds = load ptr, ptr %i.dm, align 8, !tbaa !83
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.du = load ptr, ptr %i.dt, align 8
  tail call void %i.du(ptr noundef nonnull align 8 dereferenceable(16) %i.dm) #31, !inline_history !1538
  %i.dv = load ptr, ptr %i.dm, align 8, !tbaa !83
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.dx = load ptr, ptr %i.dw, align 8
  tail call void %i.dx(ptr noundef nonnull align 8 dereferenceable(16) %i.dm) #31, !inline_history !1538
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i35

bb.al:                                            ; preds = %bb.aj
  %i.dy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i9.i.i.i.i.i.i.i.i.i32 = icmp eq i8 %i.dy, 0
  br i1 %.not.i9.i.i.i.i.i.i.i.i.i32, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dz = add nsw i32 %i.dq, -1
  store i32 %i.dz, ptr %i.dn, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i33

bb.an:                                            ; preds = %bb.al
  %i.ea = atomicrmw volatile add ptr %i.dn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i33

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i33: ; preds = %bb.an, %bb.am
  %.0.i.i.i.i.i.i.i.i.i.i.i34 = phi i32 [ %i.dq, %bb.am ], [ %i.ea, %bb.an ]
  %i.eb = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i34, 1
  br i1 %i.eb, label %bb.ao, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i35, !prof !87

bb.ao:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i33
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dm) #31
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i35

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i35: ; preds = %bb.ao, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i33, %bb.ak, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i30
  store ptr %i.df, ptr %i.dd, align 8, !tbaa !79
  br label %_ZN5arrow7compute10ExpressionaSERKS1_.exit.i.i.i.i.i36

_ZN5arrow7compute10ExpressionaSERKS1_.exit.i.i.i.i.i36: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i35, %.lr.ph.i.i.i.i.i23
  %i.ec = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i26, i64 16
  %i.ed = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i25, i64 16
  %i.ee = add nsw i64 %.012.i.i.i.i.i24, -1
  %i.ef = icmp sgt i64 %.012.i.i.i.i.i24, 1
  br i1 %i.ef, label %.lr.ph.i.i.i.i.i23, label %_ZSt4copyIPKN5arrow7compute10ExpressionEPS2_ET0_T_S7_S6_.exit38.loopexit, !llvm.loop !1107

_ZSt4copyIPKN5arrow7compute10ExpressionEPS2_ET0_T_S7_S6_.exit38.loopexit: ; preds = %_ZN5arrow7compute10ExpressionaSERKS1_.exit.i.i.i.i.i36
  %.pre46 = load ptr, ptr %i.ay, align 8, !tbaa !131
  br label %_ZSt4copyIPKN5arrow7compute10ExpressionEPS2_ET0_T_S7_S6_.exit38

_ZSt4copyIPKN5arrow7compute10ExpressionEPS2_ET0_T_S7_S6_.exit38: ; preds = %_ZSt4copyIPKN5arrow7compute10ExpressionEPS2_ET0_T_S7_S6_.exit38.loopexit, %_ZSt9__advanceIPKN5arrow7compute10ExpressionElEvRT_T0_St26random_access_iterator_tag.exit
  %i.eg = phi ptr [ %.pre46, %_ZSt4copyIPKN5arrow7compute10ExpressionEPS2_ET0_T_S7_S6_.exit38.loopexit ], [ %i.az, %_ZSt9__advanceIPKN5arrow7compute10ExpressionElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %.sink.i, %2
  br i1 %.not9.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKN5arrow7compute10ExpressionEPS2_S2_ET0_T_S7_S6_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPKN5arrow7compute10ExpressionEPS2_ET0_T_S7_S6_.exit38, %_ZSt10_ConstructIN5arrow7compute10ExpressionEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.eq, %_ZSt10_ConstructIN5arrow7compute10ExpressionEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.eg, %_ZSt4copyIPKN5arrow7compute10ExpressionEPS2_ET0_T_S7_S6_.exit38 ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.ep, %_ZSt10_ConstructIN5arrow7compute10ExpressionEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ], [ %.sink.i, %_ZSt4copyIPKN5arrow7compute10ExpressionEPS2_ET0_T_S7_S6_.exit38 ] ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !79 ; 2 uses
  %i.ej = load <2 x ptr>, ptr %.0810.i.i.i.i, align 8, !tbaa !94
  store <2 x ptr> %i.ej, ptr %.011.i.i.i.i, align 8, !tbaa !94
  %.not.i.i.i.i.i.i.i.i.i39 = icmp eq ptr %i.ei, null
  br i1 %.not.i.i.i.i.i.i.i.i.i39, label %_ZSt10_ConstructIN5arrow7compute10ExpressionEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 8 ; 3 uses
  %i.el = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i.i.i.i.i.i40 = icmp eq i8 %i.el, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i40, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.em = load i32, ptr %i.ek, align 4, !tbaa !3
  %i.en = add nsw i32 %i.em, 1
  store i32 %i.en, ptr %i.ek, align 4, !tbaa !3
  br label %_ZSt10_ConstructIN5arrow7compute10ExpressionEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i

bb.ar:                                            ; preds = %bb.ap
  %i.eo = atomicrmw volatile add ptr %i.ek, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructIN5arrow7compute10ExpressionEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i

_ZSt10_ConstructIN5arrow7compute10ExpressionEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %bb.ar, %bb.aq, %.lr.ph.i.i.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 16 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ep, %2
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKN5arrow7compute10ExpressionEPS2_S2_ET0_T_S7_S6_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1537

_ZSt22__uninitialized_copy_aIPKN5arrow7compute10ExpressionEPS2_S2_ET0_T_S7_S6_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN5arrow7compute10ExpressionEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i, %_ZSt4copyIPKN5arrow7compute10ExpressionEPS2_ET0_T_S7_S6_.exit38
  %.0.lcssa.i.i.i.i = phi ptr [ %i.eg, %_ZSt4copyIPKN5arrow7compute10ExpressionEPS2_ET0_T_S7_S6_.exit38 ], [ %i.eq, %_ZSt10_ConstructIN5arrow7compute10ExpressionEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.ay, align 8, !tbaa !131
  br label %_ZNSt6vectorIN5arrow7compute10ExpressionESaIS2_EE15_M_erase_at_endEPS2_.exit

_ZNSt6vectorIN5arrow7compute10ExpressionESaIS2_EE15_M_erase_at_endEPS2_.exit: ; preds = %_ZSt8_DestroyIPN5arrow7compute10ExpressionES2_EvT_S4_RSaIT0_E.exit.i, %_ZSt4copyIPKN5arrow7compute10ExpressionEPS2_ET0_T_S7_S6_.exit, %_ZSt22__uninitialized_copy_aIPKN5arrow7compute10ExpressionEPS2_S2_ET0_T_S7_S6_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN5arrow7compute10ExpressionESaIS2_EE13_M_deallocateEPS2_m.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow7compute11CastOptionsESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow7compute11CastOptionsESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow7compute11CastOptionsEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !83
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(46) %i.a) #31, !inline_history !1539
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow7compute11CastOptionsESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow7compute11CastOptionsESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow7compute11CastOptionsESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1153 ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !86
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #31
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow7compute11KernelStateELN9__gnu_cxx12_Lock_policyE2EEC2IS2_St14default_deleteIS2_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1486   ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !138
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !79
  %i.c = icmp eq ptr %i.a, null
  br i1 %i.c, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #30
          to label %bb.c unwind label %bb.p       ; 10 uses

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %1, align 8, !tbaa !1486
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 7 uses
  store i32 1, ptr %i.e, align 8, !tbaa !80
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 2 uses
  store i32 1, ptr %i.f, align 4, !tbaa !82
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt19_Sp_counted_deleterIPN5arrow7compute11KernelStateESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.d, align 8, !tbaa !83
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.a, ptr %i.g, align 8, !tbaa !1540
  %i.h = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread: ; preds = %bb.c
  store i32 2, ptr %i.e, align 8, !tbaa !3
  br label %bb.j

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i: ; preds = %bb.c
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i = load ptr, ptr %i.b, align 8, !tbaa !79 ; 8 uses
  %.not8.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not8.i, label %bb.j, label %bb.d

bb.d:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %.pr.pre.i, i64 8 ; 4 uses
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.j, align 8, !tbaa !80
  %i.n = getelementptr inbounds nuw i8, ptr %.pr.pre.i, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !82
  %i.o = load ptr, ptr %.pr.pre.i, align 8, !tbaa !83
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #31, !inline_history !1297
  %i.r = load ptr, ptr %.pr.pre.i, align 8, !tbaa !83
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #31, !inline_history !1297
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i9.i = icmp eq i8 %i.u, 0
  br i1 %.not.i9.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = add nsw i32 %i.m, -1
  store i32 %i.v, ptr %i.j, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.w = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i = phi i32 [ %i.m, %bb.g ], [ %i.w, %bb.h ]
  %i.x = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.x, label %bb.i, label %bb.j, !prof !87

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #31
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.e, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i
  store ptr %i.d, ptr %i.b, align 8, !tbaa !79
  %i.y = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.e, align 8, !tbaa !80
  store i32 0, ptr %i.f, align 4, !tbaa !82
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !83
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #31, !inline_history !522
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !83
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #31, !inline_history !522
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i7 = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i7, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = add nsw i32 %i.aa, -1
  store i32 %i.ai, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8

bb.n:                                             ; preds = %bb.l
  %i.aj = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8: ; preds = %bb.n, %bb.m
  %.0.i.i.i9 = phi i32 [ %i.aa, %bb.m ], [ %i.aj, %bb.n ]
  %i.ak = icmp eq i32 %.0.i.i.i9, 1
  br i1 %i.ak, label %bb.o, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !87

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #31
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8, %bb.o
  ret void

bb.p:                                             ; preds = %bb.b
  %i.al = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #31
  resume { ptr, i32 } %i.al
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow7compute11KernelStateESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow7compute11KernelStateESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1542 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNKSt14default_deleteIN5arrow7compute11KernelStateEEclEPS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !83
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #31, !inline_history !1544
  br label %_ZNKSt14default_deleteIN5arrow7compute11KernelStateEEclEPS2_.exit

_ZNKSt14default_deleteIN5arrow7compute11KernelStateEEclEPS2_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow7compute11KernelStateESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt19_Sp_counted_deleterIPN5arrow7compute11KernelStateESt14default_deleteIS3_ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt19_Sp_counted_deleterIPN5arrow7compute11KernelStateESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1153 ; 3 uses
  %i.c = icmp eq ptr %i.b, @_ZTSSt14default_deleteIN5arrow7compute11KernelStateEE
  br i1 %i.c, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.b, align 1, !tbaa !86
  %.not.i = icmp eq i8 %i.d, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread3, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.b
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(50) @_ZTSSt14default_deleteIN5arrow7compute11KernelStateEE) #31
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.a, %_ZNKSt9type_infoeqERKS_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread3:             ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit, %_ZNKSt9type_infoeqERKS_.exit.thread
  %i.h = phi ptr [ %i.g, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.b ]
  ret ptr %i.h
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5arrow8FieldRef7FindOneINS_6SchemaEEENS_6ResultINS_9FieldPathEEERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.600") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.608", align 8   ; 12 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @_ZNK5arrow8FieldRef7FindAllERKNS_6SchemaE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.608") align 8 %3, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  invoke void @_ZNK5arrow8FieldRef13CheckNonEmptyINS_6SchemaEEENS_6StatusERKSt6vectorINS_9FieldPathESaIS5_EERKT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.e

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  %i.a = load ptr, ptr %5, align 8, !tbaa !274    ; 2 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !274
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZN5arrow6StatusD2Ev.exit24, label %bb.b, !prof !290

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @_ZN5arrow6ResultINS_9FieldPathEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4) #31
  %i.c = load ptr, ptr %4, align 8, !tbaa !274    ; 2 uses
  %.not.i19 = icmp eq ptr %i.c, null
  br i1 %.not.i19, label %_ZN5arrow6StatusD2Ev.exit20, label %bb.c, !prof !290
end_hunk_23
begin_hunk_24_@"_ZZN5arrow7compute13FoldConstantsENS0_10ExpressionEENK3$_0clES1_z":_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i
  %i.cg = load <2 x ptr>, ptr %10, align 16, !tbaa !94
  store ptr null, ptr %i.cf, align 8, !tbaa !79
  store <2 x ptr> %i.cg, ptr %i.ce, align 8, !tbaa !94
  store ptr null, ptr %10, align 16, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %_ZN5arrow5DatumD2Ev.exit unwind label %bb.u

bb.u:                                             ; preds = %_ZN5arrow7compute10ExpressionD2Ev.exit
  %i.ch = landingpad { ptr, i32 }
          catch ptr null
  %i.ci = extractvalue { ptr, i32 } %i.ch, 0
  call void @__clang_call_terminate(ptr %i.ci) #29
  unreachable

_ZN5arrow5DatumD2Ev.exit:                         ; preds = %_ZN5arrow7compute10ExpressionD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %_ZN5arrow5DatumD2Ev.exit96 unwind label %bb.v

bb.v:                                             ; preds = %_ZN5arrow5DatumD2Ev.exit
  %i.cj = landingpad { ptr, i32 }
          catch ptr null
  %i.ck = extractvalue { ptr, i32 } %i.cj, 0
  call void @__clang_call_terminate(ptr %i.ck) #29
  unreachable

_ZN5arrow5DatumD2Ev.exit96:                       ; preds = %_ZN5arrow5DatumD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %bb.w

bb.w:                                             ; preds = %_ZN5arrow5DatumD2Ev.exit96, %bb.p
  %i.cl = load ptr, ptr %8, align 8, !tbaa !274   ; 2 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %bb.x, label %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i, !prof !290

bb.x:                                             ; preds = %bb.w
  %i.cn = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.cn)
          to label %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.co = landingpad { ptr, i32 }
          catch ptr null
  %i.cp = extractvalue { ptr, i32 } %i.co, 0
  call void @__clang_call_terminate(ptr %i.cp) #29
  unreachable

_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i:    ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  %.pr.i = load ptr, ptr %8, align 8, !tbaa !274  ; 2 uses
  %.not.i.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i, label %_ZN5arrow6ResultINS_5DatumEED2Ev.exit, label %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i, !prof !283

_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i, %bb.w
  %i.cq = phi ptr [ %.pr.i, %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i ], [ %i.cl, %bb.w ]
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 1
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !284, !range !189, !noundef !66
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %_ZN5arrow6ResultINS_5DatumEED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %8) #31
  br label %_ZN5arrow6ResultINS_5DatumEED2Ev.exit

_ZN5arrow6ResultINS_5DatumEED2Ev.exit:            ; preds = %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i, %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %_ZN5arrow6ResultINS_7compute10ExpressionEEC2IRKS2_vEEOT_.exit

bb.aa:                                            ; preds = %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEEZZNS3_13FoldConstantsES4_ENK3$_0clES4_zEUlRS5_E_EbT_SE_T0_.exit"
  %.val = load ptr, ptr %i.i, align 8, !tbaa !137
  %i.cu = getelementptr i8, ptr %.val, i64 40
  %.val.val = load i32, ptr %i.cu, align 8, !tbaa !265
  %i.cv = icmp eq i32 %.val.val, 0
  br i1 %i.cv, label %_ZN5arrow7compute12_GLOBAL__N_115GetNullHandlingERKNS0_10Expression4CallE.exit, label %.critedge83

_ZN5arrow7compute12_GLOBAL__N_115GetNullHandlingERKNS0_10Expression4CallE.exit: ; preds = %bb.aa
  %i.cw = getelementptr i8, ptr %i.e, i64 96
  %.val90 = load ptr, ptr %i.cw, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %.val90, i64 84
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !1586
  %i.cz = icmp ne i32 %i.cy, 0
  %i.da = icmp eq ptr %i.s, %i.u
  %or.cond = or i1 %i.cz, %i.da
  br i1 %or.cond, label %.critedge83, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5arrow7compute12_GLOBAL__N_115GetNullHandlingERKNS0_10Expression4CallE.exit, %.critedge
  %.sroa.0155.0205 = phi ptr [ %i.gb, %.critedge ], [ %i.s, %_ZN5arrow7compute12_GLOBAL__N_115GetNullHandlingERKNS0_10Expression4CallE.exit ] ; 5 uses
  %i.db = load ptr, ptr %.sroa.0155.0205, align 8, !tbaa !63 ; 4 uses
  %.not.i.i.i97 = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i97, label %.critedge, label %_ZSt6get_ifIN5arrow5DatumEJS1_NS0_7compute10Expression9ParameterENS3_4CallEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i

_ZSt6get_ifIN5arrow5DatumEJS1_NS0_7compute10Expression9ParameterENS3_4CallEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i: ; preds = %.lr.ph
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 144
  %i.dd = load i8, ptr %i.dc, align 8, !tbaa !67
  %i.de = icmp eq i8 %i.dd, 0
  br i1 %i.de, label %_ZNK5arrow7compute10Expression7literalEv.exit.i, label %.critedge

_ZNK5arrow7compute10Expression7literalEv.exit.i:  ; preds = %_ZSt6get_ifIN5arrow5DatumEJS1_NS0_7compute10Expression9ParameterENS3_4CallEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i
  %i.df = tail call noundef i64 @_ZNK5arrow5Datum10null_countEv(ptr noundef nonnull align 8 dereferenceable(24) %i.db)
  %i.dg = tail call noundef i64 @_ZNK5arrow5Datum6lengthEv(ptr noundef nonnull align 8 dereferenceable(24) %i.db)
  %i.dh = icmp eq i64 %i.df, %i.dg
  br i1 %i.dh, label %_ZNK5arrow7compute10Expression7literalEv.exit.i99, label %.critedge

_ZNK5arrow7compute10Expression7literalEv.exit.i99: ; preds = %_ZNK5arrow7compute10Expression7literalEv.exit.i
  %i.di = load ptr, ptr %.sroa.0155.0205, align 8, !tbaa !63, !nonnull !66, !noundef !66 ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 144
  %i.dk = load i8, ptr %i.dj, align 8, !tbaa !67
  switch i8 %i.dk, label %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i.i [
    i8 0, label %bb.ab
    i8 1, label %bb.ac
  ]

bb.ab:                                            ; preds = %_ZNK5arrow7compute10Expression7literalEv.exit.i99
  %i.dl = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow5Datum4typeEv(ptr noundef nonnull align 8 dereferenceable(24) %i.di)
  br label %_ZNK5arrow7compute10Expression4typeEv.exit

bb.ac:                                            ; preds = %_ZNK5arrow7compute10Expression7literalEv.exit.i99
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 40
  br label %_ZNK5arrow7compute10Expression4typeEv.exit

_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i.i: ; preds = %_ZNK5arrow7compute10Expression7literalEv.exit.i99
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 120
  br label %_ZNK5arrow7compute10Expression4typeEv.exit

_ZNK5arrow7compute10Expression4typeEv.exit:       ; preds = %bb.ab, %bb.ac, %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i.i
  %.2.i.in = phi ptr [ %i.dl, %bb.ab ], [ %i.dn, %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i.i ], [ %i.dm, %bb.ac ]
  %.2.i = load ptr, ptr %.2.i.in, align 8, !tbaa !255
  %i.do = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 120 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !154
  %i.dq = tail call noundef zeroext i1 @_ZNK5arrow8DataType6EqualsERKS0_b(ptr noundef nonnull align 8 dereferenceable(72) %.2.i, ptr noundef nonnull align 8 dereferenceable(72) %i.dp, i1 noundef zeroext false)
  br i1 %i.dq, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %_ZNK5arrow7compute10Expression4typeEv.exit
  store ptr null, ptr %0, align 8, !tbaa !274
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.0155.0205, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !79 ; 2 uses
  %i.du = load <2 x ptr>, ptr %.sroa.0155.0205, align 8, !tbaa !94
  store <2 x ptr> %i.du, ptr %i.dr, align 8, !tbaa !94
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5arrow6ResultINS_7compute10ExpressionEEC2IRKS2_vEEOT_.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 8 ; 3 uses
  %i.dw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i.i.i.i100 = icmp eq i8 %i.dw, 0
  br i1 %.not.i.i.i.i.i.i.i.i100, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dx = load i32, ptr %i.dv, align 4, !tbaa !3
  %i.dy = add nsw i32 %i.dx, 1
  store i32 %i.dy, ptr %i.dv, align 4, !tbaa !3
  br label %_ZN5arrow6ResultINS_7compute10ExpressionEEC2IRKS2_vEEOT_.exit

bb.ag:                                            ; preds = %bb.ae
  %i.dz = atomicrmw volatile add ptr %i.dv, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5arrow6ResultINS_7compute10ExpressionEEC2IRKS2_vEEOT_.exit

bb.ah:                                            ; preds = %_ZNK5arrow7compute10Expression4typeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #31
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1588)
  %i.ea = load ptr, ptr %i.do, align 8, !tbaa !299, !noalias !1588 ; 3 uses
  %.not.i = icmp eq ptr %i.ea, null
  br i1 %.not.i, label %bb.am, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1591)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1594)
  %i.eb = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 32
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !652, !noalias !1597 ; 3 uses
  store ptr %i.ed, ptr %i.eb, align 8, !tbaa !79, !alias.scope !1597
  %i.ee = icmp eq ptr %i.ed, null
  br i1 %i.ee, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 8 ; 2 uses
  %i.eg = load atomic i32, ptr %i.ef monotonic, align 8, !noalias !1597
  br label %bb.ak

bb.ak:                                            ; preds = %bb.al, %bb.aj
  %.06.i.i.i.i.i.i.i = phi i32 [ %i.eg, %bb.aj ], [ %i.ek, %bb.al ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.eh = add nsw i32 %.06.i.i.i.i.i.i.i, 1
  %i.ei = cmpxchg weak ptr %i.ef, i32 %.06.i.i.i.i.i.i.i, i32 %i.eh acq_rel monotonic, align 8, !noalias !1597 ; 2 uses
  %i.ej = extractvalue { i32, i1 } %i.ei, 1
  %i.ek = extractvalue { i32, i1 } %i.ei, 0
  br i1 %i.ej, label %_ZNK5arrow8DataType12GetSharedPtrEv.exit.i, label %bb.ak, !llvm.loop !655

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i.i: ; preds = %bb.ak, %bb.ai
  %i.el = tail call ptr @__cxa_allocate_exception(i64 8) #31, !noalias !1597 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12bad_weak_ptr, i64 16), ptr %i.el, align 8, !tbaa !83, !noalias !1597
  tail call void @__cxa_throw(ptr nonnull %i.el, ptr nonnull @_ZTISt12bad_weak_ptr, ptr nonnull @_ZNSt12bad_weak_ptrD1Ev) #33, !noalias !1597
  unreachable

_ZNK5arrow8DataType12GetSharedPtrEv.exit.i:       ; preds = %bb.al
  %i.em = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !656, !noalias !1597
  store ptr %i.en, ptr %14, align 8, !tbaa !139, !alias.scope !1597
  br label %_ZNK5arrow10TypeHolder12GetSharedPtrEv.exit

bb.am:                                            ; preds = %bb.ah
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false), !alias.scope !1588
  br label %_ZNK5arrow10TypeHolder12GetSharedPtrEv.exit

_ZNK5arrow10TypeHolder12GetSharedPtrEv.exit:      ; preds = %_ZNK5arrow8DataType12GetSharedPtrEv.exit.i, %bb.am
  invoke void @_ZN5arrow14MakeNullScalarESt10shared_ptrINS_8DataTypeEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.25") align 8 %13, ptr noundef nonnull %14)
          to label %bb.an unwind label %bb.ba

bb.an:                                            ; preds = %_ZNK5arrow10TypeHolder12GetSharedPtrEv.exit
  invoke void @_ZN5arrow7compute7literalISt10shared_ptrINS_6ScalarEEEENS0_10ExpressionEOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::compute::Expression") align 8 %12, ptr noundef nonnull align 8 dereferenceable(16) %13)
          to label %_ZN5arrow7compute10ExpressionD2Ev.exit105 unwind label %bb.bb

_ZN5arrow7compute10ExpressionD2Ev.exit105:        ; preds = %bb.an
  store ptr null, ptr %0, align 8, !tbaa !274
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ep = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.eq = load <2 x ptr>, ptr %12, align 16, !tbaa !94
  store ptr null, ptr %i.ep, align 8, !tbaa !79
  store <2 x ptr> %i.eq, ptr %i.eo, align 8, !tbaa !94
  store ptr null, ptr %12, align 16, !tbaa !63
  %i.er = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !79 ; 8 uses
  %.not.i.i106 = icmp eq ptr %i.es, null
  br i1 %.not.i.i106, label %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZN5arrow7compute10ExpressionD2Ev.exit105
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8 ; 4 uses
  %i.eu = load atomic i64, ptr %i.et acquire, align 8 ; 2 uses
  %i.ev = icmp eq i64 %i.eu, 4294967297
  %i.ew = trunc i64 %i.eu to i32                  ; 2 uses
  br i1 %i.ev, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store i32 0, ptr %i.et, align 8, !tbaa !80
  %i.ex = getelementptr inbounds nuw i8, ptr %i.es, i64 12
  store i32 0, ptr %i.ex, align 4, !tbaa !82
  %i.ey = load ptr, ptr %i.es, align 8, !tbaa !83
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fa = load ptr, ptr %i.ez, align 8
  call void %i.fa(ptr noundef nonnull align 8 dereferenceable(16) %i.es) #31, !inline_history !468
  %i.fb = load ptr, ptr %i.es, align 8, !tbaa !83
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 24
  %i.fd = load ptr, ptr %i.fc, align 8
  call void %i.fd(ptr noundef nonnull align 8 dereferenceable(16) %i.es) #31, !inline_history !468
  br label %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aq:                                            ; preds = %bb.ao
  %i.fe = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i107 = icmp eq i8 %i.fe, 0
  br i1 %.not.i.i.i107, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ff = add nsw i32 %i.ew, -1
  store i32 %i.ff, ptr %i.et, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.as:                                            ; preds = %bb.aq
  %i.fg = atomicrmw volatile add ptr %i.et, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.as, %bb.ar
  %.0.i.i.i.i = phi i32 [ %i.ew, %bb.ar ], [ %i.fg, %bb.as ]
  %i.fh = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.fh, label %bb.at, label %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !87

bb.at:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.es) #31
  br label %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5arrow7compute10ExpressionD2Ev.exit105, %bb.ap, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.at
  %i.fi = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !79 ; 8 uses
  %.not.i.i108 = icmp eq ptr %i.fj, null
  br i1 %.not.i.i108, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.au

bb.au:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8 ; 4 uses
  %i.fl = load atomic i64, ptr %i.fk acquire, align 8 ; 2 uses
  %i.fm = icmp eq i64 %i.fl, 4294967297
  %i.fn = trunc i64 %i.fl to i32                  ; 2 uses
  br i1 %i.fm, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store i32 0, ptr %i.fk, align 8, !tbaa !80
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fj, i64 12
  store i32 0, ptr %i.fo, align 4, !tbaa !82
  %i.fp = load ptr, ptr %i.fj, align 8, !tbaa !83
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.fr = load ptr, ptr %i.fq, align 8
  call void %i.fr(ptr noundef nonnull align 8 dereferenceable(16) %i.fj) #31, !inline_history !129
  %i.fs = load ptr, ptr %i.fj, align 8, !tbaa !83
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 24
  %i.fu = load ptr, ptr %i.ft, align 8
  call void %i.fu(ptr noundef nonnull align 8 dereferenceable(16) %i.fj) #31, !inline_history !129
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aw:                                            ; preds = %bb.au
  %i.fv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i109 = icmp eq i8 %i.fv, 0
  br i1 %.not.i.i.i109, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fw = add nsw i32 %i.fn, -1
  store i32 %i.fw, ptr %i.fk, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i110

bb.ay:                                            ; preds = %bb.aw
  %i.fx = atomicrmw volatile add ptr %i.fk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i110

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i110: ; preds = %bb.ay, %bb.ax
  %.0.i.i.i.i111 = phi i32 [ %i.fn, %bb.ax ], [ %i.fx, %bb.ay ]
  %i.fy = icmp eq i32 %.0.i.i.i.i111, 1
  br i1 %i.fy, label %bb.az, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !87

bb.az:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i110
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fj) #31
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.av, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i110, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  br label %_ZN5arrow6ResultINS_7compute10ExpressionEEC2IRKS2_vEEOT_.exit

bb.ba:                                            ; preds = %_ZNK5arrow10TypeHolder12GetSharedPtrEv.exit
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.bb:                                            ; preds = %bb.an
  %i.ga = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %13) #31
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.pn = phi { ptr, i32 } [ %i.ga, %bb.bb ], [ %i.fz, %bb.ba ]
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %14) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  br label %bb.en

.critedge:                                        ; preds = %_ZNK5arrow7compute10Expression7literalEv.exit.i, %_ZSt6get_ifIN5arrow5DatumEJS1_NS0_7compute10Expression9ParameterENS3_4CallEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i, %.lr.ph
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.0155.0205, i64 16 ; 2 uses
  %i.gc = icmp eq ptr %i.gb, %i.u
  br i1 %i.gc, label %.critedge83, label %.lr.ph

.critedge83:                                      ; preds = %.critedge, %bb.aa, %_ZN5arrow7compute12_GLOBAL__N_115GetNullHandlingERKNS0_10Expression4CallE.exit
  %i.gd = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !38
  switch i64 %i.ge, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133.thread168 [
    i64 10, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 9, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %.critedge83
  %i.gf = load ptr, ptr %i.e, align 8, !tbaa !33  ; 2 uses
  %i.gg = load i64, ptr %i.gf, align 1
  %i.gh = xor i64 %i.gg, 7306365178896215649
  %i.gi = getelementptr i8, ptr %i.gf, i64 8
  %i.gj = load i16, ptr %i.gi, align 1
  %i.gk = zext i16 %i.gj to i64
  %i.gl = xor i64 %i.gk, 25966
  %i.gm = or i64 %i.gh, %i.gl
  %i.gn = icmp ne i64 %i.gm, 0
  %i.go = zext i1 %i.gn to i32
  %i.gp = icmp eq i32 %i.go, 0
  br i1 %i.gp, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133.thread168

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %.val92 = load ptr, ptr %i.r, align 8, !tbaa !130 ; 8 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.val92, i64 16 ; 7 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i8 1, ptr %i.a, align 1, !tbaa !385
  call void @_ZN5arrow7compute7literalIbEENS0_10ExpressionEOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::compute::Expression") align 8 %15, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  %i.gt = invoke noundef zeroext i1 @_ZNK5arrow7compute10Expression6EqualsERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %.val92, ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %_ZN5arrow7computeeqERKNS0_10ExpressionES3_.exit unwind label %bb.cd

bb.bd:                                            ; preds = %bb.cq
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i8 1, ptr %i.a, align 1, !tbaa !385
  call void @_ZN5arrow7compute7literalIbEENS0_10ExpressionEOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::compute::Expression") align 8 %15, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  %i.gu = invoke noundef zeroext i1 @_ZNK5arrow7compute10Expression6EqualsERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.gq, ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %_ZN5arrow7computeeqERKNS0_10ExpressionES3_.exit.1 unwind label %bb.cd

_ZN5arrow7computeeqERKNS0_10ExpressionES3_.exit.1: ; preds = %bb.bd
  %i.gv = load ptr, ptr %i.gr, align 8, !tbaa !79 ; 8 uses
end_hunk_24
begin_hunk_25_@"_ZZN5arrow7compute13FoldConstantsENS0_10ExpressionEENK3$_0clES1_z":_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !79 ; 2 uses
  %i.om = load <2 x ptr>, ptr %.sroa.0.0.copyload.lcssa225, align 8, !tbaa !94
  store <2 x ptr> %i.om, ptr %i.oj, align 8, !tbaa !94
  %.not.i.i.i.i.i.i.i149 = icmp eq ptr %i.ol, null
  br i1 %.not.i.i.i.i.i.i.i149, label %_ZN5arrow6ResultINS_7compute10ExpressionEEC2IRKS2_vEEOT_.exit, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.on = getelementptr inbounds nuw i8, ptr %i.ol, i64 8 ; 3 uses
  %i.oo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i.i.i.i150 = icmp eq i8 %i.oo, 0
  br i1 %.not.i.i.i.i.i.i.i.i150, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.op = load i32, ptr %i.on, align 4, !tbaa !3
  %i.oq = add nsw i32 %i.op, 1
  store i32 %i.oq, ptr %i.on, align 4, !tbaa !3
  br label %_ZN5arrow6ResultINS_7compute10ExpressionEEC2IRKS2_vEEOT_.exit

bb.eg:                                            ; preds = %bb.ee
  %i.or = atomicrmw volatile add ptr %i.on, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5arrow6ResultINS_7compute10ExpressionEEC2IRKS2_vEEOT_.exit

bb.eh:                                            ; preds = %bb.dc, %bb.dw
  %i.os = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute10ExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %18) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #31
  br label %bb.en

bb.ei:                                            ; preds = %_ZN5arrow7compute10ExpressionD2Ev.exit148
  %i.ot = call noundef zeroext i1 @_ZNK5arrow7compute10Expression6EqualsERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %.val91, ptr noundef nonnull align 8 dereferenceable(16) %i.lc)
  br i1 %i.ot, label %bb.ej, label %bb.cv

bb.ej:                                            ; preds = %bb.dj, %bb.ei
  %.sroa.0.0.copyload.lcssa226 = phi ptr [ %.val91, %bb.ei ], [ %i.lc, %bb.dj ] ; 2 uses
  store ptr null, ptr %0, align 8, !tbaa !274
  %i.ou = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ov = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.lcssa226, i64 8
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !79 ; 2 uses
  %i.ox = load <2 x ptr>, ptr %.sroa.0.0.copyload.lcssa226, align 8, !tbaa !94
  store <2 x ptr> %i.ox, ptr %i.ou, align 8, !tbaa !94
  %.not.i.i.i.i.i.i.i152 = icmp eq ptr %i.ow, null
  br i1 %.not.i.i.i.i.i.i.i152, label %_ZN5arrow6ResultINS_7compute10ExpressionEEC2IRKS2_vEEOT_.exit, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ow, i64 8 ; 3 uses
  %i.oz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i.i.i.i153 = icmp eq i8 %i.oz, 0
  br i1 %.not.i.i.i.i.i.i.i.i153, label %bb.em, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.pa = load i32, ptr %i.oy, align 4, !tbaa !3
  %i.pb = add nsw i32 %i.pa, 1
  store i32 %i.pb, ptr %i.oy, align 4, !tbaa !3
  br label %_ZN5arrow6ResultINS_7compute10ExpressionEEC2IRKS2_vEEOT_.exit

bb.em:                                            ; preds = %bb.ek
  %i.pc = atomicrmw volatile add ptr %i.oy, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5arrow6ResultINS_7compute10ExpressionEEC2IRKS2_vEEOT_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133.thread168: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %.critedge83, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133
  store ptr null, ptr %0, align 8, !tbaa !274
  %i.pd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.pe = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.pf = load <2 x ptr>, ptr %1, align 8, !tbaa !94
  store ptr null, ptr %i.pe, align 8, !tbaa !79
  store <2 x ptr> %i.pf, ptr %i.pd, align 8, !tbaa !94
  store ptr null, ptr %1, align 8, !tbaa !63
  br label %_ZN5arrow6ResultINS_7compute10ExpressionEEC2IRKS2_vEEOT_.exit

_ZN5arrow6ResultINS_7compute10ExpressionEEC2IRKS2_vEEOT_.exit: ; preds = %bb.dr, %bb.dt, %bb.du, %bb.ed, %bb.ef, %bb.eg, %bb.ej, %bb.el, %bb.em, %bb.bz, %bb.cb, %bb.cc, %bb.cl, %bb.cn, %bb.co, %bb.cr, %bb.ct, %bb.cu, %bb.ag, %bb.af, %bb.ad, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133.thread168, %bb.dk, %bb.bs, %_ZN5arrow6ResultINS_5DatumEED2Ev.exit, %bb.a
  ret void

bb.en:                                            ; preds = %bb.dv, %bb.eh, %bb.cd, %bb.cp, %bb.bc, %.body, %bb.q
  %.pn78.pn.pn = phi { ptr, i32 } [ %i.cd, %.body ], [ %i.bl, %bb.q ], [ %.pn, %bb.bc ], [ %i.jf, %bb.cd ], [ %i.kg, %bb.cp ], [ %i.os, %bb.eh ], [ %i.nr, %bb.dv ]
  resume { ptr, i32 } %.pn78.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status8FromArgsIJRA61_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 1 dereferenceable(61) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31, !noalias !1598
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !1598
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1230, !noalias !1598, !nonnull !66, !align !239
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(61) %2) #31, !noalias !1598
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(61) %2, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA61_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i unwind label %bb.b, !noalias !1598 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA61_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN5arrow8internal12JoinToStringIJRA61_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA61_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.d ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !1598
  br label %common.resume

_ZN5arrow8internal12JoinToStringIJRA61_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA61_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !1598
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA61_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.g = load ptr, ptr %4, align 8, !tbaa !33     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !86
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  ret void

bb.f:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA61_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !33     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8, !tbaa !86
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %common.resume
}

declare void @_ZN5arrow16DictionaryScalar4MakeESt10shared_ptrINS_6ScalarEES1_INS_5ArrayEE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.744") align 8, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow10MakeScalarIiNS_11CTypeTraitsIiEENS_11Int32ScalarES3_EESt10shared_ptrINS_6ScalarEET_(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.25") align 8 %0, i32 noundef %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr.16", align 16 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1601)
  %i.a = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow5int32Ev(), !noalias !1601 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !79, !noalias !1601 ; 2 uses
  %i.e = load <2 x ptr>, ptr %i.a, align 8, !tbaa !94, !noalias !1601
  store <2 x ptr> %i.e, ptr %2, align 16, !tbaa !94, !alias.scope !1601
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow10TypeTraitsINS_9Int32TypeEE14type_singletonEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.g = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86, !noalias !1601
  %.not.i.i.i.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.f, align 4, !tbaa !3, !noalias !1601
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.f, align 4, !tbaa !3, !noalias !1601
  br label %_ZN5arrow10TypeTraitsINS_9Int32TypeEE14type_singletonEv.exit

bb.d:                                             ; preds = %bb.b
  %i.j = atomicrmw volatile add ptr %i.f, i32 1 acq_rel, align 4, !noalias !1601 ; 0 uses
  br label %_ZN5arrow10TypeTraitsINS_9Int32TypeEE14type_singletonEv.exit

_ZN5arrow10TypeTraitsINS_9Int32TypeEE14type_singletonEv.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.k = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #30
          to label %.noexc unwind label %bb.o     ; 11 uses

.noexc:                                           ; preds = %_ZN5arrow10TypeTraitsINS_9Int32TypeEE14type_singletonEv.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i32 1, ptr %i.l, align 8, !tbaa !80, !noalias !1604
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 12 ; 3 uses
  store i32 1, ptr %i.m, align 4, !tbaa !82, !noalias !1604
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow11Int32ScalarESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.k, align 8, !tbaa !83, !noalias !1604
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.r = load <2 x ptr>, ptr %2, align 16, !tbaa !94, !noalias !1604
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !noalias !1604
  store i64 0, ptr %i.p, align 8, !noalias !1604
  store <2 x ptr> %i.r, ptr %i.q, align 8, !tbaa !94, !noalias !1604
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  store i8 1, ptr %i.s, align 8, !tbaa !182, !noalias !1604
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 60
  store i32 %1, ptr %i.t, align 4, !tbaa !1391, !noalias !1604
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow11Int32ScalarE, i64 16), ptr %i.n, align 8, !tbaa !83, !noalias !1604
  store ptr %i.n, ptr %i.o, align 8, !tbaa !1150, !noalias !1604
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86, !noalias !1604
  %.not.i.i3.i.i.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i3.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.thread.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.thread.i.i.i: ; preds = %.noexc
  store i32 2, ptr %i.m, align 4, !tbaa !3, !noalias !1604
  br label %_ZNSt12__shared_ptrIN5arrow11Int32ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i: ; preds = %.noexc
  %i.v = atomicrmw volatile add ptr %i.m, i32 1 acq_rel, align 4, !noalias !1604 ; 0 uses
  %.pre.i.i.i.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !652, !noalias !1604 ; 4 uses
  %.not6.i.i.i.i.i.i.i = icmp eq ptr %.pre.i.i.i.i.i.i, null
  br i1 %.not6.i.i.i.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow11Int32ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i.i, i64 12 ; 3 uses
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86, !noalias !1604
  %.not.i7.i.i.i.i.i.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i7.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = load i32, ptr %i.w, align 4, !tbaa !3, !noalias !1604 ; 2 uses
  %i.z = add nsw i32 %i.y, -1
  store i32 %i.z, ptr %i.w, align 4, !tbaa !3, !noalias !1604
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.aa = atomicrmw volatile add ptr %i.w, i32 -1 acq_rel, align 4, !noalias !1604
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.y, %bb.f ], [ %i.aa, %bb.g ]
  %i.ab = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ab, label %bb.h, label %_ZNSt12__shared_ptrIN5arrow11Int32ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  %i.ac = load ptr, ptr %.pre.i.i.i.i.i.i, align 8, !tbaa !83, !noalias !1604
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !noalias !1604
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %.pre.i.i.i.i.i.i) #31, !noalias !1604, !inline_history !1607
  br label %_ZNSt12__shared_ptrIN5arrow11Int32ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow11Int32ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.thread.i.i.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.h
  store ptr %i.k, ptr %i.p, align 8, !tbaa !652, !noalias !1604
  store ptr %i.n, ptr %0, align 8, !tbaa !71
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.af, align 8, !tbaa !79
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !79  ; 8 uses
  %.not.i.i1 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i1, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow11Int32ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 4 uses
  %i.ai = load atomic i64, ptr %i.ah acquire, align 8 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 4294967297
  %i.ak = trunc i64 %i.ai to i32                  ; 2 uses
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ah, align 8, !tbaa !80
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  store i32 0, ptr %i.al, align 4, !tbaa !82
  %i.am = load ptr, ptr %i.ag, align 8, !tbaa !83
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #31, !inline_history !129
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !83
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #31, !inline_history !129
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.as = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i2 = icmp eq i8 %i.as, 0
  br i1 %.not.i.i.i2, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = add nsw i32 %i.ak, -1
  store i32 %i.at, ptr %i.ah, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

bb.m:                                             ; preds = %bb.k
  %i.au = atomicrmw volatile add ptr %i.ah, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i4 = phi i32 [ %i.ak, %bb.l ], [ %i.au, %bb.m ]
  %i.av = icmp eq i32 %.0.i.i.i.i4, 1
  br i1 %i.av, label %bb.n, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !87

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #31
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow11Int32ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  ret void

bb.o:                                             ; preds = %_ZN5arrow10TypeTraitsINS_9Int32TypeEE14type_singletonEv.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  resume { ptr, i32 } %i.aw
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow16DictionaryScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !79   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !80
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !82
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !83
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !522
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !83
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !522
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !87

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow11Int32ScalarESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow11Int32ScalarESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow11Int32ScalarEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !83
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(48) %i.a) #31, !inline_history !1608
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow11Int32ScalarESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow11Int32ScalarESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow11Int32ScalarESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1153 ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !86
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #31
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ScalarD2Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow6ScalarE, i64 16), ptr %0, align 8, !tbaa !83
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !79   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !80
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !82
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !83
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !129
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !83
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !129
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !87

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !652  ; 4 uses
  %.not.i.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i1, label %_ZNSt23enable_shared_from_thisIN5arrow6ScalarEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 12 ; 3 uses
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = load i32, ptr %i.t, align 4, !tbaa !3    ; 2 uses
  %i.w = add nsw i32 %i.v, -1
  store i32 %i.w, ptr %i.t, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.x = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.v, %bb.i ], [ %i.x, %bb.j ]
  %i.y = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.y, label %bb.k, label %_ZNSt23enable_shared_from_thisIN5arrow6ScalarEED2Ev.exit

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !83
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31, !inline_history !1609
  br label %_ZNSt23enable_shared_from_thisIN5arrow6ScalarEED2Ev.exit

_ZNSt23enable_shared_from_thisIN5arrow6ScalarEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.k
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow11Int32ScalarD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow6ScalarE, i64 16), ptr %0, align 8, !tbaa !83
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !79   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !80
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !82
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !83
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !1155
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !83
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !1155
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !87

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !1156
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.c, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !652  ; 4 uses
  %.not.i.i.i1.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i1.i, label %_ZN5arrow6ScalarD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 12 ; 3 uses
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = load i32, ptr %i.t, align 4, !tbaa !3    ; 2 uses
  %i.w = add nsw i32 %i.v, -1
  store i32 %i.w, ptr %i.t, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.x = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.v, %bb.i ], [ %i.x, %bb.j ]
  %i.y = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.y, label %bb.k, label %_ZN5arrow6ScalarD2Ev.exit

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !83
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31, !inline_history !1157
  br label %_ZN5arrow6ScalarD2Ev.exit

_ZN5arrow6ScalarD2Ev.exit:                        ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.k
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK5arrow8internal15PrimitiveScalarINS_9Int32TypeEiE4dataEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { i64, ptr } @_ZNK5arrow8internal15PrimitiveScalarINS_9Int32TypeEiE4viewEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %.fca.1.insert = insertvalue { i64, ptr } { i64 4, ptr poison }, ptr %i.a, 1
  ret { i64, ptr } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN5arrow7compute12CanonicalizeENS0_10ExpressionEPNS0_11ExecContextEENK3$_1clES1_"(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull %2) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::__detail::_AllocNode.788", align 8 ; 4 uses
  %4 = alloca %"class.std::vector.235", align 8   ; 10 uses
  %5 = alloca %"class.arrow::compute::Expression", align 16 ; 7 uses
  %6 = alloca %"struct.arrow::compute::Expression::Call", align 8 ; 17 uses
  %7 = alloca %"struct.arrow::compute::Expression::Call", align 8 ; 17 uses
  %8 = alloca %"class.std::_Temporary_buffer", align 8 ; 7 uses
  %9 = alloca [9 x %"class.std::__cxx11::basic_string"], align 8 ; 36 uses
  %10 = alloca %"class.std::allocator", align 1   ; 5 uses
  %11 = alloca %"class.std::allocator", align 1   ; 4 uses
  %12 = alloca %"class.std::allocator", align 1   ; 4 uses
  %13 = alloca %"class.std::allocator", align 1   ; 4 uses
  %14 = alloca %"class.std::allocator", align 1   ; 4 uses
  %15 = alloca %"class.std::allocator", align 1   ; 4 uses
  %16 = alloca %"class.std::allocator", align 1   ; 4 uses
  %17 = alloca %"class.std::allocator", align 1   ; 4 uses
  %18 = alloca %"class.std::allocator", align 1   ; 4 uses
  %19 = alloca %"struct.std::hash", align 1       ; 4 uses
  %20 = alloca %"struct.std::equal_to.387", align 1 ; 4 uses
  %21 = alloca %"class.std::allocator.94", align 1 ; 4 uses
  %22 = alloca %"struct.arrow::compute::FlattenedAssociativeChain", align 8 ; 13 uses
  %23 = alloca %"class.arrow::compute::Expression", align 16 ; 4 uses
  %24 = alloca %"class.std::vector", align 8      ; 4 uses
  %25 = alloca %"class.arrow::compute::Expression", align 16 ; 10 uses
  %26 = alloca %"struct.arrow::compute::Expression::Call", align 8 ; 22 uses
  %27 = alloca [2 x %"class.arrow::compute::Expression"], align 16 ; 11 uses
  %28 = alloca %"class.arrow::Result.155", align 8 ; 13 uses
  %29 = alloca %"struct.arrow::compute::Expression::Call", align 8 ; 22 uses
  %30 = alloca %"class.std::vector", align 8      ; 7 uses
  %31 = alloca [1 x %"class.arrow::compute::Expression"], align 16 ; 8 uses
  %32 = alloca %"struct.arrow::compute::Expression::Call", align 8 ; 9 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %34 = alloca %"struct.arrow::compute::Expression::Call", align 8 ; 4 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !63     ; 9 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i

_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.c = load i8, ptr %i.b, align 8, !tbaa !67
  %i.d = icmp eq i8 %i.c, 2
  br i1 %i.d, label %_ZNK5arrow7compute10Expression4callEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i, %bb.a
  store ptr null, ptr %0, align 8, !tbaa !274
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.e, align 8, !tbaa !63
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !79
  store ptr null, ptr %i.g, align 8, !tbaa !79
  store ptr %i.h, ptr %i.f, align 8, !tbaa !79
  store ptr null, ptr %2, align 8, !tbaa !63
  br label %bb.fc

_ZNK5arrow7compute10Expression4callEv.exit:       ; preds = %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !137  ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !83
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef zeroext i1 %i.m(ptr noundef nonnull align 8 dereferenceable(192) %i.j)
  br i1 %i.n, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK5arrow7compute10Expression4callEv.exit
  store ptr null, ptr %0, align 8, !tbaa !274
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load <2 x ptr>, ptr %2, align 8, !tbaa !94
  store ptr null, ptr %i.p, align 8, !tbaa !79
  store <2 x ptr> %i.q, ptr %i.o, align 8, !tbaa !94
  store ptr null, ptr %2, align 8, !tbaa !63
  br label %bb.fc

bb.d:                                             ; preds = %_ZNK5arrow7compute10Expression4callEv.exit
  %i.r = load ptr, ptr %1, align 8, !tbaa !1610, !nonnull !66, !align !239
  %i.s = tail call ptr @_ZNKSt10_HashtableIN5arrow7compute10ExpressionES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS2_4HashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS2_(ptr noundef nonnull align 8 dereferenceable(56) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr %0, align 8, !tbaa !274
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load <2 x ptr>, ptr %2, align 8, !tbaa !94
  store ptr null, ptr %i.u, align 8, !tbaa !79
  store <2 x ptr> %i.v, ptr %i.t, align 8, !tbaa !94
  store ptr null, ptr %2, align 8, !tbaa !63
  br label %bb.fc

bb.f:                                             ; preds = %bb.d
  %i.w = load atomic i8, ptr @_ZGVZN5arrow7compute12_GLOBAL__N_130IsBinaryAssociativeCommutativeERKNS0_10Expression4CallEE30binary_associative_commutativeB5cxx11 acquire, align 8
  %i.x = icmp eq i8 %i.w, 0
  br i1 %i.x, label %bb.g, label %_ZN5arrow7compute12_GLOBAL__N_130IsBinaryAssociativeCommutativeERKNS0_10Expression4CallE.exit, !prof !236

end_hunk_25
begin_hunk_26_@_ZN5arrow7compute10Comparison7ExecuteENS_5DatumES2_:bb.a
  %8 = alloca %class.anon.365, align 1            ; 6 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %10 = alloca %"class.std::vector.175", align 8  ; 14 uses
  %11 = alloca [2 x %"struct.arrow::Datum"], align 16 ; 13 uses
  %12 = alloca %"class.arrow::Result.213", align 8 ; 14 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"struct.arrow::Datum", align 16   ; 8 uses
  %15 = alloca %"class.arrow::Result.213", align 8 ; 14 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %17 = alloca %"struct.arrow::Datum", align 16   ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !69
  %i.c = icmp eq i8 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load i8, ptr %i.d, align 8, !tbaa !69
  %i.f = icmp eq i8 %i.e, 1
  br i1 %i.f, label %_ZN5arrow5DatumC2EOS0_.exit32, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  call void @_ZN5arrow6Status8FromArgsIJRA41_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %9, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(41) @.str.94)
  call void @_ZN5arrow6ResultINS_7compute10Comparison4typeEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(8) %9) #31
  %i.g = load ptr, ptr %9, align 8, !tbaa !274    ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.d, !prof !290

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !284, !range !189, !noundef !66
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZN5arrow6StatusD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #31
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %bb.aq

_ZN5arrow5DatumC2EOS0_.exit32:                    ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load <2 x ptr>, ptr %1, align 8, !tbaa !94
  store ptr null, ptr %i.l, align 8, !tbaa !79
  store <2 x ptr> %i.m, ptr %11, align 16, !tbaa !94
  store ptr null, ptr %1, align 8, !tbaa !94
  store i8 1, ptr %i.k, align 16, !tbaa !69
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load <2 x ptr>, ptr %2, align 8, !tbaa !94
  store ptr null, ptr %i.p, align 8, !tbaa !79
  store <2 x ptr> %i.q, ptr %i.n, align 8, !tbaa !94
  store ptr null, ptr %2, align 8, !tbaa !94
  store i8 1, ptr %i.o, align 8, !tbaa !69
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %i.r = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #30
          to label %_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EE11_M_allocateEm.exit.i.i unwind label %bb.f ; 3 uses

_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EE11_M_allocateEm.exit.i.i: ; preds = %_ZN5arrow5DatumC2EOS0_.exit32
  %i.s = getelementptr inbounds nuw i8, ptr %11, i64 48
  store ptr %i.r, ptr %10, align 8, !tbaa !527
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.t, ptr %i.u, align 8, !tbaa !436
  %i.v = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN5arrow5DatumEPS1_ET0_T_S6_S5_(ptr noundef nonnull %11, ptr noundef nonnull %i.s, ptr noundef nonnull %i.r)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EE11_M_allocateEm.exit.i.i, %_ZN5arrow5DatumC2EOS0_.exit32
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = load ptr, ptr %10, align 8, !tbaa !527   ; 3 uses
  %.not.i.i5.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i5.i, label %.body, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !436
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #32
  br label %.body

bb.h:                                             ; preds = %_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EE11_M_allocateEm.exit.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store ptr %i.v, ptr %i.ad, align 8, !tbaa !435
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %_ZN5arrow5DatumD2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %_ZN5arrow5DatumD2Ev.exit, %bb.h
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #29
  unreachable

_ZN5arrow5DatumD2Ev.exit:                         ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %_ZN5arrow5DatumD2Ev.exit.1 unwind label %bb.i

_ZN5arrow5DatumD2Ev.exit.1:                       ; preds = %_ZN5arrow5DatumD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #31
  %i.ah = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  store ptr %i.ah, ptr %13, align 8, !tbaa !107
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ah, ptr noundef nonnull align 1 dereferenceable(5) @.str.27, i64 5, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 5, ptr %i.ai, align 8, !tbaa !38
  %i.aj = getelementptr inbounds nuw i8, ptr %13, i64 21
  store i8 0, ptr %i.aj, align 1, !tbaa !86
  invoke void @_ZN5arrow7compute12CallFunctionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS_5DatumESaISA_EEPNS0_11ExecContextE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.213") align 8 %12, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef null)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %_ZN5arrow5DatumD2Ev.exit.1
  %i.ak = load ptr, ptr %13, align 8, !tbaa !33   ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.ah
  br i1 %i.al, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.am = load i64, ptr %i.ah, align 8, !tbaa !86
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #32
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  %i.ao = load ptr, ptr %12, align 8, !tbaa !274
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.m, label %bb.k, !prof !290

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  call void @_ZN5arrow6ResultINS_7compute10Comparison4typeEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(8) %12) #31
  br label %bb.ai

.body:                                            ; preds = %bb.f, %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 24
  call void @_ZN5arrow5DatumD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.aq) #31
  call void @_ZN5arrow5DatumD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %11) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  br label %bb.ap

bb.l:                                             ; preds = %_ZN5arrow5DatumD2Ev.exit.1
  %i.ar = landingpad { ptr, i32 }
          cleanup
  %i.as = load ptr, ptr %13, align 8, !tbaa !33   ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.ah
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %bb.l
  %i.au = load i64, ptr %i.ah, align 8, !tbaa !86
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  br label %bb.ao

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !1787)
  call void @llvm.experimental.noalias.scope.decl(metadata !1790)
  %i.aw = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.ax = load i8, ptr %i.aw, align 8, !tbaa !69, !noalias !1793 ; 3 uses
  %i.ay = icmp eq i8 %i.ax, 0
  br i1 %i.ay, label %.thread, label %bb.n

.thread:                                          ; preds = %bb.m
  %i.az = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i8 0, ptr %i.az, align 16, !tbaa !69, !alias.scope !1793
  br label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.bc = load <2 x ptr>, ptr %i.ba, align 8, !tbaa !94, !noalias !1793
  %i.bd = load ptr, ptr %i.ba, align 8, !tbaa !94, !noalias !1793 ; 2 uses
  store ptr null, ptr %i.bb, align 8, !tbaa !79, !noalias !1793
  store <2 x ptr> %i.bc, ptr %14, align 16, !tbaa !94, !alias.scope !1793
  store ptr null, ptr %i.ba, align 8, !tbaa !94, !noalias !1793
  %i.be = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i8 %i.ax, ptr %i.be, align 16, !tbaa !69, !alias.scope !1793
  %.not.i.i.i = icmp eq i8 %i.ax, 1
  br i1 %.not.i.i.i, label %_ZNK5arrow5Datum6scalarEv.exit, label %bb.o

bb.o:                                             ; preds = %.thread, %bb.n
  %i.bf = call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.bf, align 8, !tbaa !83
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr @.str.44, ptr %i.bg, align 8, !tbaa !210
  invoke void @__cxa_throw(ptr nonnull %i.bf, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #33
          to label %.noexc38 unwind label %bb.q

.noexc38:                                         ; preds = %bb.o
  unreachable

_ZNK5arrow5Datum6scalarEv.exit:                   ; preds = %bb.n
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.bi = load i8, ptr %i.bh, align 8, !tbaa !182, !range !189, !noundef !66
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %_ZNK5arrow5Datum9scalar_asINS_13BooleanScalarEEERKT_v.exit, label %bb.p

bb.p:                                             ; preds = %_ZNK5arrow5Datum6scalarEv.exit
  store ptr null, ptr %0, align 8, !tbaa !274
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.bk, align 8, !tbaa !160
  br label %bb.af

bb.q:                                             ; preds = %bb.o
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

_ZNK5arrow5Datum9scalar_asINS_13BooleanScalarEEERKT_v.exit: ; preds = %_ZNK5arrow5Datum6scalarEv.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 41
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !292, !range !189, !noundef !66
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.r, label %._crit_edge.i.i40

bb.r:                                             ; preds = %_ZNK5arrow5Datum9scalar_asINS_13BooleanScalarEEERKT_v.exit
  store ptr null, ptr %0, align 8, !tbaa !274
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.bp, align 8, !tbaa !160
  br label %bb.af

._crit_edge.i.i40:                                ; preds = %_ZNK5arrow5Datum9scalar_asINS_13BooleanScalarEEERKT_v.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #31
  %i.bq = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 6 uses
  store ptr %i.bq, ptr %16, align 8, !tbaa !107
  store i32 1936942444, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 4, ptr %i.br, align 8, !tbaa !38
  %i.bs = getelementptr inbounds nuw i8, ptr %16, i64 20
  store i8 0, ptr %i.bs, align 4, !tbaa !86
  invoke void @_ZN5arrow7compute12CallFunctionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS_5DatumESaISA_EEPNS0_11ExecContextE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.213") align 8 %15, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef null)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %._crit_edge.i.i40
  %i.bt = load ptr, ptr %16, align 8, !tbaa !33   ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.bq
  br i1 %i.bu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %bb.s
  %i.bv = load i64, ptr %i.bq, align 8, !tbaa !86
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #32
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i49: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31
  %i.bx = load ptr, ptr %15, align 8, !tbaa !274
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.v, label %bb.t, !prof !290

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i49
  call void @_ZN5arrow6ResultINS_7compute10Comparison4typeEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(8) %15) #31
  br label %bb.ab

bb.u:                                             ; preds = %._crit_edge.i.i40
  %i.bz = landingpad { ptr, i32 }
          cleanup
  %i.ca = load ptr, ptr %16, align 8, !tbaa !33   ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.bq
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.u
  %i.cc = load i64, ptr %i.bq, align 8, !tbaa !86
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.cd) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31
  br label %bb.ah

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i49
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !1794)
  call void @llvm.experimental.noalias.scope.decl(metadata !1797)
  %i.ce = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.cf = load i8, ptr %i.ce, align 8, !tbaa !69, !noalias !1800 ; 3 uses
  %i.cg = icmp eq i8 %i.cf, 0
  br i1 %i.cg, label %.thread78, label %bb.w

.thread78:                                        ; preds = %bb.v
  %i.ch = getelementptr inbounds nuw i8, ptr %17, i64 16
  store i8 0, ptr %i.ch, align 16, !tbaa !69, !alias.scope !1800
  br label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ci = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.ck = load <2 x ptr>, ptr %i.ci, align 8, !tbaa !94, !noalias !1800
  %i.cl = load ptr, ptr %i.ci, align 8, !tbaa !94, !noalias !1800 ; 2 uses
  store ptr null, ptr %i.cj, align 8, !tbaa !79, !noalias !1800
  store <2 x ptr> %i.ck, ptr %17, align 16, !tbaa !94, !alias.scope !1800
  store ptr null, ptr %i.ci, align 8, !tbaa !94, !noalias !1800
  %i.cm = getelementptr inbounds nuw i8, ptr %17, i64 16
  store i8 %i.cf, ptr %i.cm, align 16, !tbaa !69, !alias.scope !1800
  %.not.i.i.i56 = icmp eq i8 %i.cf, 1
  br i1 %.not.i.i.i56, label %_ZNK5arrow5Datum6scalarEv.exit58, label %bb.x

bb.x:                                             ; preds = %.thread78, %bb.w
  %i.cn = call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.cn, align 8, !tbaa !83
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store ptr @.str.44, ptr %i.co, align 8, !tbaa !210
  invoke void @__cxa_throw(ptr nonnull %i.cn, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #33
          to label %.noexc57 unwind label %bb.aa

.noexc57:                                         ; preds = %bb.x
  unreachable

_ZNK5arrow5Datum6scalarEv.exit58:                 ; preds = %bb.w
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 40
  %i.cq = load i8, ptr %i.cp, align 8, !tbaa !182, !range !189, !noundef !66
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %_ZNK5arrow5Datum9scalar_asINS_13BooleanScalarEEERKT_v.exit61, label %bb.y

_ZNK5arrow5Datum9scalar_asINS_13BooleanScalarEEERKT_v.exit61: ; preds = %_ZNK5arrow5Datum6scalarEv.exit58
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cl, i64 41
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !292, !range !189, !noundef !66
  %i.cu = trunc nuw i8 %i.ct to i1
  %i.cv = select i1 %i.cu, i32 2, i32 4
  br label %bb.y

bb.y:                                             ; preds = %_ZNK5arrow5Datum6scalarEv.exit58, %_ZNK5arrow5Datum9scalar_asINS_13BooleanScalarEEERKT_v.exit61
  %.sink = phi i32 [ %i.cv, %_ZNK5arrow5Datum9scalar_asINS_13BooleanScalarEEERKT_v.exit61 ], [ 0, %_ZNK5arrow5Datum6scalarEv.exit58 ]
  store ptr null, ptr %0, align 8, !tbaa !274
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sink, ptr %i.cw, align 8, !tbaa !160
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(24) %17)
          to label %_ZN5arrow5DatumD2Ev.exit62 unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cx = landingpad { ptr, i32 }
          catch ptr null
  %i.cy = extractvalue { ptr, i32 } %i.cx, 0
  call void @__clang_call_terminate(ptr %i.cy) #29
  unreachable

_ZN5arrow5DatumD2Ev.exit62:                       ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #31
  br label %bb.ab

bb.aa:                                            ; preds = %bb.x
  %i.cz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow5DatumD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %17) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #31
  call void @_ZN5arrow6ResultINS_5DatumEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %15) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #31
  br label %bb.ah

bb.ab:                                            ; preds = %_ZN5arrow5DatumD2Ev.exit62, %bb.t
  %i.da = load ptr, ptr %15, align 8, !tbaa !274  ; 2 uses
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %bb.ac, label %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i, !prof !290

bb.ac:                                            ; preds = %bb.ab
  %i.dc = getelementptr inbounds nuw i8, ptr %15, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(24) %i.dc)
          to label %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dd = landingpad { ptr, i32 }
          catch ptr null
  %i.de = extractvalue { ptr, i32 } %i.dd, 0
  call void @__clang_call_terminate(ptr %i.de) #29
  unreachable

_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i:    ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  %.pr.i = load ptr, ptr %15, align 8, !tbaa !274 ; 2 uses
  %.not.i.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i, label %_ZN5arrow6ResultINS_5DatumEED2Ev.exit, label %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i, !prof !283

_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i, %bb.ab
  %i.df = phi ptr [ %.pr.i, %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i ], [ %i.da, %bb.ab ]
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 1
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !284, !range !189, !noundef !66
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %_ZN5arrow6ResultINS_5DatumEED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %15) #31
  br label %_ZN5arrow6ResultINS_5DatumEED2Ev.exit

_ZN5arrow6ResultINS_5DatumEED2Ev.exit:            ; preds = %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i, %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #31
  br label %bb.af

bb.af:                                            ; preds = %_ZN5arrow6ResultINS_5DatumEED2Ev.exit, %bb.r, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(24) %14)
          to label %_ZN5arrow5DatumD2Ev.exit63 unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dj = landingpad { ptr, i32 }
          catch ptr null
  %i.dk = extractvalue { ptr, i32 } %i.dj, 0
  call void @__clang_call_terminate(ptr %i.dk) #29
  unreachable

_ZN5arrow5DatumD2Ev.exit63:                       ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #31
  br label %bb.ai

bb.ah:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, %bb.aa, %bb.q
  %.pn21.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bl, %bb.q ], [ %i.cz, %bb.aa ], [ %i.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53 ]
  call void @_ZN5arrow5DatumD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %14) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #31
  call void @_ZN5arrow6ResultINS_5DatumEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %12) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  br label %bb.ao

bb.ai:                                            ; preds = %_ZN5arrow5DatumD2Ev.exit63, %bb.k
  %i.dl = load ptr, ptr %12, align 8, !tbaa !274  ; 2 uses
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %bb.aj, label %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i64, !prof !290

bb.aj:                                            ; preds = %bb.ai
  %i.dn = getelementptr inbounds nuw i8, ptr %12, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.dn)
          to label %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i65 unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.do = landingpad { ptr, i32 }
          catch ptr null
  %i.dp = extractvalue { ptr, i32 } %i.do, 0
  call void @__clang_call_terminate(ptr %i.dp) #29
  unreachable

_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i65:  ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %.pr.i66 = load ptr, ptr %12, align 8, !tbaa !274 ; 2 uses
  %.not.i.i67 = icmp eq ptr %.pr.i66, null
  br i1 %.not.i.i67, label %_ZN5arrow6ResultINS_5DatumEED2Ev.exit68, label %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i64, !prof !283

_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i64: ; preds = %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i65, %bb.ai
  %i.dq = phi ptr [ %.pr.i66, %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i65 ], [ %i.dl, %bb.ai ]
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 1
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !284, !range !189, !noundef !66
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %_ZN5arrow6ResultINS_5DatumEED2Ev.exit68, label %bb.al

bb.al:                                            ; preds = %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i64
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %12) #31
  br label %_ZN5arrow6ResultINS_5DatumEED2Ev.exit68

_ZN5arrow6ResultINS_5DatumEED2Ev.exit68:          ; preds = %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i65, %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i64, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  %i.du = load ptr, ptr %10, align 8, !tbaa !527  ; 3 uses
  %i.dv = load ptr, ptr %i.ad, align 8, !tbaa !435 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.du, %i.dv
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5arrow6ResultINS_5DatumEED2Ev.exit68, %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.dy, %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i.i ], [ %i.du, %_ZN5arrow6ResultINS_5DatumEED2Ev.exit68 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(24) %.05.i.i.i)
          to label %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i.i unwind label %bb.am

bb.am:                                            ; preds = %.lr.ph.i.i.i
  %i.dw = landingpad { ptr, i32 }
          catch ptr null
  %i.dx = extractvalue { ptr, i32 } %i.dw, 0
  call void @__clang_call_terminate(ptr %i.dx) #29
  unreachable

_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i.i:     ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.dy = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i69 = icmp eq ptr %i.dy, %i.dv
  br i1 %.not.i.i.i69, label %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !528

_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i.i
  %.pr.i70 = load ptr, ptr %10, align 8, !tbaa !527
  br label %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZN5arrow6ResultINS_5DatumEED2Ev.exit68
  %i.dz = phi ptr [ %.pr.i70, %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.du, %_ZN5arrow6ResultINS_5DatumEED2Ev.exit68 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.dz, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5arrow5DatumESaIS1_EED2Ev.exit, label %bb.an

bb.an:                                            ; preds = %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit.i
  %i.ea = load ptr, ptr %i.u, align 8, !tbaa !436
  %i.eb = ptrtoint ptr %i.ea to i64
  %i.ec = ptrtoint ptr %i.dz to i64
  %i.ed = sub i64 %i.eb, %i.ec
  call void @_ZdlPvm(ptr noundef nonnull %i.dz, i64 noundef %i.ed) #32
  br label %_ZNSt6vectorIN5arrow5DatumESaIS1_EED2Ev.exit

_ZNSt6vectorIN5arrow5DatumESaIS1_EED2Ev.exit:     ; preds = %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit.i, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br label %bb.aq

bb.ao:                                            ; preds = %bb.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  %.pn21.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn21.pn.pn.pn.pn, %bb.ah ], [ %i.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37 ]
  call void @_ZNSt6vectorIN5arrow5DatumESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %10) #31
end_hunk_26
begin_hunk_27_@_ZNK5arrow7compute12_GLOBAL__N_110Inequality13simplified_toERKNS0_10ExpressionEb:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  resume { ptr, i32 } %.pn.pn.pn.pn

bb.av:                                            ; preds = %_ZN5arrow6ResultINS_7compute10ExpressionEED2Ev.exit, %_ZN5arrow7compute10ExpressionD2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZN5arrow9bit_widthENS_4Type4typeE(i32 noundef %0) local_unnamed_addr #0 comdat {
bb.a:
  %switch.tableidx = add i32 %0, -1               ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 44
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZN5arrow9bit_widthENS_4Type4typeE, i64 %i.b
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i32
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi i32 [ %switch.ext, %switch.lookup ], [ 0, %bb.a ]
  ret i32 %.0
}

declare void @_ZN5arrow7compute6IsNullERKNS_5DatumENS0_11NullOptionsEPNS0_11ExecContextE(ptr dead_on_unwind writable sret(%"class.arrow::Result.213") align 8, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt8optionalINS_7compute10ExpressionEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store ptr null, ptr %0, align 8, !tbaa !274
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.h

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !274
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g, !prof !87

bb.b:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.69, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5arrow8internal14DieWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.c = load ptr, ptr %2, align 8, !tbaa !33     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.f = load i64, ptr %i.d, align 8, !tbaa !86
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.h = load ptr, ptr %5, align 8, !tbaa !33     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !86
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.m = load ptr, ptr %3, align 8, !tbaa !33     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.p = load i64, ptr %i.n, align 8, !tbaa !86
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZN5arrow6StatusC2ERKS0_.exit
  ret void

bb.h:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #29
  unreachable
}

declare void @_ZN5arrow7compute3AnyERKNS_5DatumERKNS0_22ScalarAggregateOptionsEPNS0_11ExecContextE(ptr dead_on_unwind writable sret(%"class.arrow::Result.213") align 8, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #6

declare void @_ZN5arrow7compute12CallFunctionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS_5DatumESaISA_EEPNS0_11ExecContextE(ptr dead_on_unwind writable sret(%"class.arrow::Result.213") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #6

declare void @_ZN5arrow7compute13FilterOptionsC1ENS1_21NullSelectionBehaviorE(ptr noundef nonnull align 8 dereferenceable(20), i32 noundef) unnamed_addr #6

declare void @_ZN5arrow7compute6FilterERKNS_5DatumES3_RKNS0_13FilterOptionsEPNS0_11ExecContextE(ptr dead_on_unwind writable sret(%"class.arrow::Result.213") align 8, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(20), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow7compute16SetLookupOptionsELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !79   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !80
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !82
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !83
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !522
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !83
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !522
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !87

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow4util18EqualityComparableINS_7compute15FunctionOptionsEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

declare void @_ZN5arrow7compute22ScalarAggregateOptionsC1Ebj(ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext, i32 noundef) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow7compute16SetLookupOptionsESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRNS0_5DatumERNS2_20NullMatchingBehaviorEEEES3_DpOT_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.anon.365, align 1            ; 3 uses
  %4 = alloca %class.anon.450, align 8            ; 5 uses
  %5 = alloca %"struct.arrow::Datum", align 8     ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !80
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.b, align 4, !tbaa !82
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow7compute16SetLookupOptionsESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %0, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store i8 -1, ptr %i.c, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  store ptr %5, ptr %4, align 8, !tbaa !437
  invoke void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_15_Copy_ctor_baseILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEEC1ERKSI_EUlOT_T0_E_JRKSt7variantIJS6_S9_SB_SD_SF_SH_EEEEDcOSN_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZN5arrow5DatumC2ERKS0_.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS2_6ScalarEES5_INS2_9ArrayDataEES5_INS2_12ChunkedArrayEES5_INS2_11RecordBatchEES5_INS2_5TableEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(24) %5) #31
  br label %.body

_ZN5arrow5DatumC2ERKS0_.exit.i:                   ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i8, ptr %i.f, align 8, !tbaa !69
  store i8 %i.g, ptr %i.c, align 8, !tbaa !69
  %i.h = load i32, ptr %2, align 4, !tbaa !1808
  invoke void @_ZN5arrow7compute16SetLookupOptionsC1ENS_5DatumENS1_20NullMatchingBehaviorE(ptr noundef nonnull align 8 dereferenceable(46) %i.e, ptr noundef nonnull %5, i32 noundef %i.h)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN5arrow5DatumC2ERKS0_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #29
  unreachable

bb.e:                                             ; preds = %_ZN5arrow5DatumC2ERKS0_.exit.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow5DatumD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #31
  br label %.body

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret void

.body:                                            ; preds = %bb.b, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.k, %bb.e ], [ %i.d, %bb.b ]
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow7compute16SetLookupOptionsESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow7compute16SetLookupOptionsESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow7compute16SetLookupOptionsEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !83
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(46) %i.a) #31, !inline_history !1809
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow7compute16SetLookupOptionsESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow7compute16SetLookupOptionsESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow7compute16SetLookupOptionsESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1153 ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !86
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #31
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

declare void @_ZN5arrow7compute16SetLookupOptionsC1ENS_5DatumENS1_20NullMatchingBehaviorE(ptr noundef nonnull align 8 dereferenceable(46), ptr noundef, i32 noundef) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultINS_7compute10Comparison4typeEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store ptr null, ptr %0, align 8, !tbaa !274
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.h

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !274
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g, !prof !87

bb.b:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.69, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5arrow8internal14DieWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.c = load ptr, ptr %2, align 8, !tbaa !33     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.f = load i64, ptr %i.d, align 8, !tbaa !86
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.h = load ptr, ptr %5, align 8, !tbaa !33     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !86
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.m = load ptr, ptr %3, align 8, !tbaa !33     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.p = load i64, ptr %i.n, align 8, !tbaa !86
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZN5arrow6StatusC2ERKS0_.exit
  ret void

bb.h:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #29
  unreachable
}
end_hunk_27
