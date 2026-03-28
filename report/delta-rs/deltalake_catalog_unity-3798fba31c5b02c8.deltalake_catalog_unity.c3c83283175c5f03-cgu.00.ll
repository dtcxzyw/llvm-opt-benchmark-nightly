begin_hunk_0

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bf = load i64, ptr %i.b, align 8, !range !138, !noundef !4 ; 3 uses
  %3 = and i64 %i.bf, 1
  %or.cond.not = icmp eq i64 %3, 0
  br i1 %or.cond.not, label %bb.ab, label %.thread32

.thread32:                                        ; preds = %bb.aa
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
end_hunk_0
begin_hunk_1
  br i1 %or.cond, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB2c_.exit.sink.split.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCshhQzAC5dGUF_17crossbeam_channel3err12TrySendErrorINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB36_.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCshhQzAC5dGUF_17crossbeam_channel3err12TrySendErrorINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB36_.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB2c_.exit.sink.split.i, %.thread32, %bb.ab
  %.sroa.05.035 = phi i64 [ %i.bf, %.thread32 ], [ 2, %bb.ab ], [ 2, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB2c_.exit.sink.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i8 0, ptr %i.bc, align 1
  store i64 %.sroa.05.035, ptr %0, align 8
end_hunk_1
