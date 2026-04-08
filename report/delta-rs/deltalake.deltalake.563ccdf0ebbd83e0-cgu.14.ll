inline.NumInlined: 4294
inline.NumDeleted: 1503
begin_hunk_0_@_RNvMsl_Cs7p2uQeJxui2_9deltalakeNtB5_13RawDeltaTable20set_table_properties:bb.a
  %i.g = alloca [64 x i8], align 8                ; 6 uses
  %i.h = alloca [208 x i8], align 8               ; 4 uses
  %i.i = alloca [120 x i8], align 8               ; 12 uses
  %7 = alloca [208 x i8], align 8                 ; 5 uses
  %i.j = alloca [208 x i8], align 8               ; 4 uses
  %i.k = alloca [64 x i8], align 8                ; 8 uses
  %i.l = alloca [16 x i8], align 8                ; 12 uses
  %i.m = alloca [24 x i8], align 8                ; 13 uses
  %8 = alloca [208 x i8], align 8                 ; 4 uses
  %i.n = alloca [208 x i8], align 8               ; 4 uses
  %i.o = alloca [88 x i8], align 8                ; 3 uses
  %i.p = alloca [88 x i8], align 8                ; 4 uses
end_hunk_0
begin_hunk_1_@_RNvMsl_Cs7p2uQeJxui2_9deltalakeNtB5_13RawDeltaTable20set_table_properties:bb.a

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull align 8 dereferenceable(208) %i.u, i64 208, i1 false)
  call void @_RNvMs_NtNtCs14kWLkQVSKO_14deltalake_core10operations18set_tbl_propertiesNtB4_25SetTablePropertiesBuilder22with_commit_properties(ptr noalias noundef nonnull sret([208 x i8]) align 8 captures(none) dereferenceable(208) %i.n, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(208) %8, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(88) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.u, ptr noundef nonnull align 8 dereferenceable(208) %i.n, i64 208, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.p

end_hunk_1
begin_hunk_2_@_RNvMsl_Cs7p2uQeJxui2_9deltalakeNtB5_13RawDeltaTable20set_table_properties:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 8 dereferenceable(208) %i.u, i64 208, i1 false)
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45
  %i.cs = call noundef ptr @_rjem_malloc(i64 noundef range(i64 16, 305) 16) #45 ; 4 uses
  %i.ct = icmp eq ptr %i.cs, null
end_hunk_2
begin_hunk_3_@_RNvMsl_Cs7p2uQeJxui2_9deltalakeNtB5_13RawDeltaTable20set_table_properties:bb.a
  store i64 1, ptr %i.cs, align 8
  %.sroa.499.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store i64 1, ptr %.sroa.499.0..sroa_idx, align 8
  call void @_RNvMs_NtNtCs14kWLkQVSKO_14deltalake_core10operations18set_tbl_propertiesNtB4_25SetTablePropertiesBuilder27with_custom_execute_handler(ptr noalias noundef nonnull sret([208 x i8]) align 8 captures(none) dereferenceable(208) %i.j, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(208) %7, ptr noundef nonnull %i.cs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) @339)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.u, ptr noundef nonnull align 8 dereferenceable(208) %i.j, i64 208, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.ae

end_hunk_3
begin_hunk_4_@_RNvMsl_Cs7p2uQeJxui2_9deltalakeNtB5_13RawDeltaTable20set_table_properties:bb.a
bb.bg:                                            ; preds = %bb.ak
  %i.ef = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core10operations18set_tbl_properties25SetTablePropertiesBuilderECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(208) %7) #41
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs7p2uQeJxui2_9deltalake.exit unwind label %bb.ay

