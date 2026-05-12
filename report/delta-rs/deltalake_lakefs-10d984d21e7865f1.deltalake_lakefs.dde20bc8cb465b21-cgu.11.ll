inline.NumInlined: 364
inline.NumDeleted: 128
begin_hunk_0_@_RINvXNtNtCseqDwI8vvjGQ_10serde_json5value2deNtB5_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeQINtNtB7_2de12DeserializerNtNtB7_4read7StrReadEECsj34PGqTgg0L_16deltalake_lakefs:bb.a
  %i.w = alloca [24 x i8], align 8                ; 4 uses
  %i.x = alloca [32 x i8], align 8                ; 4 uses
  %i.y = alloca [24 x i8], align 8                ; 4 uses
  %i.z = alloca [32 x i8], align 8                ; 6 uses
  %i.aa = alloca [40 x i8], align 8               ; 10 uses
  %i.ab = alloca [32 x i8], align 8               ; 14 uses
  %i.ac = alloca [24 x i8], align 8               ; 4 uses
  %i.ad = alloca [32 x i8], align 8               ; 9 uses
  %i.ae = alloca [40 x i8], align 8               ; 15 uses
end_hunk_0
begin_hunk_1_@_RINvXNtNtCseqDwI8vvjGQ_10serde_json5value2deNtB5_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeQINtNtB7_2de12DeserializerNtNtB7_4read7StrReadEECsj34PGqTgg0L_16deltalake_lakefs:bb.a

_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %.noexc2, %.noexc1, %.noexc
  %.sroa.0.0.i = phi ptr [ %i.ho, %.noexc1 ], [ %i.hn, %.noexc ], [ %i.hp, %.noexc2 ] ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %i.z, i64 32, i1 false), !noalias !227
  %i.hr = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store ptr %.sroa.0.0.i, ptr %i.hr, align 8, !noalias !227
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !227
end_hunk_1
begin_hunk_2_@_RINvXNtNtCseqDwI8vvjGQ_10serde_json5value2deNtB5_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeQINtNtB7_2de12DeserializerNtNtB7_4read9SliceReadEECsj34PGqTgg0L_16deltalake_lakefs:bb.a
  %i.n = alloca [16 x i8], align 8                ; 6 uses
  %i.o = alloca [32 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [32 x i8], align 8                ; 5 uses
  %i.r = alloca [40 x i8], align 8                ; 12 uses
  %i.s = alloca [32 x i8], align 8                ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [32 x i8], align 8                ; 7 uses
  %i.v = alloca [40 x i8], align 8                ; 12 uses
end_hunk_2
begin_hunk_3_@_RINvXNtNtCseqDwI8vvjGQ_10serde_json5value2deNtB5_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeQINtNtB7_2de12DeserializerNtNtB7_4read9SliceReadEECsj34PGqTgg0L_16deltalake_lakefs:bb.a
          to label %common.resume unwind label %bb.bw, !noalias !515, !inline_history !536

bb.cc:                                            ; preds = %bb.ca
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 32, i1 false), !noalias !535
  %i.fs = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr %i.fq, ptr %i.fs, align 8, !noalias !535
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !535
  %i.ft = load i8, ptr %i.r, align 8, !range !11, !noalias !535, !noundef !3 ; 2 uses
  %i.fu = icmp eq i8 %i.ft, 6
  br i1 %i.fu, label %bb.ce, label %bb.cd

end_hunk_3
begin_hunk_4_@_RINvXNtNtCseqDwI8vvjGQ_10serde_json5value2deNtB5_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeQINtNtB7_2de12DeserializerNtNtB7_4read9SliceReadEECsj34PGqTgg0L_16deltalake_lakefs:bb.a
  br i1 %.not.i, label %.thread111, label %bb.cf

.thread111:                                       ; preds = %bb.cd
  %.sroa.18.0..sroa_idx123 = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %.sroa.18.0.copyload124 = load i8, ptr %.sroa.18.0..sroa_idx123, align 1, !noalias !535
  %.sroa.20.0..sroa_idx126 = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.20, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.20.0..sroa_idx126, i64 6, i1 false), !noalias !535
  %.sroa.20127.0..sroa_idx130 = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.20127.0.copyload131 = load i64, ptr %.sroa.20127.0..sroa_idx130, align 8, !noalias !535
  %.sroa.29.0..sroa_idx134 = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.29.0.copyload135 = load i64, ptr %.sroa.29.0..sroa_idx134, align 8, !noalias !535
  %.sroa.33.0..sroa_idx138 = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.sroa.33.0.copyload139 = load i64, ptr %.sroa.33.0..sroa_idx138, align 8, !noalias !535
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !535
  br label %.thread82

end_hunk_4
begin_hunk_5_@_RINvXNtNtCseqDwI8vvjGQ_10serde_json5value2deNtB5_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeQINtNtB7_2de12DeserializerNtNtB7_4read9SliceReadEECsj34PGqTgg0L_16deltalake_lakefs:bb.a
  %.sroa.29.3 = phi i64 [ undef, %bb.ce ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit ], [ %.sroa.29.0.copyload135, %.thread111 ], [ undef, %bb.cf ]
  %.sroa.20127.3 = phi i64 [ %i.fx, %bb.ce ], [ %i.fx, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit ], [ %.sroa.20127.0.copyload131, %.thread111 ], [ %i.fy, %bb.cf ]
  %.sroa.18.2 = phi i8 [ undef, %bb.ce ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit ], [ %.sroa.18.0.copyload124, %.thread111 ], [ undef, %bb.cf ]
  %.sroa.0.3 = phi i8 [ 6, %bb.ce ], [ 6, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit ], [ %i.ft, %.thread111 ], [ 6, %bb.cf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !535
  br label %bb.aj

end_hunk_5
