Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_aws-9485bf1ee3f83c6f.deltalake_aws.6e131cb766b7c8d6-cgu.04?download=true
inline.NumInlined: 1357
inline.NumDeleted: 731
begin_hunk_0_@_RINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB7_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect6ExtendTBP_B1r_EE6extendAB4p_j3_ECs9rVkZwOUgsI_13deltalake_aws:bb.a
          to label %.body.thread unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB7_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect6ExtendTBP_B1r_EE6extendINtNtNtNtB2O_11collections4hash3map7HashMapBP_B1r_EECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %i.b = alloca [56 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [80 x i8], align 8                ; 6 uses
  %i.e = alloca [64 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [64 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1524
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(48) %1, i64 32, i1 false), !noalias !1531
  call void @_RNvXsh_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12IntoIterator9into_iterCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.f), !noalias !1532
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1524
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i64, ptr %i.h, align 8, !noundef !3
  %i.j = icmp eq i64 %i.i, 0
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %.val3 = load i64, ptr %i.k, align 8            ; 2 uses
  %i.l = add i64 %.val3, 1
  %i.m = lshr i64 %i.l, 1
  %.sroa.0.0 = select i1 %i.j, i64 %.val3, i64 %i.m
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.0.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.n)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1533
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %i.g, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1537
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  br label %bb.c

bb.c:                                             ; preds = %bb.h, %bb.b
  invoke void @_RNvXsE_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.e)
          to label %bb.e unwind label %bb.d, !noalias !1541

bb.d:                                             ; preds = %bb.g, %bb.f, %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsC_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.e)
          to label %.body.thread unwind label %bb.i, !noalias !1541

bb.e:                                             ; preds = %bb.c
  %i.q = load i64, ptr %i.d, align 8, !range !139, !noalias !1542, !noundef !3
  %.not.i.i.i = icmp eq i64 %i.q, -9223372036854775808
  br i1 %.not.i.i.i, label %_RINvXsH_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB6_8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNvB2Z_8for_each4callTB15_B1H_ENCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB4J_7HashMapB15_B1H_NtNtNtBc_4hash6random11RandomStateEINtNtB33_7collect6ExtendB4p_E6extendINtB6_7HashMapB15_B1H_EE0E0ECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1546
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1546
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !1542
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %i.o, i64 56, i1 false), !noalias !1542
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1549
  invoke void @_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6insertCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.b)
          to label %.noexc.i.i.i unwind label %bb.d, !noalias !1541

.noexc.i.i.i:                                     ; preds = %bb.f
  %i.r = load i8, ptr %i.a, align 8, !range !1450, !alias.scope !1552, !noalias !1549, !noundef !3
  %i.s = icmp eq i8 %i.r, 11
  br i1 %i.s, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.noexc.i.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a)
          to label %bb.h unwind label %bb.d, !noalias !1541

bb.h:                                             ; preds = %bb.g, %.noexc.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1549
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1546
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1546
  br label %bb.c

bb.i:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23, !noalias !1541
  unreachable

_RINvXsH_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB6_8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNvB2Z_8for_each4callTB15_B1H_ENCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB4J_7HashMapB15_B1H_NtNtNtBc_4hash6random11RandomStateEINtNtB33_7collect6ExtendB4p_E6extendINtB6_7HashMapB15_B1H_EE0E0ECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.e
  call void @_RNvXsC_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1537
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1533
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

.body.thread:                                     ; preds = %bb.j, %bb.d
  %eh.lpad-body9 = phi { ptr, i32 } [ %i.u, %bb.j ], [ %i.p, %bb.d ]
  resume { ptr, i32 } %eh.lpad-body9

bb.j:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsC_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.g)
          to label %.body.thread unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB7_7HashMapNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdjNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect6ExtendTBP_jEE6extendINtNtNtB2S_8adapters3map3MapINtNtB3X_9enumerate9EnumerateINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBP_EENCNCNvNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth40reprioritize_with_auth_scheme_preference00EECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(40) %1, i64 40, i1 false), !alias.scope !1555
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !noundef !3
  %i.d = icmp eq i64 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val4 = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.val5 = load ptr, ptr %i.f, align 8, !nonnull !3, !noundef !3
  %i.g = ptrtoint ptr %.val5 to i64
  %i.h = ptrtoint ptr %.val4 to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = udiv exact i64 %i.i, 24                  ; 2 uses
  %i.k = add nuw nsw i64 %i.j, 1
  %i.l = lshr i64 %i.k, 1
  %.sroa.0.0 = select i1 %i.d, i64 %i.j, i64 %i.l
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdjEE7reserveNCINvNtB8_3map11make_hasherBQ_jNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.0.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.m)
          to label %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB8_9enumerate9EnumerateINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdEENCNCNvNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth40reprioritize_with_auth_scheme_preference00ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB60_7HashMapB27_jNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB5d_7collect6ExtendTB27_jEE6extendB3_E0ECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.b

_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB8_9enumerate9EnumerateINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdEENCNCNvNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth40reprioritize_with_auth_scheme_preference00ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB60_7HashMapB27_jNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB5d_7collect6ExtendTB27_jEE6extendB3_E0ECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a
  tail call void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdEENCNCNvNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth40reprioritize_with_auth_scheme_preference00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB5f_8for_each4callTB2d_jENCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6z_7HashMapB2d_jNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB5j_7collect6ExtendB6i_E6extendBN_E0E0ECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, ptr noalias noundef nonnull align 8 dereferenceable(48) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtBL_9enumerate9EnumerateINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdEENCNCNvNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth40reprioritize_with_auth_scheme_preference00EECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.n

