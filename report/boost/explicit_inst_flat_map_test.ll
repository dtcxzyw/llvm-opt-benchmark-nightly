Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/explicit_inst_flat_map_test?download=true
inline.NumInlined: 24578
inline.NumDeleted: 2911
loop-unroll.NumRuntimeUnrolled: 169
loop-unroll.NumUnrolled: 177
begin_hunk_0_@_ZNK5boost9container9exception4whatEv:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !238  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  %spec.select = select i1 %.not, ptr @.str.2, ptr %i.b
  ret ptr %spec.select
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorISt4pairI5emptyS3_EvvE37priv_insert_forward_range_no_capacityINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS4_EEPKS4_EEEENS0_12vec_iteratorIPS4_Lb0EEESF_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !218  ; 6 uses
  %i.c = sub i64 4611686018427387903, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !221  ; 2 uses
  %.neg.i = sub i64 %3, %i.b
  %i.f = add i64 %.neg.i, %i.e
  %i.g = icmp ult i64 %i.c, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.4) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %i.b, 2305843009213693952
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = shl nuw i64 %i.b, 3
  %i.j = udiv i64 %i.i, 5
  br label %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairI5emptyS4_EEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

bb.e:                                             ; preds = %bb.c
  %i.k = icmp ugt i64 %i.b, -6917529027641081857
  %i.l = shl i64 %i.b, 3
  %i.m = tail call i64 @llvm.umin.i64(i64 %i.l, i64 4611686018427387903)
  %i.n = select i1 %i.k, i64 4611686018427387903, i64 %i.m
  br label %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairI5emptyS4_EEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairI5emptyS4_EEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.j, %bb.d ], [ %i.n, %bb.e ]
  %i.o = add i64 %i.e, %3                         ; 2 uses
  %i.p = tail call noundef i64 @llvm.umax.i64(i64 %i.o, i64 %.0.i.i) ; 2 uses
  %i.q = icmp ugt i64 %i.o, 4611686018427387903
  br i1 %i.q, label %bb.f, label %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairI5emptyS4_EEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, !prof !225

bb.f:                                             ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairI5emptyS4_EEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.4) #25
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairI5emptyS4_EEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit: ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairI5emptyS4_EEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  %i.r = shl nuw nsw i64 %i.p, 1
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #26 ; 5 uses
  %i.t = load ptr, ptr %1, align 8, !tbaa !224    ; 7 uses
  %i.u = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v                       ; 3 uses
  %i.x = load i64, ptr %i.d, align 8, !tbaa !223  ; 2 uses
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.x ; 2 uses
  %i.z = icmp ne ptr %i.t, %2
  %i.aa = icmp ne ptr %i.t, null
  %spec.select.i.i.i.i = and i1 %i.aa, %i.z
  br i1 %spec.select.i.i.i.i, label %bb.g, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairI5emptyS4_EEEPS5_S7_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_SA_SB_.exit.i.i, !prof !220

bb.g:                                             ; preds = %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairI5emptyS4_EEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.s, ptr nonnull align 1 %i.t, i64 %i.w, i1 false)
  %i.ab = getelementptr inbounds i8, ptr %i.s, i64 %i.w
  br label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairI5emptyS4_EEEPS5_S7_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_SA_SB_.exit.i.i

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairI5emptyS4_EEEPS5_S7_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_SA_SB_.exit.i.i: ; preds = %bb.g, %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairI5emptyS4_EEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %.0.i.i.i.i = phi ptr [ %i.ab, %bb.g ], [ %i.s, %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairI5emptyS4_EEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ] ; 2 uses
  %.not.i.i.i.i.i = icmp ne i64 %3, 0
  %i.ac = icmp ne ptr %4, null
  %or.cond = select i1 %.not.i.i.i.i.i, i1 %i.ac, i1 false, !prof !325
  br i1 %or.cond, label %bb.h, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairI5emptyS5_EEEPKS6_E31uninitialized_copy_n_and_updateIPS6_EEvRS7_T_m.exit.i.i, !prof !325

