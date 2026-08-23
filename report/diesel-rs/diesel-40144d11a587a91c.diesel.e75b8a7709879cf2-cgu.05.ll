Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/diesel-40144d11a587a91c.diesel.e75b8a7709879cf2-cgu.05?download=true
inline.NumInlined: 453
inline.NumDeleted: 331
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_3zip3ZipINtNtNtB6_5slice4iter4IterNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8metadata18MysqlFieldMetadataEINtNtB2_5chain5ChainINtNtB2_6copied6CopiedIB1u_INtNtB6_6option6OptionNtNtB21_7backend9MysqlTypeEEEINtNtNtB4_7sources6repeat6RepeatB40_EEENCNvMs0_NtB1Z_4bindNtB5A_11OutputBinds17from_output_types0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB6_5error5ErrorNtNtB6_6marker4SyncNtB87_4SendEL_EEENtNtNtB4_6traits8iterator8Iterator4nextB23_:bb.a
  br i1 %i.g, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4bind8BindDataEEB1o_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.l, %.lr.ph.i.i.i
  %i.k = phi ptr [ %i.e, %.lr.ph.i.i.i ], [ %i.ad, %bb.l ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  store ptr %i.l, ptr %i.b, align 8, !alias.scope !476, !noalias !483
  %i.m = load ptr, ptr %i.h, align 8, !alias.scope !486, !noalias !483, !noundef !4
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter4IterNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8metadata18MysqlFieldMetadataEINtNtB6_5chain5ChainINtNtB6_6copied6CopiedIBW_INtNtBa_6option6OptionNtNtB1t_7backend9MysqlTypeEEEINtNtNtB8_7sources6repeat6RepeatB3r_EEENtNtNtB8_6traits8iterator8Iterator4nextB1v_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = tail call noundef range(i8 -2, 20) i8 @_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterINtNtBa_6option6OptionNtNtNtCsjRvGck33osM_6diesel5mysql7backend9MysqlTypeEEENtNtNtB8_6traits8iterator8Iterator4nextB1T_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h), !noalias !483 ; 2 uses
  %.not3.i.i.i.i.i.i.i = icmp eq i8 %i.n, -2
  br i1 %.not3.i.i.i.i.i.i.i, label %bb.d, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter4IterNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8metadata18MysqlFieldMetadataEINtNtB6_5chain5ChainINtNtB6_6copied6CopiedIBW_INtNtBa_6option6OptionNtNtB1t_7backend9MysqlTypeEEEINtNtNtB8_7sources6repeat6RepeatB3r_EEENtNtNtB8_6traits8iterator8Iterator4nextB1v_.exit.thread15.i.i.i

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.h, align 8, !alias.scope !486, !noalias !483
  br label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter4IterNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8metadata18MysqlFieldMetadataEINtNtB6_5chain5ChainINtNtB6_6copied6CopiedIBW_INtNtBa_6option6OptionNtNtB1t_7backend9MysqlTypeEEEINtNtNtB8_7sources6repeat6RepeatB3r_EEENtNtNtB8_6traits8iterator8Iterator4nextB1v_.exit.i.i.i

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter4IterNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8metadata18MysqlFieldMetadataEINtNtB6_5chain5ChainINtNtB6_6copied6CopiedIBW_INtNtBa_6option6OptionNtNtB1t_7backend9MysqlTypeEEEINtNtNtB8_7sources6repeat6RepeatB3r_EEENtNtNtB8_6traits8iterator8Iterator4nextB1v_.exit.i.i.i: ; preds = %bb.d, %bb.b
  %.val3.i.i.i.i.i.i = load i8, ptr %i.i, align 8, !alias.scope !491, !noalias !483 ; 2 uses
  %.not.i.i.i = icmp eq i8 %.val3.i.i.i.i.i.i, -2
  br i1 %.not.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4bind8BindDataEEB1o_.exit, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter4IterNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8metadata18MysqlFieldMetadataEINtNtB6_5chain5ChainINtNtB6_6copied6CopiedIBW_INtNtBa_6option6OptionNtNtB1t_7backend9MysqlTypeEEEINtNtNtB8_7sources6repeat6RepeatB3r_EEENtNtNtB8_6traits8iterator8Iterator4nextB1v_.exit.thread15.i.i.i

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter4IterNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8metadata18MysqlFieldMetadataEINtNtB6_5chain5ChainINtNtB6_6copied6CopiedIBW_INtNtBa_6option6OptionNtNtB1t_7backend9MysqlTypeEEEINtNtNtB8_7sources6repeat6RepeatB3r_EEENtNtNtB8_6traits8iterator8Iterator4nextB1v_.exit.thread15.i.i.i: ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter4IterNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8metadata18MysqlFieldMetadataEINtNtB6_5chain5ChainINtNtB6_6copied6CopiedIBW_INtNtBa_6option6OptionNtNtB1t_7backend9MysqlTypeEEEINtNtNtB8_7sources6repeat6RepeatB3r_EEENtNtNtB8_6traits8iterator8Iterator4nextB1v_.exit.i.i.i, %bb.c
  %.sroa.2.0.i.i20.i.i.i = phi i8 [ %.val3.i.i.i.i.i.i, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter4IterNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8metadata18MysqlFieldMetadataEINtNtB6_5chain5ChainINtNtB6_6copied6CopiedIBW_INtNtBa_6option6OptionNtNtB1t_7backend9MysqlTypeEEEINtNtNtB8_7sources6repeat6RepeatB3r_EEENtNtNtB8_6traits8iterator8Iterator4nextB1v_.exit.i.i.i ], [ %i.n, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.56.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !492
  call void @_RNvMs6_NtNtNtCsjRvGck33osM_6diesel5mysql10connection4bindNtB5_8BindData10for_output(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, i8 noundef range(i8 -1, 20) %.sroa.2.0.i.i20.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.k), !noalias !493
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.a, align 8, !noalias !496 ; 3 uses
  %.sroa.4.0.copyload.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !496 ; 3 uses
  %.sroa.6.0.copyload.i.i.i.i = load i32, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 4, !noalias !496 ; 3 uses
  %i.o = icmp eq i32 %.sroa.6.0.copyload.i.i.i.i, -1
  br i1 %i.o, label %bb.e, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldTRNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8metadata18MysqlFieldMetadataINtNtBa_6option6OptionNtNtB19_7backend9MysqlTypeEEINtNtBa_6result6ResultNtNtB17_4bind8BindDataINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtBa_5error5ErrorNtNtBa_6marker4SyncNtB4N_4SendEL_EEuINtNtNtBa_3ops12control_flow11ControlFlowIB5m_B3w_EENCNvMs0_B3y_NtB3y_11OutputBinds17from_output_types0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterB11_EINtNtB6_5chain5ChainINtNtB6_6copied6CopiedIB7U_B2m_EEINtNtNtB8_7sources6repeat6RepeatB2m_EEEB6b_EIB3b_NtNtBa_7convert10InfallibleB3S_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBaz_12try_for_each4callB3w_B60_NcNtB60_5Break0E0B60_E0E0B1b_.exit.i.i.i

bb.e:                                             ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter4IterNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8metadata18MysqlFieldMetadataEINtNtB6_5chain5ChainINtNtB6_6copied6CopiedIBW_INtNtBa_6option6OptionNtNtB1t_7backend9MysqlTypeEEEINtNtNtB8_7sources6repeat6RepeatB3r_EEENtNtNtB8_6traits8iterator8Iterator4nextB1v_.exit.thread15.i.i.i
  %.val.i.i.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !471, !noalias !498, !noundef !4 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %.val3.i.i.i.i.i = load ptr, ptr %i.p, align 8, !alias.scope !471, !noalias !498 ; 6 uses
  %i.q = icmp eq ptr %.val.i.i.i.i.i, null
  br i1 %i.q, label %_RINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_3zip3ZipINtNtNtB7_5slice4iter4IterNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8metadata18MysqlFieldMetadataEINtNtB3_5chain5ChainINtNtB3_6copied6CopiedIB1v_INtNtB7_6option6OptionNtNtB22_7backend9MysqlTypeEEEINtNtNtB5_7sources6repeat6RepeatB41_EEENCNvMs0_NtB20_4bindNtB5B_11OutputBinds17from_output_types0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SyncNtB88_4SendEL_EEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB8G_12try_for_each4callNtB5B_8BindDataINtNtNtB7_3ops12control_flow11ControlFlowB9S_ENcNtBa7_5Break0E0Ba7_EB24_.exit.thread24, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3.i.i.i.i.i) ]
  %i.r = load ptr, ptr %.val3.i.i.i.i.i, align 8, !invariant.load !4, !noalias !502 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void %i.r(ptr noundef nonnull %.val.i.i.i.i.i)
          to label %bb.h unwind label %bb.j, !noalias !502

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %.val3.i.i.i.i.i, i64 8
  %i.t = load i64, ptr %i.s, align 8, !range !44, !invariant.load !4, !noalias !502 ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %_RINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_3zip3ZipINtNtNtB7_5slice4iter4IterNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8metadata18MysqlFieldMetadataEINtNtB3_5chain5ChainINtNtB3_6copied6CopiedIB1v_INtNtB7_6option6OptionNtNtB22_7backend9MysqlTypeEEEINtNtNtB5_7sources6repeat6RepeatB41_EEENCNvMs0_NtB20_4bindNtB5B_11OutputBinds17from_output_types0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SyncNtB88_4SendEL_EEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB8G_12try_for_each4callNtB5B_8BindDataINtNtNtB7_3ops12control_flow11ControlFlowB9S_ENcNtBa7_5Break0E0Ba7_EB24_.exit.thread24, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %.val3.i.i.i.i.i, i64 16
  %i.w = load i64, ptr %i.v, align 8, !range !45, !invariant.load !4, !noalias !502
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.t, i64 noundef range(i64 1, 536870913) %i.w) #26, !noalias !502
  br label %_RINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_3zip3ZipINtNtNtB7_5slice4iter4IterNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8metadata18MysqlFieldMetadataEINtNtB3_5chain5ChainINtNtB3_6copied6CopiedIB1v_INtNtB7_6option6OptionNtNtB22_7backend9MysqlTypeEEEINtNtNtB5_7sources6repeat6RepeatB41_EEENCNvMs0_NtB20_4bindNtB5B_11OutputBinds17from_output_types0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SyncNtB88_4SendEL_EEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB8G_12try_for_each4callNtB5B_8BindDataINtNtNtB7_3ops12control_flow11ControlFlowB9S_ENcNtBa7_5Break0E0Ba7_EB24_.exit.thread24

