Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.160?download=true
inline.NumInlined: 317
inline.NumDeleted: 233
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RINvXs1q_NtNtCs4NSHK7GLW4I_10serde_core2de5implsINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9SpanEventENtB9_11Deserialize11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueEB1K_:bb.a
  br label %bb.ac

bb.ag:                                            ; preds = %bb.ah, %bb.o
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.ah:                                            ; preds = %bb.o
  invoke void @_RINvYINtNvXs1q_NtNtCs4NSHK7GLW4I_10serde_core2de5implsINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetppENtBf_11Deserialize11deserialize10SeqVisitorNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9SpanEventNtNtNtBZ_4hash6random11RandomStateENtBf_7Visitor9visit_mapNtNtCshE3sgg5Qsfb_6config2de9MapAccessEB2A_(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.d)
          to label %bb.ai unwind label %bb.ag, !noalias !43

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !45
  br label %bb.ac

_RINvXNvXs1q_NtNtCs4NSHK7GLW4I_10serde_core2de5implsINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetppENtBc_11Deserialize11deserializeINtB3_10SeqVisitorNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9SpanEventNtNtNtBW_4hash6random11RandomStateENtBc_7Visitor9visit_seqNtNtCshE3sgg5Qsfb_6config2de9SeqAccessEB2D_.exit.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9SpanEventEEB1B_.exit9.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !45
  br label %bb.ac

bb.aj:                                            ; preds = %.body.i.i
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !44
  unreachable