bb.h:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairI5emptyS4_EEEPS5_S7_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_SA_SB_.exit.i.i
  %i.ad = shl i64 %3, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i.i.i.i, ptr nonnull align 1 %4, i64 %i.ad, i1 false)
  br label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairI5emptyS5_EEEPKS6_E31uninitialized_copy_n_and_updateIPS6_EEvRS7_T_m.exit.i.i

_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairI5emptyS5_EEEPKS6_E31uninitialized_copy_n_and_updateIPS6_EEvRS7_T_m.exit.i.i: ; preds = %bb.h, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairI5emptyS4_EEEPS5_S7_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_SA_SB_.exit.i.i
  %i.ae = icmp ne ptr %2, %i.y
  %i.af = icmp ne ptr %2, null
  %spec.select.i.i18.i.i = and i1 %i.af, %i.ae
  br i1 %spec.select.i.i18.i.i, label %bb.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairI5emptyS4_EEEPS5_S7_NS0_3dtl18insert_range_proxyIS6_PKS5_EEEEvRT_T0_SF_SF_T1_mT2_.exit.i, !prof !220

bb.i:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairI5emptyS5_EEEPKS6_E31uninitialized_copy_n_and_updateIPS6_EEvRS7_T_m.exit.i.i
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %.0.i.i.i.i, i64 %3
  %i.ah = ptrtoint ptr %i.y to i64
  %i.ai = sub i64 %i.ah, %i.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ag, ptr nonnull align 1 %2, i64 %i.ai, i1 false)
  br label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairI5emptyS4_EEEPS5_S7_NS0_3dtl18insert_range_proxyIS6_PKS5_EEEEvRT_T0_SF_SF_T1_mT2_.exit.i

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairI5emptyS4_EEEPS5_S7_NS0_3dtl18insert_range_proxyIS6_PKS5_EEEEvRT_T0_SF_SF_T1_mT2_.exit.i: ; preds = %bb.i, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairI5emptyS5_EEEPKS6_E31uninitialized_copy_n_and_updateIPS6_EEvRS7_T_m.exit.i.i
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %_ZN5boost9container6vectorISt4pairI5emptyS3_EvvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS4_EEPKS4_EEEEvPS4_mSE_mT_.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairI5emptyS4_EEEPS5_S7_NS0_3dtl18insert_range_proxyIS6_PKS5_EEEEvRT_T0_SF_SF_T1_mT2_.exit.i
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !218
  %i.ak = shl i64 %i.aj, 1
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.ak) #23
  %.pre = load i64, ptr %i.d, align 8, !tbaa !221
  br label %_ZN5boost9container6vectorISt4pairI5emptyS3_EvvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS4_EEPKS4_EEEEvPS4_mSE_mT_.exit

