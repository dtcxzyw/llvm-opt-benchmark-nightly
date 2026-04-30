inline.NumInlined: 395
inline.NumDeleted: 110
begin_hunk_0_@cliInitHelp:bb.a
  %i.be = call noalias dereferenceable_or_null(8) ptr @zmalloc(i64 noundef 8) #38
  %i.bf = getelementptr i8, ptr %i.bb, i64 -80    ; 3 uses
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !229
  %i.bg = call ptr @hi_sdsnew(ptr noundef %i.ak) #34 ; 2 uses
  %i.bh = load ptr, ptr %i.bf, align 8, !tbaa !229 ; 2 uses
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !29
  %i.bi = getelementptr i8, ptr %i.bb, i64 -72
  store ptr %i.bg, ptr %i.bi, align 8, !tbaa !18
  store i32 1, ptr %i.bc, align 8, !tbaa !232
  %1 = load ptr, ptr %i.bh, align 8, !tbaa !29
  call void @hi_sdstoupper(ptr noundef %1) #34
  %i.bj = load ptr, ptr %i.bf, align 8, !tbaa !229
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !29
  %i.bl = getelementptr i8, ptr %i.bb, i64 -64
end_hunk_0
