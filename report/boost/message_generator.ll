inline.NumInlined: 7335
inline.NumDeleted: 3134
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN5boost4mp116detail19mp_with_index_impl_ILm9EE4callILm0ENS_5beast6detail7variantIJNS5_14buffers_suffixINS6_11buffers_refINS5_16buffers_cat_viewIJNS_4asio12const_bufferESC_SC_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSD_10chunk_crlfEEEEEEEENS8_INSA_IJSL_St5arrayISC_Lm65EEEEEEENS8_ISO_EENS8_INSA_IJSL_NSD_6detail10chunk_sizeESC_SJ_SO_SJ_EEEEENS8_INSA_IJST_SC_SJ_SO_SJ_EEEEENS8_INSA_IJST_SC_SJ_SO_SJ_SC_SC_SJ_EEEEENS8_INSA_IJSL_ST_SC_SJ_SO_SJ_SC_SC_SJ_EEEEENS8_INSA_IJSC_SC_SJ_EEEEEEE7destroyEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOS16_:bb.a
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !392
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.g, %bb.g ], [ %i.q, %bb.h ]
  %i.r = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.r, label %bb.i, label %_ZN5boost5beast6detail7variantIJNS0_14buffers_suffixINS1_11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEENS3_INS5_IJSG_St5arrayIS7_Lm65EEEEEEENS3_ISJ_EENS3_INS5_IJSG_NS8_6detail10chunk_sizeES7_SE_SJ_SE_EEEEENS3_INS5_IJSO_S7_SE_SJ_SE_EEEEENS3_INS5_IJSO_S7_SE_SJ_SE_S7_S7_SE_EEEEENS3_INS5_IJSG_SO_S7_SE_SJ_SE_S7_S7_SE_EEEEENS3_INS5_IJS7_S7_SE_EEEEEEE7destroyclISt17integral_constantImLm4EEEEvT_.exit, !prof !391

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #33
  br label %_ZN5boost5beast6detail7variantIJNS0_14buffers_suffixINS1_11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEENS3_INS5_IJSG_St5arrayIS7_Lm65EEEEEEENS3_ISJ_EENS3_INS5_IJSG_NS8_6detail10chunk_sizeES7_SE_SJ_SE_EEEEENS3_INS5_IJSO_S7_SE_SJ_SE_EEEEENS3_INS5_IJSO_S7_SE_SJ_SE_S7_S7_SE_EEEEENS3_INS5_IJSG_SO_S7_SE_SJ_SE_S7_S7_SE_EEEEENS3_INS5_IJS7_S7_SE_EEEEEEE7destroyclISt17integral_constantImLm4EEEEvT_.exit

bb.j:                                             ; preds = %bb.a
  %i.s = load ptr, ptr %1, align 8, !tbaa !1892, !nonnull !67, !align !79
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !416  ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5boost5beast6detail7variantIJNS0_14buffers_suffixINS1_11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEENS3_INS5_IJSG_St5arrayIS7_Lm65EEEEEEENS3_ISJ_EENS3_INS5_IJSG_NS8_6detail10chunk_sizeES7_SE_SJ_SE_EEEEENS3_INS5_IJSO_S7_SE_SJ_SE_EEEEENS3_INS5_IJSO_S7_SE_SJ_SE_S7_S7_SE_EEEEENS3_INS5_IJSG_SO_S7_SE_SJ_SE_S7_S7_SE_EEEEENS3_INS5_IJS7_S7_SE_EEEEEEE7destroyclISt17integral_constantImLm4EEEEvT_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.v, align 8, !tbaa !419
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !421
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !9
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #33, !inline_history !1895
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !9
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #33, !inline_history !1895
  br label %_ZN5boost5beast6detail7variantIJNS0_14buffers_suffixINS1_11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEENS3_INS5_IJSG_St5arrayIS7_Lm65EEEEEEENS3_ISJ_EENS3_INS5_IJSG_NS8_6detail10chunk_sizeES7_SE_SJ_SE_EEEEENS3_INS5_IJSO_S7_SE_SJ_SE_EEEEENS3_INS5_IJSO_S7_SE_SJ_SE_S7_S7_SE_EEEEENS3_INS5_IJSG_SO_S7_SE_SJ_SE_S7_S7_SE_EEEEENS3_INS5_IJS7_S7_SE_EEEEEEE7destroyclISt17integral_constantImLm4EEEEvT_.exit

bb.m:                                             ; preds = %bb.k
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i.i.i.i9 = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i.i.i.i.i.i9, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 8, !tbaa !392
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.y, %bb.n ], [ %i.ai, %bb.o ]
  %i.aj = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.aj, label %bb.p, label %_ZN5boost5beast6detail7variantIJNS0_14buffers_suffixINS1_11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEENS3_INS5_IJSG_St5arrayIS7_Lm65EEEEEEENS3_ISJ_EENS3_INS5_IJSG_NS8_6detail10chunk_sizeES7_SE_SJ_SE_EEEEENS3_INS5_IJSO_S7_SE_SJ_SE_EEEEENS3_INS5_IJSO_S7_SE_SJ_SE_S7_S7_SE_EEEEENS3_INS5_IJSG_SO_S7_SE_SJ_SE_S7_S7_SE_EEEEENS3_INS5_IJS7_S7_SE_EEEEEEE7destroyclISt17integral_constantImLm4EEEEvT_.exit, !prof !391

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #33
  br label %_ZN5boost5beast6detail7variantIJNS0_14buffers_suffixINS1_11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEENS3_INS5_IJSG_St5arrayIS7_Lm65EEEEEEENS3_ISJ_EENS3_INS5_IJSG_NS8_6detail10chunk_sizeES7_SE_SJ_SE_EEEEENS3_INS5_IJSO_S7_SE_SJ_SE_EEEEENS3_INS5_IJSO_S7_SE_SJ_SE_S7_S7_SE_EEEEENS3_INS5_IJSG_SO_S7_SE_SJ_SE_S7_S7_SE_EEEEENS3_INS5_IJS7_S7_SE_EEEEEEE7destroyclISt17integral_constantImLm4EEEEvT_.exit

