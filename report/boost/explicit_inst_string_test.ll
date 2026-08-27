Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/explicit_inst_string_test?download=true
inline.NumInlined: 5601
inline.NumDeleted: 957
loop-unroll.NumRuntimeUnrolled: 51
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_ZN5boost9container6vectorINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEENS6_IS8_EEvEC2ERKSA_RKS9_:bb.a
  %.not20.i = icmp eq i64 %.pre, 0
  br i1 %.not20.i, label %_ZN5boost9container33uninitialized_copy_alloc_n_sourceINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEEPS8_SA_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SD_mSE_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.f
  %i.i = load ptr, ptr %1, align 8, !tbaa !601
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZN5boost9container18construct_in_placeINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEES8_PS8_EEvRT_PT0_T1_.exit.i
  %.023.i = phi i64 [ %i.l, %_ZN5boost9container18construct_in_placeINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEES8_PS8_EEvRT_PT0_T1_.exit.i ], [ %.pre, %.lr.ph.i.preheader ]
  %.0922.i = phi ptr [ %i.j, %_ZN5boost9container18construct_in_placeINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEES8_PS8_EEvRT_PT0_T1_.exit.i ], [ %i.i, %.lr.ph.i.preheader ] ; 2 uses
  %.01721.i = phi ptr [ %i.k, %_ZN5boost9container18construct_in_placeINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEES8_PS8_EEvRT_PT0_T1_.exit.i ], [ %i.h, %.lr.ph.i.preheader ] ; 4 uses
  invoke void @_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEC1ERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %.01721.i, ptr noundef nonnull align 8 dereferenceable(24) %.0922.i)
          to label %_ZN5boost9container18construct_in_placeINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEES8_PS8_EEvRT_PT0_T1_.exit.i unwind label %bb.g

_ZN5boost9container18construct_in_placeINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEES8_PS8_EEvRT_PT0_T1_.exit.i: ; preds = %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %.0922.i, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %.01721.i, i64 24
  %i.l = add i64 %.023.i, -1                      ; 2 uses
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %_ZN5boost9container33uninitialized_copy_alloc_n_sourceINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEEPS8_SA_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SD_mSE_.exit, label %.lr.ph.i, !llvm.loop !619

bb.g:                                             ; preds = %.lr.ph.i
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  %i.o = tail call ptr @__cxa_begin_catch(ptr %i.n) #26 ; 0 uses
  %.not1024.i = icmp eq ptr %i.h, %.01721.i
  br i1 %.not1024.i, label %._crit_edge28.i, label %.lr.ph27.i

.lr.ph27.i:                                       ; preds = %bb.g, %.lr.ph27.i
  %.01625.i = phi ptr [ %i.p, %.lr.ph27.i ], [ %i.h, %bb.g ] ; 2 uses
  tail call void @_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvED1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.01625.i) #26
  %i.p = getelementptr inbounds nuw i8, ptr %.01625.i, i64 24 ; 2 uses
  %.not10.i = icmp eq ptr %i.p, %.01721.i
  br i1 %.not10.i, label %._crit_edge28.i, label %.lr.ph27.i, !llvm.loop !620

bb.h:                                             ; preds = %._crit_edge28.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.i

._crit_edge28.i:                                  ; preds = %.lr.ph27.i, %bb.g
  invoke void @__cxa_rethrow() #27
          to label %bb.j unwind label %bb.h

bb.i:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  tail call void @__clang_call_terminate(ptr %i.s) #28
  unreachable

bb.j:                                             ; preds = %._crit_edge28.i
  unreachable

_ZN5boost9container33uninitialized_copy_alloc_n_sourceINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEEPS8_SA_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SD_mSE_.exit: ; preds = %_ZN5boost9container18construct_in_placeINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEES8_PS8_EEvRT_PT0_T1_.exit.i, %bb.a, %bb.f
  ret void

.body:                                            ; preds = %bb.h
  %i.t = load i64, ptr %i.d, align 8, !tbaa !607  ; 2 uses
  %.not.i6 = icmp eq i64 %i.t, 0
  br i1 %.not.i6, label %_ZN5boost9container19vector_alloc_holderINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEEmNS_11move_detail17integral_constantIjLj1EEEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %.body
  %i.u = load ptr, ptr %0, align 8, !tbaa !610
  %i.v = mul i64 %i.t, 24
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.v) #26
  br label %_ZN5boost9container19vector_alloc_holderINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEEmNS_11move_detail17integral_constantIjLj1EEEED2Ev.exit

_ZN5boost9container19vector_alloc_holderINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEEmNS_11move_detail17integral_constantIjLj1EEEED2Ev.exit: ; preds = %.body, %bb.k
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container6vectorINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEENS6_IS8_EEvEC2EOSA_RKS9_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat($_ZN5boost9container6vectorINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEENS6_IS8_EEvEC5EOSA_RKS9_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.b = load ptr, ptr %1, align 8, !tbaa !601
  store ptr %i.b, ptr %0, align 8, !tbaa !601
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load <2 x i64>, ptr %i.c, align 8, !tbaa !49
  store <2 x i64> %i.d, ptr %i.a, align 8, !tbaa !49
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZN5boost9container6vectorINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEENS6_IS8_EEvE20get_stored_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container6vectorINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEENS6_IS8_EEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #3 comdat($_ZN5boost9container6vectorINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEENS6_IS8_EEvED5Ev) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !604  ; 2 uses
  %.not3.i = icmp eq i64 %i.b, 0
  br i1 %.not3.i, label %_ZN5boost9container15destroy_alloc_nINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEEPS8_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SD_m.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !601
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.05.i = phi i64 [ %i.d, %.lr.ph.i ], [ %i.b, %.lr.ph.i.preheader ]
  %storemerge4.i = phi ptr [ %i.e, %.lr.ph.i ], [ %i.c, %.lr.ph.i.preheader ] ; 2 uses
  %i.d = add i64 %.05.i, -1                       ; 2 uses
  tail call void @_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvED1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %storemerge4.i) #26
  %i.e = getelementptr inbounds nuw i8, ptr %storemerge4.i, i64 24
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %_ZN5boost9container15destroy_alloc_nINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEEPS8_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SD_m.exit, label %.lr.ph.i, !llvm.loop !621

_ZN5boost9container15destroy_alloc_nINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEEPS8_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SD_m.exit: ; preds = %.lr.ph.i, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !607  ; 2 uses
  %.not.i1 = icmp eq i64 %i.g, 0
  br i1 %.not.i1, label %_ZN5boost9container19vector_alloc_holderINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEEmNS_11move_detail17integral_constantIjLj1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEEPS8_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SD_m.exit
  %i.h = load ptr, ptr %0, align 8, !tbaa !610
  %i.i = mul i64 %i.g, 24
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.i) #26
  br label %_ZN5boost9container19vector_alloc_holderINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEEmNS_11move_detail17integral_constantIjLj1EEEED2Ev.exit

_ZN5boost9container19vector_alloc_holderINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEEmNS_11move_detail17integral_constantIjLj1EEEED2Ev.exit: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEEPS8_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SD_m.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container6vectorINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEENS6_IS8_EEvEaSERKSA_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.c, label %bb.b, !prof !30

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !601    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !604
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.c
  tail call void @_ZN5boost9container6vectorINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEENS6_IS8_EEvE6assignIPS8_EEvT_SD_PNS_11move_detail13disable_if_orIvNSE_7is_sameINSE_17integral_constantIjLj1EEENSH_IjLj0EEEEENSE_14is_convertibleISD_mEENS0_3dtl17is_input_iteratorISD_Xsr21has_iterator_categoryISD_EE5valueEEENSE_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.a, ptr noundef %i.d, ptr noundef null)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container6vectorINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEENS6_IS8_EEvEaSESt16initializer_listIS8_E(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %2
  tail call void @_ZN5boost9container6vectorINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEENS6_IS8_EEvE6assignIPKS8_EEvT_SE_PNS_11move_detail13disable_if_orIvNSF_7is_sameINSF_17integral_constantIjLj1EEENSI_IjLj0EEEEENSF_14is_convertibleISE_mEENS0_3dtl17is_input_iteratorISE_Xsr21has_iterator_categoryISE_EE5valueEEENSF_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %i.a, ptr noundef null)
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEENS6_IS8_EEvE6assignIPKS8_EEvT_SE_PNS_11move_detail13disable_if_orIvNSF_7is_sameINSF_17integral_constantIjLj1EEENSI_IjLj0EEEEENSF_14is_convertibleISE_mEENS0_3dtl17is_input_iteratorISE_Xsr21has_iterator_categoryISE_EE5valueEEENSF_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = sdiv exact i64 %i.c, 24                  ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !607  ; 2 uses
  %i.g = icmp ugt i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %i.d, 768614336404564650
  br i1 %i.h, label %bb.c, label %bb.d, !prof !30

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.19) #27
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #25 ; 6 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !601    ; 3 uses
  %.not17 = icmp eq ptr %i.j, null
  br i1 %.not17, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !604  ; 2 uses
  %.not3.i.i = icmp eq i64 %i.l, 0
  br i1 %.not3.i.i, label %_ZN5boost9container6vectorINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEENS6_IS8_EEvE16priv_destroy_allEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.m, %.lr.ph.i.i ], [ %i.l, %bb.e ]
  %storemerge4.i.i = phi ptr [ %i.n, %.lr.ph.i.i ], [ %i.j, %bb.e ] ; 2 uses
  %i.m = add i64 %.05.i.i, -1                     ; 2 uses
  tail call void @_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvED1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %storemerge4.i.i) #26
  %i.n = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 24
  %.not.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i, label %_ZN5boost9container6vectorINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEENS6_IS8_EEvE16priv_destroy_allEv.exit, label %.lr.ph.i.i, !llvm.loop !621

_ZN5boost9container6vectorINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEENS6_IS8_EEvE16priv_destroy_allEv.exit: ; preds = %.lr.ph.i.i, %bb.e
  store i64 0, ptr %i.k, align 8, !tbaa !604
  %i.o = mul nuw i64 %i.f, 24
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #26
  br label %bb.f

bb.f:                                             ; preds = %_ZN5boost9container6vectorINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEENS6_IS8_EEvE16priv_destroy_allEv.exit, %bb.d
  store ptr %i.i, ptr %0, align 8, !tbaa !601
  store i64 %i.d, ptr %i.e, align 8, !tbaa !49
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.p, align 8, !tbaa !604
  %.not18.i.i = icmp eq ptr %1, %2
  br i1 %.not18.i.i, label %bb.l, label %.lr.ph.i.i18

.lr.ph.i.i18:                                     ; preds = %bb.f, %_ZN5boost9container16allocator_traitsINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEEE9constructIS8_JRKS8_EEEvRS9_PT_DpOT0_.exit.i.i
  %.020.i.i = phi ptr [ %i.q, %_ZN5boost9container16allocator_traitsINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEEE9constructIS8_JRKS8_EEEvRS9_PT_DpOT0_.exit.i.i ], [ %1, %bb.f ] ; 2 uses
  %.01619.i.i = phi ptr [ %i.r, %_ZN5boost9container16allocator_traitsINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEEE9constructIS8_JRKS8_EEEvRS9_PT_DpOT0_.exit.i.i ], [ %i.i, %bb.f ] ; 4 uses
  invoke void @_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEC1ERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %.01619.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.020.i.i)
          to label %_ZN5boost9container16allocator_traitsINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEEE9constructIS8_JRKS8_EEEvRS9_PT_DpOT0_.exit.i.i unwind label %bb.g

_ZN5boost9container16allocator_traitsINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEEE9constructIS8_JRKS8_EEEvRS9_PT_DpOT0_.exit.i.i: ; preds = %.lr.ph.i.i18
  %i.q = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.01619.i.i, i64 24 ; 2 uses
  %.not.i.i19 = icmp eq ptr %i.q, %2
  br i1 %.not.i.i19, label %_ZN5boost9container24uninitialized_copy_allocINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEEPKS8_PS8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SG_E4typeERT_SF_SF_SG_.exit.loopexit.i, label %.lr.ph.i.i18, !llvm.loop !622

bb.g:                                             ; preds = %.lr.ph.i.i18
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  %i.u = tail call ptr @__cxa_begin_catch(ptr %i.t) #26 ; 0 uses
  %.not821.i.i = icmp eq ptr %i.i, %.01619.i.i
  br i1 %.not821.i.i, label %._crit_edge25.i.i, label %.lr.ph24.i.i

.lr.ph24.i.i:                                     ; preds = %bb.g, %.lr.ph24.i.i
  %.01522.i.i = phi ptr [ %i.v, %.lr.ph24.i.i ], [ %i.i, %bb.g ] ; 2 uses
  tail call void @_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvED1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.01522.i.i) #26
  %i.v = getelementptr inbounds nuw i8, ptr %.01522.i.i, i64 24 ; 2 uses
  %.not8.i.i = icmp eq ptr %i.v, %.01619.i.i
  br i1 %.not8.i.i, label %._crit_edge25.i.i, label %.lr.ph24.i.i, !llvm.loop !623

bb.h:                                             ; preds = %._crit_edge25.i.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

