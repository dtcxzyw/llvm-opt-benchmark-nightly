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
begin_hunk_1_@_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPmNS1_4lessEPSt4pairINS_9container4test24movable_and_copyable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEENS0_7move_opESA_EEvT_T0_T1_NS0_9iter_sizeISL_E4typeESO_SO_SO_SO_T2_T3_T4_:bb.a
  store <4 x i32> zeroinitializer, ptr %next.gep455, align 4, !tbaa !254, !alias.scope !4846
  %index.next460 = add nuw i64 %index453, 2       ; 2 uses
  %i.jf = icmp eq i64 %index.next460, %n.vec451
  br i1 %i.jf, label %middle.block461, label %vector.body452, !llvm.loop !4824

middle.block461:                                  ; preds = %vector.body452
  %cmp.n462 = icmp eq i64 %i.ja, %n.vec451
  br i1 %cmp.n462, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit157, label %.lr.ph.i.i152.preheader468

.lr.ph.i.i152.preheader468:                       ; preds = %vector.memcheck443, %.lr.ph.i.i152.preheader, %middle.block461
  %.010.i.i153.ph = phi ptr [ %7, %vector.memcheck443 ], [ %7, %.lr.ph.i.i152.preheader ], [ %i.jc, %middle.block461 ]
  %.079.i.i154.ph = phi ptr [ %i.h, %vector.memcheck443 ], [ %i.h, %.lr.ph.i.i152.preheader ], [ %i.jd, %middle.block461 ]
  br label %.lr.ph.i.i152

.lr.ph.i.i152:                                    ; preds = %.lr.ph.i.i152.preheader468, %.lr.ph.i.i152
  %.010.i.i153 = phi ptr [ %i.jl, %.lr.ph.i.i152 ], [ %.010.i.i153.ph, %.lr.ph.i.i152.preheader468 ] ; 3 uses
  %.079.i.i154 = phi ptr [ %i.jk, %.lr.ph.i.i152 ], [ %.079.i.i154.ph, %.lr.ph.i.i152.preheader468 ] ; 4 uses
  %i.jg = load i32, ptr %.079.i.i154, align 4, !tbaa !254
  store i32 %i.jg, ptr %.010.i.i153, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i154, align 4, !tbaa !254
  %i.jh = getelementptr inbounds nuw i8, ptr %.079.i.i154, i64 4 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %.010.i.i153, i64 4
  %i.jj = load i32, ptr %i.jh, align 4, !tbaa !254
  store i32 %i.jj, ptr %i.ji, align 4, !tbaa !254
  store i32 0, ptr %i.jh, align 4, !tbaa !254
  %i.jk = getelementptr inbounds nuw i8, ptr %.079.i.i154, i64 8 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %.010.i.i153, i64 8
  %.not.i.i155 = icmp eq ptr %i.jk, %i.ix
  br i1 %.not.i.i155, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit157, label %.lr.ph.i.i152, !llvm.loop !4825

_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit157: ; preds = %.lr.ph.i.i152, %middle.block461, %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit150
  store ptr %7, ptr %i.a, align 8, !tbaa !262
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %6 ; 2 uses
  store ptr %i.jm, ptr %i.b, align 8, !tbaa !262
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  store ptr %i.jm, ptr %10, align 8, !tbaa !345
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %5
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %4
  store ptr %i.jo, ptr %12, align 8, !tbaa !332, !alias.scope !4848
  store ptr %.0191.lcssa284, ptr %13, align 8, !tbaa !332, !alias.scope !4849
  store ptr %i.h, ptr %14, align 8, !tbaa !345, !alias.scope !4850
  store ptr %7, ptr %15, align 8, !tbaa !345, !alias.scope !4851
  store ptr %i.ix, ptr %16, align 8, !tbaa !345, !alias.scope !4852
  call void @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPSt4pairINS_9container4test24movable_and_copyable_intESC_EEESF_SF_NS6_INSA_3dtl23flat_tree_value_compareISt4lessISC_ESD_NSG_9select1stISC_EEEEEENS0_7move_opEEET3_T_SQ_T0_T1_RT2_ST_SP_NS0_9iter_sizeISS_E4typeESX_SX_SX_T4_bT5_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator.91") align 8 %11, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dead_on_return %13, ptr noundef nonnull align 8 dead_on_return %14, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dead_on_return %15, ptr noundef nonnull align 8 dead_on_return %16, i64 noundef %2, i64 noundef %.0195.lcssa283, i64 noundef 0, i64 noundef %.0195.lcssa283, i1 noundef zeroext true)
  %i.jp = load ptr, ptr %11, align 8, !tbaa !345
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %i.jq = load ptr, ptr %10, align 8, !tbaa !345  ; 2 uses
  %i.jr = load ptr, ptr %i.a, align 8, !tbaa !262 ; 3 uses
  %.not27.i = icmp eq ptr %i.jr, %i.jq
  br i1 %.not27.i, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS0_7move_opEPSA_SF_EEvT2_SG_SG_T1_SH_T_T0_.exit, label %.lr.ph.i158

.lr.ph.i158:                                      ; preds = %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit157, %bb.ab
  %.030.i = phi ptr [ %.1.i159, %bb.ab ], [ %i.jq, %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit157 ] ; 4 uses
  %.01929.i = phi ptr [ %.120.i, %bb.ab ], [ %.0111.lcssa285, %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit157 ] ; 4 uses
  %.02128.i = phi ptr [ %i.ke, %bb.ab ], [ %i.jp, %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit157 ] ; 3 uses
  %i.js = icmp eq ptr %.0108.lcssa286, %.01929.i
  br i1 %i.js, label %.lr.ph.i.i.i, label %bb.y

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i158, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.ju, %.lr.ph.i.i.i ], [ %.02128.i, %.lr.ph.i158 ] ; 2 uses
  %.079.i.i.i = phi ptr [ %i.jt, %.lr.ph.i.i.i ], [ %.030.i, %.lr.ph.i158 ] ; 2 uses
  %i.jt = getelementptr inbounds i8, ptr %.079.i.i.i, i64 -8 ; 4 uses
  %i.ju = getelementptr inbounds i8, ptr %.010.i.i.i, i64 -8 ; 2 uses
  %i.jv = load i32, ptr %i.jt, align 4, !tbaa !254
  store i32 %i.jv, ptr %i.ju, align 4, !tbaa !254
  store i32 0, ptr %i.jt, align 4, !tbaa !254
  %i.jw = getelementptr inbounds i8, ptr %.079.i.i.i, i64 -4 ; 2 uses
  %i.jx = getelementptr inbounds i8, ptr %.010.i.i.i, i64 -4
  %i.jy = load i32, ptr %i.jw, align 4, !tbaa !254
  store i32 %i.jy, ptr %i.jx, align 4, !tbaa !254
  store i32 0, ptr %i.jw, align 4, !tbaa !254
  %.not.i.i.i = icmp eq ptr %i.jr, %i.jt
  br i1 %.not.i.i.i, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS0_7move_opEPSA_SF_EEvT2_SG_SG_T1_SH_T_T0_.exit, label %.lr.ph.i.i.i, !llvm.loop !45

bb.y:                                             ; preds = %.lr.ph.i158
  %i.jz = getelementptr inbounds i8, ptr %.030.i, i64 -8 ; 3 uses
  %i.ka = getelementptr inbounds i8, ptr %.01929.i, i64 -8 ; 3 uses
  %i.kb = load i32, ptr %i.jz, align 4, !tbaa !254 ; 2 uses
  %i.kc = load i32, ptr %i.ka, align 4, !tbaa !254 ; 2 uses
  %i.kd = icmp slt i32 %i.kb, %i.kc
  %i.ke = getelementptr inbounds i8, ptr %.02128.i, i64 -8 ; 3 uses
  %i.kf = getelementptr inbounds i8, ptr %.02128.i, i64 -4
  br i1 %i.kd, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 %i.kc, ptr %i.ke, align 4, !tbaa !254
  store i32 0, ptr %i.ka, align 4, !tbaa !254
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  store i32 %i.kb, ptr %i.ke, align 4, !tbaa !254
  store i32 0, ptr %i.jz, align 4, !tbaa !254
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.030.sink.i = phi ptr [ %.030.i, %bb.aa ], [ %.01929.i, %bb.z ]
  %.120.i = phi ptr [ %.01929.i, %bb.aa ], [ %i.ka, %bb.z ]
  %.1.i159 = phi ptr [ %i.jz, %bb.aa ], [ %.030.i, %bb.z ] ; 2 uses
  %i.kg = getelementptr inbounds i8, ptr %.030.sink.i, i64 -4 ; 2 uses
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !254
  store i32 %i.kh, ptr %i.kf, align 4, !tbaa !254
  store i32 0, ptr %i.kg, align 4, !tbaa !254
  %.not.i160 = icmp eq ptr %i.jr, %.1.i159
  br i1 %.not.i160, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS0_7move_opEPSA_SF_EEvT2_SG_SG_T1_SH_T_T0_.exit, label %.lr.ph.i158, !llvm.loop !91

_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS0_7move_opEPSA_SF_EEvT2_SG_SG_T1_SH_T_T0_.exit: ; preds = %bb.ab, %.lr.ph.i.i.i, %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit157
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !259  ; 2 uses
  %.not3.i = icmp eq i64 %i.b, 0
  br i1 %.not3.i, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SC_m.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.c = trunc i64 %i.b to i32
  %i.d = shl i32 %i.c, 1
  %i.e = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i, %i.d
  store i32 %i.e, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  br label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SC_m.exit

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SC_m.exit: ; preds = %.lr.ph.preheader.i, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !252  ; 2 uses
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEmNS_11move_detail17integral_constantIjLj1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SC_m.exit
  %i.h = load ptr, ptr %0, align 8, !tbaa !262    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = icmp eq ptr %i.i, %i.h
  br i1 %i.j, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEmNS_11move_detail17integral_constantIjLj1EEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = shl i64 %i.g, 3
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.k) #28
  br label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEmNS_11move_detail17integral_constantIjLj1EEEED2Ev.exit

_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEmNS_11move_detail17integral_constantIjLj1EEEED2Ev.exit: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SC_m.exit, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE6assignINS0_12vec_iteratorIPS5_Lb1EEEEEvT_SE_PNS_11move_detail13disable_if_orIvNSF_7is_sameINSF_17integral_constantIjLj1EEENSI_IjLj0EEEEENSF_14is_convertibleISE_mEENS0_3dtl17is_input_iteratorISE_Xsr21has_iterator_categoryISE_EE5valueEEENSF_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !262    ; 16 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !262    ; 3 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = ptrtoint ptr %i.a to i64
  %i.e = sub i64 %i.c, %i.d                       ; 3 uses
  %i.f = ashr exact i64 %i.e, 3                   ; 15 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !252  ; 2 uses
  %i.i = icmp ugt i64 %i.f, %i.h
  br i1 %i.i, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ugt i64 %i.f, 2305843009213693951
  br i1 %i.j, label %bb.c, label %bb.d, !prof !225

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.4) #25
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #27 ; 11 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !250    ; 3 uses
  %.not12 = icmp eq ptr %i.l, null
  br i1 %.not12, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS6_m.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !259  ; 2 uses
  %.not3.i.i = icmp eq i64 %i.n, 0
  br i1 %.not3.i.i, label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE16priv_destroy_allEv.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.e
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.o = trunc i64 %i.n to i32
  %i.p = shl i32 %i.o, 1
  %i.q = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i, %i.p
  store i32 %i.q, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  br label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE16priv_destroy_allEv.exit

_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE16priv_destroy_allEv.exit: ; preds = %bb.e, %.lr.ph.preheader.i.i
  store i64 0, ptr %i.m, align 8, !tbaa !259
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = icmp eq ptr %i.r, %i.l
  br i1 %i.s, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS6_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE16priv_destroy_allEv.exit
  %i.t = shl i64 %i.h, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.t) #28
  br label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS6_m.exit

_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS6_m.exit: ; preds = %bb.f, %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE16priv_destroy_allEv.exit, %bb.d
  store ptr %i.k, ptr %0, align 8, !tbaa !250
  store i64 %i.f, ptr %i.g, align 8, !tbaa !226
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %1, align 8, !tbaa !262    ; 10 uses
  %i.w = ptrtoaddr ptr %i.v to i64                ; 2 uses
  %i.x = load ptr, ptr %2, align 8, !tbaa !262    ; 3 uses
  %i.y = ptrtoaddr ptr %i.x to i64                ; 2 uses
  %.not10.i.i = icmp eq ptr %i.v, %i.x
  br i1 %.not10.i.i, label %.loopexit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS6_m.exit
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255 ; 3 uses
  %i.z = add i64 %i.y, -8
  %i.aa = sub i64 %i.z, %i.w                      ; 2 uses
  %i.ab = lshr i64 %i.aa, 3
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check97 = icmp ult i64 %i.aa, 168
  br i1 %min.iters.check97, label %.lr.ph.i.i.preheader120, label %vector.memcheck83

vector.memcheck83:                                ; preds = %.lr.ph.i.i.preheader
  %i.ad = add i64 %i.y, -8
  %i.ae = sub i64 %i.ad, %i.w
  %i.af = and i64 %i.ae, -8
  %i.ag = add i64 %i.af, 8                        ; 2 uses
  %scevgep84 = getelementptr i8, ptr %i.k, i64 %i.ag ; 2 uses
  %scevgep85 = getelementptr i8, ptr %i.v, i64 %i.ag ; 2 uses
  %bound086 = icmp ult ptr %i.k, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %bound187 = icmp ugt ptr %scevgep84, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %found.conflict88 = and i1 %bound086, %bound187
  %bound089 = icmp ult ptr %i.k, %scevgep85
  %bound190 = icmp ult ptr %i.v, %scevgep84
  %found.conflict91 = and i1 %bound089, %bound190
  %conflict.rdx = or i1 %found.conflict88, %found.conflict91
  %bound092 = icmp ugt ptr %scevgep85, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %bound193 = icmp ult ptr %i.v, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %found.conflict94 = and i1 %bound092, %bound193
  %conflict.rdx95 = or i1 %conflict.rdx, %found.conflict94
  br i1 %conflict.rdx95, label %.lr.ph.i.i.preheader120, label %vector.ph98

vector.ph98:                                      ; preds = %vector.memcheck83
  %n.vec99 = and i64 %i.ac, 4611686018427387900   ; 3 uses
  %i.ah = shl i64 %n.vec99, 3                     ; 2 uses
  %i.ai = getelementptr i8, ptr %i.v, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.k, i64 %i.ah   ; 2 uses
  %i.ak = insertelement <2 x i32> <i32 poison, i32 0>, i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, i64 0
  br label %vector.body100

vector.body100:                                   ; preds = %vector.body100, %vector.ph98
  %index101 = phi i64 [ 0, %vector.ph98 ], [ %index.next115, %vector.body100 ] ; 2 uses
  %vec.phi = phi <2 x i32> [ %i.ak, %vector.ph98 ], [ %i.an, %vector.body100 ]
  %vec.phi102 = phi <2 x i32> [ zeroinitializer, %vector.ph98 ], [ %i.ao, %vector.body100 ]
  %i.al = shl i64 %index101, 3                    ; 3 uses
  %i.am = or disjoint i64 %i.al, 16               ; 2 uses
  %next.gep103 = getelementptr i8, ptr %i.v, i64 %i.al
  %next.gep104 = getelementptr i8, ptr %i.v, i64 %i.am
  %next.gep105 = getelementptr i8, ptr %i.k, i64 %i.al
  %next.gep106 = getelementptr i8, ptr %i.k, i64 %i.am
  %wide.vec107 = load <4 x i32>, ptr %next.gep103, align 4, !tbaa !254, !alias.scope !4874
  %wide.vec110 = load <4 x i32>, ptr %next.gep104, align 4, !tbaa !254, !alias.scope !4874
  store <4 x i32> %wide.vec107, ptr %next.gep105, align 4, !tbaa !254, !alias.scope !4875, !noalias !4876
  store <4 x i32> %wide.vec110, ptr %next.gep106, align 4, !tbaa !254, !alias.scope !4875, !noalias !4876
  %i.an = add <2 x i32> %vec.phi, splat (i32 2)   ; 2 uses
  %i.ao = add <2 x i32> %vec.phi102, splat (i32 2) ; 2 uses
  %index.next115 = add nuw i64 %index101, 4       ; 2 uses
  %i.ap = icmp eq i64 %index.next115, %n.vec99
  br i1 %i.ap, label %middle.block116, label %vector.body100, !llvm.loop !4857

middle.block116:                                  ; preds = %vector.body100
  %bin.rdx = add <2 x i32> %i.ao, %i.an
  %i.aq = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx) ; 2 uses
  store i32 %i.aq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !alias.scope !4877, !noalias !4874
  %cmp.n117 = icmp eq i64 %i.ac, %n.vec99
  br i1 %cmp.n117, label %.loopexit, label %.lr.ph.i.i.preheader120

