inline.NumInlined: 31
inline.NumDeleted: 17
begin_hunk_0_@OBJ_NAME_new_index:bb.a

.lr.ph:                                           ; preds = %.thread, %bb.e
  %.01932 = phi i32 [ %i.o, %bb.e ], [ %i.l, %.thread ]
  %i.r = tail call noalias ptr @CRYPTO_zalloc(i64 noundef 24, ptr noundef nonnull @.str, i32 noundef 90) #8 ; 5 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  store ptr @ossl_lh_strcasehash, ptr %i.r, align 8, !tbaa !17
  %3 = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @OPENSSL_strcasecmp, ptr %3, align 8, !tbaa !19
  %i.t = load ptr, ptr @name_funcs_stack, align 8, !tbaa !13
  %i.u = tail call i32 @OPENSSL_sk_push(ptr noundef %i.t, ptr noundef nonnull %i.r) #8
  %.not29 = icmp eq i32 %i.u, 0
end_hunk_0