_ZN5boost9container6vectorISt4pairI5emptyS3_EvvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS4_EEPKS4_EEEEvPS4_mSE_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairI5emptyS4_EEEPS5_S7_NS0_3dtl18insert_range_proxyIS6_PKS5_EEEEvRT_T0_SF_SF_T1_mT2_.exit.i, %bb.j
  %i.al = phi i64 [ %i.x, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairI5emptyS4_EEEPS5_S7_NS0_3dtl18insert_range_proxyIS6_PKS5_EEEEvRT_T0_SF_SF_T1_mT2_.exit.i ], [ %.pre, %bb.j ]
  store ptr %i.s, ptr %1, align 8, !tbaa !224
  %i.am = add i64 %i.al, %3
  store i64 %i.am, ptr %i.d, align 8, !tbaa !221
  store i64 %i.p, ptr %i.a, align 8, !tbaa !226
  %i.an = getelementptr inbounds i8, ptr %i.s, i64 %i.w
  store ptr %i.an, ptr %0, align 8, !tbaa !231
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #5

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef %0) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.b, align 8, !tbaa !238
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost9container12length_errorE, i64 16), ptr %i.a, align 8, !tbaa !240
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5boost9container12length_errorE, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost9container12length_errorD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #28
  ret void
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZN5boost9container15throw_bad_allocEv() local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @.str.5, ptr %i.b, align 8, !tbaa !238
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost9container9bad_allocE, i64 16), ptr %i.a, align 8, !tbaa !240
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5boost9container9bad_allocE, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #12

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost9container9bad_allocD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #28
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorISt4pairI5emptyS3_EvvE6assignIPS4_EEvT_S8_PNS_11move_detail13disable_if_orIvNS9_7is_sameINS9_17integral_constantIjLj1EEENSC_IjLj0EEEEENS9_14is_convertibleIS8_mEENS0_3dtl17is_input_iteratorIS8_Xsr21has_iterator_categoryIS8_EE5valueEEENS9_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 5 uses
  %i.d = ashr exact i64 %i.c, 1                   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !218  ; 2 uses
  %i.g = icmp ugt i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %i.d, 4611686018427387903
  br i1 %i.h, label %bb.c, label %bb.d, !prof !225

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.4) #25
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #26 ; 5 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !224    ; 2 uses
  %.not17 = icmp eq ptr %i.j, null
  br i1 %.not17, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !223
  %i.l = shl i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.l) #23
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store ptr %i.i, ptr %0, align 8, !tbaa !224
  store i64 %i.d, ptr %i.e, align 8, !tbaa !226
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.m, align 8, !tbaa !223
  %i.n = icmp ne ptr %1, %2
  %i.o = icmp ne ptr %1, null
  %spec.select.i.i.i = and i1 %i.o, %i.n
  br i1 %spec.select.i.i.i, label %bb.g, label %bb.h, !prof !220

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %1, i64 %i.c, i1 false)
  %i.p = getelementptr inbounds i8, ptr %i.i, i64 %i.c
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0.i.i.i = phi ptr [ %i.p, %bb.g ], [ %i.i, %bb.f ]
  %i.q = ptrtoint ptr %.0.i.i.i to i64
  %i.r = ptrtoint ptr %i.i to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 1
  store i64 %i.t, ptr %i.m, align 8, !tbaa !221
  br label %bb.r

bb.i:                                             ; preds = %bb.a
  %i.u = load ptr, ptr %0, align 8, !tbaa !224    ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !223  ; 6 uses
  %i.x = icmp ult i64 %i.w, %i.d
  br i1 %i.x, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i.i, label %_ZN5boost9container18copy_n_source_destIPSt4pairI5emptyS3_ES5_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES8_mRS9_.exit.i, label %bb.k, !prof !225

bb.k:                                             ; preds = %bb.j
  %i.y = icmp ne ptr %i.u, null
  %i.z = icmp ne ptr %1, null
  %or.cond.i.i.i18 = and i1 %i.z, %i.y
  br i1 %or.cond.i.i.i18, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aa = shl i64 %i.w, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.u, ptr nonnull align 1 %1, i64 %i.aa, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ab = getelementptr inbounds [2 x i8], ptr %1, i64 %i.w
  %i.ac = getelementptr inbounds [2 x i8], ptr %i.u, i64 %i.w
  br label %_ZN5boost9container18copy_n_source_destIPSt4pairI5emptyS3_ES5_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES8_mRS9_.exit.i

_ZN5boost9container18copy_n_source_destIPSt4pairI5emptyS3_ES5_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES8_mRS9_.exit.i: ; preds = %bb.m, %bb.j
  %.0.i = phi ptr [ %i.u, %bb.j ], [ %i.ac, %bb.m ] ; 2 uses
  %.0.i.i.i19 = phi ptr [ %1, %bb.j ], [ %i.ab, %bb.m ] ; 2 uses
  %i.ad = icmp ne ptr %.0.i, null
  %i.ae = icmp ne ptr %.0.i.i.i19, null
  %or.cond.i.i15.i = and i1 %i.ad, %i.ae
  br i1 %or.cond.i.i15.i, label %bb.n, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_13new_allocatorISt4pairI5emptyS4_EEEPS5_S7_EEvRT_T0_mT1_m.exit

bb.n:                                             ; preds = %_ZN5boost9container18copy_n_source_destIPSt4pairI5emptyS3_ES5_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES8_mRS9_.exit.i
  %i.af = sub nuw i64 %i.d, %i.w
  %i.ag = shl i64 %i.af, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.0.i, ptr nonnull align 1 %.0.i.i.i19, i64 %i.ag, i1 false)
  br label %_ZN5boost9container25copy_assign_range_alloc_nINS0_13new_allocatorISt4pairI5emptyS4_EEEPS5_S7_EEvRT_T0_mT1_m.exit