.thread122:                                       ; preds = %bb.u, %.body, %.thread130
end_hunk_4
begin_hunk_5_@_RNvMsl_Cs7p2uQeJxui2_9deltalakeNtB5_13RawDeltaTable7restore:bb.a
  %i.q = alloca [184 x i8], align 8               ; 4 uses
  %i.r = alloca [16 x i8], align 16               ; 5 uses
  %i.s = alloca [120 x i8], align 8               ; 12 uses
  %6 = alloca [184 x i8], align 8                 ; 5 uses
  %i.t = alloca [184 x i8], align 8               ; 4 uses
  %i.u = alloca [64 x i8], align 8                ; 8 uses
  %i.v = alloca [16 x i8], align 8                ; 12 uses
  %i.w = alloca [24 x i8], align 8                ; 13 uses
  %7 = alloca [184 x i8], align 8                 ; 4 uses
  %i.x = alloca [184 x i8], align 8               ; 4 uses
  %i.y = alloca [88 x i8], align 8                ; 3 uses
  %i.z = alloca [88 x i8], align 8                ; 4 uses
end_hunk_5
begin_hunk_6_@_RNvMsl_Cs7p2uQeJxui2_9deltalakeNtB5_13RawDeltaTable7restore:bb.a

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %7, ptr noundef nonnull align 8 dereferenceable(184) %i.af, i64 184, i1 false)
  call void @_RNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations7restoreNtB5_14RestoreBuilder22with_commit_properties(ptr noalias noundef nonnull sret([184 x i8]) align 8 captures(none) dereferenceable(184) %i.x, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(184) %7, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(88) %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.af, ptr noundef nonnull align 8 dereferenceable(184) %i.x, i64 184, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.am

end_hunk_6
begin_hunk_7_@_RNvMsl_Cs7p2uQeJxui2_9deltalakeNtB5_13RawDeltaTable7restore:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %6, ptr noundef nonnull align 8 dereferenceable(184) %i.af, i64 184, i1 false)
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45
  %i.el = call noundef ptr @_rjem_malloc(i64 noundef range(i64 16, 305) 16) #45 ; 4 uses
  %i.em = icmp eq ptr %i.el, null
end_hunk_7
begin_hunk_8_@_RNvMsl_Cs7p2uQeJxui2_9deltalakeNtB5_13RawDeltaTable7restore:bb.a
  store i64 1, ptr %i.el, align 8
  %.sroa.4240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  store i64 1, ptr %.sroa.4240.0..sroa_idx, align 8
  call void @_RNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations7restoreNtB5_14RestoreBuilder27with_custom_execute_handler(ptr noalias noundef nonnull sret([184 x i8]) align 8 captures(none) dereferenceable(184) %i.t, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(184) %6, ptr noundef nonnull %i.el, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) @339)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.af, ptr noundef nonnull align 8 dereferenceable(184) %i.t, i64 184, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.bb

end_hunk_8
begin_hunk_9_@_RNvMsl_Cs7p2uQeJxui2_9deltalakeNtB5_13RawDeltaTable7restore:bb.a
bb.cp:                                            ; preds = %bb.bh
  %i.gr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core10operations7restore14RestoreBuilderECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(184) %6) #41
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtCs7p2uQeJxui2_9deltalake18PyCommitPropertiesEEB14_.exit207 unwind label %bb.ah

.thread264:                                       ; preds = %.body170, %bb.ar, %bb.ai, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgbCypRs12E4_4pyo38pybacked11PyBackedStrECs7p2uQeJxui2_9deltalake.exit, %.thread274
end_hunk_9
begin_hunk_10_@_RNvMsn_Cs7p2uQeJxui2_9deltalakeNtB5_13RawDeltaTable19___pymethod_repair__:bb.a
  %i.m = alloca [160 x i8], align 8               ; 4 uses
  %i.n = alloca [32 x i8], align 8                ; 12 uses
  %i.o = alloca [120 x i8], align 8               ; 12 uses
  %5 = alloca [160 x i8], align 8                 ; 5 uses
  %i.p = alloca [160 x i8], align 8               ; 4 uses
  %i.q = alloca [64 x i8], align 8                ; 8 uses
  %i.r = alloca [16 x i8], align 8                ; 12 uses
  %i.s = alloca [24 x i8], align 8                ; 13 uses
  %6 = alloca [160 x i8], align 8                 ; 4 uses
  %i.t = alloca [160 x i8], align 8               ; 4 uses
  %i.u = alloca [88 x i8], align 8                ; 5 uses
  %i.v = alloca [88 x i8], align 8                ; 4 uses
