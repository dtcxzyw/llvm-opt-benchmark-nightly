inline.NumInlined: 5547
inline.NumDeleted: 1701
begin_hunk_0_@_RINvMs0_NtCsgbCypRs12E4_4pyo36markerNtB6_6Python6detachINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs7p2uQeJxui2_9deltalake13RawDeltaTableNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENCNvB1v_18write_to_deltalake0EB1v_:bb.a
  %i.k = alloca [96 x i8], align 16               ; 5 uses
  %.sroa.6.i = alloca [88 x i8], align 8          ; 6 uses
  %i.l = alloca [88 x i8], align 8                ; 15 uses
  %3 = alloca [48 x i8], align 8                  ; 4 uses
  %i.m = alloca [48 x i8], align 8                ; 10 uses
  %i.n = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
end_hunk_0
begin_hunk_1_@_RINvMs0_NtCsgbCypRs12E4_4pyo36markerNtB6_6Python6detachINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs7p2uQeJxui2_9deltalake13RawDeltaTableNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENCNvB1v_18write_to_deltalake0EB1v_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !72
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !72
  %i.s = load ptr, ptr %1, align 8, !alias.scope !70, !noalias !74, !noundef !4
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBK_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1)
          to label %.noexc unwind label %bb.aa

.noexc:                                           ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false), !noalias !72
  br label %.noexc.a

bb.c:                                             ; preds = %bb.a
  %i.t = invoke { i64, i64 } @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @22)
end_hunk_1
begin_hunk_2_@_RINvMs0_NtCsgbCypRs12E4_4pyo36markerNtB6_6Python6detachINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs7p2uQeJxui2_9deltalake13RawDeltaTableNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENCNvB1v_18write_to_deltalake0EB1v_:bb.a
  store i64 %i.v, ptr %.sroa.59.0..sroa_idx.i, align 8, !noalias !72
  br label %.noexc.a

.noexc.a:                                         ; preds = %.noexc3, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !72
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !72
end_hunk_2
begin_hunk_3_@_RINvMs0_NtCsgbCypRs12E4_4pyo36markerNtB6_6Python6detachINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB8_3err5PyErrENCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB2J_13RawDeltaTable11add_columns0EB2J_:bb.a
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [128 x i8], align 16              ; 6 uses
  %i.h = alloca [56 x i8], align 8                ; 6 uses
  %2 = alloca [176 x i8], align 8                 ; 4 uses
  %i.i = alloca [176 x i8], align 8               ; 5 uses
  %i.j = alloca [176 x i8], align 8               ; 4 uses
  %i.k = alloca [64 x i8], align 8                ; 8 uses
  %i.l = alloca [16 x i8], align 8                ; 12 uses
  %i.m = alloca [24 x i8], align 8                ; 13 uses
  %3 = alloca [176 x i8], align 8                 ; 4 uses
  %i.n = alloca [176 x i8], align 8               ; 4 uses
  %i.o = alloca [88 x i8], align 8                ; 5 uses
  %i.p = alloca [88 x i8], align 8                ; 4 uses
end_hunk_3
begin_hunk_4_@_RINvMs0_NtCsgbCypRs12E4_4pyo36markerNtB6_6Python6detachINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB8_3err5PyErrENCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB2J_13RawDeltaTable11add_columns0EB2J_:bb.a

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !105
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !105
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %3, ptr noundef nonnull align 8 dereferenceable(176) %i.t, i64 176, i1 false), !noalias !105
  invoke void @_RNvMs_NtNtCs14kWLkQVSKO_14deltalake_core10operations10add_columnNtB4_16AddColumnBuilder22with_commit_properties(ptr noalias noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.n, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(176) %3, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(88) %i.o)
          to label %.noexc unwind label %bb.bg

.noexc:                                           ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !105
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.t, ptr noundef nonnull align 8 dereferenceable(176) %i.n, i64 176, i1 false), !noalias !105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !105
  br label %bb.aa