._crit_edge25.i.i:                                ; preds = %.lr.ph24.i.i, %bb.g
  invoke void @__cxa_rethrow() #27
          to label %bb.k unwind label %bb.h

bb.i:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.w

bb.j:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #28
  unreachable

bb.k:                                             ; preds = %._crit_edge25.i.i
  unreachable

_ZN5boost9container24uninitialized_copy_allocINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEEPKS8_PS8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SG_E4typeERT_SF_SF_SG_.exit.loopexit.i: ; preds = %_ZN5boost9container16allocator_traitsINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEEE9constructIS8_JRKS8_EEEvRS9_PT_DpOT0_.exit.i.i
  %.pre.i = load i64, ptr %i.p, align 8, !tbaa !606
  br label %bb.l

bb.l:                                             ; preds = %_ZN5boost9container24uninitialized_copy_allocINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEEPKS8_PS8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SG_E4typeERT_SF_SF_SG_.exit.loopexit.i, %bb.f
  %i.z = phi i64 [ 0, %bb.f ], [ %.pre.i, %_ZN5boost9container24uninitialized_copy_allocINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEEPKS8_PS8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SG_E4typeERT_SF_SF_SG_.exit.loopexit.i ]
  %.016.lcssa.i.i = phi ptr [ %i.i, %bb.f ], [ %i.r, %_ZN5boost9container24uninitialized_copy_allocINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEEPKS8_PS8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SG_E4typeERT_SF_SF_SG_.exit.loopexit.i ]
  %i.aa = ptrtoint ptr %.016.lcssa.i.i to i64
  %i.ab = ptrtoint ptr %i.i to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = sdiv exact i64 %i.ac, 24
  %i.ae = add i64 %i.ad, %i.z
  store i64 %i.ae, ptr %i.p, align 8, !tbaa !606
  br label %bb.n

bb.m:                                             ; preds = %bb.a
  %i.af = load ptr, ptr %0, align 8, !tbaa !601
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !604
  tail call void @_ZN5boost9container25copy_assign_range_alloc_nINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEEPKS8_PS8_EEvRT_T0_mT1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %i.d, ptr noundef %i.af, i64 noundef %i.ah)
  store i64 %i.d, ptr %i.ag, align 8, !tbaa !606
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container6vectorINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEENS6_IS8_EEvEaSEOSA_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.d, label %bb.b, !prof !30

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !604  ; 2 uses
  %.not3.i.i.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not3.i.i.i.i.i, label %_ZN5boost9container6vectorINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEENS6_IS8_EEvE5clearEv.exit.i.i, label %.lr.ph.i.preheader.i.i.i.i

.lr.ph.i.preheader.i.i.i.i:                       ; preds = %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !601
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i
  %.05.i.i.i.i.i = phi i64 [ %i.d, %.lr.ph.i.i.i.i.i ], [ %i.b, %.lr.ph.i.preheader.i.i.i.i ]
  %storemerge4.i.i.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i.i.i ], [ %i.c, %.lr.ph.i.preheader.i.i.i.i ] ; 2 uses
  %i.d = add i64 %.05.i.i.i.i.i, -1               ; 2 uses
  tail call void @_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvED1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %storemerge4.i.i.i.i.i) #26
  %i.e = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 24
  %.not.i.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5boost9container6vectorINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEENS6_IS8_EEvE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !621

_ZN5boost9container6vectorINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEENS6_IS8_EEvE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.b
  store i64 0, ptr %i.a, align 8, !tbaa !604
  %i.f = load ptr, ptr %0, align 8, !tbaa !624    ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %_ZN5boost9container6vectorINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEENS6_IS8_EEvE16priv_move_assignIS9_EEvONS1_IS8_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS8_SC_E4typeELj0EEENSF_12is_differentISL_S9_EENSF_5bool_ILb0EEESQ_E4typeE.exit, label %bb.c, !prof !30

bb.c:                                             ; preds = %_ZN5boost9container6vectorINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEENS6_IS8_EEvE5clearEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !625
  %i.i = mul i64 %i.h, 24
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.i) #26
  br label %_ZN5boost9container6vectorINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEENS6_IS8_EEvE16priv_move_assignIS9_EEvONS1_IS8_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS8_SC_E4typeELj0EEENSF_12is_differentISL_S9_EENSF_5bool_ILb0EEESQ_E4typeE.exit

_ZN5boost9container6vectorINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEENS6_IS8_EEvE16priv_move_assignIS9_EEvONS1_IS8_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS8_SC_E4typeELj0EEENSF_12is_differentISL_S9_EENSF_5bool_ILb0EEESQ_E4typeE.exit: ; preds = %_ZN5boost9container6vectorINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEENS6_IS8_EEvE5clearEv.exit.i.i, %bb.c
  %i.j = load ptr, ptr %1, align 8, !tbaa !601
  store ptr %i.j, ptr %0, align 8, !tbaa !601
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load <2 x i64>, ptr %i.k, align 8, !tbaa !49
  store <2 x i64> %i.l, ptr %i.a, align 8, !tbaa !49
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container6vectorINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEENS6_IS8_EEvE16priv_move_assignIS9_EEvONS1_IS8_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS8_SC_E4typeELj0EEENSF_12is_differentISL_S9_EENSF_5bool_ILb0EEESQ_E4typeE.exit, %bb.a
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container6vectorINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEENS6_IS8_EEvE6assignESt16initializer_listIS8_E(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %2
  tail call void @_ZN5boost9container6vectorINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEENS6_IS8_EEvE6assignIPKS8_EEvT_SE_PNS_11move_detail13disable_if_orIvNSF_7is_sameINSF_17integral_constantIjLj1EEENSI_IjLj0EEEEENSF_14is_convertibleISE_mEENS0_3dtl17is_input_iteratorISE_Xsr21has_iterator_categoryISE_EE5valueEEENSF_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %i.a, ptr noundef null)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container6vectorINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEENS6_IS8_EEvE6assignEmRKS8_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZN5boost9container6vectorINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEENS6_IS8_EEvE6assignINS0_17constant_iteratorIS8_EEEEvT_SE_PNS_11move_detail13disable_if_orIvNSF_7is_sameINSF_17integral_constantIjLj1EEENSI_IjLj0EEEEENSF_14is_convertibleISE_mEENS0_3dtl17is_input_iteratorISE_Xsr21has_iterator_categoryISE_EE5valueEEENSF_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nonnull %2, i64 %1, ptr null, i64 0, ptr noundef null)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEENS6_IS8_EEvE6assignINS0_17constant_iteratorIS8_EEEEvT_SE_PNS_11move_detail13disable_if_orIvNSF_7is_sameINSF_17integral_constantIjLj1EEENSI_IjLj0EEEEENSF_14is_convertibleISE_mEENS0_3dtl17is_input_iteratorISE_Xsr21has_iterator_categoryISE_EE5valueEEENSF_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, ptr %3, i64 %4, ptr noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = sub i64 %2, %4                           ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !607  ; 2 uses
  %i.d = icmp ugt i64 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ugt i64 %i.a, 768614336404564650
  br i1 %i.e, label %bb.c, label %bb.d, !prof !30

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.19) #27
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = icmp samesign ugt i64 %i.a, 384307168202282325
  br i1 %i.f, label %bb.e, label %bb.f, !prof !30

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5boost9container15throw_bad_allocEv() #27
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.g = mul nuw nsw i64 %i.a, 24
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #25 ; 6 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !601    ; 3 uses
  %.not25 = icmp eq ptr %i.i, null
  br i1 %.not25, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !604  ; 2 uses
  %.not3.i.i = icmp eq i64 %i.k, 0
  br i1 %.not3.i.i, label %_ZN5boost9container6vectorINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEENS6_IS8_EEvE16priv_destroy_allEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.l, %.lr.ph.i.i ], [ %i.k, %bb.g ]
  %storemerge4.i.i = phi ptr [ %i.m, %.lr.ph.i.i ], [ %i.i, %bb.g ] ; 2 uses
  %i.l = add i64 %.05.i.i, -1                     ; 2 uses
  tail call void @_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvED1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %storemerge4.i.i) #26
  %i.m = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 24
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %_ZN5boost9container6vectorINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEENS6_IS8_EEvE16priv_destroy_allEv.exit, label %.lr.ph.i.i, !llvm.loop !621

_ZN5boost9container6vectorINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEENS6_IS8_EEvE16priv_destroy_allEv.exit: ; preds = %.lr.ph.i.i, %bb.g
  store i64 0, ptr %i.j, align 8, !tbaa !604
  %i.n = mul nuw i64 %i.c, 24
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #26
  br label %bb.h

bb.h:                                             ; preds = %_ZN5boost9container6vectorINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEENS6_IS8_EEvE16priv_destroy_allEv.exit, %bb.f
  store ptr %i.h, ptr %0, align 8, !tbaa !601
  store i64 %i.a, ptr %i.b, align 8, !tbaa !49
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.o, align 8, !tbaa !604
  %.not1315.i.i = icmp eq i64 %2, %4
  br i1 %.not1315.i.i, label %bb.o, label %.lr.ph.i.i26

.lr.ph.i.i26:                                     ; preds = %bb.h, %bb.i
  %.01217.i.i = phi ptr [ %i.q, %bb.i ], [ %i.h, %bb.h ] ; 4 uses
  %.sroa.2.016.i.i = phi i64 [ %i.p, %bb.i ], [ %2, %bb.h ]
  invoke void @_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEC1ERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %.01217.i.i, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %.lr.ph.i.i26
  %i.p = add i64 %.sroa.2.016.i.i, -1             ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.01217.i.i, i64 24 ; 2 uses
  %.not13.i.i = icmp eq i64 %i.p, %4
  br i1 %.not13.i.i, label %_ZN5boost9container24uninitialized_copy_allocINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEENS0_17constant_iteratorIS8_EEPS8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SG_E4typeERT_SF_SF_SG_.exit.loopexit.i, label %.lr.ph.i.i26, !llvm.loop !626

bb.j:                                             ; preds = %.lr.ph.i.i26
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  %i.t = tail call ptr @__cxa_begin_catch(ptr %i.s) #26 ; 0 uses
  %.not18.i.i = icmp eq ptr %i.h, %.01217.i.i
  br i1 %.not18.i.i, label %._crit_edge22.i.i, label %.lr.ph21.i.i

.lr.ph21.i.i:                                     ; preds = %bb.j, %.lr.ph21.i.i
  %.019.i.i = phi ptr [ %i.u, %.lr.ph21.i.i ], [ %i.h, %bb.j ] ; 2 uses
  tail call void @_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvED1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.019.i.i) #26
  %i.u = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 24 ; 2 uses
  %.not.i.i27 = icmp eq ptr %i.u, %.01217.i.i
  br i1 %.not.i.i27, label %._crit_edge22.i.i, label %.lr.ph21.i.i, !llvm.loop !627

bb.k:                                             ; preds = %._crit_edge22.i.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.l unwind label %bb.m

._crit_edge22.i.i:                                ; preds = %.lr.ph21.i.i, %bb.j
  invoke void @__cxa_rethrow() #27
          to label %bb.n unwind label %bb.k

bb.l:                                             ; preds = %bb.k
  resume { ptr, i32 } %i.v

bb.m:                                             ; preds = %bb.k
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #28
  unreachable

bb.n:                                             ; preds = %._crit_edge22.i.i
  unreachable

_ZN5boost9container24uninitialized_copy_allocINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEENS0_17constant_iteratorIS8_EEPS8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SG_E4typeERT_SF_SF_SG_.exit.loopexit.i: ; preds = %bb.i
  %.pre.i = load i64, ptr %i.o, align 8, !tbaa !606
  br label %bb.o

bb.o:                                             ; preds = %_ZN5boost9container24uninitialized_copy_allocINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEENS0_17constant_iteratorIS8_EEPS8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SG_E4typeERT_SF_SF_SG_.exit.loopexit.i, %bb.h
  %i.y = phi i64 [ 0, %bb.h ], [ %.pre.i, %_ZN5boost9container24uninitialized_copy_allocINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEENS0_17constant_iteratorIS8_EEPS8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SG_E4typeERT_SF_SF_SG_.exit.loopexit.i ]
  %.012.lcssa.i.i = phi ptr [ %i.h, %bb.h ], [ %i.q, %_ZN5boost9container24uninitialized_copy_allocINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEENS0_17constant_iteratorIS8_EEPS8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SG_E4typeERT_SF_SF_SG_.exit.loopexit.i ]
  %i.z = ptrtoint ptr %.012.lcssa.i.i to i64
  %i.aa = ptrtoint ptr %i.h to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = sdiv exact i64 %i.ab, 24
  %i.ad = add i64 %i.ac, %i.y
  store i64 %i.ad, ptr %i.o, align 8, !tbaa !606
  br label %bb.q

