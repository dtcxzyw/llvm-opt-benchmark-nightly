inline.NumInlined: 60
inline.NumDeleted: 22
begin_hunk_0_@load_regex_matcher:bb.a
  %i.es = zext i1 %i.dl to i64
  %i.et = add nsw i64 %i.er, %i.es
  %i.eu = shl nsw i64 %i.et, 3
  %i.ev = call nonnull ptr @cli_realloc2(ptr noundef %i.dn, i64 noundef %i.eu) #17 ; 2 uses
  store ptr %i.ev, ptr %i.dm, align 8, !tbaa !17
  %i.ew = load i32, ptr %i.df, align 4, !tbaa !25
  %i.ex = icmp eq i32 %i.ew, 2
  %.idx.i116.i = select i1 %i.ex, i64 8, i64 0
end_hunk_0
