inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0_@do_passwd:bb.a
  call void @CRYPTO_free(ptr noundef nonnull %i.dh, ptr noundef nonnull @.str.52, i32 noundef 707) #8
  call void @CRYPTO_free(ptr noundef nonnull %i.dt, ptr noundef nonnull @.str.52, i32 noundef 708) #8
  %i.eo = call i64 @strlen(ptr noundef nonnull dereferenceable(1) @shacrypt.out_buf) #9
  %i.ep = getelementptr inbounds nuw i8, ptr @shacrypt.out_buf, i64 %i.eo ; 130 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 1 ; 2 uses
  store i8 36, ptr %i.ep, align 1, !tbaa !17
  switch i8 %i.bj, label %.loopexit405.i [
end_hunk_0
begin_hunk_1_@do_passwd:bb.a
  %i.sr = zext nneg i32 %i.sq to i64
  %i.ss = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.sr
  %i.st = load i8, ptr %i.ss, align 1, !tbaa !17
  store i8 %i.st, ptr %i.sp, align 1, !tbaa !17
  br label %.loopexit.i

end_hunk_1
begin_hunk_2_@do_passwd:bb.a
  %i.avj = zext nneg i32 %i.avi to i64
  %i.avk = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.avj
  %i.avl = load i8, ptr %i.avk, align 1, !tbaa !17
  store i8 %i.avl, ptr %i.avh, align 1, !tbaa !17
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit537.i, %.loopexit.loopexit.i
  %.pn.i = phi i64 [ 44, %.loopexit.loopexit.i ], [ 87, %.loopexit.loopexit537.i ]
  %.35.i = getelementptr inbounds nuw i8, ptr %i.ep, i64 %.pn.i
  store i8 0, ptr %.35.i, align 1, !tbaa !17
  br label %shacrypt.exit

end_hunk_2
