Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.183?download=true
inline.NumInlined: 575
inline.NumDeleted: 203
begin_hunk_0_@_RNvXs0_NtCsgoPClq0H8JF_9actix_web5scopeINtB5_5ScopeINtNtCs519D4kX01I1_13actix_service9transform14ApplyTransformNtNtNtB7_10middleware15default_headers14DefaultHeadersNtB5_13ScopeEndpointNtNtB7_7service14ServiceRequestEENtB2Z_18HttpServiceFactory8registerCsl8OoimOLbh_6qdrant:bb.a
bb.cn:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs519D4kX01I1_13actix_service9transform14ApplyTransformNtNtNtCsgoPClq0H8JF_9actix_web10middleware15default_headers14DefaultHeadersNtNtB1F_5scope13ScopeEndpointNtNtB1F_7service14ServiceRequestEECsl8OoimOLbh_6qdrant.exit
  br i1 %.sroa.027.0101144, label %bb.co, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6EFb6a2W5dE_10actix_http10extensions10ExtensionsEECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6EFb6a2W5dE_10actix_http10extensions10ExtensionsEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.co, %bb.cp, %bb.cn
  br i1 %.sroa.028.099146, label %bb.cr, label %bb.cq

bb.co:                                            ; preds = %bb.cn
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ha = load ptr, ptr %i.gz, align 8, !alias.scope !1170, !noundef !6
  %i.hb = icmp eq ptr %i.ha, null
  br i1 %i.hb, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6EFb6a2W5dE_10actix_http10extensions10ExtensionsEECsl8OoimOLbh_6qdrant.exit, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtBR_3AnyEL_EEENtNtNtBT_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.gz)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6EFb6a2W5dE_10actix_http10extensions10ExtensionsEECsl8OoimOLbh_6qdrant.exit unwind label %bb.by

bb.cq:                                            ; preds = %bb.cr, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6EFb6a2W5dE_10actix_http10extensions10ExtensionsEECsl8OoimOLbh_6qdrant.exit
  %i.hc = trunc nuw i8 %.sroa.015.0105142 to i1
  br i1 %i.hc, label %bb.ct, label %bb.cs

bb.cr:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6EFb6a2W5dE_10actix_http10extensions10ExtensionsEECsl8OoimOLbh_6qdrant.exit
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_5boxed3BoxDNtNtCsgoPClq0H8JF_9actix_web7service17AppServiceFactoryEL_EEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.hd) #18
          to label %bb.cq unwind label %bb.by

bb.cs:                                            ; preds = %bb.ct, %bb.cq
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCslWa2ydkAqSs_12actix_router8resource11ResourceDefEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.he) #18
          to label %bb.cu unwind label %bb.by

bb.ct:                                            ; preds = %bb.cq
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_5boxed3BoxDNtNtCsgoPClq0H8JF_9actix_web5guard5GuardEL_EEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.hf) #18
          to label %bb.cs unwind label %bb.by

bb.cu:                                            ; preds = %bb.cs
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1171)
  call void @llvm.experimental.noalias.scope.decl(metadata !1172)
  %i.hh = load ptr, ptr %i.hg, align 8, !alias.scope !1173, !nonnull !6, !noundef !6 ; 2 uses
  %i.hi = load i64, ptr %i.hh, align 8, !noalias !1173, !noundef !6
  %i.hj = add i64 %i.hi, -1                       ; 2 uses
  store i64 %i.hj, ptr %i.hh, align 8, !noalias !1173
  %i.hk = icmp eq i64 %i.hj, 0
  br i1 %i.hk, label %bb.cv, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcINtNtB4_4cell7RefCellINtNtB4_6option6OptionNtNtCsgoPClq0H8JF_9actix_web5scope12ScopeFactoryEEEECsl8OoimOLbh_6qdrant.exit

bb.cv:                                            ; preds = %bb.cu
  invoke void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcINtNtCskKLDkoKarTP_4core4cell7RefCellINtNtBI_6option6OptionNtNtCsgoPClq0H8JF_9actix_web5scope12ScopeFactoryEEE9drop_slowB1E_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.hg) #21
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcINtNtB4_4cell7RefCellINtNtB4_6option6OptionNtNtCsgoPClq0H8JF_9actix_web5scope12ScopeFactoryEEEECsl8OoimOLbh_6qdrant.exit unwind label %bb.by
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_dropINtB5_17AbortOnDropHandleINtNtCskKLDkoKarTP_4core6option6OptionTNtNtNtCsPYQCUnoTxQ_10collection10operations5types11ShardStatusNtB1X_16OptimizersStatusEEENtNtNtB1n_6future6future6Future4pollCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6option6OptionTNtNtNtCsPYQCUnoTxQ_10collection10operations5types11ShardStatusNtB1K_16OptimizersStatusEEENtNtNtB1a_6future6future6Future4pollCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_dropINtB5_17AbortOnDropHandleINtNtCskKLDkoKarTP_4core6option6OptionyEENtNtNtB1n_6future6future6Future4pollCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6option6OptionyEENtNtNtB1a_6future6future6Future4pollCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_dropINtB5_17AbortOnDropHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtB1n_6option6OptionNtNtCs607s0NAIaWN_7segment7segment7SegmentENtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorEENtNtNtB1n_6future6future6Future4pollCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([560 x i8]) align 8 captures(none) dereferenceable(560) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtB1a_6option6OptionNtNtCs607s0NAIaWN_7segment7segment7SegmentENtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorEENtNtNtB1a_6future6future6Future4pollCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([560 x i8]) align 8 captures(none) dereferenceable(560) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_dropINtB5_17AbortOnDropHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtB1n_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtNtCsgGgPqgSfnMH_7storage15content_manager6errors12StorageErrorEENtNtNtB1n_6future6future6Future4pollCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtB1a_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtNtCsgGgPqgSfnMH_7storage15content_manager6errors12StorageErrorEENtNtNtB1a_6future6future6Future4pollCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_dropINtB5_17AbortOnDropHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointENtNtNtB2v_6common15operation_error14OperationErrorEENtNtNtB1n_6future6future6Future4pollCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointENtNtNtB2i_6common15operation_error14OperationErrorEENtNtNtB1a_6future6future6Future4pollCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_dropINtB5_17AbortOnDropHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtNtNtB2v_6common15operation_error14OperationErrorEENtNtNtB1n_6future6future6Future4pollCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtNtNtB2i_6common15operation_error14OperationErrorEENtNtNtB1a_6future6future6Future4pollCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_dropINtB5_17AbortOnDropHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgGgPqgSfnMH_7storage5audit10AuditEventENtNtNtB2v_15content_manager6errors12StorageErrorEENtNtNtB1n_6future6future6Future4pollCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgGgPqgSfnMH_7storage5audit10AuditEventENtNtNtB2i_15content_manager6errors12StorageErrorEENtNtNtB1a_6future6future6Future4pollCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_dropINtB5_17AbortOnDropHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtCsyIGusAaLFh_5ahash8hash_map8AHashMapNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNtNtNtB2E_10data_types14segment_record16SegmentRecordRawENtNtNtB2E_6common15operation_error14OperationErrorEENtNtNtB1n_6future6future6Future4pollCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtCsyIGusAaLFh_5ahash8hash_map8AHashMapNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNtNtNtB2r_10data_types14segment_record16SegmentRecordRawENtNtNtB2r_6common15operation_error14OperationErrorEENtNtNtB1a_6future6future6Future4pollCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_dropINtB5_17AbortOnDropHandleINtNtCskKLDkoKarTP_4core6result6ResultNtNtCs607s0NAIaWN_7segment5types9SizeStatsNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorEENtNtNtB1n_6future6future6Future4pollCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([136 x i8]) align 8 captures(none) dereferenceable(136) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultNtNtCs607s0NAIaWN_7segment5types9SizeStatsNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorEENtNtNtB1a_6future6future6Future4pollCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([136 x i8]) align 8 captures(none) dereferenceable(136) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_dropINtB5_17AbortOnDropHandleINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCs5QaNqjAn6vc_5shard9snapshots17snapshot_manifest16SnapshotManifestNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEENtNtNtB1n_6future6future6Future4pollCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCs5QaNqjAn6vc_5shard9snapshots17snapshot_manifest16SnapshotManifestNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEENtNtNtB1a_6future6future6Future4pollCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_dropINtB5_17AbortOnDropHandleINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationNtNtNtB20_6common15operation_error14OperationErrorEENtNtNtB1n_6future6future6Future4pollCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationNtNtNtB1N_6common15operation_error14OperationErrorEENtNtNtB1a_6future6future6Future4pollCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_dropINtB5_17AbortOnDropHandleINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCsPYQCUnoTxQ_10collection10operations5types16OptimizersStatusNtB1W_15CollectionErrorEENtNtNtB1n_6future6future6Future4pollCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCsPYQCUnoTxQ_10collection10operations5types16OptimizersStatusNtB1J_15CollectionErrorEENtNtNtB1a_6future6future6Future4pollCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_dropINtB5_17AbortOnDropHandleINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21collections_telemetry20CollectionsTelemetryNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorEENtNtNtB1n_6future6future6Future4pollB22_(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21collections_telemetry20CollectionsTelemetryNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorEENtNtNtB1a_6future6future6Future4pollB1P_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_dropINtB5_17AbortOnDropHandleINtNtCskKLDkoKarTP_4core6result6ResultTINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment9telemetry16SegmentTelemetryEINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtB20_6string6StringjEENtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorEENtNtNtB1n_6future6future6Future4pollCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultTINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment9telemetry16SegmentTelemetryEINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtB1N_6string6StringjEENtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorEENtNtNtB1a_6future6future6Future4pollCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_dropINtB5_17AbortOnDropHandleINtNtCskKLDkoKarTP_4core6result6ResultjNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEENtNtNtB1n_6future6future6Future4pollCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultjNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEENtNtNtB1a_6future6future6Future4pollCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_dropINtB5_17AbortOnDropHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorEENtNtNtB1n_6future6future6Future4pollCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorEENtNtNtB1a_6future6future6Future4pollCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_dropINtB5_17AbortOnDropHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtCsgGgPqgSfnMH_7storage15content_manager6errors12StorageErrorEENtNtNtB1n_6future6future6Future4pollCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtCsgGgPqgSfnMH_7storage15content_manager6errors12StorageErrorEENtNtNtB1a_6future6future6Future4pollCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_dropINtB5_17AbortOnDropHandleTjjjEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleTjjjEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_dropINtB5_17AbortOnDropHandlebENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandlebENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_dropINtB5_17AbortOnDropHandlejENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandlejENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_7sources4once4OnceINtNtBe_6result6ResultlNtCs2L9szKvfIY4_11procfs_core9ProcErrorEENtB4_13SpecAdvanceBy15spec_advance_byCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 6 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter7sources4once4OnceINtNtBc_6result6ResultlNtCs2L9szKvfIY4_11procfs_core9ProcErrorEENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB1U_10advance_byB3_NtB3e_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB2B_EECsl8OoimOLbh_6qdrant.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1195)
  %.promoted.i = load i64, ptr %0, align 8, !alias.scope !1196 ; 5 uses
  store i64 -2, ptr %0, align 8, !alias.scope !1197
  %.not35.i = icmp eq i64 %.promoted.i, -2
  br i1 %.not35.i, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter7sources4once4OnceINtNtBc_6result6ResultlNtCs2L9szKvfIY4_11procfs_core9ProcErrorEENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB1U_10advance_byB3_NtB3e_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB2B_EECsl8OoimOLbh_6qdrant.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %.sroa.7.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 21 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.f = add i64 %1, -1                           ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1198)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1195
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx7.i, i64 40, i1 false)
  store i64 %1, ptr %i.b, align 8, !noalias !1195
  store i64 %.promoted.i, ptr %i.c, align 8, !noalias !1195
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1200)
  %i.g = icmp eq i64 %.promoted.i, -1
  br i1 %i.g, label %_RNCNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBe_7sources4once4OnceINtNtBg_6result6ResultlNtCs2L9szKvfIY4_11procfs_core9ProcErrorEENtB6_13SpecAdvanceBy15spec_advance_by0Csl8OoimOLbh_6qdrant.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1201)
  %i.h = xor i64 %.promoted.i, -9223372036854775808
  %i.i = icmp slt i64 %.promoted.i, 0
  %i.j = select i1 %i.i, i64 %i.h, i64 5
  switch i64 %i.j, label %bb.d [
    i64 0, label %bb.g
    i64 1, label %bb.k
    i64 2, label %bb.o
    i64 3, label %bb.s
    i64 4, label %bb.v
  ]

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %_RNCNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBe_7sources4once4OnceINtNtBg_6result6ResultlNtCs2L9szKvfIY4_11procfs_core9ProcErrorEENtB6_13SpecAdvanceBy15spec_advance_by0Csl8OoimOLbh_6qdrant.exit.sink.split.i unwind label %bb.e, !noalias !1195

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %common.resume.i.i.i.i unwind label %bb.f, !noalias !1195

