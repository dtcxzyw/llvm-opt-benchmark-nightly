Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.007?download=true
inline.NumInlined: 11866
inline.NumDeleted: 6049
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecINtNtCs9XvERIT2X68_9itertools11kmerge_impl8HeadTailINtNtB4_9into_iter8IntoIterNtNtCsgGgPqgSfnMH_7storage5audit10AuditEventEEEINtB2_10SpecExtendBR_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapIB1H_IBI_B27_EENCINvBU_9kmerge_byB4f_NCNCNvNtNtCsl8OoimOLbh_6qdrant6common5audit24fetch_cluster_audit_logs0s4_0E0EE11spec_extendB50_:bb.a
bb.c:                                             ; preds = %bb.f, %bb.d
  %.pn.i = phi { ptr, i32 } [ %i.o, %bb.f ], [ %i.g, %bb.d ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCsgGgPqgSfnMH_7storage5audit10AuditEventEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtB1s_3VecNtNtCsgGgPqgSfnMH_7storage5audit10AuditEventEENCINvNtCs9XvERIT2X68_9itertools11kmerge_impl9kmerge_byB1n_NCNCNvNtNtCsl8OoimOLbh_6qdrant6common5audit24fetch_cluster_audit_logs0s4_0E0EEB4c_.exit.i unwind label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.e:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13836
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %.sroa.7.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(208) %.sroa.7.0..sroa_idx7.i, i64 208, i1 false), !noalias !13836
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13835
  store i64 %i.f, ptr %i.b, align 8, !noalias !13836
  %i.h = load i64, ptr %i.d, align 8, !alias.scope !13834, !noundef !37 ; 5 uses
  %i.i = icmp ult i64 %i.h, 42700796466920259
  call void @llvm.assume(i1 %i.i)
  %i.j = load i64, ptr %0, align 8, !range !44, !alias.scope !13834, !noundef !37
  %i.k = icmp eq i64 %i.h, %i.j
  br i1 %i.k, label %bb.g, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtCs9XvERIT2X68_9itertools11kmerge_impl8HeadTailINtNtB4_9into_iter8IntoIterNtNtCsgGgPqgSfnMH_7storage5audit10AuditEventEEE7reserveCsl8OoimOLbh_6qdrant.exit.i

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtCs9XvERIT2X68_9itertools11kmerge_impl8HeadTailINtNtB4_9into_iter8IntoIterNtNtCsgGgPqgSfnMH_7storage5audit10AuditEventEEE7reserveCsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.g, %bb.e
  %i.l = load ptr, ptr %i.e, align 8, !alias.scope !13834, !nonnull !37, !noundef !37
  %i.m = getelementptr inbounds nuw [216 x i8], ptr %i.l, i64 %i.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.m, ptr noundef nonnull align 8 dereferenceable(216) %i.b, i64 216, i1 false)
  %i.n = add nuw nsw i64 %i.h, 1
  store i64 %i.n, ptr %i.d, align 8, !alias.scope !13834
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13836
  br label %bb.b

bb.f:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs9XvERIT2X68_9itertools11kmerge_impl8HeadTailINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsgGgPqgSfnMH_7storage5audit10AuditEventEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(216) %i.b) #31
          to label %bb.c unwind label %bb.h

bb.g:                                             ; preds = %bb.e
  invoke void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.h, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 216)
          to label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtCs9XvERIT2X68_9itertools11kmerge_impl8HeadTailINtNtB4_9into_iter8IntoIterNtNtCsgGgPqgSfnMH_7storage5audit10AuditEventEEE7reserveCsl8OoimOLbh_6qdrant.exit.i unwind label %bb.f

bb.h:                                             ; preds = %bb.f, %bb.c
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtB1s_3VecNtNtCsgGgPqgSfnMH_7storage5audit10AuditEventEENCINvNtCs9XvERIT2X68_9itertools11kmerge_impl9kmerge_byB1n_NCNCNvNtNtCsl8OoimOLbh_6qdrant6common5audit24fetch_cluster_audit_logs0s4_0E0EEB4c_.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %.pn.i

_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtNtCs9XvERIT2X68_9itertools11kmerge_impl8HeadTailINtNtB6_9into_iter8IntoIterNtNtCsgGgPqgSfnMH_7storage5audit10AuditEventEEE16extend_desugaredINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapIB1w_IBx_B1W_EENCINvBJ_9kmerge_byB41_NCNCNvNtNtCsl8OoimOLbh_6qdrant6common5audit24fetch_cluster_audit_logs0s4_0E0EEB4M_.exit: ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13835
  call void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCsgGgPqgSfnMH_7storage5audit10AuditEventEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecINtNtCs9XvERIT2X68_9itertools11kmerge_impl8HeadTailINtNtB4_9into_iter8IntoIterNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalEEEINtB2_10SpecExtendBR_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapIB1H_IBI_B27_EENCINvBU_9kmerge_byB4D_NCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection9point_opsNtB5n_10Collection9scroll_by0s2_0E0EE11spec_extendCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [224 x i8], align 8               ; 6 uses
  %i.b = alloca [224 x i8], align 8               ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13847)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.7.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtCs9XvERIT2X68_9itertools11kmerge_impl8HeadTailINtNtB4_9into_iter8IntoIterNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalEEE7reserveCsl8OoimOLbh_6qdrant.exit.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13848
  invoke void @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterINtB8_3VecNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2f_8find_map5checkBX_INtNtCs9XvERIT2X68_9itertools11kmerge_impl8HeadTailIBJ_B17_EEQNCINvB3Q_9kmerge_byBI_NCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection9point_opsNtB5i_10Collection9scroll_by0s2_0E0E0INtNtNtB2n_3ops12control_flow11ControlFlowB3N_EECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([224 x i8]) align 8 captures(address) dereferenceable(224) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull %i.c)
          to label %.noexc.i unwind label %bb.d

.noexc.i:                                         ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !range !57, !noalias !13848, !noundef !37 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.f, -1
  br i1 %.not.i.i.i, label %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtNtCs9XvERIT2X68_9itertools11kmerge_impl8HeadTailINtNtB6_9into_iter8IntoIterNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalEEE16extend_desugaredINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapIB1w_IBx_B1W_EENCINvBJ_9kmerge_byB4p_NCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection9point_opsNtB59_10Collection9scroll_by0s2_0E0EECsl8OoimOLbh_6qdrant.exit, label %bb.e

bb.c:                                             ; preds = %bb.f, %bb.d
  %.pn.i = phi { ptr, i32 } [ %i.o, %bb.f ], [ %i.g, %bb.d ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtB1s_3VecNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalEENCINvNtCs9XvERIT2X68_9itertools11kmerge_impl9kmerge_byB1n_NCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection9point_opsNtB4z_10Collection9scroll_by0s2_0E0EECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.e:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13849
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.7.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.7.0..sroa_idx7.i, i64 216, i1 false), !noalias !13849
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13848
  store i64 %i.f, ptr %i.b, align 8, !noalias !13849
  %i.h = load i64, ptr %i.d, align 8, !alias.scope !13847, !noundef !37 ; 5 uses
  %i.i = icmp ult i64 %i.h, 41175768021673107
  call void @llvm.assume(i1 %i.i)
  %i.j = load i64, ptr %0, align 8, !range !44, !alias.scope !13847, !noundef !37
  %i.k = icmp eq i64 %i.h, %i.j
  br i1 %i.k, label %bb.g, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtCs9XvERIT2X68_9itertools11kmerge_impl8HeadTailINtNtB4_9into_iter8IntoIterNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalEEE7reserveCsl8OoimOLbh_6qdrant.exit.i

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtCs9XvERIT2X68_9itertools11kmerge_impl8HeadTailINtNtB4_9into_iter8IntoIterNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalEEE7reserveCsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.g, %bb.e
  %i.l = load ptr, ptr %i.e, align 8, !alias.scope !13847, !nonnull !37, !noundef !37
  %i.m = getelementptr inbounds nuw [224 x i8], ptr %i.l, i64 %i.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.m, ptr noundef nonnull align 8 dereferenceable(224) %i.b, i64 224, i1 false)
  %i.n = add nuw nsw i64 %i.h, 1
  store i64 %i.n, ptr %i.d, align 8, !alias.scope !13847
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13849
  br label %bb.b

bb.f:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs9XvERIT2X68_9itertools11kmerge_impl8HeadTailINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(224) %i.b) #31
          to label %bb.c unwind label %bb.h

bb.g:                                             ; preds = %bb.e
  invoke void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.h, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 224)
          to label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtCs9XvERIT2X68_9itertools11kmerge_impl8HeadTailINtNtB4_9into_iter8IntoIterNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalEEE7reserveCsl8OoimOLbh_6qdrant.exit.i unwind label %bb.f

bb.h:                                             ; preds = %bb.f, %bb.c
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtB1s_3VecNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalEENCINvNtCs9XvERIT2X68_9itertools11kmerge_impl9kmerge_byB1n_NCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection9point_opsNtB4z_10Collection9scroll_by0s2_0E0EECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %.pn.i

_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtNtCs9XvERIT2X68_9itertools11kmerge_impl8HeadTailINtNtB6_9into_iter8IntoIterNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalEEE16extend_desugaredINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapIB1w_IBx_B1W_EENCINvBJ_9kmerge_byB4p_NCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection9point_opsNtB59_10Collection9scroll_by0s2_0E0EECsl8OoimOLbh_6qdrant.exit: ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13848
  call void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecINtNtNtNtCs6EFb6a2W5dE_10actix_http6header6shared12quality_item11QualityItemINtNtNtNtCsgoPClq0H8JF_9actix_web4http6header10preference10PreferenceNtNtB2a_8encoding8EncodingEEEINtB2_10SpecExtendBR_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapIB41_INtNtNtB49_3str4iter5SplitcENCINvNtBY_5utils20from_comma_delimitedINtNtNtB49_5slice4iter4IterNtNtNtCsliWsDkOzYJy_4http6header5value11HeaderValueEBR_Es_0ENCB5B_s0_0EE11spec_extendCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 10 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13904)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13905)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 65 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13906)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13907)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13908)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13909)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13910
  store ptr %i.d, ptr %i.b, align 8, !noalias !13911
  store ptr %i.d, ptr %i.e, align 8, !noalias !13911
  %.promoted.i.i.i.i13.i = load i8, ptr %i.f, align 1, !alias.scope !13912
  %i.g = trunc nuw i8 %.promoted.i.i.i.i13.i to i1
  br i1 %i.g, label %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtNtNtNtCs6EFb6a2W5dE_10actix_http6header6shared12quality_item11QualityItemINtNtNtNtCsgoPClq0H8JF_9actix_web4http6header10preference10PreferenceNtNtB1Z_8encoding8EncodingEEE16extend_desugaredINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapIB3N_INtNtNtB3V_3str4iter5SplitcENCINvNtBN_5utils20from_comma_delimitedINtNtNtB3V_5slice4iter4IterNtNtNtCsliWsDkOzYJy_4http6header5value11HeaderValueEBG_Es_0ENCB5n_s0_0EECsl8OoimOLbh_6qdrant.exit, label %.lr.ph.i.i.i.i.lr.ph.i