bb.j:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = getelementptr inbounds nuw i8, ptr %.val3.i.i.i.i.i, i64 8
  %i.z = load i64, ptr %i.y, align 8, !range !44, !invariant.load !4, !noalias !502 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.body.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %.val3.i.i.i.i.i, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !45, !invariant.load !4, !noalias !502
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.z, i64 noundef range(i64 1, 536870913) %i.ac) #26, !noalias !502
  br label %.body.i.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %bb.k, %bb.j
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %i.c, align 8, !alias.scope !471, !noalias !498
  store ptr %.sroa.4.0.copyload.i.i.i.i, ptr %i.p, align 8, !alias.scope !471, !noalias !498
  resume { ptr, i32 } %i.x

_RINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_3zip3ZipINtNtNtB7_5slice4iter4IterNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8metadata18MysqlFieldMetadataEINtNtB3_5chain5ChainINtNtB3_6copied6CopiedIB1v_INtNtB7_6option6OptionNtNtB22_7backend9MysqlTypeEEEINtNtNtB5_7sources6repeat6RepeatB41_EEENCNvMs0_NtB20_4bindNtB5B_11OutputBinds17from_output_types0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SyncNtB88_4SendEL_EEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB8G_12try_for_each4callNtB5B_8BindDataINtNtNtB7_3ops12control_flow11ControlFlowB9S_ENcNtBa7_5Break0E0Ba7_EB24_.exit.thread24: ; preds = %bb.e, %bb.h, %bb.i
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %i.c, align 8, !alias.scope !471, !noalias !498
  store ptr %.sroa.4.0.copyload.i.i.i.i, ptr %i.p, align 8, !alias.scope !471, !noalias !498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !492
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.56.i.i.i)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4bind8BindDataEEB1o_.exit

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldTRNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8metadata18MysqlFieldMetadataINtNtBa_6option6OptionNtNtB19_7backend9MysqlTypeEEINtNtBa_6result6ResultNtNtB17_4bind8BindDataINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtBa_5error5ErrorNtNtBa_6marker4SyncNtB4N_4SendEL_EEuINtNtNtBa_3ops12control_flow11ControlFlowIB5m_B3w_EENCNvMs0_B3y_NtB3y_11OutputBinds17from_output_types0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterB11_EINtNtB6_5chain5ChainINtNtB6_6copied6CopiedIB7U_B2m_EEINtNtNtB8_7sources6repeat6RepeatB2m_EEEB6b_EIB3b_NtNtBa_7convert10InfallibleB3S_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBaz_12try_for_each4callB3w_B60_NcNtB60_5Break0E0B60_E0E0B1b_.exit.i.i.i: ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter4IterNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8metadata18MysqlFieldMetadataEINtNtB6_5chain5ChainINtNtB6_6copied6CopiedIBW_INtNtBa_6option6OptionNtNtB1t_7backend9MysqlTypeEEEINtNtNtB8_7sources6repeat6RepeatB3r_EEENtNtNtB8_6traits8iterator8Iterator4nextB1v_.exit.thread15.i.i.i
  %.sroa.7.0.copyload.i.i.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !noalias !496
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.56.i.i.i, ptr noundef nonnull align 8 dereferenceable(12) %i.j, i64 12, i1 false), !noalias !503
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !492
  %.not.i.i.i.i = icmp eq i32 %.sroa.6.0.copyload.i.i.i.i, -2
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldTRNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8metadata18MysqlFieldMetadataINtNtBa_6option6OptionNtNtB19_7backend9MysqlTypeEEINtNtBa_6result6ResultNtNtB17_4bind8BindDataINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtBa_5error5ErrorNtNtBa_6marker4SyncNtB4N_4SendEL_EEuINtNtNtBa_3ops12control_flow11ControlFlowIB5m_B3w_EENCNvMs0_B3y_NtB3y_11OutputBinds17from_output_types0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterB11_EINtNtB6_5chain5ChainINtNtB6_6copied6CopiedIB7U_B2m_EEINtNtNtB8_7sources6repeat6RepeatB2m_EEEB6b_EIB3b_NtNtBa_7convert10InfallibleB3S_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBaz_12try_for_each4callB3w_B60_NcNtB60_5Break0E0B60_E0E0B1b_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.56.i.i.i)
  %i.ad = load ptr, ptr %i.b, align 8, !alias.scope !476, !noalias !483, !nonnull !4, !noundef !4 ; 2 uses
  %i.ae = load ptr, ptr %i.d, align 8, !alias.scope !476, !noalias !483, !nonnull !4, !noundef !4
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4bind8BindDataEEB1o_.exit, label %bb.b

