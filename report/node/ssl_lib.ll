begin_hunk_0
  %i.al = or i32 %i.aj, %i.ak
  store i32 %i.al, ptr %i.ai, align 8, !tbaa !185
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 40
  call void @OSSL_PARAM_construct_uint32(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %5, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.ai) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @OSSL_PARAM_construct_end(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %6) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.am, ptr noundef nonnull align 8 dereferenceable(40) %6, i64 40, i1 false), !tbaa.struct !328
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.an = getelementptr inbounds nuw i8, ptr %.lcssa211, i64 3184
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !324
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 144
end_hunk_0
begin_hunk_1
  %i.m = and i64 %i.l, %i.j
  store i64 %i.m, ptr %i.k, align 8, !tbaa !181
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @OSSL_PARAM_construct_uint64(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %2, ptr noundef nonnull @.str.14, ptr noundef nonnull %i.k) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @OSSL_PARAM_construct_end(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %3) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.n, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !tbaa.struct !328
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.o = getelementptr inbounds nuw i8, ptr %.ph3033, i64 3184
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !324
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 144
end_hunk_1