.lr.ph.i.i.i.i.lr.ph.i:                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.phi.trans.insert.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.79.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtNtCs6EFb6a2W5dE_10actix_http6header6shared12quality_item11QualityItemINtNtNtNtCsgoPClq0H8JF_9actix_web4http6header10preference10PreferenceNtNtB1X_8encoding8EncodingEEE7reserveCsl8OoimOLbh_6qdrant.exit.i, %.lr.ph.i.i.i.i.lr.ph.i
  %.promoted26.i.i.i.i15.i = load i64, ptr %1, align 8, !alias.scope !13905 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13913)
  call void @llvm.experimental.noalias.scope.decl(metadata !13914)
  call void @llvm.experimental.noalias.scope.decl(metadata !13915)
  call void @llvm.experimental.noalias.scope.decl(metadata !13916)
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !13917, !nonnull !37, !noundef !37 ; 4 uses
  %.val1.i.i.i.i.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !13917, !noundef !37 ; 2 uses
  %i.q = load i64, ptr %i.k, align 8, !alias.scope !13918, !noundef !37 ; 7 uses
  %.not.i.i.i.i.i.i.i.i = icmp ugt i64 %i.q, %.val1.i.i.i.i.i.i.i
  %i.r = load i8, ptr %i.m, align 8, !alias.scope !13919 ; 2 uses
  %i.s = zext nneg i8 %i.r to i64                 ; 4 uses
  %i.t = icmp ult i8 %i.r, 5
  %i.u = getelementptr i8, ptr %i.l, i64 %i.s
  %i.v = getelementptr i8, ptr %i.u, i64 -1
  %i.w = load i8, ptr %i.n, align 8, !range !95, !alias.scope !13919
  %i.x = trunc nuw i8 %i.w to i1                  ; 2 uses
  %.pre2.i.i.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i, align 8, !alias.scope !13919 ; 4 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %.lr.ph.split.us.i.i.i.i.i, label %.lr.ph.split.preheader.i.i.i.i.i

.lr.ph.split.preheader.i.i.i.i.i:                 ; preds = %.lr.ph.i.i.i.i.i
  %.promoted30.i.i.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !13918
  br label %.lr.ph.split.i.i.i.i.i

.lr.ph.split.us.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i
  store i8 1, ptr %i.f, align 1, !alias.scope !13920
  %.not.i3.i.i.us.i.i.i.i.i = icmp ne i64 %.pre2.i.i.i.i.i.i.i.i, %.promoted26.i.i.i.i15.i
  %or.cond.not.i.i.i.us.i.i.i.i.i = select i1 %i.x, i1 true, i1 %.not.i3.i.i.us.i.i.i.i.i
  br i1 %or.cond.not.i.i.i.us.i.i.i.i.i, label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsl8OoimOLbh_6qdrant.exit.i.i.us.us.i.i.i.i.i, label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsl8OoimOLbh_6qdrant.exit.i.i.us.i.i.i.i.i

_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsl8OoimOLbh_6qdrant.exit.i.i.us.us.i.i.i.i.i: ; preds = %.lr.ph.split.us.i.i.i.i.i
  %.sroa.0.1.i.i.us.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 %.promoted26.i.i.i.i15.i
  %i.y = sub nuw i64 %.pre2.i.i.i.i.i.i.i.i, %.promoted26.i.i.i.i15.i
  call void @llvm.experimental.noalias.scope.decl(metadata !13921)
  call void @llvm.experimental.noalias.scope.decl(metadata !13922)
  call void @llvm.experimental.noalias.scope.decl(metadata !13923)
  %i.z = call { ptr, i64 } @_RINvMNtCskKLDkoKarTP_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.us.i.i.i.i.i, i64 noundef %i.y), !noalias !13924 ; 2 uses
  %i.aa = extractvalue { ptr, i64 } %i.z, 0       ; 2 uses
  %i.ab = extractvalue { ptr, i64 } %i.z, 1       ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  %.not4.i.us.us.i.i.i.i.i = icmp eq ptr %i.aa, null
  %.not.i.us.us.i.i.i.i.i = select i1 %i.ac, i1 true, i1 %.not4.i.us.us.i.i.i.i.i
  br i1 %.not.i.us.us.i.i.i.i.i, label %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtNtNtNtCs6EFb6a2W5dE_10actix_http6header6shared12quality_item11QualityItemINtNtNtNtCsgoPClq0H8JF_9actix_web4http6header10preference10PreferenceNtNtB1Z_8encoding8EncodingEEE16extend_desugaredINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapIB3N_INtNtNtB3V_3str4iter5SplitcENCINvNtBN_5utils20from_comma_delimitedINtNtNtB3V_5slice4iter4IterNtNtNtCsliWsDkOzYJy_4http6header5value11HeaderValueEBG_Es_0ENCB5n_s0_0EECsl8OoimOLbh_6qdrant.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsl8OoimOLbh_6qdrant.exit.i.i.us.us.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13925
  call void @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvNtNtCs6EFb6a2W5dE_10actix_http6header5utils20from_comma_delimitedINtNtNtBb_5slice4iter4IterNtNtNtCsliWsDkOzYJy_4http6header5value11HeaderValueEINtNtNtBV_6shared12quality_item11QualityItemINtNtNtNtCsgoPClq0H8JF_9actix_web4http6header10preference10PreferenceNtNtB3Z_8encoding8EncodingEEEs0_0INtB7_5FnMutTReEE8call_mutCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef %i.ab), !noalias !13926
  %i.ad = load i64, ptr %i.a, align 8, !range !60, !noalias !13925, !noundef !37 ; 2 uses
  %.not.i.i.us.us.i.i.i.i.i = icmp eq i64 %i.ad, -3
  br i1 %.not.i.i.us.us.i.i.i.i.i, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldReB1e_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtNtNtCs6EFb6a2W5dE_10actix_http6header6shared12quality_item11QualityItemINtNtNtNtCsgoPClq0H8JF_9actix_web4http6header10preference10PreferenceNtNtB3j_8encoding8EncodingEEENCINvNtB27_5utils20from_comma_delimitedINtNtNtBa_5slice4iter4IterNtNtNtCsliWsDkOzYJy_4http6header5value11HeaderValueEB20_Es_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB1e_B20_QNCB4Q_s0_0E0E0Csl8OoimOLbh_6qdrant.exit.thread16.us.us.i.i.i.i.i, label %.loopexit7.i

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldReB1e_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtNtNtCs6EFb6a2W5dE_10actix_http6header6shared12quality_item11QualityItemINtNtNtNtCsgoPClq0H8JF_9actix_web4http6header10preference10PreferenceNtNtB3j_8encoding8EncodingEEENCINvNtB27_5utils20from_comma_delimitedINtNtNtBa_5slice4iter4IterNtNtNtCsliWsDkOzYJy_4http6header5value11HeaderValueEB20_Es_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB1e_B20_QNCB4Q_s0_0E0E0Csl8OoimOLbh_6qdrant.exit.thread16.us.us.i.i.i.i.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13925
  br label %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtNtNtNtCs6EFb6a2W5dE_10actix_http6header6shared12quality_item11QualityItemINtNtNtNtCsgoPClq0H8JF_9actix_web4http6header10preference10PreferenceNtNtB1Z_8encoding8EncodingEEE16extend_desugaredINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapIB3N_INtNtNtB3V_3str4iter5SplitcENCINvNtBN_5utils20from_comma_delimitedINtNtNtB3V_5slice4iter4IterNtNtNtCsliWsDkOzYJy_4http6header5value11HeaderValueEBG_Es_0ENCB5n_s0_0EECsl8OoimOLbh_6qdrant.exit

_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsl8OoimOLbh_6qdrant.exit.i.i.us.i.i.i.i.i: ; preds = %.lr.ph.split.us.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !13921)
  call void @llvm.experimental.noalias.scope.decl(metadata !13922)
  call void @llvm.experimental.noalias.scope.decl(metadata !13923)
  br label %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtNtNtNtCs6EFb6a2W5dE_10actix_http6header6shared12quality_item11QualityItemINtNtNtNtCsgoPClq0H8JF_9actix_web4http6header10preference10PreferenceNtNtB1Z_8encoding8EncodingEEE16extend_desugaredINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapIB3N_INtNtNtB3V_3str4iter5SplitcENCINvNtBN_5utils20from_comma_delimitedINtNtNtB3V_5slice4iter4IterNtNtNtCsliWsDkOzYJy_4http6header5value11HeaderValueEBG_Es_0ENCB5n_s0_0EECsl8OoimOLbh_6qdrant.exit

.lr.ph.split.i.i.i.i.i:                           ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldReB1e_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtNtNtCs6EFb6a2W5dE_10actix_http6header6shared12quality_item11QualityItemINtNtNtNtCsgoPClq0H8JF_9actix_web4http6header10preference10PreferenceNtNtB3j_8encoding8EncodingEEENCINvNtB27_5utils20from_comma_delimitedINtNtNtBa_5slice4iter4IterNtNtNtCsliWsDkOzYJy_4http6header5value11HeaderValueEB20_Es_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB1e_B20_QNCB4Q_s0_0E0E0Csl8OoimOLbh_6qdrant.exit.thread.i.i.i.i.i, %.lr.ph.split.preheader.i.i.i.i.i
  %i.ae = phi i64 [ %i.ba, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldReB1e_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtNtNtCs6EFb6a2W5dE_10actix_http6header6shared12quality_item11QualityItemINtNtNtNtCsgoPClq0H8JF_9actix_web4http6header10preference10PreferenceNtNtB3j_8encoding8EncodingEEENCINvNtB27_5utils20from_comma_delimitedINtNtNtBa_5slice4iter4IterNtNtNtCsliWsDkOzYJy_4http6header5value11HeaderValueEB20_Es_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB1e_B20_QNCB4Q_s0_0E0E0Csl8OoimOLbh_6qdrant.exit.thread.i.i.i.i.i ], [ %.promoted30.i.i.i.i.i, %.lr.ph.split.preheader.i.i.i.i.i ] ; 3 uses
  %.lcssa232829.i.i.i.i.i = phi i64 [ %.lcssa2327.i.i.i.i.i, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldReB1e_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtNtNtCs6EFb6a2W5dE_10actix_http6header6shared12quality_item11QualityItemINtNtNtNtCsgoPClq0H8JF_9actix_web4http6header10preference10PreferenceNtNtB3j_8encoding8EncodingEEENCINvNtB27_5utils20from_comma_delimitedINtNtNtBa_5slice4iter4IterNtNtNtCsliWsDkOzYJy_4http6header5value11HeaderValueEB20_Es_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB1e_B20_QNCB4Q_s0_0E0E0Csl8OoimOLbh_6qdrant.exit.thread.i.i.i.i.i ], [ %.promoted26.i.i.i.i15.i, %.lr.ph.split.preheader.i.i.i.i.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13921)
  call void @llvm.experimental.noalias.scope.decl(metadata !13922)
  call void @llvm.experimental.noalias.scope.decl(metadata !13923)
  %i.af = icmp ult i64 %i.q, %i.ae
  br i1 %i.af, label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i, label %.lr.ph.split.preheader.i.i.i.i.i.i.i.i

