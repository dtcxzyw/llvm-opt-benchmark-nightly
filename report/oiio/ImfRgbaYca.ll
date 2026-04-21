inline.NumInlined: 221
inline.NumDeleted: 20
begin_hunk_0_@_ZN27OpenImageIO_v3_1_Imf__3_3_57RgbaYca8roundYCAEijjPKNS_4RgbaEPS1_:bb.a
.lr.ph:                                           ; preds = %bb.a
  %i.b = icmp ugt i32 %1, 9                       ; 2 uses
  %i.c = sub nuw nsw i32 9, %1                    ; 4 uses
  %5 = ashr exact i32 -1024, %1
  %i.d = trunc nsw i32 %5 to i16                  ; 2 uses
  %i.e = icmp ugt i32 %2, 9
  %i.f = sub nuw nsw i32 9, %2                    ; 8 uses
  %6 = ashr exact i32 -1024, %2
  %i.g = trunc nsw i32 %6 to i16                  ; 4 uses
  %wide.trip.count53 = zext nneg i32 %0 to i64    ; 4 uses
  br i1 %i.e, label %.lr.ph.split.us, label %.lr.ph.split

end_hunk_0