_RINvXNtCshE3sgg5Qsfb_6config2deNtNtB5_5value5ValueNtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer15deserialize_seqINtNvXs1q_NtBO_5implsINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetppENtBO_11Deserialize11deserialize10SeqVisitorNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9SpanEventNtNtNtB2i_4hash6random11RandomStateEEB3T_.exit: ; preds = %bb.ac, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i9.i.i
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
  %3 = getelementptr i8, ptr %1, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %next.gep = getelementptr i8, ptr %1, i64 %index
  %.idx = shl nuw i64 %index, 5
  %i.ah = getelementptr inbounds nuw i8, ptr %.val19, i64 %.idx ; 8 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %.idx58 = shl i64 %index, 5
  %i.aj = getelementptr inbounds nuw i8, ptr %.val19, i64 %.idx58 ; 8 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %.idx59 = shl i64 %index, 5
  %i.al = getelementptr inbounds nuw i8, ptr %.val19, i64 %.idx59 ; 8 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 96
  %.idx60 = shl i64 %index, 5
  %i.an = getelementptr i8, ptr %.val19, i64 %.idx60 ; 8 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 128
  %i.ap = load float, ptr %i.ai, align 4, !noundef !6
  %i.aq = load float, ptr %i.ak, align 4, !noundef !6
  %i.ar = load float, ptr %i.am, align 4, !noundef !6
  %i.as = load float, ptr %i.ao, align 4, !noundef !6
  %i.at = insertelement <4 x float> poison, float %i.ap, i64 0
  %i.au = insertelement <4 x float> %i.at, float %i.aq, i64 1
  %i.av = insertelement <4 x float> %i.au, float %i.ar, i64 2
  %i.aw = insertelement <4 x float> %i.av, float %i.as, i64 3 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ah, i64 36
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 68
  %i.az = getelementptr inbounds nuw i8, ptr %i.al, i64 100
  %i.ba = getelementptr i8, ptr %i.an, i64 132
  %i.bb = load float, ptr %i.ax, align 4, !noundef !6
  %i.bc = load float, ptr %i.ay, align 4, !noundef !6
  %i.bd = load float, ptr %i.az, align 4, !noundef !6
  %i.be = load float, ptr %i.ba, align 4, !noundef !6
  %i.bf = insertelement <4 x float> poison, float %i.bb, i64 0
  %i.bg = insertelement <4 x float> %i.bf, float %i.bc, i64 1
  %i.bh = insertelement <4 x float> %i.bg, float %i.bd, i64 2
  %i.bi = insertelement <4 x float> %i.bh, float %i.be, i64 3 ; 2 uses
  %i.bj = fadd <4 x float> %i.bi, splat (float 2.000000e+00)
  %i.bk = fcmp olt <4 x float> %i.bj, %i.aw       ; 2 uses
  %i.bl = zext <4 x i1> %i.bk to <4 x i8>
  %i.bm = select <4 x i1> %i.bk, <4 x float> %i.bi, <4 x float> %i.aw ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aj, i64 72
  %i.bp = getelementptr inbounds nuw i8, ptr %i.al, i64 104
  %i.bq = getelementptr i8, ptr %i.an, i64 136
  %i.br = load float, ptr %i.bn, align 4, !noundef !6
  %i.bs = load float, ptr %i.bo, align 4, !noundef !6
  %i.bt = load float, ptr %i.bp, align 4, !noundef !6
  %i.bu = load float, ptr %i.bq, align 4, !noundef !6
  %i.bv = insertelement <4 x float> poison, float %i.br, i64 0
  %i.bw = insertelement <4 x float> %i.bv, float %i.bs, i64 1
  %i.bx = insertelement <4 x float> %i.bw, float %i.bt, i64 2
  %i.by = insertelement <4 x float> %i.bx, float %i.bu, i64 3 ; 2 uses
  %i.bz = fadd <4 x float> %i.by, splat (float 2.000000e+00)
  %i.ca = fcmp olt <4 x float> %i.bz, %i.bm       ; 2 uses
  %i.cb = select <4 x i1> %i.ca, <4 x i8> splat (i8 2), <4 x i8> %i.bl
  %i.cc = select <4 x i1> %i.ca, <4 x float> %i.by, <4 x float> %i.bm ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ah, i64 44
  %i.ce = getelementptr inbounds nuw i8, ptr %i.aj, i64 76
  %i.cf = getelementptr inbounds nuw i8, ptr %i.al, i64 108
  %i.cg = getelementptr i8, ptr %i.an, i64 140
  %i.ch = load float, ptr %i.cd, align 4, !noundef !6
  %i.ci = load float, ptr %i.ce, align 4, !noundef !6
  %i.cj = load float, ptr %i.cf, align 4, !noundef !6
  %i.ck = load float, ptr %i.cg, align 4, !noundef !6
  %i.cl = insertelement <4 x float> poison, float %i.ch, i64 0
  %i.cm = insertelement <4 x float> %i.cl, float %i.ci, i64 1
  %i.cn = insertelement <4 x float> %i.cm, float %i.cj, i64 2
  %i.co = insertelement <4 x float> %i.cn, float %i.ck, i64 3 ; 2 uses
  %i.cp = fadd <4 x float> %i.co, splat (float 2.000000e+00)
  %i.cq = fcmp olt <4 x float> %i.cp, %i.cc       ; 2 uses
  %i.cr = select <4 x i1> %i.cq, <4 x i8> splat (i8 3), <4 x i8> %i.cb
  %i.cs = select <4 x i1> %i.cq, <4 x float> %i.co, <4 x float> %i.cc ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.cu = getelementptr inbounds nuw i8, ptr %i.aj, i64 80
  %i.cv = getelementptr inbounds nuw i8, ptr %i.al, i64 112
  %i.cw = getelementptr i8, ptr %i.an, i64 144
  %i.cx = load float, ptr %i.ct, align 4, !noundef !6
  %i.cy = load float, ptr %i.cu, align 4, !noundef !6
  %i.cz = load float, ptr %i.cv, align 4, !noundef !6
  %i.da = load float, ptr %i.cw, align 4, !noundef !6
  %i.db = insertelement <4 x float> poison, float %i.cx, i64 0
  %i.dc = insertelement <4 x float> %i.db, float %i.cy, i64 1
  %i.dd = insertelement <4 x float> %i.dc, float %i.cz, i64 2
  %i.de = insertelement <4 x float> %i.dd, float %i.da, i64 3 ; 2 uses
  %i.df = fadd <4 x float> %i.de, splat (float 2.000000e+00)
  %i.dg = fcmp olt <4 x float> %i.df, %i.cs       ; 2 uses
  %i.dh = select <4 x i1> %i.dg, <4 x i8> splat (i8 4), <4 x i8> %i.cr
  %i.di = select <4 x i1> %i.dg, <4 x float> %i.de, <4 x float> %i.cs ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ah, i64 52
  %i.dk = getelementptr inbounds nuw i8, ptr %i.aj, i64 84
  %i.dl = getelementptr inbounds nuw i8, ptr %i.al, i64 116
  %i.dm = getelementptr i8, ptr %i.an, i64 148
  %i.dn = load float, ptr %i.dj, align 4, !noundef !6
  %i.do = load float, ptr %i.dk, align 4, !noundef !6
  %i.dp = load float, ptr %i.dl, align 4, !noundef !6
  %i.dq = load float, ptr %i.dm, align 4, !noundef !6
  %i.dr = insertelement <4 x float> poison, float %i.dn, i64 0
  %i.ds = insertelement <4 x float> %i.dr, float %i.do, i64 1
  %i.dt = insertelement <4 x float> %i.ds, float %i.dp, i64 2
  %i.du = insertelement <4 x float> %i.dt, float %i.dq, i64 3 ; 2 uses
  %i.dv = fadd <4 x float> %i.du, splat (float 2.000000e+00)
  %i.dw = fcmp olt <4 x float> %i.dv, %i.di       ; 2 uses
  %i.dx = select <4 x i1> %i.dw, <4 x i8> splat (i8 5), <4 x i8> %i.dh
  %i.dy = select <4 x i1> %i.dw, <4 x float> %i.du, <4 x float> %i.di ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.ea = getelementptr inbounds nuw i8, ptr %i.aj, i64 88
  %i.eb = getelementptr inbounds nuw i8, ptr %i.al, i64 120
  %i.ec = getelementptr i8, ptr %i.an, i64 152
  %i.ed = load float, ptr %i.dz, align 4, !noundef !6
  %i.ee = load float, ptr %i.ea, align 4, !noundef !6
  %i.ef = load float, ptr %i.eb, align 4, !noundef !6
  %i.eg = load float, ptr %i.ec, align 4, !noundef !6
  %i.eh = insertelement <4 x float> poison, float %i.ed, i64 0
  %i.ei = insertelement <4 x float> %i.eh, float %i.ee, i64 1
  %i.ej = insertelement <4 x float> %i.ei, float %i.ef, i64 2
  %i.ek = insertelement <4 x float> %i.ej, float %i.eg, i64 3 ; 2 uses
  %i.el = fadd <4 x float> %i.ek, splat (float 2.000000e+00)
  %i.em = fcmp olt <4 x float> %i.el, %i.dy       ; 2 uses
  %i.en = select <4 x i1> %i.em, <4 x i8> splat (i8 6), <4 x i8> %i.dx
  %i.eo = select <4 x i1> %i.em, <4 x float> %i.ek, <4 x float> %i.dy
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ah, i64 60
  %i.eq = getelementptr inbounds nuw i8, ptr %i.aj, i64 92
  %i.er = getelementptr inbounds nuw i8, ptr %i.al, i64 124
  %i.es = getelementptr i8, ptr %i.an, i64 156
  %i.et = load float, ptr %i.ep, align 4, !noundef !6
  %i.eu = load float, ptr %i.eq, align 4, !noundef !6
  %i.ev = load float, ptr %i.er, align 4, !noundef !6
  %i.ew = load float, ptr %i.es, align 4, !noundef !6
  %i.ex = insertelement <4 x float> poison, float %i.et, i64 0
  %i.ey = insertelement <4 x float> %i.ex, float %i.eu, i64 1
  %i.ez = insertelement <4 x float> %i.ey, float %i.ev, i64 2
  %i.fa = insertelement <4 x float> %i.ez, float %i.ew, i64 3
  %i.fb = fadd <4 x float> %i.fa, splat (float 2.000000e+00)
  %i.fc = fcmp olt <4 x float> %i.fb, %i.eo
  %i.fd = select <4 x i1> %i.fc, <4 x i8> splat (i8 7), <4 x i8> %i.en
  store <4 x i8> %i.fd, ptr %next.gep, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fe = icmp eq i64 %index.next, %n.vec
  br i1 %i.fe, label %.lr.ph.preheader61, label %vector.body, !llvm.loop !73