end_hunk_4
begin_hunk_5_@_RINvMs0_NtCsgbCypRs12E4_4pyo36markerNtB6_6Python6detachINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB8_3err5PyErrENCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB2J_13RawDeltaTable11add_columns0EB2J_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !105
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.i, ptr noundef nonnull align 8 dereferenceable(176) %i.t, i64 176, i1 false), !noalias !105
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !105
  %i.dt = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 16, 1697) 16, i64 noundef range(i64 8, 17) 8) #43, !noalias !105 ; 4 uses
  %i.du = icmp eq ptr %i.dt, null
end_hunk_5
begin_hunk_6_@_RINvMs0_NtCsgbCypRs12E4_4pyo36markerNtB6_6Python6detachINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB8_3err5PyErrENCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB2J_13RawDeltaTable11add_columns0EB2J_:bb.a
  store i64 1, ptr %i.dt, align 8, !noalias !105
  %.sroa.481.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store i64 1, ptr %.sroa.481.0..sroa_idx.i, align 8, !noalias !105
  invoke void @_RNvMs_NtNtCs14kWLkQVSKO_14deltalake_core10operations10add_columnNtB4_16AddColumnBuilder27with_custom_execute_handler(ptr noalias noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.j, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(176) %i.i, ptr noundef nonnull %i.dt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) @86)
          to label %.noexc4 unwind label %bb.bg

.noexc4:                                          ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !105
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.t, ptr noundef nonnull align 8 dereferenceable(176) %i.j, i64 176, i1 false), !noalias !105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !105
  br label %bb.ap

bb.ax:                                            ; preds = %bb.as, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !105
  call void @llvm.lifetime.start.p0(ptr nonnull %2), !noalias !105
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %2, ptr noundef nonnull align 8 dereferenceable(176) %i.t, i64 176, i1 false), !noalias !105
  %i.dv = invoke { ptr, ptr } @_RNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations10add_columnNtB5_16AddColumnBuilderNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(176) %2)
          to label %.noexc5 unwind label %bb.bg   ; 2 uses

.noexc5:                                          ; preds = %bb.ax
  %i.dw = extractvalue { ptr, ptr } %i.dv, 0
  %i.dx = extractvalue { ptr, ptr } %i.dv, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %2), !noalias !105
  invoke void @_RINvMNtNtCskQDtHcQtBkN_5tokio7runtime7runtimeNtB3_7Runtime8block_onINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB18_6future6future6Futurep6OutputINtNtB18_6result6ResultNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB3d_6errors15DeltaTableErrorENtNtB18_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([128 x i8]) align 16 captures(address) dereferenceable(128) %i.g, ptr noundef nonnull align 8 @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt8TOKIO_RT, ptr noundef nonnull %i.dw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.dx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @111)
          to label %.noexc6 unwind label %bb.bg

end_hunk_6
begin_hunk_7_@_RINvMs0_NtCsgbCypRs12E4_4pyo36markerNtB6_6Python6detachINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB8_3err5PyErrENCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB2J_13RawDeltaTable11add_columns0EB2J_:bb.a
bb.ba:                                            ; preds = %bb.av
  %i.ed = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core10operations10add_column16AddColumnBuilderECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(176) %i.i) #45
          to label %.body unwind label %bb.bb, !noalias !105

bb.bb:                                            ; preds = %bb.bf, %bb.bc, %.thread105.i, %bb.ba, %bb.af, %bb.h
end_hunk_7
begin_hunk_8_@_RINvMs0_NtCsgbCypRs12E4_4pyo36markerNtB6_6Python6detachINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB8_3err5PyErrENCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB2J_13RawDeltaTable11add_feature0EB2J_:bb.a
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [128 x i8], align 16              ; 6 uses
  %i.h = alloca [56 x i8], align 8                ; 6 uses
  %2 = alloca [184 x i8], align 8                 ; 4 uses
  %i.i = alloca [184 x i8], align 8               ; 5 uses
  %i.j = alloca [184 x i8], align 8               ; 4 uses
  %i.k = alloca [64 x i8], align 8                ; 8 uses
  %i.l = alloca [16 x i8], align 8                ; 12 uses
  %i.m = alloca [24 x i8], align 8                ; 13 uses
  %3 = alloca [184 x i8], align 8                 ; 4 uses
  %i.n = alloca [184 x i8], align 8               ; 4 uses
  %i.o = alloca [88 x i8], align 8                ; 5 uses
  %i.p = alloca [88 x i8], align 8                ; 4 uses
