inline.NumInlined: 180
inline.NumDeleted: 96
begin_hunk_0_@_RINvXs1e_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB7_7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorTB15_B26_EE9from_iterINtNtNtB2Q_8adapters10filter_map9FilterMapNtNtBd_3env6VarsOsNCINvNtCs62u4JVtZyFF_13deltalake_gcp6config17parse_environmentNtNtNtBd_3ffi6os_str8OsStringB62_B4K_E0EEB59_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !93
  invoke void @_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6insertCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.o, i8 noundef %i.bz, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %.noexc3.i.i.i.i unwind label %bb.e, !noalias !54

.noexc3.i.i.i.i:                                  ; preds = %bb.as
  %i.cs = load i64, ptr %i.a, align 8, !range !55, !alias.scope !96, !noalias !93, !noundef !3
  %i.ct = icmp eq i64 %i.cs, -9223372036854775808
  br i1 %i.ct, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_each4callTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringENCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB34_7HashMapB1g_B2h_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtBa_7collect6ExtendB1f_E6extendINtNtNtBc_8adapters10filter_map9FilterMapNtNtB41_3env6VarsOsNCINvNtCs62u4JVtZyFF_13deltalake_gcp6config17parse_environmentNtNtNtB41_3ffi6os_str8OsStringB7g_B5X_E0EE0E0B6n_.exit.i.i.i.i.i, label %bb.at

bb.at:                                            ; preds = %.noexc3.i.i.i.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i.i.i.i.i.i.i.i unwind label %bb.au, !noalias !99

bb.au:                                            ; preds = %bb.at
  %i.cu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body.i.i.i.i unwind label %bb.av, !noalias !99

bb.av:                                            ; preds = %bb.au
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #13, !noalias !99
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i.i.i.i.i.i.i.i: ; preds = %bb.at
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_each4callTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringENCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB34_7HashMapB1g_B2h_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtBa_7collect6ExtendB1f_E6extendINtNtNtBc_8adapters10filter_map9FilterMapNtNtB41_3env6VarsOsNCINvNtCs62u4JVtZyFF_13deltalake_gcp6config17parse_environmentNtNtNtB41_3ffi6os_str8OsStringB7g_B5X_E0EE0E0B6n_.exit.i.i.i.i.i unwind label %bb.e, !noalias !54

_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_each4callTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringENCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB34_7HashMapB1g_B2h_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtBa_7collect6ExtendB1f_E6extendINtNtNtBc_8adapters10filter_map9FilterMapNtNtB41_3env6VarsOsNCINvNtCs62u4JVtZyFF_13deltalake_gcp6config17parse_environmentNtNtNtB41_3ffi6os_str8OsStringB7g_B5X_E0EE0E0B6n_.exit.i.i.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i.i.i.i.i.i.i.i, %.noexc3.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !89
  br label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldTNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringB1b_ETNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEuNCINvNtCs62u4JVtZyFF_13deltalake_gcp6config17parse_environmentB1b_B1b_NtNtB1h_3env6VarsOsE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1Y_NCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6e_7HashMapB1Z_B30_NtNtNtB1h_4hash6random11RandomStateEINtNtB5i_7collect6ExtendB1Y_E6extendINtB4_9FilterMapB4M_B3E_EE0E0E0B3L_.exit.i.i.i.i.backedge

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldTNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringB1b_ETNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEuNCINvNtCs62u4JVtZyFF_13deltalake_gcp6config17parse_environmentB1b_B1b_NtNtB1h_3env6VarsOsE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1Y_NCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6e_7HashMapB1Z_B30_NtNtNtB1h_4hash6random11RandomStateEINtNtB5i_7collect6ExtendB1Y_E6extendINtB4_9FilterMapB4M_B3E_EE0E0E0B3L_.exit.i.i.i.i.backedge: ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_each4callTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringENCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB34_7HashMapB1g_B2h_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtBa_7collect6ExtendB1f_E6extendINtNtNtBc_8adapters10filter_map9FilterMapNtNtB41_3env6VarsOsNCINvNtCs62u4JVtZyFF_13deltalake_gcp6config17parse_environmentNtNtNtB41_3ffi6os_str8OsStringB7g_B5X_E0EE0E0B6n_.exit.i.i.i.i.i, %.noexc2.i.i.i.i, %.noexc.i.i.i.i
  br label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldTNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringB1b_ETNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEuNCINvNtCs62u4JVtZyFF_13deltalake_gcp6config17parse_environmentB1b_B1b_NtNtB1h_3env6VarsOsE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1Y_NCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6e_7HashMapB1Z_B30_NtNtNtB1h_4hash6random11RandomStateEINtNtB5i_7collect6ExtendB1Y_E6extendINtB4_9FilterMapB4M_B3E_EE0E0E0B3L_.exit.i.i.i.i

