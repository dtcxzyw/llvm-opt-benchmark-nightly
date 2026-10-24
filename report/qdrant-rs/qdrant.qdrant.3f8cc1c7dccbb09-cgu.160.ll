Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.160?download=true
inline.NumInlined: 317
inline.NumDeleted: 233
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RINvXs1q_NtNtCs4NSHK7GLW4I_10serde_core2de5implsINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9SpanEventENtB9_11Deserialize11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueEB1K_:bb.a
  br label %bb.ab

bb.ai:                                            ; preds = %.body.i.i
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !45
  unreachable

_RINvXNtCshE3sgg5Qsfb_6config2deNtNtB5_5value5ValueNtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer15deserialize_seqINtNvXs1q_NtBO_5implsINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetppENtBO_11Deserialize11deserialize10SeqVisitorNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9SpanEventNtNtNtB2i_4hash6random11RandomStateEEB3T_.exit: ; preds = %bb.ab, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i9.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1q_NtNtCs4NSHK7GLW4I_10serde_core2de5implsINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9SpanEventENtB9_11Deserialize11deserializeQINtNtCs8O45qwFIwQX_10serde_json2de12DeserializerNtNtB35_4read9SliceReadEEB1K_(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs5_NtCs8O45qwFIwQX_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer15deserialize_seqINtNvXs1q_NtB1l_5implsINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetppENtB1l_11Deserialize11deserialize10SeqVisitorNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9SpanEventNtNtNtB2Q_4hash6random11RandomStateEEB4s_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB5_6CopiedINtNtB7_5chain5ChainIB13_IB13_INtNtNtBb_5slice4iter4IteryEB1w_EB1w_EB1w_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldyTyuEuNCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB3u_7HashSetyNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB2i_7collect6ExtendyE6extendBP_E0NCINvNvB2e_8for_each4callB3g_NCINvXs1i_NtB3w_3mapINtB6g_7HashMapyuB4e_EIB52_B3g_E6extendINtB2X_3MapBP_B3l_EE0E0E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(72) %0, i64 72, i1 false)
  call void @_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtNtBb_5slice4iter4IteryEB18_EB18_EB18_ENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_6copied9copy_foldyuNCINvNtB7_3map8map_foldyTyuEuNCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB3y_7HashSetyNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB1T_7collect6ExtendyE6extendINtB2y_6CopiedBO_EE0NCINvNvB1P_8for_each4callB3k_NCINvXs1i_NtB3A_3mapINtB6z_7HashMapyuB4i_EIB56_B3k_E6extendINtB31_3MapB5C_B3p_EE0E0E0E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldB1s_TB1s_uEuNCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB3D_7HashSetB1s_NtNtCsyIGusAaLFh_5ahash12random_state11RandomStateEINtNtB2l_7collect6ExtendB1s_E6extendBP_E0NCINvNvB2h_8for_each4callB3m_NCINvXs1i_NtB3F_3mapINtB6x_7HashMapB1s_uB4q_EIB5g_B3m_E6extendINtB30_3MapBP_B3u_EE0E0E0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef align 8 dereferenceable(64) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1K_8adapters6copied9copy_foldBQ_uNCINvNtB2w_3map8map_foldBQ_TBQ_uEuNCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB3N_7HashSetBQ_NtNtCsyIGusAaLFh_5ahash12random_state11RandomStateEINtNtB1I_7collect6ExtendBQ_E6extendINtB2u_6CopiedBF_EE0NCINvNvB1E_8for_each4callB3x_NCINvXs1i_NtB3P_3mapINtB6U_7HashMapBQ_uB4z_EIB5p_B3x_E6extendINtB3b_3MapB5X_B3E_EE0E0E0E0ECsl8OoimOLbh_6qdrant.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = udiv exact i64 %i.e, 24
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.i, %bb.c ] ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !67
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !68
  %i.h = call noundef zeroext i1 @_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIduNtNtCsyIGusAaLFh_5ahash12random_state11RandomStateE6insertCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a), !noalias !69 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !67
  %i.i = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.f
  br i1 %i.j, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1K_8adapters6copied9copy_foldBQ_uNCINvNtB2w_3map8map_foldBQ_TBQ_uEuNCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB3N_7HashSetBQ_NtNtCsyIGusAaLFh_5ahash12random_state11RandomStateEINtNtB1I_7collect6ExtendBQ_E6extendINtB2u_6CopiedBF_EE0NCINvNvB1E_8for_each4callB3x_NCINvXs1i_NtB3P_3mapINtB6U_7HashMapBQ_uB4z_EIB5p_B3x_E6extendINtB3b_3MapB5X_B3E_EE0E0E0E0ECsl8OoimOLbh_6qdrant.exit, label %bb.c

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1K_8adapters6copied9copy_foldBQ_uNCINvNtB2w_3map8map_foldBQ_TBQ_uEuNCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB3N_7HashSetBQ_NtNtCsyIGusAaLFh_5ahash12random_state11RandomStateEINtNtB1I_7collect6ExtendBQ_E6extendINtB2u_6CopiedBF_EE0NCINvNvB1E_8for_each4callB3x_NCINvXs1i_NtB3P_3mapINtB6U_7HashMapBQ_uB4z_EIB5p_B3x_E6extendINtB3b_3MapB5X_B3E_EE0E0E0E0ECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IteryEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_6filter11filter_foldyuNCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection13sharding_keysNtB2O_10Collection18create_replica_set00NCINvNtB7_3map8map_foldyTyuEuNCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB4W_7HashSetyNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB1z_7collect6ExtendyE6extendINtB2e_6FilterBP_B2F_EE0NCINvNvB1v_8for_each4callB4I_NCINvXs1i_NtB4Y_3mapINtB81_7HashMapyuB5G_EIB6u_B4I_E6extendINtB4p_3MapB70_B4N_EE0E0E0E0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) %2, ptr noalias nofree noundef align 8 dereferenceable(48) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldyuNCINvNtB1K_6filter11filter_foldyuNCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection13sharding_keysNtB2X_10Collection18create_replica_set00NCINvNtB1K_3map8map_foldyTyuEuNCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB56_7HashSetyNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtBW_7collect6ExtendyE6extendINtB2m_6FilterINtB1I_6CopiedBF_EB2O_EE0NCINvNvBS_8for_each4callB4S_NCINvXs1i_NtB58_3mapINtB8o_7HashMapyuB5Q_EIB6E_B4S_E6extendINtB4y_3MapB79_B4X_EE0E0E0E0E0ECsl8OoimOLbh_6qdrant.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 3
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 504
  br label %bb.c

