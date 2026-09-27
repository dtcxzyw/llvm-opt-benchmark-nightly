Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iox2_service.iox2_service.771596196ace3571-cgu.07?download=true
inline.NumInlined: 936
inline.NumDeleted: 422
begin_hunk_0_@_RNvXst_NtCs8Chj7Szqq0n_4core3fmtINtNtB7_6marker11PhantomDataNtNtNtCsg6ZEkMtNi4J_8iceoryx24node25global_management_segment5StateENtB5_5Debug3fmtCsadSKrpJ73hd_12iox2_service:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.g
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXst_NtCs8Chj7Szqq0n_4core3fmtINtNtB7_6marker11PhantomDataNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config13DynamicConfigENtB5_5Debug3fmtCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @425, ptr %i.b, align 8, !captures !23
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 48, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.43.0..sroa_idx, align 8
  %i.d = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !6, !align !12, !noundef !6
  %i.g = call noundef zeroext i1 @_RNvNtCs8Chj7Szqq0n_4core3fmt5write(ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f, ptr noundef nonnull @418, ptr noundef nonnull %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.g
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXst_NtCs8Chj7Szqq0n_4core3fmtINtNtB7_6marker11PhantomDataNtNtNtCslR0xdO7Fetl_27iceoryx2_services_discovery17service_discovery7service9DiscoveryENtB5_5Debug3fmtCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @428, ptr %i.b, align 8, !captures !23
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 66, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.43.0..sroa_idx, align 8
  %i.d = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !6, !align !12, !noundef !6
  %i.g = call noundef zeroext i1 @_RNvNtCs8Chj7Szqq0n_4core3fmt5write(ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f, ptr noundef nonnull @418, ptr noundef nonnull %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.g
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXst_NtCs8Chj7Szqq0n_4core3fmtINtNtB7_6marker11PhantomDataNtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details20SharedManagementDataENtB5_5Debug3fmtCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @429, ptr %i.b, align 8, !captures !23
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 73, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.43.0..sroa_idx, align 8
  %i.d = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !6, !align !12, !noundef !6
  %i.g = call noundef zeroext i1 @_RNvNtCs8Chj7Szqq0n_4core3fmt5write(ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f, ptr noundef nonnull @418, ptr noundef nonnull %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.g
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXst_NtCs8Chj7Szqq0n_4core3fmtINtNtB7_6marker11PhantomDataSNtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config12StaticConfigENtB5_5Debug3fmtCsadSKrpJ73hd_12iox2_service(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @431, ptr %i.b, align 8, !captures !23
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 48, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.43.0..sroa_idx, align 8
  %i.d = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !6, !align !12, !noundef !6
  %i.g = call noundef zeroext i1 @_RNvNtCs8Chj7Szqq0n_4core3fmt5write(ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f, ptr noundef nonnull @418, ptr noundef nonnull %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.g
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXst_NtCs8Chj7Szqq0n_4core3fmtINtNtB7_6marker11PhantomDataSNtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder19CustomPayloadMarkerENtB5_5Debug3fmtCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @432, ptr %i.b, align 8, !captures !23
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 49, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.43.0..sroa_idx, align 8
  %i.d = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !6, !align !12, !noundef !6
  %i.g = call noundef zeroext i1 @_RNvNtCs8Chj7Szqq0n_4core3fmt5write(ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f, ptr noundef nonnull @418, ptr noundef nonnull %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.g
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXst_NtCs8Chj7Szqq0n_4core3fmtINtNtB7_6marker11PhantomDatauENtB5_5Debug3fmtCsadSKrpJ73hd_12iox2_service(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @433, ptr %i.b, align 8, !captures !23
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 2, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.43.0..sroa_idx, align 8
  %i.d = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !6, !align !12, !noundef !6
  %i.g = call noundef zeroext i1 @_RNvNtCs8Chj7Szqq0n_4core3fmt5write(ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f, ptr noundef nonnull @418, ptr noundef nonnull %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.g
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXst_NtCs8Chj7Szqq0n_4core3fmtINtNtB7_6marker11PhantomDatayENtB5_5Debug3fmtCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @434, ptr %i.b, align 8, !captures !23
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 3, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.43.0..sroa_idx, align 8
  %i.d = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !6, !align !12, !noundef !6
  %i.g = call noundef zeroext i1 @_RNvNtCs8Chj7Szqq0n_4core3fmt5write(ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f, ptr noundef nonnull @418, ptr noundef nonnull %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.g
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsv_NtCsg6ZEkMtNi4J_8iceoryx27serviceNtB5_19ServiceDetailsErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !20, !noundef !6 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXsv_NtCsg6ZEkMtNi4J_8iceoryx27serviceNtB5_19ServiceDetailsErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXsv_NtCsg6ZEkMtNi4J_8iceoryx27serviceNtB5_19ServiceDetailsErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt.247, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext) #23
  ret i1 %i.d
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsw_NtCsg6ZEkMtNi4J_8iceoryx24portNtB5_9LoanErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !18, !noundef !6 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXsw_NtCsg6ZEkMtNi4J_8iceoryx24portNtB5_9LoanErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXsw_NtCsg6ZEkMtNi4J_8iceoryx24portNtB5_9LoanErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt.248, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext) #23
  ret i1 %i.d
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsx_NtNtCsg6ZEkMtNi4J_8iceoryx27service9attributeNtB5_12AttributeSetNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(2824) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @222, i64 noundef 12, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @448) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error12ContextErrorReNtNtCs1HHhRunvQSa_10serde_yaml5error5ErrorENtNtCs8Chj7Szqq0n_4core5error5Error11descriptionCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @449, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error12ContextErrorReNtNtCs1HHhRunvQSa_10serde_yaml5error5ErrorENtNtCs8Chj7Szqq0n_4core5error5Error5causeCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @189, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error12ContextErrorReNtNtCs1HHhRunvQSa_10serde_yaml5error5ErrorENtNtCs8Chj7Szqq0n_4core5error5Error7type_idCsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @450, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error12ContextErrorReNtNtCs8FOSrxU71ur_3ron5error5ErrorENtNtCs8Chj7Szqq0n_4core5error5Error11descriptionCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @449, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error12ContextErrorReNtNtCs8FOSrxU71ur_3ron5error5ErrorENtNtCs8Chj7Szqq0n_4core5error5Error5causeCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @191, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error12ContextErrorReNtNtCs8FOSrxU71ur_3ron5error5ErrorENtNtCs8Chj7Szqq0n_4core5error5Error7type_idCsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @451, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error12ContextErrorReNtNtCsg6ZEkMtNi4J_8iceoryx27service16ServiceListErrorENtNtCs8Chj7Szqq0n_4core5error5Error11descriptionCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @449, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error12ContextErrorReNtNtCsg6ZEkMtNi4J_8iceoryx27service16ServiceListErrorENtNtCs8Chj7Szqq0n_4core5error5Error5causeCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @64, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error12ContextErrorReNtNtCsg6ZEkMtNi4J_8iceoryx27service16ServiceListErrorENtNtCs8Chj7Szqq0n_4core5error5Error7type_idCsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @452, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error12ContextErrorReNtNtCsi8sRyZZx6Wq_10serde_json5error5ErrorENtNtCs8Chj7Szqq0n_4core5error5Error11descriptionCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @449, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error12ContextErrorReNtNtCsi8sRyZZx6Wq_10serde_json5error5ErrorENtNtCs8Chj7Szqq0n_4core5error5Error5causeCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @193, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error12ContextErrorReNtNtCsi8sRyZZx6Wq_10serde_json5error5ErrorENtNtCs8Chj7Szqq0n_4core5error5Error7type_idCsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @453, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtCs1HHhRunvQSa_10serde_yaml5error5ErrorEENtNtCs8Chj7Szqq0n_4core5error5Error11descriptionCsadSKrpJ73hd_12iox2_service(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @449, i64 40 }
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { ptr, ptr } @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtCs1HHhRunvQSa_10serde_yaml5error5ErrorEENtNtCs8Chj7Szqq0n_4core5error5Error5causeCsadSKrpJ73hd_12iox2_service(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCs2wk0oZsur5i_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) #23 ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !6, !nonnull !6
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b) #27, !inline_history !1724
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtCs1HHhRunvQSa_10serde_yaml5error5ErrorEENtNtCs8Chj7Szqq0n_4core5error5Error7type_idCsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @454, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtCs8FOSrxU71ur_3ron5error5ErrorEENtNtCs8Chj7Szqq0n_4core5error5Error11descriptionCsadSKrpJ73hd_12iox2_service(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @449, i64 40 }
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { ptr, ptr } @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtCs8FOSrxU71ur_3ron5error5ErrorEENtNtCs8Chj7Szqq0n_4core5error5Error5causeCsadSKrpJ73hd_12iox2_service(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCs2wk0oZsur5i_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) #23 ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !6, !nonnull !6
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b) #27, !inline_history !1725
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtCs8FOSrxU71ur_3ron5error5ErrorEENtNtCs8Chj7Szqq0n_4core5error5Error7type_idCsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @455, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtCsg6ZEkMtNi4J_8iceoryx27service16ServiceListErrorEENtNtCs8Chj7Szqq0n_4core5error5Error11descriptionCsadSKrpJ73hd_12iox2_service(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @449, i64 40 }
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { ptr, ptr } @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtCsg6ZEkMtNi4J_8iceoryx27service16ServiceListErrorEENtNtCs8Chj7Szqq0n_4core5error5Error5causeCsadSKrpJ73hd_12iox2_service(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCs2wk0oZsur5i_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) #23 ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !6, !nonnull !6
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b) #27, !inline_history !1726
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtCsg6ZEkMtNi4J_8iceoryx27service16ServiceListErrorEENtNtCs8Chj7Szqq0n_4core5error5Error7type_idCsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @456, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtCsi8sRyZZx6Wq_10serde_json5error5ErrorEENtNtCs8Chj7Szqq0n_4core5error5Error11descriptionCsadSKrpJ73hd_12iox2_service(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @449, i64 40 }
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { ptr, ptr } @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtCsi8sRyZZx6Wq_10serde_json5error5ErrorEENtNtCs8Chj7Szqq0n_4core5error5Error5causeCsadSKrpJ73hd_12iox2_service(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCs2wk0oZsur5i_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) #23 ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !6, !nonnull !6
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b) #27, !inline_history !1727
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtCsi8sRyZZx6Wq_10serde_json5error5ErrorEENtNtCs8Chj7Szqq0n_4core5error5Error7type_idCsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @457, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplINtNtB7_7wrapper12MessageErrorNtNtCsbqH9stoieM8_5alloc6string6StringEENtNtCs8Chj7Szqq0n_4core5error5Error11descriptionCsadSKrpJ73hd_12iox2_service(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @449, i64 40 }
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { ptr, ptr } @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplINtNtB7_7wrapper12MessageErrorNtNtCsbqH9stoieM8_5alloc6string6StringEENtNtCs8Chj7Szqq0n_4core5error5Error5causeCsadSKrpJ73hd_12iox2_service(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCs2wk0oZsur5i_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) #23 ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !6, !nonnull !6
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b) #27, !inline_history !1728
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplINtNtB7_7wrapper12MessageErrorNtNtCsbqH9stoieM8_5alloc6string6StringEENtNtCs8Chj7Szqq0n_4core5error5Error7type_idCsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @458, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplINtNtB7_7wrapper12MessageErrorReEENtNtCs8Chj7Szqq0n_4core5error5Error11descriptionCsadSKrpJ73hd_12iox2_service(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @449, i64 40 }
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { ptr, ptr } @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplINtNtB7_7wrapper12MessageErrorReEENtNtCs8Chj7Szqq0n_4core5error5Error5causeCsadSKrpJ73hd_12iox2_service(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCs2wk0oZsur5i_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) #23 ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !6, !nonnull !6
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b) #27, !inline_history !1729
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplINtNtB7_7wrapper12MessageErrorReEENtNtCs8Chj7Szqq0n_4core5error5Error7type_idCsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @459, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container15semantic_string19SemanticStringErrorENtNtCs8Chj7Szqq0n_4core5error5Error11descriptionCsadSKrpJ73hd_12iox2_service(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @449, i64 40 }
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { ptr, ptr } @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container15semantic_string19SemanticStringErrorENtNtCs8Chj7Szqq0n_4core5error5Error5causeCsadSKrpJ73hd_12iox2_service(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCs2wk0oZsur5i_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) #23 ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !6, !nonnull !6
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b) #27, !inline_history !1730
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container15semantic_string19SemanticStringErrorENtNtCs8Chj7Szqq0n_4core5error5Error7type_idCsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @460, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string23StringModificationErrorENtNtCs8Chj7Szqq0n_4core5error5Error11descriptionCsadSKrpJ73hd_12iox2_service(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @449, i64 40 }
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { ptr, ptr } @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string23StringModificationErrorENtNtCs8Chj7Szqq0n_4core5error5Error5causeCsadSKrpJ73hd_12iox2_service(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCs2wk0oZsur5i_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) #23 ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !6, !nonnull !6
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b) #27, !inline_history !1731
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string23StringModificationErrorENtNtCs8Chj7Szqq0n_4core5error5Error7type_idCsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @461, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplNtNtCs7gufeB8TUC6_12iceoryx2_cal5event17ListenerWaitErrorENtNtCs8Chj7Szqq0n_4core5error5Error11descriptionCsadSKrpJ73hd_12iox2_service(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @449, i64 40 }
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { ptr, ptr } @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplNtNtCs7gufeB8TUC6_12iceoryx2_cal5event17ListenerWaitErrorENtNtCs8Chj7Szqq0n_4core5error5Error5causeCsadSKrpJ73hd_12iox2_service(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCs2wk0oZsur5i_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) #23 ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !6, !nonnull !6
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b) #27, !inline_history !1732
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplNtNtCs7gufeB8TUC6_12iceoryx2_cal5event17ListenerWaitErrorENtNtCs8Chj7Szqq0n_4core5error5Error7type_idCsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @462, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplNtNtCsfM7cexitAsH_35iceoryx2_userland_record_and_replay14hex_conversion25HexToBytesConversionErrorENtNtCs8Chj7Szqq0n_4core5error5Error11descriptionCsadSKrpJ73hd_12iox2_service(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @449, i64 40 }
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { ptr, ptr } @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplNtNtCsfM7cexitAsH_35iceoryx2_userland_record_and_replay14hex_conversion25HexToBytesConversionErrorENtNtCs8Chj7Szqq0n_4core5error5Error5causeCsadSKrpJ73hd_12iox2_service(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCs2wk0oZsur5i_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) #23 ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !6, !nonnull !6
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b) #27, !inline_history !1733
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplNtNtCsfM7cexitAsH_35iceoryx2_userland_record_and_replay14hex_conversion25HexToBytesConversionErrorENtNtCs8Chj7Szqq0n_4core5error5Error7type_idCsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @463, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplNtNtCsfM7cexitAsH_35iceoryx2_userland_record_and_replay8recorder18RecorderWriteErrorENtNtCs8Chj7Szqq0n_4core5error5Error11descriptionCsadSKrpJ73hd_12iox2_service(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @449, i64 40 }
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { ptr, ptr } @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplNtNtCsfM7cexitAsH_35iceoryx2_userland_record_and_replay8recorder18RecorderWriteErrorENtNtCs8Chj7Szqq0n_4core5error5Error5causeCsadSKrpJ73hd_12iox2_service(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCs2wk0oZsur5i_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) #23 ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !6, !nonnull !6
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b) #27, !inline_history !1734
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplNtNtCsfM7cexitAsH_35iceoryx2_userland_record_and_replay8recorder18RecorderWriteErrorENtNtCs8Chj7Szqq0n_4core5error5Error7type_idCsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @464, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplNtNtCsfM7cexitAsH_35iceoryx2_userland_record_and_replay8recorder19RecorderCreateErrorENtNtCs8Chj7Szqq0n_4core5error5Error11descriptionCsadSKrpJ73hd_12iox2_service(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @449, i64 40 }
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { ptr, ptr } @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplNtNtCsfM7cexitAsH_35iceoryx2_userland_record_and_replay8recorder19RecorderCreateErrorENtNtCs8Chj7Szqq0n_4core5error5Error5causeCsadSKrpJ73hd_12iox2_service(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCs2wk0oZsur5i_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) #23 ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !6, !nonnull !6
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b) #27, !inline_history !1735
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplNtNtCsfM7cexitAsH_35iceoryx2_userland_record_and_replay8recorder19RecorderCreateErrorENtNtCs8Chj7Szqq0n_4core5error5Error7type_idCsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @465, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplNtNtCsfM7cexitAsH_35iceoryx2_userland_record_and_replay8replayer17ReplayerOpenErrorENtNtCs8Chj7Szqq0n_4core5error5Error11descriptionCsadSKrpJ73hd_12iox2_service(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @449, i64 40 }
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { ptr, ptr } @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplNtNtCsfM7cexitAsH_35iceoryx2_userland_record_and_replay8replayer17ReplayerOpenErrorENtNtCs8Chj7Szqq0n_4core5error5Error5causeCsadSKrpJ73hd_12iox2_service(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCs2wk0oZsur5i_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) #23 ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !6, !nonnull !6
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b) #27, !inline_history !1736
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplNtNtCsfM7cexitAsH_35iceoryx2_userland_record_and_replay8replayer17ReplayerOpenErrorENtNtCs8Chj7Szqq0n_4core5error5Error7type_idCsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @466, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplNtNtCsg6ZEkMtNi4J_8iceoryx24node19NodeCreationFailureENtNtCs8Chj7Szqq0n_4core5error5Error11descriptionCsadSKrpJ73hd_12iox2_service(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @449, i64 40 }
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { ptr, ptr } @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplNtNtCsg6ZEkMtNi4J_8iceoryx24node19NodeCreationFailureENtNtCs8Chj7Szqq0n_4core5error5Error5causeCsadSKrpJ73hd_12iox2_service(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCs2wk0oZsur5i_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) #23 ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !6, !nonnull !6
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b) #27, !inline_history !1737
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplNtNtCsg6ZEkMtNi4J_8iceoryx24node19NodeCreationFailureENtNtCs8Chj7Szqq0n_4core5error5Error7type_idCsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @467, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplNtNtCsg6ZEkMtNi4J_8iceoryx24port12ReceiveErrorENtNtCs8Chj7Szqq0n_4core5error5Error11descriptionCsadSKrpJ73hd_12iox2_service(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @449, i64 40 }
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { ptr, ptr } @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplNtNtCsg6ZEkMtNi4J_8iceoryx24port12ReceiveErrorENtNtCs8Chj7Szqq0n_4core5error5Error5causeCsadSKrpJ73hd_12iox2_service(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCs2wk0oZsur5i_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) #23 ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !6, !nonnull !6
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b) #27, !inline_history !1738
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplNtNtCsg6ZEkMtNi4J_8iceoryx24port12ReceiveErrorENtNtCs8Chj7Szqq0n_4core5error5Error7type_idCsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @468, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplNtNtCsg6ZEkMtNi4J_8iceoryx24port9LoanErrorENtNtCs8Chj7Szqq0n_4core5error5Error11descriptionCsadSKrpJ73hd_12iox2_service(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @449, i64 40 }
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { ptr, ptr } @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplNtNtCsg6ZEkMtNi4J_8iceoryx24port9LoanErrorENtNtCs8Chj7Szqq0n_4core5error5Error5causeCsadSKrpJ73hd_12iox2_service(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCs2wk0oZsur5i_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) #23 ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !6, !nonnull !6
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b) #27, !inline_history !1739
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplNtNtCsg6ZEkMtNi4J_8iceoryx24port9LoanErrorENtNtCs8Chj7Szqq0n_4core5error5Error7type_idCsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @469, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplNtNtCsg6ZEkMtNi4J_8iceoryx24port9SendErrorENtNtCs8Chj7Szqq0n_4core5error5Error11descriptionCsadSKrpJ73hd_12iox2_service(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @449, i64 40 }
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { ptr, ptr } @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplNtNtCsg6ZEkMtNi4J_8iceoryx24port9SendErrorENtNtCs8Chj7Szqq0n_4core5error5Error5causeCsadSKrpJ73hd_12iox2_service(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCs2wk0oZsur5i_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) #23 ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !6, !nonnull !6
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b) #27, !inline_history !1740
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplNtNtCsg6ZEkMtNi4J_8iceoryx24port9SendErrorENtNtCs8Chj7Szqq0n_4core5error5Error7type_idCsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @470, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplNtNtCsg6ZEkMtNi4J_8iceoryx27service16ServiceListErrorENtNtCs8Chj7Szqq0n_4core5error5Error11descriptionCsadSKrpJ73hd_12iox2_service(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @449, i64 40 }
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { ptr, ptr } @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplNtNtCsg6ZEkMtNi4J_8iceoryx27service16ServiceListErrorENtNtCs8Chj7Szqq0n_4core5error5Error5causeCsadSKrpJ73hd_12iox2_service(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCs2wk0oZsur5i_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) #23 ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !6, !nonnull !6
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b) #27, !inline_history !1741
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplNtNtCsg6ZEkMtNi4J_8iceoryx27service16ServiceListErrorENtNtCs8Chj7Szqq0n_4core5error5Error7type_idCsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @471, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplNtNtCsg6ZEkMtNi4J_8iceoryx27service19ServiceDetailsErrorENtNtCs8Chj7Szqq0n_4core5error5Error11descriptionCsadSKrpJ73hd_12iox2_service(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @449, i64 40 }
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { ptr, ptr } @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplNtNtCsg6ZEkMtNi4J_8iceoryx27service19ServiceDetailsErrorENtNtCs8Chj7Szqq0n_4core5error5Error5causeCsadSKrpJ73hd_12iox2_service(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCs2wk0oZsur5i_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) #23 ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !6, !nonnull !6
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b) #27, !inline_history !1742
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplNtNtCsg6ZEkMtNi4J_8iceoryx27service19ServiceDetailsErrorENtNtCs8Chj7Szqq0n_4core5error5Error7type_idCsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @472, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplNtNtCsg6ZEkMtNi4J_8iceoryx27waitset18WaitSetCreateErrorENtNtCs8Chj7Szqq0n_4core5error5Error11descriptionCsadSKrpJ73hd_12iox2_service(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @449, i64 40 }
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { ptr, ptr } @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplNtNtCsg6ZEkMtNi4J_8iceoryx27waitset18WaitSetCreateErrorENtNtCs8Chj7Szqq0n_4core5error5Error5causeCsadSKrpJ73hd_12iox2_service(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCs2wk0oZsur5i_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) #23 ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !6, !nonnull !6
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b) #27, !inline_history !1743
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplNtNtCsg6ZEkMtNi4J_8iceoryx27waitset18WaitSetCreateErrorENtNtCs8Chj7Szqq0n_4core5error5Error7type_idCsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @473, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplNtNtNtCs8Chj7Szqq0n_4core2io5error5ErrorENtNtBO_5error5Error11descriptionCsadSKrpJ73hd_12iox2_service(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @449, i64 40 }
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { ptr, ptr } @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplNtNtNtCs8Chj7Szqq0n_4core2io5error5ErrorENtNtBO_5error5Error5causeCsadSKrpJ73hd_12iox2_service(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCs2wk0oZsur5i_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) #23 ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !6, !nonnull !6
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b) #27, !inline_history !1744
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplNtNtNtCs8Chj7Szqq0n_4core2io5error5ErrorENtNtBO_5error5Error7type_idCsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @474, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplNtNtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriber21SubscriberCreateErrorENtNtCs8Chj7Szqq0n_4core5error5Error11descriptionCsadSKrpJ73hd_12iox2_service(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @449, i64 40 }
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { ptr, ptr } @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplNtNtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriber21SubscriberCreateErrorENtNtCs8Chj7Szqq0n_4core5error5Error5causeCsadSKrpJ73hd_12iox2_service(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCs2wk0oZsur5i_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) #23 ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !6, !nonnull !6
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b) #27, !inline_history !1745
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplNtNtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriber21SubscriberCreateErrorENtNtCs8Chj7Szqq0n_4core5error5Error7type_idCsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @475, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplNtNtNtCsg6ZEkMtNi4J_8iceoryx24port8listener19ListenerCreateErrorENtNtCs8Chj7Szqq0n_4core5error5Error11descriptionCsadSKrpJ73hd_12iox2_service(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @449, i64 40 }
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { ptr, ptr } @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplNtNtNtCsg6ZEkMtNi4J_8iceoryx24port8listener19ListenerCreateErrorENtNtCs8Chj7Szqq0n_4core5error5Error5causeCsadSKrpJ73hd_12iox2_service(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCs2wk0oZsur5i_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) #23 ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !6, !nonnull !6
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b) #27, !inline_history !1746
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplNtNtNtCsg6ZEkMtNi4J_8iceoryx24port8listener19ListenerCreateErrorENtNtCs8Chj7Szqq0n_4core5error5Error7type_idCsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @476, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplNtNtNtCsg6ZEkMtNi4J_8iceoryx24port8notifier19NotifierCreateErrorENtNtCs8Chj7Szqq0n_4core5error5Error11descriptionCsadSKrpJ73hd_12iox2_service(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @449, i64 40 }
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { ptr, ptr } @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplNtNtNtCsg6ZEkMtNi4J_8iceoryx24port8notifier19NotifierCreateErrorENtNtCs8Chj7Szqq0n_4core5error5Error5causeCsadSKrpJ73hd_12iox2_service(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCs2wk0oZsur5i_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) #23 ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !6, !nonnull !6
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b) #27, !inline_history !1747
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplNtNtNtCsg6ZEkMtNi4J_8iceoryx24port8notifier19NotifierCreateErrorENtNtCs8Chj7Szqq0n_4core5error5Error7type_idCsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @477, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplNtNtNtCsg6ZEkMtNi4J_8iceoryx24port8notifier19NotifierNotifyErrorENtNtCs8Chj7Szqq0n_4core5error5Error11descriptionCsadSKrpJ73hd_12iox2_service(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @449, i64 40 }
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { ptr, ptr } @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplNtNtNtCsg6ZEkMtNi4J_8iceoryx24port8notifier19NotifierNotifyErrorENtNtCs8Chj7Szqq0n_4core5error5Error5causeCsadSKrpJ73hd_12iox2_service(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCs2wk0oZsur5i_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) #23 ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !6, !nonnull !6
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b) #27, !inline_history !1748
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplNtNtNtCsg6ZEkMtNi4J_8iceoryx24port8notifier19NotifierNotifyErrorENtNtCs8Chj7Szqq0n_4core5error5Error7type_idCsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @478, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplNtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherCreateErrorENtNtCs8Chj7Szqq0n_4core5error5Error11descriptionCsadSKrpJ73hd_12iox2_service(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @449, i64 40 }
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { ptr, ptr } @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplNtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherCreateErrorENtNtCs8Chj7Szqq0n_4core5error5Error5causeCsadSKrpJ73hd_12iox2_service(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCs2wk0oZsur5i_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) #23 ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !6, !nonnull !6
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b) #27, !inline_history !1749
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplNtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherCreateErrorENtNtCs8Chj7Szqq0n_4core5error5Error7type_idCsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @479, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12service_name16ServiceNameErrorENtNtCs8Chj7Szqq0n_4core5error5Error11descriptionCsadSKrpJ73hd_12iox2_service(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @449, i64 40 }
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { ptr, ptr } @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12service_name16ServiceNameErrorENtNtCs8Chj7Szqq0n_4core5error5Error5causeCsadSKrpJ73hd_12iox2_service(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCs2wk0oZsur5i_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) #23 ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !6, !nonnull !6
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b) #27, !inline_history !1750
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12service_name16ServiceNameErrorENtNtCs8Chj7Szqq0n_4core5error5Error7type_idCsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @480, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder17publish_subscribe33PublishSubscribeOpenOrCreateErrorENtNtCs8Chj7Szqq0n_4core5error5Error11descriptionCsadSKrpJ73hd_12iox2_service(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @449, i64 40 }
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { ptr, ptr } @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder17publish_subscribe33PublishSubscribeOpenOrCreateErrorENtNtCs8Chj7Szqq0n_4core5error5Error5causeCsadSKrpJ73hd_12iox2_service(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCs2wk0oZsur5i_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) #23 ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !6, !nonnull !6
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b) #27, !inline_history !1751
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder17publish_subscribe33PublishSubscribeOpenOrCreateErrorENtNtCs8Chj7Szqq0n_4core5error5Error7type_idCsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @481, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder5event22EventOpenOrCreateErrorENtNtCs8Chj7Szqq0n_4core5error5Error11descriptionCsadSKrpJ73hd_12iox2_service(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @449, i64 40 }
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { ptr, ptr } @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder5event22EventOpenOrCreateErrorENtNtCs8Chj7Szqq0n_4core5error5Error5causeCsadSKrpJ73hd_12iox2_service(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCs2wk0oZsur5i_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) #23 ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !6, !nonnull !6
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b) #27, !inline_history !1752
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCs2wk0oZsur5i_6anyhow5error9ErrorImplNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder5event22EventOpenOrCreateErrorENtNtCs8Chj7Szqq0n_4core5error5Error7type_idCsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @482, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYINtNtCs2wk0oZsur5i_6anyhow7context6QuotedQNtNtCs8Chj7Szqq0n_4core3fmt9FormatterENtBK_5Write10write_charCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef align 8 dereferenceable(8) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 0, ptr %i.a, align 4
  %i.b = icmp samesign ult i32 %1, 128
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ult i32 %1, 2048
  %i.d = trunc i32 %1 to i8
  %i.e = and i8 %i.d, 63
  %i.f = or disjoint i8 %i.e, -128                ; 3 uses
  %i.g = lshr i32 %1, 6
  %i.h = trunc i32 %i.g to i8                     ; 2 uses
  %i.i = and i8 %i.h, 63
  %i.j = or disjoint i8 %i.i, -128                ; 2 uses
  %i.k = lshr i32 %1, 12
  %i.l = trunc i32 %i.k to i8                     ; 2 uses
  %i.m = and i8 %i.l, 63
  %i.n = or disjoint i8 %i.m, -128
  %i.o = lshr i32 %1, 18
  %i.p = trunc nuw nsw i32 %i.o to i8
  %i.q = or disjoint i8 %i.p, -16
  br i1 %i.c, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.r = trunc nuw nsw i32 %1 to i8
  store i8 %i.r, ptr %i.a, align 4, !alias.scope !1755
  br label %_RNvNtNtCs8Chj7Szqq0n_4core4char7methods15encode_utf8_raw.exit