.lr.ph.preheader61:                               ; preds = %vector.body, %vector.scevcheck, %.lr.ph.preheader
  %.sroa.0.052.ph = phi ptr [ %1, %vector.scevcheck ], [ %1, %.lr.ph.preheader ], [ %3, %vector.body ]
  %.sroa.7.051.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader61, %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCsl8OoimOLbh_6qdrant.exit25
  %.sroa.0.052 = phi ptr [ %i.ff, %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCsl8OoimOLbh_6qdrant.exit25 ], [ %.sroa.0.052.ph, %.lr.ph.preheader61 ] ; 2 uses
  %.sroa.7.051 = phi i64 [ %i.fg, %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCsl8OoimOLbh_6qdrant.exit25 ], [ %.sroa.7.051.ph, %.lr.ph.preheader61 ] ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.0.052, i64 1 ; 2 uses
  %i.fg = add nuw nsw i64 %.sroa.7.051, 1
  %i.fh = shl nuw i64 %.sroa.7.051, 3
  %i.fi = add i64 %i.fh, 8                        ; 3 uses
  %.not.i = icmp ugt i64 %i.fi, %.val20
  br i1 %.not.i, label %bb.h, label %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCsl8OoimOLbh_6qdrant.exit, !prof !13

bb.h:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @46, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #22, !noalias !81
  unreachable

_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCsl8OoimOLbh_6qdrant.exit: ; preds = %.lr.ph
  %i.fj = sub nuw nsw i64 %.val20, %i.fi
  %.not.i21 = icmp ult i64 %i.fj, 8
  br i1 %.not.i21, label %bb.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCsl8OoimOLbh_6qdrant.exit25, !prof !13

bb.i:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCsl8OoimOLbh_6qdrant.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @46, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #22, !noalias !82
  unreachable

._crit_edge:                                      ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCsl8OoimOLbh_6qdrant.exit25, %bb.g
  ret void

_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCsl8OoimOLbh_6qdrant.exit25: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCsl8OoimOLbh_6qdrant.exit
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %.val19, i64 %i.fi ; 4 uses
  %i.fl = load float, ptr %i.fk, align 4, !noundef !6 ; 2 uses
  %.sroa.033.0.ptr50.1 = getelementptr inbounds nuw i8, ptr %i.fk, i64 4
  %i.fm = load <4 x float>, ptr %.sroa.033.0.ptr50.1, align 4 ; 5 uses
  %i.fn = fadd <4 x float> %i.fm, splat (float 2.000000e+00) ; 4 uses
  %i.fo = extractelement <4 x float> %i.fn, i64 0
  %i.fp = fcmp olt float %i.fo, %i.fl             ; 2 uses
  %.sroa.04.1.1 = zext i1 %i.fp to i8
  %i.fq = extractelement <4 x float> %i.fm, i64 0
  %.sroa.05.1.1 = select i1 %i.fp, float %i.fq, float %i.fl ; 2 uses
  %i.fr = extractelement <4 x float> %i.fn, i64 1
  %i.fs = fcmp olt float %i.fr, %.sroa.05.1.1     ; 2 uses
  %.sroa.04.1.2 = select i1 %i.fs, i8 2, i8 %.sroa.04.1.1
  %i.ft = extractelement <4 x float> %i.fm, i64 1
  %.sroa.05.1.2 = select i1 %i.fs, float %i.ft, float %.sroa.05.1.1 ; 2 uses
  %i.fu = extractelement <4 x float> %i.fn, i64 2
  %i.fv = fcmp olt float %i.fu, %.sroa.05.1.2     ; 2 uses
  %.sroa.04.1.3 = select i1 %i.fv, i8 3, i8 %.sroa.04.1.2
  %i.fw = extractelement <4 x float> %i.fm, i64 2
  %.sroa.05.1.3 = select i1 %i.fv, float %i.fw, float %.sroa.05.1.2 ; 2 uses
  %i.fx = extractelement <4 x float> %i.fn, i64 3
  %i.fy = fcmp olt float %i.fx, %.sroa.05.1.3     ; 2 uses
  %.sroa.04.1.4 = select i1 %i.fy, i8 4, i8 %.sroa.04.1.3
  %i.fz = extractelement <4 x float> %i.fm, i64 3
  %.sroa.05.1.4 = select i1 %i.fy, float %i.fz, float %.sroa.05.1.3 ; 2 uses
  %.sroa.033.0.ptr50.5 = getelementptr inbounds nuw i8, ptr %i.fk, i64 20
  %i.ga = load float, ptr %.sroa.033.0.ptr50.5, align 4, !noundef !6 ; 2 uses
  %i.gb = fadd float %i.ga, 2.000000e+00
  %i.gc = fcmp olt float %i.gb, %.sroa.05.1.4     ; 2 uses
  %.sroa.04.1.5 = select i1 %i.gc, i8 5, i8 %.sroa.04.1.4
  %.sroa.05.1.5 = select i1 %i.gc, float %i.ga, float %.sroa.05.1.4 ; 2 uses
  %.sroa.033.0.ptr50.6 = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  %i.gd = load <2 x float>, ptr %.sroa.033.0.ptr50.6, align 4 ; 2 uses
  %i.ge = fadd <2 x float> %i.gd, splat (float 2.000000e+00) ; 2 uses
  %i.gf = extractelement <2 x float> %i.ge, i64 0
  %i.gg = fcmp olt float %i.gf, %.sroa.05.1.5     ; 2 uses
  %.sroa.04.1.6 = select i1 %i.gg, i8 6, i8 %.sroa.04.1.5
  %i.gh = extractelement <2 x float> %i.gd, i64 0
  %.sroa.05.1.6 = select i1 %i.gg, float %i.gh, float %.sroa.05.1.5
  %i.gi = extractelement <2 x float> %i.ge, i64 1
  %i.gj = fcmp olt float %i.gi, %.sroa.05.1.6
  %.sroa.04.1.7 = select i1 %i.gj, i8 7, i8 %.sroa.04.1.6
  store i8 %.sroa.04.1.7, ptr %.sroa.0.052, align 1
  %i.gk = icmp eq ptr %i.ff, %i.k
  br i1 %i.gk, label %._crit_edge, label %.lr.ph, !llvm.loop !80
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

bb.k:                                             ; preds = %bb.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxtEECsl8OoimOLbh_6qdrant.exit70

