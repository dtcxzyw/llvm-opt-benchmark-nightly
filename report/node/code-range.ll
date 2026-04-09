inline.NumInlined: 284
inline.NumDeleted: 170
begin_hunk_0_@_ZN2v88internal9CodeRange21RemapEmbeddedBuiltinsEPNS0_7IsolateEPKhm:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef i64 %i.r(ptr noundef nonnull align 8 dereferenceable(268) %i.o) #13 ; 3 uses
  %i.t = add i64 %3, %i.n
  %i.u = add i64 %i.t, -1
  %i.v = sub nsw i64 0, %i.n
  %i.w = and i64 %i.u, %i.v                       ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.f, i64 2147483648)
end_hunk_0
begin_hunk_1_@_ZN2v88internal9CodeRange21RemapEmbeddedBuiltinsEPNS0_7IsolateEPKhm:bb.a
  unreachable

bb.n:                                             ; preds = %bb.k, %bb.l, %bb.j
  %4 = add i64 %3, %i.s
  %i.au = add i64 %4, -1
  %i.av = sub nsw i64 0, %i.s
  %i.aw = and i64 %i.au, %i.av                    ; 4 uses
  %i.ax = ptrtoint ptr %2 to i64
end_hunk_1