.lr.ph.split.preheader.i.i.i.i.i.i.i.i:           ; preds = %.lr.ph.split.i.i.i.i.i
  call void @llvm.assume(i1 %i.t)
  %.pre.i.i.i.i.i.i.i.i = load i8, ptr %i.v, align 1, !alias.scope !13918 ; 2 uses
  br label %.lr.ph.split.i.i.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i.i.i:                     ; preds = %bb.e, %.lr.ph.split.preheader.i.i.i.i.i.i.i.i
  %i.ag = phi i64 [ %i.au, %bb.e ], [ %i.ae, %.lr.ph.split.preheader.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.ah = sub nuw i64 %i.q, %i.ag                 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 %i.ag ; 2 uses
  %i.aj = icmp samesign ult i64 %i.ah, 16
  br i1 %i.aj, label %.preheader.i.i.i.i.i.i.i.i.i, label %bb.c

.preheader.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.q, %i.ag
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.loopexit15.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i
  %i.ak = call { i64, i64 } @_RNvNtNtCskKLDkoKarTP_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ai, i64 noundef range(i64 0, -9223372036854775808) %i.ah), !noalias !13927 ; 2 uses
  %i.al = extractvalue { i64, i64 } %i.ak, 0
  %i.am = extractvalue { i64, i64 } %i.ak, 1
  %i.an = trunc nuw i64 %i.al to i1
  br i1 %i.an, label %.loopexit.i.i.i.i.i.i.i.i, label %.loopexit15.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.preheader.i.i.i.i.i.i.i.i.i, %bb.d
  %.sroa.04.011.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ar, %bb.d ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.sroa.04.011.i.i.i.i.i.i.i.i.i
  %i.ap = load i8, ptr %i.ao, align 1, !alias.scope !13928, !noalias !13927, !noundef !37
  %i.aq = icmp eq i8 %i.ap, %.pre.i.i.i.i.i.i.i.i
  br i1 %i.aq, label %.loopexit.i.i.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.ar = add nuw nsw i64 %.sroa.04.011.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ar, %i.ah
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i, label %.loopexit15.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.c
  %.sroa.5.0.i.i.i.i.i.i.i.i.i = phi i64 [ %i.am, %bb.c ], [ %.sroa.04.011.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.as = icmp ult i64 %.sroa.5.0.i.i.i.i.i.i.i.i.i, %i.ah
  call void @llvm.assume(i1 %i.as)
  %i.at = add i64 %i.ag, 1
  %i.au = add i64 %i.at, %.sroa.5.0.i.i.i.i.i.i.i.i.i ; 10 uses
  store i64 %i.au, ptr %i.j, align 8, !alias.scope !13918
  %.not11.i.i.i.i.i.i.i.i = icmp ult i64 %i.au, %i.s
  %.not12.i.i.i.i.i.i.i.i = icmp ugt i64 %i.au, %.val1.i.i.i.i.i.i.i
  %or.cond.i.i.i.i.i.i.i.i = or i1 %.not11.i.i.i.i.i.i.i.i, %.not12.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.e, label %bb.f

.loopexit15.i.i.i.i.i.i.i.i:                      ; preds = %bb.c, %.preheader.i.i.i.i.i.i.i.i.i, %bb.d
  store i64 %i.q, ptr %i.j, align 8, !alias.scope !13918
  br label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.f, %.loopexit.i.i.i.i.i.i.i.i
  %i.av = icmp ult i64 %i.q, %i.au
  br i1 %i.av, label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %.loopexit.i.i.i.i.i.i.i.i
  %i.aw = sub nuw i64 %i.au, %i.s                 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 %i.aw
  %bcmp.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.ax, ptr nonnull %i.l, i64 %i.s), !noalias !13929
  %i.ay = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %i.ay, label %_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i.i.i, label %bb.e

_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i.i.i: ; preds = %bb.f
  store i64 %i.au, ptr %1, align 8, !alias.scope !13917
  br label %select.unfold.i.i.i.i.i

_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i: ; preds = %bb.e, %.loopexit15.i.i.i.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i
  %i.az = phi i64 [ %i.ae, %.lr.ph.split.i.i.i.i.i ], [ %i.q, %.loopexit15.i.i.i.i.i.i.i.i ], [ %i.au, %bb.e ]
  store i8 1, ptr %i.f, align 1, !alias.scope !13920
  %.not.i3.i.i.i.i.i.i.i = icmp ne i64 %.pre2.i.i.i.i.i.i.i.i, %.lcssa232829.i.i.i.i.i
  %or.cond.not.i.i.i.i.i.i.i.i = select i1 %i.x, i1 true, i1 %.not.i3.i.i.i.i.i.i.i
  br i1 %or.cond.not.i.i.i.i.i.i.i.i, label %select.unfold.i.i.i.i.i, label %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtNtNtNtCs6EFb6a2W5dE_10actix_http6header6shared12quality_item11QualityItemINtNtNtNtCsgoPClq0H8JF_9actix_web4http6header10preference10PreferenceNtNtB1Z_8encoding8EncodingEEE16extend_desugaredINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapIB3N_INtNtNtB3V_3str4iter5SplitcENCINvNtBN_5utils20from_comma_delimitedINtNtNtB3V_5slice4iter4IterNtNtNtCsliWsDkOzYJy_4http6header5value11HeaderValueEBG_Es_0ENCB5n_s0_0EECsl8OoimOLbh_6qdrant.exit

select.unfold.i.i.i.i.i:                          ; preds = %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i, %_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i.i.i
  %i.ba = phi i64 [ %i.au, %_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i.i.i ], [ %i.az, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i ]
  %.lcssa2327.i.i.i.i.i = phi i64 [ %i.au, %_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i.i.i ], [ %.lcssa232829.i.i.i.i.i, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i ]
  %i.bb = phi i1 [ false, %_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i.i.i ], [ true, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i ]
  %.pn.i.i.i.i.i = phi i64 [ %i.aw, %_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i.i.i ], [ %.pre2.i.i.i.i.i.i.i.i, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i ]
  %.sroa.4.1.i.i.i.i.i.i.i = sub nuw i64 %.pn.i.i.i.i.i, %.lcssa232829.i.i.i.i.i
  %.sroa.0.1.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 %.lcssa232829.i.i.i.i.i
  %i.bc = call { ptr, i64 } @_RINvMNtCskKLDkoKarTP_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.i.i.i.i.i, i64 noundef %.sroa.4.1.i.i.i.i.i.i.i), !noalias !13924 ; 2 uses
  %i.bd = extractvalue { ptr, i64 } %i.bc, 0      ; 2 uses
  %i.be = extractvalue { ptr, i64 } %i.bc, 1      ; 2 uses
  %i.bf = icmp eq i64 %i.be, 0
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.bd, null
  %.not.i.i.i.i.i.i = select i1 %i.bf, i1 true, i1 %.not4.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldReB1e_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtNtNtCs6EFb6a2W5dE_10actix_http6header6shared12quality_item11QualityItemINtNtNtNtCsgoPClq0H8JF_9actix_web4http6header10preference10PreferenceNtNtB3j_8encoding8EncodingEEENCINvNtB27_5utils20from_comma_delimitedINtNtNtBa_5slice4iter4IterNtNtNtCsliWsDkOzYJy_4http6header5value11HeaderValueEB20_Es_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB1e_B20_QNCB4Q_s0_0E0E0Csl8OoimOLbh_6qdrant.exit.thread.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %select.unfold.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13925
  call void @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvNtNtCs6EFb6a2W5dE_10actix_http6header5utils20from_comma_delimitedINtNtNtBb_5slice4iter4IterNtNtNtCsliWsDkOzYJy_4http6header5value11HeaderValueEINtNtNtBV_6shared12quality_item11QualityItemINtNtNtNtCsgoPClq0H8JF_9actix_web4http6header10preference10PreferenceNtNtB3Z_8encoding8EncodingEEEs0_0INtB7_5FnMutTReEE8call_mutCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bd, i64 noundef %i.be), !noalias !13926
  %i.bg = load i64, ptr %i.a, align 8, !range !60, !noalias !13925, !noundef !37 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.bg, -3
  br i1 %.not.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldReB1e_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtNtNtCs6EFb6a2W5dE_10actix_http6header6shared12quality_item11QualityItemINtNtNtNtCsgoPClq0H8JF_9actix_web4http6header10preference10PreferenceNtNtB3j_8encoding8EncodingEEENCINvNtB27_5utils20from_comma_delimitedINtNtNtBa_5slice4iter4IterNtNtNtCsliWsDkOzYJy_4http6header5value11HeaderValueEB20_Es_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB1e_B20_QNCB4Q_s0_0E0E0Csl8OoimOLbh_6qdrant.exit.thread16.i.i.i.i.i, label %.loopexit7.i

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldReB1e_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtNtNtCs6EFb6a2W5dE_10actix_http6header6shared12quality_item11QualityItemINtNtNtNtCsgoPClq0H8JF_9actix_web4http6header10preference10PreferenceNtNtB3j_8encoding8EncodingEEENCINvNtB27_5utils20from_comma_delimitedINtNtNtBa_5slice4iter4IterNtNtNtCsliWsDkOzYJy_4http6header5value11HeaderValueEB20_Es_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB1e_B20_QNCB4Q_s0_0E0E0Csl8OoimOLbh_6qdrant.exit.thread16.i.i.i.i.i: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13925
  br label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldReB1e_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtNtNtCs6EFb6a2W5dE_10actix_http6header6shared12quality_item11QualityItemINtNtNtNtCsgoPClq0H8JF_9actix_web4http6header10preference10PreferenceNtNtB3j_8encoding8EncodingEEENCINvNtB27_5utils20from_comma_delimitedINtNtNtBa_5slice4iter4IterNtNtNtCsliWsDkOzYJy_4http6header5value11HeaderValueEB20_Es_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB1e_B20_QNCB4Q_s0_0E0E0Csl8OoimOLbh_6qdrant.exit.thread.i.i.i.i.i

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldReB1e_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtNtNtCs6EFb6a2W5dE_10actix_http6header6shared12quality_item11QualityItemINtNtNtNtCsgoPClq0H8JF_9actix_web4http6header10preference10PreferenceNtNtB3j_8encoding8EncodingEEENCINvNtB27_5utils20from_comma_delimitedINtNtNtBa_5slice4iter4IterNtNtNtCsliWsDkOzYJy_4http6header5value11HeaderValueEB20_Es_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB1e_B20_QNCB4Q_s0_0E0E0Csl8OoimOLbh_6qdrant.exit.thread.i.i.i.i.i: ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldReB1e_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtNtNtCs6EFb6a2W5dE_10actix_http6header6shared12quality_item11QualityItemINtNtNtNtCsgoPClq0H8JF_9actix_web4http6header10preference10PreferenceNtNtB3j_8encoding8EncodingEEENCINvNtB27_5utils20from_comma_delimitedINtNtNtBa_5slice4iter4IterNtNtNtCsliWsDkOzYJy_4http6header5value11HeaderValueEB20_Es_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB1e_B20_QNCB4Q_s0_0E0E0Csl8OoimOLbh_6qdrant.exit.thread16.i.i.i.i.i, %select.unfold.i.i.i.i.i
  br i1 %i.bb, label %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtNtNtNtCs6EFb6a2W5dE_10actix_http6header6shared12quality_item11QualityItemINtNtNtNtCsgoPClq0H8JF_9actix_web4http6header10preference10PreferenceNtNtB1Z_8encoding8EncodingEEE16extend_desugaredINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapIB3N_INtNtNtB3V_3str4iter5SplitcENCINvNtBN_5utils20from_comma_delimitedINtNtNtB3V_5slice4iter4IterNtNtNtCsliWsDkOzYJy_4http6header5value11HeaderValueEBG_Es_0ENCB5n_s0_0EECsl8OoimOLbh_6qdrant.exit, label %.lr.ph.split.i.i.i.i.i

