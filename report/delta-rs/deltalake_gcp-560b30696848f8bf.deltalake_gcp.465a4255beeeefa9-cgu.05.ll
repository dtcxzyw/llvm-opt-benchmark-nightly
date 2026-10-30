Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_gcp-560b30696848f8bf.deltalake_gcp.465a4255beeeefa9-cgu.05?download=true
inline.NumInlined: 180
inline.NumDeleted: 96
begin_hunk_0_@_RINvXs1e_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB7_7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorTB15_B26_EE9from_iterINtNtB2Q_8adapters12GenericShuntINtNtB47_3map3MapINtB7_8IntoIterB15_B26_ENCINvMs_NtCs62u4JVtZyFF_13deltalake_gcp6configNtB5n_15GcpConfigHelper7try_newB15_B26_BR_E0EINtNtB2S_6result6ResultNtNtB2S_7convert10InfallibleNtB1b_5ErrorEEEB5p_:bb.a
  %i.d = alloca [48 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = invoke { i64, i64 } @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @3)
          to label %bb.b unwind label %bb.l       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.f = extractvalue { i64, i64 } %i.e, 0
  %i.g = extractvalue { i64, i64 } %i.e, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) @1, i64 32, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  store i64 %i.f, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %i.g, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !39
  invoke void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringENCINvMs_NtCs62u4JVtZyFF_13deltalake_gcp6configNtB3V_15GcpConfigHelper7try_newB29_B3a_INtB1g_7HashMapB29_B3a_EE0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtB2f_5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB3X_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.c)
          to label %bb.c unwind label %bb.g, !noalias !39

bb.c:                                             ; preds = %bb.b
  %i.h = load i64, ptr %i.b, align 8, !noalias !39, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !39
  invoke void @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE7reserveNCINvNtB8_3map11make_hasherBQ_B1R_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d, i64 noundef %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.4.0..sroa_idx)
          to label %bb.d unwind label %bb.g, !noalias !40

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false), !noalias !39
  invoke void @_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringENCINvMs_NtCs62u4JVtZyFF_13deltalake_gcp6configNtB3W_15GcpConfigHelper7try_newB2a_B3b_INtB1h_7HashMapB2a_B3b_EE0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtB2g_5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvMs0_NtNtB7_3ops9try_traitINtB7u_17NeverShortCircuituE10wrap_mut_2uTB2a_B3b_ENCINvNvB6D_8for_each4callB8u_NCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB9h_7HashMapB2a_B3b_NtNtNtB1n_4hash6random11RandomStateEINtNtB6H_7collect6ExtendB8u_E6extendBE_E0E0E0B7P_EB3Y_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringENCINvMs_NtCs62u4JVtZyFF_13deltalake_gcp6configNtB3W_15GcpConfigHelper7try_newB2a_B3b_INtB1h_7HashMapB2a_B3b_EE0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtB2g_5ErrorEENtNtNtB5_6traits8iterator8Iterator4folduNCINvNvB6D_8for_each4callTB2a_B3b_ENCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB80_7HashMapB2a_B3b_NtNtNtB1n_4hash6random11RandomStateEINtNtB6H_7collect6ExtendB7G_E6extendBE_E0E0EB3Y_.exit.i.i unwind label %bb.e, !noalias !40

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsC_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.a)
          to label %.body unwind label %bb.f, !noalias !40

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #13, !noalias !40
  unreachable

_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringENCINvMs_NtCs62u4JVtZyFF_13deltalake_gcp6configNtB3W_15GcpConfigHelper7try_newB2a_B3b_INtB1h_7HashMapB2a_B3b_EE0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtB2g_5ErrorEENtNtNtB5_6traits8iterator8Iterator4folduNCINvNvB6D_8for_each4callTB2a_B3b_ENCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB80_7HashMapB2a_B3b_NtNtNtB1n_4hash6random11RandomStateEINtNtB6H_7collect6ExtendB7G_E6extendBE_E0E0EB3Y_.exit.i.i: ; preds = %bb.d
  invoke void @_RNvXsC_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.a)
          to label %bb.j unwind label %bb.i

bb.g:                                             ; preds = %bb.c, %bb.b
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsC_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c)
          to label %.body unwind label %bb.h, !noalias !40