bb.p:                                             ; preds = %bb.a
  %i.ae = load ptr, ptr %0, align 8, !tbaa !601
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !604
  tail call void @_ZN5boost9container25copy_assign_range_alloc_nINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEENS0_17constant_iteratorIS8_EEPS8_EEvRT_T0_mT1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %1, i64 %2, i64 noundef %i.a, ptr noundef %i.ae, i64 noundef %i.ag)
  store i64 %i.a, ptr %i.af, align 8, !tbaa !606
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZNK5boost9container6vectorINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEENS6_IS8_EEvE13get_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNK5boost9container6vectorINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEENS6_IS8_EEvE20get_stored_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container6vectorINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEENS6_IS8_EEvE5beginEv(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !601
  store ptr %i.a, ptr %0, align 8, !tbaa !628
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZNK5boost9container6vectorINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEENS6_IS8_EEvE5beginEv(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.35") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !601
  store ptr %i.a, ptr %0, align 8, !tbaa !630
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container6vectorINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEENS6_IS8_EEvE3endEv(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !601
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !604
  %i.d = getelementptr inbounds [24 x i8], ptr %i.a, i64 %i.c
  store ptr %i.d, ptr %0, align 8, !tbaa !628
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZNK5boost9container6vectorINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEENS6_IS8_EEvE3endEv(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.35") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !632)
  %i.a = load ptr, ptr %1, align 8, !tbaa !601, !noalias !632
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !604, !noalias !632
  %i.d = getelementptr inbounds [24 x i8], ptr %i.a, i64 %i.c
  store ptr %i.d, ptr %0, align 8, !tbaa !630, !alias.scope !632
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZNK5boost9container6vectorINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEENS6_IS8_EEvE4cendEv(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.35") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !601
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !604
  %i.d = getelementptr inbounds [24 x i8], ptr %i.a, i64 %i.c
  store ptr %i.d, ptr %0, align 8, !tbaa !630
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container6vectorINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEENS6_IS8_EEvE6rbeginEv(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator.36") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !601, !noalias !635
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !604, !noalias !635
  %i.d = getelementptr inbounds [24 x i8], ptr %i.a, i64 %i.c
  store ptr %i.d, ptr %0, align 8, !tbaa !628
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZNK5boost9container6vectorINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEENS6_IS8_EEvE6rbeginEv(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator.37") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !638)
  %i.a = load ptr, ptr %1, align 8, !tbaa !601, !noalias !641
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !604, !noalias !641
  %i.d = getelementptr inbounds [24 x i8], ptr %i.a, i64 %i.c
  store ptr %i.d, ptr %0, align 8, !tbaa !630, !alias.scope !638
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZNK5boost9container6vectorINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEENS6_IS8_EEvE7crbeginEv(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator.37") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !601, !noalias !646
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !604, !noalias !646
  %i.d = getelementptr inbounds [24 x i8], ptr %i.a, i64 %i.c
  store ptr %i.d, ptr %0, align 8, !tbaa !630
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container6vectorINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEENS6_IS8_EEvE4rendEv(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator.36") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !601, !noalias !651
  store ptr %i.a, ptr %0, align 8, !tbaa !628
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZNK5boost9container6vectorINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEENS6_IS8_EEvE4rendEv(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator.37") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !654)
  %i.a = load ptr, ptr %1, align 8, !tbaa !601, !noalias !657
  store ptr %i.a, ptr %0, align 8, !tbaa !630, !alias.scope !654
  ret void
}
end_hunk_0
begin_hunk_1_@_ZN5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEENS6_IS8_EEvEC2ERKSA_RKS9_:bb.a
  %.not20.i = icmp eq i64 %.pre, 0
  br i1 %.not20.i, label %_ZN5boost9container33uninitialized_copy_alloc_n_sourceINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS3_IwEEvEEEEPS8_SA_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SD_mSE_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.f
  %i.i = load ptr, ptr %1, align 8, !tbaa !691
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZN5boost9container18construct_in_placeINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS3_IwEEvEEEES8_PS8_EEvRT_PT0_T1_.exit.i
  %.023.i = phi i64 [ %i.l, %_ZN5boost9container18construct_in_placeINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS3_IwEEvEEEES8_PS8_EEvRT_PT0_T1_.exit.i ], [ %.pre, %.lr.ph.i.preheader ]
  %.0922.i = phi ptr [ %i.j, %_ZN5boost9container18construct_in_placeINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS3_IwEEvEEEES8_PS8_EEvRT_PT0_T1_.exit.i ], [ %i.i, %.lr.ph.i.preheader ] ; 2 uses
  %.01721.i = phi ptr [ %i.k, %_ZN5boost9container18construct_in_placeINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS3_IwEEvEEEES8_PS8_EEvRT_PT0_T1_.exit.i ], [ %i.h, %.lr.ph.i.preheader ] ; 4 uses
  invoke void @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEC1ERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %.01721.i, ptr noundef nonnull align 8 dereferenceable(24) %.0922.i)
          to label %_ZN5boost9container18construct_in_placeINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS3_IwEEvEEEES8_PS8_EEvRT_PT0_T1_.exit.i unwind label %bb.g

_ZN5boost9container18construct_in_placeINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS3_IwEEvEEEES8_PS8_EEvRT_PT0_T1_.exit.i: ; preds = %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %.0922.i, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %.01721.i, i64 24
  %i.l = add i64 %.023.i, -1                      ; 2 uses
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %_ZN5boost9container33uninitialized_copy_alloc_n_sourceINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS3_IwEEvEEEEPS8_SA_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SD_mSE_.exit, label %.lr.ph.i, !llvm.loop !709

bb.g:                                             ; preds = %.lr.ph.i
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  %i.o = tail call ptr @__cxa_begin_catch(ptr %i.n) #26 ; 0 uses
  %.not1024.i = icmp eq ptr %i.h, %.01721.i
  br i1 %.not1024.i, label %._crit_edge28.i, label %.lr.ph27.i

.lr.ph27.i:                                       ; preds = %bb.g, %.lr.ph27.i
  %.01625.i = phi ptr [ %i.p, %.lr.ph27.i ], [ %i.h, %bb.g ] ; 2 uses
  tail call void @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvED1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.01625.i) #26
  %i.p = getelementptr inbounds nuw i8, ptr %.01625.i, i64 24 ; 2 uses
  %.not10.i = icmp eq ptr %i.p, %.01721.i
  br i1 %.not10.i, label %._crit_edge28.i, label %.lr.ph27.i, !llvm.loop !710

bb.h:                                             ; preds = %._crit_edge28.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.i

._crit_edge28.i:                                  ; preds = %.lr.ph27.i, %bb.g
  invoke void @__cxa_rethrow() #27
          to label %bb.j unwind label %bb.h

bb.i:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  tail call void @__clang_call_terminate(ptr %i.s) #28
  unreachable

bb.j:                                             ; preds = %._crit_edge28.i
  unreachable

_ZN5boost9container33uninitialized_copy_alloc_n_sourceINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS3_IwEEvEEEEPS8_SA_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SD_mSE_.exit: ; preds = %_ZN5boost9container18construct_in_placeINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS3_IwEEvEEEES8_PS8_EEvRT_PT0_T1_.exit.i, %bb.a, %bb.f
  ret void

.body:                                            ; preds = %bb.h
  %i.t = load i64, ptr %i.d, align 8, !tbaa !697  ; 2 uses
  %.not.i6 = icmp eq i64 %i.t, 0
  br i1 %.not.i6, label %_ZN5boost9container19vector_alloc_holderINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS3_IwEEvEEEEmNS_11move_detail17integral_constantIjLj1EEEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %.body
  %i.u = load ptr, ptr %0, align 8, !tbaa !700
  %i.v = mul i64 %i.t, 24
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.v) #26
  br label %_ZN5boost9container19vector_alloc_holderINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS3_IwEEvEEEEmNS_11move_detail17integral_constantIjLj1EEEED2Ev.exit

_ZN5boost9container19vector_alloc_holderINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS3_IwEEvEEEEmNS_11move_detail17integral_constantIjLj1EEEED2Ev.exit: ; preds = %.body, %bb.k
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEENS6_IS8_EEvEC2EOSA_RKS9_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat($_ZN5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEENS6_IS8_EEvEC5EOSA_RKS9_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.b = load ptr, ptr %1, align 8, !tbaa !691
  store ptr %i.b, ptr %0, align 8, !tbaa !691
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load <2 x i64>, ptr %i.c, align 8, !tbaa !49
  store <2 x i64> %i.d, ptr %i.a, align 8, !tbaa !49
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZN5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEENS6_IS8_EEvE20get_stored_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEENS6_IS8_EEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #3 comdat($_ZN5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEENS6_IS8_EEvED5Ev) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !694  ; 2 uses
  %.not3.i = icmp eq i64 %i.b, 0
  br i1 %.not3.i, label %_ZN5boost9container15destroy_alloc_nINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS3_IwEEvEEEEPS8_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SD_m.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !691
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.05.i = phi i64 [ %i.d, %.lr.ph.i ], [ %i.b, %.lr.ph.i.preheader ]
  %storemerge4.i = phi ptr [ %i.e, %.lr.ph.i ], [ %i.c, %.lr.ph.i.preheader ] ; 2 uses
  %i.d = add i64 %.05.i, -1                       ; 2 uses
  tail call void @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvED1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %storemerge4.i) #26
  %i.e = getelementptr inbounds nuw i8, ptr %storemerge4.i, i64 24
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %_ZN5boost9container15destroy_alloc_nINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS3_IwEEvEEEEPS8_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SD_m.exit, label %.lr.ph.i, !llvm.loop !711

_ZN5boost9container15destroy_alloc_nINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS3_IwEEvEEEEPS8_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SD_m.exit: ; preds = %.lr.ph.i, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !697  ; 2 uses
  %.not.i1 = icmp eq i64 %i.g, 0
  br i1 %.not.i1, label %_ZN5boost9container19vector_alloc_holderINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS3_IwEEvEEEEmNS_11move_detail17integral_constantIjLj1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS3_IwEEvEEEEPS8_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SD_m.exit
  %i.h = load ptr, ptr %0, align 8, !tbaa !700
  %i.i = mul i64 %i.g, 24
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.i) #26
  br label %_ZN5boost9container19vector_alloc_holderINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS3_IwEEvEEEEmNS_11move_detail17integral_constantIjLj1EEEED2Ev.exit

_ZN5boost9container19vector_alloc_holderINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS3_IwEEvEEEEmNS_11move_detail17integral_constantIjLj1EEEED2Ev.exit: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS3_IwEEvEEEEPS8_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SD_m.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEENS6_IS8_EEvEaSERKSA_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.c, label %bb.b, !prof !30

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !691    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !694
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.c
  tail call void @_ZN5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEENS6_IS8_EEvE6assignIPS8_EEvT_SD_PNS_11move_detail13disable_if_orIvNSE_7is_sameINSE_17integral_constantIjLj1EEENSH_IjLj0EEEEENSE_14is_convertibleISD_mEENS0_3dtl17is_input_iteratorISD_Xsr21has_iterator_categoryISD_EE5valueEEENSE_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.a, ptr noundef %i.d, ptr noundef null)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEENS6_IS8_EEvEaSESt16initializer_listIS8_E(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %2
  tail call void @_ZN5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEENS6_IS8_EEvE6assignIPKS8_EEvT_SE_PNS_11move_detail13disable_if_orIvNSF_7is_sameINSF_17integral_constantIjLj1EEENSI_IjLj0EEEEENSF_14is_convertibleISE_mEENS0_3dtl17is_input_iteratorISE_Xsr21has_iterator_categoryISE_EE5valueEEENSF_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %i.a, ptr noundef null)
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEENS6_IS8_EEvE6assignIPKS8_EEvT_SE_PNS_11move_detail13disable_if_orIvNSF_7is_sameINSF_17integral_constantIjLj1EEENSI_IjLj0EEEEENSF_14is_convertibleISE_mEENS0_3dtl17is_input_iteratorISE_Xsr21has_iterator_categoryISE_EE5valueEEENSF_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = sdiv exact i64 %i.c, 24                  ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !697  ; 2 uses
  %i.g = icmp ugt i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %i.d, 768614336404564650
  br i1 %i.h, label %bb.c, label %bb.d, !prof !30

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.19) #27
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #25 ; 6 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !691    ; 3 uses
  %.not17 = icmp eq ptr %i.j, null
  br i1 %.not17, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !694  ; 2 uses
  %.not3.i.i = icmp eq i64 %i.l, 0
  br i1 %.not3.i.i, label %_ZN5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEENS6_IS8_EEvE16priv_destroy_allEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.m, %.lr.ph.i.i ], [ %i.l, %bb.e ]
  %storemerge4.i.i = phi ptr [ %i.n, %.lr.ph.i.i ], [ %i.j, %bb.e ] ; 2 uses
  %i.m = add i64 %.05.i.i, -1                     ; 2 uses
  tail call void @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvED1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %storemerge4.i.i) #26
  %i.n = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 24
  %.not.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i, label %_ZN5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEENS6_IS8_EEvE16priv_destroy_allEv.exit, label %.lr.ph.i.i, !llvm.loop !711

_ZN5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEENS6_IS8_EEvE16priv_destroy_allEv.exit: ; preds = %.lr.ph.i.i, %bb.e
  store i64 0, ptr %i.k, align 8, !tbaa !694
  %i.o = mul nuw i64 %i.f, 24
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #26
  br label %bb.f

bb.f:                                             ; preds = %_ZN5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEENS6_IS8_EEvE16priv_destroy_allEv.exit, %bb.d
  store ptr %i.i, ptr %0, align 8, !tbaa !691
  store i64 %i.d, ptr %i.e, align 8, !tbaa !49
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.p, align 8, !tbaa !694
  %.not18.i.i = icmp eq ptr %1, %2
  br i1 %.not18.i.i, label %bb.l, label %.lr.ph.i.i18

.lr.ph.i.i18:                                     ; preds = %bb.f, %_ZN5boost9container16allocator_traitsINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS3_IwEEvEEEEE9constructIS8_JRKS8_EEEvRS9_PT_DpOT0_.exit.i.i
  %.020.i.i = phi ptr [ %i.q, %_ZN5boost9container16allocator_traitsINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS3_IwEEvEEEEE9constructIS8_JRKS8_EEEvRS9_PT_DpOT0_.exit.i.i ], [ %1, %bb.f ] ; 2 uses
  %.01619.i.i = phi ptr [ %i.r, %_ZN5boost9container16allocator_traitsINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS3_IwEEvEEEEE9constructIS8_JRKS8_EEEvRS9_PT_DpOT0_.exit.i.i ], [ %i.i, %bb.f ] ; 4 uses
  invoke void @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEC1ERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %.01619.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.020.i.i)
          to label %_ZN5boost9container16allocator_traitsINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS3_IwEEvEEEEE9constructIS8_JRKS8_EEEvRS9_PT_DpOT0_.exit.i.i unwind label %bb.g

