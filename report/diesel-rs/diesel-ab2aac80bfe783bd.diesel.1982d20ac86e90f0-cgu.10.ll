Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/diesel-ab2aac80bfe783bd.diesel.1982d20ac86e90f0-cgu.10?download=true
inline.NumInlined: 1467
inline.NumDeleted: 807
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_RNvXs1_NtCskLp0vI1JK7v_17diesel_migrations21file_based_migrationsNtB5_16SqlFileMigrationINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtNtCs2bNgeUs5Jlc_6diesel8database21multi_connection_impl7backend12MultiBackendE6revertB2g_:bb.a
  store ptr %.val7, ptr %i.e, align 8
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.i unwind label %bb.h

bb.i:                                             ; preds = %_RNvMs3_NtNtCsgczF5crJ4sT_3std2io5errorNtB5_5Error4kind.exit.thread15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 5, ptr %i.d, align 8
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32, !noalias !1976
  %i.ah = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, 89) 32, i64 noundef range(i64 1, 9) 8) #32, !noalias !1976 ; 3 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.j, label %bb.m, !prof !27

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #33
          to label %.noexc8 unwind label %bb.k

.noexc8:                                          ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskLp0vI1JK7v_17diesel_migrations6errors14MigrationErrorECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d) #30
          to label %.body unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.m:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.n

bb.n:                                             ; preds = %bb.x, %bb.m
  %.sroa.0.0 = phi ptr [ %i.ah, %bb.m ], [ null, %bb.x ]
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std4path7PathBufECs2bNgeUs5Jlc_6diesel.exit12 unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %common.resume unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #31
  unreachable

common.resume:                                    ; preds = %.body, %bb.z, %bb.o
  %common.resume.op = phi { ptr, i32 } [ %i.az, %bb.z ], [ %i.al, %bb.o ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.q:                                             ; preds = %.body
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #31
  unreachable

.thread13:                                        ; preds = %bb.d, %_RNvMs3_NtNtCsgczF5crJ4sT_3std2io5errorNtB5_5Error4kind.exit
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %bb.r unwind label %bb.h

bb.r:                                             ; preds = %bb.b, %.thread13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ao = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4
  %i.ap = load i64, ptr %i.n, align 8, !noundef !4
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.val = load ptr, ptr %i.ar, align 8
  invoke fastcc void @_RINvNtCskLp0vI1JK7v_17diesel_migrations21file_based_migrations17run_sql_from_fileNtNtNtNtCs2bNgeUs5Jlc_6diesel8database21multi_connection_impl7backend12MultiBackendEB1p_(ptr noalias noundef align 8 captures(none) dereferenceable(88) %i.c, ptr noundef nonnull %1, ptr %.val, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ao, i64 noundef %i.ap, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aq)
          to label %bb.s unwind label %bb.h

bb.s:                                             ; preds = %bb.r
  %i.as = load i64, ptr %i.c, align 8, !range !26, !noundef !4
  %.not = icmp eq i64 %i.as, -1
  br i1 %.not, label %bb.x, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.b, ptr noundef nonnull align 8 dereferenceable(88) %i.c, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32, !noalias !1977
  %i.at = call noundef align 8 dereferenceable_or_null(88) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, 89) 88, i64 noundef range(i64 1, 9) 8) #32, !noalias !1977 ; 3 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.u, label %bb.y, !prof !27

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 88) #33
          to label %.noexc9 unwind label %bb.v

.noexc9:                                          ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.u
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskLp0vI1JK7v_17diesel_migrations6errors18RunMigrationsErrorECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.b) #30
          to label %.body unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.x:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.n

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std4path7PathBufECs2bNgeUs5Jlc_6diesel.exit12: ; preds = %bb.n, %bb.y
  %.sroa.4.1 = phi ptr [ @74, %bb.y ], [ @13, %bb.n ]
  %.sroa.0.1 = phi ptr [ %i.at, %bb.y ], [ %.sroa.0.0, %bb.n ]
  call void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.ax = insertvalue { ptr, ptr } poison, ptr %.sroa.0.1, 0
  %i.ay = insertvalue { ptr, ptr } %i.ax, ptr %.sroa.4.1, 1
  ret { ptr, ptr } %i.ay