.lr.ph.i.i.preheader120:                          ; preds = %vector.memcheck83, %.lr.ph.i.i.preheader, %middle.block116
  %.ph = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, %vector.memcheck83 ], [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, %.lr.ph.i.i.preheader ], [ %i.aq, %middle.block116 ]
  %.ph121 = phi ptr [ %i.v, %vector.memcheck83 ], [ %i.v, %.lr.ph.i.i.preheader ], [ %i.ai, %middle.block116 ]
  %.011.i.i.ph = phi ptr [ %i.k, %vector.memcheck83 ], [ %i.k, %.lr.ph.i.i.preheader ], [ %i.aj, %middle.block116 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader120, %.lr.ph.i.i
  %i.ar = phi i32 [ %i.ax, %.lr.ph.i.i ], [ %.ph, %.lr.ph.i.i.preheader120 ]
  %i.as = phi ptr [ %i.ay, %.lr.ph.i.i ], [ %.ph121, %.lr.ph.i.i.preheader120 ] ; 3 uses
  %.011.i.i = phi ptr [ %i.az, %.lr.ph.i.i ], [ %.011.i.i.ph, %.lr.ph.i.i.preheader120 ] ; 3 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !254
  store i32 %i.at, ptr %.011.i.i, align 4, !tbaa !254
  %i.au = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 4
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !254
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !254
  %i.ax = add i32 %i.ar, 2                        ; 2 uses
  store i32 %i.ax, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ay, %i.x
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !4858

.loopexit:                                        ; preds = %.lr.ph.i.i, %middle.block116, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS6_m.exit
  %.0.lcssa.i.i = phi ptr [ %i.k, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS6_m.exit ], [ %i.aj, %middle.block116 ], [ %i.az, %.lr.ph.i.i ]
  %i.ba = ptrtoint ptr %.0.lcssa.i.i to i64
  %i.bb = ptrtoint ptr %i.k to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = ashr exact i64 %i.bc, 3
  store i64 %i.bd, ptr %i.u, align 8, !tbaa !251
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.be = load ptr, ptr %0, align 8, !tbaa !250   ; 15 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !259 ; 13 uses
  %i.bh = icmp ult i64 %i.bg, %i.f
  br i1 %i.bh, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.not3.i.i14 = icmp eq i64 %i.bg, 0
  br i1 %.not3.i.i14, label %_ZN5boost9container18copy_n_source_destINS0_12vec_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES5_ELb1EEES7_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SB_E4typeESB_mRSC_.exit.i, label %.lr.ph.i.i15.preheader

.lr.ph.i.i15.preheader:                           ; preds = %bb.h
  %min.iters.check60 = icmp ult i64 %i.bg, 8
  br i1 %min.iters.check60, label %.lr.ph.i.i15.preheader124, label %vector.memcheck53

vector.memcheck53:                                ; preds = %.lr.ph.i.i15.preheader
  %i.bi = shl i64 %i.bg, 3                        ; 2 uses
  %scevgep54 = getelementptr i8, ptr %i.be, i64 %i.bi
  %scevgep55 = getelementptr i8, ptr %i.a, i64 %i.bi
  %bound056 = icmp ult ptr %i.be, %scevgep55
  %bound157 = icmp ult ptr %i.a, %scevgep54
  %found.conflict58 = and i1 %bound056, %bound157
  br i1 %found.conflict58, label %.lr.ph.i.i15.preheader124, label %vector.ph61

vector.ph61:                                      ; preds = %vector.memcheck53
  %n.vec62 = and i64 %i.bg, -4                    ; 3 uses
  %i.bj = shl i64 %n.vec62, 3                     ; 2 uses
  %i.bk = getelementptr i8, ptr %i.a, i64 %i.bj   ; 2 uses
  %i.bl = getelementptr i8, ptr %i.be, i64 %i.bj  ; 2 uses
  %i.bm = and i64 %i.bg, 3
  br label %vector.body63

vector.body63:                                    ; preds = %vector.body63, %vector.ph61
  %index64 = phi i64 [ 0, %vector.ph61 ], [ %index.next77, %vector.body63 ] ; 2 uses
  %i.bn = shl i64 %index64, 3                     ; 3 uses
  %i.bo = or disjoint i64 %i.bn, 16               ; 2 uses
  %next.gep65 = getelementptr i8, ptr %i.a, i64 %i.bn
  %next.gep66 = getelementptr i8, ptr %i.a, i64 %i.bo
  %next.gep67 = getelementptr i8, ptr %i.be, i64 %i.bn
  %next.gep68 = getelementptr i8, ptr %i.be, i64 %i.bo
  %wide.vec69 = load <4 x i32>, ptr %next.gep65, align 4, !tbaa !254, !alias.scope !4878, !noalias !4879
  %wide.vec72 = load <4 x i32>, ptr %next.gep66, align 4, !tbaa !254, !alias.scope !4878, !noalias !4879
  store <4 x i32> %wide.vec69, ptr %next.gep67, align 4, !tbaa !254, !alias.scope !4880, !noalias !4879
  store <4 x i32> %wide.vec72, ptr %next.gep68, align 4, !tbaa !254, !alias.scope !4880, !noalias !4879
  %index.next77 = add nuw i64 %index64, 4         ; 2 uses
  %i.bp = icmp eq i64 %index.next77, %n.vec62
  br i1 %i.bp, label %middle.block78, label %vector.body63, !llvm.loop !4864

middle.block78:                                   ; preds = %vector.body63
  %cmp.n79 = icmp eq i64 %i.bg, %n.vec62
  br i1 %cmp.n79, label %_ZN5boost9container18copy_n_source_destINS0_12vec_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES5_ELb1EEES7_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SB_E4typeESB_mRSC_.exit.i, label %.lr.ph.i.i15.preheader124

.lr.ph.i.i15.preheader124:                        ; preds = %vector.memcheck53, %.lr.ph.i.i15.preheader, %middle.block78
  %.sroa.019.0.i.ph = phi ptr [ %i.a, %vector.memcheck53 ], [ %i.a, %.lr.ph.i.i15.preheader ], [ %i.bk, %middle.block78 ] ; 2 uses
  %.0.i.ph = phi ptr [ %i.be, %vector.memcheck53 ], [ %i.be, %.lr.ph.i.i15.preheader ], [ %i.bl, %middle.block78 ] ; 2 uses
  %.04.i.i.ph = phi i64 [ %i.bg, %vector.memcheck53 ], [ %i.bg, %.lr.ph.i.i15.preheader ], [ %i.bm, %middle.block78 ] ; 4 uses
  %i.bq = add i64 %.04.i.i.ph, -1
  %xtraiter129 = and i64 %.04.i.i.ph, 3           ; 2 uses
  %lcmp.mod130.not = icmp eq i64 %xtraiter129, 0
  br i1 %lcmp.mod130.not, label %.lr.ph.i.i15.prol.loopexit, label %.lr.ph.i.i15.prol

.lr.ph.i.i15.prol:                                ; preds = %.lr.ph.i.i15.preheader124, %.lr.ph.i.i15.prol
  %.sroa.019.0.i.prol = phi ptr [ %i.bw, %.lr.ph.i.i15.prol ], [ %.sroa.019.0.i.ph, %.lr.ph.i.i15.preheader124 ] ; 3 uses
  %.0.i.prol = phi ptr [ %i.bx, %.lr.ph.i.i15.prol ], [ %.0.i.ph, %.lr.ph.i.i15.preheader124 ] ; 3 uses
  %.04.i.i.prol = phi i64 [ %i.br, %.lr.ph.i.i15.prol ], [ %.04.i.i.ph, %.lr.ph.i.i15.preheader124 ]
  %prol.iter131 = phi i64 [ %prol.iter131.next, %.lr.ph.i.i15.prol ], [ 0, %.lr.ph.i.i15.preheader124 ]
  %i.br = add i64 %.04.i.i.prol, -1               ; 2 uses
  %i.bs = load i32, ptr %.sroa.019.0.i.prol, align 4, !tbaa !254, !noalias !4879
  store i32 %i.bs, ptr %.0.i.prol, align 4, !tbaa !254, !noalias !4879
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.019.0.i.prol, i64 4
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.i.prol, i64 4
  %i.bv = load i32, ptr %i.bt, align 4, !tbaa !254, !noalias !4879
  store i32 %i.bv, ptr %i.bu, align 4, !tbaa !254, !noalias !4879
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.019.0.i.prol, i64 8 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i.prol, i64 8 ; 3 uses
  %prol.iter131.next = add i64 %prol.iter131, 1   ; 2 uses
  %prol.iter131.cmp.not = icmp eq i64 %prol.iter131.next, %xtraiter129
  br i1 %prol.iter131.cmp.not, label %.lr.ph.i.i15.prol.loopexit, label %.lr.ph.i.i15.prol, !llvm.loop !4865

.lr.ph.i.i15.prol.loopexit:                       ; preds = %.lr.ph.i.i15.prol, %.lr.ph.i.i15.preheader124
  %.lcssa126.unr = phi ptr [ poison, %.lr.ph.i.i15.preheader124 ], [ %i.bw, %.lr.ph.i.i15.prol ]
  %.lcssa125.unr = phi ptr [ poison, %.lr.ph.i.i15.preheader124 ], [ %i.bx, %.lr.ph.i.i15.prol ]
  %.sroa.019.0.i.unr = phi ptr [ %.sroa.019.0.i.ph, %.lr.ph.i.i15.preheader124 ], [ %i.bw, %.lr.ph.i.i15.prol ]
  %.0.i.unr = phi ptr [ %.0.i.ph, %.lr.ph.i.i15.preheader124 ], [ %i.bx, %.lr.ph.i.i15.prol ]
  %.04.i.i.unr = phi i64 [ %.04.i.i.ph, %.lr.ph.i.i15.preheader124 ], [ %i.br, %.lr.ph.i.i15.prol ]
  %i.by = icmp ult i64 %i.bq, 3
  br i1 %i.by, label %_ZN5boost9container18copy_n_source_destINS0_12vec_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES5_ELb1EEES7_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SB_E4typeESB_mRSC_.exit.i, label %.lr.ph.i.i15

.lr.ph.i.i15:                                     ; preds = %.lr.ph.i.i15.prol.loopexit, %.lr.ph.i.i15
  %.sroa.019.0.i = phi ptr [ %i.cw, %.lr.ph.i.i15 ], [ %.sroa.019.0.i.unr, %.lr.ph.i.i15.prol.loopexit ] ; 9 uses
end_hunk_1
begin_hunk_2_@_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE6assignINS0_12vec_iteratorIPS5_Lb1EEEEEvT_SE_PNS_11move_detail13disable_if_orIvNSF_7is_sameINSF_17integral_constantIjLj1EEENSI_IjLj0EEEEENSF_14is_convertibleISE_mEENS0_3dtl17is_input_iteratorISE_Xsr21has_iterator_categoryISE_EE5valueEEENSF_5bool_ILb0EEEE4typeE:bb.a
  %i.dr = getelementptr inbounds nuw i8, ptr %.01315.i.i, i64 8
  %i.ds = add i64 %.016.i.i, -2                   ; 2 uses
  %i.dt = load i32, ptr %i.dq, align 4, !tbaa !254
  store i32 %i.dt, ptr %i.dr, align 4, !tbaa !254
  %i.du = getelementptr inbounds nuw i8, ptr %.01315.i.i, i64 12
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dj, i64 12
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !254
  store i32 %i.dw, ptr %i.du, align 4, !tbaa !254
  %i.dx = add i32 %i.dl, 4
  store i32 %i.dx, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dz = getelementptr inbounds nuw i8, ptr %.01315.i.i, i64 16
  %.not.i12.i.1 = icmp eq i64 %i.ds, 0
  br i1 %.not.i12.i.1, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEENS0_12vec_iteratorIPS6_Lb1EEESA_EEvRT_T0_mT1_m.exit, label %.lr.ph.i11.i, !llvm.loop !4867

bb.i:                                             ; preds = %bb.g
  %.not5.i.i = icmp eq ptr %i.b, %i.a
  br i1 %.not5.i.i, label %_ZN5boost9container6copy_nINS0_12vec_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES5_ELb1EEES7_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESB_mSC_.exit.i, label %.lr.ph.i13.i.preheader

.lr.ph.i13.i.preheader:                           ; preds = %bb.i
  %min.iters.check = icmp ult i64 %i.f, 6
  br i1 %min.iters.check, label %.lr.ph.i13.i.preheader127, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i13.i.preheader
  %scevgep = getelementptr i8, ptr %i.be, i64 %i.e
  %bound0 = icmp ult ptr %i.be, %i.b
  %bound1 = icmp ult ptr %i.a, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i13.i.preheader127, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.f, -4                       ; 3 uses
  %i.ea = shl nsw i64 %n.vec, 3                   ; 2 uses
  %i.eb = getelementptr i8, ptr %i.a, i64 %i.ea
  %i.ec = getelementptr i8, ptr %i.be, i64 %i.ea
  %i.ed = and i64 %i.f, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ee = shl i64 %index, 3                       ; 3 uses
  %i.ef = or disjoint i64 %i.ee, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.a, i64 %i.ee
  %next.gep43 = getelementptr i8, ptr %i.a, i64 %i.ef
  %next.gep44 = getelementptr i8, ptr %i.be, i64 %i.ee
  %next.gep45 = getelementptr i8, ptr %i.be, i64 %i.ef
  %wide.vec = load <4 x i32>, ptr %next.gep, align 4, !tbaa !254, !alias.scope !4881
  %wide.vec47 = load <4 x i32>, ptr %next.gep43, align 4, !tbaa !254, !alias.scope !4881
  store <4 x i32> %wide.vec, ptr %next.gep44, align 4, !tbaa !254, !alias.scope !4882, !noalias !4881
  store <4 x i32> %wide.vec47, ptr %next.gep45, align 4, !tbaa !254, !alias.scope !4882, !noalias !4881
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.eg = icmp eq i64 %index.next, %n.vec
  br i1 %i.eg, label %middle.block, label %vector.body, !llvm.loop !4871

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.f, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container6copy_nINS0_12vec_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES5_ELb1EEES7_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESB_mSC_.exit.i, label %.lr.ph.i13.i.preheader127

.lr.ph.i13.i.preheader127:                        ; preds = %vector.memcheck, %.lr.ph.i13.i.preheader, %middle.block
  %.ph128 = phi ptr [ %i.a, %vector.memcheck ], [ %i.a, %.lr.ph.i13.i.preheader ], [ %i.eb, %middle.block ] ; 2 uses
  %.07.i.i.ph = phi ptr [ %i.be, %vector.memcheck ], [ %i.be, %.lr.ph.i13.i.preheader ], [ %i.ec, %middle.block ] ; 2 uses
  %.046.i.i.ph = phi i64 [ %i.f, %vector.memcheck ], [ %i.f, %.lr.ph.i13.i.preheader ], [ %i.ed, %middle.block ] ; 4 uses
  %i.eh = add nsw i64 %.046.i.i.ph, -1
  %xtraiter = and i64 %.046.i.i.ph, 3             ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i13.i.prol.loopexit, label %.lr.ph.i13.i.prol

.lr.ph.i13.i.prol:                                ; preds = %.lr.ph.i13.i.preheader127, %.lr.ph.i13.i.prol
  %i.ei = phi ptr [ %i.eo, %.lr.ph.i13.i.prol ], [ %.ph128, %.lr.ph.i13.i.preheader127 ] ; 3 uses
  %.07.i.i.prol = phi ptr [ %i.ep, %.lr.ph.i13.i.prol ], [ %.07.i.i.ph, %.lr.ph.i13.i.preheader127 ] ; 3 uses
  %.046.i.i.prol = phi i64 [ %i.ej, %.lr.ph.i13.i.prol ], [ %.046.i.i.ph, %.lr.ph.i13.i.preheader127 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i13.i.prol ], [ 0, %.lr.ph.i13.i.preheader127 ]
  %i.ej = add i64 %.046.i.i.prol, -1              ; 2 uses
  %i.ek = load i32, ptr %i.ei, align 4, !tbaa !254
  store i32 %i.ek, ptr %.07.i.i.prol, align 4, !tbaa !254
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  %i.em = getelementptr inbounds nuw i8, ptr %.07.i.i.prol, i64 4
  %i.en = load i32, ptr %i.el, align 4, !tbaa !254
  store i32 %i.en, ptr %i.em, align 4, !tbaa !254
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ei, i64 8 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.07.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i13.i.prol.loopexit, label %.lr.ph.i13.i.prol, !llvm.loop !4872

.lr.ph.i13.i.prol.loopexit:                       ; preds = %.lr.ph.i13.i.prol, %.lr.ph.i13.i.preheader127
  %.unr = phi ptr [ %.ph128, %.lr.ph.i13.i.preheader127 ], [ %i.eo, %.lr.ph.i13.i.prol ]
  %.07.i.i.unr = phi ptr [ %.07.i.i.ph, %.lr.ph.i13.i.preheader127 ], [ %i.ep, %.lr.ph.i13.i.prol ]
  %.046.i.i.unr = phi i64 [ %.046.i.i.ph, %.lr.ph.i13.i.preheader127 ], [ %i.ej, %.lr.ph.i13.i.prol ]
  %i.eq = icmp ult i64 %i.eh, 3
  br i1 %i.eq, label %_ZN5boost9container6copy_nINS0_12vec_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES5_ELb1EEES7_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESB_mSC_.exit.i, label %.lr.ph.i13.i

.lr.ph.i13.i:                                     ; preds = %.lr.ph.i13.i.prol.loopexit, %.lr.ph.i13.i
  %i.er = phi ptr [ %i.fp, %.lr.ph.i13.i ], [ %.unr, %.lr.ph.i13.i.prol.loopexit ] ; 9 uses
  %.07.i.i = phi ptr [ %i.fq, %.lr.ph.i13.i ], [ %.07.i.i.unr, %.lr.ph.i13.i.prol.loopexit ] ; 9 uses
  %.046.i.i = phi i64 [ %i.fk, %.lr.ph.i13.i ], [ %.046.i.i.unr, %.lr.ph.i13.i.prol.loopexit ]
  %i.es = load i32, ptr %i.er, align 4, !tbaa !254
  store i32 %i.es, ptr %.07.i.i, align 4, !tbaa !254
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %i.eu = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 4
  %i.ev = load i32, ptr %i.et, align 4, !tbaa !254
  store i32 %i.ev, ptr %i.eu, align 4, !tbaa !254
  %i.ew = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.ex = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8
  %i.ey = load i32, ptr %i.ew, align 4, !tbaa !254
  store i32 %i.ey, ptr %i.ex, align 4, !tbaa !254
  %i.ez = getelementptr inbounds nuw i8, ptr %i.er, i64 12
  %i.fa = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 12
  %i.fb = load i32, ptr %i.ez, align 4, !tbaa !254
  store i32 %i.fb, ptr %i.fa, align 4, !tbaa !254
  %i.fc = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.fd = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 16
  %i.fe = load i32, ptr %i.fc, align 4, !tbaa !254
  store i32 %i.fe, ptr %i.fd, align 4, !tbaa !254
  %i.ff = getelementptr inbounds nuw i8, ptr %i.er, i64 20
  %i.fg = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 20
  %i.fh = load i32, ptr %i.ff, align 4, !tbaa !254
  store i32 %i.fh, ptr %i.fg, align 4, !tbaa !254
  %i.fi = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  %i.fj = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 24
  %i.fk = add i64 %.046.i.i, -4                   ; 2 uses
  %i.fl = load i32, ptr %i.fi, align 4, !tbaa !254
  store i32 %i.fl, ptr %i.fj, align 4, !tbaa !254
  %i.fm = getelementptr inbounds nuw i8, ptr %i.er, i64 28
  %i.fn = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 28
  %i.fo = load i32, ptr %i.fm, align 4, !tbaa !254
  store i32 %i.fo, ptr %i.fn, align 4, !tbaa !254
  %i.fp = getelementptr inbounds nuw i8, ptr %i.er, i64 32
  %i.fq = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 32
  %.not.i15.i.3 = icmp eq i64 %i.fk, 0
  br i1 %.not.i15.i.3, label %_ZN5boost9container6copy_nINS0_12vec_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES5_ELb1EEES7_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESB_mSC_.exit.i, label %.lr.ph.i13.i, !llvm.loop !4873

_ZN5boost9container6copy_nINS0_12vec_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES5_ELb1EEES7_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESB_mSC_.exit.i: ; preds = %.lr.ph.i13.i.prol.loopexit, %.lr.ph.i13.i, %middle.block, %bb.i
  %.not3.i16.i = icmp eq i64 %i.bg, %i.f
  br i1 %.not3.i16.i, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEENS0_12vec_iteratorIPS6_Lb1EEESA_EEvRT_T0_mT1_m.exit, label %.lr.ph.preheader.i17.i

.lr.ph.preheader.i17.i:                           ; preds = %_ZN5boost9container6copy_nINS0_12vec_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES5_ELb1EEES7_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESB_mSC_.exit.i
  %.neg.i = sub i64 %i.f, %i.bg
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i13 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %.neg24.i = trunc i64 %.neg.i to i32
  %.neg25.i = shl i32 %.neg24.i, 1
  %i.fr = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i13, %.neg25.i
  store i32 %i.fr, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  br label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEENS0_12vec_iteratorIPS6_Lb1EEESA_EEvRT_T0_mT1_m.exit

_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEENS0_12vec_iteratorIPS6_Lb1EEESA_EEvRT_T0_mT1_m.exit: ; preds = %.lr.ph.i11.i.prol.loopexit, %.lr.ph.i11.i, %_ZN5boost9container6copy_nINS0_12vec_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES5_ELb1EEES7_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESB_mSC_.exit.i, %.lr.ph.preheader.i17.i
  store i64 %i.f, ptr %i.bf, align 8, !tbaa !251
  br label %bb.j

bb.j:                                             ; preds = %.loopexit, %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEENS0_12vec_iteratorIPS6_Lb1EEESA_EEvRT_T0_mT1_m.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE6assignIPS5_EEvT_SC_PNS_11move_detail13disable_if_orIvNSD_7is_sameINSD_17integral_constantIjLj1EEENSG_IjLj0EEEEENSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 15 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !252  ; 2 uses
  %i.g = icmp ugt i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %i.d, 2305843009213693951
  br i1 %i.h, label %bb.c, label %bb.d, !prof !225

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.4) #25
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #27 ; 8 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !250    ; 3 uses
  %.not17 = icmp eq ptr %i.j, null
  br i1 %.not17, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS6_m.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !259  ; 2 uses
  %.not3.i.i = icmp eq i64 %i.l, 0
  br i1 %.not3.i.i, label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE16priv_destroy_allEv.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.e
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.m = trunc i64 %i.l to i32
  %i.n = shl i32 %i.m, 1
  %i.o = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i, %i.n
  store i32 %i.o, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  br label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE16priv_destroy_allEv.exit

_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE16priv_destroy_allEv.exit: ; preds = %bb.e, %.lr.ph.preheader.i.i
  store i64 0, ptr %i.k, align 8, !tbaa !259
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = icmp eq ptr %i.p, %i.j
  br i1 %i.q, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS6_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE16priv_destroy_allEv.exit
  %i.r = shl i64 %i.f, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.r) #28
  br label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS6_m.exit

_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS6_m.exit: ; preds = %bb.f, %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE16priv_destroy_allEv.exit, %bb.d
  store ptr %i.i, ptr %0, align 8, !tbaa !250
  store i64 %i.d, ptr %i.e, align 8, !tbaa !226
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not16.i.i = icmp eq ptr %1, %2
  br i1 %.not16.i.i, label %.loopexit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS6_m.exit
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255 ; 3 uses
  %i.t = add i64 %i.a, -8
  %i.u = sub i64 %i.t, %i.b                       ; 2 uses
  %i.v = lshr i64 %i.u, 3
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %min.iters.check89 = icmp ult i64 %i.u, 72
  br i1 %min.iters.check89, label %.lr.ph.i.i.preheader112, label %vector.memcheck83

vector.memcheck83:                                ; preds = %.lr.ph.i.i.preheader
  %i.x = add i64 %i.a, -8
  %i.y = sub i64 %i.x, %i.b
  %i.z = and i64 %i.y, -8
  %i.aa = getelementptr i8, ptr %1, i64 %i.z
  %scevgep84 = getelementptr i8, ptr %i.aa, i64 8
  %bound085 = icmp ugt ptr %scevgep84, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %bound186 = icmp ult ptr %1, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %found.conflict87 = and i1 %bound085, %bound186
  br i1 %found.conflict87, label %.lr.ph.i.i.preheader112, label %vector.ph90

vector.ph90:                                      ; preds = %vector.memcheck83
  %n.vec91 = and i64 %i.w, 4611686018427387900    ; 3 uses
  %i.ab = shl i64 %n.vec91, 3                     ; 2 uses
  %i.ac = getelementptr i8, ptr %1, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.i, i64 %i.ab   ; 2 uses
  %i.ae = insertelement <2 x i32> <i32 poison, i32 0>, i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, i64 0
  br label %vector.body92

vector.body92:                                    ; preds = %vector.body92, %vector.ph90
  %index93 = phi i64 [ 0, %vector.ph90 ], [ %index.next107, %vector.body92 ] ; 2 uses
  %vec.phi = phi <2 x i32> [ %i.ae, %vector.ph90 ], [ %i.ah, %vector.body92 ]
  %vec.phi94 = phi <2 x i32> [ zeroinitializer, %vector.ph90 ], [ %i.ai, %vector.body92 ]
  %i.af = shl i64 %index93, 3                     ; 3 uses
  %i.ag = or disjoint i64 %i.af, 16               ; 2 uses
  %next.gep95 = getelementptr i8, ptr %1, i64 %i.af
  %next.gep96 = getelementptr i8, ptr %1, i64 %i.ag
  %next.gep97 = getelementptr i8, ptr %i.i, i64 %i.af
  %next.gep98 = getelementptr i8, ptr %i.i, i64 %i.ag
  %wide.vec99 = load <4 x i32>, ptr %next.gep95, align 4, !tbaa !254, !alias.scope !4902
  %wide.vec102 = load <4 x i32>, ptr %next.gep96, align 4, !tbaa !254, !alias.scope !4902
  store <4 x i32> %wide.vec99, ptr %next.gep97, align 4, !tbaa !254, !alias.scope !4903
  store <4 x i32> %wide.vec102, ptr %next.gep98, align 4, !tbaa !254, !alias.scope !4903
  %i.ah = add <2 x i32> %vec.phi, splat (i32 2)   ; 2 uses
  %i.ai = add <2 x i32> %vec.phi94, splat (i32 2) ; 2 uses
  %index.next107 = add nuw i64 %index93, 4        ; 2 uses
  %i.aj = icmp eq i64 %index.next107, %n.vec91
  br i1 %i.aj, label %middle.block108, label %vector.body92, !llvm.loop !4886

middle.block108:                                  ; preds = %vector.body92
  %bin.rdx = add <2 x i32> %i.ai, %i.ah
  %i.ak = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx) ; 2 uses
  store i32 %i.ak, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !alias.scope !4904, !noalias !4902
  %cmp.n109 = icmp eq i64 %i.w, %n.vec91
  br i1 %cmp.n109, label %.loopexit, label %.lr.ph.i.i.preheader112

