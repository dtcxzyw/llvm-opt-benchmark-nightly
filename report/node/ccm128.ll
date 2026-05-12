inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0_@CRYPTO_ccm128_encrypt
define dso_local range(i32 -2, 1) i32 @CRYPTO_ccm128_encrypt(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef writeonly captures(none) %2, i64 noundef %3) local_unnamed_addr #4 {
bb.a:
  %4 = alloca %union.anon.0, align 16             ; 13 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !9       ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
end_hunk_0
begin_hunk_1_@CRYPTO_ccm128_encrypt:bb.a
  %i.l = and i32 %i.f, 7                          ; 3 uses
  %i.m = trunc nuw nsw i32 %i.l to i8
  store i8 %i.m, ptr %0, align 8, !tbaa !9
  %5 = sub nuw nsw i32 15, %i.l                   ; 2 uses
  %.not110 = icmp eq i32 %i.l, 0
  br i1 %.not110, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %5 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %wide.trip.count, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.08794 = phi i64 [ 0, %.lr.ph.preheader ], [ %i.r, %.lr.ph ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !9
end_hunk_1
begin_hunk_2_@CRYPTO_ccm128_encrypt:bb.a
  store i8 0, ptr %i.n, align 1, !tbaa !9
  %i.r = shl i64 %i.q, 8                          ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %6 = and i64 %indvars.iv.next, 4294967295
  %exitcond.not = icmp eq i64 %6, 15
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !28

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
end_hunk_2
begin_hunk_3_@CRYPTO_ccm128_encrypt:bb.a
._crit_edge109:                                   ; preds = %._crit_edge109.loopexit.unr-lcssa, %bb.p, %._crit_edge100
  %i.ed = zext nneg i32 %5 to i64
  %scevgep = getelementptr i8, ptr %0, i64 %i.ed
  %7 = and i8 %i.a, 7
  %narrow = add nuw nsw i8 %7, 1
  %i.ee = zext nneg i8 %narrow to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i8 0, i64 %i.ee, i1 false), !tbaa !9
  call void %i.c(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef %i.e) #7
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
end_hunk_3
begin_hunk_4_@CRYPTO_ccm128_decrypt
define dso_local range(i32 -1, 1) i32 @CRYPTO_ccm128_decrypt(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef writeonly captures(none) %2, i64 noundef %3) local_unnamed_addr #4 {
bb.a:
  %4 = alloca %union.anon.1, align 16             ; 11 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !9       ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
end_hunk_4
begin_hunk_5_@CRYPTO_ccm128_decrypt:bb.a
  %i.i = and i32 %i.f, 7                          ; 3 uses
  %i.j = trunc nuw nsw i32 %i.i to i8
  store i8 %i.j, ptr %0, align 8, !tbaa !9
  %5 = sub nuw nsw i32 15, %i.i                   ; 2 uses
  %.not96 = icmp eq i32 %i.i, 0
  br i1 %.not96, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %5 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %wide.trip.count, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.07681 = phi i64 [ 0, %.lr.ph.preheader ], [ %i.o, %.lr.ph ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !9
end_hunk_5
begin_hunk_6_@CRYPTO_ccm128_decrypt:bb.a
  store i8 0, ptr %i.k, align 1, !tbaa !9
  %i.o = shl i64 %i.n, 8                          ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %6 = and i64 %indvars.iv.next, 4294967295
  %exitcond.not = icmp eq i64 %6, 15
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !36

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
end_hunk_6
begin_hunk_7_@CRYPTO_ccm128_decrypt:bb.a
._crit_edge95:                                    ; preds = %bb.n, %._crit_edge87
  %i.co = zext nneg i32 %5 to i64
  %scevgep = getelementptr i8, ptr %0, i64 %i.co
  %7 = and i8 %i.a, 7
  %narrow = add nuw nsw i8 %7, 1
  %i.cp = zext nneg i8 %narrow to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i8 0, i64 %i.cp, i1 false), !tbaa !9
  call void %i.c(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef %i.e) #7
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
end_hunk_7
begin_hunk_8_@CRYPTO_ccm128_encrypt_ccm64
define dso_local range(i32 -2, 1) i32 @CRYPTO_ccm128_encrypt_ccm64(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef readonly captures(none) %4) local_unnamed_addr #4 {
bb.a:
  %5 = alloca %union.anon.2, align 16             ; 8 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !9       ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
