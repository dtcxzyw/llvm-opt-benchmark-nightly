inline.NumInlined: 1606
inline.NumDeleted: 619
begin_hunk_0_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsaB04DkjCm5a_10aws_config6loaderNtBL_12ConfigLoader4load0ECs9rVkZwOUgsI_13deltalake_aws:bb.a
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsaB04DkjCm5a_10aws_config16default_provider6regionNtBL_18DefaultRegionChain6region0ECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.gl

bb.aa:                                            ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 2600 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 3672
  %i.aq = load i8, ptr %i.ap, align 8, !range !593, !noundef !7
  switch i8 %i.aq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsaB04DkjCm5a_10aws_config16default_provider12retry_configNtBL_7Builder12retry_config0ECs9rVkZwOUgsI_13deltalake_aws.exit [
end_hunk_0
begin_hunk_1_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsaB04DkjCm5a_10aws_config6loaderNtBL_12ConfigLoader4load0ECs9rVkZwOUgsI_13deltalake_aws:bb.a
    i8 3, label %bb.ab
  ]

common.ret.sink.split.i:                          ; preds = %common.ret.sink.split.i.i, %bb.aa
  %.sink.i.sink.i = phi ptr [ %.sink.i.i, %common.ret.sink.split.i.i ], [ %i.ao, %bb.aa ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsaB04DkjCm5a_10aws_config15provider_config14ProviderConfigECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(192) %.sink.i.sink.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsaB04DkjCm5a_10aws_config16default_provider12retry_configNtBL_7Builder12retry_config0ECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.gp

bb.ab:                                            ; preds = %bb.aa
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 3664
  %i.as = load i8, ptr %i.ar, align 8, !range !593, !noundef !7
  switch i8 %i.as, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsaB04DkjCm5a_10aws_config16default_provider12retry_configNtBL_7Builder12retry_config0ECs9rVkZwOUgsI_13deltalake_aws.exit [
    i8 0, label %common.ret.sink.split.i.i
    i8 3, label %bb.ac
  ]

common.ret.sink.split.i.i:                        ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.ab
  %.pn.i = phi i64 [ 192, %bb.ab ], [ 384, %bb.ai ], [ 384, %bb.ah ], [ 384, %bb.ag ]
  %.sink.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.pn.i
  br label %common.ret.sink.split.i

bb.ac:                                            ; preds = %bb.ab
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 3184
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.at)
end_hunk_1
begin_hunk_2_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsaB04DkjCm5a_10aws_config6loaderNtBL_12ConfigLoader4load0ECs9rVkZwOUgsI_13deltalake_aws:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1192)
  %i.bb = load ptr, ptr %i.ba, align 8, !alias.scope !1195, !noundef !7 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %common.ret.sink.split.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bd = atomicrmw sub ptr %i.bb, i64 1 release, align 8, !noalias !1196
  %i.be = icmp eq i64 %i.bd, 1
  br i1 %i.be, label %bb.ai, label %common.ret.sink.split.i.i

bb.ai:                                            ; preds = %bb.ah
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB7_6string6StringB1B_EE9drop_slowCsat9blWvDIpa_11aws_runtime(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ba) #32
          to label %common.ret.sink.split.i.i unwind label %bb.aj

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.aj, %bb.af, %bb.ae, %bb.ad
  %.pn.i.i = phi { ptr, i32 } [ %i.bg, %bb.aj ], [ %i.au, %bb.af ], [ %i.au, %bb.ad ], [ %i.au, %bb.ae ]
end_hunk_2
begin_hunk_3_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsaB04DkjCm5a_10aws_config6loaderNtBL_12ConfigLoader4load0ECs9rVkZwOUgsI_13deltalake_aws:bb.a
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.ak:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.af
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_3
begin_hunk_4_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsaB04DkjCm5a_10aws_config6loaderNtBL_12ConfigLoader4load0ECs9rVkZwOUgsI_13deltalake_aws:bb.a
  unreachable

bb.al:                                            ; preds = %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 2992
  %i.bj = load i8, ptr %i.bi, align 8, !range !1201, !noundef !7
  switch i8 %i.bj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsaB04DkjCm5a_10aws_config16default_provider8app_nameNtBL_7Builder8app_name0ECs9rVkZwOUgsI_13deltalake_aws.exit [
end_hunk_4
begin_hunk_5_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsaB04DkjCm5a_10aws_config6loaderNtBL_12ConfigLoader4load0ECs9rVkZwOUgsI_13deltalake_aws:bb.a
    i8 4, label %bb.an
  ]

common.ret.sink.split.i92:                        ; preds = %bb.ax, %bb.ay, %bb.az, %bb.al
  %.pn225 = phi i64 [ 2600, %bb.al ], [ 2792, %bb.az ], [ 2792, %bb.ay ], [ 2792, %bb.ax ]
  %.sink.i = getelementptr inbounds nuw i8, ptr %0, i64 %.pn225
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsaB04DkjCm5a_10aws_config15provider_config14ProviderConfigECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(192) %.sink.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsaB04DkjCm5a_10aws_config16default_provider8app_nameNtBL_7Builder8app_name0ECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.gq

end_hunk_5
begin_hunk_6_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsaB04DkjCm5a_10aws_config6loaderNtBL_12ConfigLoader4load0ECs9rVkZwOUgsI_13deltalake_aws:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1229)
  %i.cc = load ptr, ptr %i.cb, align 8, !alias.scope !1232, !noundef !7 ; 2 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %common.ret.sink.split.i92, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ce = atomicrmw sub ptr %i.cc, i64 1 release, align 8, !noalias !1233
  %i.cf = icmp eq i64 %i.ce, 1
  br i1 %i.cf, label %bb.az, label %common.ret.sink.split.i92

bb.az:                                            ; preds = %bb.ay
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB7_6string6StringB1B_EE9drop_slowCsat9blWvDIpa_11aws_runtime(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cb) #32
          to label %common.ret.sink.split.i92 unwind label %bb.bh

bb.ba:                                            ; preds = %bb.be, %bb.aw
  %.pn2.i = phi { ptr, i32 } [ %i.ca, %bb.aw ], [ %.pn.i.a, %bb.be ] ; 3 uses
end_hunk_6
begin_hunk_7_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsaB04DkjCm5a_10aws_config6loaderNtBL_12ConfigLoader4load0ECs9rVkZwOUgsI_13deltalake_aws:bb.a
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit10.i

bb.bi:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit10.i, %.body.i, %bb.bc
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_7