bb.d:                                             ; preds = %bb.b
  %i.s = or disjoint i8 %i.h, -64
  store i8 %i.s, ptr %i.a, align 4, !alias.scope !1755
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.f, ptr %i.t, align 1, !alias.scope !1755
  br label %_RNvNtNtCs8Chj7Szqq0n_4core4char7methods15encode_utf8_raw.exit

bb.e:                                             ; preds = %bb.b
  %i.u = icmp samesign ult i32 %1, 65536
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = or disjoint i8 %i.l, -32
  store i8 %i.v, ptr %i.a, align 4, !alias.scope !1755
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.j, ptr %i.w, align 1, !alias.scope !1755
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.f, ptr %i.x, align 2, !alias.scope !1755
  br label %_RNvNtNtCs8Chj7Szqq0n_4core4char7methods15encode_utf8_raw.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.q, ptr %i.a, align 4, !alias.scope !1755
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.n, ptr %i.y, align 1, !alias.scope !1755
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.j, ptr %i.z, align 2, !alias.scope !1755
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.f, ptr %i.aa, align 1, !alias.scope !1755
  br label %_RNvNtNtCs8Chj7Szqq0n_4core4char7methods15encode_utf8_raw.exit

_RNvNtNtCs8Chj7Szqq0n_4core4char7methods15encode_utf8_raw.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.05.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.ab = call noundef zeroext i1 @_RNvXs5_NtCs2wk0oZsur5i_6anyhow7contextINtB5_6QuotedQNtNtCs8Chj7Szqq0n_4core3fmt9FormatterENtBQ_5Write9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %.sroa.0.05.i) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.ab
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYINtNtCs2wk0oZsur5i_6anyhow7context6QuotedQNtNtCs8Chj7Szqq0n_4core3fmt9FormatterENtBK_5Write9write_fmtCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef align 8 dereferenceable(8) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 {
_RNvXs_NvNtNtCs8Chj7Szqq0n_4core3fmt5Write9write_fmtQINtNtCs2wk0oZsur5i_6anyhow7context6QuotedQNtB8_9FormatterENtB4_12SpecWriteFmt14spec_write_fmtCsadSKrpJ73hd_12iox2_service.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCs8Chj7Szqq0n_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @278, ptr noundef nonnull %1, ptr noundef nonnull %2) #23, !inline_history !1756
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCs2wk0oZsur5i_6anyhow7wrapper12MessageErrorNtNtCsbqH9stoieM8_5alloc6string6StringENtNtCs8Chj7Szqq0n_4core5error5Error11descriptionCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @449, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYINtNtCs2wk0oZsur5i_6anyhow7wrapper12MessageErrorNtNtCsbqH9stoieM8_5alloc6string6StringENtNtCs8Chj7Szqq0n_4core5error5Error6sourceCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCs2wk0oZsur5i_6anyhow7wrapper12MessageErrorNtNtCsbqH9stoieM8_5alloc6string6StringENtNtCs8Chj7Szqq0n_4core5error5Error7provideCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCs2wk0oZsur5i_6anyhow7wrapper12MessageErrorNtNtCsbqH9stoieM8_5alloc6string6StringENtNtCs8Chj7Szqq0n_4core5error5Error7type_idCsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @483, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCs2wk0oZsur5i_6anyhow7wrapper12MessageErrorReENtNtCs8Chj7Szqq0n_4core5error5Error11descriptionCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @449, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYINtNtCs2wk0oZsur5i_6anyhow7wrapper12MessageErrorReENtNtCs8Chj7Szqq0n_4core5error5Error6sourceCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCs2wk0oZsur5i_6anyhow7wrapper12MessageErrorReENtNtCs8Chj7Szqq0n_4core5error5Error7provideCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCs2wk0oZsur5i_6anyhow7wrapper12MessageErrorReENtNtCs8Chj7Szqq0n_4core5error5Error7type_idCsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @484, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYINtNvNtNtCs8Chj7Szqq0n_4core2io5write17default_write_fmt7AdapterINtNtCsbqH9stoieM8_5alloc3vec3VechEENtNtBb_3fmt5Write10write_charCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 0, ptr %i.a, align 4
  %i.b = icmp samesign ult i32 %1, 128
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ult i32 %1, 2048
  %i.d = trunc i32 %1 to i8
  %i.e = and i8 %i.d, 63
  %i.f = or disjoint i8 %i.e, -128                ; 3 uses
  %i.g = lshr i32 %1, 6
  %i.h = trunc i32 %i.g to i8                     ; 2 uses
  %i.i = and i8 %i.h, 63
  %i.j = or disjoint i8 %i.i, -128                ; 2 uses
  %i.k = lshr i32 %1, 12
  %i.l = trunc i32 %i.k to i8                     ; 2 uses
  %i.m = and i8 %i.l, 63
  %i.n = or disjoint i8 %i.m, -128
  %i.o = lshr i32 %1, 18
  %i.p = trunc nuw nsw i32 %i.o to i8
  %i.q = or disjoint i8 %i.p, -16
  br i1 %i.c, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.r = trunc nuw nsw i32 %1 to i8
  store i8 %i.r, ptr %i.a, align 4, !alias.scope !1762
  br label %_RNvNtNtCs8Chj7Szqq0n_4core4char7methods15encode_utf8_raw.exit

