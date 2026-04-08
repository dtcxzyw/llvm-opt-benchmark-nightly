inline.NumInlined: 14
inline.NumDeleted: 6
begin_hunk_0_@load_fips_prov_and_run_self_test:bb.a
  %4 = alloca %struct.ossl_param_st, align 8      ; 4 uses
  %5 = alloca %struct.ossl_param_st, align 8      ; 4 uses
  %6 = alloca %struct.ossl_param_st, align 8      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store ptr @.str.142, ptr %i.a, align 8, !tbaa !15
end_hunk_0
begin_hunk_1_@load_fips_prov_and_run_self_test:bb.a
  br i1 %.b, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @OSSL_PARAM_construct_utf8_ptr(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %2, ptr noundef nonnull @.str.144, ptr noundef nonnull %i.a, i64 noundef 8) #6
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  call void @OSSL_PARAM_construct_utf8_ptr(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %3, ptr noundef nonnull @.str.145, ptr noundef nonnull %i.b, i64 noundef 8) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !tbaa.struct !23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 120
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @OSSL_PARAM_construct_utf8_ptr(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %4, ptr noundef nonnull @.str.146, ptr noundef nonnull %i.c, i64 noundef 8) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.i, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !tbaa.struct !23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  call void @OSSL_PARAM_construct_end(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %5) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(40) %5, i64 40, i1 false), !tbaa.struct !23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  %i.k = call i32 @OSSL_PROVIDER_get_params(ptr noundef nonnull %i.d, ptr noundef nonnull %2) #6
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.e, label %bb.f
end_hunk_1
begin_hunk_2_@load_fips_prov_and_run_self_test:bb.a
  br label %bb.n

bb.l:                                             ; preds = %bb.c
  call void @OSSL_PARAM_construct_utf8_ptr(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %2, ptr noundef nonnull @.str.145, ptr noundef nonnull %i.b, i64 noundef 8) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #6
  call void @OSSL_PARAM_construct_end(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %6) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull align 8 dereferenceable(40) %6, i64 40, i1 false), !tbaa.struct !23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  %i.z = call i32 @OSSL_PROVIDER_get_params(ptr noundef nonnull %i.d, ptr noundef nonnull %2) #6
  %.not16 = icmp eq i32 %i.z, 0
  br i1 %.not16, label %bb.m, label %bb.n
end_hunk_2
