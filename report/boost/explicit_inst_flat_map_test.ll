Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/explicit_inst_flat_map_test?download=true
inline.NumInlined: 24578
inline.NumDeleted: 2911
loop-unroll.NumRuntimeUnrolled: 169
loop-unroll.NumUnrolled: 177
begin_hunk_0_@_ZN5boost9container6vectorISt4pairI5emptyS3_EvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS4_EEJS4_EEEEENS0_12vec_iteratorIPS4_Lb0EEESD_mT_NS_11move_detail17integral_constantIjLj1EEE
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
  %i.t = load ptr, ptr %1, align 8, !tbaa !224    ; 6 uses
  %i.u = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v                       ; 3 uses
  %i.x = load i64, ptr %i.d, align 8, !tbaa !223  ; 2 uses
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.x ; 2 uses
  %i.z = icmp ne ptr %i.t, %2
  %i.aa = icmp ne ptr %i.t, null                  ; 2 uses
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
  br i1 %i.aa, label %bb.i, label %_ZN5boost9container6vectorISt4pairI5emptyS3_EvvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS4_EEJS4_EEEEEvPS4_mSC_mT_.exit

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
  %i.t = load ptr, ptr %1, align 8, !tbaa !224    ; 6 uses
  %i.u = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v                       ; 3 uses
  %i.x = load i64, ptr %i.d, align 8, !tbaa !223  ; 2 uses
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.x ; 2 uses
  %i.z = icmp ne ptr %i.t, %2
  %i.aa = icmp ne ptr %i.t, null                  ; 2 uses
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
  br i1 %spec.select.i.i18.i.i, label %bb.h, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairI5emptyS4_EEEPS5_S7_NS0_3dtl20insert_emplace_proxyIS6_JRKS5_EEEEEvRT_T0_SF_SF_T1_mT2_.exit.i, !prof !220

bb.h:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairI5emptyS4_EEEPS5_S7_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_SA_SB_.exit.i.i
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %.0.i.i.i.i, i64 %3
  %i.af = ptrtoint ptr %i.y to i64
  %i.ag = sub i64 %i.af, %i.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ae, ptr nonnull align 1 %2, i64 %i.ag, i1 false)
  br label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairI5emptyS4_EEEPS5_S7_NS0_3dtl20insert_emplace_proxyIS6_JRKS5_EEEEEvRT_T0_SF_SF_T1_mT2_.exit.i

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairI5emptyS4_EEEPS5_S7_NS0_3dtl20insert_emplace_proxyIS6_JRKS5_EEEEEvRT_T0_SF_SF_T1_mT2_.exit.i: ; preds = %bb.h, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairI5emptyS4_EEEPS5_S7_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_SA_SB_.exit.i.i
  br i1 %i.aa, label %bb.i, label %_ZN5boost9container6vectorISt4pairI5emptyS3_EvvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS4_EEJRKS4_EEEEEvPS4_mSE_mT_.exit

bb.i:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairI5emptyS4_EEEPS5_S7_NS0_3dtl20insert_emplace_proxyIS6_JRKS5_EEEEEvRT_T0_SF_SF_T1_mT2_.exit.i
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !218
  %i.ai = shl i64 %i.ah, 1
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.ai) #23
  %.pre = load i64, ptr %i.d, align 8, !tbaa !221
  br label %_ZN5boost9container6vectorISt4pairI5emptyS3_EvvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS4_EEJRKS4_EEEEEvPS4_mSE_mT_.exit

_ZN5boost9container6vectorISt4pairI5emptyS3_EvvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS4_EEJRKS4_EEEEEvPS4_mSE_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairI5emptyS4_EEEPS5_S7_NS0_3dtl20insert_emplace_proxyIS6_JRKS5_EEEEEvRT_T0_SF_SF_T1_mT2_.exit.i, %bb.i
  %i.aj = phi i64 [ %i.x, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairI5emptyS4_EEEPS5_S7_NS0_3dtl20insert_emplace_proxyIS6_JRKS5_EEEEEvRT_T0_SF_SF_T1_mT2_.exit.i ], [ %.pre, %bb.i ]
  store ptr %i.s, ptr %1, align 8, !tbaa !224
  %i.ak = add i64 %i.aj, %3
  store i64 %i.ak, ptr %i.d, align 8, !tbaa !221
  store i64 %i.p, ptr %i.a, align 8, !tbaa !226
  %i.al = getelementptr inbounds i8, ptr %i.s, i64 %i.w
  store ptr %i.al, ptr %0, align 8, !tbaa !231
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive19adaptive_merge_implIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvT_NS0_9iter_sizeISH_E4typeESK_T0_RT1_(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !247  ; 5 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %1, i64 %2)
  %.not = icmp ult i64 %i.c, %.sroa.speculated
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.idx = shl i64 %1, 1                           ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 4 uses
  %.not.i.i = icmp eq i64 %1, 0
  %.not37.i.i = icmp eq i64 %2, 0
  %or.cond.i.i = or i1 %.not.i.i, %.not37.i.i
  br i1 %or.cond.i.i, label %_ZN5boost7movelib14buffered_mergeIPSt4pairI5emptyS3_ENS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_SG_SG_T0_RT1_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = ptrtoint ptr %i.d to i64
  %.not38.i.i = icmp ugt i64 %1, %2
  br i1 %.not38.i.i, label %.lr.ph.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !246  ; 2 uses
  %.not.i.i.i = icmp ugt i64 %1, %i.g
  br i1 %.not.i.i.i, label %iter.check, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE11move_assignIS5_EEvT_m.exit.i.i

iter.check:                                       ; preds = %bb.d
  %.idx.i.i.i = shl i64 %i.g, 1                   ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %0, i64 %.idx.i.i.i ; 5 uses
  %i.i = load ptr, ptr %3, align 8, !tbaa !245    ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 %.idx.i.i.i ; 5 uses
  %i.k = add i64 %.idx, -2
  %i.l = sub i64 %i.k, %.idx.i.i.i                ; 3 uses
  %i.m = lshr exact i64 %i.l, 1
  %i.n = add nuw i64 %i.m, 1                      ; 5 uses
  %min.iters.check = icmp ult i64 %i.l, 6
  %4 = ptrtoaddr ptr %i.i to i64
  %i.o = ptrtoaddr ptr %0 to i64
  %i.p = sub i64 %i.o, %4
  %diff.check = icmp ugt i64 %i.p, -32
  %or.cond180 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond180, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check131 = icmp ult i64 %i.l, 30
  br i1 %min.iters.check131, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.q = and i64 %i.n, 12
  %n.vec = and i64 %i.n, -16                      ; 4 uses
  %i.r = shl i64 %n.vec, 1                        ; 2 uses
  %i.s = getelementptr i8, ptr %i.h, i64 %i.r
  %i.t = getelementptr i8, ptr %i.j, i64 %i.r
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.u = shl i64 %index, 1                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.h, i64 %i.u ; 2 uses
  %next.gep132 = getelementptr i8, ptr %i.j, i64 %i.u ; 2 uses
  %i.v = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep, align 1
  %wide.load133 = load <8 x i16>, ptr %i.v, align 1
  %i.w = getelementptr i8, ptr %next.gep132, i64 16
  store <8 x i16> %wide.load, ptr %next.gep132, align 1
  store <8 x i16> %wide.load133, ptr %i.w, align 1
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !3286

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE11move_assignIS5_EEvT_m.exit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.q, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph, !prof !326

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec135 = and i64 %i.n, -4                    ; 3 uses
  %i.y = shl i64 %n.vec135, 1                     ; 2 uses
  %i.z = getelementptr i8, ptr %i.h, i64 %i.y
  %i.aa = getelementptr i8, ptr %i.j, i64 %i.y
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index136 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next140, %vec.epilog.vector.body ] ; 2 uses
  %i.ab = shl i64 %index136, 1                    ; 2 uses
  %next.gep137 = getelementptr i8, ptr %i.h, i64 %i.ab
  %next.gep138 = getelementptr i8, ptr %i.j, i64 %i.ab
  %wide.load139 = load <4 x i16>, ptr %next.gep137, align 1
  store <4 x i16> %wide.load139, ptr %next.gep138, align 1
  %index.next140 = add nuw i64 %index136, 4       ; 2 uses
  %i.ac = icmp eq i64 %index.next140, %n.vec135
  br i1 %i.ac, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3287

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n141 = icmp eq i64 %i.n, %n.vec135
  br i1 %cmp.n141, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE11move_assignIS5_EEvT_m.exit.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.h, %iter.check ], [ %i.s, %vec.epilog.iter.check ], [ %i.z, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.j, %iter.check ], [ %i.t, %vec.epilog.iter.check ], [ %i.aa, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %i.ad = load i16, ptr %.012.i.i.i.i, align 1
  store i16 %i.ad, ptr %.0911.i.i.i.i, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 2 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 2
  %.not.i.i.i.i = icmp eq ptr %i.ae, %i.d
  br i1 %.not.i.i.i.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE11move_assignIS5_EEvT_m.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3288

_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE11move_assignIS5_EEvT_m.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %vec.epilog.middle.block, %bb.d
  store i64 %1, ptr %i.f, align 8, !tbaa !246
  br label %_ZN5boost7movelib14buffered_mergeIPSt4pairI5emptyS3_ENS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_SG_SG_T0_RT1_.exit

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.017.i.i.i = phi i64 [ %i.aj, %.lr.ph.i.i.i ], [ %2, %bb.c ] ; 3 uses
  %.01316.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i ], [ %i.d, %bb.c ] ; 2 uses
  %i.ag = lshr i64 %.017.i.i.i, 1                 ; 2 uses
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %.01316.i.i.i, i64 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 2 ; 2 uses
  %.neg.i.i.i = xor i64 %i.ag, -1
  %i.aj = add i64 %.017.i.i.i, %.neg.i.i.i        ; 2 uses
  %.not.i39.i.i = icmp eq i64 %i.aj, 0
  br i1 %.not.i39.i.i, label %_ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !34

_ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %.01316.i.i.i146.le = ptrtoaddr ptr %.01316.i.i.i to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.ak, %i.e
  %i.am = ashr exact i64 %i.al, 1                 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !246 ; 2 uses
  %.not.i40.i.i = icmp ugt i64 %i.am, %i.ao
  br i1 %.not.i40.i.i, label %iter.check163, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE11move_assignIS5_EEvT_m.exit46.i.i

iter.check163:                                    ; preds = %_ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit.i.i
  %.idx.i41.i.i = shl i64 %i.ao, 1                ; 3 uses
  %i.ap = getelementptr inbounds i8, ptr %i.d, i64 %.idx.i41.i.i ; 6 uses
  %i.aq = load ptr, ptr %3, align 8, !tbaa !245   ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 %.idx.i41.i.i ; 6 uses
  %i.as = add i64 %.idx.i41.i.i, %i.a
  %i.at = add i64 %i.as, %.idx
  %i.au = sub i64 %.01316.i.i.i146.le, %i.at
  %i.av = and i64 %.017.i.i.i, -2
  %i.aw = add i64 %i.au, %i.av                    ; 3 uses
  %i.ax = lshr i64 %i.aw, 1
  %i.ay = add nuw i64 %i.ax, 1                    ; 5 uses
  %min.iters.check147 = icmp ult i64 %i.aw, 6
  br i1 %min.iters.check147, label %.lr.ph.i.i42.i.i.preheader, label %vector.memcheck144

