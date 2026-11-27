Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.026?download=true
inline.NumInlined: 2288
inline.NumDeleted: 1097
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvXsK_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7IterMutyNtNtNtCs3r24GR8eSjc_4raft7tracker8progress8ProgressENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1L_8adapters6filter11filter_foldTRyQBP_EuNCNvMs4_NtBV_4raftINtB3D_4RaftNtNtNtCsgGgPqgSfnMH_7storage15content_manager17consensus_manager17ConsensusStateRefE12bcast_append0NCINvNvB1F_8for_each4callB3m_NCB3x_s_0E0E0ECsl8OoimOLbh_6qdrant:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8, !noundef !11
  call void @_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTyNtNtNtCs3r24GR8eSjc_4raft7tracker8progress8ProgressEE9fold_implNCINvXsK_NtB8_3mapINtB26_7IterMutyBW_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2F_8adapters6filter11filter_foldTRyQBW_EuNCNvMs4_NtB12_4raftINtB4x_4RaftNtNtNtCsgGgPqgSfnMH_7storage15content_manager17consensus_manager17ConsensusStateRefE12bcast_append0NCINvNvB2z_8for_each4callB4g_NCB4r_s_0E0E0E0uECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %i.a, i64 noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsK_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7IterMutyNtNtNtCs3r24GR8eSjc_4raft7tracker8progress8ProgressENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1L_8adapters6filter11filter_foldTRyQBP_EuNCNvMs4_NtBV_4raftINtB3D_4RaftNtNtNtCsgGgPqgSfnMH_7storage15content_manager17consensus_manager17ConsensusStateRefE16post_conf_change0NCINvNvB1F_8for_each4callB3m_NCB3x_s_0E0E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8, !noundef !11
  call void @_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTyNtNtNtCs3r24GR8eSjc_4raft7tracker8progress8ProgressEE9fold_implNCINvXsK_NtB8_3mapINtB26_7IterMutyBW_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2F_8adapters6filter11filter_foldTRyQBW_EuNCNvMs4_NtB12_4raftINtB4x_4RaftNtNtNtCsgGgPqgSfnMH_7storage15content_manager17consensus_manager17ConsensusStateRefE16post_conf_change0NCINvNvB2z_8for_each4callB4g_NCB4r_s_0E0E0E0uECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %i.a, i64 noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsK_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7IterMutyNtNtNtCs3r24GR8eSjc_4raft7tracker8progress8ProgressENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1L_8adapters6filter11filter_foldTRyQBP_EuNCNvMs4_NtBV_4raftINtB3D_4RaftNtNtNtCsgGgPqgSfnMH_7storage15content_manager17consensus_manager17ConsensusStateRefE24bcast_heartbeat_with_ctx0NCINvNvB1F_8for_each4callB3m_NCB3x_s_0E0E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8, !noundef !11
  call void @_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTyNtNtNtCs3r24GR8eSjc_4raft7tracker8progress8ProgressEE9fold_implNCINvXsK_NtB8_3mapINtB26_7IterMutyBW_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2F_8adapters6filter11filter_foldTRyQBW_EuNCNvMs4_NtB12_4raftINtB4x_4RaftNtNtNtCsgGgPqgSfnMH_7storage15content_manager17consensus_manager17ConsensusStateRefE24bcast_heartbeat_with_ctx0NCINvNvB2z_8for_each4callB4g_NCB4r_s_0E0E0E0uECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %i.a, i64 noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvXsU_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_4KeysNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIduENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldyNCINvNtNtBP_6common5utils21unordered_hash_uniqueRBL_INtNtNtNtCsG258MDvU3F_3std11collections4hash3set4IterBL_ENtNtNtB3A_4hash6random13DefaultHasherE0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1966)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.a, ptr %i.c, align 8, !noalias !1967
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1967
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(40) %0, i64 32, i1 false), !noalias !1968
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1966, !noundef !11
  %i.f = call noundef i64 @_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIduEE9fold_implNCINvXsG_NtB8_3mapINtB24_4IterBV_uENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldyNCINvXsU_B24_INtB24_4KeysBV_uEB2u_4foldyNCINvNtNtBZ_6common5utils21unordered_hash_uniqueRBV_INtNtNtNtCsG258MDvU3F_3std11collections4hash3set4IterBV_ENtNtNtB58_4hash6random13DefaultHasherE0E0E0yECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %i.b, i64 noundef %i.e, i64 noundef %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c), !noalias !1966
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1967
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i64 %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsU_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_4KeysNtNtCsliWsDkOzYJy_4http6method6MethoduENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldNtNtCsexYYUdYSQU6_5alloc6string6StringNCINvNtCsbEyXj2whuwq_10actix_cors7builder25intersperse_header_valuesBL_E0ECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1974)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.a, ptr %i.c, align 8, !noalias !1975
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1975
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(40) %1, i64 32, i1 false), !noalias !1976
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1974, !noundef !11
  call void @_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsliWsDkOzYJy_4http6method6MethoduEE9fold_implNCINvXsG_NtB8_3mapINtB1S_4IterBV_uENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldNtNtCsexYYUdYSQU6_5alloc6string6StringNCINvXsU_B1S_INtB1S_4KeysBV_uEB2i_4foldB3i_NCINvNtCsbEyXj2whuwq_10actix_cors7builder25intersperse_header_valuesBV_E0E0E0B3i_ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %i.b, i64 noundef %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c), !noalias !1974
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1975
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i8 @_RINvXsU_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_4KeysNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9SpanEventuENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldNtNtNtCs4hE0XgIM7pO_18tracing_subscriber3fmt6format7FmtSpanNCINvNtNtB1I_8adapters6copied9copy_foldBL_B2C_NCINvMs_BN_BL_13into_fmt_spanINtB3E_6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4IterBL_EEE0E0EBR_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, i8 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1980)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.a, ptr %i.c, align 8, !noalias !1981
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1981
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(40) %0, i64 32, i1 false), !noalias !1982
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1980, !noundef !11
  %i.f = call noundef i8 @_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9SpanEventuEE9fold_implNCINvXsG_NtB8_3mapINtB26_4IterBV_uENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldNtNtNtCs4hE0XgIM7pO_18tracing_subscriber3fmt6format7FmtSpanNCINvXsU_B26_INtB26_4KeysBV_uEB2w_4foldB3w_NCINvNtNtB2C_8adapters6copied9copy_foldBV_B3w_NCINvMs_BX_BV_13into_fmt_spanINtB5f_6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4IterBV_EEE0E0E0E0B3w_EB11_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %i.b, i64 noundef %i.e, i8 noundef %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c), !noalias !1980
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1981
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i8 %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsU_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_4KeysNtNtNtCsliWsDkOzYJy_4http6header4name10HeaderNameuENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldNtNtCsexYYUdYSQU6_5alloc6string6StringNCINvNtCsbEyXj2whuwq_10actix_cors7builder25intersperse_header_valuesBL_E0ECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1988)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.a, ptr %i.c, align 8, !noalias !1989
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1989
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(40) %1, i64 32, i1 false), !noalias !1990
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1988, !noundef !11
  call void @_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsliWsDkOzYJy_4http6header4name10HeaderNameuEE9fold_implNCINvXsG_NtB8_3mapINtB24_4IterBV_uENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldNtNtCsexYYUdYSQU6_5alloc6string6StringNCINvXsU_B24_INtB24_4KeysBV_uEB2u_4foldB3u_NCINvNtCsbEyXj2whuwq_10actix_cors7builder25intersperse_header_valuesBV_E0E0E0B3u_ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %i.b, i64 noundef %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c), !noalias !1988
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1989
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsU_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_4KeysReuENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldNtNtCsexYYUdYSQU6_5alloc6string6StringNCINvNtCsbEyXj2whuwq_10actix_cors7builder25intersperse_header_valuesBL_E0ECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1996)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.a, ptr %i.c, align 8, !noalias !1997
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1997
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(40) %1, i64 32, i1 false), !noalias !1998
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1996, !noundef !11
  call void @_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTReuEE9fold_implNCINvXsG_NtB8_3mapINtB1j_4IterBV_uENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldNtNtCsexYYUdYSQU6_5alloc6string6StringNCINvXsU_B1j_INtB1j_4KeysBV_uEB1J_4foldB2J_NCINvNtCsbEyXj2whuwq_10actix_cors7builder25intersperse_header_valuesBV_E0E0E0B2J_ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %i.b, i64 noundef %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c), !noalias !1996
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1997
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RINvXsU_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_4KeysmuENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldmNCINvNtNtBU_8adapters6copied9copy_foldmmNvYmNtNtBW_3cmp3Ord3maxE0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2002)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.a, ptr %i.c, align 8, !noalias !2003
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2003
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(40) %0, i64 32, i1 false), !noalias !2004
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !2002, !noundef !11
  %i.f = call noundef i32 @_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTmuEE9fold_implNCINvXsG_NtB8_3mapINtB1i_4ItermuENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldmNCINvXsU_B1i_INtB1i_4KeysmuEB1G_4foldmNCINvNtNtB1M_8adapters6copied9copy_foldmmNvYmNtNtB1O_3cmp3Ord3maxE0E0E0mECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %i.b, i64 noundef %i.e, i32 noundef %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c), !noalias !2002
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2003
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i32 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtBW_6errors12StorageErrorEEEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B2b_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0E0Csl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !align !14, !noundef !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !11, !align !14, !noundef !11
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !11, !noundef !11
  %i.e = sub nsw i64 0, %1
  %i.f = getelementptr inbounds [104 x i8], ptr %i.d, i64 %i.e ; 24 uses
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -104
  %.val = load ptr, ptr %i.a, align 8, !nonnull !11, !align !14, !noundef !11 ; 24 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2090)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2091)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2092)
  %i.h = load i64, ptr %i.g, align 8, !range !15, !alias.scope !2093, !noundef !11 ; 3 uses
  %i.i = icmp ne i64 %i.h, -9223372036854775804
  tail call void @llvm.assume(i1 %i.i)
  %i.j = xor i64 %i.h, -9223372036854775808
  %i.k = icmp slt i64 %i.h, 0
  %i.l = select i1 %i.k, i64 %i.j, i64 4          ; 2 uses
  %i.m = load i64, ptr %.val, align 8, !range !15, !alias.scope !2092, !noalias !2090, !noundef !11 ; 3 uses
  %i.n = icmp ne i64 %i.m, -9223372036854775804
  tail call void @llvm.assume(i1 %i.n)
  %i.o = xor i64 %i.m, -9223372036854775808
  %i.p = icmp slt i64 %i.m, 0
  %i.q = select i1 %i.p, i64 %i.o, i64 4
  %i.r = icmp eq i64 %i.l, %i.q
  br i1 %i.r, label %bb.b, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.b:                                             ; preds = %bb.a
  switch i64 %i.l, label %bb.c [
    i64 0, label %bb.d
    i64 1, label %bb.gv
    i64 2, label %bb.gy
    i64 3, label %bb.gz
    i64 4, label %bb.hf
    i64 5, label %bb.hi
    i64 7, label %bb.ht
    i64 6, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit
  ]

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds i8, ptr %i.f, i64 -96
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !2093, !nonnull !11, !noundef !11 ; 127 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !2092, !noalias !2090, !nonnull !11, !noundef !11 ; 127 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2094)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2095)
  %i.w = load i64, ptr %i.t, align 8, !range !32, !alias.scope !2094, !noalias !2096, !noundef !11 ; 2 uses
  %i.x = tail call i64 @llvm.usub.sat.i64(i64 %i.w, i64 1) ; 2 uses
  %i.y = load i64, ptr %i.v, align 8, !range !32, !alias.scope !2095, !noalias !2096, !noundef !11 ; 16 uses
  %i.z = tail call i64 @llvm.usub.sat.i64(i64 %i.y, i64 1)
  %i.aa = icmp eq i64 %i.x, %i.z
  br i1 %i.aa, label %bb.e, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.e:                                             ; preds = %bb.d
  switch i64 %i.x, label %default.unreachable [
    i64 0, label %bb.f
    i64 1, label %bb.cn
    i64 2, label %bb.ee
    i64 3, label %bb.eg
    i64 4, label %bb.ei
    i64 5, label %bb.ej
    i64 6, label %bb.ek
    i64 7, label %bb.es
    i64 8, label %bb.fc
    i64 9, label %bb.fj
    i64 10, label %bb.fp
    i64 11, label %bb.fv
    i64 12, label %bb.gm
    i64 13, label %bb.gq
  ]