bb.o:                                             ; preds = %bb.i
  %.not.i.i17.i = icmp eq ptr %2, %1
  br i1 %.not.i.i17.i, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_13new_allocatorISt4pairI5emptyS4_EEEPS5_S7_EEvRT_T0_mT1_m.exit, label %bb.p, !prof !225

bb.p:                                             ; preds = %bb.o
  %i.ah = icmp ne ptr %i.u, null
  %i.ai = icmp ne ptr %1, null
  %or.cond.i.i18.i = and i1 %i.ai, %i.ah
  br i1 %or.cond.i.i18.i, label %bb.q, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_13new_allocatorISt4pairI5emptyS4_EEEPS5_S7_EEvRT_T0_mT1_m.exit

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.u, ptr nonnull align 1 %1, i64 %i.c, i1 false)
  br label %_ZN5boost9container25copy_assign_range_alloc_nINS0_13new_allocatorISt4pairI5emptyS4_EEEPS5_S7_EEvRT_T0_mT1_m.exit

_ZN5boost9container25copy_assign_range_alloc_nINS0_13new_allocatorISt4pairI5emptyS4_EEEPS5_S7_EEvRT_T0_mT1_m.exit: ; preds = %_ZN5boost9container18copy_n_source_destIPSt4pairI5emptyS3_ES5_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES8_mRS9_.exit.i, %bb.n, %bb.o, %bb.p, %bb.q
  store i64 %i.d, ptr %i.v, align 8, !tbaa !221
  br label %bb.r

bb.r:                                             ; preds = %bb.h, %_ZN5boost9container25copy_assign_range_alloc_nINS0_13new_allocatorISt4pairI5emptyS4_EEEPS5_S7_EEvRT_T0_mT1_m.exit
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorISt4pairI5emptyS3_EvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS4_EEJS4_EEEEENS0_12vec_iteratorIPS4_Lb0EEESD_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !218  ; 6 uses
  %i.c = sub i64 4611686018427387903, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !221  ; 2 uses
  %.neg.i = sub i64 %3, %i.b
  %i.f = add i64 %.neg.i, %i.e
  %i.g = icmp ult i64 %i.c, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.4) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %i.b, 2305843009213693952
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = shl nuw i64 %i.b, 3
  %i.j = udiv i64 %i.i, 5
  br label %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairI5emptyS4_EEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

bb.e:                                             ; preds = %bb.c
  %i.k = icmp ugt i64 %i.b, -6917529027641081857
  %i.l = shl i64 %i.b, 3
  %i.m = tail call i64 @llvm.umin.i64(i64 %i.l, i64 4611686018427387903)
  %i.n = select i1 %i.k, i64 4611686018427387903, i64 %i.m
  br label %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairI5emptyS4_EEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairI5emptyS4_EEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.j, %bb.d ], [ %i.n, %bb.e ]
  %i.o = add i64 %i.e, %3                         ; 2 uses
  %i.p = tail call noundef i64 @llvm.umax.i64(i64 %i.o, i64 %.0.i.i) ; 2 uses
  %i.q = icmp ugt i64 %i.o, 4611686018427387903
  br i1 %i.q, label %bb.f, label %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairI5emptyS4_EEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, !prof !225

bb.f:                                             ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairI5emptyS4_EEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.4) #25
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairI5emptyS4_EEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit: ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairI5emptyS4_EEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  %i.r = shl nuw nsw i64 %i.p, 1
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #26 ; 5 uses
  %i.t = load ptr, ptr %1, align 8, !tbaa !224    ; 7 uses
  %i.u = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v                       ; 3 uses
  %i.x = load i64, ptr %i.d, align 8, !tbaa !223  ; 2 uses
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.x ; 2 uses
  %i.z = icmp ne ptr %i.t, %2
  %i.aa = icmp ne ptr %i.t, null
  %spec.select.i.i.i.i = and i1 %i.aa, %i.z
  br i1 %spec.select.i.i.i.i, label %bb.g, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairI5emptyS4_EEEPS5_S7_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_SA_SB_.exit.i.i, !prof !220

