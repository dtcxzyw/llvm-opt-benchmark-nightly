inline.NumInlined: 181
inline.NumDeleted: 7
begin_hunk_0_@_ZL11decToStringPK9decNumberPch:bb.a

bb.n:                                             ; preds = %.lr.ph401
  %i.ao = shl i32 %i.al, 3                        ; 4 uses
  %.not370 = icmp uge i32 %.0264400, %i.ao        ; 4 uses
  %i.ap = select i1 %.not370, i8 56, i8 48
  %i.aq = select i1 %.not370, i32 %i.ao, i32 0
  %.1265 = sub nuw nsw i32 %.0264400, %i.aq       ; 2 uses
  %i.ar = lshr exact i32 %i.ao, 1                 ; 2 uses
  %.not371 = icmp uge i32 %.1265, %i.ar           ; 3 uses
  %3 = select i1 %.not370, i8 60, i8 52
  %i.as = select i1 %.not371, i8 %3, i8 %i.ap     ; 2 uses
  %i.at = select i1 %.not371, i32 %i.ar, i32 0
  %.2266 = sub nuw nsw i32 %.1265, %i.at
end_hunk_0
begin_hunk_1_@_ZL11decToStringPK9decNumberPch:bb.a

bb.ah:                                            ; preds = %bb.ag
  %i.cp = shl i32 %i.cm, 3                        ; 4 uses
  %.not354 = icmp uge i32 %.7, %i.cp              ; 4 uses
  %i.cq = select i1 %.not354, i8 56, i8 48
  %i.cr = select i1 %.not354, i32 %i.cp, i32 0
  %.8 = sub nuw nsw i32 %.7, %i.cr                ; 2 uses
  %i.cs = lshr exact i32 %i.cp, 1                 ; 2 uses
  %.not355 = icmp uge i32 %.8, %i.cs              ; 3 uses
  %4 = select i1 %.not354, i8 60, i8 52
  %i.ct = select i1 %.not355, i8 %4, i8 %i.cq     ; 2 uses
  %i.cu = select i1 %.not355, i32 %i.cs, i32 0
  %.9 = sub nuw nsw i32 %.8, %i.cu
end_hunk_1
begin_hunk_2_@_ZL11decToStringPK9decNumberPch:bb.a

bb.at:                                            ; preds = %bb.as
  %i.dy = shl i32 %i.dv, 3                        ; 4 uses
  %.not359 = icmp uge i32 %.14, %i.dy             ; 4 uses
  %i.dz = select i1 %.not359, i8 56, i8 48
  %i.ea = select i1 %.not359, i32 %i.dy, i32 0
  %.15 = sub nuw nsw i32 %.14, %i.ea              ; 2 uses
  %i.eb = lshr exact i32 %i.dy, 1                 ; 2 uses
  %.not360 = icmp uge i32 %.15, %i.eb             ; 3 uses
  %5 = select i1 %.not359, i8 60, i8 52
  %i.ec = select i1 %.not360, i8 %5, i8 %i.dz     ; 2 uses
  %i.ed = select i1 %.not360, i32 %i.eb, i32 0
  %.16 = sub nuw nsw i32 %.15, %i.ed
end_hunk_2
begin_hunk_3_@_ZL11decToStringPK9decNumberPch:bb.a

bb.bd:                                            ; preds = %bb.bc
  %i.ff = shl i32 %i.fc, 3                        ; 4 uses
  %.not349 = icmp uge i32 %.21, %i.ff             ; 4 uses
  %i.fg = select i1 %.not349, i8 56, i8 48
  %i.fh = select i1 %.not349, i32 %i.ff, i32 0
  %.22 = sub nuw nsw i32 %.21, %i.fh              ; 2 uses
  %i.fi = lshr exact i32 %i.ff, 1                 ; 2 uses
  %.not350 = icmp uge i32 %.22, %i.fi             ; 3 uses
  %6 = select i1 %.not349, i8 60, i8 52
  %i.fj = select i1 %.not350, i8 %6, i8 %i.fg     ; 2 uses
  %i.fk = select i1 %.not350, i32 %i.fi, i32 0
  %.23 = sub nuw nsw i32 %.22, %i.fk
end_hunk_3
begin_hunk_4_@_ZL11decToStringPK9decNumberPch:bb.a
  br i1 %i.gi, label %condstore.split, label %bb.bs

condstore.split:                                  ; preds = %bb.bq
  %.not364.1 = icmp ugt i32 %.33, 799999999       ; 4 uses
  %i.gj = add nsw i32 %.33, -800000000
  %i.gk = select i1 %.not364.1, i8 56, i8 48
  %.29.1 = select i1 %.not364.1, i32 %i.gj, i32 %.33 ; 3 uses
  %.not365.1 = icmp ugt i32 %.29.1, 399999999     ; 3 uses
  %i.gl = add nsw i32 %.29.1, -400000000
  %7 = select i1 %.not364.1, i8 60, i8 52
  %.ph = select i1 %.not365.1, i8 %7, i8 %i.gk    ; 3 uses
  %.31.1.ph = select i1 %.not365.1, i32 %i.gl, i32 %.29.1 ; 2 uses
  %i.gm = or i1 %.not364.1, %.not365.1
end_hunk_4
begin_hunk_5_@uprv_decNumberPower_78:bb.a
  %i.f = load i8, ptr %i.e, align 4               ; 5 uses
  %i.g = zext i8 %i.f to i32                      ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.i = load i8, ptr %i.h, align 4               ; 5 uses
  %i.j = zext i8 %i.i to i32                      ; 2 uses
  %i.k = or i32 %i.j, %i.g                        ; 2 uses
  %i.l = and i32 %i.k, 112
end_hunk_5
begin_hunk_6_@uprv_decNumberPower_78:bb.a
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ci = load i32, ptr %i.ch, align 4            ; 6 uses
  %i.cj = add i32 %i.ci, %i.cg                    ; 8 uses
  %i.ck = icmp slt i8 %i.i, 0                     ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 4 uses
  %i.cm = load i8, ptr %i.cl, align 1             ; 2 uses
  %i.cn = icmp eq i32 %i.cg, 1                    ; 2 uses
end_hunk_6
begin_hunk_7_@uprv_decNumberPower_78:bb.a
  %.not187 = icmp eq i32 %.3.i, -2147483648       ; 2 uses
  %i.eu = icmp slt i8 %i.f, 0
  %i.ev = trunc i32 %.3.i to i1
  %or.cond3 = and i1 %i.eu, %i.ev                 ; 3 uses
  %spec.select213 = select i1 %or.cond3, i8 -128, i8 0 ; 3 uses
  %i.ew = and i32 %i.g, 64
  %.not188 = icmp eq i32 %i.ew, 0
  br i1 %.not188, label %bb.aj, label %bb.ae
end_hunk_7
begin_hunk_8_@uprv_decNumberPower_78:bb.a
  br i1 %.not201, label %bb.ai, label %.thread254

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %8 = select i1 %or.cond3, i8 -64, i8 64
  %spec.select214 = select i1 %i.ck, i8 %spec.select213, i8 %8
  store i8 %spec.select214, ptr %i.ex, align 4
  br label %.thread249
end_hunk_8
begin_hunk_9_@uprv_decNumberPower_78:bb.a
  br i1 %i.fj, label %.thread254, label %bb.am

bb.am:                                            ; preds = %bb.al
  %9 = select i1 %or.cond3, i8 -64, i8 64
  %spec.select217 = select i1 %i.ck, i8 %9, i8 %spec.select213
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.fl, align 4
end_hunk_9