bb.aw:                                            ; preds = %.body.i.i.i.i
  %i.cw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #13, !noalias !54
  unreachable

_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_mapINtB6_9FilterMapNtNtCs2pqxYH9ZEk8_3std3env6VarsOsNCINvNtCs62u4JVtZyFF_13deltalake_gcp6config17parse_environmentNtNtNtB1f_3ffi6os_str8OsStringB2I_B1b_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3n_8for_each4callTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringENCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6f_7HashMapB4r_B5s_NtNtNtB1f_4hash6random11RandomStateEINtNtB3r_7collect6ExtendB4q_E6extendBV_E0E0EB1P_.exit.i.i: ; preds = %bb.f
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringBX_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %bb.ba unwind label %bb.az

bb.ax:                                            ; preds = %bb.c, %bb.b
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringBX_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %.body unwind label %bb.ay, !noalias !46

bb.ay:                                            ; preds = %bb.ax
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #13, !noalias !46
  unreachable

bb.az:                                            ; preds = %_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_mapINtB6_9FilterMapNtNtCs2pqxYH9ZEk8_3std3env6VarsOsNCINvNtCs62u4JVtZyFF_13deltalake_gcp6config17parse_environmentNtNtNtB1f_3ffi6os_str8OsStringB2I_B1b_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3n_8for_each4callTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringENCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6f_7HashMapB4r_B5s_NtNtNtB1f_4hash6random11RandomStateEINtNtB3r_7collect6ExtendB4q_E6extendBV_E0E0EB1P_.exit.i.i
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i.i.i.i, %bb.ax, %bb.az
  %eh.lpad-body = phi { ptr, i32 } [ %i.cy, %bb.az ], [ %lpad.thr_comm.i, %bb.ax ], [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ]
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.o)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters10filter_map9FilterMapNtNtCs2pqxYH9ZEk8_3std3env6VarsOsNCINvNtCs62u4JVtZyFF_13deltalake_gcp6config17parse_environmentNtNtNtB1w_3ffi6os_str8OsStringB2Z_B1s_E0EEB26_.exit unwind label %bb.bb

bb.ba:                                            ; preds = %_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_mapINtB6_9FilterMapNtNtCs2pqxYH9ZEk8_3std3env6VarsOsNCINvNtCs62u4JVtZyFF_13deltalake_gcp6config17parse_environmentNtNtNtB1f_3ffi6os_str8OsStringB2I_B1b_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3n_8for_each4callTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringENCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6f_7HashMapB4r_B5s_NtNtNtB1f_4hash6random11RandomStateEINtNtB3r_7collect6ExtendB4q_E6extendBV_E0E0EB1P_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.o, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  ret void

bb.bb:                                            ; preds = %bb.bc, %.body
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters10filter_map9FilterMapNtNtCs2pqxYH9ZEk8_3std3env6VarsOsNCINvNtCs62u4JVtZyFF_13deltalake_gcp6config17parse_environmentNtNtNtB1w_3ffi6os_str8OsStringB2Z_B1s_E0EEB26_.exit: ; preds = %bb.bc, %.body
  %.pn6 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.da, %bb.bc ]
  resume { ptr, i32 } %.pn6

