inline.NumInlined: 803
inline.NumDeleted: 465
begin_hunk_0_@_ZN2v88internal12BackingStore27MakeWasmMemoryResizableByJSEb:bb.a
; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 2) i32 @_ZN2v88internal12BackingStore13ResizeInPlaceEPNS0_7IsolateEm(ptr noundef nonnull align 8 captures(none) dereferenceable(58) %0, ptr noundef readnone captures(none) %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i64 @_ZN2v88internal16AllocatePageSizeEv() #17 ; 7 uses
  %i.b = icmp ugt i64 %2, 9007199254740991
  br i1 %i.b, label %bb.c, label %bb.b, !prof !50

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %i.a, %2
  %i.d = add i64 %i.c, -1
  %i.e = sub nsw i64 0, %i.a                      ; 2 uses
  %i.f = and i64 %i.d, %i.e                       ; 2 uses
  %.not.i = icmp ugt i64 %i.f, 9007199254740991
end_hunk_0
begin_hunk_1_@_ZN2v88internal12BackingStore13ResizeInPlaceEPNS0_7IsolateEm:bb.a
  br i1 %i.q, label %bb.g, label %bb.f, !prof !50

bb.f:                                             ; preds = %bb.e
  %3 = add i64 %i.a, %i.p
  %i.r = add i64 %3, -1
  %i.s = and i64 %i.r, %i.e                       ; 2 uses
  %.not.i23 = icmp ugt i64 %i.s, 9007199254740991
  br i1 %.not.i23, label %bb.g, label %bb.h, !prof !50
end_hunk_1
begin_hunk_2_@_ZN2v88internal12BackingStore11GrowInPlaceEPNS0_7IsolateEm:bb.a
  br i1 %i.b, label %bb.c, label %bb.b, !prof !50

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %2, %i.a
  %i.d = add i64 %i.c, -1
  %i.e = sub nsw i64 0, %i.a
  %i.f = and i64 %i.d, %i.e                       ; 3 uses
  %.not.i = icmp ugt i64 %i.f, 9007199254740991
end_hunk_2
