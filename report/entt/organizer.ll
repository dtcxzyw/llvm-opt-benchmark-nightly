Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/organizer?download=true
inline.NumInlined: 8145
inline.NumDeleted: 3037
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN4entt14basic_registryINS_6entityESaIS1_EE5groupIJiEJKcEJEEENS_11basic_groupINS_7owned_tIJDpNS_11storage_forIT_S1_SaINSt12remove_constIS9_E4typeEEE4typeEEEENS_5get_tIJDpNS8_IT0_S1_SaINSA_ISJ_E4typeEEE4typeEEEENS_9exclude_tIJDpNS8_IT1_S1_SaINSA_ISS_E4typeEEE4typeEEEEEENSI_IJDpSJ_EEENSR_IJDpSS_EEE:bb.a
  br label %_ZNSt12__shared_ptrIN4entt8internal13group_handlerINS0_16basic_sparse_setINS0_6entityESaIS4_EEELm1ELm1ELm0EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit22

bb.aa:                                            ; preds = %bb.y
  %i.cm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !103
  %.not.i.i.i19 = icmp eq i8 %i.cm, 0
  br i1 %.not.i.i.i19, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cn = add nsw i32 %i.ce, -1
  store i32 %i.cn, ptr %i.cb, align 8, !tbaa !83
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i20

bb.ac:                                            ; preds = %bb.aa
  %i.co = atomicrmw volatile add ptr %i.cb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i20

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i20: ; preds = %bb.ac, %bb.ab
  %.0.i.i.i.i21 = phi i32 [ %i.ce, %bb.ab ], [ %i.co, %bb.ac ]
  %i.cp = icmp eq i32 %.0.i.i.i.i21, 1
  br i1 %i.cp, label %bb.ad, label %_ZNSt12__shared_ptrIN4entt8internal13group_handlerINS0_16basic_sparse_setINS0_6entityESaIS4_EEELm1ELm1ELm0EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit22, !prof !166

bb.ad:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i20
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #26
  br label %_ZNSt12__shared_ptrIN4entt8internal13group_handlerINS0_16basic_sparse_setINS0_6entityESaIS4_EEELm1ELm1ELm0EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit22

_ZNSt12__shared_ptrIN4entt8internal13group_handlerINS0_16basic_sparse_setINS0_6entityESaIS4_EEELm1ELm1ELm0EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit22: ; preds = %_ZN4entt9dense_mapIjSt10shared_ptrINS_8internal16group_descriptorEESt8identitySt8equal_toIvESaISt4pairIKjS4_EEE7emplaceIJjRS1_INS2_13group_handlerINS_16basic_sparse_setINS_6entityESaISG_EEELm1ELm1ELm0EEEEEEES8_INS2_18dense_map_iteratorIPNS2_14dense_map_nodeIjS4_EEEEbEDpOT_.exit, %bb.z, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i20, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %_ZNSt12__shared_ptrIN4entt8internal13group_handlerINS0_16basic_sparse_setINS0_6entityESaIS4_EEELm1ELm1ELm0EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.thread

bb.ae:                                            ; preds = %bb.p, %bb.o
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.af:                                            ; preds = %bb.q
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ag:                                            ; preds = %_ZNSt12__shared_ptrIN4entt8internal13group_handlerINS0_16basic_sparse_setINS0_6entityESaIS4_EEELm1ELm1ELm0EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit16
  %i.cs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %.body

.body:                                            ; preds = %bb.ae, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN4entt8internal13group_handlerINS1_16basic_sparse_setINS1_6entityESaIS5_EEELm1ELm1ELm0EEES6_LN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i, %bb.af, %bb.ag
  %.pn7 = phi { ptr, i32 } [ %i.cs, %bb.ag ], [ %i.cq, %bb.ae ], [ %i.cr, %bb.af ], [ %i.bg, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN4entt8internal13group_handlerINS1_16basic_sparse_setINS1_6entityESaIS5_EEELm1ELm1ELm0EEES6_LN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i ]
  call void @_ZNSt12__shared_ptrIN4entt8internal13group_handlerINS0_16basic_sparse_setINS0_6entityESaIS4_EEELm1ELm1ELm0EEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %.pn7

