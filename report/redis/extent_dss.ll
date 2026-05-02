inline.NumInlined: 28
inline.NumDeleted: 21
begin_hunk_0_@je_extent_alloc_dss:bb.a
  store i64 %i.ao, ptr %i.w, align 8, !tbaa !75
  %i.ap = and i32 %.val80, -268431361
  %.masked.i = zext i32 %i.ap to i64
  %8 = or i64 %i.al, %.masked.i
  store i64 %i.aj, ptr %i.x, align 8, !tbaa !76
  %9 = zext nneg i8 %i.ab to i64
  %10 = shl nuw nsw i64 %9, 44
  %i.aq = or disjoint i64 %8, %10
  %i.ar = or disjoint i64 %i.aq, 246423552
  store i64 %i.ar, ptr %i.d, align 8, !tbaa !72
  br label %bb.i

end_hunk_0
begin_hunk_1_@je_extent_alloc_dss:bb.a
  store i64 %3, ptr %i.bo, align 8, !tbaa !75
  %i.bp = and i32 %.val, -268431361
  %.masked.i83 = zext i32 %i.bp to i64
  %11 = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 235, ptr %11, align 8, !tbaa !76
  %12 = zext nneg i8 %i.ab to i64
  %13 = shl nuw nsw i64 %12, 44
  %i.bq = select i1 %.not94, i64 8192, i64 12288
  %i.br = or disjoint i64 %i.bq, %13
  %i.bs = or disjoint i64 %i.br, %.masked.i83
  store i64 %i.bs, ptr %7, align 8, !tbaa !72
  %i.bt = call zeroext i1 @je_extent_purge_forced_wrapper(ptr noundef %0, ptr noundef %i.bm, ptr noundef nonnull %7, i64 noundef 0, i64 noundef %3) #6
end_hunk_1
