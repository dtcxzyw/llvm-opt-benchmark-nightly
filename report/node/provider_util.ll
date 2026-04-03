begin_hunk_0
  %11 = alloca %struct.ossl_param_st, align 8     ; 4 uses
  %12 = alloca %struct.ossl_param_st, align 8     ; 4 uses
  %13 = alloca %struct.ossl_param_st, align 8     ; 4 uses
  %14 = alloca %struct.ossl_param_st, align 8     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #6
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.n, label %bb.b
end_hunk_0
begin_hunk_1

bb.o:                                             ; preds = %bb.n
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #6
  call void @OSSL_PARAM_construct_utf8_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %9, ptr noundef nonnull @.str.1, ptr noundef nonnull %.135, i64 noundef 0) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %8, ptr noundef nonnull align 8 dereferenceable(40) %9, i64 40, i1 false), !tbaa.struct !37
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #6
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
end_hunk_1
begin_hunk_2

bb.q:                                             ; preds = %bb.p
  %i.t = getelementptr inbounds nuw i8, ptr %.0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #6
  call void @OSSL_PARAM_construct_utf8_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %10, ptr noundef nonnull @.str, ptr noundef nonnull %.133, i64 noundef 0) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.0, ptr noundef nonnull align 8 dereferenceable(40) %10, i64 40, i1 false), !tbaa.struct !37
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #6
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
end_hunk_2
begin_hunk_3

bb.s:                                             ; preds = %bb.r
  %i.u = getelementptr inbounds nuw i8, ptr %.1, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #6
  call void @OSSL_PARAM_construct_utf8_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %11, ptr noundef nonnull @.str.3, ptr noundef nonnull %5, i64 noundef 0) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.1, ptr noundef nonnull align 8 dereferenceable(40) %11, i64 40, i1 false), !tbaa.struct !37
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #6
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
end_hunk_3
begin_hunk_4

bb.u:                                             ; preds = %bb.t
  %i.v = getelementptr inbounds nuw i8, ptr %.2, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #6
  call void @OSSL_PARAM_construct_utf8_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %12, ptr noundef nonnull @.str.2, ptr noundef nonnull %.036, i64 noundef 0) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.2, ptr noundef nonnull align 8 dereferenceable(40) %12, i64 40, i1 false), !tbaa.struct !37
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #6
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
end_hunk_4
begin_hunk_5

bb.w:                                             ; preds = %bb.v
  %i.w = getelementptr inbounds nuw i8, ptr %.3, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #6
  call void @OSSL_PARAM_construct_octet_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %13, ptr noundef nonnull @.str.4, ptr noundef nonnull %6, i64 noundef %7) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.3, ptr noundef nonnull align 8 dereferenceable(40) %13, i64 40, i1 false), !tbaa.struct !37
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #6
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.4 = phi ptr [ %i.w, %bb.w ], [ %.3, %bb.v ]
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #6
  call void @OSSL_PARAM_construct_end(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %14) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.4, ptr noundef nonnull align 8 dereferenceable(40) %14, i64 40, i1 false), !tbaa.struct !37
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #6
  %i.x = call i32 @EVP_MAC_CTX_set_params(ptr noundef %0, ptr noundef nonnull %8) #6
  br label %bb.y

end_hunk_5