_ZN5boost9container16allocator_traitsINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS3_IwEEvEEEEE9constructIS8_JRKS8_EEEvRS9_PT_DpOT0_.exit.i.i: ; preds = %.lr.ph.i.i18
  %i.q = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.01619.i.i, i64 24 ; 2 uses
  %.not.i.i19 = icmp eq ptr %i.q, %2
  br i1 %.not.i.i19, label %_ZN5boost9container24uninitialized_copy_allocINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS3_IwEEvEEEEPKS8_PS8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SG_E4typeERT_SF_SF_SG_.exit.loopexit.i, label %.lr.ph.i.i18, !llvm.loop !712

bb.g:                                             ; preds = %.lr.ph.i.i18
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  %i.u = tail call ptr @__cxa_begin_catch(ptr %i.t) #26 ; 0 uses
  %.not821.i.i = icmp eq ptr %i.i, %.01619.i.i
  br i1 %.not821.i.i, label %._crit_edge25.i.i, label %.lr.ph24.i.i

.lr.ph24.i.i:                                     ; preds = %bb.g, %.lr.ph24.i.i
  %.01522.i.i = phi ptr [ %i.v, %.lr.ph24.i.i ], [ %i.i, %bb.g ] ; 2 uses
  tail call void @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvED1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.01522.i.i) #26
  %i.v = getelementptr inbounds nuw i8, ptr %.01522.i.i, i64 24 ; 2 uses
  %.not8.i.i = icmp eq ptr %i.v, %.01619.i.i
  br i1 %.not8.i.i, label %._crit_edge25.i.i, label %.lr.ph24.i.i, !llvm.loop !713

bb.h:                                             ; preds = %._crit_edge25.i.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

._crit_edge25.i.i:                                ; preds = %.lr.ph24.i.i, %bb.g
  invoke void @__cxa_rethrow() #27
          to label %bb.k unwind label %bb.h

bb.i:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.w

bb.j:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #28
  unreachable

bb.k:                                             ; preds = %._crit_edge25.i.i
  unreachable

_ZN5boost9container24uninitialized_copy_allocINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS3_IwEEvEEEEPKS8_PS8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SG_E4typeERT_SF_SF_SG_.exit.loopexit.i: ; preds = %_ZN5boost9container16allocator_traitsINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS3_IwEEvEEEEE9constructIS8_JRKS8_EEEvRS9_PT_DpOT0_.exit.i.i
  %.pre.i = load i64, ptr %i.p, align 8, !tbaa !696
  br label %bb.l

bb.l:                                             ; preds = %_ZN5boost9container24uninitialized_copy_allocINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS3_IwEEvEEEEPKS8_PS8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SG_E4typeERT_SF_SF_SG_.exit.loopexit.i, %bb.f
  %i.z = phi i64 [ 0, %bb.f ], [ %.pre.i, %_ZN5boost9container24uninitialized_copy_allocINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS3_IwEEvEEEEPKS8_PS8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SG_E4typeERT_SF_SF_SG_.exit.loopexit.i ]
  %.016.lcssa.i.i = phi ptr [ %i.i, %bb.f ], [ %i.r, %_ZN5boost9container24uninitialized_copy_allocINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS3_IwEEvEEEEPKS8_PS8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SG_E4typeERT_SF_SF_SG_.exit.loopexit.i ]
  %i.aa = ptrtoint ptr %.016.lcssa.i.i to i64
  %i.ab = ptrtoint ptr %i.i to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = sdiv exact i64 %i.ac, 24
  %i.ae = add i64 %i.ad, %i.z
  store i64 %i.ae, ptr %i.p, align 8, !tbaa !696
  br label %bb.n

bb.m:                                             ; preds = %bb.a
  %i.af = load ptr, ptr %0, align 8, !tbaa !691
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !694
  tail call void @_ZN5boost9container25copy_assign_range_alloc_nINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS3_IwEEvEEEEPKS8_PS8_EEvRT_T0_mT1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %i.d, ptr noundef %i.af, i64 noundef %i.ah)
  store i64 %i.d, ptr %i.ag, align 8, !tbaa !696
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEENS6_IS8_EEvEaSEOSA_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.d, label %bb.b, !prof !30

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !694  ; 2 uses
  %.not3.i.i.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not3.i.i.i.i.i, label %_ZN5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEENS6_IS8_EEvE5clearEv.exit.i.i, label %.lr.ph.i.preheader.i.i.i.i

.lr.ph.i.preheader.i.i.i.i:                       ; preds = %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !691
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i
  %.05.i.i.i.i.i = phi i64 [ %i.d, %.lr.ph.i.i.i.i.i ], [ %i.b, %.lr.ph.i.preheader.i.i.i.i ]
  %storemerge4.i.i.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i.i.i ], [ %i.c, %.lr.ph.i.preheader.i.i.i.i ] ; 2 uses
  %i.d = add i64 %.05.i.i.i.i.i, -1               ; 2 uses
  tail call void @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvED1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %storemerge4.i.i.i.i.i) #26
  %i.e = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 24
  %.not.i.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEENS6_IS8_EEvE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !711

_ZN5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEENS6_IS8_EEvE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.b
  store i64 0, ptr %i.a, align 8, !tbaa !694
  %i.f = load ptr, ptr %0, align 8, !tbaa !714    ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %_ZN5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEENS6_IS8_EEvE16priv_move_assignIS9_EEvONS1_IS8_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS8_SC_E4typeELj0EEENSF_12is_differentISL_S9_EENSF_5bool_ILb0EEESQ_E4typeE.exit, label %bb.c, !prof !30

bb.c:                                             ; preds = %_ZN5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEENS6_IS8_EEvE5clearEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !715
  %i.i = mul i64 %i.h, 24
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.i) #26
  br label %_ZN5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEENS6_IS8_EEvE16priv_move_assignIS9_EEvONS1_IS8_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS8_SC_E4typeELj0EEENSF_12is_differentISL_S9_EENSF_5bool_ILb0EEESQ_E4typeE.exit

_ZN5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEENS6_IS8_EEvE16priv_move_assignIS9_EEvONS1_IS8_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS8_SC_E4typeELj0EEENSF_12is_differentISL_S9_EENSF_5bool_ILb0EEESQ_E4typeE.exit: ; preds = %_ZN5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEENS6_IS8_EEvE5clearEv.exit.i.i, %bb.c
  %i.j = load ptr, ptr %1, align 8, !tbaa !691
  store ptr %i.j, ptr %0, align 8, !tbaa !691
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load <2 x i64>, ptr %i.k, align 8, !tbaa !49
  store <2 x i64> %i.l, ptr %i.a, align 8, !tbaa !49
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEENS6_IS8_EEvE16priv_move_assignIS9_EEvONS1_IS8_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS8_SC_E4typeELj0EEENSF_12is_differentISL_S9_EENSF_5bool_ILb0EEESQ_E4typeE.exit, %bb.a
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEENS6_IS8_EEvE6assignESt16initializer_listIS8_E(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %2
  tail call void @_ZN5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEENS6_IS8_EEvE6assignIPKS8_EEvT_SE_PNS_11move_detail13disable_if_orIvNSF_7is_sameINSF_17integral_constantIjLj1EEENSI_IjLj0EEEEENSF_14is_convertibleISE_mEENS0_3dtl17is_input_iteratorISE_Xsr21has_iterator_categoryISE_EE5valueEEENSF_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %i.a, ptr noundef null)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEENS6_IS8_EEvE6assignEmRKS8_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZN5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEENS6_IS8_EEvE6assignINS0_17constant_iteratorIS8_EEEEvT_SE_PNS_11move_detail13disable_if_orIvNSF_7is_sameINSF_17integral_constantIjLj1EEENSI_IjLj0EEEEENSF_14is_convertibleISE_mEENS0_3dtl17is_input_iteratorISE_Xsr21has_iterator_categoryISE_EE5valueEEENSF_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nonnull %2, i64 %1, ptr null, i64 0, ptr noundef null)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEENS6_IS8_EEvE6assignINS0_17constant_iteratorIS8_EEEEvT_SE_PNS_11move_detail13disable_if_orIvNSF_7is_sameINSF_17integral_constantIjLj1EEENSI_IjLj0EEEEENSF_14is_convertibleISE_mEENS0_3dtl17is_input_iteratorISE_Xsr21has_iterator_categoryISE_EE5valueEEENSF_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, ptr %3, i64 %4, ptr noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = sub i64 %2, %4                           ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !697  ; 2 uses
  %i.d = icmp ugt i64 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ugt i64 %i.a, 768614336404564650
  br i1 %i.e, label %bb.c, label %bb.d, !prof !30

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.19) #27
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = icmp samesign ugt i64 %i.a, 384307168202282325
  br i1 %i.f, label %bb.e, label %bb.f, !prof !30

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5boost9container15throw_bad_allocEv() #27
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.g = mul nuw nsw i64 %i.a, 24
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #25 ; 6 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !691    ; 3 uses
  %.not25 = icmp eq ptr %i.i, null
  br i1 %.not25, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !694  ; 2 uses
  %.not3.i.i = icmp eq i64 %i.k, 0
  br i1 %.not3.i.i, label %_ZN5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEENS6_IS8_EEvE16priv_destroy_allEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.l, %.lr.ph.i.i ], [ %i.k, %bb.g ]
  %storemerge4.i.i = phi ptr [ %i.m, %.lr.ph.i.i ], [ %i.i, %bb.g ] ; 2 uses
  %i.l = add i64 %.05.i.i, -1                     ; 2 uses
  tail call void @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvED1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %storemerge4.i.i) #26
  %i.m = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 24
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %_ZN5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEENS6_IS8_EEvE16priv_destroy_allEv.exit, label %.lr.ph.i.i, !llvm.loop !711

_ZN5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEENS6_IS8_EEvE16priv_destroy_allEv.exit: ; preds = %.lr.ph.i.i, %bb.g
  store i64 0, ptr %i.j, align 8, !tbaa !694
  %i.n = mul nuw i64 %i.c, 24
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #26
  br label %bb.h

bb.h:                                             ; preds = %_ZN5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEENS6_IS8_EEvE16priv_destroy_allEv.exit, %bb.f
  store ptr %i.h, ptr %0, align 8, !tbaa !691
  store i64 %i.a, ptr %i.b, align 8, !tbaa !49
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.o, align 8, !tbaa !694
  %.not1315.i.i = icmp eq i64 %2, %4
  br i1 %.not1315.i.i, label %bb.o, label %.lr.ph.i.i26

.lr.ph.i.i26:                                     ; preds = %bb.h, %bb.i
  %.01217.i.i = phi ptr [ %i.q, %bb.i ], [ %i.h, %bb.h ] ; 4 uses
  %.sroa.2.016.i.i = phi i64 [ %i.p, %bb.i ], [ %2, %bb.h ]
  invoke void @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEC1ERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %.01217.i.i, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %.lr.ph.i.i26
  %i.p = add i64 %.sroa.2.016.i.i, -1             ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.01217.i.i, i64 24 ; 2 uses
  %.not13.i.i = icmp eq i64 %i.p, %4
  br i1 %.not13.i.i, label %_ZN5boost9container24uninitialized_copy_allocINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS3_IwEEvEEEENS0_17constant_iteratorIS8_EEPS8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SG_E4typeERT_SF_SF_SG_.exit.loopexit.i, label %.lr.ph.i.i26, !llvm.loop !716

bb.j:                                             ; preds = %.lr.ph.i.i26
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  %i.t = tail call ptr @__cxa_begin_catch(ptr %i.s) #26 ; 0 uses
  %.not18.i.i = icmp eq ptr %i.h, %.01217.i.i
  br i1 %.not18.i.i, label %._crit_edge22.i.i, label %.lr.ph21.i.i