bb.y:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.at, ptr noundef nonnull align 8 dereferenceable(88) %i.b, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std4path7PathBufECs2bNgeUs5Jlc_6diesel.exit12 unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %common.resume unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCINvXNtNtBb_4iter8adaptersINtBU_12GenericShuntINtNtBU_5chain5ChainINtNtBU_3map3MapINtNtNtBb_5slice4iter4IterNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefENCNvNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema41extract_record_types_from_changed_columns0EIB1U_IB2a_TNtNtNtB3z_22infer_schema_internals15data_structures16ColumnDefinitionB2z_EENCB3t_s_0EEINtNtBb_6result6ResultNtNtBb_7convert10InfallibleNtNtB3z_6errors5ErrorEENtNtNtBW_6traits8iterator8Iterator8try_folduNCINvNvB7L_12try_for_each4callB5d_INtNtB9_12control_flow11ControlFlowB5d_ENcNtB91_5Break0E0B91_E0INtB7_5FnMutTuIB6C_B5d_B7o_EEE8call_mutB3z_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([192 x i8]) align 8 captures(none) dereferenceable(192) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(192) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.410.i = alloca [184 x i8], align 8       ; 5 uses
  %.sroa.0.0.copyload = load i64, ptr %2, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.a = load ptr, ptr %1, align 8, !nonnull !4, !align !7, !noundef !4
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8             ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1983)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.410.i)
  %i.c = icmp eq i64 %.sroa.0.0.copyload, -1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.d = load i64, ptr %.val, align 8, !range !14, !alias.scope !1984, !noalias !1985, !noundef !4
  %i.e = icmp eq i64 %i.d, -1
  br i1 %i.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs2bNgeUs5Jlc_6diesel6errors5ErrorEEEB1O_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bNgeUs5Jlc_6diesel6errors5ErrorEBF_(ptr noalias noundef nonnull align 8 dereferenceable(88) %.val)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs2bNgeUs5Jlc_6diesel6errors5ErrorEEEB1O_.exit.i unwind label %bb.e, !noalias !1985

bb.d:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 96
  %.sroa.410.96..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.410.i, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.410.96..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.5.0..sroa_idx, i64 96, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.410.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.2.0..sroa_idx, i64 88, i1 false)
  store i64 %.sroa.0.0.copyload, ptr %0, align 8, !alias.scope !1983
  %.sroa.418.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %.sroa.418.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(184) %.sroa.410.i, i64 184, i1 false), !noalias !1986
  br label %_RNCINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_5chain5ChainINtNtB5_3map3MapINtNtNtB9_5slice4iter4IterNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefENCNvNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema41extract_record_types_from_changed_columns0EIB1l_IB1B_TNtNtNtB30_22infer_schema_internals15data_structures16ColumnDefinitionB20_EENCB2U_s_0EEINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtNtB30_6errors5ErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB7c_12try_for_each4callB4E_INtNtNtB9_3ops12control_flow11ControlFlowB4E_ENcNtB8s_5Break0E0B8s_E0B30_.exit

bb.e:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.val, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.2.0..sroa_idx, i64 88, i1 false)
  resume { ptr, i32 } %i.f

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs2bNgeUs5Jlc_6diesel6errors5ErrorEEEB1O_.exit.i: ; preds = %bb.c, %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.val, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.2.0..sroa_idx, i64 88, i1 false)
  store i64 -1, ptr %0, align 8, !alias.scope !1983
  br label %_RNCINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_5chain5ChainINtNtB5_3map3MapINtNtNtB9_5slice4iter4IterNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefENCNvNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema41extract_record_types_from_changed_columns0EIB1l_IB1B_TNtNtNtB30_22infer_schema_internals15data_structures16ColumnDefinitionB20_EENCB2U_s_0EEINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtNtB30_6errors5ErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB7c_12try_for_each4callB4E_INtNtNtB9_3ops12control_flow11ControlFlowB4E_ENcNtB8s_5Break0E0B8s_E0B30_.exit

_RNCINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_5chain5ChainINtNtB5_3map3MapINtNtNtB9_5slice4iter4IterNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefENCNvNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema41extract_record_types_from_changed_columns0EIB1l_IB1B_TNtNtNtB30_22infer_schema_internals15data_structures16ColumnDefinitionB20_EENCB2U_s_0EEINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtNtB30_6errors5ErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB7c_12try_for_each4callB4E_INtNtNtB9_3ops12control_flow11ControlFlowB4E_ENcNtB8s_5Break0E0B8s_E0B30_.exit: ; preds = %bb.d, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs2bNgeUs5Jlc_6diesel6errors5ErrorEEEB1O_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.410.i)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNCNvXso_NtNtCs9ZYirdRbabK_12clap_builder7builder12value_parserINtBY_15EnumValueParserNtNtNtNtCs7b5kLxPRxmL_13clap_complete3aot6shells5shell5ShellENtBY_16TypedValueParser9parse_refs_0s_0INtB7_5FnMutTRNtNtB10_14possible_value13PossibleValueEE8call_mutCs2bNgeUs5Jlc_6diesel(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(80) %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val = load i8, ptr %i.a, align 8, !range !31, !noundef !4
  %2 = trunc nuw i8 %.val to i1
  %3 = xor i1 %2, true
  ret i1 %3
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals12foreign_keys38remove_unsafe_foreign_keys_for_codegen0INtB7_5FnMutTRTRNtNtBU_10table_data9TableNameB2N_EEE8call_mutBW_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = load ptr, ptr %0, align 8, !nonnull !4, !align !7, !noundef !4 ; 2 uses
  %.val = load ptr, ptr %i.f, align 8, !nonnull !4, !align !7, !noundef !4
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %.val1 = load i64, ptr %i.g, align 8, !noundef !4 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1999)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %1, ptr %i.e, align 8, !noalias !1999
  %i.h = icmp eq i64 %.val1, 0
  br i1 %i.h, label %_RNCNvNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals12foreign_keys38remove_unsafe_foreign_keys_for_codegen0B7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2.i.i.i.i.i.i = load ptr, ptr %1, align 8, !alias.scope !1999, !nonnull !4, !align !7 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i.i, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i.i, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i.i, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i.i, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i.i, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i.i, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i.i, i64 56
  %.val.i.i.i.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !1999, !nonnull !4, !align !7 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 48
  %i.v = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 64
  %i.w = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 56
  br label %bb.c

