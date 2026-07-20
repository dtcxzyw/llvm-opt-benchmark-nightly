inline.NumInlined: 180
inline.NumDeleted: 96
begin_hunk_0_@_RNvMs_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream8bufferedINtB4_8BufferedINtNtB6_3map3MapINtNtB8_4iter4IterINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtNtB1V_5slice4iter4IterINtNtNtB1V_3ops5range5RangeyEEEENCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB3O_11ObjectStore10get_ranges00EE3newCs62u4JVtZyFF_13deltalake_gcp:bb.a
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
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !135, !noalias !138, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !140
  %i.k = tail call { i64, i64 } @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @3), !noalias !140 ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0
  %i.m = extractvalue { i64, i64 } %i.k, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) @1, i64 32, i1 false), !noalias !140
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  store i64 %i.l, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !140
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 %i.m, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !140
  invoke void @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE7reserveNCINvNtB8_3map11make_hasherBQ_B1R_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.c, i64 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.4.0..sroa_idx.i)
          to label %.noexc.i unwind label %bb.b, !noalias !140

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !144
  store ptr %i.c, ptr %i.b, align 8, !noalias !157
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  invoke void @_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9fold_implNCINvXsG_NtB8_3mapINtB1V_4IterBV_BV_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2t_8adapters10filter_map15filter_map_foldTRBV_B4e_ETNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyBV_EuNCNvXCs62u4JVtZyFF_13deltalake_gcpINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapBV_BV_ENtB5z_10GcpOptions14as_gcp_options0NCINvNvB2n_8for_each4callB4n_NCINvXs1i_B1V_INtB1V_7HashMapB4o_BV_NtNtNtB6b_4hash6random11RandomStateEINtNtB2r_7collect6ExtendB4n_E6extendINtB3t_9FilterMapINtB65_4IterBV_BV_EB5u_EE0E0E0E0uEB5z_(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(32) %i.a, i64 noundef %i.j, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_RINvXs1e_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB7_7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorTB15_B26_EE9from_iterINtNtNtB2Q_8adapters10filter_map9FilterMapINtB7_4IterB26_B26_ENCNvXCs62u4JVtZyFF_13deltalake_gcpIBS_B26_B26_ENtB59_10GcpOptions14as_gcp_options0EEB59_.exit unwind label %bb.b, !noalias !140

bb.b:                                             ; preds = %.noexc.i, %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs62u4JVtZyFF_13deltalake_gcp.exit.i unwind label %bb.c, !noalias !140

bb.c:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #13, !noalias !140
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs62u4JVtZyFF_13deltalake_gcp.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.n

_RINvXs1e_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB7_7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorTB15_B26_EE9from_iterINtNtNtB2Q_8adapters10filter_map9FilterMapINtB7_4IterB26_B26_ENCNvXCs62u4JVtZyFF_13deltalake_gcpIBS_B26_B26_ENtB59_10GcpOptions14as_gcp_options0EEB59_.exit: ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false), !noalias !161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !140
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream8bufferedINtB5_8BufferedINtNtB7_3map3MapINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1A_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3S_5ErrorENtNtB1A_6marker4SendEL_EENCNvYNtNtB3S_3gcp18GoogleCloudStorageNtB3S_11ObjectStore13delete_stream0EEB2B_9poll_nextCs62u4JVtZyFF_13deltalake_gcp(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(104) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [136 x i8], align 8               ; 5 uses
  %i.b = alloca [136 x i8], align 8               ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.f = tail call { ptr, i64 } @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB2d_11ObjectStore13delete_stream00EE28atomic_load_head_and_len_allCs62u4JVtZyFF_13deltalake_gcp(ptr noundef nonnull align 8 %i.e)
  %i.g = extractvalue { ptr, i64 } %i.f, 1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !noundef !3 ; 2 uses
  %i.j = icmp ult i64 %i.i, 115292150460684698
  tail call void @llvm.assume(i1 %i.j)
  %i.k = add i64 %i.g, %i.i
  %i.l = load i64, ptr %i.d, align 8, !noundef !3
  %i.m = icmp ult i64 %i.k, %i.l
  br i1 %i.m, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs0_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream4fuseINtB5_4FuseINtNtB7_3map3MapINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1s_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3K_5ErrorENtNtB1s_6marker4SendEL_EENCNvYNtNtB3K_3gcp18GoogleCloudStorageNtB3K_11ObjectStore13delete_stream0EEB2t_9poll_nextCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  %i.q = load i64, ptr %i.b, align 8, !range !162, !noundef !3
  %3 = and i64 %i.q, 1
  %or.cond.not = icmp eq i64 %3, 0
  br i1 %or.cond.not, label %bb.c, label %bb.d

.loopexit:                                        ; preds = %bb.d, %bb.a, %bb.c
  call void @_RNvXs6_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_14FuturesOrderedNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB1w_11ObjectStore13delete_stream00ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  %i.r = load i64, ptr %0, align 8, !range !163, !noundef !3 ; 2 uses
  switch i64 %i.r, label %bb.f [
    i64 -9223372036854775788, label %.sink.split
    i64 -9223372036854775789, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %i.n, i64 128, i1 false)
  %i.s = load i64, ptr %i.o, align 8, !noundef !3 ; 2 uses
  store i64 %i.s, ptr %i.p, align 8
  %i.t = add i64 %i.s, 1
  store i64 %i.t, ptr %i.o, align 8
  call void @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB2d_11ObjectStore13delete_stream00EE4pushCs62u4JVtZyFF_13deltalake_gcp(ptr noundef nonnull align 8 %i.e, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(136) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.u = call { ptr, i64 } @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB2d_11ObjectStore13delete_stream00EE28atomic_load_head_and_len_allCs62u4JVtZyFF_13deltalake_gcp(ptr noundef nonnull align 8 %i.e)
  %i.v = extractvalue { ptr, i64 } %i.u, 1
  %i.w = load i64, ptr %i.h, align 8, !noundef !3 ; 2 uses
  %i.x = icmp ult i64 %i.w, 115292150460684698
  call void @llvm.assume(i1 %i.x)
  %i.y = add i64 %i.v, %i.w
  %i.z = load i64, ptr %i.d, align 8, !noundef !3
  %i.aa = icmp ult i64 %i.y, %i.z
  br i1 %i.aa, label %bb.b, label %.loopexit

bb.e:                                             ; preds = %.loopexit
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ac = load i8, ptr %i.ab, align 8, !range !164, !noundef !3
  %i.ad = trunc nuw i8 %i.ac to i1
  %. = select i1 %i.ad, i64 -9223372036854775789, i64 -9223372036854775788
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %.loopexit
  %.sink = phi i64 [ %., %bb.e ], [ %i.r, %.loopexit ]
  store i64 %.sink, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %.loopexit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream8bufferedINtB5_8BufferedINtNtB7_3map3MapINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1A_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3S_5ErrorENtNtB1A_6marker4SendEL_EENCNvYNtNtB3S_3gcp18GoogleCloudStorageNtB3S_11ObjectStore13delete_stream0EEB2B_9size_hintCs62u4JVtZyFF_13deltalake_gcp(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = tail call { ptr, i64 } @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB2d_11ObjectStore13delete_stream00EE28atomic_load_head_and_len_allCs62u4JVtZyFF_13deltalake_gcp(ptr noundef nonnull align 8 %i.b)
  %i.d = extractvalue { ptr, i64 } %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !3 ; 2 uses
  %i.g = icmp ult i64 %i.f, 115292150460684698
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add i64 %i.d, %i.f                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.j = load i8, ptr %i.i, align 8, !range !164, !noundef !3
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @_RNvXs1_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream3mapINtB5_3MapINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1a_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3s_5ErrorENtNtB1a_6marker4SendEL_EENCNvYNtNtB3s_3gcp18GoogleCloudStorageNtB3s_11ObjectStore13delete_stream0EB2b_9size_hintCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l)
  %i.m = load i64, ptr %i.a, align 8, !noundef !3
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !67, !noundef !3
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.q = load i64, ptr %i.p, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.r = call i64 @llvm.uadd.sat.i64(i64 %i.m, i64 %i.h) ; 2 uses
  %i.s = trunc nuw i64 %i.o to i1
  br i1 %i.s, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.04.0 = phi i64 [ %i.h, %bb.c ], [ %i.r, %bb.b ]
  %.sroa.6.0 = phi i64 [ 0, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %i.t = add i64 %.sroa.6.0, %i.h                 ; 2 uses
  %i.u = icmp uge i64 %i.t, %.sroa.6.0
  %.6 = zext i1 %i.u to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  %.sroa.4.0 = phi i64 [ %i.t, %bb.d ], [ undef, %bb.b ]
  %.sroa.05.0 = phi i64 [ %.6, %bb.d ], [ 0, %bb.b ]
  %.sroa.04.1 = phi i64 [ %.sroa.04.0, %bb.d ], [ %i.r, %bb.b ]
  store i64 %.sroa.04.1, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.05.0, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.0, ptr %i.w, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream8bufferedINtB5_8BufferedINtNtB7_3map3MapINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1A_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3S_5ErrorENtNtB1A_6marker4SendEL_EENCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtB3S_11ObjectStore13delete_stream0EEB2B_9poll_nextB5f_(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(104) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [136 x i8], align 8               ; 5 uses
  %i.b = alloca [136 x i8], align 8               ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.f = tail call { ptr, i64 } @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EE28atomic_load_head_and_len_allB2d_(ptr noundef nonnull align 8 %i.e)
  %i.g = extractvalue { ptr, i64 } %i.f, 1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !noundef !3 ; 2 uses
  %i.j = icmp ult i64 %i.i, 115292150460684698
  tail call void @llvm.assume(i1 %i.j)
  %i.k = add i64 %i.g, %i.i
  %i.l = load i64, ptr %i.d, align 8, !noundef !3
  %i.m = icmp ult i64 %i.k, %i.l
  br i1 %i.m, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs0_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream4fuseINtB5_4FuseINtNtB7_3map3MapINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1s_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3K_5ErrorENtNtB1s_6marker4SendEL_EENCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtB3K_11ObjectStore13delete_stream0EEB2t_9poll_nextB57_(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  %i.q = load i64, ptr %i.b, align 8, !range !162, !noundef !3
  %3 = and i64 %i.q, 1
  %or.cond.not = icmp eq i64 %3, 0
  br i1 %or.cond.not, label %bb.c, label %bb.d

.loopexit:                                        ; preds = %bb.d, %bb.a, %bb.c
  call void @_RNvXs6_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_14FuturesOrderedNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextB1w_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  %i.r = load i64, ptr %0, align 8, !range !163, !noundef !3 ; 2 uses
  switch i64 %i.r, label %bb.f [
    i64 -9223372036854775788, label %.sink.split
    i64 -9223372036854775789, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %i.n, i64 128, i1 false)
  %i.s = load i64, ptr %i.o, align 8, !noundef !3 ; 2 uses
  store i64 %i.s, ptr %i.p, align 8
  %i.t = add i64 %i.s, 1
  store i64 %i.t, ptr %i.o, align 8
  call void @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EE4pushB2d_(ptr noundef nonnull align 8 %i.e, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(136) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.u = call { ptr, i64 } @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EE28atomic_load_head_and_len_allB2d_(ptr noundef nonnull align 8 %i.e)
  %i.v = extractvalue { ptr, i64 } %i.u, 1
  %i.w = load i64, ptr %i.h, align 8, !noundef !3 ; 2 uses
  %i.x = icmp ult i64 %i.w, 115292150460684698
  call void @llvm.assume(i1 %i.x)
  %i.y = add i64 %i.v, %i.w
  %i.z = load i64, ptr %i.d, align 8, !noundef !3
  %i.aa = icmp ult i64 %i.y, %i.z
  br i1 %i.aa, label %bb.b, label %.loopexit

bb.e:                                             ; preds = %.loopexit
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ac = load i8, ptr %i.ab, align 8, !range !164, !noundef !3
  %i.ad = trunc nuw i8 %i.ac to i1
  %. = select i1 %i.ad, i64 -9223372036854775789, i64 -9223372036854775788
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %.loopexit
  %.sink = phi i64 [ %., %bb.e ], [ %i.r, %.loopexit ]
  store i64 %.sink, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %.loopexit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream8bufferedINtB5_8BufferedINtNtB7_3map3MapINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1A_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3S_5ErrorENtNtB1A_6marker4SendEL_EENCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtB3S_11ObjectStore13delete_stream0EEB2B_9size_hintB5f_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = tail call { ptr, i64 } @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EE28atomic_load_head_and_len_allB2d_(ptr noundef nonnull align 8 %i.b)
  %i.d = extractvalue { ptr, i64 } %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !3 ; 2 uses
  %i.g = icmp ult i64 %i.f, 115292150460684698
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add i64 %i.d, %i.f                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.j = load i8, ptr %i.i, align 8, !range !164, !noundef !3
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @_RNvXs1_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream3mapINtB5_3MapINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1a_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3s_5ErrorENtNtB1a_6marker4SendEL_EENCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtB3s_11ObjectStore13delete_stream0EB2b_9size_hintB4P_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l)
  %i.m = load i64, ptr %i.a, align 8, !noundef !3
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !67, !noundef !3
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.q = load i64, ptr %i.p, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.r = call i64 @llvm.uadd.sat.i64(i64 %i.m, i64 %i.h) ; 2 uses
  %i.s = trunc nuw i64 %i.o to i1
  br i1 %i.s, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.04.0 = phi i64 [ %i.h, %bb.c ], [ %i.r, %bb.b ]
  %.sroa.6.0 = phi i64 [ 0, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %i.t = add i64 %.sroa.6.0, %i.h                 ; 2 uses
  %i.u = icmp uge i64 %i.t, %.sroa.6.0
  %.6 = zext i1 %i.u to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  %.sroa.4.0 = phi i64 [ %i.t, %bb.d ], [ undef, %bb.b ]
  %.sroa.05.0 = phi i64 [ %.6, %bb.d ], [ 0, %bb.b ]
  %.sroa.04.1 = phi i64 [ %.sroa.04.0, %bb.d ], [ %i.r, %bb.b ]
  store i64 %.sroa.04.1, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.05.0, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.0, ptr %i.w, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtCs7cL0Iqqqcdm_12futures_core6streamINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream8buffered8BufferedINtNtBL_3map3MapINtNtBN_4iter4IterINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtNtB2u_5slice4iter4IterINtNtNtB2u_3ops5range5RangeyEEEENCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore10get_ranges00EENtB5_9TryStream13try_poll_nextB4n_(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(112) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !165)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !168)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.f = tail call { ptr, i64 } @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE28atomic_load_head_and_len_allCs62u4JVtZyFF_13deltalake_gcp(ptr noundef nonnull align 8 %i.e), !noalias !170
  %i.g = extractvalue { ptr, i64 } %i.f, 1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !168, !noalias !170, !noundef !3 ; 2 uses
  %i.j = icmp ult i64 %i.i, 115292150460684698
  tail call void @llvm.assume(i1 %i.j)
  %i.k = add i64 %i.g, %i.i
  %i.l = load i64, ptr %i.d, align 8, !alias.scope !168, !noalias !170, !noundef !3
  %i.m = icmp ult i64 %i.k, %i.l
  br i1 %i.m, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !172
  call void @_RNvXs0_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB9_4iter4IterINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtNtB1O_5slice4iter4IterINtNtNtB1O_3ops5range5RangeyEEEENCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore10get_ranges00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextB3H_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(32) %2), !noalias !165
  %i.s = load i64, ptr %i.b, align 8, !range !67, !noalias !172, !noundef !3
  %i.t = trunc nuw i64 %i.s to i1
  br i1 %i.t, label %bb.c, label %bb.d

.loopexit.i:                                      ; preds = %bb.e, %bb.c, %bb.a
  call void @_RNvXs6_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_14FuturesOrderedINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB1q_6future6future6Futurep6OutputINtNtB1q_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB1q_6marker4SendEL_EEENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull align 8 dereferenceable(112) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  %i.u = load i64, ptr %0, align 8, !range !163, !alias.scope !165, !noalias !173, !noundef !3 ; 2 uses
  switch i64 %i.u, label %_RNvXs0_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream8bufferedINtB5_8BufferedINtNtB7_3map3MapINtNtB9_4iter4IterINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtNtB1W_5slice4iter4IterINtNtNtB1W_3ops5range5RangeyEEEENCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore10get_ranges00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextB3P_.exit [
    i64 -9223372036854775788, label %.sink.split.i
    i64 -9223372036854775789, label %bb.f
  ]

bb.c:                                             ; preds = %bb.d, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !172
  br label %.loopexit.i

bb.d:                                             ; preds = %bb.b
  %i.v = load ptr, ptr %i.n, align 8, !noalias !172, !noundef !3 ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.c, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = load ptr, ptr %i.o, align 8, !noalias !172, !nonnull !3, !align !26, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !172
  %i.x = load i64, ptr %i.p, align 8, !alias.scope !168, !noalias !170, !noundef !3 ; 2 uses
  store ptr %i.v, ptr %i.a, align 8, !noalias !172
  store ptr %i.w, ptr %i.q, align 8, !noalias !172
  store i64 %i.x, ptr %i.r, align 8, !noalias !172
  %i.y = add i64 %i.x, 1
  store i64 %i.y, ptr %i.p, align 8, !alias.scope !168, !noalias !170
  call void @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE4pushCs62u4JVtZyFF_13deltalake_gcp(ptr noundef nonnull align 8 %i.e, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a), !noalias !165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !172
  %i.z = call { ptr, i64 } @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE28atomic_load_head_and_len_allCs62u4JVtZyFF_13deltalake_gcp(ptr noundef nonnull align 8 %i.e), !noalias !165
  %i.aa = extractvalue { ptr, i64 } %i.z, 1
  %i.ab = load i64, ptr %i.h, align 8, !alias.scope !168, !noalias !170, !noundef !3 ; 2 uses
  %i.ac = icmp ult i64 %i.ab, 115292150460684698
  call void @llvm.assume(i1 %i.ac)
  %i.ad = add i64 %i.aa, %i.ab
  %i.ae = load i64, ptr %i.d, align 8, !alias.scope !168, !noalias !170, !noundef !3
  %i.af = icmp ult i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.b, label %.loopexit.i

bb.f:                                             ; preds = %.loopexit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ah = load i8, ptr %i.ag, align 8, !range !164, !alias.scope !168, !noalias !170, !noundef !3
  %i.ai = trunc nuw i8 %i.ah to i1
  %..i = select i1 %i.ai, i64 -9223372036854775789, i64 -9223372036854775788
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.f, %.loopexit.i
  %.sink.i = phi i64 [ %..i, %bb.f ], [ %i.u, %.loopexit.i ]
  store i64 %.sink.i, ptr %0, align 8, !alias.scope !165, !noalias !173
  br label %_RNvXs0_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream8bufferedINtB5_8BufferedINtNtB7_3map3MapINtNtB9_4iter4IterINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtNtB1W_5slice4iter4IterINtNtNtB1W_3ops5range5RangeyEEEENCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore10get_ranges00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextB3P_.exit

_RNvXs0_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream8bufferedINtB5_8BufferedINtNtB7_3map3MapINtNtB9_4iter4IterINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtNtB1W_5slice4iter4IterINtNtNtB1W_3ops5range5RangeyEEEENCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore10get_ranges00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextB3P_.exit: ; preds = %.loopexit.i, %.sink.split.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtCs7cL0Iqqqcdm_12futures_core6streamINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream8buffered8BufferedINtNtBL_3map3MapINtNtBN_4iter4IterINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtNtB2u_5slice4iter4IterINtNtNtB2u_3ops5range5RangeyEEEENCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB4n_11ObjectStore10get_ranges00EENtB5_9TryStream13try_poll_nextCs62u4JVtZyFF_13deltalake_gcp(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(112) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
end_hunk_0
