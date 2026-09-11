Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/diesel-ab2aac80bfe783bd.diesel.1982d20ac86e90f0-cgu.01?download=true
inline.NumInlined: 1777
inline.NumDeleted: 615
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtNtCs40k4W9msRzi_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtCscI6d9CVNmLh_4core4iter8adapters12GenericShuntINtNtB19_3map3MapINtNtB4_9into_iter8IntoIterNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionENCINvYINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness17HarnessWithOutputNtNtCs2bNgeUs5Jlc_6diesel8database15InferConnectionNtNtNtCsgczF5crJ4sT_3std2io5stdio6StdoutEINtB3H_16MigrationHarnessNtNtNtB4U_21multi_connection_impl7backend12MultiBackendE21revert_all_migrationsNtNtB3J_21file_based_migrations19FileBasedMigrationsEs_0EINtNtB1d_6result6ResultNtNtB1d_7convert10InfallibleINtNtB6_5boxed3BoxDNtNtB1d_5error5ErrorNtNtB1d_6marker4SyncNtBar_4SendEL_EEEB2G_EB4W_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.o, align 8
  invoke void @_RNvMs0_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionE32forget_allocation_drop_remainingCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionB1L_EECs2bNgeUs5Jlc_6diesel(ptr noalias noundef align 8 dereferenceable(24) %i.a) #33
          to label %bb.b unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  store i64 %i.c, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.r, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(56) %1)
  ret void

bb.g:                                             ; preds = %bb.b, %bb.e
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionENCINvYINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness17HarnessWithOutputNtNtCs2bNgeUs5Jlc_6diesel8database15InferConnectionNtNtNtCsgczF5crJ4sT_3std2io5stdio6StdoutEINtB3i_16MigrationHarnessNtNtNtB4v_21multi_connection_impl7backend12MultiBackendE21revert_all_migrationsNtNtB3k_21file_based_migrations19FileBasedMigrationsEs_0EINtNtB4_6result6ResultNtNtB4_7convert10InfallibleINtNtB1A_5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtBa0_4SendEL_EEEEB4x_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs40k4W9msRzi_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtCscI6d9CVNmLh_4core4iter8adapters12GenericShuntINtNtB19_3map3MapINtNtB4_9into_iter8IntoIterNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionENCNCINvNtCs2bNgeUs5Jlc_6diesel10migrations15redo_migrationsNtNtB3H_8database15InferConnectionNtNtNtB4x_21multi_connection_impl7backend12MultiBackendEs0_0s0_0EINtNtB1d_6result6ResultNtNtB1d_7convert10InfallibleNtNtCskLp0vI1JK7v_17diesel_migrations6errors14MigrationErrorEEINtNtB6_5boxed3BoxDINtB2I_9MigrationB53_EEL_EEB3H_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !12 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !12, !noundef !12 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !12
  %i.g = mul i64 %i.c, 24                         ; 5 uses
  %i.h = invoke { ptr, ptr } @_RINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionENCNCINvNtCs2bNgeUs5Jlc_6diesel10migrations15redo_migrationsNtNtB33_8database15InferConnectionNtNtNtB3T_21multi_connection_impl7backend12MultiBackendEs0_0s0_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtCskLp0vI1JK7v_17diesel_migrations6errors14MigrationErrorEENtNtNtB5_6traits8iterator8Iterator8try_foldINtNtB1j_13in_place_drop11InPlaceDropINtNtB1l_5boxed3BoxDINtB24_9MigrationB4p_EEL_EENCINvNtB1j_16in_place_collect24write_in_place_with_dropB8x_E0IB5t_B7W_zEEB33_(ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.q, %bb.e ], [ %i.i, %bb.c ]
  invoke void @_RNvXse_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(48) %1)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionENCNCINvNtCs2bNgeUs5Jlc_6diesel10migrations15redo_migrationsNtNtB3i_8database15InferConnectionNtNtNtB48_21multi_connection_impl7backend12MultiBackendEs0_0s0_0EINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCskLp0vI1JK7v_17diesel_migrations6errors14MigrationErrorEEEB3i_.exit unwind label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.j = extractvalue { ptr, ptr } %i.h, 1
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.d to i64
  %i.m = sub nuw i64 %i.k, %i.l
  %i.n = lshr exact i64 %i.m, 4                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.n, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.p, align 8
  invoke void @_RNvMs0_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionE32forget_allocation_drop_remainingCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.j, %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionINtNtBI_5boxed3BoxDINtB1N_9MigrationNtNtNtNtCs2bNgeUs5Jlc_6diesel8database21multi_connection_impl7backend12MultiBackendEEL_EEEB3k_(ptr noalias noundef align 8 dereferenceable(24) %i.a) #33
          to label %bb.b unwind label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.r = and i64 %i.g, 8
  %.not = icmp eq i64 %i.r, 0
  br i1 %.not, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.h, %bb.i, %bb.f
  %.sroa.03.0 = phi ptr [ %i.d, %bb.f ], [ %i.x, %bb.i ], [ inttoptr (i64 8 to ptr), %bb.h ]
  %i.s = lshr i64 %i.g, 4
  store i64 %i.s, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.n, ptr %i.u, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(48) %1)
  ret void

