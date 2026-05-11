inline.NumInlined: 294
inline.NumDeleted: 122
begin_hunk_0_@_RINvNtCsbW3aFIxube3_8fs_extra3dir4copyReRNtNtCs2pqxYH9ZEk8_3std4path7PathBufECsfY7SmN0bPrO_14deltalake_test:bb.a
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [40 x i8], align 8                ; 10 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [48 x i8], align 8                ; 8 uses
  %i.t = alloca [16 x i8], align 8                ; 12 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [24 x i8], align 8                ; 5 uses
end_hunk_0
begin_hunk_1_@_RINvNtCsbW3aFIxube3_8fs_extra3dir4copyReRNtNtCs2pqxYH9ZEk8_3std4path7PathBufECsfY7SmN0bPrO_14deltalake_test:bb.a
  %i.y = alloca [24 x i8], align 8                ; 4 uses
  %i.z = alloca [48 x i8], align 8                ; 4 uses
  %i.aa = alloca [24 x i8], align 8               ; 14 uses
  %i.ab = alloca [24 x i8], align 8               ; 14 uses
  %i.ac = alloca [16 x i8], align 8               ; 6 uses
  %i.ad = alloca [56 x i8], align 8               ; 13 uses
  %i.ae = alloca [48 x i8], align 8               ; 4 uses
  %i.af = alloca [176 x i8], align 8              ; 6 uses
end_hunk_1
begin_hunk_2_@_RINvNtCsbW3aFIxube3_8fs_extra3dir4copyReRNtNtCs2pqxYH9ZEk8_3std4path7PathBufECsfY7SmN0bPrO_14deltalake_test:bb.a
  %i.ay = alloca [24 x i8], align 8               ; 13 uses
  %.sroa.8 = alloca [16 x i8], align 8            ; 7 uses
  %i.az = alloca [32 x i8], align 8               ; 10 uses
  %i.ba = alloca [56 x i8], align 8               ; 18 uses
  %.sroa.7 = alloca [48 x i8], align 8            ; 7 uses
  %i.bb = alloca [56 x i8], align 8               ; 14 uses
  %i.bc = alloca [24 x i8], align 8               ; 12 uses
  %i.bd = alloca [24 x i8], align 8               ; 4 uses
end_hunk_2
begin_hunk_3_@_RINvNtCsbW3aFIxube3_8fs_extra3dir4copyReRNtNtCs2pqxYH9ZEk8_3std4path7PathBufECsfY7SmN0bPrO_14deltalake_test:bb.a
  %i.fc = add i64 %i.ev, 1
  store i64 %i.fc, ptr %i.ea, align 8, !alias.scope !180, !noalias !183
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !178
  br label %bb.df

bb.ay:                                            ; preds = %bb.as
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fd, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false), !noalias !186
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !178
  br label %bb.cq

end_hunk_3
begin_hunk_4_@_RINvNtCsbW3aFIxube3_8fs_extra3dir4copyReRNtNtCs2pqxYH9ZEk8_3std4path7PathBufECsfY7SmN0bPrO_14deltalake_test:bb.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std2fs7ReadDirECsfY7SmN0bPrO_14deltalake_test.exit143.i: ; preds = %bb.bp, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !178
  br label %bb.df

bb.bq:                                            ; preds = %bb.bn
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.319.0.copyload.i) ]
end_hunk_4
begin_hunk_5_@_RINvNtCsbW3aFIxube3_8fs_extra3dir4copyReRNtNtCs2pqxYH9ZEk8_3std4path7PathBufECsfY7SmN0bPrO_14deltalake_test:bb.a
bb.cp:                                            ; preds = %bb.bq
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.hz, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 48, i1 false), !noalias !186
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !178
  br label %.loopexit361
end_hunk_5
begin_hunk_6_@_RINvNtCsbW3aFIxube3_8fs_extra3dir4copyReRNtNtCs2pqxYH9ZEk8_3std4path7PathBufECsfY7SmN0bPrO_14deltalake_test:bb.a
bb.ct:                                            ; preds = %bb.bi
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ic, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false), !noalias !186
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !178
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit.i

bb.cu:                                            ; preds = %bb.bb
  %i.id = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.id, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false), !noalias !186
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !178
  br label %bb.cq

end_hunk_6
begin_hunk_7_@_RINvNtCsbW3aFIxube3_8fs_extra3dir4copyReRNtNtCs2pqxYH9ZEk8_3std4path7PathBufECsfY7SmN0bPrO_14deltalake_test:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !178
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ig, ptr noundef nonnull align 8 dereferenceable(48) %i.z, i64 48, i1 false), !noalias !186
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !178
  br label %bb.cv

end_hunk_7
begin_hunk_8_@_RINvNtCsbW3aFIxube3_8fs_extra3dir4copyReRNtNtCs2pqxYH9ZEk8_3std4path7PathBufECsfY7SmN0bPrO_14deltalake_test:bb.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECsfY7SmN0bPrO_14deltalake_test.exit170.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECsfY7SmN0bPrO_14deltalake_test.exit168.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %.thread unwind label %bb.z

.thread:                                          ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECsfY7SmN0bPrO_14deltalake_test.exit170.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %bb.dg

bb.df:                                            ; preds = %bb.ax, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std2fs7ReadDirECsfY7SmN0bPrO_14deltalake_test.exit143.i
  %.sroa.032.0.i = phi i64 [ %.sroa.032.1.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std2fs7ReadDirECsfY7SmN0bPrO_14deltalake_test.exit143.i ], [ %.sroa.15101.0.copyload.i, %bb.ax ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.059.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.059.i, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false), !noalias !178
  %.sroa.059.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.059.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.059.24..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false), !noalias !178
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ba, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.059.i, i64 48, i1 false), !noalias !186
  %.sroa.560.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  store i64 %.sroa.032.0.i, ptr %.sroa.560.0..sroa_idx.i, align 8, !alias.scope !175, !noalias !186
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.059.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !178
  %i.ik = load i64, ptr %i.ba, align 8, !range !95 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  %5 = icmp eq i64 %i.ik, -9223372036854775808
  br i1 %5, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %.thread, %bb.df
  %6 = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(48) %6, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECsfY7SmN0bPrO_14deltalake_test.exit

bb.dh:                                            ; preds = %bb.df
  %.sroa.559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.559.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7, i64 48, i1 false)
  store i64 %i.ik, ptr %i.bb, align 8
end_hunk_8