.loopexit7.i:                                     ; preds = %bb.g, %bb.b
  %i.bh = phi i64 [ %i.ad, %bb.b ], [ %i.bg, %bb.g ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13930
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.79.0..sroa_idx.i.i.i.i.i, i64 24, i1 false), !noalias !13930
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13925
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13931
  store i64 %i.bh, ptr %i.c, align 8, !noalias !13930
  %i.bi = load i64, ptr %i.o, align 8, !alias.scope !13904, !noundef !37 ; 5 uses
  %i.bj = icmp ult i64 %i.bi, 288230376151711744
  call void @llvm.assume(i1 %i.bj)
  %i.bk = load i64, ptr %0, align 8, !range !44, !alias.scope !13904, !noundef !37
  %i.bl = icmp eq i64 %i.bi, %i.bk
  br i1 %i.bl, label %bb.j, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtNtCs6EFb6a2W5dE_10actix_http6header6shared12quality_item11QualityItemINtNtNtNtCsgoPClq0H8JF_9actix_web4http6header10preference10PreferenceNtNtB1X_8encoding8EncodingEEE7reserveCsl8OoimOLbh_6qdrant.exit.i

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtNtCs6EFb6a2W5dE_10actix_http6header6shared12quality_item11QualityItemINtNtNtNtCsgoPClq0H8JF_9actix_web4http6header10preference10PreferenceNtNtB1X_8encoding8EncodingEEE7reserveCsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.j, %.loopexit7.i
  %i.bm = load ptr, ptr %i.p, align 8, !alias.scope !13904, !nonnull !37, !noundef !37
  %i.bn = getelementptr inbounds nuw [32 x i8], ptr %i.bm, i64 %i.bi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bn, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  %i.bo = add nuw nsw i64 %i.bi, 1
  store i64 %i.bo, ptr %i.o, align 8, !alias.scope !13904
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13930
  call void @llvm.experimental.noalias.scope.decl(metadata !13932)
  call void @llvm.experimental.noalias.scope.decl(metadata !13933)
  call void @llvm.experimental.noalias.scope.decl(metadata !13934)
  call void @llvm.experimental.noalias.scope.decl(metadata !13935)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13936
  store ptr %i.d, ptr %i.b, align 8, !noalias !13937
  store ptr %i.d, ptr %i.e, align 8, !noalias !13937
  %.promoted.i.i.i.i.i = load i8, ptr %i.f, align 1, !alias.scope !13938
  %i.bp = trunc nuw i8 %.promoted.i.i.i.i.i to i1
  br i1 %i.bp, label %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtNtNtNtCs6EFb6a2W5dE_10actix_http6header6shared12quality_item11QualityItemINtNtNtNtCsgoPClq0H8JF_9actix_web4http6header10preference10PreferenceNtNtB1Z_8encoding8EncodingEEE16extend_desugaredINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapIB3N_INtNtNtB3V_3str4iter5SplitcENCINvNtBN_5utils20from_comma_delimitedINtNtNtB3V_5slice4iter4IterNtNtNtCsliWsDkOzYJy_4http6header5value11HeaderValueEBG_Es_0ENCB5n_s0_0EECsl8OoimOLbh_6qdrant.exit, label %.lr.ph.i.i.i.i.i

bb.h:                                             ; preds = %bb.j
  %i.bq = landingpad { ptr, i32 }
          cleanup
  %switch.i.i.i = icmp ugt i64 %i.bh, -3
  br i1 %switch.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs6EFb6a2W5dE_10actix_http6header6shared12quality_item11QualityItemINtNtNtNtCsgoPClq0H8JF_9actix_web4http6header10preference10PreferenceNtNtB1U_8encoding8EncodingEEECsl8OoimOLbh_6qdrant.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs6EFb6a2W5dE_10actix_http6header6shared12quality_item11QualityItemINtNtNtNtCsgoPClq0H8JF_9actix_web4http6header10preference10PreferenceNtNtB1U_8encoding8EncodingEEECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.k

bb.j:                                             ; preds = %.loopexit7.i
  invoke void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.bi, i64 noundef 1, i64 noundef 8, i64 noundef 32)
          to label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtNtCs6EFb6a2W5dE_10actix_http6header6shared12quality_item11QualityItemINtNtNtNtCsgoPClq0H8JF_9actix_web4http6header10preference10PreferenceNtNtB1X_8encoding8EncodingEEE7reserveCsl8OoimOLbh_6qdrant.exit.i unwind label %bb.h

bb.k:                                             ; preds = %bb.i
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs6EFb6a2W5dE_10actix_http6header6shared12quality_item11QualityItemINtNtNtNtCsgoPClq0H8JF_9actix_web4http6header10preference10PreferenceNtNtB1U_8encoding8EncodingEEECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.i, %bb.h
  resume { ptr, i32 } %i.bq

_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtNtNtNtCs6EFb6a2W5dE_10actix_http6header6shared12quality_item11QualityItemINtNtNtNtCsgoPClq0H8JF_9actix_web4http6header10preference10PreferenceNtNtB1Z_8encoding8EncodingEEE16extend_desugaredINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapIB3N_INtNtNtB3V_3str4iter5SplitcENCINvNtBN_5utils20from_comma_delimitedINtNtNtB3V_5slice4iter4IterNtNtNtCsliWsDkOzYJy_4http6header5value11HeaderValueEBG_Es_0ENCB5n_s0_0EECsl8OoimOLbh_6qdrant.exit: ; preds = %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsl8OoimOLbh_6qdrant.exit.i.i.us.us.i.i.i.i.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtNtCs6EFb6a2W5dE_10actix_http6header6shared12quality_item11QualityItemINtNtNtNtCsgoPClq0H8JF_9actix_web4http6header10preference10PreferenceNtNtB1X_8encoding8EncodingEEE7reserveCsl8OoimOLbh_6qdrant.exit.i, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldReB1e_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtNtNtCs6EFb6a2W5dE_10actix_http6header6shared12quality_item11QualityItemINtNtNtNtCsgoPClq0H8JF_9actix_web4http6header10preference10PreferenceNtNtB3j_8encoding8EncodingEEENCINvNtB27_5utils20from_comma_delimitedINtNtNtBa_5slice4iter4IterNtNtNtCsliWsDkOzYJy_4http6header5value11HeaderValueEB20_Es_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB1e_B20_QNCB4Q_s0_0E0E0Csl8OoimOLbh_6qdrant.exit.thread.i.i.i.i.i, %bb.a, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldReB1e_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtNtNtCs6EFb6a2W5dE_10actix_http6header6shared12quality_item11QualityItemINtNtNtNtCsgoPClq0H8JF_9actix_web4http6header10preference10PreferenceNtNtB3j_8encoding8EncodingEEENCINvNtB27_5utils20from_comma_delimitedINtNtNtBa_5slice4iter4IterNtNtNtCsliWsDkOzYJy_4http6header5value11HeaderValueEB20_Es_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB1e_B20_QNCB4Q_s0_0E0E0Csl8OoimOLbh_6qdrant.exit.thread16.us.us.i.i.i.i.i, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsl8OoimOLbh_6qdrant.exit.i.i.us.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13931
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecIBL_IBL_IBL_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEEEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapIB2h_INtNtNtB2p_5slice4iter7IterMutINtNtNtCsiHzErX7aQFk_12futures_util6future14try_maybe_done12TryMaybeDoneINtNtNtB3I_10try_future11into_future10IntoFutureINtB4S_7AndThenNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set8read_opsNtB5V_15ShardReplicaSet11query_batch0NCNCNCNCNvMNtNtB5Z_10collection5queryNtB7F_10Collection31batch_query_shards_concurrently0s_000NCB7w_0EEEENCINvNtB3I_8join_all12iter_pin_mutB3D_E0ENCNvXs_NtB3I_12try_join_allINtB9V_10TryJoinAllB5z_ENtNtNtB2p_6future6future6Future4poll0EE9from_iterCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13945
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.d = ptrtoint ptr %2 to i64
  %i.e = ptrtoint ptr %1 to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 1576                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13945
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24), !noalias !13945
  %i.h = load i64, ptr %i.b, align 8, !range !42, !noalias !13945, !noundef !37
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !47, !noalias !13945, !noundef !37 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecIBx_IBx_IBx_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapIB1W_INtNtNtB24_5slice4iter7IterMutINtNtNtCsiHzErX7aQFk_12futures_util6future14try_maybe_done12TryMaybeDoneINtNtNtB3n_10try_future11into_future10IntoFutureINtB4x_7AndThenNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set8read_opsNtB5A_15ShardReplicaSet11query_batch0NCNCNCNCNvMNtNtB5E_10collection5queryNtB7k_10Collection31batch_query_shards_concurrently0s_000NCB7b_0EEEENCINvNtB3n_8join_all12iter_pin_mutB3i_E0ENCNvXs_NtB3n_12try_join_allINtB9A_10TryJoinAllB5e_ENtNtNtB24_6future6future6Future4poll0EECsl8OoimOLbh_6qdrant.exit.i.i, !prof !38

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !noalias !13945
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #29, !noalias !13945
  unreachable

_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecIBx_IBx_IBx_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapIB1W_INtNtNtB24_5slice4iter7IterMutINtNtNtCsiHzErX7aQFk_12futures_util6future14try_maybe_done12TryMaybeDoneINtNtNtB3n_10try_future11into_future10IntoFutureINtB4x_7AndThenNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set8read_opsNtB5A_15ShardReplicaSet11query_batch0NCNCNCNCNvMNtNtB5E_10collection5queryNtB7k_10Collection31batch_query_shards_concurrently0s_000NCB7b_0EEEENCINvNtB3n_8join_all12iter_pin_mutB3i_E0ENCNvXs_NtB3n_12try_join_allINtB9A_10TryJoinAllB5e_ENtNtNtB24_6future6future6Future4poll0EECsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !noalias !13945, !nonnull !37, !noundef !37 ; 2 uses
  %i.o = icmp ule i64 %i.g, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13945
  store i64 %i.k, ptr %i.c, align 8, !noalias !13945
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %i.p, align 8, !noalias !13945
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.q, align 8, !noalias !13945
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13946
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.n, ptr %i.r, align 8, !noalias !13946
  store ptr %i.q, ptr %i.a, align 8, !noalias !13946
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.s, align 8, !noalias !13946
  invoke void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter7IterMutINtNtNtCsiHzErX7aQFk_12futures_util6future14try_maybe_done12TryMaybeDoneINtNtNtB1z_10try_future11into_future10IntoFutureINtB2J_7AndThenNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set8read_opsNtB3M_15ShardReplicaSet11query_batch0NCNCNCNCNvMNtNtB3Q_10collection5queryNtB5w_10Collection31batch_query_shards_concurrently0s_000NCB5n_0EEEENCINvNtB1z_8join_all12iter_pin_mutB1u_E0ENCNvXs_NtB1z_12try_join_allINtB7M_10TryJoinAllB3q_ENtNtNtBc_6future6future6Future4poll0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB95_8for_each4callINtNtCsexYYUdYSQU6_5alloc3vec3VecIBa9_IBa9_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEENCINvMsk_Bab_IBa9_Ba8_E14extend_trustedBN_E0E0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecIBU_IBU_IBU_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapIB2x_INtNtNtB2F_5slice4iter7IterMutINtNtNtCsiHzErX7aQFk_12futures_util6future14try_maybe_done12TryMaybeDoneINtNtNtB3Y_10try_future11into_future10IntoFutureINtB58_7AndThenNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set8read_opsNtB6b_15ShardReplicaSet11query_batch0NCNCNCNCNvMNtNtB6f_10collection5queryNtB7V_10Collection31batch_query_shards_concurrently0s_000NCB7M_0EEEENCINvNtB3Y_8join_all12iter_pin_mutB3T_E0ENCNvXs_NtB3Y_12try_join_allINtBab_10TryJoinAllB5P_ENtNtNtB2F_6future6future6Future4poll0EE9from_iterCsl8OoimOLbh_6qdrant.exit unwind label %bb.c, !noalias !13945