bb.l:                                             ; preds = %bb.i
  %i.an = extractvalue { ptr, i64 } %i.aj, 0      ; 4 uses
  %i.ao = extractvalue { ptr, i64 } %i.aj, 1      ; 3 uses
  %i.ap = invoke { ptr, i64 } @_RNvXNtCskMyW5b6jnKh_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCsaJmJITVpXm2_15alloc_no_stdlib15stack_allocator9AllocatortE10alloc_cellCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull %1, i64 noundef 2097152)
          to label %bb.o unwind label %bb.n       ; 2 uses

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxtEECsl8OoimOLbh_6qdrant.exit71: ; preds = %bb.p, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxtEECsl8OoimOLbh_6qdrant.exit72, %bb.n
  %.pn.pn.pn = phi { ptr, i32 } [ %i.as, %bb.n ], [ %.pn.pn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxtEECsl8OoimOLbh_6qdrant.exit72 ], [ %.pn.pn, %bb.p ] ; 2 uses
  %i.aq = icmp eq i64 %i.ao, 0
end_hunk_0
begin_hunk_1_@_RNvXs3_NtNtCs4GWW6M5ZWyU_6brotli3enc11stride_evalINtB5_10StrideEvalNtNtCskMyW5b6jnKh_12alloc_stdlib9std_alloc13StandardAllocENtNtB7_12ir_interpret13IRInterpreter11update_costCsl8OoimOLbh_6qdrant:bb.a
  %i.ds = call { ptr, i64 } @_RNvMNtNtCs4GWW6M5ZWyU_6brotli3enc11stride_evalNtB2_12Stride1Prior10lookup_mut(ptr noalias nofree noundef nonnull align 2 %.val.7.i, i64 noundef %.val12.7.i, i8 noundef %i.ag, i8 noundef %3, i64 noundef %4, i1 noundef zeroext false, i8 undef), !noalias !164 ; 2 uses
  %i.dt = extractvalue { ptr, i64 } %i.ds, 0
  %i.du = extractvalue { ptr, i64 } %i.ds, 1
  store ptr %i.dt, ptr %i.b, align 8, !noalias !164
  store i64 %i.du, ptr %i.ai, align 8, !noalias !164
  %i.dv = call noundef float @_RNvMs_NtNtCs4GWW6M5ZWyU_6brotli3enc11stride_evalNtB4_3CDF4cost(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, i8 noundef %i.aj), !noalias !164
  %i.dw = or disjoint i64 %i.an, 7                ; 3 uses
  %i.dx = icmp ult i64 %i.dw, %.val16.i
  br i1 %i.dx, label %_RNvMs1_NtNtCs4GWW6M5ZWyU_6brotli3enc11stride_evalINtB5_10StrideEvalNtNtCskMyW5b6jnKh_12alloc_stdlib9std_alloc13StandardAllocE16update_cost_baseCsl8OoimOLbh_6qdrant.exit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.lcssa23.i = phi i64 [ %i.an, %bb.a ], [ %i.bi, %bb.b ], [ %i.bt, %bb.c ], [ %i.ce, %bb.d ], [ %i.cp, %bb.e ], [ %i.da, %bb.f ], [ %i.dl, %bb.g ], [ %i.dw, %bb.h ]
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa23.i, i64 noundef %.val16.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #22, !noalias !164
  unreachable