bb.q:                                             ; preds = %bb.a
  %i.ak = load ptr, ptr %1, align 8, !tbaa !1892, !nonnull !67, !align !79
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !416 ; 8 uses
  %.not.i.i.i.i.i.i.i10 = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i.i.i.i10, label %_ZN5boost5beast6detail7variantIJNS0_14buffers_suffixINS1_11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEENS3_INS5_IJSG_St5arrayIS7_Lm65EEEEEEENS3_ISJ_EENS3_INS5_IJSG_NS8_6detail10chunk_sizeES7_SE_SJ_SE_EEEEENS3_INS5_IJSO_S7_SE_SJ_SE_EEEEENS3_INS5_IJSO_S7_SE_SJ_SE_S7_S7_SE_EEEEENS3_INS5_IJSG_SO_S7_SE_SJ_SE_S7_S7_SE_EEEEENS3_INS5_IJS7_S7_SE_EEEEEEE7destroyclISt17integral_constantImLm4EEEEvT_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 4 uses
  %i.ao = load atomic i64, ptr %i.an acquire, align 8 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 4294967297
  %i.aq = trunc i64 %i.ao to i32                  ; 2 uses
  br i1 %i.ap, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.an, align 8, !tbaa !419
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  store i32 0, ptr %i.ar, align 4, !tbaa !421
  %i.as = load ptr, ptr %i.am, align 8, !tbaa !9
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #33, !inline_history !1896
  %i.av = load ptr, ptr %i.am, align 8, !tbaa !9
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8
  tail call void %i.ax(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #33, !inline_history !1896
  br label %_ZN5boost5beast6detail7variantIJNS0_14buffers_suffixINS1_11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEENS3_INS5_IJSG_St5arrayIS7_Lm65EEEEEEENS3_ISJ_EENS3_INS5_IJSG_NS8_6detail10chunk_sizeES7_SE_SJ_SE_EEEEENS3_INS5_IJSO_S7_SE_SJ_SE_EEEEENS3_INS5_IJSO_S7_SE_SJ_SE_S7_S7_SE_EEEEENS3_INS5_IJSG_SO_S7_SE_SJ_SE_S7_S7_SE_EEEEENS3_INS5_IJS7_S7_SE_EEEEEEE7destroyclISt17integral_constantImLm4EEEEvT_.exit

bb.t:                                             ; preds = %bb.r
  %i.ay = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i.i.i.i11 = icmp eq i8 %i.ay, 0
  br i1 %.not.i.i.i.i.i.i.i.i11, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.az = add nsw i32 %i.aq, -1
  store i32 %i.az, ptr %i.an, align 8, !tbaa !392
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i12

bb.v:                                             ; preds = %bb.t
  %i.ba = atomicrmw volatile add ptr %i.an, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i12

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i12: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i.i.i.i.i.i13 = phi i32 [ %i.aq, %bb.u ], [ %i.ba, %bb.v ]
  %i.bb = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i13, 1
  br i1 %i.bb, label %bb.w, label %_ZN5boost5beast6detail7variantIJNS0_14buffers_suffixINS1_11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEENS3_INS5_IJSG_St5arrayIS7_Lm65EEEEEEENS3_ISJ_EENS3_INS5_IJSG_NS8_6detail10chunk_sizeES7_SE_SJ_SE_EEEEENS3_INS5_IJSO_S7_SE_SJ_SE_EEEEENS3_INS5_IJSO_S7_SE_SJ_SE_S7_S7_SE_EEEEENS3_INS5_IJSG_SO_S7_SE_SJ_SE_S7_S7_SE_EEEEENS3_INS5_IJS7_S7_SE_EEEEEEE7destroyclISt17integral_constantImLm4EEEEvT_.exit, !prof !391

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i12
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #33
  br label %_ZN5boost5beast6detail7variantIJNS0_14buffers_suffixINS1_11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEENS3_INS5_IJSG_St5arrayIS7_Lm65EEEEEEENS3_ISJ_EENS3_INS5_IJSG_NS8_6detail10chunk_sizeES7_SE_SJ_SE_EEEEENS3_INS5_IJSO_S7_SE_SJ_SE_EEEEENS3_INS5_IJSO_S7_SE_SJ_SE_S7_S7_SE_EEEEENS3_INS5_IJSG_SO_S7_SE_SJ_SE_S7_S7_SE_EEEEENS3_INS5_IJS7_S7_SE_EEEEEEE7destroyclISt17integral_constantImLm4EEEEvT_.exit

bb.x:                                             ; preds = %bb.a
  %i.bc = load ptr, ptr %1, align 8, !tbaa !1892, !nonnull !67, !align !79
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !416 ; 8 uses
  %.not.i.i.i.i.i.i.i.i14 = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i.i.i.i.i14, label %_ZN5boost5beast6detail7variantIJNS0_14buffers_suffixINS1_11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEENS3_INS5_IJSG_St5arrayIS7_Lm65EEEEEEENS3_ISJ_EENS3_INS5_IJSG_NS8_6detail10chunk_sizeES7_SE_SJ_SE_EEEEENS3_INS5_IJSO_S7_SE_SJ_SE_EEEEENS3_INS5_IJSO_S7_SE_SJ_SE_S7_S7_SE_EEEEENS3_INS5_IJSG_SO_S7_SE_SJ_SE_S7_S7_SE_EEEEENS3_INS5_IJS7_S7_SE_EEEEEEE7destroyclISt17integral_constantImLm4EEEEvT_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 4 uses
  %i.bg = load atomic i64, ptr %i.bf acquire, align 8 ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 4294967297
  %i.bi = trunc i64 %i.bg to i32                  ; 2 uses
  br i1 %i.bh, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.bf, align 8, !tbaa !419
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  store i32 0, ptr %i.bj, align 4, !tbaa !421
  %i.bk = load ptr, ptr %i.be, align 8, !tbaa !9
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  tail call void %i.bm(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #33, !inline_history !1897
  %i.bn = load ptr, ptr %i.be, align 8, !tbaa !9
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8
  tail call void %i.bp(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #33, !inline_history !1897
  br label %_ZN5boost5beast6detail7variantIJNS0_14buffers_suffixINS1_11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEENS3_INS5_IJSG_St5arrayIS7_Lm65EEEEEEENS3_ISJ_EENS3_INS5_IJSG_NS8_6detail10chunk_sizeES7_SE_SJ_SE_EEEEENS3_INS5_IJSO_S7_SE_SJ_SE_EEEEENS3_INS5_IJSO_S7_SE_SJ_SE_S7_S7_SE_EEEEENS3_INS5_IJSG_SO_S7_SE_SJ_SE_S7_S7_SE_EEEEENS3_INS5_IJS7_S7_SE_EEEEEEE7destroyclISt17integral_constantImLm4EEEEvT_.exit

bb.aa:                                            ; preds = %bb.y
  %i.bq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i.i.i.i.i15 = icmp eq i8 %i.bq, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i15, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.br = add nsw i32 %i.bi, -1
  store i32 %i.br, ptr %i.bf, align 8, !tbaa !392
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i16

bb.ac:                                            ; preds = %bb.aa
  %i.bs = atomicrmw volatile add ptr %i.bf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i16

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i16: ; preds = %bb.ac, %bb.ab
  %.0.i.i.i.i.i.i.i.i.i.i17 = phi i32 [ %i.bi, %bb.ab ], [ %i.bs, %bb.ac ]
  %i.bt = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i17, 1
  br i1 %i.bt, label %bb.ad, label %_ZN5boost5beast6detail7variantIJNS0_14buffers_suffixINS1_11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEENS3_INS5_IJSG_St5arrayIS7_Lm65EEEEEEENS3_ISJ_EENS3_INS5_IJSG_NS8_6detail10chunk_sizeES7_SE_SJ_SE_EEEEENS3_INS5_IJSO_S7_SE_SJ_SE_EEEEENS3_INS5_IJSO_S7_SE_SJ_SE_S7_S7_SE_EEEEENS3_INS5_IJSG_SO_S7_SE_SJ_SE_S7_S7_SE_EEEEENS3_INS5_IJS7_S7_SE_EEEEEEE7destroyclISt17integral_constantImLm4EEEEvT_.exit, !prof !391

bb.ad:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i16
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #33
  br label %_ZN5boost5beast6detail7variantIJNS0_14buffers_suffixINS1_11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEENS3_INS5_IJSG_St5arrayIS7_Lm65EEEEEEENS3_ISJ_EENS3_INS5_IJSG_NS8_6detail10chunk_sizeES7_SE_SJ_SE_EEEEENS3_INS5_IJSO_S7_SE_SJ_SE_EEEEENS3_INS5_IJSO_S7_SE_SJ_SE_S7_S7_SE_EEEEENS3_INS5_IJSG_SO_S7_SE_SJ_SE_S7_S7_SE_EEEEENS3_INS5_IJS7_S7_SE_EEEEEEE7destroyclISt17integral_constantImLm4EEEEvT_.exit

_ZN5boost5beast6detail7variantIJNS0_14buffers_suffixINS1_11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEENS3_INS5_IJSG_St5arrayIS7_Lm65EEEEEEENS3_ISJ_EENS3_INS5_IJSG_NS8_6detail10chunk_sizeES7_SE_SJ_SE_EEEEENS3_INS5_IJSO_S7_SE_SJ_SE_EEEEENS3_INS5_IJSO_S7_SE_SJ_SE_S7_S7_SE_EEEEENS3_INS5_IJSG_SO_S7_SE_SJ_SE_S7_S7_SE_EEEEENS3_INS5_IJS7_S7_SE_EEEEEEE7destroyclISt17integral_constantImLm4EEEEvT_.exit: ; preds = %bb.a, %bb.ad, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i16, %bb.z, %bb.x, %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i12, %bb.s, %bb.q, %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.l, %bb.j, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.e, %bb.c, %bb.a, %bb.a, %bb.a, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast4http10serializerILb0ENS1_6detail20fragmented_test_bodyENS1_12basic_fieldsISaIcEEEE4nextINS1_17message_generator14generator_implILb0ES4_S7_E5visitEEEvRNS_6system10error_codeEOT_(ptr noundef nonnull align 8 dereferenceable(1431) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::beast::detail::buffers_ref.157", align 8 ; 4 uses
  %4 = alloca %"struct.boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>::const_iterator::increment", align 8 ; 4 uses
  %5 = alloca %"struct.boost::beast::detail::variant<boost::beast::buffers_suffix<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>>, boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, std::array<boost::asio::const_buffer, 65>>>, boost::beast::buffers_suffix<std::array<boost::asio::const_buffer, 65>>, boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, std::array<boost::asio::const_buffer, 65>, boost::beast::http::chunk_crlf>>, boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, std::array<boost::asio::const_buffer, 65>, boost::beast::http::chunk_crlf>>, boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, std::array<boost::asio::const_buffer, 65>, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>>, boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, std::array<boost::asio::const_buffer, 65>, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>>, boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>>>::destroy", align 8 ; 4 uses
  %6 = alloca %"class.boost::beast::detail::buffers_ref.320", align 8 ; 4 uses
  %7 = alloca %"class.boost::beast::detail::buffers_ref.319", align 8 ; 4 uses
  %8 = alloca %"class.boost::beast::detail::buffers_ref.318", align 8 ; 4 uses
  %9 = alloca %"struct.std::array.280", align 8   ; 13 uses
  %10 = alloca %"class.boost::beast::detail::buffers_ref.147", align 8 ; 4 uses
  %11 = alloca %"class.boost::beast::detail::buffers_ref.317", align 8 ; 4 uses
  %12 = alloca %"class.boost::system::error_code", align 8 ; 6 uses
  %13 = alloca %"struct.std::array.280", align 8  ; 13 uses
  %14 = alloca %"struct.boost::beast::detail::variant<boost::beast::buffers_suffix<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>>, boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, std::array<boost::asio::const_buffer, 65>>>, boost::beast::buffers_suffix<std::array<boost::asio::const_buffer, 65>>, boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, std::array<boost::asio::const_buffer, 65>, boost::beast::http::chunk_crlf>>, boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, std::array<boost::asio::const_buffer, 65>, boost::beast::http::chunk_crlf>>, boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, std::array<boost::asio::const_buffer, 65>, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>>, boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, std::array<boost::asio::const_buffer, 65>, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>>, boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>>>::destroy", align 8 ; 4 uses
  %15 = alloca %"struct.std::array.280", align 8  ; 13 uses
  %16 = alloca %"class.boost::beast::detail::buffers_ref.147", align 8 ; 4 uses
  %17 = alloca %"class.boost::beast::detail::buffers_ref.314", align 8 ; 4 uses
  %18 = alloca %"class.boost::system::error_code", align 8 ; 6 uses
  %19 = alloca %"struct.std::array.280", align 8  ; 13 uses
  %20 = alloca %"class.boost::optional.308", align 8 ; 7 uses
  %21 = alloca %"class.boost::beast::detail::buffers_ref", align 8 ; 4 uses
  %22 = alloca %"class.boost::beast::detail::buffers_ref", align 8 ; 4 uses
  %.sroa.4101 = alloca [1047 x i8], align 1       ; 4 uses
  %23 = alloca %"class.boost::optional.308", align 8 ; 8 uses
  %24 = alloca %"class.boost::beast::detail::buffers_ref", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %25 = alloca %"class.boost::asio::const_buffer", align 8 ; 4 uses
  %26 = alloca %"struct.boost::beast::http::chunk_crlf", align 1 ; 3 uses
  %27 = alloca %"struct.boost::beast::http::chunk_crlf", align 1 ; 3 uses
  %28 = alloca %"class.boost::asio::const_buffer", align 8 ; 4 uses
  %29 = alloca %"struct.boost::beast::http::chunk_crlf", align 1 ; 3 uses
  %30 = alloca %"class.boost::beast::detail::buffers_ref", align 8 ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %31 = alloca %"class.boost::asio::const_buffer", align 8 ; 4 uses
  %32 = alloca %"struct.boost::beast::http::chunk_crlf", align 1 ; 3 uses
  %33 = alloca %"struct.boost::beast::http::chunk_crlf", align 1 ; 3 uses
  %34 = alloca %"class.boost::beast::detail::buffers_ref", align 8 ; 4 uses
  %35 = alloca %"class.boost::optional.308", align 8 ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %36 = alloca %"class.boost::asio::const_buffer", align 8 ; 4 uses
  %37 = alloca %"struct.boost::beast::http::chunk_crlf", align 1 ; 3 uses
  %38 = alloca %"struct.boost::beast::http::chunk_crlf", align 1 ; 3 uses
  %39 = alloca %"class.boost::asio::const_buffer", align 8 ; 4 uses
  %40 = alloca %"struct.boost::beast::http::chunk_crlf", align 1 ; 3 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %41 = alloca %"class.boost::asio::const_buffer", align 8 ; 4 uses
  %42 = alloca %"struct.boost::beast::http::chunk_crlf", align 1 ; 3 uses
  %43 = alloca %"struct.boost::beast::http::chunk_crlf", align 1 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1424 ; 14 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !1888
  switch i32 %i.f, label %_ZN5boost5beast4http10serializerILb0ENS1_6detail20fragmented_test_bodyENS1_12basic_fieldsISaIcEEEE8do_visitILm3ENS1_17message_generator14generator_implILb0ES4_S7_E5visitEEEvRNS_6system10error_codeERT0_.exit [
    i32 0, label %bb.b
    i32 10, label %bb.f
    i32 30, label %bb.t
    i32 20, label %bb.w
    i32 40, label %bb.y
    i32 41, label %bb.z
    i32 42, label %._crit_edge
    i32 50, label %bb.al
    i32 70, label %bb.az
    i32 60, label %bb.bc
    i32 80, label %bb.be
    i32 81, label %bb.bf
    i32 82, label %bb.bh
    i32 100, label %bb.bk
    i32 110, label %bb.bn
    i32 90, label %bb.bp
    i32 91, label %bb.bv
  ]

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !1898
  br label %bb.ad

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1901, !nonnull !67, !align !79 ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.j = load i32, ptr %i.i, align 8, !tbaa !1744 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 84
  %i.l = load i32, ptr %i.k, align 4, !tbaa !1741 ; 4 uses
  store i8 0, ptr %i.g, align 8, !tbaa !141
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.h, ptr %i.m, align 8, !tbaa !430
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store i8 0, ptr %i.n, align 8, !tbaa !432
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.o, align 8, !tbaa !19
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  store <4 x i8> <i8 72, i8 84, i8 84, i8 80>, ptr %i.p, align 8, !tbaa !19
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i8 47, ptr %i.q, align 4, !tbaa !19
  %i.r = udiv i32 %i.j, 10
  %i.s = trunc i32 %i.r to i8
  %i.t = add i8 %i.s, 48
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 133
  store i8 %i.t, ptr %i.u, align 1, !tbaa !19
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 134
  store i8 46, ptr %i.v, align 2, !tbaa !19
  %i.w = urem i32 %i.j, 10
  %i.x = trunc nuw nsw i32 %i.w to i8
  %i.y = or disjoint i8 %i.x, 48
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 135
  store i8 %i.y, ptr %i.z, align 1, !tbaa !19
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i8 32, ptr %i.aa, align 8, !tbaa !19
  %i.ab = udiv i32 %i.l, 100
  %i.ac = trunc i32 %i.ab to i8
  %i.ad = add i8 %i.ac, 48
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 137
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !19
  %i.af = udiv i32 %i.l, 10
  %i.ag = urem i32 %i.af, 10
  %i.ah = trunc nuw nsw i32 %i.ag to i8
  %i.ai = or disjoint i8 %i.ah, 48
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 138
  store i8 %i.ai, ptr %i.aj, align 2, !tbaa !19
  %i.ak = urem i32 %i.l, 10
  %i.al = trunc nuw nsw i32 %i.ak to i8
  %i.am = or disjoint i8 %i.al, 48
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 139
  store i8 %i.am, ptr %i.an, align 1, !tbaa !19
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i8 32, ptr %i.ao, align 4, !tbaa !19
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !172 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %.sroa.016.0.copyload.i.i.i.i = load ptr, ptr %i.as, align 8, !tbaa !319
  br label %_ZN5boost5beast4http10serializerILb0ENS1_6detail20fragmented_test_bodyENS1_12basic_fieldsISaIcEEEE7fwrinitESt17integral_constantIbLb0EE.exit

bb.d:                                             ; preds = %bb.b
  %i.at = tail call { ptr, i64 } @_ZN5boost5beast4http15obsolete_reasonENS1_6statusE(i32 noundef %i.l) ; 2 uses
  %i.au = extractvalue { ptr, i64 } %i.at, 0
  %i.av = extractvalue { ptr, i64 } %i.at, 1
  %.pre.i.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !434
  %.pre176 = load ptr, ptr %0, align 8, !tbaa !1901
  br label %_ZN5boost5beast4http10serializerILb0ENS1_6detail20fragmented_test_bodyENS1_12basic_fieldsISaIcEEEE7fwrinitESt17integral_constantIbLb0EE.exit

_ZN5boost5beast4http10serializerILb0ENS1_6detail20fragmented_test_bodyENS1_12basic_fieldsISaIcEEEE7fwrinitESt17integral_constantIbLb0EE.exit: ; preds = %bb.c, %bb.d
  %i.aw = phi ptr [ %.pre176, %bb.d ], [ %i.h, %bb.c ]
  %i.ax = phi ptr [ %.pre.i.i.i.i, %bb.d ], [ %i.h, %bb.c ]
  %.sroa.6.0.i.i.i.i = phi i64 [ %i.av, %bb.d ], [ %i.aq, %bb.c ]
  %.sroa.016.0.i.i.i.i = phi ptr [ %i.au, %bb.d ], [ %.sroa.016.0.copyload.i.i.i.i, %bb.c ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !157, !noalias !1902
  store ptr %i.p, ptr %i.o, align 8, !tbaa !82
  %.sroa.415.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 13, ptr %.sroa.415.0..sroa_idx.i.i.i.i, align 8, !tbaa !15
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %.sroa.016.0.i.i.i.i, ptr %i.ba, align 8, !tbaa !82
  %.sroa.413.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %.sroa.6.0.i.i.i.i, ptr %.sroa.413.0..sroa_idx.i.i.i.i, align 8, !tbaa !15
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr @.str.28, ptr %i.bb, align 8, !tbaa !82
  %.sroa.411.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 2, ptr %.sroa.411.0..sroa_idx.i.i.i.i, align 8, !tbaa !15
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.az, ptr %i.bc, align 8, !tbaa !442
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.ay, ptr %i.bd, align 8, !tbaa !442
  store i8 1, ptr %i.n, align 8, !tbaa !444
  store i8 1, ptr %i.g, align 8, !tbaa !445
  %i.be = tail call noundef zeroext i1 @_ZNK5boost5beast4http12basic_fieldsISaIcEE16get_chunked_implEv(ptr noundef nonnull align 8 dereferenceable(104) %i.aw)
  br i1 %i.be, label %bb.ak, label %bb.e

bb.e:                                             ; preds = %_ZN5boost5beast4http10serializerILb0ENS1_6detail20fragmented_test_bodyENS1_12basic_fieldsISaIcEEEE7fwrinitESt17integral_constantIbLb0EE.exit
  store i32 10, ptr %i.e, align 8, !tbaa !1888
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !31 ; 2 uses
  %i.bi = and i64 %i.bh, 1
  %.not.i.i = icmp eq i64 %i.bi, 0
  br i1 %.not.i.i, label %_ZNK5boost6system10error_codecvbEv.exit.thread113, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bj = icmp eq i64 %i.bh, 1
  br i1 %i.bj, label %_ZNK5boost6system10error_codecvbEv.exit, label %_ZN5boost5beast4http10serializerILb0ENS1_6detail20fragmented_test_bodyENS1_12basic_fieldsISaIcEEEE8do_visitILm3ENS1_17message_generator14generator_implILb0ES4_S7_E5visitEEEvRNS_6system10error_codeERT0_.exit

_ZNK5boost6system10error_codecvbEv.exit:          ; preds = %bb.g
  %i.bk = load i32, ptr %1, align 8, !tbaa !177
  %.not160 = icmp eq i32 %i.bk, 0
  br i1 %.not160, label %_ZNK5boost6system10error_codecvbEv.exit.thread113, label %_ZN5boost5beast4http10serializerILb0ENS1_6detail20fragmented_test_bodyENS1_12basic_fieldsISaIcEEEE8do_visitILm3ENS1_17message_generator14generator_implILb0ES4_S7_E5visitEEEvRNS_6system10error_codeERT0_.exit

_ZNK5boost6system10error_codecvbEv.exit.thread113: ; preds = %bb.f, %_ZNK5boost6system10error_codecvbEv.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1428
  %i.bm = load i8, ptr %i.bl, align 4, !tbaa !1907, !range !66, !noundef !67
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %bb.v, label %bb.h

bb.h:                                             ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread113
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #33
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1908)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %19, i8 0, i64 1040, i1 false), !noalias !1908
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %bb.h
  %.06.i.i.i.idx.i = phi i64 [ 0, %bb.h ], [ %.06.i.i.i.add.i.4, %.lr.ph.i.i.i.i ] ; 6 uses
  %.06.i.i.i.ptr.i = getelementptr inbounds nuw i8, ptr %19, i64 %.06.i.i.i.idx.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.06.i.i.i.ptr.i, ptr noundef nonnull align 8 dereferenceable(16) %i.bo, i64 16, i1 false), !noalias !1908
  %i.bp = getelementptr inbounds nuw i8, ptr %19, i64 %.06.i.i.i.idx.i
  %.06.i.i.i.ptr.i.1 = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.06.i.i.i.ptr.i.1, ptr noundef nonnull align 8 dereferenceable(16) %i.bo, i64 16, i1 false), !noalias !1908
  %i.bq = getelementptr inbounds nuw i8, ptr %19, i64 %.06.i.i.i.idx.i
  %.06.i.i.i.ptr.i.2 = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.06.i.i.i.ptr.i.2, ptr noundef nonnull align 8 dereferenceable(16) %i.bo, i64 16, i1 false), !noalias !1908
  %i.br = getelementptr inbounds nuw i8, ptr %19, i64 %.06.i.i.i.idx.i
  %.06.i.i.i.ptr.i.3 = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.06.i.i.i.ptr.i.3, ptr noundef nonnull align 8 dereferenceable(16) %i.bo, i64 16, i1 false), !noalias !1908
  %i.bs = getelementptr inbounds nuw i8, ptr %19, i64 %.06.i.i.i.idx.i
  %.06.i.i.i.ptr.i.4 = getelementptr inbounds nuw i8, ptr %i.bs, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.06.i.i.i.ptr.i.4, ptr noundef nonnull align 8 dereferenceable(16) %i.bo, i64 16, i1 false), !noalias !1908
  %.06.i.i.i.add.i.4 = add nuw nsw i64 %.06.i.i.i.idx.i, 80 ; 2 uses
  %.not.i.i.i.i.4 = icmp eq i64 %.06.i.i.i.add.i.4, 1040