.lr.ph.i.i.preheader112:                          ; preds = %vector.memcheck83, %.lr.ph.i.i.preheader, %middle.block108
  %.ph = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, %vector.memcheck83 ], [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, %.lr.ph.i.i.preheader ], [ %i.ak, %middle.block108 ]
  %.018.i.i.ph = phi ptr [ %1, %vector.memcheck83 ], [ %1, %.lr.ph.i.i.preheader ], [ %i.ac, %middle.block108 ]
  %.01517.i.i.ph = phi ptr [ %i.i, %vector.memcheck83 ], [ %i.i, %.lr.ph.i.i.preheader ], [ %i.ad, %middle.block108 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader112, %.lr.ph.i.i
  %i.al = phi i32 [ %i.an, %.lr.ph.i.i ], [ %.ph, %.lr.ph.i.i.preheader112 ]
  %.018.i.i = phi ptr [ %i.ao, %.lr.ph.i.i ], [ %.018.i.i.ph, %.lr.ph.i.i.preheader112 ] ; 2 uses
  %.01517.i.i = phi ptr [ %i.ap, %.lr.ph.i.i ], [ %.01517.i.i.ph, %.lr.ph.i.i.preheader112 ] ; 2 uses
  %i.am = load <2 x i32>, ptr %.018.i.i, align 4, !tbaa !254
  store <2 x i32> %i.am, ptr %.01517.i.i, align 4, !tbaa !254
  %i.an = add i32 %i.al, 2                        ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ao, %2
  br i1 %.not.i.i, label %.loopexit.loopexit, label %.lr.ph.i.i, !llvm.loop !4888

.loopexit.loopexit:                               ; preds = %.lr.ph.i.i
  store i32 %i.an, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %middle.block108, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS6_m.exit
  %.015.lcssa.i.i = phi ptr [ %i.i, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS6_m.exit ], [ %i.ad, %middle.block108 ], [ %i.ap, %.loopexit.loopexit ]
  %i.aq = ptrtoint ptr %.015.lcssa.i.i to i64
  %i.ar = ptrtoint ptr %i.i to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = ashr exact i64 %i.as, 3
  store i64 %i.at, ptr %i.s, align 8, !tbaa !251
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.au = load ptr, ptr %0, align 8, !tbaa !250   ; 15 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !259 ; 13 uses
  %i.ax = icmp ult i64 %i.aw, %i.d
  br i1 %i.ax, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.not7.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not7.i.i, label %_ZN5boost9container18copy_n_source_destIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, label %.lr.ph.i.i21.preheader

.lr.ph.i.i21.preheader:                           ; preds = %bb.h
  %min.iters.check60 = icmp ult i64 %i.aw, 8
  br i1 %min.iters.check60, label %.lr.ph.i.i21.preheader115, label %vector.memcheck53

vector.memcheck53:                                ; preds = %.lr.ph.i.i21.preheader
  %i.ay = shl i64 %i.aw, 3                        ; 2 uses
  %scevgep54 = getelementptr i8, ptr %i.au, i64 %i.ay
  %scevgep55 = getelementptr i8, ptr %1, i64 %i.ay
  %bound056 = icmp ult ptr %i.au, %scevgep55
  %bound157 = icmp ult ptr %1, %scevgep54
  %found.conflict58 = and i1 %bound056, %bound157
  br i1 %found.conflict58, label %.lr.ph.i.i21.preheader115, label %vector.ph61

vector.ph61:                                      ; preds = %vector.memcheck53
  %n.vec62 = and i64 %i.aw, -4                    ; 3 uses
  %i.az = shl i64 %n.vec62, 3                     ; 2 uses
  %i.ba = getelementptr i8, ptr %i.au, i64 %i.az  ; 2 uses
  %i.bb = getelementptr i8, ptr %1, i64 %i.az     ; 2 uses
  %i.bc = and i64 %i.aw, 3
  br label %vector.body63

vector.body63:                                    ; preds = %vector.body63, %vector.ph61
  %index64 = phi i64 [ 0, %vector.ph61 ], [ %index.next77, %vector.body63 ] ; 2 uses
  %i.bd = shl i64 %index64, 3                     ; 3 uses
  %i.be = or disjoint i64 %i.bd, 16               ; 2 uses
  %next.gep65 = getelementptr i8, ptr %i.au, i64 %i.bd
  %next.gep66 = getelementptr i8, ptr %i.au, i64 %i.be
  %next.gep67 = getelementptr i8, ptr %1, i64 %i.bd
  %next.gep68 = getelementptr i8, ptr %1, i64 %i.be
  %wide.vec69 = load <4 x i32>, ptr %next.gep67, align 4, !tbaa !254, !alias.scope !4905
  %wide.vec72 = load <4 x i32>, ptr %next.gep68, align 4, !tbaa !254, !alias.scope !4905
  store <4 x i32> %wide.vec69, ptr %next.gep65, align 4, !tbaa !254, !alias.scope !4906, !noalias !4905
  store <4 x i32> %wide.vec72, ptr %next.gep66, align 4, !tbaa !254, !alias.scope !4906, !noalias !4905
  %index.next77 = add nuw i64 %index64, 4         ; 2 uses
  %i.bf = icmp eq i64 %index.next77, %n.vec62
  br i1 %i.bf, label %middle.block78, label %vector.body63, !llvm.loop !4892

middle.block78:                                   ; preds = %vector.body63
  %cmp.n79 = icmp eq i64 %i.aw, %n.vec62
  br i1 %cmp.n79, label %_ZN5boost9container18copy_n_source_destIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, label %.lr.ph.i.i21.preheader115

.lr.ph.i.i21.preheader115:                        ; preds = %vector.memcheck53, %.lr.ph.i.i21.preheader, %middle.block78
  %.ph116 = phi ptr [ %i.au, %vector.memcheck53 ], [ %i.au, %.lr.ph.i.i21.preheader ], [ %i.ba, %middle.block78 ] ; 2 uses
  %.09.i.i.ph = phi ptr [ %1, %vector.memcheck53 ], [ %1, %.lr.ph.i.i21.preheader ], [ %i.bb, %middle.block78 ] ; 2 uses
  %.068.i.i.ph = phi i64 [ %i.aw, %vector.memcheck53 ], [ %i.aw, %.lr.ph.i.i21.preheader ], [ %i.bc, %middle.block78 ] ; 4 uses
  %i.bg = add i64 %.068.i.i.ph, -1
  %xtraiter120 = and i64 %.068.i.i.ph, 3          ; 2 uses
  %lcmp.mod121.not = icmp eq i64 %xtraiter120, 0
  br i1 %lcmp.mod121.not, label %.lr.ph.i.i21.prol.loopexit, label %.lr.ph.i.i21.prol

.lr.ph.i.i21.prol:                                ; preds = %.lr.ph.i.i21.preheader115, %.lr.ph.i.i21.prol
  %i.bh = phi ptr [ %i.bo, %.lr.ph.i.i21.prol ], [ %.ph116, %.lr.ph.i.i21.preheader115 ] ; 3 uses
  %.09.i.i.prol = phi ptr [ %i.bn, %.lr.ph.i.i21.prol ], [ %.09.i.i.ph, %.lr.ph.i.i21.preheader115 ] ; 3 uses
  %.068.i.i.prol = phi i64 [ %i.bi, %.lr.ph.i.i21.prol ], [ %.068.i.i.ph, %.lr.ph.i.i21.preheader115 ]
  %prol.iter122 = phi i64 [ %prol.iter122.next, %.lr.ph.i.i21.prol ], [ 0, %.lr.ph.i.i21.preheader115 ]
  %i.bi = add i64 %.068.i.i.prol, -1              ; 2 uses
  %i.bj = load i32, ptr %.09.i.i.prol, align 4, !tbaa !254
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !254
  %i.bk = getelementptr inbounds nuw i8, ptr %.09.i.i.prol, i64 4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bm = load i32, ptr %i.bk, align 4, !tbaa !254
  store i32 %i.bm, ptr %i.bl, align 4, !tbaa !254
  %i.bn = getelementptr inbounds nuw i8, ptr %.09.i.i.prol, i64 8 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 3 uses
  %prol.iter122.next = add i64 %prol.iter122, 1   ; 2 uses
  %prol.iter122.cmp.not = icmp eq i64 %prol.iter122.next, %xtraiter120
  br i1 %prol.iter122.cmp.not, label %.lr.ph.i.i21.prol.loopexit, label %.lr.ph.i.i21.prol, !llvm.loop !4893

.lr.ph.i.i21.prol.loopexit:                       ; preds = %.lr.ph.i.i21.prol, %.lr.ph.i.i21.preheader115
  %.lcssa118.unr = phi ptr [ poison, %.lr.ph.i.i21.preheader115 ], [ %i.bn, %.lr.ph.i.i21.prol ]
  %.lcssa117.unr = phi ptr [ poison, %.lr.ph.i.i21.preheader115 ], [ %i.bo, %.lr.ph.i.i21.prol ]
  %.unr = phi ptr [ %.ph116, %.lr.ph.i.i21.preheader115 ], [ %i.bo, %.lr.ph.i.i21.prol ]
  %.09.i.i.unr = phi ptr [ %.09.i.i.ph, %.lr.ph.i.i21.preheader115 ], [ %i.bn, %.lr.ph.i.i21.prol ]
  %.068.i.i.unr = phi i64 [ %.068.i.i.ph, %.lr.ph.i.i21.preheader115 ], [ %i.bi, %.lr.ph.i.i21.prol ]
  %i.bp = icmp ult i64 %i.bg, 3
  br i1 %i.bp, label %_ZN5boost9container18copy_n_source_destIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, label %.lr.ph.i.i21

.lr.ph.i.i21:                                     ; preds = %.lr.ph.i.i21.prol.loopexit, %.lr.ph.i.i21
  %i.bq = phi ptr [ %i.cp, %.lr.ph.i.i21 ], [ %.unr, %.lr.ph.i.i21.prol.loopexit ] ; 9 uses
  %.09.i.i = phi ptr [ %i.co, %.lr.ph.i.i21 ], [ %.09.i.i.unr, %.lr.ph.i.i21.prol.loopexit ] ; 9 uses
  %.068.i.i = phi i64 [ %i.cj, %.lr.ph.i.i21 ], [ %.068.i.i.unr, %.lr.ph.i.i21.prol.loopexit ]
  %i.br = load i32, ptr %.09.i.i, align 4, !tbaa !254
  store i32 %i.br, ptr %i.bq, align 4, !tbaa !254
  %i.bs = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 4
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.bu = load i32, ptr %i.bs, align 4, !tbaa !254
  store i32 %i.bu, ptr %i.bt, align 4, !tbaa !254
  %i.bv = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bx = load i32, ptr %i.bv, align 4, !tbaa !254
  store i32 %i.bx, ptr %i.bw, align 4, !tbaa !254
  %i.by = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 12
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
end_hunk_2
begin_hunk_3_@_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyIS8_NS_13move_iteratorIPS5_EEEEEEvSE_mSE_mT_:bb.a
_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ESaIvEvEENS_13move_iteratorIPS7_EEE31uninitialized_copy_n_and_updateISB_EEvRS9_T_m.exit.i: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEPS6_S9_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit.i
  %.not16.i19.i = icmp eq ptr %3, %i.d
  br i1 %.not16.i19.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEPS6_S9_NS0_3dtl18insert_range_proxyIS8_NS_13move_iteratorIS9_EEEEEEvRT_T0_SH_SH_T1_mT2_.exit, label %.lr.ph.i20.preheader.i

.lr.ph.i20.preheader.i:                           ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ESaIvEvEENS_13move_iteratorIPS7_EEE31uninitialized_copy_n_and_updateISB_EEvRS9_T_m.exit.i
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.015.lcssa.i.i, i64 %4
  br label %.lr.ph.i20.i

.lr.ph.i20.i:                                     ; preds = %.lr.ph.i20.i, %.lr.ph.i20.preheader.i
  %.018.i21.i = phi ptr [ %i.at, %.lr.ph.i20.i ], [ %3, %.lr.ph.i20.preheader.i ] ; 4 uses
  %.01517.i22.i = phi ptr [ %i.au, %.lr.ph.i20.i ], [ %i.am, %.lr.ph.i20.preheader.i ] ; 3 uses
  %i.an = load i32, ptr %.018.i21.i, align 4, !tbaa !254
  store i32 %i.an, ptr %.01517.i22.i, align 4, !tbaa !254
  store i32 0, ptr %.018.i21.i, align 4, !tbaa !254
  %i.ao = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.ap = getelementptr inbounds nuw i8, ptr %.01517.i22.i, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %.018.i21.i, i64 4 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !254
  store i32 %i.ar, ptr %i.ap, align 4, !tbaa !254
  store i32 0, ptr %i.aq, align 4, !tbaa !254
  %i.as = add i32 %i.ao, 2
  store i32 %i.as, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.at = getelementptr inbounds nuw i8, ptr %.018.i21.i, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.01517.i22.i, i64 8
  %.not.i23.i = icmp eq ptr %i.at, %i.d
  br i1 %.not.i23.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEPS6_S9_NS0_3dtl18insert_range_proxyIS8_NS_13move_iteratorIS9_EEEEEEvRT_T0_SH_SH_T1_mT2_.exit, label %.lr.ph.i20.i, !llvm.loop !4

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEPS6_S9_NS0_3dtl18insert_range_proxyIS8_NS_13move_iteratorIS9_EEEEEEvRT_T0_SH_SH_T1_mT2_.exit: ; preds = %.lr.ph.i20.i, %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ESaIvEvEENS_13move_iteratorIPS7_EEE31uninitialized_copy_n_and_updateISB_EEvRS9_T_m.exit.i
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZN5boost9container3dtl24scoped_array_deallocatorINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ESaIvEvEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEPS6_S9_NS0_3dtl18insert_range_proxyIS8_NS_13move_iteratorIS9_EEEEEEvRT_T0_SH_SH_T1_mT2_.exit
  %.not3.i = icmp eq i64 %i.c, 0
  br i1 %.not3.i, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SC_m.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.av = trunc i64 %i.c to i32
  %i.aw = shl i32 %i.av, 1
  %i.ax = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i, %i.aw
  store i32 %i.ax, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  br label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SC_m.exit

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SC_m.exit: ; preds = %.lr.ph.preheader.i, %bb.b
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.az = icmp eq ptr %i.ay, %i.a
  br i1 %i.az, label %_ZN5boost9container3dtl24scoped_array_deallocatorINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ESaIvEvEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SC_m.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !252
  %i.bc = shl i64 %i.bb, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.bc) #28
  %.pre = load i64, ptr %i.b, align 8, !tbaa !251
  br label %_ZN5boost9container3dtl24scoped_array_deallocatorINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ESaIvEvEEED2Ev.exit

_ZN5boost9container3dtl24scoped_array_deallocatorINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ESaIvEvEEED2Ev.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEPS6_S9_NS0_3dtl18insert_range_proxyIS8_NS_13move_iteratorIS9_EEEEEEvRT_T0_SH_SH_T1_mT2_.exit, %bb.c, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SC_m.exit
  %i.bd = phi i64 [ %i.c, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEPS6_S9_NS0_3dtl18insert_range_proxyIS8_NS_13move_iteratorIS9_EEEEEEvRT_T0_SH_SH_T1_mT2_.exit ], [ %.pre, %bb.c ], [ %i.c, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SC_m.exit ]
  store ptr %1, ptr %0, align 8, !tbaa !250
  %i.be = add i64 %i.bd, %4
  store i64 %i.be, ptr %i.b, align 8, !tbaa !251
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.bf, align 8, !tbaa !226
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(104) ptr @_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEE4DataaSEOSF_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i.i.i = icmp eq ptr %1, %0
  br i1 %.not.i.i.i, label %_ZN5boost9container12small_vectorISt4pairINS0_4test24movable_and_copyable_intES4_ELm10ESaIS5_EvEaSEOS7_.exit, label %bb.b, !prof !225

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !250    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.a
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !259  ; 2 uses
  %.not3.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not3.i.i.i.i.i.i.i.i.i, label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE5clearEv.exit.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i.i:               ; preds = %bb.c
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i.i.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.e = trunc i64 %i.d to i32
  %i.f = shl i32 %i.e, 1
  %i.g = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i.i.i.i.i, %i.f
  store i32 %i.g, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  br label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE5clearEv.exit.i.i.i.i.i.i

_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE5clearEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i.i.i, %bb.c
  store i64 0, ptr %i.c, align 8, !tbaa !259
  %i.h = load ptr, ptr %0, align 8, !tbaa !271    ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.h, null
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = icmp eq ptr %i.i, %i.h
  %or.cond.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i1 true, i1 %i.j, !prof !272
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE32priv_move_assign_steal_or_assignIS8_EEvONS1_IS5_T_vEENS_11move_detail17integral_constantIbLb1EEE.exit.i.i.i.i.i, label %bb.d, !prof !272

bb.d:                                             ; preds = %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE5clearEv.exit.i.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !273
  %i.m = shl i64 %i.l, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #28
  %.pre.i.i.i.i.i = load ptr, ptr %1, align 8, !tbaa !250
  br label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE32priv_move_assign_steal_or_assignIS8_EEvONS1_IS5_T_vEENS_11move_detail17integral_constantIbLb1EEE.exit.i.i.i.i.i

_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE32priv_move_assign_steal_or_assignIS8_EEvONS1_IS5_T_vEENS_11move_detail17integral_constantIbLb1EEE.exit.i.i.i.i.i: ; preds = %bb.d, %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE5clearEv.exit.i.i.i.i.i.i
  %i.n = phi ptr [ %i.a, %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE5clearEv.exit.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i, %bb.d ]
  store ptr %i.n, ptr %0, align 8, !tbaa !250
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load <2 x i64>, ptr %i.o, align 8, !tbaa !226
  store <2 x i64> %i.p, ptr %i.c, align 8, !tbaa !226
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %1, i8 0, i64 24, i1 false)
  br label %_ZN5boost9container12small_vectorISt4pairINS0_4test24movable_and_copyable_intES4_ELm10ESaIS5_EvEaSEOS7_.exit

bb.e:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !259, !noalias !4911
  %i.s = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.r
  invoke void @_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE6assignINS_13move_iteratorIPS5_EEEEvT_SE_PNS_11move_detail13disable_if_orIvNSF_7is_sameINSF_17integral_constantIjLj1EEENSI_IjLj0EEEEENSF_14is_convertibleISE_mEENS0_3dtl17is_input_iteratorISE_Xsr21has_iterator_categoryISE_EE5valueEEENSF_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %i.a, ptr %i.s, ptr noundef null)
          to label %.noexc.i.i.i unwind label %bb.f

.noexc.i.i.i:                                     ; preds = %bb.e
  %i.t = load i64, ptr %i.q, align 8, !tbaa !259  ; 2 uses
  %.not3.i.i.i.i.i.i.i.i = icmp eq i64 %i.t, 0
  br i1 %.not3.i.i.i.i.i.i.i.i, label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE5clearEv.exit.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i:                 ; preds = %.noexc.i.i.i
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.u = trunc i64 %i.t to i32
  %i.v = shl i32 %i.u, 1
  %i.w = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i.i.i.i, %i.v
  store i32 %i.w, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  br label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE5clearEv.exit.i.i.i.i.i

_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE5clearEv.exit.i.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i.i, %.noexc.i.i.i
  store i64 0, ptr %i.q, align 8, !tbaa !259
  br label %_ZN5boost9container12small_vectorISt4pairINS0_4test24movable_and_copyable_intES4_ELm10ESaIS5_EvEaSEOS7_.exit

bb.f:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #24
  unreachable

_ZN5boost9container12small_vectorISt4pairINS0_4test24movable_and_copyable_intES4_ELm10ESaIS5_EvEaSEOS7_.exit: ; preds = %bb.a, %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE32priv_move_assign_steal_or_assignIS8_EEvONS1_IS5_T_vEENS_11move_detail17integral_constantIbLb1EEE.exit.i.i.i.i.i, %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE5clearEv.exit.i.i.i.i.i
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE6assignINS_13move_iteratorIPS5_EEEEvT_SE_PNS_11move_detail13disable_if_orIvNSF_7is_sameINSF_17integral_constantIjLj1EEENSI_IjLj0EEEEENSF_14is_convertibleISE_mEENS0_3dtl17is_input_iteratorISE_Xsr21has_iterator_categoryISE_EE5valueEEENSF_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr noundef %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 15 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !252  ; 2 uses
  %i.g = icmp ugt i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %i.d, 2305843009213693951
  br i1 %i.h, label %bb.c, label %bb.d, !prof !225

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.4) #25
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #27 ; 4 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !250    ; 3 uses
  %.not18 = icmp eq ptr %i.j, null
  br i1 %.not18, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS6_m.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !259  ; 2 uses
  %.not3.i.i = icmp eq i64 %i.l, 0
  br i1 %.not3.i.i, label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE16priv_destroy_allEv.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.e
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.m = trunc i64 %i.l to i32
  %i.n = shl i32 %i.m, 1
  %i.o = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i, %i.n
  store i32 %i.o, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  br label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE16priv_destroy_allEv.exit

_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE16priv_destroy_allEv.exit: ; preds = %bb.e, %.lr.ph.preheader.i.i
  store i64 0, ptr %i.k, align 8, !tbaa !259
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = icmp eq ptr %i.p, %i.j
  br i1 %i.q, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS6_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE16priv_destroy_allEv.exit
  %i.r = shl i64 %i.f, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.r) #28
  br label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS6_m.exit

_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS6_m.exit: ; preds = %bb.f, %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE16priv_destroy_allEv.exit, %bb.d
  store ptr %i.i, ptr %0, align 8, !tbaa !250
  store i64 %i.d, ptr %i.e, align 8, !tbaa !226
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not13.i.i = icmp eq ptr %1, %2
  br i1 %.not13.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS6_m.exit, %.lr.ph.i.i
  %.015.i.i = phi ptr [ %i.y, %.lr.ph.i.i ], [ %i.i, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS6_m.exit ] ; 2 uses
  %.sroa.010.014.i.i = phi ptr [ %i.x, %.lr.ph.i.i ], [ %1, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS6_m.exit ] ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 4
  %i.u = load <2 x i32>, ptr %.sroa.010.014.i.i, align 4, !tbaa !254
  store i32 0, ptr %.sroa.010.014.i.i, align 4, !tbaa !254
  %i.v = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  store <2 x i32> %i.u, ptr %.015.i.i, align 4, !tbaa !254
  store i32 0, ptr %i.t, align 4, !tbaa !254
  %i.w = add i32 %i.v, 2
  store i32 %i.w, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.x, %2
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !4912

.loopexit:                                        ; preds = %.lr.ph.i.i, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS6_m.exit
  %.0.lcssa.i.i = phi ptr [ %i.i, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS6_m.exit ], [ %i.y, %.lr.ph.i.i ]
  %i.z = ptrtoint ptr %.0.lcssa.i.i to i64
  %i.aa = ptrtoint ptr %i.i to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 3
  store i64 %i.ac, ptr %i.s, align 8, !tbaa !251
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.ad = load ptr, ptr %0, align 8, !tbaa !250   ; 13 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !259 ; 13 uses
  %i.ag = icmp ult i64 %i.af, %i.d
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.not4.i.i = icmp eq i64 %i.af, 0
  br i1 %.not4.i.i, label %_ZN5boost9container18copy_n_source_destINS_13move_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES5_EEES7_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SB_E4typeESB_mRSC_.exit.i, label %.lr.ph.i.i22.preheader

.lr.ph.i.i22.preheader:                           ; preds = %bb.h
  %min.iters.check55 = icmp ult i64 %i.af, 6
  br i1 %min.iters.check55, label %.lr.ph.i.i22.preheader72, label %vector.memcheck48

vector.memcheck48:                                ; preds = %.lr.ph.i.i22.preheader
  %i.ah = shl i64 %i.af, 3                        ; 2 uses
  %scevgep49 = getelementptr i8, ptr %i.ad, i64 %i.ah
  %scevgep50 = getelementptr i8, ptr %1, i64 %i.ah
  %bound051 = icmp ult ptr %i.ad, %scevgep50
  %bound152 = icmp ult ptr %1, %scevgep49
  %found.conflict53 = and i1 %bound051, %bound152
  br i1 %found.conflict53, label %.lr.ph.i.i22.preheader72, label %vector.ph56

vector.ph56:                                      ; preds = %vector.memcheck48
  %n.vec57 = and i64 %i.af, -2                    ; 3 uses
  %i.ai = shl i64 %n.vec57, 3                     ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ad, i64 %i.ai  ; 2 uses
  %i.ak = and i64 %i.af, 1
  %i.al = getelementptr i8, ptr %1, i64 %i.ai     ; 2 uses
  br label %vector.body58

vector.body58:                                    ; preds = %vector.body58, %vector.ph56
  %index59 = phi i64 [ 0, %vector.ph56 ], [ %index.next66, %vector.body58 ] ; 2 uses
  %i.am = shl i64 %index59, 3                     ; 2 uses
  %next.gep60 = getelementptr i8, ptr %i.ad, i64 %i.am
  %next.gep61 = getelementptr i8, ptr %1, i64 %i.am ; 2 uses
  %wide.vec62 = load <4 x i32>, ptr %next.gep61, align 4, !tbaa !254, !alias.scope !4924
  store <4 x i32> %wide.vec62, ptr %next.gep60, align 4, !tbaa !254, !alias.scope !4925, !noalias !4924
  store <4 x i32> zeroinitializer, ptr %next.gep61, align 4, !tbaa !254, !alias.scope !4924
  %index.next66 = add nuw i64 %index59, 2         ; 2 uses
  %i.an = icmp eq i64 %index.next66, %n.vec57
  br i1 %i.an, label %middle.block67, label %vector.body58, !llvm.loop !4916

middle.block67:                                   ; preds = %vector.body58
  %cmp.n68 = icmp eq i64 %i.af, %n.vec57
  br i1 %cmp.n68, label %_ZN5boost9container18copy_n_source_destINS_13move_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES5_EEES7_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SB_E4typeESB_mRSC_.exit.i, label %.lr.ph.i.i22.preheader72

.lr.ph.i.i22.preheader72:                         ; preds = %vector.memcheck48, %.lr.ph.i.i22.preheader, %middle.block67
  %.ph = phi ptr [ %i.ad, %vector.memcheck48 ], [ %i.ad, %.lr.ph.i.i22.preheader ], [ %i.aj, %middle.block67 ] ; 4 uses
  %.06.i.i.ph = phi i64 [ %i.af, %vector.memcheck48 ], [ %i.af, %.lr.ph.i.i22.preheader ], [ %i.ak, %middle.block67 ] ; 4 uses
  %.sroa.0.05.i.i.ph = phi ptr [ %1, %vector.memcheck48 ], [ %1, %.lr.ph.i.i22.preheader ], [ %i.al, %middle.block67 ] ; 5 uses
  %xtraiter76 = and i64 %.06.i.i.ph, 1
  %lcmp.mod77.not = icmp eq i64 %xtraiter76, 0
  br i1 %lcmp.mod77.not, label %.lr.ph.i.i22.prol.loopexit, label %.lr.ph.i.i22.prol