end_hunk_8
begin_hunk_9_@_RINvMs0_NtCsgbCypRs12E4_4pyo36markerNtB6_6Python6detachINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB8_3err5PyErrENCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB2J_13RawDeltaTable11add_feature0EB2J_:bb.a

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !180
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !180
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %3, ptr noundef nonnull align 8 dereferenceable(184) %i.s, i64 184, i1 false), !noalias !180
  invoke void @_RNvMs_NtNtCs14kWLkQVSKO_14deltalake_core10operations11add_featureNtB4_22AddTableFeatureBuilder22with_commit_properties(ptr noalias noundef nonnull sret([184 x i8]) align 8 captures(none) dereferenceable(184) %i.n, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(184) %3, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(88) %i.o)
          to label %.noexc unwind label %bb.be

.noexc:                                           ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !180
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.s, ptr noundef nonnull align 8 dereferenceable(184) %i.n, i64 184, i1 false), !noalias !180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !180
  br label %bb.t

end_hunk_9
begin_hunk_10_@_RINvMs0_NtCsgbCypRs12E4_4pyo36markerNtB6_6Python6detachINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB8_3err5PyErrENCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB2J_13RawDeltaTable11add_feature0EB2J_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !180
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !180
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !180
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.i, ptr noundef nonnull align 8 dereferenceable(184) %i.s, i64 184, i1 false), !noalias !180
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !180
  %i.dt = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 16, 1697) 16, i64 noundef range(i64 8, 17) 8) #43, !noalias !180 ; 4 uses
  %i.du = icmp eq ptr %i.dt, null
end_hunk_10
begin_hunk_11_@_RINvMs0_NtCsgbCypRs12E4_4pyo36markerNtB6_6Python6detachINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB8_3err5PyErrENCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB2J_13RawDeltaTable11add_feature0EB2J_:bb.a
  store i64 1, ptr %i.dt, align 8, !noalias !180
  %.sroa.498.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store i64 1, ptr %.sroa.498.0..sroa_idx.i, align 8, !noalias !180
  invoke void @_RNvMs_NtNtCs14kWLkQVSKO_14deltalake_core10operations11add_featureNtB4_22AddTableFeatureBuilder27with_custom_execute_handler(ptr noalias noundef nonnull sret([184 x i8]) align 8 captures(none) dereferenceable(184) %i.j, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(184) %i.i, ptr noundef nonnull %i.dt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) @86)
          to label %.noexc4 unwind label %bb.be

.noexc4:                                          ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !180
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.s, ptr noundef nonnull align 8 dereferenceable(184) %i.j, i64 184, i1 false), !noalias !180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !180
  br label %bb.ai

bb.aq:                                            ; preds = %bb.al, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !180
  call void @llvm.lifetime.start.p0(ptr nonnull %2), !noalias !180
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %2, ptr noundef nonnull align 8 dereferenceable(184) %i.s, i64 184, i1 false), !noalias !180
  %i.dv = invoke { ptr, ptr } @_RNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations11add_featureNtB5_22AddTableFeatureBuilderNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(184) %2)
          to label %.noexc5 unwind label %bb.be   ; 2 uses

