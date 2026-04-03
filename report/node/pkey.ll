begin_hunk_0
  %2 = alloca [3 x %struct.ossl_param_st], align 16 ; 7 uses
  %3 = alloca %struct.ossl_param_st, align 8      ; 4 uses
  %4 = alloca %struct.ossl_param_st, align 8      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store ptr null, ptr %i.a, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
end_hunk_0
begin_hunk_1

bb.as:                                            ; preds = %bb.ar
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @OSSL_PARAM_construct_utf8_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %2, ptr noundef nonnull @.str.60, ptr noundef nonnull %.0108, i64 noundef 0) #4
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
end_hunk_1
begin_hunk_2

bb.au:                                            ; preds = %bb.at
  %i.bo = getelementptr inbounds nuw i8, ptr %.0104, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #4
  call void @OSSL_PARAM_construct_utf8_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %3, ptr noundef nonnull @.str.61, ptr noundef nonnull %.0106, i64 noundef 0) #4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.0104, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !tbaa.struct !18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #4
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.1105 = phi ptr [ %i.bo, %bb.au ], [ %.0104, %bb.at ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #4
  call void @OSSL_PARAM_construct_end(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %4) #4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.1105, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !tbaa.struct !18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #4
  %i.bp = call i32 @EVP_PKEY_set_params(ptr noundef nonnull %.0142, ptr noundef nonnull %2) #4
  %i.bq = icmp slt i32 %i.bp, 1
  br i1 %i.bq, label %.thread, label %bb.aw
end_hunk_2
