inline.NumInlined: 46
inline.NumDeleted: 18
begin_hunk_0_@mbedtls_cipher_update:bb.a
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.thread143
  %.0114 = phi i64 [ %i.bo, %bb.q ], [ %2, %.thread143 ] ; 4 uses
  %.0113 = phi ptr [ %i.bm, %bb.q ], [ %3, %.thread143 ]
  %.0112 = phi ptr [ %i.bn, %bb.q ], [ %1, %.thread143 ] ; 2 uses
  %.not133 = icmp eq i64 %.0114, 0
  br i1 %.not133, label %.thread144, label %bb.s

end_hunk_0
begin_hunk_1_@mbedtls_cipher_update:bb.a
  %.0 = phi i64 [ %i.bp, %bb.s ], [ %spec.select, %bb.u ], [ 0, %bb.t ] ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bw = sub i64 %.0114, %.0                     ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.0112, i64 %i.bw
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bv, ptr align 1 %i.bx, i64 %.0, i1 false)
  %i.by = load i64, ptr %i.au, align 8, !tbaa !37
  %i.bz = add i64 %i.by, %.0
end_hunk_1
begin_hunk_2_@mbedtls_cipher_update:bb.a
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !26
  %i.cl = load i32, ptr %i.ac, align 4, !tbaa !34
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cn = tail call noundef i32 %i.ci(ptr noundef %i.ck, i32 noundef %i.cl, i64 noundef %i.bw, ptr noundef nonnull %i.cm, ptr noundef %.0112, ptr noundef %.0113) ; 2 uses
  %.not136 = icmp eq i32 %i.cn, 0
  br i1 %.not136, label %bb.x, label %.thread144

end_hunk_2
