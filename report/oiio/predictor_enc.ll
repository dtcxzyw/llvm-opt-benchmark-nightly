inline.NumInlined: 92
inline.NumDeleted: 33
begin_hunk_0_@GetResidual:bb.a
  %i.dq = lshr i32 %i.db, 24                      ; 3 uses
  %.off.i = add nsw i32 %i.dq, -1
  %switch.i = icmp ult i32 %.off.i, 254
  %i.dr = lshr i32 %i.cy, 24                      ; 3 uses
  %i.ds = sub nsw i32 %i.dq, %i.dr                ; 2 uses
  br i1 %switch.i, label %bb.ac, label %bb.ab

end_hunk_0
begin_hunk_1_@GetResidual:bb.a

bb.ac:                                            ; preds = %bb.aa
  %i.dt = and i32 %i.ds, 255                      ; 4 uses
  %13 = sub nuw nsw i32 255, %i.dr                ; 3 uses
  %i.du = sub i32 0, %.037.i                      ; 3 uses
  %i.dv = and i32 %i.dt, %i.du                    ; 5 uses
  %i.dw = add nsw i32 %i.dv, %.037.i              ; 3 uses
  %i.dx = icmp samesign ult i32 %i.dr, %i.dq
  %i.dy = zext i1 %i.dx to i32
  %i.dz = sub nsw i32 %i.dt, %i.dv
  %i.ea = sub nsw i32 %i.dy, %i.dt
end_hunk_1
begin_hunk_2_@GetResidual:bb.a
  %i.eh = trunc i32 %i.eg to i8
  %i.ei = lshr i32 %i.cy, 8                       ; 3 uses
  %i.ej = trunc i32 %i.ei to i8
  %14 = sub nsw i32 %i.eg, %i.ei
  %i.ek = and i32 %14, 255                        ; 4 uses
  %i.el = and i32 %i.ei, 255
  %i.em = xor i32 %i.el, 255                      ; 4 uses
  %i.en = and i32 %.pre-phi.i, %i.ek              ; 5 uses
  %i.eo = add nsw i32 %i.en, %.037.i              ; 3 uses
  %.not66.i = and i32 %i.eg, 255
  %i.ep = xor i32 %.not66.i, 255
  %i.eq = icmp samesign ult i32 %i.ep, %i.em
  %i.er = zext i1 %i.eq to i32
  %i.es = sub nsw i32 %i.ek, %i.en
  %i.et = sub nsw i32 %i.er, %i.ek
  %i.eu = add i32 %i.et, %i.eo
  %i.ev = icmp slt i32 %i.es, %i.eu
  %i.ew = icmp samesign ule i32 %i.ek, %i.em      ; 2 uses
  %i.ex = add nuw i32 %i.en, %i.dp                ; 2 uses
  br i1 %i.ev, label %bb.af, label %bb.ag

end_hunk_2