bb.bc:                                            ; preds = %bb.a
  %i.da = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringBX_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters10filter_map9FilterMapNtNtCs2pqxYH9ZEk8_3std3env6VarsOsNCINvNtCs62u4JVtZyFF_13deltalake_gcp6config17parse_environmentNtNtNtB1w_3ffi6os_str8OsStringB2Z_B1s_E0EEB26_.exit unwind label %bb.bb
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream8buffered8BufferedINtNtB8_3map3MapINtNtBa_4iter4IterINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtNtB1R_5slice4iter4IterINtNtNtB1R_3ops5range5RangeyEEEENCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore10get_ranges00EENtNtBa_10try_stream12TryStreamExt11try_collectINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEEB3K_(ptr dead_on_unwind noalias noundef writable sret([136 x i8]) align 8 captures(none) dereferenceable(136) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(112) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream11try_collectINtB2_10TryCollectINtNtNtB6_6stream8buffered8BufferedINtNtB1t_3map3MapINtNtB6_4iter4IterINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtNtB2F_5slice4iter4IterINtNtNtB2F_3ops5range5RangeyEEEENCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore10get_ranges00EEINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEE3newB4y_(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(none) dereferenceable(136) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(112) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream8buffered8BufferedINtNtB8_3map3MapINtNtBa_4iter4IterINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtNtB1R_5slice4iter4IterINtNtNtB1R_3ops5range5RangeyEEEENCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB3K_11ObjectStore10get_ranges00EENtNtBa_10try_stream12TryStreamExt11try_collectINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECs62u4JVtZyFF_13deltalake_gcp(ptr dead_on_unwind noalias noundef writable sret([136 x i8]) align 8 captures(none) dereferenceable(136) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(112) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream11try_collectINtB2_10TryCollectINtNtNtB6_6stream8buffered8BufferedINtNtB1t_3map3MapINtNtB6_4iter4IterINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtNtB2F_5slice4iter4IterINtNtNtB2F_3ops5range5RangeyEEEENCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB4y_11ObjectStore10get_ranges00EEINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEE3newCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(none) dereferenceable(136) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(112) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCs3gpiEk3WpjL_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11rustc_entryCs62u4JVtZyFF_13deltalake_gcp(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(48) %1, i8 noundef range(i8 0, 23) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 2 uses
  store i8 %2, ptr %i.a, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.c = call noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneRNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a) ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !100)
  call void @llvm.experimental.noalias.scope.decl(metadata !103)
  %i.d = lshr i64 %i.c, 57
  %i.e = trunc nuw nsw i64 %i.d to i8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !106, !noalias !107, !noundef !3 ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !alias.scope !106, !noalias !107, !nonnull !3, !noundef !3 ; 2 uses
  %i.i = insertelement <16 x i8> poison, i8 %i.e, i64 0
  %i.j = shufflevector <16 x i8> %i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.k = add nsw i8 %2, -18
  %i.l = icmp samesign ugt i8 %2, 17
  %narrow1.i.i.i.i = select i1 %i.l, i8 %i.k, i8 5 ; 2 uses
  %i.m = icmp ne i8 %narrow1.i.i.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.sroa.9.0.i.i = phi i64 [ 0, %bb.a ], [ %i.ag, %bb.c ]
  %.pn.i.i = phi i64 [ %i.c, %bb.a ], [ %i.ah, %bb.c ]
  %.sroa.01.0.i.i = and i64 %.pn.i.i, %i.g        ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.i.i
  %.sroa.0.0.copyload.i27.i = load <16 x i8>, ptr %i.n, align 1, !noalias !110 ; 2 uses
  %i.o = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i, %i.j
  %i.p = bitcast <16 x i1> %i.o to i16            ; 2 uses
  %.not.i.not33.i = icmp eq i16 %i.p, 0
  br i1 %.not.i.not33.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1T_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11rustc_entry0E0Cs62u4JVtZyFF_13deltalake_gcp.exit.thread.i
  %.sroa.06.0.i34.i = phi i16 [ %i.af, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1T_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11rustc_entry0E0Cs62u4JVtZyFF_13deltalake_gcp.exit.thread.i ], [ %i.p, %bb.b ] ; 3 uses
  %i.q = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i34.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = add i64 %.sroa.01.0.i.i, %i.r
  %i.t = and i64 %i.s, %i.g
  %i.u = sub nsw i64 0, %i.t
  %i.v = getelementptr inbounds [32 x i8], ptr %i.h, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -32
  %.val2.i.i = load i8, ptr %i.w, align 1, !range !88, !noalias !113, !noundef !3 ; 3 uses
  %i.x = add nsw i8 %.val2.i.i, -18
  %i.y = icmp samesign ugt i8 %.val2.i.i, 17
  %narrow.i.i.i.i = select i1 %i.y, i8 %i.x, i8 5
  %i.z = icmp eq i8 %narrow.i.i.i.i, %narrow1.i.i.i.i
  %i.aa = icmp eq i8 %.val2.i.i, %2
  %spec.select.i.i.i.i = or i1 %i.m, %i.aa
  %or.cond.i = and i1 %spec.select.i.i.i.i, %i.z
  br i1 %or.cond.i, label %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_B1R_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11rustc_entry0ECs62u4JVtZyFF_13deltalake_gcp.exit, label %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1T_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11rustc_entry0E0Cs62u4JVtZyFF_13deltalake_gcp.exit.thread.i, !prof !116

._crit_edge.i:                                    ; preds = %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1T_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11rustc_entry0E0Cs62u4JVtZyFF_13deltalake_gcp.exit.thread.i, %bb.b
  %i.ab = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i, splat (i8 -1)
  %i.ac = bitcast <16 x i1> %i.ab to i16
  %i.ad = icmp eq i16 %i.ac, 0
  br i1 %i.ad, label %bb.c, label %bb.d, !prof !21

_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1T_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11rustc_entry0E0Cs62u4JVtZyFF_13deltalake_gcp.exit.thread.i: ; preds = %.lr.ph.i
  %i.ae = add i16 %.sroa.06.0.i34.i, -1
  %i.af = and i16 %i.ae, %.sroa.06.0.i34.i        ; 2 uses
  %.not.i.not.i = icmp eq i16 %i.af, 0
  br i1 %.not.i.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.c:                                             ; preds = %._crit_edge.i
  %i.ag = add i64 %.sroa.9.0.i.i, 16              ; 2 uses
  %i.ah = add i64 %.sroa.01.0.i.i, %i.ag
  br label %bb.b

_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_B1R_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11rustc_entry0ECs62u4JVtZyFF_13deltalake_gcp.exit: ; preds = %.lr.ph.i
  store ptr %i.v, ptr %0, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.ai, align 8
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  call void @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE7reserveNCINvNtB8_3map11make_hasherBQ_B1R_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
  store ptr %1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_B1R_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11rustc_entry0ECs62u4JVtZyFF_13deltalake_gcp.exit
  %.sink = phi i8 [ %2, %bb.d ], [ 23, %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_B1R_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11rustc_entry0ECs62u4JVtZyFF_13deltalake_gcp.exit ]
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6insertCs62u4JVtZyFF_13deltalake_gcp(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(48) %1, i8 noundef range(i8 0, 23) %2, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4 = alloca [31 x i8], align 1            ; 4 uses
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  store i8 %2, ptr %i.a, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.c = invoke noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneRNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a)
          to label %bb.b unwind label %.loopexit.split-lp ; 2 uses

bb.b:                                             ; preds = %bb.a
  invoke void @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE7reserveNCINvNtB8_3map11make_hasherBQ_B1R_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !117, !noalias !120, !nonnull !3, !noundef !3 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val7.i = load i64, ptr %i.d, align 8, !alias.scope !117, !noalias !120, !noundef !3 ; 3 uses
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
  %.sroa.0.0.copyload.i31.i.i = load <16 x i8>, ptr %i.j, align 1, !noalias !123 ; 3 uses
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
  %i.q = load ptr, ptr %1, align 8, !alias.scope !117, !noalias !126, !nonnull !3, !noundef !3
  %i.r = sub nsw i64 0, %i.p                      ; 2 uses
  %i.s = getelementptr inbounds [32 x i8], ptr %i.q, i64 %i.r
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -32
  %i.u = invoke noundef zeroext i1 @_RNvXCs3gpiEk3WpjL_9hashbrownNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyINtB2_10EquivalentBq_E10equivalentCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.t)
          to label %.noexc6 unwind label %.loopexit

.noexc6:                                          ; preds = %.lr.ph.i.i
  br i1 %i.u, label %bb.i, label %bb.d, !prof !20

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %.not13.i.i = icmp eq i64 %.sroa.04.0.i.i, 1
  br i1 %.not13.i.i, label %.thread.i.i, label %bb.e, !prof !21

bb.d:                                             ; preds = %.noexc6
  %i.v = add i16 %.sroa.01.033.i.i, -1
  %i.w = and i16 %i.v, %.sroa.01.033.i.i          ; 2 uses
  %.not.i.i = icmp eq i16 %i.w, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.x = icmp slt <16 x i8> %.sroa.0.0.copyload.i31.i.i, zeroinitializer
  %i.y = bitcast <16 x i1> %i.x to i16            ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.y, 0
  br i1 %.not.i.i.i, label %bb.f, label %.thread28.i.i, !prof !21

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
  br i1 %i.af, label %bb.f, label %bb.g, !prof !21

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
  br i1 %i.ak, label %bb.h, label %bb.k, !prof !21

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
  %i.ap = load ptr, ptr %1, align 8, !alias.scope !117, !noalias !120, !nonnull !3, !noundef !3
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
  call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %i.as = load ptr, ptr %1, align 8, !alias.scope !129, !noalias !132, !nonnull !3, !noundef !3 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %.sroa.3.0.i.ph.i ; 2 uses
  %i.au = load i8, ptr %i.at, align 1, !noalias !134, !noundef !3
  %i.av = and i8 %i.au, 1
  %i.aw = zext nneg i8 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ay = add i64 %.sroa.3.0.i.ph.i, -16
  %i.az = load i64, ptr %i.d, align 8, !alias.scope !129, !noalias !132, !noundef !3
  %i.ba = and i64 %i.az, %i.ay
  store i8 %i.f, ptr %i.at, align 1, !noalias !134
  %i.bb = getelementptr i8, ptr %i.as, i64 %i.ba
  %i.bc = getelementptr i8, ptr %i.bb, i64 16
  store i8 %i.f, ptr %i.bc, align 1, !noalias !134
  %i.bd = load <2 x i64>, ptr %i.ax, align 8, !alias.scope !129, !noalias !132
  %i.be = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.aw, i64 0
  %i.bf = sub <2 x i64> %i.bd, %i.be
  store <2 x i64> %i.bf, ptr %i.ax, align 8, !alias.scope !129, !noalias !132
  %i.bg = sub nsw i64 0, %.sroa.3.0.i.ph.i
  %i.bh = getelementptr inbounds [32 x i8], ptr %i.as, i64 %i.bg ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -32
  store i8 %2, ptr %i.bi, align 8, !noalias !129
  %.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %i.bh, i64 -31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4, i64 31, i1 false), !noalias !129
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.j