end_hunk_0
begin_hunk_1_@_ZN5boost5beast4http10serializerILb0ENS1_6detail20fragmented_test_bodyENS1_12basic_fieldsISaIcEEEE4nextINS1_17message_generator14generator_implILb0ES4_S7_E5visitEEEvRNS_6system10error_codeEOT_:bb.a
  %.sroa.9110.0.copyload = load i64, ptr %.sroa.9110.0..sroa_idx, align 8, !tbaa !15 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #33
  %i.bz = load i64, ptr %i.bg, align 8, !tbaa !31 ; 3 uses
  %i.ca = icmp eq i64 %i.bz, 1                    ; 4 uses
  %i.cb = icmp eq i64 %.sroa.9110.0.copyload, 1   ; 3 uses
  %i.cc = xor i1 %i.cb, %i.ca
  br i1 %i.cc, label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit
  %or.cond.i = and i1 %i.cb, %i.ca
  br i1 %or.cond.i, label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cd = load i32, ptr %1, align 8, !tbaa !19    ; 2 uses
  br i1 %i.ca, label %bb.l, label %_ZNK5boost6system10error_code5valueEv.exit.i

bb.l:                                             ; preds = %bb.k
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !33
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = urem i64 %i.cg, 2097143
  %i.ci = trunc nuw nsw i64 %i.ch to i32
  %i.cj = mul nuw nsw i32 %i.ci, 1000
  %i.ck = add i32 %i.cj, %i.cd
  br label %_ZNK5boost6system10error_code5valueEv.exit.i