bb.c:                                             ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6copied9copy_foldyuNCINvNtB6_6filter11filter_foldyuNCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection13sharding_keysNtB1F_10Collection18create_replica_set00NCINvNtB6_3map8map_foldyTyuEuNCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB3N_7HashSetyNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtB8_6traits7collect6ExtendyE6extendINtB15_6FilterINtB4_6CopiedINtNtNtBa_5slice4iter4IteryEEB1w_EE0NCINvNvNtNtB5p_8iterator8Iterator8for_each4callB3z_NCINvXs1i_NtB3P_3mapINtB7Z_7HashMapyuB4x_EIB5l_B3z_E6extendINtB3g_3MapB5Z_B3E_EE0E0E0E0E0Csl8OoimOLbh_6qdrant.exit.i, %bb.b
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.j, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6copied9copy_foldyuNCINvNtB6_6filter11filter_foldyuNCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection13sharding_keysNtB1F_10Collection18create_replica_set00NCINvNtB6_3map8map_foldyTyuEuNCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB3N_7HashSetyNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtB8_6traits7collect6ExtendyE6extendINtB15_6FilterINtB4_6CopiedINtNtNtBa_5slice4iter4IteryEEB1w_EE0NCINvNvNtNtB5p_8iterator8Iterator8for_each4callB3z_NCINvXs1i_NtB3P_3mapINtB7Z_7HashMapyuB4x_EIB5l_B3z_E6extendINtB3g_3MapB5Z_B3E_EE0E0E0E0E0Csl8OoimOLbh_6qdrant.exit.i ] ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %.val9.i = load i64, ptr %i.g, align 8, !noalias !72, !noundef !6 ; 2 uses
  %i.h = load i64, ptr %i.f, align 8, !noalias !72, !noundef !6
  %.not.i.i.i = icmp eq i64 %.val9.i, %i.h
  br i1 %.not.i.i.i, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6copied9copy_foldyuNCINvNtB6_6filter11filter_foldyuNCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection13sharding_keysNtB1F_10Collection18create_replica_set00NCINvNtB6_3map8map_foldyTyuEuNCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB3N_7HashSetyNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtB8_6traits7collect6ExtendyE6extendINtB15_6FilterINtB4_6CopiedINtNtNtBa_5slice4iter4IteryEEB1w_EE0NCINvNvNtNtB5p_8iterator8Iterator8for_each4callB3z_NCINvXs1i_NtB3P_3mapINtB7Z_7HashMapyuB4x_EIB5l_B3z_E6extendINtB3g_3MapB5Z_B3E_EE0E0E0E0E0Csl8OoimOLbh_6qdrant.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call noundef zeroext i1 @_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapyuNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6insertCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %3, i64 noundef %.val9.i) ; 0 uses
  br label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6copied9copy_foldyuNCINvNtB6_6filter11filter_foldyuNCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection13sharding_keysNtB1F_10Collection18create_replica_set00NCINvNtB6_3map8map_foldyTyuEuNCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB3N_7HashSetyNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtB8_6traits7collect6ExtendyE6extendINtB15_6FilterINtB4_6CopiedINtNtNtBa_5slice4iter4IteryEEB1w_EE0NCINvNvNtNtB5p_8iterator8Iterator8for_each4callB3z_NCINvXs1i_NtB3P_3mapINtB7Z_7HashMapyuB4x_EIB5l_B3z_E6extendINtB3g_3MapB5Z_B3E_EE0E0E0E0E0Csl8OoimOLbh_6qdrant.exit.i

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6copied9copy_foldyuNCINvNtB6_6filter11filter_foldyuNCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection13sharding_keysNtB1F_10Collection18create_replica_set00NCINvNtB6_3map8map_foldyTyuEuNCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB3N_7HashSetyNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtB8_6traits7collect6ExtendyE6extendINtB15_6FilterINtB4_6CopiedINtNtNtBa_5slice4iter4IteryEEB1w_EE0NCINvNvNtNtB5p_8iterator8Iterator8for_each4callB3z_NCINvXs1i_NtB3P_3mapINtB7Z_7HashMapyuB4x_EIB5l_B3z_E6extendINtB3g_3MapB5Z_B3E_EE0E0E0E0E0Csl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.d, %bb.c
  %i.j = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.k = icmp eq i64 %i.j, %i.e
  br i1 %i.k, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldyuNCINvNtB1K_6filter11filter_foldyuNCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection13sharding_keysNtB2X_10Collection18create_replica_set00NCINvNtB1K_3map8map_foldyTyuEuNCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB56_7HashSetyNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtBW_7collect6ExtendyE6extendINtB2m_6FilterINtB1I_6CopiedBF_EB2O_EE0NCINvNvBS_8for_each4callB4S_NCINvXs1i_NtB58_3mapINtB8o_7HashMapyuB5Q_EIB6E_B4S_E6extendINtB4y_3MapB79_B4X_EE0E0E0E0E0ECsl8OoimOLbh_6qdrant.exit, label %bb.c

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldyuNCINvNtB1K_6filter11filter_foldyuNCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection13sharding_keysNtB2X_10Collection18create_replica_set00NCINvNtB1K_3map8map_foldyTyuEuNCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB56_7HashSetyNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtBW_7collect6ExtendyE6extendINtB2m_6FilterINtB1I_6CopiedBF_EB2O_EE0NCINvNvBS_8for_each4callB4S_NCINvXs1i_NtB58_3mapINtB8o_7HashMapyuB5Q_EIB6E_B4S_E6extendINtB4y_3MapB79_B4X_EE0E0E0E0E0ECsl8OoimOLbh_6qdrant.exit: ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6copied9copy_foldyuNCINvNtB6_6filter11filter_foldyuNCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection13sharding_keysNtB1F_10Collection18create_replica_set00NCINvNtB6_3map8map_foldyTyuEuNCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB3N_7HashSetyNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtB8_6traits7collect6ExtendyE6extendINtB15_6FilterINtB4_6CopiedINtNtNtBa_5slice4iter4IteryEEB1w_EE0NCINvNvNtNtB5p_8iterator8Iterator8for_each4callB3z_NCINvXs1i_NtB3P_3mapINtB7Z_7HashMapyuB4x_EIB5l_B3z_E6extendINtB3g_3MapB5Z_B3E_EE0E0E0E0E0Csl8OoimOLbh_6qdrant.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4KeysmNtNtCsPYQCUnoTxQ_10collection16collection_state9ShardInfoEENtNtNtB9_6traits8iterator8Iterator4foldmNvYmNtNtBb_3cmp3Ord3maxECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = call noundef i32 @_RINvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_4ItermNtNtCsPYQCUnoTxQ_10collection16collection_state9ShardInfoENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldmNCINvXsJ_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB2S_4KeysmBM_EB1I_4foldmNCINvNtNtB1O_8adapters6copied9copy_foldmmNvYmNtNtB1Q_3cmp3Ord3maxE0E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i32 noundef %1, ptr noalias nofree noundef nonnull %i.a)
  ret i32 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEENtNtNtB9_6traits8iterator8Iterator4foldmNvYmNtNtBb_3cmp3Ord3maxECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @_RINvXsU_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_4KeysmuENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldmNCINvNtNtBU_8adapters6copied9copy_foldmmNvYmNtNtBW_3cmp3Ord3maxE0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i32 noundef %1)
  ret i32 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtCs4GWW6M5ZWyU_6brotli3enc11stride_evalINtB5_10StrideEvalNtNtCskMyW5b6jnKh_12alloc_stdlib9std_alloc13StandardAllocE13choose_strideCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) %0, ptr noalias nofree noundef nonnull writeonly captures(address) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !6
  %i.d = icmp eq i64 %2, %i.c
  br i1 %i.d, label %bb.c, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  call void @_RINvNtCskKLDkoKarTP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.val19 = load ptr, ptr %i.e, align 8, !nonnull !6, !noundef !6 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 200
  %.val20 = load i64, ptr %i.f, align 8, !noundef !6 ; 10 uses
  %i.g = icmp ugt i64 %.val20, %2
  br i1 %i.g, label %bb.e, label %bb.d, !prof !10

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 62, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #22
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.h = shl i64 %2, 3
  %i.i = add i64 %i.h, 15
  %i.j = icmp ugt i64 %.val20, %i.i
  br i1 %i.j, label %bb.g, label %bb.f, !prof !10

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 77, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #22
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.l = icmp samesign eq i64 %2, 0
  br i1 %i.l, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.g
  %i.m = lshr i64 %.val20, 3
  %i.n = sub i64 7, %.val20
  %i.o = tail call i64 @llvm.umax.i64(i64 %i.n, i64 -8)
  %i.p = add i64 %i.o, %.val20
  %i.q = lshr i64 %i.p, 3
  %i.r = add nsw i64 %2, -1
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.m, i64 %i.q)
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.s, i64 %i.r) ; 2 uses
  %i.u = add nuw nsw i64 %i.t, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.t, 8
  br i1 %min.iters.check, label %.lr.ph.preheader61, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.preheader
  %i.v = lshr i64 %.val20, 3
  %i.w = sub i64 7, %.val20
  %i.x = tail call i64 @llvm.umax.i64(i64 %i.w, i64 -8)
  %i.y = add i64 %i.x, %.val20
  %i.z = lshr i64 %i.y, 3
  %i.aa = tail call i64 @llvm.umin.i64(i64 %i.v, i64 %i.z)
  %i.ab = add nsw i64 %2, -1
  %i.ac = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 %i.ab)
  %i.ad = icmp eq i64 %i.ac, 2305843009213693951
  br i1 %i.ad, label %.lr.ph.preheader61, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %i.ae = and i64 %i.u, 3                         ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  %i.ag = select i1 %i.af, i64 4, i64 %i.ae
  %n.vec = sub nsw i64 %i.u, %i.ag                ; 3 uses
  %i.ah = getelementptr i8, ptr %1, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %next.gep = getelementptr i8, ptr %1, i64 %index
  %.idx = shl nuw i64 %index, 5
  %i.ai = getelementptr inbounds nuw i8, ptr %.val19, i64 %.idx ; 8 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %.idx58 = shl i64 %index, 5
  %i.ak = getelementptr inbounds nuw i8, ptr %.val19, i64 %.idx58 ; 8 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  %.idx59 = shl i64 %index, 5
  %i.am = getelementptr inbounds nuw i8, ptr %.val19, i64 %.idx59 ; 8 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 96
  %.idx60 = shl i64 %index, 5
  %i.ao = getelementptr i8, ptr %.val19, i64 %.idx60 ; 8 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 128
  %i.aq = load float, ptr %i.aj, align 4, !noundef !6
  %i.ar = load float, ptr %i.al, align 4, !noundef !6
  %i.as = load float, ptr %i.an, align 4, !noundef !6
  %i.at = load float, ptr %i.ap, align 4, !noundef !6
  %i.au = insertelement <4 x float> poison, float %i.aq, i64 0
  %i.av = insertelement <4 x float> %i.au, float %i.ar, i64 1
  %i.aw = insertelement <4 x float> %i.av, float %i.as, i64 2
  %i.ax = insertelement <4 x float> %i.aw, float %i.at, i64 3 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ai, i64 36
  %i.az = getelementptr inbounds nuw i8, ptr %i.ak, i64 68
  %i.ba = getelementptr inbounds nuw i8, ptr %i.am, i64 100
  %i.bb = getelementptr i8, ptr %i.ao, i64 132
  %i.bc = load float, ptr %i.ay, align 4, !noundef !6
  %i.bd = load float, ptr %i.az, align 4, !noundef !6
  %i.be = load float, ptr %i.ba, align 4, !noundef !6
  %i.bf = load float, ptr %i.bb, align 4, !noundef !6
  %i.bg = insertelement <4 x float> poison, float %i.bc, i64 0
  %i.bh = insertelement <4 x float> %i.bg, float %i.bd, i64 1
  %i.bi = insertelement <4 x float> %i.bh, float %i.be, i64 2
  %i.bj = insertelement <4 x float> %i.bi, float %i.bf, i64 3 ; 2 uses
  %i.bk = fadd <4 x float> %i.bj, splat (float 2.000000e+00)
  %i.bl = fcmp olt <4 x float> %i.bk, %i.ax       ; 2 uses
  %i.bm = zext <4 x i1> %i.bl to <4 x i8>
  %i.bn = select <4 x i1> %i.bl, <4 x float> %i.bj, <4 x float> %i.ax ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ak, i64 72
  %i.bq = getelementptr inbounds nuw i8, ptr %i.am, i64 104
  %i.br = getelementptr i8, ptr %i.ao, i64 136
  %i.bs = load float, ptr %i.bo, align 4, !noundef !6
  %i.bt = load float, ptr %i.bp, align 4, !noundef !6
  %i.bu = load float, ptr %i.bq, align 4, !noundef !6
  %i.bv = load float, ptr %i.br, align 4, !noundef !6
  %i.bw = insertelement <4 x float> poison, float %i.bs, i64 0
  %i.bx = insertelement <4 x float> %i.bw, float %i.bt, i64 1
  %i.by = insertelement <4 x float> %i.bx, float %i.bu, i64 2
  %i.bz = insertelement <4 x float> %i.by, float %i.bv, i64 3 ; 2 uses
  %i.ca = fadd <4 x float> %i.bz, splat (float 2.000000e+00)
  %i.cb = fcmp olt <4 x float> %i.ca, %i.bn       ; 2 uses
  %i.cc = select <4 x i1> %i.cb, <4 x i8> splat (i8 2), <4 x i8> %i.bm
  %i.cd = select <4 x i1> %i.cb, <4 x float> %i.bz, <4 x float> %i.bn ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ai, i64 44
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ak, i64 76
  %i.cg = getelementptr inbounds nuw i8, ptr %i.am, i64 108
  %i.ch = getelementptr i8, ptr %i.ao, i64 140
  %i.ci = load float, ptr %i.ce, align 4, !noundef !6
  %i.cj = load float, ptr %i.cf, align 4, !noundef !6
  %i.ck = load float, ptr %i.cg, align 4, !noundef !6
  %i.cl = load float, ptr %i.ch, align 4, !noundef !6
  %i.cm = insertelement <4 x float> poison, float %i.ci, i64 0
  %i.cn = insertelement <4 x float> %i.cm, float %i.cj, i64 1
  %i.co = insertelement <4 x float> %i.cn, float %i.ck, i64 2
  %i.cp = insertelement <4 x float> %i.co, float %i.cl, i64 3 ; 2 uses
  %i.cq = fadd <4 x float> %i.cp, splat (float 2.000000e+00)
  %i.cr = fcmp olt <4 x float> %i.cq, %i.cd       ; 2 uses
  %i.cs = select <4 x i1> %i.cr, <4 x i8> splat (i8 3), <4 x i8> %i.cc
  %i.ct = select <4 x i1> %i.cr, <4 x float> %i.cp, <4 x float> %i.cd ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ak, i64 80
  %i.cw = getelementptr inbounds nuw i8, ptr %i.am, i64 112
  %i.cx = getelementptr i8, ptr %i.ao, i64 144
  %i.cy = load float, ptr %i.cu, align 4, !noundef !6
  %i.cz = load float, ptr %i.cv, align 4, !noundef !6
  %i.da = load float, ptr %i.cw, align 4, !noundef !6
  %i.db = load float, ptr %i.cx, align 4, !noundef !6
  %i.dc = insertelement <4 x float> poison, float %i.cy, i64 0
  %i.dd = insertelement <4 x float> %i.dc, float %i.cz, i64 1
  %i.de = insertelement <4 x float> %i.dd, float %i.da, i64 2
  %i.df = insertelement <4 x float> %i.de, float %i.db, i64 3 ; 2 uses
  %i.dg = fadd <4 x float> %i.df, splat (float 2.000000e+00)
  %i.dh = fcmp olt <4 x float> %i.dg, %i.ct       ; 2 uses
  %i.di = select <4 x i1> %i.dh, <4 x i8> splat (i8 4), <4 x i8> %i.cs
  %i.dj = select <4 x i1> %i.dh, <4 x float> %i.df, <4 x float> %i.ct ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ai, i64 52
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ak, i64 84
  %i.dm = getelementptr inbounds nuw i8, ptr %i.am, i64 116
  %i.dn = getelementptr i8, ptr %i.ao, i64 148
  %i.do = load float, ptr %i.dk, align 4, !noundef !6
  %i.dp = load float, ptr %i.dl, align 4, !noundef !6
  %i.dq = load float, ptr %i.dm, align 4, !noundef !6
  %i.dr = load float, ptr %i.dn, align 4, !noundef !6
  %i.ds = insertelement <4 x float> poison, float %i.do, i64 0
  %i.dt = insertelement <4 x float> %i.ds, float %i.dp, i64 1
  %i.du = insertelement <4 x float> %i.dt, float %i.dq, i64 2
  %i.dv = insertelement <4 x float> %i.du, float %i.dr, i64 3 ; 2 uses
  %i.dw = fadd <4 x float> %i.dv, splat (float 2.000000e+00)
  %i.dx = fcmp olt <4 x float> %i.dw, %i.dj       ; 2 uses
  %i.dy = select <4 x i1> %i.dx, <4 x i8> splat (i8 5), <4 x i8> %i.di
  %i.dz = select <4 x i1> %i.dx, <4 x float> %i.dv, <4 x float> %i.dj ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ak, i64 88
  %i.ec = getelementptr inbounds nuw i8, ptr %i.am, i64 120
  %i.ed = getelementptr i8, ptr %i.ao, i64 152
  %i.ee = load float, ptr %i.ea, align 4, !noundef !6
  %i.ef = load float, ptr %i.eb, align 4, !noundef !6
  %i.eg = load float, ptr %i.ec, align 4, !noundef !6
  %i.eh = load float, ptr %i.ed, align 4, !noundef !6
  %i.ei = insertelement <4 x float> poison, float %i.ee, i64 0
  %i.ej = insertelement <4 x float> %i.ei, float %i.ef, i64 1
  %i.ek = insertelement <4 x float> %i.ej, float %i.eg, i64 2
  %i.el = insertelement <4 x float> %i.ek, float %i.eh, i64 3 ; 2 uses
  %i.em = fadd <4 x float> %i.el, splat (float 2.000000e+00)
  %i.en = fcmp olt <4 x float> %i.em, %i.dz       ; 2 uses
  %i.eo = select <4 x i1> %i.en, <4 x i8> splat (i8 6), <4 x i8> %i.dy
  %i.ep = select <4 x i1> %i.en, <4 x float> %i.el, <4 x float> %i.dz
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ai, i64 60
  %i.er = getelementptr inbounds nuw i8, ptr %i.ak, i64 92
  %i.es = getelementptr inbounds nuw i8, ptr %i.am, i64 124
  %i.et = getelementptr i8, ptr %i.ao, i64 156
  %i.eu = load float, ptr %i.eq, align 4, !noundef !6
  %i.ev = load float, ptr %i.er, align 4, !noundef !6
  %i.ew = load float, ptr %i.es, align 4, !noundef !6
  %i.ex = load float, ptr %i.et, align 4, !noundef !6
  %i.ey = insertelement <4 x float> poison, float %i.eu, i64 0
  %i.ez = insertelement <4 x float> %i.ey, float %i.ev, i64 1
  %i.fa = insertelement <4 x float> %i.ez, float %i.ew, i64 2
  %i.fb = insertelement <4 x float> %i.fa, float %i.ex, i64 3
  %i.fc = fadd <4 x float> %i.fb, splat (float 2.000000e+00)
  %i.fd = fcmp olt <4 x float> %i.fc, %i.ep
  %i.fe = select <4 x i1> %i.fd, <4 x i8> splat (i8 7), <4 x i8> %i.eo
  store <4 x i8> %i.fe, ptr %next.gep, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ff = icmp eq i64 %index.next, %n.vec
  br i1 %i.ff, label %.lr.ph.preheader61, label %vector.body, !llvm.loop !73