.lr.ph.i.i22.prol:                                ; preds = %.lr.ph.i.i22.preheader72
  %i.ao = add nsw i64 %.06.i.i.ph, -1
  %i.ap = load i32, ptr %.sroa.0.05.i.i.ph, align 4, !tbaa !254
  store i32 %i.ap, ptr %.ph, align 4, !tbaa !254
  store i32 0, ptr %.sroa.0.05.i.i.ph, align 4, !tbaa !254
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.ph, i64 4 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.ph, i64 4
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !254
  store i32 %i.as, ptr %i.ar, align 4, !tbaa !254
  store i32 0, ptr %i.aq, align 4, !tbaa !254
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.ph, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.ph, i64 8 ; 2 uses
  br label %.lr.ph.i.i22.prol.loopexit

.lr.ph.i.i22.prol.loopexit:                       ; preds = %.lr.ph.i.i22.prol, %.lr.ph.i.i22.preheader72
  %.lcssa74.unr = phi ptr [ poison, %.lr.ph.i.i22.preheader72 ], [ %i.at, %.lr.ph.i.i22.prol ]
  %.lcssa73.unr = phi ptr [ poison, %.lr.ph.i.i22.preheader72 ], [ %i.au, %.lr.ph.i.i22.prol ]
  %.unr = phi ptr [ %.ph, %.lr.ph.i.i22.preheader72 ], [ %i.au, %.lr.ph.i.i22.prol ]
  %.06.i.i.unr = phi i64 [ %.06.i.i.ph, %.lr.ph.i.i22.preheader72 ], [ %i.ao, %.lr.ph.i.i22.prol ]
  %.sroa.0.05.i.i.unr = phi ptr [ %.sroa.0.05.i.i.ph, %.lr.ph.i.i22.preheader72 ], [ %i.at, %.lr.ph.i.i22.prol ]
  %i.av = icmp eq i64 %.06.i.i.ph, 1
  br i1 %i.av, label %_ZN5boost9container18copy_n_source_destINS_13move_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES5_EEES7_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SB_E4typeESB_mRSC_.exit.i, label %.lr.ph.i.i22

.lr.ph.i.i22:                                     ; preds = %.lr.ph.i.i22.prol.loopexit, %.lr.ph.i.i22
  %i.aw = phi ptr [ %i.bj, %.lr.ph.i.i22 ], [ %.unr, %.lr.ph.i.i22.prol.loopexit ] ; 5 uses
  %.06.i.i = phi i64 [ %i.bd, %.lr.ph.i.i22 ], [ %.06.i.i.unr, %.lr.ph.i.i22.prol.loopexit ]
  %.sroa.0.05.i.i = phi ptr [ %i.bi, %.lr.ph.i.i22 ], [ %.sroa.0.05.i.i.unr, %.lr.ph.i.i22.prol.loopexit ] ; 6 uses
  %i.ax = load i32, ptr %.sroa.0.05.i.i, align 4, !tbaa !254
  store i32 %i.ax, ptr %i.aw, align 4, !tbaa !254
  store i32 0, ptr %.sroa.0.05.i.i, align 4, !tbaa !254
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i, i64 4 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.ba = load i32, ptr %i.ay, align 4, !tbaa !254
  store i32 %i.ba, ptr %i.az, align 4, !tbaa !254
  store i32 0, ptr %i.ay, align 4, !tbaa !254
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bd = add i64 %.06.i.i, -2                    ; 2 uses
  %i.be = load i32, ptr %i.bb, align 4, !tbaa !254
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !254
  store i32 0, ptr %i.bb, align 4, !tbaa !254
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i, i64 12 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  %i.bh = load i32, ptr %i.bf, align 4, !tbaa !254
  store i32 %i.bh, ptr %i.bg, align 4, !tbaa !254
  store i32 0, ptr %i.bf, align 4, !tbaa !254
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i, i64 16 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  %.not.i.i23.1 = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i23.1, label %_ZN5boost9container18copy_n_source_destINS_13move_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES5_EEES7_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SB_E4typeESB_mRSC_.exit.i, label %.lr.ph.i.i22, !llvm.loop !4917

_ZN5boost9container18copy_n_source_destINS_13move_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES5_EEES7_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SB_E4typeESB_mRSC_.exit.i: ; preds = %.lr.ph.i.i22.prol.loopexit, %.lr.ph.i.i22, %middle.block67, %bb.h
  %.0.i = phi ptr [ %i.ad, %bb.h ], [ %i.aj, %middle.block67 ], [ %.lcssa73.unr, %.lr.ph.i.i22.prol.loopexit ], [ %i.bj, %.lr.ph.i.i22 ] ; 4 uses
  %.sroa.0.0.lcssa.i.i = phi ptr [ %1, %bb.h ], [ %i.al, %middle.block67 ], [ %.lcssa74.unr, %.lr.ph.i.i22.prol.loopexit ], [ %i.bi, %.lr.ph.i.i22 ] ; 5 uses
  %i.bk = sub i64 %i.d, %i.af                     ; 3 uses
  %.neg = add i64 %i.af, 1
  %xtraiter78 = and i64 %i.bk, 1
  %lcmp.mod79.not = icmp eq i64 %xtraiter78, 0
  br i1 %lcmp.mod79.not, label %.lr.ph.i15.i.prol.loopexit, label %.lr.ph.i15.i.prol

.lr.ph.i15.i.prol:                                ; preds = %_ZN5boost9container18copy_n_source_destINS_13move_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES5_EEES7_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SB_E4typeESB_mRSC_.exit.i
  %i.bl = add nsw i64 %i.bk, -1
  %i.bm = load i32, ptr %.sroa.0.0.lcssa.i.i, align 4, !tbaa !254
  store i32 %i.bm, ptr %.0.i, align 4, !tbaa !254
  store i32 0, ptr %.sroa.0.0.lcssa.i.i, align 4, !tbaa !254
  %i.bn = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i, i64 4 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !254
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !254
  store i32 0, ptr %i.bp, align 4, !tbaa !254
  %i.br = add i32 %i.bn, 2
  store i32 %i.br, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  br label %.lr.ph.i15.i.prol.loopexit

.lr.ph.i15.i.prol.loopexit:                       ; preds = %.lr.ph.i15.i.prol, %_ZN5boost9container18copy_n_source_destINS_13move_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES5_EEES7_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SB_E4typeESB_mRSC_.exit.i
  %.018.i.i.unr = phi i64 [ %i.bk, %_ZN5boost9container18copy_n_source_destINS_13move_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES5_EEES7_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SB_E4typeESB_mRSC_.exit.i ], [ %i.bl, %.lr.ph.i15.i.prol ]
  %.01417.i.i.unr = phi ptr [ %.0.i, %_ZN5boost9container18copy_n_source_destINS_13move_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES5_EEES7_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SB_E4typeESB_mRSC_.exit.i ], [ %i.bt, %.lr.ph.i15.i.prol ]
  %.sroa.0.016.i.i.unr = phi ptr [ %.sroa.0.0.lcssa.i.i, %_ZN5boost9container18copy_n_source_destINS_13move_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES5_EEES7_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SB_E4typeESB_mRSC_.exit.i ], [ %i.bs, %.lr.ph.i15.i.prol ]
  %i.bu = icmp eq i64 %i.d, %.neg
  br i1 %i.bu, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEENS_13move_iteratorIPS6_EESA_EEvRT_T0_mT1_m.exit, label %.lr.ph.i15.i

.lr.ph.i15.i:                                     ; preds = %.lr.ph.i15.i.prol.loopexit, %.lr.ph.i15.i
  %.018.i.i = phi i64 [ %i.cd, %.lr.ph.i15.i ], [ %.018.i.i.unr, %.lr.ph.i15.i.prol.loopexit ]
  %.01417.i.i = phi ptr [ %i.cl, %.lr.ph.i15.i ], [ %.01417.i.i.unr, %.lr.ph.i15.i.prol.loopexit ] ; 5 uses
  %.sroa.0.016.i.i = phi ptr [ %i.ck, %.lr.ph.i15.i ], [ %.sroa.0.016.i.i.unr, %.lr.ph.i15.i.prol.loopexit ] ; 6 uses
  %i.bv = load i32, ptr %.sroa.0.016.i.i, align 4, !tbaa !254
  store i32 %i.bv, ptr %.01417.i.i, align 4, !tbaa !254
  store i32 0, ptr %.sroa.0.016.i.i, align 4, !tbaa !254
  %i.bw = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.bx = getelementptr inbounds nuw i8, ptr %.01417.i.i, i64 4
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i, i64 4 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !254
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !254
  store i32 0, ptr %i.by, align 4, !tbaa !254
  %i.ca = add i32 %i.bw, 2
  store i32 %i.ca, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i, i64 8 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.01417.i.i, i64 8
  %i.cd = add i64 %.018.i.i, -2                   ; 2 uses
  %i.ce = load i32, ptr %i.cb, align 4, !tbaa !254
  store i32 %i.ce, ptr %i.cc, align 4, !tbaa !254
  store i32 0, ptr %i.cb, align 4, !tbaa !254
  %i.cf = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.cg = getelementptr inbounds nuw i8, ptr %.01417.i.i, i64 12
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i, i64 12 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !254
end_hunk_3
begin_hunk_4_@_ZN5boost9container13stable_vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_9allocatorIS5_Lj2ELj0EEEE33priv_insert_forward_non_templatedEmm:bb.a
  %.not.i.i.i10.i = icmp ult i64 %i.h, 3
  br i1 %.not.i.i.i10.i, label %bb.f, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS8_EEvRS9_T_m.exit.sink.split.i.i.i.i.i.i, !prof !225

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %.pre.i, 3
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_9allocatorIS6_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS8_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i.i, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS8_EEvRS9_T_m.exit.sink.split.i.i.i.i.i.i, !prof !361

_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS8_EEvRS9_T_m.exit.sink.split.i.i.i.i.i.i: ; preds = %bb.e, %.thread.i
  %i.q = phi ptr [ %i.l, %bb.e ], [ %i.p, %.thread.i ]
  %i.r = phi i64 [ %i.m, %bb.e ], [ 3, %.thread.i ] ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.q, i8 0, i64 %i.s, i1 false), !noalias !5103
  %.pre.i.i.i.i.i = load i64, ptr %i.d, align 8, !tbaa !299, !noalias !5103
  %i.t = add i64 %.pre.i.i.i.i.i, %i.r
  br label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_9allocatorIS6_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS8_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i.i

_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_9allocatorIS6_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS8_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i.i: ; preds = %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS8_EEvRS9_T_m.exit.sink.split.i.i.i.i.i.i, %bb.e
  %i.u = phi i64 [ 3, %bb.e ], [ %i.t, %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS8_EEvRS9_T_m.exit.sink.split.i.i.i.i.i.i ]
  store i64 %i.u, ptr %i.d, align 8, !tbaa !299, !noalias !5103
  br label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_9allocatorIS6_Lj2ELj0EEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS8_EEEENS0_12vec_iteratorIPS6_Lb0EEERKSF_mT_.exit.i.i.i

bb.f:                                             ; preds = %.thread.i, %bb.d
  %i.v = phi i64 [ 3, %.thread.i ], [ %i.m, %bb.d ]
  %i.w = phi ptr [ %i.p, %.thread.i ], [ %i.l, %bb.d ]
  call void @_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_9allocatorIS6_Lj2ELj0EEEvE37priv_insert_forward_range_no_capacityINS0_3dtl32insert_value_initialized_n_proxyIS8_EEEENS0_12vec_iteratorIPS6_Lb0EEESF_mT_NS_11move_detail17integral_constantIjLj2EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.108") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef %i.w, i64 noundef %i.v)
  br label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_9allocatorIS6_Lj2ELj0EEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS8_EEEENS0_12vec_iteratorIPS6_Lb0EEERKSF_mT_.exit.i.i.i

_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_9allocatorIS6_Lj2ELj0EEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS8_EEEENS0_12vec_iteratorIPS6_Lb0EEERKSF_mT_.exit.i.i.i: ; preds = %bb.f, %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_9allocatorIS6_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS8_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_9allocatorIS6_Lj2ELj0EEEvE6resizeEm.exit.i

_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_9allocatorIS6_Lj2ELj0EEEvE6resizeEm.exit.i: ; preds = %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_9allocatorIS6_Lj2ELj0EEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS8_EEEENS0_12vec_iteratorIPS6_Lb0EEERKSF_mT_.exit.i.i.i, %bb.c
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !286  ; 2 uses
  store ptr %i.c, ptr %i.x, align 8, !tbaa !287
  store ptr %i.x, ptr %i.c, align 8, !tbaa !289
  br label %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_9allocatorIvLj2ELj0EEEE19initialize_end_nodeERNS0_6vectorIPNS1_9node_baseIS3_EENS4_ISA_Lj2ELj0EEEvEERS9_m.exit

_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_9allocatorIvLj2ELj0EEEE19initialize_end_nodeERNS0_6vectorIPNS1_9node_baseIS3_EENS4_ISA_Lj2ELj0EEEvEERS9_m.exit: ; preds = %bb.a, %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_9allocatorIS6_Lj2ELj0EEEvE6resizeEm.exit.i
  %i.y = load i64, ptr %1, align 8, !tbaa !295    ; 2 uses
  %i.z = icmp ult i64 %i.y, %3
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_9allocatorIvLj2ELj0EEEE19initialize_end_nodeERNS0_6vectorIPNS1_9node_baseIS3_EENS4_ISA_Lj2ELj0EEEvEERS9_m.exit
  %i.aa = sub nuw i64 %3, %i.y
  call void @_ZN5boost9container13stable_vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_9allocatorIS5_Lj2ELj0EEEE18priv_increase_poolEm(ptr noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %i.aa)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_9allocatorIvLj2ELj0EEEE19initialize_end_nodeERNS0_6vectorIPNS1_9node_baseIS3_EENS4_ISA_Lj2ELj0EEEvEERS9_m.exit
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !286 ; 5 uses
  %.idx20 = shl i64 %2, 3                         ; 6 uses
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 %.idx20 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store ptr null, ptr %i.a, align 8, !tbaa !287
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !360, !noalias !5104
  %i.af = load i64, ptr %i.d, align 8, !tbaa !285, !noalias !5104 ; 3 uses
  %i.ag = sub i64 %i.ae, %i.af
  %.not.i.i10 = icmp ugt i64 %3, %i.ag
  br i1 %.not.i.i10, label %bb.r, label %bb.i, !prof !225

bb.i:                                             ; preds = %bb.h
  %.idx = shl i64 %i.af, 3                        ; 4 uses
  %i.ah = getelementptr i8, ptr %i.ab, i64 %.idx  ; 7 uses
  %i.ai = icmp eq i64 %i.af, %2
  %.not15.i.i.i.i.i.i = icmp eq i64 %3, 0         ; 2 uses
  br i1 %i.ai, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  br i1 %.not15.i.i.i.i.i.i, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_9allocatorIS6_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS8_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.j
  %i.aj = shl nuw i64 %3, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ah, i8 0, i64 %i.aj, i1 false), !tbaa !287, !noalias !5104
  br label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_9allocatorIS6_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS8_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i

bb.k:                                             ; preds = %bb.i
  br i1 %.not15.i.i.i.i.i.i, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_9allocatorIS6_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS8_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %bb.l, !prof !225

bb.l:                                             ; preds = %bb.k
  %gepdiff = sub nsw i64 %.idx, %.idx20           ; 2 uses
  %i.ak = ashr exact i64 %gepdiff, 3              ; 7 uses
  %.not.i.i.i.i.i = icmp ult i64 %i.ak, %3
  br i1 %.not.i.i.i.i.i, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.neg = mul i64 %3, -8                          ; 3 uses
  %.not13.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not13.i.i.i.i, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_mSD_.exit.i.i.i.i.i, label %bb.n, !prof !272

bb.n:                                             ; preds = %bb.m
  %i.al = getelementptr inbounds i8, ptr %i.ah, i64 %.neg
  %i.am = shl i64 %3, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ah, ptr nonnull align 1 %i.al, i64 %i.am, i1 false), !noalias !5104
  br label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_mSD_.exit.i.i.i.i.i

_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_mSD_.exit.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %i.an = add nsw i64 %.idx, %.neg
  %.not.i.i10.i.i.i.i = icmp eq i64 %i.an, %.idx20
  br i1 %.not.i.i10.i.i.i.i, label %.lr.ph.i.i11.i.i.i.i, label %bb.o, !prof !225

bb.o:                                             ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_mSD_.exit.i.i.i.i.i
  %i.ao = sub i64 %.neg, %.idx20
  %gepdiff22 = add i64 %i.ao, %.idx               ; 2 uses
  %i.ap = ashr exact i64 %gepdiff22, 3
  %i.aq = sub nsw i64 0, %i.ap
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.aq
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ar, ptr align 8 %i.ac, i64 %gepdiff22, i1 false), !noalias !5104
  br label %.lr.ph.i.i11.i.i.i.i

.lr.ph.i.i11.i.i.i.i:                             ; preds = %bb.o, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_mSD_.exit.i.i.i.i.i
  %min.iters.check = icmp ult i64 %3, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i11.i.i.i.i
  %n.vec = and i64 %3, -4                         ; 3 uses
  %i.as = and i64 %3, 3
  %i.at = shl i64 %n.vec, 3
  %i.au = getelementptr i8, ptr %i.ac, i64 %i.at
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.ac, i64 %i.av ; 2 uses
  %i.aw = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep, align 8, !tbaa !287, !noalias !5104
  store <2 x ptr> splat (ptr null), ptr %i.aw, align 8, !tbaa !287, !noalias !5104
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !5096

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_9allocatorIS6_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS8_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i11.i.i.i.i, %middle.block
  %.07.i.i.i.i.i.i.ph = phi i64 [ %3, %.lr.ph.i.i11.i.i.i.i ], [ %i.as, %middle.block ]
  %.046.i.i.i.i.i.i.ph = phi ptr [ %i.ac, %.lr.ph.i.i11.i.i.i.i ], [ %i.au, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.07.i.i.i.i.i.i = phi i64 [ %i.ay, %scalar.ph ], [ %.07.i.i.i.i.i.i.ph, %scalar.ph.preheader ]
  %.046.i.i.i.i.i.i = phi ptr [ %i.az, %scalar.ph ], [ %.046.i.i.i.i.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ay = add i64 %.07.i.i.i.i.i.i, -1            ; 2 uses
  store ptr null, ptr %.046.i.i.i.i.i.i, align 8, !tbaa !287, !noalias !5104
  %i.az = getelementptr inbounds nuw i8, ptr %.046.i.i.i.i.i.i, i64 8
  %.not.i35.i.i.i.i.i = icmp eq i64 %i.ay, 0
  br i1 %.not.i35.i.i.i.i.i, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_9allocatorIS6_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS8_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %scalar.ph, !llvm.loop !5097

bb.p:                                             ; preds = %bb.l
  %.not14.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not14.i.i.i.i, label %.lr.ph.i39.i.i.i.i.i, label %bb.q, !prof !225

bb.q:                                             ; preds = %bb.p
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ba, ptr nonnull align 8 %i.ac, i64 %gepdiff, i1 false), !noalias !5104
  br label %.lr.ph.i39.i.i.i.i.i

.lr.ph.i39.i.i.i.i.i:                             ; preds = %bb.q, %bb.p
  %min.iters.check39 = icmp ult i64 %i.ak, 4
  br i1 %min.iters.check39, label %scalar.ph38.preheader, label %vector.ph40

vector.ph40:                                      ; preds = %.lr.ph.i39.i.i.i.i.i
  %n.vec41 = and i64 %i.ak, -4                    ; 3 uses
  %i.bb = and i64 %i.ak, 3
  %i.bc = shl nsw i64 %n.vec41, 3
  %i.bd = getelementptr i8, ptr %i.ac, i64 %i.bc
  br label %vector.body42

vector.body42:                                    ; preds = %vector.body42, %vector.ph40
  %index43 = phi i64 [ 0, %vector.ph40 ], [ %index.next45, %vector.body42 ] ; 2 uses
  %i.be = shl i64 %index43, 3
  %next.gep44 = getelementptr i8, ptr %i.ac, i64 %i.be ; 2 uses
  %i.bf = getelementptr i8, ptr %next.gep44, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep44, align 8, !tbaa !287, !noalias !5104
  store <2 x ptr> splat (ptr null), ptr %i.bf, align 8, !tbaa !287, !noalias !5104
  %index.next45 = add nuw i64 %index43, 4         ; 2 uses
  %i.bg = icmp eq i64 %index.next45, %n.vec41
  br i1 %i.bg, label %middle.block46, label %vector.body42, !llvm.loop !5098

middle.block46:                                   ; preds = %vector.body42
  %cmp.n47 = icmp eq i64 %i.ak, %n.vec41
  br i1 %cmp.n47, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit44.i.i.i.i.i, label %scalar.ph38.preheader

scalar.ph38.preheader:                            ; preds = %.lr.ph.i39.i.i.i.i.i, %middle.block46
  %.07.i41.i.i.i.i.i.ph = phi i64 [ %i.ak, %.lr.ph.i39.i.i.i.i.i ], [ %i.bb, %middle.block46 ]
  %.046.i42.i.i.i.i.i.ph = phi ptr [ %i.ac, %.lr.ph.i39.i.i.i.i.i ], [ %i.bd, %middle.block46 ]
  br label %scalar.ph38

scalar.ph38:                                      ; preds = %scalar.ph38.preheader, %scalar.ph38
  %.07.i41.i.i.i.i.i = phi i64 [ %i.bh, %scalar.ph38 ], [ %.07.i41.i.i.i.i.i.ph, %scalar.ph38.preheader ]
  %.046.i42.i.i.i.i.i = phi ptr [ %i.bi, %scalar.ph38 ], [ %.046.i42.i.i.i.i.i.ph, %scalar.ph38.preheader ] ; 2 uses
  %i.bh = add i64 %.07.i41.i.i.i.i.i, -1          ; 2 uses
  store ptr null, ptr %.046.i42.i.i.i.i.i, align 8, !tbaa !287, !noalias !5104
  %i.bi = getelementptr inbounds nuw i8, ptr %.046.i42.i.i.i.i.i, i64 8
  %.not.i43.i.i.i.i.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i43.i.i.i.i.i, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit44.i.i.i.i.i, label %scalar.ph38, !llvm.loop !5099

_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit44.i.i.i.i.i: ; preds = %scalar.ph38, %middle.block46
  %i.bj = sub nuw i64 %3, %i.ak                   ; 6 uses
  %.not15.i.i.i.i.i.i.i = icmp eq i64 %i.bj, 0
  br i1 %.not15.i.i.i.i.i.i.i, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_9allocatorIS6_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS8_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit44.i.i.i.i.i
  %min.iters.check52 = icmp ult i64 %i.bj, 4
  br i1 %min.iters.check52, label %.lr.ph.i.i.i.i.i.i.i.preheader.a, label %vector.ph52

vector.ph52:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec53 = and i64 %i.bj, -4                    ; 3 uses
  %i.bk = and i64 %i.bj, 3
  %i.bl = shl i64 %n.vec53, 3
  %i.bm = getelementptr i8, ptr %i.ah, i64 %i.bl
  br label %vector.body54

vector.body54:                                    ; preds = %vector.body54, %vector.ph52
  %index55 = phi i64 [ 0, %vector.ph52 ], [ %index.next60, %vector.body54 ] ; 2 uses
  %i.bn = shl i64 %index55, 3
  %next.gep56 = getelementptr i8, ptr %i.ah, i64 %i.bn ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep56) ]
  %i.bo = getelementptr i8, ptr %next.gep56, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep56, align 8, !tbaa !287, !noalias !5104
  store <2 x ptr> splat (ptr null), ptr %i.bo, align 8, !tbaa !287, !noalias !5104
  %index.next60 = add nuw i64 %index55, 4         ; 2 uses
  %i.bp = icmp eq i64 %index.next60, %n.vec53
  br i1 %i.bp, label %middle.block61, label %vector.body54, !llvm.loop !5100