default.unreachable:                              ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.ab = icmp samesign ult i64 %i.y, 2
  tail call void @llvm.assume(i1 %i.ab)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2097)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2098)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 864
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !2099, !noalias !2096, !noundef !11 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 864
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !2100, !noalias !2096, !noundef !11
  %i.ag = icmp eq i64 %i.ad, %i.af
  br i1 %i.ag, label %bb.g, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 856
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !2100, !noalias !2096, !nonnull !11, !noundef !11
  %i.aj = getelementptr inbounds nuw i8, ptr %i.t, i64 856
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !2099, !noalias !2096, !nonnull !11, !noundef !11
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.ak, ptr nonnull %i.ai, i64 %i.ad), !noalias !2096
  %i.al = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.al, label %bb.h, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2101)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2102)
  %i.am = getelementptr inbounds nuw i8, ptr %i.t, i64 600
  %i.an = getelementptr inbounds nuw i8, ptr %i.v, i64 600
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2103)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2104)
  %i.ao = load i64, ptr %i.am, align 8, !range !18, !alias.scope !2105, !noalias !2096, !noundef !11 ; 3 uses
  %i.ap = icmp eq i64 %i.ao, -1                   ; 2 uses
  %i.aq = load i64, ptr %i.an, align 8, !range !18, !alias.scope !2106, !noalias !2096, !noundef !11 ; 3 uses
  %i.ar = icmp eq i64 %i.aq, -1                   ; 3 uses
  %i.as = xor i1 %i.ap, %i.ar
  br i1 %i.as, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %i.ap, label %.split.i.i.i.i.i, label %bb.j

.split.i.i.i.i.i:                                 ; preds = %bb.i
  tail call void @llvm.assume(i1 %i.ar)
  %i.at = getelementptr inbounds nuw i8, ptr %i.t, i64 608
  %i.au = getelementptr inbounds nuw i8, ptr %i.v, i64 608
  %i.av = tail call noundef zeroext i1 @_RNvXs1t_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtBc_6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.at, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.au), !noalias !2096
  br i1 %i.av, label %bb.aw, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.j:                                             ; preds = %bb.i
  %i.aw = xor i1 %i.ar, true
  tail call void @llvm.assume(i1 %i.aw)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2107)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2108)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.t, i64 688
  %i.ay = load i64, ptr %i.ax, align 8, !range !2109, !alias.scope !2110, !noalias !2096, !noundef !11
  %i.az = getelementptr inbounds nuw i8, ptr %i.v, i64 688
  %i.ba = load i64, ptr %i.az, align 8, !range !2109, !alias.scope !2111, !noalias !2096, !noundef !11
  %i.bb = icmp eq i64 %i.ay, %i.ba
  br i1 %i.bb, label %bb.k, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.k:                                             ; preds = %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %i.t, i64 710
  %i.bd = load i8, ptr %i.bc, align 2, !range !36, !alias.scope !2110, !noalias !2096, !noundef !11
  %i.be = getelementptr inbounds nuw i8, ptr %i.v, i64 710
  %i.bf = load i8, ptr %i.be, align 2, !range !36, !alias.scope !2111, !noalias !2096, !noundef !11
  %i.bg = icmp eq i8 %i.bd, %i.bf
  br i1 %i.bg, label %bb.l, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.l:                                             ; preds = %bb.k
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ao, 2
  %i.bh = icmp eq i64 %i.aq, 2                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  br i1 %i.bh, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit, label %bb.o

bb.n:                                             ; preds = %bb.l
  br i1 %i.bh, label %bb.ak, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.o:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2112)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2113)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.t, i64 608
  %i.bj = trunc nuw i64 %i.ao to i1
  %i.bk = trunc nuw i64 %i.aq to i1               ; 2 uses
  br i1 %i.bj, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  br i1 %i.bk, label %.split.i.i.i.i.i.i.i.i, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.q:                                             ; preds = %bb.o
  br i1 %i.bk, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit, label %bb.r

.split.i.i.i.i.i.i.i.i:                           ; preds = %bb.p
  %i.bl = getelementptr inbounds nuw i8, ptr %i.v, i64 608
  %i.bm = load i64, ptr %i.bi, align 8, !alias.scope !2114, !noalias !2096, !noundef !11
  %i.bn = load i64, ptr %i.bl, align 8, !alias.scope !2115, !noalias !2096, !noundef !11
  %i.bo = icmp eq i64 %i.bm, %i.bn
  br i1 %i.bo, label %bb.r, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.r:                                             ; preds = %.split.i.i.i.i.i.i.i.i, %bb.q
  %i.bp = getelementptr inbounds nuw i8, ptr %i.t, i64 616
  %i.bq = load i64, ptr %i.bp, align 8, !range !23, !alias.scope !2114, !noalias !2096, !noundef !11
  %i.br = getelementptr inbounds nuw i8, ptr %i.t, i64 624
  %i.bs = trunc nuw i64 %i.bq to i1
  %i.bt = getelementptr inbounds nuw i8, ptr %i.v, i64 616
  %i.bu = load i64, ptr %i.bt, align 8, !range !23, !alias.scope !2115, !noalias !2096, !noundef !11
  %i.bv = trunc nuw i64 %i.bu to i1               ; 2 uses
  br i1 %i.bs, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  br i1 %i.bv, label %.split13.i.i.i.i.i.i.i.i, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.t:                                             ; preds = %bb.r
  br i1 %i.bv, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit, label %bb.u

.split13.i.i.i.i.i.i.i.i:                         ; preds = %bb.s
  %i.bw = getelementptr inbounds nuw i8, ptr %i.v, i64 624
  %i.bx = load i64, ptr %i.br, align 8, !alias.scope !2114, !noalias !2096, !noundef !11
  %i.by = load i64, ptr %i.bw, align 8, !alias.scope !2115, !noalias !2096, !noundef !11
  %i.bz = icmp eq i64 %i.bx, %i.by
  br i1 %i.bz, label %bb.u, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.u:                                             ; preds = %.split13.i.i.i.i.i.i.i.i, %bb.t
  %i.ca = getelementptr inbounds nuw i8, ptr %i.t, i64 632
  %i.cb = load i64, ptr %i.ca, align 8, !range !23, !alias.scope !2114, !noalias !2096, !noundef !11
  %i.cc = getelementptr inbounds nuw i8, ptr %i.t, i64 640
  %i.cd = trunc nuw i64 %i.cb to i1
  %i.ce = getelementptr inbounds nuw i8, ptr %i.v, i64 632
  %i.cf = load i64, ptr %i.ce, align 8, !range !23, !alias.scope !2115, !noalias !2096, !noundef !11
  %i.cg = trunc nuw i64 %i.cf to i1               ; 2 uses
  br i1 %i.cd, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  br i1 %i.cg, label %.split14.i.i.i.i.i.i.i.i, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.w:                                             ; preds = %bb.u
  br i1 %i.cg, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit, label %bb.x

.split14.i.i.i.i.i.i.i.i:                         ; preds = %bb.v
  %i.ch = getelementptr inbounds nuw i8, ptr %i.v, i64 640
  %i.ci = load i64, ptr %i.cc, align 8, !alias.scope !2114, !noalias !2096, !noundef !11
  %i.cj = load i64, ptr %i.ch, align 8, !alias.scope !2115, !noalias !2096, !noundef !11
  %i.ck = icmp eq i64 %i.ci, %i.cj
  br i1 %i.ck, label %bb.x, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.x:                                             ; preds = %.split14.i.i.i.i.i.i.i.i, %bb.w
  %i.cl = getelementptr inbounds nuw i8, ptr %i.t, i64 648
  %i.cm = load i64, ptr %i.cl, align 8, !range !23, !alias.scope !2114, !noalias !2096, !noundef !11
  %i.cn = getelementptr inbounds nuw i8, ptr %i.t, i64 656
  %i.co = trunc nuw i64 %i.cm to i1
  %i.cp = getelementptr inbounds nuw i8, ptr %i.v, i64 648
  %i.cq = load i64, ptr %i.cp, align 8, !range !23, !alias.scope !2115, !noalias !2096, !noundef !11
  %i.cr = trunc nuw i64 %i.cq to i1               ; 2 uses
  br i1 %i.co, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  br i1 %i.cr, label %.split15.i.i.i.i.i.i.i.i, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.z:                                             ; preds = %bb.x
  br i1 %i.cr, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit, label %bb.aa

.split15.i.i.i.i.i.i.i.i:                         ; preds = %bb.y
  %i.cs = getelementptr inbounds nuw i8, ptr %i.v, i64 656
  %i.ct = load i64, ptr %i.cn, align 8, !alias.scope !2114, !noalias !2096, !noundef !11
  %i.cu = load i64, ptr %i.cs, align 8, !alias.scope !2115, !noalias !2096, !noundef !11
  %i.cv = icmp eq i64 %i.ct, %i.cu
  br i1 %i.cv, label %bb.aa, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.aa:                                            ; preds = %.split15.i.i.i.i.i.i.i.i, %bb.z
  %i.cw = getelementptr inbounds nuw i8, ptr %i.t, i64 680
  %i.cx = load i8, ptr %i.cw, align 8, !range !28, !alias.scope !2114, !noalias !2096, !noundef !11 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.cx, 2
  %i.cy = getelementptr inbounds nuw i8, ptr %i.v, i64 680
  %i.cz = load i8, ptr %i.cy, align 8, !range !28, !alias.scope !2115, !noalias !2096, !noundef !11 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
end_hunk_0
begin_hunk_1_@_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtBW_6errors12StorageErrorEEEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B2b_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0E0Csl8OoimOLbh_6qdrant:bb.a

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.gt = getelementptr inbounds nuw i8, ptr %i.t, i64 847
  %i.gu = load i8, ptr %i.gt, align 1, !range !2119, !alias.scope !2117, !noalias !2096, !noundef !11 ; 2 uses
  %.not17.i.i.i.i.i = icmp eq i8 %i.gu, -2
  %i.gv = getelementptr inbounds nuw i8, ptr %i.v, i64 847
  %i.gw = load i8, ptr %i.gv, align 1, !range !2119, !alias.scope !2118, !noalias !2096, !noundef !11 ; 2 uses
  br i1 %.not17.i.i.i.i.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %.sroa.0.0.shrunk.i32.i.i.i.i.i = icmp eq i8 %i.gw, %i.gu
  br i1 %.sroa.0.0.shrunk.i32.i.i.i.i.i, label %bb.bo, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.bn:                                            ; preds = %bb.bl
  %i.gx = icmp eq i8 %i.gw, -2
  br i1 %i.gx, label %bb.bo, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.gy = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 2 uses
  %i.gz = load i64, ptr %i.gy, align 8, !range !19, !alias.scope !2117, !noalias !2096, !noundef !11
  %.not19.i.i.i.i.i = icmp eq i64 %i.gz, 2
  %i.ha = getelementptr inbounds nuw i8, ptr %i.v, i64 32 ; 2 uses
  %i.hb = load i64, ptr %i.ha, align 8, !range !19, !alias.scope !2118, !noalias !2096, !noundef !11
  %i.hc = icmp eq i64 %i.hb, 2                    ; 2 uses
  br i1 %.not19.i.i.i.i.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  br i1 %i.hc, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit, label %.split40.i.i.i.i.i

bb.bq:                                            ; preds = %bb.bo
  br i1 %i.hc, label %bb.br, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

.split40.i.i.i.i.i:                               ; preds = %bb.bp
  %i.hd = tail call fastcc noundef zeroext i1 @_RNvXsk_NtNtCsPYQCUnoTxQ_10collection10operations11config_diffNtB5_14HnswConfigDiffNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.gy, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.ha) #23, !alias.scope !2120, !noalias !2096
  br i1 %i.hd, label %bb.br, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.br:                                            ; preds = %.split40.i.i.i.i.i, %bb.bq
  %i.he = getelementptr inbounds nuw i8, ptr %i.t, i64 120 ; 2 uses
  %i.hf = load i64, ptr %i.he, align 8, !range !19, !alias.scope !2117, !noalias !2096, !noundef !11
  %.not21.i.i.i.i.i = icmp eq i64 %i.hf, 2
  %i.hg = getelementptr inbounds nuw i8, ptr %i.v, i64 120 ; 2 uses
  %i.hh = load i64, ptr %i.hg, align 8, !range !19, !alias.scope !2118, !noalias !2096, !noundef !11
  %i.hi = icmp eq i64 %i.hh, 2                    ; 2 uses
  br i1 %.not21.i.i.i.i.i, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  br i1 %i.hi, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit, label %.split41.i.i.i.i.i

bb.bt:                                            ; preds = %bb.br
  br i1 %i.hi, label %bb.bu, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

.split41.i.i.i.i.i:                               ; preds = %bb.bs
  %i.hj = tail call fastcc noundef zeroext i1 @_RNvXss_NtNtCsPYQCUnoTxQ_10collection10operations11config_diffNtB5_13WalConfigDiffNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.he, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.hg) #23, !alias.scope !2120, !noalias !2096
  br i1 %i.hj, label %bb.bu, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.bu:                                            ; preds = %.split41.i.i.i.i.i, %bb.bt
  %i.hk = getelementptr inbounds nuw i8, ptr %i.t, i64 168 ; 2 uses
  %i.hl = load i64, ptr %i.hk, align 8, !range !19, !alias.scope !2117, !noalias !2096, !noundef !11
  %.not23.i.i.i.i.i = icmp eq i64 %i.hl, 2
  %i.hm = getelementptr inbounds nuw i8, ptr %i.v, i64 168 ; 2 uses
  %i.hn = load i64, ptr %i.hm, align 8, !range !19, !alias.scope !2118, !noalias !2096, !noundef !11
  %i.ho = icmp eq i64 %i.hn, 2                    ; 2 uses
  br i1 %.not23.i.i.i.i.i, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  br i1 %i.ho, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit, label %.split42.i.i.i.i.i