_ZNSt12__shared_ptrIN4entt8internal13group_handlerINS0_16basic_sparse_setINS0_6entityESaIS4_EEELm1ELm1ELm0EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.thread: ; preds = %bb.e, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.n, %_ZNSt12__shared_ptrIN4entt8internal13group_handlerINS0_16basic_sparse_setINS0_6entityESaIS4_EEELm1ELm1ELm0EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit22
  %.sroa.032.1 = phi ptr [ %i.bz, %_ZNSt12__shared_ptrIN4entt8internal13group_handlerINS0_16basic_sparse_setINS0_6entityESaIS4_EEELm1ELm1ELm0EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit22 ], [ %i.ab, %bb.n ], [ %i.ab, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i ], [ %i.ab, %bb.j ], [ %i.ab, %bb.e ]
  ret ptr %.sroa.032.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN4entt8internal13group_handlerINS0_16basic_sparse_setINS0_6entityESaIS4_EEELm1ELm1ELm0EEES5_LN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN4entt8internal13group_handlerINS0_16basic_sparse_setINS0_6entityESaIS4_EEELm1ELm1ELm0EEES5_LN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN4entt8internal13group_handlerINS0_16basic_sparse_setINS0_6entityESaIS4_EEELm1ELm1ELm0EEES5_LN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN4entt8internal13group_handlerINS0_16basic_sparse_setINS0_6entityESaIS4_EEELm1ELm1ELm0EEES5_LN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN4entt8internal13group_handlerINS1_16basic_sparse_setINS1_6entityESaIS5_EEELm1ELm1ELm0EEES6_LN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4entt8internal13group_handlerINS0_16basic_sparse_setINS0_6entityESaIS4_EEELm1ELm1ELm0EEES5_LN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !165  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !103
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #26
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
define linkonce_odr hidden void @_ZN4entt8internal13group_handlerINS_16basic_sparse_setINS_6entityESaIS3_EEELm1ELm1ELm0EEC2IJNS_16basic_sigh_mixinINS_13basic_storageIiS3_SaIiEEENS_14basic_registryIS3_S4_EEEENS8_INS9_IcS3_SaIcEEESD_EEEJEEESt5tupleIJDpRT_EESI_IJDpRT0_EE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(16) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  %2 = alloca %"class.entt::sink", align 8        ; 4 uses
  %3 = alloca %"class.entt::connection", align 8  ; 3 uses
  %4 = alloca %"class.entt::sink", align 8        ; 4 uses
  %5 = alloca %"class.entt::connection", align 8  ; 3 uses
  %6 = alloca %"class.entt::sink.361", align 8    ; 4 uses
  %7 = alloca %"class.entt::connection", align 8  ; 3 uses
  %8 = alloca %"class.entt::sink.361", align 8    ; 4 uses
  %9 = alloca %"class.entt::connection", align 8  ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4entt8internal13group_handlerINS_16basic_sparse_setINS_6entityESaIS3_EEELm1ELm1ELm0EEE, i64 16), ptr %0, align 8, !tbaa !62
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load <2 x ptr>, ptr %1, align 8, !tbaa !159
  %i.d = shufflevector <2 x ptr> %i.c, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.d, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.e, align 8, !tbaa !382
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !758, !nonnull !95, !align !759 ; 2 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !761, !nonnull !95, !align !759 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  store ptr %i.h, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @_ZN4entt4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS3_EEES3_ESaIiEEEE7connectITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS3_S4_EELm1ELm1ELm0EE17push_on_constructES3_EESG_EENS_10connectionERT0_(ptr dead_on_unwind nonnull writable sret(%"class.entt::connection") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(40) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 136
  store ptr %i.i, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @_ZN4entt4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS3_EEES3_ESaIiEEEE7connectITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS3_S4_EELm1ELm1ELm0EE9remove_ifES3_EESG_EENS_10connectionERT0_(ptr dead_on_unwind nonnull writable sret(%"class.entt::connection") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(40) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  store ptr %i.j, ptr %6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @_ZN4entt4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS3_EEES3_ESaIcEEEE7connectITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS3_S4_EELm1ELm1ELm0EE17push_on_constructES3_EESG_EENS_10connectionERT0_(ptr dead_on_unwind nonnull writable sret(%"class.entt::connection") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(40) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  store ptr %i.k, ptr %8, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @_ZN4entt4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS3_EEES3_ESaIcEEEE7connectITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS3_S4_EELm1ELm1ELm0EE9remove_ifES3_EESG_EENS_10connectionERT0_(ptr dead_on_unwind nonnull writable sret(%"class.entt::connection") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(40) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !366  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !250  ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !222  ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 2
  %i.u = icmp eq ptr %i.o, %i.p
  br i1 %i.u, label %_ZN4entt8internal13group_handlerINS_16basic_sparse_setINS_6entityESaIS3_EEELm1ELm1ELm0EE12common_setupEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc, %.lr.ph.i
  %.sroa.5.06.i = phi i64 [ %i.y, %.lr.ph.i ], [ 0, %.noexc ] ; 2 uses
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !222
  %i.w = getelementptr [4 x i8], ptr %i.v, i64 %.sroa.5.06.i
  %i.x = load i32, ptr %i.w, align 4, !tbaa !249
  call void @_ZN4entt8internal13group_handlerINS_16basic_sparse_setINS_6entityESaIS3_EEELm1ELm1ELm0EE17push_on_constructES3_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %i.x)
  %i.y = add nuw nsw i64 %.sroa.5.06.i, 1         ; 2 uses
  %i.z = icmp eq i64 %i.y, %i.t
  br i1 %i.z, label %_ZN4entt8internal13group_handlerINS_16basic_sparse_setINS_6entityESaIS3_EEELm1ELm1ELm0EE12common_setupEv.exit, label %.lr.ph.i, !llvm.loop !756

_ZN4entt8internal13group_handlerINS_16basic_sparse_setINS_6entityESaIS3_EEELm1ELm1ELm0EE12common_setupEv.exit: ; preds = %.lr.ph.i, %.noexc
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt8internal13group_handlerINS_16basic_sparse_setINS_6entityESaIS3_EEELm1ELm1ELm0EED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4entt8internal13group_handlerINS_16basic_sparse_setINS_6entityESaIS3_EEELm1ELm1ELm0EE5ownedEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !366
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !254
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !118
  %i.g = icmp eq i32 %i.f, %1
  ret i1 %i.g
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS3_EEES3_ESaIiEEEE7connectITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS3_S4_EELm1ELm1ELm0EE17push_on_constructES3_EESG_EENS_10connectionERT0_(ptr dead_on_unwind noalias writable sret(%"class.entt::connection") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !385    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !278  ; 4 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !216  ; 3 uses
  %.not9.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not9.i.i, label %_ZN4entt4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS3_EEES3_ESaIiEEEE10disconnectITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS3_S4_EELm1ELm1ELm0EE17push_on_constructES3_EESG_EEvRT0_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = sub i64 %i.f, %i.e
  %i.h = ashr exact i64 %i.g, 4
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i.i
  %i.i = phi ptr [ %i.c, %.lr.ph.i.i ], [ %i.v, %bb.d ] ; 2 uses
  %i.j = phi ptr [ %i.d, %.lr.ph.i.i ], [ %i.w, %bb.d ] ; 2 uses
  %.010.i.i = phi i64 [ %i.h, %.lr.ph.i.i ], [ %i.k, %bb.d ]
  %i.k = add i64 %.010.i.i, -1                    ; 3 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.k ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !280
  %i.o = icmp eq ptr %i.n, @_ZZN4entt8delegateIFvRNS_14basic_registryINS_6entityESaIS2_EEES2_EE4wrapITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS2_S3_EELm1ELm1ELm0EE17push_on_constructES2_EESD_JLm0EEEEDaRT0_St16integer_sequenceImJXspT1_EEEENUlPKvS5_S2_E_8__invokeESJ_S5_S2_
  %i.p = load ptr, ptr %i.l, align 8
  %i.q = icmp eq ptr %i.p, %2
  %i.r = select i1 %i.o, i1 %i.q, i1 false
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds i8, ptr %i.i, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !386
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !278
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -16 ; 2 uses
  store ptr %i.u, ptr %i.b, align 8, !tbaa !278
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !216
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.v = phi ptr [ %i.u, %bb.c ], [ %i.i, %bb.b ]
  %i.w = phi ptr [ %.pre.i.i, %bb.c ], [ %i.j, %bb.b ]
  %.not.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i, label %_ZN4entt4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS3_EEES3_ESaIiEEEE10disconnectITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS3_S4_EELm1ELm1ELm0EE17push_on_constructES3_EESG_EEvRT0_.exit.loopexit, label %bb.b, !llvm.loop !34

_ZN4entt4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS3_EEES3_ESaIiEEEE10disconnectITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS3_S4_EELm1ELm1ELm0EE17push_on_constructES3_EESG_EEvRT0_.exit.loopexit: ; preds = %bb.d
  %.pre = load ptr, ptr %1, align 8, !tbaa !385   ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre9 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !278
  br label %_ZN4entt4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS3_EEES3_ESaIiEEEE10disconnectITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS3_S4_EELm1ELm1ELm0EE17push_on_constructES3_EESG_EEvRT0_.exit

_ZN4entt4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS3_EEES3_ESaIiEEEE10disconnectITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS3_S4_EELm1ELm1ELm0EE17push_on_constructES3_EESG_EEvRT0_.exit: ; preds = %_ZN4entt4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS3_EEES3_ESaIiEEEE10disconnectITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS3_S4_EELm1ELm1ELm0EE17push_on_constructES3_EESG_EEvRT0_.exit.loopexit, %bb.a
  %i.x = phi ptr [ %.pre9, %_ZN4entt4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS3_EEES3_ESaIiEEEE10disconnectITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS3_S4_EELm1ELm1ELm0EE17push_on_constructES3_EESG_EEvRT0_.exit.loopexit ], [ %i.c, %bb.a ] ; 6 uses
  %i.y = phi ptr [ %.pre, %_ZN4entt4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS3_EEES3_ESaIiEEEE10disconnectITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS3_S4_EELm1ELm1ELm0EE17push_on_constructES3_EESG_EEvRT0_.exit.loopexit ], [ %i.a, %bb.a ] ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !217
  %.not.i.i4 = icmp eq ptr %i.x, %i.ab
  br i1 %.not.i.i4, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN4entt4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS3_EEES3_ESaIiEEEE10disconnectITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS3_S4_EELm1ELm1ELm0EE17push_on_constructES3_EESG_EEvRT0_.exit
  store ptr %2, ptr %i.x, align 8, !tbaa !159
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr @_ZZN4entt8delegateIFvRNS_14basic_registryINS_6entityESaIS2_EEES2_EE4wrapITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS2_S3_EELm1ELm1ELm0EE17push_on_constructES2_EESD_JLm0EEEEDaRT0_St16integer_sequenceImJXspT1_EEEENUlPKvS5_S2_E_8__invokeESJ_S5_S2_, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !159
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !278
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr %i.ad, ptr %i.z, align 8, !tbaa !278
  br label %_ZNSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE9push_backEOS8_.exit

bb.f:                                             ; preds = %_ZN4entt4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS3_EEES3_ESaIiEEEE10disconnectITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS3_S4_EELm1ELm1ELm0EE17push_on_constructES3_EESG_EEvRT0_.exit
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !216 ; 5 uses
  %i.af = ptrtoint ptr %i.x to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 4 uses
  %i.ai = icmp eq i64 %i.ah, 9223372036854775792
  br i1 %i.ai, label %bb.g, label %_ZNKSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.163) #29
  unreachable

_ZNKSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %i.aj = ashr exact i64 %i.ah, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aj, i64 1)
  %i.ak = add nsw i64 %.sroa.speculated.i.i.i.i, %i.aj ; 2 uses
  %i.al = icmp ult i64 %i.ak, %i.aj
  %i.am = tail call i64 @llvm.umin.i64(i64 %i.ak, i64 576460752303423487)
  %i.an = select i1 %i.al, i64 576460752303423487, i64 %i.am ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.an, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ao = shl nuw nsw i64 %i.an, 4
  %i.ap = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #30 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ah ; 2 uses
  store ptr %2, ptr %i.aq, align 8, !tbaa !159
  %.sroa.7.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr @_ZZN4entt8delegateIFvRNS_14basic_registryINS_6entityESaIS2_EEES2_EE4wrapITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS2_S3_EELm1ELm1ELm0EE17push_on_constructES2_EESD_JLm0EEEEDaRT0_St16integer_sequenceImJXspT1_EEEENUlPKvS5_S2_E_8__invokeESJ_S5_S2_, ptr %.sroa.7.0..sroa_idx7, align 8, !tbaa !159
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.ae, %i.x
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i.i ], [ %i.ap, %_ZNKSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.i ], [ %i.ae, %_ZNKSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !386, !alias.scope !765
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ar, %i.x
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !35

_ZNSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ap, %_ZNKSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.as, %.lr.ph.i.i.i.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16
  %.not.i23.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.ah) #27
  br label %_ZNSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i

_ZNSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i
  store ptr %i.ap, ptr %i.y, align 8, !tbaa !216
  store ptr %i.at, ptr %i.z, align 8, !tbaa !278
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %i.an
  store ptr %i.au, ptr %i.aa, align 8, !tbaa !217
  br label %_ZNSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE9push_backEOS8_.exit

_ZNSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE9push_backEOS8_.exit: ; preds = %bb.e, %_ZNSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i
  %i.av = load ptr, ptr %1, align 8, !tbaa !385
  store ptr %2, ptr %0, align 8, !tbaa !159
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @_ZZN4entt8delegateIFvPvEE7connectITnDaXadL_ZNS_4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS8_EEES8_ESaIiEEEE7releaseITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS8_S9_EELm1ELm1ELm0EE17push_on_constructES8_EERSL_EEvT0_S1_EESL_EEvRSN_ENUlPKvS1_E_8__invokeESQ_S1_, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !159
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !389
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS3_EEES3_ESaIiEEEE7connectITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS3_S4_EELm1ELm1ELm0EE9remove_ifES3_EESG_EENS_10connectionERT0_(ptr dead_on_unwind noalias writable sret(%"class.entt::connection") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !385    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !278  ; 4 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !216  ; 3 uses
  %.not9.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not9.i.i, label %_ZN4entt4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS3_EEES3_ESaIiEEEE10disconnectITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS3_S4_EELm1ELm1ELm0EE9remove_ifES3_EESG_EEvRT0_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = sub i64 %i.f, %i.e
  %i.h = ashr exact i64 %i.g, 4
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i.i
  %i.i = phi ptr [ %i.c, %.lr.ph.i.i ], [ %i.v, %bb.d ] ; 2 uses
  %i.j = phi ptr [ %i.d, %.lr.ph.i.i ], [ %i.w, %bb.d ] ; 2 uses
  %.010.i.i = phi i64 [ %i.h, %.lr.ph.i.i ], [ %i.k, %bb.d ]
  %i.k = add i64 %.010.i.i, -1                    ; 3 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.k ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !280
  %i.o = icmp eq ptr %i.n, @_ZZN4entt8delegateIFvRNS_14basic_registryINS_6entityESaIS2_EEES2_EE4wrapITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS2_S3_EELm1ELm1ELm0EE9remove_ifES2_EESD_JLm0EEEEDaRT0_St16integer_sequenceImJXspT1_EEEENUlPKvS5_S2_E_8__invokeESJ_S5_S2_
  %i.p = load ptr, ptr %i.l, align 8
  %i.q = icmp eq ptr %i.p, %2
  %i.r = select i1 %i.o, i1 %i.q, i1 false
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds i8, ptr %i.i, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !386
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !278
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -16 ; 2 uses
  store ptr %i.u, ptr %i.b, align 8, !tbaa !278
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !216
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.v = phi ptr [ %i.u, %bb.c ], [ %i.i, %bb.b ]
  %i.w = phi ptr [ %.pre.i.i, %bb.c ], [ %i.j, %bb.b ]
  %.not.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i, label %_ZN4entt4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS3_EEES3_ESaIiEEEE10disconnectITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS3_S4_EELm1ELm1ELm0EE9remove_ifES3_EESG_EEvRT0_.exit.loopexit, label %bb.b, !llvm.loop !36

_ZN4entt4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS3_EEES3_ESaIiEEEE10disconnectITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS3_S4_EELm1ELm1ELm0EE9remove_ifES3_EESG_EEvRT0_.exit.loopexit: ; preds = %bb.d
  %.pre = load ptr, ptr %1, align 8, !tbaa !385   ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre9 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !278
  br label %_ZN4entt4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS3_EEES3_ESaIiEEEE10disconnectITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS3_S4_EELm1ELm1ELm0EE9remove_ifES3_EESG_EEvRT0_.exit

_ZN4entt4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS3_EEES3_ESaIiEEEE10disconnectITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS3_S4_EELm1ELm1ELm0EE9remove_ifES3_EESG_EEvRT0_.exit: ; preds = %_ZN4entt4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS3_EEES3_ESaIiEEEE10disconnectITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS3_S4_EELm1ELm1ELm0EE9remove_ifES3_EESG_EEvRT0_.exit.loopexit, %bb.a
  %i.x = phi ptr [ %.pre9, %_ZN4entt4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS3_EEES3_ESaIiEEEE10disconnectITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS3_S4_EELm1ELm1ELm0EE9remove_ifES3_EESG_EEvRT0_.exit.loopexit ], [ %i.c, %bb.a ] ; 6 uses
  %i.y = phi ptr [ %.pre, %_ZN4entt4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS3_EEES3_ESaIiEEEE10disconnectITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS3_S4_EELm1ELm1ELm0EE9remove_ifES3_EESG_EEvRT0_.exit.loopexit ], [ %i.a, %bb.a ] ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN4entt14basic_registryINS_6entityESaIS1_EE5groupIJKcEJEJEEENS_11basic_groupINS_7owned_tIJDpNS_11storage_forIT_S1_SaINSt12remove_constIS9_E4typeEEE4typeEEEENS_5get_tIJDpNS8_IT0_S1_SaINSA_ISJ_E4typeEEE4typeEEEENS_9exclude_tIJDpNS8_IT1_S1_SaINSA_ISS_E4typeEEE4typeEEEEEENSI_IJDpSJ_EEENSR_IJDpSS_EEE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %_ZNSt12__shared_ptrIN4entt8internal13group_handlerINS0_16basic_sparse_setINS0_6entityESaIS4_EEELm1ELm0ELm0EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.thread

bb.ai:                                            ; preds = %bb.o
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.aj:                                            ; preds = %bb.p
  %i.da = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.pn = phi { ptr, i32 } [ %i.da, %bb.aj ], [ %i.cz, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.am

bb.al:                                            ; preds = %_ZNSt12__shared_ptrIN4entt8internal13group_handlerINS0_16basic_sparse_setINS0_6entityESaIS4_EEELm1ELm0ELm0EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit16
  %i.db = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.pn7 = phi { ptr, i32 } [ %i.db, %bb.al ], [ %.pn, %bb.ak ]
  call void @_ZNSt12__shared_ptrIN4entt8internal13group_handlerINS0_16basic_sparse_setINS0_6entityESaIS4_EEELm1ELm0ELm0EEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  resume { ptr, i32 } %.pn7

_ZNSt12__shared_ptrIN4entt8internal13group_handlerINS0_16basic_sparse_setINS0_6entityESaIS4_EEELm1ELm0ELm0EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.thread: ; preds = %bb.e, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.n, %_ZNSt12__shared_ptrIN4entt8internal13group_handlerINS0_16basic_sparse_setINS0_6entityESaIS4_EEELm1ELm0ELm0EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit21
  %.sroa.026.1 = phi ptr [ %i.ci, %_ZNSt12__shared_ptrIN4entt8internal13group_handlerINS0_16basic_sparse_setINS0_6entityESaIS4_EEELm1ELm0ELm0EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit21 ], [ %i.ab, %bb.n ], [ %i.ab, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i ], [ %i.ab, %bb.j ], [ %i.ab, %bb.e ]
  ret ptr %.sroa.026.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN4entt8internal13group_handlerINS4_16basic_sparse_setINS4_6entityESaIS8_EEELm1ELm0ELm0EEES9_JSt5tupleIJRNS4_16basic_sigh_mixinINS4_13basic_storageIcS8_SaIcEEENS4_14basic_registryIS8_S9_EEEEEESC_IJEEEEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.entt::sink.361", align 8    ; 4 uses
  %6 = alloca %"class.entt::connection", align 8  ; 3 uses
  %7 = alloca %"class.entt::sink.361", align 8    ; 4 uses
  %8 = alloca %"class.entt::connection", align 8  ; 3 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #30, !noalias !926 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !233
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !234
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN4entt8internal13group_handlerINS0_16basic_sparse_setINS0_6entityESaIS4_EEELm1ELm0ELm0EEES5_LN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !62
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 5 uses
  %i.e = load i64, ptr %3, align 8, !tbaa !192
  %i.f = inttoptr i64 %i.e to ptr                 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4entt8internal13group_handlerINS_16basic_sparse_setINS_6entityESaIS3_EEELm1ELm0ELm0EEE, i64 16), ptr %i.d, align 8, !tbaa !62
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 0, ptr %i.h, align 8, !tbaa !404
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  store ptr %i.i, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  invoke void @_ZN4entt4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS3_EEES3_ESaIcEEEE7connectITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS3_S4_EELm1ELm0ELm0EE17push_on_constructES3_EESG_EENS_10connectionERT0_(ptr dead_on_unwind nonnull writable sret(%"class.entt::connection") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %.noexc unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN4entt8internal13group_handlerINS1_16basic_sparse_setINS1_6entityESaIS5_EEELm1ELm0ELm0EEES6_LN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.loopexit.split-lp

.noexc:                                           ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 136
  store ptr %i.j, ptr %7, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  invoke void @_ZN4entt4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS3_EEES3_ESaIcEEEE7connectITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS3_S4_EELm1ELm0ELm0EE9remove_ifES3_EESG_EENS_10connectionERT0_(ptr dead_on_unwind nonnull writable sret(%"class.entt::connection") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %.noexc9 unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN4entt8internal13group_handlerINS1_16basic_sparse_setINS1_6entityESaIS5_EEELm1ELm0ELm0EEES6_LN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.loopexit.split-lp

.noexc9:                                          ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !366  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !250  ; 2 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !222  ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 2
  %i.t = icmp eq ptr %i.n, %i.o
  br i1 %i.t, label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN4entt8internal13group_handlerINS1_16basic_sparse_setINS1_6entityESaIS5_EEELm1ELm0ELm0EEES6_LN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc9, %.noexc10
  %.sroa.5.06.i.i.i.i = phi i64 [ %i.x, %.noexc10 ], [ 0, %.noexc9 ] ; 2 uses
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !222
  %i.v = getelementptr [4 x i8], ptr %i.u, i64 %.sroa.5.06.i.i.i.i
  %i.w = load i32, ptr %i.v, align 4, !tbaa !249
  invoke void @_ZN4entt8internal13group_handlerINS_16basic_sparse_setINS_6entityESaIS3_EEELm1ELm0ELm0EE17push_on_constructES3_(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i32 noundef %i.w)
          to label %.noexc10 unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN4entt8internal13group_handlerINS1_16basic_sparse_setINS1_6entityESaIS5_EEELm1ELm0ELm0EEES6_LN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.loopexit

.noexc10:                                         ; preds = %.lr.ph.i.i.i.i
  %i.x = add nuw nsw i64 %.sroa.5.06.i.i.i.i, 1   ; 2 uses
  %i.y = icmp eq i64 %i.x, %i.s
  br i1 %i.y, label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN4entt8internal13group_handlerINS1_16basic_sparse_setINS1_6entityESaIS5_EEELm1ELm0ELm0EEES6_LN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit, label %.lr.ph.i.i.i.i, !llvm.loop !925

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN4entt8internal13group_handlerINS1_16basic_sparse_setINS1_6entityESaIS5_EEELm1ELm0ELm0EEES6_LN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit: ; preds = %.noexc10, %.noexc9
  store ptr %i.a, ptr %0, align 8, !tbaa !231
  store ptr %i.d, ptr %1, align 8, !tbaa !927
  ret void

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN4entt8internal13group_handlerINS1_16basic_sparse_setINS1_6entityESaIS5_EEELm1ELm0ELm0EEES6_LN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.loopexit: ; preds = %.lr.ph.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN4entt8internal13group_handlerINS1_16basic_sparse_setINS1_6entityESaIS5_EEELm1ELm0ELm0EEES6_LN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN4entt8internal13group_handlerINS1_16basic_sparse_setINS1_6entityESaIS5_EEELm1ELm0ELm0EEES6_LN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.loopexit.split-lp: ; preds = %bb.a, %.noexc
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN4entt8internal13group_handlerINS1_16basic_sparse_setINS1_6entityESaIS5_EEELm1ELm0ELm0EEES6_LN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN4entt8internal13group_handlerINS1_16basic_sparse_setINS1_6entityESaIS5_EEELm1ELm0ELm0EEES6_LN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13: ; preds = %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN4entt8internal13group_handlerINS1_16basic_sparse_setINS1_6entityESaIS5_EEELm1ELm0ELm0EEES6_LN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.loopexit.split-lp, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN4entt8internal13group_handlerINS1_16basic_sparse_setINS1_6entityESaIS5_EEELm1ELm0ELm0EEES6_LN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN4entt8internal13group_handlerINS1_16basic_sparse_setINS1_6entityESaIS5_EEELm1ELm0ELm0EEES6_LN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.loopexit ], [ %lpad.loopexit.split-lp, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN4entt8internal13group_handlerINS1_16basic_sparse_setINS1_6entityESaIS5_EEELm1ELm0ELm0EEES6_LN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.loopexit.split-lp ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 48) #27
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN4entt8internal13group_handlerINS0_16basic_sparse_setINS0_6entityESaIS4_EEELm1ELm0ELm0EEES5_LN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN4entt8internal13group_handlerINS0_16basic_sparse_setINS0_6entityESaIS4_EEELm1ELm0ELm0EEES5_LN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN4entt8internal13group_handlerINS0_16basic_sparse_setINS0_6entityESaIS4_EEELm1ELm0ELm0EEES5_LN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN4entt8internal13group_handlerINS0_16basic_sparse_setINS0_6entityESaIS4_EEELm1ELm0ELm0EEES5_LN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN4entt8internal13group_handlerINS1_16basic_sparse_setINS1_6entityESaIS5_EEELm1ELm0ELm0EEES6_LN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4entt8internal13group_handlerINS0_16basic_sparse_setINS0_6entityESaIS4_EEELm1ELm0ELm0EEES5_LN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !165  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !103
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #26
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
define linkonce_odr hidden void @_ZN4entt8internal16group_descriptorD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt8internal13group_handlerINS_16basic_sparse_setINS_6entityESaIS3_EEELm1ELm0ELm0EED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4entt8internal13group_handlerINS_16basic_sparse_setINS_6entityESaIS3_EEELm1ELm0ELm0EE5ownedEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !366
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !254
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !118
  %i.g = icmp eq i32 %i.f, %1
  ret i1 %i.g
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS3_EEES3_ESaIcEEEE7connectITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS3_S4_EELm1ELm0ELm0EE17push_on_constructES3_EESG_EENS_10connectionERT0_(ptr dead_on_unwind noalias writable sret(%"class.entt::connection") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !392    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !278  ; 4 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !216  ; 3 uses
  %.not9.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not9.i.i, label %_ZN4entt4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS3_EEES3_ESaIcEEEE10disconnectITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS3_S4_EELm1ELm0ELm0EE17push_on_constructES3_EESG_EEvRT0_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = sub i64 %i.f, %i.e
  %i.h = ashr exact i64 %i.g, 4
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i.i
  %i.i = phi ptr [ %i.c, %.lr.ph.i.i ], [ %i.v, %bb.d ] ; 2 uses
  %i.j = phi ptr [ %i.d, %.lr.ph.i.i ], [ %i.w, %bb.d ] ; 2 uses
  %.010.i.i = phi i64 [ %i.h, %.lr.ph.i.i ], [ %i.k, %bb.d ]
  %i.k = add i64 %.010.i.i, -1                    ; 3 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.k ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !280
  %i.o = icmp eq ptr %i.n, @_ZZN4entt8delegateIFvRNS_14basic_registryINS_6entityESaIS2_EEES2_EE4wrapITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS2_S3_EELm1ELm0ELm0EE17push_on_constructES2_EESD_JLm0EEEEDaRT0_St16integer_sequenceImJXspT1_EEEENUlPKvS5_S2_E_8__invokeESJ_S5_S2_
  %i.p = load ptr, ptr %i.l, align 8
  %i.q = icmp eq ptr %i.p, %2
  %i.r = select i1 %i.o, i1 %i.q, i1 false
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds i8, ptr %i.i, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !386
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !278
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -16 ; 2 uses
  store ptr %i.u, ptr %i.b, align 8, !tbaa !278
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !216
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.v = phi ptr [ %i.u, %bb.c ], [ %i.i, %bb.b ]
  %i.w = phi ptr [ %.pre.i.i, %bb.c ], [ %i.j, %bb.b ]
  %.not.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i, label %_ZN4entt4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS3_EEES3_ESaIcEEEE10disconnectITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS3_S4_EELm1ELm0ELm0EE17push_on_constructES3_EESG_EEvRT0_.exit.loopexit, label %bb.b, !llvm.loop !48

_ZN4entt4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS3_EEES3_ESaIcEEEE10disconnectITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS3_S4_EELm1ELm0ELm0EE17push_on_constructES3_EESG_EEvRT0_.exit.loopexit: ; preds = %bb.d
  %.pre = load ptr, ptr %1, align 8, !tbaa !392   ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre9 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !278
  br label %_ZN4entt4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS3_EEES3_ESaIcEEEE10disconnectITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS3_S4_EELm1ELm0ELm0EE17push_on_constructES3_EESG_EEvRT0_.exit

_ZN4entt4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS3_EEES3_ESaIcEEEE10disconnectITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS3_S4_EELm1ELm0ELm0EE17push_on_constructES3_EESG_EEvRT0_.exit: ; preds = %_ZN4entt4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS3_EEES3_ESaIcEEEE10disconnectITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS3_S4_EELm1ELm0ELm0EE17push_on_constructES3_EESG_EEvRT0_.exit.loopexit, %bb.a
  %i.x = phi ptr [ %.pre9, %_ZN4entt4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS3_EEES3_ESaIcEEEE10disconnectITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS3_S4_EELm1ELm0ELm0EE17push_on_constructES3_EESG_EEvRT0_.exit.loopexit ], [ %i.c, %bb.a ] ; 6 uses
  %i.y = phi ptr [ %.pre, %_ZN4entt4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS3_EEES3_ESaIcEEEE10disconnectITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS3_S4_EELm1ELm0ELm0EE17push_on_constructES3_EESG_EEvRT0_.exit.loopexit ], [ %i.a, %bb.a ] ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !217
  %.not.i.i4 = icmp eq ptr %i.x, %i.ab
  br i1 %.not.i.i4, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN4entt4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS3_EEES3_ESaIcEEEE10disconnectITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS3_S4_EELm1ELm0ELm0EE17push_on_constructES3_EESG_EEvRT0_.exit
  store ptr %2, ptr %i.x, align 8, !tbaa !159
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr @_ZZN4entt8delegateIFvRNS_14basic_registryINS_6entityESaIS2_EEES2_EE4wrapITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS2_S3_EELm1ELm0ELm0EE17push_on_constructES2_EESD_JLm0EEEEDaRT0_St16integer_sequenceImJXspT1_EEEENUlPKvS5_S2_E_8__invokeESJ_S5_S2_, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !159
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !278
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr %i.ad, ptr %i.z, align 8, !tbaa !278
  br label %_ZNSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE9push_backEOS8_.exit

bb.f:                                             ; preds = %_ZN4entt4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS3_EEES3_ESaIcEEEE10disconnectITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS3_S4_EELm1ELm0ELm0EE17push_on_constructES3_EESG_EEvRT0_.exit
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !216 ; 5 uses
  %i.af = ptrtoint ptr %i.x to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 4 uses
  %i.ai = icmp eq i64 %i.ah, 9223372036854775792
  br i1 %i.ai, label %bb.g, label %_ZNKSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.163) #29
  unreachable

_ZNKSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %i.aj = ashr exact i64 %i.ah, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aj, i64 1)
  %i.ak = add nsw i64 %.sroa.speculated.i.i.i.i, %i.aj ; 2 uses
  %i.al = icmp ult i64 %i.ak, %i.aj
  %i.am = tail call i64 @llvm.umin.i64(i64 %i.ak, i64 576460752303423487)
  %i.an = select i1 %i.al, i64 576460752303423487, i64 %i.am ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.an, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ao = shl nuw nsw i64 %i.an, 4
  %i.ap = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #30 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ah ; 2 uses
  store ptr %2, ptr %i.aq, align 8, !tbaa !159
  %.sroa.7.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr @_ZZN4entt8delegateIFvRNS_14basic_registryINS_6entityESaIS2_EEES2_EE4wrapITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS2_S3_EELm1ELm0ELm0EE17push_on_constructES2_EESD_JLm0EEEEDaRT0_St16integer_sequenceImJXspT1_EEEENUlPKvS5_S2_E_8__invokeESJ_S5_S2_, ptr %.sroa.7.0..sroa_idx7, align 8, !tbaa !159
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.ae, %i.x
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i.i ], [ %i.ap, %_ZNKSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.i ], [ %i.ae, %_ZNKSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !386, !alias.scope !931
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ar, %i.x
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !35

_ZNSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ap, %_ZNKSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.as, %.lr.ph.i.i.i.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16
  %.not.i23.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.ah) #27
  br label %_ZNSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i

_ZNSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i
  store ptr %i.ap, ptr %i.y, align 8, !tbaa !216
  store ptr %i.at, ptr %i.z, align 8, !tbaa !278
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %i.an
  store ptr %i.au, ptr %i.aa, align 8, !tbaa !217
  br label %_ZNSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE9push_backEOS8_.exit

_ZNSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE9push_backEOS8_.exit: ; preds = %bb.e, %_ZNSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i
  %i.av = load ptr, ptr %1, align 8, !tbaa !392
  store ptr %2, ptr %0, align 8, !tbaa !159
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @_ZZN4entt8delegateIFvPvEE7connectITnDaXadL_ZNS_4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS8_EEES8_ESaIcEEEE7releaseITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS8_S9_EELm1ELm0ELm0EE17push_on_constructES8_EERSL_EEvT0_S1_EESL_EEvRSN_ENUlPKvS1_E_8__invokeESQ_S1_, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !159
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !389
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS3_EEES3_ESaIcEEEE7connectITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS3_S4_EELm1ELm0ELm0EE9remove_ifES3_EESG_EENS_10connectionERT0_(ptr dead_on_unwind noalias writable sret(%"class.entt::connection") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !392    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !278  ; 4 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !216  ; 3 uses
  %.not9.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not9.i.i, label %_ZN4entt4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS3_EEES3_ESaIcEEEE10disconnectITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS3_S4_EELm1ELm0ELm0EE9remove_ifES3_EESG_EEvRT0_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = sub i64 %i.f, %i.e
  %i.h = ashr exact i64 %i.g, 4
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i.i
  %i.i = phi ptr [ %i.c, %.lr.ph.i.i ], [ %i.v, %bb.d ] ; 2 uses
  %i.j = phi ptr [ %i.d, %.lr.ph.i.i ], [ %i.w, %bb.d ] ; 2 uses
  %.010.i.i = phi i64 [ %i.h, %.lr.ph.i.i ], [ %i.k, %bb.d ]
  %i.k = add i64 %.010.i.i, -1                    ; 3 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.k ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !280
  %i.o = icmp eq ptr %i.n, @_ZZN4entt8delegateIFvRNS_14basic_registryINS_6entityESaIS2_EEES2_EE4wrapITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS2_S3_EELm1ELm0ELm0EE9remove_ifES2_EESD_JLm0EEEEDaRT0_St16integer_sequenceImJXspT1_EEEENUlPKvS5_S2_E_8__invokeESJ_S5_S2_
  %i.p = load ptr, ptr %i.l, align 8
  %i.q = icmp eq ptr %i.p, %2
  %i.r = select i1 %i.o, i1 %i.q, i1 false
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds i8, ptr %i.i, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !386
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !278
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -16 ; 2 uses
  store ptr %i.u, ptr %i.b, align 8, !tbaa !278
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !216
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.v = phi ptr [ %i.u, %bb.c ], [ %i.i, %bb.b ]
  %i.w = phi ptr [ %.pre.i.i, %bb.c ], [ %i.j, %bb.b ]
  %.not.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i, label %_ZN4entt4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS3_EEES3_ESaIcEEEE10disconnectITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS3_S4_EELm1ELm0ELm0EE9remove_ifES3_EESG_EEvRT0_.exit.loopexit, label %bb.b, !llvm.loop !49

_ZN4entt4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS3_EEES3_ESaIcEEEE10disconnectITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS3_S4_EELm1ELm0ELm0EE9remove_ifES3_EESG_EEvRT0_.exit.loopexit: ; preds = %bb.d
  %.pre = load ptr, ptr %1, align 8, !tbaa !392   ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre9 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !278
  br label %_ZN4entt4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS3_EEES3_ESaIcEEEE10disconnectITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS3_S4_EELm1ELm0ELm0EE9remove_ifES3_EESG_EEvRT0_.exit

_ZN4entt4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS3_EEES3_ESaIcEEEE10disconnectITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS3_S4_EELm1ELm0ELm0EE9remove_ifES3_EESG_EEvRT0_.exit: ; preds = %_ZN4entt4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS3_EEES3_ESaIcEEEE10disconnectITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS3_S4_EELm1ELm0ELm0EE9remove_ifES3_EESG_EEvRT0_.exit.loopexit, %bb.a
  %i.x = phi ptr [ %.pre9, %_ZN4entt4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS3_EEES3_ESaIcEEEE10disconnectITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS3_S4_EELm1ELm0ELm0EE9remove_ifES3_EESG_EEvRT0_.exit.loopexit ], [ %i.c, %bb.a ] ; 6 uses
  %i.y = phi ptr [ %.pre, %_ZN4entt4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS3_EEES3_ESaIcEEEE10disconnectITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS3_S4_EELm1ELm0ELm0EE9remove_ifES3_EESG_EEvRT0_.exit.loopexit ], [ %i.a, %bb.a ] ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
end_hunk_1
