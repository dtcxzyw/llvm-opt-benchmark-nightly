inline.NumInlined: 4953
inline.NumDeleted: 1088
begin_hunk_0_@_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable14driftsort_mainTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB14_5sliceSBZ_7sort_byNCINvXs1o_NtNtNtB14_11collections5btree3mapINtB2X_8BTreeMapB10_B1C_EINtNtNtNtB8_4iter6traits7collect12FromIteratorBZ_E9from_iterINtNtNtB40_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB10_B10_ENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB6y_13RawDeltaTable24create_write_transaction0s2_0EE0E0INtNtB14_3vec3VecBZ_EEB6y_:bb.a
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [4096 x i8], align 8              ; 3 uses
  %i.c = lshr i64 %1, 1
  %i.d = sub nuw nsw i64 %1, %i.c
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 142857)
  %.sroa.0.0.i8 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i, i64 %i.d) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = icmp samesign ugt i64 %.sroa.0.0.i8, 73  ; 3 uses
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable14driftsort_mainTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB14_5sliceSBZ_7sort_byNCINvXs1o_NtNtNtB14_11collections5btree3mapINtB2X_8BTreeMapB10_B1C_EINtNtNtNtB8_4iter6traits7collect12FromIteratorBZ_E9from_iterINtNtNtB40_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB10_B10_ENCNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties0EE0E0INtNtB14_3vec3VecBZ_EEB6s_:bb.a
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [4096 x i8], align 8              ; 3 uses
  %i.c = lshr i64 %1, 1
  %i.d = sub nuw nsw i64 %1, %i.c
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 142857)
  %.sroa.0.0.i8 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i, i64 %i.d) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = icmp samesign ugt i64 %.sroa.0.0.i8, 73  ; 3 uses
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
end_hunk_1
begin_hunk_2_@_RINvXs7_NtNtCs4lawaffTVVK_9sqlparser3ast3dmlNtB6_6InsertNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake:bb.a
  %i.qo = shl i64 %storemerge.i292, 3
  %i.qp = and i64 %i.qo, 56
  %i.qq = shl nuw i64 %.sroa.0.2.i.i254, %i.qp
  %i.qr = or i64 %i.ql, %i.qq                     ; 3 uses
  %notsub565 = add i64 %storemerge.i292, -9
  %i.qs = icmp ult i64 %notsub565, -2
  br i1 %i.qs, label %bb.bf, label %bb.be
end_hunk_2
begin_hunk_3_@_RINvXs7_NtNtCs4lawaffTVVK_9sqlparser3ast3dmlNtB6_6InsertNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake:bb.a
  %i.afi = shl i64 %storemerge.i147, 3
  %i.afj = and i64 %i.afi, 56
  %i.afk = shl nuw i64 %.sroa.0.2.i.i109, %i.afj
  %i.afl = or i64 %i.afg, %i.afk                  ; 3 uses
  %notsub = add i64 %storemerge.i147, -9
  %i.afm = icmp ult i64 %notsub, -2
  br i1 %i.afm, label %bb.dk, label %bb.dj
end_hunk_3
begin_hunk_4_@_RINvXsh1_NtCs4lawaffTVVK_9sqlparser3astNtB7_13DenyStatementNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake:bb.a
  %i.jr = shl i64 %storemerge.i226, 3
  %i.js = and i64 %i.jr, 56
  %i.jt = shl nuw i64 %.sroa.0.2.i.i188, %i.js
  %i.ju = or i64 %i.jo, %i.jt                     ; 3 uses
  %notsub369 = add i64 %storemerge.i226, -9
  %i.jv = icmp ult i64 %notsub369, -2
  br i1 %i.jv, label %bb.ao, label %bb.an
end_hunk_4
begin_hunk_5_@_RINvXsh1_NtCs4lawaffTVVK_9sqlparser3astNtB7_13DenyStatementNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake:bb.a
  %i.yl = shl i64 %storemerge.i81, 3
  %i.ym = and i64 %i.yl, 56
  %i.yn = shl nuw i64 %.sroa.0.2.i.i43, %i.ym
  %i.yo = or i64 %i.yj, %i.yn                     ; 3 uses
  %notsub = add i64 %storemerge.i81, -9
  %i.yp = icmp ult i64 %notsub, -2
  br i1 %i.yp, label %bb.ct, label %bb.cs
end_hunk_5