bb.b:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtBL_9enumerate9EnumerateINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdEENCNCNvNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth40reprioritize_with_auth_scheme_preference00EECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB7_7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect6ExtendTBP_B1S_EE6extendINtNtNtB3p_8adapters10filter_map9FilterMapINtNtNtNtB2A_11collections4hash3map4IterB1S_B1S_ENCNvMs_NtCs9rVkZwOUgsI_13deltalake_aws11credentialsNtB62_26OptionsCredentialsProvider11credentials0EEB64_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.4.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.4.0.copyload5 = load i64, ptr %.sroa.4.0..sroa_idx4, align 8, !alias.scope !1559
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE7reserveNCINvNtB8_3map11make_hasherBQ_B1T_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1563
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1563
  store ptr %0, ptr %i.b, align 8, !noalias !1573
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !noalias !1577
  call void @_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9fold_implNCINvXsG_NtB8_3mapINtB1V_4IterBV_BV_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2t_8adapters10filter_map15filter_map_foldTRBV_B4e_ETNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyBV_EuNCNvMs_NtCs9rVkZwOUgsI_13deltalake_aws11credentialsNtB5D_26OptionsCredentialsProvider11credentials0NCINvNvB2n_8for_each4callB4n_NCINvXs1i_B1V_INtB1V_7HashMapB4o_BV_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB2r_7collect6ExtendB4n_E6extendINtB3t_9FilterMapINtNtNtNtB8g_11collections4hash3map4IterBV_BV_EB5w_EE0E0E0E0uEB5F_(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(32) %i.a, i64 noundef %.sroa.4.0.copyload5, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b), !noalias !1578
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1563
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1563
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringBL_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1x_8adapters6filter11filter_foldTRBL_B39_EuNCNvMs2_NtCs9rVkZwOUgsI_13deltalake_aws7storageNtB3r_16S3StorageOptions8from_map0NCINvNtB2z_3map8map_foldB38_TBL_BL_EuNCB3l_s_0NCINvNvB1r_8for_each4callB54_NCINvXs1i_B6_INtB6_7HashMapBL_BL_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB1v_7collect6ExtendB54_E6extendINtB4H_3MapINtB2x_6FilterINtNtNtNtB6s_11collections4hash3map4IterBL_BL_EB3j_EB5d_EE0E0E0E0EB3t_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.b, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8, !noundef !3
  call void @_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9fold_implNCINvXsG_NtB8_3mapINtB1V_4IterBV_BV_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2t_8adapters6filter11filter_foldTRBV_B45_EuNCNvMs2_NtCs9rVkZwOUgsI_13deltalake_aws7storageNtB4n_16S3StorageOptions8from_map0NCINvNtB3v_3map8map_foldB44_BU_uNCB4h_s_0NCINvNvB2n_8for_each4callBU_NCINvXs1i_B1V_INtB1V_7HashMapBV_BV_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB2r_7collect6ExtendBU_E6extendINtB5D_3MapINtB3t_6FilterINtNtNtNtB7k_11collections4hash3map4IterBV_BV_EB4f_EB64_EE0E0E0E0E0uEB4p_(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(32) %i.a, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXs3_NtCs9rVkZwOUgsI_13deltalake_aws11credentialsNtB7_17AWSForObjectStoreNtNtCsjyY8HP3IvQ6_12object_store6client18CredentialProvider14get_credential0B9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [88 x i8], align 8                ; 10 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.5214.sroa.0 = alloca [32 x i8], align 8  ; 2 uses
  %i.i = alloca [56 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 8 uses
  %i.k = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.0251 = alloca [48 x i8], align 8         ; 6 uses
  %i.l = alloca [72 x i8], align 8                ; 12 uses
  %i.m = alloca [40 x i8], align 8                ; 9 uses
  %i.n = alloca [16 x i8], align 8                ; 6 uses
  %i.o = alloca [16 x i8], align 8                ; 6 uses
  %i.p = alloca [56 x i8], align 8                ; 5 uses
  %i.q = alloca [64 x i8], align 8                ; 7 uses
  %i.r = alloca [64 x i8], align 8                ; 5 uses
  %i.s = alloca [56 x i8], align 8                ; 11 uses
  %i.t = alloca [72 x i8], align 8                ; 11 uses
  %i.u = alloca [40 x i8], align 8                ; 9 uses
  %i.v = alloca [24 x i8], align 8                ; 8 uses
  %i.w = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.0184 = alloca [48 x i8], align 8         ; 7 uses
  %i.x = alloca [40 x i8], align 8                ; 9 uses
  %i.y = alloca [40 x i8], align 8                ; 9 uses
  %i.z = alloca [40 x i8], align 8                ; 9 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.ab = load i8, ptr %i.aa, align 8, !range !678, !noundef !3
  switch i8 %i.ab, label %default.unreachable361 [
    i8 0, label %bb.c
    i8 1, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.j
    i8 4, label %bb.b
  ]

default.unreachable361:                           ; preds = %bb.t, %bb.q, %bb.m, %bb.j, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  br label %bb.cn

bb.c:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %1, align 8, !nonnull !3, !align !64, !noundef !3 ; 2 uses
  store ptr %i.ad, ptr %i.ac, align 8
  %i.ae = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.af = icmp ult i64 %i.ae, 6
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = icmp samesign ugt i64 %i.ae, 3
  br i1 %i.ag, label %bb.e, label %.thread

bb.d:                                             ; preds = %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio4sync5mutex10MutexGuardINtNtB4_6option6OptionNtNtCs5zo6j4Z0Hcj_20aws_credential_types16credentials_impl11CredentialsEEECs9rVkZwOUgsI_13deltalake_aws.exit125

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store ptr @23, ptr %i.z, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 26, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store ptr @23, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store i64 26, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  store ptr @22, ptr %i.al, align 8
  invoke void @_RINvNtCsaljjC7ZTCQu_3log13___private_api3loguNtB2_12GlobalLoggerECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull @21, ptr noundef nonnull inttoptr (i64 65 to ptr), i64 noundef 4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.z)
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %.pre = load ptr, ptr %i.ac, align 8
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.f
  %i.am = phi ptr [ %.pre, %bb.f ], [ %i.ad, %bb.c ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 416
  %.val76 = load ptr, ptr %i.an, align 8, !nonnull !3, !noundef !3
  %i.ao = getelementptr inbounds nuw i8, ptr %.val76, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.ao, ptr %i.ap, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 144
  store i8 0, ptr %.sroa.8.0..sroa_idx, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 144
  br label %.thread.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio4sync5mutex10MutexGuardINtNtB4_6option6OptionNtNtCs5zo6j4Z0Hcj_20aws_credential_types16credentials_impl11CredentialsEEECs9rVkZwOUgsI_13deltalake_aws.exit125: ; preds = %.body, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials25SharedCredentialsProviderECs9rVkZwOUgsI_13deltalake_aws.exit167, %bb.d, %bb.eg
  %.pn51 = phi { ptr, i32 } [ %i.lm, %bb.eg ], [ %.pn47.pn.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials25SharedCredentialsProviderECs9rVkZwOUgsI_13deltalake_aws.exit167 ], [ %i.ah, %bb.d ], [ %eh.lpad-body, %.body ]
  store i8 2, ptr %i.aa, align 8
  resume { ptr, i32 } %.pn51

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #26
  unreachable

bb.h:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #26
  unreachable

bb.i:                                             ; preds = %bb.l, %bb.k
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body14.i, %bb.i
  %i.at = phi ptr [ %i.au, %bb.i ], [ %i.dt, %.body14.i ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.as, %bb.i ], [ %.pn.i, %.body14.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs8_NtNtCskQDtHcQtBkN_5tokio4sync5mutexINtBO_5MutexINtNtB4_6option6OptionNtNtCs5zo6j4Z0Hcj_20aws_credential_types16credentials_impl11CredentialsEE4lock0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.at) #25
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio4sync5mutex10MutexGuardINtNtB4_6option6OptionNtNtCs5zo6j4Z0Hcj_20aws_credential_types16credentials_impl11CredentialsEEECs9rVkZwOUgsI_13deltalake_aws.exit125 unwind label %bb.ce

bb.j:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 144
  %.pre344 = load i8, ptr %.phi.trans.insert, align 8, !range !677, !noalias !1579
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 10 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 9 uses
  switch i8 %.pre344, label %default.unreachable361 [
    i8 0, label %.thread.i
    i8 1, label %bb.k
    i8 2, label %bb.l
    i8 3, label %bb.m
  ]

.body14.i:                                        ; preds = %.body.i
  store i8 2, ptr %i.ds, align 8, !noalias !1579
  br label %.body

.thread.i:                                        ; preds = %.thread, %bb.j
  %i.aw = phi ptr [ %i.ar, %.thread ], [ %i.av, %bb.j ]
  %i.ax = phi ptr [ %i.aq, %.thread ], [ %i.au, %bb.j ] ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !1579, !nonnull !3, !align !64, !noundef !3 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  store ptr %i.ay, ptr %i.az, align 8, !noalias !1579
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  store i8 0, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !1579
  br label %.thread.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #26
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #26
          to label %.noexc91 unwind label %bb.i

.noexc91:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.j
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 8 uses
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !range !677, !noalias !1582
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 9 uses
  switch i8 %.pre.i, label %default.unreachable361 [
    i8 0, label %..thread.i.i_crit_edge
    i8 1, label %bb.o
    i8 2, label %bb.p
    i8 3, label %bb.q
  ]

..thread.i.i_crit_edge:                           ; preds = %bb.m
  %.pre345 = load ptr, ptr %i.ba, align 8, !noalias !1582
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %..thread.i.i_crit_edge, %.thread.i
  %i.bb = phi ptr [ %i.aw, %.thread.i ], [ %i.av, %..thread.i.i_crit_edge ]
  %i.bc = phi ptr [ %i.ax, %.thread.i ], [ %i.au, %..thread.i.i_crit_edge ]
  %i.bd = phi ptr [ %i.ay, %.thread.i ], [ %.pre345, %..thread.i.i_crit_edge ] ; 2 uses
  %i.be = phi ptr [ %.sroa.8.0..sroa_idx.i, %.thread.i ], [ %.phi.trans.insert.i, %..thread.i.i_crit_edge ]
  %i.bf = phi ptr [ %i.az, %.thread.i ], [ %i.ba, %..thread.i.i_crit_edge ]
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  store ptr %i.bd, ptr %i.bg, align 8, !noalias !1582
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  store i8 0, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !1582
  br label %.thread.i.i.i

bb.n:                                             ; preds = %.body.i.i
  store i8 2, ptr %i.dn, align 8, !noalias !1582
  br label %.body.i

bb.o:                                             ; preds = %bb.m
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #26
          to label %.noexc.i unwind label %bb.ap, !noalias !1579

.noexc.i:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.m
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #26
          to label %.noexc8.i unwind label %bb.ap, !noalias !1579

.noexc8.i:                                        ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.m
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 6 uses
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 8, !range !678, !noalias !1585
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 7 uses
  switch i8 %.pre.i.i, label %default.unreachable361 [
    i8 0, label %..thread.i.i_crit_edge.i
    i8 1, label %bb.r
    i8 2, label %bb.s
    i8 3, label %bb.t
    i8 4, label %bb.ac
  ]

..thread.i.i_crit_edge.i:                         ; preds = %bb.q
  %.pre21.i = load ptr, ptr %i.bh, align 8, !noalias !1585
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %..thread.i.i_crit_edge.i, %.thread.i.i
  %i.bi = phi ptr [ %i.bb, %.thread.i.i ], [ %i.av, %..thread.i.i_crit_edge.i ]
  %i.bj = phi ptr [ %i.bc, %.thread.i.i ], [ %i.au, %..thread.i.i_crit_edge.i ]
end_hunk_0
begin_hunk_1_@_RNCNvXs3_NtCs9rVkZwOUgsI_13deltalake_aws11credentialsNtB7_17AWSForObjectStoreNtNtCsjyY8HP3IvQ6_12object_store6client18CredentialProvider14get_credential0B9_:bb.a
.noexc102:                                        ; preds = %bb.bm
  %i.fy = load i64, ptr %i.h, align 8, !range !62, !noalias !1608, !noundef !3
  %i.fz = trunc nuw i64 %i.fy to i1
  %i.ga = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.gb = load i64, ptr %i.ga, align 8, !range !139, !noalias !1608, !noundef !3 ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  br i1 %i.fz, label %bb.bn, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i, !prof !21

bb.bn:                                            ; preds = %.noexc102
  %i.gd = load i64, ptr %i.gc, align 8, !noalias !1608
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.gb, i64 %i.gd) #24
          to label %.noexc103 unwind label %bb.bl

.noexc103:                                        ; preds = %bb.bn
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i: ; preds = %.noexc102
  %i.ge = load ptr, ptr %i.gc, align 8, !noalias !1608, !nonnull !3, !noundef !3 ; 2 uses
  %i.gf = icmp samesign ule i64 %i.fx, %i.gb
  call void @llvm.assume(i1 %i.gf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1608
  %.not.i.i.i = icmp eq i64 %i.fx, 0
  br i1 %.not.i.i.i, label %bb.br, label %bb.bo

bb.bo:                                            ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ge, ptr nonnull readonly align 1 %i.fv, i64 range(i64 0, -9223372036854775808) %i.fx, i1 false), !noalias !1614
  br label %bb.br

bb.bp:                                            ; preds = %bb.bv, %bb.bq
  %.pn45 = phi { ptr, i32 } [ %i.gv, %bb.bv ], [ %i.gg, %bb.bq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.w) #25
          to label %bb.cf unwind label %bb.ce

bb.bq:                                            ; preds = %bb.bs, %bb.br
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.br:                                            ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i, %bb.bo
  store i64 %i.gb, ptr %i.w, align 8, !alias.scope !1615, !noalias !1616
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.ge, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !1615, !noalias !1616
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 %i.fx, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !1615, !noalias !1616
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %.val87 = load ptr, ptr %i.ec, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.val87, i64 48
  %i.gi = load ptr, ptr %i.gh, align 8, !nonnull !3, !noundef !3
  %i.gj = getelementptr inbounds nuw i8, ptr %.val87, i64 56
  %i.gk = load i64, ptr %i.gj, align 8, !noundef !3 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1617)
  call void @llvm.experimental.noalias.scope.decl(metadata !1620)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1623
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef range(i64 0, -9223372036854775808) %i.gk, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc108 unwind label %bb.bq

.noexc108:                                        ; preds = %bb.br
  %i.gl = load i64, ptr %i.g, align 8, !range !62, !noalias !1623, !noundef !3
  %i.gm = trunc nuw i64 %i.gl to i1
  %i.gn = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.go = load i64, ptr %i.gn, align 8, !range !139, !noalias !1623, !noundef !3 ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  br i1 %i.gm, label %bb.bs, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i104, !prof !21

bb.bs:                                            ; preds = %.noexc108
  %i.gq = load i64, ptr %i.gp, align 8, !noalias !1623
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.go, i64 %i.gq) #24
          to label %.noexc109 unwind label %bb.bq

.noexc109:                                        ; preds = %bb.bs
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i104: ; preds = %.noexc108
  %i.gr = load ptr, ptr %i.gp, align 8, !noalias !1623, !nonnull !3, !noundef !3 ; 2 uses
  %i.gs = icmp samesign ule i64 %i.gk, %i.go
  call void @llvm.assume(i1 %i.gs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1623
  %.not.i.i.i105 = icmp eq i64 %i.gk, 0
  br i1 %.not.i.i.i105, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i104
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gr, ptr nonnull readonly align 1 %i.gi, i64 range(i64 0, -9223372036854775808) %i.gk, i1 false), !noalias !1629
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i104
  store i64 %i.go, ptr %i.v, align 8, !alias.scope !1630, !noalias !1631
  %.sroa.4.0..sroa_idx.i.i106 = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.gr, ptr %.sroa.4.0..sroa_idx.i.i106, align 8, !alias.scope !1630, !noalias !1631
  %.sroa.5.0..sroa_idx.i.i107 = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 %i.gk, ptr %.sroa.5.0..sroa_idx.i.i107, align 8, !alias.scope !1630, !noalias !1631
  %.val89 = load ptr, ptr %i.ec, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.val89, i64 64
  %i.gu = load i64, ptr %i.gt, align 8, !range !139, !noundef !3
  %.not.i111 = icmp eq i64 %i.gu, -9223372036854775808
  br i1 %.not.i111, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE3mapNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNCNvXs3_NtCs9rVkZwOUgsI_13deltalake_aws11credentialsNtB1B_17AWSForObjectStoreNtNtCsjyY8HP3IvQ6_12object_store6client18CredentialProvider14get_credential00EB1D_.exit, label %bb.bw

bb.bv:                                            ; preds = %bb.bx, %bb.bw
  %i.gv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.v) #25
          to label %bb.bp unwind label %bb.ce

bb.bw:                                            ; preds = %bb.bu
  %i.gw = getelementptr inbounds nuw i8, ptr %.val89, i64 72
  %i.gx = load ptr, ptr %i.gw, align 8, !nonnull !3, !noundef !3
  %i.gy = getelementptr inbounds nuw i8, ptr %.val89, i64 80
  %i.gz = load i64, ptr %i.gy, align 8, !noundef !3 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1632
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef %i.gz, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc115 unwind label %bb.bv

.noexc115:                                        ; preds = %bb.bw
  %i.ha = load i64, ptr %i.f, align 8, !range !62, !noalias !1632, !noundef !3
  %i.hb = trunc nuw i64 %i.ha to i1
  %i.hc = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.hd = load i64, ptr %i.hc, align 8, !range !139, !noalias !1632, !noundef !3 ; 4 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br i1 %i.hb, label %bb.bx, label %bb.by, !prof !21

bb.bx:                                            ; preds = %.noexc115
  %i.hf = load i64, ptr %i.he, align 8, !noalias !1632
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.hd, i64 %i.hf) #24
          to label %.noexc116 unwind label %bb.bv