_RNvMs1_NtNtCs4GWW6M5ZWyU_6brotli3enc11stride_evalINtB5_10StrideEvalNtNtCskMyW5b6jnKh_12alloc_stdlib9std_alloc13StandardAllocE16update_cost_baseCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.h
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %.val15.i, i64 %i.dw ; 4 uses
  %i.dz = load float, ptr %i.dy, align 4, !noalias !164, !noundef !6
  %i.ea = fadd float %i.dv, %i.dz
  store float %i.ea, ptr %i.dy, align 4, !noalias !164
  call void @_RNvMs_NtNtCs4GWW6M5ZWyU_6brotli3enc11stride_evalNtB4_3CDF6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, i8 noundef %i.aj, i16 noundef %i.aq, i16 noundef %i.as), !noalias !164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !164
  %i.eb = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 8 uses
  %i.ec = and i8 %5, 15                           ; 16 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ee = load i16, ptr %i.ed, align 8, !alias.scope !164 ; 8 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 226
  %i.eg = load i16, ptr %i.ef, align 2, !alias.scope !164 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !164
  %i.eh = call { ptr, i64 } @_RNvMNtNtCs4GWW6M5ZWyU_6brotli3enc11stride_evalNtB2_12Stride1Prior10lookup_mut(ptr noalias nofree noundef nonnull align 2 %.val.i, i64 noundef %.val12.i, i8 noundef %i.f, i8 noundef %3, i64 noundef %4, i1 noundef zeroext true, i8 %i.aj), !noalias !164 ; 2 uses
  %i.ei = extractvalue { ptr, i64 } %i.eh, 0
  %i.ej = extractvalue { ptr, i64 } %i.eh, 1
  store ptr %i.ei, ptr %i.a, align 8, !noalias !164
  store i64 %i.ej, ptr %i.eb, align 8, !noalias !164
  %i.ek = call noundef float @_RNvMs_NtNtCs4GWW6M5ZWyU_6brotli3enc11stride_evalNtB4_3CDF4cost(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, i8 noundef %i.ec), !noalias !164
  %i.el = load float, ptr %i.az, align 4, !noalias !164, !noundef !6
  %i.em = fadd float %i.ek, %i.el
  store float %i.em, ptr %i.az, align 4, !noalias !164
  call void @_RNvMs_NtNtCs4GWW6M5ZWyU_6brotli3enc11stride_evalNtB4_3CDF6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, i8 noundef %i.ec, i16 noundef %i.ee, i16 noundef %i.eg), !noalias !164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !164
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !164
  %i.en = call { ptr, i64 } @_RNvMNtNtCs4GWW6M5ZWyU_6brotli3enc11stride_evalNtB2_12Stride1Prior10lookup_mut(ptr noalias nofree noundef nonnull align 2 %.val.1.i, i64 noundef %.val12.1.i, i8 noundef %i.j, i8 noundef %3, i64 noundef %4, i1 noundef zeroext true, i8 %i.aj), !noalias !164 ; 2 uses
  %i.eo = extractvalue { ptr, i64 } %i.en, 0
  %i.ep = extractvalue { ptr, i64 } %i.en, 1
  store ptr %i.eo, ptr %i.a, align 8, !noalias !164
  store i64 %i.ep, ptr %i.eb, align 8, !noalias !164
  %i.eq = call noundef float @_RNvMs_NtNtCs4GWW6M5ZWyU_6brotli3enc11stride_evalNtB4_3CDF4cost(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, i8 noundef %i.ec), !noalias !164
  %i.er = load float, ptr %i.bk, align 4, !noalias !164, !noundef !6
  %i.es = fadd float %i.eq, %i.er
  store float %i.es, ptr %i.bk, align 4, !noalias !164
  call void @_RNvMs_NtNtCs4GWW6M5ZWyU_6brotli3enc11stride_evalNtB4_3CDF6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, i8 noundef %i.ec, i16 noundef %i.ee, i16 noundef %i.eg), !noalias !164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !164
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !164
  %i.et = call { ptr, i64 } @_RNvMNtNtCs4GWW6M5ZWyU_6brotli3enc11stride_evalNtB2_12Stride1Prior10lookup_mut(ptr noalias nofree noundef nonnull align 2 %.val.2.i, i64 noundef %.val12.2.i, i8 noundef %i.n, i8 noundef %3, i64 noundef %4, i1 noundef zeroext true, i8 %i.aj), !noalias !164 ; 2 uses
  %i.eu = extractvalue { ptr, i64 } %i.et, 0
  %i.ev = extractvalue { ptr, i64 } %i.et, 1
  store ptr %i.eu, ptr %i.a, align 8, !noalias !164
  store i64 %i.ev, ptr %i.eb, align 8, !noalias !164
  %i.ew = call noundef float @_RNvMs_NtNtCs4GWW6M5ZWyU_6brotli3enc11stride_evalNtB4_3CDF4cost(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, i8 noundef %i.ec), !noalias !164
  %i.ex = load float, ptr %i.bv, align 4, !noalias !164, !noundef !6
  %i.ey = fadd float %i.ew, %i.ex
  store float %i.ey, ptr %i.bv, align 4, !noalias !164
  call void @_RNvMs_NtNtCs4GWW6M5ZWyU_6brotli3enc11stride_evalNtB4_3CDF6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, i8 noundef %i.ec, i16 noundef %i.ee, i16 noundef %i.eg), !noalias !164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !164
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !164
  %i.ez = call { ptr, i64 } @_RNvMNtNtCs4GWW6M5ZWyU_6brotli3enc11stride_evalNtB2_12Stride1Prior10lookup_mut(ptr noalias nofree noundef nonnull align 2 %.val.3.i, i64 noundef %.val12.3.i, i8 noundef %i.r, i8 noundef %3, i64 noundef %4, i1 noundef zeroext true, i8 %i.aj), !noalias !164 ; 2 uses
  %i.fa = extractvalue { ptr, i64 } %i.ez, 0
  %i.fb = extractvalue { ptr, i64 } %i.ez, 1
  store ptr %i.fa, ptr %i.a, align 8, !noalias !164
  store i64 %i.fb, ptr %i.eb, align 8, !noalias !164
  %i.fc = call noundef float @_RNvMs_NtNtCs4GWW6M5ZWyU_6brotli3enc11stride_evalNtB4_3CDF4cost(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, i8 noundef %i.ec), !noalias !164
  %i.fd = load float, ptr %i.cg, align 4, !noalias !164, !noundef !6
  %i.fe = fadd float %i.fc, %i.fd
  store float %i.fe, ptr %i.cg, align 4, !noalias !164
  call void @_RNvMs_NtNtCs4GWW6M5ZWyU_6brotli3enc11stride_evalNtB4_3CDF6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, i8 noundef %i.ec, i16 noundef %i.ee, i16 noundef %i.eg), !noalias !164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !164
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !164
  %i.ff = call { ptr, i64 } @_RNvMNtNtCs4GWW6M5ZWyU_6brotli3enc11stride_evalNtB2_12Stride1Prior10lookup_mut(ptr noalias nofree noundef nonnull align 2 %.val.4.i, i64 noundef %.val12.4.i, i8 noundef %i.u, i8 noundef %3, i64 noundef %4, i1 noundef zeroext true, i8 %i.aj), !noalias !164 ; 2 uses
  %i.fg = extractvalue { ptr, i64 } %i.ff, 0
  %i.fh = extractvalue { ptr, i64 } %i.ff, 1
  store ptr %i.fg, ptr %i.a, align 8, !noalias !164
  store i64 %i.fh, ptr %i.eb, align 8, !noalias !164
  %i.fi = call noundef float @_RNvMs_NtNtCs4GWW6M5ZWyU_6brotli3enc11stride_evalNtB4_3CDF4cost(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, i8 noundef %i.ec), !noalias !164
  %i.fj = load float, ptr %i.cr, align 4, !noalias !164, !noundef !6
  %i.fk = fadd float %i.fi, %i.fj
  store float %i.fk, ptr %i.cr, align 4, !noalias !164
  call void @_RNvMs_NtNtCs4GWW6M5ZWyU_6brotli3enc11stride_evalNtB4_3CDF6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, i8 noundef %i.ec, i16 noundef %i.ee, i16 noundef %i.eg), !noalias !164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !164
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !164
  %i.fl = call { ptr, i64 } @_RNvMNtNtCs4GWW6M5ZWyU_6brotli3enc11stride_evalNtB2_12Stride1Prior10lookup_mut(ptr noalias nofree noundef nonnull align 2 %.val.5.i, i64 noundef %.val12.5.i, i8 noundef %i.y, i8 noundef %3, i64 noundef %4, i1 noundef zeroext true, i8 %i.aj), !noalias !164 ; 2 uses
  %i.fm = extractvalue { ptr, i64 } %i.fl, 0
  %i.fn = extractvalue { ptr, i64 } %i.fl, 1
  store ptr %i.fm, ptr %i.a, align 8, !noalias !164
  store i64 %i.fn, ptr %i.eb, align 8, !noalias !164
  %i.fo = call noundef float @_RNvMs_NtNtCs4GWW6M5ZWyU_6brotli3enc11stride_evalNtB4_3CDF4cost(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, i8 noundef %i.ec), !noalias !164
  %i.fp = load float, ptr %i.dc, align 4, !noalias !164, !noundef !6
  %i.fq = fadd float %i.fo, %i.fp
  store float %i.fq, ptr %i.dc, align 4, !noalias !164
  call void @_RNvMs_NtNtCs4GWW6M5ZWyU_6brotli3enc11stride_evalNtB4_3CDF6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, i8 noundef %i.ec, i16 noundef %i.ee, i16 noundef %i.eg), !noalias !164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !164
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !164
  %i.fr = call { ptr, i64 } @_RNvMNtNtCs4GWW6M5ZWyU_6brotli3enc11stride_evalNtB2_12Stride1Prior10lookup_mut(ptr noalias nofree noundef nonnull align 2 %.val.6.i, i64 noundef %.val12.6.i, i8 noundef %i.ae, i8 noundef %3, i64 noundef %4, i1 noundef zeroext true, i8 %i.aj), !noalias !164 ; 2 uses
  %i.fs = extractvalue { ptr, i64 } %i.fr, 0
  %i.ft = extractvalue { ptr, i64 } %i.fr, 1
  store ptr %i.fs, ptr %i.a, align 8, !noalias !164
  store i64 %i.ft, ptr %i.eb, align 8, !noalias !164
  %i.fu = call noundef float @_RNvMs_NtNtCs4GWW6M5ZWyU_6brotli3enc11stride_evalNtB4_3CDF4cost(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, i8 noundef %i.ec), !noalias !164
  %i.fv = load float, ptr %i.dn, align 4, !noalias !164, !noundef !6
  %i.fw = fadd float %i.fu, %i.fv
  store float %i.fw, ptr %i.dn, align 4, !noalias !164
  call void @_RNvMs_NtNtCs4GWW6M5ZWyU_6brotli3enc11stride_evalNtB4_3CDF6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, i8 noundef %i.ec, i16 noundef %i.ee, i16 noundef %i.eg), !noalias !164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !164
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !164
  %i.fx = call { ptr, i64 } @_RNvMNtNtCs4GWW6M5ZWyU_6brotli3enc11stride_evalNtB2_12Stride1Prior10lookup_mut(ptr noalias nofree noundef nonnull align 2 %.val.7.i, i64 noundef %.val12.7.i, i8 noundef %i.ag, i8 noundef %3, i64 noundef %4, i1 noundef zeroext true, i8 %i.aj), !noalias !164 ; 2 uses
  %i.fy = extractvalue { ptr, i64 } %i.fx, 0
  %i.fz = extractvalue { ptr, i64 } %i.fx, 1
  store ptr %i.fy, ptr %i.a, align 8, !noalias !164
  store i64 %i.fz, ptr %i.eb, align 8, !noalias !164
  %i.ga = call noundef float @_RNvMs_NtNtCs4GWW6M5ZWyU_6brotli3enc11stride_evalNtB4_3CDF4cost(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, i8 noundef %i.ec), !noalias !164
  %i.gb = load float, ptr %i.dy, align 4, !noalias !164, !noundef !6
  %i.gc = fadd float %i.ga, %i.gb
  store float %i.gc, ptr %i.dy, align 4, !noalias !164
  call void @_RNvMs_NtNtCs4GWW6M5ZWyU_6brotli3enc11stride_evalNtB4_3CDF6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, i8 noundef %i.ec, i16 noundef %i.ee, i16 noundef %i.eg), !noalias !164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !164
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs3_NtNtCs4GWW6M5ZWyU_6brotli3enc11stride_evalINtB5_10StrideEvalNtNtCskMyW5b6jnKh_12alloc_stdlib9std_alloc13StandardAllocENtNtB7_12ir_interpret13IRInterpreter17update_block_typeCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(none) dereferenceable(240) initializes((232, 234)) %0, i8 noundef %1, i8 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i8 %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 233
  store i8 %2, ptr %i.c, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !6
  %i.f = add i64 %i.e, 1                          ; 2 uses
  store i64 %i.f, ptr %i.d, align 8
  %i.g = shl i64 %i.f, 3
  %i.h = or disjoint i64 %i.g, 7
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %.val12 = load ptr, ptr %i.i, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %.val13 = load i64, ptr %i.j, align 8, !noundef !6 ; 6 uses
  %.not = icmp ult i64 %i.h, %.val13
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.thread32, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.k = shl i64 %.val13, 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.n = tail call { ptr, i64 } @_RNvXNtCskMyW5b6jnKh_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCsaJmJITVpXm2_15alloc_no_stdlib15stack_allocator9AllocatorfE10alloc_cellCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull %i.m, i64 noundef %i.k) ; 2 uses
  %i.o = extractvalue { ptr, i64 } %i.n, 0        ; 5 uses
  %i.p = extractvalue { ptr, i64 } %i.n, 1        ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %.not.i = icmp ugt i64 %.val13, %i.p
  br i1 %.not.i, label %bb.d, label %_RNvMNtCskKLDkoKarTP_4core5sliceSf12split_at_mutCsl8OoimOLbh_6qdrant.exit, !prof !13

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @46, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #22
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  unreachable