bb.bw:                                            ; preds = %bb.bu
  br i1 %i.ho, label %bb.bx, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

.split42.i.i.i.i.i:                               ; preds = %bb.bv
  %i.hp = tail call fastcc noundef zeroext i1 @_RNvXsI_NtNtCsPYQCUnoTxQ_10collection10operations11config_diffNtB5_20OptimizersConfigDiffNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) %i.hk, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) %i.hm) #23, !alias.scope !2120, !noalias !2096
  br i1 %i.hp, label %bb.bx, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.bx:                                            ; preds = %.split42.i.i.i.i.i, %bb.bw
  %i.hq = getelementptr inbounds nuw i8, ptr %i.t, i64 816 ; 2 uses
  %i.hr = load i32, ptr %i.hq, align 8, !range !2116, !alias.scope !2117, !noalias !2096, !noundef !11
  %.not25.i.i.i.i.i = icmp eq i32 %i.hr, -1
  %i.hs = getelementptr inbounds nuw i8, ptr %i.v, i64 816 ; 2 uses
  %i.ht = load i32, ptr %i.hs, align 8, !range !2116, !alias.scope !2118, !noalias !2096, !noundef !11
  %i.hu = icmp eq i32 %i.ht, -1                   ; 2 uses
  br i1 %.not25.i.i.i.i.i, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  br i1 %i.hu, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit, label %.split43.i.i.i.i.i

bb.bz:                                            ; preds = %bb.bx
  br i1 %i.hu, label %bb.ca, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

.split43.i.i.i.i.i:                               ; preds = %bb.by
  %i.hv = tail call fastcc noundef zeroext i1 @_RNvXs6L_NtCs607s0NAIaWN_7segment5typesNtB6_18QuantizationConfigNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.hq, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.hs) #23, !noalias !2096
  br i1 %i.hv, label %bb.ca, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.ca:                                            ; preds = %.split43.i.i.i.i.i, %bb.bz
  %i.hw = trunc nuw i64 %i.w to i1
  %i.hx = trunc nuw i64 %i.y to i1                ; 2 uses
  br i1 %i.hw, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  br i1 %i.hx, label %.split44.i.i.i.i.i, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.cc:                                            ; preds = %bb.ca
  br i1 %i.hx, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit, label %bb.cd

.split44.i.i.i.i.i:                               ; preds = %bb.cb
  %i.hy = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.hz = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ia = tail call noundef zeroext i1 @_RNvXs1t_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtBc_6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hy, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hz), !noalias !2096
  br i1 %i.ia, label %bb.cd, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.cd:                                            ; preds = %.split44.i.i.i.i.i, %bb.cc
  %i.ib = getelementptr inbounds nuw i8, ptr %i.t, i64 304 ; 2 uses
  %i.ic = load i64, ptr %i.ib, align 8, !range !19, !alias.scope !2117, !noalias !2096, !noundef !11
  %.not27.i.i.i.i.i = icmp eq i64 %i.ic, 2
  %i.id = getelementptr inbounds nuw i8, ptr %i.v, i64 304 ; 2 uses
  %i.ie = load i64, ptr %i.id, align 8, !range !19, !alias.scope !2118, !noalias !2096, !noundef !11
  %i.if = icmp eq i64 %i.ie, 2                    ; 2 uses
  br i1 %.not27.i.i.i.i.i, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  br i1 %i.if, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit, label %.split45.i.i.i.i.i

bb.cf:                                            ; preds = %bb.cd
  br i1 %i.if, label %bb.cg, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

.split45.i.i.i.i.i:                               ; preds = %bb.ce
  %i.ig = tail call fastcc noundef zeroext i1 @_RNvXs7X_NtCs607s0NAIaWN_7segment5typesNtB6_16StrictModeConfigNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(296) %i.ib, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(296) %i.id) #23, !noalias !2096
  br i1 %i.ig, label %bb.cg, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.cg:                                            ; preds = %.split45.i.i.i.i.i, %bb.cf
  %i.ih = getelementptr inbounds nuw i8, ptr %i.t, i64 828
  %i.ii = load i8, ptr %i.ih, align 4, !range !16, !alias.scope !2117, !noalias !2096, !noundef !11
  %i.ij = trunc nuw i8 %i.ii to i1
  %i.ik = getelementptr inbounds nuw i8, ptr %i.v, i64 828
  %i.il = load i8, ptr %i.ik, align 4, !range !16, !alias.scope !2118, !noalias !2096, !noundef !11
  %i.im = trunc nuw i8 %i.il to i1                ; 2 uses
  br i1 %i.ij, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  br i1 %i.im, label %.split46.i.i.i.i.i, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.ci:                                            ; preds = %bb.cg
  br i1 %i.im, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit, label %bb.cj

.split46.i.i.i.i.i:                               ; preds = %bb.ch
  %i.in = getelementptr inbounds nuw i8, ptr %i.t, i64 829
  %i.io = load i128, ptr %i.in, align 1, !alias.scope !2117, !noalias !2096, !noundef !11
  %i.ip = getelementptr inbounds nuw i8, ptr %i.v, i64 829
  %i.iq = load i128, ptr %i.ip, align 1, !alias.scope !2118, !noalias !2096, !noundef !11
  %i.ir = icmp eq i128 %i.io, %i.iq
  br i1 %i.ir, label %bb.cj, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.cj:                                            ; preds = %.split46.i.i.i.i.i, %bb.ci
  %i.is = getelementptr inbounds nuw i8, ptr %i.t, i64 720 ; 2 uses
  %i.it = load i64, ptr %i.is, align 8, !range !17, !alias.scope !2117, !noalias !2096, !noundef !11 ; 2 uses
  %.not29.i.i.i.i.i = icmp eq i64 %i.it, -1
  %i.iu = getelementptr inbounds nuw i8, ptr %i.v, i64 720 ; 2 uses
  %i.iv = load i64, ptr %i.iu, align 8, !range !17, !alias.scope !2118, !noalias !2096, !noundef !11 ; 2 uses
  %i.iw = icmp eq i64 %i.iv, -1
  %brmerge.i.i.i.i.i = or i1 %.not29.i.i.i.i.i, %i.iw
  br i1 %brmerge.i.i.i.i.i, label %_RNvXsO_NtNtCsgGgPqgSfnMH_7storage15content_manager19collection_meta_opsNtB5_16CreateCollectionNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i.i.i, label %.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.cj
  %i.ix = tail call noundef zeroext i1 @_RNvXse_NtCshqfBqtY9aGF_8indexmap3mapINtB5_8IndexMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.is, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.iu), !noalias !2096
  br i1 %i.ix, label %bb.ck, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

_RNvXsO_NtNtCsgGgPqgSfnMH_7storage15content_manager19collection_meta_opsNtB5_16CreateCollectionNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i.i.i: ; preds = %bb.cj
  %i.iy = and i64 %i.iv, %i.it
  %.mux.i.i.i.i.i = icmp eq i64 %i.iy, -1
  br i1 %.mux.i.i.i.i.i, label %bb.ck, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.ck:                                            ; preds = %_RNvXsO_NtNtCsgGgPqgSfnMH_7storage15content_manager19collection_meta_opsNtB5_16CreateCollectionNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i.i.i, %.split.i.i.i.i
  %i.iz = getelementptr inbounds nuw i8, ptr %i.t, i64 872
  %i.ja = load i64, ptr %i.iz, align 8, !range !17, !alias.scope !2099, !noalias !2096, !noundef !11 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.ja, -1
  %i.jb = getelementptr inbounds nuw i8, ptr %i.v, i64 872
  %i.jc = load i64, ptr %i.jb, align 8, !range !17, !alias.scope !2100, !noalias !2096, !noundef !11 ; 2 uses
  %i.jd = icmp eq i64 %i.jc, -1
  %brmerge.i.i.i.i = or i1 %.not.i.i.i.i, %i.jd
  %i.je = and i64 %i.jc, %i.ja
  %.mux.i.i.i.i = icmp eq i64 %i.je, -1
  br i1 %brmerge.i.i.i.i, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.jf = getelementptr inbounds nuw i8, ptr %i.t, i64 888
  %i.jg = load i64, ptr %i.jf, align 8, !alias.scope !2099, !noalias !2096, !noundef !11 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.v, i64 888
  %i.ji = load i64, ptr %i.jh, align 8, !alias.scope !2100, !noalias !2096, !noundef !11
  %i.jj = icmp eq i64 %i.jg, %i.ji
  br i1 %i.jj, label %bb.cm, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.cm:                                            ; preds = %bb.cl
  %i.jk = getelementptr inbounds nuw i8, ptr %i.v, i64 880
  %i.jl = load ptr, ptr %i.jk, align 8, !alias.scope !2100, !noalias !2096, !nonnull !11, !noundef !11
  %i.jm = getelementptr inbounds nuw i8, ptr %i.t, i64 880
  %i.jn = load ptr, ptr %i.jm, align 8, !alias.scope !2099, !noalias !2096, !nonnull !11, !noundef !11
  %i.jo = tail call noundef zeroext i1 @_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpTmINtNtCsexYYUdYSQU6_5alloc3vec3VecyEEINtB5_14SlicePartialEqBC_E17equal_same_lengthCsl8OoimOLbh_6qdrant(ptr noundef nonnull %i.jn, ptr noundef nonnull %i.jl, i64 noundef %i.jg), !noalias !2096
  br label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.cn:                                            ; preds = %bb.e
  %2 = icmp eq i64 %i.y, 2
  tail call void @llvm.assume(i1 %2)
  %i.jp = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.jq = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2121)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2122)
  %i.jr = getelementptr inbounds nuw i8, ptr %i.t, i64 736
  %i.js = load i64, ptr %i.jr, align 8, !alias.scope !2123, !noalias !2096, !noundef !11 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.v, i64 736
  %i.ju = load i64, ptr %i.jt, align 8, !alias.scope !2124, !noalias !2096, !noundef !11
  %i.jv = icmp eq i64 %i.js, %i.ju
  br i1 %i.jv, label %bb.co, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.co:                                            ; preds = %bb.cn
  %i.jw = getelementptr inbounds nuw i8, ptr %i.v, i64 728
  %i.jx = load ptr, ptr %i.jw, align 8, !alias.scope !2124, !noalias !2096, !nonnull !11, !noundef !11
  %i.jy = getelementptr inbounds nuw i8, ptr %i.t, i64 728
  %i.jz = load ptr, ptr %i.jy, align 8, !alias.scope !2123, !noalias !2096, !nonnull !11, !noundef !11
  %bcmp.i13.i.i.i = tail call i32 @bcmp(ptr nonnull %i.jz, ptr nonnull %i.jx, i64 %i.js), !noalias !2096
  %i.ka = icmp eq i32 %bcmp.i13.i.i.i, 0
  br i1 %i.ka, label %bb.cp, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.cp:                                            ; preds = %bb.co
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2125)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2126)
  %i.kb = load i64, ptr %i.jp, align 8, !range !23, !alias.scope !2127, !noalias !2096, !noundef !11
  %i.kc = trunc nuw i64 %i.kb to i1
  %i.kd = load i64, ptr %i.jq, align 8, !range !23, !alias.scope !2128, !noalias !2096, !noundef !11
  %i.ke = trunc nuw i64 %i.kd to i1               ; 2 uses
  br i1 %i.kc, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  br i1 %i.ke, label %.split.i.i23.i.i.i, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.cr:                                            ; preds = %bb.cp
  br i1 %i.ke, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit, label %bb.cs

.split.i.i23.i.i.i:                               ; preds = %bb.cq
  %i.kf = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.kg = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.kh = tail call noundef zeroext i1 @_RNvXs1t_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtBc_6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types16VectorParamsDiffENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kf, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kg), !noalias !2096
  br i1 %i.kh, label %bb.cs, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.cs:                                            ; preds = %.split.i.i23.i.i.i, %bb.cr
  %i.ki = getelementptr inbounds nuw i8, ptr %i.t, i64 72 ; 2 uses
  %i.kj = load i64, ptr %i.ki, align 8, !range !19, !alias.scope !2127, !noalias !2096, !noundef !11
  %.not.i.i14.i.i.i = icmp eq i64 %i.kj, 2
  %i.kk = getelementptr inbounds nuw i8, ptr %i.v, i64 72 ; 2 uses
  %i.kl = load i64, ptr %i.kk, align 8, !range !19, !alias.scope !2128, !noalias !2096, !noundef !11
  %i.km = icmp eq i64 %i.kl, 2                    ; 2 uses
  br i1 %.not.i.i14.i.i.i, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  br i1 %i.km, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit, label %.split19.i.i.i.i.i

bb.cu:                                            ; preds = %bb.cs
  br i1 %i.km, label %bb.cv, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