.noexc116:                                        ; preds = %bb.bx
  unreachable

bb.by:                                            ; preds = %.noexc115
  %i.hg = load ptr, ptr %i.he, align 8, !noalias !1632, !nonnull !3, !noundef !3 ; 3 uses
  %i.hh = icmp ule i64 %i.gz, %i.hd
  call void @llvm.assume(i1 %i.hh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1632
  %.not.i.i = icmp eq i64 %i.gz, 0
  br i1 %.not.i.i, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE3mapNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNCNvXs3_NtCs9rVkZwOUgsI_13deltalake_aws11credentialsNtB1B_17AWSForObjectStoreNtNtCsjyY8HP3IvQ6_12object_store6client18CredentialProvider14get_credential00EB1D_.exit, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hg, ptr nonnull readonly align 1 %i.gx, i64 %i.gz, i1 false), !noalias !1639
  br label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE3mapNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNCNvXs3_NtCs9rVkZwOUgsI_13deltalake_aws11credentialsNtB1B_17AWSForObjectStoreNtNtCsjyY8HP3IvQ6_12object_store6client18CredentialProvider14get_credential00EB1D_.exit

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE3mapNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNCNvXs3_NtCs9rVkZwOUgsI_13deltalake_aws11credentialsNtB1B_17AWSForObjectStoreNtNtCsjyY8HP3IvQ6_12object_store6client18CredentialProvider14get_credential00EB1D_.exit: ; preds = %bb.bu, %bb.bz, %bb.by
  %.sroa.3.0.i279 = phi i64 [ 0, %bb.by ], [ %i.gz, %bb.bz ], [ undef, %bb.bu ]
  %.sroa.6182.0 = phi ptr [ %i.hg, %bb.by ], [ %i.hg, %bb.bz ], [ undef, %bb.bu ]
  %.sroa.0181.0 = phi i64 [ %i.hd, %bb.by ], [ %i.hd, %bb.bz ], [ -9223372036854775808, %bb.bu ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0184, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  %.sroa.0184.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0184, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0184.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1640
  store i64 1, ptr %i.e, align 8, !noalias !1640
  %i.hi = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %i.hi, align 8, !noalias !1640
  %i.hj = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.hj, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0184, i64 48, i1 false)
  %.sroa.7185.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store i64 %.sroa.0181.0, ptr %.sroa.7185.0..sroa_idx, align 8
  %.sroa.8186.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store ptr %.sroa.6182.0, ptr %.sroa.8186.0..sroa_idx, align 8
  %.sroa.9187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  store i64 %.sroa.3.0.i279, ptr %.sroa.9187.0..sroa_idx, align 8
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !1643
  %i.hk = call noundef align 8 dereferenceable_or_null(88) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 24, 153) 88, i64 noundef 8) #29, !noalias !1643 ; 3 uses
  %i.hl = icmp eq ptr %i.hk, null
  br i1 %i.hl, label %bb.ca, label %bb.cd, !prof !21

bb.ca:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE3mapNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNCNvXs3_NtCs9rVkZwOUgsI_13deltalake_aws11credentialsNtB1B_17AWSForObjectStoreNtNtCsjyY8HP3IvQ6_12object_store6client18CredentialProvider14get_credential00EB1D_.exit
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 88) #24
          to label %.noexc.i117 unwind label %bb.cb, !noalias !1640

.noexc.i117:                                      ; preds = %bb.ca
  unreachable

bb.cb:                                            ; preds = %bb.ca
  %i.hm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtNtCsjyY8HP3IvQ6_12object_store3aws10credential13AwsCredentialEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.e) #25
          to label %.body118 unwind label %bb.cc, !noalias !1640

bb.cc:                                            ; preds = %bb.cb
  %i.hn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23, !noalias !1640
  unreachable

.body118:                                         ; preds = %bb.cb, %bb.cf
  %.pn47 = phi { ptr, i32 } [ %.pn45, %bb.cf ], [ %i.hm, %bb.cb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0184)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials25SharedCredentialsProviderECs9rVkZwOUgsI_13deltalake_aws.exit167

bb.cd:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE3mapNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNCNvXs3_NtCs9rVkZwOUgsI_13deltalake_aws11credentialsNtB1B_17AWSForObjectStoreNtNtCsjyY8HP3IvQ6_12object_store6client18CredentialProvider14get_credential00EB1D_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.hk, ptr noundef nonnull align 8 dereferenceable(88) %i.e, i64 88, i1 false), !noalias !1640
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1640
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0184)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials25SharedCredentialsProviderECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials25SharedCredentialsProviderECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.dz, %bb.ea, %bb.cl, %bb.cd
  %.sroa.0255.0 = phi i64 [ -9223372036854775790, %bb.cd ], [ -9223372036854775794, %bb.cl ], [ %.sroa.0255.1, %bb.ea ], [ %.sroa.0255.1, %bb.dz ]
  %.sroa.5257.0 = phi ptr [ %i.hk, %bb.cd ], [ %.sroa.7196.sroa.0.0.copyload, %bb.cl ], [ %.sroa.5257.1, %bb.ea ], [ %.sroa.5257.1, %bb.dz ]
  %.sroa.8260.0 = phi ptr [ undef, %bb.cd ], [ %.sroa.7196.sroa.7.0.copyload, %bb.cl ], [ %.sroa.8260.1, %bb.ea ], [ %.sroa.8260.1, %bb.dz ]
  %.sroa.10263.0 = phi i64 [ undef, %bb.cd ], [ %.sroa.7196.sroa.8.0.copyload, %bb.cl ], [ %.sroa.10263.1, %bb.ea ], [ %.sroa.10263.1, %bb.dz ]
  %.sroa.13.0 = phi i64 [ undef, %bb.cd ], [ %.sroa.10197.sroa.5.0.copyload, %bb.cl ], [ %.sroa.13.1, %bb.ea ], [ %.sroa.13.1, %bb.dz ]
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 16
  invoke void @_RNvXsd_NtNtCskQDtHcQtBkN_5tokio4sync5mutexINtB5_10MutexGuardINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCs5zo6j4Z0Hcj_20aws_credential_types16credentials_impl11CredentialsEENtNtNtB11_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ho)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio4sync5mutex10MutexGuardINtNtB4_6option6OptionNtNtCs5zo6j4Z0Hcj_20aws_credential_types16credentials_impl11CredentialsEEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.eg

bb.ce:                                            ; preds = %bb.ed, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials25SharedCredentialsProviderECs9rVkZwOUgsI_13deltalake_aws.exit167, %.thread336, %bb.eb, %bb.dp, %bb.di, %bb.cm, %bb.bv, %bb.bp, %.body
  %i.hp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.cf:                                            ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %.body118

bb.cg:                                            ; preds = %bb.bf
  %i.hq = getelementptr inbounds nuw i8, ptr %i.fh, i64 312
  %i.hr = load i64, ptr %i.hq, align 8, !alias.scope !1596, !noalias !1599, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store i64 -9223372036854775794, ptr %i.t, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.t)
          to label %bb.ci unwind label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.hs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials25SharedCredentialsProviderECs9rVkZwOUgsI_13deltalake_aws.exit167

bb.ci:                                            ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  store ptr %i.fj, ptr %i.cn, align 8
  %.sroa.4216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.fl, ptr %.sroa.4216.0..sroa_idx, align 8
  %.sroa.5217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 %i.hr, ptr %.sroa.5217.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  invoke void @_RNvXs3_NtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentialsNtB5_25SharedCredentialsProviderNtB5_18ProvideCredentials19provide_credentials(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cn)
          to label %bb.ck unwind label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ht = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %.body129

bb.ck:                                            ; preds = %bb.ci
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.hu, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.r, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.cn

bb.cl:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %.sroa.7196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.7196.sroa.0.0.copyload = load ptr, ptr %.sroa.7196.0..sroa_idx, align 8, !alias.scope !1646, !noalias !1650
  %.sroa.7196.sroa.7.0..sroa.7196.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.7196.sroa.7.0.copyload = load ptr, ptr %.sroa.7196.sroa.7.0..sroa.7196.0..sroa_idx.sroa_idx, align 8, !alias.scope !1646, !noalias !1650
  %.sroa.7196.sroa.8.0..sroa.7196.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.7196.sroa.8.0.copyload = load i64, ptr %.sroa.7196.sroa.8.0..sroa.7196.0..sroa_idx.sroa_idx, align 8, !alias.scope !1646, !noalias !1650
  %.sroa.10197.sroa.5.0..sroa.10197.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %.sroa.10197.sroa.5.0.copyload = load i64, ptr %.sroa.10197.sroa.5.0..sroa.10197.0..sroa_idx.sroa_idx, align 8, !alias.scope !1646, !noalias !1650
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials25SharedCredentialsProviderECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials25SharedCredentialsProviderECs9rVkZwOUgsI_13deltalake_aws.exit167: ; preds = %.body129, %bb.ed, %bb.bi, %bb.bb, %bb.as, %.body118, %bb.bl, %bb.aw, %bb.ef, %bb.ch
  %.pn47.pn.pn = phi { ptr, i32 } [ %i.fb, %bb.bb ], [ %i.hs, %bb.ch ], [ %i.ll, %bb.ef ], [ %.pn47, %.body118 ], [ %i.ft, %bb.bl ], [ %i.fo, %bb.bi ], [ %.pn38.pn, %.body129 ], [ %.pn38.pn, %bb.ed ], [ %i.dz, %bb.as ], [ %i.ei, %bb.aw ]
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 16
  invoke void @_RNvXsd_NtNtCskQDtHcQtBkN_5tokio4sync5mutexINtB5_10MutexGuardINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCs5zo6j4Z0Hcj_20aws_credential_types16credentials_impl11CredentialsEENtNtNtB11_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.hv)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio4sync5mutex10MutexGuardINtNtB4_6option6OptionNtNtCs5zo6j4Z0Hcj_20aws_credential_types16credentials_impl11CredentialsEEECs9rVkZwOUgsI_13deltalake_aws.exit125 unwind label %bb.ce

bb.cm:                                            ; preds = %bb.cn
  %i.hw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider6future18ProvideCredentialsECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(64) %i.hx) #25
          to label %.body129 unwind label %bb.ce

bb.cn:                                            ; preds = %bb.b, %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.hx = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  invoke void @_RNvXs_NtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider6futureNtB4_18ProvideCredentialsNtNtNtCsbvkFyIu7lgC_4core6future6future6Future4poll(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.q, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.hx, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.co unwind label %bb.cm

bb.co:                                            ; preds = %bb.cn
  %i.hy = load i64, ptr %i.q, align 8, !range !62, !noundef !3
  %i.hz = trunc nuw i64 %i.hy to i1
  br i1 %i.hz, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  store i64 -9223372036854775789, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %common.ret

bb.cq:                                            ; preds = %bb.co
  %i.ia = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.p, ptr noundef nonnull align 8 dereferenceable(56) %i.ia, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider6future18ProvideCredentialsECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(64) %i.hx)
          to label %bb.cs unwind label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.ib = landingpad { ptr, i32 }
          cleanup
  br label %.body129

bb.cs:                                            ; preds = %bb.cq
  call void @llvm.experimental.noalias.scope.decl(metadata !1652)
  call void @llvm.experimental.noalias.scope.decl(metadata !1655)
  %i.ic = load ptr, ptr %i.p, align 8, !alias.scope !1655, !noalias !1652, !noundef !3 ; 11 uses
  %i.id = icmp eq ptr %i.ic, null
  %i.ie = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  br i1 %i.id, label %bb.ct, label %bb.cx