.lr.ph.preheader61:                               ; preds = %vector.body, %vector.scevcheck, %.lr.ph.preheader
  %.sroa.0.052.ph = phi ptr [ %1, %vector.scevcheck ], [ %1, %.lr.ph.preheader ], [ %i.ah, %vector.body ]
  %.sroa.7.051.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader61, %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCsl8OoimOLbh_6qdrant.exit25
  %.sroa.0.052 = phi ptr [ %i.fg, %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCsl8OoimOLbh_6qdrant.exit25 ], [ %.sroa.0.052.ph, %.lr.ph.preheader61 ] ; 2 uses
  %.sroa.7.051 = phi i64 [ %i.fh, %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCsl8OoimOLbh_6qdrant.exit25 ], [ %.sroa.7.051.ph, %.lr.ph.preheader61 ] ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.0.052, i64 1 ; 2 uses
  %i.fh = add nuw nsw i64 %.sroa.7.051, 1
  %i.fi = shl nuw i64 %.sroa.7.051, 3
  %i.fj = add i64 %i.fi, 8                        ; 3 uses
  %.not.i = icmp ugt i64 %i.fj, %.val20
  br i1 %.not.i, label %bb.h, label %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCsl8OoimOLbh_6qdrant.exit, !prof !13

bb.h:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @46, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #22, !noalias !81
  unreachable