bb.f:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !1195
  unreachable

common.resume.i.i.i.i:                            ; preds = %bb.ab, %bb.y, %bb.w, %bb.q, %bb.m, %bb.i, %bb.e
  %common.resume.op.i.i.i.i = phi { ptr, i32 } [ %i.aj, %bb.ab ], [ %i.k, %bb.e ], [ %i.o, %bb.i ], [ %i.s, %bb.m ], [ %i.w, %bb.q ], [ %i.ae, %bb.w ], [ %i.ag, %bb.y ]
  resume { ptr, i32 } %common.resume.op.i.i.i.i

bb.g:                                             ; preds = %bb.c
  %i.m = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !range !12, !alias.scope !1202, !noalias !1195, !noundef !6
  %i.n = icmp eq i64 %i.m, -1
  br i1 %i.n, label %_RNCNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBe_7sources4once4OnceINtNtBg_6result6ResultlNtCs2L9szKvfIY4_11procfs_core9ProcErrorEENtB6_13SpecAdvanceBy15spec_advance_by0Csl8OoimOLbh_6qdrant.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i)
          to label %_RNCNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBe_7sources4once4OnceINtNtBg_6result6ResultlNtCs2L9szKvfIY4_11procfs_core9ProcErrorEENtB6_13SpecAdvanceBy15spec_advance_by0Csl8OoimOLbh_6qdrant.exit.sink.split.i unwind label %bb.i, !noalias !1195

bb.i:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i)
          to label %common.resume.i.i.i.i unwind label %bb.j, !noalias !1195

bb.j:                                             ; preds = %bb.i
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !1195
  unreachable

bb.k:                                             ; preds = %bb.c
  %i.q = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !range !12, !alias.scope !1203, !noalias !1195, !noundef !6
  %i.r = icmp eq i64 %i.q, -1
  br i1 %i.r, label %_RNCNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBe_7sources4once4OnceINtNtBg_6result6ResultlNtCs2L9szKvfIY4_11procfs_core9ProcErrorEENtB6_13SpecAdvanceBy15spec_advance_by0Csl8OoimOLbh_6qdrant.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i)
          to label %_RNCNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBe_7sources4once4OnceINtNtBg_6result6ResultlNtCs2L9szKvfIY4_11procfs_core9ProcErrorEENtB6_13SpecAdvanceBy15spec_advance_by0Csl8OoimOLbh_6qdrant.exit.sink.split.i unwind label %bb.m, !noalias !1195

bb.m:                                             ; preds = %bb.l
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i)
          to label %common.resume.i.i.i.i unwind label %bb.n, !noalias !1195

bb.n:                                             ; preds = %bb.m
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !1195
  unreachable

bb.o:                                             ; preds = %bb.c
  %i.u = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !range !12, !alias.scope !1204, !noalias !1195, !noundef !6
  %i.v = icmp eq i64 %i.u, -1
  br i1 %i.v, label %_RNCNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBe_7sources4once4OnceINtNtBg_6result6ResultlNtCs2L9szKvfIY4_11procfs_core9ProcErrorEENtB6_13SpecAdvanceBy15spec_advance_by0Csl8OoimOLbh_6qdrant.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i)
          to label %_RNCNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBe_7sources4once4OnceINtNtBg_6result6ResultlNtCs2L9szKvfIY4_11procfs_core9ProcErrorEENtB6_13SpecAdvanceBy15spec_advance_by0Csl8OoimOLbh_6qdrant.exit.sink.split.i unwind label %bb.q, !noalias !1195

bb.q:                                             ; preds = %bb.p
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i)
          to label %common.resume.i.i.i.i unwind label %bb.r, !noalias !1195

bb.r:                                             ; preds = %bb.q
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !1195
  unreachable

bb.s:                                             ; preds = %bb.c
  %.val.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !1205, !noalias !1195, !nonnull !6, !noundef !6 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1206
  %i.y = ptrtoint ptr %.val.i.i.i.i to i64        ; 2 uses
  %i.z = and i64 %i.y, 3
  switch i64 %i.z, label %default.unreachable [
    i64 2, label %bb.z
    i64 3, label %bb.t
    i64 0, label %bb.z
    i64 1, label %bb.u
  ], !prof !13

default.unreachable:                              ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.aa = icmp ult ptr %.val.i.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.ab = and i64 %i.y, 1095216660480
  %i.ac = icmp ne i64 %i.ab, 1095216660480
  tail call void @llvm.assume(i1 %i.aa)
  tail call void @llvm.assume(i1 %i.ac)
  br label %bb.z

bb.u:                                             ; preds = %bb.s
  %i.ad = getelementptr i8, ptr %.val.i.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ad) ]
  store ptr %i.ad, ptr %i.e, align 8, !alias.scope !1207, !noalias !1206
  store i8 3, ptr %i.a, align 8, !alias.scope !1207, !noalias !1206
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.z unwind label %bb.y, !noalias !1206

bb.v:                                             ; preds = %bb.c
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i)
          to label %_RNCNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBe_7sources4once4OnceINtNtBg_6result6ResultlNtCs2L9szKvfIY4_11procfs_core9ProcErrorEENtB6_13SpecAdvanceBy15spec_advance_by0Csl8OoimOLbh_6qdrant.exit.sink.split.i unwind label %bb.w, !noalias !1195

bb.w:                                             ; preds = %bb.v
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i)
          to label %common.resume.i.i.i.i unwind label %bb.x, !noalias !1195

bb.x:                                             ; preds = %bb.w
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !1195
  unreachable

bb.y:                                             ; preds = %bb.u
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i) #18
          to label %common.resume.i.i.i.i unwind label %bb.ad, !noalias !1195

bb.z:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1206
  %i.ah = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !range !12, !alias.scope !1208, !noalias !1195, !noundef !6
  %i.ai = icmp eq i64 %i.ah, -1
  br i1 %i.ai, label %_RNCNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBe_7sources4once4OnceINtNtBg_6result6ResultlNtCs2L9szKvfIY4_11procfs_core9ProcErrorEENtB6_13SpecAdvanceBy15spec_advance_by0Csl8OoimOLbh_6qdrant.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i)
          to label %_RNCNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBe_7sources4once4OnceINtNtBg_6result6ResultlNtCs2L9szKvfIY4_11procfs_core9ProcErrorEENtB6_13SpecAdvanceBy15spec_advance_by0Csl8OoimOLbh_6qdrant.exit.sink.split.i unwind label %bb.ab, !noalias !1195

bb.ab:                                            ; preds = %bb.aa
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i)
          to label %common.resume.i.i.i.i unwind label %bb.ac, !noalias !1195

bb.ac:                                            ; preds = %bb.ab
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !1195
  unreachable

bb.ad:                                            ; preds = %bb.y
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !1195
  unreachable

_RNCNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBe_7sources4once4OnceINtNtBg_6result6ResultlNtCs2L9szKvfIY4_11procfs_core9ProcErrorEENtB6_13SpecAdvanceBy15spec_advance_by0Csl8OoimOLbh_6qdrant.exit.sink.split.i: ; preds = %bb.aa, %bb.v, %bb.p, %bb.l, %bb.h, %bb.d
  %.sink.i = phi ptr [ %.sroa.5.0..sroa_idx.i, %bb.v ], [ %i.c, %bb.d ], [ %.sroa.5.0..sroa_idx.i, %bb.h ], [ %.sroa.5.0..sroa_idx.i, %bb.l ], [ %.sroa.5.0..sroa_idx.i, %bb.p ], [ %.sroa.5.0..sroa_idx.i, %bb.aa ]
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sink.i), !noalias !1195
  br label %_RNCNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBe_7sources4once4OnceINtNtBg_6result6ResultlNtCs2L9szKvfIY4_11procfs_core9ProcErrorEENtB6_13SpecAdvanceBy15spec_advance_by0Csl8OoimOLbh_6qdrant.exit.i

_RNCNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBe_7sources4once4OnceINtNtBg_6result6ResultlNtCs2L9szKvfIY4_11procfs_core9ProcErrorEENtB6_13SpecAdvanceBy15spec_advance_by0Csl8OoimOLbh_6qdrant.exit.i: ; preds = %_RNCNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBe_7sources4once4OnceINtNtBg_6result6ResultlNtCs2L9szKvfIY4_11procfs_core9ProcErrorEENtB6_13SpecAdvanceBy15spec_advance_by0Csl8OoimOLbh_6qdrant.exit.sink.split.i, %bb.z, %bb.o, %bb.k, %bb.g, %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1195
  %i.am = icmp eq i64 %i.f, 0
  br i1 %i.am, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter7sources4once4OnceINtNtBc_6result6ResultlNtCs2L9szKvfIY4_11procfs_core9ProcErrorEENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB1U_10advance_byB3_NtB3e_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB2B_EECsl8OoimOLbh_6qdrant.exit, label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %_RNCNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBe_7sources4once4OnceINtNtBg_6result6ResultlNtCs2L9szKvfIY4_11procfs_core9ProcErrorEENtB6_13SpecAdvanceBy15spec_advance_by0Csl8OoimOLbh_6qdrant.exit.i
  store i64 -2, ptr %0, align 8, !alias.scope !1197
  br label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter7sources4once4OnceINtNtBc_6result6ResultlNtCs2L9szKvfIY4_11procfs_core9ProcErrorEENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB1U_10advance_byB3_NtB3e_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB2B_EECsl8OoimOLbh_6qdrant.exit

