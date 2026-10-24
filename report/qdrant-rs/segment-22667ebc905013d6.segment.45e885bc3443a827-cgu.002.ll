Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/segment-22667ebc905013d6.segment.45e885bc3443a827-cgu.002?download=true
inline.NumInlined: 8609
inline.NumDeleted: 4831
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 73
loop-unroll.NumUnrolled: 74
begin_hunk_0_@_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterAhj8_ENCINvMNtNtCslmvYCXbQjWR_6common17persisted_hashmap3uioINtB1z_16UniversalHashMapxmNtNtNtB1D_12universal_io4mmap8MmapFileE12for_each_keyNCINvYINtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index8MapIndexxEINtNtB3M_8read_ops12MapIndexReadxE10except_setxINtNtBc_4hash18BuildHasherDefaultNtCsbojlWnkViqs_3fnv9FnvHasherEE0NtNtNtB3S_6common15operation_error14OperationErrorEs_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB7A_8for_each4callyNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB8N_3VecyE14extend_trustedBN_E0E0EB3S_:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.d:                                             ; preds = %bb.i, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.p, %bb.i ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.q, %bb.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6475
  invoke void @_RNvNtNtCslmvYCXbQjWR_6common17persisted_hashmap3uio19parse_bucket_offset(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(8) %i.j, i64 noundef 8)
          to label %.noexc.i unwind label %bb.c, !noalias !6476

.noexc.i:                                         ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6477)
  %i.k = load i64, ptr %i.b, align 8, !range !36, !alias.scope !6477, !noalias !6475, !noundef !5
  %.not.i.i.i.i = icmp eq i64 %i.k, -1
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.e, !prof !29

bb.e:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6478
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !6475
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #41
          to label %bb.g unwind label %bb.f, !noalias !6479

bb.f:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common12universal_io5error16UniversalIoErrorECs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #37
          to label %bb.j unwind label %bb.h, !noalias !6479

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !noalias !6479
  unreachable

bb.i:                                             ; preds = %.noexc.i
  %i.n = load i64, ptr %i.h, align 8, !alias.scope !6477, !noalias !6475, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6475
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i
  store i64 %i.n, ptr %i.o, align 8, !noalias !6480
  %i.p = add i64 %.val10.i, 1                     ; 2 uses
  %i.q = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.g
  br i1 %i.r, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterAhj8_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_yuNCINvMNtNtCslmvYCXbQjWR_6common17persisted_hashmap3uioINtB2s_16UniversalHashMapxmNtNtNtB2w_12universal_io4mmap8MmapFileE12for_each_keyNCINvYINtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index8MapIndexxEINtNtB4F_8read_ops12MapIndexReadxE10except_setxINtNtBb_4hash18BuildHasherDefaultNtCsbojlWnkViqs_3fnv9FnvHasherEE0NtNtNtB4L_6common15operation_error14OperationErrorEs_0NCINvNvBW_8for_each4callyNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB90_3VecyE14extend_trustedINtB1M_3MapBF_B2m_EE0E0E0EB4L_.exit, label %bb.d