.noexc5:                                          ; preds = %bb.aq
  %i.dw = extractvalue { ptr, ptr } %i.dv, 0
  %i.dx = extractvalue { ptr, ptr } %i.dv, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %2), !noalias !180
  invoke void @_RINvMNtNtCskQDtHcQtBkN_5tokio7runtime7runtimeNtB3_7Runtime8block_onINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB18_6future6future6Futurep6OutputINtNtB18_6result6ResultNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB3d_6errors15DeltaTableErrorENtNtB18_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([128 x i8]) align 16 captures(address) dereferenceable(128) %i.g, ptr noundef nonnull align 8 @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt8TOKIO_RT, ptr noundef nonnull %i.dw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.dx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @112)
          to label %.noexc6 unwind label %bb.be

end_hunk_11
begin_hunk_12_@_RINvMs0_NtCsgbCypRs12E4_4pyo36markerNtB6_6Python6detachINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB8_3err5PyErrENCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB2J_13RawDeltaTable11add_feature0EB2J_:bb.a
bb.at:                                            ; preds = %bb.ao
  %i.ed = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core10operations11add_feature22AddTableFeatureBuilderECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(184) %i.i) #45
          to label %.body unwind label %bb.au, !noalias !180

bb.au:                                            ; preds = %bb.bd, %.thread.i, %bb.bb, %bb.av, %.thread131.i, %bb.at, %bb.y, %bb.g
end_hunk_12
begin_hunk_13_@_RINvMs0_NtCsgbCypRs12E4_4pyo36markerNtB6_6Python6detachINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB8_3err5PyErrENCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB2J_13RawDeltaTable15add_constraints0EB2J_:bb.a
  %i.f = alloca [64 x i8], align 8                ; 4 uses
  %i.g = alloca [128 x i8], align 16              ; 6 uses
  %i.h = alloca [56 x i8], align 8                ; 6 uses
  %2 = alloca [216 x i8], align 8                 ; 4 uses
  %i.i = alloca [216 x i8], align 8               ; 5 uses
  %i.j = alloca [216 x i8], align 8               ; 4 uses
  %i.k = alloca [64 x i8], align 8                ; 8 uses
  %i.l = alloca [16 x i8], align 8                ; 12 uses
  %i.m = alloca [24 x i8], align 8                ; 13 uses
  %3 = alloca [216 x i8], align 8                 ; 4 uses
  %i.n = alloca [216 x i8], align 8               ; 4 uses
  %i.o = alloca [88 x i8], align 8                ; 5 uses
  %i.p = alloca [88 x i8], align 8                ; 4 uses
end_hunk_13
begin_hunk_14_@_RINvMs0_NtCsgbCypRs12E4_4pyo36markerNtB6_6Python6detachINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB8_3err5PyErrENCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB2J_13RawDeltaTable15add_constraints0EB2J_:bb.a

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !233
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !233
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %3, ptr noundef nonnull align 8 dereferenceable(216) %i.s, i64 216, i1 false), !noalias !233
  invoke void @_RNvMs_NtNtCs14kWLkQVSKO_14deltalake_core10operations11constraintsNtB4_17ConstraintBuilder22with_commit_properties(ptr noalias noundef nonnull sret([216 x i8]) align 8 captures(none) dereferenceable(216) %i.n, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(216) %3, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(88) %i.o)
          to label %.noexc unwind label %bb.bb

.noexc:                                           ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !233
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.s, ptr noundef nonnull align 8 dereferenceable(216) %i.n, i64 216, i1 false), !noalias !233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !233
  br label %bb.t

end_hunk_14
begin_hunk_15_@_RINvMs0_NtCsgbCypRs12E4_4pyo36markerNtB6_6Python6detachINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB8_3err5PyErrENCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB2J_13RawDeltaTable15add_constraints0EB2J_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !233
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !233
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !233
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.i, ptr noundef nonnull align 8 dereferenceable(216) %i.s, i64 216, i1 false), !noalias !233
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !233
  %i.df = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 16, 1697) 16, i64 noundef range(i64 8, 17) 8) #43, !noalias !233 ; 4 uses
  %i.dg = icmp eq ptr %i.df, null
