inline.NumInlined: 194
inline.NumDeleted: 92
begin_hunk_0_@_RNvXs_Cs62u4JVtZyFF_13deltalake_gcpNtB4_10GcpFactoryNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactory14parse_url_opts:bb.a
  %i.v = alloca [120 x i8], align 8               ; 11 uses
  %i.w = alloca [72 x i8], align 8                ; 11 uses
  %i.x = alloca [48 x i8], align 8                ; 13 uses
  %4 = alloca [872 x i8], align 8                 ; 5 uses
  %i.y = alloca [872 x i8], align 8               ; 4 uses
  %i.z = alloca [872 x i8], align 8               ; 4 uses
  %i.aa = alloca [24 x i8], align 8               ; 4 uses
  %i.ab = alloca [872 x i8], align 8              ; 5 uses
end_hunk_0
begin_hunk_1_@_RNvXs_Cs62u4JVtZyFF_13deltalake_gcpNtB4_10GcpFactoryNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactory14parse_url_opts:bb.a

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(872) %4, ptr noundef nonnull align 8 dereferenceable(872) %i.z, i64 872, i1 false)
  %i.ao = invoke { i64, ptr } @_RNvMs_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeNtB4_9IORuntime10get_handle(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.am)
          to label %bb.h unwind label %bb.j       ; 2 uses

end_hunk_1
begin_hunk_2_@_RNvXs_Cs62u4JVtZyFF_13deltalake_gcpNtB4_10GcpFactoryNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactory14parse_url_opts:bb.a
bb.h:                                             ; preds = %bb.f
  %i.aq = extractvalue { i64, ptr } %i.ao, 0
  %i.ar = extractvalue { i64, ptr } %i.ao, 1
  call void @_RINvMs2_NtNtCsjyY8HP3IvQ6_12object_store3gcp7builderNtB6_25GoogleCloudStorageBuilder19with_http_connectorNtNtNtNtBa_6client4http10connection23SpawnedReqwestConnectorECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull sret([872 x i8]) align 8 captures(none) dereferenceable(872) %i.y, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(872) %4, i64 noundef %i.aq, ptr noundef %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(872) %i.ac, ptr noundef nonnull align 8 dereferenceable(872) %i.y, i64 872, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.g

end_hunk_2
begin_hunk_3_@_RNvXs_Cs62u4JVtZyFF_13deltalake_gcpNtB4_10GcpFactoryNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactory14parse_url_opts:bb.a
bb.j:                                             ; preds = %bb.f
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder25GoogleCloudStorageBuilderECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef align 8 dereferenceable(872) %4) #20
          to label %.thread238 unwind label %bb.k

bb.k:                                             ; preds = %.body213, %bb.bi, %bb.bh, %bb.az, %.body, %bb.j
end_hunk_3