bb.ct:                                            ; preds = %bb.cs
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !1657
  %i.if = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 24, 153) 24, i64 noundef 8) #29, !noalias !1657 ; 3 uses
  %i.ig = icmp eq ptr %i.if, null
  br i1 %i.ig, label %bb.cu, label %bb.ee, !prof !21

bb.cu:                                            ; preds = %bb.ct
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #24
          to label %.noexc.i.i128 unwind label %bb.cv, !noalias !1663

.noexc.i.i128:                                    ; preds = %bb.cu
  unreachable

bb.cv:                                            ; preds = %bb.cu
  %i.ih = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider5error16CredentialsErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.ie) #25
          to label %.body129 unwind label %bb.cw, !noalias !1652

bb.cw:                                            ; preds = %bb.cv
  %i.ii = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23, !noalias !1663
  unreachable

bb.cx:                                            ; preds = %bb.cs
  %.sroa.14.8.copyload = load ptr, ptr %i.ie, align 8, !alias.scope !1664
  %.sroa.15.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.15.sroa.0.0.copyload = load i64, ptr %.sroa.15.8..sroa_idx, align 8, !alias.scope !1664
  %.sroa.15.sroa.9.0..sroa.15.8..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.5243.sroa.4.0..sroa.5243.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5243.sroa.4.0..sroa.5243.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.15.sroa.9.0..sroa.15.8..sroa_idx.sroa_idx, i64 32, i1 false)
  store ptr %i.ic, ptr %i.s, align 8
  %.sroa.4242.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %.sroa.14.8.copyload, ptr %.sroa.4242.0..sroa_idx, align 8
  %.sroa.5243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 %.sroa.15.sroa.0.0.copyload, ptr %.sroa.5243.0..sroa_idx, align 8
  %i.ij = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.ik = icmp ult i64 %i.ij, 6
  call void @llvm.assume(i1 %i.ik)
  %i.il = icmp samesign ugt i64 %i.ij, 3
  br i1 %i.il, label %bb.cz, label %bb.db

bb.cy:                                            ; preds = %bb.cz
  %i.im = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %.thread336

bb.cz:                                            ; preds = %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.in = getelementptr inbounds nuw i8, ptr %i.ic, i64 24
  %i.io = load ptr, ptr %i.in, align 8, !nonnull !3, !noundef !3
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ic, i64 32
  %i.iq = load i64, ptr %i.ip, align 8, !noundef !3
  store ptr %i.io, ptr %i.o, align 8
  %i.ir = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %i.iq, ptr %i.ir, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.o, ptr %i.n, align 8
  %.sroa.5247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs9rVkZwOUgsI_13deltalake_aws, ptr %.sroa.5247.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr @23, ptr %i.m, align 8
  %i.is = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 26, ptr %i.is, align 8
  %i.it = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr @23, ptr %i.it, align 8
  %i.iu = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 26, ptr %i.iu, align 8
  %i.iv = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr @32, ptr %i.iv, align 8
  invoke void @_RINvNtCsaljjC7ZTCQu_3log13___private_api3loguNtB2_12GlobalLoggerECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull @31, ptr noundef nonnull %i.n, i64 noundef 4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.m)
          to label %bb.da unwind label %bb.cy

bb.da:                                            ; preds = %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0251)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ic, i64 24
  %i.ix = load ptr, ptr %i.iw, align 8, !nonnull !3, !noundef !3
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ic, i64 32
  %i.iz = load i64, ptr %i.iy, align 8, !noundef !3 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1665)
  call void @llvm.experimental.noalias.scope.decl(metadata !1668)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1671
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef range(i64 0, -9223372036854775808) %i.iz, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc138 unwind label %bb.de

.noexc138:                                        ; preds = %bb.db
  %i.ja = load i64, ptr %i.d, align 8, !range !62, !noalias !1671, !noundef !3
  %i.jb = trunc nuw i64 %i.ja to i1
  %i.jc = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.jd = load i64, ptr %i.jc, align 8, !range !139, !noalias !1671, !noundef !3 ; 3 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.jb, label %bb.dc, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i134, !prof !21

bb.dc:                                            ; preds = %.noexc138
  %i.jf = load i64, ptr %i.je, align 8, !noalias !1671
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.jd, i64 %i.jf) #24
          to label %.noexc139 unwind label %bb.de

.noexc139:                                        ; preds = %bb.dc
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i134: ; preds = %.noexc138
  %i.jg = load ptr, ptr %i.je, align 8, !noalias !1671, !nonnull !3, !noundef !3 ; 2 uses
  %i.jh = icmp samesign ule i64 %i.iz, %i.jd
  call void @llvm.assume(i1 %i.jh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1671
  %.not.i.i.i135 = icmp eq i64 %i.iz, 0
  br i1 %.not.i.i.i135, label %bb.df, label %bb.dd

bb.dd:                                            ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i134
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jg, ptr nonnull readonly align 1 %i.ix, i64 range(i64 0, -9223372036854775808) %i.iz, i1 false), !noalias !1677
  br label %bb.df

bb.de:                                            ; preds = %bb.dc, %bb.db
  %i.ji = landingpad { ptr, i32 }
          cleanup
  br label %.thread341.sink.split

bb.df:                                            ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i134, %bb.dd
  store i64 %i.jd, ptr %i.k, align 8, !alias.scope !1678, !noalias !1679
  %.sroa.4.0..sroa_idx.i.i136 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.jg, ptr %.sroa.4.0..sroa_idx.i.i136, align 8, !alias.scope !1678, !noalias !1679
  %.sroa.5.0..sroa_idx.i.i137 = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %i.iz, ptr %.sroa.5.0..sroa_idx.i.i137, align 8, !alias.scope !1678, !noalias !1679
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ic, i64 48
  %i.jk = load ptr, ptr %i.jj, align 8, !nonnull !3, !noundef !3
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ic, i64 56
  %i.jm = load i64, ptr %i.jl, align 8, !noundef !3 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1680)
  call void @llvm.experimental.noalias.scope.decl(metadata !1683)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1686
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef range(i64 0, -9223372036854775808) %i.jm, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc145 unwind label %bb.dj

end_hunk_1
begin_hunk_2_@_RNCNvXs3_NtCs9rVkZwOUgsI_13deltalake_aws11credentialsNtB7_17AWSForObjectStoreNtNtCsjyY8HP3IvQ6_12object_store6client18CredentialProvider14get_credential0B9_:bb.a
  %i.jp = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.jq = load i64, ptr %i.jp, align 8, !range !139, !noalias !1686, !noundef !3 ; 3 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.jo, label %bb.dg, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i141, !prof !21

bb.dg:                                            ; preds = %.noexc145
  %i.js = load i64, ptr %i.jr, align 8, !noalias !1686
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.jq, i64 %i.js) #24
          to label %.noexc146 unwind label %bb.dj

.noexc146:                                        ; preds = %bb.dg
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i141: ; preds = %.noexc145
  %i.jt = load ptr, ptr %i.jr, align 8, !noalias !1686, !nonnull !3, !noundef !3 ; 2 uses
  %i.ju = icmp samesign ule i64 %i.jm, %i.jq
  call void @llvm.assume(i1 %i.ju)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1686
  %.not.i.i.i142 = icmp eq i64 %i.jm, 0
  br i1 %.not.i.i.i142, label %bb.dk, label %bb.dh

bb.dh:                                            ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i141
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jt, ptr nonnull readonly align 1 %i.jk, i64 range(i64 0, -9223372036854775808) %i.jm, i1 false), !noalias !1692
  br label %bb.dk

bb.di:                                            ; preds = %bb.dp, %bb.dj
  %.pn29.pn = phi { ptr, i32 } [ %i.kk, %bb.dp ], [ %i.jv, %bb.dj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.k) #25
          to label %.thread341.sink.split unwind label %bb.ce

bb.dj:                                            ; preds = %bb.dg, %bb.df
  %i.jv = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.dk:                                            ; preds = %bb.dh, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i141
  store i64 %i.jq, ptr %i.j, align 8, !alias.scope !1693, !noalias !1694
  %.sroa.4.0..sroa_idx.i.i143 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.jt, ptr %.sroa.4.0..sroa_idx.i.i143, align 8, !alias.scope !1693, !noalias !1694
  %.sroa.5.0..sroa_idx.i.i144 = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %i.jm, ptr %.sroa.5.0..sroa_idx.i.i144, align 8, !alias.scope !1693, !noalias !1694
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ic, i64 64
  %i.jx = load i64, ptr %i.jw, align 8, !range !139, !noundef !3
  %.not.i148 = icmp eq i64 %i.jx, -9223372036854775808
  br i1 %.not.i148, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE3mapNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNCNvXs3_NtCs9rVkZwOUgsI_13deltalake_aws11credentialsNtB1B_17AWSForObjectStoreNtNtCsjyY8HP3IvQ6_12object_store6client18CredentialProvider14get_credential0s0_0EB1D_.exit, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.jy = getelementptr inbounds nuw i8, ptr %i.ic, i64 72
  %i.jz = load ptr, ptr %i.jy, align 8, !nonnull !3, !noundef !3
  %i.ka = getelementptr inbounds nuw i8, ptr %i.ic, i64 80
  %i.kb = load i64, ptr %i.ka, align 8, !noundef !3 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1695
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.kb, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc156 unwind label %bb.dp

.noexc156:                                        ; preds = %bb.dl
  %i.kc = load i64, ptr %i.b, align 8, !range !62, !noalias !1695, !noundef !3
  %i.kd = trunc nuw i64 %i.kc to i1
  %i.ke = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.kf = load i64, ptr %i.ke, align 8, !range !139, !noalias !1695, !noundef !3 ; 4 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.kd, label %bb.dm, label %bb.dn, !prof !21

bb.dm:                                            ; preds = %.noexc156
  %i.kh = load i64, ptr %i.kg, align 8, !noalias !1695
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.kf, i64 %i.kh) #24
          to label %.noexc157 unwind label %bb.dp

.noexc157:                                        ; preds = %bb.dm
  unreachable

bb.dn:                                            ; preds = %.noexc156
  %i.ki = load ptr, ptr %i.kg, align 8, !noalias !1695, !nonnull !3, !noundef !3 ; 3 uses
  %i.kj = icmp ule i64 %i.kb, %i.kf
  call void @llvm.assume(i1 %i.kj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1695
  %.not.i.i153 = icmp eq i64 %i.kb, 0
  br i1 %.not.i.i153, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE3mapNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNCNvXs3_NtCs9rVkZwOUgsI_13deltalake_aws11credentialsNtB1B_17AWSForObjectStoreNtNtCsjyY8HP3IvQ6_12object_store6client18CredentialProvider14get_credential0s0_0EB1D_.exit, label %bb.do

bb.do:                                            ; preds = %bb.dn
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ki, ptr nonnull readonly align 1 %i.jz, i64 %i.kb, i1 false), !noalias !1702
  br label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE3mapNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNCNvXs3_NtCs9rVkZwOUgsI_13deltalake_aws11credentialsNtB1B_17AWSForObjectStoreNtNtCsjyY8HP3IvQ6_12object_store6client18CredentialProvider14get_credential0s0_0EB1D_.exit