_RNvMNtCskKLDkoKarTP_4core5sliceSf12split_at_mutCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.c
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.val12, i64 %.val13
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.val13
  invoke void @_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E3newCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %.val12, ptr noundef nonnull %i.q, ptr noundef nonnull %i.o, ptr noundef nonnull %i.r)
          to label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtB6_7IterMutfEECsl8OoimOLbh_6qdrant.exit unwind label %bb.e

_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtB6_7IterMutfEECsl8OoimOLbh_6qdrant.exit: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSf12split_at_mutCsl8OoimOLbh_6qdrant.exit
  %.sroa.023.0.copyload = load ptr, ptr %i.a, align 8 ; 8 uses
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.425.0.copyload = load ptr, ptr %.sroa.425.0..sroa_idx, align 8 ; 8 uses
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.526.0.copyload = load i64, ptr %.sroa.526.0..sroa_idx, align 8 ; 5 uses
  %.sroa.727.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.727.0.copyload = load i64, ptr %.sroa.727.0..sroa_idx, align 8 ; 5 uses
  %i.s = icmp ult i64 %.sroa.526.0.copyload, %.sroa.727.0.copyload
  br i1 %i.s, label %.lr.ph, label %.thread32

.lr.ph:                                           ; preds = %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtB6_7IterMutfEECsl8OoimOLbh_6qdrant.exit
  %.sroa.425.0.copyload39 = ptrtoaddr ptr %.sroa.425.0.copyload to i64
  %.sroa.023.0.copyload40 = ptrtoaddr ptr %.sroa.023.0.copyload to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.023.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.425.0.copyload) ]
  %i.t = sub nuw i64 %.sroa.727.0.copyload, %.sroa.526.0.copyload ; 3 uses
  %min.iters.check = icmp ult i64 %i.t, 8
  %i.u = sub i64 %.sroa.023.0.copyload40, %.sroa.425.0.copyload39
  %diff.check = icmp ugt i64 %i.u, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.t, -8                       ; 3 uses
  %3 = add i64 %.sroa.526.0.copyload, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.v = add nuw i64 %.sroa.526.0.copyload, %index ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.sroa.023.0.copyload, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.sroa.425.0.copyload, i64 %i.v ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %wide.load = load <4 x float>, ptr %i.w, align 4
  %wide.load41 = load <4 x float>, ptr %i.y, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <4 x float> %wide.load, ptr %i.x, align 4
  store <4 x float> %wide.load41, ptr %i.z, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !165

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %.thread32, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.sroa.526.037.ph = phi i64 [ %.sroa.526.0.copyload, %.lr.ph ], [ %3, %middle.block ] ; 4 uses
  %i.ab = sub i64 %.sroa.727.0.copyload, %.sroa.526.037.ph
  %xtraiter = and i64 %i.ab, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.sroa.526.037.prol = phi i64 [ %i.ae, %scalar.ph.prol ], [ %.sroa.526.037.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.sroa.023.0.copyload, i64 %.sroa.526.037.prol
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.sroa.425.0.copyload, i64 %.sroa.526.037.prol
  %i.ae = add nuw i64 %.sroa.526.037.prol, 1      ; 2 uses
  %i.af = load float, ptr %i.ac, align 4, !noundef !6
  store float %i.af, ptr %i.ad, align 4
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !166

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.526.037.unr = phi i64 [ %.sroa.526.037.ph, %scalar.ph.preheader ], [ %i.ae, %scalar.ph.prol ]
  %i.ag = sub i64 %.sroa.526.037.ph, %.sroa.727.0.copyload
  %i.ah = icmp ugt i64 %i.ag, -4
  br i1 %i.ah, label %.thread32, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.sroa.526.037 = phi i64 [ %i.aw, %scalar.ph ], [ %.sroa.526.037.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.sroa.023.0.copyload, i64 %.sroa.526.037
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.425.0.copyload, i64 %.sroa.526.037
  %i.ak = add nuw i64 %.sroa.526.037, 1           ; 2 uses
  %i.al = load float, ptr %i.ai, align 4, !noundef !6
  store float %i.al, ptr %i.aj, align 4
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.sroa.023.0.copyload, i64 %i.ak
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.sroa.425.0.copyload, i64 %i.ak
  %i.ao = add nuw i64 %.sroa.526.037, 2           ; 2 uses
  %i.ap = load float, ptr %i.am, align 4, !noundef !6
  store float %i.ap, ptr %i.an, align 4
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.023.0.copyload, i64 %i.ao
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.sroa.425.0.copyload, i64 %i.ao
  %i.as = add nuw i64 %.sroa.526.037, 3           ; 2 uses
  %i.at = load float, ptr %i.aq, align 4, !noundef !6
  store float %i.at, ptr %i.ar, align 4
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.sroa.023.0.copyload, i64 %i.as
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %.sroa.425.0.copyload, i64 %i.as
  %i.aw = add nuw i64 %.sroa.526.037, 4           ; 2 uses
  %i.ax = load float, ptr %i.au, align 4, !noundef !6
  store float %i.ax, ptr %i.av, align 4
  %exitcond.not.3 = icmp eq i64 %i.aw, %.sroa.727.0.copyload
  br i1 %exitcond.not.3, label %.thread32, label %scalar.ph, !llvm.loop !167

.thread32:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtB6_7IterMutfEECsl8OoimOLbh_6qdrant.exit
  store ptr %i.o, ptr %i.i, align 8
  store i64 %i.p, ptr %i.j, align 8
  tail call void @_RNvXNtCskMyW5b6jnKh_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCsaJmJITVpXm2_15alloc_no_stdlib15stack_allocator9AllocatorfE9free_cellCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull %i.m, ptr noalias noundef nonnull align 4 %.val12, i64 noundef %.val13)
  br label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxfEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %lpad.thr_comm

bb.e:                                             ; preds = %bb.d, %_RNvMNtCskKLDkoKarTP_4core5sliceSf12split_at_mutCsl8OoimOLbh_6qdrant.exit
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  %i.ay = icmp eq i64 %i.p, 0
  br i1 %i.ay, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxfEECsl8OoimOLbh_6qdrant.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.az = shl nuw nsw i64 %i.p, 2
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.o, i64 noundef range(i64 1, -9223372036854775808) %i.az, i64 noundef 4) #19
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxfEECsl8OoimOLbh_6qdrant.exit
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i8 @_RNvXs3_NtNtCs4GWW6M5ZWyU_6brotli3enc11stride_evalINtB5_10StrideEvalNtNtCskMyW5b6jnKh_12alloc_stdlib9std_alloc13StandardAllocENtNtB7_12ir_interpret13IRInterpreter22literal_data_at_offsetCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(240) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !171, !noundef !6 ; 2 uses
  %.not.i = icmp ult i64 %1, %i.b
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sub nuw i64 %1, %i.b                     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !171, !noundef !6 ; 2 uses
  %i.f = icmp ult i64 %i.c, %i.e
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !alias.scope !171, !nonnull !6, !noundef !6
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %1
  br label %_RNvXs5_NtNtCs4GWW6M5ZWyU_6brotli3enc10input_pairNtB5_9InputPairINtNtNtCskKLDkoKarTP_4core3ops5index5IndexjE5index.exit

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !171, !nonnull !6, !noundef !6
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.c
  br label %_RNvXs5_NtNtCs4GWW6M5ZWyU_6brotli3enc10input_pairNtB5_9InputPairINtNtNtCskKLDkoKarTP_4core3ops5index5IndexjE5index.exit

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.c, i64 noundef %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #22, !noalias !171
  unreachable

