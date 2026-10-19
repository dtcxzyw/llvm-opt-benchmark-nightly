Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_azure-93cf73be44d14929.deltalake_azure.7592e2e6d7d049bc-cgu.06?download=true
inline.NumInlined: 105
inline.NumDeleted: 62
begin_hunk_0_@_RINvXs1e_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB7_7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorTB15_B27_EE9from_iterINtNtB2R_8adapters12GenericShuntINtNtB48_3map3MapINtB7_8IntoIterB15_B27_ENCINvMs_NtCsa5Qem16B4JI_15deltalake_azure6configNtB5o_17AzureConfigHelper7try_newB15_B27_BR_E0EINtNtB2T_6result6ResultNtNtB2T_7convert10InfallibleNtB1b_5ErrorEEEB5q_:bb.a

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsC_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.a)
          to label %.body unwind label %bb.f, !noalias !33

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #13, !noalias !33
  unreachable

_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringENCINvMs_NtCsa5Qem16B4JI_15deltalake_azure6configNtB3X_17AzureConfigHelper7try_newB2a_B3c_INtB1h_7HashMapB2a_B3c_EE0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtB2g_5ErrorEENtNtNtB5_6traits8iterator8Iterator4folduNCINvNvB6I_8for_each4callTB2a_B3c_ENCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB85_7HashMapB2a_B3c_NtNtNtB1n_4hash6random11RandomStateEINtNtB6M_7collect6ExtendB7L_E6extendBE_E0E0EB3Z_.exit.i.i: ; preds = %bb.d
  invoke void @_RNvXsC_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.a)
          to label %bb.j unwind label %bb.i

bb.g:                                             ; preds = %bb.c, %bb.b
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsC_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c)
          to label %.body unwind label %bb.h, !noalias !33

bb.h:                                             ; preds = %bb.g
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #13, !noalias !33
  unreachable

bb.i:                                             ; preds = %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringENCINvMs_NtCsa5Qem16B4JI_15deltalake_azure6configNtB3X_17AzureConfigHelper7try_newB2a_B3c_INtB1h_7HashMapB2a_B3c_EE0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtB2g_5ErrorEENtNtNtB5_6traits8iterator8Iterator4folduNCINvNvB6I_8for_each4callTB2a_B3c_ENCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB85_7HashMapB2a_B3c_NtNtNtB1n_4hash6random11RandomStateEINtNtB6M_7collect6ExtendB7L_E6extendBE_E0E0EB3Z_.exit.i.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.g, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.l, %bb.i ], [ %lpad.thr_comm.i, %bb.g ], [ %i.i, %bb.e ]
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4iter8adapters12GenericShuntINtNtBJ_3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringENCINvMs_NtCsa5Qem16B4JI_15deltalake_azure6configNtB4h_17AzureConfigHelper7try_newB2u_B3w_INtB1B_7HashMapB2u_B3w_EE0EINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtB2A_5ErrorEEEB4j_.exit unwind label %bb.k

bb.j:                                             ; preds = %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringENCINvMs_NtCsa5Qem16B4JI_15deltalake_azure6configNtB3X_17AzureConfigHelper7try_newB2a_B3c_INtB1h_7HashMapB2a_B3c_EE0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtB2g_5ErrorEENtNtNtB5_6traits8iterator8Iterator4folduNCINvNvB6I_8for_each4callTB2a_B3c_ENCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB85_7HashMapB2a_B3c_NtNtNtB1n_4hash6random11RandomStateEINtNtB6M_7collect6ExtendB7L_E6extendBE_E0E0EB3Z_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.k:                                             ; preds = %bb.l, %.body
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4iter8adapters12GenericShuntINtNtBJ_3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringENCINvMs_NtCsa5Qem16B4JI_15deltalake_azure6configNtB4h_17AzureConfigHelper7try_newB2u_B3w_INtB1B_7HashMapB2u_B3w_EE0EINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtB2A_5ErrorEEEB4j_.exit: ; preds = %bb.l, %.body
  %.pn6 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.n, %bb.l ]
  resume { ptr, i32 } %.pn6