bb.h:                                             ; preds = %bb.g
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #13, !noalias !40
  unreachable

bb.i:                                             ; preds = %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringENCINvMs_NtCs62u4JVtZyFF_13deltalake_gcp6configNtB3W_15GcpConfigHelper7try_newB2a_B3b_INtB1h_7HashMapB2a_B3b_EE0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtB2g_5ErrorEENtNtNtB5_6traits8iterator8Iterator4folduNCINvNvB6D_8for_each4callTB2a_B3b_ENCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB80_7HashMapB2a_B3b_NtNtNtB1n_4hash6random11RandomStateEINtNtB6H_7collect6ExtendB7G_E6extendBE_E0E0EB3Y_.exit.i.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.g, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.l, %bb.i ], [ %lpad.thr_comm.i, %bb.g ], [ %i.i, %bb.e ]
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4iter8adapters12GenericShuntINtNtBJ_3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringENCINvMs_NtCs62u4JVtZyFF_13deltalake_gcp6configNtB4g_15GcpConfigHelper7try_newB2u_B3v_INtB1B_7HashMapB2u_B3v_EE0EINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtB2A_5ErrorEEEB4i_.exit unwind label %bb.k

bb.j:                                             ; preds = %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringENCINvMs_NtCs62u4JVtZyFF_13deltalake_gcp6configNtB3W_15GcpConfigHelper7try_newB2a_B3b_INtB1h_7HashMapB2a_B3b_EE0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtB2g_5ErrorEENtNtNtB5_6traits8iterator8Iterator4folduNCINvNvB6D_8for_each4callTB2a_B3b_ENCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB80_7HashMapB2a_B3b_NtNtNtB1n_4hash6random11RandomStateEINtNtB6H_7collect6ExtendB7G_E6extendBE_E0E0EB3Y_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.k:                                             ; preds = %bb.l, %.body
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4iter8adapters12GenericShuntINtNtBJ_3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringENCINvMs_NtCs62u4JVtZyFF_13deltalake_gcp6configNtB4g_15GcpConfigHelper7try_newB2u_B3v_INtB1B_7HashMapB2u_B3v_EE0EINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtB2A_5ErrorEEEB4i_.exit: ; preds = %bb.l, %.body
  %.pn6 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.n, %bb.l ]
  resume { ptr, i32 } %.pn6