bb.g:                                             ; preds = %bb.f
  %i.v = and i64 %i.g, -16                        ; 3 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8) #35
  br label %.thread

bb.i:                                             ; preds = %bb.g
  %i.x = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc14___rust_realloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8, i64 noundef %i.v) #35 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.j, label %.thread, !prof !37

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.v) #36
          to label %bb.k unwind label %bb.e

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.b, %bb.e
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionENCNCINvNtCs2bNgeUs5Jlc_6diesel10migrations15redo_migrationsNtNtB3i_8database15InferConnectionNtNtNtB48_21multi_connection_impl7backend12MultiBackendEs0_0s0_0EINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCskLp0vI1JK7v_17diesel_migrations6errors14MigrationErrorEEEB3i_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs40k4W9msRzi_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtCscI6d9CVNmLh_4core4iter8adapters12GenericShuntINtNtB19_3map3MapINtNtB4_9into_iter8IntoIterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameENCNvNtB2K_6sqlite28load_foreign_key_constraints0EINtNtB1d_6result6ResultNtNtB1d_7convert10InfallibleNtNtCsjRvGck33osM_6diesel6result5ErrorEEINtB4_3VecNtNtB2K_15data_structures20ForeignKeyConstraintEEB2M_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !12 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !12, !noundef !12 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !12
  %i.g = invoke { ptr, ptr } @_RINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameENCNvNtB26_6sqlite28load_foreign_key_constraints0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtCsjRvGck33osM_6diesel6result5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_foldINtNtB1j_13in_place_drop11InPlaceDropINtB1j_3VecNtNtB26_15data_structures20ForeignKeyConstraintEENCINvNtB1j_16in_place_collect24write_in_place_with_dropB6K_E0IB42_B69_zEEB28_(ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.h, %bb.c ]
  invoke void @_RNvXse_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropB12_(ptr noalias noundef nonnull align 8 dereferenceable(48) %1)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameENCNvNtB2l_6sqlite28load_foreign_key_constraints0EINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjRvGck33osM_6diesel6result5ErrorEEEB2n_.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, ptr } %i.g, 1
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub nuw i64 %i.j, %i.k
  %i.m = udiv exact i64 %i.l, 24                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.o, align 8
  invoke void @_RNvMs0_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameE32forget_allocation_drop_remainingB12_(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameINtBG_3VecNtNtB1P_15data_structures20ForeignKeyConstraintEEEB1R_(ptr noalias noundef align 8 dereferenceable(24) %i.a) #33
          to label %bb.b unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.q = mul nuw i64 %i.c, 3
  store i64 %i.q, ptr %0, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.s, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropB12_(ptr noalias noundef nonnull align 8 dereferenceable(48) %1)
  ret void

bb.g:                                             ; preds = %bb.b, %bb.e
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameENCNvNtB2l_6sqlite28load_foreign_key_constraints0EINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjRvGck33osM_6diesel6result5ErrorEEEB2n_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs40k4W9msRzi_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtCscI6d9CVNmLh_4core4iter8adapters12GenericShuntINtNtB19_3map3MapINtNtB4_9into_iter8IntoIterNtNvNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals2pg14get_table_data3RowENCB2I_0EINtNtB1d_6result6ResultNtNtB1d_7convert10InfallibleNtNtCsjRvGck33osM_6diesel6result5ErrorEENtNtB2M_15data_structures17ColumnInformationEB2O_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !12 ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !12, !noundef !12 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !12
  %i.g = mul i64 %i.c, 176                        ; 6 uses
  %i.h = udiv i64 %i.g, 120                       ; 2 uses
  %i.i = invoke { ptr, ptr } @_RINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNvNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals2pg14get_table_data3RowENCB24_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtCsjRvGck33osM_6diesel6result5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_foldINtNtB1j_13in_place_drop11InPlaceDropNtNtB28_15data_structures17ColumnInformationENCINvNtB1j_16in_place_collect24write_in_place_with_dropB68_E0IB3q_B5x_zEEB2a_(ptr noalias noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.j, %bb.c ]
  invoke void @_RNvXse_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNvNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals2pg14get_table_data3RowENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropB14_(ptr noalias noundef nonnull align 8 dereferenceable(56) %1)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNvNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals2pg14get_table_data3RowENCB2j_0EINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjRvGck33osM_6diesel6result5ErrorEEEB2p_.exit unwind label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.k = extractvalue { ptr, ptr } %i.i, 1
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.d to i64
  %i.n = sub nuw i64 %i.l, %i.m
  %i.o = udiv exact i64 %i.n, 120                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.o, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.q, align 8
  invoke void @_RNvMs0_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNvNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals2pg14get_table_data3RowE32forget_allocation_drop_remainingB14_(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.j, %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNvNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals2pg14get_table_data3RowNtNtB1R_15data_structures17ColumnInformationEEB1T_(ptr noalias noundef align 8 dereferenceable(24) %i.a) #33
          to label %bb.b unwind label %bb.l

bb.f:                                             ; preds = %bb.d
  %.not.i = icmp ne i64 %i.c, 0
  %i.s = mul nuw i64 %i.h, 120                    ; 4 uses
  %i.t = icmp ne i64 %i.g, %i.s
  %or.cond = select i1 %.not.i, i1 %i.t, i1 false
  br i1 %or.cond, label %bb.g, label %_RINvNtNtCs40k4W9msRzi_5alloc3vec16in_place_collect13needs_reallocNtNvNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals2pg14get_table_data3RowNtNtB17_15data_structures17ColumnInformationEB19_.exit.thread

_RINvNtNtCs40k4W9msRzi_5alloc3vec16in_place_collect13needs_reallocNtNvNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals2pg14get_table_data3RowNtNtB17_15data_structures17ColumnInformationEB19_.exit.thread: ; preds = %bb.h, %bb.f, %bb.i
  %.sroa.03.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.h ], [ %i.y, %bb.i ], [ %i.d, %bb.f ]
  store i64 %i.h, ptr %0, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %i.v, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNvNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals2pg14get_table_data3RowENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropB14_(ptr noalias noundef nonnull align 8 dereferenceable(56) %1)
  ret void

bb.g:                                             ; preds = %bb.f
  %i.w = icmp ult i64 %i.g, 120
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8) #35
  br label %_RINvNtNtCs40k4W9msRzi_5alloc3vec16in_place_collect13needs_reallocNtNvNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals2pg14get_table_data3RowNtNtB17_15data_structures17ColumnInformationEB19_.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.x = icmp ule i64 %i.s, %i.g
  tail call void @llvm.assume(i1 %i.x)
  %i.y = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc14___rust_realloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8, i64 noundef %i.s) #35 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.j, label %_RINvNtNtCs40k4W9msRzi_5alloc3vec16in_place_collect13needs_reallocNtNvNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals2pg14get_table_data3RowNtNtB17_15data_structures17ColumnInformationEB19_.exit.thread, !prof !4486

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.s) #36
          to label %bb.k unwind label %bb.e

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.b, %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNvNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals2pg14get_table_data3RowENCB2j_0EINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjRvGck33osM_6diesel6result5ErrorEEEB2p_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs40k4W9msRzi_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterTdNtNtB6_6string6StringEENCINvNtNtNtCs9ZYirdRbabK_12clap_builder6parser8features11suggestions12did_you_meanRB2n_INtNtNtB1f_5slice4iter4IterB2n_EEs0_0EB2n_ECs2bNgeUs5Jlc_6diesel(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !12 ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !12, !noundef !12 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !12
  %i.g = shl i64 %i.c, 5                          ; 4 uses
  %i.h = udiv i64 %i.g, 24                        ; 2 uses
  %i.i = invoke { ptr, ptr } @_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTdNtNtB14_6string6StringEENCINvNtNtNtCs9ZYirdRbabK_12clap_builder6parser8features11suggestions12did_you_meanRB1N_INtNtNtBc_5slice4iter4IterB1N_EEs0_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB1N_ENCINvNtB12_16in_place_collect24write_in_place_with_dropB1N_E0INtNtBc_6result6ResultB4S_zEECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.j, %bb.c ]
  invoke void @_RNvXse_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTdNtNtB1g_6string6StringEENCINvNtNtNtCs9ZYirdRbabK_12clap_builder6parser8features11suggestions12did_you_meanRB1Z_INtNtNtB4_5slice4iter4IterB1Z_EEs0_0EECs2bNgeUs5Jlc_6diesel.exit unwind label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.k = extractvalue { ptr, ptr } %i.i, 1
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.d to i64
  %i.n = sub nuw i64 %i.l, %i.m
  %i.o = udiv exact i64 %i.n, 24                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.o, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.q, align 8
  invoke void @_RNvMs0_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropTdNtNtBI_6string6StringEB1N_EECs2bNgeUs5Jlc_6diesel(ptr noalias noundef align 8 dereferenceable(24) %i.a) #33
          to label %bb.b unwind label %bb.j