end_hunk_8
begin_hunk_9_@CRYPTO_ccm128_encrypt_ccm64:bb.a
  %i.l = and i32 %i.f, 7                          ; 3 uses
  %i.m = trunc nuw nsw i32 %i.l to i8
  store i8 %i.m, ptr %0, align 8, !tbaa !9
  %6 = sub nuw nsw i32 15, %i.l                   ; 2 uses
  %.not107 = icmp eq i32 %i.l, 0
  br i1 %.not107, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %6 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %wide.trip.count, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.085100 = phi i64 [ 0, %.lr.ph.preheader ], [ %i.r, %.lr.ph ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !9
end_hunk_9
begin_hunk_10_@CRYPTO_ccm128_encrypt_ccm64:bb.a
  store i8 0, ptr %i.n, align 1, !tbaa !9
  %i.r = shl i64 %i.q, 8                          ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %7 = and i64 %indvars.iv.next, 4294967295
  %exitcond.not = icmp eq i64 %7, 15
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !39

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
end_hunk_10
begin_hunk_11_@CRYPTO_ccm128_encrypt_ccm64:bb.a
._crit_edge106:                                   ; preds = %vec.epilog.scalar.ph162, %vec.epilog.middle.block173, %bb.f, %bb.g
  %i.co = zext nneg i32 %6 to i64
  %scevgep = getelementptr i8, ptr %0, i64 %i.co
  %8 = and i8 %i.a, 7
  %narrow = add nuw nsw i8 %8, 1
  %i.cp = zext nneg i8 %narrow to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i8 0, i64 %i.cp, i1 false), !tbaa !9
  call void %i.c(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef %i.e) #7
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
end_hunk_11
begin_hunk_12_@CRYPTO_ccm128_decrypt_ccm64
define dso_local range(i32 -1, 1) i32 @CRYPTO_ccm128_decrypt_ccm64(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef readonly captures(none) %4) local_unnamed_addr #4 {
bb.a:
  %5 = alloca %union.anon.3, align 16             ; 8 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !9       ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
end_hunk_12
begin_hunk_13_@CRYPTO_ccm128_decrypt_ccm64:bb.a
  %i.i = and i32 %i.f, 7                          ; 3 uses
  %i.j = trunc nuw nsw i32 %i.i to i8
  store i8 %i.j, ptr %0, align 8, !tbaa !9
  %6 = sub nuw nsw i32 15, %i.i                   ; 2 uses
  %.not104 = icmp eq i32 %i.i, 0
  br i1 %.not104, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %6 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %wide.trip.count, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.07698 = phi i64 [ 0, %.lr.ph.preheader ], [ %i.o, %.lr.ph ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !9
end_hunk_13
begin_hunk_14_@CRYPTO_ccm128_decrypt_ccm64:bb.a
  store i8 0, ptr %i.k, align 1, !tbaa !9
  %i.o = shl i64 %i.n, 8                          ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %7 = and i64 %indvars.iv.next, 4294967295
  %exitcond.not = icmp eq i64 %7, 15
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !51

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
end_hunk_14
begin_hunk_15_@CRYPTO_ccm128_decrypt_ccm64:bb.a
._crit_edge103:                                   ; preds = %bb.e, %.loopexit, %bb.f
  %i.bn = zext nneg i32 %6 to i64
  %scevgep = getelementptr i8, ptr %0, i64 %i.bn
  %8 = and i8 %i.a, 7
  %narrow = add nuw nsw i8 %8, 1
  %i.bo = zext nneg i8 %narrow to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i8 0, i64 %i.bo, i1 false), !tbaa !9
  call void %i.c(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef %i.e) #7
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
end_hunk_15
begin_hunk_16_@CRYPTO_ccm128_tag:bb.a
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
end_hunk_16