_ZNK5boost6system10error_code5valueEv.exit.i:     ; preds = %bb.l, %bb.k
  %.0.i.i36 = phi i32 [ %i.ck, %bb.l ], [ %i.cd, %bb.k ]
  br i1 %i.cb, label %bb.m, label %_ZNK5boost6system10error_code5valueEv.exit17.i

bb.m:                                             ; preds = %_ZNK5boost6system10error_code5valueEv.exit.i
  %i.cl = ptrtoint ptr %.sroa.6107.0.copyload to i64
  %i.cm = urem i64 %i.cl, 2097143
  %i.cn = trunc nuw nsw i64 %i.cm to i32
  %i.co = mul nuw nsw i32 %i.cn, 1000
  %i.cp = add i32 %i.co, %.sroa.0104.0.copyload
  br label %_ZNK5boost6system10error_code5valueEv.exit17.i

_ZNK5boost6system10error_code5valueEv.exit17.i:   ; preds = %bb.m, %_ZNK5boost6system10error_code5valueEv.exit.i
  %.0.i16.i = phi i32 [ %i.cp, %bb.m ], [ %.sroa.0104.0.copyload, %_ZNK5boost6system10error_code5valueEv.exit.i ]
  %i.cq = icmp eq i32 %.0.i.i36, %.0.i16.i
  br i1 %i.cq, label %bb.n, label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit.thread

bb.n:                                             ; preds = %_ZNK5boost6system10error_code5valueEv.exit17.i
  switch i64 %i.bz, label %bb.p [
    i64 0, label %_ZNK5boost6system10error_code8categoryEv.exit.i
    i64 1, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  br label %_ZNK5boost6system10error_code8categoryEv.exit.i

bb.p:                                             ; preds = %bb.n
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !19
  br label %_ZNK5boost6system10error_code8categoryEv.exit.i

_ZNK5boost6system10error_code8categoryEv.exit.i:  ; preds = %bb.p, %bb.o, %bb.n
  %.0.i18.i = phi ptr [ %i.cs, %bb.p ], [ @_ZN5boost6system6detail18interop_cat_holderIvE8instanceE, %bb.o ], [ @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, %bb.n ] ; 2 uses
  switch i64 %.sroa.9110.0.copyload, label %bb.r [
    i64 0, label %_ZNK5boost6system10error_code8categoryEv.exit20.i
    i64 1, label %bb.q
  ]

bb.q:                                             ; preds = %_ZNK5boost6system10error_code8categoryEv.exit.i
  br label %_ZNK5boost6system10error_code8categoryEv.exit20.i

bb.r:                                             ; preds = %_ZNK5boost6system10error_code8categoryEv.exit.i
  br label %_ZNK5boost6system10error_code8categoryEv.exit20.i

_ZNK5boost6system10error_code8categoryEv.exit20.i: ; preds = %bb.r, %bb.q, %_ZNK5boost6system10error_code8categoryEv.exit.i
  %.0.i19.i = phi ptr [ %.sroa.6107.0.copyload, %bb.r ], [ @_ZN5boost6system6detail18interop_cat_holderIvE8instanceE, %bb.q ], [ @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, %_ZNK5boost6system10error_code8categoryEv.exit.i ] ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.i19.i, i64 8
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !26 ; 2 uses
  %i.cv = icmp eq i64 %i.cu, 0
  %i.cw = icmp eq ptr %.0.i18.i, %.0.i19.i
  %i.cx = getelementptr inbounds nuw i8, ptr %.0.i18.i, i64 8
  %i.cy = load i64, ptr %i.cx, align 8
  %i.cz = icmp eq i64 %i.cy, %i.cu
  %i.da = select i1 %i.cv, i1 %i.cw, i1 %i.cz
  br i1 %i.da, label %.thread121, label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit.thread

_ZN5boost6systemeqERKNS0_10error_codeES3_.exit:   ; preds = %bb.j
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !33
  %i.dd = icmp eq ptr %i.dc, %.sroa.6107.0.copyload
  %i.de = load i32, ptr %1, align 8               ; 2 uses
  %i.df = icmp eq i32 %i.de, %.sroa.0104.0.copyload
  %i.dg = select i1 %i.dd, i1 %i.df, i1 false
  br i1 %i.dg, label %.thread121, label %_ZNK5boost6system10error_codecvbEv.exit39

_ZN5boost6systemeqERKNS0_10error_codeES3_.exit.thread: ; preds = %_ZNK5boost6system10error_code5valueEv.exit17.i, %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit, %_ZNK5boost6system10error_code8categoryEv.exit20.i
  %i.dh = and i64 %i.bz, 1
  %.not.i.i37 = icmp eq i64 %i.dh, 0
  br i1 %.not.i.i37, label %_ZNK5boost6system10error_codecvbEv.exit39.thread119, label %bb.s

bb.s:                                             ; preds = %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit.thread
  br i1 %i.ca, label %_ZNK5boost6system10error_codecvbEv.exit39thread-pre-split, label %.thread124

_ZNK5boost6system10error_codecvbEv.exit39thread-pre-split: ; preds = %bb.s
  %.pr = load i32, ptr %1, align 8, !tbaa !177
  br label %_ZNK5boost6system10error_codecvbEv.exit39

_ZNK5boost6system10error_codecvbEv.exit39:        ; preds = %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit, %_ZNK5boost6system10error_codecvbEv.exit39thread-pre-split
  %i.di = phi i32 [ %.pr, %_ZNK5boost6system10error_codecvbEv.exit39thread-pre-split ], [ %i.de, %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit ]
  %.not161 = icmp eq i32 %i.di, 0
  br i1 %.not161, label %_ZNK5boost6system10error_codecvbEv.exit39.thread119, label %.thread124

.thread121:                                       ; preds = %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit, %_ZNK5boost6system10error_code8categoryEv.exit20.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #33
  br label %bb.v

.thread124:                                       ; preds = %_ZNK5boost6system10error_codecvbEv.exit39, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #33
  br label %_ZN5boost5beast4http10serializerILb0ENS1_6detail20fragmented_test_bodyENS1_12basic_fieldsISaIcEEEE8do_visitILm3ENS1_17message_generator14generator_implILb0ES4_S7_E5visitEEEvRNS_6system10error_codeERT0_.exit

_ZNK5boost6system10error_codecvbEv.exit39.thread119: ; preds = %_ZNK5boost6system10error_codecvbEv.exit39, %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit.thread
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 1430
  store i8 %i.bv, ptr %i.dj, align 2, !tbaa !1914
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #33
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.dl, ptr %21, align 8
  call void @_ZN5boost5beast6detail7variantIJNS0_14buffers_suffixINS1_11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEENS3_INS5_IJSG_St5arrayIS7_Lm65EEEEEEENS3_ISJ_EENS3_INS5_IJSG_NS8_6detail10chunk_sizeES7_SE_SJ_SE_EEEEENS3_INS5_IJSO_S7_SE_SJ_SE_EEEEENS3_INS5_IJSO_S7_SE_SJ_SE_S7_S7_SE_EEEEENS3_INS5_IJSG_SO_S7_SE_SJ_SE_S7_S7_SE_EEEEENS3_INS5_IJS7_S7_SE_EEEEEEE7emplaceILm2EJRKNS_11optional_ns15in_place_init_tESG_RSJ_EEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(1185) %i.dk, ptr noundef nonnull align 1 dereferenceable(1) @_ZN5boost11optional_ns13in_place_initE, ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull align 8 dereferenceable(1040) %i.bw) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #33
  store i32 30, ptr %i.e, align 8, !tbaa !1888
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #33
  br label %bb.t