bb.l:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsC_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4iter8adapters12GenericShuntINtNtBJ_3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringENCINvMs_NtCs62u4JVtZyFF_13deltalake_gcp6configNtB4g_15GcpConfigHelper7try_newB2u_B3v_INtB1B_7HashMapB2u_B3v_EE0EINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtB2A_5ErrorEEEB4i_.exit unwind label %bb.k
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1e_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB7_7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorTB15_B26_EE9from_iterINtNtNtB2Q_8adapters10filter_map9FilterMapNtNtBd_3env6VarsOsNCINvNtCs62u4JVtZyFF_13deltalake_gcp6config17parse_environmentNtNtNtBd_3ffi6os_str8OsStringB62_B4K_E0EEB59_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 13 uses
  %i.h = alloca [72 x i8], align 8                ; 9 uses
  %i.i = alloca [24 x i8], align 8                ; 13 uses
  %i.j = alloca [24 x i8], align 8                ; 13 uses
  %i.k = alloca [48 x i8], align 8                ; 6 uses
  %i.l = alloca [32 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 3 uses
  %i.n = alloca [32 x i8], align 8                ; 6 uses
  %i.o = alloca [48 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.p = invoke { i64, i64 } @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @3)
          to label %bb.b unwind label %bb.bb      ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.q = extractvalue { i64, i64 } %i.p, 0
  %i.r = extractvalue { i64, i64 } %i.p, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) @1, i64 32, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 2 uses
  store i64 %i.q, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store i64 %i.r, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !78
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !79
  invoke void @_RNvXs0_NtCs2pqxYH9ZEk8_3std3envNtB5_6VarsOsNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator9size_hint(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.n)
          to label %bb.c unwind label %bb.aw, !noalias !80

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !79
  invoke void @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE7reserveNCINvNtB8_3map11make_hasherBQ_B1R_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.o, i64 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.4.0..sroa_idx)
          to label %bb.d unwind label %bb.aw, !noalias !80

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !81
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false), !noalias !78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !81
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.5.0..sroa_idx6.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %.sroa.77.8..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.88.8..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  br label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldTNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringB1b_ETNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEuNCINvNtCs62u4JVtZyFF_13deltalake_gcp6config17parse_environmentB1b_B1b_NtNtB1h_3env6VarsOsE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1Y_NCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6e_7HashMapB1Z_B30_NtNtNtB1h_4hash6random11RandomStateEINtNtB5i_7collect6ExtendB1Y_E6extendINtB4_9FilterMapB4M_B3E_EE0E0E0B3L_.exit.i.i.i.i

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldTNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringB1b_ETNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEuNCINvNtCs62u4JVtZyFF_13deltalake_gcp6config17parse_environmentB1b_B1b_NtNtB1h_3env6VarsOsE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1Y_NCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6e_7HashMapB1Z_B30_NtNtNtB1h_4hash6random11RandomStateEINtNtB5i_7collect6ExtendB1Y_E6extendINtB4_9FilterMapB4M_B3E_EE0E0E0B3L_.exit.i.i.i.i: ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldTNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringB1b_ETNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEuNCINvNtCs62u4JVtZyFF_13deltalake_gcp6config17parse_environmentB1b_B1b_NtNtB1h_3env6VarsOsE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1Y_NCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6e_7HashMapB1Z_B30_NtNtNtB1h_4hash6random11RandomStateEINtNtB5i_7collect6ExtendB1Y_E6extendINtB4_9FilterMapB4M_B3E_EE0E0E0B3L_.exit.i.i.i.i.backedge, %bb.d
  invoke void @_RNvXs0_NtCs2pqxYH9ZEk8_3std3envNtB5_6VarsOsNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %bb.f unwind label %bb.e, !noalias !82

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i.i.i.i.i.i.i.i, %bb.ar, %_RNCINvNtCs62u4JVtZyFF_13deltalake_gcp6config17parse_environmentNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringBZ_NtNtB15_3env6VarsOsE0B6_.exit.i.i.i.i.i, %_RNCINvNtCs62u4JVtZyFF_13deltalake_gcp6config17parse_environmentNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringBZ_NtNtB15_3env6VarsOsE0B6_.exit.thread.i.i.i.i.i, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldTNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringB1b_ETNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEuNCINvNtCs62u4JVtZyFF_13deltalake_gcp6config17parse_environmentB1b_B1b_NtNtB1h_3env6VarsOsE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1Y_NCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6e_7HashMapB1Z_B30_NtNtNtB1h_4hash6random11RandomStateEINtNtB5i_7collect6ExtendB1Y_E6extendINtB4_9FilterMapB4M_B3E_EE0E0E0B3L_.exit.i.i.i.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.at, %bb.ap, %bb.ai, %.body.i.i.i.i.i.i, %bb.e
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.ag, %bb.e ], [ %.pn19.i.i.i.i.i.i, %.body.i.i.i.i.i.i ], [ %i.cq, %bb.ap ], [ %i.cl, %bb.ai ], [ %i.cu, %bb.at ]
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringBX_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %.body unwind label %bb.av, !noalias !82