bb.c:                                             ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintjjNCINvNvXs1_NtB6_6filterINtB2A_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNCNvNtBZ_12foreign_keys38remove_unsafe_foreign_keys_for_codegen00E0NCINvXsK_NtB37_5accumjNtB59_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2p_EE0E0B11_.exit.i.i.i, %bb.b
  %.sroa.04.0.i.i.i = phi i64 [ 0, %bb.b ], [ %i.cj, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintjjNCINvNvXs1_NtB6_6filterINtB2A_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNCNvNtBZ_12foreign_keys38remove_unsafe_foreign_keys_for_codegen00E0NCINvXsK_NtB37_5accumjNtB59_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2p_EE0E0B11_.exit.i.i.i ] ; 2 uses
  %.sroa.02.0.i.i.i = phi i64 [ 0, %bb.b ], [ %i.ci, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintjjNCINvNvXs1_NtB6_6filterINtB2A_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNCNvNtBZ_12foreign_keys38remove_unsafe_foreign_keys_for_codegen00E0NCINvXsK_NtB37_5accumjNtB59_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2p_EE0E0B11_.exit.i.i.i ]
  %i.x = getelementptr inbounds nuw [216 x i8], ptr %.val, i64 %.sroa.04.0.i.i.i
  %i.y = tail call { ptr, ptr } @_RNvMs1_NtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structuresNtB5_20ForeignKeyConstraint14ordered_tables(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(216) %i.x), !noalias !2000 ; 2 uses
  %i.z = extractvalue { ptr, ptr } %i.y, 0        ; 8 uses
  %i.aa = extractvalue { ptr, ptr } %i.y, 1       ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.z) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2001)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2002)
  %i.ab = load i64, ptr %i.j, align 8, !alias.scope !2001, !noalias !2000, !noundef !4 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !2002, !noalias !2000, !noundef !4
  %i.ae = icmp eq i64 %i.ab, %i.ad
  br i1 %i.ae, label %bb.d, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintjjNCINvNvXs1_NtB6_6filterINtB2A_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNCNvNtBZ_12foreign_keys38remove_unsafe_foreign_keys_for_codegen00E0NCINvXsK_NtB37_5accumjNtB59_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2p_EE0E0B11_.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !2002, !noalias !2000, !nonnull !4, !noundef !4
  %i.ah = load ptr, ptr %i.k, align 8, !alias.scope !2001, !noalias !2000, !nonnull !4, !noundef !4
  %bcmp.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.ah, ptr nonnull %i.ag, i64 %i.ab), !noalias !2003
  %i.ai = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %i.ai, label %bb.e, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintjjNCINvNvXs1_NtB6_6filterINtB2A_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNCNvNtBZ_12foreign_keys38remove_unsafe_foreign_keys_for_codegen00E0NCINvXsK_NtB37_5accumjNtB59_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2p_EE0E0B11_.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.aj = load i64, ptr %i.l, align 8, !alias.scope !2001, !noalias !2000, !noundef !4 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !2002, !noalias !2000, !noundef !4
  %i.am = icmp eq i64 %i.aj, %i.al
  br i1 %i.am, label %bb.f, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintjjNCINvNvXs1_NtB6_6filterINtB2A_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNCNvNtBZ_12foreign_keys38remove_unsafe_foreign_keys_for_codegen00E0NCINvXsK_NtB37_5accumjNtB59_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2p_EE0E0B11_.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !2002, !noalias !2000, !nonnull !4, !noundef !4
  %i.ap = load ptr, ptr %i.m, align 8, !alias.scope !2001, !noalias !2000, !nonnull !4, !noundef !4
  %bcmp6.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.ap, ptr nonnull %i.ao, i64 %i.aj), !noalias !2003
  %i.aq = icmp eq i32 %bcmp6.i.i.i.i.i.i.i.i, 0
  br i1 %i.aq, label %bb.g, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintjjNCINvNvXs1_NtB6_6filterINtB2A_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNCNvNtBZ_12foreign_keys38remove_unsafe_foreign_keys_for_codegen00E0NCINvXsK_NtB37_5accumjNtB59_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2p_EE0E0B11_.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.ar = load i64, ptr %i.n, align 8, !range !9, !alias.scope !2001, !noalias !2000, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.ar, -1
  %i.as = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.at = load i64, ptr %i.as, align 8, !range !9, !alias.scope !2002, !noalias !2000, !noundef !4 ; 2 uses
  %i.au = icmp eq i64 %i.at, -1
  %brmerge.i.i.i.i.i.i.i.i = or i1 %.not.i.i.i.i.i.i.i.i, %i.au
  br i1 %brmerge.i.i.i.i.i.i.i.i, label %_RNvXs7_NtNtCscI6d9CVNmLh_4core3cmp5implsRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtB7_9PartialEq2eqBJ_.exit.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = load i64, ptr %i.o, align 8, !alias.scope !2001, !noalias !2000, !noundef !4 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !2002, !noalias !2000, !noundef !4
  %i.ay = icmp eq i64 %i.av, %i.ax
  br i1 %i.ay, label %.split.i.i.i.i.i.i, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintjjNCINvNvXs1_NtB6_6filterINtB2A_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNCNvNtBZ_12foreign_keys38remove_unsafe_foreign_keys_for_codegen00E0NCINvXsK_NtB37_5accumjNtB59_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2p_EE0E0B11_.exit.i.i.i