bb.dp:                                            ; preds = %bb.dm, %bb.dl
  %i.kk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.j) #25
          to label %bb.di unwind label %bb.ce

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE3mapNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNCNvXs3_NtCs9rVkZwOUgsI_13deltalake_aws11credentialsNtB1B_17AWSForObjectStoreNtNtCsjyY8HP3IvQ6_12object_store6client18CredentialProvider14get_credential0s0_0EB1D_.exit: ; preds = %bb.dk, %bb.do, %bb.dn
  %.sroa.3.0.i149329 = phi i64 [ 0, %bb.dn ], [ %i.kb, %bb.do ], [ undef, %bb.dk ]
  %.sroa.0248.0 = phi i64 [ %i.kf, %bb.dn ], [ %i.kf, %bb.do ], [ -9223372036854775808, %bb.dk ]
  %.sroa.6249.0 = phi ptr [ %i.ki, %bb.dn ], [ %i.ki, %bb.do ], [ undef, %bb.dk ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0251, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  %.sroa.0251.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0251, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0251.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1703
  store i64 1, ptr %i.a, align 8, !noalias !1703
  %i.kl = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.kl, align 8, !noalias !1703
  %i.km = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.km, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0251, i64 48, i1 false)
  %.sroa.7252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %.sroa.0248.0, ptr %.sroa.7252.0..sroa_idx, align 8
  %.sroa.8253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %.sroa.6249.0, ptr %.sroa.8253.0..sroa_idx, align 8
  %.sroa.9254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i64 %.sroa.3.0.i149329, ptr %.sroa.9254.0..sroa_idx, align 8
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !1706
  %i.kn = call noundef align 8 dereferenceable_or_null(88) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 24, 153) 88, i64 noundef 8) #29, !noalias !1706 ; 4 uses
  %i.ko = icmp eq ptr %i.kn, null
  br i1 %i.ko, label %bb.dq, label %bb.dt, !prof !21

bb.dq:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE3mapNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNCNvXs3_NtCs9rVkZwOUgsI_13deltalake_aws11credentialsNtB1B_17AWSForObjectStoreNtNtCsjyY8HP3IvQ6_12object_store6client18CredentialProvider14get_credential0s0_0EB1D_.exit
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 88) #24
          to label %.noexc.i158 unwind label %bb.dr, !noalias !1703

.noexc.i158:                                      ; preds = %bb.dq
  unreachable

bb.dr:                                            ; preds = %bb.dq
  %i.kp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtNtCsjyY8HP3IvQ6_12object_store3aws10credential13AwsCredentialEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.a) #25
          to label %.thread341 unwind label %bb.ds, !noalias !1703

bb.ds:                                            ; preds = %bb.dr
  %i.kq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23, !noalias !1703
  unreachable

bb.dt:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE3mapNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNCNvXs3_NtCs9rVkZwOUgsI_13deltalake_aws11credentialsNtB1B_17AWSForObjectStoreNtNtCsjyY8HP3IvQ6_12object_store6client18CredentialProvider14get_credential0s0_0EB1D_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.kn, ptr noundef nonnull align 8 dereferenceable(88) %i.a, i64 88, i1 false), !noalias !1703
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1703
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0251)
  %i.kr = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store ptr %i.kn, ptr %i.kr, align 8
  store i64 -9223372036854775790, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.s, i64 56, i1 false)
  %i.ks = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val90 = load ptr, ptr %i.ks, align 8, !nonnull !3, !align !64, !noundef !3 ; 3 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %.val90, i64 40 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1709)
  %i.ku = load ptr, ptr %i.kt, align 8, !alias.scope !1709, !noundef !3 ; 2 uses
  %i.kv = icmp eq ptr %i.ku, null
  br i1 %i.kv, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs5zo6j4Z0Hcj_20aws_credential_types16credentials_impl11CredentialsEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.kw = atomicrmw sub ptr %i.ku, i64 1 release, align 8, !noalias !1712
  %i.kx = icmp eq i64 %i.kw, 1
  br i1 %i.kx, label %bb.dv, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs5zo6j4Z0Hcj_20aws_credential_types16credentials_impl11CredentialsECs9rVkZwOUgsI_13deltalake_aws.exit.i

bb.dv:                                            ; preds = %bb.du
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs5zo6j4Z0Hcj_20aws_credential_types16credentials_impl5InnerE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.kt) #28
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs5zo6j4Z0Hcj_20aws_credential_types16credentials_impl11CredentialsECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.ky = landingpad { ptr, i32 }
          cleanup
  %i.kz = getelementptr inbounds nuw i8, ptr %.val90, i64 48
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEENtNtNtBT_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.kz)
          to label %bb.eb unwind label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.la = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs5zo6j4Z0Hcj_20aws_credential_types16credentials_impl11CredentialsECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.dv, %bb.du
  %i.lb = getelementptr inbounds nuw i8, ptr %.val90, i64 48
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEENtNtNtBT_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.lb)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs5zo6j4Z0Hcj_20aws_credential_types16credentials_impl11CredentialsECs9rVkZwOUgsI_13deltalake_aws.exit.i._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs5zo6j4Z0Hcj_20aws_credential_types16credentials_impl11CredentialsEECs9rVkZwOUgsI_13deltalake_aws.exit_crit_edge unwind label %bb.dy

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs5zo6j4Z0Hcj_20aws_credential_types16credentials_impl11CredentialsECs9rVkZwOUgsI_13deltalake_aws.exit.i._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs5zo6j4Z0Hcj_20aws_credential_types16credentials_impl11CredentialsEECs9rVkZwOUgsI_13deltalake_aws.exit_crit_edge: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs5zo6j4Z0Hcj_20aws_credential_types16credentials_impl11CredentialsECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %.sroa.0255.0.copyload.pre = load i64, ptr %i.l, align 8
  %.sroa.5257.0.copyload.pre = load ptr, ptr %i.kr, align 8
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs5zo6j4Z0Hcj_20aws_credential_types16credentials_impl11CredentialsEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.dy:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs5zo6j4Z0Hcj_20aws_credential_types16credentials_impl11CredentialsECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.lc = landingpad { ptr, i32 }
          cleanup
  br label %bb.eb

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs5zo6j4Z0Hcj_20aws_credential_types16credentials_impl11CredentialsEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs5zo6j4Z0Hcj_20aws_credential_types16credentials_impl11CredentialsECs9rVkZwOUgsI_13deltalake_aws.exit.i._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs5zo6j4Z0Hcj_20aws_credential_types16credentials_impl11CredentialsEECs9rVkZwOUgsI_13deltalake_aws.exit_crit_edge, %bb.dt
  %.sroa.5257.0.copyload = phi ptr [ %.sroa.5257.0.copyload.pre, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs5zo6j4Z0Hcj_20aws_credential_types16credentials_impl11CredentialsECs9rVkZwOUgsI_13deltalake_aws.exit.i._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs5zo6j4Z0Hcj_20aws_credential_types16credentials_impl11CredentialsEECs9rVkZwOUgsI_13deltalake_aws.exit_crit_edge ], [ %i.kn, %bb.dt ]
  %.sroa.0255.0.copyload = phi i64 [ %.sroa.0255.0.copyload.pre, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs5zo6j4Z0Hcj_20aws_credential_types16credentials_impl11CredentialsECs9rVkZwOUgsI_13deltalake_aws.exit.i._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs5zo6j4Z0Hcj_20aws_credential_types16credentials_impl11CredentialsEECs9rVkZwOUgsI_13deltalake_aws.exit_crit_edge ], [ -9223372036854775790, %bb.dt ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.kt, ptr noundef nonnull align 8 dereferenceable(56) %i.i, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.sroa.8260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.8260.0.copyload = load ptr, ptr %.sroa.8260.0..sroa_idx, align 8
  %.sroa.10263.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.10263.0.copyload = load i64, ptr %.sroa.10263.0..sroa_idx, align 8
  %.sroa.12266.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5214.sroa.0, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.12266.0..sroa_idx, i64 32, i1 false)
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %.sroa.13.0.copyload = load i64, ptr %.sroa.13.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.dz

bb.dz:                                            ; preds = %bb.ee, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs5zo6j4Z0Hcj_20aws_credential_types16credentials_impl11CredentialsEECs9rVkZwOUgsI_13deltalake_aws.exit
  %.sroa.0255.1 = phi i64 [ %.sroa.0255.0.copyload, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs5zo6j4Z0Hcj_20aws_credential_types16credentials_impl11CredentialsEECs9rVkZwOUgsI_13deltalake_aws.exit ], [ -9223372036854775798, %bb.ee ] ; 2 uses
  %.sroa.5257.1 = phi ptr [ %.sroa.5257.0.copyload, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs5zo6j4Z0Hcj_20aws_credential_types16credentials_impl11CredentialsEECs9rVkZwOUgsI_13deltalake_aws.exit ], [ %i.if, %bb.ee ] ; 2 uses
  %.sroa.8260.1 = phi ptr [ %.sroa.8260.0.copyload, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs5zo6j4Z0Hcj_20aws_credential_types16credentials_impl11CredentialsEECs9rVkZwOUgsI_13deltalake_aws.exit ], [ @8, %bb.ee ] ; 2 uses
  %.sroa.10263.1 = phi i64 [ %.sroa.10263.0.copyload, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs5zo6j4Z0Hcj_20aws_credential_types16credentials_impl11CredentialsEECs9rVkZwOUgsI_13deltalake_aws.exit ], [ undef, %bb.ee ] ; 2 uses
  %.sroa.13.1 = phi i64 [ %.sroa.13.0.copyload, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs5zo6j4Z0Hcj_20aws_credential_types16credentials_impl11CredentialsEECs9rVkZwOUgsI_13deltalake_aws.exit ], [ undef, %bb.ee ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.ld = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1719)
  call void @llvm.experimental.noalias.scope.decl(metadata !1722)
  call void @llvm.experimental.noalias.scope.decl(metadata !1725)
  %i.le = load ptr, ptr %i.ld, align 8, !alias.scope !1728, !nonnull !3, !noundef !3
  %i.lf = atomicrmw sub ptr %i.le, i64 1 release, align 8, !noalias !1728
  %i.lg = icmp eq i64 %i.lf, 1
  br i1 %i.lg, label %bb.ea, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials25SharedCredentialsProviderECs9rVkZwOUgsI_13deltalake_aws.exit

bb.ea:                                            ; preds = %bb.dz
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_E9drop_slowCsjPG5xYjJYir_9aws_types(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ld) #28
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials25SharedCredentialsProviderECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.ef

bb.eb:                                            ; preds = %bb.dy, %bb.dw
  %eh.lpad-body163 = phi { ptr, i32 } [ %i.lc, %bb.dy ], [ %i.ky, %bb.dw ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.kt, ptr noundef nonnull align 8 dereferenceable(56) %i.i, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCsjyY8HP3IvQ6_12object_store3aws10credential13AwsCredentialENtB1G_5ErrorEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(72) %i.l) #25
          to label %bb.ec unwind label %bb.ce

.thread341.sink.split:                            ; preds = %bb.di, %bb.de
  %.pn34.pn.ph.ph = phi { ptr, i32 } [ %i.ji, %bb.de ], [ %.pn29.pn, %bb.di ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %.thread341

.thread341:                                       ; preds = %.thread341.sink.split, %bb.dr
  %.pn34.pn.ph = phi { ptr, i32 } [ %i.kp, %bb.dr ], [ %.pn34.pn.ph.ph, %.thread341.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0251)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %.thread336

bb.ec:                                            ; preds = %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %.body129

.body129:                                         ; preds = %bb.cj, %bb.cv, %bb.cr, %bb.cm, %bb.ec, %.thread336
  %.pn38.pn = phi { ptr, i32 } [ %eh.lpad-body163, %bb.ec ], [ %.pn34.pn.pn339, %.thread336 ], [ %i.ht, %bb.cj ], [ %i.hw, %bb.cm ], [ %i.ib, %bb.cr ], [ %i.ih, %bb.cv ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.lh = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1729)
  call void @llvm.experimental.noalias.scope.decl(metadata !1732)
  call void @llvm.experimental.noalias.scope.decl(metadata !1735)
  %i.li = load ptr, ptr %i.lh, align 8, !alias.scope !1738, !nonnull !3, !noundef !3
  %i.lj = atomicrmw sub ptr %i.li, i64 1 release, align 8, !noalias !1738
  %i.lk = icmp eq i64 %i.lj, 1
  br i1 %i.lk, label %bb.ed, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials25SharedCredentialsProviderECs9rVkZwOUgsI_13deltalake_aws.exit167

bb.ed:                                            ; preds = %.body129
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_E9drop_slowCsjPG5xYjJYir_9aws_types(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.lh) #28
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials25SharedCredentialsProviderECs9rVkZwOUgsI_13deltalake_aws.exit167 unwind label %bb.ce

.thread336:                                       ; preds = %bb.cy, %.thread341
  %.pn34.pn.pn339 = phi { ptr, i32 } [ %.pn34.pn.ph, %.thread341 ], [ %i.im, %bb.cy ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs5zo6j4Z0Hcj_20aws_credential_types16credentials_impl11CredentialsECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(56) %i.s) #25
          to label %.body129 unwind label %bb.ce

bb.ee:                                            ; preds = %bb.ct
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.if, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ie, i64 24, i1 false), !noalias !1652
  br label %bb.dz