vector.memcheck144:                               ; preds = %iter.check163
  %i.az = ptrtoaddr ptr %i.aq to i64
  %5 = ptrtoaddr ptr %0 to i64
  %i.ba = add i64 %.idx, %5
  %i.bb = sub i64 %i.ba, %i.az
  %diff.check145 = icmp ugt i64 %i.bb, -32
  br i1 %diff.check145, label %.lr.ph.i.i42.i.i.preheader, label %vector.main.loop.iter.check148

vector.main.loop.iter.check148:                   ; preds = %vector.memcheck144
  %min.iters.check149 = icmp ult i64 %i.aw, 30
  br i1 %min.iters.check149, label %vec.epilog.ph167, label %vector.ph150

vector.ph150:                                     ; preds = %vector.main.loop.iter.check148
  %i.bc = and i64 %i.ay, 12
  %n.vec151 = and i64 %i.ay, -16                  ; 4 uses
  %i.bd = shl i64 %n.vec151, 1                    ; 2 uses
  %i.be = getelementptr i8, ptr %i.ap, i64 %i.bd
  %i.bf = getelementptr i8, ptr %i.ar, i64 %i.bd
  br label %vector.body152

vector.body152:                                   ; preds = %vector.ph150, %vector.body152
  %index153 = phi i64 [ 0, %vector.ph150 ], [ %index.next158, %vector.body152 ] ; 2 uses
  %i.bg = shl i64 %index153, 1                    ; 2 uses
  %next.gep154 = getelementptr i8, ptr %i.ap, i64 %i.bg ; 2 uses
  %next.gep155 = getelementptr i8, ptr %i.ar, i64 %i.bg ; 2 uses
  %i.bh = getelementptr i8, ptr %next.gep154, i64 16
  %wide.load156 = load <8 x i16>, ptr %next.gep154, align 1
  %wide.load157 = load <8 x i16>, ptr %i.bh, align 1
  %i.bi = getelementptr i8, ptr %next.gep155, i64 16
  store <8 x i16> %wide.load156, ptr %next.gep155, align 1
  store <8 x i16> %wide.load157, ptr %i.bi, align 1
  %index.next158 = add nuw i64 %index153, 16      ; 2 uses
  %i.bj = icmp eq i64 %index.next158, %n.vec151
  br i1 %i.bj, label %middle.block159, label %vector.body152, !llvm.loop !3289

middle.block159:                                  ; preds = %vector.body152
  %cmp.n160 = icmp eq i64 %i.ay, %n.vec151
  br i1 %cmp.n160, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE11move_assignIS5_EEvT_m.exit46.i.i, label %vec.epilog.iter.check165

vec.epilog.iter.check165:                         ; preds = %middle.block159
  %min.epilog.iters.check166 = icmp eq i64 %i.bc, 0
  br i1 %min.epilog.iters.check166, label %.lr.ph.i.i42.i.i.preheader, label %vec.epilog.ph167, !prof !326

vec.epilog.ph167:                                 ; preds = %vector.main.loop.iter.check148, %vec.epilog.iter.check165
  %vec.epilog.resume.val161 = phi i64 [ %n.vec151, %vec.epilog.iter.check165 ], [ 0, %vector.main.loop.iter.check148 ]
  %n.vec168 = and i64 %i.ay, -4                   ; 3 uses
  %i.bk = shl i64 %n.vec168, 1                    ; 2 uses
  %i.bl = getelementptr i8, ptr %i.ap, i64 %i.bk
  %i.bm = getelementptr i8, ptr %i.ar, i64 %i.bk
  br label %vec.epilog.vector.body169

vec.epilog.vector.body169:                        ; preds = %vec.epilog.vector.body169, %vec.epilog.ph167
  %index170 = phi i64 [ %vec.epilog.resume.val161, %vec.epilog.ph167 ], [ %index.next174, %vec.epilog.vector.body169 ] ; 2 uses
  %i.bn = shl i64 %index170, 1                    ; 2 uses
  %next.gep171 = getelementptr i8, ptr %i.ap, i64 %i.bn
  %next.gep172 = getelementptr i8, ptr %i.ar, i64 %i.bn
  %wide.load173 = load <4 x i16>, ptr %next.gep171, align 1
  store <4 x i16> %wide.load173, ptr %next.gep172, align 1
  %index.next174 = add nuw i64 %index170, 4       ; 2 uses
  %i.bo = icmp eq i64 %index.next174, %n.vec168
  br i1 %i.bo, label %vec.epilog.middle.block175, label %vec.epilog.vector.body169, !llvm.loop !3290

vec.epilog.middle.block175:                       ; preds = %vec.epilog.vector.body169
  %cmp.n176 = icmp eq i64 %i.ay, %n.vec168
  br i1 %cmp.n176, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE11move_assignIS5_EEvT_m.exit46.i.i, label %.lr.ph.i.i42.i.i.preheader

.lr.ph.i.i42.i.i.preheader:                       ; preds = %iter.check163, %vector.memcheck144, %vec.epilog.iter.check165, %vec.epilog.middle.block175
  %.012.i.i43.i.i.ph = phi ptr [ %i.ap, %iter.check163 ], [ %i.ap, %vector.memcheck144 ], [ %i.be, %vec.epilog.iter.check165 ], [ %i.bl, %vec.epilog.middle.block175 ]
  %.0911.i.i44.i.i.ph = phi ptr [ %i.ar, %iter.check163 ], [ %i.ar, %vector.memcheck144 ], [ %i.bf, %vec.epilog.iter.check165 ], [ %i.bm, %vec.epilog.middle.block175 ]
  br label %.lr.ph.i.i42.i.i

.lr.ph.i.i42.i.i:                                 ; preds = %.lr.ph.i.i42.i.i.preheader, %.lr.ph.i.i42.i.i
  %.012.i.i43.i.i = phi ptr [ %i.bq, %.lr.ph.i.i42.i.i ], [ %.012.i.i43.i.i.ph, %.lr.ph.i.i42.i.i.preheader ] ; 3 uses
  %.0911.i.i44.i.i = phi ptr [ %i.br, %.lr.ph.i.i42.i.i ], [ %.0911.i.i44.i.i.ph, %.lr.ph.i.i42.i.i.preheader ] ; 2 uses
  %i.bp = load i16, ptr %.012.i.i43.i.i, align 1
  store i16 %i.bp, ptr %.0911.i.i44.i.i, align 1
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i43.i.i, i64 2
  %i.br = getelementptr inbounds nuw i8, ptr %.0911.i.i44.i.i, i64 2
  %.not.i.i45.i.i = icmp eq ptr %.012.i.i43.i.i, %i.ah
  br i1 %.not.i.i45.i.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE11move_assignIS5_EEvT_m.exit46.i.i, label %.lr.ph.i.i42.i.i, !llvm.loop !3291

_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE11move_assignIS5_EEvT_m.exit46.i.i: ; preds = %.lr.ph.i.i42.i.i, %middle.block159, %vec.epilog.middle.block175, %_ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit.i.i
  store i64 %i.am, ptr %i.an, align 8, !tbaa !246
  br label %_ZN5boost7movelib14buffered_mergeIPSt4pairI5emptyS3_ENS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_SG_SG_T0_RT1_.exit

bb.e:                                             ; preds = %bb.a
  %i.bs = add i64 %2, %1                          ; 4 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.023.i.i = phi i32 [ 32, %bb.e ], [ %i.cg, %bb.f ]
  %.01222.i.i = phi i64 [ 0, %bb.e ], [ %.1.i.i.1, %bb.f ] ; 2 uses
  %.01321.i.i = phi i64 [ 0, %bb.e ], [ %.114.i.i.1, %bb.f ]
  %.01520.i.i = phi i64 [ %i.bs, %bb.e ], [ %i.cc, %bb.f ] ; 3 uses
  %i.bt = shl i64 %.01222.i.i, 1                  ; 2 uses
  %i.bu = tail call i64 @llvm.fshl.i64(i64 %.01321.i.i, i64 %.01520.i.i, i64 2) ; 2 uses
  %i.bv = shl i64 %.01520.i.i, 2
  %i.bw = icmp ult i64 %i.bt, %i.bu               ; 2 uses
  %.neg.i.i = xor i64 %i.bt, -1
  %i.bx = select i1 %i.bw, i64 %.neg.i.i, i64 0
  %.114.i.i = add i64 %i.bx, %i.bu
  %i.by = shl i64 %.01222.i.i, 2                  ; 2 uses
  %i.bz = add i64 %i.by, 4
  %i.ca = select i1 %i.bw, i64 %i.bz, i64 %i.by   ; 4 uses
  %i.cb = tail call i64 @llvm.fshl.i64(i64 %.114.i.i, i64 %i.bv, i64 2) ; 2 uses
  %i.cc = shl i64 %.01520.i.i, 4
  %i.cd = icmp ult i64 %i.ca, %i.cb               ; 2 uses
  %.neg.i.i.1 = xor i64 %i.ca, -1
  %i.ce = or disjoint i64 %i.ca, 2
  %i.cf = select i1 %i.cd, i64 %.neg.i.i.1, i64 0
  %.114.i.i.1 = add i64 %i.cf, %i.cb
  %.1.i.i.1 = select i1 %i.cd, i64 %i.ce, i64 %i.ca ; 2 uses
  %i.cg = add nsw i32 %.023.i.i, -2               ; 2 uses
  %.not.i.i47.1 = icmp eq i32 %i.cg, 0
  br i1 %.not.i.i47.1, label %_ZN5boost7movelib15detail_adaptive9ceil_sqrtImEET_S3_.exit, label %bb.f, !llvm.loop !35

_ZN5boost7movelib15detail_adaptive9ceil_sqrtImEET_S3_.exit: ; preds = %bb.f
  %i.ch = lshr exact i64 %.1.i.i.1, 1             ; 2 uses
  %i.ci = urem i64 %i.bs, %i.ch
  %i.cj = icmp ne i64 %i.ci, 0
  %i.ck = zext i1 %i.cj to i64
  %i.cl = add nuw i64 %i.ch, %i.ck                ; 4 uses
  %i.cm = shl i64 %i.cl, 1                        ; 2 uses
  %.not44 = icmp ugt i64 %1, %i.cm
  %.not45 = icmp ugt i64 %2, %i.cm
  %or.cond46 = and i1 %.not44, %.not45
  br i1 %or.cond46, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN5boost7movelib15detail_adaptive9ceil_sqrtImEET_S3_.exit
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %1 ; 2 uses
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %i.cn, i64 %2
  tail call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPSt4pairI5emptyS3_ENS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEEvT_SE_SE_NS0_9iter_sizeISE_E4typeESH_T0_(ptr noundef %0, ptr noundef %i.cn, ptr noundef %i.co, i64 noundef %1, i64 noundef %2)
  br label %_ZN5boost7movelib14buffered_mergeIPSt4pairI5emptyS3_ENS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_SG_SG_T0_RT1_.exit

bb.h:                                             ; preds = %_ZN5boost7movelib15detail_adaptive9ceil_sqrtImEET_S3_.exit
  %.not.i = icmp ult i64 %i.c, %i.cl
  %i.cp = select i1 %.not.i, i64 %i.cl, i64 0     ; 4 uses
  %spec.select.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 %i.cl) ; 7 uses
  %i.cq = udiv i64 %1, %spec.select.i
  %i.cr = udiv i64 %2, %spec.select.i             ; 3 uses
  %i.cs = add i64 %i.cr, %i.cq
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %.0.i.i = phi i64 [ %i.cs, %bb.h ], [ %i.cx, %bb.i ] ; 4 uses
  %i.ct = add i64 %i.cp, %.0.i.i
  %i.cu = sub i64 %1, %i.ct
  %i.cv = udiv i64 %i.cu, %spec.select.i
  %i.cw = add i64 %i.cv, %i.cr
  %.not.i.i48 = icmp ult i64 %.0.i.i, %i.cw
  %i.cx = add i64 %.0.i.i, -1
  br i1 %.not.i.i48, label %_ZN5boost7movelib15detail_adaptiveL43adaptive_merge_n_keys_without_external_keysImEET_S3_S3_S3_S3_.exit.i, label %bb.i, !llvm.loop !36