bb.f:                                             ; preds = %bb.d
  %.not.i = icmp ne i64 %i.c, 0
  %i.s = mul nuw i64 %i.h, 24                     ; 4 uses
  %i.t = icmp ne i64 %i.g, %i.s
  %.sroa.0.0.i = select i1 %.not.i, i1 %i.t, i1 false
  br i1 %.sroa.0.0.i, label %bb.g, label %.thread

.thread:                                          ; preds = %bb.g, %bb.f
  %.sroa.03.0 = phi ptr [ %i.d, %bb.f ], [ %i.x, %bb.g ]
  store i64 %i.h, ptr %0, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %i.v, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  ret void

bb.g:                                             ; preds = %bb.f
  %i.w = icmp ule i64 %i.s, %i.g
  tail call void @llvm.assume(i1 %i.w)
  %i.x = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc14___rust_realloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8, i64 noundef %i.s) #35 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.h, label %.thread, !prof !37

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.s) #36
          to label %bb.i unwind label %bb.e

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.b, %bb.e
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTdNtNtB1g_6string6StringEENCINvNtNtNtCs9ZYirdRbabK_12clap_builder6parser8features11suggestions12did_you_meanRB1Z_INtNtNtB4_5slice4iter4IterB1Z_EEs0_0EECs2bNgeUs5Jlc_6diesel.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs40k4W9msRzi_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6filter6FilterINtNtB4_9into_iter8IntoIterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameENCNvNtB2v_9inference18filter_table_names0EB2r_EB2x_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !12 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !12, !noundef !12 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !12
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = invoke { ptr, ptr } @_RINvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBX_ENCINvNtNtB2f_8adapters6filter15filter_try_foldBX_B3d_INtNtB2h_6result6ResultB3d_zENCNvNtB11_9inference18filter_table_names0NCINvNtB8_16in_place_collect24write_in_place_with_dropBX_E0E0B4I_EB13_(ptr noalias noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.q, %bb.e ], [ %i.i, %bb.c ]
  invoke void @_RNvXse_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropB12_(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6filter6FilterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameENCNvNtB27_9inference18filter_table_names0EEB29_.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.j = extractvalue { ptr, ptr } %i.h, 1
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.d to i64
  %i.m = sub nuw i64 %i.k, %i.l
  %i.n = udiv exact i64 %i.m, 72                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.n, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.p, align 8
  invoke void @_RNvMs0_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameE32forget_allocation_drop_remainingB12_(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameB1L_EEB1R_(ptr noalias noundef align 8 dereferenceable(24) %i.a) #33
          to label %bb.b unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  store i64 %i.c, ptr %0, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.n, ptr %i.s, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropB12_(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
  ret void

bb.g:                                             ; preds = %bb.b, %bb.e
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6filter6FilterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameENCNvNtB27_9inference18filter_table_names0EEB29_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2bNgeUs5Jlc_6diesel(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4489)
  %i.b = icmp eq i64 %4, 0
  br i1 %i.b, label %bb.e, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = icmp ult i64 %i.c, %1
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr %0, align 8, !range !27, !alias.scope !4489, !noundef !12 ; 2 uses
  %i.f = shl nuw i64 %i.e, 1
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.c, i64 %i.f)
  %i.g = icmp eq i64 %4, 1
  %i.h = icmp ult i64 %4, 1025
  %..i = select i1 %i.h, i64 4, i64 1
  %.sroa.08.0.i = select i1 %i.g, i64 8, i64 %..i
  %.sroa.0.0.i14.i = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i, i64 %.sroa.08.0.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4489
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.i, align 8, !alias.scope !4489
  call fastcc void @_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs2bNgeUs5Jlc_6diesel(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.e, ptr %.val13.i, i64 noundef %.sroa.0.0.i14.i, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !4489
  %i.j = load i64, ptr %i.a, align 8, !range !34, !noalias !4489, !noundef !12
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.l, align 8, !range !38, !noalias !4489, !noundef !12
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noalias !4489
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4489
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.b
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.b ], [ %i.o, %bb.d ], [ undef, %bb.a ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.b ], [ %i.m, %bb.d ], [ 0, %bb.a ]
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #36
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.l, align 8, !noalias !4489, !nonnull !12, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4489
  store ptr %i.p, ptr %i.i, align 8, !alias.scope !4489
  %i.q = icmp sgt i64 %.sroa.0.0.i14.i, -1
  tail call void @llvm.assume(i1 %i.q)
  store i64 %.sroa.0.0.i14.i, ptr %0, align 8, !alias.scope !4489
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs6_NtNtNtCs2bNgeUs5Jlc_6diesel8database21multi_connection_impl14bind_collectorNtB6_18MultiBindCollectorINtNtNtCsjRvGck33osM_6diesel13query_builder14bind_collector13BindCollectorNtNtB8_7backend12MultiBackendE16push_bound_valueNtNtB1P_9sql_types4TextNtNtB1P_9migration16MigrationVersionEBc_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(56) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noundef nonnull %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.7 = alloca [16 x i8], align 8            ; 4 uses
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [32 x i8], align 8                ; 6 uses
  %i.i = alloca [32 x i8], align 8                ; 6 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 8 uses
  %i.l = alloca [16 x i8], align 8                ; 6 uses
  %i.m = alloca [56 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i64 -1, ptr %i.m, align 8
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store ptr %3, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store ptr %4, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @_RNvXs0_NtCsjRvGck33osM_6diesel9migrationNtB5_16MigrationVersionINtNtB7_9serialize5ToSqlNtNtB7_9sql_types4TextNtNtNtNtCs2bNgeUs5Jlc_6diesel8database21multi_connection_impl7backend12MultiBackendE6to_sqlB1R_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.m)
  %i.p = load ptr, ptr %i.l, align 8, !noundef !12 ; 2 uses
  %.not = icmp eq ptr %i.p, null
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !12, !align !15, !noundef !12
  %i.s = ptrtoint ptr %i.p to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  store i64 -9223372036854775804, ptr %0, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.s, ptr %.sroa.436.0..sroa_idx, align 8
  %.sroa.537.sroa.4.0..sroa.537.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.r, ptr %.sroa.537.sroa.4.0..sroa.537.0..sroa_idx.sroa_idx, align 8
  br label %bb.ab

bb.c:                                             ; preds = %bb.a
  %i.t = load i8, ptr %i.q, align 8, !range !39, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvXsb_NtNtNtCs2bNgeUs5Jlc_6diesel8database21multi_connection_impl7backendNtB5_12MultiBackendINtNtCsjRvGck33osM_6diesel9sql_types10HasSqlTypeNtB1w_4TextE8metadata(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noundef nonnull %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4)
  %i.v = load <2 x i32>, ptr %i.k, align 8
  %.sroa.4.8.copyload = load i32, ptr %i.k, align 8 ; 5 uses
  %.sroa.1385.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.1385.8.copyload = load ptr, ptr %.sroa.1385.8..sroa_idx, align 8 ; 9 uses
  %.sroa.16.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.16.8.copyload = load i8, ptr %.sroa.16.8..sroa_idx, align 8 ; 2 uses
  %.sroa.17.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 17
  %.sroa.17.8.copyload = load i8, ptr %.sroa.17.8..sroa_idx, align 1 ; 2 uses
end_hunk_0