.split19.i.i.i.i.i:                               ; preds = %bb.ct
  %i.kn = tail call fastcc noundef zeroext i1 @_RNvXsI_NtNtCsPYQCUnoTxQ_10collection10operations11config_diffNtB5_20OptimizersConfigDiffNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) %i.ki, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) %i.kk) #23, !alias.scope !2129, !noalias !2096
  br i1 %i.kn, label %bb.cv, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.cv:                                            ; preds = %.split19.i.i.i.i.i, %bb.cu
  %i.ko = getelementptr inbounds nuw i8, ptr %i.t, i64 208
  %i.kp = load i64, ptr %i.ko, align 8, !range !19, !alias.scope !2127, !noalias !2096, !noundef !11 ; 2 uses
  %.not9.i.i.i.i.i = icmp eq i64 %i.kp, 2
  %i.kq = getelementptr inbounds nuw i8, ptr %i.v, i64 208
  %i.kr = load i64, ptr %i.kq, align 8, !range !19, !alias.scope !2128, !noalias !2096, !noundef !11 ; 2 uses
  %i.ks = icmp eq i64 %i.kr, 2                    ; 2 uses
  br i1 %.not9.i.i.i.i.i, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  br i1 %i.ks, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit, label %bb.cy

bb.cx:                                            ; preds = %bb.cv
  br i1 %i.ks, label %bb.do, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.cy:                                            ; preds = %bb.cw
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2130)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2131)
  %i.kt = getelementptr inbounds nuw i8, ptr %i.t, i64 232
  %i.ku = load i32, ptr %i.kt, align 8, !alias.scope !2132, !noalias !2096, !noundef !11 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ku, 0
  %i.kv = getelementptr inbounds nuw i8, ptr %i.v, i64 232
  %i.kw = load i32, ptr %i.kv, align 8, !alias.scope !2133, !noalias !2096, !noundef !11 ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.kx = icmp eq i32 %i.ku, %i.kw
  br i1 %i.kx, label %bb.db, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.da:                                            ; preds = %bb.cy
  %i.ky = icmp eq i32 %i.kw, 0
  br i1 %i.ky, label %bb.db, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.db:                                            ; preds = %bb.da, %bb.cz
  %i.kz = getelementptr inbounds nuw i8, ptr %i.t, i64 236
  %i.la = load i32, ptr %i.kz, align 4, !alias.scope !2132, !noalias !2096, !noundef !11 ; 2 uses
  %.not7.i.i.i.i.i.i = icmp eq i32 %i.la, 0
  %i.lb = getelementptr inbounds nuw i8, ptr %i.v, i64 236
  %i.lc = load i32, ptr %i.lb, align 4, !alias.scope !2133, !noalias !2096, !noundef !11 ; 2 uses
  br i1 %.not7.i.i.i.i.i.i, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.ld = icmp eq i32 %i.la, %i.lc
  br i1 %i.ld, label %bb.de, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.dd:                                            ; preds = %bb.db
  %i.le = icmp eq i32 %i.lc, 0
  br i1 %i.le, label %bb.de, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %i.lf = getelementptr inbounds nuw i8, ptr %i.t, i64 224
  %i.lg = load i32, ptr %i.lf, align 8, !range !38, !alias.scope !2132, !noalias !2096, !noundef !11
  %i.lh = getelementptr inbounds nuw i8, ptr %i.t, i64 228
  %i.li = trunc nuw i32 %i.lg to i1
  %i.lj = getelementptr inbounds nuw i8, ptr %i.v, i64 224
  %i.lk = load i32, ptr %i.lj, align 8, !range !38, !alias.scope !2133, !noalias !2096, !noundef !11
  %i.ll = trunc nuw i32 %i.lk to i1               ; 2 uses
  br i1 %i.li, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  br i1 %i.ll, label %.split15.i.i.i.i.i.i, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.dg:                                            ; preds = %bb.de
  br i1 %i.ll, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit, label %bb.dh

.split15.i.i.i.i.i.i:                             ; preds = %bb.df
  %i.lm = getelementptr inbounds nuw i8, ptr %i.v, i64 228
  %i.ln = load i32, ptr %i.lh, align 4, !alias.scope !2132, !noalias !2096, !noundef !11
  %i.lo = load i32, ptr %i.lm, align 4, !alias.scope !2133, !noalias !2096, !noundef !11
  %i.lp = icmp eq i32 %i.ln, %i.lo
  br i1 %i.lp, label %bb.dh, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.dh:                                            ; preds = %.split15.i.i.i.i.i.i, %bb.dg
  %i.lq = getelementptr inbounds nuw i8, ptr %i.t, i64 216
  %i.lr = trunc nuw i64 %i.kp to i1
  %i.ls = trunc nuw i64 %i.kr to i1               ; 2 uses
  br i1 %i.lr, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  br i1 %i.ls, label %.split16.i.i.i.i.i.i, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.dj:                                            ; preds = %bb.dh
  br i1 %i.ls, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit, label %bb.dk

.split16.i.i.i.i.i.i:                             ; preds = %bb.di
  %i.lt = getelementptr inbounds nuw i8, ptr %i.v, i64 216
  %i.lu = load i64, ptr %i.lq, align 8, !alias.scope !2132, !noalias !2096, !noundef !11
  %i.lv = load i64, ptr %i.lt, align 8, !alias.scope !2133, !noalias !2096, !noundef !11
  %i.lw = icmp eq i64 %i.lu, %i.lv
  br i1 %i.lw, label %bb.dk, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.dk:                                            ; preds = %.split16.i.i.i.i.i.i, %bb.dj
  %i.lx = getelementptr inbounds nuw i8, ptr %i.t, i64 240
  %i.ly = load i8, ptr %i.lx, align 8, !range !28, !alias.scope !2132, !noalias !2096, !noundef !11 ; 2 uses
  %.not9.i.i.i.i.i.i = icmp eq i8 %i.ly, 2
  %i.lz = getelementptr inbounds nuw i8, ptr %i.v, i64 240
  %i.ma = load i8, ptr %i.lz, align 8, !range !28, !alias.scope !2133, !noalias !2096, !noundef !11 ; 2 uses
  br i1 %.not9.i.i.i.i.i.i, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.mb = icmp eq i8 %i.ly, %i.ma
  br i1 %i.mb, label %bb.dn, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.dm:                                            ; preds = %bb.dk
  %i.mc = icmp eq i8 %i.ma, 2
  br i1 %i.mc, label %bb.dn, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  %i.md = getelementptr inbounds nuw i8, ptr %i.t, i64 241
  %i.me = load i8, ptr %i.md, align 1, !range !2119, !alias.scope !2132, !noalias !2096, !noundef !11 ; 2 uses
  %.not11.i.i.i.i.i.i = icmp eq i8 %i.me, -2
  %i.mf = getelementptr inbounds nuw i8, ptr %i.v, i64 241
  %i.mg = load i8, ptr %i.mf, align 1, !range !2119, !alias.scope !2133, !noalias !2096, !noundef !11 ; 2 uses
  br i1 %.not11.i.i.i.i.i.i, label %.split21.i.i.i.i.i, label %_RNvXsA_NtNtCsPYQCUnoTxQ_10collection10operations11config_diffNtB5_20CollectionParamsDiffNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i.i.i.i

.split21.i.i.i.i.i:                               ; preds = %bb.dn
  %i.mh = icmp eq i8 %i.mg, -2
  br i1 %i.mh, label %bb.do, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

_RNvXsA_NtNtCsPYQCUnoTxQ_10collection10operations11config_diffNtB5_20CollectionParamsDiffNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i.i.i.i: ; preds = %bb.dn
  %.sroa.0.0.shrunk.i.i.i.i.i.i.i = icmp eq i8 %i.mg, %i.me
  br i1 %.sroa.0.0.shrunk.i.i.i.i.i.i.i, label %bb.do, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.do:                                            ; preds = %_RNvXsA_NtNtCsPYQCUnoTxQ_10collection10operations11config_diffNtB5_20CollectionParamsDiffNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i.i.i.i, %.split21.i.i.i.i.i, %bb.cx
  %i.mi = getelementptr inbounds nuw i8, ptr %i.t, i64 248 ; 2 uses
  %i.mj = load i64, ptr %i.mi, align 8, !range !19, !alias.scope !2127, !noalias !2096, !noundef !11
  %.not11.i.i.i.i.i = icmp eq i64 %i.mj, 2
  %i.mk = getelementptr inbounds nuw i8, ptr %i.v, i64 248 ; 2 uses
  %i.ml = load i64, ptr %i.mk, align 8, !range !19, !alias.scope !2128, !noalias !2096, !noundef !11
  %i.mm = icmp eq i64 %i.ml, 2                    ; 2 uses
  br i1 %.not11.i.i.i.i.i, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  br i1 %i.mm, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit, label %.split22.i.i.i.i.i

bb.dq:                                            ; preds = %bb.do
  br i1 %i.mm, label %bb.dr, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

.split22.i.i.i.i.i:                               ; preds = %bb.dp
  %i.mn = tail call fastcc noundef zeroext i1 @_RNvXsk_NtNtCsPYQCUnoTxQ_10collection10operations11config_diffNtB5_14HnswConfigDiffNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.mi, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.mk) #23, !alias.scope !2129, !noalias !2096
  br i1 %i.mn, label %bb.dr, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.dr:                                            ; preds = %.split22.i.i.i.i.i, %bb.dq
  %i.mo = getelementptr inbounds nuw i8, ptr %i.t, i64 704 ; 2 uses
  %i.mp = load i32, ptr %i.mo, align 8, !range !2134, !alias.scope !2127, !noalias !2096, !noundef !11
  %.not13.i.i.i.i.i = icmp eq i32 %i.mp, -1
  %i.mq = getelementptr inbounds nuw i8, ptr %i.v, i64 704 ; 2 uses
  %i.mr = load i32, ptr %i.mq, align 8, !range !2134, !alias.scope !2128, !noalias !2096, !noundef !11
  %i.ms = icmp eq i32 %i.mr, -1                   ; 2 uses
  br i1 %.not13.i.i.i.i.i, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  br i1 %i.ms, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit, label %.split23.i.i.i.i.i

bb.dt:                                            ; preds = %bb.dr
  br i1 %i.ms, label %bb.du, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

.split23.i.i.i.i.i:                               ; preds = %bb.ds
  %i.mt = tail call fastcc noundef zeroext i1 @_RNvXsS_NtNtCsPYQCUnoTxQ_10collection10operations11config_diffNtB5_22QuantizationConfigDiffNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.mo, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.mq) #23, !noalias !2096
  br i1 %i.mt, label %bb.du, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.du:                                            ; preds = %.split23.i.i.i.i.i, %bb.dt
  %i.mu = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.mv = load i64, ptr %i.mu, align 8, !range !23, !alias.scope !2127, !noalias !2096, !noundef !11
  %i.mw = trunc nuw i64 %i.mv to i1
  %i.mx = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.my = load i64, ptr %i.mx, align 8, !range !23, !alias.scope !2128, !noalias !2096, !noundef !11
  %i.mz = trunc nuw i64 %i.my to i1               ; 2 uses
  br i1 %i.mw, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  br i1 %i.mz, label %.split24.i.i.i.i.i, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.dw:                                            ; preds = %bb.du
  br i1 %i.mz, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit, label %bb.dx

.split24.i.i.i.i.i:                               ; preds = %bb.dv
  %i.na = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.nb = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.nc = tail call noundef zeroext i1 @_RNvXs1t_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtBc_6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.na, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.nb), !noalias !2096
  br i1 %i.nc, label %bb.dx, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.dx:                                            ; preds = %.split24.i.i.i.i.i, %bb.dw
  %i.nd = getelementptr inbounds nuw i8, ptr %i.t, i64 336 ; 2 uses
  %i.ne = load i64, ptr %i.nd, align 8, !range !19, !alias.scope !2127, !noalias !2096, !noundef !11
  %.not15.i.i15.i.i.i = icmp eq i64 %i.ne, 2
  %i.nf = getelementptr inbounds nuw i8, ptr %i.v, i64 336 ; 2 uses
  %i.ng = load i64, ptr %i.nf, align 8, !range !19, !alias.scope !2128, !noalias !2096, !noundef !11
  %i.nh = icmp eq i64 %i.ng, 2                    ; 2 uses
  br i1 %.not15.i.i15.i.i.i, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  br i1 %i.nh, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit, label %.split25.i.i.i.i.i

bb.dz:                                            ; preds = %bb.dx
  br i1 %i.nh, label %bb.ea, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

.split25.i.i.i.i.i:                               ; preds = %bb.dy
  %i.ni = tail call fastcc noundef zeroext i1 @_RNvXs7X_NtCs607s0NAIaWN_7segment5typesNtB6_16StrictModeConfigNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(296) %i.nd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(296) %i.nf) #23, !noalias !2096
  br i1 %i.ni, label %bb.ea, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.ea:                                            ; preds = %.split25.i.i.i.i.i, %bb.dz
  %i.nj = getelementptr inbounds nuw i8, ptr %i.t, i64 632 ; 2 uses
  %i.nk = load i64, ptr %i.nj, align 8, !range !17, !alias.scope !2127, !noalias !2096, !noundef !11 ; 2 uses
  %.not17.i.i16.i.i.i = icmp eq i64 %i.nk, -1
  %i.nl = getelementptr inbounds nuw i8, ptr %i.v, i64 632 ; 2 uses
  %i.nm = load i64, ptr %i.nl, align 8, !range !17, !alias.scope !2128, !noalias !2096, !noundef !11 ; 2 uses
  %i.nn = icmp eq i64 %i.nm, -1
  %brmerge.i.i17.i.i.i = or i1 %.not17.i.i16.i.i.i, %i.nn
  br i1 %brmerge.i.i17.i.i.i, label %_RNvXs12_NtNtCsgGgPqgSfnMH_7storage15content_manager19collection_meta_opsNtB6_16UpdateCollectionNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i.i.i, label %.split.i18.i.i.i