.lr.ph21.i.i:                                     ; preds = %bb.j, %.lr.ph21.i.i
  %.019.i.i = phi ptr [ %i.u, %.lr.ph21.i.i ], [ %i.h, %bb.j ] ; 2 uses
  tail call void @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvED1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.019.i.i) #26
  %i.u = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 24 ; 2 uses
  %.not.i.i27 = icmp eq ptr %i.u, %.01217.i.i
  br i1 %.not.i.i27, label %._crit_edge22.i.i, label %.lr.ph21.i.i, !llvm.loop !717

bb.k:                                             ; preds = %._crit_edge22.i.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.l unwind label %bb.m

._crit_edge22.i.i:                                ; preds = %.lr.ph21.i.i, %bb.j
  invoke void @__cxa_rethrow() #27
          to label %bb.n unwind label %bb.k

bb.l:                                             ; preds = %bb.k
  resume { ptr, i32 } %i.v

bb.m:                                             ; preds = %bb.k
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #28
  unreachable

bb.n:                                             ; preds = %._crit_edge22.i.i
  unreachable

_ZN5boost9container24uninitialized_copy_allocINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS3_IwEEvEEEENS0_17constant_iteratorIS8_EEPS8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SG_E4typeERT_SF_SF_SG_.exit.loopexit.i: ; preds = %bb.i
  %.pre.i = load i64, ptr %i.o, align 8, !tbaa !696
  br label %bb.o

bb.o:                                             ; preds = %_ZN5boost9container24uninitialized_copy_allocINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS3_IwEEvEEEENS0_17constant_iteratorIS8_EEPS8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SG_E4typeERT_SF_SF_SG_.exit.loopexit.i, %bb.h
  %i.y = phi i64 [ 0, %bb.h ], [ %.pre.i, %_ZN5boost9container24uninitialized_copy_allocINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS3_IwEEvEEEENS0_17constant_iteratorIS8_EEPS8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SG_E4typeERT_SF_SF_SG_.exit.loopexit.i ]
  %.012.lcssa.i.i = phi ptr [ %i.h, %bb.h ], [ %i.q, %_ZN5boost9container24uninitialized_copy_allocINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS3_IwEEvEEEENS0_17constant_iteratorIS8_EEPS8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SG_E4typeERT_SF_SF_SG_.exit.loopexit.i ]
  %i.z = ptrtoint ptr %.012.lcssa.i.i to i64
  %i.aa = ptrtoint ptr %i.h to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = sdiv exact i64 %i.ab, 24
  %i.ad = add i64 %i.ac, %i.y
  store i64 %i.ad, ptr %i.o, align 8, !tbaa !696
  br label %bb.q

