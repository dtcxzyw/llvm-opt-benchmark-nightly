inline.NumInlined: 33
inline.NumDeleted: 14
begin_hunk_0_@connCreateAcceptedTLS:bb.a
  %i.b = load ptr, ptr @redis_tls_ctx, align 8, !tbaa !53
  %i.c = tail call noalias dereferenceable_or_null(104) ptr @zcalloc(i64 noundef 104) #19, !inline_history !78 ; 9 uses
  store ptr @CT_TLS, ptr %i.c, align 8, !tbaa !79
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i16 1024, ptr %i.f, align 8, !tbaa !82
  %i.g = tail call ptr @SSL_new(ptr noundef %i.b) #16, !inline_history !78 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store ptr %i.g, ptr %i.h, align 8, !tbaa !13
  store i32 %1, ptr %i.d, align 8, !tbaa !80
  store ptr %0, ptr %i.e, align 8, !tbaa !81
end_hunk_0
begin_hunk_1_@connCreateAcceptedTLS:bb.a
bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !84
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 88 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !85   ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %updateTLSError.exit, label %bb.c
end_hunk_1
begin_hunk_2_@connCreateAcceptedTLS:bb.a
  br label %updateTLSError.exit

updateTLSError.exit:                              ; preds = %bb.b, %bb.c
  %i.m = tail call noalias dereferenceable_or_null(512) ptr @zmalloc(i64 noundef 512) #19 ; 2 uses
  store ptr %i.m, ptr %i.k, align 8, !tbaa !85
  %i.n = tail call i64 @ERR_get_error() #16
  tail call void @ERR_error_string_n(i64 noundef %i.n, ptr noundef %i.m, i64 noundef 512) #16
  store i32 5, ptr %i.i, align 8, !tbaa !83
  br label %bb.e

end_hunk_2
begin_hunk_3_@connCreateAcceptedTLS:bb.a
  %switch.selectcmp20 = icmp eq i32 %i.a, 0
  %switch.select21 = select i1 %switch.selectcmp20, i32 0, i32 %switch.select
  tail call void @SSL_set_verify(ptr noundef nonnull %i.g, i32 noundef %switch.select21, ptr noundef null) #16
  %i.o = tail call i32 @SSL_set_fd(ptr noundef nonnull %i.g, i32 noundef %1) #16 ; 0 uses
  tail call void @SSL_set_accept_state(ptr noundef nonnull %i.g) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %updateTLSError.exit
end_hunk_3