bb.c:                                             ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecIBx_IBx_IBx_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapIB1W_INtNtNtB24_5slice4iter7IterMutINtNtNtCsiHzErX7aQFk_12futures_util6future14try_maybe_done12TryMaybeDoneINtNtNtB3n_10try_future11into_future10IntoFutureINtB4x_7AndThenNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set8read_opsNtB5A_15ShardReplicaSet11query_batch0NCNCNCNCNvMNtNtB5E_10collection5queryNtB7k_10Collection31batch_query_shards_concurrently0s_000NCB7b_0EEEENCINvNtB3n_8join_all12iter_pin_mutB3i_E0ENCNvXs_NtB3n_12try_join_allINtB9A_10TryJoinAllB5e_ENtNtNtB24_6future6future6Future4poll0EECsl8OoimOLbh_6qdrant.exit.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_IBC_IBC_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #31
          to label %bb.e unwind label %bb.d, !noalias !13945

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !13945
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.t

_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecIBU_IBU_IBU_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapIB2x_INtNtNtB2F_5slice4iter7IterMutINtNtNtCsiHzErX7aQFk_12futures_util6future14try_maybe_done12TryMaybeDoneINtNtNtB3Y_10try_future11into_future10IntoFutureINtB58_7AndThenNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set8read_opsNtB6b_15ShardReplicaSet11query_batch0NCNCNCNCNvMNtNtB6f_10collection5queryNtB7V_10Collection31batch_query_shards_concurrently0s_000NCB7M_0EEEENCINvNtB3Y_8join_all12iter_pin_mutB3T_E0ENCNvXs_NtB3Y_12try_join_allINtBab_10TryJoinAllB5P_ENtNtNtB2F_6future6future6Future4poll0EE9from_iterCsl8OoimOLbh_6qdrant.exit: ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecIBx_IBx_IBx_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapIB1W_INtNtNtB24_5slice4iter7IterMutINtNtNtCsiHzErX7aQFk_12futures_util6future14try_maybe_done12TryMaybeDoneINtNtNtB3n_10try_future11into_future10IntoFutureINtB4x_7AndThenNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set8read_opsNtB5A_15ShardReplicaSet11query_batch0NCNCNCNCNvMNtNtB5E_10collection5queryNtB7k_10Collection31batch_query_shards_concurrently0s_000NCB7b_0EEEENCINvNtB3n_8join_all12iter_pin_mutB3i_E0ENCNvXs_NtB3n_12try_join_allINtB9A_10TryJoinAllB5e_ENtNtNtB24_6future6future6Future4poll0EECsl8OoimOLbh_6qdrant.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13946
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13945
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecIBL_IBL_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapIB2c_INtNtNtB2k_5slice4iter7IterMutINtNtNtCsiHzErX7aQFk_12futures_util6future14try_maybe_done12TryMaybeDoneINtNtNtB3D_10try_future11into_future10IntoFutureNCNCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection5queryNtB5F_10Collection20query_batch_internal000EEENCINvNtB3D_8join_all12iter_pin_mutB3y_E0ENCNvXs_NtB3D_12try_join_allINtB7U_10TryJoinAllB5u_ENtNtNtB2k_6future6future6Future4poll0EE9from_iterCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13953
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.d = ptrtoint ptr %2 to i64
  %i.e = ptrtoint ptr %1 to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 288                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13953
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24), !noalias !13953
  %i.h = load i64, ptr %i.b, align 8, !range !42, !noalias !13953, !noundef !37
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !47, !noalias !13953, !noundef !37 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecIBx_IBx_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapIB1R_INtNtNtB1Z_5slice4iter7IterMutINtNtNtCsiHzErX7aQFk_12futures_util6future14try_maybe_done12TryMaybeDoneINtNtNtB3i_10try_future11into_future10IntoFutureNCNCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection5queryNtB5k_10Collection20query_batch_internal000EEENCINvNtB3i_8join_all12iter_pin_mutB3d_E0ENCNvXs_NtB3i_12try_join_allINtB7z_10TryJoinAllB59_ENtNtNtB1Z_6future6future6Future4poll0EECsl8OoimOLbh_6qdrant.exit.i.i, !prof !38

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !noalias !13953
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #29, !noalias !13953
  unreachable

_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecIBx_IBx_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapIB1R_INtNtNtB1Z_5slice4iter7IterMutINtNtNtCsiHzErX7aQFk_12futures_util6future14try_maybe_done12TryMaybeDoneINtNtNtB3i_10try_future11into_future10IntoFutureNCNCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection5queryNtB5k_10Collection20query_batch_internal000EEENCINvNtB3i_8join_all12iter_pin_mutB3d_E0ENCNvXs_NtB3i_12try_join_allINtB7z_10TryJoinAllB59_ENtNtNtB1Z_6future6future6Future4poll0EECsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !noalias !13953, !nonnull !37, !noundef !37 ; 2 uses
  %i.o = icmp ule i64 %i.g, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13953
  store i64 %i.k, ptr %i.c, align 8, !noalias !13953
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %i.p, align 8, !noalias !13953
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.q, align 8, !noalias !13953
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13954
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.n, ptr %i.r, align 8, !noalias !13954
  store ptr %i.q, ptr %i.a, align 8, !noalias !13954
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.s, align 8, !noalias !13954
  invoke void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter7IterMutINtNtNtCsiHzErX7aQFk_12futures_util6future14try_maybe_done12TryMaybeDoneINtNtNtB1z_10try_future11into_future10IntoFutureNCNCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection5queryNtB3B_10Collection20query_batch_internal000EEENCINvNtB1z_8join_all12iter_pin_mutB1u_E0ENCNvXs_NtB1z_12try_join_allINtB5Q_10TryJoinAllB3q_ENtNtNtBc_6future6future6Future4poll0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB79_8for_each4callINtNtCsexYYUdYSQU6_5alloc3vec3VecIB8d_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEENCINvMsk_B8f_IB8d_B8c_E14extend_trustedBN_E0E0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecIBU_IBU_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapIB2s_INtNtNtB2A_5slice4iter7IterMutINtNtNtCsiHzErX7aQFk_12futures_util6future14try_maybe_done12TryMaybeDoneINtNtNtB3T_10try_future11into_future10IntoFutureNCNCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection5queryNtB5V_10Collection20query_batch_internal000EEENCINvNtB3T_8join_all12iter_pin_mutB3O_E0ENCNvXs_NtB3T_12try_join_allINtB8a_10TryJoinAllB5K_ENtNtNtB2A_6future6future6Future4poll0EE9from_iterCsl8OoimOLbh_6qdrant.exit unwind label %bb.c, !noalias !13953

bb.c:                                             ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecIBx_IBx_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapIB1R_INtNtNtB1Z_5slice4iter7IterMutINtNtNtCsiHzErX7aQFk_12futures_util6future14try_maybe_done12TryMaybeDoneINtNtNtB3i_10try_future11into_future10IntoFutureNCNCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection5queryNtB5k_10Collection20query_batch_internal000EEENCINvNtB3i_8join_all12iter_pin_mutB3d_E0ENCNvXs_NtB3i_12try_join_allINtB7z_10TryJoinAllB59_ENtNtNtB1Z_6future6future6Future4poll0EECsl8OoimOLbh_6qdrant.exit.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_IBC_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #31
          to label %bb.e unwind label %bb.d, !noalias !13953

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !13953
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.t

_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecIBU_IBU_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapIB2s_INtNtNtB2A_5slice4iter7IterMutINtNtNtCsiHzErX7aQFk_12futures_util6future14try_maybe_done12TryMaybeDoneINtNtNtB3T_10try_future11into_future10IntoFutureNCNCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection5queryNtB5V_10Collection20query_batch_internal000EEENCINvNtB3T_8join_all12iter_pin_mutB3O_E0ENCNvXs_NtB3T_12try_join_allINtB8a_10TryJoinAllB5K_ENtNtNtB2A_6future6future6Future4poll0EE9from_iterCsl8OoimOLbh_6qdrant.exit: ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecIBx_IBx_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapIB1R_INtNtNtB1Z_5slice4iter7IterMutINtNtNtCsiHzErX7aQFk_12futures_util6future14try_maybe_done12TryMaybeDoneINtNtNtB3i_10try_future11into_future10IntoFutureNCNCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection5queryNtB5k_10Collection20query_batch_internal000EEENCINvNtB3i_8join_all12iter_pin_mutB3d_E0ENCNvXs_NtB3i_12try_join_allINtB7z_10TryJoinAllB59_ENtNtNtB1Z_6future6future6Future4poll0EECsl8OoimOLbh_6qdrant.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13954
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13953
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecIBL_IBL_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapIB2c_INtNtNtB2k_5slice4iter7IterMutINtNtNtCsiHzErX7aQFk_12futures_util6future14try_maybe_done12TryMaybeDoneINtNtNtB3D_10try_future11into_future10IntoFutureNCNCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection6searchNtB5F_10Collection20do_core_search_batch0s_00EEENCINvNtB3D_8join_all12iter_pin_mutB3y_E0ENCNvXs_NtB3D_12try_join_allINtB7X_10TryJoinAllB5u_ENtNtNtB2k_6future6future6Future4poll0EE9from_iterCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13961
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.d = ptrtoint ptr %2 to i64
  %i.e = ptrtoint ptr %1 to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 1696                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13961
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24), !noalias !13961
  %i.h = load i64, ptr %i.b, align 8, !range !42, !noalias !13961, !noundef !37
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !47, !noalias !13961, !noundef !37 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecIBx_IBx_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapIB1R_INtNtNtB1Z_5slice4iter7IterMutINtNtNtCsiHzErX7aQFk_12futures_util6future14try_maybe_done12TryMaybeDoneINtNtNtB3i_10try_future11into_future10IntoFutureNCNCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection6searchNtB5k_10Collection20do_core_search_batch0s_00EEENCINvNtB3i_8join_all12iter_pin_mutB3d_E0ENCNvXs_NtB3i_12try_join_allINtB7C_10TryJoinAllB59_ENtNtNtB1Z_6future6future6Future4poll0EECsl8OoimOLbh_6qdrant.exit.i.i, !prof !38

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !noalias !13961
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #29, !noalias !13961
  unreachable

_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecIBx_IBx_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapIB1R_INtNtNtB1Z_5slice4iter7IterMutINtNtNtCsiHzErX7aQFk_12futures_util6future14try_maybe_done12TryMaybeDoneINtNtNtB3i_10try_future11into_future10IntoFutureNCNCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection6searchNtB5k_10Collection20do_core_search_batch0s_00EEENCINvNtB3i_8join_all12iter_pin_mutB3d_E0ENCNvXs_NtB3i_12try_join_allINtB7C_10TryJoinAllB59_ENtNtNtB1Z_6future6future6Future4poll0EECsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !noalias !13961, !nonnull !37, !noundef !37 ; 2 uses
  %i.o = icmp ule i64 %i.g, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13961
  store i64 %i.k, ptr %i.c, align 8, !noalias !13961
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %i.p, align 8, !noalias !13961
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.q, align 8, !noalias !13961
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13962
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.n, ptr %i.r, align 8, !noalias !13962
  store ptr %i.q, ptr %i.a, align 8, !noalias !13962
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.s, align 8, !noalias !13962
  invoke void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter7IterMutINtNtNtCsiHzErX7aQFk_12futures_util6future14try_maybe_done12TryMaybeDoneINtNtNtB1z_10try_future11into_future10IntoFutureNCNCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection6searchNtB3B_10Collection20do_core_search_batch0s_00EEENCINvNtB1z_8join_all12iter_pin_mutB1u_E0ENCNvXs_NtB1z_12try_join_allINtB5T_10TryJoinAllB3q_ENtNtNtBc_6future6future6Future4poll0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB7c_8for_each4callINtNtCsexYYUdYSQU6_5alloc3vec3VecIB8g_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEENCINvMsk_B8i_IB8g_B8f_E14extend_trustedBN_E0E0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecIBU_IBU_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapIB2s_INtNtNtB2A_5slice4iter7IterMutINtNtNtCsiHzErX7aQFk_12futures_util6future14try_maybe_done12TryMaybeDoneINtNtNtB3T_10try_future11into_future10IntoFutureNCNCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection6searchNtB5V_10Collection20do_core_search_batch0s_00EEENCINvNtB3T_8join_all12iter_pin_mutB3O_E0ENCNvXs_NtB3T_12try_join_allINtB8d_10TryJoinAllB5K_ENtNtNtB2A_6future6future6Future4poll0EE9from_iterCsl8OoimOLbh_6qdrant.exit unwind label %bb.c, !noalias !13961