bb.p:                                             ; preds = %bb.a
  %i.ae = load ptr, ptr %0, align 8, !tbaa !691
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !694
  tail call void @_ZN5boost9container25copy_assign_range_alloc_nINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS3_IwEEvEEEENS0_17constant_iteratorIS8_EEPS8_EEvRT_T0_mT1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %1, i64 %2, i64 noundef %i.a, ptr noundef %i.ae, i64 noundef %i.ag)
  store i64 %i.a, ptr %i.af, align 8, !tbaa !696
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZNK5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEENS6_IS8_EEvE13get_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNK5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEENS6_IS8_EEvE20get_stored_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEENS6_IS8_EEvE5beginEv(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.47") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !691
  store ptr %i.a, ptr %0, align 8, !tbaa !718
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZNK5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEENS6_IS8_EEvE5beginEv(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.48") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !691
  store ptr %i.a, ptr %0, align 8, !tbaa !720
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEENS6_IS8_EEvE3endEv(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.47") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !691
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !694
  %i.d = getelementptr inbounds [24 x i8], ptr %i.a, i64 %i.c
  store ptr %i.d, ptr %0, align 8, !tbaa !718
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZNK5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEENS6_IS8_EEvE3endEv(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.48") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !722)
  %i.a = load ptr, ptr %1, align 8, !tbaa !691, !noalias !722
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !694, !noalias !722
  %i.d = getelementptr inbounds [24 x i8], ptr %i.a, i64 %i.c
  store ptr %i.d, ptr %0, align 8, !tbaa !720, !alias.scope !722
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZNK5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEENS6_IS8_EEvE4cendEv(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.48") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !691
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !694
  %i.d = getelementptr inbounds [24 x i8], ptr %i.a, i64 %i.c
  store ptr %i.d, ptr %0, align 8, !tbaa !720
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEENS6_IS8_EEvE6rbeginEv(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator.49") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !691, !noalias !725
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !694, !noalias !725
  %i.d = getelementptr inbounds [24 x i8], ptr %i.a, i64 %i.c
  store ptr %i.d, ptr %0, align 8, !tbaa !718
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZNK5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEENS6_IS8_EEvE6rbeginEv(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator.50") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !728)
  %i.a = load ptr, ptr %1, align 8, !tbaa !691, !noalias !731
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !694, !noalias !731
  %i.d = getelementptr inbounds [24 x i8], ptr %i.a, i64 %i.c
  store ptr %i.d, ptr %0, align 8, !tbaa !720, !alias.scope !728
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZNK5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEENS6_IS8_EEvE7crbeginEv(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator.50") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !691, !noalias !736
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !694, !noalias !736
  %i.d = getelementptr inbounds [24 x i8], ptr %i.a, i64 %i.c
  store ptr %i.d, ptr %0, align 8, !tbaa !720
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEENS6_IS8_EEvE4rendEv(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator.49") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !691, !noalias !741
  store ptr %i.a, ptr %0, align 8, !tbaa !718
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZNK5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEENS6_IS8_EEvE4rendEv(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator.50") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !744)
  %i.a = load ptr, ptr %1, align 8, !tbaa !691, !noalias !747
  store ptr %i.a, ptr %0, align 8, !tbaa !720, !alias.scope !744
  ret void
}
end_hunk_1
begin_hunk_2_@_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6insertIPwEES7_PKwT_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE:bb.a
  %n.vec = and i64 %i.ix, 9223372036854775800     ; 3 uses
  %i.jb = shl i64 %n.vec, 2                       ; 2 uses
  %i.jc = getelementptr i8, ptr %i.ip, i64 %i.jb
  %i.jd = getelementptr i8, ptr %2, i64 %i.jb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.je = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ip, i64 %i.je ; 2 uses
  %next.gep229 = getelementptr i8, ptr %2, i64 %i.je ; 2 uses
  %i.jf = getelementptr i8, ptr %next.gep229, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep229, align 4, !tbaa !272
  %wide.load230 = load <4 x i32>, ptr %i.jf, align 4, !tbaa !272
  %i.jg = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !272
  store <4 x i32> %wide.load230, ptr %i.jg, align 4, !tbaa !272
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jh = icmp eq i64 %index.next, %n.vec
  br i1 %i.jh, label %middle.block, label %vector.body, !llvm.loop !916

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ix, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE23priv_uninitialized_copyIPwS7_EEmT_S8_T0_.exit179, label %.lr.ph.i173.preheader

.lr.ph.i173.preheader:                            ; preds = %vector.memcheck, %_ZNSt11char_traitsIwE4moveEPwPKwm.exit171, %middle.block
  %.0711.i175.ph = phi ptr [ %i.ip, %vector.memcheck ], [ %i.ip, %_ZNSt11char_traitsIwE4moveEPwPKwm.exit171 ], [ %i.jc, %middle.block ]
  %.0810.i176.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %_ZNSt11char_traitsIwE4moveEPwPKwm.exit171 ], [ %i.jd, %middle.block ]
  br label %.lr.ph.i173

.lr.ph.i173:                                      ; preds = %.lr.ph.i173.preheader, %.lr.ph.i173
  %.0711.i175 = phi ptr [ %i.jj, %.lr.ph.i173 ], [ %.0711.i175.ph, %.lr.ph.i173.preheader ] ; 2 uses
  %.0810.i176 = phi ptr [ %i.jk, %.lr.ph.i173 ], [ %.0810.i176.ph, %.lr.ph.i173.preheader ] ; 2 uses
  %i.ji = load i32, ptr %.0810.i176, align 4, !tbaa !272
  store i32 %i.ji, ptr %.0711.i175, align 4, !tbaa !272
  %i.jj = getelementptr inbounds nuw i8, ptr %.0711.i175, i64 4
  %i.jk = getelementptr inbounds nuw i8, ptr %.0810.i176, i64 4 ; 2 uses
  %.not.i177 = icmp eq ptr %i.jk, %3
  br i1 %.not.i177, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE23priv_uninitialized_copyIPwS7_EEmT_S8_T0_.exit179, label %.lr.ph.i173, !llvm.loop !917

_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE23priv_uninitialized_copyIPwS7_EEmT_S8_T0_.exit179: ; preds = %.lr.ph.i173, %middle.block
  %i.jl = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.ap
  store i32 0, ptr %i.jl, align 4, !tbaa !272
  %i.jm = load i8, ptr %0, align 8, !tbaa !15
  %i.jn = trunc i8 %i.jm to i1
  %.pre = load i64, ptr %0, align 8
  store ptr %i.ar, ptr %i.f, align 8, !tbaa !501
  %i.jo = shl i64 %i.ap, 1
  %i.jp = and i64 %.pre, 1
  %i.jq = select i1 %i.jn, i64 0, i64 %i.jp
  %i.jr = or disjoint i64 %i.jq, %i.jo            ; 2 uses
  store i64 %i.jr, ptr %0, align 8
  %i.js = load i64, ptr %i.a, align 8, !tbaa !49
  store i64 %i.js, ptr %i.s, align 8, !tbaa !503
  %i.jt = trunc i64 %i.jr to i8
  br label %bb.w

bb.w:                                             ; preds = %_ZN5boost9container3dtl17basic_string_baseISaIwEvE16deallocate_blockEv.exit, %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE23priv_uninitialized_copyIPwS7_EEmT_S8_T0_.exit179, %_ZN5boost9container3dtl17basic_string_baseISaIwEvE9priv_sizeEm.exit143
  %.pre198 = phi ptr [ %i.ar, %_ZN5boost9container3dtl17basic_string_baseISaIwEvE16deallocate_blockEv.exit ], [ %i.ar, %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE23priv_uninitialized_copyIPwS7_EEmT_S8_T0_.exit179 ], [ %.pre198.pre, %_ZN5boost9container3dtl17basic_string_baseISaIwEvE9priv_sizeEm.exit143 ]
  %.pre197 = phi i8 [ %i.ij, %_ZN5boost9container3dtl17basic_string_baseISaIwEvE16deallocate_blockEv.exit ], [ %i.jt, %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE23priv_uninitialized_copyIPwS7_EEmT_S8_T0_.exit179 ], [ %.pre197.pre, %_ZN5boost9container3dtl17basic_string_baseISaIwEvE9priv_sizeEm.exit143 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %.pre201 = trunc i8 %.pre197 to i1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.a
  %.pre-phi = phi i1 [ %.pre201, %bb.w ], [ %i.d, %bb.a ]
  %i.ju = phi ptr [ %.pre198, %bb.w ], [ %i.g, %bb.a ]
  %i.jv = select i1 %i.d, ptr %i.e, ptr %i.g
  %i.jw = ptrtoint ptr %i.jv to i64
  %i.jx = sub i64 %i.h, %i.jw
  %i.jy = select i1 %.pre-phi, ptr %i.e, ptr %i.ju
  %i.jz = getelementptr inbounds i8, ptr %i.jy, i64 %i.jx
  ret ptr %i.jz
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost9container3dtl24allocator_version_traitsISaIwELj1EE18allocation_commandERS3_jmRmRPw(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = and i32 %1, 16
  %.not9 = icmp eq i32 %i.a, 0
  %i.b = and i32 %1, 17
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c, !prof !30

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container17throw_logic_errorEPKc(ptr noundef nonnull @.str.17) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = load i64, ptr %3, align 8, !tbaa !49     ; 3 uses
  %i.e = icmp ugt i64 %i.d, 2305843009213693951
  br i1 %i.e, label %bb.d, label %bb.g, !prof !30

bb.d:                                             ; preds = %bb.c
  %i.f = icmp ugt i64 %i.d, 4611686018427387903
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #27
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  invoke void @_ZSt17__throw_bad_allocv() #27
          to label %.noexc11 unwind label %bb.h

.noexc11:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.c
  %i.g = shl nuw nsw i64 %i.d, 2
  %i.h = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #31
          to label %_ZNSt15__new_allocatorIwE8allocateEmPKv.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  %i.k = tail call ptr @__cxa_begin_catch(ptr %i.j) #26 ; 0 uses
  br i1 %.not9, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  invoke void @__cxa_rethrow() #27
          to label %bb.n unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.l unwind label %bb.m

bb.k:                                             ; preds = %bb.h
  tail call void @__cxa_end_catch()
  br label %_ZNSt15__new_allocatorIwE8allocateEmPKv.exit

_ZNSt15__new_allocatorIwE8allocateEmPKv.exit:     ; preds = %bb.g, %bb.k
  %.0 = phi ptr [ null, %bb.k ], [ %i.h, %bb.g ]
  store ptr null, ptr %4, align 8, !tbaa !295
  ret ptr %.0

bb.l:                                             ; preds = %bb.j
  resume { ptr, i32 } %i.l

bb.m:                                             ; preds = %bb.j
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #28
  unreachable

bb.n:                                             ; preds = %bb.i
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEENS6_IS8_EEvE6assignIPS8_EEvT_SD_PNS_11move_detail13disable_if_orIvNSE_7is_sameINSE_17integral_constantIjLj1EEENSH_IjLj0EEEEENSE_14is_convertibleISD_mEENS0_3dtl17is_input_iteratorISD_Xsr21has_iterator_categoryISD_EE5valueEEENSE_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = sdiv exact i64 %i.c, 24                  ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !607  ; 2 uses
  %i.g = icmp ugt i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %i.d, 768614336404564650
  br i1 %i.h, label %bb.c, label %bb.d, !prof !30

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.19) #27
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #25 ; 6 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !601    ; 3 uses
  %.not17 = icmp eq ptr %i.j, null
  br i1 %.not17, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !604  ; 2 uses
  %.not3.i.i = icmp eq i64 %i.l, 0
  br i1 %.not3.i.i, label %_ZN5boost9container6vectorINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEENS6_IS8_EEvE16priv_destroy_allEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.m, %.lr.ph.i.i ], [ %i.l, %bb.e ]
  %storemerge4.i.i = phi ptr [ %i.n, %.lr.ph.i.i ], [ %i.j, %bb.e ] ; 2 uses
  %i.m = add i64 %.05.i.i, -1                     ; 2 uses
  tail call void @_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvED1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %storemerge4.i.i) #26
  %i.n = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 24
  %.not.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i, label %_ZN5boost9container6vectorINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEENS6_IS8_EEvE16priv_destroy_allEv.exit, label %.lr.ph.i.i, !llvm.loop !621

_ZN5boost9container6vectorINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEENS6_IS8_EEvE16priv_destroy_allEv.exit: ; preds = %.lr.ph.i.i, %bb.e
  store i64 0, ptr %i.k, align 8, !tbaa !604
  %i.o = mul nuw i64 %i.f, 24
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #26
  br label %bb.f

bb.f:                                             ; preds = %_ZN5boost9container6vectorINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEENS6_IS8_EEvE16priv_destroy_allEv.exit, %bb.d
  store ptr %i.i, ptr %0, align 8, !tbaa !601
  store i64 %i.d, ptr %i.e, align 8, !tbaa !49
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.p, align 8, !tbaa !604
  %.not18.i.i = icmp eq ptr %1, %2
  br i1 %.not18.i.i, label %bb.l, label %.lr.ph.i.i18

.lr.ph.i.i18:                                     ; preds = %bb.f, %_ZN5boost9container16allocator_traitsINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEEE9constructIS8_JRS8_EEEvRS9_PT_DpOT0_.exit.i.i
  %.020.i.i = phi ptr [ %i.q, %_ZN5boost9container16allocator_traitsINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEEE9constructIS8_JRS8_EEEvRS9_PT_DpOT0_.exit.i.i ], [ %1, %bb.f ] ; 2 uses
  %.01619.i.i = phi ptr [ %i.r, %_ZN5boost9container16allocator_traitsINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEEE9constructIS8_JRS8_EEEvRS9_PT_DpOT0_.exit.i.i ], [ %i.i, %bb.f ] ; 4 uses
  invoke void @_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEC1ERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %.01619.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.020.i.i)
          to label %_ZN5boost9container16allocator_traitsINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEEE9constructIS8_JRS8_EEEvRS9_PT_DpOT0_.exit.i.i unwind label %bb.g

_ZN5boost9container16allocator_traitsINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEEE9constructIS8_JRS8_EEEvRS9_PT_DpOT0_.exit.i.i: ; preds = %.lr.ph.i.i18
  %i.q = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.01619.i.i, i64 24 ; 2 uses
  %.not.i.i19 = icmp eq ptr %i.q, %2
  br i1 %.not.i.i19, label %_ZN5boost9container24uninitialized_copy_allocINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEEPS8_SA_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SE_E4typeERT_SD_SD_SE_.exit.loopexit.i, label %.lr.ph.i.i18, !llvm.loop !918

bb.g:                                             ; preds = %.lr.ph.i.i18
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  %i.u = tail call ptr @__cxa_begin_catch(ptr %i.t) #26 ; 0 uses
  %.not821.i.i = icmp eq ptr %i.i, %.01619.i.i
  br i1 %.not821.i.i, label %._crit_edge25.i.i, label %.lr.ph24.i.i

.lr.ph24.i.i:                                     ; preds = %bb.g, %.lr.ph24.i.i
  %.01522.i.i = phi ptr [ %i.v, %.lr.ph24.i.i ], [ %i.i, %bb.g ] ; 2 uses
  tail call void @_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvED1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.01522.i.i) #26
  %i.v = getelementptr inbounds nuw i8, ptr %.01522.i.i, i64 24 ; 2 uses
  %.not8.i.i = icmp eq ptr %i.v, %.01619.i.i
  br i1 %.not8.i.i, label %._crit_edge25.i.i, label %.lr.ph24.i.i, !llvm.loop !919

bb.h:                                             ; preds = %._crit_edge25.i.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

._crit_edge25.i.i:                                ; preds = %.lr.ph24.i.i, %bb.g
  invoke void @__cxa_rethrow() #27
          to label %bb.k unwind label %bb.h

bb.i:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.w

bb.j:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #28
  unreachable

bb.k:                                             ; preds = %._crit_edge25.i.i
  unreachable

_ZN5boost9container24uninitialized_copy_allocINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEEPS8_SA_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SE_E4typeERT_SD_SD_SE_.exit.loopexit.i: ; preds = %_ZN5boost9container16allocator_traitsINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEEE9constructIS8_JRS8_EEEvRS9_PT_DpOT0_.exit.i.i
  %.pre.i = load i64, ptr %i.p, align 8, !tbaa !606
  br label %bb.l

bb.l:                                             ; preds = %_ZN5boost9container24uninitialized_copy_allocINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEEPS8_SA_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SE_E4typeERT_SD_SD_SE_.exit.loopexit.i, %bb.f
  %i.z = phi i64 [ 0, %bb.f ], [ %.pre.i, %_ZN5boost9container24uninitialized_copy_allocINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEEPS8_SA_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SE_E4typeERT_SD_SD_SE_.exit.loopexit.i ]
  %.016.lcssa.i.i = phi ptr [ %i.i, %bb.f ], [ %i.r, %_ZN5boost9container24uninitialized_copy_allocINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEEPS8_SA_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SE_E4typeERT_SD_SD_SE_.exit.loopexit.i ]
  %i.aa = ptrtoint ptr %.016.lcssa.i.i to i64
  %i.ab = ptrtoint ptr %i.i to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = sdiv exact i64 %i.ac, 24
  %i.ae = add i64 %i.ad, %i.z
  store i64 %i.ae, ptr %i.p, align 8, !tbaa !606
  br label %bb.n

bb.m:                                             ; preds = %bb.a
  %i.af = load ptr, ptr %0, align 8, !tbaa !601
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !604
  tail call void @_ZN5boost9container25copy_assign_range_alloc_nINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEEPS8_SA_EEvRT_T0_mT1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %i.d, ptr noundef %i.af, i64 noundef %i.ah)
  store i64 %i.d, ptr %i.ag, align 8, !tbaa !606
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container25copy_assign_range_alloc_nINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEEPS8_SA_EEvRT_T0_mT1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ult i64 %4, %2
  br i1 %i.a, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %.not7.i = icmp eq i64 %4, 0
  br i1 %.not7.i, label %_ZN5boost9container18copy_n_source_destIPNS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEES9_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESC_mRSD_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEaSERKS7_.exit.i
  %.0 = phi ptr [ %i.ax, %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEaSERKS7_.exit.i ], [ %3, %bb.b ] ; 14 uses
  %.09.i = phi ptr [ %i.aw, %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEaSERKS7_.exit.i ], [ %1, %bb.b ] ; 6 uses
  %.068.i = phi i64 [ %i.b, %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEaSERKS7_.exit.i ], [ %4, %bb.b ]
  %i.b = add i64 %.068.i, -1                      ; 2 uses
  %.not.i.i = icmp eq ptr %.0, %.09.i
  br i1 %.not.i.i, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEaSERKS7_.exit.i, label %bb.c, !prof !30

bb.c:                                             ; preds = %.lr.ph.i
  %i.c = load i8, ptr %.09.i, align 1, !tbaa !15  ; 2 uses
  %i.d = trunc i8 %i.c to i1                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.09.i, i64 1 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.09.i, i64 16
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = select i1 %i.d, ptr %i.e, ptr %i.g       ; 3 uses
  %i.i = lshr i8 %i.c, 1
  %i.j = zext nneg i8 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.j
  %i.l = load i64, ptr %.09.i, align 8
  %i.m = lshr i64 %i.l, 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.m
  %i.o = select i1 %i.d, ptr %i.k, ptr %i.n       ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.h to i64
  %i.r = sub i64 %i.p, %i.q                       ; 5 uses
  %i.s = tail call noundef zeroext i1 @_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE24priv_reserve_no_null_endEm(ptr noundef nonnull align 8 dereferenceable(24) %.0, i64 noundef %i.r)
  br i1 %i.s, label %bb.d, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE7reserveEm.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.t = load i8, ptr %.0, align 1, !tbaa !15     ; 2 uses
  %i.u = trunc i8 %i.t to i1
  %i.v = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %i.w = lshr i8 %i.t, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = load i64, ptr %.0, align 8
  %i.ac = lshr i64 %i.ab, 1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ac
  %i.ae = select i1 %i.u, ptr %i.y, ptr %i.ad
  store i8 0, ptr %i.ae, align 1, !tbaa !15
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE7reserveEm.exit.i.i.i

_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE7reserveEm.exit.i.i.i: ; preds = %bb.d, %bb.c
  %i.af = load i8, ptr %.0, align 1, !tbaa !15
  %i.ag = trunc i8 %i.af to i1
  %i.ah = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %i.ai = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = select i1 %i.ag, ptr %i.ah, ptr %i.aj   ; 2 uses
  %i.al = icmp eq ptr %i.o, %i.h
  br i1 %i.al, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE7reserveEm.exit.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ak, ptr align 1 %i.h, i64 %i.r, i1 false)
  br label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i.i

_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i.i:     ; preds = %bb.e, %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE7reserveEm.exit.i.i.i
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 %i.r
  store i8 0, ptr %i.am, align 1, !tbaa !15
  %i.an = load i8, ptr %.0, align 8, !tbaa !15
  %i.ao = trunc i8 %i.an to i1
  br i1 %i.ao, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i.i
  %i.ap = trunc i64 %i.r to i8
  %i.aq = shl i8 %i.ap, 1
  %i.ar = or disjoint i8 %i.aq, 1
  store i8 %i.ar, ptr %.0, align 8
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEaSERKS7_.exit.i

bb.g:                                             ; preds = %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i.i
  %i.as = load i64, ptr %.0, align 8
  %i.at = shl i64 %i.r, 1
  %i.au = and i64 %i.as, 1
  %i.av = or disjoint i64 %i.au, %i.at
  store i64 %i.av, ptr %.0, align 8
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEaSERKS7_.exit.i

_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEaSERKS7_.exit.i: ; preds = %bb.g, %bb.f, %.lr.ph.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.09.i, i64 24 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0, i64 24 ; 2 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %_ZN5boost9container18copy_n_source_destIPNS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEES9_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESC_mRSD_.exit, label %.lr.ph.i, !llvm.loop !920

_ZN5boost9container18copy_n_source_destIPNS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEES9_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESC_mRSD_.exit: ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEaSERKS7_.exit.i, %bb.b
  %.1 = phi ptr [ %3, %bb.b ], [ %i.ax, %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEaSERKS7_.exit.i ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %1, %bb.b ], [ %i.aw, %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEaSERKS7_.exit.i ]
  %i.ay = sub nuw i64 %2, %4
  br label %.lr.ph.i14

.lr.ph.i14:                                       ; preds = %_ZN5boost9container18copy_n_source_destIPNS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEES9_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESC_mRSD_.exit, %_ZN5boost9container16allocator_traitsINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEEE9constructIS8_JRS8_EEEvRS9_PT_DpOT0_.exit.i
  %.022.i = phi i64 [ %i.az, %_ZN5boost9container16allocator_traitsINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEEE9constructIS8_JRS8_EEEvRS9_PT_DpOT0_.exit.i ], [ %i.ay, %_ZN5boost9container18copy_n_source_destIPNS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEES9_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESC_mRSD_.exit ]
  %.0821.i = phi ptr [ %i.ba, %_ZN5boost9container16allocator_traitsINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEEE9constructIS8_JRS8_EEEvRS9_PT_DpOT0_.exit.i ], [ %.0.lcssa.i, %_ZN5boost9container18copy_n_source_destIPNS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEES9_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESC_mRSD_.exit ] ; 2 uses
  %.01720.i = phi ptr [ %i.bb, %_ZN5boost9container16allocator_traitsINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEEE9constructIS8_JRS8_EEEvRS9_PT_DpOT0_.exit.i ], [ %.1, %_ZN5boost9container18copy_n_source_destIPNS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEES9_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESC_mRSD_.exit ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01720.i) ]
  invoke void @_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEC1ERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %.01720.i, ptr noundef nonnull align 8 dereferenceable(24) %.0821.i)
          to label %_ZN5boost9container16allocator_traitsINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEEE9constructIS8_JRS8_EEEvRS9_PT_DpOT0_.exit.i unwind label %bb.h

_ZN5boost9container16allocator_traitsINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEEE9constructIS8_JRS8_EEEvRS9_PT_DpOT0_.exit.i: ; preds = %.lr.ph.i14
  %i.az = add i64 %.022.i, -1                     ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEEPS8_NS0_3dtl18insert_range_proxyIS9_PKS8_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SN_mSI_:bb.a
bb.r:                                             ; preds = %._crit_edge28.i.i
  %i.du = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.s

._crit_edge28.i.i:                                ; preds = %.lr.ph27.i.i, %bb.q
  invoke void @__cxa_rethrow() #27
          to label %bb.t unwind label %bb.r

bb.s:                                             ; preds = %bb.r
  %i.dv = landingpad { ptr, i32 }
          catch ptr null
  %i.dw = extractvalue { ptr, i32 } %i.dv, 0
  tail call void @__clang_call_terminate(ptr %i.dw) #28
  unreachable

bb.t:                                             ; preds = %._crit_edge28.i.i
  unreachable

.body.thread:                                     ; preds = %bb.l
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %.lr.ph.i71.preheader

.body:                                            ; preds = %bb.r
  %.not2.i70 = icmp eq ptr %i.bm, %.015.lcssa.i95
  br i1 %.not2.i70, label %_ZN5boost9container3dtl23scoped_destructor_rangeINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS4_IcEEvEEEEED2Ev.exit48, label %.lr.ph.i71.preheader

.lr.ph.i71.preheader:                             ; preds = %.body.thread, %.body
  %eh.lpad-body124 = phi { ptr, i32 } [ %i.dx, %.body.thread ], [ %i.du, %.body ]
  %.015.lcssa.i94123 = phi ptr [ %i.bo, %.body.thread ], [ %.015.lcssa.i95, %.body ]
  br label %.lr.ph.i71

.lr.ph.i71:                                       ; preds = %.lr.ph.i71.preheader, %.lr.ph.i71
  %.sroa.0.1 = phi ptr [ %i.dy, %.lr.ph.i71 ], [ %i.bm, %.lr.ph.i71.preheader ] ; 2 uses
  tail call void @_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvED1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.sroa.0.1) #26
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 24 ; 2 uses
  %.not.i72 = icmp eq ptr %i.dy, %.015.lcssa.i94123
  br i1 %.not.i72, label %_ZN5boost9container3dtl23scoped_destructor_rangeINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS4_IcEEvEEEEED2Ev.exit48, label %.lr.ph.i71, !llvm.loop !930

