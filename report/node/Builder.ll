inline.NumInlined: 5152
inline.NumDeleted: 1417
begin_hunk_0_@_ZN4LIEF5MachO7Builder9build_fatEv:bb.a
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_ZNSt6vectorIhSaIhEED2Ev.exit16
  %i.ak = phi ptr [ %i.ad, %.lr.ph ], [ %.pre26, %_ZNSt6vectorIhSaIhEED2Ev.exit16 ]
  %.025 = phi i64 [ 0, %.lr.ph ], [ %3, %_ZNSt6vectorIhSaIhEED2Ev.exit16 ] ; 3 uses
  %i.al = load ptr, ptr %i.ae, align 8
  %i.am = load ptr, ptr %i.al, align 8
end_hunk_0
begin_hunk_1_@_ZN4LIEF5MachO7Builder9build_fatEv:bb.a
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.by) #20
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit16

_ZNSt6vectorIhSaIhEED2Ev.exit16:                  ; preds = %_ZN4LIEF15vector_iostream5writeESt6vectorIhSaIhEE.exit12, %bb.h
  %.pre26 = load ptr, ptr %0, align 8             ; 2 uses
  %.pre = load ptr, ptr %i.d, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %3 = add nuw i64 %.025, 1                       ; 2 uses
  %i.bz = ptrtoint ptr %.pre to i64
  %i.ca = ptrtoint ptr %.pre26 to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = ashr exact i64 %i.cb, 3
  %i.cd = icmp ult i64 %3, %i.cc
end_hunk_1
