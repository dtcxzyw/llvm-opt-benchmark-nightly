inline.NumInlined: 452
inline.NumDeleted: 269
begin_hunk_0_@_ZN2v88internal19NewLargeObjectSpace4FlipEv:bb.a

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.06 = phi ptr [ %i.q, %.lr.ph ], [ %i.d, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.06, i64 328 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = or i64 %i.f, 8                           ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.06, i64 72 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8
  %i.j = and i64 %i.i, -262144
  %i.k = inttoptr i64 %i.j to ptr
  store i64 %i.g, ptr %i.k, align 262144
  %i.l = and i64 %i.g, -17                        ; 2 uses
  store i64 %i.l, ptr %i.e, align 8
  %i.m = load i64, ptr %i.h, align 8
  %i.n = and i64 %i.m, -262144
end_hunk_0