end_hunk_15
begin_hunk_16_@_RINvMs0_NtCsgbCypRs12E4_4pyo36markerNtB6_6Python6detachINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB8_3err5PyErrENCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB2J_13RawDeltaTable15add_constraints0EB2J_:bb.a
  store i64 1, ptr %i.df, align 8, !noalias !233
  %.sroa.490.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store i64 1, ptr %.sroa.490.0..sroa_idx.i, align 8, !noalias !233
  invoke void @_RNvMs_NtNtCs14kWLkQVSKO_14deltalake_core10operations11constraintsNtB4_17ConstraintBuilder27with_custom_execute_handler(ptr noalias noundef nonnull sret([216 x i8]) align 8 captures(none) dereferenceable(216) %i.j, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(216) %i.i, ptr noundef nonnull %i.df, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) @86)
          to label %.noexc4 unwind label %bb.bb

.noexc4:                                          ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !233
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.s, ptr noundef nonnull align 8 dereferenceable(216) %i.j, i64 216, i1 false), !noalias !233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !233
  br label %bb.ai

bb.aq:                                            ; preds = %bb.al, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !233
  call void @llvm.lifetime.start.p0(ptr nonnull %2), !noalias !233
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %2, ptr noundef nonnull align 8 dereferenceable(216) %i.s, i64 216, i1 false), !noalias !233
  %i.dh = invoke { ptr, ptr } @_RNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations11constraintsNtB5_17ConstraintBuilderNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(216) %2)
          to label %.noexc5 unwind label %bb.bb   ; 2 uses

.noexc5:                                          ; preds = %bb.aq
  %i.di = extractvalue { ptr, ptr } %i.dh, 0
  %i.dj = extractvalue { ptr, ptr } %i.dh, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %2), !noalias !233
  invoke void @_RINvMNtNtCskQDtHcQtBkN_5tokio7runtime7runtimeNtB3_7Runtime8block_onINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB18_6future6future6Futurep6OutputINtNtB18_6result6ResultNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB3d_6errors15DeltaTableErrorENtNtB18_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([128 x i8]) align 16 captures(address) dereferenceable(128) %i.g, ptr noundef nonnull align 8 @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt8TOKIO_RT, ptr noundef nonnull %i.di, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.dj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @117)
          to label %.noexc6 unwind label %bb.bb

end_hunk_16
begin_hunk_17_@_RINvMs0_NtCsgbCypRs12E4_4pyo36markerNtB6_6Python6detachINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB8_3err5PyErrENCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB2J_13RawDeltaTable15add_constraints0EB2J_:bb.a
bb.at:                                            ; preds = %bb.ao
  %i.dp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core10operations11constraints17ConstraintBuilderECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(216) %i.i) #45
          to label %.body unwind label %bb.au, !noalias !233

bb.au:                                            ; preds = %bb.ba, %.thread.i, %bb.ay, %bb.av, %.thread118.i, %bb.at, %bb.y, %bb.g
end_hunk_17
begin_hunk_18_@_RINvMs0_NtCsgbCypRs12E4_4pyo36markerNtB6_6Python6detachINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB8_3err5PyErrENCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB2J_13RawDeltaTable16drop_constraints0EB2J_:bb.a
  %i.c = alloca [4 x i8], align 4                 ; 6 uses
  %i.d = alloca [128 x i8], align 16              ; 6 uses
  %i.e = alloca [56 x i8], align 8                ; 6 uses
  %2 = alloca [184 x i8], align 8                 ; 4 uses
  %i.f = alloca [184 x i8], align 8               ; 5 uses
  %i.g = alloca [184 x i8], align 8               ; 4 uses
  %i.h = alloca [64 x i8], align 8                ; 8 uses
  %i.i = alloca [16 x i8], align 8                ; 12 uses
  %i.j = alloca [24 x i8], align 8                ; 13 uses
  %3 = alloca [184 x i8], align 8                 ; 4 uses
  %i.k = alloca [184 x i8], align 8               ; 4 uses
  %i.l = alloca [88 x i8], align 8                ; 5 uses
  %i.m = alloca [88 x i8], align 8                ; 4 uses