.split.i.i.i.i.i.i:                               ; preds = %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !2002, !noalias !2000, !nonnull !4, !noundef !4
  %i.bb = load ptr, ptr %i.p, align 8, !alias.scope !2001, !noalias !2000, !nonnull !4, !noundef !4
  %bcmp8.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.bb, ptr nonnull %i.ba, i64 %i.av), !noalias !2003
  %i.bc = icmp eq i32 %bcmp8.i.i.i.i.i.i.i.i, 0
  br i1 %i.bc, label %bb.i, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintjjNCINvNvXs1_NtB6_6filterINtB2A_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNCNvNtBZ_12foreign_keys38remove_unsafe_foreign_keys_for_codegen00E0NCINvXsK_NtB37_5accumjNtB59_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2p_EE0E0B11_.exit.i.i.i

_RNvXs7_NtNtCscI6d9CVNmLh_4core3cmp5implsRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtB7_9PartialEq2eqBJ_.exit.i.i.i.i.i.i: ; preds = %bb.g
  %i.bd = and i64 %i.at, %i.ar
  %.mux.i.i.i.i.i.i.i.i = icmp eq i64 %i.bd, -1
  br i1 %.mux.i.i.i.i.i.i.i.i, label %bb.i, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintjjNCINvNvXs1_NtB6_6filterINtB2A_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNCNvNtBZ_12foreign_keys38remove_unsafe_foreign_keys_for_codegen00E0NCINvXsK_NtB37_5accumjNtB59_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2p_EE0E0B11_.exit.i.i.i