bb.g:                                             ; preds = %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairI5emptyS4_EEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.s, ptr nonnull align 1 %i.t, i64 %i.w, i1 false)
  %i.ab = getelementptr inbounds i8, ptr %i.s, i64 %i.w
  br label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairI5emptyS4_EEEPS5_S7_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_SA_SB_.exit.i.i

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairI5emptyS4_EEEPS5_S7_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_SA_SB_.exit.i.i: ; preds = %bb.g, %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairI5emptyS4_EEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %.0.i.i.i.i = phi ptr [ %i.ab, %bb.g ], [ %i.s, %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairI5emptyS4_EEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.i.i.i.i) ]
  %i.ac = icmp ne ptr %2, %i.y
  %i.ad = icmp ne ptr %2, null
  %spec.select.i.i18.i.i = and i1 %i.ad, %i.ac
  br i1 %spec.select.i.i18.i.i, label %bb.h, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairI5emptyS4_EEEPS5_S7_NS0_3dtl20insert_emplace_proxyIS6_JS5_EEEEEvRT_T0_SD_SD_T1_mT2_.exit.i, !prof !220

bb.h:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairI5emptyS4_EEEPS5_S7_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_SA_SB_.exit.i.i
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %.0.i.i.i.i, i64 %3
  %i.af = ptrtoint ptr %i.y to i64
  %i.ag = sub i64 %i.af, %i.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ae, ptr nonnull align 1 %2, i64 %i.ag, i1 false)
  br label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairI5emptyS4_EEEPS5_S7_NS0_3dtl20insert_emplace_proxyIS6_JS5_EEEEEvRT_T0_SD_SD_T1_mT2_.exit.i

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairI5emptyS4_EEEPS5_S7_NS0_3dtl20insert_emplace_proxyIS6_JS5_EEEEEvRT_T0_SD_SD_T1_mT2_.exit.i: ; preds = %bb.h, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairI5emptyS4_EEEPS5_S7_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_SA_SB_.exit.i.i
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %_ZN5boost9container6vectorISt4pairI5emptyS3_EvvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS4_EEJS4_EEEEEvPS4_mSC_mT_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairI5emptyS4_EEEPS5_S7_NS0_3dtl20insert_emplace_proxyIS6_JS5_EEEEEvRT_T0_SD_SD_T1_mT2_.exit.i
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !218
  %i.ai = shl i64 %i.ah, 1
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.ai) #23
  %.pre = load i64, ptr %i.d, align 8, !tbaa !221
  br label %_ZN5boost9container6vectorISt4pairI5emptyS3_EvvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS4_EEJS4_EEEEEvPS4_mSC_mT_.exit

_ZN5boost9container6vectorISt4pairI5emptyS3_EvvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS4_EEJS4_EEEEEvPS4_mSC_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairI5emptyS4_EEEPS5_S7_NS0_3dtl20insert_emplace_proxyIS6_JS5_EEEEEvRT_T0_SD_SD_T1_mT2_.exit.i, %bb.i
  %i.aj = phi i64 [ %i.x, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairI5emptyS4_EEEPS5_S7_NS0_3dtl20insert_emplace_proxyIS6_JS5_EEEEEvRT_T0_SD_SD_T1_mT2_.exit.i ], [ %.pre, %bb.i ]
  store ptr %i.s, ptr %1, align 8, !tbaa !224
  %i.ak = add i64 %i.aj, %3
  store i64 %i.ak, ptr %i.d, align 8, !tbaa !221
  store i64 %i.p, ptr %i.a, align 8, !tbaa !226
  %i.al = getelementptr inbounds i8, ptr %i.s, i64 %i.w
  store ptr %i.al, ptr %0, align 8, !tbaa !231
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorISt4pairI5emptyS3_EvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS4_EEJRKS4_EEEEENS0_12vec_iteratorIPS4_Lb0EEESF_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !218  ; 6 uses
  %i.c = sub i64 4611686018427387903, %i.b
end_hunk_0