.split.i18.i.i.i:                                 ; preds = %bb.ea
  %i.no = tail call noundef zeroext i1 @_RNvXse_NtCshqfBqtY9aGF_8indexmap3mapINtB5_8IndexMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.nj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.nl), !noalias !2096
  br i1 %i.no, label %bb.eb, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

_RNvXs12_NtNtCsgGgPqgSfnMH_7storage15content_manager19collection_meta_opsNtB6_16UpdateCollectionNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i.i.i: ; preds = %bb.ea
  %i.np = and i64 %i.nm, %i.nk
  %.mux.i.i22.i.i.i = icmp eq i64 %i.np, -1
  br i1 %.mux.i.i22.i.i.i, label %bb.eb, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.eb:                                            ; preds = %_RNvXs12_NtNtCsgGgPqgSfnMH_7storage15content_manager19collection_meta_opsNtB6_16UpdateCollectionNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i.i.i, %.split.i18.i.i.i
  %i.nq = getelementptr inbounds nuw i8, ptr %i.t, i64 744
  %i.nr = load i64, ptr %i.nq, align 8, !range !17, !alias.scope !2123, !noalias !2096, !noundef !11 ; 2 uses
  %.not.i19.i.i.i = icmp eq i64 %i.nr, -1
  %i.ns = getelementptr inbounds nuw i8, ptr %i.v, i64 744
  %i.nt = load i64, ptr %i.ns, align 8, !range !17, !alias.scope !2124, !noalias !2096, !noundef !11 ; 2 uses
  %i.nu = icmp eq i64 %i.nt, -1
  %brmerge.i20.i.i.i = or i1 %.not.i19.i.i.i, %i.nu
  %i.nv = and i64 %i.nt, %i.nr
  %.mux.i21.i.i.i = icmp eq i64 %i.nv, -1
  br i1 %brmerge.i20.i.i.i, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.nw = getelementptr inbounds nuw i8, ptr %i.t, i64 760
  %i.nx = load i64, ptr %i.nw, align 8, !alias.scope !2123, !noalias !2096, !noundef !11 ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.v, i64 760
  %i.nz = load i64, ptr %i.ny, align 8, !alias.scope !2124, !noalias !2096, !noundef !11
  %i.oa = icmp eq i64 %i.nx, %i.nz
  br i1 %i.oa, label %bb.ed, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.ed:                                            ; preds = %bb.ec
  %i.ob = getelementptr inbounds nuw i8, ptr %i.v, i64 752
  %i.oc = load ptr, ptr %i.ob, align 8, !alias.scope !2124, !noalias !2096, !nonnull !11, !noundef !11
  %i.od = getelementptr inbounds nuw i8, ptr %i.t, i64 752
  %i.oe = load ptr, ptr %i.od, align 8, !alias.scope !2123, !noalias !2096, !nonnull !11, !noundef !11
  %i.of = tail call noundef zeroext i1 @_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set6ChangeINtB5_14SlicePartialEqBC_E17equal_same_lengthCsl8OoimOLbh_6qdrant(ptr noundef nonnull %i.oe, ptr noundef nonnull %i.oc, i64 noundef %i.nx), !noalias !2096
  br label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.ee:                                            ; preds = %bb.e
  %3 = icmp eq i64 %i.y, 3
  tail call void @llvm.assume(i1 %3)
  %i.og = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.val5.i.i.i = load i64, ptr %i.og, align 8, !alias.scope !2094, !noalias !2096, !noundef !11 ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.val7.i.i.i = load i64, ptr %i.oh, align 8, !alias.scope !2095, !noalias !2096, !noundef !11
  %i.oi = icmp eq i64 %.val5.i.i.i, %.val7.i.i.i
  br i1 %i.oi, label %bb.ef, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.ef:                                            ; preds = %bb.ee
  %i.oj = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.val6.i.i.i = load ptr, ptr %i.oj, align 8, !alias.scope !2095, !noalias !2096, !nonnull !11, !noundef !11
  %i.ok = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.val.i.i.i = load ptr, ptr %i.ok, align 8, !alias.scope !2094, !noalias !2096, !nonnull !11, !noundef !11
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val.i.i.i, ptr nonnull readonly %.val6.i.i.i, i64 %.val5.i.i.i), !noalias !2096
  %i.ol = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.eg:                                            ; preds = %bb.e
  %4 = icmp eq i64 %i.y, 4
  tail call void @llvm.assume(i1 %4)
  %i.om = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.val9.i.i.i = load i64, ptr %i.om, align 8, !alias.scope !2094, !noalias !2096, !noundef !11 ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.val11.i.i.i = load i64, ptr %i.on, align 8, !alias.scope !2095, !noalias !2096, !noundef !11
  %i.oo = icmp eq i64 %.val9.i.i.i, %.val11.i.i.i
  br i1 %i.oo, label %bb.eh, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.eh:                                            ; preds = %bb.eg
  %i.op = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.val10.i.i.i = load ptr, ptr %i.op, align 8, !alias.scope !2095, !noalias !2096, !nonnull !11, !noundef !11
  %i.oq = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.val8.i.i.i = load ptr, ptr %i.oq, align 8, !alias.scope !2094, !noalias !2096, !nonnull !11, !noundef !11
  %i.or = tail call noundef zeroext i1 @_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpNtNtNtCsgGgPqgSfnMH_7storage15content_manager19collection_meta_ops15AliasOperationsINtB5_14SlicePartialEqBC_E17equal_same_lengthCsl8OoimOLbh_6qdrant(ptr noundef nonnull %.val8.i.i.i, ptr noundef nonnull %.val10.i.i.i, i64 noundef %.val9.i.i.i), !noalias !2096
  br label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.ei:                                            ; preds = %bb.e
  %5 = icmp eq i64 %i.y, 5
  tail call void @llvm.assume(i1 %5)
  %i.os = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ot = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ou = getelementptr inbounds nuw i8, ptr %i.t, i64 88
  %i.ov = load i64, ptr %i.ou, align 8, !alias.scope !2094, !noalias !2096, !noundef !11 ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.v, i64 88
  %i.ox = load i64, ptr %i.ow, align 8, !alias.scope !2095, !noalias !2096, !noundef !11
  %i.oy = icmp eq i64 %i.ov, %i.ox
  br i1 %i.oy, label %bb.gr, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.ej:                                            ; preds = %bb.e
  %6 = icmp eq i64 %i.y, 6
  tail call void @llvm.assume(i1 %6)
  %i.oz = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.pa = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.pb = getelementptr inbounds nuw i8, ptr %i.t, i64 168
  %i.pc = load i64, ptr %i.pb, align 8, !alias.scope !2094, !noalias !2096, !noundef !11 ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.v, i64 168
  %i.pe = load i64, ptr %i.pd, align 8, !alias.scope !2095, !noalias !2096, !noundef !11
  %i.pf = icmp eq i64 %i.pc, %i.pe
  br i1 %i.pf, label %bb.gt, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.ek:                                            ; preds = %bb.e
  %7 = icmp eq i64 %i.y, 7
  tail call void @llvm.assume(i1 %7)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2136)
  %i.pg = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.ph = load i64, ptr %i.pg, align 8, !alias.scope !2137, !noalias !2096, !noundef !11 ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.pj = load i64, ptr %i.pi, align 8, !alias.scope !2138, !noalias !2096, !noundef !11
  %i.pk = icmp eq i64 %i.ph, %i.pj
  br i1 %i.pk, label %bb.el, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.el:                                            ; preds = %bb.ek
  %i.pl = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.pm = load ptr, ptr %i.pl, align 8, !alias.scope !2138, !noalias !2096, !nonnull !11, !noundef !11
  %i.pn = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.po = load ptr, ptr %i.pn, align 8, !alias.scope !2137, !noalias !2096, !nonnull !11, !noundef !11
  %bcmp.i26.i.i.i = tail call i32 @bcmp(ptr nonnull %i.po, ptr nonnull %i.pm, i64 %i.ph), !noalias !2139
  %i.pp = icmp eq i32 %bcmp.i26.i.i.i, 0
  br i1 %i.pp, label %bb.em, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.em:                                            ; preds = %bb.el
  %i.pq = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.pr = load i32, ptr %i.pq, align 8, !alias.scope !2137, !noalias !2096, !noundef !11
  %i.ps = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.pt = load i32, ptr %i.ps, align 8, !alias.scope !2138, !noalias !2096, !noundef !11
  %i.pu = icmp eq i32 %i.pr, %i.pt
  br i1 %i.pu, label %bb.en, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.en:                                            ; preds = %bb.em
  %i.pv = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.pw = load i64, ptr %i.pv, align 8, !alias.scope !2137, !noalias !2096, !noundef !11
  %i.px = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.py = load i64, ptr %i.px, align 8, !alias.scope !2138, !noalias !2096, !noundef !11
  %i.pz = icmp eq i64 %i.pw, %i.py
  br i1 %i.pz, label %bb.eo, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.eo:                                            ; preds = %bb.en
  %i.qa = getelementptr inbounds nuw i8, ptr %i.t, i64 44
  %i.qb = load i8, ptr %i.qa, align 4, !range !39, !alias.scope !2137, !noalias !2096, !noundef !11
  %i.qc = getelementptr inbounds nuw i8, ptr %i.v, i64 44
  %i.qd = load i8, ptr %i.qc, align 4, !range !39, !alias.scope !2138, !noalias !2096, !noundef !11
  %i.qe = icmp eq i8 %i.qb, %i.qd
  br i1 %i.qe, label %bb.ep, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.ep:                                            ; preds = %bb.eo
  %i.qf = getelementptr inbounds nuw i8, ptr %i.t, i64 45
  %i.qg = load i8, ptr %i.qf, align 1, !range !2140, !alias.scope !2137, !noalias !2096, !noundef !11 ; 2 uses
  %.not.i27.i.i.i = icmp eq i8 %i.qg, -1
  %i.qh = getelementptr inbounds nuw i8, ptr %i.v, i64 45
  %i.qi = load i8, ptr %i.qh, align 1, !range !2140, !alias.scope !2138, !noalias !2096, !noundef !11 ; 2 uses
  br i1 %.not.i27.i.i.i, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.qj = icmp eq i8 %i.qg, %i.qi
  br label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.er:                                            ; preds = %bb.ep
  %i.qk = icmp eq i8 %i.qi, -1
  br label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.es:                                            ; preds = %bb.e
  %8 = icmp eq i64 %i.y, 8
  tail call void @llvm.assume(i1 %8)
  %i.ql = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.qm = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2142)
  %i.qn = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.qo = load i64, ptr %i.qn, align 8, !alias.scope !2143, !noalias !2096, !noundef !11 ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.qq = load i64, ptr %i.qp, align 8, !alias.scope !2144, !noalias !2096, !noundef !11
  %i.qr = icmp eq i64 %i.qo, %i.qq
  br i1 %i.qr, label %bb.et, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.et:                                            ; preds = %bb.es
  %i.qs = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.qt = load ptr, ptr %i.qs, align 8, !alias.scope !2144, !noalias !2096, !nonnull !11, !noundef !11
  %i.qu = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.qv = load ptr, ptr %i.qu, align 8, !alias.scope !2143, !noalias !2096, !nonnull !11, !noundef !11
  %bcmp.i29.i.i.i = tail call i32 @bcmp(ptr nonnull %i.qv, ptr nonnull %i.qt, i64 %i.qo), !noalias !2145
  %i.qw = icmp eq i32 %bcmp.i29.i.i.i, 0
  br i1 %i.qw, label %bb.eu, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.eu:                                            ; preds = %bb.et
  %i.qx = load i64, ptr %i.ql, align 8, !range !23, !alias.scope !2143, !noalias !2096, !noundef !11 ; 2 uses
  %i.qy = load i64, ptr %i.qm, align 8, !range !23, !alias.scope !2144, !noalias !2096, !noundef !11
  %i.qz = icmp eq i64 %i.qx, %i.qy
  br i1 %i.qz, label %bb.ev, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.ev:                                            ; preds = %bb.eu
  %i.ra = trunc nuw i64 %i.qx to i1
  br i1 %i.ra, label %.split.i32.i.i.i, label %bb.ew