bb.i:                                             ; preds = %_RNvXs7_NtNtCscI6d9CVNmLh_4core3cmp5implsRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtB7_9PartialEq2eqBJ_.exit.i.i.i.i.i.i, %.split.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aa) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2004)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2005)
  %i.be = load i64, ptr %i.q, align 8, !alias.scope !2004, !noalias !2000, !noundef !4 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !2005, !noalias !2000, !noundef !4
  %i.bh = icmp eq i64 %i.be, %i.bg
  br i1 %i.bh, label %bb.j, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintjjNCINvNvXs1_NtB6_6filterINtB2A_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNCNvNtBZ_12foreign_keys38remove_unsafe_foreign_keys_for_codegen00E0NCINvXsK_NtB37_5accumjNtB59_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2p_EE0E0B11_.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !alias.scope !2005, !noalias !2000, !nonnull !4, !noundef !4
  %i.bk = load ptr, ptr %i.r, align 8, !alias.scope !2004, !noalias !2000, !nonnull !4, !noundef !4
  %bcmp.i.i5.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.bk, ptr nonnull %i.bj, i64 %i.be), !noalias !2006
  %i.bl = icmp eq i32 %bcmp.i.i5.i.i.i.i.i.i, 0
  br i1 %i.bl, label %bb.k, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintjjNCINvNvXs1_NtB6_6filterINtB2A_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNCNvNtBZ_12foreign_keys38remove_unsafe_foreign_keys_for_codegen00E0NCINvXsK_NtB37_5accumjNtB59_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2p_EE0E0B11_.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.bm = load i64, ptr %i.s, align 8, !alias.scope !2004, !noalias !2000, !noundef !4 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !2005, !noalias !2000, !noundef !4
  %i.bp = icmp eq i64 %i.bm, %i.bo
  br i1 %i.bp, label %bb.l, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintjjNCINvNvXs1_NtB6_6filterINtB2A_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNCNvNtBZ_12foreign_keys38remove_unsafe_foreign_keys_for_codegen00E0NCINvXsK_NtB37_5accumjNtB59_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2p_EE0E0B11_.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.bq = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.br = load ptr, ptr %i.bq, align 8, !alias.scope !2005, !noalias !2000, !nonnull !4, !noundef !4
  %i.bs = load ptr, ptr %i.t, align 8, !alias.scope !2004, !noalias !2000, !nonnull !4, !noundef !4
  %bcmp6.i.i6.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.bs, ptr nonnull %i.br, i64 %i.bm), !noalias !2006
  %i.bt = icmp eq i32 %bcmp6.i.i6.i.i.i.i.i.i, 0
  br i1 %i.bt, label %bb.m, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintjjNCINvNvXs1_NtB6_6filterINtB2A_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNCNvNtBZ_12foreign_keys38remove_unsafe_foreign_keys_for_codegen00E0NCINvXsK_NtB37_5accumjNtB59_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2p_EE0E0B11_.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.bu = load i64, ptr %i.u, align 8, !range !9, !alias.scope !2004, !noalias !2000, !noundef !4 ; 2 uses
  %.not.i.i7.i.i.i.i.i.i = icmp eq i64 %i.bu, -1
  %i.bv = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.bw = load i64, ptr %i.bv, align 8, !range !9, !alias.scope !2005, !noalias !2000, !noundef !4 ; 2 uses
  %i.bx = icmp eq i64 %i.bw, -1
  %brmerge.i.i8.i.i.i.i.i.i = or i1 %.not.i.i7.i.i.i.i.i.i, %i.bx
  %i.by = and i64 %i.bw, %i.bu
  %.mux.i.i9.i.i.i.i.i.i = icmp eq i64 %i.by, -1
  br i1 %brmerge.i.i8.i.i.i.i.i.i, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintjjNCINvNvXs1_NtB6_6filterINtB2A_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNCNvNtBZ_12foreign_keys38remove_unsafe_foreign_keys_for_codegen00E0NCINvXsK_NtB37_5accumjNtB59_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2p_EE0E0B11_.exit.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bz = load i64, ptr %i.v, align 8, !alias.scope !2004, !noalias !2000, !noundef !4 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  %i.cb = load i64, ptr %i.ca, align 8, !alias.scope !2005, !noalias !2000, !noundef !4
  %i.cc = icmp eq i64 %i.bz, %i.cb
  br i1 %i.cc, label %bb.o, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintjjNCINvNvXs1_NtB6_6filterINtB2A_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNCNvNtBZ_12foreign_keys38remove_unsafe_foreign_keys_for_codegen00E0NCINvXsK_NtB37_5accumjNtB59_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2p_EE0E0B11_.exit.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.cd = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.ce = load ptr, ptr %i.cd, align 8, !alias.scope !2005, !noalias !2000, !nonnull !4, !noundef !4
  %i.cf = load ptr, ptr %i.w, align 8, !alias.scope !2004, !noalias !2000, !nonnull !4, !noundef !4
  %bcmp8.i.i10.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.cf, ptr nonnull %i.ce, i64 %i.bz), !noalias !2006
  %i.cg = icmp eq i32 %bcmp8.i.i10.i.i.i.i.i.i, 0
  br label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintjjNCINvNvXs1_NtB6_6filterINtB2A_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNCNvNtBZ_12foreign_keys38remove_unsafe_foreign_keys_for_codegen00E0NCINvXsK_NtB37_5accumjNtB59_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2p_EE0E0B11_.exit.i.i.i

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintjjNCINvNvXs1_NtB6_6filterINtB2A_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNCNvNtBZ_12foreign_keys38remove_unsafe_foreign_keys_for_codegen00E0NCINvXsK_NtB37_5accumjNtB59_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2p_EE0E0B11_.exit.i.i.i: ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %_RNvXs7_NtNtCscI6d9CVNmLh_4core3cmp5implsRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtB7_9PartialEq2eqBJ_.exit.i.i.i.i.i.i, %.split.i.i.i.i.i.i, %bb.h, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.i.i.i.i.i.i = phi i1 [ false, %.split.i.i.i.i.i.i ], [ false, %_RNvXs7_NtNtCscI6d9CVNmLh_4core3cmp5implsRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtB7_9PartialEq2eqBJ_.exit.i.i.i.i.i.i ], [ false, %bb.l ], [ %i.cg, %bb.o ], [ %.mux.i.i9.i.i.i.i.i.i, %bb.m ], [ false, %bb.j ], [ false, %bb.n ], [ false, %bb.k ], [ false, %bb.i ], [ false, %bb.d ], [ false, %bb.h ], [ false, %bb.e ], [ false, %bb.c ], [ false, %bb.f ]
  %i.ch = zext i1 %.sroa.0.0.i.i.i.i.i.i to i64
  %i.ci = add i64 %.sroa.02.0.i.i.i, %i.ch        ; 3 uses
  %i.cj = add nuw i64 %.sroa.04.0.i.i.i, 1        ; 2 uses
  %i.ck = icmp eq i64 %i.cj, %.val1
  br i1 %i.ck, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintENCNCNvNtB1w_12foreign_keys38remove_unsafe_foreign_keys_for_codegen00ENtNtNtB9_6traits8iterator8Iterator5countB1y_.exit.i, label %bb.c

