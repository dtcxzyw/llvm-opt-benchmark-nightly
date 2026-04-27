inline.NumInlined: 991
inline.NumDeleted: 393
begin_hunk_0_@_ZN2v88internal39Runtime_ThrowInvalidTypedArrayAlignmentEiPmPNS0_7IsolateE:bb.a
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load i64, ptr %1, align 8
  %i.n = add i64 %i.m, 14
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load i8, ptr %i.o, align 1
  %i.q = lshr i8 %i.p, 2                          ; 2 uses
  %switch.tableidx = add nsw i8 %i.q, -18         ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN2v88internal21Runtime_ThrowNoAccessEiPmPNS0_7IsolateE:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr [8 x i8], ptr %i.n, i64 %i.k
  %i.p = getelementptr i8, ptr %i.o, i64 -8
  %.sroa.0.0.copyload.i2 = load i64, ptr %i.p, align 8 ; 2 uses
  %i.q = load ptr, ptr %i.i, align 8              ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 560 ; 2 uses
end_hunk_1