_RNvXs5_NtNtCs4GWW6M5ZWyU_6brotli3enc10input_pairNtB5_9InputPairINtNtNtCskKLDkoKarTP_4core3ops5index5IndexjE5index.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ %i.k, %bb.d ], [ %i.h, %bb.c ]
  %i.l = load i8, ptr %.sroa.0.0.i, align 1, !noundef !6
  ret i8 %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs4_NtNtCs4GWW6M5ZWyU_6brotli3enc11stride_evalINtB5_10StrideEvalNtNtCskMyW5b6jnKh_12alloc_stdlib9std_alloc13StandardAllocENtNtB7_9interface16CommandProcessor4pushCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(240) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvNtNtCs4GWW6M5ZWyU_6brotli3enc12ir_interpret9push_baseINtNtB4_11stride_eval10StrideEvalNtNtCskMyW5b6jnKh_12alloc_stdlib9std_alloc13StandardAllocEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(240) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3setINtB5_7HashSetNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNtNtCsyIGusAaLFh_5ahash12random_state11RandomStateENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !noundef !6
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !6
  %.not = icmp eq i64 %i.c, %i.e
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIduNtNtCsyIGusAaLFh_5ahash12random_state11RandomStateE4iterCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.f = call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIduENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a)
  %i.g = extractvalue { ptr, ptr } %i.f, 0        ; 2 uses
  %.not.not.not.not.i.not = icmp eq ptr %i.g, null ; 2 uses
  br i1 %.not.not.not.not.i.not, label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4IterNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1I_3all5checkRBU_NCNvXs4_B6_INtB6_7HashSetBU_NtNtCsyIGusAaLFh_5ahash12random_state11RandomStateENtNtB1Q_3cmp9PartialEq2eq0E0INtNtNtB1Q_3ops12control_flow11ControlFlowuEECsl8OoimOLbh_6qdrant.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = call noundef zeroext i1 @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIduNtNtCsyIGusAaLFh_5ahash12random_state11RandomStateE12contains_keyBO_ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g)
  br i1 %i.h, label %bb.c, label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4IterNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1I_3all5checkRBU_NCNvXs4_B6_INtB6_7HashSetBU_NtNtCsyIGusAaLFh_5ahash12random_state11RandomStateENtNtB1Q_3cmp9PartialEq2eq0E0INtNtNtB1Q_3ops12control_flow11ControlFlowuEECsl8OoimOLbh_6qdrant.exit