end_hunk_10
begin_hunk_11_@_RNvMsn_Cs7p2uQeJxui2_9deltalakeNtB5_13RawDeltaTable19___pymethod_repair__:bb.a

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !6598
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !6598
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %6, ptr noundef nonnull align 8 dereferenceable(160) %i.y, i64 160, i1 false), !noalias !6598
  invoke void @_RNvMs_NtNtCs14kWLkQVSKO_14deltalake_core10operations16filesystem_checkNtB4_22FileSystemCheckBuilder22with_commit_properties(ptr noalias noundef nonnull sret([160 x i8]) align 8 captures(none) dereferenceable(160) %i.t, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(160) %6, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(88) %i.u)
          to label %.noexc42 unwind label %.body.thread65

.noexc42:                                         ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !6598
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.y, ptr noundef nonnull align 8 dereferenceable(160) %i.t, i64 160, i1 false), !noalias !6598
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !6598
  br label %bb.af

end_hunk_11
begin_hunk_12_@_RNvMsn_Cs7p2uQeJxui2_9deltalakeNtB5_13RawDeltaTable19___pymethod_repair__:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !6598
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !6598
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !6598
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !6598
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %5, ptr noundef nonnull align 8 dereferenceable(160) %i.y, i64 160, i1 false), !noalias !6598
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !6598
  %i.eq = call noundef ptr @_rjem_malloc(i64 noundef range(i64 16, 305) 16) #45, !noalias !6598 ; 4 uses
  %i.er = icmp eq ptr %i.eq, null
end_hunk_12
begin_hunk_13_@_RNvMsn_Cs7p2uQeJxui2_9deltalakeNtB5_13RawDeltaTable19___pymethod_repair__:bb.a
  store i64 1, ptr %i.eq, align 8, !noalias !6598
  %.sroa.4137.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  store i64 1, ptr %.sroa.4137.0..sroa_idx.i, align 8, !noalias !6598
  invoke void @_RNvMs_NtNtCs14kWLkQVSKO_14deltalake_core10operations16filesystem_checkNtB4_22FileSystemCheckBuilder27with_custom_execute_handler(ptr noalias noundef nonnull sret([160 x i8]) align 8 captures(none) dereferenceable(160) %i.p, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(160) %5, ptr noundef nonnull %i.eq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) @339)
          to label %.noexc44 unwind label %.body.thread65

.noexc44:                                         ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !6598
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.y, ptr noundef nonnull align 8 dereferenceable(160) %i.p, i64 160, i1 false), !noalias !6598
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !6598
  br label %bb.au

end_hunk_13
begin_hunk_14_@_RNvMsn_Cs7p2uQeJxui2_9deltalakeNtB5_13RawDeltaTable19___pymethod_repair__:bb.a
bb.cn:                                            ; preds = %bb.ba
  %i.hc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core10operations16filesystem_check22FileSystemCheckBuilderECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(160) %5) #41
          to label %.body.thread unwind label %bb.cg, !noalias !6598