bb.j:                                             ; preds = %bb.f, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.i, %bb.c ], [ %i.l, %bb.f ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !6476
  resume { ptr, i32 } %eh.lpad-body.i

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterAhj8_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_yuNCINvMNtNtCslmvYCXbQjWR_6common17persisted_hashmap3uioINtB2s_16UniversalHashMapxmNtNtNtB2w_12universal_io4mmap8MmapFileE12for_each_keyNCINvYINtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index8MapIndexxEINtNtB4F_8read_ops12MapIndexReadxE10except_setxINtNtBb_4hash18BuildHasherDefaultNtCsbojlWnkViqs_3fnv9FnvHasherEE0NtNtNtB4L_6common15operation_error14OperationErrorEs_0NCINvNvBW_8for_each4callyNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB90_3VecyE14extend_trustedINtB1M_3MapBF_B2m_EE0E0E0EB4L_.exit: ; preds = %bb.i, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.p, %bb.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !6476
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterAhjc_ENCNvNtNtNtCs607s0NAIaWN_7segment10id_tracker15disk_id_tracker14on_disk_format16decode_num_block0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB32_8for_each4callTomENCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4i_3VecB45_E14extend_trustedBN_E0E0EB1D_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterAhjc_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_TomEuNCNvNtNtNtCs607s0NAIaWN_7segment10id_tracker15disk_id_tracker14on_disk_format16decode_num_block0NCINvNvBW_8for_each4callB2k_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4y_3VecB2k_E14extend_trustedINtB1M_3MapBF_B2p_EE0E0E0EB2z_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 2 uses
  %i.e = udiv exact i64 %i.d, 12                  ; 3 uses
  %xtraiter = and i64 %i.e, 1
  %i.f = icmp eq i64 %i.d, 12
  br i1 %i.f, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 2305843009213693950
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.new
  %i.g = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.t, %bb.c ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.u, %bb.c ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.h = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.sroa.01.0.i ; 2 uses
  %.val15.i = load i64, ptr %i.h, align 1, !noalias !6489
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %.val16.i = load i32, ptr %i.i, align 1, !noalias !6489
  %i.j = zext i64 %.val15.i to i128
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %.sroa.7.0.copyload, i64 %i.g ; 2 uses
  store i128 %i.j, ptr %i.k, align 16, !noalias !6490
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i32 %.val16.i, ptr %i.l, align 16, !noalias !6490
  %i.m = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.sroa.01.0.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %.val15.i.1 = load i64, ptr %i.n, align 1, !noalias !6489
  %i.o = getelementptr i8, ptr %i.m, i64 20
  %.val16.i.1 = load i32, ptr %i.o, align 1, !noalias !6489
  %i.p = zext i64 %.val15.i.1 to i128
  %i.q = getelementptr [32 x i8], ptr %.sroa.7.0.copyload, i64 %i.g ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 32
  store i128 %i.p, ptr %i.r, align 16, !noalias !6490
  %i.s = getelementptr i8, ptr %i.q, i64 48
  store i32 %.val16.i.1, ptr %i.s, align 16, !noalias !6490
  %i.t = add i64 %i.g, 2                          ; 3 uses
  %i.u = add nuw i64 %.sroa.01.0.i, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterAhjc_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_TomEuNCNvNtNtNtCs607s0NAIaWN_7segment10id_tracker15disk_id_tracker14on_disk_format16decode_num_block0NCINvNvBW_8for_each4callB2k_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4y_3VecB2k_E14extend_trustedINtB1M_3MapBF_B2p_EE0E0E0EB2z_.exit.loopexit.unr-lcssa, label %bb.c

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterAhjc_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_TomEuNCNvNtNtNtCs607s0NAIaWN_7segment10id_tracker15disk_id_tracker14on_disk_format16decode_num_block0NCINvNvBW_8for_each4callB2k_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4y_3VecB2k_E14extend_trustedINtB1M_3MapBF_B2p_EE0E0E0EB2z_.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterAhjc_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_TomEuNCNvNtNtNtCs607s0NAIaWN_7segment10id_tracker15disk_id_tracker14on_disk_format16decode_num_block0NCINvNvBW_8for_each4callB2k_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4y_3VecB2k_E14extend_trustedINtB1M_3MapBF_B2p_EE0E0E0EB2z_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterAhjc_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_TomEuNCNvNtNtNtCs607s0NAIaWN_7segment10id_tracker15disk_id_tracker14on_disk_format16decode_num_block0NCINvNvBW_8for_each4callB2k_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4y_3VecB2k_E14extend_trustedINtB1M_3MapBF_B2p_EE0E0E0EB2z_.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.t, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterAhjc_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_TomEuNCNvNtNtNtCs607s0NAIaWN_7segment10id_tracker15disk_id_tracker14on_disk_format16decode_num_block0NCINvNvBW_8for_each4callB2k_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4y_3VecB2k_E14extend_trustedINtB1M_3MapBF_B2p_EE0E0E0EB2z_.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.u, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterAhjc_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_TomEuNCNvNtNtNtCs607s0NAIaWN_7segment10id_tracker15disk_id_tracker14on_disk_format16decode_num_block0NCINvNvBW_8for_each4callB2k_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4y_3VecB2k_E14extend_trustedINtB1M_3MapBF_B2p_EE0E0E0EB2z_.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod3)
  %i.v = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.sroa.01.0.i.epil.init ; 2 uses
  %.val15.i.epil = load i64, ptr %i.v, align 1, !noalias !6489
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %.val16.i.epil = load i32, ptr %i.w, align 1, !noalias !6489
  %i.x = zext i64 %.val15.i.epil to i128
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %.sroa.7.0.copyload, i64 %.epil.init ; 2 uses
  store i128 %i.x, ptr %i.y, align 16, !noalias !6490
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i32 %.val16.i.epil, ptr %i.z, align 16, !noalias !6490
  %i.aa = add i64 %.epil.init, 1
  br label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterAhjc_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_TomEuNCNvNtNtNtCs607s0NAIaWN_7segment10id_tracker15disk_id_tracker14on_disk_format16decode_num_block0NCINvNvBW_8for_each4callB2k_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4y_3VecB2k_E14extend_trustedINtB1M_3MapBF_B2p_EE0E0E0EB2z_.exit

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterAhjc_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_TomEuNCNvNtNtNtCs607s0NAIaWN_7segment10id_tracker15disk_id_tracker14on_disk_format16decode_num_block0NCINvNvBW_8for_each4callB2k_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4y_3VecB2k_E14extend_trustedINtB1M_3MapBF_B2p_EE0E0E0EB2z_.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterAhjc_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_TomEuNCNvNtNtNtCs607s0NAIaWN_7segment10id_tracker15disk_id_tracker14on_disk_format16decode_num_block0NCINvNvBW_8for_each4callB2k_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4y_3VecB2k_E14extend_trustedINtB1M_3MapBF_B2p_EE0E0E0EB2z_.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.t, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterAhjc_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_TomEuNCNvNtNtNtCs607s0NAIaWN_7segment10id_tracker15disk_id_tracker14on_disk_format16decode_num_block0NCINvNvBW_8for_each4callB2k_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4y_3VecB2k_E14extend_trustedINtB1M_3MapBF_B2p_EE0E0E0EB2z_.exit.loopexit.unr-lcssa ], [ %i.aa, %.epil.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !6489
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtCs5LEDvFxVFYt_14atomic_refcell9AtomicRefNtNtNtCs607s0NAIaWN_7segment14vector_storage19vector_storage_base17VectorStorageEnumEENCNvMNtNtB2a_19segment_constructor15segment_builderNtB3x_14SegmentBuilder6updates8_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4P_8for_each4callRB24_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB66_3VecB5S_E14extend_trustedBN_E0E0EB2a_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterINtCs5LEDvFxVFYt_14atomic_refcell9AtomicRefNtNtNtCs607s0NAIaWN_7segment14vector_storage19vector_storage_base17VectorStorageEnumEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB31_8adapters3map8map_foldRBQ_RB1x_uNCNvMNtNtB1D_19segment_constructor15segment_builderNtB4u_14SegmentBuilder6updates8_0NCINvNvB2V_8for_each4callB4j_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6n_3VecB4j_E14extend_trustedINtB3L_3MapBF_B4p_EE0E0E0EB1D_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 4 uses
  %i.e = lshr i64 %i.d, 4                         ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 272
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.f = shl i64 %.sroa.5.0.copyload, 3           ; 2 uses
  %i.g = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %i.h = lshr exact i64 %i.d, 1
  %i.i = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %i.j = getelementptr i8, ptr %i.i, i64 %i.h
  %i.k = getelementptr i8, ptr %0, i64 %i.d
  %i.l = getelementptr i8, ptr %i.k, i64 -8
  %bound0 = icmp ult ptr %i.g, %i.l
  %bound1 = icmp ult ptr %0, %i.j
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.m = and i64 %i.e, 3                          ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  %i.o = select i1 %i.n, i64 4, i64 %i.m
  %n.vec = sub nsw i64 %i.e, %i.o                 ; 3 uses
  %i.p = add i64 %.sroa.5.0.copyload, %n.vec
  %i.q = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.y = load ptr, ptr %i.r, align 8, !alias.scope !6507, !noalias !6508
  %i.z = load ptr, ptr %i.t, align 8, !alias.scope !6507, !noalias !6508
  %i.aa = insertelement <2 x ptr> poison, ptr %i.y, i64 0
  %i.ab = insertelement <2 x ptr> %i.aa, ptr %i.z, i64 1
  %i.ac = load ptr, ptr %i.v, align 8, !alias.scope !6507, !noalias !6508
  %i.ad = load ptr, ptr %i.x, align 8, !alias.scope !6507, !noalias !6508
  %i.ae = insertelement <2 x ptr> poison, ptr %i.ac, i64 0
  %i.af = insertelement <2 x ptr> %i.ae, ptr %i.ad, i64 1
  %i.ag = getelementptr [8 x i8], ptr %i.q, i64 %index ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store <2 x ptr> %i.ab, ptr %i.ag, align 8, !alias.scope !6509, !noalias !6510
  store <2 x ptr> %i.af, ptr %i.ah, align 8, !alias.scope !6509, !noalias !6510
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %scalar.ph.preheader, label %vector.body, !llvm.loop !6504

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %bb.b
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.p, %vector.body ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %vector.body ] ; 4 uses
  %i.aj = sub nsw i64 %i.e, %.sroa.01.0.i.ph
  %xtraiter = and i64 %i.aj, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.ak = phi i64 [ %i.an, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.ao, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i.prol
  %.val15.i.prol = load ptr, ptr %i.al, align 8, !noalias !6508, !nonnull !5, !noundef !5
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ak
  store ptr %.val15.i.prol, ptr %i.am, align 8, !noalias !6511, !captures !37
  %i.an = add i64 %i.ak, 1                        ; 3 uses
  %i.ao = add nuw i64 %.sroa.01.0.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !6505

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.an, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.an, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.ao, %scalar.ph.prol ]
  %i.ap = sub nsw i64 %.sroa.01.0.i.ph, %i.e
  %i.aq = icmp ugt i64 %i.ap, -4
  br i1 %i.aq, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterINtCs5LEDvFxVFYt_14atomic_refcell9AtomicRefNtNtNtCs607s0NAIaWN_7segment14vector_storage19vector_storage_base17VectorStorageEnumEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB31_8adapters3map8map_foldRBQ_RB1x_uNCNvMNtNtB1D_19segment_constructor15segment_builderNtB4u_14SegmentBuilder6updates8_0NCINvNvB2V_8for_each4callB4j_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6n_3VecB4j_E14extend_trustedINtB3L_3MapBF_B4p_EE0E0E0EB1D_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ar = phi i64 [ %i.bg, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.bh, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i
  %.val15.i = load ptr, ptr %i.as, align 8, !noalias !6508, !nonnull !5, !noundef !5
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ar
  store ptr %.val15.i, ptr %i.at, align 8, !noalias !6511, !captures !37
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %.val15.i.1 = load ptr, ptr %i.av, align 8, !noalias !6508, !nonnull !5, !noundef !5
  %i.aw = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ar
  %i.ax = getelementptr i8, ptr %i.aw, i64 8
  store ptr %.val15.i.1, ptr %i.ax, align 8, !noalias !6511, !captures !37
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %.val15.i.2 = load ptr, ptr %i.az, align 8, !noalias !6508, !nonnull !5, !noundef !5
  %i.ba = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ar
  %i.bb = getelementptr i8, ptr %i.ba, i64 16
  store ptr %.val15.i.2, ptr %i.bb, align 8, !noalias !6511, !captures !37
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  %.val15.i.3 = load ptr, ptr %i.bd, align 8, !noalias !6508, !nonnull !5, !noundef !5
  %i.be = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ar
  %i.bf = getelementptr i8, ptr %i.be, i64 24
  store ptr %.val15.i.3, ptr %i.bf, align 8, !noalias !6511, !captures !37
  %i.bg = add i64 %i.ar, 4                        ; 2 uses
  %i.bh = add nuw i64 %.sroa.01.0.i, 4            ; 2 uses
  %i.bi = icmp eq i64 %i.bh, %i.e
  br i1 %i.bi, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterINtCs5LEDvFxVFYt_14atomic_refcell9AtomicRefNtNtNtCs607s0NAIaWN_7segment14vector_storage19vector_storage_base17VectorStorageEnumEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB31_8adapters3map8map_foldRBQ_RB1x_uNCNvMNtNtB1D_19segment_constructor15segment_builderNtB4u_14SegmentBuilder6updates8_0NCINvNvB2V_8for_each4callB4j_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6n_3VecB4j_E14extend_trustedINtB3L_3MapBF_B4p_EE0E0E0EB1D_.exit, label %scalar.ph, !llvm.loop !6506

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterINtCs5LEDvFxVFYt_14atomic_refcell9AtomicRefNtNtNtCs607s0NAIaWN_7segment14vector_storage19vector_storage_base17VectorStorageEnumEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB31_8adapters3map8map_foldRBQ_RB1x_uNCNvMNtNtB1D_19segment_constructor15segment_builderNtB4u_14SegmentBuilder6updates8_0NCINvNvB2V_8for_each4callB4j_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6n_3VecB4j_E14extend_trustedINtB3L_3MapBF_B4p_EE0E0E0EB1D_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.bg, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !6508
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtCs5LEDvFxVFYt_14atomic_refcell9AtomicRefNtNtNtNtCs607s0NAIaWN_7segment10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumEENCNvMNtNtB2c_19segment_constructor15segment_builderNtB3B_14SegmentBuilder6updates_0ENtNtNtBa_6traits8iterator8Iterator4foldjNvYjNtNtBc_3cmp3Ord3maxEB2c_(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterINtCs5LEDvFxVFYt_14atomic_refcell9AtomicRefNtNtNtNtCs607s0NAIaWN_7segment10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB35_8adapters3map8map_foldRBQ_jjNCNvMNtNtB1F_19segment_constructor15segment_builderNtB4u_14SegmentBuilder6updates_0NvYjNtNtBb_3cmp3Ord3maxE0EB1F_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 4
  br label %bb.c

bb.c:                                             ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRINtCs5LEDvFxVFYt_14atomic_refcell9AtomicRefNtNtNtNtCs607s0NAIaWN_7segment10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumEjjNCNvMNtNtB1K_19segment_constructor15segment_builderNtB3a_14SegmentBuilder6updates_0NvYjNtNtBa_3cmp3Ord3maxE0B1K_.exit.i, %bb.b
  %.sroa.04.0.i = phi i64 [ 0, %bb.b ], [ %i.x, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRINtCs5LEDvFxVFYt_14atomic_refcell9AtomicRefNtNtNtNtCs607s0NAIaWN_7segment10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumEjjNCNvMNtNtB1K_19segment_constructor15segment_builderNtB3a_14SegmentBuilder6updates_0NvYjNtNtBa_3cmp3Ord3maxE0B1K_.exit.i ] ; 2 uses
  %.sroa.02.0.i = phi i64 [ %2, %bb.b ], [ %..i.i.i.i, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRINtCs5LEDvFxVFYt_14atomic_refcell9AtomicRefNtNtNtNtCs607s0NAIaWN_7segment10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumEjjNCNvMNtNtB1K_19segment_constructor15segment_builderNtB3a_14SegmentBuilder6updates_0NvYjNtNtBa_3cmp3Ord3maxE0B1K_.exit.i ]
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.04.0.i
  %.val.i = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5 ; 6 uses
  %i.g = load i64, ptr %.val.i, align 8, !range !12, !noundef !5 ; 2 uses
  %i.h = xor i64 %i.g, -9223372036854775808
  %i.i = icmp slt i64 %i.g, 0
  %i.j = select i1 %i.i, i64 %i.h, i64 3
  switch i64 %i.j, label %bb.d [
    i64 0, label %bb.e
    i64 1, label %bb.f
    i64 2, label %bb.g
    i64 3, label %bb.h
  ]

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i, i64 72
  %i.l = load i64, ptr %i.k, align 8, !noundef !5 ; 2 uses
  %i.m = icmp ult i64 %i.l, 384307168202282326
  tail call void @llvm.assume(i1 %i.m)
  br label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRINtCs5LEDvFxVFYt_14atomic_refcell9AtomicRefNtNtNtNtCs607s0NAIaWN_7segment10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumEjjNCNvMNtNtB1K_19segment_constructor15segment_builderNtB3a_14SegmentBuilder6updates_0NvYjNtNtBa_3cmp3Ord3maxE0B1K_.exit.i

bb.f:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.val.i, i64 136
  %i.o = load i64, ptr %i.n, align 8, !noundef !5 ; 2 uses
  %i.p = icmp ult i64 %i.o, 576460752303423488
  tail call void @llvm.assume(i1 %i.p)
  br label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRINtCs5LEDvFxVFYt_14atomic_refcell9AtomicRefNtNtNtNtCs607s0NAIaWN_7segment10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumEjjNCNvMNtNtB1K_19segment_constructor15segment_builderNtB3a_14SegmentBuilder6updates_0NvYjNtNtBa_3cmp3Ord3maxE0B1K_.exit.i

bb.g:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.val.i, i64 48
  %i.r = load i64, ptr %i.q, align 8, !noundef !5 ; 2 uses
  %i.s = icmp ult i64 %i.r, 384307168202282326
  tail call void @llvm.assume(i1 %i.s)
  br label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRINtCs5LEDvFxVFYt_14atomic_refcell9AtomicRefNtNtNtNtCs607s0NAIaWN_7segment10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumEjjNCNvMNtNtB1K_19segment_constructor15segment_builderNtB3a_14SegmentBuilder6updates_0NvYjNtNtBa_3cmp3Ord3maxE0B1K_.exit.i

bb.h:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %.val.i, i64 256
  %i.u = load i64, ptr %i.t, align 8, !noundef !5
  br label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRINtCs5LEDvFxVFYt_14atomic_refcell9AtomicRefNtNtNtNtCs607s0NAIaWN_7segment10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumEjjNCNvMNtNtB1K_19segment_constructor15segment_builderNtB3a_14SegmentBuilder6updates_0NvYjNtNtBa_3cmp3Ord3maxE0B1K_.exit.i

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRINtCs5LEDvFxVFYt_14atomic_refcell9AtomicRefNtNtNtNtCs607s0NAIaWN_7segment10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumEjjNCNvMNtNtB1K_19segment_constructor15segment_builderNtB3a_14SegmentBuilder6updates_0NvYjNtNtBa_3cmp3Ord3maxE0B1K_.exit.i: ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %.sroa.0.0.i.i.i = phi i64 [ %i.l, %bb.e ], [ %i.o, %bb.f ], [ %i.r, %bb.g ], [ %i.u, %bb.h ]
  %i.v = tail call noundef i64 @_RNvXNtNtNtCs607s0NAIaWN_7segment10id_tracker15id_tracker_base12tracker_enumNtB2_13IdTrackerEnumNtNtB4_9trait_def13IdTrackerRead19deleted_point_count(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(504) %.val.i)
  %i.w = sub i64 %.sroa.0.0.i.i.i, %i.v
  %..i.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.w, i64 %.sroa.02.0.i) ; 2 uses
  %i.x = add nuw i64 %.sroa.04.0.i, 1             ; 2 uses
  %i.y = icmp eq i64 %i.x, %i.e
  br i1 %i.y, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterINtCs5LEDvFxVFYt_14atomic_refcell9AtomicRefNtNtNtNtCs607s0NAIaWN_7segment10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB35_8adapters3map8map_foldRBQ_jjNCNvMNtNtB1F_19segment_constructor15segment_builderNtB4u_14SegmentBuilder6updates_0NvYjNtNtBb_3cmp3Ord3maxE0EB1F_.exit, label %bb.c

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterINtCs5LEDvFxVFYt_14atomic_refcell9AtomicRefNtNtNtNtCs607s0NAIaWN_7segment10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB35_8adapters3map8map_foldRBQ_jjNCNvMNtNtB1F_19segment_constructor15segment_builderNtB4u_14SegmentBuilder6updates_0NvYjNtNtBb_3cmp3Ord3maxE0EB1F_.exit: ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRINtCs5LEDvFxVFYt_14atomic_refcell9AtomicRefNtNtNtNtCs607s0NAIaWN_7segment10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumEjjNCNvMNtNtB1K_19segment_constructor15segment_builderNtB3a_14SegmentBuilder6updates_0NvYjNtNtBa_3cmp3Ord3maxE0B1K_.exit.i, %bb.a
  %.sroa.0.0.i = phi i64 [ %2, %bb.a ], [ %..i.i.i.i, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRINtCs5LEDvFxVFYt_14atomic_refcell9AtomicRefNtNtNtNtCs607s0NAIaWN_7segment10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumEjjNCNvMNtNtB1K_19segment_constructor15segment_builderNtB3a_14SegmentBuilder6updates_0NvYjNtNtBa_3cmp3Ord3maxE0B1K_.exit.i ]
  ret i64 %.sroa.0.0.i
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtCshqfBqtY9aGF_8indexmap6BucketxuEENvMs0_B1q_B1n_7key_refENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2l_8for_each4callRxNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3z_3VecB3o_E14extend_trustedBN_E0E0ECs607s0NAIaWN_7segment(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 4 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterINtCshqfBqtY9aGF_8indexmap6BucketxuEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1x_8adapters3map8map_foldRBQ_RxuNvMs0_BT_BQ_7key_refNCINvNvB1r_8for_each4callB2P_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3O_3VecB2P_E14extend_trustedINtB2h_3MapBF_B2S_EE0E0E0ECs607s0NAIaWN_7segment.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 2 uses
  %i.e = lshr exact i64 %i.d, 4                   ; 3 uses
  %min.iters.check = icmp ult i64 %i.d, 64
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.b
  %n.vec = and i64 %i.e, 1152921504606846972      ; 4 uses
  %i.f = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.g = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %wide.gep = getelementptr inbounds nuw [16 x i8], ptr %0, <2 x i64> %vec.ind
  %wide.gep2 = getelementptr inbounds nuw [16 x i8], ptr %0, <2 x i64> %step.add
  %wide.gep3 = getelementptr inbounds nuw i8, <2 x ptr> %wide.gep, i64 8
  %wide.gep4 = getelementptr inbounds nuw i8, <2 x ptr> %wide.gep2, i64 8
  %i.h = getelementptr [8 x i8], ptr %i.g, i64 %index ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store <2 x ptr> %wide.gep3, ptr %i.h, align 8, !noalias !6525
  store <2 x ptr> %wide.gep4, ptr %i.i, align 8, !noalias !6525
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.j = icmp eq i64 %index.next, %n.vec
  br i1 %i.j, label %middle.block, label %vector.body, !llvm.loop !6523

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterINtCshqfBqtY9aGF_8indexmap6BucketxuEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1x_8adapters3map8map_foldRBQ_RxuNvMs0_BT_BQ_7key_refNCINvNvB1r_8for_each4callB2P_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3O_3VecB2P_E14extend_trustedINtB2h_3MapBF_B2S_EE0E0E0ECs607s0NAIaWN_7segment.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.f, %middle.block ]
  %.sroa.01.0.i.ph = phi i64 [ 0, %bb.b ], [ %n.vec, %middle.block ]
end_hunk_0
begin_hunk_1_@_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENCINvMs1_NtB1r_23compressed_posting_listNtB2F_24CompressedPostingBuilder5buildNtNtCseUPaKcRZYeZ_4half8binary163f16Es2_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4s_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5F_3VecmE14extend_trustedBN_E0E0ECs607s0NAIaWN_7segment:bb.a
  %.val15.i.1 = load i32, ptr %i.aj, align 4, !noalias !7637, !noundef !5
  %i.ak = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.af
  %i.al = getelementptr i8, ptr %i.ak, i64 4
  store i32 %.val15.i.1, ptr %i.al, align 4, !noalias !7640
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %.val15.i.2 = load i32, ptr %i.an, align 4, !noalias !7637, !noundef !5
  %i.ao = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.af
  %i.ap = getelementptr i8, ptr %i.ao, i64 8
  store i32 %.val15.i.2, ptr %i.ap, align 4, !noalias !7640
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %.val15.i.3 = load i32, ptr %i.ar, align 4, !noalias !7637, !noundef !5
  %i.as = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.af
  %i.at = getelementptr i8, ptr %i.as, i64 12
  store i32 %.val15.i.3, ptr %i.at, align 4, !noalias !7640
  %i.au = add i64 %i.af, 4                        ; 2 uses
  %i.av = add nuw i64 %.sroa.01.0.i, 4            ; 2 uses
  %i.aw = icmp eq i64 %i.av, %i.e
  br i1 %i.aw, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_muNCINvMs1_NtBU_23compressed_posting_listNtB3y_24CompressedPostingBuilder5buildNtNtCseUPaKcRZYeZ_4half8binary163f16Es2_0NCINvNvB1Z_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5S_3VecmE14extend_trustedINtB2P_3MapBF_B3p_EE0E0E0ECs607s0NAIaWN_7segment.exit, label %scalar.ph, !llvm.loop !7635

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_muNCINvMs1_NtBU_23compressed_posting_listNtB3y_24CompressedPostingBuilder5buildNtNtCseUPaKcRZYeZ_4half8binary163f16Es2_0NCINvNvB1Z_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5S_3VecmE14extend_trustedINtB2P_3MapBF_B3p_EE0E0E0ECs607s0NAIaWN_7segment.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.au, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !7637
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENCINvMs1_NtB1r_23compressed_posting_listNtB2F_24CompressedPostingBuilder5buildNtNtNtB1t_6common5types11QuantizedU8Es0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4s_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5F_3VecmE14extend_trustedBN_E0E0ECs607s0NAIaWN_7segment(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_muNCINvMs1_NtBU_23compressed_posting_listNtB3y_24CompressedPostingBuilder5buildNtNtNtBW_6common5types11QuantizedU8Es0_0NCINvNvB1Z_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5R_3VecmE14extend_trustedINtB2P_3MapBF_B3p_EE0E0E0ECs607s0NAIaWN_7segment.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 4 uses
  %i.e = lshr i64 %i.d, 3                         ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 136
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.f = shl i64 %.sroa.5.0.copyload, 2           ; 2 uses
  %i.g = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %i.h = lshr exact i64 %i.d, 1
  %i.i = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %i.j = getelementptr i8, ptr %i.i, i64 %i.h
  %i.k = getelementptr i8, ptr %0, i64 %i.d
  %i.l = getelementptr i8, ptr %i.k, i64 -4
  %bound0 = icmp ult ptr %i.g, %i.l
  %bound1 = icmp ult ptr %0, %i.j
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.m = and i64 %i.e, 7                          ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  %i.o = select i1 %i.n, i64 8, i64 %i.m
  %n.vec = sub nsw i64 %i.e, %i.o                 ; 3 uses
  %i.p = add i64 %.sroa.5.0.copyload, %n.vec
  %i.q = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %wide.vec = load <8 x i32>, ptr %i.r, align 4, !alias.scope !7655, !noalias !7656
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec4 = load <8 x i32>, ptr %i.t, align 4, !alias.scope !7655, !noalias !7656
  %strided.vec5 = shufflevector <8 x i32> %wide.vec4, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.u = getelementptr [4 x i8], ptr %i.q, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store <4 x i32> %strided.vec, ptr %i.u, align 4, !alias.scope !7657, !noalias !7658
  store <4 x i32> %strided.vec5, ptr %i.v, align 4, !alias.scope !7657, !noalias !7658
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %scalar.ph.preheader, label %vector.body, !llvm.loop !7652

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %bb.b
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.p, %vector.body ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %vector.body ] ; 4 uses
  %i.x = sub nsw i64 %i.e, %.sroa.01.0.i.ph
  %xtraiter = and i64 %i.x, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.y = phi i64 [ %i.ab, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.ac, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i.prol
  %.val15.i.prol = load i32, ptr %i.z, align 4, !noalias !7656, !noundef !5
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.y
  store i32 %.val15.i.prol, ptr %i.aa, align 4, !noalias !7659
  %i.ab = add i64 %i.y, 1                         ; 3 uses
  %i.ac = add nuw i64 %.sroa.01.0.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !7653

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.ab, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.ab, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.ac, %scalar.ph.prol ]
  %i.ad = sub nsw i64 %.sroa.01.0.i.ph, %i.e
  %i.ae = icmp ugt i64 %i.ad, -4
  br i1 %i.ae, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_muNCINvMs1_NtBU_23compressed_posting_listNtB3y_24CompressedPostingBuilder5buildNtNtNtBW_6common5types11QuantizedU8Es0_0NCINvNvB1Z_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5R_3VecmE14extend_trustedINtB2P_3MapBF_B3p_EE0E0E0ECs607s0NAIaWN_7segment.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.af = phi i64 [ %i.au, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.av, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %.val15.i = load i32, ptr %i.ag, align 4, !noalias !7656, !noundef !5
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.af
  store i32 %.val15.i, ptr %i.ah, align 4, !noalias !7659
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.val15.i.1 = load i32, ptr %i.aj, align 4, !noalias !7656, !noundef !5
  %i.ak = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.af
  %i.al = getelementptr i8, ptr %i.ak, i64 4
  store i32 %.val15.i.1, ptr %i.al, align 4, !noalias !7659
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %.val15.i.2 = load i32, ptr %i.an, align 4, !noalias !7656, !noundef !5
  %i.ao = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.af
  %i.ap = getelementptr i8, ptr %i.ao, i64 8
  store i32 %.val15.i.2, ptr %i.ap, align 4, !noalias !7659
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %.val15.i.3 = load i32, ptr %i.ar, align 4, !noalias !7656, !noundef !5
  %i.as = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.af
  %i.at = getelementptr i8, ptr %i.as, i64 12
  store i32 %.val15.i.3, ptr %i.at, align 4, !noalias !7659
  %i.au = add i64 %i.af, 4                        ; 2 uses
  %i.av = add nuw i64 %.sroa.01.0.i, 4            ; 2 uses
  %i.aw = icmp eq i64 %i.av, %i.e
  br i1 %i.aw, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_muNCINvMs1_NtBU_23compressed_posting_listNtB3y_24CompressedPostingBuilder5buildNtNtNtBW_6common5types11QuantizedU8Es0_0NCINvNvB1Z_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5R_3VecmE14extend_trustedINtB2P_3MapBF_B3p_EE0E0E0ECs607s0NAIaWN_7segment.exit, label %scalar.ph, !llvm.loop !7654

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_muNCINvMs1_NtBU_23compressed_posting_listNtB3y_24CompressedPostingBuilder5buildNtNtNtBW_6common5types11QuantizedU8Es0_0NCINvNvB1Z_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5R_3VecmE14extend_trustedINtB2P_3MapBF_B3p_EE0E0E0ECs607s0NAIaWN_7segment.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.au, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !7656
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENCINvMs1_NtB1r_23compressed_posting_listNtB2F_24CompressedPostingBuilder5buildNtNtNtB1t_6common5types11QuantizedU8Es1_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4s_8for_each4callB3M_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5I_3VecB3M_E14extend_trustedBN_E0E0ECs607s0NAIaWN_7segment(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !align !27, !noundef !5 ; 5 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 7 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 4 uses
  %i.f = icmp eq ptr %i.a, %i.c
  br i1 %i.f, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_NtNtNtBW_6common5types11QuantizedU8uNCINvMs1_NtBU_23compressed_posting_listNtB46_24CompressedPostingBuilder5buildB3n_Es1_0NCINvNvB1Z_8for_each4callB3n_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5X_3VecB3n_E14extend_trustedINtB2P_3MapBF_B3X_EE0E0E0ECs607s0NAIaWN_7segment.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = sub nuw i64 %i.g, %i.h                   ; 2 uses
  %i.j = lshr exact i64 %i.i, 3                   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  %min.iters.check = icmp ult i64 %i.i, 40
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.l = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload ; 2 uses
  %i.m = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  %i.n = getelementptr i8, ptr %i.m, i64 %i.j     ; 2 uses
  %i.o = getelementptr i8, ptr %i.a, i64 4
  %i.p = getelementptr i8, ptr %i.e, i64 8
  %bound0 = icmp ult ptr %i.l, %i.c
  %bound1 = icmp ult ptr %i.o, %i.n
  %found.conflict = and i1 %bound0, %bound1
  %bound09 = icmp ult ptr %i.l, %i.p
  %bound110 = icmp ult ptr %i.e, %i.n
  %found.conflict11 = and i1 %bound09, %bound110
  %conflict.rdx = or i1 %found.conflict, %found.conflict11
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.q = and i64 %i.j, 3                          ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  %i.s = select i1 %i.r, i64 4, i64 %i.q
  %n.vec = sub nsw i64 %i.j, %i.s                 ; 3 uses
  %i.t = add i64 %.sroa.5.0.copyload, %n.vec
  %i.u = load float, ptr %i.e, align 4, !alias.scope !7674, !noalias !7675
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.u, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %i.v = load float, ptr %i.k, align 4, !alias.scope !7674, !noalias !7675
  %broadcast.splatinsert12 = insertelement <4 x float> poison, float %i.v, i64 0
  %broadcast.splat13 = shufflevector <4 x float> %broadcast.splatinsert12, <4 x float> poison, <4 x i32> zeroinitializer
  %i.w = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index
  %i.y = getelementptr i8, ptr %i.x, i64 4
  %wide.vec = load <8 x float>, ptr %i.y, align 4, !alias.scope !7676, !noalias !7677
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.z = fsub <4 x float> %strided.vec, %broadcast.splat
  %i.aa = fdiv <4 x float> %i.z, %broadcast.splat13
  %i.ab = tail call <4 x float> @llvm.round.v4f32(<4 x float> %i.aa) ; 2 uses
  %i.ac = fcmp olt <4 x float> %i.ab, zeroinitializer
  %i.ad = select <4 x i1> %i.ac, <4 x float> zeroinitializer, <4 x float> %i.ab ; 2 uses
  %i.ae = fcmp ogt <4 x float> %i.ad, splat (float 2.550000e+02)
  %i.af = select <4 x i1> %i.ae, <4 x float> splat (float 2.550000e+02), <4 x float> %i.ad
  %i.ag = tail call <4 x i8> @llvm.fptoui.sat.v4i8.v4f32(<4 x float> %i.af)
  %i.ah = getelementptr i8, ptr %i.w, i64 %index
  store <4 x i8> %i.ag, ptr %i.ah, align 1, !alias.scope !7678, !noalias !7679
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %scalar.ph.preheader, label %vector.body, !llvm.loop !7672

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %bb.b
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.t, %vector.body ]
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.aj = phi i64 [ %i.av, %scalar.ph ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i = phi i64 [ %i.aw, %scalar.ph ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %i.al = getelementptr i8, ptr %i.ak, i64 4
  %.val15.i = load float, ptr %i.al, align 4, !noalias !7677, !noundef !5
  %i.am = load float, ptr %i.e, align 4, !noalias !7675, !noundef !5
  %i.an = load float, ptr %i.k, align 4, !noalias !7675, !noundef !5
  %i.ao = fsub float %.val15.i, %i.am
  %i.ap = fdiv float %i.ao, %i.an
  %i.aq = tail call float @llvm.round.f32(float %i.ap) ; 2 uses
  %i.ar = fcmp olt float %i.aq, 0.000000e+00
  %spec.store.select.i.i.i.i.i = select i1 %i.ar, float 0.000000e+00, float %i.aq ; 2 uses
  %i.as = fcmp ogt float %spec.store.select.i.i.i.i.i, 2.550000e+02
  %spec.store.select1.i.i.i.i.i = select i1 %i.as, float 2.550000e+02, float %spec.store.select.i.i.i.i.i
  %i.at = tail call noundef i8 @llvm.fptoui.sat.i8.f32(float %spec.store.select1.i.i.i.i.i)
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.aj
  store i8 %i.at, ptr %i.au, align 1, !noalias !7680
  %i.av = add i64 %i.aj, 1                        ; 2 uses
  %i.aw = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.ax = icmp eq i64 %i.aw, %i.j
  br i1 %i.ax, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_NtNtNtBW_6common5types11QuantizedU8uNCINvMs1_NtBU_23compressed_posting_listNtB46_24CompressedPostingBuilder5buildB3n_Es1_0NCINvNvB1Z_8for_each4callB3n_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5X_3VecB3n_E14extend_trustedINtB2P_3MapBF_B3X_EE0E0E0ECs607s0NAIaWN_7segment.exit, label %scalar.ph, !llvm.loop !7673

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_NtNtNtBW_6common5types11QuantizedU8uNCINvMs1_NtBU_23compressed_posting_listNtB46_24CompressedPostingBuilder5buildB3n_Es1_0NCINvNvB1Z_8for_each4callB3n_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5X_3VecB3n_E14extend_trustedINtB2P_3MapBF_B3X_EE0E0E0ECs607s0NAIaWN_7segment.exit: ; preds = %scalar.ph, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.av, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !7677
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENCINvMs1_NtB1r_23compressed_posting_listNtB2F_24CompressedPostingBuilder5buildNtNtNtB1t_6common5types11QuantizedU8Es2_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4s_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5F_3VecmE14extend_trustedBN_E0E0ECs607s0NAIaWN_7segment(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_muNCINvMs1_NtBU_23compressed_posting_listNtB3y_24CompressedPostingBuilder5buildNtNtNtBW_6common5types11QuantizedU8Es2_0NCINvNvB1Z_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5R_3VecmE14extend_trustedINtB2P_3MapBF_B3p_EE0E0E0ECs607s0NAIaWN_7segment.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 4 uses
  %i.e = lshr i64 %i.d, 3                         ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 136
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.f = shl i64 %.sroa.5.0.copyload, 2           ; 2 uses
  %i.g = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %i.h = lshr exact i64 %i.d, 1
  %i.i = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %i.j = getelementptr i8, ptr %i.i, i64 %i.h
  %i.k = getelementptr i8, ptr %0, i64 %i.d
  %i.l = getelementptr i8, ptr %i.k, i64 -4
  %bound0 = icmp ult ptr %i.g, %i.l
  %bound1 = icmp ult ptr %0, %i.j
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.m = and i64 %i.e, 7                          ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  %i.o = select i1 %i.n, i64 8, i64 %i.m
  %n.vec = sub nsw i64 %i.e, %i.o                 ; 3 uses
  %i.p = add i64 %.sroa.5.0.copyload, %n.vec
  %i.q = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %wide.vec = load <8 x i32>, ptr %i.r, align 4, !alias.scope !7695, !noalias !7696
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec4 = load <8 x i32>, ptr %i.t, align 4, !alias.scope !7695, !noalias !7696
  %strided.vec5 = shufflevector <8 x i32> %wide.vec4, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.u = getelementptr [4 x i8], ptr %i.q, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store <4 x i32> %strided.vec, ptr %i.u, align 4, !alias.scope !7697, !noalias !7698
  store <4 x i32> %strided.vec5, ptr %i.v, align 4, !alias.scope !7697, !noalias !7698
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %scalar.ph.preheader, label %vector.body, !llvm.loop !7692

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %bb.b
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.p, %vector.body ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %vector.body ] ; 4 uses
  %i.x = sub nsw i64 %i.e, %.sroa.01.0.i.ph
  %xtraiter = and i64 %i.x, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.y = phi i64 [ %i.ab, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.ac, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i.prol
  %.val15.i.prol = load i32, ptr %i.z, align 4, !noalias !7696, !noundef !5
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.y
  store i32 %.val15.i.prol, ptr %i.aa, align 4, !noalias !7699
  %i.ab = add i64 %i.y, 1                         ; 3 uses
  %i.ac = add nuw i64 %.sroa.01.0.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !7693

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.ab, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.ab, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.ac, %scalar.ph.prol ]
  %i.ad = sub nsw i64 %.sroa.01.0.i.ph, %i.e
  %i.ae = icmp ugt i64 %i.ad, -4
  br i1 %i.ae, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_muNCINvMs1_NtBU_23compressed_posting_listNtB3y_24CompressedPostingBuilder5buildNtNtNtBW_6common5types11QuantizedU8Es2_0NCINvNvB1Z_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5R_3VecmE14extend_trustedINtB2P_3MapBF_B3p_EE0E0E0ECs607s0NAIaWN_7segment.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.af = phi i64 [ %i.au, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.av, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %.val15.i = load i32, ptr %i.ag, align 4, !noalias !7696, !noundef !5
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.af
  store i32 %.val15.i, ptr %i.ah, align 4, !noalias !7699
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.val15.i.1 = load i32, ptr %i.aj, align 4, !noalias !7696, !noundef !5
  %i.ak = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.af
  %i.al = getelementptr i8, ptr %i.ak, i64 4
  store i32 %.val15.i.1, ptr %i.al, align 4, !noalias !7699
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %.val15.i.2 = load i32, ptr %i.an, align 4, !noalias !7696, !noundef !5
  %i.ao = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.af
  %i.ap = getelementptr i8, ptr %i.ao, i64 8
  store i32 %.val15.i.2, ptr %i.ap, align 4, !noalias !7699
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %.val15.i.3 = load i32, ptr %i.ar, align 4, !noalias !7696, !noundef !5
  %i.as = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.af
  %i.at = getelementptr i8, ptr %i.as, i64 12
  store i32 %.val15.i.3, ptr %i.at, align 4, !noalias !7699
  %i.au = add i64 %i.af, 4                        ; 2 uses
  %i.av = add nuw i64 %.sroa.01.0.i, 4            ; 2 uses
  %i.aw = icmp eq i64 %i.av, %i.e
  br i1 %i.aw, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_muNCINvMs1_NtBU_23compressed_posting_listNtB3y_24CompressedPostingBuilder5buildNtNtNtBW_6common5types11QuantizedU8Es2_0NCINvNvB1Z_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5R_3VecmE14extend_trustedINtB2P_3MapBF_B3p_EE0E0E0ECs607s0NAIaWN_7segment.exit, label %scalar.ph, !llvm.loop !7694

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_muNCINvMs1_NtBU_23compressed_posting_listNtB3y_24CompressedPostingBuilder5buildNtNtNtBW_6common5types11QuantizedU8Es2_0NCINvNvB1Z_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5R_3VecmE14extend_trustedINtB2P_3MapBF_B3p_EE0E0E0ECs607s0NAIaWN_7segment.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.au, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !7696
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENCINvMs1_NtB1r_23compressed_posting_listNtB2F_24CompressedPostingBuilder5buildfEs0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3T_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB56_3VecmE14extend_trustedBN_E0E0ECs607s0NAIaWN_7segment(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_muNCINvMs1_NtBU_23compressed_posting_listNtB3y_24CompressedPostingBuilder5buildfEs0_0NCINvNvB1Z_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5j_3VecmE14extend_trustedINtB2P_3MapBF_B3p_EE0E0E0ECs607s0NAIaWN_7segment.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
end_hunk_1
begin_hunk_2_@_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterdENCNvNtNtNtCs607s0NAIaWN_7segment14vector_storage5turbo6shared23turbo_storage_roundtrip0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2P_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB42_3VecfE14extend_trustedBN_E0E0EB1z_:bb.a
  %i.ai = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ab
  %i.aj = getelementptr i8, ptr %i.ai, i64 4
  store float %i.ah, ptr %i.aj, align 4, !noalias !9785
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.val15.i.2 = load double, ptr %i.al, align 8, !noalias !9782, !noundef !5
  %i.am = fptrunc double %.val15.i.2 to float
  %i.an = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ab
  %i.ao = getelementptr i8, ptr %i.an, i64 8
  store float %i.am, ptr %i.ao, align 4, !noalias !9785
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %.val15.i.3 = load double, ptr %i.aq, align 8, !noalias !9782, !noundef !5
  %i.ar = fptrunc double %.val15.i.3 to float
  %i.as = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ab
  %i.at = getelementptr i8, ptr %i.as, i64 12
  store float %i.ar, ptr %i.at, align 4, !noalias !9785
  %i.au = add i64 %i.ab, 4                        ; 2 uses
  %i.av = add nuw i64 %.sroa.01.0.i, 4            ; 2 uses
  %i.aw = icmp eq i64 %i.av, %i.e
  br i1 %i.aw, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdfuNCNvNtNtNtCs607s0NAIaWN_7segment14vector_storage5turbo6shared23turbo_storage_roundtrip0NCINvNvBS_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4c_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2p_.exit, label %scalar.ph, !llvm.loop !9780

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdfuNCNvNtNtNtCs607s0NAIaWN_7segment14vector_storage5turbo6shared23turbo_storage_roundtrip0NCINvNvBS_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4c_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2p_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.k, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.au, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !9782
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterdENCNvNtNtNtCs607s0NAIaWN_7segment14vector_storage5turbo6shared29dequantize_for_requantization0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2V_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB48_3VecfE14extend_trustedBN_E0E0EB1z_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdfuNCNvNtNtNtCs607s0NAIaWN_7segment14vector_storage5turbo6shared29dequantize_for_requantization0NCINvNvBS_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4i_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2p_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 3 uses
  %i.e = lshr i64 %i.d, 3                         ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 96
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.f = shl i64 %.sroa.5.0.copyload, 2           ; 2 uses
  %i.g = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %i.h = lshr exact i64 %i.d, 1
  %i.i = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %i.j = getelementptr i8, ptr %i.i, i64 %i.h
  %bound0 = icmp ult ptr %i.g, %1
  %bound1 = icmp ult ptr %0, %i.j
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.e, 2305843009213693948      ; 4 uses
  %i.k = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.l = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %wide.load = load <2 x double>, ptr %i.m, align 8, !alias.scope !9800, !noalias !9801
  %wide.load4 = load <2 x double>, ptr %i.n, align 8, !alias.scope !9800, !noalias !9801
  %i.o = fptrunc <2 x double> %wide.load to <2 x float>
  %i.p = fptrunc <2 x double> %wide.load4 to <2 x float>
  %i.q = getelementptr [4 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store <2 x float> %i.o, ptr %i.q, align 4, !alias.scope !9802, !noalias !9803
  store <2 x float> %i.p, ptr %i.r, align 4, !alias.scope !9802, !noalias !9803
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !9797

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdfuNCNvNtNtNtCs607s0NAIaWN_7segment14vector_storage5turbo6shared29dequantize_for_requantization0NCINvNvBS_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4i_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2p_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.k, %middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.e, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.t = phi i64 [ %i.x, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.y, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i.prol
  %.val15.i.prol = load double, ptr %i.u, align 8, !noalias !9801, !noundef !5
  %i.v = fptrunc double %.val15.i.prol to float
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.t
  store float %i.v, ptr %i.w, align 4, !noalias !9804
  %i.x = add i64 %i.t, 1                          ; 3 uses
  %i.y = add nuw i64 %.sroa.01.0.i.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !9798

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.x, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.x, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.y, %scalar.ph.prol ]
  %i.z = sub nsw i64 %.sroa.01.0.i.ph, %i.e
  %i.aa = icmp ugt i64 %i.z, -4
  br i1 %i.aa, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdfuNCNvNtNtNtCs607s0NAIaWN_7segment14vector_storage5turbo6shared29dequantize_for_requantization0NCINvNvBS_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4i_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2p_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ab = phi i64 [ %i.au, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.av, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %.val15.i = load double, ptr %i.ac, align 8, !noalias !9801, !noundef !5
  %i.ad = fptrunc double %.val15.i to float
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ab
  store float %i.ad, ptr %i.ae, align 4, !noalias !9804
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.val15.i.1 = load double, ptr %i.ag, align 8, !noalias !9801, !noundef !5
  %i.ah = fptrunc double %.val15.i.1 to float
  %i.ai = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ab
  %i.aj = getelementptr i8, ptr %i.ai, i64 4
  store float %i.ah, ptr %i.aj, align 4, !noalias !9804
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.val15.i.2 = load double, ptr %i.al, align 8, !noalias !9801, !noundef !5
  %i.am = fptrunc double %.val15.i.2 to float
  %i.an = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ab
  %i.ao = getelementptr i8, ptr %i.an, i64 8
  store float %i.am, ptr %i.ao, align 4, !noalias !9804
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %.val15.i.3 = load double, ptr %i.aq, align 8, !noalias !9801, !noundef !5
  %i.ar = fptrunc double %.val15.i.3 to float
  %i.as = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ab
  %i.at = getelementptr i8, ptr %i.as, i64 12
  store float %i.ar, ptr %i.at, align 4, !noalias !9804
  %i.au = add i64 %i.ab, 4                        ; 2 uses
  %i.av = add nuw i64 %.sroa.01.0.i, 4            ; 2 uses
  %i.aw = icmp eq i64 %i.av, %i.e
  br i1 %i.aw, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdfuNCNvNtNtNtCs607s0NAIaWN_7segment14vector_storage5turbo6shared29dequantize_for_requantization0NCINvNvBS_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4i_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2p_.exit, label %scalar.ph, !llvm.loop !9799

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdfuNCNvNtNtNtCs607s0NAIaWN_7segment14vector_storage5turbo6shared29dequantize_for_requantization0NCINvNvBS_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4i_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2p_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.k, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.au, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !9801
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterfENCNvMs0_NtCs9xXWl5j4IME_12quantization18encoded_vectors_u8INtB1x_16EncodedVectorsU8INtNtNtNtCs607s0NAIaWN_7segment14vector_storage9quantized17quantized_storage16QuantizedStorageNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileEE17encode_int8_query0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB5w_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6J_3VechE14extend_trustedBN_E0E0EB2T_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 7 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 4 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfhuNCNvMs0_NtCs9xXWl5j4IME_12quantization18encoded_vectors_u8INtB2n_16EncodedVectorsU8INtNtNtNtCs607s0NAIaWN_7segment14vector_storage9quantized17quantized_storage16QuantizedStorageNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileEE17encode_int8_query0NCINvNvBS_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6T_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB3J_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !align !11, !noundef !5 ; 3 uses
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = sub nuw i64 %i.g, %i.h                   ; 2 uses
  %i.j = lshr exact i64 %i.i, 2                   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 44 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 3 uses
  %min.iters.check = icmp ult i64 %i.i, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.m = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload ; 2 uses
  %i.n = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  %i.o = getelementptr i8, ptr %i.n, i64 %i.j     ; 2 uses
  %i.p = getelementptr i8, ptr %i.f, i64 48
  %bound0 = icmp ult ptr %i.m, %i.c
  %bound1 = icmp ult ptr %i.a, %i.o
  %found.conflict = and i1 %bound0, %bound1
  %bound08 = icmp ult ptr %i.m, %i.p
  %bound19 = icmp ult ptr %i.l, %i.o
  %found.conflict10 = and i1 %bound08, %bound19
  %conflict.rdx = or i1 %found.conflict, %found.conflict10
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.j, 4611686018427387900      ; 4 uses
  %i.q = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.r = load float, ptr %i.k, align 4, !alias.scope !9819, !noalias !9820
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.r, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %i.s = load float, ptr %i.l, align 8, !alias.scope !9819, !noalias !9820
  %broadcast.splatinsert11 = insertelement <4 x float> poison, float %i.s, i64 0
  %broadcast.splat12 = shufflevector <4 x float> %broadcast.splatinsert11, <4 x float> poison, <4 x i32> zeroinitializer
  %i.t = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index
  %wide.load = load <4 x float>, ptr %i.u, align 4, !alias.scope !9821, !noalias !9822
  %i.v = fsub <4 x float> %wide.load, %broadcast.splat
  %i.w = fdiv <4 x float> %i.v, %broadcast.splat12 ; 2 uses
  %i.x = fcmp olt <4 x float> %i.w, zeroinitializer
  %i.y = select <4 x i1> %i.x, <4 x float> zeroinitializer, <4 x float> %i.w ; 2 uses
  %i.z = fcmp ogt <4 x float> %i.y, splat (float 1.270000e+02)
  %i.aa = select <4 x i1> %i.z, <4 x float> splat (float 1.270000e+02), <4 x float> %i.y
  %i.ab = tail call <4 x float> @llvm.round.v4f32(<4 x float> %i.aa)
  %i.ac = tail call <4 x i8> @llvm.fptoui.sat.v4i8.v4f32(<4 x float> %i.ab)
  %i.ad = getelementptr i8, ptr %i.t, i64 %index
  store <4 x i8> %i.ac, ptr %i.ad, align 1, !alias.scope !9823, !noalias !9824
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !9817

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfhuNCNvMs0_NtCs9xXWl5j4IME_12quantization18encoded_vectors_u8INtB2n_16EncodedVectorsU8INtNtNtNtCs607s0NAIaWN_7segment14vector_storage9quantized17quantized_storage16QuantizedStorageNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileEE17encode_int8_query0NCINvNvBS_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6T_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB3J_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.q, %middle.block ]
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.af = phi i64 [ %i.aq, %scalar.ph ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i = phi i64 [ %i.ar, %scalar.ph ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %.val15.i = load float, ptr %i.ag, align 4, !noalias !9822, !noundef !5
  %i.ah = load float, ptr %i.k, align 4, !noalias !9820, !noundef !5
  %i.ai = fsub float %.val15.i, %i.ah
  %i.aj = load float, ptr %i.l, align 8, !noalias !9820, !noundef !5
  %i.ak = fdiv float %i.ai, %i.aj                 ; 2 uses
  %i.al = fcmp olt float %i.ak, 0.000000e+00
  %spec.store.select.i.i.i.i = select i1 %i.al, float 0.000000e+00, float %i.ak ; 2 uses
  %i.am = fcmp ogt float %spec.store.select.i.i.i.i, 1.270000e+02
  %spec.store.select1.i.i.i.i = select i1 %i.am, float 1.270000e+02, float %spec.store.select.i.i.i.i
  %i.an = tail call float @llvm.round.f32(float %spec.store.select1.i.i.i.i)
  %i.ao = tail call noundef i8 @llvm.fptoui.sat.i8.f32(float %i.an)
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.af
  store i8 %i.ao, ptr %i.ap, align 1, !noalias !9825
  %i.aq = add i64 %i.af, 1                        ; 2 uses
  %i.ar = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.as = icmp eq i64 %i.ar, %i.j
  br i1 %i.as, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfhuNCNvMs0_NtCs9xXWl5j4IME_12quantization18encoded_vectors_u8INtB2n_16EncodedVectorsU8INtNtNtNtCs607s0NAIaWN_7segment14vector_storage9quantized17quantized_storage16QuantizedStorageNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileEE17encode_int8_query0NCINvNvBS_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6T_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB3J_.exit, label %scalar.ph, !llvm.loop !9818

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfhuNCNvMs0_NtCs9xXWl5j4IME_12quantization18encoded_vectors_u8INtB2n_16EncodedVectorsU8INtNtNtNtCs607s0NAIaWN_7segment14vector_storage9quantized17quantized_storage16QuantizedStorageNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileEE17encode_int8_query0NCINvNvBS_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6T_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB3J_.exit: ; preds = %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.q, %middle.block ], [ %i.aq, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !9822
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterfENCNvMs0_NtCs9xXWl5j4IME_12quantization18encoded_vectors_u8INtB1x_16EncodedVectorsU8NtNtNtNtCs607s0NAIaWN_7segment14vector_storage9quantized21quantized_ram_storage19QuantizedRamStorageE17encode_int8_query0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4I_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5V_3VechE14extend_trustedBN_E0E0EB2S_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 7 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 4 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfhuNCNvMs0_NtCs9xXWl5j4IME_12quantization18encoded_vectors_u8INtB2n_16EncodedVectorsU8NtNtNtNtCs607s0NAIaWN_7segment14vector_storage9quantized21quantized_ram_storage19QuantizedRamStorageE17encode_int8_query0NCINvNvBS_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB65_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB3I_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !align !11, !noundef !5 ; 3 uses
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = sub nuw i64 %i.g, %i.h                   ; 2 uses
  %i.j = lshr exact i64 %i.i, 2                   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 44 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 3 uses
  %min.iters.check = icmp ult i64 %i.i, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.m = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload ; 2 uses
  %i.n = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  %i.o = getelementptr i8, ptr %i.n, i64 %i.j     ; 2 uses
  %i.p = getelementptr i8, ptr %i.f, i64 48
  %bound0 = icmp ult ptr %i.m, %i.c
  %bound1 = icmp ult ptr %i.a, %i.o
  %found.conflict = and i1 %bound0, %bound1
  %bound08 = icmp ult ptr %i.m, %i.p
  %bound19 = icmp ult ptr %i.l, %i.o
  %found.conflict10 = and i1 %bound08, %bound19
  %conflict.rdx = or i1 %found.conflict, %found.conflict10
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.j, 4611686018427387900      ; 4 uses
  %i.q = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.r = load float, ptr %i.k, align 4, !alias.scope !9840, !noalias !9841
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.r, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %i.s = load float, ptr %i.l, align 8, !alias.scope !9840, !noalias !9841
  %broadcast.splatinsert11 = insertelement <4 x float> poison, float %i.s, i64 0
  %broadcast.splat12 = shufflevector <4 x float> %broadcast.splatinsert11, <4 x float> poison, <4 x i32> zeroinitializer
  %i.t = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index
  %wide.load = load <4 x float>, ptr %i.u, align 4, !alias.scope !9842, !noalias !9843
  %i.v = fsub <4 x float> %wide.load, %broadcast.splat
  %i.w = fdiv <4 x float> %i.v, %broadcast.splat12 ; 2 uses
  %i.x = fcmp olt <4 x float> %i.w, zeroinitializer
  %i.y = select <4 x i1> %i.x, <4 x float> zeroinitializer, <4 x float> %i.w ; 2 uses
  %i.z = fcmp ogt <4 x float> %i.y, splat (float 1.270000e+02)
  %i.aa = select <4 x i1> %i.z, <4 x float> splat (float 1.270000e+02), <4 x float> %i.y
  %i.ab = tail call <4 x float> @llvm.round.v4f32(<4 x float> %i.aa)
  %i.ac = tail call <4 x i8> @llvm.fptoui.sat.v4i8.v4f32(<4 x float> %i.ab)
  %i.ad = getelementptr i8, ptr %i.t, i64 %index
  store <4 x i8> %i.ac, ptr %i.ad, align 1, !alias.scope !9844, !noalias !9845
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !9838

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfhuNCNvMs0_NtCs9xXWl5j4IME_12quantization18encoded_vectors_u8INtB2n_16EncodedVectorsU8NtNtNtNtCs607s0NAIaWN_7segment14vector_storage9quantized21quantized_ram_storage19QuantizedRamStorageE17encode_int8_query0NCINvNvBS_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB65_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB3I_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.q, %middle.block ]
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.af = phi i64 [ %i.aq, %scalar.ph ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i = phi i64 [ %i.ar, %scalar.ph ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %.val15.i = load float, ptr %i.ag, align 4, !noalias !9843, !noundef !5
  %i.ah = load float, ptr %i.k, align 4, !noalias !9841, !noundef !5
  %i.ai = fsub float %.val15.i, %i.ah
  %i.aj = load float, ptr %i.l, align 8, !noalias !9841, !noundef !5
  %i.ak = fdiv float %i.ai, %i.aj                 ; 2 uses
  %i.al = fcmp olt float %i.ak, 0.000000e+00
  %spec.store.select.i.i.i.i = select i1 %i.al, float 0.000000e+00, float %i.ak ; 2 uses
  %i.am = fcmp ogt float %spec.store.select.i.i.i.i, 1.270000e+02
  %spec.store.select1.i.i.i.i = select i1 %i.am, float 1.270000e+02, float %spec.store.select.i.i.i.i
  %i.an = tail call float @llvm.round.f32(float %spec.store.select1.i.i.i.i)
  %i.ao = tail call noundef i8 @llvm.fptoui.sat.i8.f32(float %i.an)
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.af
  store i8 %i.ao, ptr %i.ap, align 1, !noalias !9846
  %i.aq = add i64 %i.af, 1                        ; 2 uses
  %i.ar = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.as = icmp eq i64 %i.ar, %i.j
  br i1 %i.as, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfhuNCNvMs0_NtCs9xXWl5j4IME_12quantization18encoded_vectors_u8INtB2n_16EncodedVectorsU8NtNtNtNtCs607s0NAIaWN_7segment14vector_storage9quantized21quantized_ram_storage19QuantizedRamStorageE17encode_int8_query0NCINvNvBS_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB65_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB3I_.exit, label %scalar.ph, !llvm.loop !9839

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfhuNCNvMs0_NtCs9xXWl5j4IME_12quantization18encoded_vectors_u8INtB2n_16EncodedVectorsU8NtNtNtNtCs607s0NAIaWN_7segment14vector_storage9quantized21quantized_ram_storage19QuantizedRamStorageE17encode_int8_query0NCINvNvBS_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB65_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB3I_.exit: ; preds = %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.q, %middle.block ], [ %i.aq, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !9843
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterfENCNvMs0_NtCs9xXWl5j4IME_12quantization18encoded_vectors_u8INtB1x_16EncodedVectorsU8NtNtNtNtNtCs607s0NAIaWN_7segment14vector_storage9quantized30quantized_chunked_mmap_storage10read_write23QuantizedChunkedStorageE17encode_int8_query0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB59_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6m_3VechE14extend_trustedBN_E0E0EB2U_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 7 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 4 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfhuNCNvMs0_NtCs9xXWl5j4IME_12quantization18encoded_vectors_u8INtB2n_16EncodedVectorsU8NtNtNtNtNtCs607s0NAIaWN_7segment14vector_storage9quantized30quantized_chunked_mmap_storage10read_write23QuantizedChunkedStorageE17encode_int8_query0NCINvNvBS_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB3K_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !align !11, !noundef !5 ; 3 uses
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = sub nuw i64 %i.g, %i.h                   ; 2 uses
  %i.j = lshr exact i64 %i.i, 2                   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 44 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 3 uses
  %min.iters.check = icmp ult i64 %i.i, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.m = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload ; 2 uses
  %i.n = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  %i.o = getelementptr i8, ptr %i.n, i64 %i.j     ; 2 uses
  %i.p = getelementptr i8, ptr %i.f, i64 48
  %bound0 = icmp ult ptr %i.m, %i.c
  %bound1 = icmp ult ptr %i.a, %i.o
  %found.conflict = and i1 %bound0, %bound1
  %bound08 = icmp ult ptr %i.m, %i.p
  %bound19 = icmp ult ptr %i.l, %i.o
  %found.conflict10 = and i1 %bound08, %bound19
  %conflict.rdx = or i1 %found.conflict, %found.conflict10
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.j, 4611686018427387900      ; 4 uses
  %i.q = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.r = load float, ptr %i.k, align 4, !alias.scope !9861, !noalias !9862
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.r, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %i.s = load float, ptr %i.l, align 8, !alias.scope !9861, !noalias !9862
  %broadcast.splatinsert11 = insertelement <4 x float> poison, float %i.s, i64 0
  %broadcast.splat12 = shufflevector <4 x float> %broadcast.splatinsert11, <4 x float> poison, <4 x i32> zeroinitializer
  %i.t = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index
  %wide.load = load <4 x float>, ptr %i.u, align 4, !alias.scope !9863, !noalias !9864
  %i.v = fsub <4 x float> %wide.load, %broadcast.splat
  %i.w = fdiv <4 x float> %i.v, %broadcast.splat12 ; 2 uses
  %i.x = fcmp olt <4 x float> %i.w, zeroinitializer
  %i.y = select <4 x i1> %i.x, <4 x float> zeroinitializer, <4 x float> %i.w ; 2 uses
  %i.z = fcmp ogt <4 x float> %i.y, splat (float 1.270000e+02)
  %i.aa = select <4 x i1> %i.z, <4 x float> splat (float 1.270000e+02), <4 x float> %i.y
  %i.ab = tail call <4 x float> @llvm.round.v4f32(<4 x float> %i.aa)
  %i.ac = tail call <4 x i8> @llvm.fptoui.sat.v4i8.v4f32(<4 x float> %i.ab)
  %i.ad = getelementptr i8, ptr %i.t, i64 %index
  store <4 x i8> %i.ac, ptr %i.ad, align 1, !alias.scope !9865, !noalias !9866
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !9859

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfhuNCNvMs0_NtCs9xXWl5j4IME_12quantization18encoded_vectors_u8INtB2n_16EncodedVectorsU8NtNtNtNtNtCs607s0NAIaWN_7segment14vector_storage9quantized30quantized_chunked_mmap_storage10read_write23QuantizedChunkedStorageE17encode_int8_query0NCINvNvBS_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB3K_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.q, %middle.block ]
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.af = phi i64 [ %i.aq, %scalar.ph ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i = phi i64 [ %i.ar, %scalar.ph ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %.val15.i = load float, ptr %i.ag, align 4, !noalias !9864, !noundef !5
  %i.ah = load float, ptr %i.k, align 4, !noalias !9862, !noundef !5
  %i.ai = fsub float %.val15.i, %i.ah
  %i.aj = load float, ptr %i.l, align 8, !noalias !9862, !noundef !5
  %i.ak = fdiv float %i.ai, %i.aj                 ; 2 uses
  %i.al = fcmp olt float %i.ak, 0.000000e+00
  %spec.store.select.i.i.i.i = select i1 %i.al, float 0.000000e+00, float %i.ak ; 2 uses
  %i.am = fcmp ogt float %spec.store.select.i.i.i.i, 1.270000e+02
  %spec.store.select1.i.i.i.i = select i1 %i.am, float 1.270000e+02, float %spec.store.select.i.i.i.i
  %i.an = tail call float @llvm.round.f32(float %spec.store.select1.i.i.i.i)
  %i.ao = tail call noundef i8 @llvm.fptoui.sat.i8.f32(float %i.an)
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.af
  store i8 %i.ao, ptr %i.ap, align 1, !noalias !9867
  %i.aq = add i64 %i.af, 1                        ; 2 uses
  %i.ar = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.as = icmp eq i64 %i.ar, %i.j
  br i1 %i.as, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfhuNCNvMs0_NtCs9xXWl5j4IME_12quantization18encoded_vectors_u8INtB2n_16EncodedVectorsU8NtNtNtNtNtCs607s0NAIaWN_7segment14vector_storage9quantized30quantized_chunked_mmap_storage10read_write23QuantizedChunkedStorageE17encode_int8_query0NCINvNvBS_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB3K_.exit, label %scalar.ph, !llvm.loop !9860

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfhuNCNvMs0_NtCs9xXWl5j4IME_12quantization18encoded_vectors_u8INtB2n_16EncodedVectorsU8NtNtNtNtNtCs607s0NAIaWN_7segment14vector_storage9quantized30quantized_chunked_mmap_storage10read_write23QuantizedChunkedStorageE17encode_int8_query0NCINvNvBS_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB3K_.exit: ; preds = %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.q, %middle.block ], [ %i.aq, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !9864
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterfENCNvNtNtCs607s0NAIaWN_7segment6spaces6simple17cosine_preprocesss_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2u_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3H_3VecfE14extend_trustedBN_E0E0EB1x_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !align !27, !noundef !5 ; 6 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 6 uses
  %i.f = icmp eq ptr %i.a, %i.c
  br i1 %i.f, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRffuNCNvNtNtCs607s0NAIaWN_7segment6spaces6simple17cosine_preprocesss_0NCINvNvBS_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3R_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2n_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = sub nuw i64 %i.g, %i.h                   ; 4 uses
  %i.j = lshr i64 %i.i, 2                         ; 4 uses
  %min.iters.check = icmp ult i64 %i.i, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.k = shl i64 %.sroa.5.0.copyload, 2           ; 2 uses
  %i.l = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.k ; 2 uses
  %i.m = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.k
  %i.n = getelementptr i8, ptr %i.m, i64 %i.i     ; 2 uses
  %i.o = getelementptr i8, ptr %i.e, i64 4
  %bound0 = icmp ult ptr %i.l, %i.c
  %bound1 = icmp ult ptr %i.a, %i.n
  %found.conflict = and i1 %bound0, %bound1
  %bound08 = icmp ult ptr %i.l, %i.o
  %bound19 = icmp ult ptr %i.e, %i.n
  %found.conflict10 = and i1 %bound08, %bound19
  %conflict.rdx = or i1 %found.conflict, %found.conflict10
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.j, 4611686018427387900      ; 4 uses
  %i.p = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.q = load float, ptr %i.e, align 4, !alias.scope !9882, !noalias !9883
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.q, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %i.r = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index
  %wide.load = load <4 x float>, ptr %i.s, align 4, !alias.scope !9884, !noalias !9885
  %i.t = fdiv <4 x float> %wide.load, %broadcast.splat
  %i.u = getelementptr [4 x i8], ptr %i.r, i64 %index
  store <4 x float> %i.t, ptr %i.u, align 4, !alias.scope !9886, !noalias !9887
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !9880

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRffuNCNvNtNtCs607s0NAIaWN_7segment6spaces6simple17cosine_preprocesss_0NCINvNvBS_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3R_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2n_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.p, %middle.block ] ; 3 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 4 uses
  %.neg = or disjoint i64 %.sroa.01.0.i.ph, 1
  %i.w = and i64 %i.i, 4
  %lcmp.mod.not = icmp eq i64 %i.w, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i.ph
  %.val15.i.prol = load float, ptr %i.x, align 4, !noalias !9885, !noundef !5
  %i.y = load float, ptr %i.e, align 4, !noalias !9883, !noundef !5
  %i.z = fdiv float %.val15.i.prol, %i.y
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %.ph
  store float %i.z, ptr %i.aa, align 4, !noalias !9888
  %i.ab = add i64 %.ph, 1                         ; 2 uses
  %i.ac = or disjoint i64 %.sroa.01.0.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.ab, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.ab, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.ac, %scalar.ph.prol ]
  %i.ad = icmp eq i64 %i.j, %.neg
  br i1 %i.ad, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRffuNCNvNtNtCs607s0NAIaWN_7segment6spaces6simple17cosine_preprocesss_0NCINvNvBS_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3R_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2n_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ae = phi i64 [ %i.ap, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ %i.aq, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %.val15.i = load float, ptr %i.af, align 4, !noalias !9885, !noundef !5
  %i.ag = load float, ptr %i.e, align 4, !noalias !9883, !noundef !5
  %i.ah = fdiv float %.val15.i, %i.ag
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ae
  store float %i.ah, ptr %i.ai, align 4, !noalias !9888
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %.val15.i.1 = load float, ptr %i.ak, align 4, !noalias !9885, !noundef !5
  %i.al = load float, ptr %i.e, align 4, !noalias !9883, !noundef !5
  %i.am = fdiv float %.val15.i.1, %i.al
  %i.an = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ae
  %i.ao = getelementptr i8, ptr %i.an, i64 4
  store float %i.am, ptr %i.ao, align 4, !noalias !9888
  %i.ap = add i64 %i.ae, 2                        ; 2 uses
  %i.aq = add nuw i64 %.sroa.01.0.i, 2            ; 2 uses
  %i.ar = icmp eq i64 %i.aq, %i.j
  br i1 %i.ar, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRffuNCNvNtNtCs607s0NAIaWN_7segment6spaces6simple17cosine_preprocesss_0NCINvNvBS_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3R_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2n_.exit, label %scalar.ph, !llvm.loop !9881

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRffuNCNvNtNtCs607s0NAIaWN_7segment6spaces6simple17cosine_preprocesss_0NCINvNvBS_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3R_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2n_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.p, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.ap, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !9885
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterfENCNvXs0_NtNtCs607s0NAIaWN_7segment10data_types9primitivehNtB1x_22PrimitiveVectorElement20slice_from_float_cow0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3c_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4p_3VechE14extend_trustedBN_E0E0EB1B_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 7 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfhuNCNvXs0_NtNtCs607s0NAIaWN_7segment10data_types9primitivehNtB2n_22PrimitiveVectorElement20slice_from_float_cow0NCINvNvBS_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4z_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2r_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 3 uses
  %i.e = lshr i64 %i.d, 2                         ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 32
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.f = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  %i.g = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  %i.h = getelementptr i8, ptr %i.g, i64 %i.e
  %bound0 = icmp ult ptr %i.f, %1
  %bound1 = icmp ult ptr %0, %i.h
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.e, 4611686018427387896      ; 4 uses
  %i.i = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.j = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %wide.load = load <4 x float>, ptr %i.k, align 4, !alias.scope !9902, !noalias !9903
  %wide.load4 = load <4 x float>, ptr %i.l, align 4, !alias.scope !9902, !noalias !9903
  %i.m = tail call <4 x i8> @llvm.fptoui.sat.v4i8.v4f32(<4 x float> %wide.load)
  %i.n = tail call <4 x i8> @llvm.fptoui.sat.v4i8.v4f32(<4 x float> %wide.load4)
  %i.o = getelementptr i8, ptr %i.j, i64 %index   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store <4 x i8> %i.m, ptr %i.o, align 1, !alias.scope !9904, !noalias !9905
  store <4 x i8> %i.n, ptr %i.p, align 1, !alias.scope !9904, !noalias !9905
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !9900

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfhuNCNvXs0_NtNtCs607s0NAIaWN_7segment10data_types9primitivehNtB2n_22PrimitiveVectorElement20slice_from_float_cow0NCINvNvBS_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4z_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2r_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.i, %middle.block ] ; 3 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 4 uses
  %.neg = or disjoint i64 %.sroa.01.0.i.ph, 1
  %i.r = and i64 %i.d, 4
  %lcmp.mod.not = icmp eq i64 %i.r, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i.ph
  %.val15.i.prol = load float, ptr %i.s, align 4, !noalias !9903, !noundef !5
  %i.t = tail call noundef i8 @llvm.fptoui.sat.i8.f32(float %.val15.i.prol)
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %.ph
  store i8 %i.t, ptr %i.u, align 1, !noalias !9906
  %i.v = add i64 %.ph, 1                          ; 2 uses
  %i.w = or disjoint i64 %.sroa.01.0.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.v, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.v, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.w, %scalar.ph.prol ]
  %i.x = icmp eq i64 %i.e, %.neg
  br i1 %i.x, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfhuNCNvXs0_NtNtCs607s0NAIaWN_7segment10data_types9primitivehNtB2n_22PrimitiveVectorElement20slice_from_float_cow0NCINvNvBS_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4z_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2r_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.y = phi i64 [ %i.ah, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ %i.ai, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i
  %.val15.i = load float, ptr %i.z, align 4, !noalias !9903, !noundef !5
  %i.aa = tail call noundef i8 @llvm.fptoui.sat.i8.f32(float %.val15.i)
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.y
  store i8 %i.aa, ptr %i.ab, align 1, !noalias !9906
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %.val15.i.1 = load float, ptr %i.ad, align 4, !noalias !9903, !noundef !5
  %i.ae = tail call noundef i8 @llvm.fptoui.sat.i8.f32(float %.val15.i.1)
  %i.af = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.y
  %i.ag = getelementptr i8, ptr %i.af, i64 1
  store i8 %i.ae, ptr %i.ag, align 1, !noalias !9906
  %i.ah = add i64 %i.y, 2                         ; 2 uses
  %i.ai = add nuw i64 %.sroa.01.0.i, 2            ; 2 uses
  %i.aj = icmp eq i64 %i.ai, %i.e
  br i1 %i.aj, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfhuNCNvXs0_NtNtCs607s0NAIaWN_7segment10data_types9primitivehNtB2n_22PrimitiveVectorElement20slice_from_float_cow0NCINvNvBS_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4z_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2r_.exit, label %scalar.ph, !llvm.loop !9901

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfhuNCNvXs0_NtNtCs607s0NAIaWN_7segment10data_types9primitivehNtB2n_22PrimitiveVectorElement20slice_from_float_cow0NCINvNvBS_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4z_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2r_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.i, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.ah, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !9903
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterfENCNvXs0_NtNtCs607s0NAIaWN_7segment10data_types9primitivehNtB1x_22PrimitiveVectorElement22from_float_multivector0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3e_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4r_3VechE14extend_trustedBN_E0E0EB1B_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 7 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfhuNCNvXs0_NtNtCs607s0NAIaWN_7segment10data_types9primitivehNtB2n_22PrimitiveVectorElement22from_float_multivector0NCINvNvBS_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4B_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2r_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 3 uses
  %i.e = lshr i64 %i.d, 2                         ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 32
end_hunk_2
begin_hunk_3_@_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4ItermENCINvNvMNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index24immutable_inverted_indexNtB1x_22ImmutableInvertedIndex14filter_has_all12intersectionNtNtB1z_9positions9PositionsNCB1u_0E0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6option6OptionzEEB4T_8try_folduNCINvNvB4T_12try_for_each4callINtNtCs6cW95TQWYPl_12posting_list4view15PostingListViewB4h_EINtNtNtBc_3ops12control_flow11ControlFlowB7e_ENcNtB8c_5Break0E0B8c_E0IB8d_B8c_EEB1H_:bb.a
  %.sroa.13.0.i = phi ptr [ %i.x, %bb.d ], [ undef, %bb.c ]
  %.sroa.12.0.i = phi i64 [ %i.v, %bb.d ], [ undef, %bb.c ]
  %.sroa.11.0.i = phi ptr [ %i.t, %bb.d ], [ undef, %bb.c ]
  %.sroa.10.0.i = phi i64 [ %i.r, %bb.d ], [ undef, %bb.c ]
  %.sroa.9.0.i = phi ptr [ %i.p, %bb.d ], [ undef, %bb.c ]
  %.sroa.8.0.i = phi i64 [ %i.n, %bb.d ], [ undef, %bb.c ]
  %.sroa.75.0.i = phi ptr [ %i.l, %bb.d ], [ undef, %bb.c ]
  %i.ac = phi <2 x i32> [ %i.ab, %bb.d ], [ <i32 2, i32 undef>, %bb.c ]
  store <2 x i32> %i.ac, ptr %0, align 8, !alias.scope !10149
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.75.0.i, ptr %.sroa.57.0..sroa_idx.i, align 8, !alias.scope !10149
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.8.0.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !10149
  %.sroa.7.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.9.0.i, ptr %.sroa.7.0..sroa_idx8.i, align 8, !alias.scope !10149
  %.sroa.89.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.10.0.i, ptr %.sroa.89.0..sroa_idx.i, align 8, !alias.scope !10149
  %.sroa.910.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.11.0.i, ptr %.sroa.910.0..sroa_idx.i, align 8, !alias.scope !10149
  %.sroa.1011.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.12.0.i, ptr %.sroa.1011.0..sroa_idx.i, align 8, !alias.scope !10149
  %.sroa.1112.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sroa.13.0.i, ptr %.sroa.1112.0..sroa_idx.i, align 8, !alias.scope !10149
  %.sroa.1213.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.14.0.i, ptr %.sroa.1213.0..sroa_idx.i, align 8, !alias.scope !10149
  br label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldRmINtNtBa_6option6OptionINtNtCs6cW95TQWYPl_12posting_list4view15PostingListViewNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index9positions9PositionsEEuINtNtNtBa_3ops12control_flow11ControlFlowIB5g_B2B_EENCINvNvMNtB3y_24immutable_inverted_indexNtB6d_22ImmutableInvertedIndex14filter_has_all12intersectionB3u_NCB6a_0E0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B65_EIB2g_zEEBL_8try_folduNCINvNvBL_12try_for_each4callB2B_B5U_NcNtB5U_5Break0E0B5U_E0E0B5f_EB3G_.exit

_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldRmINtNtBa_6option6OptionINtNtCs6cW95TQWYPl_12posting_list4view15PostingListViewNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index9positions9PositionsEEuINtNtNtBa_3ops12control_flow11ControlFlowIB5g_B2B_EENCINvNvMNtB3y_24immutable_inverted_indexNtB6d_22ImmutableInvertedIndex14filter_has_all12intersectionB3u_NCB6a_0E0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B65_EIB2g_zEEBL_8try_folduNCINvNvBL_12try_for_each4callB2B_B5U_NcNtB5U_5Break0E0B5U_E0E0B5f_EB3G_.exit: ; preds = %bb.e, %bb.f
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4ItermENCINvNvMNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index24immutable_inverted_indexNtB1x_22ImmutableInvertedIndex14filter_has_all12intersectionuNCB1u_0E0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6option6OptionzEEB4s_8try_folduNCINvNvB4s_12try_for_each4callINtNtCs6cW95TQWYPl_12posting_list4view15PostingListViewuEINtNtNtBc_3ops12control_flow11ControlFlowB6N_ENcNtB7I_5Break0E0B7I_E0IB7J_B7I_EEB1H_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 4)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias nofree noundef writeonly captures(none) dereferenceable(1) %3) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10167)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10168)
  %i.b = load ptr, ptr %1, align 8, !alias.scope !10169, !nonnull !5, !noundef !5 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !10169, !nonnull !5, !noundef !5
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store ptr %i.f, ptr %1, align 8, !alias.scope !10169
  %.val5.i = load i32, ptr %i.b, align 4, !noalias !10170, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i.i = load i64, ptr %i.g, align 8, !noalias !10171, !noundef !5
  %i.h = zext i32 %.val5.i to i64                 ; 2 uses
  %i.i = icmp ugt i64 %.val1.i.i, %i.h
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %3, align 1, !noalias !10172
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.val.i.i = load ptr, ptr %i.a, align 8, !noalias !10171, !nonnull !5, !noundef !5
  %i.j = getelementptr inbounds nuw [104 x i8], ptr %.val.i.i, i64 %i.h ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !noalias !10173, !nonnull !5, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noalias !10173, !noundef !5
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !noalias !10173, !nonnull !5, !noundef !5
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.r = load i64, ptr %i.q, align 8, !noalias !10173, !noundef !5
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %i.t = load ptr, ptr %i.s, align 8, !noalias !10173, !nonnull !5, !noundef !5
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %i.v = load i64, ptr %i.u, align 8, !noalias !10173, !noundef !5
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.x = load ptr, ptr %i.w, align 8, !noalias !10173, !nonnull !5, !noundef !5
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.z = load i64, ptr %i.y, align 8, !noalias !10173, !noundef !5
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %i.ab = load <2 x i32>, ptr %i.aa, align 8, !noalias !10173
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  store i32 -1, ptr %0, align 8, !alias.scope !10174
  br label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldRmINtNtBa_6option6OptionINtNtCs6cW95TQWYPl_12posting_list4view15PostingListViewuEEuINtNtNtBa_3ops12control_flow11ControlFlowIB3z_B2B_EENCINvNvMNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index24immutable_inverted_indexNtB4w_22ImmutableInvertedIndex14filter_has_all12intersectionuNCB4t_0E0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B4o_EIB2g_zEEBL_8try_folduNCINvNvBL_12try_for_each4callB2B_B4d_NcNtB4d_5Break0E0B4d_E0E0B3y_EB4G_.exit

bb.f:                                             ; preds = %bb.d, %bb.c
  %.sroa.14.0.i = phi i64 [ %i.z, %bb.d ], [ undef, %bb.c ]
  %.sroa.13.0.i = phi ptr [ %i.x, %bb.d ], [ undef, %bb.c ]
  %.sroa.12.0.i = phi i64 [ %i.v, %bb.d ], [ undef, %bb.c ]
  %.sroa.11.0.i = phi ptr [ %i.t, %bb.d ], [ undef, %bb.c ]
  %.sroa.10.0.i = phi i64 [ %i.r, %bb.d ], [ undef, %bb.c ]
  %.sroa.9.0.i = phi ptr [ %i.p, %bb.d ], [ undef, %bb.c ]
  %.sroa.8.0.i = phi i64 [ %i.n, %bb.d ], [ undef, %bb.c ]
  %.sroa.75.0.i = phi ptr [ %i.l, %bb.d ], [ undef, %bb.c ]
  %i.ac = phi <2 x i32> [ %i.ab, %bb.d ], [ <i32 2, i32 undef>, %bb.c ]
  store <2 x i32> %i.ac, ptr %0, align 8, !alias.scope !10175
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.75.0.i, ptr %.sroa.57.0..sroa_idx.i, align 8, !alias.scope !10175
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.8.0.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !10175
  %.sroa.7.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.9.0.i, ptr %.sroa.7.0..sroa_idx8.i, align 8, !alias.scope !10175
  %.sroa.89.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.10.0.i, ptr %.sroa.89.0..sroa_idx.i, align 8, !alias.scope !10175
  %.sroa.910.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.11.0.i, ptr %.sroa.910.0..sroa_idx.i, align 8, !alias.scope !10175
  %.sroa.1011.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.12.0.i, ptr %.sroa.1011.0..sroa_idx.i, align 8, !alias.scope !10175
  %.sroa.1112.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sroa.13.0.i, ptr %.sroa.1112.0..sroa_idx.i, align 8, !alias.scope !10175
  %.sroa.1213.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.14.0.i, ptr %.sroa.1213.0..sroa_idx.i, align 8, !alias.scope !10175
  br label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldRmINtNtBa_6option6OptionINtNtCs6cW95TQWYPl_12posting_list4view15PostingListViewuEEuINtNtNtBa_3ops12control_flow11ControlFlowIB3z_B2B_EENCINvNvMNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index24immutable_inverted_indexNtB4w_22ImmutableInvertedIndex14filter_has_all12intersectionuNCB4t_0E0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B4o_EIB2g_zEEBL_8try_folduNCINvNvBL_12try_for_each4callB2B_B4d_NcNtB4d_5Break0E0B4d_E0E0B3y_EB4G_.exit

_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldRmINtNtBa_6option6OptionINtNtCs6cW95TQWYPl_12posting_list4view15PostingListViewuEEuINtNtNtBa_3ops12control_flow11ControlFlowIB3z_B2B_EENCINvNvMNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index24immutable_inverted_indexNtB4w_22ImmutableInvertedIndex14filter_has_all12intersectionuNCB4t_0E0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B4o_EIB2g_zEEBL_8try_folduNCINvNvBL_12try_for_each4callB2B_B4d_NcNtB4d_5Break0E0B4d_E0E0B3y_EB4G_.exit: ; preds = %bb.e, %bb.f
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden { i64, ptr } @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4ItermENCNvMNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index22mutable_inverted_indexNtB1u_20MutableInvertedIndex14filter_has_all0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6option6OptionzEEB3Y_8try_folduNCINvNvB3Y_12try_for_each4callRNtNtB1w_12posting_list11PostingListINtNtNtBc_3ops12control_flow11ControlFlowB6j_ENcNtB6T_5Break0E0B6T_E0IB6U_B6T_EEB1E_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readnone captures(none) %1, ptr noalias nofree noundef writeonly captures(none) dereferenceable(1) %2) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10182)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !10183, !nonnull !5, !noundef !5 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !10183, !nonnull !5, !noundef !5
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldRmINtNtBa_6option6OptionRNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListEuINtNtNtBa_3ops12control_flow11ControlFlowIB4u_B2B_EENCNvMNtB2G_22mutable_inverted_indexNtB5o_20MutableInvertedIndex14filter_has_all0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5j_EIB2g_zEEBL_8try_folduNCINvNvBL_12try_for_each4callB2B_B58_NcNtB58_5Break0E0B58_E0E0B4t_EB2O_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store ptr %i.f, ptr %0, align 8, !alias.scope !10183
  %.val7.i = load i32, ptr %i.a, align 4, !noalias !10182, !noundef !5
  %.val.i.i = load ptr, ptr %i.e, align 8, !noalias !10182, !nonnull !5, !align !11, !noundef !5 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noalias !10182, !noundef !5
  %i.i = zext i32 %.val7.i to i64                 ; 2 uses
  %i.j = icmp ugt i64 %i.h, %i.i
  br i1 %i.j, label %_RNCNvMNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index22mutable_inverted_indexNtB4_20MutableInvertedIndex14filter_has_all0Be_.exit.i.i, label %bb.c

_RNCNvMNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index22mutable_inverted_indexNtB4_20MutableInvertedIndex14filter_has_all0Be_.exit.i.i: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !noalias !10182, !nonnull !5, !noundef !5
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.i
  br label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldRmINtNtBa_6option6OptionRNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListEuINtNtNtBa_3ops12control_flow11ControlFlowIB4u_B2B_EENCNvMNtB2G_22mutable_inverted_indexNtB5o_20MutableInvertedIndex14filter_has_all0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5j_EIB2g_zEEBL_8try_folduNCINvNvBL_12try_for_each4callB2B_B58_NcNtB58_5Break0E0B58_E0E0B4t_EB2O_.exit

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %2, align 1, !noalias !10184
  br label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldRmINtNtBa_6option6OptionRNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListEuINtNtNtBa_3ops12control_flow11ControlFlowIB4u_B2B_EENCNvMNtB2G_22mutable_inverted_indexNtB5o_20MutableInvertedIndex14filter_has_all0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5j_EIB2g_zEEBL_8try_folduNCINvNvBL_12try_for_each4callB2B_B58_NcNtB58_5Break0E0B58_E0E0B4t_EB2O_.exit

_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldRmINtNtBa_6option6OptionRNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListEuINtNtNtBa_3ops12control_flow11ControlFlowIB4u_B2B_EENCNvMNtB2G_22mutable_inverted_indexNtB5o_20MutableInvertedIndex14filter_has_all0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5j_EIB2g_zEEBL_8try_folduNCINvNvBL_12try_for_each4callB2B_B58_NcNtB58_5Break0E0B58_E0E0B4t_EB2O_.exit: ; preds = %bb.a, %_RNCNvMNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index22mutable_inverted_indexNtB4_20MutableInvertedIndex14filter_has_all0Be_.exit.i.i, %bb.c
  %.sroa.3.0.i = phi ptr [ undef, %bb.a ], [ %i.m, %_RNCNvMNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index22mutable_inverted_indexNtB4_20MutableInvertedIndex14filter_has_all0Be_.exit.i.i ], [ null, %bb.c ]
  %.sroa.0.0.i = phi i64 [ 0, %bb.a ], [ 1, %_RNCNvMNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index22mutable_inverted_indexNtB4_20MutableInvertedIndex14filter_has_all0Be_.exit.i.i ], [ 1, %bb.c ]
  %i.n = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i, 0
  %i.o = insertvalue { i64, ptr } %i.n, ptr %.sroa.3.0.i, 1
  ret { i64, ptr } %i.o
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4ItermENCNvMNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index9positionsNtB1u_9Positions18to_token_positions0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3C_8for_each4callNtB1u_13TokenPositionNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB59_3VecB4F_E14extend_trustedBN_E0E0EB1E_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !align !27, !noundef !5 ; 6 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 7 uses
  %i.f = icmp eq ptr %i.a, %i.c
  br i1 %i.f, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRmNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index9positions13TokenPositionuNCNvMB2f_NtB2f_9Positions18to_token_positions0NCINvNvBS_8for_each4callB2d_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5m_3VecB2d_E14extend_trustedINtB1I_3MapBF_B41_EE0E0E0EB2p_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = sub nuw i64 %i.g, %i.h                   ; 4 uses
  %i.j = lshr i64 %i.i, 2                         ; 4 uses
  %min.iters.check = icmp ult i64 %i.i, 64
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.k = shl i64 %.sroa.5.0.copyload, 3           ; 2 uses
  %i.l = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.k ; 2 uses
  %i.m = shl i64 %i.i, 1
  %i.n = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.k
  %i.o = getelementptr i8, ptr %i.n, i64 %i.m     ; 2 uses
  %i.p = getelementptr i8, ptr %i.e, i64 4
  %bound0 = icmp ult ptr %i.l, %i.c
  %bound1 = icmp ult ptr %i.a, %i.o
  %found.conflict = and i1 %bound0, %bound1
  %bound08 = icmp ult ptr %i.l, %i.p
  %bound19 = icmp ult ptr %i.e, %i.o
  %found.conflict10 = and i1 %bound08, %bound19
  %conflict.rdx = or i1 %found.conflict, %found.conflict10
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.j, 4611686018427387900      ; 4 uses
  %i.q = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.r = load i32, ptr %i.e, align 4, !alias.scope !10199, !noalias !10200
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.r, i64 0 ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.s = add i64 %.sroa.5.0.copyload, %index      ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %wide.load = load <2 x i32>, ptr %i.t, align 4, !alias.scope !10201, !noalias !10202
  %wide.load11 = load <2 x i32>, ptr %i.u, align 4, !alias.scope !10201, !noalias !10202
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.s
  %i.w = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.s
  %i.x = getelementptr i8, ptr %i.w, i64 16
  %interleaved.vec = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> %wide.load, <4 x i32> <i32 0, i32 2, i32 0, i32 3>
  store <4 x i32> %interleaved.vec, ptr %i.v, align 4, !alias.scope !10203, !noalias !10204
  %interleaved.vec12 = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> %wide.load11, <4 x i32> <i32 0, i32 2, i32 0, i32 3>
  store <4 x i32> %interleaved.vec12, ptr %i.x, align 4, !alias.scope !10203, !noalias !10204
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !10197

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRmNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index9positions13TokenPositionuNCNvMB2f_NtB2f_9Positions18to_token_positions0NCINvNvBS_8for_each4callB2d_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5m_3VecB2d_E14extend_trustedINtB1I_3MapBF_B41_EE0E0E0EB2p_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.q, %middle.block ] ; 3 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 4 uses
  %.neg = or disjoint i64 %.sroa.01.0.i.ph, 1
  %i.z = and i64 %i.i, 4
  %lcmp.mod.not = icmp eq i64 %i.z, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i.ph
  %.val15.i.prol = load i32, ptr %i.aa, align 4, !noalias !10202, !noundef !5
  %i.ab = load i32, ptr %i.e, align 4, !noalias !10200, !noundef !5
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %.ph ; 2 uses
  store i32 %i.ab, ptr %i.ac, align 4, !noalias !10204
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store i32 %.val15.i.prol, ptr %i.ad, align 4, !noalias !10204
  %i.ae = add i64 %.ph, 1                         ; 2 uses
  %i.af = or disjoint i64 %.sroa.01.0.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.ae, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.ae, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.af, %scalar.ph.prol ]
  %i.ag = icmp eq i64 %i.j, %.neg
  br i1 %i.ag, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRmNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index9positions13TokenPositionuNCNvMB2f_NtB2f_9Positions18to_token_positions0NCINvNvBS_8for_each4callB2d_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5m_3VecB2d_E14extend_trustedINtB1I_3MapBF_B41_EE0E0E0EB2p_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ah = phi i64 [ %i.as, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ %i.at, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %.val15.i = load i32, ptr %i.ai, align 4, !noalias !10202, !noundef !5
  %i.aj = load i32, ptr %i.e, align 4, !noalias !10200, !noundef !5
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ah ; 2 uses
  store i32 %i.aj, ptr %i.ak, align 4, !noalias !10204
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  store i32 %.val15.i, ptr %i.al, align 4, !noalias !10204
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %.val15.i.1 = load i32, ptr %i.an, align 4, !noalias !10202, !noundef !5
  %i.ao = load i32, ptr %i.e, align 4, !noalias !10200, !noundef !5
  %i.ap = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ah ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 8
  store i32 %i.ao, ptr %i.aq, align 4, !noalias !10204
  %i.ar = getelementptr i8, ptr %i.ap, i64 12
  store i32 %.val15.i.1, ptr %i.ar, align 4, !noalias !10204
  %i.as = add i64 %i.ah, 2                        ; 2 uses
  %i.at = add nuw i64 %.sroa.01.0.i, 2            ; 2 uses
  %i.au = icmp eq i64 %i.at, %i.j
  br i1 %i.au, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRmNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index9positions13TokenPositionuNCNvMB2f_NtB2f_9Positions18to_token_positions0NCINvNvBS_8for_each4callB2d_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5m_3VecB2d_E14extend_trustedINtB1I_3MapBF_B41_EE0E0E0EB2p_.exit, label %scalar.ph, !llvm.loop !10198

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRmNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index9positions13TokenPositionuNCNvMB2f_NtB2f_9Positions18to_token_positions0NCINvNvBS_8for_each4callB2d_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5m_3VecB2d_E14extend_trustedINtB1I_3MapBF_B41_EE0E0E0EB2p_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.q, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.as, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !10202
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4ItermENCNvYNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index22mutable_inverted_index20MutableInvertedIndexNtB1y_13InvertedIndex31estimate_has_subset_cardinality0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultzNtNtNtB1G_6common15operation_error14OperationErrorEEB4w_8try_folduNCINvXB8_IB5o_B5n_INtNtBc_6option6OptionzEEB4w_8try_folduNCINvNvB4w_12try_for_each4calljINtNtNtBc_3ops12control_flow11ControlFlowjENcNtB8B_5Break0E0B8B_E0IB8C_B8B_EE0IB8C_B9F_EEB1G_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias nofree noundef align 8 dereferenceable(96) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10216)
  %i.b = load ptr, ptr %0, align 8, !alias.scope !10217, !nonnull !5, !noundef !5 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !10217, !nonnull !5, !noundef !5
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldRmINtNtBa_6result6ResultINtNtBa_6option6OptionjENtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB48_IB48_jEEENCNvYNtNtNtNtNtNtB35_5index11field_index15full_text_index14inverted_index22mutable_inverted_index20MutableInvertedIndexNtB59_13InvertedIndex31estimate_has_subset_cardinality0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B50_EIB2g_zB2Z_EEBL_8try_folduNCINvXB1H_IB7Z_B7Y_IB2C_zEEBL_8try_folduNCINvNvBL_12try_for_each4calljB4R_NcNtB4R_5Break0E0B4R_E0B4M_E0E0B47_EB35_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store ptr %i.g, ptr %0, align 8, !alias.scope !10217
  %.val.i = load i32, ptr %i.b, align 4, !noalias !10218, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10218
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %.val.i.i = load ptr, ptr %i.f, align 8, !noalias !10219, !nonnull !5, !align !11, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i = load ptr, ptr %i.i, align 8, !noalias !10219, !nonnull !5, !align !11, !noundef !5
  call void @_RNvXs_NtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index22mutable_inverted_indexNtB4_20MutableInvertedIndexNtB6_13InvertedIndex15get_posting_len(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %.val.i.i, i32 noundef %.val.i, ptr noundef nonnull align 8 %.val1.i.i), !noalias !10219
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !noalias !10219 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !10219 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !10219 ; 3 uses
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, -1
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %2, align 8, !range !10, !alias.scope !10220, !noalias !10221, !noundef !5
  %i.k = icmp eq i64 %i.j, -1
  br i1 %i.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEEEB1q_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %2)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEEEB1q_.exit.i.i.i unwind label %bb.g, !noalias !10221