bb.t:                                             ; preds = %_ZNK5boost6system10error_codecvbEv.exit39.thread119, %bb.a
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 1336 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 1416
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 1408 ; 2 uses
  store i8 0, ptr %i.dp, align 8, !tbaa !329
  %i.dq = load i64, ptr %i.dn, align 8, !tbaa !15
  store ptr %i.do, ptr %i.dm, align 8, !tbaa !1915
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 1344
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.dr, i8 0, i64 64, i1 false)
  invoke void @_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEESt5arrayIS7_Lm65EEEEEEEE5setupEm(ptr noundef nonnull align 8 dereferenceable(73) %i.dm, i64 noundef %i.dq)
          to label %_ZN5boost5beast4http10serializerILb0ENS1_6detail20fragmented_test_bodyENS1_12basic_fieldsISaIcEEEE8do_visitILm2ENS1_17message_generator14generator_implILb0ES4_S7_E5visitEEEvRNS_6system10error_codeERT0_.exit unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ds = landingpad { ptr, i32 }
          catch ptr null
  %i.dt = extractvalue { ptr, i32 } %i.ds, 0
  call void @__clang_call_terminate(ptr %i.dt) #34
  unreachable

_ZN5boost5beast4http10serializerILb0ENS1_6detail20fragmented_test_bodyENS1_12basic_fieldsISaIcEEEE8do_visitILm2ENS1_17message_generator14generator_implILb0ES4_S7_E5visitEEEvRNS_6system10error_codeERT0_.exit: ; preds = %bb.t
  store i8 2, ptr %i.dp, align 8, !tbaa !329
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #33
  store ptr %i.dm, ptr %17, align 8
  call void @_ZN5boost5beast4http17message_generator14generator_implILb0ENS1_6detail20fragmented_test_bodyENS1_12basic_fieldsISaIcEEEE5visitclINS0_6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNSD_INSG_IJNS_4asio12const_bufferESI_SI_NS8_6writer11field_rangeENS1_10chunk_crlfEEEEEESt5arrayISI_Lm65EEEEEEEEEEEEEvRNS_6system10error_codeERKT_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #33
  br label %_ZN5boost5beast4http10serializerILb0ENS1_6detail20fragmented_test_bodyENS1_12basic_fieldsISaIcEEEE8do_visitILm3ENS1_17message_generator14generator_implILb0ES4_S7_E5visitEEEvRNS_6system10error_codeERT0_.exit

bb.v:                                             ; preds = %.thread121, %_ZNK5boost6system10error_codecvbEv.exit.thread113
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #33
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.dv, ptr %22, align 8
  call void @_ZN5boost5beast6detail7variantIJNS0_14buffers_suffixINS1_11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEENS3_INS5_IJSG_St5arrayIS7_Lm65EEEEEEENS3_ISJ_EENS3_INS5_IJSG_NS8_6detail10chunk_sizeES7_SE_SJ_SE_EEEEENS3_INS5_IJSO_S7_SE_SJ_SE_EEEEENS3_INS5_IJSO_S7_SE_SJ_SE_S7_S7_SE_EEEEENS3_INS5_IJSG_SO_S7_SE_SJ_SE_S7_S7_SE_EEEEENS3_INS5_IJS7_S7_SE_EEEEEEE7emplaceILm1EJSG_EEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(1185) %i.du, ptr noundef nonnull align 8 dereferenceable(8) %22) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #33
  store i32 20, ptr %i.e, align 8, !tbaa !1888
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.a
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 1336 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 1416
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 1408 ; 2 uses
  store i8 0, ptr %i.dz, align 8, !tbaa !329
  %i.ea = load i64, ptr %i.dx, align 8, !tbaa !15
  store ptr %i.dy, ptr %i.dw, align 8, !tbaa !456
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 1344
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.eb, i8 0, i64 48, i1 false)
  invoke void @_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_6detail11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEEE5setupEm(ptr noundef nonnull align 8 dereferenceable(73) %i.dw, i64 noundef %i.ea)
          to label %_ZN5boost5beast4http10serializerILb0ENS1_6detail20fragmented_test_bodyENS1_12basic_fieldsISaIcEEEE8do_visitILm1ENS1_17message_generator14generator_implILb0ES4_S7_E5visitEEEvRNS_6system10error_codeERT0_.exit unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ec = landingpad { ptr, i32 }
          catch ptr null
  %i.ed = extractvalue { ptr, i32 } %i.ec, 0
  call void @__clang_call_terminate(ptr %i.ed) #34
  unreachable

_ZN5boost5beast4http10serializerILb0ENS1_6detail20fragmented_test_bodyENS1_12basic_fieldsISaIcEEEE8do_visitILm1ENS1_17message_generator14generator_implILb0ES4_S7_E5visitEEEvRNS_6system10error_codeERT0_.exit: ; preds = %bb.w
  store i8 1, ptr %i.dz, align 8, !tbaa !329
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #33
  store ptr %i.dw, ptr %16, align 8
  call void @_ZN5boost5beast4http17message_generator14generator_implILb0ENS1_6detail20fragmented_test_bodyENS1_12basic_fieldsISaIcEEEE5visitclINS0_6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINSD_INS0_16buffers_cat_viewIJNS_4asio12const_bufferESI_SI_NS8_6writer11field_rangeENS1_10chunk_crlfEEEEEEEEEEEEEEvRNS_6system10error_codeERKT_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #33
  br label %_ZN5boost5beast4http10serializerILb0ENS1_6detail20fragmented_test_bodyENS1_12basic_fieldsISaIcEEEE8do_visitILm3ENS1_17message_generator14generator_implILb0ES4_S7_E5visitEEEvRNS_6system10error_codeERT0_.exit

bb.y:                                             ; preds = %bb.a
  store i32 41, ptr %i.e, align 8, !tbaa !1888
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4101)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %15, i8 0, i64 1040, i1 false), !noalias !1917
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  br label %.lr.ph.i.i.i.i40

.lr.ph.i.i.i.i40:                                 ; preds = %.lr.ph.i.i.i.i40, %bb.z
  %.06.i.i.i.idx.i41 = phi i64 [ 0, %bb.z ], [ %.06.i.i.i.add.i43.4, %.lr.ph.i.i.i.i40 ] ; 6 uses
  %.06.i.i.i.ptr.i42 = getelementptr inbounds nuw i8, ptr %15, i64 %.06.i.i.i.idx.i41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.06.i.i.i.ptr.i42, ptr noundef nonnull align 8 dereferenceable(16) %i.ee, i64 16, i1 false), !noalias !1917
  %i.ef = getelementptr inbounds nuw i8, ptr %15, i64 %.06.i.i.i.idx.i41
  %.06.i.i.i.ptr.i42.1 = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.06.i.i.i.ptr.i42.1, ptr noundef nonnull align 8 dereferenceable(16) %i.ee, i64 16, i1 false), !noalias !1917
  %i.eg = getelementptr inbounds nuw i8, ptr %15, i64 %.06.i.i.i.idx.i41
  %.06.i.i.i.ptr.i42.2 = getelementptr inbounds nuw i8, ptr %i.eg, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.06.i.i.i.ptr.i42.2, ptr noundef nonnull align 8 dereferenceable(16) %i.ee, i64 16, i1 false), !noalias !1917
  %i.eh = getelementptr inbounds nuw i8, ptr %15, i64 %.06.i.i.i.idx.i41
  %.06.i.i.i.ptr.i42.3 = getelementptr inbounds nuw i8, ptr %i.eh, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.06.i.i.i.ptr.i42.3, ptr noundef nonnull align 8 dereferenceable(16) %i.ee, i64 16, i1 false), !noalias !1917
  %i.ei = getelementptr inbounds nuw i8, ptr %15, i64 %.06.i.i.i.idx.i41
  %.06.i.i.i.ptr.i42.4 = getelementptr inbounds nuw i8, ptr %i.ei, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.06.i.i.i.ptr.i42.4, ptr noundef nonnull align 8 dereferenceable(16) %i.ee, i64 16, i1 false), !noalias !1917
  %.06.i.i.i.add.i43.4 = add nuw nsw i64 %.06.i.i.i.idx.i41, 80 ; 2 uses
  %.not.i.i.i.i44.4 = icmp eq i64 %.06.i.i.i.add.i43.4, 1040
  br i1 %.not.i.i.i.i44.4, label %_ZN5boost5beast4http6detail20fragmented_test_body6writer3getERNS_6system10error_codeE.exit48, label %.lr.ph.i.i.i.i40, !llvm.loop !1911

_ZN5boost5beast4http6detail20fragmented_test_body6writer3getERNS_6system10error_codeE.exit48: ; preds = %.lr.ph.i.i.i.i40
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %15, i64 112
  store ptr @.str.106, ptr %i.ek, align 8, !noalias !1917
  %.sroa.45.0..sroa_idx.i45 = getelementptr inbounds nuw i8, ptr %15, i64 120
  store i64 4, ptr %.sroa.45.0..sroa_idx.i45, align 8, !noalias !1917
  %i.el = getelementptr inbounds nuw i8, ptr %15, i64 432
  store ptr @.str.107, ptr %i.el, align 8, !noalias !1917
  %.sroa.43.0..sroa_idx.i46 = getelementptr inbounds nuw i8, ptr %15, i64 440
  store i64 4, ptr %.sroa.43.0..sroa_idx.i46, align 8, !noalias !1917
  %i.em = load i8, ptr %i.ej, align 8, !tbaa !178, !range !66, !noalias !1917, !noundef !67
  store i8 1, ptr %i.ej, align 8, !tbaa !178, !noalias !1917
  %.sroa.4101.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4101, i64 7 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1040) %.sroa.4101.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(1040) %15, i64 1040, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !31 ; 2 uses
  %i.ep = and i64 %i.eo, 1
  %.not.i.i49 = icmp eq i64 %i.ep, 0
  br i1 %.not.i.i49, label %_ZNK5boost6system10error_codecvbEv.exit51.thread127, label %bb.aa

bb.aa:                                            ; preds = %_ZN5boost5beast4http6detail20fragmented_test_body6writer3getERNS_6system10error_codeE.exit48
  %i.eq = icmp eq i64 %i.eo, 1
  br i1 %i.eq, label %_ZNK5boost6system10error_codecvbEv.exit51, label %.thread130