bb.c:                                             ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecIBx_IBx_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapIB1R_INtNtNtB1Z_5slice4iter7IterMutINtNtNtCsiHzErX7aQFk_12futures_util6future14try_maybe_done12TryMaybeDoneINtNtNtB3i_10try_future11into_future10IntoFutureNCNCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection6searchNtB5k_10Collection20do_core_search_batch0s_00EEENCINvNtB3i_8join_all12iter_pin_mutB3d_E0ENCNvXs_NtB3i_12try_join_allINtB7C_10TryJoinAllB59_ENtNtNtB1Z_6future6future6Future4poll0EECsl8OoimOLbh_6qdrant.exit.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_IBC_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #31
          to label %bb.e unwind label %bb.d, !noalias !13961

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !13961
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.t

_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecIBU_IBU_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapIB2s_INtNtNtB2A_5slice4iter7IterMutINtNtNtCsiHzErX7aQFk_12futures_util6future14try_maybe_done12TryMaybeDoneINtNtNtB3T_10try_future11into_future10IntoFutureNCNCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection6searchNtB5V_10Collection20do_core_search_batch0s_00EEENCINvNtB3T_8join_all12iter_pin_mutB3O_E0ENCNvXs_NtB3T_12try_join_allINtB8d_10TryJoinAllB5K_ENtNtNtB2A_6future6future6Future4poll0EE9from_iterCsl8OoimOLbh_6qdrant.exit: ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecIBx_IBx_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapIB1R_INtNtNtB1Z_5slice4iter7IterMutINtNtNtCsiHzErX7aQFk_12futures_util6future14try_maybe_done12TryMaybeDoneINtNtNtB3i_10try_future11into_future10IntoFutureNCNCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection6searchNtB5k_10Collection20do_core_search_batch0s_00EEENCINvNtB3i_8join_all12iter_pin_mutB3d_E0ENCNvXs_NtB3i_12try_join_allINtB7C_10TryJoinAllB59_ENtNtNtB1Z_6future6future6Future4poll0EECsl8OoimOLbh_6qdrant.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13962
end_hunk_0
begin_hunk_1_@_RNvXs0_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB7_3VecNtNtNtCsPYQCUnoTxQ_10collection10operations5types17CollectionWarningEINtB5_10SpecExtendBU_INtNtB7_9into_iter8IntoIterBU_EE11spec_extendCsl8OoimOLbh_6qdrant:bb.a
bb.d:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsPYQCUnoTxQ_10collection10operations5types17CollectionWarningE7reserveCsl8OoimOLbh_6qdrant.exit.thread.i, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsPYQCUnoTxQ_10collection10operations5types17CollectionWarningENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsPYQCUnoTxQ_10collection10operations5types17CollectionWarningEECsl8OoimOLbh_6qdrant.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB7_3VecNtNtNtCsPYQCUnoTxQ_10collection6common15memory_reporter22CollectionMemoryReportEINtB5_10SpecExtendBU_INtNtB7_9into_iter8IntoIterBU_EE11spec_extendCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = invoke { ptr, i64 } @_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsPYQCUnoTxQ_10collection6common15memory_reporter22CollectionMemoryReportE8as_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
          to label %bb.b unwind label %bb.d       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { ptr, i64 } %i.b, 0
  %i.d = extractvalue { ptr, i64 } %i.b, 1        ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !18388, !noundef !37 ; 5 uses
  %i.g = load i64, ptr %0, align 8, !range !44, !alias.scope !18388, !noundef !37
  %i.h = sub i64 %i.g, %i.f
  %i.i = icmp ugt i64 %i.d, %i.h
  br i1 %i.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsPYQCUnoTxQ_10collection6common15memory_reporter22CollectionMemoryReportE7reserveCsl8OoimOLbh_6qdrant.exit.thread.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsPYQCUnoTxQ_10collection6common15memory_reporter22CollectionMemoryReportE7reserveCsl8OoimOLbh_6qdrant.exit.i, !prof !38

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsPYQCUnoTxQ_10collection6common15memory_reporter22CollectionMemoryReportE7reserveCsl8OoimOLbh_6qdrant.exit.thread.i: ; preds = %bb.b
  invoke void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.f, i64 noundef %i.d, i64 noundef 8, i64 noundef 168)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsPYQCUnoTxQ_10collection6common15memory_reporter22CollectionMemoryReportE7reserveCsl8OoimOLbh_6qdrant.exit.thread.i
  %i.j = load i64, ptr %i.e, align 8, !alias.scope !18389, !noundef !37 ; 2 uses
  %i.k = icmp ult i64 %i.j, 54901024028897476
  tail call void @llvm.assume(i1 %i.k)
  br label %bb.c

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsPYQCUnoTxQ_10collection6common15memory_reporter22CollectionMemoryReportE7reserveCsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.b
  %i.l = icmp ult i64 %i.f, 54901024028897476
  tail call void @llvm.assume(i1 %i.l)
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtCsPYQCUnoTxQ_10collection6common15memory_reporter22CollectionMemoryReportEECsl8OoimOLbh_6qdrant.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsPYQCUnoTxQ_10collection6common15memory_reporter22CollectionMemoryReportE7reserveCsl8OoimOLbh_6qdrant.exit.i, %.noexc
  %i.m = phi i64 [ %i.j, %.noexc ], [ %i.f, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsPYQCUnoTxQ_10collection6common15memory_reporter22CollectionMemoryReportE7reserveCsl8OoimOLbh_6qdrant.exit.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !18389, !nonnull !37, !noundef !37
  %i.p = getelementptr inbounds nuw [168 x i8], ptr %i.o, i64 %i.m
  %i.q = mul nuw nsw i64 %i.d, 168
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.p, ptr readonly align 8 %i.c, i64 %i.q, i1 false)
  %.pre.i = load i64, ptr %i.e, align 8, !alias.scope !18389
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtCsPYQCUnoTxQ_10collection6common15memory_reporter22CollectionMemoryReportEECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtCsPYQCUnoTxQ_10collection6common15memory_reporter22CollectionMemoryReportEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.c, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsPYQCUnoTxQ_10collection6common15memory_reporter22CollectionMemoryReportE7reserveCsl8OoimOLbh_6qdrant.exit.i
  %i.r = phi i64 [ %.pre.i, %bb.c ], [ %i.f, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsPYQCUnoTxQ_10collection6common15memory_reporter22CollectionMemoryReportE7reserveCsl8OoimOLbh_6qdrant.exit.i ]
  %i.s = add i64 %i.r, %i.d
  store i64 %i.s, ptr %i.e, align 8, !alias.scope !18389
  %i.t = load ptr, ptr %1, align 8, !nonnull !37, !noundef !37
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load i64, ptr %i.u, align 8, !noundef !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.v, ptr %i.a, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.t, ptr %i.w, align 8
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsPYQCUnoTxQ_10collection6common15memory_reporter22CollectionMemoryReportENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsPYQCUnoTxQ_10collection6common15memory_reporter22CollectionMemoryReportEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.d
  resume { ptr, i32 } %lpad.thr_comm

bb.d:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsPYQCUnoTxQ_10collection6common15memory_reporter22CollectionMemoryReportE7reserveCsl8OoimOLbh_6qdrant.exit.thread.i, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsPYQCUnoTxQ_10collection6common15memory_reporter22CollectionMemoryReportENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsPYQCUnoTxQ_10collection6common15memory_reporter22CollectionMemoryReportEECsl8OoimOLbh_6qdrant.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB7_3VecyEINtB5_10SpecExtendyINtNtB7_9into_iter8IntoIteryEE11spec_extendCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = invoke { ptr, i64 } @_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIteryE8as_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
          to label %bb.b unwind label %bb.d       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { ptr, i64 } %i.b, 0
  %i.d = extractvalue { ptr, i64 } %i.b, 1        ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !18394, !noundef !37 ; 5 uses
  %i.g = load i64, ptr %0, align 8, !range !44, !alias.scope !18394, !noundef !37
  %i.h = sub i64 %i.g, %i.f
  %i.i = icmp ugt i64 %i.d, %i.h
  br i1 %i.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecyE7reserveCsl8OoimOLbh_6qdrant.exit.thread.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecyE7reserveCsl8OoimOLbh_6qdrant.exit.i, !prof !38

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecyE7reserveCsl8OoimOLbh_6qdrant.exit.thread.i: ; preds = %bb.b
  invoke void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.f, i64 noundef %i.d, i64 noundef 8, i64 noundef 8)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecyE7reserveCsl8OoimOLbh_6qdrant.exit.thread.i
  %i.j = load i64, ptr %i.e, align 8, !alias.scope !18395, !noundef !37 ; 2 uses
  %i.k = icmp ult i64 %i.j, 1152921504606846976
  tail call void @llvm.assume(i1 %i.k)
  br label %bb.c

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecyE7reserveCsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.b
  %i.l = icmp ult i64 %i.f, 1152921504606846976
  tail call void @llvm.assume(i1 %i.l)
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecyEECsl8OoimOLbh_6qdrant.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecyE7reserveCsl8OoimOLbh_6qdrant.exit.i, %.noexc
  %i.m = phi i64 [ %i.j, %.noexc ], [ %i.f, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecyE7reserveCsl8OoimOLbh_6qdrant.exit.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !18395, !nonnull !37, !noundef !37
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.m
  %i.q = shl nuw nsw i64 %i.d, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.p, ptr readonly align 8 %i.c, i64 %i.q, i1 false)
  %.pre.i = load i64, ptr %i.e, align 8, !alias.scope !18395
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecyEECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecyEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.c, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecyE7reserveCsl8OoimOLbh_6qdrant.exit.i
  %i.r = phi i64 [ %.pre.i, %bb.c ], [ %i.f, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecyE7reserveCsl8OoimOLbh_6qdrant.exit.i ]
  %i.s = add i64 %i.r, %i.d
  store i64 %i.s, ptr %i.e, align 8, !alias.scope !18395
  %i.t = load ptr, ptr %1, align 8, !nonnull !37, !noundef !37
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load i64, ptr %i.u, align 8, !noundef !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.v, ptr %i.a, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.t, ptr %i.w, align 8
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIteryEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.d
  resume { ptr, i32 } %lpad.thr_comm

