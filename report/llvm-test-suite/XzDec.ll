begin_hunk_0
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca [32 x i8], align 16               ; 5 uses
  %i.d = alloca [64 x i8], align 16               ; 5 uses
  %i.e = alloca [32 x i8], align 16               ; 4 uses
  %i.f = load i64, ptr %2, align 8, !tbaa !30     ; 2 uses
  %i.g = load i64, ptr %4, align 8, !tbaa !30     ; 3 uses
  store i64 0, ptr %2, align 8, !tbaa !30
end_hunk_0
begin_hunk_1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 3 uses
end_hunk_1
begin_hunk_2
  store i64 %i.gi, ptr %i.m, align 8, !tbaa !75
  store i32 0, ptr %i.i, align 4, !tbaa !65
  call void @Sha256_Final(ptr noundef nonnull %i.u, ptr noundef nonnull %i.e) #11
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(32) %i.e, ptr noundef nonnull dereferenceable(32) %i.v, i64 32)
  %.not285 = icmp eq i32 %bcmp, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  br i1 %.not285, label %.backedge, label %.thread323

end_hunk_2
begin_hunk_3
  br i1 %i.hx, label %Xz_CheckFooter.exit, label %.thread323

Xz_CheckFooter.exit:                              ; preds = %bb.as
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %i.q, ptr noundef nonnull dereferenceable(2) @XZ_FOOTER_SIG, i64 2)
  %.not330 = icmp eq i32 %bcmp.i, 0
  br i1 %.not330, label %.backedge, label %.thread323

bb.at:                                            ; preds = %bb.k
end_hunk_3