.split.i32.i.i.i:                                 ; preds = %bb.ev
  %i.rb = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.rc = load i64, ptr %i.rb, align 8, !alias.scope !2143, !noalias !2096, !noundef !11
  %i.rd = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.re = load i64, ptr %i.rd, align 8, !alias.scope !2144, !noalias !2096, !noundef !11
  %i.rf = icmp eq i64 %i.rc, %i.re
  br i1 %i.rf, label %bb.ex, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.ew:                                            ; preds = %bb.ev
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2146)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2147)
  %i.rg = getelementptr inbounds nuw i8, ptr %i.t, i64 31
  %i.rh = load i8, ptr %i.rg, align 1, !alias.scope !2148, !noalias !2096, !noundef !11 ; 2 uses
  %.not.i.i.i30.i.i.i = icmp sgt i8 %i.rh, -1     ; 2 uses
  %i.ri = and i8 %i.rh, 127
  %i.rj = zext nneg i8 %i.ri to i64
  %i.rk = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.rl = load i64, ptr %i.rk, align 8, !alias.scope !2148, !noalias !2096
  %.sroa.3.0.i.i.i.i.i.i = select i1 %.not.i.i.i30.i.i.i, i64 %i.rl, i64 %i.rj ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.v, i64 31
  %i.rn = load i8, ptr %i.rm, align 1, !alias.scope !2149, !noalias !2096, !noundef !11 ; 2 uses
  %.not.i1.i.i.i.i.i = icmp sgt i8 %i.rn, -1      ; 2 uses
  %i.ro = and i8 %i.rn, 127
  %i.rp = zext nneg i8 %i.ro to i64
  %i.rq = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.rr = load i64, ptr %i.rq, align 8, !alias.scope !2149, !noalias !2096
  %.sroa.3.0.i2.i.i.i.i.i = select i1 %.not.i1.i.i.i.i.i, i64 %i.rr, i64 %i.rp
  %i.rs = icmp eq i64 %.sroa.3.0.i.i.i.i.i.i, %.sroa.3.0.i2.i.i.i.i.i
  br i1 %i.rs, label %_RNvXs4_NtCs9zPlAsQS9gd_4ecow6stringNtB5_9EcoStringNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i.i.i, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

_RNvXs4_NtCs9zPlAsQS9gd_4ecow6stringNtB5_9EcoStringNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i.i.i: ; preds = %bb.ew
  %i.rt = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %i.rv = load ptr, ptr %i.rt, align 8, !alias.scope !2149, !noalias !2096, !nonnull !11
  %.sroa.0.0.i3.i.i.i.i.i = select i1 %.not.i1.i.i.i.i.i, ptr %i.rv, ptr %i.rt
  %i.rw = load ptr, ptr %i.ru, align 8, !alias.scope !2148, !noalias !2096, !nonnull !11
  %.sroa.0.0.i.i.i.i.i.i = select i1 %.not.i.i.i30.i.i.i, ptr %i.rw, ptr %i.ru
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull %.sroa.0.0.i.i.i.i.i.i, ptr nonnull %.sroa.0.0.i3.i.i.i.i.i, i64 %.sroa.3.0.i.i.i.i.i.i), !noalias !2096
  %i.rx = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.rx, label %bb.ex, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.ex:                                            ; preds = %_RNvXs4_NtCs9zPlAsQS9gd_4ecow6stringNtB5_9EcoStringNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i.i.i, %.split.i32.i.i.i
  %i.ry = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %i.rz = load i64, ptr %i.ry, align 8, !alias.scope !2143, !noalias !2096, !noundef !11 ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  %i.sb = load i64, ptr %i.sa, align 8, !alias.scope !2144, !noalias !2096, !noundef !11
  %i.sc = icmp eq i64 %i.rz, %i.sb
  br i1 %i.sc, label %bb.ey, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.ey:                                            ; preds = %bb.ex
  %i.sd = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %i.se = load ptr, ptr %i.sd, align 8, !alias.scope !2144, !noalias !2096, !nonnull !11, !noundef !11
  %i.sf = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %i.sg = load ptr, ptr %i.sf, align 8, !alias.scope !2143, !noalias !2096, !nonnull !11, !noundef !11
  %i.sh = tail call noundef zeroext i1 @_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpINtNtCsexYYUdYSQU6_5alloc3vec3VecyEINtB5_14SlicePartialEqBC_E17equal_same_lengthCsl8OoimOLbh_6qdrant(ptr noundef nonnull %i.sg, ptr noundef nonnull %i.se, i64 noundef %i.rz), !noalias !2145
  br i1 %i.sh, label %bb.ez, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.ez:                                            ; preds = %bb.ey
  %i.si = getelementptr inbounds nuw i8, ptr %i.t, i64 80
  %i.sj = load i8, ptr %i.si, align 8, !range !2140, !alias.scope !2143, !noalias !2096, !noundef !11 ; 2 uses
  %.not.i31.i.i.i = icmp eq i8 %i.sj, -1
  %i.sk = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  %i.sl = load i8, ptr %i.sk, align 8, !range !2140, !alias.scope !2144, !noalias !2096, !noundef !11 ; 2 uses
  br i1 %.not.i31.i.i.i, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.sm = icmp eq i8 %i.sj, %i.sl
  br label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.fb:                                            ; preds = %bb.ez
  %i.sn = icmp eq i8 %i.sl, -1
  br label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.fc:                                            ; preds = %bb.e
  %9 = icmp eq i64 %i.y, 9
  tail call void @llvm.assume(i1 %9)
  %i.so = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.sp = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2150)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2151)
  %i.sq = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.sr = load i64, ptr %i.sq, align 8, !alias.scope !2152, !noalias !2096, !noundef !11 ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.st = load i64, ptr %i.ss, align 8, !alias.scope !2153, !noalias !2096, !noundef !11
  %i.su = icmp eq i64 %i.sr, %i.st
  br i1 %i.su, label %bb.fd, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.fd:                                            ; preds = %bb.fc
  %i.sv = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.sw = load ptr, ptr %i.sv, align 8, !alias.scope !2153, !noalias !2096, !nonnull !11, !noundef !11
  %i.sx = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.sy = load ptr, ptr %i.sx, align 8, !alias.scope !2152, !noalias !2096, !nonnull !11, !noundef !11
  %bcmp.i35.i.i.i = tail call i32 @bcmp(ptr nonnull %i.sy, ptr nonnull %i.sw, i64 %i.sr), !noalias !2154
  %i.sz = icmp eq i32 %bcmp.i35.i.i.i, 0
  br i1 %i.sz, label %bb.fe, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.fe:                                            ; preds = %bb.fd
  %i.ta = load i64, ptr %i.so, align 8, !range !23, !alias.scope !2152, !noalias !2096, !noundef !11 ; 2 uses
  %i.tb = load i64, ptr %i.sp, align 8, !range !23, !alias.scope !2153, !noalias !2096, !noundef !11
  %i.tc = icmp eq i64 %i.ta, %i.tb
  br i1 %i.tc, label %bb.ff, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.ff:                                            ; preds = %bb.fe
  %i.td = trunc nuw i64 %i.ta to i1
  br i1 %i.td, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  %i.te = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.tf = load i64, ptr %i.te, align 8, !alias.scope !2152, !noalias !2096, !noundef !11
  %i.tg = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.th = load i64, ptr %i.tg, align 8, !alias.scope !2153, !noalias !2096, !noundef !11
  %i.ti = icmp eq i64 %i.tf, %i.th
  br label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.fh:                                            ; preds = %bb.ff
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2156)
  %i.tj = getelementptr inbounds nuw i8, ptr %i.t, i64 31
  %i.tk = load i8, ptr %i.tj, align 1, !alias.scope !2157, !noalias !2096, !noundef !11 ; 2 uses
  %.not.i.i.i36.i.i.i = icmp sgt i8 %i.tk, -1     ; 2 uses
  %i.tl = and i8 %i.tk, 127
  %i.tm = zext nneg i8 %i.tl to i64
  %i.tn = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.to = load i64, ptr %i.tn, align 8, !alias.scope !2157, !noalias !2096
  %.sroa.3.0.i.i.i37.i.i.i = select i1 %.not.i.i.i36.i.i.i, i64 %i.to, i64 %i.tm ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.v, i64 31
  %i.tq = load i8, ptr %i.tp, align 1, !alias.scope !2158, !noalias !2096, !noundef !11 ; 2 uses
  %.not.i1.i.i38.i.i.i = icmp sgt i8 %i.tq, -1    ; 2 uses
  %i.tr = and i8 %i.tq, 127
  %i.ts = zext nneg i8 %i.tr to i64
  %i.tt = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.tu = load i64, ptr %i.tt, align 8, !alias.scope !2158, !noalias !2096
  %.sroa.3.0.i2.i.i39.i.i.i = select i1 %.not.i1.i.i38.i.i.i, i64 %i.tu, i64 %i.ts
  %i.tv = icmp eq i64 %.sroa.3.0.i.i.i37.i.i.i, %.sroa.3.0.i2.i.i39.i.i.i
  br i1 %i.tv, label %bb.fi, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.fi:                                            ; preds = %bb.fh
  %i.tw = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %i.ty = load ptr, ptr %i.tw, align 8, !alias.scope !2158, !noalias !2096, !nonnull !11
  %.sroa.0.0.i3.i.i40.i.i.i = select i1 %.not.i1.i.i38.i.i.i, ptr %i.ty, ptr %i.tw
  %i.tz = load ptr, ptr %i.tx, align 8, !alias.scope !2157, !noalias !2096, !nonnull !11
  %.sroa.0.0.i.i.i41.i.i.i = select i1 %.not.i.i.i36.i.i.i, ptr %i.tz, ptr %i.tx
  %bcmp.i.i42.i.i.i = tail call i32 @bcmp(ptr nonnull %.sroa.0.0.i.i.i41.i.i.i, ptr nonnull %.sroa.0.0.i3.i.i40.i.i.i, i64 %.sroa.3.0.i.i.i37.i.i.i), !noalias !2096
  %i.ua = icmp eq i32 %bcmp.i.i42.i.i.i, 0
  br label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.fj:                                            ; preds = %bb.e
  %10 = icmp eq i64 %i.y, 10
  tail call void @llvm.assume(i1 %10)
  %i.ub = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.uc = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2159)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2160)
  %i.ud = getelementptr inbounds nuw i8, ptr %i.t, i64 128
  %i.ue = load i64, ptr %i.ud, align 8, !alias.scope !2161, !noalias !2096, !noundef !11 ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %i.v, i64 128
  %i.ug = load i64, ptr %i.uf, align 8, !alias.scope !2162, !noalias !2096, !noundef !11
  %i.uh = icmp eq i64 %i.ue, %i.ug
  br i1 %i.uh, label %bb.fk, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.fk:                                            ; preds = %bb.fj
  %i.ui = getelementptr inbounds nuw i8, ptr %i.v, i64 120
  %i.uj = load ptr, ptr %i.ui, align 8, !alias.scope !2162, !noalias !2096, !nonnull !11, !noundef !11
  %i.uk = getelementptr inbounds nuw i8, ptr %i.t, i64 120
  %i.ul = load ptr, ptr %i.uk, align 8, !alias.scope !2161, !noalias !2096, !nonnull !11, !noundef !11
  %bcmp.i43.i.i.i = tail call i32 @bcmp(ptr nonnull %i.ul, ptr nonnull %i.uj, i64 %i.ue), !noalias !2163
  %i.um = icmp eq i32 %bcmp.i43.i.i.i, 0
  br i1 %i.um, label %bb.fl, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.fl:                                            ; preds = %bb.fk
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2164)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2165)
  %i.un = getelementptr inbounds nuw i8, ptr %i.t, i64 152
  %i.uo = load i64, ptr %i.un, align 8, !alias.scope !2166, !noalias !2096, !noundef !11 ; 2 uses
  %i.up = getelementptr inbounds nuw i8, ptr %i.v, i64 152
  %i.uq = load i64, ptr %i.up, align 8, !alias.scope !2167, !noalias !2096, !noundef !11
  %i.ur = icmp eq i64 %i.uo, %i.uq
  br i1 %i.ur, label %bb.fm, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.fm:                                            ; preds = %bb.fl
  %i.us = getelementptr inbounds nuw i8, ptr %i.v, i64 144
  %i.ut = load ptr, ptr %i.us, align 8, !alias.scope !2167, !noalias !2096, !nonnull !11, !noundef !11
  %i.uu = getelementptr inbounds nuw i8, ptr %i.t, i64 144
  %i.uv = load ptr, ptr %i.uu, align 8, !alias.scope !2166, !noalias !2096, !nonnull !11, !noundef !11
  %bcmp.i.i44.i.i.i = tail call i32 @bcmp(ptr nonnull %i.uv, ptr nonnull %i.ut, i64 %i.uo), !noalias !2168
  %i.uw = icmp eq i32 %bcmp.i.i44.i.i.i, 0
  br i1 %i.uw, label %bb.fn, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.fn:                                            ; preds = %bb.fm
  %i.ux = getelementptr inbounds nuw i8, ptr %i.t, i64 176
  %i.uy = load i64, ptr %i.ux, align 8, !alias.scope !2166, !noalias !2096, !noundef !11 ; 2 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %i.v, i64 176
  %i.va = load i64, ptr %i.uz, align 8, !alias.scope !2167, !noalias !2096, !noundef !11
  %i.vb = icmp eq i64 %i.uy, %i.va
  br i1 %i.vb, label %_RNvXs7_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i.i.i, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