middle.block61:                                   ; preds = %vector.body54
  %cmp.n62 = icmp eq i64 %i.bj, %n.vec53
  br i1 %cmp.n62, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_9allocatorIS6_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS8_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader.a

.lr.ph.i.i.i.i.i.i.i.preheader.a:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block61
  %.017.i.i.i.i.i.i.i.ph = phi i64 [ %i.bj, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bk, %middle.block61 ]
  %.01416.i.i.i.i.i.i.i.ph = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bm, %middle.block61 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader.a, %.lr.ph.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i = phi i64 [ %i.bq, %.lr.ph.i.i.i.i.i.i.i ], [ %.017.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader.a ]
  %.01416.i.i.i.i.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i.i.i.i.i.i ], [ %.01416.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader.a ] ; 3 uses
  %i.bq = add i64 %.017.i.i.i.i.i.i.i, -1         ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i.i.i.i) ]
  store ptr null, ptr %.01416.i.i.i.i.i.i.i, align 8, !tbaa !287, !noalias !5104
  %i.br = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.i.i, i64 8
  %.not.i.i45.i.i.i.i.i = icmp eq i64 %i.bq, 0
  br i1 %.not.i.i45.i.i.i.i.i, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_9allocatorIS6_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS8_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !5101

_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_9allocatorIS6_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS8_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i: ; preds = %scalar.ph, %.lr.ph.i.i.i.i.i.i.i, %middle.block, %middle.block61, %.lr.ph.i.i.i.i.i.i.preheader, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit44.i.i.i.i.i, %bb.k, %bb.j
  %i.bs = load i64, ptr %i.d, align 8, !tbaa !299, !noalias !5104
  %i.bt = add i64 %i.bs, %3
  store i64 %i.bt, ptr %i.d, align 8, !tbaa !299, !noalias !5104
  br label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_9allocatorIS6_Lj2ELj0EEEvE6insertENS0_12vec_iteratorIPS6_Lb1EEEmRKS6_.exit

bb.r:                                             ; preds = %bb.h
  call void @_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_9allocatorIS6_Lj2ELj0EEEvE37priv_insert_forward_range_no_capacityINS0_3dtl21insert_n_copies_proxyIS8_EEEENS0_12vec_iteratorIPS6_Lb0EEESF_mT_NS_11move_detail17integral_constantIjLj2EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.108") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef %i.ac, i64 noundef %3, ptr nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_9allocatorIS6_Lj2ELj0EEEvE6insertENS0_12vec_iteratorIPS6_Lb1EEEmRKS6_.exit

_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_9allocatorIS6_Lj2ELj0EEEvE6insertENS0_12vec_iteratorIPS6_Lb1EEEmRKS6_.exit: ; preds = %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_9allocatorIS6_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS8_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.bu = load ptr, ptr %i.b, align 8, !tbaa !286 ; 5 uses
  %.not = icmp eq ptr %i.bu, %i.ab
  br i1 %.not, label %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_9allocatorIvLj2ELj0EEEE15fix_up_pointersENS0_12vec_iteratorIPPNS1_9node_baseIS3_EELb0EEESC_.exit, label %bb.s

bb.s:                                             ; preds = %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_9allocatorIS6_Lj2ELj0EEEvE6insertENS0_12vec_iteratorIPS6_Lb1EEEmRKS6_.exit
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 %.idx20
  %.not2.i = icmp eq i64 %2, 0
  br i1 %.not2.i, label %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_9allocatorIvLj2ELj0EEEE15fix_up_pointersENS0_12vec_iteratorIPPNS1_9node_baseIS3_EELb0EEESC_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.s
  %i.bw = add i64 %.idx20, -8                     ; 2 uses
  %i.bx = lshr exact i64 %i.bw, 3
  %i.by = add nuw nsw i64 %i.bx, 1
  %xtraiter = and i64 %i.by, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %i.bz = phi ptr [ %i.cb, %.lr.ph.i.prol ], [ %i.bu, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !287
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !289
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !5102

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.unr = phi ptr [ %i.bu, %.lr.ph.i.preheader ], [ %i.cb, %.lr.ph.i.prol ]
  %i.cc = icmp ult i64 %i.bw, 56
  br i1 %i.cc, label %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_9allocatorIvLj2ELj0EEEE15fix_up_pointersENS0_12vec_iteratorIPPNS1_9node_baseIS3_EELb0EEESC_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.cd = phi ptr [ %i.ct, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 10 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !287
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !289
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !287
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !289
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 16 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !287
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !289
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 24 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !287
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !289
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cd, i64 32 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !287
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !289
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cd, i64 40 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !287
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !289
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cd, i64 48 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !287
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !289
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cd, i64 56 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !287
  store ptr %i.cr, ptr %i.cs, align 8, !tbaa !289
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cd, i64 64 ; 2 uses
  %.not.i.7 = icmp eq ptr %i.ct, %i.bv
  br i1 %.not.i.7, label %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_9allocatorIvLj2ELj0EEEE15fix_up_pointersENS0_12vec_iteratorIPPNS1_9node_baseIS3_EELb0EEESC_.exit, label %.lr.ph.i, !llvm.loop !15

_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_9allocatorIvLj2ELj0EEEE15fix_up_pointersENS0_12vec_iteratorIPPNS1_9node_baseIS3_EELb0EEESC_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.s, %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_9allocatorIS6_Lj2ELj0EEEvE6insertENS0_12vec_iteratorIPS6_Lb1EEEmRKS6_.exit
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %2
  store ptr %i.cu, ptr %0, align 8, !tbaa !359
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container13stable_vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_9allocatorIS5_Lj2ELj0EEEE18priv_increase_poolEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %struct.boost_cont_memchain_impl, align 8 ; 7 uses
  %3 = alloca %"class.boost::container::dtl::transform_multiallocation_chain", align 8 ; 6 uses
  %4 = alloca %"class.boost::container::dtl::transform_multiallocation_chain", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !286, !noalias !5113
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !285, !noalias !5113
  %i.e = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -16 ; 2 uses
  %i.g = getelementptr i8, ptr %i.e, i64 -8       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 16, i1 false)
  store ptr %i.h, ptr %i.i, align 8, !tbaa !364
  %i.j = load i64, ptr %0, align 8, !tbaa !295    ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i.i, label %.noexc, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !287
  %i.l = load <2 x ptr>, ptr %i.f, align 8, !tbaa !287
  store <2 x ptr> %i.l, ptr %i.h, align 8, !tbaa !5114
  store ptr null, ptr %i.k, align 8, !tbaa !298
  store i64 %i.j, ptr %3, align 8, !tbaa !366
  br label %.noexc

.noexc:                                           ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 16, i1 false)
  store ptr %i.m, ptr %i.n, align 8, !tbaa !364
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store ptr null, ptr %i.o, align 8, !tbaa !370
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !371
  store i64 0, ptr %2, align 8, !tbaa !372
  %i.q = call noundef i32 @_ZN5boost9container25dlmalloc_multialloc_nodesEmmmP24boost_cont_memchain_impl(i64 noundef %1, i64 noundef 16, i64 noundef 0, ptr noundef nonnull %2)
  %.not.i.i.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.i.i, label %.noexc15, label %bb.c

.noexc15:                                         ; preds = %.noexc
  call void @_ZN5boost9container15throw_bad_allocEv() #25
  unreachable

bb.c:                                             ; preds = %.noexc
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !370
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !371  ; 2 uses
  %i.t = load i64, ptr %2, align 8, !tbaa !372
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !364
  %i.v = icmp eq ptr %i.m, %i.u
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr %i.s, ptr %i.n, align 8, !tbaa !364
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.w = load ptr, ptr %i.m, align 8, !tbaa !298
  store ptr %i.r, ptr %i.m, align 8, !tbaa !298
  store ptr %i.w, ptr %i.s, align 8, !tbaa !298
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.x = load ptr, ptr %i.n, align 8, !tbaa !364, !noalias !5115 ; 4 uses
  %.not.i.i.i.i16 = icmp eq ptr %i.m, %i.x
  br i1 %.not.i.i.i.i16, label %._crit_edge, label %bb.h

._crit_edge:                                      ; preds = %bb.g
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !298
  br label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %i.i, align 8, !tbaa !364
  %i.z = icmp eq ptr %i.h, %i.y
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr %i.x, ptr %i.i, align 8, !tbaa !364
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.not17.i.i.i.i.i = icmp eq ptr %i.h, %i.x
  %.pre24 = load ptr, ptr %i.h, align 8, !tbaa !298 ; 2 uses
  br i1 %.not17.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = load ptr, ptr %i.m, align 8, !tbaa !298
  store ptr %.pre24, ptr %i.x, align 8, !tbaa !298
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.k, %bb.j
  %i.ab = phi ptr [ %.pre, %._crit_edge ], [ %i.aa, %bb.k ], [ %.pre24, %bb.j ] ; 2 uses
  %i.ac = load i64, ptr %0, align 8, !tbaa !295
  %i.ad = add i64 %i.ac, %1
  store i64 %i.ad, ptr %0, align 8, !tbaa !295
  %.not.i.i.i.i17 = icmp eq ptr %i.ab, null
  %i.ae = load ptr, ptr %i.i, align 8
  %spec.select = select i1 %.not.i.i.i.i17, ptr null, ptr %i.ae, !prof !225
  store ptr %i.ab, ptr %i.f, align 8, !tbaa !287
  store ptr %spec.select, ptr %i.g, align 8, !tbaa !287
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_9allocatorIS6_Lj2ELj0EEEvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj2EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = icmp ugt i64 %1, 1152921504606846975
end_hunk_4
begin_hunk_5_@_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_9allocatorIS6_Lj2ELj0EEEvE37priv_insert_forward_range_no_capacityINS0_3dtl21insert_n_copies_proxyIS8_EEEENS0_12vec_iteratorIPS6_Lb0EEESF_mT_NS_11move_detail17integral_constantIjLj2EEE:bb.a

_ZNK5boost9container19vector_alloc_holderINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEmNS_11move_detail17integral_constantIjLj2EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.l, %bb.d ], [ %spec.select.i.i, %bb.e ]
  %i.o = add i64 %i.g, %3                         ; 3 uses
  %i.p = icmp ugt i64 %i.o, 1152921504606846975
  br i1 %i.p, label %_ZN5boost9container9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EE23priv_allocation_commandEjmRmRPS6_.exit.i.i.i.thread, label %_ZN5boost9container9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EE23priv_allocation_commandEjmRmRPS6_.exit.i.i.i

_ZN5boost9container9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EE23priv_allocation_commandEjmRmRPS6_.exit.i.i.i: ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEmNS_11move_detail17integral_constantIjLj2EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  %i.q = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 1152921504606846975)
  %i.r = tail call noundef i64 @llvm.umax.i64(i64 %i.o, i64 %i.q)
  %i.s = shl nuw nsw i64 %i.o, 3
  %i.t = shl nuw nsw i64 %i.r, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.u = call { ptr, i32 } @_ZN5boost9container27dlmalloc_allocation_commandEjmmmmPmPv(i32 noundef 7, i64 noundef 8, i64 noundef 8, i64 noundef %i.s, i64 noundef %i.t, ptr noundef nonnull %i.a, ptr noundef %i.b) ; 2 uses
  %i.v = extractvalue { ptr, i32 } %i.u, 0        ; 10 uses
  %i.w = load i64, ptr %i.a, align 8, !tbaa !226
  %i.x = lshr i64 %i.w, 3                         ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %.not.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i, label %_ZN5boost9container9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EE23priv_allocation_commandEjmRmRPS6_.exit.i.i.i.thread, label %_ZN5boost9container19vector_alloc_holderINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEmNS_11move_detail17integral_constantIjLj2EEEE18allocation_commandEjmRmRPS7_.exit

_ZN5boost9container9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EE23priv_allocation_commandEjmRmRPS6_.exit.i.i.i.thread: ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEmNS_11move_detail17integral_constantIjLj2EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit, %_ZN5boost9container9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EE23priv_allocation_commandEjmRmRPS6_.exit.i.i.i
  call void @_ZN5boost9container15throw_bad_allocEv() #25
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEmNS_11move_detail17integral_constantIjLj2EEEE18allocation_commandEjmRmRPS7_.exit: ; preds = %_ZN5boost9container9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EE23priv_allocation_commandEjmRmRPS6_.exit.i.i.i
  %i.y = extractvalue { ptr, i32 } %i.u, 1
  %.not.i.i.i.i = icmp eq i32 %i.y, 0
  %.not36 = icmp eq ptr %i.b, null
  %.not = select i1 %.not.i.i.i.i, i1 true, i1 %.not36
  %i.z = load ptr, ptr %1, align 8, !tbaa !286    ; 11 uses
  br i1 %.not, label %bb.q, label %bb.f

bb.f:                                             ; preds = %_ZN5boost9container19vector_alloc_holderINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEmNS_11move_detail17integral_constantIjLj2EEEE18allocation_commandEjmRmRPS7_.exit
  %i.aa = icmp eq ptr %i.z, %i.v
  br i1 %i.aa, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  store i64 %i.x, ptr %i.c, align 8, !tbaa !226
  %i.ab = load i64, ptr %i.f, align 8, !tbaa !285
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ab ; 11 uses
  %i.ad = icmp eq ptr %i.ac, %2
  %.not15.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.ad, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_9allocatorIS6_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS8_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.h
  %.pre.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !287 ; 2 uses
  %min.iters.check92 = icmp ult i64 %3, 4
  br i1 %min.iters.check92, label %.lr.ph.i.i.i.i.preheader, label %vector.ph93

vector.ph93:                                      ; preds = %.lr.ph.preheader.i.i.i.i
  %n.vec94 = and i64 %3, -4                       ; 3 uses
  %i.ae = and i64 %3, 3
  %i.af = shl i64 %n.vec94, 3
  %i.ag = getelementptr i8, ptr %i.ac, i64 %i.af
  %broadcast.splatinsert95 = insertelement <2 x ptr> poison, ptr %.pre.i.i.i.i, i64 0
  %broadcast.splat96 = shufflevector <2 x ptr> %broadcast.splatinsert95, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body97

vector.body97:                                    ; preds = %vector.body97, %vector.ph93
  %index98 = phi i64 [ 0, %vector.ph93 ], [ %index.next103, %vector.body97 ] ; 2 uses
  %i.ah = shl i64 %index98, 3
  %next.gep99 = getelementptr i8, ptr %i.ac, i64 %i.ah ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep99) ]
  %i.ai = getelementptr i8, ptr %next.gep99, i64 16
  store <2 x ptr> %broadcast.splat96, ptr %next.gep99, align 8, !tbaa !287
  store <2 x ptr> %broadcast.splat96, ptr %i.ai, align 8, !tbaa !287
  %index.next103 = add nuw i64 %index98, 4        ; 2 uses
  %i.aj = icmp eq i64 %index.next103, %n.vec94
  br i1 %i.aj, label %middle.block104, label %vector.body97, !llvm.loop !5116

middle.block104:                                  ; preds = %vector.body97
  %cmp.n105 = icmp eq i64 %3, %n.vec94
  br i1 %cmp.n105, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_9allocatorIS6_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS8_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.lr.ph.preheader.i.i.i.i, %middle.block104
  %.017.i.i.i.i.ph = phi i64 [ %3, %.lr.ph.preheader.i.i.i.i ], [ %i.ae, %middle.block104 ]
  %.01416.i.i.i.i.ph = phi ptr [ %i.ac, %.lr.ph.preheader.i.i.i.i ], [ %i.ag, %middle.block104 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.017.i.i.i.i = phi i64 [ %i.ak, %.lr.ph.i.i.i.i ], [ %.017.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ]
  %.01416.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i ], [ %.01416.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %i.ak = add i64 %.017.i.i.i.i, -1               ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i) ]
  store ptr %.pre.i.i.i.i, ptr %.01416.i.i.i.i, align 8, !tbaa !287
  %i.al = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 8
  %.not.i.i.i.i17 = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i.i17, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_9allocatorIS6_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS8_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !5117

bb.i:                                             ; preds = %bb.g
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_9allocatorIS6_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS8_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.j, !prof !225

bb.j:                                             ; preds = %bb.i
  %i.am = ptrtoint ptr %i.ac to i64
  %i.an = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.ao = sub i64 %i.am, %i.an                    ; 2 uses
  %i.ap = ashr exact i64 %i.ao, 3                 ; 7 uses
  %.not.i.i.i16 = icmp ult i64 %i.ap, %3
  br i1 %.not.i.i.i16, label %bb.l, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_mSD_.exit.i.i.i

_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_mSD_.exit.i.i.i: ; preds = %bb.j
  %i.aq = sub i64 0, %3
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.aq ; 3 uses
  %i.as = shl i64 %3, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr nonnull align 1 %i.ar, i64 %i.as, i1 false)
  %.not.i.i10.i.i = icmp eq ptr %i.ar, %2
  br i1 %.not.i.i10.i.i, label %.lr.ph.i.i11.i.i, label %bb.k, !prof !225

bb.k:                                             ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_mSD_.exit.i.i.i
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.at, %i.an                    ; 2 uses
  %i.av = ashr exact i64 %i.au, 3
  %i.aw = sub nsw i64 0, %i.av
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.aw
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ax, ptr align 8 %2, i64 %i.au, i1 false)
  br label %.lr.ph.i.i11.i.i

.lr.ph.i.i11.i.i:                                 ; preds = %bb.k, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_mSD_.exit.i.i.i
  %.pre.i.i12.i.i = load ptr, ptr %4, align 8, !tbaa !287 ; 2 uses
  %min.iters.check = icmp ult i64 %3, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i11.i.i
  %n.vec = and i64 %3, -4                         ; 3 uses
  %i.ay = and i64 %3, 3
  %i.az = shl i64 %n.vec, 3
  %i.ba = getelementptr i8, ptr %2, i64 %i.az
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %.pre.i.i12.i.i, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bb = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %2, i64 %i.bb ; 2 uses
  %i.bc = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %broadcast.splat, ptr %next.gep, align 8, !tbaa !287
  store <2 x ptr> %broadcast.splat, ptr %i.bc, align 8, !tbaa !287
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !5118

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_9allocatorIS6_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS8_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i11.i.i, %middle.block
  %.07.i.i.i.i.ph = phi i64 [ %3, %.lr.ph.i.i11.i.i ], [ %i.ay, %middle.block ]
  %.046.i.i.i.i.ph = phi ptr [ %2, %.lr.ph.i.i11.i.i ], [ %i.ba, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.07.i.i.i.i = phi i64 [ %i.be, %scalar.ph ], [ %.07.i.i.i.i.ph, %scalar.ph.preheader ]
  %.046.i.i.i.i = phi ptr [ %i.bf, %scalar.ph ], [ %.046.i.i.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.be = add i64 %.07.i.i.i.i, -1                ; 2 uses
  store ptr %.pre.i.i12.i.i, ptr %.046.i.i.i.i, align 8, !tbaa !287
  %i.bf = getelementptr inbounds nuw i8, ptr %.046.i.i.i.i, i64 8
  %.not.i35.i.i.i = icmp eq i64 %i.be, 0
  br i1 %.not.i35.i.i.i, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_9allocatorIS6_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS8_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %scalar.ph, !llvm.loop !5119

bb.l:                                             ; preds = %bb.j
  %.not14.i.i = icmp eq ptr %2, null
  br i1 %.not14.i.i, label %.lr.ph.i39.i.i.i, label %bb.m, !prof !225

bb.m:                                             ; preds = %bb.l
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bg, ptr nonnull align 8 %2, i64 %i.ao, i1 false)
  br label %.lr.ph.i39.i.i.i

.lr.ph.i39.i.i.i:                                 ; preds = %bb.m, %bb.l
  %.pre.i40.i.i.i = load ptr, ptr %4, align 8, !tbaa !287 ; 2 uses
  %min.iters.check61 = icmp ult i64 %i.ap, 4
  br i1 %min.iters.check61, label %scalar.ph60.preheader, label %vector.ph62

vector.ph62:                                      ; preds = %.lr.ph.i39.i.i.i
  %n.vec63 = and i64 %i.ap, -4                    ; 3 uses
  %i.bh = and i64 %i.ap, 3
  %i.bi = shl nsw i64 %n.vec63, 3
  %i.bj = getelementptr i8, ptr %2, i64 %i.bi
  %broadcast.splatinsert64 = insertelement <2 x ptr> poison, ptr %.pre.i40.i.i.i, i64 0
  %broadcast.splat65 = shufflevector <2 x ptr> %broadcast.splatinsert64, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body66

vector.body66:                                    ; preds = %vector.body66, %vector.ph62
  %index67 = phi i64 [ 0, %vector.ph62 ], [ %index.next69, %vector.body66 ] ; 2 uses
  %i.bk = shl i64 %index67, 3
  %next.gep68 = getelementptr i8, ptr %2, i64 %i.bk ; 2 uses
  %i.bl = getelementptr i8, ptr %next.gep68, i64 16
  store <2 x ptr> %broadcast.splat65, ptr %next.gep68, align 8, !tbaa !287
  store <2 x ptr> %broadcast.splat65, ptr %i.bl, align 8, !tbaa !287
  %index.next69 = add nuw i64 %index67, 4         ; 2 uses
  %i.bm = icmp eq i64 %index.next69, %n.vec63
  br i1 %i.bm, label %middle.block70, label %vector.body66, !llvm.loop !5120

middle.block70:                                   ; preds = %vector.body66
  %cmp.n71 = icmp eq i64 %i.ap, %n.vec63
  br i1 %cmp.n71, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit44.i.i.i, label %scalar.ph60.preheader

scalar.ph60.preheader:                            ; preds = %.lr.ph.i39.i.i.i, %middle.block70
  %.07.i41.i.i.i.ph = phi i64 [ %i.ap, %.lr.ph.i39.i.i.i ], [ %i.bh, %middle.block70 ]
  %.046.i42.i.i.i.ph = phi ptr [ %2, %.lr.ph.i39.i.i.i ], [ %i.bj, %middle.block70 ]
  br label %scalar.ph60

scalar.ph60:                                      ; preds = %scalar.ph60.preheader, %scalar.ph60
  %.07.i41.i.i.i = phi i64 [ %i.bn, %scalar.ph60 ], [ %.07.i41.i.i.i.ph, %scalar.ph60.preheader ]
  %.046.i42.i.i.i = phi ptr [ %i.bo, %scalar.ph60 ], [ %.046.i42.i.i.i.ph, %scalar.ph60.preheader ] ; 2 uses
  %i.bn = add i64 %.07.i41.i.i.i, -1              ; 2 uses
  store ptr %.pre.i40.i.i.i, ptr %.046.i42.i.i.i, align 8, !tbaa !287
  %i.bo = getelementptr inbounds nuw i8, ptr %.046.i42.i.i.i, i64 8
  %.not.i43.i.i.i = icmp eq i64 %i.bn, 0
  br i1 %.not.i43.i.i.i, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit44.i.i.i, label %scalar.ph60, !llvm.loop !5121

_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit44.i.i.i: ; preds = %scalar.ph60, %middle.block70
  %5 = sub nuw i64 %3, %i.ap                      ; 6 uses
  %.not15.i.i.i.i.i = icmp eq i64 %5, 0
  br i1 %.not15.i.i.i.i.i, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_9allocatorIS6_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS8_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit44.i.i.i.a

_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit44.i.i.i.a: ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit44.i.i.i
  %.pre.i.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !287 ; 2 uses
  %min.iters.check75 = icmp ult i64 %5, 4
  br i1 %min.iters.check75, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph76

vector.ph76:                                      ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit44.i.i.i.a
  %n.vec77 = and i64 %5, -4                       ; 3 uses
  %i.bp = and i64 %5, 3
  %i.bq = shl i64 %n.vec77, 3
  %i.br = getelementptr i8, ptr %i.ac, i64 %i.bq
  %broadcast.splatinsert78 = insertelement <2 x ptr> poison, ptr %.pre.i.i.i.i.i, i64 0
  %broadcast.splat79 = shufflevector <2 x ptr> %broadcast.splatinsert78, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body80

vector.body80:                                    ; preds = %vector.body80, %vector.ph76
  %index81 = phi i64 [ 0, %vector.ph76 ], [ %index.next86, %vector.body80 ] ; 2 uses
  %i.bs = shl i64 %index81, 3
  %next.gep82 = getelementptr i8, ptr %i.ac, i64 %i.bs ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep82) ]
  %i.bt = getelementptr i8, ptr %next.gep82, i64 16
  store <2 x ptr> %broadcast.splat79, ptr %next.gep82, align 8, !tbaa !287
  store <2 x ptr> %broadcast.splat79, ptr %i.bt, align 8, !tbaa !287
  %index.next86 = add nuw i64 %index81, 4         ; 2 uses
  %i.bu = icmp eq i64 %index.next86, %n.vec77
  br i1 %i.bu, label %middle.block87, label %vector.body80, !llvm.loop !5122