_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCsl8OoimOLbh_6qdrant.exit: ; preds = %.lr.ph
  %i.fk = sub nuw nsw i64 %.val20, %i.fj
  %.not.i21 = icmp ult i64 %i.fk, 8
  br i1 %.not.i21, label %bb.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCsl8OoimOLbh_6qdrant.exit25, !prof !13

bb.i:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCsl8OoimOLbh_6qdrant.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @46, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #22, !noalias !82
  unreachable

._crit_edge:                                      ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCsl8OoimOLbh_6qdrant.exit25, %bb.g
  ret void

_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCsl8OoimOLbh_6qdrant.exit25: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCsl8OoimOLbh_6qdrant.exit
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %.val19, i64 %i.fj ; 4 uses
  %i.fm = load float, ptr %i.fl, align 4, !noundef !6 ; 2 uses
  %.sroa.033.0.ptr50.1 = getelementptr inbounds nuw i8, ptr %i.fl, i64 4
  %i.fn = load <4 x float>, ptr %.sroa.033.0.ptr50.1, align 4 ; 5 uses
  %i.fo = fadd <4 x float> %i.fn, splat (float 2.000000e+00) ; 4 uses
  %i.fp = extractelement <4 x float> %i.fo, i64 0
  %i.fq = fcmp olt float %i.fp, %i.fm             ; 2 uses
  %.sroa.04.1.1 = zext i1 %i.fq to i8
  %i.fr = extractelement <4 x float> %i.fn, i64 0
  %.sroa.05.1.1 = select i1 %i.fq, float %i.fr, float %i.fm ; 2 uses
  %i.fs = extractelement <4 x float> %i.fo, i64 1
  %i.ft = fcmp olt float %i.fs, %.sroa.05.1.1     ; 2 uses
  %.sroa.04.1.2 = select i1 %i.ft, i8 2, i8 %.sroa.04.1.1
  %i.fu = extractelement <4 x float> %i.fn, i64 1
  %.sroa.05.1.2 = select i1 %i.ft, float %i.fu, float %.sroa.05.1.1 ; 2 uses
  %i.fv = extractelement <4 x float> %i.fo, i64 2
  %i.fw = fcmp olt float %i.fv, %.sroa.05.1.2     ; 2 uses
  %.sroa.04.1.3 = select i1 %i.fw, i8 3, i8 %.sroa.04.1.2
  %i.fx = extractelement <4 x float> %i.fn, i64 2
  %.sroa.05.1.3 = select i1 %i.fw, float %i.fx, float %.sroa.05.1.2 ; 2 uses
  %i.fy = extractelement <4 x float> %i.fo, i64 3
  %i.fz = fcmp olt float %i.fy, %.sroa.05.1.3     ; 2 uses
  %.sroa.04.1.4 = select i1 %i.fz, i8 4, i8 %.sroa.04.1.3
  %i.ga = extractelement <4 x float> %i.fn, i64 3
  %.sroa.05.1.4 = select i1 %i.fz, float %i.ga, float %.sroa.05.1.3 ; 2 uses
  %.sroa.033.0.ptr50.5 = getelementptr inbounds nuw i8, ptr %i.fl, i64 20
  %i.gb = load float, ptr %.sroa.033.0.ptr50.5, align 4, !noundef !6 ; 2 uses
  %i.gc = fadd float %i.gb, 2.000000e+00
  %i.gd = fcmp olt float %i.gc, %.sroa.05.1.4     ; 2 uses
  %.sroa.04.1.5 = select i1 %i.gd, i8 5, i8 %.sroa.04.1.4
  %.sroa.05.1.5 = select i1 %i.gd, float %i.gb, float %.sroa.05.1.4 ; 2 uses
  %.sroa.033.0.ptr50.6 = getelementptr inbounds nuw i8, ptr %i.fl, i64 24
  %i.ge = load <2 x float>, ptr %.sroa.033.0.ptr50.6, align 4 ; 2 uses
  %i.gf = fadd <2 x float> %i.ge, splat (float 2.000000e+00) ; 2 uses
  %i.gg = extractelement <2 x float> %i.gf, i64 0
  %i.gh = fcmp olt float %i.gg, %.sroa.05.1.5     ; 2 uses
  %.sroa.04.1.6 = select i1 %i.gh, i8 6, i8 %.sroa.04.1.5
  %i.gi = extractelement <2 x float> %i.ge, i64 0
  %.sroa.05.1.6 = select i1 %i.gh, float %i.gi, float %.sroa.05.1.5
  %i.gj = extractelement <2 x float> %i.gf, i64 1
  %i.gk = fcmp olt float %i.gj, %.sroa.05.1.6
  %.sroa.04.1.7 = select i1 %i.gk, i8 7, i8 %.sroa.04.1.6
  store i8 %.sroa.04.1.7, ptr %.sroa.0.052, align 1
  %i.gl = icmp eq ptr %i.fg, %i.k
  br i1 %i.gl, label %._crit_edge, label %.lr.ph, !llvm.loop !80
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtCs4GWW6M5ZWyU_6brotli3enc11stride_evalINtB5_10StrideEvalNtNtCskMyW5b6jnKh_12alloc_stdlib9std_alloc13StandardAllocE3newCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([240 x i8]) align 8 captures(none) dereferenceable(240) %0, ptr noalias nofree noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %3, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(112) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [240 x i8], align 8               ; 49 uses
  %i.b = tail call noundef i64 @_RNvMs2_NtNtCs4GWW6M5ZWyU_6brotli3enc9interfaceINtB5_24PredictionModeContextMapNtNtB7_10input_pair17InputReferenceMutE20stride_context_speedCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3) ; 5 uses
  %.sroa.038.0.extract.trunc = trunc i64 %i.b to i16
  %.sroa.439.0.extract.shift = lshr i64 %i.b, 16  ; 2 uses
  %.sroa.439.0.extract.trunc = trunc i64 %.sroa.439.0.extract.shift to i16
  %.sroa.540.0.extract.shift = lshr i64 %i.b, 32
  %.sroa.540.0.extract.trunc = trunc i64 %.sroa.540.0.extract.shift to i16 ; 2 uses
  %.sroa.641.0.extract.shift = lshr i64 %i.b, 48  ; 2 uses
  %.sroa.641.0.extract.trunc = trunc nuw i64 %.sroa.641.0.extract.shift to i16
  %i.c = or i64 %.sroa.439.0.extract.shift, %i.b
  %i.d = and i64 %i.c, 65535
  %or.cond = icmp eq i64 %i.d, 0                  ; 2 uses
  %i.e = load i16, ptr %4, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.g = load i16, ptr %i.f, align 2
  %.sroa.9.0 = select i1 %or.cond, i16 %i.g, i16 %.sroa.439.0.extract.trunc ; 2 uses
  %.sroa.0.0 = select i1 %or.cond, i16 %i.e, i16 %.sroa.038.0.extract.trunc ; 2 uses
  %i.h = or i16 %.sroa.0.0, %.sroa.9.0
  %or.cond5 = icmp eq i16 %i.h, 0                 ; 2 uses
  %.sroa.9.1 = select i1 %or.cond5, i16 8192, i16 %.sroa.9.0 ; 2 uses
  %.sroa.0.1 = select i1 %or.cond5, i16 8, i16 %.sroa.0.0 ; 2 uses
  %i.i = icmp eq i16 %.sroa.540.0.extract.trunc, 0
  %i.j = icmp eq i64 %.sroa.641.0.extract.shift, 0
  %or.cond8 = and i1 %i.j, %i.i                   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.l = load i16, ptr %i.k, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.n = load i16, ptr %i.m, align 2
  %.sroa.18.0 = select i1 %or.cond8, i16 %i.n, i16 %.sroa.641.0.extract.trunc ; 2 uses
  %.sroa.14.0 = select i1 %or.cond8, i16 %i.l, i16 %.sroa.540.0.extract.trunc ; 2 uses
  %i.o = icmp eq i16 %.sroa.14.0, 0
  %i.p = icmp eq i16 %.sroa.18.0, 0
  %or.cond11 = select i1 %i.o, i1 %i.p, i1 false  ; 2 uses
  %.sroa.18.1 = select i1 %or.cond11, i16 %.sroa.9.1, i16 %.sroa.18.0
  %.sroa.14.1 = select i1 %or.cond11, i16 %.sroa.0.1, i16 %.sroa.14.0
  %i.q = tail call { ptr, i64 } @_RNvXNtCskMyW5b6jnKh_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCsaJmJITVpXm2_15alloc_no_stdlib15stack_allocator9AllocatorfE10alloc_cellCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull %1, i64 noundef 32) ; 2 uses
  %i.r = extractvalue { ptr, i64 } %i.q, 0        ; 4 uses
  %i.s = extractvalue { ptr, i64 } %i.q, 1        ; 3 uses
  %i.t = invoke { ptr, i64 } @_RNvXNtCskMyW5b6jnKh_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCsaJmJITVpXm2_15alloc_no_stdlib15stack_allocator9AllocatortE10alloc_cellCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull %1, i64 noundef 2097152)
          to label %bb.c unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.c:                                             ; preds = %bb.a
  %i.v = extractvalue { ptr, i64 } %i.t, 0        ; 4 uses
  %i.w = extractvalue { ptr, i64 } %i.t, 1        ; 3 uses
  %i.x = invoke { ptr, i64 } @_RNvXNtCskMyW5b6jnKh_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCsaJmJITVpXm2_15alloc_no_stdlib15stack_allocator9AllocatortE10alloc_cellCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull %1, i64 noundef 2097152)
          to label %bb.f unwind label %bb.e       ; 2 uses

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxtEECsl8OoimOLbh_6qdrant.exit68: ; preds = %bb.g, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxtEECsl8OoimOLbh_6qdrant.exit69, %bb.e
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aa, %bb.e ], [ %.pn.pn.pn.pn.pn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxtEECsl8OoimOLbh_6qdrant.exit69 ], [ %.pn.pn.pn.pn.pn, %bb.g ] ; 2 uses
  %i.y = icmp eq i64 %i.w, 0
  br i1 %i.y, label %bb.ai, label %bb.d

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxtEECsl8OoimOLbh_6qdrant.exit68
  %i.z = shl nuw nsw i64 %i.w, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.v) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.v, i64 noundef range(i64 1, -9223372036854775808) %i.z, i64 noundef 2) #19
  br label %bb.ai