bb.l:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsC_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4iter8adapters12GenericShuntINtNtBJ_3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringENCINvMs_NtCsa5Qem16B4JI_15deltalake_azure6configNtB4h_17AzureConfigHelper7try_newB2u_B3w_INtB1B_7HashMapB2u_B3w_EE0EINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtB2A_5ErrorEEEB4j_.exit unwind label %bb.k
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCs3gpiEk3WpjL_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11rustc_entryCsa5Qem16B4JI_15deltalake_azure(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(48) %1, i8 noundef range(i8 0, 41) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 2 uses
  store i8 %2, ptr %i.a, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.c = call noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneRNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyECsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a) ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !44)
  call void @llvm.experimental.noalias.scope.decl(metadata !45)
  %i.d = lshr i64 %i.c, 57
  %i.e = trunc nuw nsw i64 %i.d to i8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !46, !noundef !3 ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !alias.scope !46, !nonnull !3, !noundef !3 ; 2 uses
  %i.i = insertelement <16 x i8> poison, i8 %i.e, i64 0
  %i.j = shufflevector <16 x i8> %i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.k = add nsw i8 %2, -18
  %i.l = icmp samesign ugt i8 %2, 17
  %narrow1.i.i.i.i = select i1 %i.l, i8 %i.k, i8 23 ; 2 uses
  %i.m = icmp ne i8 %narrow1.i.i.i.i, 23
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.sroa.9.0.i.i = phi i64 [ 0, %bb.a ], [ %i.ag, %bb.c ]
  %.pn.i.i = phi i64 [ %i.c, %bb.a ], [ %i.ah, %bb.c ]
  %.sroa.01.0.i.i = and i64 %.pn.i.i, %i.g        ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.i.i
  %.sroa.0.0.copyload.i27.i = load <16 x i8>, ptr %i.n, align 1, !noalias !47 ; 2 uses
  %i.o = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i, %i.j
  %i.p = bitcast <16 x i1> %i.o to i16            ; 2 uses
  %.not.i.not33.i = icmp eq i16 %i.p, 0
  br i1 %.not.i.not33.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1U_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11rustc_entry0E0Csa5Qem16B4JI_15deltalake_azure.exit.thread.i
  %.sroa.06.0.i34.i = phi i16 [ %i.af, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1U_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11rustc_entry0E0Csa5Qem16B4JI_15deltalake_azure.exit.thread.i ], [ %i.p, %bb.b ] ; 3 uses
  %i.q = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i34.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = add i64 %.sroa.01.0.i.i, %i.r
  %i.t = and i64 %i.s, %i.g
  %i.u = sub nsw i64 0, %i.t
  %i.v = getelementptr inbounds [32 x i8], ptr %i.h, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -32
  %.val2.i.i = load i8, ptr %i.w, align 1, !range !48, !noalias !49, !noundef !3 ; 3 uses
  %i.x = add nsw i8 %.val2.i.i, -18
  %i.y = icmp samesign ugt i8 %.val2.i.i, 17
  %narrow.i.i.i.i = select i1 %i.y, i8 %i.x, i8 23
  %i.z = icmp eq i8 %narrow.i.i.i.i, %narrow1.i.i.i.i
  %i.aa = icmp eq i8 %.val2.i.i, %2
  %spec.select.i.i.i.i = or i1 %i.m, %i.aa
  %or.cond.i = and i1 %spec.select.i.i.i.i, %i.z
  br i1 %or.cond.i, label %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_B1S_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11rustc_entry0ECsa5Qem16B4JI_15deltalake_azure.exit, label %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1U_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11rustc_entry0E0Csa5Qem16B4JI_15deltalake_azure.exit.thread.i, !prof !50

._crit_edge.i:                                    ; preds = %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1U_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11rustc_entry0E0Csa5Qem16B4JI_15deltalake_azure.exit.thread.i, %bb.b
  %i.ab = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i, splat (i8 -1)
  %i.ac = bitcast <16 x i1> %i.ab to i16
  %i.ad = icmp eq i16 %i.ac, 0
  br i1 %i.ad, label %bb.c, label %bb.d, !prof !5

_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1U_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11rustc_entry0E0Csa5Qem16B4JI_15deltalake_azure.exit.thread.i: ; preds = %.lr.ph.i
  %i.ae = add i16 %.sroa.06.0.i34.i, -1
  %i.af = and i16 %i.ae, %.sroa.06.0.i34.i        ; 2 uses
  %.not.i.not.i = icmp eq i16 %i.af, 0
  br i1 %.not.i.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.c:                                             ; preds = %._crit_edge.i
  %i.ag = add i64 %.sroa.9.0.i.i, 16              ; 2 uses
  %i.ah = add i64 %.sroa.01.0.i.i, %i.ag
  br label %bb.b