.thread159.i:                                     ; preds = %bb.ak, %.body66.i, %.thread167.i
end_hunk_14
begin_hunk_15_@_RNvMsn_Cs7p2uQeJxui2_9deltalakeNtB5_13RawDeltaTable27___pymethod_set_table_name__:bb.a
  %i.h = alloca [64 x i8], align 8                ; 6 uses
  %i.i = alloca [200 x i8], align 8               ; 4 uses
  %i.j = alloca [120 x i8], align 8               ; 11 uses
  %5 = alloca [200 x i8], align 8                 ; 5 uses
  %i.k = alloca [200 x i8], align 8               ; 4 uses
  %i.l = alloca [64 x i8], align 8                ; 8 uses
  %i.m = alloca [16 x i8], align 8                ; 12 uses
  %i.n = alloca [24 x i8], align 8                ; 13 uses
  %6 = alloca [200 x i8], align 8                 ; 4 uses
  %i.o = alloca [200 x i8], align 8               ; 4 uses
  %i.p = alloca [88 x i8], align 8                ; 5 uses
  %i.q = alloca [88 x i8], align 8                ; 4 uses
end_hunk_15
begin_hunk_16_@_RNvMsn_Cs7p2uQeJxui2_9deltalakeNtB5_13RawDeltaTable27___pymethod_set_table_name__:bb.a

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !7254
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !7254
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %6, ptr noundef nonnull align 8 dereferenceable(200) %i.u, i64 200, i1 false), !noalias !7254
  invoke void @_RNvMs_NtNtCs14kWLkQVSKO_14deltalake_core10operations21update_table_metadataNtB4_26UpdateTableMetadataBuilder22with_commit_properties(ptr noalias noundef nonnull sret([200 x i8]) align 8 captures(none) dereferenceable(200) %i.o, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(200) %6, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(88) %i.p)
          to label %.noexc43 unwind label %.body.thread64

.noexc43:                                         ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !7254
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.u, ptr noundef nonnull align 8 dereferenceable(200) %i.o, i64 200, i1 false), !noalias !7254
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !7254
  br label %bb.ai

end_hunk_16
begin_hunk_17_@_RNvMsn_Cs7p2uQeJxui2_9deltalakeNtB5_13RawDeltaTable27___pymethod_set_table_name__:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !7254
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !7254
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !7254
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !7254
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %5, ptr noundef nonnull align 8 dereferenceable(200) %i.u, i64 200, i1 false), !noalias !7254
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !7254
  %i.el = call noundef ptr @_rjem_malloc(i64 noundef range(i64 16, 305) 16) #45, !noalias !7254 ; 4 uses
  %i.em = icmp eq ptr %i.el, null
end_hunk_17
begin_hunk_18_@_RNvMsn_Cs7p2uQeJxui2_9deltalakeNtB5_13RawDeltaTable27___pymethod_set_table_name__:bb.a
  store i64 1, ptr %i.el, align 8, !noalias !7254
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !7254
  invoke void @_RNvMs_NtNtCs14kWLkQVSKO_14deltalake_core10operations21update_table_metadataNtB4_26UpdateTableMetadataBuilder27with_custom_execute_handler(ptr noalias noundef nonnull sret([200 x i8]) align 8 captures(none) dereferenceable(200) %i.k, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(200) %5, ptr noundef nonnull %i.el, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) @339)
          to label %.noexc45 unwind label %.body.thread64

.noexc45:                                         ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !7254
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.u, ptr noundef nonnull align 8 dereferenceable(200) %i.k, i64 200, i1 false), !noalias !7254
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !7254
  br label %bb.ax

end_hunk_18
begin_hunk_19_@_RNvMsn_Cs7p2uQeJxui2_9deltalakeNtB5_13RawDeltaTable27___pymethod_set_table_name__:bb.a
bb.bv:                                            ; preds = %bb.bd
  %i.fz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core10operations21update_table_metadata26UpdateTableMetadataBuilderECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(200) %5) #41
          to label %.body53 unwind label %bb.bp, !noalias !7254