_ZNK5boost6system10error_codecvbEv.exit51:        ; preds = %bb.aa
  %i.er = load i32, ptr %1, align 8, !tbaa !177
  %.not159 = icmp eq i32 %i.er, 0
  br i1 %.not159, label %_ZNK5boost6system10error_codecvbEv.exit51.thread127, label %.thread130

_ZNK5boost6system10error_codecvbEv.exit51.thread127: ; preds = %_ZN5boost5beast4http6detail20fragmented_test_body6writer3getERNS_6system10error_codeE.exit48, %_ZNK5boost6system10error_codecvbEv.exit51
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 1430
  store i8 %i.em, ptr %i.es, align 2, !tbaa !1914
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 1328 ; 2 uses
  %i.ev = load i8, ptr %i.eu, align 8, !tbaa !326
  %i.ew = zext i8 %i.ev to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #33
  store ptr %i.et, ptr %14, align 8, !tbaa !1873
  invoke void @_ZN5boost4mp116detail19mp_with_index_impl_ILm9EE4callILm0ENS_5beast6detail7variantIJNS5_14buffers_suffixINS6_11buffers_refINS5_16buffers_cat_viewIJNS_4asio12const_bufferESC_SC_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSD_10chunk_crlfEEEEEEEENS8_INSA_IJSL_St5arrayISC_Lm65EEEEEEENS8_ISO_EENS8_INSA_IJSL_NSD_6detail10chunk_sizeESC_SJ_SO_SJ_EEEEENS8_INSA_IJST_SC_SJ_SO_SJ_EEEEENS8_INSA_IJST_SC_SJ_SO_SJ_SC_SC_SJ_EEEEENS8_INSA_IJSL_ST_SC_SJ_SO_SJ_SC_SC_SJ_EEEEENS8_INSA_IJSC_SC_SJ_EEEEEEE7destroyEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOS16_(i64 noundef %i.ew, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.ac unwind label %bb.ab

bb.ab:                                            ; preds = %_ZNK5boost6system10error_codecvbEv.exit51.thread127
  %i.ex = landingpad { ptr, i32 }
          catch ptr null
  %i.ey = extractvalue { ptr, i32 } %i.ex, 0
  call void @__clang_call_terminate(ptr %i.ey) #34
  unreachable

.thread130:                                       ; preds = %_ZNK5boost6system10error_codecvbEv.exit51, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4101)
  br label %_ZN5boost5beast4http10serializerILb0ENS1_6detail20fragmented_test_bodyENS1_12basic_fieldsISaIcEEEE8do_visitILm3ENS1_17message_generator14generator_implILb0ES4_S7_E5visitEEEvRNS_6system10error_codeERT0_.exit

bb.ac:                                            ; preds = %_ZNK5boost6system10error_codecvbEv.exit51.thread127
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %i.et, ptr noundef nonnull align 1 dereferenceable(1040) %.sroa.4101.8..sroa_idx, i64 1040, i1 false), !tbaa.struct !1920
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 1184
  store ptr %i.et, ptr %i.ez, align 8, !tbaa !1898
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 1192
  store i64 0, ptr %i.fa, align 8, !tbaa !1921
  store i8 3, ptr %i.eu, align 8, !tbaa !326
  store i32 42, ptr %i.e, align 8, !tbaa !1888
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4101)
  br label %bb.ad

bb.ad:                                            ; preds = %._crit_edge, %bb.ac
  %i.fb = phi ptr [ %.pre, %._crit_edge ], [ %i.et, %bb.ac ] ; 6 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 1336
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 1416
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 1408 ; 2 uses
  %i.fg = load i64, ptr %i.fd, align 8, !tbaa !15 ; 3 uses
  store ptr %i.fe, ptr %i.fc, align 8, !tbaa !1922
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 1344 ; 4 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 1352
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 1360 ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 1184 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fh, i8 0, i64 16, i1 false)
  store ptr %i.fb, ptr %i.fj, align 8, !tbaa !290
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1368
  store ptr %i.fe, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !1922
  %.not26.i.i.i.i = icmp eq ptr %i.fb, %i.fk
  br i1 %.not26.i.i.i.i, label %_ZN5boost5beast6detail7variantIJNS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS1_11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES8_S8_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEEEEEENS3_IRKNS4_INS6_IJSH_St5arrayIS8_Lm65EEEEEEEEENS3_IRKNS4_ISN_EEEENS3_IRKNS4_INS6_IJSH_NS9_6detail10chunk_sizeES8_SF_SN_SF_EEEEEEENS3_IRKNS4_INS6_IJSY_S8_SF_SN_SF_EEEEEEENS3_IRKNS4_INS6_IJSY_S8_SF_SN_SF_S8_S8_SF_EEEEEEENS3_IRKNS4_INS6_IJSH_SY_S8_SF_SN_SF_S8_S8_SF_EEEEEEENS3_IRKNS4_INS6_IJS8_S8_SF_EEEEEEEEE7emplaceILm3EJRmRST_EEEvDpOT0_.exit.i, label %.lr.ph.split.preheader.i.i.i.i

.lr.ph.split.preheader.i.i.i.i:                   ; preds = %bb.ad
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 1192 ; 3 uses
  %i.fm = load i64, ptr %i.fl, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fb, i64 16 ; 4 uses
  %.sroa.4.0..sroa_idx.i.i.peel.i.i.i = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %.sroa.4.0.copyload.i.i.peel.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.peel.i.i.i, align 8, !tbaa !15
  %i.fo = call i64 @llvm.usub.sat.i64(i64 %.sroa.4.0.copyload.i.i.peel.i.i.i, i64 %i.fm) ; 6 uses
  %.not.i.peel.i.i.i = icmp ult i64 %i.fo, %i.fg
  br i1 %.not.i.peel.i.i.i, label %bb.ae, label %.thread.i.i.i.i

bb.ae:                                            ; preds = %.lr.ph.split.preheader.i.i.i.i
  store i64 %i.fo, ptr %i.fh, align 8, !tbaa !1924
  %.not27.i.peel.i.i.i = icmp eq ptr %i.fn, %i.fk
  br i1 %.not27.i.peel.i.i.i, label %..loopexit_crit_edge.i.i.i.i, label %.lr.ph.split.i.peel.next.i.i.i

.lr.ph.split.i.peel.next.i.i.i:                   ; preds = %bb.ae
  %i.fp = sub nuw i64 %i.fg, %i.fo
  br label %.lr.ph.split.i.i.i.i

.lr.ph.split.i.i.i.i:                             ; preds = %bb.af, %.lr.ph.split.i.peel.next.i.i.i
  %.01022.i.i.i.i = phi i64 [ %i.fv, %bb.af ], [ %i.fp, %.lr.ph.split.i.peel.next.i.i.i ] ; 3 uses
  %i.fq = phi ptr [ %i.fs, %bb.af ], [ %i.fn, %.lr.ph.split.i.peel.next.i.i.i ] ; 2 uses
  %i.fr = phi i64 [ %i.fw, %bb.af ], [ %i.fo, %.lr.ph.split.i.peel.next.i.i.i ] ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 16 ; 4 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %.sroa.4.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !15 ; 4 uses
  %.not.i.i.i.i52 = icmp ult i64 %.sroa.4.0.copyload.i.i.i.i.i, %.01022.i.i.i.i
  br i1 %.not.i.i.i.i52, label %bb.af, label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %.lr.ph.split.i.i.i.i, %.lr.ph.split.preheader.i.i.i.i
  %.01022.i.lcssa.i.i.i = phi i64 [ %i.fg, %.lr.ph.split.preheader.i.i.i.i ], [ %.01022.i.i.i.i, %.lr.ph.split.i.i.i.i ] ; 2 uses
  %.lcssa9.i.i.i = phi i64 [ 0, %.lr.ph.split.preheader.i.i.i.i ], [ %i.fr, %.lr.ph.split.i.i.i.i ]
  %.lcssa.i.i.i = phi ptr [ %i.fn, %.lr.ph.split.preheader.i.i.i.i ], [ %i.fs, %.lr.ph.split.i.i.i.i ] ; 2 uses
  %.pn.i.i.lcssa.i.i.i = phi i64 [ %i.fo, %.lr.ph.split.preheader.i.i.i.i ], [ %.sroa.4.0.copyload.i.i.i.i.i, %.lr.ph.split.i.i.i.i ]
  store ptr %.lcssa.i.i.i, ptr %i.fj, align 8, !tbaa !1927
  %i.ft = add i64 %.lcssa9.i.i.i, %.01022.i.lcssa.i.i.i ; 2 uses
  store i64 %i.ft, ptr %i.fh, align 8, !tbaa !1924
  %i.fu = sub i64 %.01022.i.lcssa.i.i.i, %.pn.i.i.lcssa.i.i.i
  store i64 %i.fu, ptr %i.fi, align 8, !tbaa !1928
  br label %_ZN5boost5beast6detail7variantIJNS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS1_11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES8_S8_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEEEEEENS3_IRKNS4_INS6_IJSH_St5arrayIS8_Lm65EEEEEEEEENS3_IRKNS4_ISN_EEEENS3_IRKNS4_INS6_IJSH_NS9_6detail10chunk_sizeES8_SF_SN_SF_EEEEEEENS3_IRKNS4_INS6_IJSY_S8_SF_SN_SF_EEEEEEENS3_IRKNS4_INS6_IJSY_S8_SF_SN_SF_S8_S8_SF_EEEEEEENS3_IRKNS4_INS6_IJSH_SY_S8_SF_SN_SF_S8_S8_SF_EEEEEEENS3_IRKNS4_INS6_IJS8_S8_SF_EEEEEEEEE7emplaceILm3EJRmRST_EEEvDpOT0_.exit.thread.i

bb.af:                                            ; preds = %.lr.ph.split.i.i.i.i
  %i.fv = sub nuw i64 %.01022.i.i.i.i, %.sroa.4.0.copyload.i.i.i.i.i
  %i.fw = add i64 %.sroa.4.0.copyload.i.i.i.i.i, %i.fr ; 3 uses
  store i64 %i.fw, ptr %i.fh, align 8, !tbaa !1924
  %.not27.i.i.i.i = icmp eq ptr %i.fs, %i.fk
  br i1 %.not27.i.i.i.i, label %..loopexit_crit_edge.i.i.i.i, label %.lr.ph.split.i.i.i.i, !llvm.loop !1929