_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter7sources4once4OnceINtNtBc_6result6ResultlNtCs2L9szKvfIY4_11procfs_core9ProcErrorEENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB1U_10advance_byB3_NtB3e_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB2B_EECsl8OoimOLbh_6qdrant.exit: ; preds = %._crit_edge.loopexit.i, %_RNCNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBe_7sources4once4OnceINtNtBg_6result6ResultlNtCs2L9szKvfIY4_11procfs_core9ProcErrorEENtB6_13SpecAdvanceBy15spec_advance_by0Csl8OoimOLbh_6qdrant.exit.i, %bb.b, %bb.a
  %.sroa.0.1 = phi i64 [ 0, %bb.a ], [ %i.f, %._crit_edge.loopexit.i ], [ %1, %bb.b ], [ 0, %_RNCNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBe_7sources4once4OnceINtNtBg_6result6ResultlNtCs2L9szKvfIY4_11procfs_core9ProcErrorEENtB6_13SpecAdvanceBy15spec_advance_by0Csl8OoimOLbh_6qdrant.exit.i ]
  ret i64 %.sroa.0.1
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !6
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCskKLDkoKarTP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvYNtNtCsPYQCUnoTxQ_10collection10collection17CollectionVersionNtNtCslmvYCXbQjWR_6common15storage_version14StorageVersion4saveCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 16               ; 4 uses
  %i.f = alloca [56 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RINvMs16_NtCsG258MDvU3F_3std4pathNtB7_4Path4joinReECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @121, i64 noundef 12)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RINvMs1_Cs8tedoDvp06o_12atomicwritesNtB6_10AtomicFile3newRNtNtCsG258MDvU3F_3std4path7PathBufECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g, i1 noundef zeroext false)
          to label %bb.e unwind label %bb.c

bb.b:                                             ; preds = %.body, %bb.c
  %.pn = phi { ptr, i32 } [ %i.h, %bb.c ], [ %eh.lpad-body, %.body ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #18
          to label %common.resume unwind label %bb.q

bb.c:                                             ; preds = %bb.m, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.k, %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.h, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.i, %bb.d ], [ %i.o, %bb.h ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs8tedoDvp06o_12atomicwrites10AtomicFileECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(56) %i.f) #18
          to label %bb.b unwind label %bb.q

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i128 79537652246452167413109620736, ptr %i.e, align 16
  %i.j = invoke { i64, ptr } @_RINvMs1_Cs8tedoDvp06o_12atomicwritesNtB6_10AtomicFile18write_with_optionsuNtNtNtCskKLDkoKarTP_4core2io5error5ErrorNCNvYNtNtCsPYQCUnoTxQ_10collection10collection17CollectionVersionNtNtCslmvYCXbQjWR_6common15storage_version14StorageVersion4save0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @120, i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.e)
          to label %bb.f unwind label %bb.d       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.k = extractvalue { i64, ptr } %i.j, 0        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.not = icmp eq i64 %i.k, 2
  br i1 %.not, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = extractvalue { i64, ptr } %i.j, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %i.k, ptr %i.d, align 8, !noalias !1213
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr %i.l, ptr %i.m, align 8, !noalias !1213
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1213
  store ptr %i.g, ptr %i.b, align 8, !noalias !1213
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsG_NtCsG258MDvU3F_3std4pathNtB5_7PathBufNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !1213
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.d, ptr %i.n, align 8, !noalias !1213
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXs_Cs8tedoDvp06o_12atomicwritesINtB4_5ErrorNtNtNtCskKLDkoKarTP_4core2io5error5ErrorENtNtBO_3fmt7Display3fmtCsl8OoimOLbh_6qdrant, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !1213
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @114, ptr noundef nonnull %i.b)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.h

bb.h:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsl8OoimOLbh_6qdrant.exit.i, %bb.g
  %i.o = landingpad { ptr, i32 }
          cleanup
  %.val12.i = load ptr, ptr %i.m, align 8, !noalias !1213, !nonnull !6, !noundef !6
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs8tedoDvp06o_12atomicwrites5ErrorNtNtNtB4_2io5error5ErrorEECsl8OoimOLbh_6qdrant(ptr nonnull %.val12.i) #18
          to label %.body unwind label %bb.l

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1213
  %i.p = invoke noundef nonnull ptr @_RINvMNtNtCsexYYUdYSQU6_5alloc2io5errorNtNtNtCskKLDkoKarTP_4core2io5error5Error3newNtNtB7_6string6StringECs3zYKyHJHYqN_14rustls_pemfile(i8 noundef 42, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %bb.i unwind label %bb.h

bb.i:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsl8OoimOLbh_6qdrant.exit.i
  %.val11.i = load ptr, ptr %i.m, align 8, !noalias !1213, !nonnull !6, !noundef !6 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1213
  %i.q = ptrtoint ptr %.val11.i to i64            ; 2 uses
  %i.r = and i64 %i.q, 3
  switch i64 %i.r, label %default.unreachable [
    i64 2, label %_RNCNvYNtNtCsPYQCUnoTxQ_10collection10collection17CollectionVersionNtNtCslmvYCXbQjWR_6common15storage_version14StorageVersion4saves_0Csl8OoimOLbh_6qdrant.exit
    i64 3, label %bb.j
    i64 0, label %_RNCNvYNtNtCsPYQCUnoTxQ_10collection10collection17CollectionVersionNtNtCslmvYCXbQjWR_6common15storage_version14StorageVersion4saves_0Csl8OoimOLbh_6qdrant.exit
    i64 1, label %bb.k
  ], !prof !13

default.unreachable:                              ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.s = icmp ult ptr %.val11.i, inttoptr (i64 188978561024 to ptr)
  %i.t = and i64 %i.q, 1095216660480
  %i.u = icmp ne i64 %i.t, 1095216660480
  call void @llvm.assume(i1 %i.s)
  call void @llvm.assume(i1 %i.u)
  br label %_RNCNvYNtNtCsPYQCUnoTxQ_10collection10collection17CollectionVersionNtNtCslmvYCXbQjWR_6common15storage_version14StorageVersion4saves_0Csl8OoimOLbh_6qdrant.exit

bb.k:                                             ; preds = %bb.i
  %i.v = getelementptr i8, ptr %.val11.i, i64 -1  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.v) ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.v, ptr %i.w, align 8, !alias.scope !1214, !noalias !1213
  store i8 3, ptr %i.a, align 8, !alias.scope !1214, !noalias !1213
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.w)
          to label %_RNCNvYNtNtCsPYQCUnoTxQ_10collection10collection17CollectionVersionNtNtCslmvYCXbQjWR_6common15storage_version14StorageVersion4saves_0Csl8OoimOLbh_6qdrant.exit unwind label %bb.d

bb.l:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RNCNvYNtNtCsPYQCUnoTxQ_10collection10collection17CollectionVersionNtNtCslmvYCXbQjWR_6common15storage_version14StorageVersion4saves_0Csl8OoimOLbh_6qdrant.exit: ; preds = %bb.k, %bb.i, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.m

bb.m:                                             ; preds = %_RNCNvYNtNtCsPYQCUnoTxQ_10collection10collection17CollectionVersionNtNtCslmvYCXbQjWR_6common15storage_version14StorageVersion4saves_0Csl8OoimOLbh_6qdrant.exit, %bb.f
  %.sroa.0.0 = phi ptr [ null, %bb.f ], [ %i.p, %_RNCNvYNtNtCsPYQCUnoTxQ_10collection10collection17CollectionVersionNtNtCslmvYCXbQjWR_6common15storage_version14StorageVersion4saves_0Csl8OoimOLbh_6qdrant.exit ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs8tedoDvp06o_12atomicwrites10AtomicFileECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(56) %i.f)
          to label %bb.n unwind label %bb.c

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECsl8OoimOLbh_6qdrant.exit unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %common.resume unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.o
  %common.resume.op = phi { ptr, i32 } [ %i.y, %bb.o ], [ %.pn, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.n
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret ptr %.sroa.0.0

bb.q:                                             ; preds = %.body, %bb.b
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query18CollectionPrefetchNtNtB8_12verification22StrictModeVerification19check_request_exactCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(552) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(296) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 293
  %i.b = load i8, ptr %i.a, align 1, !range !19, !noundef !6
  tail call void @_RNvNtNtCsPYQCUnoTxQ_10collection10operations12verification14check_bool_opt(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, i8 noundef 2, i8 noundef %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @122, i64 noundef 12, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @123, i64 noundef 5)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query18CollectionPrefetchNtNtB8_12verification22StrictModeVerification20check_request_filterCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 8)) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(552) %1, ptr noundef nonnull align 8 %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(296) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !range !14, !alias.scope !1217, !noundef !6
  %.not.i = icmp eq i64 %i.c, -2
  %..i = select i1 %.not.i, ptr null, ptr %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 291
  %i.e = load i8, ptr %i.d, align 1, !range !19, !noundef !6
  call fastcc void @_RNCNvYNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query18CollectionPrefetchNtNtBa_12verification22StrictModeVerification20check_request_filter0Csl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.a, ptr nonnull %2, ptr nonnull %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(104) %..i, i8 noundef %i.e) #23
  %i.f = load i64, ptr %i.a, align 8, !range !18, !noundef !6
  %.not = icmp eq i64 %i.f, -1
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 -1, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  ret void

bb.d:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query18CollectionPrefetchNtNtB8_12verification22StrictModeVerification25check_request_query_limitCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(552) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(296) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 544
  %.val = load i64, ptr %i.a, align 8, !noundef !6
  %i.b = load i64, ptr %2, align 8, !range !10, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8
  tail call void @_RINvNtNtCsPYQCUnoTxQ_10collection10operations12verification15check_limit_optjECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, i64 noundef 1, i64 %.val, i64 noundef %i.b, i64 %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @124, i64 noundef 5)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query22CollectionQueryRequestNtNtB8_12verification22StrictModeVerification19check_request_exactCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(616) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(296) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 293
  %i.b = load i8, ptr %i.a, align 1, !range !19, !noundef !6
  tail call void @_RNvNtNtCsPYQCUnoTxQ_10collection10operations12verification14check_bool_opt(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, i8 noundef 2, i8 noundef %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @122, i64 noundef 12, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @123, i64 noundef 5)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query22CollectionQueryRequestNtNtB8_12verification22StrictModeVerification20check_request_filterCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 8)) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(616) %1, ptr noundef nonnull align 8 %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(296) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 376 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !range !14, !alias.scope !1220, !noundef !6
  %.not.i = icmp eq i64 %i.c, -2
  %..i = select i1 %.not.i, ptr null, ptr %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 291
  %i.e = load i8, ptr %i.d, align 1, !range !19, !noundef !6
  call fastcc void @_RNCNvYNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query22CollectionQueryRequestNtNtBa_12verification22StrictModeVerification20check_request_filter0Csl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.a, ptr nonnull %2, ptr nonnull %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(104) %..i, i8 noundef %i.e) #23
  %i.f = load i64, ptr %i.a, align 8, !range !18, !noundef !6
  %.not = icmp eq i64 %i.f, -1
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 -1, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  ret void

bb.d:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query22CollectionQueryRequestNtNtB8_12verification22StrictModeVerification25check_request_query_limitCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(616) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(296) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 600
  %.val = load i64, ptr %i.a, align 8, !noundef !6
  %i.b = load i64, ptr %2, align 8, !range !10, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8
  tail call void @_RINvNtNtCsPYQCUnoTxQ_10collection10operations12verification15check_limit_optjECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, i64 noundef 1, i64 %.val, i64 noundef %i.b, i64 %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @124, i64 noundef 5)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query28CollectionQueryGroupsRequestNtNtB8_12verification22StrictModeVerification19check_request_exactCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(744) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(296) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 293
  %i.b = load i8, ptr %i.a, align 1, !range !19, !noundef !6
  tail call void @_RNvNtNtCsPYQCUnoTxQ_10collection10operations12verification14check_bool_opt(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, i8 noundef 2, i8 noundef %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @122, i64 noundef 12, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @123, i64 noundef 5)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query28CollectionQueryGroupsRequestNtNtB8_12verification22StrictModeVerification20check_request_filterCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 8)) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(744) %1, ptr noundef nonnull align 8 %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(296) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 504 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !range !14, !alias.scope !1223, !noundef !6
  %.not.i = icmp eq i64 %i.c, -2
  %..i = select i1 %.not.i, ptr null, ptr %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 291
  %i.e = load i8, ptr %i.d, align 1, !range !19, !noundef !6
  call fastcc void @_RNCNvYNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query28CollectionQueryGroupsRequestNtNtBa_12verification22StrictModeVerification20check_request_filter0Csl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.a, ptr nonnull %2, ptr nonnull %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(104) %..i, i8 noundef %i.e) #23
  %i.f = load i64, ptr %i.a, align 8, !range !18, !noundef !6
  %.not = icmp eq i64 %i.f, -1
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 -1, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  ret void

