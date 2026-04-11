inline.NumInlined: 1579
inline.NumDeleted: 580
begin_hunk_0_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsaB04DkjCm5a_10aws_config6loaderNtBL_12ConfigLoader4load0ECs9rVkZwOUgsI_13deltalake_aws:bb.a
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsaB04DkjCm5a_10aws_config16default_provider6regionNtBL_18DefaultRegionChain6region0ECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.jb

bb.cq:                                            ; preds = %bb.a
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 2600
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 3672
  %i.gd = load i8, ptr %i.gc, align 8, !range !139, !noundef !22
  switch i8 %i.gd, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsaB04DkjCm5a_10aws_config16default_provider12retry_configNtBL_7Builder12retry_config0ECs9rVkZwOUgsI_13deltalake_aws.exit [
end_hunk_0
begin_hunk_1_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsaB04DkjCm5a_10aws_config6loaderNtBL_12ConfigLoader4load0ECs9rVkZwOUgsI_13deltalake_aws:bb.a
    i8 3, label %bb.cr
  ]

common.ret.sink.split.i:                          ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit5.i.i, %bb.cr, %bb.cq
  %.sink.i.sink.i = phi ptr [ %i.gb, %bb.cq ], [ %2, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit5.i.i ], [ %1, %bb.cr ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsaB04DkjCm5a_10aws_config15provider_config14ProviderConfigECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(192) %.sink.i.sink.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsaB04DkjCm5a_10aws_config16default_provider12retry_configNtBL_7Builder12retry_config0ECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.jf

bb.cr:                                            ; preds = %bb.cq
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 2792
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 3664
  %i.gf = load i8, ptr %i.ge, align 8, !range !139, !noundef !22
  switch i8 %i.gf, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsaB04DkjCm5a_10aws_config16default_provider12retry_configNtBL_7Builder12retry_config0ECs9rVkZwOUgsI_13deltalake_aws.exit [
    i8 0, label %common.ret.sink.split.i
    i8 3, label %bb.cs
  ]

bb.cs:                                            ; preds = %bb.cr
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 3184
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.gg)
end_hunk_1
begin_hunk_2_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsaB04DkjCm5a_10aws_config6loaderNtBL_12ConfigLoader4load0ECs9rVkZwOUgsI_13deltalake_aws:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !828)
  %i.go = load ptr, ptr %i.gn, align 8, !alias.scope !831, !noundef !22 ; 2 uses
  %i.gp = icmp eq ptr %i.go, null
  br i1 %i.gp, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit5.i.i, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.gq = atomicrmw sub ptr %i.go, i64 1 release, align 8, !noalias !832
  %i.gr = icmp eq i64 %i.gq, 1
  br i1 %i.gr, label %bb.cy, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit5.i.i

bb.cy:                                            ; preds = %bb.cx
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB7_6string6StringB1B_EE9drop_slowCsat9blWvDIpa_11aws_runtime(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.gn) #30
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit5.i.i unwind label %bb.cz

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.cz, %bb.cv, %bb.cu, %bb.ct
  %.pn.i.i = phi { ptr, i32 } [ %i.gt, %bb.cz ], [ %i.gh, %bb.cv ], [ %i.gh, %bb.ct ], [ %i.gh, %bb.cu ]
end_hunk_2
begin_hunk_3_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsaB04DkjCm5a_10aws_config6loaderNtBL_12ConfigLoader4load0ECs9rVkZwOUgsI_13deltalake_aws:bb.a
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit5.i.i: ; preds = %bb.cy, %bb.cx, %bb.cw
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 2984
  br label %common.ret.sink.split.i

bb.da:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.cv
  %i.gu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_3
begin_hunk_4_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsaB04DkjCm5a_10aws_config6loaderNtBL_12ConfigLoader4load0ECs9rVkZwOUgsI_13deltalake_aws:bb.a
  unreachable

bb.db:                                            ; preds = %bb.a
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 2600
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 2992
  %i.gw = load i8, ptr %i.gv, align 8, !range !837, !noundef !22
  switch i8 %i.gw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsaB04DkjCm5a_10aws_config16default_provider8app_nameNtBL_7Builder8app_name0ECs9rVkZwOUgsI_13deltalake_aws.exit [
end_hunk_4
begin_hunk_5_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsaB04DkjCm5a_10aws_config6loaderNtBL_12ConfigLoader4load0ECs9rVkZwOUgsI_13deltalake_aws:bb.a
    i8 4, label %bb.dd
  ]

common.ret.sink.split.i95:                        ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i94, %bb.db
  %.sink.i = phi ptr [ %4, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i94 ], [ %3, %bb.db ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsaB04DkjCm5a_10aws_config15provider_config14ProviderConfigECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(192) %.sink.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsaB04DkjCm5a_10aws_config16default_provider8app_nameNtBL_7Builder8app_name0ECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.jg

end_hunk_5
begin_hunk_6_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsaB04DkjCm5a_10aws_config6loaderNtBL_12ConfigLoader4load0ECs9rVkZwOUgsI_13deltalake_aws:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !865)
  %i.hp = load ptr, ptr %i.ho, align 8, !alias.scope !868, !noundef !22 ; 2 uses
  %i.hq = icmp eq ptr %i.hp, null
  br i1 %i.hq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i94, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.hr = atomicrmw sub ptr %i.hp, i64 1 release, align 8, !noalias !869
  %i.hs = icmp eq i64 %i.hr, 1
  br i1 %i.hs, label %bb.dp, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i94

bb.dp:                                            ; preds = %bb.do
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB7_6string6StringB1B_EE9drop_slowCsat9blWvDIpa_11aws_runtime(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ho) #30
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i94 unwind label %bb.dx

bb.dq:                                            ; preds = %bb.du, %bb.dm
  %.pn2.i92 = phi { ptr, i32 } [ %i.hn, %bb.dm ], [ %.pn.i91, %bb.du ] ; 3 uses
end_hunk_6
begin_hunk_7_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsaB04DkjCm5a_10aws_config6loaderNtBL_12ConfigLoader4load0ECs9rVkZwOUgsI_13deltalake_aws:bb.a
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit10.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i94: ; preds = %bb.dp, %bb.do, %bb.dn
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 2792
  br label %common.ret.sink.split.i95

bb.dy:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit10.i, %.body.i96, %bb.ds
  %i.ig = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_7