middle.block87:                                   ; preds = %vector.body80
  %cmp.n88 = icmp eq i64 %5, %n.vec77
  br i1 %cmp.n88, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_9allocatorIS6_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS8_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit44.i.i.i.a, %middle.block87
  %.017.i.i.i.i.i.ph = phi i64 [ %5, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit44.i.i.i.a ], [ %i.bp, %middle.block87 ]
  %.01416.i.i.i.i.i.ph = phi ptr [ %i.ac, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit44.i.i.i.a ], [ %i.br, %middle.block87 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.017.i.i.i.i.i = phi i64 [ %i.bv, %.lr.ph.i.i.i.i.i ], [ %.017.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ]
  %.01416.i.i.i.i.i = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i ], [ %.01416.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %i.bv = add i64 %.017.i.i.i.i.i, -1             ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i.i) ]
  store ptr %.pre.i.i.i.i.i, ptr %.01416.i.i.i.i.i, align 8, !tbaa !287
  %i.bw = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i, i64 8
  %.not.i.i45.i.i.i = icmp eq i64 %i.bv, 0
  br i1 %.not.i.i45.i.i.i, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_9allocatorIS6_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS8_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !5123

_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_9allocatorIS6_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS8_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit: ; preds = %scalar.ph, %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i, %middle.block, %middle.block87, %middle.block104, %bb.h, %bb.i, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit44.i.i.i
  %i.bx = load i64, ptr %i.f, align 8, !tbaa !299
  %i.by = add i64 %i.bx, %3
  store i64 %i.by, ptr %i.f, align 8, !tbaa !299
  br label %bb.v

bb.n:                                             ; preds = %bb.f
  %i.bz = load i64, ptr %i.f, align 8, !tbaa !285 ; 3 uses
  store ptr %i.v, ptr %1, align 8, !tbaa !286
  store i64 %i.x, ptr %i.c, align 8, !tbaa !226
  store i64 0, ptr %i.f, align 8, !tbaa !285
  %i.ca = icmp ult ptr %i.v, %i.z
  br i1 %i.ca, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPPNS0_20stable_vector_detail9node_baseIPvEENS0_3dtl21insert_n_copies_proxyINS0_9allocatorIS6_Lj2ELj0EEEEESB_EEvT_mSD_SD_mT0_RT1_(ptr noundef nonnull %i.z, i64 noundef %i.bz, ptr noundef nonnull %i.v, ptr noundef %2, i64 noundef %3, ptr %4, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_9allocatorIS6_Lj2ELj0EEEvE42priv_insert_forward_range_expand_backwardsINS0_3dtl21insert_n_copies_proxyIS8_EEEEvPS6_mSE_mT_.exit

bb.p:                                             ; preds = %bb.n
  call void @_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_NS0_3dtl21insert_n_copies_proxyIS8_EEEEvT0_mSD_SD_mT1_RT_(ptr noundef %i.z, i64 noundef %i.bz, ptr noundef nonnull %i.v, ptr noundef %2, i64 noundef %3, ptr %4, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_9allocatorIS6_Lj2ELj0EEEvE42priv_insert_forward_range_expand_backwardsINS0_3dtl21insert_n_copies_proxyIS8_EEEEvPS6_mSE_mT_.exit

_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_9allocatorIS6_Lj2ELj0EEEvE42priv_insert_forward_range_expand_backwardsINS0_3dtl21insert_n_copies_proxyIS8_EEEEvPS6_mSE_mT_.exit: ; preds = %bb.o, %bb.p
  %i.cb = add i64 %i.bz, %3
  store i64 %i.cb, ptr %i.f, align 8, !tbaa !285
  br label %bb.v

bb.q:                                             ; preds = %_ZN5boost9container19vector_alloc_holderINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEmNS_11move_detail17integral_constantIjLj2EEEE18allocation_commandEjmRmRPS7_.exit
  %i.cc = load i64, ptr %i.f, align 8, !tbaa !285
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.cc ; 2 uses
  %i.ce = icmp ne ptr %i.z, %2
  %i.cf = icmp ne ptr %i.z, null
  %spec.select.i.i.i.i = and i1 %i.cf, %i.ce
  br i1 %spec.select.i.i.i.i, label %bb.r, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit.i.i, !prof !220

bb.r:                                             ; preds = %bb.q
  %i.cg = ptrtoint ptr %2 to i64
  %i.ch = ptrtoint ptr %i.z to i64
  %i.ci = sub i64 %i.cg, %i.ch                    ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.v, ptr nonnull align 8 %i.z, i64 %i.ci, i1 false)
  %i.cj = getelementptr inbounds i8, ptr %i.v, i64 %i.ci
  br label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit.i.i

_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit.i.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i19 = phi ptr [ %i.cj, %bb.r ], [ %i.v, %bb.q ] ; 4 uses
  %.not15.i.i.i.i20 = icmp eq i64 %3, 0
  br i1 %.not15.i.i.i.i20, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS8_EEvRS9_T_m.exit.i.i, label %.lr.ph.preheader.i.i.i.i21

.lr.ph.preheader.i.i.i.i21:                       ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit.i.i
  %.pre.i.i.i.i22 = load ptr, ptr %4, align 8, !tbaa !287 ; 2 uses
  %min.iters.check109 = icmp ult i64 %3, 4
  br i1 %min.iters.check109, label %.lr.ph.i.i.i.i23.preheader, label %vector.ph110

vector.ph110:                                     ; preds = %.lr.ph.preheader.i.i.i.i21
  %n.vec111 = and i64 %3, -4                      ; 3 uses
  %i.ck = and i64 %3, 3
  %i.cl = shl i64 %n.vec111, 3
  %i.cm = getelementptr i8, ptr %.0.i.i.i.i19, i64 %i.cl
  %broadcast.splatinsert112 = insertelement <2 x ptr> poison, ptr %.pre.i.i.i.i22, i64 0
  %broadcast.splat113 = shufflevector <2 x ptr> %broadcast.splatinsert112, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body114

vector.body114:                                   ; preds = %vector.body114, %vector.ph110
  %index115 = phi i64 [ 0, %vector.ph110 ], [ %index.next120, %vector.body114 ] ; 2 uses
  %i.cn = shl i64 %index115, 3
  %next.gep116 = getelementptr i8, ptr %.0.i.i.i.i19, i64 %i.cn ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep116) ]
  %i.co = getelementptr i8, ptr %next.gep116, i64 16
  store <2 x ptr> %broadcast.splat113, ptr %next.gep116, align 8, !tbaa !287
  store <2 x ptr> %broadcast.splat113, ptr %i.co, align 8, !tbaa !287
  %index.next120 = add nuw i64 %index115, 4       ; 2 uses
  %i.cp = icmp eq i64 %index.next120, %n.vec111
  br i1 %i.cp, label %middle.block121, label %vector.body114, !llvm.loop !5124

middle.block121:                                  ; preds = %vector.body114
  %cmp.n122 = icmp eq i64 %3, %n.vec111
  br i1 %cmp.n122, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS8_EEvRS9_T_m.exit.i.i, label %.lr.ph.i.i.i.i23.preheader

.lr.ph.i.i.i.i23.preheader:                       ; preds = %.lr.ph.preheader.i.i.i.i21, %middle.block121
  %.017.i.i.i.i24.ph = phi i64 [ %3, %.lr.ph.preheader.i.i.i.i21 ], [ %i.ck, %middle.block121 ]
  %.01416.i.i.i.i25.ph = phi ptr [ %.0.i.i.i.i19, %.lr.ph.preheader.i.i.i.i21 ], [ %i.cm, %middle.block121 ]
  br label %.lr.ph.i.i.i.i23

.lr.ph.i.i.i.i23:                                 ; preds = %.lr.ph.i.i.i.i23.preheader, %.lr.ph.i.i.i.i23
  %.017.i.i.i.i24 = phi i64 [ %i.cq, %.lr.ph.i.i.i.i23 ], [ %.017.i.i.i.i24.ph, %.lr.ph.i.i.i.i23.preheader ]
  %.01416.i.i.i.i25 = phi ptr [ %i.cr, %.lr.ph.i.i.i.i23 ], [ %.01416.i.i.i.i25.ph, %.lr.ph.i.i.i.i23.preheader ] ; 3 uses
  %i.cq = add i64 %.017.i.i.i.i24, -1             ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i25) ]
  store ptr %.pre.i.i.i.i22, ptr %.01416.i.i.i.i25, align 8, !tbaa !287
  %i.cr = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i25, i64 8
  %.not.i.i.i.i26 = icmp eq i64 %i.cq, 0
  br i1 %.not.i.i.i.i26, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS8_EEvRS9_T_m.exit.i.i, label %.lr.ph.i.i.i.i23, !llvm.loop !5125

_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS8_EEvRS9_T_m.exit.i.i: ; preds = %.lr.ph.i.i.i.i23, %middle.block121, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit.i.i
  %i.cs = icmp ne ptr %2, %i.cd
  %i.ct = icmp ne ptr %2, null
  %spec.select.i.i18.i.i = and i1 %i.ct, %i.cs
  br i1 %spec.select.i.i18.i.i, label %bb.s, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_NS0_3dtl21insert_n_copies_proxyIS8_EEEEvRT_T0_SF_SF_T1_mT2_.exit.i, !prof !220

bb.s:                                             ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS8_EEvRS9_T_m.exit.i.i
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i19, i64 %3
  %i.cv = ptrtoint ptr %i.cd to i64
  %i.cw = ptrtoint ptr %2 to i64
  %i.cx = sub i64 %i.cv, %i.cw
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cu, ptr nonnull align 8 %2, i64 %i.cx, i1 false)
  br label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_NS0_3dtl21insert_n_copies_proxyIS8_EEEEvRT_T0_SF_SF_T1_mT2_.exit.i

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_NS0_3dtl21insert_n_copies_proxyIS8_EEEEvRT_T0_SF_SF_T1_mT2_.exit.i: ; preds = %bb.s, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS8_EEvRS9_T_m.exit.i.i
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_9allocatorIS6_Lj2ELj0EEEvE40priv_insert_forward_range_new_allocationINS0_3dtl21insert_n_copies_proxyIS8_EEEEvPS6_mSE_mT_.exit, label %bb.t

bb.t:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_NS0_3dtl21insert_n_copies_proxyIS8_EEEEvRT_T0_SF_SF_T1_mT2_.exit.i
  %i.cy = load ptr, ptr %1, align 8, !tbaa !286
  invoke void @_ZN5boost9container13dlmalloc_freeEPv(ptr noundef %i.cy)
          to label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_9allocatorIS6_Lj2ELj0EEEvE40priv_insert_forward_range_new_allocationINS0_3dtl21insert_n_copies_proxyIS8_EEEEvPS6_mSE_mT_.exit unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cz = landingpad { ptr, i32 }
          catch ptr null
  %i.da = extractvalue { ptr, i32 } %i.cz, 0
  call void @__clang_call_terminate(ptr %i.da) #24
  unreachable

_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_9allocatorIS6_Lj2ELj0EEEvE40priv_insert_forward_range_new_allocationINS0_3dtl21insert_n_copies_proxyIS8_EEEEvPS6_mSE_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_NS0_3dtl21insert_n_copies_proxyIS8_EEEEvRT_T0_SF_SF_T1_mT2_.exit.i, %bb.t
  store ptr %i.v, ptr %1, align 8, !tbaa !286
  %i.db = load i64, ptr %i.f, align 8, !tbaa !299
  %i.dc = add i64 %i.db, %3
  store i64 %i.dc, ptr %i.f, align 8, !tbaa !299
  store i64 %i.x, ptr %i.c, align 8, !tbaa !226
  br label %bb.v

bb.v:                                             ; preds = %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_9allocatorIS6_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS8_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_9allocatorIS6_Lj2ELj0EEEvE42priv_insert_forward_range_expand_backwardsINS0_3dtl21insert_n_copies_proxyIS8_EEEEvPS6_mSE_mT_.exit, %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_9allocatorIS6_Lj2ELj0EEEvE40priv_insert_forward_range_new_allocationINS0_3dtl21insert_n_copies_proxyIS8_EEEEvPS6_mSE_mT_.exit
  %i.dd = ptrtoint ptr %2 to i64
  %i.de = ptrtoint ptr %i.b to i64
  %i.df = sub i64 %i.dd, %i.de
  %i.dg = load ptr, ptr %1, align 8, !tbaa !286
  %i.dh = getelementptr inbounds i8, ptr %i.dg, i64 %i.df
  store ptr %i.dh, ptr %0, align 8, !tbaa !359
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPPNS0_20stable_vector_detail9node_baseIPvEENS0_3dtl21insert_n_copies_proxyINS0_9allocatorIS6_Lj2ELj0EEEEESB_EEvT_mSD_SD_mT0_RT1_(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr %5, ptr noundef nonnull align 1 dereferenceable(1) %6) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds [8 x i8], ptr %0, i64 %1 ; 14 uses
  %i.b = ptrtoint ptr %3 to i64                   ; 5 uses
  %i.c = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 5 uses
  %i.e = ashr exact i64 %i.d, 3                   ; 10 uses
  %i.f = ptrtoint ptr %2 to i64
  %i.g = sub i64 %i.c, %i.f                       ; 3 uses
  %i.h = ashr exact i64 %i.g, 3                   ; 7 uses
  %i.i = add i64 %i.e, %4                         ; 3 uses
  %.not = icmp ult i64 %i.h, %i.i
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ne ptr %0, %3
  %i.k = icmp ne ptr %2, null                     ; 3 uses
  %i.l = icmp ne ptr %0, null
  %i.m = and i1 %i.j, %i.l
  %spec.select.i.i = and i1 %i.m, %i.k
  br i1 %spec.select.i.i, label %bb.c, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit, !prof !220

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %2, ptr nonnull align 8 %0, i64 %i.d, i1 false)
  %i.n = getelementptr inbounds i8, ptr %2, i64 %i.d
  br label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit

_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit: ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.n, %bb.c ], [ %2, %bb.b ] ; 3 uses
  %.not15.i.i = icmp eq i64 %4, 0
  br i1 %.not15.i.i, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS8_EEvRS9_T_m.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit
  %.pre.i.i = load ptr, ptr %5, align 8, !tbaa !287 ; 2 uses
  %min.iters.check = icmp ult i64 %4, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %n.vec = and i64 %4, -4                         ; 3 uses
  %i.o = and i64 %4, 3
  %i.p = shl i64 %n.vec, 3
  %i.q = getelementptr i8, ptr %.0.i.i, i64 %i.p
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %.pre.i.i, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.r = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %.0.i.i, i64 %i.r ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep) ]
  %i.s = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %broadcast.splat, ptr %next.gep, align 8, !tbaa !287
  store <2 x ptr> %broadcast.splat, ptr %i.s, align 8, !tbaa !287
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !5126

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS8_EEvRS9_T_m.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block
  %.017.i.i.ph = phi i64 [ %4, %.lr.ph.preheader.i.i ], [ %i.o, %middle.block ]
  %.01416.i.i.ph = phi ptr [ %.0.i.i, %.lr.ph.preheader.i.i ], [ %i.q, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.017.i.i = phi i64 [ %i.u, %.lr.ph.i.i ], [ %.017.i.i.ph, %.lr.ph.i.i.preheader ]
  %.01416.i.i = phi ptr [ %i.v, %.lr.ph.i.i ], [ %.01416.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.u = add i64 %.017.i.i, -1                    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i) ]
  store ptr %.pre.i.i, ptr %.01416.i.i, align 8, !tbaa !287
  %i.v = getelementptr inbounds nuw i8, ptr %.01416.i.i, i64 8
  %.not.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i.i, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS8_EEvRS9_T_m.exit, label %.lr.ph.i.i, !llvm.loop !5127

_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS8_EEvRS9_T_m.exit: ; preds = %.lr.ph.i.i, %middle.block, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit
  %i.w = add i64 %4, %1
  %.not145 = icmp ult i64 %i.h, %i.w
  br i1 %.not145, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS8_EEvRS9_T_m.exit
  %.not146 = icmp eq i64 %i.e, %1
  br i1 %.not146, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit150, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = icmp ne ptr %3, %i.a
  %i.y = icmp ne ptr %3, null
  %i.z = and i1 %i.x, %i.y
  %spec.select.i.i148 = and i1 %i.z, %i.k
  br i1 %spec.select.i.i148, label %bb.f, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit150, !prof !220

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds [8 x i8], ptr %2, i64 %i.i
  br label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit150.sink.split

bb.g:                                             ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS8_EEvRS9_T_m.exit
  %.not.i.i151 = icmp ne ptr %i.a, %3
  %i.ab = icmp ne ptr %3, null
  %i.ac = and i1 %i.ab, %.not.i.i151
  %or.cond264 = and i1 %i.ac, %i.k
  br i1 %or.cond264, label %bb.h, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit150, !prof !325

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds [8 x i8], ptr %2, i64 %i.i
  br label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit150.sink.split

bb.i:                                             ; preds = %bb.a
  %i.ae = icmp ugt i64 %4, %i.h                   ; 2 uses
  %.not143 = icmp ugt i64 %i.h, %i.e
  br i1 %.not143, label %bb.p, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not.i.i154 = icmp eq ptr %0, %2
  br i1 %.not.i.i154, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_mSD_.exit157, label %bb.k, !prof !225

bb.k:                                             ; preds = %bb.j
  %i.af = icmp ne ptr %2, null
  %i.ag = icmp ne ptr %0, null
  %or.cond.i.i155 = and i1 %i.ag, %i.af
  br i1 %or.cond.i.i155, label %bb.l, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_mSD_.exit157

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %2, ptr nonnull align 1 %0, i64 %i.g, i1 false)
  br label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_mSD_.exit157

_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_mSD_.exit157: ; preds = %bb.k, %bb.l, %bb.j
  %i.ah = tail call i64 @llvm.umin.i64(i64 %4, i64 %i.h) ; 7 uses
  %i.ai = getelementptr inbounds i8, ptr %0, i64 %i.g ; 3 uses
  %i.aj = icmp ne ptr %i.ai, %3
  %i.ak = icmp ne ptr %0, null
  %or.cond.i.i158 = and i1 %i.ak, %i.aj
  br i1 %or.cond.i.i158, label %bb.m, label %_ZN5boost9container4moveIPPNS0_20stable_vector_detail9node_baseIPvEES7_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_SB_E4typeESA_SA_SB_.exit, !prof !220

bb.m:                                             ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_mSD_.exit157
  %i.al = ptrtoint ptr %i.ai to i64
  %i.am = sub i64 %i.b, %i.al                     ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %0, ptr nonnull align 8 %i.ai, i64 %i.am, i1 false)
  %i.an = getelementptr inbounds i8, ptr %0, i64 %i.am
  br label %_ZN5boost9container4moveIPPNS0_20stable_vector_detail9node_baseIPvEES7_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_SB_E4typeESA_SA_SB_.exit

_ZN5boost9container4moveIPPNS0_20stable_vector_detail9node_baseIPvEES7_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_SB_E4typeESA_SA_SB_.exit: ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_mSD_.exit157, %bb.m
  %.0.i.i160 = phi ptr [ %i.an, %bb.m ], [ %0, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_mSD_.exit157 ] ; 5 uses
  %.not5.i = icmp eq i64 %i.ah, 0
  br i1 %.not5.i, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN5boost9container4moveIPPNS0_20stable_vector_detail9node_baseIPvEES7_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_SB_E4typeESA_SA_SB_.exit
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !287 ; 2 uses
  %min.iters.check271 = icmp ult i64 %i.ah, 4
  br i1 %min.iters.check271, label %scalar.ph270.preheader, label %vector.ph272

vector.ph272:                                     ; preds = %.lr.ph.i
  %n.vec273 = and i64 %i.ah, -4                   ; 3 uses
  %i.ao = and i64 %i.ah, 3
  %i.ap = shl i64 %n.vec273, 3
  %i.aq = getelementptr i8, ptr %.0.i.i160, i64 %i.ap
  %broadcast.splatinsert274 = insertelement <2 x ptr> poison, ptr %.pre.i, i64 0
  %broadcast.splat275 = shufflevector <2 x ptr> %broadcast.splatinsert274, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body276

vector.body276:                                   ; preds = %vector.body276, %vector.ph272
  %index277 = phi i64 [ 0, %vector.ph272 ], [ %index.next279, %vector.body276 ] ; 2 uses
  %i.ar = shl i64 %index277, 3
  %next.gep278 = getelementptr i8, ptr %.0.i.i160, i64 %i.ar ; 2 uses
  %i.as = getelementptr i8, ptr %next.gep278, i64 16
  store <2 x ptr> %broadcast.splat275, ptr %next.gep278, align 8, !tbaa !287
  store <2 x ptr> %broadcast.splat275, ptr %i.as, align 8, !tbaa !287
  %index.next279 = add nuw i64 %index277, 4       ; 2 uses
  %i.at = icmp eq i64 %index.next279, %n.vec273
  br i1 %i.at, label %middle.block280, label %vector.body276, !llvm.loop !5128

middle.block280:                                  ; preds = %vector.body276
  %cmp.n281 = icmp eq i64 %i.ah, %n.vec273
  br i1 %cmp.n281, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit, label %scalar.ph270.preheader

scalar.ph270.preheader:                           ; preds = %.lr.ph.i, %middle.block280
  %.07.i.ph = phi i64 [ %i.ah, %.lr.ph.i ], [ %i.ao, %middle.block280 ]
  %.046.i.ph = phi ptr [ %.0.i.i160, %.lr.ph.i ], [ %i.aq, %middle.block280 ]
  br label %scalar.ph270