end_hunk_18
begin_hunk_19_@_RINvMs0_NtCsgbCypRs12E4_4pyo36markerNtB6_6Python6detachINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB8_3err5PyErrENCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB2J_13RawDeltaTable16drop_constraints0EB2J_:bb.a

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !281
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !281
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %3, ptr noundef nonnull align 8 dereferenceable(184) %i.q, i64 184, i1 false), !noalias !281
  invoke void @_RNvMs_NtNtCs14kWLkQVSKO_14deltalake_core10operations16drop_constraintsNtB4_21DropConstraintBuilder22with_commit_properties(ptr noalias noundef nonnull sret([184 x i8]) align 8 captures(none) dereferenceable(184) %i.k, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(184) %3, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(88) %i.l)
          to label %.noexc unwind label %bb.bf

.noexc:                                           ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !281
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.q, ptr noundef nonnull align 8 dereferenceable(184) %i.k, i64 184, i1 false), !noalias !281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !281
  br label %bb.v

end_hunk_19
begin_hunk_20_@_RINvMs0_NtCsgbCypRs12E4_4pyo36markerNtB6_6Python6detachINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB8_3err5PyErrENCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB2J_13RawDeltaTable16drop_constraints0EB2J_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !281
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !281
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !281
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.f, ptr noundef nonnull align 8 dereferenceable(184) %i.q, i64 184, i1 false), !noalias !281
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !281
  %i.dk = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 16, 1697) 16, i64 noundef range(i64 8, 17) 8) #43, !noalias !281 ; 4 uses
  %i.dl = icmp eq ptr %i.dk, null
end_hunk_20
begin_hunk_21_@_RINvMs0_NtCsgbCypRs12E4_4pyo36markerNtB6_6Python6detachINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB8_3err5PyErrENCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB2J_13RawDeltaTable16drop_constraints0EB2J_:bb.a
  store i64 1, ptr %i.dk, align 8, !noalias !281
  %.sroa.498.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store i64 1, ptr %.sroa.498.0..sroa_idx.i, align 8, !noalias !281
  invoke void @_RNvMs_NtNtCs14kWLkQVSKO_14deltalake_core10operations16drop_constraintsNtB4_21DropConstraintBuilder27with_custom_execute_handler(ptr noalias noundef nonnull sret([184 x i8]) align 8 captures(none) dereferenceable(184) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(184) %i.f, ptr noundef nonnull %i.dk, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) @86)
          to label %.noexc4 unwind label %bb.bf

.noexc4:                                          ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !281
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.q, ptr noundef nonnull align 8 dereferenceable(184) %i.g, i64 184, i1 false), !noalias !281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !281
  br label %bb.ak

bb.as:                                            ; preds = %bb.an, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !281
  call void @llvm.lifetime.start.p0(ptr nonnull %2), !noalias !281
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %2, ptr noundef nonnull align 8 dereferenceable(184) %i.q, i64 184, i1 false), !noalias !281
  %i.dm = invoke { ptr, ptr } @_RNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations16drop_constraintsNtB5_21DropConstraintBuilderNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(184) %2)
          to label %.noexc5 unwind label %bb.bf   ; 2 uses

.noexc5:                                          ; preds = %bb.as
  %i.dn = extractvalue { ptr, ptr } %i.dm, 0
  %i.do = extractvalue { ptr, ptr } %i.dm, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %2), !noalias !281
  invoke void @_RINvMNtNtCskQDtHcQtBkN_5tokio7runtime7runtimeNtB3_7Runtime8block_onINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB18_6future6future6Futurep6OutputINtNtB18_6result6ResultNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB3d_6errors15DeltaTableErrorENtNtB18_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([128 x i8]) align 16 captures(address) dereferenceable(128) %i.d, ptr noundef nonnull align 8 @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt8TOKIO_RT, ptr noundef nonnull %i.dn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.do, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @125)
          to label %.noexc6 unwind label %bb.bf

