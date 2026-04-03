begin_hunk_0
  store ptr %i.ca, ptr %i.ba, align 8, !alias.scope !934, !noalias !930
  store i64 %i.cb, ptr %i.bb, align 8, !alias.scope !934, !noalias !930
  %i.cf = lshr i64 %i.bj, 2
  %i.cg = sub nsw i64 %i.bj, %i.cf                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !936
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %i.cg, i1 noundef zeroext false, i64 noundef 8, i64 noundef 104)
          to label %.noexc25.i unwind label %bb.l, !noalias !930
end_hunk_0
begin_hunk_1

bb.u:                                             ; preds = %.noexc25.i
  %i.cp = load ptr, ptr %i.cl, align 8, !noalias !936, !nonnull !10, !noundef !10 ; 2 uses
  %i.cq = icmp ule i64 %i.cg, %i.ck
  call void @llvm.assume(i1 %i.cq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !936
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtBK_5value11HeaderValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aw)
end_hunk_1
begin_hunk_2
bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.r = lshr i64 %i.l, 2
  %i.s = sub i64 %i.l, %i.r
  %i.t = icmp eq i64 %i.g, %i.s
  br i1 %i.t, label %bb.m, label %_RNvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMap7rebuildCsgO8S5jLFugx_23deltalake_catalog_unity.exit

end_hunk_2