bb.d:                                             ; preds = %bb.b
  %i.s = or disjoint i8 %i.h, -64
  store i8 %i.s, ptr %i.a, align 4, !alias.scope !1762
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.f, ptr %i.t, align 1, !alias.scope !1762
  br label %_RNvNtNtCs8Chj7Szqq0n_4core4char7methods15encode_utf8_raw.exit

bb.e:                                             ; preds = %bb.b
  %i.u = icmp samesign ult i32 %1, 65536
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = or disjoint i8 %i.l, -32
  store i8 %i.v, ptr %i.a, align 4, !alias.scope !1762
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.j, ptr %i.w, align 1, !alias.scope !1762
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.f, ptr %i.x, align 2, !alias.scope !1762
  br label %_RNvNtNtCs8Chj7Szqq0n_4core4char7methods15encode_utf8_raw.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.q, ptr %i.a, align 4, !alias.scope !1762
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.n, ptr %i.y, align 1, !alias.scope !1762
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.j, ptr %i.z, align 2, !alias.scope !1762
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.f, ptr %i.aa, align 1, !alias.scope !1762
  br label %_RNvNtNtCs8Chj7Szqq0n_4core4char7methods15encode_utf8_raw.exit

_RNvNtNtCs8Chj7Szqq0n_4core4char7methods15encode_utf8_raw.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.05.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1763)
  %i.ab = load ptr, ptr %0, align 8, !alias.scope !1763, !noalias !1764, !nonnull !6, !align !12, !noundef !6
  call void @_RNvMs1_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechE17extend_from_sliceCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef range(i64 0, -9223372036854775808) %.sroa.0.05.i) #23, !noalias !1763
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 false
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYINtNvNtNtCs8Chj7Szqq0n_4core2io5write17default_write_fmt7AdapterINtNtCsbqH9stoieM8_5alloc3vec3VechEENtNtBb_3fmt5Write9write_fmtCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvXs_NvNtNtCs8Chj7Szqq0n_4core3fmt5Write9write_fmtQINtNvNtNtBa_2io5write17default_write_fmt7AdapterINtNtCsbqH9stoieM8_5alloc3vec3VechEENtB4_12SpecWriteFmt14spec_write_fmtCsadSKrpJ73hd_12iox2_service.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCs8Chj7Szqq0n_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @171, ptr noundef nonnull %1, ptr noundef nonnull %2) #23, !inline_history !1765
  ret i1 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYINtNvNtNtCs8Chj7Szqq0n_4core2io5write17default_write_fmt7AdapterNtNtNtCsigunbJSLHCW_3std2io5stdio10StderrLockENtNtBb_3fmt5Write10write_charCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 0, ptr %i.b, align 4
  %i.c = icmp samesign ult i32 %1, 128
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp samesign ult i32 %1, 2048
  %i.e = trunc i32 %1 to i8
  %i.f = and i8 %i.e, 63
  %i.g = or disjoint i8 %i.f, -128                ; 3 uses
  %i.h = lshr i32 %1, 6
  %i.i = trunc i32 %i.h to i8                     ; 2 uses
  %i.j = and i8 %i.i, 63
  %i.k = or disjoint i8 %i.j, -128                ; 2 uses
  %i.l = lshr i32 %1, 12
  %i.m = trunc i32 %i.l to i8                     ; 2 uses
  %i.n = and i8 %i.m, 63
  %i.o = or disjoint i8 %i.n, -128
  %i.p = lshr i32 %1, 18
  %i.q = trunc nuw nsw i32 %i.p to i8
  %i.r = or disjoint i8 %i.q, -16
  br i1 %i.d, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.s = trunc nuw nsw i32 %1 to i8
  store i8 %i.s, ptr %i.b, align 4, !alias.scope !1775
  br label %_RNvNtNtCs8Chj7Szqq0n_4core4char7methods15encode_utf8_raw.exit