.loopexit:                                        ; preds = %.lr.ph.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.loopexit.split-lp:                               ; preds = %bb.b, %bb.a
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.l:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef align 8 dereferenceable(24) %3) #15
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #13
  unreachable

bb.n:                                             ; preds = %bb.l
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringE4iterCs62u4JVtZyFF_13deltalake_gcp(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !3
  %i.d = add i64 %i.c, 1
  tail call void @_RNvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_12RawIterRangeTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE3newCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.a, i64 noundef %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !3
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.f, ptr %.sroa.42.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream8bufferedINtB4_8BufferedINtNtB6_3map3MapINtNtB8_4iter4IterINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtNtB1V_5slice4iter4IterINtNtNtB1V_3ops5range5RangeyEEEENCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore10get_ranges00EE3newB3O_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.01.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE3newCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.01.sroa.6.0..sroa_idx)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 0, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  %.sroa.01.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.01.sroa.4.0..sroa_idx, align 8
  %.sroa.01.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.01.sroa.5.0..sroa_idx, align 8
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.52.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 %2, ptr %i.b, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream8bufferedINtB4_8BufferedINtNtB6_3map3MapINtNtB8_4iter4IterINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtNtB1V_5slice4iter4IterINtNtNtB1V_3ops5range5RangeyEEEENCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB3O_11ObjectStore10get_ranges00EE3newCs62u4JVtZyFF_13deltalake_gcp(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.01.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE3newCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.01.sroa.6.0..sroa_idx)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 0, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  %.sroa.01.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.01.sroa.4.0..sroa_idx, align 8
  %.sroa.01.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.01.sroa.5.0..sroa_idx, align 8
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.52.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 %2, ptr %i.b, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream8bufferedINtB4_8BufferedINtNtB6_3map3MapINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1z_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3R_5ErrorENtNtB1z_6marker4SendEL_EENCNvYNtNtB3R_3gcp18GoogleCloudStorageNtB3R_11ObjectStore13delete_stream0EE3newCs62u4JVtZyFF_13deltalake_gcp(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = load <2 x ptr>, ptr %1, align 8          ; 3 uses
  %.sroa.6.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.0.copyload15 = load i64, ptr %.sroa.6.0..sroa_idx14, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB2d_11ObjectStore13delete_stream00EE3newCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = extractelement <2 x ptr> %i.b, i64 1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  %i.e = extractelement <2 x ptr> %i.b, i64 0
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream4fuse4FuseINtNtBL_3map3MapINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB41_5ErrorENtNtB4_6marker4SendEL_EENCNvYNtNtB41_3gcp18GoogleCloudStorageNtB41_11ObjectStore13delete_stream0EEECs62u4JVtZyFF_13deltalake_gcp(ptr %i.e, ptr nonnull %i.d) #15
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <2 x ptr> %i.b, ptr %i.f, align 8
  %.sroa.6.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %.sroa.6.0.copyload15, ptr %.sroa.6.0..sroa_idx13, align 8
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 0, ptr %.sroa.616.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 %2, ptr %i.g, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #13
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream8bufferedINtB4_8BufferedINtNtB6_3map3MapINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1z_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3R_5ErrorENtNtB1z_6marker4SendEL_EENCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtB3R_11ObjectStore13delete_stream0EE3newB5e_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = load <2 x ptr>, ptr %1, align 8          ; 3 uses
  %.sroa.6.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.0.copyload15 = load i64, ptr %.sroa.6.0..sroa_idx14, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EE3newB2d_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = extractelement <2 x ptr> %i.b, i64 1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  %i.e = extractelement <2 x ptr> %i.b, i64 0
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream4fuse4FuseINtNtBL_3map3MapINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB41_5ErrorENtNtB4_6marker4SendEL_EENCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtB41_11ObjectStore13delete_stream0EEEB5n_(ptr %i.e, ptr nonnull %i.d) #15
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <2 x ptr> %i.b, ptr %i.f, align 8
  %.sroa.6.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %.sroa.6.0.copyload15, ptr %.sroa.6.0..sroa_idx13, align 8
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 0, ptr %.sroa.616.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 %2, ptr %i.g, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #13
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXCs62u4JVtZyFF_13deltalake_gcpINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1q_ENtB2_10GcpOptions14as_gcp_options(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 9 uses
  %i.d = alloca [40 x i8], align 8                ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !alias.scope !135, !noalias !138, !nonnull !3, !noundef !3 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !135, !noalias !138, !noundef !3
  %i.h = add i64 %i.g, 1
  call void @_RNvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBU_EE3newCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.e, i64 noundef %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
end_hunk_0