_RNvXs7_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i.i.i: ; preds = %bb.fn
  %i.vc = getelementptr inbounds nuw i8, ptr %i.v, i64 168
  %i.vd = load ptr, ptr %i.vc, align 8, !alias.scope !2167, !noalias !2096, !nonnull !11, !noundef !11
  %i.ve = getelementptr inbounds nuw i8, ptr %i.t, i64 168
  %i.vf = load ptr, ptr %i.ve, align 8, !alias.scope !2166, !noalias !2096, !nonnull !11, !noundef !11
  %i.vg = tail call noundef zeroext i1 @_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpNtNtCs607s0NAIaWN_7segment9json_path12JsonPathItemINtB5_14SlicePartialEqBC_E17equal_same_lengthCsl8OoimOLbh_6qdrant(ptr noundef nonnull %i.vf, ptr noundef nonnull %i.vd, i64 noundef %i.uy), !noalias !2168
  br i1 %i.vg, label %bb.fo, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.fo:                                            ; preds = %_RNvXs7_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i.i.i
  %i.vh = tail call noundef zeroext i1 @_RNvXs1e_NtCs607s0NAIaWN_7segment5typesNtB6_18PayloadFieldSchemaNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.ub, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.uc), !noalias !2096
  br label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.fp:                                            ; preds = %bb.e
  %11 = icmp eq i64 %i.y, 11
  tail call void @llvm.assume(i1 %11)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2169)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2170)
  %i.vi = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.vj = load i64, ptr %i.vi, align 8, !alias.scope !2171, !noalias !2096, !noundef !11 ; 2 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.vl = load i64, ptr %i.vk, align 8, !alias.scope !2172, !noalias !2096, !noundef !11
  %i.vm = icmp eq i64 %i.vj, %i.vl
  br i1 %i.vm, label %bb.fq, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.fq:                                            ; preds = %bb.fp
  %i.vn = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.vo = load ptr, ptr %i.vn, align 8, !alias.scope !2172, !noalias !2096, !nonnull !11, !noundef !11
  %i.vp = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.vq = load ptr, ptr %i.vp, align 8, !alias.scope !2171, !noalias !2096, !nonnull !11, !noundef !11
  %bcmp.i47.i.i.i = tail call i32 @bcmp(ptr nonnull %i.vq, ptr nonnull %i.vo, i64 %i.vj), !noalias !2173
  %i.vr = icmp eq i32 %bcmp.i47.i.i.i, 0
  br i1 %i.vr, label %bb.fr, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.fr:                                            ; preds = %bb.fq
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2175)
  %i.vs = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.vt = load i64, ptr %i.vs, align 8, !alias.scope !2176, !noalias !2096, !noundef !11 ; 2 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.vv = load i64, ptr %i.vu, align 8, !alias.scope !2177, !noalias !2096, !noundef !11
  %i.vw = icmp eq i64 %i.vt, %i.vv
  br i1 %i.vw, label %bb.fs, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.fs:                                            ; preds = %bb.fr
  %i.vx = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.vy = load ptr, ptr %i.vx, align 8, !alias.scope !2177, !noalias !2096, !nonnull !11, !noundef !11
  %i.vz = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.wa = load ptr, ptr %i.vz, align 8, !alias.scope !2176, !noalias !2096, !nonnull !11, !noundef !11
  %bcmp.i.i48.i.i.i = tail call i32 @bcmp(ptr nonnull %i.wa, ptr nonnull %i.vy, i64 %i.vt), !noalias !2178
  %i.wb = icmp eq i32 %bcmp.i.i48.i.i.i, 0
  br i1 %i.wb, label %bb.ft, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.ft:                                            ; preds = %bb.fs
  %i.wc = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %i.wd = load i64, ptr %i.wc, align 8, !alias.scope !2176, !noalias !2096, !noundef !11 ; 2 uses
  %i.we = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  %i.wf = load i64, ptr %i.we, align 8, !alias.scope !2177, !noalias !2096, !noundef !11
  %i.wg = icmp eq i64 %i.wd, %i.wf
  br i1 %i.wg, label %bb.fu, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.fu:                                            ; preds = %bb.ft
  %i.wh = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %i.wi = load ptr, ptr %i.wh, align 8, !alias.scope !2177, !noalias !2096, !nonnull !11, !noundef !11
  %i.wj = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %i.wk = load ptr, ptr %i.wj, align 8, !alias.scope !2176, !noalias !2096, !nonnull !11, !noundef !11
  %i.wl = tail call noundef zeroext i1 @_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpNtNtCs607s0NAIaWN_7segment9json_path12JsonPathItemINtB5_14SlicePartialEqBC_E17equal_same_lengthCsl8OoimOLbh_6qdrant(ptr noundef nonnull %i.wk, ptr noundef nonnull %i.wi, i64 noundef %i.wd), !noalias !2178
  br label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.fv:                                            ; preds = %bb.e
  %12 = icmp eq i64 %i.y, 12
  tail call void @llvm.assume(i1 %12)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2179)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2180)
  %i.wm = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.wn = load i64, ptr %i.wm, align 8, !alias.scope !2181, !noalias !2096, !noundef !11 ; 2 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.wp = load i64, ptr %i.wo, align 8, !alias.scope !2182, !noalias !2096, !noundef !11
  %i.wq = icmp eq i64 %i.wn, %i.wp
  br i1 %i.wq, label %bb.fw, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.fw:                                            ; preds = %bb.fv
  %i.wr = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ws = load ptr, ptr %i.wr, align 8, !alias.scope !2182, !noalias !2096, !nonnull !11, !noundef !11
  %i.wt = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.wu = load ptr, ptr %i.wt, align 8, !alias.scope !2181, !noalias !2096, !nonnull !11, !noundef !11
  %bcmp.i50.i.i.i = tail call i32 @bcmp(ptr nonnull %i.wu, ptr nonnull %i.ws, i64 %i.wn), !noalias !2183
  %i.wv = icmp eq i32 %bcmp.i50.i.i.i, 0
  br i1 %i.wv, label %bb.fx, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.fx:                                            ; preds = %bb.fw
  %i.ww = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.wx = load i64, ptr %i.ww, align 8, !alias.scope !2181, !noalias !2096, !noundef !11 ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.wz = load i64, ptr %i.wy, align 8, !alias.scope !2182, !noalias !2096, !noundef !11
  %i.xa = icmp eq i64 %i.wx, %i.wz
  br i1 %i.xa, label %bb.fy, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.fy:                                            ; preds = %bb.fx
  %i.xb = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.xc = load ptr, ptr %i.xb, align 8, !alias.scope !2182, !noalias !2096, !nonnull !11, !noundef !11
  %i.xd = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.xe = load ptr, ptr %i.xd, align 8, !alias.scope !2181, !noalias !2096, !nonnull !11, !noundef !11
  %bcmp2.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.xe, ptr nonnull %i.xc, i64 %i.wx), !noalias !2183
  %i.xf = icmp eq i32 %bcmp2.i.i.i.i, 0
  br i1 %i.xf, label %bb.fz, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.fz:                                            ; preds = %bb.fy
  %i.xg = getelementptr inbounds nuw i8, ptr %i.t, i64 56 ; 2 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %i.v, i64 56 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2184)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2185)
  %i.xi = getelementptr inbounds nuw i8, ptr %i.t, i64 66
  %i.xj = load i8, ptr %i.xi, align 2, !range !28, !alias.scope !2186, !noalias !2096, !noundef !11 ; 2 uses
  %i.xk = icmp eq i8 %i.xj, 2                     ; 2 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %i.v, i64 66
  %i.xm = load i8, ptr %i.xl, align 2, !range !28, !alias.scope !2187, !noalias !2096, !noundef !11 ; 2 uses
  %i.xn = icmp eq i8 %i.xm, 2                     ; 3 uses
  %i.xo = xor i1 %i.xk, %i.xn
  br i1 %i.xo, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  br i1 %i.xk, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %bb.ga
  tail call void @llvm.assume(i1 %i.xn)
  %i.xp = load i8, ptr %i.xg, align 8, !range !28, !alias.scope !2186, !noalias !2096, !noundef !11 ; 2 uses
  %.not.i.i52.i.i.i = icmp eq i8 %i.xp, 2
  %i.xq = load i8, ptr %i.xh, align 8, !range !28, !alias.scope !2187, !noalias !2096, !noundef !11 ; 2 uses
  br i1 %.not.i.i52.i.i.i, label %bb.gi, label %bb.gh