bb.m:                                             ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldTRNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8metadata18MysqlFieldMetadataINtNtBa_6option6OptionNtNtB19_7backend9MysqlTypeEEINtNtBa_6result6ResultNtNtB17_4bind8BindDataINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtBa_5error5ErrorNtNtBa_6marker4SyncNtB4N_4SendEL_EEuINtNtNtBa_3ops12control_flow11ControlFlowIB5m_B3w_EENCNvMs0_B3y_NtB3y_11OutputBinds17from_output_types0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterB11_EINtNtB6_5chain5ChainINtNtB6_6copied6CopiedIB7U_B2m_EEINtNtNtB8_7sources6repeat6RepeatB2m_EEEB6b_EIB3b_NtNtBa_7convert10InfallibleB3S_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBaz_12try_for_each4callB3w_B60_NcNtB60_5Break0E0B60_E0E0B1b_.exit.i.i.i
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.512.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.56.i.i.i, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.56.i.i.i)
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %0, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.4.0.copyload.i.i.i.i, ptr %.sroa.411.0..sroa_idx, align 8
  %.sroa.613.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.sroa.6.0.copyload.i.i.i.i, ptr %.sroa.613.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.7.0.copyload.i.i.i.i, ptr %.sroa.7.0..sroa_idx, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4bind8BindDataEEB1o_.exit
  ret void

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4bind8BindDataEEB1o_.exit: ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter4IterNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8metadata18MysqlFieldMetadataEINtNtB6_5chain5ChainINtNtB6_6copied6CopiedIBW_INtNtBa_6option6OptionNtNtB1t_7backend9MysqlTypeEEEINtNtNtB8_7sources6repeat6RepeatB3r_EEENtNtNtB8_6traits8iterator8Iterator4nextB1v_.exit.i.i.i, %bb.l, %bb.a, %_RINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_3zip3ZipINtNtNtB7_5slice4iter4IterNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8metadata18MysqlFieldMetadataEINtNtB3_5chain5ChainINtNtB3_6copied6CopiedIB1v_INtNtB7_6option6OptionNtNtB22_7backend9MysqlTypeEEEINtNtNtB5_7sources6repeat6RepeatB41_EEENCNvMs0_NtB20_4bindNtB5B_11OutputBinds17from_output_types0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SyncNtB88_4SendEL_EEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB8G_12try_for_each4callNtB5B_8BindDataINtNtNtB7_3ops12control_flow11ControlFlowB9S_ENcNtBa7_5Break0E0Ba7_EB24_.exit.thread24
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 -1, ptr %i.ag, align 4
  br label %bb.n
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_3zip3ZipINtNtNtB6_5slice4iter4IterNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8metadata18MysqlFieldMetadataEINtNtB2_5chain5ChainINtNtB2_6copied6CopiedIB1u_INtNtB6_6option6OptionNtNtB21_7backend9MysqlTypeEEEINtNtNtB4_7sources6repeat6RepeatB40_EEENCNvMs0_NtB1Z_4bindNtB5A_11OutputBinds17from_output_types0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB6_5error5ErrorNtNtB6_6marker4SyncNtB87_4SendEL_EEENtNtNtB4_6traits8iterator8Iterator9size_hintB23_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = load ptr, ptr %1, align 8, !nonnull !4, !align !80, !noundef !4
  %i.d = load ptr, ptr %i.c, align 8, !noundef !4
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !504)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !507)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !510)
  %.val.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !513, !noalias !514, !nonnull !4, !noundef !4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val14.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !513, !noalias !514, !nonnull !4, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !518
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !519)
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !522, !noalias !523, !noundef !4
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.j = load i8, ptr %i.i, align 8, !range !525, !alias.scope !522, !noalias !523, !noundef !4
  %.not8.i.i.i.i = icmp eq i8 %i.j, -2            ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %.not8.i.i.i.i, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8metadata18MysqlFieldMetadataEINtNtB7_5chain5ChainINtNtB7_6copied6CopiedIB1d_INtNtBb_6option6OptionNtNtB1K_7backend9MysqlTypeEEEINtNtNtB9_7sources6repeat6RepeatB3J_EEENCNvMs0_NtB1I_4bindNtB5j_11OutputBinds17from_output_types0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1M_.exit, label %bb.e