bb.d:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query28CollectionQueryGroupsRequestNtNtB8_12verification22StrictModeVerification25check_request_query_limitCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(744) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(296) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 728
  %.val = load i64, ptr %i.a, align 8, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 736
  %.val1 = load i64, ptr %i.b, align 8, !noundef !6
  %i.c = mul i64 %.val1, %.val
  %i.d = load i64, ptr %2, align 8, !range !10, !noundef !6
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8
  tail call void @_RINvNtNtCsPYQCUnoTxQ_10collection10operations12verification15check_limit_optjECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, i64 noundef 1, i64 %i.c, i64 noundef %i.d, i64 %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @124, i64 noundef 5)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNvNtCsi5QhzQpov3h_11actix_files9directory17directory_listingINtNtNtCskKLDkoKarTP_4core3ops8function2FnTRNtB4_9DirectoryRNtNtCsgoPClq0H8JF_9actix_web7request11HttpRequestEE4callCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias nofree nonnull readonly captures(none) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %3) unnamed_addr #2 {
bb.a:
  tail call void @_RNvNtCsi5QhzQpov3h_11actix_files9directory17directory_listing(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %3)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNvNtCsi5QhzQpov3h_11actix_files9directory17directory_listingINtNtNtCskKLDkoKarTP_4core3ops8function5FnMutTRNtB4_9DirectoryRNtNtCsgoPClq0H8JF_9actix_web7request11HttpRequestEE8call_mutCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias nofree nonnull readnone captures(none) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %3) unnamed_addr #2 {