_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_B1S_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11rustc_entry0ECsa5Qem16B4JI_15deltalake_azure.exit: ; preds = %.lr.ph.i
  store ptr %i.v, ptr %0, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.ai, align 8
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  call void @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE7reserveNCINvNtB8_3map11make_hasherBQ_B1S_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
  store ptr %1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_B1S_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11rustc_entry0ECsa5Qem16B4JI_15deltalake_azure.exit
  %.sink = phi i8 [ %2, %bb.d ], [ 41, %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_B1S_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11rustc_entry0ECsa5Qem16B4JI_15deltalake_azure.exit ]
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6insertCsa5Qem16B4JI_15deltalake_azure(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(48) %1, i8 noundef range(i8 0, 41) %2, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4 = alloca [31 x i8], align 1            ; 4 uses
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  store i8 %2, ptr %i.a, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.c = invoke noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneRNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyECsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a)
          to label %bb.b unwind label %.loopexit.split-lp ; 2 uses

bb.b:                                             ; preds = %bb.a
  invoke void @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE7reserveNCINvNtB8_3map11make_hasherBQ_B1S_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !60, !nonnull !3, !noundef !3 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val7.i = load i64, ptr %i.d, align 8, !alias.scope !60, !noundef !3 ; 3 uses
  %i.e = lshr i64 %i.c, 57
  %i.f = trunc nuw nsw i64 %i.e to i8             ; 3 uses
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.noexc
  %.pn.i.i = phi i64 [ %i.c, %.noexc ], [ %i.ah, %bb.f ]
  %.sroa.4.0.i.i = phi i64 [ undef, %.noexc ], [ %.sroa.4.124.i.i, %bb.f ]
  %.sroa.04.0.i.i = phi i64 [ 0, %.noexc ], [ %.sroa.04.126.i.i, %bb.f ]
  %i.i = phi i64 [ 0, %.noexc ], [ %i.ag, %bb.f ]
  %.sroa.0.021.i.i = and i64 %.pn.i.i, %.val7.i   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.021.i.i
  %.sroa.0.0.copyload.i31.i.i = load <16 x i8>, ptr %i.j, align 1, !noalias !61 ; 3 uses
  %i.k = icmp eq <16 x i8> %.sroa.0.0.copyload.i31.i.i, %i.h
  %i.l = bitcast <16 x i1> %i.k to i16            ; 2 uses
  %.not32.i.i = icmp eq i16 %i.l, 0
  br i1 %.not32.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.sroa.01.033.i.i = phi i16 [ %i.w, %bb.d ], [ %i.l, %bb.c ] ; 3 uses
  %i.m = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.01.033.i.i, i1 true)
  %i.n = zext nneg i16 %i.m to i64
  %i.o = add i64 %.sroa.0.021.i.i, %i.n
  %i.p = and i64 %i.o, %.val7.i
  %i.q = load ptr, ptr %1, align 8, !alias.scope !60, !noalias !62, !nonnull !3, !noundef !3
  %i.r = sub nsw i64 0, %i.p                      ; 2 uses
  %i.s = getelementptr inbounds [32 x i8], ptr %i.q, i64 %i.r
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -32
  %i.u = invoke noundef zeroext i1 @_RNvXCs3gpiEk3WpjL_9hashbrownNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyINtB2_10EquivalentBq_E10equivalentCsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.t)
          to label %.noexc6 unwind label %.loopexit

.noexc6:                                          ; preds = %.lr.ph.i.i
  br i1 %i.u, label %bb.i, label %bb.d, !prof !4

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %.not13.i.i = icmp eq i64 %.sroa.04.0.i.i, 1
  br i1 %.not13.i.i, label %.thread.i.i, label %bb.e, !prof !5

bb.d:                                             ; preds = %.noexc6
  %i.v = add i16 %.sroa.01.033.i.i, -1
  %i.w = and i16 %i.v, %.sroa.01.033.i.i          ; 2 uses
  %.not.i.i = icmp eq i16 %i.w, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.x = icmp slt <16 x i8> %.sroa.0.0.copyload.i31.i.i, zeroinitializer
  %i.y = bitcast <16 x i1> %i.x to i16            ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.y, 0
  br i1 %.not.i.i.i, label %bb.f, label %.thread28.i.i, !prof !5