bb.ef:                                            ; preds = %bb.ea
  %i.ll = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials25SharedCredentialsProviderECs9rVkZwOUgsI_13deltalake_aws.exit167

bb.eg:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials25SharedCredentialsProviderECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.lm = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio4sync5mutex10MutexGuardINtNtB4_6option6OptionNtNtCs5zo6j4Z0Hcj_20aws_credential_types16credentials_impl11CredentialsEEECs9rVkZwOUgsI_13deltalake_aws.exit125

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio4sync5mutex10MutexGuardINtNtB4_6option6OptionNtNtCs5zo6j4Z0Hcj_20aws_credential_types16credentials_impl11CredentialsEEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials25SharedCredentialsProviderECs9rVkZwOUgsI_13deltalake_aws.exit
  store i64 %.sroa.0255.0, ptr %0, align 8
  %.sroa.5257.0..sroa_idx258 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5257.0, ptr %.sroa.5257.0..sroa_idx258, align 8
  %.sroa.8260.0..sroa_idx261 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.8260.0, ptr %.sroa.8260.0..sroa_idx261, align 8
  %.sroa.10263.0..sroa_idx264 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.10263.0, ptr %.sroa.10263.0..sroa_idx264, align 8
  %.sroa.12266.0..sroa_idx267 = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.12266.0..sroa_idx267, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5214.sroa.0, i64 32, i1 false)
  %.sroa.13.0..sroa_idx268 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.13.0, ptr %.sroa.13.0..sroa_idx268, align 8
  br label %common.ret
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCs3gpiEk3WpjL_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBZ_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11rustc_entryCs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(48) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = invoke noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneRNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
          to label %bb.c unwind label %bb.b       ; 3 uses

bb.b:                                             ; preds = %bb.h, %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %2) #25
          to label %common.resume unwind label %bb.k

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1739)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1742)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1744)
  %i.d = lshr i64 %i.b, 57
  %i.e = trunc nuw nsw i64 %i.d to i8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !1747, !noalias !1748, !noundef !3 ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !alias.scope !1747, !noalias !1748, !nonnull !3, !noundef !3 ; 2 uses
  %i.i = insertelement <16 x i8> poison, i8 %i.e, i64 0
  %i.j = shufflevector <16 x i8> %i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val3.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !1742, !noalias !1739 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val2.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !1742, !noalias !1739, !nonnull !3
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.sroa.9.0.i.i = phi i64 [ 0, %bb.c ], [ %i.ae, %bb.e ]
  %.pn.i.i = phi i64 [ %i.b, %bb.c ], [ %i.af, %bb.e ]
  %.sroa.01.0.i.i = and i64 %.pn.i.i, %i.g        ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.i.i
  %.sroa.0.0.copyload.i27.i = load <16 x i8>, ptr %i.m, align 1, !noalias !1750 ; 2 uses
  %i.n = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i, %i.j
  %i.o = bitcast <16 x i1> %i.n to i16            ; 2 uses
  %.not.i.not33.i = icmp eq i16 %i.o, 0
  br i1 %.not.i.not33.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBS_EE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_BS_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11rustc_entry0E0Cs9rVkZwOUgsI_13deltalake_aws.exit.thread.i
  %.sroa.06.0.i34.i = phi i16 [ %i.ad, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBS_EE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_BS_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11rustc_entry0E0Cs9rVkZwOUgsI_13deltalake_aws.exit.thread.i ], [ %i.o, %bb.d ] ; 3 uses
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i34.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = add i64 %.sroa.01.0.i.i, %i.q
  %i.s = and i64 %i.r, %i.g
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds [48 x i8], ptr %i.h, i64 %i.t ; 3 uses
  %i.v = getelementptr i8, ptr %i.u, i64 -32
  %.val3.i.i = load i64, ptr %i.v, align 8, !noalias !1753, !noundef !3
  %i.w = icmp eq i64 %.val3.i.i, %.val3.i.i.i
  br i1 %i.w, label %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBS_EE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_BS_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11rustc_entry0E0Cs9rVkZwOUgsI_13deltalake_aws.exit.i, label %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBS_EE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_BS_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11rustc_entry0E0Cs9rVkZwOUgsI_13deltalake_aws.exit.thread.i, !prof !1756

_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBS_EE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_BS_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11rustc_entry0E0Cs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %.lr.ph.i
  %i.x = getelementptr i8, ptr %i.u, i64 -40
  %.val2.i.i = load ptr, ptr %i.x, align 8, !noalias !1753, !nonnull !3, !noundef !3
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val2.i.i, ptr nonnull readonly %.val2.i.i.i, i64 %.val3.i.i.i), !noalias !1753
  %i.y = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.y, label %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBQ_EE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_BQ_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11rustc_entry0ECs9rVkZwOUgsI_13deltalake_aws.exit, label %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBS_EE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_BS_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11rustc_entry0E0Cs9rVkZwOUgsI_13deltalake_aws.exit.thread.i, !prof !1757

._crit_edge.i:                                    ; preds = %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBS_EE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_BS_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11rustc_entry0E0Cs9rVkZwOUgsI_13deltalake_aws.exit.thread.i, %bb.d
  %i.z = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i, splat (i8 -1)
  %i.aa = bitcast <16 x i1> %i.z to i16
  %i.ab = icmp eq i16 %i.aa, 0
  br i1 %i.ab, label %bb.e, label %bb.h, !prof !21

_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBS_EE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_BS_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11rustc_entry0E0Cs9rVkZwOUgsI_13deltalake_aws.exit.thread.i: ; preds = %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBS_EE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_BS_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11rustc_entry0E0Cs9rVkZwOUgsI_13deltalake_aws.exit.i, %.lr.ph.i
  %i.ac = add i16 %.sroa.06.0.i34.i, -1
  %i.ad = and i16 %i.ac, %.sroa.06.0.i34.i        ; 2 uses
  %.not.i.not.i = icmp eq i16 %i.ad, 0
  br i1 %.not.i.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.e:                                             ; preds = %._crit_edge.i
  %i.ae = add i64 %.sroa.9.0.i.i, 16              ; 2 uses
  %i.af = add i64 %.sroa.01.0.i.i, %i.ae
  br label %bb.d

_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBQ_EE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_BQ_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11rustc_entry0ECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBS_EE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_BS_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11rustc_entry0E0Cs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.u, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.ah, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.f

bb.f:                                             ; preds = %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBQ_EE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_BQ_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11rustc_entry0ECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.ai, %bb.f ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBQ_EE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_BQ_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11rustc_entry0ECs9rVkZwOUgsI_13deltalake_aws.exit
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i
  invoke void @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
          to label %bb.j unwind label %bb.b

bb.i:                                             ; preds = %bb.j, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit
  ret void

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.b, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.i

bb.k:                                             ; preds = %bb.b
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCs9rVkZwOUgsI_13deltalake_aws11credentialsNtB2_17AWSForObjectStore3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([424 x i8]) align 8 captures(none) dereferenceable(424) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(416) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 7 uses
  %i.b = alloca [56 x i8], align 8                ; 4 uses
  %i.c = alloca [96 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr null, ptr %i.b, align 8
  invoke void @_RNvMs8_NtNtCskQDtHcQtBkN_5tokio4sync5mutexINtB5_5MutexINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCs5zo6j4Z0Hcj_20aws_credential_types16credentials_impl11CredentialsEE3newCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.d, %bb.b ], [ %i.i, %bb.e ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(416) %1) #25
          to label %bb.i unwind label %bb.h

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.f, ptr noundef nonnull align 8 dereferenceable(96) %i.c, i64 96, i1 false)
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !1758
  %i.g = call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 24, 153) 112, i64 noundef 8) #29, !noalias !1758 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %bb.g, !prof !21

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #24
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerINtNtNtCskQDtHcQtBkN_5tokio4sync5mutex5MutexINtNtB4_6option6OptionNtNtCs5zo6j4Z0Hcj_20aws_credential_types16credentials_impl11CredentialsEEEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.a) #25
          to label %.body unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.g:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.g, ptr noundef nonnull align 8 dereferenceable(112) %i.a, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(416) %0, ptr noundef nonnull align 8 dereferenceable(416) %1, i64 416, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 416
  store ptr %i.g, ptr %i.k, align 8
  ret void

bb.h:                                             ; preds = %.body
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable
end_hunk_2
begin_hunk_3_@_RNvNtCs9rVkZwOUgsI_13deltalake_aws11credentials15assume_role_arn:bb.a
  %i.q = lshr i64 %i.p, 57
  %i.r = trunc nuw nsw i64 %i.q to i8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !1941, !noalias !1942, !noundef !3 ; 4 uses
  %i.u = load ptr, ptr %1, align 8, !alias.scope !1941, !noalias !1942, !nonnull !3, !noundef !3 ; 4 uses
  %i.v = insertelement <16 x i8> poison, i8 %i.r, i64 0
  %i.w = shufflevector <16 x i8> %i.v, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.b ], [ %i.an, %bb.e ]
  %.pn.i.i.i = phi i64 [ %i.p, %bb.b ], [ %i.ao, %bb.e ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i.i, %i.t    ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i26.i.i = load <16 x i8>, ptr %i.x, align 1, !noalias !1945 ; 2 uses
  %i.y = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, %i.w
  %i.z = bitcast <16 x i1> %i.y to i16            ; 2 uses
  %.not.i.not32.i.i = icmp eq i16 %i.z, 0
  br i1 %.not.i.not32.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.sroa.06.0.i33.i.i = phi i16 [ %i.am, %bb.d ], [ %i.z, %bb.c ] ; 3 uses
  %i.aa = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i, i1 true)
  %i.ab = zext nneg i16 %i.aa to i64
  %i.ac = add i64 %.sroa.01.0.i.i.i, %i.ab
  %i.ad = and i64 %i.ac, %i.t
  %i.ae = sub nsw i64 0, %i.ad
  %i.af = getelementptr inbounds [48 x i8], ptr %i.u, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -48
  %i.ah = tail call noundef zeroext i1 @_RNvXCs3gpiEk3WpjL_9hashbrowneINtB2_10EquivalentNtNtCs6Po7BT7Nknu_5alloc6string6StringE10equivalentCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 16, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ag), !noalias !1948
  br i1 %i.ah, label %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBO_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3geteECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.d, !prof !20

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %i.ai = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, splat (i8 -1)
  %i.aj = bitcast <16 x i1> %i.ai to i16
  %i.ak = icmp eq i16 %i.aj, 0
  br i1 %i.ak, label %bb.e, label %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBO_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3geteECs9rVkZwOUgsI_13deltalake_aws.exit, !prof !21

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.al = add i16 %.sroa.06.0.i33.i.i, -1
  %i.am = and i16 %i.al, %.sroa.06.0.i33.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.am, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.an = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.ao = add i64 %.sroa.01.0.i.i.i, %i.an
  br label %bb.c