bb.a:
  tail call void @_RNvNtCsi5QhzQpov3h_11actix_files9directory17directory_listing(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %3)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXs1_NtCs519D4kX01I1_13actix_service5boxedINtB5_14FactoryWrapperINtNtB7_5apply12ApplyFactoryINtNtB7_9transform14ApplyTransformNtNtNtCsgoPClq0H8JF_9actix_web10middleware15default_headers14DefaultHeadersNtNtB28_5scope13ScopeEndpointNtNtB28_7service14ServiceRequestENCNvXs0_B3h_INtB3h_5ScopeB1u_ENtB3K_18HttpServiceFactory8registers1_0B3I_B3I_NtB3K_15ServiceResponseNtNtNtB28_5error5error5ErrorEEINtB7_14ServiceFactoryB3I_E11new_serviceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXs1_NtCs519D4kX01I1_13actix_service5boxedINtB5_14FactoryWrapperINtNtB7_5apply12ApplyFactoryNtNtCsgoPClq0H8JF_9actix_web8resource16ResourceEndpointNCNvXs1_B1w_NtB1w_8ResourceNtNtB1y_7service18HttpServiceFactory8register0NtB2Q_14ServiceRequestB3y_NtB2Q_15ServiceResponseNtNtNtB1y_5error5error5ErrorEEINtB7_14ServiceFactoryB3y_E11new_serviceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i32 } @_RNvMNtNtCsPYQCUnoTxQ_10collection8problems15unindexed_fieldNtB2_14UnindexedField20slow_query_threshold() unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs607s0NAIaWN_7segment5types6FilterEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtB20_7flatten7FlattenINtNtB4_9into_iter8IntoIterINtNtB24_6option6OptionRBU_EEEEE9from_iterCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtCsjqcU1oJFKXj_9hashbrown3mapINtB2_7HashMapNtNtCs607s0NAIaWN_7segment9json_path8JsonPathNtNtBO_5types18PayloadFieldSchemaNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs931dBByOpY6_6issues6broker7publishNtNtCsPYQCUnoTxQ_10collection6events14SlowQueryEventECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(96)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs607s0NAIaWN_7segment5types6FilterEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtB20_7flatten7FlattenINtNtB20_3map3MapINtNtNtB24_5slice4iter4IterNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection6searchNtB4U_10Collection20do_core_search_batch0s0_0EEEE9from_iterCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsG258MDvU3F_3std2fs12canonicalizeRNtNtB4_4path4PathECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsG_NtCsG258MDvU3F_3std4pathNtB5_7PathBufNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs7A8gjpeJ2x1_3log13___private_api3loguNtB2_12GlobalLoggerECsl8OoimOLbh_6qdrant(ptr noundef nonnull, ptr noundef nonnull, i64 noundef range(i64 1, 6), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvMNtCskKLDkoKarTP_4core3stre16trim_end_matchescECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i32 noundef range(i32 0, 1114112)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i8 @_RNvXNtCsi5QhzQpov3h_11actix_files5namedNtB2_5FlagsNtNtCskKLDkoKarTP_4core7default7Default7default() unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtCsgoPClq0H8JF_9actix_web7serviceINtB5_21ServiceFactoryWrapperNtNtNtNtCsl8OoimOLbh_6qdrant5actix3api10issues_api10get_issuesENtB5_17AppServiceFactory8registerB1e_(ptr noalias nofree noundef dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtCsgoPClq0H8JF_9actix_web7serviceINtB5_21ServiceFactoryWrapperNtNtNtNtCsl8OoimOLbh_6qdrant5actix3api10issues_api12clear_issuesENtB5_17AppServiceFactory8registerB1e_(ptr noalias nofree noundef dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtCsgoPClq0H8JF_9actix_web7serviceINtB5_21ServiceFactoryWrapperNtNtNtNtCsl8OoimOLbh_6qdrant5actix3api10search_api13search_pointsENtB5_17AppServiceFactory8registerB1e_(ptr noalias nofree noundef dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtCsgoPClq0H8JF_9actix_web7serviceINtB5_21ServiceFactoryWrapperNtNtNtNtCsl8OoimOLbh_6qdrant5actix3api10search_api19batch_search_pointsENtB5_17AppServiceFactory8registerB1e_(ptr noalias nofree noundef dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtCsgoPClq0H8JF_9actix_web7serviceINtB5_21ServiceFactoryWrapperNtNtNtNtCsl8OoimOLbh_6qdrant5actix3api10search_api19search_point_groupsENtB5_17AppServiceFactory8registerB1e_(ptr noalias nofree noundef dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtCsgoPClq0H8JF_9actix_web7serviceINtB5_21ServiceFactoryWrapperNtNtNtNtCsl8OoimOLbh_6qdrant5actix3api10search_api26search_points_matrix_pairsENtB5_17AppServiceFactory8registerB1e_(ptr noalias nofree noundef dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtCsgoPClq0H8JF_9actix_web7serviceINtB5_21ServiceFactoryWrapperNtNtNtNtCsl8OoimOLbh_6qdrant5actix3api10search_api28search_points_matrix_offsetsENtB5_17AppServiceFactory8registerB1e_(ptr noalias nofree noundef dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtCsgoPClq0H8JF_9actix_web7serviceINtB5_21ServiceFactoryWrapperNtNtNtNtCsl8OoimOLbh_6qdrant5actix3api10shards_api15list_shard_keysENtB5_17AppServiceFactory8registerB1e_(ptr noalias nofree noundef dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtCsgoPClq0H8JF_9actix_web7serviceINtB5_21ServiceFactoryWrapperNtNtNtNtCsl8OoimOLbh_6qdrant5actix3api10shards_api16create_shard_keyENtB5_17AppServiceFactory8registerB1e_(ptr noalias nofree noundef dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtCsgoPClq0H8JF_9actix_web7serviceINtB5_21ServiceFactoryWrapperNtNtNtNtCsl8OoimOLbh_6qdrant5actix3api10shards_api16delete_shard_keyENtB5_17AppServiceFactory8registerB1e_(ptr noalias nofree noundef dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtCsgoPClq0H8JF_9actix_web7serviceINtB5_21ServiceFactoryWrapperNtNtNtNtCsl8OoimOLbh_6qdrant5actix3api10update_api11set_payloadENtB5_17AppServiceFactory8registerB1e_(ptr noalias nofree noundef dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtCsgoPClq0H8JF_9actix_web7serviceINtB5_21ServiceFactoryWrapperNtNtNtNtCsl8OoimOLbh_6qdrant5actix3api10update_api12update_batchENtB5_17AppServiceFactory8registerB1e_(ptr noalias nofree noundef dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtCsgoPClq0H8JF_9actix_web7serviceINtB5_21ServiceFactoryWrapperNtNtNtNtCsl8OoimOLbh_6qdrant5actix3api10update_api13clear_payloadENtB5_17AppServiceFactory8registerB1e_(ptr noalias nofree noundef dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtCsgoPClq0H8JF_9actix_web7serviceINtB5_21ServiceFactoryWrapperNtNtNtNtCsl8OoimOLbh_6qdrant5actix3api10update_api13delete_pointsENtB5_17AppServiceFactory8registerB1e_(ptr noalias nofree noundef dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtCsgoPClq0H8JF_9actix_web7serviceINtB5_21ServiceFactoryWrapperNtNtNtNtCsl8OoimOLbh_6qdrant5actix3api10update_api13upsert_pointsENtB5_17AppServiceFactory8registerB1e_(ptr noalias nofree noundef dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtCsgoPClq0H8JF_9actix_web7serviceINtB5_21ServiceFactoryWrapperNtNtNtNtCsl8OoimOLbh_6qdrant5actix3api10update_api14delete_payloadENtB5_17AppServiceFactory8registerB1e_(ptr noalias nofree noundef dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtCsgoPClq0H8JF_9actix_web7serviceINtB5_21ServiceFactoryWrapperNtNtNtNtCsl8OoimOLbh_6qdrant5actix3api10update_api14delete_vectorsENtB5_17AppServiceFactory8registerB1e_(ptr noalias nofree noundef dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtCsgoPClq0H8JF_9actix_web7serviceINtB5_21ServiceFactoryWrapperNtNtNtNtCsl8OoimOLbh_6qdrant5actix3api10update_api14update_vectorsENtB5_17AppServiceFactory8registerB1e_(ptr noalias nofree noundef dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtCsgoPClq0H8JF_9actix_web7serviceINtB5_21ServiceFactoryWrapperNtNtNtNtCsl8OoimOLbh_6qdrant5actix3api10update_api17overwrite_payloadENtB5_17AppServiceFactory8registerB1e_(ptr noalias nofree noundef dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtCsgoPClq0H8JF_9actix_web7serviceINtB5_21ServiceFactoryWrapperNtNtNtNtCsl8OoimOLbh_6qdrant5actix3api10update_api18create_field_indexENtB5_17AppServiceFactory8registerB1e_(ptr noalias nofree noundef dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtCsgoPClq0H8JF_9actix_web7serviceINtB5_21ServiceFactoryWrapperNtNtNtNtCsl8OoimOLbh_6qdrant5actix3api10update_api18delete_field_indexENtB5_17AppServiceFactory8registerB1e_(ptr noalias nofree noundef dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtCsgoPClq0H8JF_9actix_web7serviceINtB5_21ServiceFactoryWrapperNtNtNtNtCsl8OoimOLbh_6qdrant5actix3api11cluster_api11remove_peerENtB5_17AppServiceFactory8registerB1e_(ptr noalias nofree noundef dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtCsgoPClq0H8JF_9actix_web7serviceINtB5_21ServiceFactoryWrapperNtNtNtNtCsl8OoimOLbh_6qdrant5actix3api11cluster_api14cluster_statusENtB5_17AppServiceFactory8registerB1e_(ptr noalias nofree noundef dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtCsgoPClq0H8JF_9actix_web7serviceINtB5_21ServiceFactoryWrapperNtNtNtNtCsl8OoimOLbh_6qdrant5actix3api11cluster_api20recover_current_peerENtB5_17AppServiceFactory8registerB1e_(ptr noalias nofree noundef dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtCsgoPClq0H8JF_9actix_web7serviceINtB5_21ServiceFactoryWrapperNtNtNtNtCsl8OoimOLbh_6qdrant5actix3api11cluster_api21get_cluster_telemetryENtB5_17AppServiceFactory8registerB1e_(ptr noalias nofree noundef dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtCsgoPClq0H8JF_9actix_web7serviceINtB5_21ServiceFactoryWrapperNtNtNtNtCsl8OoimOLbh_6qdrant5actix3api11cluster_api24get_cluster_metadata_keyENtB5_17AppServiceFactory8registerB1e_(ptr noalias nofree noundef dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtCsgoPClq0H8JF_9actix_web7serviceINtB5_21ServiceFactoryWrapperNtNtNtNtCsl8OoimOLbh_6qdrant5actix3api11cluster_api25get_cluster_metadata_keysENtB5_17AppServiceFactory8registerB1e_(ptr noalias nofree noundef dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtCsgoPClq0H8JF_9actix_web7serviceINtB5_21ServiceFactoryWrapperNtNtNtNtCsl8OoimOLbh_6qdrant5actix3api11cluster_api27delete_cluster_metadata_keyENtB5_17AppServiceFactory8registerB1e_(ptr noalias nofree noundef dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
end_hunk_0
begin_hunk_1_@llvm.umax.i64
!979 = distinct !{!979, !978, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdZqrmKseQ0Z_14regex_automata6hybrid5regex5CacheEECsl8OoimOLbh_6qdrant: argument 0"}
!980 = !{!979}
!981 = distinct !{!981, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsdZqrmKseQ0Z_14regex_automata3nfa8thompson6pikevm5CacheEECsl8OoimOLbh_6qdrant"}
!982 = distinct !{!982, !981, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsdZqrmKseQ0Z_14regex_automata3nfa8thompson6pikevm5CacheEECsl8OoimOLbh_6qdrant: argument 0"}
!983 = !{!982}
!984 = distinct !{!984, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdZqrmKseQ0Z_14regex_automata3dfa7onepass5CacheEECsl8OoimOLbh_6qdrant"}
!985 = distinct !{!985, !984, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdZqrmKseQ0Z_14regex_automata3dfa7onepass5CacheEECsl8OoimOLbh_6qdrant: argument 0"}
!986 = !{!985}
!987 = distinct !{!987, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsdZqrmKseQ0Z_14regex_automata3nfa8thompson9backtrack5CacheEECsl8OoimOLbh_6qdrant"}
!988 = distinct !{!988, !987, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsdZqrmKseQ0Z_14regex_automata3nfa8thompson9backtrack5CacheEECsl8OoimOLbh_6qdrant: argument 0"}
!989 = !{!988}
!990 = distinct !{!990, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdZqrmKseQ0Z_14regex_automata6hybrid3dfa10StateSaverECsl8OoimOLbh_6qdrant"}
!991 = distinct !{!991, !990, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdZqrmKseQ0Z_14regex_automata6hybrid3dfa10StateSaverECsl8OoimOLbh_6qdrant: argument 0"}
!992 = distinct !{!992, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsdZqrmKseQ0Z_14regex_automata4util11determinize5state5StateECsl8OoimOLbh_6qdrant"}
!993 = distinct !{!993, !992, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsdZqrmKseQ0Z_14regex_automata4util11determinize5state5StateECsl8OoimOLbh_6qdrant: argument 0"}
!994 = distinct !{!994, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcShEECsl8OoimOLbh_6qdrant"}
!995 = distinct !{!995, !994, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcShEECsl8OoimOLbh_6qdrant: argument 0"}
!996 = distinct !{!996, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcShENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant"}
!997 = distinct !{!997, !996, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcShENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant: argument 0"}
!998 = distinct !{!998, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdZqrmKseQ0Z_14regex_automata6hybrid3dfa10StateSaverECsl8OoimOLbh_6qdrant"}
!999 = distinct !{!999, !998, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdZqrmKseQ0Z_14regex_automata6hybrid3dfa10StateSaverECsl8OoimOLbh_6qdrant: argument 0"}
!1000 = distinct !{!1000, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsdZqrmKseQ0Z_14regex_automata4util11determinize5state5StateECsl8OoimOLbh_6qdrant"}
!1001 = distinct !{!1001, !1000, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsdZqrmKseQ0Z_14regex_automata4util11determinize5state5StateECsl8OoimOLbh_6qdrant: argument 0"}
!1002 = distinct !{!1002, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcShEECsl8OoimOLbh_6qdrant"}
!1003 = distinct !{!1003, !1002, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcShEECsl8OoimOLbh_6qdrant: argument 0"}
!1004 = distinct !{!1004, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcShENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant"}
!1005 = distinct !{!1005, !1004, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcShENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant: argument 0"}
!1006 = !{!991}
!1007 = !{i32 0, i32 3}
!1008 = !{!993}
!1009 = !{!995}
!1010 = !{!997}
!1011 = !{!997, !995, !993, !991}
!1012 = !{!999}
!1013 = !{!1001}
!1014 = !{!1003}
!1015 = !{!1005}
!1016 = !{!1005, !1003, !1001, !999}
!1017 = distinct !{!1017, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB12_5boxed3BoxDNtNtCsgoPClq0H8JF_9actix_web5guard5GuardEL_EEEECsl8OoimOLbh_6qdrant"}
!1018 = distinct !{!1018, !1017, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB12_5boxed3BoxDNtNtCsgoPClq0H8JF_9actix_web5guard5GuardEL_EEEECsl8OoimOLbh_6qdrant: argument 0"}
!1019 = distinct !{!1019, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc2rc2RcNtNtCsgoPClq0H8JF_9actix_web4rmap11ResourceMapEEECsl8OoimOLbh_6qdrant"}
!1020 = distinct !{!1020, !1019, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc2rc2RcNtNtCsgoPClq0H8JF_9actix_web4rmap11ResourceMapEEECsl8OoimOLbh_6qdrant: argument 0"}
!1021 = distinct !{!1021, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtNtCsgoPClq0H8JF_9actix_web4rmap11ResourceMapEECsl8OoimOLbh_6qdrant"}
!1022 = distinct !{!1022, !1021, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtNtCsgoPClq0H8JF_9actix_web4rmap11ResourceMapEECsl8OoimOLbh_6qdrant: argument 0"}
!1023 = distinct !{!1023, i1 true, !"_RNvXsw_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcNtNtCsgoPClq0H8JF_9actix_web4rmap11ResourceMapENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant"}
!1024 = distinct !{!1024, !1023, !"_RNvXsw_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcNtNtCsgoPClq0H8JF_9actix_web4rmap11ResourceMapENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant: argument 0"}
!1025 = distinct !{!1025, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc2rc2RcNtNtCsgoPClq0H8JF_9actix_web4rmap11ResourceMapEEECsl8OoimOLbh_6qdrant"}
!1026 = distinct !{!1026, !1025, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc2rc2RcNtNtCsgoPClq0H8JF_9actix_web4rmap11ResourceMapEEECsl8OoimOLbh_6qdrant: argument 0"}
!1027 = distinct !{!1027, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtNtCsgoPClq0H8JF_9actix_web4rmap11ResourceMapEECsl8OoimOLbh_6qdrant"}
!1028 = distinct !{!1028, !1027, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtNtCsgoPClq0H8JF_9actix_web4rmap11ResourceMapEECsl8OoimOLbh_6qdrant: argument 0"}
!1029 = distinct !{!1029, i1 true, !"_RNvXsw_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcNtNtCsgoPClq0H8JF_9actix_web4rmap11ResourceMapENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant"}
!1030 = distinct !{!1030, !1029, !"_RNvXsw_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcNtNtCsgoPClq0H8JF_9actix_web4rmap11ResourceMapENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant: argument 0"}
!1031 = !{!1018}
!1032 = !{!1020}
!1033 = !{!1024, !1022, !1020}
!1034 = !{!1026}
!1035 = !{!1030, !1028, !1026}
!1036 = distinct !{!1036, i1 true, !"_RNCINvMs4_NtCs6TRFxdUibgW_9once_cell4syncINtB8_8OnceCellNtNtCsexYYUdYSQU6_5alloc6string6StringE11get_or_initNCNvMs9_B8_INtB8_4LazyBS_E5force0E0Csl8OoimOLbh_6qdrant"}
!1037 = distinct !{!1037, !1036, !"_RNCINvMs4_NtCs6TRFxdUibgW_9once_cell4syncINtB8_8OnceCellNtNtCsexYYUdYSQU6_5alloc6string6StringE11get_or_initNCNvMs9_B8_INtB8_4LazyBS_E5force0E0Csl8OoimOLbh_6qdrant: argument 0"}
!1038 = distinct !{!1038, i1 true, !"_RNCNvMs9_NtCs6TRFxdUibgW_9once_cell4syncINtB7_4LazyNtNtCsexYYUdYSQU6_5alloc6string6StringE5force0Csl8OoimOLbh_6qdrant"}
!1039 = distinct !{!1039, !1038, !"_RNCNvMs9_NtCs6TRFxdUibgW_9once_cell4syncINtB7_4LazyNtNtCsexYYUdYSQU6_5alloc6string6StringE5force0Csl8OoimOLbh_6qdrant: argument 0"}
!1040 = distinct !{null}
!1041 = distinct !{!1041, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant"}
!1042 = distinct !{!1042, !1041, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant: argument 0"}
!1043 = !{!1039, !1037}
!1044 = !{!1042}
!1045 = distinct !{!1045, i1 true, !"_RNCINvMs2_NtCs6TRFxdUibgW_9once_cell3impINtB8_8OnceCellNtNtCsexYYUdYSQU6_5alloc6string6StringE10initializeNCINvMs4_NtBa_4syncINtB1P_8OnceCellBR_E11get_or_initNCNvMs9_B1P_INtB1P_4LazyBR_E5force0E0NtNvMs4_B1P_IB20_pE11get_or_init4VoidE0Csl8OoimOLbh_6qdrant"}
!1046 = distinct !{!1046, !1045, !"_RNCINvMs2_NtCs6TRFxdUibgW_9once_cell3impINtB8_8OnceCellNtNtCsexYYUdYSQU6_5alloc6string6StringE10initializeNCINvMs4_NtBa_4syncINtB1P_8OnceCellBR_E11get_or_initNCNvMs9_B1P_INtB1P_4LazyBR_E5force0E0NtNvMs4_B1P_IB20_pE11get_or_init4VoidE0Csl8OoimOLbh_6qdrant: argument 0"}
!1047 = distinct !{!1047, i1 true, !"_RNCINvMs2_NtCs6TRFxdUibgW_9once_cell3impINtB8_8OnceCellNtNtCsexYYUdYSQU6_5alloc6string6StringE10initializeNCINvMs4_NtBa_4syncINtB1P_8OnceCellBR_E11get_or_initNCNvMs9_B1P_INtB1P_4LazyBR_E5force0E0NtNvMs4_B1P_IB20_pE11get_or_init4VoidE0Csl8OoimOLbh_6qdrant"}
!1048 = distinct !{!1048, !1047, !"_RNCINvMs2_NtCs6TRFxdUibgW_9once_cell3impINtB8_8OnceCellNtNtCsexYYUdYSQU6_5alloc6string6StringE10initializeNCINvMs4_NtBa_4syncINtB1P_8OnceCellBR_E11get_or_initNCNvMs9_B1P_INtB1P_4LazyBR_E5force0E0NtNvMs4_B1P_IB20_pE11get_or_init4VoidE0Csl8OoimOLbh_6qdrant: argument 0"}
!1049 = distinct !{!1049, i1 true, !"_RNCINvMs4_NtCs6TRFxdUibgW_9once_cell4syncINtB8_8OnceCellNtNtCsexYYUdYSQU6_5alloc6string6StringE11get_or_initNCNvMs9_B8_INtB8_4LazyBS_E5force0E0Csl8OoimOLbh_6qdrant"}
!1050 = distinct !{!1050, !1049, !"_RNCINvMs4_NtCs6TRFxdUibgW_9once_cell4syncINtB8_8OnceCellNtNtCsexYYUdYSQU6_5alloc6string6StringE11get_or_initNCNvMs9_B8_INtB8_4LazyBS_E5force0E0Csl8OoimOLbh_6qdrant: argument 0"}
!1051 = distinct !{!1051, i1 true, !"_RNCNvMs9_NtCs6TRFxdUibgW_9once_cell4syncINtB7_4LazyNtNtCsexYYUdYSQU6_5alloc6string6StringE5force0Csl8OoimOLbh_6qdrant"}
!1052 = distinct !{!1052, !1051, !"_RNCNvMs9_NtCs6TRFxdUibgW_9once_cell4syncINtB7_4LazyNtNtCsexYYUdYSQU6_5alloc6string6StringE5force0Csl8OoimOLbh_6qdrant: argument 0"}
!1053 = distinct !{null, ptr @_RNCINvMs2_NtCs6TRFxdUibgW_9once_cell3impINtB8_8OnceCellNtNtCsexYYUdYSQU6_5alloc6string6StringE10initializeNCINvMs4_NtBa_4syncINtB1P_8OnceCellBR_E11get_or_initNCNvMs9_B1P_INtB1P_4LazyBR_E5force0E0NtNvMs4_B1P_IB20_pE11get_or_init4VoidE0Csl8OoimOLbh_6qdrant, null}
!1054 = distinct !{!1054, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant"}
!1055 = distinct !{!1055, !1054, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant: argument 0"}
!1056 = !{!1046}
!1057 = !{!1048}
!1058 = !{!1052, !1050, !1048}
!1059 = !{!1055}
!1060 = distinct !{!1060, i1 true, !"_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslWa2ydkAqSs_12actix_router8resource11ResourceDefENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant"}
!1061 = distinct !{!1061, !1060, !"_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslWa2ydkAqSs_12actix_router8resource11ResourceDefENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant: argument 1"}
!1062 = distinct !{!1062, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcINtNtCs519D4kX01I1_13actix_service5boxed17BoxServiceFactoryuNtNtCsgoPClq0H8JF_9actix_web7service14ServiceRequestNtB26_15ServiceResponseNtNtNtB28_5error5error5ErroruEEECsl8OoimOLbh_6qdrant"}
!1063 = distinct !{!1063, !1062, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcINtNtCs519D4kX01I1_13actix_service5boxed17BoxServiceFactoryuNtNtCsgoPClq0H8JF_9actix_web7service14ServiceRequestNtB26_15ServiceResponseNtNtNtB28_5error5error5ErroruEEECsl8OoimOLbh_6qdrant: argument 0"}
!1064 = distinct !{!1064, i1 true, !"_RNvXsw_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcINtNtCs519D4kX01I1_13actix_service5boxed17BoxServiceFactoryuNtNtCsgoPClq0H8JF_9actix_web7service14ServiceRequestNtB1D_15ServiceResponseNtNtNtB1F_5error5error5ErroruEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant"}
!1065 = distinct !{!1065, !1064, !"_RNvXsw_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcINtNtCs519D4kX01I1_13actix_service5boxed17BoxServiceFactoryuNtNtCsgoPClq0H8JF_9actix_web7service14ServiceRequestNtB1D_15ServiceResponseNtNtNtB1F_5error5error5ErroruEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant: argument 0"}
!1066 = distinct !{!1066, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcINtNtCs519D4kX01I1_13actix_service5boxed17BoxServiceFactoryuNtNtCsgoPClq0H8JF_9actix_web7service14ServiceRequestNtB26_15ServiceResponseNtNtNtB28_5error5error5ErroruEEECsl8OoimOLbh_6qdrant"}
!1067 = distinct !{!1067, !1066, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcINtNtCs519D4kX01I1_13actix_service5boxed17BoxServiceFactoryuNtNtCsgoPClq0H8JF_9actix_web7service14ServiceRequestNtB26_15ServiceResponseNtNtNtB28_5error5error5ErroruEEECsl8OoimOLbh_6qdrant: argument 0"}
!1068 = distinct !{!1068, i1 true, !"_RNvXsw_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcINtNtCs519D4kX01I1_13actix_service5boxed17BoxServiceFactoryuNtNtCsgoPClq0H8JF_9actix_web7service14ServiceRequestNtB1D_15ServiceResponseNtNtNtB1F_5error5error5ErroruEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant"}
!1069 = distinct !{!1069, !1068, !"_RNvXsw_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcINtNtCs519D4kX01I1_13actix_service5boxed17BoxServiceFactoryuNtNtCsgoPClq0H8JF_9actix_web7service14ServiceRequestNtB1D_15ServiceResponseNtNtNtB1F_5error5error5ErroruEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant: argument 0"}
!1070 = distinct !{!1070, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgoPClq0H8JF_9actix_web5scope12ScopeFactoryEECsl8OoimOLbh_6qdrant"}
!1071 = distinct !{!1071, !1070, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgoPClq0H8JF_9actix_web5scope12ScopeFactoryEECsl8OoimOLbh_6qdrant: argument 0"}
!1072 = distinct !{!1072, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgoPClq0H8JF_9actix_web5scope12ScopeFactoryECsl8OoimOLbh_6qdrant"}
!1073 = distinct !{!1073, !1072, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgoPClq0H8JF_9actix_web5scope12ScopeFactoryECsl8OoimOLbh_6qdrant: argument 0"}
!1074 = distinct !{!1074, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcSTNtNtCslWa2ydkAqSs_12actix_router8resource11ResourceDefINtNtCs519D4kX01I1_13actix_service5boxed17BoxServiceFactoryuNtNtCsgoPClq0H8JF_9actix_web7service14ServiceRequestNtB30_15ServiceResponseNtNtNtB32_5error5error5ErroruEINtNtB4_4cell7RefCellINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtBG_5boxed3BoxDNtNtB32_5guard5GuardEL_EEEEEEECsl8OoimOLbh_6qdrant"}
!1075 = distinct !{!1075, !1074, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcSTNtNtCslWa2ydkAqSs_12actix_router8resource11ResourceDefINtNtCs519D4kX01I1_13actix_service5boxed17BoxServiceFactoryuNtNtCsgoPClq0H8JF_9actix_web7service14ServiceRequestNtB30_15ServiceResponseNtNtNtB32_5error5error5ErroruEINtNtB4_4cell7RefCellINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtBG_5boxed3BoxDNtNtB32_5guard5GuardEL_EEEEEEECsl8OoimOLbh_6qdrant: argument 0"}
!1076 = distinct !{!1076, i1 true, !"_RNvXsw_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcSTNtNtCslWa2ydkAqSs_12actix_router8resource11ResourceDefINtNtCs519D4kX01I1_13actix_service5boxed17BoxServiceFactoryuNtNtCsgoPClq0H8JF_9actix_web7service14ServiceRequestNtB2x_15ServiceResponseNtNtNtB2z_5error5error5ErroruEINtNtCskKLDkoKarTP_4core4cell7RefCellINtNtB4h_6option6OptionINtNtB7_3vec3VecINtNtB7_5boxed3BoxDNtNtB2z_5guard5GuardEL_EEEEEENtNtNtB4h_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant"}
!1077 = distinct !{!1077, !1076, !"_RNvXsw_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcSTNtNtCslWa2ydkAqSs_12actix_router8resource11ResourceDefINtNtCs519D4kX01I1_13actix_service5boxed17BoxServiceFactoryuNtNtCsgoPClq0H8JF_9actix_web7service14ServiceRequestNtB2x_15ServiceResponseNtNtNtB2z_5error5error5ErroruEINtNtCskKLDkoKarTP_4core4cell7RefCellINtNtB4h_6option6OptionINtNtB7_3vec3VecINtNtB7_5boxed3BoxDNtNtB2z_5guard5GuardEL_EEEEEENtNtNtB4h_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant: argument 0"}
!1078 = distinct !{!1078, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcINtNtCs519D4kX01I1_13actix_service5boxed17BoxServiceFactoryuNtNtCsgoPClq0H8JF_9actix_web7service14ServiceRequestNtB26_15ServiceResponseNtNtNtB28_5error5error5ErroruEEECsl8OoimOLbh_6qdrant"}
!1079 = distinct !{!1079, !1078, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcINtNtCs519D4kX01I1_13actix_service5boxed17BoxServiceFactoryuNtNtCsgoPClq0H8JF_9actix_web7service14ServiceRequestNtB26_15ServiceResponseNtNtNtB28_5error5error5ErroruEEECsl8OoimOLbh_6qdrant: argument 0"}
!1080 = distinct !{!1080, i1 true, !"_RNvXsw_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcINtNtCs519D4kX01I1_13actix_service5boxed17BoxServiceFactoryuNtNtCsgoPClq0H8JF_9actix_web7service14ServiceRequestNtB1D_15ServiceResponseNtNtNtB1F_5error5error5ErroruEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant"}
!1081 = distinct !{!1081, !1080, !"_RNvXsw_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcINtNtCs519D4kX01I1_13actix_service5boxed17BoxServiceFactoryuNtNtCsgoPClq0H8JF_9actix_web7service14ServiceRequestNtB1D_15ServiceResponseNtNtNtB1F_5error5error5ErroruEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant: argument 0"}
!1082 = distinct !{!1082, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcINtNtCs519D4kX01I1_13actix_service5boxed17BoxServiceFactoryuNtNtCsgoPClq0H8JF_9actix_web7service14ServiceRequestNtB26_15ServiceResponseNtNtNtB28_5error5error5ErroruEEECsl8OoimOLbh_6qdrant"}
!1083 = distinct !{!1083, !1082, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcINtNtCs519D4kX01I1_13actix_service5boxed17BoxServiceFactoryuNtNtCsgoPClq0H8JF_9actix_web7service14ServiceRequestNtB26_15ServiceResponseNtNtNtB28_5error5error5ErroruEEECsl8OoimOLbh_6qdrant: argument 0"}
!1084 = distinct !{!1084, i1 true, !"_RNvXsw_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcINtNtCs519D4kX01I1_13actix_service5boxed17BoxServiceFactoryuNtNtCsgoPClq0H8JF_9actix_web7service14ServiceRequestNtB1D_15ServiceResponseNtNtNtB1F_5error5error5ErroruEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant"}
!1085 = distinct !{!1085, !1084, !"_RNvXsw_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcINtNtCs519D4kX01I1_13actix_service5boxed17BoxServiceFactoryuNtNtCsgoPClq0H8JF_9actix_web7service14ServiceRequestNtB1D_15ServiceResponseNtNtNtB1F_5error5error5ErroruEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant: argument 0"}
!1086 = distinct !{!1086, i1 true, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_2rc7RcInnerNtNtCs6EFb6a2W5dE_10actix_http10extensions10ExtensionsEE3newCsl8OoimOLbh_6qdrant"}
!1087 = distinct !{!1087, !1086, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_2rc7RcInnerNtNtCs6EFb6a2W5dE_10actix_http10extensions10ExtensionsEE3newCsl8OoimOLbh_6qdrant: argument 0"}
!1088 = distinct !{!1088, i1 true, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_2rc7RcInnerNtNtCsgoPClq0H8JF_9actix_web4rmap11ResourceMapEE3newCsl8OoimOLbh_6qdrant"}
!1089 = distinct !{!1089, !1088, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_2rc7RcInnerNtNtCsgoPClq0H8JF_9actix_web4rmap11ResourceMapEE3newCsl8OoimOLbh_6qdrant: argument 0"}
!1090 = distinct !{!1090, i1 true, !"_RINvMNtCsgoPClq0H8JF_9actix_web6configNtB3_10AppService16register_serviceINtNtCs519D4kX01I1_13actix_service5apply12ApplyFactoryINtNtB1e_9transform14ApplyTransformNtNtNtB5_10middleware15default_headers14DefaultHeadersNtNtB5_5scope13ScopeEndpointNtNtB5_7service14ServiceRequestENCNvXs0_B3u_INtB3u_5ScopeB21_ENtB3W_18HttpServiceFactory8registers1_0B3U_B3U_NtB3W_15ServiceResponseNtNtNtB5_5error5error5ErrorEB19_ECsl8OoimOLbh_6qdrant"}
!1091 = distinct !{!1091, !1090, !"_RINvMNtCsgoPClq0H8JF_9actix_web6configNtB3_10AppService16register_serviceINtNtCs519D4kX01I1_13actix_service5apply12ApplyFactoryINtNtB1e_9transform14ApplyTransformNtNtNtB5_10middleware15default_headers14DefaultHeadersNtNtB5_5scope13ScopeEndpointNtNtB5_7service14ServiceRequestENCNvXs0_B3u_INtB3u_5ScopeB21_ENtB3W_18HttpServiceFactory8registers1_0B3U_B3U_NtB3W_15ServiceResponseNtNtNtB5_5error5error5ErrorEB19_ECsl8OoimOLbh_6qdrant: argument 0"}
!1092 = distinct !{!1092, !1090, !"_RINvMNtCsgoPClq0H8JF_9actix_web6configNtB3_10AppService16register_serviceINtNtCs519D4kX01I1_13actix_service5apply12ApplyFactoryINtNtB1e_9transform14ApplyTransformNtNtNtB5_10middleware15default_headers14DefaultHeadersNtNtB5_5scope13ScopeEndpointNtNtB5_7service14ServiceRequestENCNvXs0_B3u_INtB3u_5ScopeB21_ENtB3W_18HttpServiceFactory8registers1_0B3U_B3U_NtB3W_15ServiceResponseNtNtNtB5_5error5error5ErrorEB19_ECsl8OoimOLbh_6qdrant: argument 2"}
!1093 = distinct !{!1093, !1090, !"_RINvMNtCsgoPClq0H8JF_9actix_web6configNtB3_10AppService16register_serviceINtNtCs519D4kX01I1_13actix_service5apply12ApplyFactoryINtNtB1e_9transform14ApplyTransformNtNtNtB5_10middleware15default_headers14DefaultHeadersNtNtB5_5scope13ScopeEndpointNtNtB5_7service14ServiceRequestENCNvXs0_B3u_INtB3u_5ScopeB21_ENtB3W_18HttpServiceFactory8registers1_0B3U_B3U_NtB3W_15ServiceResponseNtNtNtB5_5error5error5ErrorEB19_ECsl8OoimOLbh_6qdrant: argument 1"}
!1094 = distinct !{!1094, i1 true, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtCslWa2ydkAqSs_12actix_router8resource11ResourceDefINtNtCs519D4kX01I1_13actix_service5boxed17BoxServiceFactoryuNtNtCsgoPClq0H8JF_9actix_web7service14ServiceRequestNtB2y_15ServiceResponseNtNtNtB2A_5error5error5ErroruEINtNtCskKLDkoKarTP_4core6option6OptionIBw_INtNtB7_5boxed3BoxDNtNtB2A_5guard5GuardEL_EEEIB4e_INtNtB7_2rc2RcNtNtB2A_4rmap11ResourceMapEEEE8push_mutCsl8OoimOLbh_6qdrant"}
!1095 = distinct !{!1095, !1094, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtCslWa2ydkAqSs_12actix_router8resource11ResourceDefINtNtCs519D4kX01I1_13actix_service5boxed17BoxServiceFactoryuNtNtCsgoPClq0H8JF_9actix_web7service14ServiceRequestNtB2y_15ServiceResponseNtNtNtB2A_5error5error5ErroruEINtNtCskKLDkoKarTP_4core6option6OptionIBw_INtNtB7_5boxed3BoxDNtNtB2A_5guard5GuardEL_EEEIB4e_INtNtB7_2rc2RcNtNtB2A_4rmap11ResourceMapEEEE8push_mutCsl8OoimOLbh_6qdrant: argument 0"}
!1096 = distinct !{!1096, !1094, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtCslWa2ydkAqSs_12actix_router8resource11ResourceDefINtNtCs519D4kX01I1_13actix_service5boxed17BoxServiceFactoryuNtNtCsgoPClq0H8JF_9actix_web7service14ServiceRequestNtB2y_15ServiceResponseNtNtNtB2A_5error5error5ErroruEINtNtCskKLDkoKarTP_4core6option6OptionIBw_INtNtB7_5boxed3BoxDNtNtB2A_5guard5GuardEL_EEEIB4e_INtNtB7_2rc2RcNtNtB2A_4rmap11ResourceMapEEEE8push_mutCsl8OoimOLbh_6qdrant: argument 1"}
!1097 = distinct !{!1097, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc2rc2RcNtNtCsgoPClq0H8JF_9actix_web4rmap11ResourceMapEEECsl8OoimOLbh_6qdrant"}
!1098 = distinct !{!1098, !1097, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc2rc2RcNtNtCsgoPClq0H8JF_9actix_web4rmap11ResourceMapEEECsl8OoimOLbh_6qdrant: argument 0"}
!1099 = distinct !{!1099, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtNtCsgoPClq0H8JF_9actix_web4rmap11ResourceMapEECsl8OoimOLbh_6qdrant"}
!1100 = distinct !{!1100, !1099, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtNtCsgoPClq0H8JF_9actix_web4rmap11ResourceMapEECsl8OoimOLbh_6qdrant: argument 0"}
!1101 = distinct !{!1101, i1 true, !"_RNvXsw_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcNtNtCsgoPClq0H8JF_9actix_web4rmap11ResourceMapENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant"}
!1102 = distinct !{!1102, !1101, !"_RNvXsw_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcNtNtCsgoPClq0H8JF_9actix_web4rmap11ResourceMapENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant: argument 0"}
!1103 = distinct !{!1103, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcINtNtB4_4cell7RefCellINtNtB4_6option6OptionNtNtCsgoPClq0H8JF_9actix_web5scope12ScopeFactoryEEEECsl8OoimOLbh_6qdrant"}
!1104 = distinct !{!1104, !1103, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcINtNtB4_4cell7RefCellINtNtB4_6option6OptionNtNtCsgoPClq0H8JF_9actix_web5scope12ScopeFactoryEEEECsl8OoimOLbh_6qdrant: argument 0"}
!1105 = distinct !{!1105, i1 true, !"_RNvXsw_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcINtNtCskKLDkoKarTP_4core4cell7RefCellINtNtBI_6option6OptionNtNtCsgoPClq0H8JF_9actix_web5scope12ScopeFactoryEEENtNtNtBI_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant"}
!1106 = distinct !{!1106, !1105, !"_RNvXsw_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcINtNtCskKLDkoKarTP_4core4cell7RefCellINtNtBI_6option6OptionNtNtCsgoPClq0H8JF_9actix_web5scope12ScopeFactoryEEENtNtNtBI_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant: argument 0"}
!1107 = distinct !{!1107, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcINtNtB4_4cell7RefCellINtNtB4_6option6OptionNtNtCsgoPClq0H8JF_9actix_web5scope12ScopeFactoryEEEECsl8OoimOLbh_6qdrant"}
!1108 = distinct !{!1108, !1107, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcINtNtB4_4cell7RefCellINtNtB4_6option6OptionNtNtCsgoPClq0H8JF_9actix_web5scope12ScopeFactoryEEEECsl8OoimOLbh_6qdrant: argument 0"}
!1109 = distinct !{!1109, i1 true, !"_RNvXsw_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcINtNtCskKLDkoKarTP_4core4cell7RefCellINtNtBI_6option6OptionNtNtCsgoPClq0H8JF_9actix_web5scope12ScopeFactoryEEENtNtNtBI_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant"}
!1110 = distinct !{!1110, !1109, !"_RNvXsw_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcINtNtCskKLDkoKarTP_4core4cell7RefCellINtNtBI_6option6OptionNtNtCsgoPClq0H8JF_9actix_web5scope12ScopeFactoryEEENtNtNtBI_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant: argument 0"}
!1111 = distinct !{!1111, i1 true, !"_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslWa2ydkAqSs_12actix_router8resource11ResourceDefENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant"}
!1112 = distinct !{!1112, !1111, !"_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslWa2ydkAqSs_12actix_router8resource11ResourceDefENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant: argument 1:h.rot"}
!1113 = distinct !{!1113, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcINtNtCs519D4kX01I1_13actix_service5boxed17BoxServiceFactoryuNtNtCsgoPClq0H8JF_9actix_web7service14ServiceRequestNtB26_15ServiceResponseNtNtNtB28_5error5error5ErroruEEECsl8OoimOLbh_6qdrant"}
!1114 = distinct !{!1114, !1113, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcINtNtCs519D4kX01I1_13actix_service5boxed17BoxServiceFactoryuNtNtCsgoPClq0H8JF_9actix_web7service14ServiceRequestNtB26_15ServiceResponseNtNtNtB28_5error5error5ErroruEEECsl8OoimOLbh_6qdrant: argument 0"}
!1115 = distinct !{!1115, i1 true, !"_RNvXsw_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcINtNtCs519D4kX01I1_13actix_service5boxed17BoxServiceFactoryuNtNtCsgoPClq0H8JF_9actix_web7service14ServiceRequestNtB1D_15ServiceResponseNtNtNtB1F_5error5error5ErroruEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant"}
!1116 = distinct !{!1116, !1115, !"_RNvXsw_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcINtNtCs519D4kX01I1_13actix_service5boxed17BoxServiceFactoryuNtNtCsgoPClq0H8JF_9actix_web7service14ServiceRequestNtB1D_15ServiceResponseNtNtNtB1F_5error5error5ErroruEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant: argument 0"}
!1117 = distinct !{!1117, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs519D4kX01I1_13actix_service9transform14ApplyTransformNtNtNtCsgoPClq0H8JF_9actix_web10middleware15default_headers14DefaultHeadersNtNtB1F_5scope13ScopeEndpointNtNtB1F_7service14ServiceRequestEECsl8OoimOLbh_6qdrant"}
!1118 = distinct !{!1118, !1117, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs519D4kX01I1_13actix_service9transform14ApplyTransformNtNtNtCsgoPClq0H8JF_9actix_web10middleware15default_headers14DefaultHeadersNtNtB1F_5scope13ScopeEndpointNtNtB1F_7service14ServiceRequestEECsl8OoimOLbh_6qdrant: argument 0"}
!1119 = distinct !{!1119, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcTNtNtNtCsgoPClq0H8JF_9actix_web10middleware15default_headers14DefaultHeadersNtNtB1d_5scope13ScopeEndpointEEECsl8OoimOLbh_6qdrant"}
!1120 = distinct !{!1120, !1119, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcTNtNtNtCsgoPClq0H8JF_9actix_web10middleware15default_headers14DefaultHeadersNtNtB1d_5scope13ScopeEndpointEEECsl8OoimOLbh_6qdrant: argument 0"}
!1121 = distinct !{!1121, i1 true, !"_RNvXsw_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcTNtNtNtCsgoPClq0H8JF_9actix_web10middleware15default_headers14DefaultHeadersNtNtBK_5scope13ScopeEndpointEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant"}
!1122 = distinct !{!1122, !1121, !"_RNvXsw_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcTNtNtNtCsgoPClq0H8JF_9actix_web10middleware15default_headers14DefaultHeadersNtNtBK_5scope13ScopeEndpointEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant: argument 0"}
!1123 = distinct !{!1123, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6EFb6a2W5dE_10actix_http10extensions10ExtensionsEECsl8OoimOLbh_6qdrant"}
!1124 = distinct !{!1124, !1123, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6EFb6a2W5dE_10actix_http10extensions10ExtensionsEECsl8OoimOLbh_6qdrant: argument 0"}
!1125 = distinct !{!1125, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcINtNtB4_4cell7RefCellINtNtB4_6option6OptionNtNtCsgoPClq0H8JF_9actix_web5scope12ScopeFactoryEEEECsl8OoimOLbh_6qdrant"}
!1126 = distinct !{!1126, !1125, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcINtNtB4_4cell7RefCellINtNtB4_6option6OptionNtNtCsgoPClq0H8JF_9actix_web5scope12ScopeFactoryEEEECsl8OoimOLbh_6qdrant: argument 0"}
!1127 = distinct !{!1127, i1 true, !"_RNvXsw_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcINtNtCskKLDkoKarTP_4core4cell7RefCellINtNtBI_6option6OptionNtNtCsgoPClq0H8JF_9actix_web5scope12ScopeFactoryEEENtNtNtBI_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant"}
!1128 = distinct !{!1128, !1127, !"_RNvXsw_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcINtNtCskKLDkoKarTP_4core4cell7RefCellINtNtBI_6option6OptionNtNtCsgoPClq0H8JF_9actix_web5scope12ScopeFactoryEEENtNtNtBI_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant: argument 0"}
!1129 = !{!1061}
!1130 = !{!1063}
!1131 = !{!1065}
!1132 = !{!1065, !1063}
!1133 = !{!1067}
!1134 = !{!1069}
!1135 = !{!1069, !1067}
!1136 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!1137 = !{!1071}
!1138 = !{!1073}
!1139 = !{!1077, !1075, !1073, !1071}
!1140 = !{!1079}
!1141 = !{!1081}
!1142 = !{!1081, !1079, !1073, !1071}
!1143 = !{!1081, !1079}
!1144 = !{!1083}
!1145 = !{!1085}
!1146 = !{!1085, !1083, !1073, !1071}
!1147 = !{!1085, !1083}
!1148 = !{!1087}
!1149 = !{!1089}
!1150 = !{!1091}
!1151 = !{!1091, !1093, !1092}
!1152 = !{!1091, !1092}
!1153 = !{!1091, !1093}
!1154 = !{!1095, !1091}
!1155 = !{!1096, !1093, !1092}
!1156 = !{!1093, !1092}
!1157 = !{!1102, !1100, !1098, !1091, !1093, !1092}
!1158 = !{!1104}
!1159 = !{!1106}
!1160 = !{!1106, !1104}
!1161 = !{!1108}
!1162 = !{!1110}
!1163 = !{!1110, !1108}
!1164 = !{!1112}
!1165 = !{!1116, !1114}
!1166 = !{!1118}
!1167 = !{!1120}
!1168 = !{!1122}
!1169 = !{!1122, !1120, !1118}
!1170 = !{!1124}
!1171 = !{!1126}
!1172 = !{!1128}
!1173 = !{!1128, !1126}
!1174 = distinct !{!1174, i1 true, !"_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter7sources4once4OnceINtNtBc_6result6ResultlNtCs2L9szKvfIY4_11procfs_core9ProcErrorEENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB1U_10advance_byB3_NtB3e_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB2B_EECsl8OoimOLbh_6qdrant"}
!1175 = distinct !{!1175, !1174, !"_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter7sources4once4OnceINtNtBc_6result6ResultlNtCs2L9szKvfIY4_11procfs_core9ProcErrorEENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB1U_10advance_byB3_NtB3e_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB2B_EECsl8OoimOLbh_6qdrant: argument 0"}
!1176 = distinct !{!1176, i1 true, !"_RNvXNtNtNtCskKLDkoKarTP_4core4iter7sources4onceINtB2_4OnceINtNtB8_6result6ResultlNtCs2L9szKvfIY4_11procfs_core9ProcErrorEENtNtNtB6_6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant"}
!1177 = distinct !{!1177, !1176, !"_RNvXNtNtNtCskKLDkoKarTP_4core4iter7sources4onceINtB2_4OnceINtNtB8_6result6ResultlNtCs2L9szKvfIY4_11procfs_core9ProcErrorEENtNtNtB6_6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant: argument 0"}
!1178 = distinct !{!1178, !1176, !"_RNvXNtNtNtCskKLDkoKarTP_4core4iter7sources4onceINtB2_4OnceINtNtB8_6result6ResultlNtCs2L9szKvfIY4_11procfs_core9ProcErrorEENtNtNtB6_6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant: argument 1"}
!1179 = distinct !{!1179, i1 true, !"_RNCNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBe_7sources4once4OnceINtNtBg_6result6ResultlNtCs2L9szKvfIY4_11procfs_core9ProcErrorEENtB6_13SpecAdvanceBy15spec_advance_by0Csl8OoimOLbh_6qdrant"}
!1180 = distinct !{!1180, !1179, !"_RNCNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBe_7sources4once4OnceINtNtBg_6result6ResultlNtCs2L9szKvfIY4_11procfs_core9ProcErrorEENtB6_13SpecAdvanceBy15spec_advance_by0Csl8OoimOLbh_6qdrant: argument 0"}
!1181 = distinct !{!1181, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultlNtCs2L9szKvfIY4_11procfs_core9ProcErrorEECsl8OoimOLbh_6qdrant"}
!1182 = distinct !{!1182, !1181, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultlNtCs2L9szKvfIY4_11procfs_core9ProcErrorEECsl8OoimOLbh_6qdrant: argument 0"}
!1183 = distinct !{!1183, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs2L9szKvfIY4_11procfs_core9ProcErrorECsl8OoimOLbh_6qdrant"}
!1184 = distinct !{!1184, !1183, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs2L9szKvfIY4_11procfs_core9ProcErrorECsl8OoimOLbh_6qdrant: argument 0"}
!1185 = distinct !{!1185, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECsl8OoimOLbh_6qdrant"}
!1186 = distinct !{!1186, !1185, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECsl8OoimOLbh_6qdrant: argument 0"}
!1187 = distinct !{!1187, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECsl8OoimOLbh_6qdrant"}
!1188 = distinct !{!1188, !1187, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECsl8OoimOLbh_6qdrant: argument 0"}
!1189 = distinct !{!1189, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECsl8OoimOLbh_6qdrant"}
!1190 = distinct !{!1190, !1189, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECsl8OoimOLbh_6qdrant: argument 0"}
!1191 = distinct !{!1191, i1 true, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsl8OoimOLbh_6qdrant"}
!1192 = distinct !{!1192, !1191, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsl8OoimOLbh_6qdrant: argument 0"}
!1193 = distinct !{!1193, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECsl8OoimOLbh_6qdrant"}
!1194 = distinct !{!1194, !1193, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECsl8OoimOLbh_6qdrant: argument 0"}
!1195 = !{!1175}
!1196 = !{!1178, !1177, !1175}
!1197 = !{!1178, !1175}
!1198 = !{!1177}
!1199 = !{!1180}
!1200 = !{!1182}
!1201 = !{!1184}
!1202 = !{!1186, !1184, !1182, !1180}
!1203 = !{!1188, !1184, !1182, !1180}
!1204 = !{!1190, !1184, !1182, !1180}
!1205 = !{!1184, !1182, !1180}
!1206 = !{!1184, !1182, !1180, !1175}
!1207 = !{!1192}
!1208 = !{!1194, !1184, !1182, !1180}
!1209 = distinct !{!1209, i1 true, !"_RNCNvYNtNtCsPYQCUnoTxQ_10collection10collection17CollectionVersionNtNtCslmvYCXbQjWR_6common15storage_version14StorageVersion4saves_0Csl8OoimOLbh_6qdrant"}
!1210 = distinct !{!1210, !1209, !"_RNCNvYNtNtCsPYQCUnoTxQ_10collection10collection17CollectionVersionNtNtCslmvYCXbQjWR_6common15storage_version14StorageVersion4saves_0Csl8OoimOLbh_6qdrant: argument 0"}
!1211 = distinct !{!1211, i1 true, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsl8OoimOLbh_6qdrant"}
!1212 = distinct !{!1212, !1211, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsl8OoimOLbh_6qdrant: argument 0"}
!1213 = !{!1210}
!1214 = !{!1212}
!1215 = distinct !{!1215, i1 true, !"_RNvXs0_NtNtNtCsPYQCUnoTxQ_10collection10operations12verification5queryNtNtNtB9_15universal_query16collection_query18CollectionPrefetchNtB7_22StrictModeVerification19indexed_filter_read"}
!1216 = distinct !{!1216, !1215, !"_RNvXs0_NtNtNtCsPYQCUnoTxQ_10collection10operations12verification5queryNtNtNtB9_15universal_query16collection_query18CollectionPrefetchNtB7_22StrictModeVerification19indexed_filter_read: argument 0"}
!1217 = !{!1216}
!1218 = distinct !{!1218, i1 true, !"_RNvXs_NtNtNtCsPYQCUnoTxQ_10collection10operations12verification5queryNtNtNtB8_15universal_query16collection_query22CollectionQueryRequestNtB6_22StrictModeVerification19indexed_filter_read"}
!1219 = distinct !{!1219, !1218, !"_RNvXs_NtNtNtCsPYQCUnoTxQ_10collection10operations12verification5queryNtNtNtB8_15universal_query16collection_query22CollectionQueryRequestNtB6_22StrictModeVerification19indexed_filter_read: argument 0"}
!1220 = !{!1219}
!1221 = distinct !{!1221, i1 true, !"_RNvXs1_NtNtNtCsPYQCUnoTxQ_10collection10operations12verification5queryNtNtNtB9_15universal_query16collection_query28CollectionQueryGroupsRequestNtB7_22StrictModeVerification19indexed_filter_read"}
!1222 = distinct !{!1222, !1221, !"_RNvXs1_NtNtNtCsPYQCUnoTxQ_10collection10operations12verification5queryNtNtNtB9_15universal_query16collection_query28CollectionQueryGroupsRequestNtB7_22StrictModeVerification19indexed_filter_read: argument 0"}
!1223 = !{!1222}
end_hunk_1