end_hunk_21
begin_hunk_22_@_RINvMs0_NtCsgbCypRs12E4_4pyo36markerNtB6_6Python6detachINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB8_3err5PyErrENCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB2J_13RawDeltaTable16drop_constraints0EB2J_:bb.a
bb.av:                                            ; preds = %bb.aq
  %i.du = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core10operations16drop_constraints21DropConstraintBuilderECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(184) %i.f) #45
          to label %.body unwind label %bb.aw, !noalias !281

bb.aw:                                            ; preds = %bb.be, %.thread.i, %bb.bc, %bb.ax, %.thread131.i, %bb.av, %bb.aa, %bb.g
end_hunk_22
begin_hunk_23_@_RINvMs0_NtCsgbCypRs12E4_4pyo36markerNtB6_6Python6detachINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB8_3err5PyErrENCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB2J_13RawDeltaTable19set_column_metadata0EB2J_:bb.a
  %i.e = alloca [48 x i8], align 8                ; 8 uses
  %i.f = alloca [128 x i8], align 16              ; 6 uses
  %i.g = alloca [56 x i8], align 8                ; 6 uses
  %2 = alloca [224 x i8], align 8                 ; 4 uses
  %i.h = alloca [224 x i8], align 8               ; 5 uses
  %i.i = alloca [224 x i8], align 8               ; 4 uses
  %i.j = alloca [64 x i8], align 8                ; 8 uses
  %i.k = alloca [16 x i8], align 8                ; 12 uses
  %i.l = alloca [24 x i8], align 8                ; 13 uses
  %3 = alloca [224 x i8], align 8                 ; 4 uses
  %i.m = alloca [224 x i8], align 8               ; 4 uses
  %i.n = alloca [88 x i8], align 8                ; 5 uses
  %i.o = alloca [88 x i8], align 8                ; 4 uses
end_hunk_23
begin_hunk_24_@_RINvMs0_NtCsgbCypRs12E4_4pyo36markerNtB6_6Python6detachINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB8_3err5PyErrENCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB2J_13RawDeltaTable19set_column_metadata0EB2J_:bb.a

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !337
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !337
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %3, ptr noundef nonnull align 8 dereferenceable(224) %i.v, i64 224, i1 false), !noalias !337
  invoke void @_RNvMs_NtNtCs14kWLkQVSKO_14deltalake_core10operations21update_field_metadataNtB4_26UpdateFieldMetadataBuilder22with_commit_properties(ptr noalias noundef nonnull sret([224 x i8]) align 8 captures(none) dereferenceable(224) %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(224) %3, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(88) %i.n)
          to label %.noexc unwind label %bb.bb

.noexc:                                           ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !337
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.v, ptr noundef nonnull align 8 dereferenceable(224) %i.m, i64 224, i1 false), !noalias !337
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !337
  br label %bb.v

end_hunk_24
begin_hunk_25_@_RINvMs0_NtCsgbCypRs12E4_4pyo36markerNtB6_6Python6detachINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB8_3err5PyErrENCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB2J_13RawDeltaTable19set_column_metadata0EB2J_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !337
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !337
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !337
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !337
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.h, ptr noundef nonnull align 8 dereferenceable(224) %i.v, i64 224, i1 false), !noalias !337
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !337
  %i.dv = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 16, 1697) 16, i64 noundef range(i64 8, 17) 8) #43, !noalias !337 ; 4 uses
  %i.dw = icmp eq ptr %i.dv, null
end_hunk_25
begin_hunk_26_@_RINvMs0_NtCsgbCypRs12E4_4pyo36markerNtB6_6Python6detachINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB8_3err5PyErrENCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB2J_13RawDeltaTable19set_column_metadata0EB2J_:bb.a
  store i64 1, ptr %i.dv, align 8, !noalias !337
  %.sroa.485.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store i64 1, ptr %.sroa.485.0..sroa_idx.i, align 8, !noalias !337
  invoke void @_RNvMs_NtNtCs14kWLkQVSKO_14deltalake_core10operations21update_field_metadataNtB4_26UpdateFieldMetadataBuilder27with_custom_execute_handler(ptr noalias noundef nonnull sret([224 x i8]) align 8 captures(none) dereferenceable(224) %i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(224) %i.h, ptr noundef nonnull %i.dv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) @86)
          to label %.noexc4 unwind label %bb.bb