_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBO_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3geteECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %._crit_edge.i.i, %.lr.ph.i.i
  %i.ap = phi ptr [ %i.af, %.lr.ph.i.i ], [ null, %._crit_edge.i.i ] ; 2 uses
  %.not.i = icmp eq ptr %i.ap, null
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -24
  %.sroa.0.1.i = select i1 %.not.i, ptr null, ptr %i.aq
  %i.ar = tail call noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneReECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.o, ptr noalias noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 22) ; 2 uses
  %i.as = lshr i64 %i.ar, 57
  %i.at = trunc nuw nsw i64 %i.as to i8
  %i.au = insertelement <16 x i8> poison, i8 %i.at, i64 0
  %i.av = shufflevector <16 x i8> %i.au, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBO_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3geteECs9rVkZwOUgsI_13deltalake_aws.exit
  %.sroa.9.0.i.i.i18 = phi i64 [ 0, %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBO_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3geteECs9rVkZwOUgsI_13deltalake_aws.exit ], [ %i.bm, %bb.h ]
  %.pn.i.i.i19 = phi i64 [ %i.ar, %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBO_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3geteECs9rVkZwOUgsI_13deltalake_aws.exit ], [ %i.bn, %bb.h ]
  %.sroa.01.0.i.i.i20 = and i64 %.pn.i.i.i19, %i.t ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.01.0.i.i.i20
  %.sroa.0.0.copyload.i26.i.i21 = load <16 x i8>, ptr %i.aw, align 1, !noalias !1951 ; 2 uses
  %i.ax = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i21, %i.av
  %i.ay = bitcast <16 x i1> %i.ax to i16          ; 2 uses
  %.not.i.not32.i.i22 = icmp eq i16 %i.ay, 0
  br i1 %.not.i.not32.i.i22, label %._crit_edge.i.i26, label %.lr.ph.i.i23

.lr.ph.i.i23:                                     ; preds = %bb.f, %bb.g
  %.sroa.06.0.i33.i.i24 = phi i16 [ %i.bl, %bb.g ], [ %i.ay, %bb.f ] ; 3 uses
  %i.az = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i24, i1 true)
  %i.ba = zext nneg i16 %i.az to i64
  %i.bb = add i64 %.sroa.01.0.i.i.i20, %i.ba
  %i.bc = and i64 %i.bb, %i.t
  %i.bd = sub nsw i64 0, %i.bc
  %i.be = getelementptr inbounds [48 x i8], ptr %i.u, i64 %i.bd ; 2 uses
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 -48
  %i.bg = tail call noundef zeroext i1 @_RNvXCs3gpiEk3WpjL_9hashbrowneINtB2_10EquivalentNtNtCs6Po7BT7Nknu_5alloc6string6StringE10equivalentCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 22, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bf), !noalias !1959
  br i1 %i.bg, label %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBQ_EE4findNCINvNtB8_3map14equivalent_keyeBQ_BQ_E0ECs9rVkZwOUgsI_13deltalake_aws.exit.i27, label %bb.g, !prof !20

._crit_edge.i.i26:                                ; preds = %bb.g, %bb.f
  %i.bh = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i21, splat (i8 -1)
  %i.bi = bitcast <16 x i1> %i.bh to i16
  %i.bj = icmp eq i16 %i.bi, 0
  br i1 %i.bj, label %bb.h, label %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBQ_EE4findNCINvNtB8_3map14equivalent_keyeBQ_BQ_E0ECs9rVkZwOUgsI_13deltalake_aws.exit.i27, !prof !21

bb.g:                                             ; preds = %.lr.ph.i.i23
  %i.bk = add i16 %.sroa.06.0.i33.i.i24, -1
  %i.bl = and i16 %i.bk, %.sroa.06.0.i33.i.i24    ; 2 uses
  %.not.i.not.i.i25 = icmp eq i16 %i.bl, 0
  br i1 %.not.i.not.i.i25, label %._crit_edge.i.i26, label %.lr.ph.i.i23

bb.h:                                             ; preds = %._crit_edge.i.i26
  %i.bm = add i64 %.sroa.9.0.i.i.i18, 16          ; 2 uses
  %i.bn = add i64 %.sroa.01.0.i.i.i20, %i.bm
  br label %bb.f

_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBQ_EE4findNCINvNtB8_3map14equivalent_keyeBQ_BQ_E0ECs9rVkZwOUgsI_13deltalake_aws.exit.i27: ; preds = %._crit_edge.i.i26, %.lr.ph.i.i23
  %i.bo = phi ptr [ %i.be, %.lr.ph.i.i23 ], [ null, %._crit_edge.i.i26 ] ; 2 uses
  %.not.i28 = icmp eq ptr %i.bo, null
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 -24
  %.sroa.0.1.i29 = select i1 %.not.i28, ptr null, ptr %i.bp
  br label %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBO_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3geteECs9rVkZwOUgsI_13deltalake_aws.exit31

_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBO_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3geteECs9rVkZwOUgsI_13deltalake_aws.exit31: ; preds = %bb.a, %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBQ_EE4findNCINvNtB8_3map14equivalent_keyeBQ_BQ_E0ECs9rVkZwOUgsI_13deltalake_aws.exit.i27
  %.sroa.0.0.i57 = phi ptr [ %.sroa.0.1.i, %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBQ_EE4findNCINvNtB8_3map14equivalent_keyeBQ_BQ_E0ECs9rVkZwOUgsI_13deltalake_aws.exit.i27 ], [ null, %bb.a ] ; 2 uses
  %.sroa.0.0.i30 = phi ptr [ %.sroa.0.1.i29, %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBQ_EE4findNCINvNtB8_3map14equivalent_keyeBQ_BQ_E0ECs9rVkZwOUgsI_13deltalake_aws.exit.i27 ], [ null, %bb.a ]
  %.not = icmp eq ptr %.sroa.0.0.i57, null
  %spec.store.select = select i1 %.not, ptr %.sroa.0.0.i30, ptr %.sroa.0.0.i57 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @_RINvNtCs2pqxYH9ZEk8_3std3env6var_osReECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 16)
  %i.bq = load i64, ptr %i.j, align 8, !range !139, !noundef !3
  %.not9 = icmp eq i64 %i.bq, -9223372036854775808
  br i1 %.not9, label %.thread72, label %bb.i

bb.i:                                             ; preds = %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBO_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3geteECs9rVkZwOUgsI_13deltalake_aws.exit31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1962)
  call void @llvm.experimental.noalias.scope.decl(metadata !1965)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1967
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !alias.scope !1965, !noalias !1971, !nonnull !3, !noundef !3 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.bu = load i64, ptr %i.bt, align 8, !alias.scope !1965, !noalias !1971, !noundef !3 ; 4 uses
  %i.bv = ptrtoint ptr %i.bs to i64               ; 3 uses
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bs, i64 noundef %i.bu)
          to label %bb.k unwind label %bb.j, !noalias !1967

bb.j:                                             ; preds = %bb.i
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f) #25
          to label %common.resume unwind label %bb.l, !noalias !1971

bb.k:                                             ; preds = %bb.i
  %i.bx = load i64, ptr %i.e, align 8, !range !62, !noalias !1967, !noundef !3
  %i.by = trunc nuw i64 %i.bx to i1
  br i1 %i.by, label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String9from_utf8.exit.i, label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String9from_utf8.exit.thread.i

_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String9from_utf8.exit.thread.i: ; preds = %bb.k
  %.sroa.7.sroa.0.0.copyload14.i = load i64, ptr %i.f, align 8, !alias.scope !1972, !noalias !1973
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1967
  %i.bz = freeze i64 %.sroa.7.sroa.0.0.copyload14.i
  br label %bb.q

bb.l:                                             ; preds = %bb.j
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23, !noalias !1971
  unreachable

common.resume:                                    ; preds = %.body, %bb.am, %bb.j, %bb.n
  %common.resume.op = phi { ptr, i32 } [ %i.db, %bb.am ], [ %i.cc, %bb.n ], [ %i.bw, %bb.j ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String9from_utf8.exit.i: ; preds = %bb.k
  %i.cb = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.643.24.copyload.i = load i64, ptr %i.cb, align 8, !noalias !1967
  %.sroa.040.0.copyload.i = load i64, ptr %i.f, align 8, !noalias !1971 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1967
  %.not.i32 = icmp eq i64 %.sroa.040.0.copyload.i, -9223372036854775808
  br i1 %.not.i32, label %bb.q, label %bb.m

bb.m:                                             ; preds = %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String9from_utf8.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1974
  store i64 %.sroa.040.0.copyload.i, ptr %i.d, align 8, !noalias !1980
  %.sroa.5.sroa.6.0..sroa_idx30.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.bv, ptr %.sroa.5.sroa.6.0..sroa_idx30.i, align 8, !noalias !1980
  %.sroa.5.sroa.7.0..sroa_idx34.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.bu, ptr %.sroa.5.sroa.7.0..sroa_idx34.i, align 8, !noalias !1980
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 61, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @35, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #24
          to label %bb.o unwind label %bb.n, !noalias !1981

bb.n:                                             ; preds = %bb.m
  %i.cc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #25
          to label %common.resume unwind label %bb.p, !noalias !1981

bb.o:                                             ; preds = %bb.m
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23, !noalias !1981
  unreachable

.thread72:                                        ; preds = %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBO_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3geteECs9rVkZwOUgsI_13deltalake_aws.exit31
  store i64 -9223372036854775808, ptr %i.k, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.r

bb.q:                                             ; preds = %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String9from_utf8.exit.i, %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String9from_utf8.exit.thread.i
  %.sroa.5.sroa.7.0.ph.i = phi i64 [ %i.bu, %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String9from_utf8.exit.thread.i ], [ %.sroa.643.24.copyload.i, %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String9from_utf8.exit.i ]
  %.sroa.5.sroa.6.0.ph.i = phi i64 [ %i.bv, %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String9from_utf8.exit.thread.i ], [ %i.bu, %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String9from_utf8.exit.i ]
  %.sroa.5.sroa.0.0.ph.i = phi i64 [ %i.bz, %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String9from_utf8.exit.thread.i ], [ %i.bv, %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String9from_utf8.exit.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 %.sroa.5.sroa.0.0.ph.i, ptr %i.k, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %.sroa.5.sroa.6.0.ph.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %.sroa.5.sroa.7.0.ph.i, ptr %.sroa.5.0..sroa_idx, align 8
  %i.ce = icmp eq i64 %.sroa.5.sroa.0.0.ph.i, -9223372036854775808 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %spec.select83 = select i1 %i.ce, ptr null, ptr %i.k
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.thread72
  %.not1075 = phi i1 [ %i.ce, %bb.q ], [ true, %.thread72 ] ; 2 uses
  %i.cf = phi ptr [ %spec.select83, %bb.q ], [ null, %.thread72 ]
  %.not11 = icmp eq ptr %spec.store.select, null  ; 3 uses
  %i.cg = select i1 %.not11, ptr %i.cf, ptr %spec.store.select
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RINvNtCs2pqxYH9ZEk8_3std3env6var_osReECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 22)
          to label %bb.t unwind label %bb.s

.body:                                            ; preds = %bb.ai, %bb.v, %bb.z, %bb.s, %bb.ak
  %.pn = phi { ptr, i32 } [ %i.cy, %bb.ak ], [ %i.ct, %bb.z ], [ %i.ch, %bb.s ], [ %i.co, %bb.v ], [ %i.cw, %bb.ai ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.k) #25
          to label %common.resume unwind label %bb.ao

bb.s:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.r
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.t:                                             ; preds = %bb.r
  %i.ci = load i64, ptr %i.h, align 8, !range !139, !noundef !3
  %.not12 = icmp eq i64 %i.ci, -9223372036854775808
  br i1 %.not12, label %.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1982)
  call void @llvm.experimental.noalias.scope.decl(metadata !1985)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1987
  %i.cj = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !alias.scope !1985, !noalias !1991, !nonnull !3, !noundef !3 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.cm = load i64, ptr %i.cl, align 8, !alias.scope !1985, !noalias !1991, !noundef !3 ; 4 uses
  %i.cn = ptrtoint ptr %i.ck to i64               ; 3 uses
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ck, i64 noundef %i.cm)
          to label %bb.w unwind label %bb.v, !noalias !1987