bb.d:                                             ; preds = %bb.b
  br i1 %.not8.i.i.i.i, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8metadata18MysqlFieldMetadataEINtNtB7_5chain5ChainINtNtB7_6copied6CopiedIB1d_INtNtBb_6option6OptionNtNtB1K_7backend9MysqlTypeEEEINtNtNtB9_7sources6repeat6RepeatB3J_EEENCNvMs0_NtB1I_4bindNtB5j_11OutputBinds17from_output_types0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1M_.exit.thread3, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8metadata18MysqlFieldMetadataEINtNtB7_5chain5ChainINtNtB7_6copied6CopiedIB1d_INtNtBb_6option6OptionNtNtB1K_7backend9MysqlTypeEEEINtNtNtB9_7sources6repeat6RepeatB3J_EEENCNvMs0_NtB1I_4bindNtB5j_11OutputBinds17from_output_types0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1M_.exit.thread

_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8metadata18MysqlFieldMetadataEINtNtB7_5chain5ChainINtNtB7_6copied6CopiedIB1d_INtNtBb_6option6OptionNtNtB1K_7backend9MysqlTypeEEEINtNtNtB9_7sources6repeat6RepeatB3J_EEENCNvMs0_NtB1I_4bindNtB5j_11OutputBinds17from_output_types0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1M_.exit.thread3: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !518
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !526
  call void @_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterINtNtBa_6option6OptionNtNtNtCsjRvGck33osM_6diesel5mysql7backend9MysqlTypeEEENtNtNtB8_6traits8iterator8Iterator9size_hintB1T_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g), !noalias !523
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !526
  br label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8metadata18MysqlFieldMetadataEINtNtB7_5chain5ChainINtNtB7_6copied6CopiedIB1d_INtNtBb_6option6OptionNtNtB1K_7backend9MysqlTypeEEEINtNtNtB9_7sources6repeat6RepeatB3J_EEENCNvMs0_NtB1I_4bindNtB5j_11OutputBinds17from_output_types0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1M_.exit.thread