bb.f:                                             ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldTNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringB1b_ETNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEuNCINvNtCs62u4JVtZyFF_13deltalake_gcp6config17parse_environmentB1b_B1b_NtNtB1h_3env6VarsOsE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1Y_NCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6e_7HashMapB1Z_B30_NtNtNtB1h_4hash6random11RandomStateEINtNtB5i_7collect6ExtendB1Y_E6extendINtB4_9FilterMapB4M_B3E_EE0E0E0B3L_.exit.i.i.i.i
  %i.ah = load i64, ptr %i.k, align 8, !range !83, !noalias !84, !noundef !3
  %.not.i.i.i.i = icmp eq i64 %i.ah, -9223372036854775808
  br i1 %.not.i.i.i.i, label %_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_mapINtB6_9FilterMapNtNtCs2pqxYH9ZEk8_3std3env6VarsOsNCINvNtCs62u4JVtZyFF_13deltalake_gcp6config17parse_environmentNtNtNtB1f_3ffi6os_str8OsStringB2I_B1b_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3n_8for_each4callTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringENCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6f_7HashMapB4r_B5s_NtNtNtB1f_4hash6random11RandomStateEINtNtB3r_7collect6ExtendB4q_E6extendBV_E0E0EB1P_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !85
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !84
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !85
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !noalias !84
  %.val22.i.i.i.i.i.i.a = load ptr, ptr %i.s, align 8, !noalias !85, !nonnull !3, !noundef !3
  %.val23.i.i.i.i.i.i = load i64, ptr %i.t, align 8, !noalias !85, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !85
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val22.i.i.i.i.i.i.a, i64 noundef %.val23.i.i.i.i.i.i)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !86

.body25.i.i.i.i.i.i:                              ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.an, %bb.ad, %bb.s
  %.pn17.i.i.i.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i.i.i, %bb.s ], [ %i.cg, %bb.ad ], [ %i.co, %bb.an ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef align 8 dereferenceable(24) %i.i) #15
          to label %.body.i.i.i.i.i.i unwind label %bb.al, !noalias !86

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs62u4JVtZyFF_13deltalake_gcp.exit.i38.i.i.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs62u4JVtZyFF_13deltalake_gcp.exit.i.i.i.i.i.i.i, %bb.q, %bb.l, %bb.h, %bb.g, %bb.r
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body25.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.ai = load i64, ptr %i.f, align 8, !range !10, !noalias !85, !noundef !3
  %i.aj = trunc nuw i64 %i.ai to i1               ; 2 uses
  %i.ak = load ptr, ptr %i.u, align 8, !noalias !85, !nonnull !3 ; 2 uses
  %i.al = load i64, ptr %i.v, align 8, !noalias !85 ; 15 uses
  %2 = xor i1 %i.aj, true
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !85
  %.val.i.i.i.i.i.i = load ptr, ptr %i.w, align 8, !noalias !85, !nonnull !3, !noundef !3
  %.val21.i.i.i.i.i.i = load i64, ptr %i.x, align 8, !noalias !85, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !85
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i.i.i.i.i, i64 noundef %.val21.i.i.i.i.i.i)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !86

bb.i:                                             ; preds = %bb.h
  %i.am = load i64, ptr %i.e, align 8, !range !10, !noalias !85, !noundef !3
  %i.an = trunc nuw i64 %i.am to i1
  br i1 %i.an, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !85
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.ao = load ptr, ptr %i.y, align 8, !noalias !85, !nonnull !3, !noundef !3
  %i.ap = load i64, ptr %i.z, align 8, !noalias !85, !noundef !3 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !85
  br i1 %i.aj, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 %2)
  %i.aq = invoke noundef zeroext i1 @_RNvMNtCsbvkFyIu7lgC_4core5sliceSh11starts_withCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ak, i64 noundef %i.al, ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 7)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !86

bb.m:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit42.i.i.i.i.i.i, %bb.p, %bb.k, %bb.j
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std3sys6os_str5bytes3BufECs62u4JVtZyFF_13deltalake_gcp.exit.i.i.i.i.i.i.i unwind label %bb.n, !noalias !86

bb.n:                                             ; preds = %bb.m
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body.i.i.i.i.i.i unwind label %bb.o, !noalias !86

bb.o:                                             ; preds = %bb.n
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #13, !noalias !86
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std3sys6os_str5bytes3BufECs62u4JVtZyFF_13deltalake_gcp.exit.i.i.i.i.i.i.i: ; preds = %bb.m
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs62u4JVtZyFF_13deltalake_gcp.exit.i.i.i.i.i.i unwind label %bb.ah, !noalias !86

bb.p:                                             ; preds = %bb.l
  br i1 %i.aq, label %bb.q, label %bb.m

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !85
  call void @llvm.experimental.noalias.scope.decl(metadata !87)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !88
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef range(i64 0, -9223372036854775808) %i.al, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !86

