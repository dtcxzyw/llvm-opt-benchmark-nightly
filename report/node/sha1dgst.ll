inline.NumInlined: 6
begin_hunk_0_@ossl_sha1_ctrl:bb.a
  %i.e = load i32, ptr %i.d, align 4, !tbaa !9    ; 2 uses
  %i.f = add i32 %i.e, 384
  %i.g = icmp ugt i32 %i.e, -385
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !11
  %i.j = zext i1 %i.g to i32
  %i.k = add i32 %i.i, %i.j
end_hunk_0
begin_hunk_1_@ossl_sha1_ctrl:bb.a

SHA1_Update.exit48:                               ; preds = %bb.j, %bb.m, %.thread62
  %i.ay = call i32 @SHA1_Final(ptr noundef nonnull %i.b, ptr noundef nonnull %0) ; 0 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.az, i8 0, i64 64, i1 false)
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, ptr %0, align 4, !tbaa !5
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 -1009589776, ptr %i.ba, align 4, !tbaa !18
  store i32 0, ptr %i.h, align 4, !tbaa !11
  store i32 384, ptr %i.d, align 4, !tbaa !9
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 48, ptr %i.l, align 4, !tbaa !12
end_hunk_1