bb.d:                                             ; preds = %bb.b
  %i.t = or disjoint i8 %i.i, -64
  store i8 %i.t, ptr %i.b, align 4, !alias.scope !1775
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.g, ptr %i.u, align 1, !alias.scope !1775
  br label %_RNvNtNtCs8Chj7Szqq0n_4core4char7methods15encode_utf8_raw.exit

bb.e:                                             ; preds = %bb.b
  %i.v = icmp samesign ult i32 %1, 65536
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = or disjoint i8 %i.m, -32
  store i8 %i.w, ptr %i.b, align 4, !alias.scope !1775
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.k, ptr %i.x, align 1, !alias.scope !1775
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.g, ptr %i.y, align 2, !alias.scope !1775
  br label %_RNvNtNtCs8Chj7Szqq0n_4core4char7methods15encode_utf8_raw.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.r, ptr %i.b, align 4, !alias.scope !1775
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.o, ptr %i.z, align 1, !alias.scope !1775
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.k, ptr %i.aa, align 2, !alias.scope !1775
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  store i8 %i.g, ptr %i.ab, align 1, !alias.scope !1775
  br label %_RNvNtNtCs8Chj7Szqq0n_4core4char7methods15encode_utf8_raw.exit

_RNvNtNtCs8Chj7Szqq0n_4core4char7methods15encode_utf8_raw.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.05.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1776)
  %i.ac = load ptr, ptr %0, align 8, !alias.scope !1776, !noalias !1777, !nonnull !6, !align !12, !noundef !6
  %i.ad = call noundef ptr @_RNvXss_NtNtCsigunbJSLHCW_3std2io5stdioNtB5_10StderrLockNtNtNtCs8Chj7Szqq0n_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %.sroa.0.05.i) #23, !noalias !1776 ; 2 uses
  %.not.i = icmp ne ptr %i.ad, null               ; 2 uses
  br i1 %.not.i, label %bb.h, label %_RNvXNvNtNtCs8Chj7Szqq0n_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtCsigunbJSLHCW_3std2io5stdio10StderrLockENtNtB8_3fmt5Write9write_strCsadSKrpJ73hd_12iox2_service.exit

