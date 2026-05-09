inline.NumInlined: 27
inline.NumDeleted: 22
begin_hunk_0_@_ZN5arrow8internal17ComputeBitmapHashEPKhmll:bb.a
  %i.cn = load i8, ptr %.sroa.6.1.i, align 1, !tbaa !35 ; 3 uses
  %i.co = zext i8 %i.cn to i32
  %i.cp = and i32 %i.ba, %i.co
  %.not21.i.i = icmp eq i32 %i.cp, 0
  %spec.select.i32.i = select i1 %.not21.i.i, i8 0, i8 -128 ; 2 uses
  br i1 %i.bc, label %bb.g, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i, !prof !37

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.7, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.6, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.5, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.4, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.3, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.2, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.1, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i
end_hunk_0
begin_hunk_1_@_ZN5arrow8internal17ComputeBitmapHashEPKhmll:bb.a
  br i1 %exitcond.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i
  %4 = lshr exact i8 %spec.select.i32.i, 1        ; 2 uses
  %i.cv = zext i8 %.sroa.9.2.i.i to i32
  %i.cw = trunc nsw i64 %.sroa.16.1.i.i to i32
  %i.cx = shl nuw nsw i32 1, %i.cw
  %i.cy = and i32 %i.cx, %i.cv
  %.not21.i.i.1 = icmp eq i32 %i.cy, 0
  %5 = or disjoint i8 %4, -128
  %spec.select.i32.i.1 = select i1 %.not21.i.i.1, i8 %4, i8 %5 ; 2 uses
  %i.cz = add nsw i64 %.sroa.16.1.i.i, 1          ; 2 uses
  %i.da = icmp eq i64 %i.cz, 8
end_hunk_1
begin_hunk_2_@_ZN5arrow8internal17ComputeBitmapHashEPKhmll:bb.a
  br i1 %exitcond.not.i.i.2, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.3

.lr.ph.i.i.3:                                     ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.2
  %i.dr = lshr i8 %spec.select.i32.i.2, 1         ; 2 uses
  %i.ds = zext i8 %.sroa.9.2.i.i.2 to i32
  %i.dt = trunc nsw i64 %.sroa.16.1.i.i.2 to i32
  %i.du = shl nuw nsw i32 1, %i.dt
end_hunk_2