.noexc.i.i.i.i.i.i:                               ; preds = %bb.q
  %i.at = load i64, ptr %i.c, align 8, !range !10, !noalias !88, !noundef !3
  %i.au = trunc nuw i64 %i.at to i1
  %i.av = load i64, ptr %i.aa, align 8, !range !83, !noalias !88, !noundef !3 ; 3 uses
  br i1 %i.au, label %bb.r, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs62u4JVtZyFF_13deltalake_gcp.exit.i.i.i.i.i.i.i.i, !prof !5

bb.r:                                             ; preds = %.noexc.i.i.i.i.i.i
  %i.aw = load i64, ptr %i.ab, align 8, !noalias !88
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.av, i64 %i.aw) #16
          to label %.noexc24.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !86

.noexc24.i.i.i.i.i.i:                             ; preds = %bb.r
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs62u4JVtZyFF_13deltalake_gcp.exit.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i
  %i.ax = load ptr, ptr %i.ab, align 8, !noalias !88, !nonnull !3, !noundef !3 ; 6 uses
  %i.ay = icmp samesign ule i64 %i.al, %i.av
  call void @llvm.assume(i1 %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !88
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.al, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i, label %iter.check

iter.check:                                       ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs62u4JVtZyFF_13deltalake_gcp.exit.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ax, ptr nonnull readonly align 1 %i.ak, i64 range(i64 0, -9223372036854775808) %i.al, i1 false), !noalias !89
  %min.iters.check = icmp ult i64 %i.al, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check72 = icmp ult i64 %i.al, 32
  br i1 %min.iters.check72, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.az = and i64 %i.al, 24
  %n.vec = and i64 %i.al, -32                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 %index ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.ba, align 1, !alias.scope !90, !noalias !91 ; 2 uses
  %wide.load73 = load <16 x i8>, ptr %i.bb, align 1, !alias.scope !90, !noalias !91 ; 2 uses
  %i.bc = add <16 x i8> %wide.load, splat (i8 -65)
  %i.bd = add <16 x i8> %wide.load73, splat (i8 -65)
  %i.be = icmp ult <16 x i8> %i.bc, splat (i8 26)
  %i.bf = icmp ult <16 x i8> %i.bd, splat (i8 26)
  %i.bg = select <16 x i1> %i.be, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.bh = select <16 x i1> %i.bf, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.bi = or <16 x i8> %i.bg, %wide.load
  %i.bj = or <16 x i8> %i.bh, %wide.load73
  store <16 x i8> %i.bi, ptr %i.ba, align 1, !alias.scope !90, !noalias !91
  store <16 x i8> %i.bj, ptr %i.bb, align 1, !alias.scope !90, !noalias !91
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !69

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.al, %n.vec
  br i1 %cmp.n, label %.loopexit.i.i.i.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.az, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !94

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec74 = and i64 %i.al, -8                    ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index75 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next77, %vec.epilog.vector.body ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ax, i64 %index75 ; 2 uses
  %wide.load76 = load <8 x i8>, ptr %i.bl, align 1, !alias.scope !90, !noalias !91 ; 2 uses
  %i.bm = add <8 x i8> %wide.load76, splat (i8 -65)
  %i.bn = icmp ult <8 x i8> %i.bm, splat (i8 26)
  %i.bo = select <8 x i1> %i.bn, <8 x i8> splat (i8 32), <8 x i8> zeroinitializer
  %i.bp = or <8 x i8> %i.bo, %wide.load76
  store <8 x i8> %i.bp, ptr %i.bl, align 1, !alias.scope !90, !noalias !91
  %index.next77 = add nuw i64 %index75, 8         ; 2 uses
  %i.bq = icmp eq i64 %index.next77, %n.vec74
  br i1 %i.bq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !70

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n78 = icmp eq i64 %i.al, %n.vec74
  br i1 %cmp.n78, label %.loopexit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.05.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec74, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i
  %.sroa.0.05.i.i.i.i.i.i.i.i = phi i64 [ %i.bw, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.0.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.sroa.0.05.i.i.i.i.i.i.i.i ; 2 uses
  %i.bs = load i8, ptr %i.br, align 1, !alias.scope !90, !noalias !91, !noundef !3 ; 2 uses
  %i.bt = add i8 %i.bs, -65
  %i.bu = icmp ult i8 %i.bt, 26
  %i.bv = select i1 %i.bu, i8 32, i8 0
  %.sroa.03.0.i.i.i.i.i.i.i.i = or i8 %i.bv, %i.bs
  store i8 %.sroa.03.0.i.i.i.i.i.i.i.i, ptr %i.br, align 1, !alias.scope !90, !noalias !91
  %i.bw = add nuw i64 %.sroa.0.05.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.bw, %i.al
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !71

.loopexit.i.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs62u4JVtZyFF_13deltalake_gcp.exit.i.i.i.i.i.i.i.i
  store i64 %i.av, ptr %i.g, align 8, !alias.scope !87, !noalias !85
  store ptr %i.ax, ptr %.sroa.5.0..sroa_idx6.i.i.i.i.i.i.i, align 8, !alias.scope !87, !noalias !85
  store i64 %i.al, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !87, !noalias !85
  invoke void @_RNvXs0_NtNtCsjyY8HP3IvQ6_12object_store3gcp7builderNtB5_15GoogleConfigKeyNtNtNtCsbvkFyIu7lgC_4core3str6traits7FromStr8from_str(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.h, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ax, i64 noundef %i.al)
          to label %bb.u unwind label %bb.t, !noalias !86

bb.s:                                             ; preds = %.loopexit.split-lp6.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.t
  %.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %i.bx, %bb.t ], [ %lpad.loopexit.split-lp80, %.loopexit.split-lp6.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef align 8 dereferenceable(24) %i.g) #15
          to label %.body25.i.i.i.i.i.i unwind label %bb.al, !noalias !86