_ZN5boost9container3dtl23scoped_destructor_rangeINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS4_IcEEvEEEEED2Ev.exit: ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEaSERKS7_.exit.i.i, %_ZN5boost9container18construct_in_placeINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEES8_PKS8_EEvRT_PT0_T1_.exit.i.i, %_ZN5boost9container13move_backwardIPNS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEES9_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SD_E4typeESC_SC_SD_.exit
  ret void

_ZN5boost9container3dtl23scoped_destructor_rangeINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS4_IcEEvEEEEED2Ev.exit48: ; preds = %.lr.ph.i46, %.lr.ph.i71, %.body, %bb.j
  %.pn = phi { ptr, i32 } [ %eh.lpad-body124, %.lr.ph.i71 ], [ %i.bk, %bb.j ], [ %i.du, %.body ], [ %i.bk, %.lr.ph.i46 ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container35uninitialized_move_and_insert_allocINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEEPS8_SA_NS0_3dtl18insert_range_proxyIS9_PKS8_EEEEvRT_T0_SI_SI_T1_mT2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5, i64 %6) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = inttoptr i64 %6 to ptr
  %.not16.i = icmp eq ptr %1, %2
  br i1 %.not16.i, label %_ZN5boost9container24uninitialized_move_allocINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEEPS8_SA_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SE_E4typeERT_SD_SD_SE_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.018.i = phi ptr [ %i.b, %.lr.ph.i ], [ %1, %bb.a ] ; 2 uses
  %.01517.i = phi ptr [ %i.c, %.lr.ph.i ], [ %4, %bb.a ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i) ]
  tail call void @_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEC1EOS7_(ptr noundef nonnull align 8 dereferenceable(24) %.01517.i, ptr noundef nonnull align 8 dereferenceable(24) %.018.i) #26
  %i.b = getelementptr inbounds nuw i8, ptr %.018.i, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.01517.i, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %i.b, %2
  br i1 %.not.i, label %_ZN5boost9container24uninitialized_move_allocINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEEPS8_SA_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SE_E4typeERT_SD_SD_SE_.exit, label %.lr.ph.i, !llvm.loop !663

_ZN5boost9container24uninitialized_move_allocINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEEPS8_SA_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SE_E4typeERT_SD_SD_SE_.exit: ; preds = %.lr.ph.i, %bb.a
  %.015.lcssa.i = phi ptr [ %4, %bb.a ], [ %i.c, %.lr.ph.i ] ; 6 uses
  %.not20.i.i = icmp eq i64 %5, 0
  br i1 %.not20.i.i, label %_ZN5boost9container3dtl18insert_range_proxyINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS4_IcEEvEEEEPKS9_E31uninitialized_copy_n_and_updateIPS9_EEvRSA_T_m.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEEPS8_SA_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SE_E4typeERT_SD_SD_SE_.exit, %_ZN5boost9container18construct_in_placeINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEES8_PKS8_EEvRT_PT0_T1_.exit.i.i
  %.023.i.i = phi i64 [ %i.f, %_ZN5boost9container18construct_in_placeINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEES8_PKS8_EEvRT_PT0_T1_.exit.i.i ], [ %5, %_ZN5boost9container24uninitialized_move_allocINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEEPS8_SA_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SE_E4typeERT_SD_SD_SE_.exit ]
  %.0922.i.i = phi ptr [ %i.d, %_ZN5boost9container18construct_in_placeINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEES8_PKS8_EEvRT_PT0_T1_.exit.i.i ], [ %i.a, %_ZN5boost9container24uninitialized_move_allocINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEEPS8_SA_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SE_E4typeERT_SD_SD_SE_.exit ] ; 2 uses
  %.01721.i.i = phi ptr [ %i.e, %_ZN5boost9container18construct_in_placeINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEES8_PKS8_EEvRT_PT0_T1_.exit.i.i ], [ %.015.lcssa.i, %_ZN5boost9container24uninitialized_move_allocINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEEPS8_SA_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SE_E4typeERT_SD_SD_SE_.exit ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01721.i.i) ]
  invoke void @_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEC1ERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %.01721.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0922.i.i)
          to label %_ZN5boost9container18construct_in_placeINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEES8_PKS8_EEvRT_PT0_T1_.exit.i.i unwind label %bb.b

_ZN5boost9container18construct_in_placeINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEES8_PKS8_EEvRT_PT0_T1_.exit.i.i: ; preds = %.lr.ph.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %.0922.i.i, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %.01721.i.i, i64 24
  %i.f = add i64 %.023.i.i, -1                    ; 2 uses
  %.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i, label %_ZN5boost9container3dtl18insert_range_proxyINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS4_IcEEvEEEEPKS9_E31uninitialized_copy_n_and_updateIPS9_EEvRSA_T_m.exit, label %.lr.ph.i.i, !llvm.loop !617

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  %i.i = tail call ptr @__cxa_begin_catch(ptr %i.h) #26 ; 0 uses
  %.not1024.i.i = icmp eq ptr %.015.lcssa.i, %.01721.i.i
  br i1 %.not1024.i.i, label %._crit_edge28.i.i, label %.lr.ph27.i.i

.lr.ph27.i.i:                                     ; preds = %bb.b, %.lr.ph27.i.i
  %.01625.i.i = phi ptr [ %i.j, %.lr.ph27.i.i ], [ %.015.lcssa.i, %bb.b ] ; 2 uses
  tail call void @_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvED1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.01625.i.i) #26
  %i.j = getelementptr inbounds nuw i8, ptr %.01625.i.i, i64 24 ; 2 uses
  %.not10.i.i = icmp eq ptr %i.j, %.01721.i.i
  br i1 %.not10.i.i, label %._crit_edge28.i.i, label %.lr.ph27.i.i, !llvm.loop !618

bb.c:                                             ; preds = %._crit_edge28.i.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.d

._crit_edge28.i.i:                                ; preds = %.lr.ph27.i.i, %bb.b
  invoke void @__cxa_rethrow() #27
          to label %bb.e unwind label %bb.c

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #28
  unreachable

bb.e:                                             ; preds = %._crit_edge28.i.i
  unreachable

_ZN5boost9container3dtl18insert_range_proxyINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS4_IcEEvEEEEPKS9_E31uninitialized_copy_n_and_updateIPS9_EEvRSA_T_m.exit: ; preds = %_ZN5boost9container18construct_in_placeINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEES8_PKS8_EEvRT_PT0_T1_.exit.i.i, %_ZN5boost9container24uninitialized_move_allocINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEEPS8_SA_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SE_E4typeERT_SD_SD_SE_.exit
  %.not16.i19 = icmp eq ptr %2, %3
  br i1 %.not16.i19, label %_ZN5boost9container3dtl23scoped_destructor_rangeINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS4_IcEEvEEEEED2Ev.exit, label %.lr.ph.i20.preheader

.lr.ph.i20.preheader:                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS4_IcEEvEEEEPKS9_E31uninitialized_copy_n_and_updateIPS9_EEvRSA_T_m.exit
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %.015.lcssa.i, i64 %5
  br label %.lr.ph.i20

.lr.ph.i20:                                       ; preds = %.lr.ph.i20.preheader, %.lr.ph.i20
  %.018.i21 = phi ptr [ %i.o, %.lr.ph.i20 ], [ %2, %.lr.ph.i20.preheader ] ; 2 uses
  %.01517.i22 = phi ptr [ %i.p, %.lr.ph.i20 ], [ %i.n, %.lr.ph.i20.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i22) ]
  tail call void @_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEC1EOS7_(ptr noundef nonnull align 8 dereferenceable(24) %.01517.i22, ptr noundef nonnull align 8 dereferenceable(24) %.018.i21) #26
  %i.o = getelementptr inbounds nuw i8, ptr %.018.i21, i64 24 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.01517.i22, i64 24
  %.not.i23 = icmp eq ptr %i.o, %3
  br i1 %.not.i23, label %_ZN5boost9container3dtl23scoped_destructor_rangeINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS4_IcEEvEEEEED2Ev.exit, label %.lr.ph.i20, !llvm.loop !663

_ZN5boost9container3dtl23scoped_destructor_rangeINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS4_IcEEvEEEEED2Ev.exit: ; preds = %.lr.ph.i20, %_ZN5boost9container3dtl18insert_range_proxyINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS4_IcEEvEEEEPKS9_E31uninitialized_copy_n_and_updateIPS9_EEvRSA_T_m.exit
  ret void

.body:                                            ; preds = %bb.c
  %.not2.i28 = icmp eq ptr %4, %.015.lcssa.i
  br i1 %.not2.i28, label %_ZN5boost9container3dtl23scoped_destructor_rangeINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS4_IcEEvEEEEED2Ev.exit31, label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %.body, %.lr.ph.i29
  %.sroa.0.1 = phi ptr [ %i.q, %.lr.ph.i29 ], [ %4, %.body ] ; 2 uses
  tail call void @_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvED1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.sroa.0.1) #26
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 24 ; 2 uses
  %.not.i30 = icmp eq ptr %i.q, %.015.lcssa.i
  br i1 %.not.i30, label %_ZN5boost9container3dtl23scoped_destructor_rangeINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS4_IcEEvEEEEED2Ev.exit31, label %.lr.ph.i29, !llvm.loop !930

_ZN5boost9container3dtl23scoped_destructor_rangeINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS4_IcEEvEEEEED2Ev.exit31: ; preds = %.lr.ph.i29, %.body
  resume { ptr, i32 } %i.k
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEENS6_IS8_EEvE6assignIPS8_EEvT_SD_PNS_11move_detail13disable_if_orIvNSE_7is_sameINSE_17integral_constantIjLj1EEENSH_IjLj0EEEEENSE_14is_convertibleISD_mEENS0_3dtl17is_input_iteratorISD_Xsr21has_iterator_categoryISD_EE5valueEEENSE_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = sdiv exact i64 %i.c, 24                  ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !697  ; 2 uses
  %i.g = icmp ugt i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %i.d, 768614336404564650
  br i1 %i.h, label %bb.c, label %bb.d, !prof !30

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.19) #27
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #25 ; 6 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !691    ; 3 uses
  %.not17 = icmp eq ptr %i.j, null
  br i1 %.not17, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !694  ; 2 uses
  %.not3.i.i = icmp eq i64 %i.l, 0
  br i1 %.not3.i.i, label %_ZN5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEENS6_IS8_EEvE16priv_destroy_allEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.m, %.lr.ph.i.i ], [ %i.l, %bb.e ]
  %storemerge4.i.i = phi ptr [ %i.n, %.lr.ph.i.i ], [ %i.j, %bb.e ] ; 2 uses
  %i.m = add i64 %.05.i.i, -1                     ; 2 uses
  tail call void @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvED1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %storemerge4.i.i) #26
  %i.n = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 24
  %.not.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i, label %_ZN5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEENS6_IS8_EEvE16priv_destroy_allEv.exit, label %.lr.ph.i.i, !llvm.loop !711