_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8metadata18MysqlFieldMetadataEINtNtB7_5chain5ChainINtNtB7_6copied6CopiedIB1d_INtNtBb_6option6OptionNtNtB1K_7backend9MysqlTypeEEEINtNtNtB9_7sources6repeat6RepeatB3J_EEENCNvMs0_NtB1I_4bindNtB5j_11OutputBinds17from_output_types0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1M_.exit.thread: ; preds = %bb.e, %bb.d
  %i.k = ptrtoint ptr %.val14.i.i.i to i64
  %i.l = ptrtoint ptr %.val.i.i.i to i64
  %i.m = sub nuw i64 %i.k, %i.l
  %i.n = lshr exact i64 %i.m, 7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !518
  br label %bb.f

_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8metadata18MysqlFieldMetadataEINtNtB7_5chain5ChainINtNtB7_6copied6CopiedIB1d_INtNtBb_6option6OptionNtNtB1K_7backend9MysqlTypeEEEINtNtNtB9_7sources6repeat6RepeatB3J_EEENCNvMs0_NtB1I_4bindNtB5j_11OutputBinds17from_output_types0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1M_.exit: ; preds = %bb.c
  call void @_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterINtNtBa_6option6OptionNtNtNtCsjRvGck33osM_6diesel5mysql7backend9MysqlTypeEEENtNtNtB8_6traits8iterator8Iterator9size_hintB1T_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g), !noalias !514
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre16.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !range !5, !noalias !518
  %.pre16.fr.i.i.i = freeze i64 %.pre16.i.i.i
  %i.o = trunc i64 %.pre16.fr.i.i.i to i1
  %i.p = ptrtoint ptr %.val14.i.i.i to i64
  %i.q = ptrtoint ptr %.val.i.i.i to i64
  %i.r = sub nuw i64 %i.p, %i.q
  %i.s = lshr exact i64 %i.r, 7                   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.u = load i64, ptr %i.t, align 8, !noalias !518
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !518
  br i1 %i.o, label %2, label %bb.f

2:                                                ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8metadata18MysqlFieldMetadataEINtNtB7_5chain5ChainINtNtB7_6copied6CopiedIB1d_INtNtBb_6option6OptionNtNtB1K_7backend9MysqlTypeEEEINtNtNtB9_7sources6repeat6RepeatB3J_EEENCNvMs0_NtB1I_4bindNtB5j_11OutputBinds17from_output_types0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1M_.exit
  %.sroa.0.0.i15.i.i.i = call i64 @llvm.umin.i64(i64 %i.u, i64 %i.s)
  br label %bb.f

bb.f:                                             ; preds = %2, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8metadata18MysqlFieldMetadataEINtNtB7_5chain5ChainINtNtB7_6copied6CopiedIB1d_INtNtBb_6option6OptionNtNtB1K_7backend9MysqlTypeEEEINtNtNtB9_7sources6repeat6RepeatB3J_EEENCNvMs0_NtB1I_4bindNtB5j_11OutputBinds17from_output_types0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1M_.exit, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8metadata18MysqlFieldMetadataEINtNtB7_5chain5ChainINtNtB7_6copied6CopiedIB1d_INtNtBb_6option6OptionNtNtB1K_7backend9MysqlTypeEEEINtNtNtB9_7sources6repeat6RepeatB3J_EEENCNvMs0_NtB1I_4bindNtB5j_11OutputBinds17from_output_types0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1M_.exit.thread, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8metadata18MysqlFieldMetadataEINtNtB7_5chain5ChainINtNtB7_6copied6CopiedIB1d_INtNtBb_6option6OptionNtNtB1K_7backend9MysqlTypeEEEINtNtNtB9_7sources6repeat6RepeatB3J_EEENCNvMs0_NtB1I_4bindNtB5j_11OutputBinds17from_output_types0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1M_.exit.thread3, %bb.a
  %.sink = phi i64 [ 0, %bb.a ], [ %i.n, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8metadata18MysqlFieldMetadataEINtNtB7_5chain5ChainINtNtB7_6copied6CopiedIB1d_INtNtBb_6option6OptionNtNtB1K_7backend9MysqlTypeEEEINtNtNtB9_7sources6repeat6RepeatB3J_EEENCNvMs0_NtB1I_4bindNtB5j_11OutputBinds17from_output_types0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1M_.exit.thread ], [ %i.s, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8metadata18MysqlFieldMetadataEINtNtB7_5chain5ChainINtNtB7_6copied6CopiedIB1d_INtNtBb_6option6OptionNtNtB1K_7backend9MysqlTypeEEEINtNtNtB9_7sources6repeat6RepeatB3J_EEENCNvMs0_NtB1I_4bindNtB5j_11OutputBinds17from_output_types0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1M_.exit ], [ 0, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8metadata18MysqlFieldMetadataEINtNtB7_5chain5ChainINtNtB7_6copied6CopiedIB1d_INtNtBb_6option6OptionNtNtB1K_7backend9MysqlTypeEEEINtNtNtB9_7sources6repeat6RepeatB3J_EEENCNvMs0_NtB1I_4bindNtB5j_11OutputBinds17from_output_types0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1M_.exit.thread3 ], [ %.sroa.0.0.i15.i.i.i, %2 ]
  store i64 0, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.w, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define hidden { i32, i32 } @_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterINtNtB6_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VechEEENCNvMNtNtNtCsjRvGck33osM_6diesel2pg10connection4stmtNtB2F_9Statement7executes_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtNtB6_3num5error15TryFromIntErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2L_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !527)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !527, !nonnull !4, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !530)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !533)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !535)
  %i.c = load ptr, ptr %0, align 8, !alias.scope !538, !noalias !533, !nonnull !4, !noundef !4 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !538, !noalias !533, !nonnull !4, !noundef !4
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %_RINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterINtNtB7_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VechEEENCNvMNtNtNtCsjRvGck33osM_6diesel2pg10connection4stmtNtB2G_9Statement7executes_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtNtB7_3num5error15TryFromIntErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5i_12try_for_each4calllINtNtNtB7_3ops12control_flow11ControlFlowlENcNtB6v_5Break0E0B6v_EB2M_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.g, ptr %0, align 8, !alias.scope !538, !noalias !533
  %.val9.i.i.i = load i64, ptr %i.c, align 8, !range !3, !noalias !541, !noundef !4
  %.not.i.i.i.i.i = icmp eq i64 %.val9.i.i.i, -1
  br i1 %.not.i.i.i.i.i, label %bb.d, label %_RNCNvMNtNtNtCsjRvGck33osM_6diesel2pg10connection4stmtNtB4_9Statement7executes_0Ba_.exit.i.i.i.i