bb.v:                                             ; preds = %bb.u
  %i.co = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #25
          to label %.body unwind label %bb.x, !noalias !1991

bb.w:                                             ; preds = %bb.u
  %i.cp = load i64, ptr %i.b, align 8, !range !62, !noalias !1987, !noundef !3
  %i.cq = trunc nuw i64 %i.cp to i1
  br i1 %i.cq, label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String9from_utf8.exit.i42, label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String9from_utf8.exit.thread.i35

_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String9from_utf8.exit.thread.i35: ; preds = %bb.w
  %.sroa.7.sroa.0.0.copyload14.i36 = load i64, ptr %i.c, align 8, !alias.scope !1992, !noalias !1993
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1987
  br label %bb.ac

bb.x:                                             ; preds = %bb.v
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23, !noalias !1991
  unreachable

_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String9from_utf8.exit.i42: ; preds = %bb.w
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.643.24.copyload.i43 = load i64, ptr %i.cs, align 8, !noalias !1987
  %.sroa.040.0.copyload.i44 = load i64, ptr %i.c, align 8, !noalias !1991 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1987
  %.not.i45 = icmp eq i64 %.sroa.040.0.copyload.i44, -9223372036854775808
  br i1 %.not.i45, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String9from_utf8.exit.i42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1994
  store i64 %.sroa.040.0.copyload.i44, ptr %i.a, align 8, !noalias !2000
  %.sroa.5.sroa.6.0..sroa_idx30.i46 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.cn, ptr %.sroa.5.sroa.6.0..sroa_idx30.i46, align 8, !noalias !2000
  %.sroa.5.sroa.7.0..sroa_idx34.i47 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.cm, ptr %.sroa.5.sroa.7.0..sroa_idx34.i47, align 8, !noalias !2000
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 67, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @35, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #24
          to label %bb.aa unwind label %bb.z, !noalias !2001

bb.z:                                             ; preds = %bb.y
  %i.ct = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #25
          to label %.body unwind label %bb.ab, !noalias !2001

bb.aa:                                            ; preds = %bb.y
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.cu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23, !noalias !2001
  unreachable

.thread:                                          ; preds = %bb.t
  store i64 -9223372036854775808, ptr %i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ae

bb.ac:                                            ; preds = %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String9from_utf8.exit.i42, %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String9from_utf8.exit.thread.i35
  %.sroa.5.sroa.7.0.ph.i37 = phi i64 [ %i.cm, %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String9from_utf8.exit.thread.i35 ], [ %.sroa.643.24.copyload.i43, %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String9from_utf8.exit.i42 ]
  %.sroa.5.sroa.6.0.ph.i38 = phi i64 [ %i.cn, %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String9from_utf8.exit.thread.i35 ], [ %i.cm, %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String9from_utf8.exit.i42 ]
  %.sroa.5.sroa.0.0.ph.i39 = phi i64 [ %.sroa.7.sroa.0.0.copyload14.i36, %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String9from_utf8.exit.thread.i35 ], [ %i.cn, %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String9from_utf8.exit.i42 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %.sroa.5.sroa.0.0.ph.i39, ptr %i.i, align 8
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %.sroa.5.sroa.6.0.ph.i38, ptr %.sroa.454.0..sroa_idx, align 8
  %.sroa.555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %.sroa.5.sroa.7.0.ph.i37, ptr %.sroa.555.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.not13 = icmp eq i64 %.sroa.5.sroa.0.0.ph.i39, -9223372036854775808
  br i1 %.not13, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.sroa.02.1 = select i1 %.not1075, ptr %i.i, ptr %i.k
  %spec.select = select i1 %.not11, ptr %.sroa.02.1, ptr %spec.store.select
  br label %bb.af

bb.ae:                                            ; preds = %.thread, %bb.ac
  %.not14 = and i1 %.not11, %.not1075
  br i1 %.not14, label %.thread77, label %bb.af

.thread77:                                        ; preds = %bb.ae
  store i64 -9223372036854775808, ptr %0, align 8
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %.sroa.02.2 = phi ptr [ %spec.select, %bb.ad ], [ %i.cg, %bb.ae ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.02.2)
          to label %bb.ag unwind label %bb.ak

bb.ag:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.pre = load i64, ptr %i.i, align 8, !range !139, !alias.scope !2002
  %i.cv = icmp eq i64 %.pre, -9223372036854775808
  br i1 %i.cv, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.ah
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.s

bb.ak:                                            ; preds = %bb.af
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.i) #25
          to label %.body unwind label %bb.ao

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %.thread77, %bb.ag, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.cz = load i64, ptr %i.k, align 8, !range !139, !alias.scope !2005, !noundef !3
  %i.da = icmp eq i64 %i.cz, -9223372036854775808
  br i1 %i.da, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit52, label %bb.al

bb.al:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i51 unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.db = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %common.resume unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i51: ; preds = %bb.al
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit52

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit52: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  ret void

bb.ao:                                            ; preds = %bb.ak, %.body
  %i.dd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCs9rVkZwOUgsI_13deltalake_aws11credentials19assume_session_name(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [12 x i8], align 4                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !2008, !noalias !2011, !noundef !3
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBO_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3geteECs9rVkZwOUgsI_13deltalake_aws.exit19, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.j = tail call noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneReECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 25) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2013)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2016)
  %i.k = lshr i64 %i.j, 57
  %i.l = trunc nuw nsw i64 %i.k to i8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !2019, !noalias !2020, !noundef !3 ; 4 uses
  %i.o = load ptr, ptr %1, align 8, !alias.scope !2019, !noalias !2020, !nonnull !3, !noundef !3 ; 4 uses
  %i.p = insertelement <16 x i8> poison, i8 %i.l, i64 0
  %i.q = shufflevector <16 x i8> %i.p, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.b ], [ %i.ah, %bb.e ]
  %.pn.i.i.i = phi i64 [ %i.j, %bb.b ], [ %i.ai, %bb.e ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i.i, %i.n    ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i26.i.i = load <16 x i8>, ptr %i.r, align 1, !noalias !2023 ; 2 uses
  %i.s = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, %i.q
  %i.t = bitcast <16 x i1> %i.s to i16            ; 2 uses
  %.not.i.not32.i.i = icmp eq i16 %i.t, 0
  br i1 %.not.i.not32.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.sroa.06.0.i33.i.i = phi i16 [ %i.ag, %bb.d ], [ %i.t, %bb.c ] ; 3 uses
  %i.u = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i, i1 true)
  %i.v = zext nneg i16 %i.u to i64
  %i.w = add i64 %.sroa.01.0.i.i.i, %i.v
  %i.x = and i64 %i.w, %i.n
  %i.y = sub nsw i64 0, %i.x
  %i.z = getelementptr inbounds [48 x i8], ptr %i.o, i64 %i.y ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -48
  %i.ab = tail call noundef zeroext i1 @_RNvXCs3gpiEk3WpjL_9hashbrowneINtB2_10EquivalentNtNtCs6Po7BT7Nknu_5alloc6string6StringE10equivalentCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 25, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aa), !noalias !2026
  br i1 %i.ab, label %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBO_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3geteECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.d, !prof !20

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %i.ac = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, splat (i8 -1)
  %i.ad = bitcast <16 x i1> %i.ac to i16
  %i.ae = icmp eq i16 %i.ad, 0
  br i1 %i.ae, label %bb.e, label %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBO_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3geteECs9rVkZwOUgsI_13deltalake_aws.exit, !prof !21

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.af = add i16 %.sroa.06.0.i33.i.i, -1
  %i.ag = and i16 %i.af, %.sroa.06.0.i33.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.ag, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ah = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.ai = add i64 %.sroa.01.0.i.i.i, %i.ah
  br label %bb.c

_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBO_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3geteECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %._crit_edge.i.i, %.lr.ph.i.i
  %i.aj = phi ptr [ %i.z, %.lr.ph.i.i ], [ null, %._crit_edge.i.i ] ; 2 uses
  %.not.i = icmp eq ptr %i.aj, null
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -24
  %.sroa.0.1.i = select i1 %.not.i, ptr null, ptr %i.ak
  %i.al = tail call noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneReECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 24) ; 2 uses
  %i.am = lshr i64 %i.al, 57
  %i.an = trunc nuw nsw i64 %i.am to i8
  %i.ao = insertelement <16 x i8> poison, i8 %i.an, i64 0
  %i.ap = shufflevector <16 x i8> %i.ao, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBO_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3geteECs9rVkZwOUgsI_13deltalake_aws.exit
  %.sroa.9.0.i.i.i6 = phi i64 [ 0, %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBO_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3geteECs9rVkZwOUgsI_13deltalake_aws.exit ], [ %i.bg, %bb.h ]
  %.pn.i.i.i7 = phi i64 [ %i.al, %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBO_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3geteECs9rVkZwOUgsI_13deltalake_aws.exit ], [ %i.bh, %bb.h ]
  %.sroa.01.0.i.i.i8 = and i64 %.pn.i.i.i7, %i.n  ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.01.0.i.i.i8
  %.sroa.0.0.copyload.i26.i.i9 = load <16 x i8>, ptr %i.aq, align 1, !noalias !2029 ; 2 uses
  %i.ar = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i9, %i.ap
  %i.as = bitcast <16 x i1> %i.ar to i16          ; 2 uses
  %.not.i.not32.i.i10 = icmp eq i16 %i.as, 0
  br i1 %.not.i.not32.i.i10, label %._crit_edge.i.i14, label %.lr.ph.i.i11

.lr.ph.i.i11:                                     ; preds = %bb.f, %bb.g
  %.sroa.06.0.i33.i.i12 = phi i16 [ %i.bf, %bb.g ], [ %i.as, %bb.f ] ; 3 uses
  %i.at = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i12, i1 true)
  %i.au = zext nneg i16 %i.at to i64
  %i.av = add i64 %.sroa.01.0.i.i.i8, %i.au
  %i.aw = and i64 %i.av, %i.n
  %i.ax = sub nsw i64 0, %i.aw
  %i.ay = getelementptr inbounds [48 x i8], ptr %i.o, i64 %i.ax ; 2 uses
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 -48
  %i.ba = tail call noundef zeroext i1 @_RNvXCs3gpiEk3WpjL_9hashbrowneINtB2_10EquivalentNtNtCs6Po7BT7Nknu_5alloc6string6StringE10equivalentCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 24, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.az), !noalias !2037
  br i1 %i.ba, label %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBQ_EE4findNCINvNtB8_3map14equivalent_keyeBQ_BQ_E0ECs9rVkZwOUgsI_13deltalake_aws.exit.i15, label %bb.g, !prof !20

._crit_edge.i.i14:                                ; preds = %bb.g, %bb.f
  %i.bb = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i9, splat (i8 -1)
  %i.bc = bitcast <16 x i1> %i.bb to i16
  %i.bd = icmp eq i16 %i.bc, 0
  br i1 %i.bd, label %bb.h, label %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBQ_EE4findNCINvNtB8_3map14equivalent_keyeBQ_BQ_E0ECs9rVkZwOUgsI_13deltalake_aws.exit.i15, !prof !21

bb.g:                                             ; preds = %.lr.ph.i.i11
end_hunk_3