bb.h:                                             ; preds = %_RNvNtNtCs8Chj7Szqq0n_4core4char7methods15encode_utf8_raw.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val.i = load ptr, ptr %i.ae, align 8, !alias.scope !1776, !noalias !1777, !noundef !6 ; 4 uses
  %i.af = icmp eq ptr %.val.i, null
  br i1 %i.af, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsadSKrpJ73hd_12iox2_service.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1778
  %i.ag = ptrtoint ptr %.val.i to i64             ; 2 uses
  %i.ah = and i64 %i.ag, 3
  switch i64 %i.ah, label %default.unreachable [
    i64 2, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsadSKrpJ73hd_12iox2_service.exit.i.i
    i64 3, label %bb.j
    i64 0, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsadSKrpJ73hd_12iox2_service.exit.i.i
    i64 1, label %bb.k
  ], !prof !14

default.unreachable:                              ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.ai = icmp ult ptr %.val.i, inttoptr (i64 188978561024 to ptr)
  %i.aj = and i64 %i.ag, 1095216660480
  %i.ak = icmp ne i64 %i.aj, 1095216660480
  call void @llvm.assume(i1 %i.ai)
  call void @llvm.assume(i1 %i.ak)
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsadSKrpJ73hd_12iox2_service.exit.i.i

bb.k:                                             ; preds = %bb.i
  %i.al = getelementptr i8, ptr %.val.i, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.al) ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.al, ptr %i.am, align 8, !alias.scope !1779, !noalias !1778
  store i8 3, ptr %i.a, align 8, !alias.scope !1779, !noalias !1778
  call void @_RNvXsd_NtNtCs8Chj7Szqq0n_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.am) #23, !noalias !1780
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsadSKrpJ73hd_12iox2_service.exit.i.i

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsadSKrpJ73hd_12iox2_service.exit.i.i: ; preds = %bb.k, %bb.j, %bb.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1778
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsadSKrpJ73hd_12iox2_service.exit.i

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsadSKrpJ73hd_12iox2_service.exit.i: ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsadSKrpJ73hd_12iox2_service.exit.i.i, %bb.h
  store ptr %i.ad, ptr %i.ae, align 8, !alias.scope !1776, !noalias !1777
  br label %_RNvXNvNtNtCs8Chj7Szqq0n_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtCsigunbJSLHCW_3std2io5stdio10StderrLockENtNtB8_3fmt5Write9write_strCsadSKrpJ73hd_12iox2_service.exit