bb.e:                                             ; preds = %bb.c
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxtEECsl8OoimOLbh_6qdrant.exit68

bb.f:                                             ; preds = %bb.c
  %i.ab = extractvalue { ptr, i64 } %i.x, 0       ; 4 uses
  %i.ac = extractvalue { ptr, i64 } %i.x, 1       ; 3 uses
  %i.ad = invoke { ptr, i64 } @_RNvXNtCskMyW5b6jnKh_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCsaJmJITVpXm2_15alloc_no_stdlib15stack_allocator9AllocatortE10alloc_cellCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull %1, i64 noundef 2097152)
          to label %bb.i unwind label %bb.h       ; 2 uses

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxtEECsl8OoimOLbh_6qdrant.exit69: ; preds = %bb.j, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxtEECsl8OoimOLbh_6qdrant.exit70, %bb.h
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ag, %bb.h ], [ %.pn.pn.pn.pn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxtEECsl8OoimOLbh_6qdrant.exit70 ], [ %.pn.pn.pn.pn, %bb.j ] ; 2 uses
  %i.ae = icmp eq i64 %i.ac, 0
  br i1 %i.ae, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxtEECsl8OoimOLbh_6qdrant.exit68, label %bb.g

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxtEECsl8OoimOLbh_6qdrant.exit69
  %i.af = shl nuw nsw i64 %i.ac, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ab) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ab, i64 noundef range(i64 1, -9223372036854775808) %i.af, i64 noundef 2) #19
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxtEECsl8OoimOLbh_6qdrant.exit68