_RNCNvMNtNtNtCsjRvGck33osM_6diesel2pg10connection4stmtNtB4_9Statement7executes_0Ba_.exit.i.i.i.i: ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.c, i64 16
  %.val10.i.i.i = load i64, ptr %i.h, align 8, !noalias !541 ; 3 uses
  %i.i = icmp sgt i64 %.val10.i.i.i, -1
  tail call void @llvm.assume(i1 %i.i)
  %i.j = icmp samesign ugt i64 %.val10.i.i.i, 2147483647
  %i.k = shl nuw nsw i64 %.val10.i.i.i, 32
  %i.l = select i1 %i.j, i64 513, i64 %i.k        ; 2 uses
  %i.m = trunc i64 %i.l to i1
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RNCNvMNtNtNtCsjRvGck33osM_6diesel2pg10connection4stmtNtB4_9Statement7executes_0Ba_.exit.i.i.i.i
  store i8 2, ptr %i.b, align 1, !alias.scope !533, !noalias !542
  br label %_RINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterINtNtB7_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VechEEENCNvMNtNtNtCsjRvGck33osM_6diesel2pg10connection4stmtNtB2G_9Statement7executes_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtNtB7_3num5error15TryFromIntErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5i_12try_for_each4calllINtNtNtB7_3ops12control_flow11ControlFlowlENcNtB6v_5Break0E0B6v_EB2M_.exit.thread

bb.d:                                             ; preds = %_RNCNvMNtNtNtCsjRvGck33osM_6diesel2pg10connection4stmtNtB4_9Statement7executes_0Ba_.exit.i.i.i.i, %bb.b
  %.sroa.0.0.insert.insert.i2.i.i.i.i = phi i64 [ %i.l, %_RNCNvMNtNtNtCsjRvGck33osM_6diesel2pg10connection4stmtNtB4_9Statement7executes_0Ba_.exit.i.i.i.i ], [ 512, %bb.b ]
  %.sroa.617.0.extract.shift.i.i.i.i.i = lshr i64 %.sroa.0.0.insert.insert.i2.i.i.i.i, 32
  %.sroa.617.0.extract.trunc.i.i.i.i.i = trunc nuw nsw i64 %.sroa.617.0.extract.shift.i.i.i.i.i to i32
  br label %_RINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterINtNtB7_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VechEEENCNvMNtNtNtCsjRvGck33osM_6diesel2pg10connection4stmtNtB2G_9Statement7executes_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtNtB7_3num5error15TryFromIntErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5i_12try_for_each4calllINtNtNtB7_3ops12control_flow11ControlFlowlENcNtB6v_5Break0E0B6v_EB2M_.exit.thread

_RINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterINtNtB7_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VechEEENCNvMNtNtNtCsjRvGck33osM_6diesel2pg10connection4stmtNtB2G_9Statement7executes_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtNtB7_3num5error15TryFromIntErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5i_12try_for_each4calllINtNtNtB7_3ops12control_flow11ControlFlowlENcNtB6v_5Break0E0B6v_EB2M_.exit.thread: ; preds = %bb.a, %bb.c, %bb.d
  %.sroa.0.0.i6 = phi i32 [ 1, %bb.d ], [ 0, %bb.c ], [ 0, %bb.a ]
  %i.n = phi i32 [ %.sroa.617.0.extract.trunc.i.i.i.i.i, %bb.d ], [ undef, %bb.c ], [ undef, %bb.a ]
  %i.o = insertvalue { i32, i32 } poison, i32 %.sroa.0.0.i6, 0
  %i.p = insertvalue { i32, i32 } %i.o, i32 %i.n, 1
  ret { i32, i32 } %i.p
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterINtNtB6_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VechEEENCNvMNtNtNtCsjRvGck33osM_6diesel2pg10connection4stmtNtB2F_9Statement7executes_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtNtB6_3num5error15TryFromIntErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2L_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = load i8, ptr %i.b, align 1, !range !433, !noundef !4
  %.not = icmp eq i8 %i.c, -1
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4
  %i.e = ptrtoint ptr %.val1 to i64
  %i.f = ptrtoint ptr %.val to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = udiv exact i64 %i.g, 24
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ]
  store i64 0, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.j, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtNtCsjRvGck33osM_6diesel2pg7backend14PgTypeMetadataENCNvMNtNtB1H_10connection4stmtNtB2B_9Statement7prepare0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtB1F_23FailedToLookupTypeErrorEENtNtNtB4_6traits8iterator8Iterator4nextB1J_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !543)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !543, !nonnull !4, !align !80, !noundef !4 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !546)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !549)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !551)
  %i.d = load ptr, ptr %0, align 8, !alias.scope !554, !noalias !549, !nonnull !4, !noundef !4 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !554, !noalias !549, !nonnull !4, !noundef !4
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %_RINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtNtCsjRvGck33osM_6diesel2pg7backend14PgTypeMetadataENCNvMNtNtB1I_10connection4stmtNtB2C_9Statement7prepare0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtB1G_23FailedToLookupTypeErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4L_12try_for_each4callmINtNtNtB7_3ops12control_flow11ControlFlowmENcNtB5Y_5Break0E0B5Y_EB1K_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.h, ptr %0, align 8, !alias.scope !554, !noalias !549
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !557
  call void @_RNvMs2_NtNtCsjRvGck33osM_6diesel2pg7backendNtB5_14PgTypeMetadata3oid(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d), !noalias !560
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.a, align 8, !noalias !557 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.4.0.copyload.i.i.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 4, !noalias !557
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0.copyload.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !557 ; 3 uses
  %i.i = trunc nuw i32 %.sroa.0.0.copyload.i.i.i.i to i1
  br i1 %i.i, label %bb.c, label %_RINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtNtCsjRvGck33osM_6diesel2pg7backend14PgTypeMetadataENCNvMNtNtB1I_10connection4stmtNtB2C_9Statement7prepare0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtB1G_23FailedToLookupTypeErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4L_12try_for_each4callmINtNtNtB7_3ops12control_flow11ControlFlowmENcNtB5Y_5Break0E0B5Y_EB1K_.exit.thread.sink.split

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i.i.i) ]
  %i.j = load ptr, ptr %i.c, align 8, !alias.scope !561, !noalias !564, !align !80, !noundef !4
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_RINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtNtCsjRvGck33osM_6diesel2pg7backend14PgTypeMetadataENCNvMNtNtB1I_10connection4stmtNtB2C_9Statement7prepare0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtB1G_23FailedToLookupTypeErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4L_12try_for_each4callmINtNtNtB7_3ops12control_flow11ControlFlowmENcNtB5Y_5Break0E0B5Y_EB1K_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjRvGck33osM_6diesel2pg7backend23FailedToLookupTypeErrorEBH_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.c)
          to label %_RINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtNtCsjRvGck33osM_6diesel2pg7backend14PgTypeMetadataENCNvMNtNtB1I_10connection4stmtNtB2C_9Statement7prepare0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtB1G_23FailedToLookupTypeErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4L_12try_for_each4callmINtNtNtB7_3ops12control_flow11ControlFlowmENcNtB5Y_5Break0E0B5Y_EB1K_.exit unwind label %bb.e, !noalias !567

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.5.0.copyload.i.i.i.i, ptr %i.c, align 8, !alias.scope !549, !noalias !564
  resume { ptr, i32 } %i.l

_RINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtNtCsjRvGck33osM_6diesel2pg7backend14PgTypeMetadataENCNvMNtNtB1I_10connection4stmtNtB2C_9Statement7prepare0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtB1G_23FailedToLookupTypeErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4L_12try_for_each4callmINtNtNtB7_3ops12control_flow11ControlFlowmENcNtB5Y_5Break0E0B5Y_EB1K_.exit: ; preds = %bb.c, %bb.d
  store ptr %.sroa.5.0.copyload.i.i.i.i, ptr %i.c, align 8, !alias.scope !549, !noalias !564
  br label %_RINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtNtCsjRvGck33osM_6diesel2pg7backend14PgTypeMetadataENCNvMNtNtB1I_10connection4stmtNtB2C_9Statement7prepare0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtB1G_23FailedToLookupTypeErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4L_12try_for_each4callmINtNtNtB7_3ops12control_flow11ControlFlowmENcNtB5Y_5Break0E0B5Y_EB1K_.exit.thread.sink.split

_RINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtNtCsjRvGck33osM_6diesel2pg7backend14PgTypeMetadataENCNvMNtNtB1I_10connection4stmtNtB2C_9Statement7prepare0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtB1G_23FailedToLookupTypeErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4L_12try_for_each4callmINtNtNtB7_3ops12control_flow11ControlFlowmENcNtB5Y_5Break0E0B5Y_EB1K_.exit.thread.sink.split: ; preds = %bb.b, %_RINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtNtCsjRvGck33osM_6diesel2pg7backend14PgTypeMetadataENCNvMNtNtB1I_10connection4stmtNtB2C_9Statement7prepare0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtB1G_23FailedToLookupTypeErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4L_12try_for_each4callmINtNtNtB7_3ops12control_flow11ControlFlowmENcNtB5Y_5Break0E0B5Y_EB1K_.exit
  %.ph = phi i32 [ undef, %_RINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtNtCsjRvGck33osM_6diesel2pg7backend14PgTypeMetadataENCNvMNtNtB1I_10connection4stmtNtB2C_9Statement7prepare0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtB1G_23FailedToLookupTypeErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4L_12try_for_each4callmINtNtNtB7_3ops12control_flow11ControlFlowmENcNtB5Y_5Break0E0B5Y_EB1K_.exit ], [ %.sroa.4.0.copyload.i.i.i.i, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !557
  %.sroa.0.0.i6.ph = and i32 %.sroa.0.0.copyload.i.i.i.i, 1
  %i.m = xor i32 %.sroa.0.0.i6.ph, 1
  br label %_RINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtNtCsjRvGck33osM_6diesel2pg7backend14PgTypeMetadataENCNvMNtNtB1I_10connection4stmtNtB2C_9Statement7prepare0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtB1G_23FailedToLookupTypeErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4L_12try_for_each4callmINtNtNtB7_3ops12control_flow11ControlFlowmENcNtB5Y_5Break0E0B5Y_EB1K_.exit.thread

_RINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtNtCsjRvGck33osM_6diesel2pg7backend14PgTypeMetadataENCNvMNtNtB1I_10connection4stmtNtB2C_9Statement7prepare0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtB1G_23FailedToLookupTypeErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4L_12try_for_each4callmINtNtNtB7_3ops12control_flow11ControlFlowmENcNtB5Y_5Break0E0B5Y_EB1K_.exit.thread: ; preds = %_RINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtNtCsjRvGck33osM_6diesel2pg7backend14PgTypeMetadataENCNvMNtNtB1I_10connection4stmtNtB2C_9Statement7prepare0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtB1G_23FailedToLookupTypeErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4L_12try_for_each4callmINtNtNtB7_3ops12control_flow11ControlFlowmENcNtB5Y_5Break0E0B5Y_EB1K_.exit.thread.sink.split, %bb.a
  %.sroa.0.0.i6 = phi i32 [ 0, %bb.a ], [ %i.m, %_RINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtNtCsjRvGck33osM_6diesel2pg7backend14PgTypeMetadataENCNvMNtNtB1I_10connection4stmtNtB2C_9Statement7prepare0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtB1G_23FailedToLookupTypeErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4L_12try_for_each4callmINtNtNtB7_3ops12control_flow11ControlFlowmENcNtB5Y_5Break0E0B5Y_EB1K_.exit.thread.sink.split ]
  %i.n = phi i32 [ undef, %bb.a ], [ %.ph, %_RINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtNtCsjRvGck33osM_6diesel2pg7backend14PgTypeMetadataENCNvMNtNtB1I_10connection4stmtNtB2C_9Statement7prepare0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtB1G_23FailedToLookupTypeErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4L_12try_for_each4callmINtNtNtB7_3ops12control_flow11ControlFlowmENcNtB5Y_5Break0E0B5Y_EB1K_.exit.thread.sink.split ]
  %i.o = insertvalue { i32, i32 } poison, i32 %.sroa.0.0.i6, 0
  %i.p = insertvalue { i32, i32 } %i.o, i32 %i.n, 1
  ret { i32, i32 } %i.p
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtNtCsjRvGck33osM_6diesel2pg7backend14PgTypeMetadataENCNvMNtNtB1H_10connection4stmtNtB2B_9Statement7prepare0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtB1F_23FailedToLookupTypeErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB1J_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !align !80, !noundef !4
  %i.c = load ptr, ptr %i.b, align 8, !align !80, !noundef !4
  %.not = icmp eq ptr %i.c, null
  %.val = load ptr, ptr %1, align 8, !nonnull !4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !4
  %i.e = ptrtoint ptr %.val1 to i64
  %i.f = ptrtoint ptr %.val to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 4
  %.sink = select i1 %.not, i64 %i.h, i64 0
  store i64 0, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.j, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvXs0_NtNtNtCsjRvGck33osM_6diesel2pg10connection3rowNtB5_5PgRowINtNtBb_3row3RowNtNtB9_7backend2PgE11field_count(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = tail call noundef i64 @_RNvMNtNtNtCsjRvGck33osM_6diesel2pg10connection6resultNtB2_8PgResult12column_count(ptr noundef nonnull align 8 %i.b)
  ret i64 %i.c
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtNtCsjRvGck33osM_6diesel2pg10connection3rowNtB5_5PgRowINtNtBb_3row3RowNtNtB9_7backend2PgE11partial_row(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  tail call void @_RINvMNtNtCsjRvGck33osM_6diesel3row7privateINtB3_10PartialRowNtNtNtNtB7_2pg10connection3row5PgRowE3newNtNtB12_7backend2PgEB7_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, i64 noundef %2, i64 noundef %3)
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvXs1_NtNtNtCsjRvGck33osM_6diesel2pg10connection3rowNtB5_5PgRowINtNtBb_3row8RowIndexjE3idx(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !568)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !568, !nonnull !4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = tail call noundef i64 @_RNvMNtNtNtCsjRvGck33osM_6diesel2pg10connection6resultNtB2_8PgResult12column_count(ptr noundef nonnull align 8 %i.b), !noalias !568
  %i.d = icmp ult i64 %1, %i.c
  %. = zext i1 %i.d to i64
end_hunk_0