_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintENCNCNvNtB1w_12foreign_keys38remove_unsafe_foreign_keys_for_codegen00ENtNtNtB9_6traits8iterator8Iterator5countB1y_.exit.i: ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintjjNCINvNvXs1_NtB6_6filterINtB2A_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNCNvNtBZ_12foreign_keys38remove_unsafe_foreign_keys_for_codegen00E0NCINvXsK_NtB37_5accumjNtB59_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2p_EE0E0B11_.exit.i.i.i
  %i.cl = icmp ule i64 %i.ci, %.val1
  tail call void @llvm.assume(i1 %i.cl)
  %i.cm = icmp ugt i64 %i.ci, 1
  br i1 %i.cm, label %bb.p, label %_RNCNvNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals12foreign_keys38remove_unsafe_foreign_keys_for_codegen0B7_.exit

bb.p:                                             ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintENCNCNvNtB1w_12foreign_keys38remove_unsafe_foreign_keys_for_codegen00ENtNtNtB9_6traits8iterator8Iterator5countB1y_.exit.i
  %i.cn = load atomic i64, ptr @_RNvNtCs3bbNWNt4QPc_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !1999
  %i.co = icmp ult i64 %i.cn, 2
  br i1 %i.co, label %bb.q, label %_RNCNvNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals12foreign_keys38remove_unsafe_foreign_keys_for_codegen0B7_.exit

bb.q:                                             ; preds = %bb.p
  %i.cp = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals12foreign_keys38remove_unsafe_foreign_keys_for_codegen010___CALLSITE, i64 16) monotonic, align 8, !noalias !1999 ; 3 uses
  switch i8 %i.cp, label %bb.r [
    i8 0, label %_RNCNvNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals12foreign_keys38remove_unsafe_foreign_keys_for_codegen0B7_.exit
    i8 1, label %bb.s
    i8 2, label %bb.s
  ], !prof !32

bb.r:                                             ; preds = %bb.q
  %i.cq = tail call noundef i8 @_RNvMNtCs3bbNWNt4QPc_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals12foreign_keys38remove_unsafe_foreign_keys_for_codegen010___CALLSITE) ; 2 uses
  %i.cr = icmp eq i8 %i.cq, 0
  br i1 %i.cr, label %_RNCNvNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals12foreign_keys38remove_unsafe_foreign_keys_for_codegen0B7_.exit, label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.q
end_hunk_0