.noexc4:                                          ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !337
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.v, ptr noundef nonnull align 8 dereferenceable(224) %i.i, i64 224, i1 false), !noalias !337
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !337
  br label %bb.ak

bb.as:                                            ; preds = %bb.an, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !337
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !337
  call void @llvm.lifetime.start.p0(ptr nonnull %2), !noalias !337
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %2, ptr noundef nonnull align 8 dereferenceable(224) %i.v, i64 224, i1 false), !noalias !337
  %i.dx = invoke { ptr, ptr } @_RNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations21update_field_metadataNtB5_26UpdateFieldMetadataBuilderNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(224) %2)
          to label %.noexc5 unwind label %bb.bb   ; 2 uses

.noexc5:                                          ; preds = %bb.as
  %i.dy = extractvalue { ptr, ptr } %i.dx, 0
  %i.dz = extractvalue { ptr, ptr } %i.dx, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %2), !noalias !337
  invoke void @_RINvMNtNtCskQDtHcQtBkN_5tokio7runtime7runtimeNtB3_7Runtime8block_onINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB18_6future6future6Futurep6OutputINtNtB18_6result6ResultNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB3d_6errors15DeltaTableErrorENtNtB18_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([128 x i8]) align 16 captures(address) dereferenceable(128) %i.f, ptr noundef nonnull align 8 @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt8TOKIO_RT, ptr noundef nonnull %i.dy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.dz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @132)
          to label %.noexc6 unwind label %bb.bb

end_hunk_26
begin_hunk_27_@_RINvMs0_NtCsgbCypRs12E4_4pyo36markerNtB6_6Python6detachINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB8_3err5PyErrENCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB2J_13RawDeltaTable19set_column_metadata0EB2J_:bb.a
bb.av:                                            ; preds = %bb.aq
  %i.ef = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core10operations21update_field_metadata26UpdateFieldMetadataBuilderECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(224) %i.h) #45
          to label %.body unwind label %bb.aw, !noalias !337

bb.aw:                                            ; preds = %bb.ba, %bb.ax, %.body.thread.i, %.thread112.i, %bb.av, %bb.aa, %bb.g
end_hunk_27
begin_hunk_28_@_RNvXs6_NtCsgbCypRs12E4_4pyo310conversionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringxENtB5_17FromPyObjectBound20from_py_object_boundCs7p2uQeJxui2_9deltalake:bb.a
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %2 = alloca [48 x i8], align 8                  ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [64 x i8], align 8                ; 7 uses
  %i.g = alloca [64 x i8], align 8                ; 6 uses
end_hunk_28
begin_hunk_29_@_RNvXs6_NtCsgbCypRs12E4_4pyo310conversionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringxENtB5_17FromPyObjectBound20from_py_object_boundCs7p2uQeJxui2_9deltalake:bb.a
  %i.s = call { i64, i64 } @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @22), !noalias !16098 ; 2 uses
  %i.t = extractvalue { i64, i64 } %i.s, 0
  %i.u = extractvalue { i64, i64 } %i.s, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2), !noalias !16101
  call void @_RNvMs_NtCs3gpiEk3WpjL_9hashbrown3mapINtB4_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringxNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE24with_capacity_and_hasherCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %2, i64 noundef %i.r, i64 noundef %i.t, i64 noundef %i.u), !noalias !16098
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false), !noalias !16101
  call void @llvm.lifetime.end.p0(ptr nonnull %2), !noalias !16101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !16101
  invoke void @_RNvXs6_NtNtCsgbCypRs12E4_4pyo35types4dictRINtNtB9_8instance5BoundNtB5_6PyDictENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12IntoIterator9into_iter(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l)
          to label %bb.f unwind label %bb.e, !noalias !16098
end_hunk_29
