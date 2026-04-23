inline.NumInlined: 409
inline.NumDeleted: 141
begin_hunk_0_@_ZN12halfFunctionIN9Imath_3_14halfEEC2IN27OpenImageIO_v3_1_Imf__3_3_59roundNBitEEET_S1_S1_S1_S1_S1_S1_:bb.a
  %i.e = zext i16 %3 to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.e ; 2 uses
  %i.g = icmp ugt i32 %.fr24, 9
  %i.h = sub nuw nsw i32 9, %.fr24                ; 2 uses
  %8 = ashr exact i32 -1024, %.fr24
  br i1 %i.g, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a, %bb.h
end_hunk_0
begin_hunk_1_@_ZN12halfFunctionIN9Imath_3_14halfEEC2IN27OpenImageIO_v3_1_Imf__3_3_59roundNBitEEET_S1_S1_S1_S1_S1_S1_:bb.a
_ZN27OpenImageIO_v3_1_Imf__3_3_59roundNBitclEN9Imath_3_14halfE.exit: ; preds = %bb.m
  %i.aw = and i16 %i.ad, -32768
  %i.ax = and i32 %i.ac, 32767
  %i.ay = lshr i32 %i.ax, %i.h                    ; 2 uses
  %i.az = and i32 %i.ay, 1
  %i.ba = add nuw nsw i32 %i.az, %i.ay
  %i.bb = shl nuw nsw i32 %i.ba, %i.h             ; 2 uses
  %i.bc = and i32 %i.bb, 64512
  %i.bd = icmp samesign ugt i32 %i.bc, 31743
  %i.be = and i32 %8, %i.ac
  %.0.i.i.v = select i1 %i.bd, i32 %i.be, i32 %i.bb
  %.0.i.i = trunc i32 %.0.i.i.v to i16
  %i.bf = or i16 %i.aw, %.0.i.i
end_hunk_1
