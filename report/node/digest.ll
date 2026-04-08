inline.NumInlined: 57
inline.NumDeleted: 20
begin_hunk_0_@EVP_MD_CTX_ctrl:bb.a
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %4 = alloca [2 x %struct.ossl_param_st], align 16 ; 10 uses
  %5 = alloca %struct.ossl_param_st, align 8      ; 4 uses
  %6 = alloca %struct.ossl_param_st, align 8      ; 4 uses
  %7 = alloca %struct.ossl_param_st, align 8      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %4, i8 0, i64 80, i1 false)
end_hunk_0
begin_hunk_1_@EVP_MD_CTX_ctrl:bb.a
bb.f:                                             ; preds = %bb.e
  %i.h = sext i32 %2 to i64
  store i64 %i.h, ptr %i.a, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  call void @OSSL_PARAM_construct_size_t(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %5, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.a) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %5, i64 40, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %.critedge

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  %.not26 = icmp eq i32 %2, 0
  %i.i = select i1 %.not26, i32 9999, i32 %2
  %i.j = sext i32 %i.i to i64
  call void @OSSL_PARAM_construct_utf8_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %6, ptr noundef nonnull @.str.3, ptr noundef %3, i64 noundef %i.j) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %6, i64 40, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !29   ; 4 uses
  %.not.i = icmp eq ptr %i.l, null
end_hunk_1
begin_hunk_2_@EVP_MD_CTX_ctrl:bb.a
  br label %EVP_MD_CTX_get_params.exit

bb.o:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  %i.aa = sext i32 %2 to i64
  call void @OSSL_PARAM_construct_octet_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %7, ptr noundef nonnull @.str.4, ptr noundef %3, i64 noundef %i.aa) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %7, i64 40, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  br label %.critedge

.critedge:                                        ; preds = %bb.o, %bb.f
end_hunk_2