_ZN5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEENS6_IS8_EEvE16priv_destroy_allEv.exit: ; preds = %.lr.ph.i.i, %bb.e
  store i64 0, ptr %i.k, align 8, !tbaa !694
  %i.o = mul nuw i64 %i.f, 24
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #26
  br label %bb.f

bb.f:                                             ; preds = %_ZN5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEENS6_IS8_EEvE16priv_destroy_allEv.exit, %bb.d
  store ptr %i.i, ptr %0, align 8, !tbaa !691
  store i64 %i.d, ptr %i.e, align 8, !tbaa !49
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.p, align 8, !tbaa !694
  %.not18.i.i = icmp eq ptr %1, %2
  br i1 %.not18.i.i, label %bb.l, label %.lr.ph.i.i18

.lr.ph.i.i18:                                     ; preds = %bb.f, %_ZN5boost9container16allocator_traitsINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS3_IwEEvEEEEE9constructIS8_JRS8_EEEvRS9_PT_DpOT0_.exit.i.i
  %.020.i.i = phi ptr [ %i.q, %_ZN5boost9container16allocator_traitsINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS3_IwEEvEEEEE9constructIS8_JRS8_EEEvRS9_PT_DpOT0_.exit.i.i ], [ %1, %bb.f ] ; 2 uses
  %.01619.i.i = phi ptr [ %i.r, %_ZN5boost9container16allocator_traitsINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS3_IwEEvEEEEE9constructIS8_JRS8_EEEvRS9_PT_DpOT0_.exit.i.i ], [ %i.i, %bb.f ] ; 4 uses
  invoke void @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEC1ERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %.01619.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.020.i.i)
          to label %_ZN5boost9container16allocator_traitsINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS3_IwEEvEEEEE9constructIS8_JRS8_EEEvRS9_PT_DpOT0_.exit.i.i unwind label %bb.g

_ZN5boost9container16allocator_traitsINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS3_IwEEvEEEEE9constructIS8_JRS8_EEEvRS9_PT_DpOT0_.exit.i.i: ; preds = %.lr.ph.i.i18
  %i.q = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.01619.i.i, i64 24 ; 2 uses
  %.not.i.i19 = icmp eq ptr %i.q, %2
  br i1 %.not.i.i19, label %_ZN5boost9container24uninitialized_copy_allocINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS3_IwEEvEEEEPS8_SA_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SE_E4typeERT_SD_SD_SE_.exit.loopexit.i, label %.lr.ph.i.i18, !llvm.loop !935

bb.g:                                             ; preds = %.lr.ph.i.i18
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  %i.u = tail call ptr @__cxa_begin_catch(ptr %i.t) #26 ; 0 uses
  %.not821.i.i = icmp eq ptr %i.i, %.01619.i.i
  br i1 %.not821.i.i, label %._crit_edge25.i.i, label %.lr.ph24.i.i

.lr.ph24.i.i:                                     ; preds = %bb.g, %.lr.ph24.i.i
  %.01522.i.i = phi ptr [ %i.v, %.lr.ph24.i.i ], [ %i.i, %bb.g ] ; 2 uses
  tail call void @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvED1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.01522.i.i) #26
  %i.v = getelementptr inbounds nuw i8, ptr %.01522.i.i, i64 24 ; 2 uses
  %.not8.i.i = icmp eq ptr %i.v, %.01619.i.i
  br i1 %.not8.i.i, label %._crit_edge25.i.i, label %.lr.ph24.i.i, !llvm.loop !936

bb.h:                                             ; preds = %._crit_edge25.i.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

._crit_edge25.i.i:                                ; preds = %.lr.ph24.i.i, %bb.g
  invoke void @__cxa_rethrow() #27
          to label %bb.k unwind label %bb.h

bb.i:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.w

bb.j:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #28
  unreachable

bb.k:                                             ; preds = %._crit_edge25.i.i
  unreachable

_ZN5boost9container24uninitialized_copy_allocINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS3_IwEEvEEEEPS8_SA_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SE_E4typeERT_SD_SD_SE_.exit.loopexit.i: ; preds = %_ZN5boost9container16allocator_traitsINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS3_IwEEvEEEEE9constructIS8_JRS8_EEEvRS9_PT_DpOT0_.exit.i.i
  %.pre.i = load i64, ptr %i.p, align 8, !tbaa !696
  br label %bb.l

bb.l:                                             ; preds = %_ZN5boost9container24uninitialized_copy_allocINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS3_IwEEvEEEEPS8_SA_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SE_E4typeERT_SD_SD_SE_.exit.loopexit.i, %bb.f
  %i.z = phi i64 [ 0, %bb.f ], [ %.pre.i, %_ZN5boost9container24uninitialized_copy_allocINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS3_IwEEvEEEEPS8_SA_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SE_E4typeERT_SD_SD_SE_.exit.loopexit.i ]
  %.016.lcssa.i.i = phi ptr [ %i.i, %bb.f ], [ %i.r, %_ZN5boost9container24uninitialized_copy_allocINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS3_IwEEvEEEEPS8_SA_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SE_E4typeERT_SD_SD_SE_.exit.loopexit.i ]
  %i.aa = ptrtoint ptr %.016.lcssa.i.i to i64
  %i.ab = ptrtoint ptr %i.i to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = sdiv exact i64 %i.ac, 24
  %i.ae = add i64 %i.ad, %i.z
  store i64 %i.ae, ptr %i.p, align 8, !tbaa !696
  br label %bb.n

bb.m:                                             ; preds = %bb.a
  %i.af = load ptr, ptr %0, align 8, !tbaa !691
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !694
  tail call void @_ZN5boost9container25copy_assign_range_alloc_nINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS3_IwEEvEEEEPS8_SA_EEvRT_T0_mT1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %i.d, ptr noundef %i.af, i64 noundef %i.ah)
  store i64 %i.d, ptr %i.ag, align 8, !tbaa !696
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container25copy_assign_range_alloc_nINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS3_IwEEvEEEEPS8_SA_EEvRT_T0_mT1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ult i64 %4, %2
  br i1 %i.a, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %.not7.i = icmp eq i64 %4, 0
  br i1 %.not7.i, label %_ZN5boost9container18copy_n_source_destIPNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEES9_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESC_mRSD_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEaSERKS7_.exit.i
  %.0 = phi ptr [ %i.az, %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEaSERKS7_.exit.i ], [ %3, %bb.b ] ; 14 uses
  %.09.i = phi ptr [ %i.ay, %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEaSERKS7_.exit.i ], [ %1, %bb.b ] ; 6 uses
  %.068.i = phi i64 [ %i.b, %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEaSERKS7_.exit.i ], [ %4, %bb.b ]
  %i.b = add i64 %.068.i, -1                      ; 2 uses
  %.not.i.i = icmp eq ptr %.0, %.09.i
  br i1 %.not.i.i, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEaSERKS7_.exit.i, label %bb.c, !prof !30

bb.c:                                             ; preds = %.lr.ph.i
  %i.c = load i8, ptr %.09.i, align 1, !tbaa !15  ; 2 uses
  %i.d = trunc i8 %i.c to i1                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.09.i, i64 4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.09.i, i64 16
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = select i1 %i.d, ptr %i.e, ptr %i.g       ; 3 uses
  %i.i = lshr i8 %i.c, 1
  %i.j = zext nneg i8 %i.i to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.j
  %i.l = load i64, ptr %.09.i, align 8
  %i.m = lshr i64 %i.l, 1
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.m
  %i.o = select i1 %i.d, ptr %i.k, ptr %i.n       ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.h to i64
  %i.r = sub i64 %i.p, %i.q                       ; 3 uses
  %i.s = ashr exact i64 %i.r, 2                   ; 3 uses
  %i.t = tail call noundef zeroext i1 @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE24priv_reserve_no_null_endEm(ptr noundef nonnull align 8 dereferenceable(24) %.0, i64 noundef %i.s)
  br i1 %i.t, label %bb.d, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7reserveEm.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.u = load i8, ptr %.0, align 1, !tbaa !15     ; 2 uses
  %i.v = trunc i8 %i.u to i1
  %i.w = getelementptr inbounds nuw i8, ptr %.0, i64 4
  %i.x = lshr i8 %i.u, 1
  %i.y = zext nneg i8 %i.x to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = load i64, ptr %.0, align 8
  %i.ad = lshr i64 %i.ac, 1
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ad
  %i.af = select i1 %i.v, ptr %i.z, ptr %i.ae
  store i32 0, ptr %i.af, align 4, !tbaa !272
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7reserveEm.exit.i.i.i

_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7reserveEm.exit.i.i.i: ; preds = %bb.d, %bb.c
  %i.ag = load i8, ptr %.0, align 1, !tbaa !15
  %i.ah = trunc i8 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %.0, i64 4
  %i.aj = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = select i1 %i.ah, ptr %i.ai, ptr %i.ak   ; 2 uses
  %i.am = icmp eq ptr %i.o, %i.h
  br i1 %i.am, label %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7reserveEm.exit.i.i.i
  %i.an = tail call ptr @wmemcpy(ptr noundef %i.al, ptr noundef %i.h, i64 noundef %i.s) #26 ; 0 uses
  br label %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i.i.i

_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i.i.i:     ; preds = %bb.e, %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7reserveEm.exit.i.i.i
  %i.ao = getelementptr inbounds i8, ptr %i.al, i64 %i.r
  store i32 0, ptr %i.ao, align 4, !tbaa !272
  %i.ap = load i8, ptr %.0, align 8, !tbaa !15
  %i.aq = trunc i8 %i.ap to i1
  br i1 %i.aq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i.i.i
  %i.ar = trunc i64 %i.s to i8
  %i.as = shl i8 %i.ar, 1
  %i.at = or disjoint i8 %i.as, 1
  store i8 %i.at, ptr %.0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEaSERKS7_.exit.i

bb.g:                                             ; preds = %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i.i.i
  %i.au = load i64, ptr %.0, align 8
  %i.av = ashr exact i64 %i.r, 1
  %i.aw = and i64 %i.au, 1
  %i.ax = or disjoint i64 %i.aw, %i.av
  store i64 %i.ax, ptr %.0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEaSERKS7_.exit.i

_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEaSERKS7_.exit.i: ; preds = %bb.g, %bb.f, %.lr.ph.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.09.i, i64 24 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0, i64 24 ; 2 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %_ZN5boost9container18copy_n_source_destIPNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEES9_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESC_mRSD_.exit, label %.lr.ph.i, !llvm.loop !937

_ZN5boost9container18copy_n_source_destIPNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEES9_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESC_mRSD_.exit: ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEaSERKS7_.exit.i, %bb.b
  %.1 = phi ptr [ %3, %bb.b ], [ %i.az, %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEaSERKS7_.exit.i ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %1, %bb.b ], [ %i.ay, %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEaSERKS7_.exit.i ]
  %i.ba = sub nuw i64 %2, %4
  br label %.lr.ph.i14

.lr.ph.i14:                                       ; preds = %_ZN5boost9container18copy_n_source_destIPNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEES9_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESC_mRSD_.exit, %_ZN5boost9container16allocator_traitsINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS3_IwEEvEEEEE9constructIS8_JRS8_EEEvRS9_PT_DpOT0_.exit.i
  %.022.i = phi i64 [ %i.bb, %_ZN5boost9container16allocator_traitsINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS3_IwEEvEEEEE9constructIS8_JRS8_EEEvRS9_PT_DpOT0_.exit.i ], [ %i.ba, %_ZN5boost9container18copy_n_source_destIPNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEES9_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESC_mRSD_.exit ]
  %.0821.i = phi ptr [ %i.bc, %_ZN5boost9container16allocator_traitsINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS3_IwEEvEEEEE9constructIS8_JRS8_EEEvRS9_PT_DpOT0_.exit.i ], [ %.0.lcssa.i, %_ZN5boost9container18copy_n_source_destIPNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEES9_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESC_mRSD_.exit ] ; 2 uses
  %.01720.i = phi ptr [ %i.bd, %_ZN5boost9container16allocator_traitsINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS3_IwEEvEEEEE9constructIS8_JRS8_EEEvRS9_PT_DpOT0_.exit.i ], [ %.1, %_ZN5boost9container18copy_n_source_destIPNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEES9_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESC_mRSD_.exit ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01720.i) ]
  invoke void @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEC1ERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %.01720.i, ptr noundef nonnull align 8 dereferenceable(24) %.0821.i)
          to label %_ZN5boost9container16allocator_traitsINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS3_IwEEvEEEEE9constructIS8_JRS8_EEEvRS9_PT_DpOT0_.exit.i unwind label %bb.h

_ZN5boost9container16allocator_traitsINS0_4test16simple_allocatorINS0_12basic_stringIwSt11char_traitsIwENS3_IwEEvEEEEE9constructIS8_JRS8_EEEvRS9_PT_DpOT0_.exit.i: ; preds = %.lr.ph.i14
end_hunk_3