bb.e:                                             ; preds = %bb.b
  %i.l = trunc nuw i64 %.sroa.4.0.copyload.i.i to i1
  br i1 %i.l, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldRmINtNtBa_6result6ResultINtNtBa_6option6OptionjENtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2U_IB2U_jEEENCNvYNtNtNtNtNtNtB1R_5index11field_index15full_text_index14inverted_index22mutable_inverted_index20MutableInvertedIndexNtB3V_13InvertedIndex31estimate_has_subset_cardinality0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4ItermEB3M_EIB12_zB1L_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvXB6_IB6K_B6J_IB1o_zEEB7W_8try_folduNCINvNvB7W_12try_for_each4calljB3D_NcNtB3D_5Break0E0B3D_E0B3y_E0E0B1R_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i.i = load ptr, ptr %i.m, align 8, !noalias !10221, !nonnull !5, !noundef !5
  store i8 1, ptr %.val.i.i.i, align 1, !noalias !10221
  br label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldRmINtNtBa_6result6ResultINtNtBa_6option6OptionjENtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2U_IB2U_jEEENCNvYNtNtNtNtNtNtB1R_5index11field_index15full_text_index14inverted_index22mutable_inverted_index20MutableInvertedIndexNtB3V_13InvertedIndex31estimate_has_subset_cardinality0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4ItermEB3M_EIB12_zB1L_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvXB6_IB6K_B6J_IB1o_zEEB7W_8try_folduNCINvNvB7W_12try_for_each4calljB3D_NcNtB3D_5Break0E0B3D_E0B3y_E0E0B1R_.exit.i

