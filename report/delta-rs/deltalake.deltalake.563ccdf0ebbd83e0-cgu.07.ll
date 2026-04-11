inline.NumInlined: 7758
inline.NumDeleted: 2965
begin_hunk_0_@_RINvMs2_NtNtCskQDtHcQtBkN_5tokio7runtime4parkNtB6_16CachedParkThread8block_onNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB1n_13RawDeltaTable16cleanup_metadata0s_0EB1n_:bb.a
  %i.ak = alloca [24 x i8], align 8               ; 12 uses
  %i.al = alloca [32 x i8], align 8               ; 8 uses
  %i.am = alloca [32 x i8], align 8               ; 5 uses
  %i.an = alloca [176 x i8], align 8              ; 8 uses
  %i.ao = alloca [16 x i8], align 8               ; 6 uses
  %i.ap = alloca [16 x i8], align 8               ; 6 uses
  %i.aq = alloca [16 x i8], align 8               ; 6 uses
end_hunk_0
begin_hunk_1_@_RINvMs2_NtNtCskQDtHcQtBkN_5tokio7runtime4parkNtB6_16CachedParkThread8block_onNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB1n_13RawDeltaTable16cleanup_metadata0s_0EB1n_:bb.a
  %i.fm = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.fn = getelementptr inbounds nuw i8, ptr %i.an, i64 128
  %i.fo = getelementptr inbounds nuw i8, ptr %i.an, i64 160
  %3 = getelementptr inbounds nuw i8, ptr %i.an, i64 168
  %.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.5385.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 3 uses
end_hunk_1
begin_hunk_2_@_RINvMs2_NtNtCskQDtHcQtBkN_5tokio7runtime4parkNtB6_16CachedParkThread8block_onNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB1n_13RawDeltaTable16cleanup_metadata0s_0EB1n_:bb.a
  %.sroa.8135.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 40
  %.sroa.7134.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  %.sroa.9136.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 56
  br label %bb.e

bb.e:                                             ; preds = %bb.mv, %bb.d
end_hunk_2
begin_hunk_3_@_RINvMs2_NtNtCskQDtHcQtBkN_5tokio7runtime4parkNtB6_16CachedParkThread8block_onNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB1n_13RawDeltaTable16cleanup_metadata0s_0EB1n_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !2600
  call void @llvm.experimental.noalias.scope.decl(metadata !2835)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fn, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.am, i64 32, i1 false), !alias.scope !2838, !noalias !2840
  store ptr %i.eh, ptr %i.fo, align 8, !alias.scope !2843, !noalias !2844
  store ptr %i.ea, ptr %3, align 8, !alias.scope !2843, !noalias !2844
  store i64 0, ptr %i.an, align 8, !alias.scope !2843, !noalias !2844
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !2600
  %i.zb = invoke { ptr, ptr } @_RNvYINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream10filter_map9FilterMapINtNtB9_4iter4IterINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtCsbvkFyIu7lgC_4core6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2X_5ErrorEEENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s5_00NCB3U_s5_0ENtB7_9StreamExt5boxedCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(176) %i.an)
end_hunk_3
begin_hunk_4_@_RINvMs2_NtNtCskQDtHcQtBkN_5tokio7runtime4parkNtB6_16CachedParkThread8block_onNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB1n_13RawDeltaTable17create_checkpoint0s_0EB1n_:bb.a
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.10403.0..sroa_idx404.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.fl = getelementptr inbounds nuw i8, ptr %i.by, i64 1170 ; 7 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.by, i64 432 ; 6 uses
  %.sroa.4438.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 440
  %.sroa.5439.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 472
  %.sroa.8450.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 1208 ; 8 uses
  %.sroa.10452.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 1248 ; 2 uses
  %.sroa.3455.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.fn = getelementptr inbounds nuw i8, ptr %i.by, i64 1240 ; 6 uses
end_hunk_4
begin_hunk_5_@_RINvMs2_NtNtCskQDtHcQtBkN_5tokio7runtime4parkNtB6_16CachedParkThread8block_onNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB1n_13RawDeltaTable17create_checkpoint0s_0EB1n_:bb.a
  %i.fw = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.10496.0..sroa_idx497.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.fx = getelementptr inbounds nuw i8, ptr %i.by, i64 1280 ; 4 uses
  %.sroa.8511.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 1288 ; 3 uses
  %.sroa.10513.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 1328 ; 2 uses
  %.sroa.3516.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.by, i64 1320
end_hunk_5
begin_hunk_6_@_RINvMs2_NtNtCskQDtHcQtBkN_5tokio7runtime4parkNtB6_16CachedParkThread8block_onNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB1n_13RawDeltaTable17create_checkpoint0s_0EB1n_:bb.a
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %.sroa.746.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %.sroa.948.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 56
  br label %bb.e

bb.e:                                             ; preds = %bb.qj, %bb.d
end_hunk_6
begin_hunk_7_@_RINvMs2_NtNtCskQDtHcQtBkN_5tokio7runtime4parkNtB6_16CachedParkThread8block_onNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB1n_13RawDeltaTable17create_checkpoint0s_0EB1n_:bb.a
  store i8 1, ptr %i.fl, align 2, !noalias !3072
  store i64 %i.pz, ptr %i.fm, align 8, !noalias !3072
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4438.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8401.i.i.i.i.i, i64 32, i1 false), !noalias !3072
  store ptr %i.fm, ptr %i.dy, align 8, !noalias !3072
  store ptr %i.fb, ptr %.sroa.8450.0..sroa_idx.i.i.i.i.i, align 8, !noalias !3072
  store i8 0, ptr %.sroa.10452.0..sroa_idx.i.i.i.i.i, align 8, !noalias !3072
  br label %bb.gr

end_hunk_7
begin_hunk_8_@_RINvMs2_NtNtCskQDtHcQtBkN_5tokio7runtime4parkNtB6_16CachedParkThread8block_onNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB1n_13RawDeltaTable17create_checkpoint0s_0EB1n_:bb.a
bb.jl:                                            ; preds = %bb.jk, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit214.i.i.i.i.i
  %.sroa.8494.i.sink.i.i.i.i = phi ptr [ %.sroa.8494.i.i.i.i.i, %bb.jk ], [ %i.dy, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit214.i.i.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fn, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8494.i.sink.i.i.i.i, i64 40, i1 false), !noalias !3072
  store ptr %i.fm, ptr %i.fx, align 8, !noalias !3072
  store ptr %i.fn, ptr %.sroa.8511.0..sroa_idx.i.i.i.i.i, align 8, !noalias !3072
  store i8 0, ptr %.sroa.10513.0..sroa_idx.i.i.i.i.i, align 8, !noalias !3072
  br label %bb.hg

end_hunk_8