bb.t:                                             ; preds = %bb.aa, %bb.v, %.loopexit.i.i.i.i.i.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.u:                                             ; preds = %.loopexit.i.i.i.i.i.i
  %i.by = load i64, ptr %i.h, align 8, !range !6, !noalias !85, !noundef !3
  %.not14.i.i.i.i.i.i.a = icmp eq i64 %i.by, -9223372036854775790
  br i1 %.not14.i.i.i.i.i.i.a, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtB18_5ErrorEECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef align 8 dereferenceable(72) %i.h)
          to label %bb.am unwind label %bb.t, !noalias !86

bb.w:                                             ; preds = %bb.u
  %i.bz = load i8, ptr %i.ac, align 8, !range !11, !noalias !85, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !85
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %i.ap, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.x unwind label %.loopexit.split-lp6.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !86

.loopexit.split-lp6.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.w, %bb.y
  %lpad.loopexit.split-lp80 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtB18_5ErrorEECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef align 8 dereferenceable(72) %i.h) #15
          to label %bb.s unwind label %bb.al, !noalias !86

bb.x:                                             ; preds = %bb.w
  %i.ca = load i64, ptr %i.d, align 8, !range !10, !noalias !85, !noundef !3
  %i.cb = trunc nuw i64 %i.ca to i1
  %i.cc = load i64, ptr %i.ad, align 8, !range !83, !noalias !85, !noundef !3 ; 4 uses
  br i1 %i.cb, label %bb.y, label %bb.z, !prof !5

bb.y:                                             ; preds = %bb.x
  %i.cd = load i64, ptr %i.ae, align 8, !noalias !85
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.cc, i64 %i.cd) #16
          to label %bb.ak unwind label %.loopexit.split-lp6.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !86

bb.z:                                             ; preds = %bb.x
  %i.ce = load ptr, ptr %i.ae, align 8, !noalias !85, !nonnull !3, !noundef !3 ; 2 uses
  %i.cf = icmp ule i64 %i.ap, %i.cc
  call void @llvm.assume(i1 %i.cf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !85
  %.not15.i.i.i.i.i.i = icmp eq i64 %i.ap, 0
  br i1 %.not15.i.i.i.i.i.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.ab, %bb.z
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtB18_5ErrorEECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef align 8 dereferenceable(72) %i.h)
          to label %bb.ac unwind label %bb.t, !noalias !86

bb.ab:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ce, ptr nonnull align 1 %i.ao, i64 %i.ap, i1 false), !noalias !86
end_hunk_0
