begin_hunk_0
  %i.bt = add i64 %i.bm, 1
  store i64 %i.bt, ptr %i.y, align 8, !alias.scope !100, !noalias !103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %or.cond.not = icmp eq i64 %2, 1
  br i1 %or.cond.not, label %bb.u, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %spec.select = call i64 @llvm.usub.sat.i64(i64 %2, i64 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  invoke void @_RINvNtCs2pqxYH9ZEk8_3std2fs8read_dirRNtNtB4_4path7PathBufECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.ah unwind label %bb.j
end_hunk_0
begin_hunk_1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  invoke fastcc void @_RINvNtCsbW3aFIxube3_8fs_extra3dir16__get_dir_contentNtNtCs2pqxYH9ZEk8_3std4path7PathBufECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 captures(address) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.k, i64 noundef %spec.select)
          to label %bb.ay unwind label %.body144

bb.ay:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std2fs8DirEntryECsfY7SmN0bPrO_14deltalake_test.exit
end_hunk_1