_RNvXNvNtNtCs8Chj7Szqq0n_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtCsigunbJSLHCW_3std2io5stdio10StderrLockENtNtB8_3fmt5Write9write_strCsadSKrpJ73hd_12iox2_service.exit: ; preds = %_RNvNtNtCs8Chj7Szqq0n_4core4char7methods15encode_utf8_raw.exit, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsadSKrpJ73hd_12iox2_service.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %.not.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYINtNvNtNtCs8Chj7Szqq0n_4core2io5write17default_write_fmt7AdapterNtNtNtCsigunbJSLHCW_3std2io5stdio10StderrLockENtNtBb_3fmt5Write9write_fmtCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvXs_NvNtNtCs8Chj7Szqq0n_4core3fmt5Write9write_fmtQINtNvNtNtBa_2io5write17default_write_fmt7AdapterNtNtNtCsigunbJSLHCW_3std2io5stdio10StderrLockENtB4_12SpecWriteFmt14spec_write_fmtCsadSKrpJ73hd_12iox2_service.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCs8Chj7Szqq0n_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @175, ptr noundef nonnull %1, ptr noundef nonnull %2) #23, !inline_history !1781
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCs1HHhRunvQSa_10serde_yaml5error5ErrorNtNtCs8Chj7Szqq0n_4core5error5Error11descriptionCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @449, i64 40 }
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { ptr, ptr } @_RNvYNtNtCs1HHhRunvQSa_10serde_yaml5error5ErrorNtNtCs8Chj7Szqq0n_4core5error5Error5causeCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvXs3_NtCs1HHhRunvQSa_10serde_yaml5errorNtB5_5ErrorNtNtCs8Chj7Szqq0n_4core5error5Error6source(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) #23
  ret { ptr, ptr } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs1HHhRunvQSa_10serde_yaml5error5ErrorNtNtCs8Chj7Szqq0n_4core5error5Error7provideCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs1HHhRunvQSa_10serde_yaml5error5ErrorNtNtCs8Chj7Szqq0n_4core5error5Error7type_idCsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @168, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container15semantic_string19SemanticStringErrorNtNtCs8Chj7Szqq0n_4core5error5Error11descriptionCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @449, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container15semantic_string19SemanticStringErrorNtNtCs8Chj7Szqq0n_4core5error5Error5causeCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container15semantic_string19SemanticStringErrorNtNtCs8Chj7Szqq0n_4core5error5Error6sourceCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container15semantic_string19SemanticStringErrorNtNtCs8Chj7Szqq0n_4core5error5Error7provideCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container15semantic_string19SemanticStringErrorNtNtCs8Chj7Szqq0n_4core5error5Error7type_idCsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @145, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string23StringModificationErrorNtNtCs8Chj7Szqq0n_4core5error5Error11descriptionCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @449, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string23StringModificationErrorNtNtCs8Chj7Szqq0n_4core5error5Error5causeCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string23StringModificationErrorNtNtCs8Chj7Szqq0n_4core5error5Error6sourceCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string23StringModificationErrorNtNtCs8Chj7Szqq0n_4core5error5Error7provideCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string23StringModificationErrorNtNtCs8Chj7Szqq0n_4core5error5Error7type_idCsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @146, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCs7gufeB8TUC6_12iceoryx2_cal5event17ListenerWaitErrorNtNtCs8Chj7Szqq0n_4core5error5Error11descriptionCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @449, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs7gufeB8TUC6_12iceoryx2_cal5event17ListenerWaitErrorNtNtCs8Chj7Szqq0n_4core5error5Error5causeCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs7gufeB8TUC6_12iceoryx2_cal5event17ListenerWaitErrorNtNtCs8Chj7Szqq0n_4core5error5Error6sourceCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs7gufeB8TUC6_12iceoryx2_cal5event17ListenerWaitErrorNtNtCs8Chj7Szqq0n_4core5error5Error7provideCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs7gufeB8TUC6_12iceoryx2_cal5event17ListenerWaitErrorNtNtCs8Chj7Szqq0n_4core5error5Error7type_idCsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @147, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCs8FOSrxU71ur_3ron5error5ErrorNtNtCs8Chj7Szqq0n_4core5error5Error11descriptionCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @449, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs8FOSrxU71ur_3ron5error5ErrorNtNtCs8Chj7Szqq0n_4core5error5Error5causeCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs8FOSrxU71ur_3ron5error5ErrorNtNtCs8Chj7Szqq0n_4core5error5Error6sourceCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs8FOSrxU71ur_3ron5error5ErrorNtNtCs8Chj7Szqq0n_4core5error5Error7provideCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs8FOSrxU71ur_3ron5error5ErrorNtNtCs8Chj7Szqq0n_4core5error5Error7type_idCsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @169, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvYNtNtCsbqH9stoieM8_5alloc6string6StringNtNtCs6gyWF5ZtrDF_11toml_writer5write9TomlWrite7newlineCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE7reserveCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1) #23, !noalias !1794, !inline_history !0
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1795, !noalias !1794, !noundef !6 ; 2 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !1795, !noalias !1794, !nonnull !6, !noundef !6
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  store i8 10, ptr %i.f, align 1
  %.pre.i.i.i.i.i = load i64, ptr %i.a, align 8, !alias.scope !1795, !noalias !1794
  %i.g = add i64 %.pre.i.i.i.i.i, 1
  store i64 %i.g, ptr %i.a, align 8, !alias.scope !1795, !noalias !1794
  ret i1 false
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvYNtNtCsbqH9stoieM8_5alloc6string6StringNtNtCs8Chj7Szqq0n_4core3fmt5Write9write_fmtCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 {
_RNvXs_NvNtNtCs8Chj7Szqq0n_4core3fmt5Write9write_fmtQNtNtCsbqH9stoieM8_5alloc6string6StringNtB4_12SpecWriteFmt14spec_write_fmtCsadSKrpJ73hd_12iox2_service.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCs8Chj7Szqq0n_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @224, ptr noundef nonnull %1, ptr noundef nonnull %2) #23, !inline_history !1796
  ret i1 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvYNtNtCsePUspIjoSTD_10serde_core6format3BufNtNtCs8Chj7Szqq0n_4core3fmt5Write10write_charCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 0, ptr %i.a, align 4
  %i.b = icmp samesign ult i32 %1, 128
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ult i32 %1, 2048
  %i.d = trunc i32 %1 to i8
  %i.e = and i8 %i.d, 63
  %i.f = or disjoint i8 %i.e, -128                ; 3 uses
  %i.g = lshr i32 %1, 6
  %i.h = trunc i32 %i.g to i8                     ; 2 uses
  %i.i = and i8 %i.h, 63
  %i.j = or disjoint i8 %i.i, -128                ; 2 uses
  %i.k = lshr i32 %1, 12
  %i.l = trunc i32 %i.k to i8                     ; 2 uses
  %i.m = and i8 %i.l, 63
  %i.n = or disjoint i8 %i.m, -128
  %i.o = lshr i32 %1, 18
  %i.p = trunc nuw nsw i32 %i.o to i8
  %i.q = or disjoint i8 %i.p, -16
  br i1 %i.c, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.r = trunc nuw nsw i32 %1 to i8
  store i8 %i.r, ptr %i.a, align 4, !alias.scope !1799
  br label %_RNvNtNtCs8Chj7Szqq0n_4core4char7methods15encode_utf8_raw.exit

bb.d:                                             ; preds = %bb.b
  %i.s = or disjoint i8 %i.h, -64
  store i8 %i.s, ptr %i.a, align 4, !alias.scope !1799
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.f, ptr %i.t, align 1, !alias.scope !1799
  br label %_RNvNtNtCs8Chj7Szqq0n_4core4char7methods15encode_utf8_raw.exit

bb.e:                                             ; preds = %bb.b
  %i.u = icmp samesign ult i32 %1, 65536
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = or disjoint i8 %i.l, -32
  store i8 %i.v, ptr %i.a, align 4, !alias.scope !1799
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.j, ptr %i.w, align 1, !alias.scope !1799
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.f, ptr %i.x, align 2, !alias.scope !1799
  br label %_RNvNtNtCs8Chj7Szqq0n_4core4char7methods15encode_utf8_raw.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.q, ptr %i.a, align 4, !alias.scope !1799
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.n, ptr %i.y, align 1, !alias.scope !1799
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.j, ptr %i.z, align 2, !alias.scope !1799
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.f, ptr %i.aa, align 1, !alias.scope !1799
  br label %_RNvNtNtCs8Chj7Szqq0n_4core4char7methods15encode_utf8_raw.exit

