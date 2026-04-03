begin_hunk_0
  %3 = alloca %struct.ossl_param_st, align 8      ; 4 uses
  %4 = alloca %struct.ossl_param_st, align 8      ; 4 uses
  %5 = alloca %struct.ossl_param_st, align 8      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store ptr null, ptr %i.a, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
end_hunk_0
begin_hunk_1
bb.ac:                                            ; preds = %.sink.split, %bb.ab
  %.2102 = phi ptr [ %.0100, %bb.ab ], [ %.2102.ph, %.sink.split ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  call void @OSSL_PARAM_construct_utf8_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %2, ptr noundef nonnull @.str.56, ptr noundef nonnull %.2102, i64 noundef 0) #5
  %.not129 = icmp eq ptr %.098, null
  br i1 %.not129, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  call void @OSSL_PARAM_construct_utf8_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %3, ptr noundef nonnull @.str.57, ptr noundef nonnull %.098, i64 noundef 0) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aj, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !tbaa.struct !16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
end_hunk_1
begin_hunk_2

bb.af:                                            ; preds = %bb.ae
  %i.al = getelementptr inbounds nuw i8, ptr %.072, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  call void @OSSL_PARAM_construct_utf8_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %4, ptr noundef nonnull @.str.58, ptr noundef nonnull %.096, i64 noundef 0) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.072, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !tbaa.struct !16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.1 = phi ptr [ %i.al, %bb.af ], [ %.072, %bb.ae ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  call void @OSSL_PARAM_construct_end(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %5) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.1, ptr noundef nonnull align 8 dereferenceable(40) %5, i64 40, i1 false), !tbaa.struct !16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  %i.am = call i32 @OPENSSL_strcasecmp(ptr noundef nonnull %.2102, ptr noundef nonnull @.str.59) #5
  %i.an = icmp eq i32 %i.am, 0
  %i.ao = call ptr @app_get0_libctx() #5
end_hunk_2