bb.gc:                                            ; preds = %bb.ga
  %i.xr = xor i1 %i.xn, true
  tail call void @llvm.assume(i1 %i.xr)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2188)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2189)
  %i.xs = load i64, ptr %i.xg, align 8, !alias.scope !2190, !noalias !2096, !noundef !11
  %i.xt = load i64, ptr %i.xh, align 8, !alias.scope !2191, !noalias !2096, !noundef !11
  %i.xu = icmp eq i64 %i.xs, %i.xt
  br i1 %i.xu, label %bb.gd, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.gd:                                            ; preds = %bb.gc
  %i.xv = getelementptr inbounds nuw i8, ptr %i.t, i64 65
  %i.xw = load i8, ptr %i.xv, align 1, !range !36, !alias.scope !2190, !noalias !2096, !noundef !11
  %i.xx = getelementptr inbounds nuw i8, ptr %i.v, i64 65
  %i.xy = load i8, ptr %i.xx, align 1, !range !36, !alias.scope !2191, !noalias !2096, !noundef !11
  %i.xz = icmp eq i8 %i.xw, %i.xy
  %.not3.i.i.i.i.i.i = icmp eq i8 %i.xj, %i.xm
  %or.cond.i.i.i.i.i = and i1 %.not3.i.i.i.i.i.i, %i.xz
  br i1 %or.cond.i.i.i.i.i, label %bb.ge, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.ge:                                            ; preds = %bb.gd
  %i.ya = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %i.yb = load i8, ptr %i.ya, align 8, !range !37, !alias.scope !2190, !noalias !2096, !noundef !11 ; 2 uses
  %.not.i.i.i51.i.i.i = icmp eq i8 %i.yb, -1
  %i.yc = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %i.yd = load i8, ptr %i.yc, align 8, !range !37, !alias.scope !2191, !noalias !2096, !noundef !11 ; 2 uses
  br i1 %.not.i.i.i51.i.i.i, label %bb.gg, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.ye = icmp eq i8 %i.yb, %i.yd
  br label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.gg:                                            ; preds = %bb.ge
  %i.yf = icmp eq i8 %i.yd, -1
  br label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.gh:                                            ; preds = %bb.gb
  %.not9.i.i53.i.i.i = icmp eq i8 %i.xp, %i.xq
  br i1 %.not9.i.i53.i.i.i, label %bb.gj, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.gi:                                            ; preds = %bb.gb
  %i.yg = icmp eq i8 %i.xq, 2
  br i1 %i.yg, label %bb.gj, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.gj:                                            ; preds = %bb.gi, %bb.gh
  %i.yh = getelementptr inbounds nuw i8, ptr %i.t, i64 57
  %i.yi = load i8, ptr %i.yh, align 1, !range !37, !alias.scope !2186, !noalias !2096, !noundef !11 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq i8 %i.yi, -1
  %i.yj = getelementptr inbounds nuw i8, ptr %i.v, i64 57
  %i.yk = load i8, ptr %i.yj, align 1, !range !37, !alias.scope !2187, !noalias !2096, !noundef !11 ; 2 uses
  br i1 %.not4.i.i.i.i.i, label %bb.gl, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.yl = icmp eq i8 %i.yi, %i.yk
  br label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.gl:                                            ; preds = %bb.gj
  %i.ym = icmp eq i8 %i.yk, -1
  br label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.gm:                                            ; preds = %bb.e
  %13 = icmp eq i64 %i.y, 13
  tail call void @llvm.assume(i1 %13)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2192)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2193)
  %i.yn = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.yo = load i64, ptr %i.yn, align 8, !alias.scope !2194, !noalias !2096, !noundef !11 ; 2 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.yq = load i64, ptr %i.yp, align 8, !alias.scope !2195, !noalias !2096, !noundef !11
  %i.yr = icmp eq i64 %i.yo, %i.yq
  br i1 %i.yr, label %bb.gn, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.gn:                                            ; preds = %bb.gm
  %i.ys = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.yt = load ptr, ptr %i.ys, align 8, !alias.scope !2195, !noalias !2096, !nonnull !11, !noundef !11
  %i.yu = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.yv = load ptr, ptr %i.yu, align 8, !alias.scope !2194, !noalias !2096, !nonnull !11, !noundef !11
  %bcmp.i55.i.i.i = tail call i32 @bcmp(ptr nonnull %i.yv, ptr nonnull %i.yt, i64 %i.yo), !noalias !2196
  %i.yw = icmp eq i32 %bcmp.i55.i.i.i, 0
  br i1 %i.yw, label %bb.go, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.go:                                            ; preds = %bb.gn
  %i.yx = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.yy = load i64, ptr %i.yx, align 8, !alias.scope !2194, !noalias !2096, !noundef !11 ; 2 uses
  %i.yz = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.za = load i64, ptr %i.yz, align 8, !alias.scope !2195, !noalias !2096, !noundef !11
  %i.zb = icmp eq i64 %i.yy, %i.za
  br i1 %i.zb, label %bb.gp, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.gp:                                            ; preds = %bb.go
  %i.zc = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.zd = load ptr, ptr %i.zc, align 8, !alias.scope !2195, !noalias !2096, !nonnull !11, !noundef !11
  %i.ze = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.zf = load ptr, ptr %i.ze, align 8, !alias.scope !2194, !noalias !2096, !nonnull !11, !noundef !11
  %bcmp2.i56.i.i.i = tail call i32 @bcmp(ptr nonnull %i.zf, ptr nonnull %i.zd, i64 %i.yy), !noalias !2196
  %i.zg = icmp eq i32 %bcmp2.i56.i.i.i, 0
  br label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.gq:                                            ; preds = %bb.e
  %14 = icmp eq i64 %i.y, 14
  tail call void @llvm.assume(i1 %14)
  %i.zh = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.zi = load i64, ptr %i.zh, align 8, !alias.scope !2094, !noalias !2096, !noundef !11
  %i.zj = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.zk = load i64, ptr %i.zj, align 8, !alias.scope !2095, !noalias !2096, !noundef !11
  %i.zl = icmp eq i64 %i.zi, %i.zk
  br label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.gr:                                            ; preds = %bb.ei
  %i.zm = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  %i.zn = load ptr, ptr %i.zm, align 8, !alias.scope !2095, !noalias !2096, !nonnull !11, !noundef !11
  %i.zo = getelementptr inbounds nuw i8, ptr %i.t, i64 80
  %i.zp = load ptr, ptr %i.zo, align 8, !alias.scope !2094, !noalias !2096, !nonnull !11, !noundef !11
  %bcmp4.i.i.i = tail call i32 @bcmp(ptr nonnull %i.zp, ptr nonnull %i.zn, i64 %i.ov), !noalias !2096
  %i.zq = icmp eq i32 %bcmp4.i.i.i, 0
  br i1 %i.zq, label %bb.gs, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.gs:                                            ; preds = %bb.gr
  %i.zr = tail call fastcc noundef zeroext i1 @_RNvXs1u_NtNtCsgGgPqgSfnMH_7storage15content_manager19collection_meta_opsNtB6_19ReshardingOperationNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.os, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ot) #23, !noalias !2096
  br label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.gt:                                            ; preds = %bb.ej
  %i.zs = getelementptr inbounds nuw i8, ptr %i.v, i64 160
  %i.zt = load ptr, ptr %i.zs, align 8, !alias.scope !2095, !noalias !2096, !nonnull !11, !noundef !11
  %i.zu = getelementptr inbounds nuw i8, ptr %i.t, i64 160
  %i.zv = load ptr, ptr %i.zu, align 8, !alias.scope !2094, !noalias !2096, !nonnull !11, !noundef !11
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull %i.zv, ptr nonnull %i.zt, i64 %i.pc), !noalias !2096
  %i.zw = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.zw, label %bb.gu, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.gu:                                            ; preds = %bb.gt
  %i.zx = tail call fastcc noundef zeroext i1 @_RNvXs1y_NtNtCsgGgPqgSfnMH_7storage15content_manager19collection_meta_opsNtB6_23ShardTransferOperationsNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.oz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.pa) #23, !noalias !2096
  br label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.gv:                                            ; preds = %bb.b
  %i.zy = getelementptr inbounds i8, ptr %i.f, i64 -72
  %i.zz = load i64, ptr %i.zy, align 8, !alias.scope !2093, !noundef !11
  %i.aaa = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.aab = load i64, ptr %i.aaa, align 8, !alias.scope !2092, !noalias !2090, !noundef !11
  %i.aac = icmp eq i64 %i.zz, %i.aab
  br i1 %i.aac, label %bb.gw, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.gw:                                            ; preds = %bb.gv
  %i.aad = getelementptr inbounds i8, ptr %i.f, i64 -80
  %i.aae = load i64, ptr %i.aad, align 8, !alias.scope !2093, !noundef !11 ; 2 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.aag = load i64, ptr %i.aaf, align 8, !alias.scope !2092, !noalias !2090, !noundef !11
  %i.aah = icmp eq i64 %i.aae, %i.aag
  br i1 %i.aah, label %bb.gx, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.gx:                                            ; preds = %bb.gw
  %i.aai = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.aaj = load ptr, ptr %i.aai, align 8, !alias.scope !2092, !noalias !2090, !nonnull !11, !noundef !11
  %i.aak = getelementptr inbounds i8, ptr %i.f, i64 -88
  %i.aal = load ptr, ptr %i.aak, align 8, !alias.scope !2093, !nonnull !11, !noundef !11
  %bcmp4.i.i = tail call i32 @bcmp(ptr nonnull %i.aal, ptr nonnull %i.aaj, i64 %i.aae), !noalias !2096
  %i.aam = icmp eq i32 %bcmp4.i.i, 0
  br label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.gy:                                            ; preds = %bb.b
  %i.aan = getelementptr inbounds i8, ptr %i.f, i64 -96
  %i.aao = load i64, ptr %i.aan, align 8, !alias.scope !2093, !noundef !11
  %i.aap = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.aaq = load i64, ptr %i.aap, align 8, !alias.scope !2092, !noalias !2090, !noundef !11
  %i.aar = icmp eq i64 %i.aao, %i.aaq
  br label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.gz:                                            ; preds = %bb.b
  %i.aas = getelementptr inbounds i8, ptr %i.f, i64 -56
  %i.aat = load i64, ptr %i.aas, align 8, !alias.scope !2093, !noundef !11
  %i.aau = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.aav = load i64, ptr %i.aau, align 8, !alias.scope !2092, !noalias !2090, !noundef !11
  %i.aaw = icmp eq i64 %i.aat, %i.aav
  br i1 %i.aaw, label %bb.ha, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.ha:                                            ; preds = %bb.gz
  %i.aax = getelementptr inbounds i8, ptr %i.f, i64 -96
  %i.aay = getelementptr inbounds nuw i8, ptr %.val, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2197)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2198)
  %i.aaz = getelementptr inbounds i8, ptr %i.f, i64 -80
  %i.aba = load i64, ptr %i.aaz, align 8, !alias.scope !2199, !noundef !11
  %i.abb = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.abc = load i64, ptr %i.abb, align 8, !alias.scope !2198, !noalias !2090, !noundef !11
  %i.abd = icmp eq i64 %i.aba, %i.abc
  br i1 %i.abd, label %bb.hb, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.hb:                                            ; preds = %bb.ha
  %i.abe = getelementptr inbounds i8, ptr %i.f, i64 -72
  %i.abf = load i64, ptr %i.abe, align 8, !alias.scope !2199, !noundef !11
  %i.abg = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.abh = load i64, ptr %i.abg, align 8, !alias.scope !2198, !noalias !2090, !noundef !11
  %i.abi = icmp eq i64 %i.abf, %i.abh
  br i1 %i.abi, label %bb.hc, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.hc:                                            ; preds = %bb.hb
  %i.abj = getelementptr inbounds i8, ptr %i.f, i64 -64
  %i.abk = load i64, ptr %i.abj, align 8, !alias.scope !2199, !noundef !11
  %i.abl = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.abm = load i64, ptr %i.abl, align 8, !alias.scope !2198, !noalias !2090, !noundef !11
  %i.abn = icmp eq i64 %i.abk, %i.abm
  br i1 %i.abn, label %bb.hd, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.hd:                                            ; preds = %bb.hc
  %i.abo = tail call noundef zeroext i1 @_RNvXs1_NtCsgi2f7M0R94N_6semver10identifierNtB5_10IdentifierNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.aax, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.aay)
  br i1 %i.abo, label %bb.he, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.he:                                            ; preds = %bb.hd
  %i.abp = getelementptr inbounds i8, ptr %i.f, i64 -88
  %i.abq = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.abr = tail call noundef zeroext i1 @_RNvXs1_NtCsgi2f7M0R94N_6semver10identifierNtB5_10IdentifierNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.abp, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.abq)
  br label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.hf:                                            ; preds = %bb.b
  %i.abs = getelementptr inbounds i8, ptr %i.f, i64 -80
  %i.abt = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.abu = getelementptr inbounds i8, ptr %i.f, i64 -88
  %i.abv = load i64, ptr %i.abu, align 8, !alias.scope !2093, !noundef !11 ; 2 uses
  %i.abw = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.abx = load i64, ptr %i.abw, align 8, !alias.scope !2092, !noalias !2090, !noundef !11
  %i.aby = icmp eq i64 %i.abv, %i.abx
  br i1 %i.aby, label %bb.hg, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.hg:                                            ; preds = %bb.hf
  %i.abz = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.aca = load ptr, ptr %i.abz, align 8, !alias.scope !2092, !noalias !2090, !nonnull !11, !noundef !11
  %i.acb = getelementptr inbounds i8, ptr %i.f, i64 -96
  %i.acc = load ptr, ptr %i.acb, align 8, !alias.scope !2093, !nonnull !11, !noundef !11
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.acc, ptr nonnull %i.aca, i64 %i.abv), !noalias !2096
  %i.acd = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.acd, label %bb.hh, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.hh:                                            ; preds = %bb.hg
  %i.ace = tail call fastcc noundef zeroext i1 @_RNvXs6_NtCs8O45qwFIwQX_10serde_json5valueNtB5_5ValueNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.abs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.abt) #23
  br label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.hi:                                            ; preds = %bb.b
  %i.acf = getelementptr inbounds i8, ptr %i.f, i64 -96
  %i.acg = getelementptr inbounds nuw i8, ptr %.val, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2200)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2201)
  %i.ach = load i8, ptr %i.acf, align 8, !range !16, !alias.scope !2202, !noundef !11
  %i.aci = load i8, ptr %i.acg, align 8, !range !16, !alias.scope !2203, !noalias !2090, !noundef !11
  %i.acj = icmp eq i8 %i.ach, %i.aci
  br i1 %i.acj, label %bb.hj, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.hj:                                            ; preds = %bb.hi
  %i.ack = getelementptr inbounds i8, ptr %i.f, i64 -95
  %i.acl = load i8, ptr %i.ack, align 1, !range !16, !alias.scope !2202, !noundef !11
  %i.acm = trunc nuw i8 %i.acl to i1
  %i.acn = getelementptr inbounds i8, ptr %i.f, i64 -94
  %i.aco = getelementptr inbounds nuw i8, ptr %.val, i64 9
  %i.acp = load i8, ptr %i.aco, align 1, !range !16, !alias.scope !2203, !noalias !2090, !noundef !11
  %i.acq = trunc nuw i8 %i.acp to i1              ; 2 uses
  br i1 %i.acm, label %bb.hk, label %bb.hl

bb.hk:                                            ; preds = %bb.hj
  br i1 %i.acq, label %.split.i.i.i, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.hl:                                            ; preds = %bb.hj
  br i1 %i.acq, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit, label %bb.hm

.split.i.i.i:                                     ; preds = %bb.hk
  %i.acr = getelementptr inbounds nuw i8, ptr %.val, i64 10
  %i.acs = load i8, ptr %i.acn, align 2, !alias.scope !2202, !noundef !11
  %i.act = load i8, ptr %i.acr, align 2, !alias.scope !2203, !noalias !2090, !noundef !11
  %i.acu = icmp eq i8 %i.acs, %i.act
  br i1 %i.acu, label %bb.hm, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.hm:                                            ; preds = %.split.i.i.i, %bb.hl
  %i.acv = getelementptr inbounds i8, ptr %i.f, i64 -93
  %i.acw = load i8, ptr %i.acv, align 1, !range !16, !alias.scope !2202, !noundef !11
  %i.acx = trunc nuw i8 %i.acw to i1
  %i.acy = getelementptr inbounds i8, ptr %i.f, i64 -92
  %i.acz = getelementptr inbounds nuw i8, ptr %.val, i64 11
  %i.ada = load i8, ptr %i.acz, align 1, !range !16, !alias.scope !2203, !noalias !2090, !noundef !11
  %i.adb = trunc nuw i8 %i.ada to i1              ; 2 uses
  br i1 %i.acx, label %bb.hn, label %bb.ho

bb.hn:                                            ; preds = %bb.hm
  br i1 %i.adb, label %.split3.i.i.i, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.ho:                                            ; preds = %bb.hm
  br i1 %i.adb, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit, label %bb.hp

.split3.i.i.i:                                    ; preds = %bb.hn
  %i.adc = getelementptr inbounds nuw i8, ptr %.val, i64 12
  %i.add = load i8, ptr %i.acy, align 4, !alias.scope !2202, !noundef !11
  %i.ade = load i8, ptr %i.adc, align 4, !alias.scope !2203, !noalias !2090, !noundef !11
  %i.adf = icmp eq i8 %i.add, %i.ade
  br i1 %i.adf, label %bb.hp, label %_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsINtNtNtCsjZG7hsAZr3B_5tokio4sync9broadcast6SenderINtNtCskKLDkoKarTP_4core6result6ResultbNtNtB15_6errors12StorageErrorEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0Csl8OoimOLbh_6qdrant.exit

bb.hp:                                            ; preds = %.split3.i.i.i, %bb.ho
  %i.adg = getelementptr inbounds i8, ptr %i.f, i64 -91
  %i.adh = load i8, ptr %i.adg, align 1, !range !16, !alias.scope !2202, !noundef !11
  %i.adi = trunc nuw i8 %i.adh to i1
  %i.adj = getelementptr inbounds i8, ptr %i.f, i64 -90
  %i.adk = getelementptr inbounds nuw i8, ptr %.val, i64 13
  %i.adl = load i8, ptr %i.adk, align 1, !range !16, !alias.scope !2203, !noalias !2090, !noundef !11
  %i.adm = trunc nuw i8 %i.adl to i1              ; 2 uses
  br i1 %i.adi, label %bb.hq, label %bb.hr
end_hunk_1