_RNvNtNtCs8Chj7Szqq0n_4core4char7methods15encode_utf8_raw.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.05.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.ab = call noundef zeroext i1 @_RNvXs_NtCsePUspIjoSTD_10serde_core6formatNtB4_3BufNtNtCs8Chj7Szqq0n_4core3fmt5Write9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %.sroa.0.05.i) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.ab
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvYNtNtCsePUspIjoSTD_10serde_core6format3BufNtNtCs8Chj7Szqq0n_4core3fmt5Write9write_fmtCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 {
_RNvXs_NvNtNtCs8Chj7Szqq0n_4core3fmt5Write9write_fmtQNtNtCsePUspIjoSTD_10serde_core6format3BufNtB4_12SpecWriteFmt14spec_write_fmtCsadSKrpJ73hd_12iox2_service.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCs8Chj7Szqq0n_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @231, ptr noundef nonnull %1, ptr noundef nonnull %2) #23, !inline_history !1800
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCsfM7cexitAsH_35iceoryx2_userland_record_and_replay14hex_conversion25HexToBytesConversionErrorNtNtCs8Chj7Szqq0n_4core5error5Error11descriptionCsadSKrpJ73hd_12iox2_service(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @449, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCsfM7cexitAsH_35iceoryx2_userland_record_and_replay14hex_conversion25HexToBytesConversionErrorNtNtCs8Chj7Szqq0n_4core5error5Error5causeCsadSKrpJ73hd_12iox2_service(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCsfM7cexitAsH_35iceoryx2_userland_record_and_replay14hex_conversion25HexToBytesConversionErrorNtNtCs8Chj7Szqq0n_4core5error5Error6sourceCsadSKrpJ73hd_12iox2_service(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsfM7cexitAsH_35iceoryx2_userland_record_and_replay14hex_conversion25HexToBytesConversionErrorNtNtCs8Chj7Szqq0n_4core5error5Error7provideCsadSKrpJ73hd_12iox2_service(ptr noalias nofree nonnull readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsfM7cexitAsH_35iceoryx2_userland_record_and_replay14hex_conversion25HexToBytesConversionErrorNtNtCs8Chj7Szqq0n_4core5error5Error7type_idCsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree nonnull readonly captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @148, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCsfM7cexitAsH_35iceoryx2_userland_record_and_replay8recorder18RecorderWriteErrorNtNtCs8Chj7Szqq0n_4core5error5Error11descriptionCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly align 4 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @449, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCsfM7cexitAsH_35iceoryx2_userland_record_and_replay8recorder18RecorderWriteErrorNtNtCs8Chj7Szqq0n_4core5error5Error5causeCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly align 4 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCsfM7cexitAsH_35iceoryx2_userland_record_and_replay8recorder18RecorderWriteErrorNtNtCs8Chj7Szqq0n_4core5error5Error6sourceCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly align 4 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsfM7cexitAsH_35iceoryx2_userland_record_and_replay8recorder18RecorderWriteErrorNtNtCs8Chj7Szqq0n_4core5error5Error7provideCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly align 4 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsfM7cexitAsH_35iceoryx2_userland_record_and_replay8recorder18RecorderWriteErrorNtNtCs8Chj7Szqq0n_4core5error5Error7type_idCsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 4 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @149, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCsfM7cexitAsH_35iceoryx2_userland_record_and_replay8recorder19RecorderCreateErrorNtNtCs8Chj7Szqq0n_4core5error5Error11descriptionCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @449, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCsfM7cexitAsH_35iceoryx2_userland_record_and_replay8recorder19RecorderCreateErrorNtNtCs8Chj7Szqq0n_4core5error5Error5causeCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCsfM7cexitAsH_35iceoryx2_userland_record_and_replay8recorder19RecorderCreateErrorNtNtCs8Chj7Szqq0n_4core5error5Error6sourceCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsfM7cexitAsH_35iceoryx2_userland_record_and_replay8recorder19RecorderCreateErrorNtNtCs8Chj7Szqq0n_4core5error5Error7provideCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsfM7cexitAsH_35iceoryx2_userland_record_and_replay8recorder19RecorderCreateErrorNtNtCs8Chj7Szqq0n_4core5error5Error7type_idCsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @150, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCsfM7cexitAsH_35iceoryx2_userland_record_and_replay8replayer17ReplayerOpenErrorNtNtCs8Chj7Szqq0n_4core5error5Error11descriptionCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @449, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCsfM7cexitAsH_35iceoryx2_userland_record_and_replay8replayer17ReplayerOpenErrorNtNtCs8Chj7Szqq0n_4core5error5Error5causeCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCsfM7cexitAsH_35iceoryx2_userland_record_and_replay8replayer17ReplayerOpenErrorNtNtCs8Chj7Szqq0n_4core5error5Error6sourceCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsfM7cexitAsH_35iceoryx2_userland_record_and_replay8replayer17ReplayerOpenErrorNtNtCs8Chj7Szqq0n_4core5error5Error7provideCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsfM7cexitAsH_35iceoryx2_userland_record_and_replay8replayer17ReplayerOpenErrorNtNtCs8Chj7Szqq0n_4core5error5Error7type_idCsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @151, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCsg6ZEkMtNi4J_8iceoryx24node19NodeCreationFailureNtNtCs8Chj7Szqq0n_4core5error5Error11descriptionCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @449, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCsg6ZEkMtNi4J_8iceoryx24node19NodeCreationFailureNtNtCs8Chj7Szqq0n_4core5error5Error6sourceCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsg6ZEkMtNi4J_8iceoryx24node19NodeCreationFailureNtNtCs8Chj7Szqq0n_4core5error5Error7provideCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsg6ZEkMtNi4J_8iceoryx24node19NodeCreationFailureNtNtCs8Chj7Szqq0n_4core5error5Error7type_idCsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @152, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCsg6ZEkMtNi4J_8iceoryx24port12ReceiveErrorNtNtCs8Chj7Szqq0n_4core5error5Error11descriptionCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @449, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCsg6ZEkMtNi4J_8iceoryx24port12ReceiveErrorNtNtCs8Chj7Szqq0n_4core5error5Error6sourceCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsg6ZEkMtNi4J_8iceoryx24port12ReceiveErrorNtNtCs8Chj7Szqq0n_4core5error5Error7provideCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsg6ZEkMtNi4J_8iceoryx24port12ReceiveErrorNtNtCs8Chj7Szqq0n_4core5error5Error7type_idCsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @153, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCsg6ZEkMtNi4J_8iceoryx24port9LoanErrorNtNtCs8Chj7Szqq0n_4core5error5Error11descriptionCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @449, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCsg6ZEkMtNi4J_8iceoryx24port9LoanErrorNtNtCs8Chj7Szqq0n_4core5error5Error6sourceCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsg6ZEkMtNi4J_8iceoryx24port9LoanErrorNtNtCs8Chj7Szqq0n_4core5error5Error7provideCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsg6ZEkMtNi4J_8iceoryx24port9LoanErrorNtNtCs8Chj7Szqq0n_4core5error5Error7type_idCsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @154, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCsg6ZEkMtNi4J_8iceoryx24port9SendErrorNtNtCs8Chj7Szqq0n_4core5error5Error11descriptionCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @449, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCsg6ZEkMtNi4J_8iceoryx24port9SendErrorNtNtCs8Chj7Szqq0n_4core5error5Error6sourceCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsg6ZEkMtNi4J_8iceoryx24port9SendErrorNtNtCs8Chj7Szqq0n_4core5error5Error7provideCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsg6ZEkMtNi4J_8iceoryx24port9SendErrorNtNtCs8Chj7Szqq0n_4core5error5Error7type_idCsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @155, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCsg6ZEkMtNi4J_8iceoryx27service16ServiceListErrorNtNtCs8Chj7Szqq0n_4core5error5Error11descriptionCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @449, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCsg6ZEkMtNi4J_8iceoryx27service16ServiceListErrorNtNtCs8Chj7Szqq0n_4core5error5Error6sourceCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsg6ZEkMtNi4J_8iceoryx27service16ServiceListErrorNtNtCs8Chj7Szqq0n_4core5error5Error7provideCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsg6ZEkMtNi4J_8iceoryx27service16ServiceListErrorNtNtCs8Chj7Szqq0n_4core5error5Error7type_idCsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @156, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCsg6ZEkMtNi4J_8iceoryx27service19ServiceDetailsErrorNtNtCs8Chj7Szqq0n_4core5error5Error11descriptionCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @449, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCsg6ZEkMtNi4J_8iceoryx27service19ServiceDetailsErrorNtNtCs8Chj7Szqq0n_4core5error5Error6sourceCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsg6ZEkMtNi4J_8iceoryx27service19ServiceDetailsErrorNtNtCs8Chj7Szqq0n_4core5error5Error7provideCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsg6ZEkMtNi4J_8iceoryx27service19ServiceDetailsErrorNtNtCs8Chj7Szqq0n_4core5error5Error7type_idCsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @157, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCsg6ZEkMtNi4J_8iceoryx27waitset18WaitSetCreateErrorNtNtCs8Chj7Szqq0n_4core5error5Error11descriptionCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @449, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCsg6ZEkMtNi4J_8iceoryx27waitset18WaitSetCreateErrorNtNtCs8Chj7Szqq0n_4core5error5Error6sourceCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsg6ZEkMtNi4J_8iceoryx27waitset18WaitSetCreateErrorNtNtCs8Chj7Szqq0n_4core5error5Error7provideCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsg6ZEkMtNi4J_8iceoryx27waitset18WaitSetCreateErrorNtNtCs8Chj7Szqq0n_4core5error5Error7type_idCsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @158, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCsi8sRyZZx6Wq_10serde_json5error5ErrorNtNtCs8Chj7Szqq0n_4core5error5Error11descriptionCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @449, i64 40 }
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { ptr, ptr } @_RNvYNtNtCsi8sRyZZx6Wq_10serde_json5error5ErrorNtNtCs8Chj7Szqq0n_4core5error5Error5causeCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvXs2_NtCsi8sRyZZx6Wq_10serde_json5errorNtB5_5ErrorNtNtCs8Chj7Szqq0n_4core5error5Error6source(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) #23
  ret { ptr, ptr } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsi8sRyZZx6Wq_10serde_json5error5ErrorNtNtCs8Chj7Szqq0n_4core5error5Error7provideCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsi8sRyZZx6Wq_10serde_json5error5ErrorNtNtCs8Chj7Szqq0n_4core5error5Error7type_idCsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @170, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCs8Chj7Szqq0n_4core2io5error5ErrorNtNtB8_5error5Error11descriptionCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @449, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCs8Chj7Szqq0n_4core2io5error5ErrorNtNtB8_5error5Error7provideCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCs8Chj7Szqq0n_4core2io5error5ErrorNtNtB8_5error5Error7type_idCsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @159, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriber21SubscriberCreateErrorNtNtCs8Chj7Szqq0n_4core5error5Error11descriptionCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @449, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriber21SubscriberCreateErrorNtNtCs8Chj7Szqq0n_4core5error5Error6sourceCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriber21SubscriberCreateErrorNtNtCs8Chj7Szqq0n_4core5error5Error7provideCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriber21SubscriberCreateErrorNtNtCs8Chj7Szqq0n_4core5error5Error7type_idCsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @160, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx24port8listener19ListenerCreateErrorNtNtCs8Chj7Szqq0n_4core5error5Error11descriptionCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @449, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx24port8listener19ListenerCreateErrorNtNtCs8Chj7Szqq0n_4core5error5Error6sourceCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx24port8listener19ListenerCreateErrorNtNtCs8Chj7Szqq0n_4core5error5Error7provideCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx24port8listener19ListenerCreateErrorNtNtCs8Chj7Szqq0n_4core5error5Error7type_idCsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @161, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx24port8notifier19NotifierCreateErrorNtNtCs8Chj7Szqq0n_4core5error5Error11descriptionCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @449, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx24port8notifier19NotifierCreateErrorNtNtCs8Chj7Szqq0n_4core5error5Error6sourceCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx24port8notifier19NotifierCreateErrorNtNtCs8Chj7Szqq0n_4core5error5Error7provideCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx24port8notifier19NotifierCreateErrorNtNtCs8Chj7Szqq0n_4core5error5Error7type_idCsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @162, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx24port8notifier19NotifierNotifyErrorNtNtCs8Chj7Szqq0n_4core5error5Error11descriptionCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @449, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx24port8notifier19NotifierNotifyErrorNtNtCs8Chj7Szqq0n_4core5error5Error6sourceCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx24port8notifier19NotifierNotifyErrorNtNtCs8Chj7Szqq0n_4core5error5Error7provideCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx24port8notifier19NotifierNotifyErrorNtNtCs8Chj7Szqq0n_4core5error5Error7type_idCsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @163, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherCreateErrorNtNtCs8Chj7Szqq0n_4core5error5Error11descriptionCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @449, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherCreateErrorNtNtCs8Chj7Szqq0n_4core5error5Error6sourceCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherCreateErrorNtNtCs8Chj7Szqq0n_4core5error5Error7provideCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherCreateErrorNtNtCs8Chj7Szqq0n_4core5error5Error7type_idCsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @164, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12service_name16ServiceNameErrorNtNtCs8Chj7Szqq0n_4core5error5Error11descriptionCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @449, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12service_name16ServiceNameErrorNtNtCs8Chj7Szqq0n_4core5error5Error6sourceCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12service_name16ServiceNameErrorNtNtCs8Chj7Szqq0n_4core5error5Error7provideCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12service_name16ServiceNameErrorNtNtCs8Chj7Szqq0n_4core5error5Error7type_idCsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @165, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder17publish_subscribe33PublishSubscribeOpenOrCreateErrorNtNtCs8Chj7Szqq0n_4core5error5Error11descriptionCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @449, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder17publish_subscribe33PublishSubscribeOpenOrCreateErrorNtNtCs8Chj7Szqq0n_4core5error5Error6sourceCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder17publish_subscribe33PublishSubscribeOpenOrCreateErrorNtNtCs8Chj7Szqq0n_4core5error5Error7provideCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder17publish_subscribe33PublishSubscribeOpenOrCreateErrorNtNtCs8Chj7Szqq0n_4core5error5Error7type_idCsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @166, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder5event22EventOpenOrCreateErrorNtNtCs8Chj7Szqq0n_4core5error5Error11descriptionCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @449, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder5event22EventOpenOrCreateErrorNtNtCs8Chj7Szqq0n_4core5error5Error6sourceCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder5event22EventOpenOrCreateErrorNtNtCs8Chj7Szqq0n_4core5error5Error7provideCsadSKrpJ73hd_12iox2_service(ptr noalias nofree readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder5event22EventOpenOrCreateErrorNtNtCs8Chj7Szqq0n_4core5error5Error7type_idCsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @167, i64 16, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #9

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RNvXNtNtCsbqH9stoieM8_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringEINtB2_12SpecFromIterBU_INtNtNtNtCs8Chj7Szqq0n_4core4iter8adapters3map3MapNtNtB10_3env6ArgsOsNCNvXs_Cs8MT3VBJ3z5t_8clap_lexNtB3e_7RawArgsINtNtB29_7convert4FromB2O_E4from0EE9from_iterCsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #9

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvMs2_NtCsigunbJSLHCW_3std9backtraceNtB5_9Backtrace7capture(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48)) unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RINvMs_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringE5drainINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXNtCs2wk0oZsur5i_6anyhow7wrapperINtB2_12MessageErrorNtNtCsbqH9stoieM8_5alloc6string6StringENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs_NtCs2wk0oZsur5i_6anyhow7wrapperINtB4_12MessageErrorNtNtCsbqH9stoieM8_5alloc6string6StringENtNtCs8Chj7Szqq0n_4core3fmt7Display3fmtCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYINtNtCs2wk0oZsur5i_6anyhow7wrapper12MessageErrorNtNtCsbqH9stoieM8_5alloc6string6StringENtNtCs8Chj7Szqq0n_4core5error5Error5causeCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXNtCs2wk0oZsur5i_6anyhow7wrapperINtB2_12MessageErrorReENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs_NtCs2wk0oZsur5i_6anyhow7wrapperINtB4_12MessageErrorReENtNtCs8Chj7Szqq0n_4core3fmt7Display3fmtCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYINtNtCs2wk0oZsur5i_6anyhow7wrapper12MessageErrorReENtNtCs8Chj7Szqq0n_4core5error5Error5causeCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtCs5kzjBmDVxDj_21iceoryx2_bb_container15semantic_stringNtB4_19SemanticStringErrorNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtCs5kzjBmDVxDj_21iceoryx2_bb_container6stringNtB2_23StringModificationErrorNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs2_NtCs7gufeB8TUC6_12iceoryx2_cal5eventNtB5_17ListenerWaitErrorNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtCsfM7cexitAsH_35iceoryx2_userland_record_and_replay14hex_conversionNtB2_25HexToBytesConversionErrorNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtCsfM7cexitAsH_35iceoryx2_userland_record_and_replay8recorderNtB5_18RecorderWriteErrorNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtCsfM7cexitAsH_35iceoryx2_userland_record_and_replay8recorderNtB2_19RecorderCreateErrorNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtCsfM7cexitAsH_35iceoryx2_userland_record_and_replay8replayerNtB4_17ReplayerOpenErrorNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtCsg6ZEkMtNi4J_8iceoryx24nodeNtB4_19NodeCreationFailureNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYNtNtCsg6ZEkMtNi4J_8iceoryx24node19NodeCreationFailureNtNtCs8Chj7Szqq0n_4core5error5Error5causeCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXse_NtCsg6ZEkMtNi4J_8iceoryx24portNtB5_12ReceiveErrorNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(2), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYNtNtCsg6ZEkMtNi4J_8iceoryx24port12ReceiveErrorNtNtCs8Chj7Szqq0n_4core5error5Error5causeCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(2)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs7_NtCsg6ZEkMtNi4J_8iceoryx24portNtB5_9LoanErrorNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYNtNtCsg6ZEkMtNi4J_8iceoryx24port9LoanErrorNtNtCs8Chj7Szqq0n_4core5error5Error5causeCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsb_NtCsg6ZEkMtNi4J_8iceoryx24portNtB5_9SendErrorNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(2), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYNtNtCsg6ZEkMtNi4J_8iceoryx24port9SendErrorNtNtCs8Chj7Szqq0n_4core5error5Error5causeCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(2)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtCsg6ZEkMtNi4J_8iceoryx27serviceNtB5_16ServiceListErrorNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYNtNtCsg6ZEkMtNi4J_8iceoryx27service16ServiceListErrorNtNtCs8Chj7Szqq0n_4core5error5Error5causeCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtCsg6ZEkMtNi4J_8iceoryx27serviceNtB2_19ServiceDetailsErrorNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYNtNtCsg6ZEkMtNi4J_8iceoryx27service19ServiceDetailsErrorNtNtCs8Chj7Szqq0n_4core5error5Error5causeCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs2_NtCsg6ZEkMtNi4J_8iceoryx27waitsetNtB5_18WaitSetCreateErrorNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYNtNtCsg6ZEkMtNi4J_8iceoryx27waitset18WaitSetCreateErrorNtNtCs8Chj7Szqq0n_4core5error5Error5causeCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtCs8Chj7Szqq0n_4core2io5errorNtB2_5ErrorNtNtB6_3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtNtCs8Chj7Szqq0n_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare { ptr, ptr } @_RNvXs4_NtNtCs8Chj7Szqq0n_4core2io5errorNtB5_5ErrorNtNtB9_5error5Error6source(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare { ptr, ptr } @_RNvXs4_NtNtCs8Chj7Szqq0n_4core2io5errorNtB5_5ErrorNtNtB9_5error5Error5cause(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriberNtB2_21SubscriberCreateErrorNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriber21SubscriberCreateErrorNtNtCs8Chj7Szqq0n_4core5error5Error5causeCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtCsg6ZEkMtNi4J_8iceoryx24port8listenerNtB2_19ListenerCreateErrorNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx24port8listener19ListenerCreateErrorNtNtCs8Chj7Szqq0n_4core5error5Error5causeCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtCsg6ZEkMtNi4J_8iceoryx24port8notifierNtB2_19NotifierCreateErrorNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx24port8notifier19NotifierCreateErrorNtNtCs8Chj7Szqq0n_4core5error5Error5causeCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtNtCsg6ZEkMtNi4J_8iceoryx24port8notifierNtB5_19NotifierNotifyErrorNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx24port8notifier19NotifierNotifyErrorNtNtCs8Chj7Szqq0n_4core5error5Error5causeCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherNtB2_20PublisherCreateErrorNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherCreateErrorNtNtCs8Chj7Szqq0n_4core5error5Error5causeCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtCsg6ZEkMtNi4J_8iceoryx27service12service_nameNtB2_16ServiceNameErrorNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12service_name16ServiceNameErrorNtNtCs8Chj7Szqq0n_4core5error5Error5causeCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs7_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder17publish_subscribeNtB5_33PublishSubscribeOpenOrCreateErrorNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(2), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder17publish_subscribe33PublishSubscribeOpenOrCreateErrorNtNtCs8Chj7Szqq0n_4core5error5Error5causeCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(2)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder5eventNtB5_22EventOpenOrCreateErrorNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(2), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder5event22EventOpenOrCreateErrorNtNtCs8Chj7Szqq0n_4core5error5Error5causeCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(2)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #12

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecINtNtCsg6ZEkMtNi4J_8iceoryx24node9NodeStateNtNtNtBK_7service3ipc7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecTIBw_hEBG_EENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

end_hunk_0