bb.d:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecyE7reserveCsl8OoimOLbh_6qdrant.exit.thread.i, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIteryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIteryEECsl8OoimOLbh_6qdrant.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_6filter6FilterINtNtNtBb_3str4iter5SplitcENCINvMNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env7builderNtB23_7Builder11parse_lossyNtNtCsexYYUdYSQU6_5alloc6string6StringE0ENCB1Z_s_0ENtNtNtB9_6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 9 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18428)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18429)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18430)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 80
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18431)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !18432
  store ptr %i.d, ptr %i.b, align 8, !noalias !18433
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %1, ptr %i.e, align 8, !noalias !18433
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 73 ; 3 uses
  %.promoted.i.i.i = load i8, ptr %i.f, align 1, !alias.scope !18434
  %.promoted26.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !18435 ; 4 uses
  %i.g = trunc nuw i8 %.promoted.i.i.i to i1
  br i1 %i.g, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env7builderNtB1u_7Builder11parse_lossyNtNtCsexYYUdYSQU6_5alloc6string6StringE0ENtNtNtBa_6traits8iterator8Iterator8find_mapNtNtB1w_9directive9DirectiveQNCB1q_s_0ECsl8OoimOLbh_6qdrant.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !18434, !nonnull !37, !noundef !37 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val1.i.i.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !18434, !noundef !37 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !18436, !noundef !37 ; 7 uses
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.l, %.val1.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.o = load i8, ptr %i.n, align 8, !alias.scope !18435 ; 2 uses
  %i.p = zext nneg i8 %i.o to i64                 ; 4 uses
  %i.q = icmp ult i8 %i.o, 5
  %i.r = getelementptr i8, ptr %i.m, i64 %i.p
  %i.s = getelementptr i8, ptr %i.r, i64 -1
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.u = load i8, ptr %i.t, align 8, !range !95, !alias.scope !18435
  %i.v = trunc nuw i8 %i.u to i1
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre2.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !alias.scope !18435 ; 4 uses
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.split.us.i.i.i, label %.lr.ph.split.preheader.i.i.i

.lr.ph.split.preheader.i.i.i:                     ; preds = %.lr.ph.i.i.i
  %.promoted30.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !18436
  br label %.lr.ph.split.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.i.i.i
  store i8 1, ptr %i.f, align 1, !alias.scope !18437
  %.not.i3.i.i.us.not.i.i.i = icmp eq i64 %.pre2.i.i.i.i.i.i, %.promoted26.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18438)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18439)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18440)
  br i1 %.not.i3.i.i.us.not.i.i.i, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env7builderNtB1u_7Builder11parse_lossyNtNtCsexYYUdYSQU6_5alloc6string6StringE0ENtNtNtBa_6traits8iterator8Iterator8find_mapNtNtB1w_9directive9DirectiveQNCB1q_s_0ECsl8OoimOLbh_6qdrant.exit, label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsl8OoimOLbh_6qdrant.exit.i.i.us.us.i.i.i

_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsl8OoimOLbh_6qdrant.exit.i.i.us.us.i.i.i: ; preds = %.lr.ph.split.us.i.i.i
  %.sroa.0.1.i.i.us.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %.promoted26.i.i.i
  %2 = sub nuw i64 %.pre2.i.i.i.i.i.i, %.promoted26.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18441
  call void @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvMNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env7builderNtBU_7Builder11parse_lossyNtNtCsexYYUdYSQU6_5alloc6string6StringEs_0INtB7_5FnMutTReEE8call_mutCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.us.i.i.i, i64 noundef %2), !noalias !18442
  %i.w = load i64, ptr %i.a, align 8, !range !130, !noalias !18441, !noundef !37 ; 2 uses
  %.not.i.i.us.us.i.i.i = icmp eq i64 %i.w, -2
  br i1 %.not.i.i.us.us.i.i.i, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env7builderNtB1u_7Builder11parse_lossyNtNtCsexYYUdYSQU6_5alloc6string6StringE0ENtNtNtBa_6traits8iterator8Iterator8find_mapNtNtB1w_9directive9DirectiveQNCB1q_s_0ECsl8OoimOLbh_6qdrant.exit.sink.split, label %.loopexit.i

.lr.ph.split.i.i.i:                               ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyNtNtCsexYYUdYSQU6_5alloc6string6StringE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Csl8OoimOLbh_6qdrant.exit.thread.i.i.i, %.lr.ph.split.preheader.i.i.i
  %i.x = phi i64 [ %i.at, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyNtNtCsexYYUdYSQU6_5alloc6string6StringE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Csl8OoimOLbh_6qdrant.exit.thread.i.i.i ], [ %.promoted30.i.i.i, %.lr.ph.split.preheader.i.i.i ] ; 3 uses
  %.lcssa232829.i.i.i = phi i64 [ %.lcssa2327.i.i.i, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyNtNtCsexYYUdYSQU6_5alloc6string6StringE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Csl8OoimOLbh_6qdrant.exit.thread.i.i.i ], [ %.promoted26.i.i.i, %.lr.ph.split.preheader.i.i.i ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18438)
  call void @llvm.experimental.noalias.scope.decl(metadata !18439)
  call void @llvm.experimental.noalias.scope.decl(metadata !18440)
  %i.y = icmp ult i64 %i.l, %i.x
  br i1 %i.y, label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i, label %.lr.ph.split.preheader.i.i.i.i.i.i

.lr.ph.split.preheader.i.i.i.i.i.i:               ; preds = %.lr.ph.split.i.i.i
  call void @llvm.assume(i1 %i.q)
  %.pre.i.i.i.i.i.i = load i8, ptr %i.s, align 1, !alias.scope !18436 ; 2 uses
  br label %.lr.ph.split.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i:                         ; preds = %bb.d, %.lr.ph.split.preheader.i.i.i.i.i.i
  %i.z = phi i64 [ %i.an, %bb.d ], [ %i.x, %.lr.ph.split.preheader.i.i.i.i.i.i ] ; 4 uses
  %i.aa = sub nuw i64 %i.l, %i.z                  ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.z ; 2 uses
  %i.ac = icmp samesign ult i64 %i.aa, 16
  br i1 %i.ac, label %.preheader.i.i.i.i.i.i.i, label %bb.b

.preheader.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.split.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.l, %i.z
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit15.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.split.i.i.i.i.i.i
  %i.ad = call { i64, i64 } @_RNvNtNtCskKLDkoKarTP_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef range(i64 0, -9223372036854775808) %i.aa), !noalias !18443 ; 2 uses
  %i.ae = extractvalue { i64, i64 } %i.ad, 0
  %i.af = extractvalue { i64, i64 } %i.ad, 1
  %i.ag = trunc nuw i64 %i.ae to i1
  br i1 %i.ag, label %.loopexit.i.i.i.i.i.i, label %.loopexit15.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i.i.i, %bb.c
  %.sroa.04.011.i.i.i.i.i.i.i = phi i64 [ %i.ak, %bb.c ], [ 0, %.preheader.i.i.i.i.i.i.i ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.sroa.04.011.i.i.i.i.i.i.i
  %i.ai = load i8, ptr %i.ah, align 1, !alias.scope !18444, !noalias !18443, !noundef !37
  %i.aj = icmp eq i8 %i.ai, %.pre.i.i.i.i.i.i
  br i1 %i.aj, label %.loopexit.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ak = add nuw nsw i64 %.sroa.04.011.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.ak, %i.aa
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %.loopexit15.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.b
  %.sroa.5.0.i.i.i.i.i.i.i = phi i64 [ %i.af, %bb.b ], [ %.sroa.04.011.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %i.al = icmp ult i64 %.sroa.5.0.i.i.i.i.i.i.i, %i.aa
  call void @llvm.assume(i1 %i.al)
  %i.am = add i64 %i.z, 1
  %i.an = add i64 %i.am, %.sroa.5.0.i.i.i.i.i.i.i ; 10 uses
  store i64 %i.an, ptr %i.j, align 8, !alias.scope !18436
  %.not11.i.i.i.i.i.i = icmp ult i64 %i.an, %i.p
  %.not12.i.i.i.i.i.i = icmp ugt i64 %i.an, %.val1.i.i.i.i.i
  %or.cond.i.i.i.i.i.i = or i1 %.not11.i.i.i.i.i.i, %.not12.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %bb.d, label %bb.e

.loopexit15.i.i.i.i.i.i:                          ; preds = %bb.b, %.preheader.i.i.i.i.i.i.i, %bb.c
  store i64 %i.l, ptr %i.j, align 8, !alias.scope !18436
  br label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.e, %.loopexit.i.i.i.i.i.i
  %i.ao = icmp ult i64 %i.l, %i.an
  br i1 %i.ao, label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i

bb.e:                                             ; preds = %.loopexit.i.i.i.i.i.i
  %i.ap = sub nuw i64 %i.an, %i.p                 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.ap
  %bcmp.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.aq, ptr nonnull %i.m, i64 %i.p), !noalias !18445
  %i.ar = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.ar, label %_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i, label %bb.d

_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i: ; preds = %bb.e
  store i64 %i.an, ptr %i.c, align 8, !alias.scope !18434
  br label %select.unfold.i.i.i

_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i: ; preds = %bb.d, %.loopexit15.i.i.i.i.i.i, %.lr.ph.split.i.i.i
  %i.as = phi i64 [ %i.x, %.lr.ph.split.i.i.i ], [ %i.l, %.loopexit15.i.i.i.i.i.i ], [ %i.an, %bb.d ]
  store i8 1, ptr %i.f, align 1, !alias.scope !18437
  %.not.i3.i.i.i.i.i = icmp ne i64 %.pre2.i.i.i.i.i.i, %.lcssa232829.i.i.i
  %or.cond.not.i.i.i.i.i.i = select i1 %i.v, i1 true, i1 %.not.i3.i.i.i.i.i
  br i1 %or.cond.not.i.i.i.i.i.i, label %select.unfold.i.i.i, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env7builderNtB1u_7Builder11parse_lossyNtNtCsexYYUdYSQU6_5alloc6string6StringE0ENtNtNtBa_6traits8iterator8Iterator8find_mapNtNtB1w_9directive9DirectiveQNCB1q_s_0ECsl8OoimOLbh_6qdrant.exit

select.unfold.i.i.i:                              ; preds = %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i, %_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i
  %i.at = phi i64 [ %i.an, %_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i ], [ %i.as, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i ]
  %.lcssa2327.i.i.i = phi i64 [ %i.an, %_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i ], [ %.lcssa232829.i.i.i, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i ]
  %i.au = phi i1 [ false, %_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i ], [ true, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i ]
  %.pn.i.i.i = phi i64 [ %i.ap, %_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i ], [ %.pre2.i.i.i.i.i.i, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i ] ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.pn.i.i.i, %.lcssa232829.i.i.i
  br i1 %.not.i.i.i.i, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyNtNtCsexYYUdYSQU6_5alloc6string6StringE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Csl8OoimOLbh_6qdrant.exit.thread.i.i.i, label %bb.f

bb.f:                                             ; preds = %select.unfold.i.i.i
  %.sroa.4.1.i.i.i.i.i = sub nuw i64 %.pn.i.i.i, %.lcssa232829.i.i.i
  %.sroa.0.1.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %.lcssa232829.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18441
  call void @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvMNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env7builderNtBU_7Builder11parse_lossyNtNtCsexYYUdYSQU6_5alloc6string6StringEs_0INtB7_5FnMutTReEE8call_mutCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.i.i.i, i64 noundef %.sroa.4.1.i.i.i.i.i), !noalias !18442
  %i.av = load i64, ptr %i.a, align 8, !range !130, !noalias !18441, !noundef !37 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.av, -2
  br i1 %.not.i.i.i.i.i, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyNtNtCsexYYUdYSQU6_5alloc6string6StringE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Csl8OoimOLbh_6qdrant.exit.thread16.i.i.i, label %.loopexit.i

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyNtNtCsexYYUdYSQU6_5alloc6string6StringE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Csl8OoimOLbh_6qdrant.exit.thread16.i.i.i: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !18441
  br label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyNtNtCsexYYUdYSQU6_5alloc6string6StringE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Csl8OoimOLbh_6qdrant.exit.thread.i.i.i

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyNtNtCsexYYUdYSQU6_5alloc6string6StringE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Csl8OoimOLbh_6qdrant.exit.thread.i.i.i: ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyNtNtCsexYYUdYSQU6_5alloc6string6StringE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Csl8OoimOLbh_6qdrant.exit.thread16.i.i.i, %select.unfold.i.i.i
  br i1 %i.au, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env7builderNtB1u_7Builder11parse_lossyNtNtCsexYYUdYSQU6_5alloc6string6StringE0ENtNtNtBa_6traits8iterator8Iterator8find_mapNtNtB1w_9directive9DirectiveQNCB1q_s_0ECsl8OoimOLbh_6qdrant.exit, label %.lr.ph.split.i.i.i