.thread28.i.i:                                    ; preds = %bb.e
  %i.z = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.y, i1 true)
  %i.aa = zext nneg i16 %i.z to i64
  %i.ab = add i64 %.sroa.0.021.i.i, %i.aa
  %i.ac = and i64 %i.ab, %.val7.i
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread28.i.i, %._crit_edge.i.i
  %.sroa.4.125.i.i = phi i64 [ %i.ac, %.thread28.i.i ], [ %.sroa.4.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.ad = icmp eq <16 x i8> %.sroa.0.0.copyload.i31.i.i, splat (i8 -1)
  %i.ae = bitcast <16 x i1> %i.ad to i16
  %i.af = icmp eq i16 %i.ae, 0
  br i1 %i.af, label %bb.f, label %bb.g, !prof !5

bb.f:                                             ; preds = %.thread.i.i, %bb.e
  %.sroa.04.126.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.e ]
  %.sroa.4.124.i.i = phi i64 [ %.sroa.4.125.i.i, %.thread.i.i ], [ undef, %bb.e ]
  %i.ag = add i64 %i.i, 16                        ; 2 uses
  %i.ah = add i64 %i.ag, %.sroa.0.021.i.i
  br label %bb.c

bb.g:                                             ; preds = %.thread.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.125.i.i
  %i.aj = load i8, ptr %i.ai, align 1, !noundef !3
  %i.ak = icmp sgt i8 %i.aj, -1
  br i1 %i.ak, label %bb.h, label %bb.k, !prof !5

bb.h:                                             ; preds = %bb.g
  %.val72.i.i.i = load <16 x i8>, ptr %.val.i, align 16
  %i.al = icmp slt <16 x i8> %.val72.i.i.i, zeroinitializer
  %i.am = bitcast <16 x i1> %i.al to i16          ; 2 uses
  %.not.i24.i.i = icmp ne i16 %i.am, 0
  %i.an = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.am, i1 true)
  %i.ao = zext nneg i16 %i.an to i64
  call void @llvm.assume(i1 %.not.i24.i.i)
  br label %bb.k

bb.i:                                             ; preds = %.noexc6
  %i.ap = load ptr, ptr %1, align 8, !alias.scope !60, !nonnull !3, !noundef !3
  %i.aq = getelementptr inbounds [32 x i8], ptr %i.ap, i64 %i.r
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  ret void

bb.k:                                             ; preds = %bb.h, %bb.g
  %.sroa.3.0.i.ph.i = phi i64 [ %i.ao, %bb.h ], [ %.sroa.4.125.i.i, %bb.g ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.4.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !63)
  %i.as = load ptr, ptr %1, align 8, !alias.scope !63, !nonnull !3, !noundef !3 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %.sroa.3.0.i.ph.i ; 2 uses
  %i.au = load i8, ptr %i.at, align 1, !noalias !64, !noundef !3
  %i.av = and i8 %i.au, 1
  %i.aw = zext nneg i8 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ay = add i64 %.sroa.3.0.i.ph.i, -16
  %i.az = load i64, ptr %i.d, align 8, !alias.scope !63, !noundef !3
  %i.ba = and i64 %i.az, %i.ay
  store i8 %i.f, ptr %i.at, align 1, !noalias !64
  %i.bb = getelementptr i8, ptr %i.as, i64 %i.ba
  %i.bc = getelementptr i8, ptr %i.bb, i64 16
  store i8 %i.f, ptr %i.bc, align 1, !noalias !64
  %i.bd = load <2 x i64>, ptr %i.ax, align 8, !alias.scope !63
  %i.be = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.aw, i64 0
  %i.bf = sub <2 x i64> %i.bd, %i.be
  store <2 x i64> %i.bf, ptr %i.ax, align 8, !alias.scope !63
  %i.bg = sub nsw i64 0, %.sroa.3.0.i.ph.i
  %i.bh = getelementptr inbounds [32 x i8], ptr %i.as, i64 %i.bg ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -32
  store i8 %2, ptr %i.bi, align 8, !noalias !63
  %.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %i.bh, i64 -31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4, i64 31, i1 false), !noalias !63
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.j

