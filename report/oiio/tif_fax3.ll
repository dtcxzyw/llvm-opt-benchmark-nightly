inline.NumInlined: 37
inline.NumDeleted: 6
begin_hunk_0_@_TIFFFax3fillruns:bb.a
  %i.l = lshr i32 %.0116175, 3
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %i.m ; 6 uses
  %i.o = and i32 %.0116175, 7                     ; 4 uses
  %i.p = sub nuw nsw i32 8, %i.o                  ; 2 uses
  %i.q = icmp ugt i32 %.0112, %i.p
  br i1 %i.q, label %bb.g, label %bb.m

end_hunk_0
begin_hunk_1_@_TIFFFax3fillruns:bb.a
  br i1 %.not137, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %4 = lshr exact i32 65280, %i.o
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.s = load i8, ptr %i.n, align 1, !tbaa !7
  %i.t = trunc i32 %4 to i8
end_hunk_1
begin_hunk_2_@Fax3Encode2DRow:bb.a
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !7
  %i.ex = zext i8 %i.ew to i32
  %i.ey = and i32 %.0113, 7                       ; 9 uses
  %4 = lshr exact i32 128, %i.ey
  %i.ez = and i32 %4, %i.ex
  %.not123 = icmp eq i32 %i.ez, 0
  %i.fa = sub nuw nsw i32 %3, %.0113              ; 7 uses
  %i.fb = ashr i32 %.0113, 3
end_hunk_2
begin_hunk_3_@Fax3Encode2DRow:bb.a
  %i.mw = load i8, ptr %i.mv, align 1, !tbaa !7
  %i.mx = zext i8 %i.mw to i32
  %i.my = and i32 %.0112, 7                       ; 9 uses
  %5 = lshr exact i32 128, %i.my
  %i.mz = and i32 %5, %i.mx
  %.not127 = icmp eq i32 %i.mz, 0
  %i.na = sub nuw nsw i32 %3, %.0112              ; 7 uses
  %i.nb = ashr i32 %.0112, 3
end_hunk_3
begin_hunk_4_@Fax3Encode2DRow:bb.a
  %i.us = load i8, ptr %i.ur, align 1, !tbaa !7
  %i.ut = zext i8 %i.us to i32
  %i.uu = and i32 %.0108, 7
  %6 = lshr exact i32 128, %i.uu
  %i.uv = and i32 %6, %i.ut
  %i.uw = icmp eq i32 %i.uv, 0
  br i1 %i.uw, label %bb.da, label %bb.dc

end_hunk_4
begin_hunk_5_@Fax3Encode2DRow:bb.a
  %i.vt = load i8, ptr %i.vs, align 1, !tbaa !7
  %i.vu = zext i8 %i.vt to i32
  %i.vv = and i32 %.3111, 7                       ; 17 uses
  %7 = lshr exact i32 128, %i.vv
  %i.vw = and i32 %7, %i.vu
  %.not135 = icmp eq i32 %i.vw, 0                 ; 3 uses
  %i.vx = sub nuw nsw i32 %3, %.3111              ; 9 uses
  %i.vy = ashr i32 %.3111, 3
end_hunk_5