scalar.ph270:                                     ; preds = %scalar.ph270.preheader, %scalar.ph270
  %.07.i = phi i64 [ %i.au, %scalar.ph270 ], [ %.07.i.ph, %scalar.ph270.preheader ]
  %.046.i = phi ptr [ %i.av, %scalar.ph270 ], [ %.046.i.ph, %scalar.ph270.preheader ] ; 2 uses
  %i.au = add i64 %.07.i, -1                      ; 2 uses
  store ptr %.pre.i, ptr %.046.i, align 8, !tbaa !287
  %i.av = getelementptr inbounds nuw i8, ptr %.046.i, i64 8
  %.not.i = icmp eq i64 %i.au, 0
  br i1 %.not.i, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit, label %scalar.ph270, !llvm.loop !5129

_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit: ; preds = %scalar.ph270, %middle.block280, %_ZN5boost9container4moveIPPNS0_20stable_vector_detail9node_baseIPvEES7_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_SB_E4typeESA_SA_SB_.exit
  br i1 %i.ae, label %.critedge, label %bb.n

bb.n:                                             ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit
  %i.aw = getelementptr inbounds [8 x i8], ptr %.0.i.i160, i64 %i.ah ; 2 uses
  %.not.i161 = icmp eq ptr %3, %i.aw
  br i1 %.not.i161, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit150, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = icmp ne ptr %3, %i.a
  %i.ay = icmp ne ptr %.0.i.i160, null
  %or.cond.i.i.i = and i1 %i.ax, %i.ay
  %i.az = icmp ne ptr %3, null
  %spec.select.i.i.i = and i1 %i.az, %or.cond.i.i.i
  br i1 %spec.select.i.i.i, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit150.sink.split, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit150, !prof !220

bb.p:                                             ; preds = %bb.i
  %i.ba = icmp ne ptr %0, %3
  %i.bb = icmp ne ptr %2, null
  %or.cond.i.i162 = and i1 %i.bb, %i.ba
  %i.bc = icmp ne ptr %0, null                    ; 2 uses
  %spec.select.i.i163 = and i1 %i.bc, %or.cond.i.i162
  br i1 %spec.select.i.i163, label %bb.q, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit165, !prof !220

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %2, ptr nonnull align 8 %0, i64 %i.d, i1 false)
  %i.bd = getelementptr inbounds i8, ptr %2, i64 %i.d
  br label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit165

_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit165: ; preds = %bb.p, %bb.q
  %.0.i.i164 = phi ptr [ %i.bd, %bb.q ], [ %2, %bb.p ] ; 3 uses
  %i.be = sub nuw nsw i64 %i.h, %i.e              ; 7 uses
  %.not15.i.i166 = icmp eq i64 %i.be, 0
  br i1 %.not15.i.i166, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS8_EEvRS9_T_m.exit173, label %.lr.ph.preheader.i.i167

.lr.ph.preheader.i.i167:                          ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit165
  %.pre.i.i168 = load ptr, ptr %5, align 8, !tbaa !287 ; 2 uses
  %min.iters.check286 = icmp ult i64 %i.be, 4
  br i1 %min.iters.check286, label %.lr.ph.i.i169.preheader, label %vector.ph286

vector.ph286:                                     ; preds = %.lr.ph.preheader.i.i167
  %n.vec287 = and i64 %i.be, -4                   ; 3 uses
  %i.bf = and i64 %i.be, 3
  %i.bg = shl i64 %n.vec287, 3
  %i.bh = getelementptr i8, ptr %.0.i.i164, i64 %i.bg
  %broadcast.splatinsert288 = insertelement <2 x ptr> poison, ptr %.pre.i.i168, i64 0
  %broadcast.splat289 = shufflevector <2 x ptr> %broadcast.splatinsert288, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body290

vector.body290:                                   ; preds = %vector.body290, %vector.ph286
  %index291 = phi i64 [ 0, %vector.ph286 ], [ %index.next296, %vector.body290 ] ; 2 uses
  %i.bi = shl i64 %index291, 3
  %next.gep292 = getelementptr i8, ptr %.0.i.i164, i64 %i.bi ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep292) ]
  %i.bj = getelementptr i8, ptr %next.gep292, i64 16
  store <2 x ptr> %broadcast.splat289, ptr %next.gep292, align 8, !tbaa !287
  store <2 x ptr> %broadcast.splat289, ptr %i.bj, align 8, !tbaa !287
  %index.next296 = add nuw i64 %index291, 4       ; 2 uses
  %i.bk = icmp eq i64 %index.next296, %n.vec287
  br i1 %i.bk, label %middle.block297, label %vector.body290, !llvm.loop !5130

middle.block297:                                  ; preds = %vector.body290
  %cmp.n298 = icmp eq i64 %i.be, %n.vec287
  br i1 %cmp.n298, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS8_EEvRS9_T_m.exit173, label %.lr.ph.i.i169.preheader

.lr.ph.i.i169.preheader:                          ; preds = %.lr.ph.preheader.i.i167, %middle.block297
  %.017.i.i170.ph = phi i64 [ %i.be, %.lr.ph.preheader.i.i167 ], [ %i.bf, %middle.block297 ]
  %.01416.i.i171.ph = phi ptr [ %.0.i.i164, %.lr.ph.preheader.i.i167 ], [ %i.bh, %middle.block297 ]
  br label %.lr.ph.i.i169

.lr.ph.i.i169:                                    ; preds = %.lr.ph.i.i169.preheader, %.lr.ph.i.i169
  %.017.i.i170 = phi i64 [ %i.bl, %.lr.ph.i.i169 ], [ %.017.i.i170.ph, %.lr.ph.i.i169.preheader ]
  %.01416.i.i171 = phi ptr [ %i.bm, %.lr.ph.i.i169 ], [ %.01416.i.i171.ph, %.lr.ph.i.i169.preheader ] ; 3 uses
  %i.bl = add i64 %.017.i.i170, -1                ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i171) ]
  store ptr %.pre.i.i168, ptr %.01416.i.i171, align 8, !tbaa !287
  %i.bm = getelementptr inbounds nuw i8, ptr %.01416.i.i171, i64 8
  %.not.i.i172 = icmp eq i64 %i.bl, 0
  br i1 %.not.i.i172, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS8_EEvRS9_T_m.exit173, label %.lr.ph.i.i169, !llvm.loop !5131

_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS8_EEvRS9_T_m.exit173: ; preds = %.lr.ph.i.i169, %middle.block297, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit165
  br i1 %i.ae, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS8_EEvRS9_T_m.exit173
  %.not5.i174 = icmp eq ptr %3, %0
  br i1 %.not5.i174, label %.critedge, label %.lr.ph.i175

.lr.ph.i175:                                      ; preds = %bb.r
  %.pre.i176 = load ptr, ptr %5, align 8, !tbaa !287 ; 2 uses
  %min.iters.check316 = icmp ult i64 %i.e, 4
  br i1 %min.iters.check316, label %scalar.ph315.preheader, label %vector.ph317

vector.ph317:                                     ; preds = %.lr.ph.i175
  %n.vec318 = and i64 %i.e, -4                    ; 3 uses
  %i.bn = and i64 %i.e, 3
  %i.bo = shl nsw i64 %n.vec318, 3
  %i.bp = getelementptr i8, ptr %0, i64 %i.bo
  %broadcast.splatinsert319 = insertelement <2 x ptr> poison, ptr %.pre.i176, i64 0
  %broadcast.splat320 = shufflevector <2 x ptr> %broadcast.splatinsert319, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body321

vector.body321:                                   ; preds = %vector.body321, %vector.ph317
  %index322 = phi i64 [ 0, %vector.ph317 ], [ %index.next324, %vector.body321 ] ; 2 uses
  %i.bq = shl i64 %index322, 3
  %next.gep323 = getelementptr i8, ptr %0, i64 %i.bq ; 2 uses
  %i.br = getelementptr i8, ptr %next.gep323, i64 16
  store <2 x ptr> %broadcast.splat320, ptr %next.gep323, align 8, !tbaa !287
  store <2 x ptr> %broadcast.splat320, ptr %i.br, align 8, !tbaa !287
  %index.next324 = add nuw i64 %index322, 4       ; 2 uses
  %i.bs = icmp eq i64 %index.next324, %n.vec318
  br i1 %i.bs, label %middle.block325, label %vector.body321, !llvm.loop !5132

middle.block325:                                  ; preds = %vector.body321
  %cmp.n326 = icmp eq i64 %i.e, %n.vec318
  br i1 %cmp.n326, label %.critedge, label %scalar.ph315.preheader

scalar.ph315.preheader:                           ; preds = %.lr.ph.i175, %middle.block325
  %.07.i177.ph = phi i64 [ %i.e, %.lr.ph.i175 ], [ %i.bn, %middle.block325 ]
  %.046.i178.ph = phi ptr [ %0, %.lr.ph.i175 ], [ %i.bp, %middle.block325 ]
  br label %scalar.ph315

scalar.ph315:                                     ; preds = %scalar.ph315.preheader, %scalar.ph315
  %.07.i177 = phi i64 [ %i.bt, %scalar.ph315 ], [ %.07.i177.ph, %scalar.ph315.preheader ]
  %.046.i178 = phi ptr [ %i.bu, %scalar.ph315 ], [ %.046.i178.ph, %scalar.ph315.preheader ] ; 2 uses
  %i.bt = add i64 %.07.i177, -1                   ; 2 uses
  store ptr %.pre.i176, ptr %.046.i178, align 8, !tbaa !287
  %i.bu = getelementptr inbounds nuw i8, ptr %.046.i178, i64 8
  %.not.i179 = icmp eq i64 %i.bt, 0
  br i1 %.not.i179, label %.critedge, label %scalar.ph315, !llvm.loop !5133

bb.s:                                             ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS8_EEvRS9_T_m.exit173
  %i.bv = sub i64 %4, %i.be                       ; 7 uses
  %.not5.i181 = icmp eq i64 %i.bv, 0
  br i1 %.not5.i181, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit187, label %.lr.ph.i182

.lr.ph.i182:                                      ; preds = %bb.s
  %.pre.i183 = load ptr, ptr %5, align 8, !tbaa !287 ; 2 uses
  %min.iters.check302 = icmp ult i64 %i.bv, 4
  br i1 %min.iters.check302, label %scalar.ph301.preheader, label %vector.ph303

vector.ph303:                                     ; preds = %.lr.ph.i182
  %n.vec304 = and i64 %i.bv, -4                   ; 3 uses
  %i.bw = and i64 %i.bv, 3
  %i.bx = shl i64 %n.vec304, 3
  %i.by = getelementptr i8, ptr %0, i64 %i.bx
  %broadcast.splatinsert305 = insertelement <2 x ptr> poison, ptr %.pre.i183, i64 0
  %broadcast.splat306 = shufflevector <2 x ptr> %broadcast.splatinsert305, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body307

vector.body307:                                   ; preds = %vector.body307, %vector.ph303
  %index308 = phi i64 [ 0, %vector.ph303 ], [ %index.next310, %vector.body307 ] ; 2 uses
  %i.bz = shl i64 %index308, 3
  %next.gep309 = getelementptr i8, ptr %0, i64 %i.bz ; 2 uses
  %i.ca = getelementptr i8, ptr %next.gep309, i64 16
  store <2 x ptr> %broadcast.splat306, ptr %next.gep309, align 8, !tbaa !287
  store <2 x ptr> %broadcast.splat306, ptr %i.ca, align 8, !tbaa !287
  %index.next310 = add nuw i64 %index308, 4       ; 2 uses
  %i.cb = icmp eq i64 %index.next310, %n.vec304
  br i1 %i.cb, label %middle.block311, label %vector.body307, !llvm.loop !5134

middle.block311:                                  ; preds = %vector.body307
  %cmp.n312 = icmp eq i64 %i.bv, %n.vec304
  br i1 %cmp.n312, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit187, label %scalar.ph301.preheader

scalar.ph301.preheader:                           ; preds = %.lr.ph.i182, %middle.block311
  %.07.i184.ph = phi i64 [ %i.bv, %.lr.ph.i182 ], [ %i.bw, %middle.block311 ]
  %.046.i185.ph = phi ptr [ %0, %.lr.ph.i182 ], [ %i.by, %middle.block311 ]
  br label %scalar.ph301

scalar.ph301:                                     ; preds = %scalar.ph301.preheader, %scalar.ph301
  %.07.i184 = phi i64 [ %i.cc, %scalar.ph301 ], [ %.07.i184.ph, %scalar.ph301.preheader ]
  %.046.i185 = phi ptr [ %i.cd, %scalar.ph301 ], [ %.046.i185.ph, %scalar.ph301.preheader ] ; 2 uses
  %i.cc = add i64 %.07.i184, -1                   ; 2 uses
  store ptr %.pre.i183, ptr %.046.i185, align 8, !tbaa !287
  %i.cd = getelementptr inbounds nuw i8, ptr %.046.i185, i64 8
  %.not.i186 = icmp eq i64 %i.cc, 0
  br i1 %.not.i186, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit187, label %scalar.ph301, !llvm.loop !5135

_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit187: ; preds = %scalar.ph301, %middle.block311, %bb.s
  %i.ce = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bv ; 2 uses
  %.not.i188 = icmp eq ptr %3, %i.ce
  br i1 %.not.i188, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit150, label %bb.t

bb.t:                                             ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit187
  %i.cf = icmp ne ptr %3, %i.a
  %i.cg = icmp ne ptr %3, null
  %i.ch = and i1 %i.cf, %i.cg
  %spec.select.i.i.i190 = and i1 %i.ch, %i.bc
  br i1 %spec.select.i.i.i190, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit150.sink.split, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit150, !prof !220

.critedge:                                        ; preds = %scalar.ph315, %middle.block325, %bb.r, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit
  %i.ci = sub nuw i64 %4, %i.h                    ; 9 uses
  %i.cj = sub i64 %1, %i.e                        ; 8 uses
  %.not144 = icmp ult i64 %i.cj, %i.ci
  br i1 %.not144, label %bb.x, label %bb.u

bb.u:                                             ; preds = %.critedge
  %.neg = mul i64 %i.ci, -8                       ; 4 uses
  %i.ck = getelementptr inbounds i8, ptr %i.a, i64 %.neg ; 3 uses
  %i.cl = icmp ne i64 %.neg, 0
  %i.cm = icmp ne ptr %0, null
  %or.cond.i.i192 = and i1 %i.cm, %i.cl
  br i1 %or.cond.i.i192, label %bb.v, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit195, !prof !220

bb.v:                                             ; preds = %bb.u
  %gepdiff = sub nsw i64 0, %.neg
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.a, ptr nonnull align 8 %i.ck, i64 %gepdiff, i1 false)
  br label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit195

_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit195: ; preds = %bb.u, %bb.v
  %.not.i196 = icmp eq i64 %.neg, 0
  %.not.i.i197 = icmp eq ptr %i.ck, %3
  %or.cond = or i1 %.not.i196, %.not.i.i197
  br i1 %or.cond, label %_ZN5boost9container25move_backward_overlappingIPPNS0_20stable_vector_detail9node_baseIPvEEEET_S8_S8_S8_.exit, label %bb.w, !prof !272

bb.w:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit195
  %i.cn = ptrtoint ptr %i.ck to i64
  %i.co = sub i64 %i.cn, %i.b                     ; 2 uses
  %i.cp = ashr exact i64 %i.co, 3
  %i.cq = sub nsw i64 0, %i.cp
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.cq
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.cr, ptr align 8 %3, i64 %i.co, i1 false)
  br label %_ZN5boost9container25move_backward_overlappingIPPNS0_20stable_vector_detail9node_baseIPvEEEET_S8_S8_S8_.exit

_ZN5boost9container25move_backward_overlappingIPPNS0_20stable_vector_detail9node_baseIPvEEEET_S8_S8_S8_.exit: ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit195, %bb.w
  %.not5.i198 = icmp eq i64 %i.ci, 0
  br i1 %.not5.i198, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit150, label %.lr.ph.i199

.lr.ph.i199:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPPNS0_20stable_vector_detail9node_baseIPvEEEET_S8_S8_S8_.exit
  %.pre.i200 = load ptr, ptr %5, align 8, !tbaa !287 ; 2 uses
  %min.iters.check330 = icmp ult i64 %i.ci, 4
  br i1 %min.iters.check330, label %scalar.ph329.preheader, label %vector.ph331

vector.ph331:                                     ; preds = %.lr.ph.i199
  %n.vec332 = and i64 %i.ci, -4                   ; 3 uses
  %i.cs = and i64 %i.ci, 3
  %i.ct = shl i64 %n.vec332, 3
  %i.cu = getelementptr i8, ptr %3, i64 %i.ct
  %broadcast.splatinsert333 = insertelement <2 x ptr> poison, ptr %.pre.i200, i64 0
  %broadcast.splat334 = shufflevector <2 x ptr> %broadcast.splatinsert333, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body335

vector.body335:                                   ; preds = %vector.body335, %vector.ph331
  %index336 = phi i64 [ 0, %vector.ph331 ], [ %index.next338, %vector.body335 ] ; 2 uses
  %i.cv = shl i64 %index336, 3
  %next.gep337 = getelementptr i8, ptr %3, i64 %i.cv ; 2 uses
  %i.cw = getelementptr i8, ptr %next.gep337, i64 16
  store <2 x ptr> %broadcast.splat334, ptr %next.gep337, align 8, !tbaa !287
  store <2 x ptr> %broadcast.splat334, ptr %i.cw, align 8, !tbaa !287
  %index.next338 = add nuw i64 %index336, 4       ; 2 uses
  %i.cx = icmp eq i64 %index.next338, %n.vec332
  br i1 %i.cx, label %middle.block339, label %vector.body335, !llvm.loop !5136

middle.block339:                                  ; preds = %vector.body335
  %cmp.n340 = icmp eq i64 %i.ci, %n.vec332
  br i1 %cmp.n340, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit150, label %scalar.ph329.preheader

scalar.ph329.preheader:                           ; preds = %.lr.ph.i199, %middle.block339
  %.07.i201.ph = phi i64 [ %i.ci, %.lr.ph.i199 ], [ %i.cs, %middle.block339 ]
  %.046.i202.ph = phi ptr [ %3, %.lr.ph.i199 ], [ %i.cu, %middle.block339 ]
  br label %scalar.ph329

scalar.ph329:                                     ; preds = %scalar.ph329.preheader, %scalar.ph329
  %.07.i201 = phi i64 [ %i.cy, %scalar.ph329 ], [ %.07.i201.ph, %scalar.ph329.preheader ]
  %.046.i202 = phi ptr [ %i.cz, %scalar.ph329 ], [ %.046.i202.ph, %scalar.ph329.preheader ] ; 2 uses
  %i.cy = add i64 %.07.i201, -1                   ; 2 uses
  store ptr %.pre.i200, ptr %.046.i202, align 8, !tbaa !287
  %i.cz = getelementptr inbounds nuw i8, ptr %.046.i202, i64 8
  %.not.i203 = icmp eq i64 %i.cy, 0
  br i1 %.not.i203, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit150, label %scalar.ph329, !llvm.loop !5137

bb.x:                                             ; preds = %.critedge
  %i.da = sub nuw i64 %i.ci, %i.cj                ; 6 uses
  %i.db = icmp ne ptr %3, %i.a
  %i.dc = icmp ne ptr %0, null
  %or.cond.i.i205 = and i1 %i.dc, %i.db
  %i.dd = icmp ne ptr %3, null
  %spec.select.i.i206 = and i1 %i.dd, %or.cond.i.i205
  br i1 %spec.select.i.i206, label %bb.y, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit208, !prof !220

bb.y:                                             ; preds = %bb.x
end_hunk_5
begin_hunk_6_@_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPPNS0_20stable_vector_detail9node_baseIPvEENS0_3dtl21insert_n_copies_proxyINS0_9allocatorIS6_Lj2ELj0EEEEESB_EEvT_mSD_SD_mT0_RT1_:bb.a
  br i1 %min.iters.check358, label %.lr.ph.i.i219.preheader, label %vector.ph359

vector.ph359:                                     ; preds = %.lr.ph.preheader.i.i217
  %n.vec360 = and i64 %i.da, -4                   ; 3 uses
  %i.dp = and i64 %i.da, 3
  %i.dq = shl i64 %n.vec360, 3
  %i.dr = getelementptr i8, ptr %i.a, i64 %i.dq
  %broadcast.splatinsert361 = insertelement <2 x ptr> poison, ptr %.pre.i.i218, i64 0
  %broadcast.splat362 = shufflevector <2 x ptr> %broadcast.splatinsert361, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body363

vector.body363:                                   ; preds = %vector.body363, %vector.ph359
  %index364 = phi i64 [ 0, %vector.ph359 ], [ %index.next369, %vector.body363 ] ; 2 uses
  %i.ds = shl i64 %index364, 3
  %next.gep365 = getelementptr i8, ptr %i.a, i64 %i.ds ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep365) ]
  %i.dt = getelementptr i8, ptr %next.gep365, i64 16
  store <2 x ptr> %broadcast.splat362, ptr %next.gep365, align 8, !tbaa !287
  store <2 x ptr> %broadcast.splat362, ptr %i.dt, align 8, !tbaa !287
  %index.next369 = add nuw i64 %index364, 4       ; 2 uses
  %i.du = icmp eq i64 %index.next369, %n.vec360
  br i1 %i.du, label %middle.block370, label %vector.body363, !llvm.loop !5140

middle.block370:                                  ; preds = %vector.body363
  %cmp.n371 = icmp eq i64 %i.da, %n.vec360
  br i1 %cmp.n371, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit150, label %.lr.ph.i.i219.preheader

.lr.ph.i.i219.preheader:                          ; preds = %.lr.ph.preheader.i.i217, %middle.block370
  %.017.i.i220.ph = phi i64 [ %i.da, %.lr.ph.preheader.i.i217 ], [ %i.dp, %middle.block370 ]
  %.01416.i.i221.ph = phi ptr [ %i.a, %.lr.ph.preheader.i.i217 ], [ %i.dr, %middle.block370 ]
  br label %.lr.ph.i.i219

.lr.ph.i.i219:                                    ; preds = %.lr.ph.i.i219.preheader, %.lr.ph.i.i219
  %.017.i.i220 = phi i64 [ %i.dv, %.lr.ph.i.i219 ], [ %.017.i.i220.ph, %.lr.ph.i.i219.preheader ]
  %.01416.i.i221 = phi ptr [ %i.dw, %.lr.ph.i.i219 ], [ %.01416.i.i221.ph, %.lr.ph.i.i219.preheader ] ; 3 uses
  %i.dv = add i64 %.017.i.i220, -1                ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i221) ]
  store ptr %.pre.i.i218, ptr %.01416.i.i221, align 8, !tbaa !287
  %i.dw = getelementptr inbounds nuw i8, ptr %.01416.i.i221, i64 8
  %.not.i.i222 = icmp eq i64 %i.dv, 0
  br i1 %.not.i.i222, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit150, label %.lr.ph.i.i219, !llvm.loop !5141

_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit150.sink.split: ; preds = %bb.t, %bb.o, %bb.h, %bb.f
  %.sink = phi ptr [ %i.ad, %bb.h ], [ %i.aw, %bb.o ], [ %i.aa, %bb.f ], [ %i.ce, %bb.t ]
  %i.dx = ptrtoint ptr %i.a to i64
  %i.dy = sub i64 %i.dx, %i.b
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.sink, ptr nonnull align 1 %3, i64 %i.dy, i1 false)
  br label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit150

