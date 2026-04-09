begin_hunk_0_@CRYPTO_cts128_decrypt_block:bb.a
.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.middle.block
  %.152.ph = phi i64 [ 16, %iter.check ], [ %i.ei, %vec.epilog.middle.block ] ; 4 uses
  %i.fr = sub nsw i64 %spec.store.select, %.152.ph
  %7 = sub nsw i64 %spec.store.select, %.152.ph
  %8 = add nsw i64 %7, 15
  %xtraiter = and i64 %i.fr, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol
end_hunk_0
begin_hunk_1_@CRYPTO_nistcts128_decrypt_block:bb.a
}

; Function Attrs: nounwind uwtable
define dso_local i64 @CRYPTO_cts128_decrypt(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef readonly captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %union.anon.3, align 8              ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #6
end_hunk_1
begin_hunk_2_@CRYPTO_cts128_decrypt:bb.a
bb.b:                                             ; preds = %bb.a
  %i.b = and i64 %2, 15                           ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  %spec.store.select = select i1 %i.c, i64 16, i64 %i.b ; 3 uses
  %i.d = add nuw nsw i64 %spec.store.select, 16   ; 3 uses
  %7 = sub i64 %2, %i.d                           ; 4 uses
  %.not = icmp eq i64 %2, %i.d
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void %5(ptr noundef %0, ptr noundef %1, i64 noundef %7, ptr noundef %3, ptr noundef %4, i32 noundef 0) #6
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %7
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %7
end_hunk_2
begin_hunk_3_@CRYPTO_cts128_decrypt:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %i.h, i64 %spec.store.select, i1 false)
  call void %5(ptr noundef nonnull %6, ptr noundef nonnull %6, i64 noundef 32, ptr noundef %3, ptr noundef %4, i32 noundef 0) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.028, ptr noundef nonnull align 8 dereferenceable(1) %6, i64 %i.d, i1 false)
  %8 = add i64 %spec.store.select, %7
  %9 = add i64 %8, 16
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0 = phi i64 [ %9, %bb.d ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  ret i64 %.0
}
end_hunk_3