bb.g:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0.copyload.i.i, ptr %2, align 8, !noalias !10221
  %.sroa.511.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.sroa.4.0.copyload.i.i, ptr %.sroa.511.0..8.val.sroa_idx.i.i.i, align 8, !noalias !10221
  %.sroa.614.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %.sroa.5.0.copyload.i.i, ptr %.sroa.614.0..8.val.sroa_idx.i.i.i, align 8, !noalias !10221
  %.sroa.7.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7.0..8.val.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %i.h, i64 72, i1 false), !noalias !10219
  resume { ptr, i32 } %i.n

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEEEB1q_.exit.i.i.i: ; preds = %bb.d, %bb.c
  store i64 %.sroa.0.0.copyload.i.i, ptr %2, align 8, !noalias !10221
  %.sroa.511.0..8.val.sroa_idx12.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.sroa.4.0.copyload.i.i, ptr %.sroa.511.0..8.val.sroa_idx12.i.i.i, align 8, !noalias !10221
  %.sroa.614.0..8.val.sroa_idx15.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %.sroa.5.0.copyload.i.i, ptr %.sroa.614.0..8.val.sroa_idx15.i.i.i, align 8, !noalias !10221
  %.sroa.7.0..8.val.sroa_idx17.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7.0..8.val.sroa_idx17.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %i.h, i64 72, i1 false), !noalias !10219
  br label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldRmINtNtBa_6result6ResultINtNtBa_6option6OptionjENtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2U_IB2U_jEEENCNvYNtNtNtNtNtNtB1R_5index11field_index15full_text_index14inverted_index22mutable_inverted_index20MutableInvertedIndexNtB3V_13InvertedIndex31estimate_has_subset_cardinality0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4ItermEB3M_EIB12_zB1L_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvXB6_IB6K_B6J_IB1o_zEEB7W_8try_folduNCINvNvB7W_12try_for_each4calljB3D_NcNtB3D_5Break0E0B3D_E0B3y_E0E0B1R_.exit.i

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldRmINtNtBa_6result6ResultINtNtBa_6option6OptionjENtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2U_IB2U_jEEENCNvYNtNtNtNtNtNtB1R_5index11field_index15full_text_index14inverted_index22mutable_inverted_index20MutableInvertedIndexNtB3V_13InvertedIndex31estimate_has_subset_cardinality0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4ItermEB3M_EIB12_zB1L_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvXB6_IB6K_B6J_IB1o_zEEB7W_8try_folduNCINvNvB7W_12try_for_each4calljB3D_NcNtB3D_5Break0E0B3D_E0B3y_E0E0B1R_.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEEEB1q_.exit.i.i.i, %bb.f, %bb.e
  %.sroa.4.1.i.i.i = phi i64 [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEEEB1q_.exit.i.i.i ], [ undef, %bb.f ], [ %.sroa.5.0.copyload.i.i, %bb.e ]
  %.sroa.0.1.i.i.i = phi i64 [ 2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEEEB1q_.exit.i.i.i ], [ 0, %bb.f ], [ 1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10218
  br label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldRmINtNtBa_6result6ResultINtNtBa_6option6OptionjENtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB48_IB48_jEEENCNvYNtNtNtNtNtNtB35_5index11field_index15full_text_index14inverted_index22mutable_inverted_index20MutableInvertedIndexNtB59_13InvertedIndex31estimate_has_subset_cardinality0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B50_EIB2g_zB2Z_EEBL_8try_folduNCINvXB1H_IB7Z_B7Y_IB2C_zEEBL_8try_folduNCINvNvBL_12try_for_each4calljB4R_NcNtB4R_5Break0E0B4R_E0B4M_E0E0B47_EB35_.exit

_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldRmINtNtBa_6result6ResultINtNtBa_6option6OptionjENtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB48_IB48_jEEENCNvYNtNtNtNtNtNtB35_5index11field_index15full_text_index14inverted_index22mutable_inverted_index20MutableInvertedIndexNtB59_13InvertedIndex31estimate_has_subset_cardinality0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B50_EIB2g_zB2Z_EEBL_8try_folduNCINvXB1H_IB7Z_B7Y_IB2C_zEEBL_8try_folduNCINvNvBL_12try_for_each4calljB4R_NcNtB4R_5Break0E0B4R_E0B4M_E0E0B47_EB35_.exit: ; preds = %bb.a, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldRmINtNtBa_6result6ResultINtNtBa_6option6OptionjENtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2U_IB2U_jEEENCNvYNtNtNtNtNtNtB1R_5index11field_index15full_text_index14inverted_index22mutable_inverted_index20MutableInvertedIndexNtB3V_13InvertedIndex31estimate_has_subset_cardinality0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4ItermEB3M_EIB12_zB1L_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvXB6_IB6K_B6J_IB1o_zEEB7W_8try_folduNCINvNvB7W_12try_for_each4calljB3D_NcNtB3D_5Break0E0B3D_E0B3y_E0E0B1R_.exit.i
  %.sroa.3.0.i = phi i64 [ %.sroa.4.1.i.i.i, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldRmINtNtBa_6result6ResultINtNtBa_6option6OptionjENtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2U_IB2U_jEEENCNvYNtNtNtNtNtNtB1R_5index11field_index15full_text_index14inverted_index22mutable_inverted_index20MutableInvertedIndexNtB3V_13InvertedIndex31estimate_has_subset_cardinality0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4ItermEB3M_EIB12_zB1L_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvXB6_IB6K_B6J_IB1o_zEEB7W_8try_folduNCINvNvB7W_12try_for_each4calljB3D_NcNtB3D_5Break0E0B3D_E0B3y_E0E0B1R_.exit.i ], [ undef, %bb.a ]
  %.sroa.0.0.i = phi i64 [ %.sroa.0.1.i.i.i, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldRmINtNtBa_6result6ResultINtNtBa_6option6OptionjENtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2U_IB2U_jEEENCNvYNtNtNtNtNtNtB1R_5index11field_index15full_text_index14inverted_index22mutable_inverted_index20MutableInvertedIndexNtB3V_13InvertedIndex31estimate_has_subset_cardinality0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4ItermEB3M_EIB12_zB1L_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvXB6_IB6K_B6J_IB1o_zEEB7W_8try_folduNCINvNvB7W_12try_for_each4calljB3D_NcNtB3D_5Break0E0B3D_E0B3y_E0E0B1R_.exit.i ], [ -1, %bb.a ]
  %i.o = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.p = insertvalue { i64, i64 } %i.o, i64 %.sroa.3.0.i, 1
  ret { i64, i64 } %i.p
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4ItermENCNvYNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index22on_disk_inverted_index19OnDiskInvertedIndexNtB1y_13InvertedIndex31estimate_has_subset_cardinality0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultzNtNtNtB1G_6common15operation_error14OperationErrorEEB4v_8try_folduNCINvXB8_IB5n_B5m_INtNtBc_6option6OptionzEEB4v_8try_folduNCINvNvB4v_12try_for_each4calljINtNtNtBc_3ops12control_flow11ControlFlowjENcNtB8A_5Break0E0B8A_E0IB8B_B8A_EE0IB8B_B9E_EEB1G_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias nofree noundef align 8 dereferenceable(96) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10233)
  %i.b = load ptr, ptr %0, align 8, !alias.scope !10234, !nonnull !5, !noundef !5 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !10234, !nonnull !5, !noundef !5
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldRmINtNtBa_6result6ResultINtNtBa_6option6OptionjENtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB48_IB48_jEEENCNvYNtNtNtNtNtNtB35_5index11field_index15full_text_index14inverted_index22on_disk_inverted_index19OnDiskInvertedIndexNtB59_13InvertedIndex31estimate_has_subset_cardinality0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B50_EIB2g_zB2Z_EEBL_8try_folduNCINvXB1H_IB7Y_B7X_IB2C_zEEBL_8try_folduNCINvNvBL_12try_for_each4calljB4R_NcNtB4R_5Break0E0B4R_E0B4M_E0E0B47_EB35_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store ptr %i.g, ptr %0, align 8, !alias.scope !10234
  %.val.i = load i32, ptr %i.b, align 4, !noalias !10235, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10235
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %.val.i.i = load ptr, ptr %i.f, align 8, !noalias !10236, !nonnull !5, !align !11, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i = load ptr, ptr %i.i, align 8, !noalias !10236, !nonnull !5, !align !11, !noundef !5
  call void @_RNvXs1_NtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index22on_disk_inverted_indexNtB5_19OnDiskInvertedIndexNtB7_13InvertedIndex15get_posting_lenBf_(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(480) %.val.i.i, i32 noundef %.val.i, ptr noundef nonnull align 8 %.val1.i.i), !noalias !10236
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !noalias !10236 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !10236 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !10236 ; 3 uses
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, -1
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %2, align 8, !range !10, !alias.scope !10237, !noalias !10238, !noundef !5
end_hunk_3