.loopexit.i:                                      ; preds = %bb.f, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsl8OoimOLbh_6qdrant.exit.i.i.us.us.i.i.i
  %.us-phi.i.i.i = phi i64 [ %i.w, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsl8OoimOLbh_6qdrant.exit.i.i.us.us.i.i.i ], [ %i.av, %bb.f ]
  %.sroa.79.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.79.0..sroa_idx.i.i.i, i64 72, i1 false), !noalias !18446
  br label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env7builderNtB1u_7Builder11parse_lossyNtNtCsexYYUdYSQU6_5alloc6string6StringE0ENtNtNtBa_6traits8iterator8Iterator8find_mapNtNtB1w_9directive9DirectiveQNCB1q_s_0ECsl8OoimOLbh_6qdrant.exit.sink.split

_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env7builderNtB1u_7Builder11parse_lossyNtNtCsexYYUdYSQU6_5alloc6string6StringE0ENtNtNtBa_6traits8iterator8Iterator8find_mapNtNtB1w_9directive9DirectiveQNCB1q_s_0ECsl8OoimOLbh_6qdrant.exit.sink.split: ; preds = %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsl8OoimOLbh_6qdrant.exit.i.i.us.us.i.i.i, %.loopexit.i
  %storemerge.i.ph = phi i64 [ %.us-phi.i.i.i, %.loopexit.i ], [ -2, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsl8OoimOLbh_6qdrant.exit.i.i.us.us.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !18441
  br label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env7builderNtB1u_7Builder11parse_lossyNtNtCsexYYUdYSQU6_5alloc6string6StringE0ENtNtNtBa_6traits8iterator8Iterator8find_mapNtNtB1w_9directive9DirectiveQNCB1q_s_0ECsl8OoimOLbh_6qdrant.exit

_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env7builderNtB1u_7Builder11parse_lossyNtNtCsexYYUdYSQU6_5alloc6string6StringE0ENtNtNtBa_6traits8iterator8Iterator8find_mapNtNtB1w_9directive9DirectiveQNCB1q_s_0ECsl8OoimOLbh_6qdrant.exit: ; preds = %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyNtNtCsexYYUdYSQU6_5alloc6string6StringE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Csl8OoimOLbh_6qdrant.exit.thread.i.i.i, %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env7builderNtB1u_7Builder11parse_lossyNtNtCsexYYUdYSQU6_5alloc6string6StringE0ENtNtNtBa_6traits8iterator8Iterator8find_mapNtNtB1w_9directive9DirectiveQNCB1q_s_0ECsl8OoimOLbh_6qdrant.exit.sink.split, %bb.a, %.lr.ph.split.us.i.i.i
  %storemerge.i = phi i64 [ -2, %.lr.ph.split.us.i.i.i ], [ -2, %bb.a ], [ %storemerge.i.ph, %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env7builderNtB1u_7Builder11parse_lossyNtNtCsexYYUdYSQU6_5alloc6string6StringE0ENtNtNtBa_6traits8iterator8Iterator8find_mapNtNtB1w_9directive9DirectiveQNCB1q_s_0ECsl8OoimOLbh_6qdrant.exit.sink.split ], [ -2, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyNtNtCsexYYUdYSQU6_5alloc6string6StringE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Csl8OoimOLbh_6qdrant.exit.thread.i.i.i ], [ -2, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !18432
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !18428
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtCs3h0uJhEw518_7dashmap4iter4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc9telemetry26SnapshotTelemetryCollectorENCNCNvMs_B2b_NtB2d_14TableOfContent18get_telemetry_data00ENtNtNtB9_6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.9 = alloca [24 x i8], align 8            ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvXs6_NtCs3h0uJhEw518_7dashmap4iterINtB5_4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc9telemetry26SnapshotTelemetryCollectorENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1)
  %i.d = load ptr, ptr %i.c, align 8, !noundef !37
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18462)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !18462, !noundef !37 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18463
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !18462, !noundef !37
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h)
          to label %bb.e unwind label %bb.d, !noalias !18463

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.f, %bb.d
  %.pn.i = phi { ptr, i32 } [ %i.l, %bb.d ], [ %i.n, %bb.f ]
  call void @llvm.experimental.noalias.scope.decl(metadata !18464)
  call void @llvm.experimental.noalias.scope.decl(metadata !18465)
  call void @llvm.experimental.noalias.scope.decl(metadata !18466)
  %i.i = load ptr, ptr %i.b, align 8, !alias.scope !18467, !nonnull !37, !noundef !37
  %i.j = atomicrmw add ptr %i.i, i64 -1 release, align 8, !noalias !18468
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs3h0uJhEw518_7dashmap6mapref8multiple8RefMultiNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc9telemetry26SnapshotTelemetryCollectorEECsl8OoimOLbh_6qdrant.exit.i

bb.c:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs3h0uJhEw518_7dashmap4lock9RawRwLockINtNtNtCs34QmZTZ4dIa_9hashbrown3raw5inner8RawTableTNtNtB7_6string6StringINtNtB1A_4util11SharedValueNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc9telemetry26SnapshotTelemetryCollectorEEEEE9drop_slowCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #26
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs3h0uJhEw518_7dashmap6mapref8multiple8RefMultiNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc9telemetry26SnapshotTelemetryCollectorEECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.j, !noalias !18469

bb.d:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i

bb.e:                                             ; preds = %bb.b
  %i.m = invoke noundef i64 @_RNvMNtCslmvYCXbQjWR_6common13scope_trackerNtB2_12ScopeTracker3get(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f, i8 noundef 0)
          to label %bb.g unwind label %bb.f, !noalias !18463

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.j, !noalias !18463

bb.g:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.p = invoke noundef i64 @_RNvMNtCslmvYCXbQjWR_6common13scope_trackerNtB2_12ScopeTracker3get(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o, i8 noundef 0)
          to label %bb.h unwind label %bb.f, !noalias !18463

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !noalias !18463, !nonnull !37, !noundef !37
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load atomic i64, ptr %i.s monotonic, align 8, !noalias !18463
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !18462
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !18463
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18470)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18471)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18472)
  %i.u = load ptr, ptr %i.b, align 8, !alias.scope !18473, !nonnull !37, !noundef !37
  %i.v = atomicrmw add ptr %i.u, i64 -1 release, align 8, !noalias !18474
  %i.w = icmp eq i64 %i.v, 1
  br i1 %i.w, label %bb.i, label %_RNCNCNvMs_NtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc9telemetryNtBa_14TableOfContent18get_telemetry_data00Csl8OoimOLbh_6qdrant.exit

bb.i:                                             ; preds = %bb.h
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs3h0uJhEw518_7dashmap4lock9RawRwLockINtNtNtCs34QmZTZ4dIa_9hashbrown3raw5inner8RawTableTNtNtB7_6string6StringINtNtB1A_4util11SharedValueNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc9telemetry26SnapshotTelemetryCollectorEEEEE9drop_slowCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #26, !noalias !18469
  br label %_RNCNCNvMs_NtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc9telemetryNtBa_14TableOfContent18get_telemetry_data00Csl8OoimOLbh_6qdrant.exit

bb.j:                                             ; preds = %bb.f, %bb.c
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !18469
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs3h0uJhEw518_7dashmap6mapref8multiple8RefMultiNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc9telemetry26SnapshotTelemetryCollectorEECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.c, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i
  resume { ptr, i32 } %.pn.i

_RNCNCNvMs_NtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc9telemetryNtBa_14TableOfContent18get_telemetry_data00Csl8OoimOLbh_6qdrant.exit: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.m, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.p, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 1, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.t, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  br label %bb.l

bb.k:                                             ; preds = %bb.a
  store i64 2, ptr %0, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_RNCNCNvMs_NtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc9telemetryNtBa_14TableOfContent18get_telemetry_data00Csl8OoimOLbh_6qdrant.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIteryNtNtCs577yCKf7gy3_4http3uri3UriENCNCNvXs_NtNtNtCsl8OoimOLbh_6qdrant5tonic3api8raft_apiNtB2x_11RaftServiceNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant11raft_server4Raft17add_peer_to_known0s7_0ENtNtNtB9_6traits8iterator8Iterator4nextB2D_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [88 x i8], align 8                ; 6 uses
  %i.e = alloca [96 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvXsE_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_11RawIntoIterTyNtNtCs577yCKf7gy3_4http3uri3UriEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !range !118, !noundef !37
  %.not = icmp eq i8 %i.g, -1
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.03.0.copyload = load i64, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !18480
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.d, ptr noundef nonnull align 8 dereferenceable(88) %i.f, i64 88, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !18481
  store i64 0, ptr %i.c, align 8, !noalias !18481
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !18481
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !18481
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !18481
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1610612768, ptr %i.h, align 8, !noalias !18481
  store ptr %i.c, ptr %i.b, align 8, !noalias !18481
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @32, ptr %i.i, align 8, !noalias !18481
  %i.j = invoke noundef zeroext i1 @_RNvXsh_NtCs577yCKf7gy3_4http3uriNtB5_3UriNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noundef nonnull align 8 %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.d unwind label %bb.c, !noalias !18481

bb.c:                                             ; preds = %bb.e, %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body.i unwind label %bb.f, !noalias !18481

bb.d:                                             ; preds = %bb.b
  br i1 %i.j, label %bb.e, label %_RNCNCNvXs_NtNtNtCsl8OoimOLbh_6qdrant5tonic3api8raft_apiNtB8_11RaftServiceNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant11raft_server4Raft17add_peer_to_known0s7_0Be_.exit, !prof !38

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @27, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #27
          to label %.noexc.i.i unwind label %bb.c, !noalias !18481

.noexc.i.i:                                       ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !18481
  unreachable

.body.i:                                          ; preds = %bb.c
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs577yCKf7gy3_4http3uri3UriECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(88) %i.d) #31
          to label %bb.h unwind label %bb.g, !noalias !18480

bb.g:                                             ; preds = %.body.i
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !18480
  unreachable

bb.h:                                             ; preds = %.body.i
  resume { ptr, i32 } %i.k

_RNCNCNvXs_NtNtNtCsl8OoimOLbh_6qdrant5tonic3api8raft_apiNtB8_11RaftServiceNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant11raft_server4Raft17add_peer_to_known0s7_0Be_.exit: ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !18481
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !18481
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs577yCKf7gy3_4http3uri3UriECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(88) %i.d), !noalias !18480
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !18480
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.03.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.j
end_hunk_1
