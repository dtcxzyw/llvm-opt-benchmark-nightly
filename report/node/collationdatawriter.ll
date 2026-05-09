inline.NumInlined: 46
inline.NumDeleted: 25
begin_hunk_0_@_ZN6icu_7819CollationDataWriter5writeEaPKhRKNS_13CollationDataERKNS_17CollationSettingsEPKviPiPhiR10UErrorCode:bb.a
  %i.bc = add nsw i32 %.0217, %.1209
  %i.bd = and i32 %i.bc, 1
  %.not235 = icmp eq i32 %i.bd, 0
  %i.be = select i1 %or.cond248, i1 true, i1 %.not235 ; 2 uses
  %.1212 = select i1 %i.be, i32 24, i32 28        ; 6 uses
  %.not236 = icmp samesign ugt i32 %.1212, %8
  br i1 %.not236, label %bb.r, label %bb.q

end_hunk_0
begin_hunk_1_@_ZN6icu_7819CollationDataWriter5writeEaPKhRKNS_13CollationDataERKNS_17CollationSettingsEPKviPiPhiR10UErrorCode:bb.a
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i32 %i.bf, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx, align 1
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 24
  %13 = select i1 %i.be, i64 0, i64 4
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bh, i8 0, i64 %13, i1 false)
  %i.bi = zext nneg i32 %.1212 to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 %i.bi
  %i.bk = sub nuw nsw i32 %8, %.1212
end_hunk_1