..loopexit_crit_edge.i.i.i.i:                     ; preds = %bb.af, %bb.ae
  %i.fx = phi i64 [ %i.fo, %bb.ae ], [ %i.fw, %bb.af ]
  %.lcssa8.i.i.i = phi ptr [ %i.fn, %bb.ae ], [ %i.fs, %bb.af ] ; 2 uses
  store ptr %.lcssa8.i.i.i, ptr %i.fj, align 8, !tbaa !1927
  br label %_ZN5boost5beast6detail7variantIJNS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS1_11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES8_S8_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEEEEEENS3_IRKNS4_INS6_IJSH_St5arrayIS8_Lm65EEEEEEEEENS3_IRKNS4_ISN_EEEENS3_IRKNS4_INS6_IJSH_NS9_6detail10chunk_sizeES8_SF_SN_SF_EEEEEEENS3_IRKNS4_INS6_IJSY_S8_SF_SN_SF_EEEEEEENS3_IRKNS4_INS6_IJSY_S8_SF_SN_SF_S8_S8_SF_EEEEEEENS3_IRKNS4_INS6_IJSH_SY_S8_SF_SN_SF_S8_S8_SF_EEEEEEENS3_IRKNS4_INS6_IJS8_S8_SF_EEEEEEEEE7emplaceILm3EJRmRST_EEEvDpOT0_.exit.thread.i

_ZN5boost5beast6detail7variantIJNS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS1_11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES8_S8_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEEEEEENS3_IRKNS4_INS6_IJSH_St5arrayIS8_Lm65EEEEEEEEENS3_IRKNS4_ISN_EEEENS3_IRKNS4_INS6_IJSH_NS9_6detail10chunk_sizeES8_SF_SN_SF_EEEEEEENS3_IRKNS4_INS6_IJSY_S8_SF_SN_SF_EEEEEEENS3_IRKNS4_INS6_IJSY_S8_SF_SN_SF_S8_S8_SF_EEEEEEENS3_IRKNS4_INS6_IJSH_SY_S8_SF_SN_SF_S8_S8_SF_EEEEEEENS3_IRKNS4_INS6_IJS8_S8_SF_EEEEEEEEE7emplaceILm3EJRmRST_EEEvDpOT0_.exit.thread.i: ; preds = %..loopexit_crit_edge.i.i.i.i, %.thread.i.i.i.i
  %.ph.i = phi i64 [ %i.fx, %..loopexit_crit_edge.i.i.i.i ], [ %i.ft, %.thread.i.i.i.i ]
  %.sroa.3.sroa.0.0.copyload.i.ph.i = phi ptr [ %.lcssa8.i.i.i, %..loopexit_crit_edge.i.i.i.i ], [ %.lcssa.i.i.i, %.thread.i.i.i.i ]
  store i8 3, ptr %i.ff, align 8, !tbaa !329
  %i.fy = load ptr, ptr %2, align 8, !tbaa !1930, !nonnull !67, !align !79 ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 1544 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 1736
  %.sroa.3.sroa.0.0.copyload57.i.i = ptrtoaddr ptr %.sroa.3.sroa.0.0.copyload.i.ph.i to i64
  %i.gb = ptrtoaddr ptr %i.fb to i64
  %reass.sub.i = sub i64 %.sroa.3.sroa.0.0.copyload57.i.i, %i.gb
  %i.gc = add i64 %reass.sub.i, -16               ; 2 uses
  %i.gd = lshr i64 %i.gc, 4
  %i.ge = add nuw nsw i64 %i.gd, 1
  %i.gf = icmp ult i64 %i.gc, 176
  %spec.select.i.i = select i1 %i.gf, i64 %i.ge, i64 12 ; 2 uses
  store ptr %i.fz, ptr %i.ga, align 8, !tbaa !290
  %.sroa.4.0..sroa_idx56.i.i = getelementptr inbounds nuw i8, ptr %i.fy, i64 1744
  store i64 %spec.select.i.i, ptr %.sroa.4.0..sroa_idx56.i.i, align 8, !tbaa !15
  %.pre.i.i.i.i.i = load ptr, ptr %i.fk, align 8, !tbaa !1898
  br label %bb.ag

_ZN5boost5beast6detail7variantIJNS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS1_11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES8_S8_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEEEEEENS3_IRKNS4_INS6_IJSH_St5arrayIS8_Lm65EEEEEEEEENS3_IRKNS4_ISN_EEEENS3_IRKNS4_INS6_IJSH_NS9_6detail10chunk_sizeES8_SF_SN_SF_EEEEEEENS3_IRKNS4_INS6_IJSY_S8_SF_SN_SF_EEEEEEENS3_IRKNS4_INS6_IJSY_S8_SF_SN_SF_S8_S8_SF_EEEEEEENS3_IRKNS4_INS6_IJSH_SY_S8_SF_SN_SF_S8_S8_SF_EEEEEEENS3_IRKNS4_INS6_IJS8_S8_SF_EEEEEEEEE7emplaceILm3EJRmRST_EEEvDpOT0_.exit.i: ; preds = %bb.ad
  store i8 3, ptr %i.ff, align 8, !tbaa !329
  %i.gg = load ptr, ptr %2, align 8, !tbaa !1930, !nonnull !67, !align !79 ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 1544
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 1736
  store ptr %i.gh, ptr %i.gi, align 8, !tbaa !290
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gg, i64 1744
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !15
  br label %_ZN5boost5beast4http10serializerILb0ENS1_6detail20fragmented_test_bodyENS1_12basic_fieldsISaIcEEEE8do_visitILm3ENS1_17message_generator14generator_implILb0ES4_S7_E5visitEEEvRNS_6system10error_codeERT0_.exit

bb.ag:                                            ; preds = %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixISt5arrayINS_4asio12const_bufferELm65EEEEE14const_iteratorppEv.exit.i.i.i.i.i, %_ZN5boost5beast6detail7variantIJNS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS1_11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES8_S8_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEEEEEENS3_IRKNS4_INS6_IJSH_St5arrayIS8_Lm65EEEEEEEEENS3_IRKNS4_ISN_EEEENS3_IRKNS4_INS6_IJSH_NS9_6detail10chunk_sizeES8_SF_SN_SF_EEEEEEENS3_IRKNS4_INS6_IJSY_S8_SF_SN_SF_EEEEEEENS3_IRKNS4_INS6_IJSY_S8_SF_SN_SF_S8_S8_SF_EEEEEEENS3_IRKNS4_INS6_IJSH_SY_S8_SF_SN_SF_S8_S8_SF_EEEEEEENS3_IRKNS4_INS6_IJS8_S8_SF_EEEEEEEEE7emplaceILm3EJRmRST_EEEvDpOT0_.exit.thread.i
  %i.gj = phi ptr [ %i.gt, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixISt5arrayINS_4asio12const_bufferELm65EEEEE14const_iteratorppEv.exit.i.i.i.i.i ], [ %.pre.i.i.i.i.i, %_ZN5boost5beast6detail7variantIJNS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS1_11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES8_S8_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEEEEEENS3_IRKNS4_INS6_IJSH_St5arrayIS8_Lm65EEEEEEEEENS3_IRKNS4_ISN_EEEENS3_IRKNS4_INS6_IJSH_NS9_6detail10chunk_sizeES8_SF_SN_SF_EEEEEEENS3_IRKNS4_INS6_IJSY_S8_SF_SN_SF_EEEEEEENS3_IRKNS4_INS6_IJSY_S8_SF_SN_SF_S8_S8_SF_EEEEEEENS3_IRKNS4_INS6_IJSH_SY_S8_SF_SN_SF_S8_S8_SF_EEEEEEENS3_IRKNS4_INS6_IJS8_S8_SF_EEEEEEEEE7emplaceILm3EJRmRST_EEEvDpOT0_.exit.thread.i ]
  %i.gk = phi i64 [ %i.gx, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixISt5arrayINS_4asio12const_bufferELm65EEEEE14const_iteratorppEv.exit.i.i.i.i.i ], [ %.ph.i, %_ZN5boost5beast6detail7variantIJNS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS1_11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES8_S8_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEEEEEENS3_IRKNS4_INS6_IJSH_St5arrayIS8_Lm65EEEEEEEEENS3_IRKNS4_ISN_EEEENS3_IRKNS4_INS6_IJSH_NS9_6detail10chunk_sizeES8_SF_SN_SF_EEEEEEENS3_IRKNS4_INS6_IJSY_S8_SF_SN_SF_EEEEEEENS3_IRKNS4_INS6_IJSY_S8_SF_SN_SF_S8_S8_SF_EEEEEEENS3_IRKNS4_INS6_IJSH_SY_S8_SF_SN_SF_S8_S8_SF_EEEEEEENS3_IRKNS4_INS6_IJS8_S8_SF_EEEEEEEEE7emplaceILm3EJRmRST_EEEvDpOT0_.exit.thread.i ] ; 2 uses
  %i.gl = phi ptr [ %i.gs, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixISt5arrayINS_4asio12const_bufferELm65EEEEE14const_iteratorppEv.exit.i.i.i.i.i ], [ %i.fb, %_ZN5boost5beast6detail7variantIJNS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS1_11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES8_S8_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEEEEEENS3_IRKNS4_INS6_IJSH_St5arrayIS8_Lm65EEEEEEEEENS3_IRKNS4_ISN_EEEENS3_IRKNS4_INS6_IJSH_NS9_6detail10chunk_sizeES8_SF_SN_SF_EEEEEEENS3_IRKNS4_INS6_IJSY_S8_SF_SN_SF_EEEEEEENS3_IRKNS4_INS6_IJSY_S8_SF_SN_SF_S8_S8_SF_EEEEEEENS3_IRKNS4_INS6_IJSH_SY_S8_SF_SN_SF_S8_S8_SF_EEEEEEENS3_IRKNS4_INS6_IJS8_S8_SF_EEEEEEEEE7emplaceILm3EJRmRST_EEEvDpOT0_.exit.thread.i ] ; 5 uses
  %.04.i.i.i.i.i = phi ptr [ %i.gq, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixISt5arrayINS_4asio12const_bufferELm65EEEEE14const_iteratorppEv.exit.i.i.i.i.i ], [ %i.fz, %_ZN5boost5beast6detail7variantIJNS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS1_11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES8_S8_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEEEEEENS3_IRKNS4_INS6_IJSH_St5arrayIS8_Lm65EEEEEEEEENS3_IRKNS4_ISN_EEEENS3_IRKNS4_INS6_IJSH_NS9_6detail10chunk_sizeES8_SF_SN_SF_EEEEEEENS3_IRKNS4_INS6_IJSY_S8_SF_SN_SF_EEEEEEENS3_IRKNS4_INS6_IJSY_S8_SF_SN_SF_S8_S8_SF_EEEEEEENS3_IRKNS4_INS6_IJSH_SY_S8_SF_SN_SF_S8_S8_SF_EEEEEEENS3_IRKNS4_INS6_IJS8_S8_SF_EEEEEEEEE7emplaceILm3EJRmRST_EEEvDpOT0_.exit.thread.i ] ; 3 uses
  %.0.i.i.i.i.i = phi i64 [ %i.gr, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixISt5arrayINS_4asio12const_bufferELm65EEEEE14const_iteratorppEv.exit.i.i.i.i.i ], [ %spec.select.i.i, %_ZN5boost5beast6detail7variantIJNS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS1_11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES8_S8_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEEEEEENS3_IRKNS4_INS6_IJSH_St5arrayIS8_Lm65EEEEEEEEENS3_IRKNS4_ISN_EEEENS3_IRKNS4_INS6_IJSH_NS9_6detail10chunk_sizeES8_SF_SN_SF_EEEEEEENS3_IRKNS4_INS6_IJSY_S8_SF_SN_SF_EEEEEEENS3_IRKNS4_INS6_IJSY_S8_SF_SN_SF_S8_S8_SF_EEEEEEENS3_IRKNS4_INS6_IJSH_SY_S8_SF_SN_SF_S8_S8_SF_EEEEEEENS3_IRKNS4_INS6_IJS8_S8_SF_EEEEEEEEE7emplaceILm3EJRmRST_EEEvDpOT0_.exit.thread.i ]
  %i.gm = icmp eq ptr %i.gl, %i.gj
  %.sroa.0.0.copyload1.i.i.i.i.i.i.i = load ptr, ptr %i.gl, align 8, !tbaa !82 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.gl, i64 8 ; 2 uses
  %.sroa.4.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !15 ; 3 uses
  br i1 %i.gm, label %bb.ah, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixISt5arrayINS_4asio12const_bufferELm65EEEEE14const_iteratordeEv.exit.i.i.i.i.i