_ZN5boost7movelib15detail_adaptiveL43adaptive_merge_n_keys_without_external_keysImEET_S3_S3_S3_S3_.exit.i: ; preds = %bb.i
  %i.cy = add nuw i64 %.0.i.i, 1                  ; 2 uses
  %.not.i23.i = icmp eq i64 %i.c, 0
  br i1 %.not.i23.i, label %_ZN5boost7movelib15detail_adaptive28adaptive_merge_n_keys_intbufImNS0_13adaptive_xbufISt4pairI5emptyS5_EPS6_mEEEET_RS9_S9_S9_RT0_SA_.exit, label %_ZNK5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE25supports_aligned_trailingImEEbmm.exit.i

_ZNK5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE25supports_aligned_trailingImEEbmm.exit.i: ; preds = %_ZN5boost7movelib15detail_adaptiveL43adaptive_merge_n_keys_without_external_keysImEET_S3_S3_S3_S3_.exit.i
  %i.cz = sub i64 %1, %i.cp
  %i.da = udiv i64 %i.cz, %spec.select.i
  %i.db = add i64 %i.da, %i.cr
  %i.dc = load ptr, ptr %3, align 8, !tbaa !245   ; 2 uses
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %i.dc, i64 %spec.select.i
  %i.de = ptrtoint ptr %i.dd to i64
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %i.dc, i64 %i.c
  %i.dg = ptrtoint ptr %i.df to i64               ; 2 uses
  %i.dh = add i64 %i.de, 7
  %i.di = and i64 %i.dh, -8                       ; 2 uses
  %.not10.i.i = icmp ule i64 %i.di, %i.dg
  %i.dj = sub nuw i64 %i.dg, %i.di
  %i.dk = lshr i64 %i.dj, 3
  %i.dl = icmp uge i64 %i.dk, %i.db
  %i.dm = select i1 %.not10.i.i, i1 %i.dl, i1 false
  %cond.fr.i = freeze i1 %i.dm
  %spec.select27.i = select i1 %cond.fr.i, i64 0, i64 %i.cy
  br label %_ZN5boost7movelib15detail_adaptive28adaptive_merge_n_keys_intbufImNS0_13adaptive_xbufISt4pairI5emptyS5_EPS6_mEEEET_RS9_S9_S9_RT0_SA_.exit

_ZN5boost7movelib15detail_adaptive28adaptive_merge_n_keys_intbufImNS0_13adaptive_xbufISt4pairI5emptyS5_EPS6_mEEEET_RS9_S9_S9_RT0_SA_.exit: ; preds = %_ZN5boost7movelib15detail_adaptiveL43adaptive_merge_n_keys_without_external_keysImEET_S3_S3_S3_S3_.exit.i, %_ZNK5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE25supports_aligned_trailingImEEbmm.exit.i
  %i.dn = phi i64 [ %i.cy, %_ZN5boost7movelib15detail_adaptiveL43adaptive_merge_n_keys_without_external_keysImEET_S3_S3_S3_S3_.exit.i ], [ %spec.select27.i, %_ZNK5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE25supports_aligned_trailingImEEbmm.exit.i ] ; 2 uses
  %i.do = add i64 %i.dn, %i.cp                    ; 2 uses
  %.idx109 = shl nuw nsw i64 %1, 1                ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 %.idx109 ; 5 uses
  %i.dq = tail call noundef i64 @_ZN5boost7movelib15detail_adaptive14collect_uniqueIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEENS0_13adaptive_xbufIS5_S6_mEEEENS0_9iter_sizeIT_E4typeESI_SI_SK_T0_RT1_(ptr noundef %0, ptr noundef nonnull %i.dp, i64 noundef %i.do, ptr noundef nonnull align 8 dereferenceable(24) %3) ; 12 uses
  %i.dr = icmp ne i64 %i.dq, %i.do                ; 2 uses
  %i.ds = icmp ult i64 %i.dq, 4
  %or.cond = and i1 %i.dr, %i.ds
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN5boost7movelib15detail_adaptive28adaptive_merge_n_keys_intbufImNS0_13adaptive_xbufISt4pairI5emptyS5_EPS6_mEEEET_RS9_S9_S9_RT0_SA_.exit
  %.idx110 = shl nuw nsw i64 %i.dq, 1             ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 %.idx110
  %gepdiff = sub nsw i64 %.idx109, %.idx110
  %i.du = ashr exact i64 %gepdiff, 1
  tail call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPSt4pairI5emptyS3_ENS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEEvT_SE_SE_NS0_9iter_sizeISE_E4typeESH_T0_(ptr noundef nonnull %0, ptr noundef %i.dt, ptr noundef nonnull %i.dp, i64 noundef %i.dq, i64 noundef %i.du)
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %i.dp, i64 %2
  tail call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPSt4pairI5emptyS3_ENS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEEvT_SE_SE_NS0_9iter_sizeISE_E4typeESH_T0_(ptr noundef nonnull %0, ptr noundef nonnull %i.dp, ptr noundef nonnull %i.dv, i64 noundef %1, i64 noundef %2)
  br label %_ZN5boost7movelib14buffered_mergeIPSt4pairI5emptyS3_ENS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_SG_SG_T0_RT1_.exit

bb.k:                                             ; preds = %_ZN5boost7movelib15detail_adaptive28adaptive_merge_n_keys_intbufImNS0_13adaptive_xbufISt4pairI5emptyS5_EPS6_mEEEET_RS9_S9_S9_RT0_SA_.exit
  br i1 %i.dr, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.dw = lshr i64 %i.dq, 1                       ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN5boost7movelib15detail_adaptive26adaptive_sort_build_paramsIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEmNS0_13adaptive_xbufIS5_S6_mEEEEbT_T1_T0_RSI_SK_SK_SK_RT2_:bb.a
  %i.ah = sub i64 %i.ag, %.071
  %i.ai = udiv i64 %i.ah, %storemerge
  %.not80 = icmp ult i64 %.071, %i.ai
  br i1 %.not80, label %bb.h, label %bb.g, !llvm.loop !3377

bb.h:                                             ; preds = %bb.g
  %.not.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i, label %_ZNK5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE25supports_aligned_trailingImEEbmm.exit.thread, label %_ZNK5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE25supports_aligned_trailingImEEbmm.exit

_ZNK5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE25supports_aligned_trailingImEEbmm.exit: ; preds = %bb.h
  %i.aj = add i64 %i.ag, -1
  %i.ak = udiv i64 %i.aj, %storemerge
  %i.al = add i64 %i.ak, 1
  %i.am = load ptr, ptr %6, align 8, !tbaa !245   ; 2 uses
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %storemerge
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.ae
  %i.aq = ptrtoint ptr %i.ap to i64               ; 2 uses
  %i.ar = add i64 %i.ao, 7
  %i.as = and i64 %i.ar, -8                       ; 2 uses
  %.not10.i = icmp ule i64 %i.as, %i.aq
  %i.at = sub nuw i64 %i.aq, %i.as
  %i.au = lshr i64 %i.at, 3
  %i.av = icmp uge i64 %i.au, %i.al
  %i.aw = select i1 %.not10.i, i1 %i.av, i1 false
  br i1 %i.aw, label %bb.i, label %_ZNK5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE25supports_aligned_trailingImEEbmm.exit.thread

bb.i:                                             ; preds = %_ZNK5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE25supports_aligned_trailingImEEbmm.exit
  store i64 0, ptr %2, align 8, !tbaa !226
  %i.ax = load i64, ptr %3, align 8, !tbaa !226
  store i64 %i.ax, ptr %5, align 8, !tbaa !226
  br label %.critedge

_ZNK5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE25supports_aligned_trailingImEEbmm.exit.thread: ; preds = %bb.h, %_ZNK5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE25supports_aligned_trailingImEEbmm.exit
  %.not81 = icmp uge i64 %i.ae, %storemerge       ; 2 uses
  %i.ay = select i1 %.not81, i64 %.071.in, i64 %i.af
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %1
  %i.ba = tail call noundef i64 @_ZN5boost7movelib15detail_adaptive14collect_uniqueIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEENS0_13adaptive_xbufIS5_S6_mEEEENS0_9iter_sizeIT_E4typeESI_SI_SK_T0_RT1_(ptr noundef %0, ptr noundef %i.az, i64 noundef %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %6) ; 8 uses
  %i.bb = icmp eq i64 %i.ba, %.071.in
  %or.cond = and i1 %.not81, %i.bb
  %i.bc = load i64, ptr %3, align 8, !tbaa !226   ; 5 uses
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNK5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE25supports_aligned_trailingImEEbmm.exit.thread
  store i64 %i.bc, ptr %5, align 8, !tbaa !226
  store i64 %.071.in, ptr %2, align 8, !tbaa !226
  br label %.critedge

bb.k:                                             ; preds = %_ZNK5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE25supports_aligned_trailingImEEbmm.exit.thread
  %i.bd = shl i64 %i.bc, 1
  %i.be = icmp eq i64 %i.ba, %i.bd
  br i1 %i.be, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i64 %i.ba, ptr %5, align 8, !tbaa !226
  %i.bf = load i64, ptr %3, align 8, !tbaa !226
  store i64 %i.bf, ptr %2, align 8, !tbaa !226
  br label %.critedge

bb.m:                                             ; preds = %bb.k
  %i.bg = add i64 %i.bc, %.071.in
  %.not82 = icmp ult i64 %i.ba, %i.bg
  br i1 %.not82, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i64 %i.bc, ptr %5, align 8, !tbaa !226
  %i.bh = load i64, ptr %3, align 8, !tbaa !226
  %i.bi = sub i64 %i.ba, %i.bh
  store i64 %i.bi, ptr %2, align 8, !tbaa !226
  br label %.critedge

bb.o:                                             ; preds = %bb.m
  %i.bj = icmp ult i64 %i.ba, 4
  br i1 %i.bj, label %.critedge, label %.preheader87

.preheader87:                                     ; preds = %bb.o, %.preheader87
  %storemerge83 = phi i64 [ %i.bl, %.preheader87 ], [ %i.bc, %bb.o ] ; 6 uses
  %i.bk = add i64 %storemerge83, -1
  %i.bl = and i64 %i.bk, %storemerge83            ; 2 uses
  %.not84 = icmp eq i64 %i.bl, 0
  br i1 %.not84, label %.preheader, label %.preheader87, !llvm.loop !3378

.preheader:                                       ; preds = %.preheader87
  store i64 %storemerge83, ptr %2, align 8, !tbaa !226
  %i.bm = icmp ugt i64 %storemerge83, %i.ba
  br i1 %i.bm, label %.lr.ph, label %bb.p

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.bn = phi i64 [ %i.bo, %.lr.ph ], [ %storemerge83, %.preheader ]
  %i.bo = lshr i64 %i.bn, 1                       ; 4 uses
  %i.bp = icmp ugt i64 %i.bo, %i.ba
  br i1 %i.bp, label %.lr.ph, label %._crit_edge, !llvm.loop !3379