.loopexit:                                        ; preds = %.lr.ph.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %4

.loopexit.split-lp:                               ; preds = %bb.b, %bb.a
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %4

4:                                                ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef align 8 dereferenceable(24) %3) #14
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %4
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #13
  unreachable

bb.m:                                             ; preds = %4
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvMs1_NtNtCs3JXekYNd0JR_7dashmap6mapref5entryINtB5_11VacantEntryNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EE6insertCsa5Qem16B4JI_15deltalake_azure(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(112) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !3, !align !7, !noundef !3 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.e = load i64, ptr %i.d, align 8, !noundef !3
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.g = load i64, ptr %i.f, align 8, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  %i.h = load ptr, ptr %i.c, align 8, !alias.scope !68, !nonnull !3, !noundef !3 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.g ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !noalias !69, !noundef !3
  %i.k = and i8 %i.j, 1
  %i.l = zext nneg i8 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.n = lshr i64 %i.e, 57
  %i.o = trunc nuw nsw i64 %i.n to i8             ; 2 uses
  %i.p = add i64 %i.g, -16
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !68, !noundef !3
  %i.s = and i64 %i.r, %i.p
  store i8 %i.o, ptr %i.i, align 1, !noalias !69
  %i.t = getelementptr i8, ptr %i.h, i64 %i.s
  %i.u = getelementptr i8, ptr %i.t, i64 16
  store i8 %i.o, ptr %i.u, align 1, !noalias !69
  %i.v = load <2 x i64>, ptr %i.m, align 8, !alias.scope !68
  %i.w = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.l, i64 0
  %i.x = sub <2 x i64> %i.v, %i.w
  store <2 x i64> %i.x, ptr %i.m, align 8, !alias.scope !68
  %i.y = sub nsw i64 0, %i.g
  %i.z = getelementptr inbounds [104 x i8], ptr %i.h, i64 %i.y ; 3 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -104 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.aa, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 88, i1 false), !noalias !68
  %.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %i.z, i64 -16 ; 2 uses
  store ptr %2, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !68
  %.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %i.z, i64 -8
  store ptr %3, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !68
  store ptr %i.b, ptr %0, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aa, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.4.0..sroa_idx, ptr %i.ac, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvMs1_NtNtCs3JXekYNd0JR_7dashmap6mapref5entryINtB5_11VacantEntryNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EE6insertCsa5Qem16B4JI_15deltalake_azure(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(112) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !3, !align !7, !noundef !3 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.e = load i64, ptr %i.d, align 8, !noundef !3
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.g = load i64, ptr %i.f, align 8, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  %i.h = load ptr, ptr %i.c, align 8, !alias.scope !73, !nonnull !3, !noundef !3 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.g ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !noalias !74, !noundef !3
  %i.k = and i8 %i.j, 1
  %i.l = zext nneg i8 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.n = lshr i64 %i.e, 57
  %i.o = trunc nuw nsw i64 %i.n to i8             ; 2 uses
  %i.p = add i64 %i.g, -16
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !73, !noundef !3
  %i.s = and i64 %i.r, %i.p
  store i8 %i.o, ptr %i.i, align 1, !noalias !74
  %i.t = getelementptr i8, ptr %i.h, i64 %i.s
  %i.u = getelementptr i8, ptr %i.t, i64 16
  store i8 %i.o, ptr %i.u, align 1, !noalias !74
  %i.v = load <2 x i64>, ptr %i.m, align 8, !alias.scope !73
  %i.w = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.l, i64 0
  %i.x = sub <2 x i64> %i.v, %i.w
  store <2 x i64> %i.x, ptr %i.m, align 8, !alias.scope !73
  %i.y = sub nsw i64 0, %i.g
  %i.z = getelementptr inbounds [104 x i8], ptr %i.h, i64 %i.y ; 3 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -104 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.aa, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 88, i1 false), !noalias !73
  %.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %i.z, i64 -16 ; 2 uses
  store ptr %2, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !73
  %.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %i.z, i64 -8
  store ptr %3, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !73
  store ptr %i.b, ptr %0, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aa, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.4.0..sroa_idx, ptr %i.ac, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringE4iterCsa5Qem16B4JI_15deltalake_azure(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !3
  %i.d = add i64 %i.c, 1
  tail call void @_RNvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_12RawIterRangeTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE3newCsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.a, i64 noundef %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !3
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.f, ptr %.sroa.42.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXCsa5Qem16B4JI_15deltalake_azureINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1s_ENtB2_12AzureOptions16as_azure_options(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 9 uses
  %i.d = alloca [40 x i8], align 8                ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !alias.scope !95, !nonnull !3, !noundef !3 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !95, !noundef !3
  %i.h = add i64 %i.g, 1
  call void @_RNvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBU_EE3newCsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.e, i64 noundef %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !95, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !96
  %i.k = tail call { i64, i64 } @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @5), !noalias !96 ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0
  %i.m = extractvalue { i64, i64 } %i.k, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) @1, i64 32, i1 false), !noalias !96
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  store i64 %i.l, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !96
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 %i.m, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !96
  invoke void @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE7reserveNCINvNtB8_3map11make_hasherBQ_B1S_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.c, i64 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.4.0..sroa_idx.i)
          to label %.noexc.i unwind label %bb.b, !noalias !96

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !97
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !97
  store ptr %i.c, ptr %i.b, align 8, !noalias !98
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  invoke void @_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9fold_implNCINvXsG_NtB8_3mapINtB1V_4IterBV_BV_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2t_8adapters10filter_map15filter_map_foldTRBV_B4e_ETNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyBV_EuNCNvXCsa5Qem16B4JI_15deltalake_azureINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapBV_BV_ENtB5A_12AzureOptions16as_azure_options0NCINvNvB2n_8for_each4callB4n_NCINvXs1i_B1V_INtB1V_7HashMapB4o_BV_NtNtNtB6e_4hash6random11RandomStateEINtNtB2r_7collect6ExtendB4n_E6extendINtB3t_9FilterMapINtB68_4IterBV_BV_EB5v_EE0E0E0E0uEB5A_(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(32) %i.a, i64 noundef %i.j, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_RINvXs1e_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB7_7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorTB15_B27_EE9from_iterINtNtNtB2R_8adapters10filter_map9FilterMapINtB7_4IterB27_B27_ENCNvXCsa5Qem16B4JI_15deltalake_azureIBS_B27_B27_ENtB5a_12AzureOptions16as_azure_options0EEB5a_.exit unwind label %bb.b, !noalias !96

bb.b:                                             ; preds = %.noexc.i, %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsa5Qem16B4JI_15deltalake_azure.exit.i unwind label %bb.c, !noalias !96

bb.c:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #13, !noalias !96
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsa5Qem16B4JI_15deltalake_azure.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.n

_RINvXs1e_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB7_7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorTB15_B27_EE9from_iterINtNtNtB2R_8adapters10filter_map9FilterMapINtB7_4IterB27_B27_ENCNvXCsa5Qem16B4JI_15deltalake_azureIBS_B27_B27_ENtB5a_12AzureOptions16as_azure_options0EEB5a_.exit: ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !97
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false), !noalias !99
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !96
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream10try_filterINtB5_9TryFilterINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1t_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB3J_5ErrorENtNtB1t_6marker4SendEL_EEINtNtNtBb_6future5ready5ReadybENCNvYNtNtB3J_5azure14MicrosoftAzureNtB3J_11ObjectStore16list_with_offset0EB2u_9poll_nextCsa5Qem16B4JI_15deltalake_azure(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(144) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.791 = alloca [72 x i8], align 8          ; 4 uses
  %.sroa.8 = alloca [16 x i8], align 8            ; 2 uses
  %i.a = alloca [96 x i8], align 8                ; 13 uses
  %.sroa.11.sroa.13 = alloca [56 x i8], align 8   ; 8 uses
  %.sroa.7 = alloca [88 x i8], align 8            ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  %.sroa.745.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.846.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.745.sroa.7.0..sroa.745.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.745.sroa.8.0..sroa.745.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.791.80..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.791, i64 56
  %.sroa.5118.0..sroa_idx119 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.6121.0..sroa_idx122 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.7124.0..sroa_idx125 = getelementptr inbounds nuw i8, ptr %1, i64 48
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.g = load i8, ptr %i.c, align 8, !range !8, !noundef !3 ; 3 uses
  %.not = icmp eq i8 %i.g, 3
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !104)
  store i8 2, ptr %i.c, align 8, !alias.scope !104
end_hunk_0