bb.ah:                                            ; preds = %bb.ag
  %i.gn = load i64, ptr %i.fl, align 8, !tbaa !1921
  %spec.select.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.gn, i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i) ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload1.i.i.i.i.i.i.i, i64 %spec.select.i.i.i.i.i.i.i.i
  %i.gp = sub i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, %spec.select.i.i.i.i.i.i.i.i
  br label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixISt5arrayINS_4asio12const_bufferELm65EEEEE14const_iteratordeEv.exit.i.i.i.i.i

_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixISt5arrayINS_4asio12const_bufferELm65EEEEE14const_iteratordeEv.exit.i.i.i.i.i: ; preds = %bb.ah, %bb.ag
  %.pn3.i.i.i.i.i.i.i = phi ptr [ %i.go, %bb.ah ], [ %.sroa.0.0.copyload1.i.i.i.i.i.i.i, %bb.ag ]
  %.pn.i.i.i.i.i.i.i = phi i64 [ %i.gp, %bb.ah ], [ %.sroa.4.0.copyload.i.i.i.i.i.i.i, %bb.ag ]
  %spec.select.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.gk, i64 %.pn.i.i.i.i.i.i.i)
  store ptr %.pn3.i.i.i.i.i.i.i, ptr %.04.i.i.i.i.i, align 8, !tbaa !82
  %.sroa.4.0..sroa_idx.i.i.i.i3.i = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i.i, i64 8
  store i64 %spec.select.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i3.i, align 8, !tbaa !15
  %i.gq = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i.i, i64 16
  %i.gr = add nsw i64 %.0.i.i.i.i.i, -1           ; 2 uses
  %.not7.i.i.i.i.i = icmp eq i64 %i.gr, 0
  br i1 %.not7.i.i.i.i.i, label %_ZN5boost5beast4http10serializerILb0ENS1_6detail20fragmented_test_bodyENS1_12basic_fieldsISaIcEEEE8do_visitILm3ENS1_17message_generator14generator_implILb0ES4_S7_E5visitEEEvRNS_6system10error_codeERT0_.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixISt5arrayINS_4asio12const_bufferELm65EEEEE14const_iteratordeEv.exit.i.i.i.i.i
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %i.gt = load ptr, ptr %i.fk, align 8, !tbaa !1898 ; 2 uses
  %i.gu = icmp eq ptr %i.gl, %i.gt
  %.sroa.4.0.copyload.i.i9.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !15 ; 2 uses
  br i1 %i.gu, label %bb.aj, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixISt5arrayINS_4asio12const_bufferELm65EEEEE14const_iteratorppEv.exit.i.i.i.i.i

bb.aj:                                            ; preds = %bb.ai
  %i.gv = load i64, ptr %i.fl, align 8, !tbaa !1921
  %i.gw = call i64 @llvm.usub.sat.i64(i64 %.sroa.4.0.copyload.i.i9.i.i.i.i.i, i64 %i.gv)
  br label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixISt5arrayINS_4asio12const_bufferELm65EEEEE14const_iteratorppEv.exit.i.i.i.i.i

_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixISt5arrayINS_4asio12const_bufferELm65EEEEE14const_iteratorppEv.exit.i.i.i.i.i: ; preds = %bb.aj, %bb.ai
  %.pn.i.i10.i.i.i.i.i = phi i64 [ %i.gw, %bb.aj ], [ %.sroa.4.0.copyload.i.i9.i.i.i.i.i, %bb.ai ]
  %i.gx = sub i64 %i.gk, %.pn.i.i10.i.i.i.i.i
  br label %bb.ag, !llvm.loop !1932

bb.ak:                                            ; preds = %_ZN5boost5beast4http10serializerILb0ENS1_6detail20fragmented_test_bodyENS1_12basic_fieldsISaIcEEEE7fwrinitESt17integral_constantIbLb0EE.exit
  store i32 50, ptr %i.e, align 8, !tbaa !1888
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.a
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !31 ; 2 uses
  %i.hb = and i64 %i.ha, 1
  %.not.i.i53 = icmp eq i64 %i.hb, 0
  br i1 %.not.i.i53, label %_ZNK5boost6system10error_codecvbEv.exit55.thread133, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hc = icmp eq i64 %i.ha, 1
  br i1 %i.hc, label %_ZNK5boost6system10error_codecvbEv.exit55, label %_ZN5boost5beast4http10serializerILb0ENS1_6detail20fragmented_test_bodyENS1_12basic_fieldsISaIcEEEE8do_visitILm3ENS1_17message_generator14generator_implILb0ES4_S7_E5visitEEEvRNS_6system10error_codeERT0_.exit

_ZNK5boost6system10error_codecvbEv.exit55:        ; preds = %bb.am
  %i.hd = load i32, ptr %1, align 8, !tbaa !177
  %.not162 = icmp eq i32 %i.hd, 0
  br i1 %.not162, label %_ZNK5boost6system10error_codecvbEv.exit55.thread133, label %_ZN5boost5beast4http10serializerILb0ENS1_6detail20fragmented_test_bodyENS1_12basic_fieldsISaIcEEEE8do_visitILm3ENS1_17message_generator14generator_implILb0ES4_S7_E5visitEEEvRNS_6system10error_codeERT0_.exit

_ZNK5boost6system10error_codecvbEv.exit55.thread133: ; preds = %bb.al, %_ZNK5boost6system10error_codecvbEv.exit55
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 1428
  %i.hf = load i8, ptr %i.he, align 4, !tbaa !1907, !range !66, !noundef !67
  %i.hg = trunc nuw i8 %i.hf to i1
  br i1 %i.hg, label %bb.bb, label %bb.an

bb.an:                                            ; preds = %_ZNK5boost6system10error_codecvbEv.exit55.thread133
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #33
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1933)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %13, i8 0, i64 1040, i1 false), !noalias !1933
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  br label %.lr.ph.i.i.i.i56

.lr.ph.i.i.i.i56:                                 ; preds = %.lr.ph.i.i.i.i56, %bb.an
  %.06.i.i.i.idx.i57 = phi i64 [ 0, %bb.an ], [ %.06.i.i.i.add.i59.4, %.lr.ph.i.i.i.i56 ] ; 6 uses
  %.06.i.i.i.ptr.i58 = getelementptr inbounds nuw i8, ptr %13, i64 %.06.i.i.i.idx.i57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.06.i.i.i.ptr.i58, ptr noundef nonnull align 8 dereferenceable(16) %i.hh, i64 16, i1 false), !noalias !1933
  %i.hi = getelementptr inbounds nuw i8, ptr %13, i64 %.06.i.i.i.idx.i57
  %.06.i.i.i.ptr.i58.1 = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.06.i.i.i.ptr.i58.1, ptr noundef nonnull align 8 dereferenceable(16) %i.hh, i64 16, i1 false), !noalias !1933
  %i.hj = getelementptr inbounds nuw i8, ptr %13, i64 %.06.i.i.i.idx.i57
  %.06.i.i.i.ptr.i58.2 = getelementptr inbounds nuw i8, ptr %i.hj, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.06.i.i.i.ptr.i58.2, ptr noundef nonnull align 8 dereferenceable(16) %i.hh, i64 16, i1 false), !noalias !1933
  %i.hk = getelementptr inbounds nuw i8, ptr %13, i64 %.06.i.i.i.idx.i57
end_hunk_1