._crit_edge:                                      ; preds = %.lr.ph
  store i64 %i.bo, ptr %2, align 8, !tbaa !226
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge, %.preheader
  %.lcssa = phi i64 [ %i.bo, %._crit_edge ], [ %storemerge83, %.preheader ]
  %i.bq = icmp ult i64 %.lcssa, 16
  %i.br = select i1 %i.bq, ptr %2, ptr @_ZN5boost7movelib15detail_adaptiveL34AdaptiveSortInsertionSortThresholdE
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !226
  store i64 %i.bs, ptr %4, align 8, !tbaa !226
  store i64 0, ptr %3, align 8, !tbaa !226
  %i.bt = load i64, ptr %2, align 8, !tbaa !226
  store i64 %i.bt, ptr %5, align 8, !tbaa !226
  br label %.critedge

.critedge:                                        ; preds = %bb.o, %bb.i, %bb.j, %bb.n, %bb.p, %bb.l
  %.1 = phi i1 [ true, %bb.i ], [ true, %bb.l ], [ true, %bb.p ], [ true, %bb.n ], [ true, %bb.j ], [ false, %bb.o ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive11stable_sortIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvT_SH_T0_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 1                   ; 8 uses
  %i.e = lshr i64 %i.d, 1                         ; 2 uses
  %i.f = sub nuw i64 %i.d, %i.e                   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !247
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !246  ; 2 uses
  %i.k = sub i64 %i.h, %i.j
  %.not = icmp ult i64 %i.k, %i.f
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ult i64 %i.d, 17
  br i1 %i.l, label %_ZN5boost7movelib10merge_sortIPSt4pairI5emptyS3_ES5_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEEvT_SE_T1_T0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %2, align 8, !tbaa !245
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %i.j
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.e ; 2 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.f
  tail call void @_ZN5boost7movelib29merge_sort_uninitialized_copyIPSt4pairI5emptyS3_ES5_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEEvT_SE_T0_T1_(ptr noundef %i.o, ptr noundef %1, ptr noundef %i.n)
  tail call void @_ZN5boost7movelib15merge_sort_copyIPSt4pairI5emptyS3_ES5_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEEvT_SE_T0_T1_(ptr noundef %0, ptr noundef %i.o, ptr noundef %i.p)
  br label %_ZN5boost7movelib10merge_sortIPSt4pairI5emptyS3_ES5_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEEvT_SE_T1_T0_.exit

bb.d:                                             ; preds = %bb.a
  %i.q = icmp ugt i64 %i.d, 16
  br i1 %i.q, label %.lr.ph50.i, label %_ZN5boost7movelib10merge_sortIPSt4pairI5emptyS3_ES5_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEEvT_SE_T1_T0_.exit

.lr.ph50.i:                                       ; preds = %bb.d, %bb.h
  %.04348.i = phi i64 [ %i.aj, %bb.h ], [ 16, %bb.d ] ; 9 uses
  %i.r = sub i64 %i.d, %.04348.i
  %i.s = icmp ugt i64 %i.r, %.04348.i             ; 2 uses
  br i1 %i.s, label %bb.e, label %.loopexit.i

bb.e:                                             ; preds = %.lr.ph50.i
  %i.t = shl i64 %.04348.i, 1                     ; 5 uses
  %i.u = icmp ugt i64 %i.d, %i.t
  br i1 %i.u, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %bb.e
  %.idx.i = shl i64 %.04348.i, 2
  %i.v = ashr exact i64 %i.t, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i
  %.047.i = phi i64 [ 0, %.lr.ph.i ], [ %i.z, %bb.f ] ; 2 uses
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.047.i ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.t
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx.i
  tail call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPSt4pairI5emptyS3_ENS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEEvT_SE_SE_NS0_9iter_sizeISE_E4typeESH_T0_(ptr noundef %i.w, ptr noundef %i.x, ptr noundef %i.y, i64 noundef %.04348.i, i64 noundef %i.v)
  %i.z = add i64 %.047.i, %i.t                    ; 3 uses
  %i.aa = sub i64 %i.d, %i.z
  %i.ab = icmp ugt i64 %i.aa, %i.t
  br i1 %i.ab, label %bb.f, label %.loopexit.i, !llvm.loop !3380

.loopexit.i:                                      ; preds = %bb.f, %bb.e, %.lr.ph50.i
  %.1.i = phi i64 [ 0, %.lr.ph50.i ], [ 0, %bb.e ], [ %i.z, %bb.f ] ; 2 uses
  %i.ac = sub i64 %i.d, %.1.i
  %i.ad = icmp ugt i64 %i.ac, %.04348.i
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.loopexit.i
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.1.i ; 2 uses
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %.04348.i ; 2 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.a, %i.ag
  %i.ai = ashr exact i64 %i.ah, 1
  tail call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPSt4pairI5emptyS3_ENS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEEvT_SE_SE_NS0_9iter_sizeISE_E4typeESH_T0_(ptr noundef %i.ae, ptr noundef %i.af, ptr noundef %1, i64 noundef %.04348.i, i64 noundef %i.ai)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.loopexit.i
  %i.aj = shl i64 %.04348.i, 1
  br i1 %i.s, label %.lr.ph50.i, label %_ZN5boost7movelib10merge_sortIPSt4pairI5emptyS3_ES5_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEEvT_SE_T1_T0_.exit, !llvm.loop !3381

_ZN5boost7movelib10merge_sortIPSt4pairI5emptyS3_ES5_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEEvT_SE_T1_T0_.exit: ; preds = %bb.h, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost7movelib15detail_adaptive26adaptive_sort_build_blocksIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEENS0_13adaptive_xbufIS5_S6_mEEEENS0_9iter_sizeIT_E4typeESI_SK_SK_SK_RT1_T0_(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #4 comdat {
bb.a:
  %.idx = shl i64 %3, 1                           ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !247
  %.sroa.speculated60 = tail call i64 @llvm.umin.i64(i64 %3, i64 %i.c) ; 6 uses
  %i.d = icmp ult i64 %.sroa.speculated60, %2
  %.not.not90 = icmp eq i64 %.sroa.speculated60, 0
  %.not.not = or i1 %i.d, %.not.not90
  br i1 %.not.not, label %_ZN5boost7movelib15detail_adaptive27op_merge_left_step_multipleIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEENS0_7swap_opEEENS0_9iter_sizeIT_E4typeESH_SJ_SJ_SJ_SJ_T0_T1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !246  ; 2 uses
  %.not.i = icmp ugt i64 %.sroa.speculated60, %i.f
  br i1 %.not.i, label %iter.check, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE11move_assignIS5_EEvT_m.exit

iter.check:                                       ; preds = %bb.b
  %i.g = sub i64 0, %.sroa.speculated60
  %i.h = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.g ; 2 uses
  %.idx.i = shl i64 %i.f, 1                       ; 3 uses
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 %.idx.i ; 6 uses
  %i.j = load ptr, ptr %4, align 8, !tbaa !245    ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 %.idx.i  ; 6 uses
  %.idx20.i = shl nsw i64 %.sroa.speculated60, 1  ; 3 uses
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 %.idx20.i
  %i.m = add i64 %.idx20.i, -2
  %i.n = sub i64 %i.m, %.idx.i                    ; 3 uses
  %i.o = lshr exact i64 %i.n, 1
  %i.p = add nuw i64 %i.o, 1                      ; 5 uses
  %min.iters.check = icmp ult i64 %i.n, 6
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.q = ptrtoaddr ptr %i.j to i64
  %5 = ptrtoaddr ptr %0 to i64
  %i.r = add i64 %.idx20.i, %i.q
  %i.s = add i64 %.idx, %5
  %i.t = sub i64 %i.s, %i.r
  %diff.check = icmp ugt i64 %i.t, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check99 = icmp ult i64 %i.n, 30
  br i1 %min.iters.check99, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.u = and i64 %i.p, 12
  %n.vec = and i64 %i.p, -16                      ; 4 uses
  %i.v = shl i64 %n.vec, 1                        ; 2 uses
  %i.w = getelementptr i8, ptr %i.i, i64 %i.v
  %i.x = getelementptr i8, ptr %i.k, i64 %i.v
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = shl i64 %index, 1                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.y ; 2 uses
  %next.gep100 = getelementptr i8, ptr %i.k, i64 %i.y ; 2 uses
  %i.z = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep, align 1
  %wide.load101 = load <8 x i16>, ptr %i.z, align 1
  %i.aa = getelementptr i8, ptr %next.gep100, i64 16
  store <8 x i16> %wide.load, ptr %next.gep100, align 1
  store <8 x i16> %wide.load101, ptr %i.aa, align 1
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !3382

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE11move_assignIS5_EEvT_m.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.u, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !326

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec103 = and i64 %i.p, -4                    ; 3 uses
  %i.ac = shl i64 %n.vec103, 1                    ; 2 uses
  %i.ad = getelementptr i8, ptr %i.i, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.k, i64 %i.ac
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index104 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next108, %vec.epilog.vector.body ] ; 2 uses
  %i.af = shl i64 %index104, 1                    ; 2 uses
  %next.gep105 = getelementptr i8, ptr %i.i, i64 %i.af
  %next.gep106 = getelementptr i8, ptr %i.k, i64 %i.af
  %wide.load107 = load <4 x i16>, ptr %next.gep105, align 1
  store <4 x i16> %wide.load107, ptr %next.gep106, align 1
  %index.next108 = add nuw i64 %index104, 4       ; 2 uses
  %i.ag = icmp eq i64 %index.next108, %n.vec103
  br i1 %i.ag, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3383

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n109 = icmp eq i64 %i.p, %n.vec103
  br i1 %cmp.n109, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE11move_assignIS5_EEvT_m.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.ph = phi ptr [ %i.i, %iter.check ], [ %i.i, %vector.memcheck ], [ %i.w, %vec.epilog.iter.check ], [ %i.ad, %vec.epilog.middle.block ]
  %.0911.i.i.ph = phi ptr [ %i.k, %iter.check ], [ %i.k, %vector.memcheck ], [ %i.x, %vec.epilog.iter.check ], [ %i.ae, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.012.i.i = phi ptr [ %i.ai, %.lr.ph.i.i ], [ %.012.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.0911.i.i = phi ptr [ %i.aj, %.lr.ph.i.i ], [ %.0911.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.ah = load i16, ptr %.012.i.i, align 1
  store i16 %i.ah, ptr %.0911.i.i, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 2 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 2
  %.not.i.i = icmp eq ptr %i.ai, %i.l
  br i1 %.not.i.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE11move_assignIS5_EEvT_m.exit, label %.lr.ph.i.i, !llvm.loop !3384

_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE11move_assignIS5_EEvT_m.exit: ; preds = %.lr.ph.i.i, %middle.block, %vec.epilog.middle.block, %bb.b
  store i64 %.sroa.speculated60, ptr %i.e, align 8, !tbaa !246
  br label %_ZN5boost7movelib15detail_adaptive27op_merge_left_step_multipleIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEENS0_7swap_opEEENS0_9iter_sizeIT_E4typeESH_SJ_SJ_SJ_SJ_T0_T1_.exit

_ZN5boost7movelib15detail_adaptive27op_merge_left_step_multipleIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEENS0_7swap_opEEENS0_9iter_sizeIT_E4typeESH_SJ_SJ_SJ_SJ_T0_T1_.exit: ; preds = %bb.a, %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE11move_assignIS5_EEvT_m.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !246
  %.not.i57 = icmp eq i64 %i.al, 0
  br i1 %.not.i57, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE5clearEv.exit, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %_ZN5boost7movelib15detail_adaptive27op_merge_left_step_multipleIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEENS0_7swap_opEEENS0_9iter_sizeIT_E4typeESH_SJ_SJ_SJ_SJ_T0_T1_.exit
  store i64 0, ptr %i.ak, align 8, !tbaa !246
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE5clearEv.exit

_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE5clearEv.exit: ; preds = %_ZN5boost7movelib15detail_adaptive27op_merge_left_step_multipleIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEENS0_7swap_opEEENS0_9iter_sizeIT_E4typeESH_SJ_SJ_SJ_SJ_T0_T1_.exit, %.preheader.preheader.i.i
  %i.am = sub i64 %1, %3
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.am, i64 %.idx)
  ret i64 %.sroa.speculated
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost7movelib15detail_adaptive32adaptive_sort_combine_all_blocksIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEENS0_13adaptive_xbufIS5_S6_mEEEEbT_RNS0_9iter_sizeISH_E4typeESH_SK_SK_SL_RT1_T0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 3 uses
  %i.b = load i64, ptr %5, align 8, !tbaa !226    ; 8 uses
  %i.c = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.b ; 3 uses
  %i.d = sub i64 %3, %i.b                         ; 5 uses
  %i.e = load i64, ptr %1, align 8, !tbaa !226
  %i.f = icmp ugt i64 %i.d, %4                    ; 2 uses
  %.not139 = icmp ne i64 %i.b, 0
  %or.cond143.not158 = and i1 %.not139, %i.f
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.h = load i64, ptr %i.g, align 8
  %i.i = icmp ule i64 %i.b, %i.h
  %or.cond156 = select i1 %or.cond143.not158, i1 %i.i, i1 false ; 4 uses
  br i1 %or.cond156, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !246  ; 2 uses
  %.not.i = icmp ugt i64 %i.b, %i.k
  br i1 %.not.i, label %iter.check, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE11move_assignIS5_EEvT_m.exit

iter.check:                                       ; preds = %bb.b
  %.idx.i = shl i64 %i.k, 1                       ; 3 uses
  %i.l = getelementptr inbounds i8, ptr %2, i64 %.idx.i ; 5 uses
  %i.m = load ptr, ptr %6, align 8, !tbaa !245    ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 %.idx.i  ; 5 uses
  %.idx20.i = shl nsw i64 %i.b, 1                 ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %2, i64 %.idx20.i
  %i.p = add i64 %.idx20.i, -2
  %i.q = sub i64 %i.p, %.idx.i                    ; 3 uses
  %i.r = lshr exact i64 %i.q, 1
  %i.s = add nuw i64 %i.r, 1                      ; 5 uses
  %min.iters.check = icmp ult i64 %i.q, 6
  %7 = ptrtoaddr ptr %i.m to i64
  %i.t = ptrtoaddr ptr %2 to i64
  %i.u = sub i64 %i.t, %7
  %diff.check = icmp ugt i64 %i.u, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check176 = icmp ult i64 %i.q, 30
  br i1 %min.iters.check176, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.v = and i64 %i.s, 12
  %n.vec = and i64 %i.s, -16                      ; 4 uses
  %i.w = shl i64 %n.vec, 1                        ; 2 uses
  %i.x = getelementptr i8, ptr %i.l, i64 %i.w
  %i.y = getelementptr i8, ptr %i.n, i64 %i.w
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.z = shl i64 %index, 1                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.l, i64 %i.z ; 2 uses
  %next.gep177 = getelementptr i8, ptr %i.n, i64 %i.z ; 2 uses
  %i.aa = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep, align 1
  %wide.load178 = load <8 x i16>, ptr %i.aa, align 1
  %i.ab = getelementptr i8, ptr %next.gep177, i64 16
  store <8 x i16> %wide.load, ptr %next.gep177, align 1
  store <8 x i16> %wide.load178, ptr %i.ab, align 1
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !3385

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE11move_assignIS5_EEvT_m.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.v, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !326

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec180 = and i64 %i.s, -4                    ; 3 uses
  %i.ad = shl i64 %n.vec180, 1                    ; 2 uses
  %i.ae = getelementptr i8, ptr %i.l, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.n, i64 %i.ad
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index181 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next185, %vec.epilog.vector.body ] ; 2 uses
  %i.ag = shl i64 %index181, 1                    ; 2 uses
  %next.gep182 = getelementptr i8, ptr %i.l, i64 %i.ag
  %next.gep183 = getelementptr i8, ptr %i.n, i64 %i.ag
  %wide.load184 = load <4 x i16>, ptr %next.gep182, align 1
  store <4 x i16> %wide.load184, ptr %next.gep183, align 1
  %index.next185 = add nuw i64 %index181, 4       ; 2 uses
  %i.ah = icmp eq i64 %index.next185, %n.vec180
  br i1 %i.ah, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3386

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n186 = icmp eq i64 %i.s, %n.vec180
  br i1 %cmp.n186, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE11move_assignIS5_EEvT_m.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.ph = phi ptr [ %i.l, %iter.check ], [ %i.x, %vec.epilog.iter.check ], [ %i.ae, %vec.epilog.middle.block ]
  %.0911.i.i.ph = phi ptr [ %i.n, %iter.check ], [ %i.y, %vec.epilog.iter.check ], [ %i.af, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.012.i.i = phi ptr [ %i.aj, %.lr.ph.i.i ], [ %.012.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.0911.i.i = phi ptr [ %i.ak, %.lr.ph.i.i ], [ %.0911.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.ai = load i16, ptr %.012.i.i, align 1
  store i16 %i.ai, ptr %.0911.i.i, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 2 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 2
  %.not.i.i = icmp eq ptr %i.aj, %i.o
  br i1 %.not.i.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE11move_assignIS5_EEvT_m.exit, label %.lr.ph.i.i, !llvm.loop !3387

_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE11move_assignIS5_EEvT_m.exit: ; preds = %.lr.ph.i.i, %middle.block, %vec.epilog.middle.block, %bb.b
  store i64 %i.b, ptr %i.j, align 8, !tbaa !246
  br label %.thread

.thread:                                          ; preds = %bb.a, %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE11move_assignIS5_EEvT_m.exit
  br i1 %i.f, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %.thread
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.c

._crit_edge:                                      ; preds = %bb.j
  %spec.select = select i1 %.1, i1 %i.az, i1 false
  %spec.select175 = select i1 %.1, i64 %.1.i, i64 0
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.thread, %._crit_edge
  %i.am = phi i1 [ %spec.select, %._crit_edge ], [ true, %.thread ]
  %i.an = phi i64 [ %spec.select175, %._crit_edge ], [ 0, %.thread ] ; 2 uses
  %i.ao = add i64 %i.e, %i.b
  store i64 %i.an, ptr %5, align 8, !tbaa !226
  %i.ap = sub i64 %i.ao, %i.an
  store i64 %i.ap, ptr %1, align 8, !tbaa !226
  ret i1 %i.am

bb.c:                                             ; preds = %.lr.ph, %bb.j
  %.0162 = phi i64 [ %4, %.lr.ph ], [ %i.as, %bb.j ] ; 4 uses
  %.0130161 = phi i64 [ 0, %.lr.ph ], [ %i.bp, %bb.j ] ; 2 uses
  %i.aq = load i64, ptr %5, align 8, !tbaa !226   ; 2 uses
  %i.ar = load i64, ptr %1, align 8, !tbaa !226   ; 4 uses
  %i.as = shl i64 %.0162, 1                       ; 5 uses
  %.not.i144 = icmp eq i64 %i.aq, 0
  br i1 %.not.i144, label %bb.d, label %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit

bb.d:                                             ; preds = %bb.c
  %i.at = lshr i64 %i.ar, 1                       ; 3 uses
  %i.au = sub nuw i64 %i.ar, %i.at                ; 2 uses
  %i.av = icmp ugt i64 %i.au, 3
  br i1 %i.av, label %bb.e, label %.critedge.i

bb.e:                                             ; preds = %bb.d
  %i.aw = udiv i64 %i.as, %i.at
  %.not159 = icmp ult i64 %i.au, %i.aw
  br i1 %.not159, label %.critedge.i, label %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit

.critedge.i:                                      ; preds = %bb.d, %bb.e
  %i.ax = udiv i64 %i.as, %i.ar
  br label %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit

_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit: ; preds = %bb.c, %bb.e, %.critedge.i
  %.1 = phi i1 [ true, %bb.e ], [ false, %.critedge.i ], [ true, %bb.c ] ; 8 uses
  %.1.i = phi i64 [ %i.at, %bb.e ], [ %i.ax, %.critedge.i ], [ %i.aq, %bb.c ] ; 8 uses
  %i.ay = and i64 %.0130161, 1
  %i.az = icmp eq i64 %i.ay, 0                    ; 7 uses
  %.not140 = icmp eq i64 %i.ar, 0
  br i1 %.not140, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit
  %i.ba = udiv i64 %i.as, %.1.i
  %i.bb = icmp ugt i64 %i.ba, 256
  br i1 %i.bb, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.not6 = xor i1 %.1, true
  %or.cond8 = select i1 %.not6, i1 true, i1 %i.az
  %i.bc = sub i64 0, %.1.i
  %.idx142 = select i1 %or.cond8, i64 0, i64 %i.bc
  %i.bd = getelementptr inbounds [2 x i8], ptr %i.c, i64 %.idx142
  call void @_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEES6_SE_NS0_13adaptive_xbufIS5_S6_mEEEEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_bbRT3_T2_b(ptr noundef %0, ptr noundef %i.bd, i64 noundef %i.d, i64 noundef %.0162, i64 noundef %.1.i, i1 noundef zeroext %.1, i1 noundef zeroext %or.cond156, ptr noundef nonnull align 8 dereferenceable(24) %6, i1 noundef zeroext %i.az)
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %.not9 = xor i1 %.1, true
  %or.cond11 = select i1 %.not9, i1 true, i1 %i.az
  %i.be = sub i64 0, %.1.i
  %.idx141 = select i1 %or.cond11, i64 0, i64 %i.be
  %i.bf = getelementptr inbounds [2 x i8], ptr %i.c, i64 %.idx141
  call void @_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIPhNS1_4lessEPSt4pairI5emptyS6_ENS_9container3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEENS0_13adaptive_xbufIS7_S8_mEEEEvT_T0_T1_NS0_9iter_sizeISL_E4typeESO_SO_bbRT3_T2_b(ptr noundef nonnull %i.a, ptr noundef %i.bf, i64 noundef %i.d, i64 noundef %.0162, i64 noundef %.1.i, i1 noundef zeroext %.1, i1 noundef zeroext %or.cond156, ptr noundef nonnull align 8 dereferenceable(24) %6, i1 noundef zeroext %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.j

bb.i:                                             ; preds = %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit
  %i.bg = load i64, ptr %i.al, align 8, !tbaa !246
  %i.bh = load ptr, ptr %6, align 8, !tbaa !245
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.bh, i64 %i.bg
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = add i64 %i.bj, 7
  %i.bl = and i64 %i.bk, -8
  %i.bm = inttoptr i64 %i.bl to ptr
  %.not12 = xor i1 %.1, true
  %or.cond14 = select i1 %.not12, i1 true, i1 %i.az
  %i.bn = sub i64 0, %.1.i
  %.idx = select i1 %or.cond14, i64 0, i64 %i.bn
  %i.bo = getelementptr inbounds [2 x i8], ptr %i.c, i64 %.idx
  call void @_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIPmNS1_4lessEPSt4pairI5emptyS6_ENS_9container3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEENS0_13adaptive_xbufIS7_S8_mEEEEvT_T0_T1_NS0_9iter_sizeISL_E4typeESO_SO_bbRT3_T2_b(ptr noundef %i.bm, ptr noundef %i.bo, i64 noundef %i.d, i64 noundef %.0162, i64 noundef %.1.i, i1 noundef zeroext %.1, i1 noundef zeroext %or.cond156, ptr noundef nonnull align 8 dereferenceable(24) %6, i1 noundef zeroext %i.az)
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %i.bp = add i64 %.0130161, 1
  %i.bq = icmp ugt i64 %i.d, %i.as
  br i1 %i.bq, label %bb.c, label %._crit_edge, !llvm.loop !3388
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive25adaptive_sort_final_mergeIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvbT_NS0_9iter_sizeISH_E4typeESK_SK_RT1_T0_(i1 noundef zeroext %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %6 = alloca %"struct.boost::movelib::antistable", align 8 ; 4 uses
  %7 = alloca %"struct.boost::movelib::antistable", align 8 ; 4 uses
  %8 = alloca %"class.boost::container::dtl::flat_tree_value_compare", align 1 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 8 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !246
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE5clearEv.exit, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.a
  store i64 0, ptr %i.b, align 8, !tbaa !246
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE5clearEv.exit

_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE5clearEv.exit: ; preds = %bb.a, %.preheader.preheader.i.i
  br i1 %0, label %bb.b, label %bb.h

bb.b:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE5clearEv.exit
  %.idx74 = shl nuw nsw i64 %4, 1                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.idx74 ; 5 uses
  %.neg = mul i64 %2, -2                          ; 4 uses
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 %.neg ; 3 uses
  tail call void @_ZN5boost7movelib15detail_adaptive11stable_sortIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvT_SH_T0_RT1_(ptr noundef %i.e, ptr noundef %i.d, ptr noundef nonnull align 8 dereferenceable(24) %5)
  %.idx76 = shl nuw nsw i64 %3, 1                 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %.idx76 ; 4 uses
  %i.g = add nsw i64 %.idx74, %.neg               ; 2 uses
  %gepdiff77 = sub i64 %i.g, %.idx76
  %i.h = ashr exact i64 %gepdiff77, 1             ; 3 uses
  %gepdiff78 = sub nsw i64 0, %.neg
  %i.i = ashr exact i64 %gepdiff78, 1             ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !247  ; 8 uses
  %.not.i51 = icmp ult i64 %i.k, %.sroa.speculated.i
  br i1 %.not.i51, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i64, ptr %i.b, align 8, !tbaa !246
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %_ZN5boost7movelib15detail_adaptive12stable_mergeIPSt4pairI5emptyS4_ENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS9_9select1stIS4_EEEEEENS0_13adaptive_xbufIS5_S6_mEEEEvT_SJ_SJ_T0_RT1_.exit, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %bb.c
  store i64 0, ptr %i.b, align 8, !tbaa !246
  br label %_ZN5boost7movelib15detail_adaptive12stable_mergeIPSt4pairI5emptyS4_ENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS9_9select1stIS4_EEEEEENS0_13adaptive_xbufIS5_S6_mEEEEvT_SJ_SJ_T0_RT1_.exit

bb.d:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %5, align 8, !tbaa !245    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.n = icmp eq i64 %.idx76, %i.g
  %i.o = icmp eq i64 %.neg, 0
  %or.cond.i.i = or i1 %i.o, %i.n
  br i1 %or.cond.i.i, label %_ZN5boost7movelib21merge_adaptive_ONlogNIPSt4pairI5emptyS3_ENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS8_9select1stIS3_EEEEEES5_EEvT_SG_SG_T0_T1_NS0_9iter_sizeISG_E4typeE.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i15.i = icmp eq i64 %i.k, 0
  br i1 %.not.i15.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load i16, ptr %i.f, align 1              ; 4 uses
  store i16 %i.p, ptr %i.m, align 1
  %.not8.i.i.i = icmp eq i64 %i.k, 1
  br i1 %.not8.i.i.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE16initialize_untilEmRS4_.exit.i.i, label %iter.check146

iter.check146:                                    ; preds = %bb.f
  %i.q = add i64 %i.k, -1                         ; 5 uses
  %min.iters.check135 = icmp ult i64 %i.k, 5
  br i1 %min.iters.check135, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check136

vector.main.loop.iter.check136:                   ; preds = %iter.check146
  %min.iters.check137 = icmp ult i64 %i.k, 17
  br i1 %min.iters.check137, label %vec.epilog.ph150, label %vector.ph138

vector.ph138:                                     ; preds = %vector.main.loop.iter.check136
  %i.r = and i64 %i.q, 12
  %n.vec139 = and i64 %i.q, -16                   ; 4 uses
  %i.s = or disjoint i64 %n.vec139, 1
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.p, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body140

vector.body140:                                   ; preds = %vector.ph138, %vector.body140
  %index141 = phi i64 [ 0, %vector.ph138 ], [ %index.next142, %vector.body140 ] ; 2 uses
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %index141 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 18
  store <8 x i16> %broadcast.splat, ptr %i.u, align 1
  store <8 x i16> %broadcast.splat, ptr %i.v, align 1
  %index.next142 = add nuw i64 %index141, 16      ; 2 uses
  %i.w = icmp eq i64 %index.next142, %n.vec139
  br i1 %i.w, label %middle.block143, label %vector.body140, !llvm.loop !3389

middle.block143:                                  ; preds = %vector.body140
  %cmp.n144 = icmp eq i64 %i.q, %n.vec139
  br i1 %cmp.n144, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE16initialize_untilEmRS4_.exit.i.i, label %vec.epilog.iter.check148

vec.epilog.iter.check148:                         ; preds = %middle.block143
  %min.epilog.iters.check149 = icmp eq i64 %i.r, 0
  br i1 %min.epilog.iters.check149, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph150, !prof !326

vec.epilog.ph150:                                 ; preds = %vector.main.loop.iter.check136, %vec.epilog.iter.check148
  %vec.epilog.resume.val145 = phi i64 [ %n.vec139, %vec.epilog.iter.check148 ], [ 0, %vector.main.loop.iter.check136 ]
  %n.vec151 = and i64 %i.q, -4                    ; 3 uses
  %i.x = or disjoint i64 %n.vec151, 1
  %broadcast.splatinsert152 = insertelement <4 x i16> poison, i16 %i.p, i64 0
  %broadcast.splat153 = shufflevector <4 x i16> %broadcast.splatinsert152, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body154

vec.epilog.vector.body154:                        ; preds = %vec.epilog.vector.body154, %vec.epilog.ph150
  %index155 = phi i64 [ %vec.epilog.resume.val145, %vec.epilog.ph150 ], [ %index.next156, %vec.epilog.vector.body154 ] ; 2 uses
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %index155
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  store <4 x i16> %broadcast.splat153, ptr %i.z, align 1
  %index.next156 = add nuw i64 %index155, 4       ; 2 uses
  %i.aa = icmp eq i64 %index.next156, %n.vec151
  br i1 %i.aa, label %vec.epilog.middle.block157, label %vec.epilog.vector.body154, !llvm.loop !3390

vec.epilog.middle.block157:                       ; preds = %vec.epilog.vector.body154
  %cmp.n158 = icmp eq i64 %i.q, %n.vec151
  br i1 %cmp.n158, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE16initialize_untilEmRS4_.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check146, %vec.epilog.iter.check148, %vec.epilog.middle.block157
  %.sroa.7.0.i.i.ph = phi i64 [ 1, %iter.check146 ], [ %i.s, %vec.epilog.iter.check148 ], [ %i.x, %vec.epilog.middle.block157 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.sroa.7.0.i.i = phi i64 [ %storemerge.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.7.0.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %.sroa.7.0.i.i
  store i16 %i.p, ptr %i.ab, align 1
  %storemerge.i.i.i = add nuw i64 %.sroa.7.0.i.i, 1 ; 2 uses
  %.not.i.i.i = icmp eq i64 %storemerge.i.i.i, %i.k
  br i1 %.not.i.i.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE16initialize_untilEmRS4_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !3391

_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE16initialize_untilEmRS4_.exit.i.i: ; preds = %.lr.ph.i.i.i, %middle.block143, %vec.epilog.middle.block157, %bb.f
  store ptr %8, ptr %7, align 8, !tbaa !335
  call void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPSt4pairI5emptyS3_ES5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS8_9select1stIS3_EEEEEEEEvT_SG_SG_NS0_9iter_sizeISG_E4typeESJ_T0_SJ_T1_(ptr noundef nonnull %i.f, ptr noundef nonnull %i.e, ptr noundef nonnull %i.d, i64 noundef %i.h, i64 noundef %i.i, ptr noundef nonnull %i.m, i64 noundef %i.k, ptr noundef nonnull align 8 dead_on_return %7)
  br label %_ZN5boost7movelib21merge_adaptive_ONlogNIPSt4pairI5emptyS3_ENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS8_9select1stIS3_EEEEEES5_EEvT_SG_SG_T0_T1_NS0_9iter_sizeISG_E4typeE.exit.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %8, ptr %6, align 8, !tbaa !335
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPSt4pairI5emptyS3_ENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS8_9select1stIS3_EEEEEEEEvT_SG_SG_NS0_9iter_sizeISG_E4typeESJ_T0_(ptr noundef %i.f, ptr noundef %i.e, ptr noundef %i.d, i64 noundef %i.h, i64 noundef %i.i, ptr noundef nonnull align 8 dead_on_return %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZN5boost7movelib21merge_adaptive_ONlogNIPSt4pairI5emptyS3_ENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS8_9select1stIS3_EEEEEES5_EEvT_SG_SG_T0_T1_NS0_9iter_sizeISG_E4typeE.exit.i

_ZN5boost7movelib21merge_adaptive_ONlogNIPSt4pairI5emptyS3_ENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS8_9select1stIS3_EEEEEES5_EEvT_SG_SG_T0_T1_NS0_9iter_sizeISG_E4typeE.exit.i: ; preds = %bb.g, %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE16initialize_untilEmRS4_.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZN5boost7movelib15detail_adaptive12stable_mergeIPSt4pairI5emptyS4_ENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS9_9select1stIS4_EEEEEENS0_13adaptive_xbufIS5_S6_mEEEEvT_SJ_SJ_T0_RT1_.exit

_ZN5boost7movelib15detail_adaptive12stable_mergeIPSt4pairI5emptyS4_ENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS9_9select1stIS4_EEEEEENS0_13adaptive_xbufIS5_S6_mEEEEvT_SJ_SJ_T0_RT1_.exit: ; preds = %bb.c, %.preheader.preheader.i.i.i, %_ZN5boost7movelib21merge_adaptive_ONlogNIPSt4pairI5emptyS3_ENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS8_9select1stIS3_EEEEEES5_EEvT_SG_SG_T0_T1_NS0_9iter_sizeISG_E4typeE.exit.i
  call void @_ZN5boost7movelib15detail_adaptive12stable_mergeIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvT_SH_SH_T0_RT1_(ptr noundef %1, ptr noundef %i.f, ptr noundef %i.d, ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %_ZN5boost7movelib14buffered_mergeIPSt4pairI5emptyS3_ENS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_SG_SG_T0_RT1_.exit

bb.h:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE5clearEv.exit
  %i.ac = add i64 %3, %2                          ; 5 uses
  %.idx = shl nuw nsw i64 %i.ac, 1                ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 7 uses
  tail call void @_ZN5boost7movelib15detail_adaptive11stable_sortIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvT_SH_T0_RT1_(ptr noundef %1, ptr noundef %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %5)
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !247 ; 2 uses
  %.not = icmp ult i64 %i.af, %i.ac
  br i1 %.not, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.idx73 = shl nuw nsw i64 %4, 1                 ; 2 uses
  %.not.i.i52 = icmp eq i64 %i.ac, 0
  %.not37.i.i = icmp samesign eq i64 %.idx, %.idx73
  %or.cond.i.i53 = or i1 %.not.i.i52, %.not37.i.i
  br i1 %or.cond.i.i53, label %_ZN5boost7movelib14buffered_mergeIPSt4pairI5emptyS3_ENS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_SG_SG_T0_RT1_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = ptrtoint ptr %i.ad to i64
  %gepdiff = sub nsw i64 %.idx73, %.idx           ; 2 uses
  %.not38.i.i = icmp ugt i64 %.idx, %gepdiff
  br i1 %.not38.i.i, label %.lr.ph.preheader.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = load i64, ptr %i.b, align 8, !tbaa !246 ; 2 uses
  %.not.i.i.i54 = icmp ugt i64 %i.ac, %i.ah
  br i1 %.not.i.i.i54, label %iter.check, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE11move_assignIS5_EEvT_m.exit.i.i

iter.check:                                       ; preds = %bb.k
  %.idx.i.i.i = shl i64 %i.ah, 1                  ; 3 uses
  %i.ai = getelementptr inbounds i8, ptr %1, i64 %.idx.i.i.i ; 5 uses
  %i.aj = load ptr, ptr %5, align 8, !tbaa !245   ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 %.idx.i.i.i ; 5 uses
  %i.al = add nsw i64 %.idx, -2
  %i.am = sub i64 %i.al, %.idx.i.i.i              ; 3 uses
  %i.an = lshr exact i64 %i.am, 1
  %i.ao = add nuw i64 %i.an, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.am, 6
  %9 = ptrtoaddr ptr %i.aj to i64
  %i.ap = ptrtoaddr ptr %1 to i64
  %i.aq = sub i64 %i.ap, %9
  %diff.check = icmp ugt i64 %i.aq, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check87 = icmp ult i64 %i.am, 30
  br i1 %min.iters.check87, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ar = and i64 %i.ao, 12
  %n.vec = and i64 %i.ao, -16                     ; 4 uses
  %i.as = shl i64 %n.vec, 1                       ; 2 uses
  %i.at = getelementptr i8, ptr %i.ai, i64 %i.as
  %i.au = getelementptr i8, ptr %i.ak, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ai, i64 %i.av ; 2 uses
  %next.gep88 = getelementptr i8, ptr %i.ak, i64 %i.av ; 2 uses
  %i.aw = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep, align 1
  %wide.load89 = load <8 x i16>, ptr %i.aw, align 1
  %i.ax = getelementptr i8, ptr %next.gep88, i64 16
  store <8 x i16> %wide.load, ptr %next.gep88, align 1
  store <8 x i16> %wide.load89, ptr %i.ax, align 1
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !3392

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE11move_assignIS5_EEvT_m.exit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ar, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph, !prof !326

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec91 = and i64 %i.ao, -4                    ; 3 uses
  %i.az = shl i64 %n.vec91, 1                     ; 2 uses
  %i.ba = getelementptr i8, ptr %i.ai, i64 %i.az
  %i.bb = getelementptr i8, ptr %i.ak, i64 %i.az
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index92 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next96, %vec.epilog.vector.body ] ; 2 uses
  %i.bc = shl i64 %index92, 1                     ; 2 uses
  %next.gep93 = getelementptr i8, ptr %i.ai, i64 %i.bc
  %next.gep94 = getelementptr i8, ptr %i.ak, i64 %i.bc
  %wide.load95 = load <4 x i16>, ptr %next.gep93, align 1
  store <4 x i16> %wide.load95, ptr %next.gep94, align 1
  %index.next96 = add nuw i64 %index92, 4         ; 2 uses
  %i.bd = icmp eq i64 %index.next96, %n.vec91
  br i1 %i.bd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3393

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n97 = icmp eq i64 %i.ao, %n.vec91
  br i1 %cmp.n97, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE11move_assignIS5_EEvT_m.exit.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.ai, %iter.check ], [ %i.at, %vec.epilog.iter.check ], [ %i.ba, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.ak, %iter.check ], [ %i.au, %vec.epilog.iter.check ], [ %i.bb, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %i.be = load i16, ptr %.012.i.i.i.i, align 1
  store i16 %i.be, ptr %.0911.i.i.i.i, align 1
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 2 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 2
  %.not.i.i.i.i = icmp eq ptr %i.bf, %i.ad
  br i1 %.not.i.i.i.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE11move_assignIS5_EEvT_m.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3394

_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE11move_assignIS5_EEvT_m.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %vec.epilog.middle.block, %bb.k
  store i64 %i.ac, ptr %i.b, align 8, !tbaa !246
  br label %_ZN5boost7movelib14buffered_mergeIPSt4pairI5emptyS3_ENS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_SG_SG_T0_RT1_.exit

.lr.ph.preheader.i.i.i:                           ; preds = %bb.j
  %i.bh = ashr exact i64 %gepdiff, 1
  br label %.lr.ph.i.i.i55

.lr.ph.i.i.i55:                                   ; preds = %.lr.ph.i.i.i55, %.lr.ph.preheader.i.i.i
  %.017.i.i.i = phi i64 [ %i.bl, %.lr.ph.i.i.i55 ], [ %i.bh, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %.01316.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i55 ], [ %i.ad, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %i.bi = lshr i64 %.017.i.i.i, 1                 ; 2 uses
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %.01316.i.i.i, i64 %i.bi ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 2 ; 2 uses
  %.neg.i.i.i = xor i64 %i.bi, -1
  %i.bl = add i64 %.017.i.i.i, %.neg.i.i.i        ; 2 uses
  %.not.i39.i.i = icmp eq i64 %i.bl, 0
  br i1 %.not.i39.i.i, label %_ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit.i.i, label %.lr.ph.i.i.i55, !llvm.loop !34

_ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit.i.i: ; preds = %.lr.ph.i.i.i55
  %.01316.i.i.i102.le = ptrtoaddr ptr %.01316.i.i.i to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bm, %i.ag
  %i.bo = ashr exact i64 %i.bn, 1                 ; 2 uses
  %i.bp = load i64, ptr %i.b, align 8, !tbaa !246 ; 2 uses
  %.not.i40.i.i = icmp ugt i64 %i.bo, %i.bp
  br i1 %.not.i40.i.i, label %iter.check119, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE11move_assignIS5_EEvT_m.exit46.i.i

iter.check119:                                    ; preds = %_ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit.i.i
  %.idx.i41.i.i = shl i64 %i.bp, 1                ; 3 uses
  %i.bq = getelementptr inbounds i8, ptr %i.ad, i64 %.idx.i41.i.i ; 6 uses
  %i.br = load ptr, ptr %5, align 8, !tbaa !245   ; 2 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 %.idx.i41.i.i ; 6 uses
  %i.bt = add i64 %.idx.i41.i.i, %i.a
  %i.bu = add i64 %i.bt, %.idx
  %i.bv = sub i64 %.01316.i.i.i102.le, %i.bu
  %i.bw = and i64 %.017.i.i.i, -2
  %i.bx = add i64 %i.bv, %i.bw                    ; 3 uses
  %i.by = lshr i64 %i.bx, 1
  %i.bz = add nuw i64 %i.by, 1                    ; 5 uses
  %min.iters.check103 = icmp ult i64 %i.bx, 6
  br i1 %min.iters.check103, label %.lr.ph.i.i42.i.i.preheader, label %vector.memcheck100

vector.memcheck100:                               ; preds = %iter.check119
  %i.ca = ptrtoaddr ptr %i.br to i64
  %10 = ptrtoaddr ptr %1 to i64
  %i.cb = add i64 %.idx, %10
  %i.cc = sub i64 %i.cb, %i.ca
  %diff.check101 = icmp ugt i64 %i.cc, -32
  br i1 %diff.check101, label %.lr.ph.i.i42.i.i.preheader, label %vector.main.loop.iter.check104

vector.main.loop.iter.check104:                   ; preds = %vector.memcheck100
  %min.iters.check105 = icmp ult i64 %i.bx, 30
  br i1 %min.iters.check105, label %vec.epilog.ph123, label %vector.ph106

vector.ph106:                                     ; preds = %vector.main.loop.iter.check104
  %i.cd = and i64 %i.bz, 12
  %n.vec107 = and i64 %i.bz, -16                  ; 4 uses
  %i.ce = shl i64 %n.vec107, 1                    ; 2 uses
  %i.cf = getelementptr i8, ptr %i.bq, i64 %i.ce
  %i.cg = getelementptr i8, ptr %i.bs, i64 %i.ce
  br label %vector.body108

vector.body108:                                   ; preds = %vector.ph106, %vector.body108
  %index109 = phi i64 [ 0, %vector.ph106 ], [ %index.next114, %vector.body108 ] ; 2 uses
  %i.ch = shl i64 %index109, 1                    ; 2 uses
  %next.gep110 = getelementptr i8, ptr %i.bq, i64 %i.ch ; 2 uses
  %next.gep111 = getelementptr i8, ptr %i.bs, i64 %i.ch ; 2 uses
  %i.ci = getelementptr i8, ptr %next.gep110, i64 16
  %wide.load112 = load <8 x i16>, ptr %next.gep110, align 1
  %wide.load113 = load <8 x i16>, ptr %i.ci, align 1
  %i.cj = getelementptr i8, ptr %next.gep111, i64 16
  store <8 x i16> %wide.load112, ptr %next.gep111, align 1
  store <8 x i16> %wide.load113, ptr %i.cj, align 1
  %index.next114 = add nuw i64 %index109, 16      ; 2 uses
  %i.ck = icmp eq i64 %index.next114, %n.vec107
  br i1 %i.ck, label %middle.block115, label %vector.body108, !llvm.loop !3395

middle.block115:                                  ; preds = %vector.body108
  %cmp.n116 = icmp eq i64 %i.bz, %n.vec107
  br i1 %cmp.n116, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE11move_assignIS5_EEvT_m.exit46.i.i, label %vec.epilog.iter.check121

vec.epilog.iter.check121:                         ; preds = %middle.block115
  %min.epilog.iters.check122 = icmp eq i64 %i.cd, 0
  br i1 %min.epilog.iters.check122, label %.lr.ph.i.i42.i.i.preheader, label %vec.epilog.ph123, !prof !326

vec.epilog.ph123:                                 ; preds = %vector.main.loop.iter.check104, %vec.epilog.iter.check121
  %vec.epilog.resume.val117 = phi i64 [ %n.vec107, %vec.epilog.iter.check121 ], [ 0, %vector.main.loop.iter.check104 ]
  %n.vec124 = and i64 %i.bz, -4                   ; 3 uses
  %i.cl = shl i64 %n.vec124, 1                    ; 2 uses
  %i.cm = getelementptr i8, ptr %i.bq, i64 %i.cl
  %i.cn = getelementptr i8, ptr %i.bs, i64 %i.cl
  br label %vec.epilog.vector.body125

vec.epilog.vector.body125:                        ; preds = %vec.epilog.vector.body125, %vec.epilog.ph123
  %index126 = phi i64 [ %vec.epilog.resume.val117, %vec.epilog.ph123 ], [ %index.next130, %vec.epilog.vector.body125 ] ; 2 uses
  %i.co = shl i64 %index126, 1                    ; 2 uses
  %next.gep127 = getelementptr i8, ptr %i.bq, i64 %i.co
  %next.gep128 = getelementptr i8, ptr %i.bs, i64 %i.co
  %wide.load129 = load <4 x i16>, ptr %next.gep127, align 1
  store <4 x i16> %wide.load129, ptr %next.gep128, align 1
  %index.next130 = add nuw i64 %index126, 4       ; 2 uses
  %i.cp = icmp eq i64 %index.next130, %n.vec124
  br i1 %i.cp, label %vec.epilog.middle.block131, label %vec.epilog.vector.body125, !llvm.loop !3396

vec.epilog.middle.block131:                       ; preds = %vec.epilog.vector.body125
  %cmp.n132 = icmp eq i64 %i.bz, %n.vec124
  br i1 %cmp.n132, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE11move_assignIS5_EEvT_m.exit46.i.i, label %.lr.ph.i.i42.i.i.preheader

.lr.ph.i.i42.i.i.preheader:                       ; preds = %iter.check119, %vector.memcheck100, %vec.epilog.iter.check121, %vec.epilog.middle.block131
  %.012.i.i43.i.i.ph = phi ptr [ %i.bq, %iter.check119 ], [ %i.bq, %vector.memcheck100 ], [ %i.cf, %vec.epilog.iter.check121 ], [ %i.cm, %vec.epilog.middle.block131 ]
  %.0911.i.i44.i.i.ph = phi ptr [ %i.bs, %iter.check119 ], [ %i.bs, %vector.memcheck100 ], [ %i.cg, %vec.epilog.iter.check121 ], [ %i.cn, %vec.epilog.middle.block131 ]
  br label %.lr.ph.i.i42.i.i

.lr.ph.i.i42.i.i:                                 ; preds = %.lr.ph.i.i42.i.i.preheader, %.lr.ph.i.i42.i.i
  %.012.i.i43.i.i = phi ptr [ %i.cr, %.lr.ph.i.i42.i.i ], [ %.012.i.i43.i.i.ph, %.lr.ph.i.i42.i.i.preheader ] ; 3 uses
  %.0911.i.i44.i.i = phi ptr [ %i.cs, %.lr.ph.i.i42.i.i ], [ %.0911.i.i44.i.i.ph, %.lr.ph.i.i42.i.i.preheader ] ; 2 uses
  %i.cq = load i16, ptr %.012.i.i43.i.i, align 1
  store i16 %i.cq, ptr %.0911.i.i44.i.i, align 1
  %i.cr = getelementptr inbounds nuw i8, ptr %.012.i.i43.i.i, i64 2
  %i.cs = getelementptr inbounds nuw i8, ptr %.0911.i.i44.i.i, i64 2
  %.not.i.i45.i.i = icmp eq ptr %.012.i.i43.i.i, %i.bj
  br i1 %.not.i.i45.i.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE11move_assignIS5_EEvT_m.exit46.i.i, label %.lr.ph.i.i42.i.i, !llvm.loop !3397

_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE11move_assignIS5_EEvT_m.exit46.i.i: ; preds = %.lr.ph.i.i42.i.i, %middle.block115, %vec.epilog.middle.block131, %_ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit.i.i
  store i64 %i.bo, ptr %i.b, align 8, !tbaa !246
  br label %_ZN5boost7movelib14buffered_mergeIPSt4pairI5emptyS3_ENS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_SG_SG_T0_RT1_.exit

bb.l:                                             ; preds = %bb.h
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %2, i64 %3)
  %.not50 = icmp ult i64 %i.af, %.sroa.speculated
  br i1 %.not50, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %3 ; 2 uses
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %4 ; 2 uses
  tail call void @_ZN5boost7movelib15detail_adaptive12stable_mergeIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvT_SH_SH_T0_RT1_(ptr noundef %i.ct, ptr noundef nonnull %i.ad, ptr noundef %i.cu, ptr noundef nonnull align 8 dereferenceable(24) %5)
  tail call void @_ZN5boost7movelib15detail_adaptive12stable_mergeIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvT_SH_SH_T0_RT1_(ptr noundef %1, ptr noundef %i.ct, ptr noundef %i.cu, ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %_ZN5boost7movelib14buffered_mergeIPSt4pairI5emptyS3_ENS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_SG_SG_T0_RT1_.exit

bb.n:                                             ; preds = %bb.l
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %4
  tail call void @_ZN5boost7movelib15detail_adaptive12stable_mergeIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvT_SH_SH_T0_RT1_(ptr noundef %1, ptr noundef nonnull %i.ad, ptr noundef %i.cv, ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %_ZN5boost7movelib14buffered_mergeIPSt4pairI5emptyS3_ENS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_SG_SG_T0_RT1_.exit

_ZN5boost7movelib14buffered_mergeIPSt4pairI5emptyS3_ENS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_SG_SG_T0_RT1_.exit: ; preds = %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE11move_assignIS5_EEvT_m.exit46.i.i, %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE11move_assignIS5_EEvT_m.exit.i.i, %bb.i, %bb.n, %bb.m, %_ZN5boost7movelib15detail_adaptive12stable_mergeIPSt4pairI5emptyS4_ENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS9_9select1stIS4_EEEEEENS0_13adaptive_xbufIS5_S6_mEEEEvT_SJ_SJ_T0_RT1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib29merge_sort_uninitialized_copyIPSt4pairI5emptyS3_ES5_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEEvT_SE_T0_T1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.c = ptrtoint ptr %0 to i64                   ; 5 uses
  %i.d = sub i64 %i.b, %i.c                       ; 3 uses
  %i.e = ashr exact i64 %i.d, 1                   ; 3 uses
  %i.f = icmp ult i64 %i.e, 17
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %0, %1
  br i1 %.not.i, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessI5emptyESt4pairIS6_S6_ENS3_9select1stIS6_EEEEPS9_SD_EEvT0_SE_T1_T_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i16, ptr %0, align 1                ; 4 uses
  store i16 %i.g, ptr %2, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 4 uses
  %.not2236.i = icmp eq ptr %i.h, %1
  br i1 %.not2236.i, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessI5emptyESt4pairIS6_S6_ENS3_9select1stIS6_EEEEPS9_SD_EEvT0_SE_T1_T_.exit, label %iter.check96

iter.check96:                                     ; preds = %bb.c
  %i.i = add i64 %i.b, -4
  %i.j = sub i64 %i.i, %i.c                       ; 3 uses
  %i.k = lshr i64 %i.j, 1
  %i.l = add nuw i64 %i.k, 1                      ; 5 uses
  %min.iters.check82 = icmp ult i64 %i.j, 6
  br i1 %min.iters.check82, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check83

vector.main.loop.iter.check83:                    ; preds = %iter.check96
  %min.iters.check84 = icmp ult i64 %i.j, 30
  br i1 %min.iters.check84, label %vec.epilog.ph100, label %vector.ph85

vector.ph85:                                      ; preds = %vector.main.loop.iter.check83
  %i.m = and i64 %i.l, 12
  %n.vec86 = and i64 %i.l, -16                    ; 4 uses
  %i.n = shl i64 %n.vec86, 1                      ; 2 uses
  %i.o = getelementptr i8, ptr %i.h, i64 %i.n
  %i.p = getelementptr i8, ptr %2, i64 %i.n
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.g, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body87

vector.body87:                                    ; preds = %vector.ph85, %vector.body87
  %index88 = phi i64 [ 0, %vector.ph85 ], [ %index.next90, %vector.body87 ] ; 2 uses
  %i.q = shl i64 %index88, 1
  %next.gep89 = getelementptr i8, ptr %2, i64 %i.q ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %next.gep89, i64 2
  %i.s = getelementptr inbounds nuw i8, ptr %next.gep89, i64 18
  store <8 x i16> %broadcast.splat, ptr %i.r, align 1
  store <8 x i16> %broadcast.splat, ptr %i.s, align 1
  %index.next90 = add nuw i64 %index88, 16        ; 2 uses
  %i.t = icmp eq i64 %index.next90, %n.vec86
  br i1 %i.t, label %middle.block91, label %vector.body87, !llvm.loop !3398

middle.block91:                                   ; preds = %vector.body87
  %cmp.n92 = icmp eq i64 %i.l, %n.vec86
  br i1 %cmp.n92, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessI5emptyESt4pairIS6_S6_ENS3_9select1stIS6_EEEEPS9_SD_EEvT0_SE_T1_T_.exit, label %vec.epilog.iter.check98

vec.epilog.iter.check98:                          ; preds = %middle.block91
  %min.epilog.iters.check99 = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check99, label %.lr.ph.i.preheader, label %vec.epilog.ph100, !prof !326

vec.epilog.ph100:                                 ; preds = %vector.main.loop.iter.check83, %vec.epilog.iter.check98
  %vec.epilog.resume.val93 = phi i64 [ %n.vec86, %vec.epilog.iter.check98 ], [ 0, %vector.main.loop.iter.check83 ]
  %n.vec101 = and i64 %i.l, -4                    ; 3 uses
  %i.u = shl i64 %n.vec101, 1                     ; 2 uses
  %i.v = getelementptr i8, ptr %i.h, i64 %i.u
  %i.w = getelementptr i8, ptr %2, i64 %i.u
  %broadcast.splatinsert102 = insertelement <4 x i16> poison, i16 %i.g, i64 0
  %broadcast.splat103 = shufflevector <4 x i16> %broadcast.splatinsert102, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body104

vec.epilog.vector.body104:                        ; preds = %vec.epilog.vector.body104, %vec.epilog.ph100
  %index105 = phi i64 [ %vec.epilog.resume.val93, %vec.epilog.ph100 ], [ %index.next107, %vec.epilog.vector.body104 ] ; 2 uses
  %i.x = shl i64 %index105, 1
  %next.gep106 = getelementptr i8, ptr %2, i64 %i.x
  %i.y = getelementptr inbounds nuw i8, ptr %next.gep106, i64 2
  store <4 x i16> %broadcast.splat103, ptr %i.y, align 1
  %index.next107 = add nuw i64 %index105, 4       ; 2 uses
  %i.z = icmp eq i64 %index.next107, %n.vec101
  br i1 %i.z, label %vec.epilog.middle.block108, label %vec.epilog.vector.body104, !llvm.loop !3399

vec.epilog.middle.block108:                       ; preds = %vec.epilog.vector.body104
  %cmp.n109 = icmp eq i64 %i.l, %n.vec101
  br i1 %cmp.n109, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessI5emptyESt4pairIS6_S6_ENS3_9select1stIS6_EEEEPS9_SD_EEvT0_SE_T1_T_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check96, %vec.epilog.iter.check98, %vec.epilog.middle.block108
  %.ph = phi ptr [ %i.h, %iter.check96 ], [ %i.o, %vec.epilog.iter.check98 ], [ %i.v, %vec.epilog.middle.block108 ]
  %.03437.i.ph = phi ptr [ %2, %iter.check96 ], [ %i.p, %vec.epilog.iter.check98 ], [ %i.w, %vec.epilog.middle.block108 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.aa = phi ptr [ %i.ab, %.lr.ph.i ], [ %.ph, %.lr.ph.i.preheader ]
  %.03437.i = phi ptr [ %storemerge38.i, %.lr.ph.i ], [ %.03437.i.ph, %.lr.ph.i.preheader ]
  %storemerge38.i = getelementptr inbounds nuw i8, ptr %.03437.i, i64 2 ; 2 uses
  store i16 %i.g, ptr %storemerge38.i, align 1
end_hunk_1