bb.h:                                             ; preds = %bb.f
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxtEECsl8OoimOLbh_6qdrant.exit69

bb.i:                                             ; preds = %bb.f
  %i.ah = extractvalue { ptr, i64 } %i.ad, 0      ; 4 uses
  %i.ai = extractvalue { ptr, i64 } %i.ad, 1      ; 3 uses
  %i.aj = invoke { ptr, i64 } @_RNvXNtCskMyW5b6jnKh_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCsaJmJITVpXm2_15alloc_no_stdlib15stack_allocator9AllocatortE10alloc_cellCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull %1, i64 noundef 2097152)
          to label %bb.l unwind label %bb.k       ; 2 uses

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxtEECsl8OoimOLbh_6qdrant.exit70: ; preds = %bb.m, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxtEECsl8OoimOLbh_6qdrant.exit71, %bb.k
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.am, %bb.k ], [ %.pn.pn.pn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxtEECsl8OoimOLbh_6qdrant.exit71 ], [ %.pn.pn.pn, %bb.m ] ; 2 uses
  %i.ak = icmp eq i64 %i.ai, 0
  br i1 %i.ak, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxtEECsl8OoimOLbh_6qdrant.exit69, label %bb.j

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxtEECsl8OoimOLbh_6qdrant.exit70
  %i.al = shl nuw nsw i64 %i.ai, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ah) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ah, i64 noundef range(i64 1, -9223372036854775808) %i.al, i64 noundef 2) #19
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxtEECsl8OoimOLbh_6qdrant.exit69
end_hunk_0