_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit150: ; preds = %scalar.ph329, %.lr.ph.i.i219, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit150.sink.split, %middle.block339, %middle.block370, %bb.n, %bb.o, %bb.t, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit187, %_ZN5boost9container25move_backward_overlappingIPPNS0_20stable_vector_detail9node_baseIPvEEEET_S8_S8_S8_.exit, %bb.e, %bb.d, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_NS0_3dtl21insert_n_copies_proxyIS8_EEEEvT0_mSD_SD_mT1_RT_(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr %5, ptr noundef nonnull align 1 dereferenceable(1) %6) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds [8 x i8], ptr %0, i64 %1 ; 16 uses
  %i.b = add i64 %4, %1                           ; 2 uses
  %i.c = getelementptr inbounds [8 x i8], ptr %2, i64 %i.b ; 5 uses
  %i.d = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.e = ptrtoint ptr %3 to i64                   ; 5 uses
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = ptrtoint ptr %i.c to i64
  %i.i = sub i64 %i.h, %i.d                       ; 3 uses
  %i.j = ashr exact i64 %i.i, 3                   ; 6 uses
  %i.k = add i64 %i.g, %4                         ; 4 uses
  %.not = icmp ult i64 %i.j, %i.k
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = sub i64 0, %i.k
  %i.m = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.l ; 4 uses
  %.not15.i.i = icmp eq i64 %4, 0
  br i1 %.not15.i.i, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS8_EEvRS9_T_m.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  %.pre.i.i = load ptr, ptr %5, align 8, !tbaa !287 ; 2 uses
  %min.iters.check = icmp ult i64 %4, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %n.vec = and i64 %4, -4                         ; 3 uses
  %i.n = and i64 %4, 3
  %i.o = shl i64 %n.vec, 3
  %i.p = getelementptr i8, ptr %i.m, i64 %i.o
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %.pre.i.i, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.q = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.m, i64 %i.q ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep) ]
  %i.r = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %broadcast.splat, ptr %next.gep, align 8, !tbaa !287
  store <2 x ptr> %broadcast.splat, ptr %i.r, align 8, !tbaa !287
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !5142

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS8_EEvRS9_T_m.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block
  %.017.i.i.ph = phi i64 [ %4, %.lr.ph.preheader.i.i ], [ %i.n, %middle.block ]
  %.01416.i.i.ph = phi ptr [ %i.m, %.lr.ph.preheader.i.i ], [ %i.p, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.017.i.i = phi i64 [ %i.t, %.lr.ph.i.i ], [ %.017.i.i.ph, %.lr.ph.i.i.preheader ]
  %.01416.i.i = phi ptr [ %i.u, %.lr.ph.i.i ], [ %.01416.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.t = add i64 %.017.i.i, -1                    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i) ]
  store ptr %.pre.i.i, ptr %.01416.i.i, align 8, !tbaa !287
  %i.u = getelementptr inbounds nuw i8, ptr %.01416.i.i, i64 8
  %.not.i.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS8_EEvRS9_T_m.exit, label %.lr.ph.i.i, !llvm.loop !5143

_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS8_EEvRS9_T_m.exit: ; preds = %.lr.ph.i.i, %middle.block, %bb.b
  %i.v = icmp ne ptr %3, %i.a
  %i.w = icmp ne ptr %2, null                     ; 2 uses
  %i.x = icmp ne ptr %3, null
  %i.y = and i1 %i.v, %i.x
  %spec.select.i.i = and i1 %i.y, %i.w
  br i1 %spec.select.i.i, label %bb.c, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit, !prof !220

bb.c:                                             ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS8_EEvRS9_T_m.exit
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.z, ptr nonnull align 8 %3, i64 %i.f, i1 false)
  br label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit

_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit: ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS8_EEvRS9_T_m.exit, %bb.c
  %.not98 = icmp ult i64 %i.j, %i.b
  br i1 %.not98, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit
  %i.aa = icmp ne ptr %0, %3
  %i.ab = icmp ne ptr %0, null
  %i.ac = and i1 %i.aa, %i.ab
  %spec.select.i.i100 = and i1 %i.ac, %i.w
  br i1 %spec.select.i.i100, label %bb.e, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit102, !prof !220

bb.e:                                             ; preds = %bb.d
  %i.ad = ptrtoint ptr %0 to i64
  %i.ae = sub i64 %i.e, %i.ad
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %2, ptr nonnull align 8 %0, i64 %i.ae, i1 false)
  br label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit102

bb.f:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit
  %i.af = sub nuw i64 %i.j, %i.k                  ; 2 uses
  %i.ag = sub i64 0, %i.af
  %i.ah = getelementptr inbounds [8 x i8], ptr %3, i64 %i.ag ; 4 uses
  %.not.i.i103 = icmp ne i64 %i.j, %i.k
  %i.ai = icmp ne ptr %0, null
  %or.cond = and i1 %i.ai, %.not.i.i103
  br i1 %or.cond, label %bb.g, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_mSD_.exit, !prof !325

bb.g:                                             ; preds = %bb.f
  %i.aj = shl i64 %i.af, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.a, ptr nonnull align 1 %i.ah, i64 %i.aj, i1 false)
  br label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_mSD_.exit

_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_mSD_.exit: ; preds = %bb.g, %bb.f
  %.not.i = icmp eq ptr %i.ah, %i.a
  %.not.i.i106 = icmp eq ptr %i.ah, %0
  %or.cond147 = or i1 %.not.i, %.not.i.i106
  br i1 %or.cond147, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit102, label %bb.h, !prof !272

bb.h:                                             ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_mSD_.exit
  %i.ak = ptrtoint ptr %0 to i64
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = sub i64 %i.al, %i.ak                    ; 2 uses
  %i.an = ashr exact i64 %i.am, 3
  %i.ao = sub nsw i64 0, %i.an
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ao
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ap, ptr align 8 %0, i64 %i.am, i1 false)
  br label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit102

bb.i:                                             ; preds = %bb.a
  %i.aq = icmp ugt i64 %i.j, %i.g
  br i1 %i.aq, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ar = icmp ne ptr %3, %i.a
  %i.as = icmp ne ptr %2, null
  %or.cond.i.i107 = and i1 %i.as, %i.ar
  %i.at = icmp ne ptr %3, null
  %spec.select.i.i108 = and i1 %i.at, %or.cond.i.i107
  br i1 %spec.select.i.i108, label %bb.k, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit110, !prof !220

bb.k:                                             ; preds = %bb.j
  %i.au = sub nsw i64 0, %i.g
  %i.av = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.au
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.av, ptr nonnull align 8 %3, i64 %i.f, i1 false)
  br label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit110

_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit110: ; preds = %bb.j, %bb.k
  %i.aw = sub nuw nsw i64 %i.j, %i.g              ; 7 uses
  %i.ax = sub i64 %4, %i.aw                       ; 7 uses
  %i.ay = sub i64 0, %i.ax
  %i.az = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ay ; 5 uses
  %.not5.i = icmp eq i64 %i.ax, 0
  br i1 %.not5.i, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit110
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !287 ; 2 uses
  %min.iters.check188 = icmp ult i64 %i.ax, 4
  br i1 %min.iters.check188, label %scalar.ph187.preheader, label %vector.ph189

vector.ph189:                                     ; preds = %.lr.ph.i
  %n.vec190 = and i64 %i.ax, -4                   ; 3 uses
  %i.ba = and i64 %i.ax, 3
  %i.bb = shl i64 %n.vec190, 3
  %i.bc = getelementptr i8, ptr %i.az, i64 %i.bb
  %broadcast.splatinsert191 = insertelement <2 x ptr> poison, ptr %.pre.i, i64 0
  %broadcast.splat192 = shufflevector <2 x ptr> %broadcast.splatinsert191, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body193

vector.body193:                                   ; preds = %vector.body193, %vector.ph189
  %index194 = phi i64 [ 0, %vector.ph189 ], [ %index.next196, %vector.body193 ] ; 2 uses
  %i.bd = shl i64 %index194, 3
  %next.gep195 = getelementptr i8, ptr %i.az, i64 %i.bd ; 2 uses
  %i.be = getelementptr i8, ptr %next.gep195, i64 16
  store <2 x ptr> %broadcast.splat192, ptr %next.gep195, align 8, !tbaa !287
  store <2 x ptr> %broadcast.splat192, ptr %i.be, align 8, !tbaa !287
  %index.next196 = add nuw i64 %index194, 4       ; 2 uses
  %i.bf = icmp eq i64 %index.next196, %n.vec190
  br i1 %i.bf, label %middle.block197, label %vector.body193, !llvm.loop !5144

middle.block197:                                  ; preds = %vector.body193
  %cmp.n198 = icmp eq i64 %i.ax, %n.vec190
  br i1 %cmp.n198, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit, label %scalar.ph187.preheader

scalar.ph187.preheader:                           ; preds = %.lr.ph.i, %middle.block197
  %.07.i.ph = phi i64 [ %i.ax, %.lr.ph.i ], [ %i.ba, %middle.block197 ]
  %.046.i.ph = phi ptr [ %i.az, %.lr.ph.i ], [ %i.bc, %middle.block197 ]
  br label %scalar.ph187

scalar.ph187:                                     ; preds = %scalar.ph187.preheader, %scalar.ph187
  %.07.i = phi i64 [ %i.bg, %scalar.ph187 ], [ %.07.i.ph, %scalar.ph187.preheader ]
  %.046.i = phi ptr [ %i.bh, %scalar.ph187 ], [ %.046.i.ph, %scalar.ph187.preheader ] ; 2 uses
  %i.bg = add i64 %.07.i, -1                      ; 2 uses
  store ptr %.pre.i, ptr %.046.i, align 8, !tbaa !287
  %i.bh = getelementptr inbounds nuw i8, ptr %.046.i, i64 8
  %.not.i111 = icmp eq i64 %i.bg, 0
  br i1 %.not.i111, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit, label %scalar.ph187, !llvm.loop !5145

_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit: ; preds = %scalar.ph187, %middle.block197, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit110
  %.not15.i.i112 = icmp eq i64 %i.aw, 0
  br i1 %.not15.i.i112, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS8_EEvRS9_T_m.exit119, label %.lr.ph.preheader.i.i113

.lr.ph.preheader.i.i113:                          ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit
  %.pre.i.i114 = load ptr, ptr %5, align 8, !tbaa !287 ; 2 uses
  %min.iters.check202 = icmp ult i64 %i.aw, 4
  br i1 %min.iters.check202, label %.lr.ph.i.i115.preheader, label %vector.ph203

vector.ph203:                                     ; preds = %.lr.ph.preheader.i.i113
  %n.vec204 = and i64 %i.aw, -4                   ; 3 uses
  %i.bi = and i64 %i.aw, 3
  %i.bj = shl i64 %n.vec204, 3
  %i.bk = getelementptr i8, ptr %i.a, i64 %i.bj
  %broadcast.splatinsert205 = insertelement <2 x ptr> poison, ptr %.pre.i.i114, i64 0
  %broadcast.splat206 = shufflevector <2 x ptr> %broadcast.splatinsert205, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body207

vector.body207:                                   ; preds = %vector.body207, %vector.ph203
  %index208 = phi i64 [ 0, %vector.ph203 ], [ %index.next213, %vector.body207 ] ; 2 uses
  %i.bl = shl i64 %index208, 3
  %next.gep209 = getelementptr i8, ptr %i.a, i64 %i.bl ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep209) ]
  %i.bm = getelementptr i8, ptr %next.gep209, i64 16
  store <2 x ptr> %broadcast.splat206, ptr %next.gep209, align 8, !tbaa !287
  store <2 x ptr> %broadcast.splat206, ptr %i.bm, align 8, !tbaa !287
  %index.next213 = add nuw i64 %index208, 4       ; 2 uses
  %i.bn = icmp eq i64 %index.next213, %n.vec204
  br i1 %i.bn, label %middle.block214, label %vector.body207, !llvm.loop !5146

middle.block214:                                  ; preds = %vector.body207
  %cmp.n215 = icmp eq i64 %i.aw, %n.vec204
  br i1 %cmp.n215, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS8_EEvRS9_T_m.exit119, label %.lr.ph.i.i115.preheader

.lr.ph.i.i115.preheader:                          ; preds = %.lr.ph.preheader.i.i113, %middle.block214
  %.017.i.i116.ph = phi i64 [ %i.aw, %.lr.ph.preheader.i.i113 ], [ %i.bi, %middle.block214 ]
  %.01416.i.i117.ph = phi ptr [ %i.a, %.lr.ph.preheader.i.i113 ], [ %i.bk, %middle.block214 ]
  br label %.lr.ph.i.i115

.lr.ph.i.i115:                                    ; preds = %.lr.ph.i.i115.preheader, %.lr.ph.i.i115
  %.017.i.i116 = phi i64 [ %i.bo, %.lr.ph.i.i115 ], [ %.017.i.i116.ph, %.lr.ph.i.i115.preheader ]
  %.01416.i.i117 = phi ptr [ %i.bp, %.lr.ph.i.i115 ], [ %.01416.i.i117.ph, %.lr.ph.i.i115.preheader ] ; 3 uses
  %i.bo = add i64 %.017.i.i116, -1                ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i117) ]
  store ptr %.pre.i.i114, ptr %.01416.i.i117, align 8, !tbaa !287
  %i.bp = getelementptr inbounds nuw i8, ptr %.01416.i.i117, i64 8
  %.not.i.i118 = icmp eq i64 %i.bo, 0
  br i1 %.not.i.i118, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS8_EEvRS9_T_m.exit119, label %.lr.ph.i.i115, !llvm.loop !5147

_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS8_EEvRS9_T_m.exit119: ; preds = %.lr.ph.i.i115, %middle.block214, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit
  %.not.i120 = icmp eq ptr %3, %i.az
  %.not.i.i121 = icmp eq ptr %3, %0
  %or.cond148 = or i1 %.not.i.i121, %.not.i120
  br i1 %or.cond148, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit102, label %bb.l, !prof !272

bb.l:                                             ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS8_EEvRS9_T_m.exit119
  %i.bq = ptrtoint ptr %0 to i64
  %i.br = sub i64 %i.e, %i.bq                     ; 2 uses
  %i.bs = ashr exact i64 %i.br, 3
  %i.bt = sub nsw i64 0, %i.bs
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.bt
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bu, ptr align 8 %0, i64 %i.br, i1 false)
  br label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit102

bb.m:                                             ; preds = %bb.i
  %.idx = sub i64 0, %i.i
  %i.bv = getelementptr inbounds i8, ptr %i.a, i64 %.idx ; 3 uses
  %.not.i.i123 = icmp ne ptr %i.c, %i.a
  %i.bw = icmp ne ptr %0, null
  %or.cond149 = and i1 %i.bw, %.not.i.i123
  br i1 %or.cond149, label %bb.n, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_mSD_.exit126, !prof !325

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.a, ptr nonnull align 1 %i.bv, i64 %i.i, i1 false)
  br label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_mSD_.exit126

_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_mSD_.exit126: ; preds = %bb.n, %bb.m
  %.not.i127 = icmp eq ptr %i.c, %i.a
  br i1 %.not.i127, label %_ZN5boost9container25move_backward_overlappingIPPNS0_20stable_vector_detail9node_baseIPvEEEET_S8_S8_S8_.exit129, label %bb.o

bb.o:                                             ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_mSD_.exit126
  %.not.i.i128 = icmp eq ptr %i.bv, %3
  br i1 %.not.i.i128, label %_ZN5boost9container25move_backward_overlappingIPPNS0_20stable_vector_detail9node_baseIPvEEEET_S8_S8_S8_.exit129, label %bb.p, !prof !225

bb.p:                                             ; preds = %bb.o
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = sub i64 %i.bx, %i.e                     ; 2 uses
  %i.bz = ashr exact i64 %i.by, 3
  %i.ca = sub nsw i64 0, %i.bz
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ca ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.cb, ptr align 8 %3, i64 %i.by, i1 false)
  br label %_ZN5boost9container25move_backward_overlappingIPPNS0_20stable_vector_detail9node_baseIPvEEEET_S8_S8_S8_.exit129

_ZN5boost9container25move_backward_overlappingIPPNS0_20stable_vector_detail9node_baseIPvEEEET_S8_S8_S8_.exit129: ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_mSD_.exit126, %bb.o, %bb.p
  %i.cc = phi ptr [ %3, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_mSD_.exit126 ], [ %i.a, %bb.o ], [ %i.cb, %bb.p ]
  %i.cd = sub i64 0, %4
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %i.cd ; 5 uses
  %.not5.i130 = icmp eq i64 %4, 0
  br i1 %.not5.i130, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit136, label %.lr.ph.i131

.lr.ph.i131:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPPNS0_20stable_vector_detail9node_baseIPvEEEET_S8_S8_S8_.exit129
  %.pre.i132 = load ptr, ptr %5, align 8, !tbaa !287 ; 2 uses
  %min.iters.check174 = icmp ult i64 %4, 4
  br i1 %min.iters.check174, label %scalar.ph173.preheader, label %vector.ph175

vector.ph175:                                     ; preds = %.lr.ph.i131
  %n.vec176 = and i64 %4, -4                      ; 3 uses
  %i.cf = and i64 %4, 3
  %i.cg = shl i64 %n.vec176, 3
  %i.ch = getelementptr i8, ptr %i.ce, i64 %i.cg
  %broadcast.splatinsert177 = insertelement <2 x ptr> poison, ptr %.pre.i132, i64 0
  %broadcast.splat178 = shufflevector <2 x ptr> %broadcast.splatinsert177, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body179

vector.body179:                                   ; preds = %vector.body179, %vector.ph175
  %index180 = phi i64 [ 0, %vector.ph175 ], [ %index.next182, %vector.body179 ] ; 2 uses
  %i.ci = shl i64 %index180, 3
  %next.gep181 = getelementptr i8, ptr %i.ce, i64 %i.ci ; 2 uses
  %i.cj = getelementptr i8, ptr %next.gep181, i64 16
  store <2 x ptr> %broadcast.splat178, ptr %next.gep181, align 8, !tbaa !287
  store <2 x ptr> %broadcast.splat178, ptr %i.cj, align 8, !tbaa !287
  %index.next182 = add nuw i64 %index180, 4       ; 2 uses
  %i.ck = icmp eq i64 %index.next182, %n.vec176
  br i1 %i.ck, label %middle.block183, label %vector.body179, !llvm.loop !5148

middle.block183:                                  ; preds = %vector.body179
  %cmp.n184 = icmp eq i64 %4, %n.vec176
  br i1 %cmp.n184, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit136, label %scalar.ph173.preheader

scalar.ph173.preheader:                           ; preds = %.lr.ph.i131, %middle.block183
  %.07.i133.ph = phi i64 [ %4, %.lr.ph.i131 ], [ %i.cf, %middle.block183 ]
  %.046.i134.ph = phi ptr [ %i.ce, %.lr.ph.i131 ], [ %i.ch, %middle.block183 ]
  br label %scalar.ph173

scalar.ph173:                                     ; preds = %scalar.ph173.preheader, %scalar.ph173
  %.07.i133 = phi i64 [ %i.cl, %scalar.ph173 ], [ %.07.i133.ph, %scalar.ph173.preheader ]
  %.046.i134 = phi ptr [ %i.cm, %scalar.ph173 ], [ %.046.i134.ph, %scalar.ph173.preheader ] ; 2 uses
  %i.cl = add i64 %.07.i133, -1                   ; 2 uses
  store ptr %.pre.i132, ptr %.046.i134, align 8, !tbaa !287
  %i.cm = getelementptr inbounds nuw i8, ptr %.046.i134, i64 8
  %.not.i135 = icmp eq i64 %i.cl, 0
  br i1 %.not.i135, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit136, label %scalar.ph173, !llvm.loop !5149

_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit136: ; preds = %scalar.ph173, %middle.block183, %_ZN5boost9container25move_backward_overlappingIPPNS0_20stable_vector_detail9node_baseIPvEEEET_S8_S8_S8_.exit129
  %.not.i137 = icmp eq ptr %3, %i.ce
  %.not.i.i138 = icmp eq ptr %3, %0
  %or.cond150 = or i1 %.not.i.i138, %.not.i137
  br i1 %or.cond150, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit102, label %bb.q, !prof !272

bb.q:                                             ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit136
  %i.cn = ptrtoint ptr %0 to i64
  %i.co = sub i64 %i.e, %i.cn                     ; 2 uses
  %i.cp = ashr exact i64 %i.co, 3
  %i.cq = sub nsw i64 0, %i.cp
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.ce, i64 %i.cq
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.cr, ptr align 8 %0, i64 %i.co, i1 false)
  br label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit102

_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit102: ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS8_EEvRS9_T_m.exit119, %bb.l, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit136, %bb.q, %bb.d, %bb.e, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorIPNS0_20stable_vector_detail9node_baseIPvEELj2ELj0EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_mSD_.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib16heap_sort_helperINS_9container22stable_vector_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEE4sortES9_S9_SG_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::pair.20", align 8     ; 5 uses
  %3 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %4 = alloca %"struct.std::pair.20", align 8     ; 6 uses
  %5 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !292    ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !292    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !289
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !289  ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3                   ; 3 uses
  %i.i = icmp ugt i64 %i.h, 1
  br i1 %i.i, label %.split.i, label %_ZN5boost7movelib16heap_sort_helperINS_9container22stable_vector_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEE9make_heapES9_S9_SG_.exit

.split.i:                                         ; preds = %bb.a
  %i.j = lshr i64 %i.h, 1
  %i.k = add nsw i64 %i.j, -1                     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %.not.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i.i, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit.i, label %bb.b

bb.b:                                             ; preds = %.split.i
  %i.l = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !287, !noalias !5156
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit.i

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit.i: ; preds = %bb.b, %.split.i
  %.sroa.0.1.i = phi ptr [ %i.a, %.split.i ], [ %i.m, %bb.b ]
  %.pre.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.n = add i32 %.pre.i, 2
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit10.i

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit10.i: ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit10.i.backedge, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit.i
  %i.o = phi i32 [ %i.n, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit.i ], [ %i.s, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit10.i.backedge ]
  %.sroa.0.0.i = phi ptr [ %.sroa.0.1.i, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit.i ], [ %.sroa.0.0.i.be, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit10.i.backedge ] ; 2 uses
  %.0.i = phi i64 [ %i.k, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit.i ], [ %i.u, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit10.i.backedge ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 12
  %i.r = load <2 x i32>, ptr %i.p, align 4, !tbaa !254
  store i32 0, ptr %i.p, align 4, !tbaa !254
  store <2 x i32> %i.r, ptr %4, align 8, !tbaa !254
  store i32 0, ptr %i.q, align 4, !tbaa !254
  store i32 %i.o, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  store ptr %i.a, ptr %5, align 8, !tbaa !292
  invoke void @_ZN5boost7movelib16heap_sort_helperINS_9container22stable_vector_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEE11adjust_heapES9_mmRS7_SG_(ptr noundef nonnull align 8 dead_on_return %5, i64 noundef %.0.i, i64 noundef %i.h, ptr noundef nonnull align 4 dereferenceable(8) %4)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit10.i
  %i.s = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255 ; 2 uses
  %i.t = add i32 %i.s, -2
  store i32 %i.t, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %.not.i = icmp eq i64 %.0.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib16heap_sort_helperINS_9container22stable_vector_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEE9make_heapES9_S9_SG_.exit.loopexit, label %.split7.i, !llvm.loop !5152

.split7.i:                                        ; preds = %bb.c
  %i.u = add i64 %.0.i, -1                        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %.not.i.i9.i = icmp eq i64 %i.u, 0
  br i1 %.not.i.i9.i, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit10.i.backedge, label %bb.d

bb.d:                                             ; preds = %.split7.i
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !289, !noalias !5157
  %i.w = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.u
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !287, !noalias !5157
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit10.i.backedge

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit10.i.backedge: ; preds = %bb.d, %.split7.i
  %.sroa.0.0.i.be = phi ptr [ %i.x, %bb.d ], [ %i.a, %.split7.i ]
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit10.i, !llvm.loop !5152

common.resume:                                    ; preds = %bb.h, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.y, %bb.e ], [ %i.ba, %bb.h ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit10.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.aa = add i32 %i.z, -2
  store i32 %i.aa, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %common.resume
end_hunk_6