.thread121.i:                                     ; preds = %bb.an, %.body.i, %.thread129.i
end_hunk_19
begin_hunk_20_@_RNvMsn_Cs7p2uQeJxui2_9deltalakeNtB5_13RawDeltaTable34___pymethod_set_table_description__:bb.a
  %i.h = alloca [64 x i8], align 8                ; 6 uses
  %i.i = alloca [200 x i8], align 8               ; 4 uses
  %i.j = alloca [120 x i8], align 8               ; 11 uses
  %5 = alloca [200 x i8], align 8                 ; 5 uses
  %i.k = alloca [200 x i8], align 8               ; 4 uses
  %i.l = alloca [64 x i8], align 8                ; 8 uses
  %i.m = alloca [16 x i8], align 8                ; 12 uses
  %i.n = alloca [24 x i8], align 8                ; 13 uses
  %6 = alloca [200 x i8], align 8                 ; 4 uses
  %i.o = alloca [200 x i8], align 8               ; 4 uses
  %i.p = alloca [88 x i8], align 8                ; 5 uses
  %i.q = alloca [88 x i8], align 8                ; 4 uses
end_hunk_20
begin_hunk_21_@_RNvMsn_Cs7p2uQeJxui2_9deltalakeNtB5_13RawDeltaTable34___pymethod_set_table_description__:bb.a

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !8182
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !8182
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %6, ptr noundef nonnull align 8 dereferenceable(200) %i.u, i64 200, i1 false), !noalias !8182
  invoke void @_RNvMs_NtNtCs14kWLkQVSKO_14deltalake_core10operations21update_table_metadataNtB4_26UpdateTableMetadataBuilder22with_commit_properties(ptr noalias noundef nonnull sret([200 x i8]) align 8 captures(none) dereferenceable(200) %i.o, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(200) %6, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(88) %i.p)
          to label %.noexc43 unwind label %.body.thread64

.noexc43:                                         ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !8182
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.u, ptr noundef nonnull align 8 dereferenceable(200) %i.o, i64 200, i1 false), !noalias !8182
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !8182
  br label %bb.ai

end_hunk_21
begin_hunk_22_@_RNvMsn_Cs7p2uQeJxui2_9deltalakeNtB5_13RawDeltaTable34___pymethod_set_table_description__:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !8182
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !8182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !8182
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !8182
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %5, ptr noundef nonnull align 8 dereferenceable(200) %i.u, i64 200, i1 false), !noalias !8182
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !8182
  %i.el = call noundef ptr @_rjem_malloc(i64 noundef range(i64 16, 305) 16) #45, !noalias !8182 ; 4 uses
  %i.em = icmp eq ptr %i.el, null
end_hunk_22
begin_hunk_23_@_RNvMsn_Cs7p2uQeJxui2_9deltalakeNtB5_13RawDeltaTable34___pymethod_set_table_description__:bb.a
  store i64 1, ptr %i.el, align 8, !noalias !8182
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !8182
  invoke void @_RNvMs_NtNtCs14kWLkQVSKO_14deltalake_core10operations21update_table_metadataNtB4_26UpdateTableMetadataBuilder27with_custom_execute_handler(ptr noalias noundef nonnull sret([200 x i8]) align 8 captures(none) dereferenceable(200) %i.k, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(200) %5, ptr noundef nonnull %i.el, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) @339)
          to label %.noexc45 unwind label %.body.thread64

.noexc45:                                         ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !8182
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.u, ptr noundef nonnull align 8 dereferenceable(200) %i.k, i64 200, i1 false), !noalias !8182
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !8182
  br label %bb.ax

end_hunk_23
begin_hunk_24_@_RNvMsn_Cs7p2uQeJxui2_9deltalakeNtB5_13RawDeltaTable34___pymethod_set_table_description__:bb.a
bb.bv:                                            ; preds = %bb.bd
  %i.fz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core10operations21update_table_metadata26UpdateTableMetadataBuilderECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(200) %5) #41
          to label %.body53 unwind label %bb.bp, !noalias !8182

.thread121.i:                                     ; preds = %bb.an, %.body.i, %.thread129.i
end_hunk_24