_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4IterNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1I_3all5checkRBU_NCNvXs4_B6_INtB6_7HashSetBU_NtNtCsyIGusAaLFh_5ahash12random_state11RandomStateENtNtB1Q_3cmp9PartialEq2eq0E0INtNtNtB1Q_3ops12control_flow11ControlFlowuEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4IterNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1I_3all5checkRBU_NCNvXs4_B6_INtB6_7HashSetBU_NtNtCsyIGusAaLFh_5ahash12random_state11RandomStateENtNtB1Q_3cmp9PartialEq2eq0E0INtNtNtB1Q_3ops12control_flow11ControlFlowuEECsl8OoimOLbh_6qdrant.exit
  %.sroa.0.0 = phi i1 [ %.not.not.not.not.i.not, %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4IterNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1I_3all5checkRBU_NCNvXs4_B6_INtB6_7HashSetBU_NtNtCsyIGusAaLFh_5ahash12random_state11RandomStateENtNtB1Q_3cmp9PartialEq2eq0E0INtNtNtB1Q_3ops12control_flow11ControlFlowuEECsl8OoimOLbh_6qdrant.exit ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3setINtB5_7HashSetNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9SpanEventENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqB18_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !noundef !6
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !6
  %.not = icmp eq i64 %i.c, %i.e
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9SpanEventuNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE4iterBT_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.f = call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9SpanEventuENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a)
  %i.g = extractvalue { ptr, ptr } %i.f, 0        ; 2 uses
  %.not.not.not.not.i.not = icmp eq ptr %i.g, null ; 2 uses
  br i1 %.not.not.not.not.i.not, label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4IterNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9SpanEventENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1K_3all5checkRBU_NCNvXs4_B6_INtB6_7HashSetBU_ENtNtB1S_3cmp9PartialEq2eq0E0INtNtNtB1S_3ops12control_flow11ControlFlowuEEB10_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = call noundef zeroext i1 @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9SpanEventuNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE12contains_keyBO_EBU_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.g)
  br i1 %i.h, label %bb.c, label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4IterNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9SpanEventENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1K_3all5checkRBU_NCNvXs4_B6_INtB6_7HashSetBU_ENtNtB1S_3cmp9PartialEq2eq0E0INtNtNtB1S_3ops12control_flow11ControlFlowuEEB10_.exit

_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4IterNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9SpanEventENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1K_3all5checkRBU_NCNvXs4_B6_INtB6_7HashSetBU_ENtNtB1S_3cmp9PartialEq2eq0E0INtNtNtB1S_3ops12control_flow11ControlFlowuEEB10_.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4IterNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9SpanEventENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1K_3all5checkRBU_NCNvXs4_B6_INtB6_7HashSetBU_ENtNtB1S_3cmp9PartialEq2eq0E0INtNtNtB1S_3ops12control_flow11ControlFlowuEEB10_.exit
  %.sroa.0.0 = phi i1 [ %.not.not.not.not.i.not, %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4IterNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9SpanEventENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1K_3all5checkRBU_NCNvXs4_B6_INtB6_7HashSetBU_ENtNtB1S_3cmp9PartialEq2eq0E0INtNtNtB1S_3ops12control_flow11ControlFlowuEEB10_.exit ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3setINtB5_7HashSetmENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !noundef !6
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !6
  %.not = icmp eq i64 %i.c, %i.e
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
end_hunk_1
