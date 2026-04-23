inline.NumInlined: 622
inline.NumDeleted: 305
begin_hunk_0_@_ZN2v88internal19SwissNameDictionary28NumberOfEnumerablePropertiesEv:bb.a
  %storemerge.i.i32 = zext i32 %storemerge.i.i32.shrunk to i64
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %0, align 8 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.cc = add i64 %.sroa.0.0.copyload.i.i.i.i.i, 11
  %i.cd = inttoptr i64 %i.cc to ptr
  %i.ce = add i64 %.sroa.0.0.copyload.i.i.i.i.i, -1
end_hunk_0
begin_hunk_1_@_ZN2v88internal19SwissNameDictionary28NumberOfEnumerablePropertiesEv:bb.a
  %i.dk = add i64 %.sroa.0.0.copyload.i.i.i.i.i, %i.dj
  %i.dl = inttoptr i64 %i.dk to ptr
  %i.dm = load atomic volatile i64, ptr %i.dl monotonic, align 8 ; 3 uses
  %1 = load i64, ptr %i.cb, align 8
  %.not36 = icmp eq i64 %i.dm, %1
  br i1 %.not36, label %_ZN2v88internal19SwissNameDictionary5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit, label %bb.m

end_hunk_1
begin_hunk_2_@_ZN2v88internal19SwissNameDictionary17SlowReverseLookupEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE:bb.a
  %storemerge.i.i38 = zext i32 %storemerge.i.i38.shrunk to i64
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %0, align 8 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 656
  %i.ca = add i64 %.sroa.0.0.copyload.i.i.i.i.i, -1
  br label %bb.g

end_hunk_2
begin_hunk_3_@_ZN2v88internal19SwissNameDictionary17SlowReverseLookupEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE:bb.a
  %i.de = add i64 %.sroa.0.0.copyload.i.i.i.i.i, %i.dd
  %i.df = inttoptr i64 %i.de to ptr
  %i.dg = load atomic volatile i64, ptr %i.df monotonic, align 8 ; 2 uses
  %3 = load i64, ptr %i.bz, align 8
  %.not45 = icmp eq i64 %i.dg, %3
  br i1 %.not45, label %bb.n, label %bb.m

end_hunk_3
