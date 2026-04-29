begin_hunk_0_@h2v1_fancy_upsample:bb.a
  br i1 %found.conflict, label %.lr.ph.preheader57, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.w, 4294967288               ; 5 uses
  %i.aa = shl nuw nsw i64 %n.vec, 1               ; 2 uses
  %i.ab = getelementptr i8, ptr %.03032, i64 %i.aa ; 2 uses
  %.cast = trunc nuw i64 %n.vec to i32
  %i.ac = sub i32 %i.v, %.cast
  %i.ad = getelementptr i8, ptr %i.i, i64 %i.aa   ; 2 uses
  %i.ae = getelementptr i8, ptr %i.j, i64 %n.vec  ; 2 uses
  br label %vector.body

end_hunk_0
begin_hunk_1_@h2v2_fancy_upsample:bb.a
  br i1 %conflict.rdx112, label %.lr.ph.preheader145, label %vector.ph115

vector.ph115:                                     ; preds = %vector.memcheck99
  %n.vec117 = and i64 %i.am, 4294967288           ; 6 uses
  %i.aq = shl nuw nsw i64 %n.vec117, 1            ; 2 uses
  %i.ar = getelementptr i8, ptr %.04852, i64 %i.aq ; 2 uses
  %.cast118 = trunc nuw i64 %n.vec117 to i32
  %i.as = sub i32 %i.aj, %.cast118
  %i.at = getelementptr i8, ptr %i.j, i64 %i.aq   ; 2 uses
  %i.au = getelementptr i8, ptr %i.ak, i64 %n.vec117
  %i.av = getelementptr i8, ptr %i.al, i64 %n.vec117
  %vector.recur.init121 = insertelement <8 x i32> poison, i32 %i.r, i64 7
end_hunk_1
begin_hunk_2_@h2v2_fancy_upsample:bb.a
  br i1 %conflict.rdx, label %.lr.ph.1.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dt, 4294967288              ; 6 uses
  %i.dx = shl nuw nsw i64 %n.vec, 1               ; 2 uses
  %i.dy = getelementptr i8, ptr %.04852.1, i64 %i.dx ; 2 uses
  %.cast = trunc nuw i64 %n.vec to i32
  %i.dz = sub i32 %i.dq, %.cast
  %i.ea = getelementptr i8, ptr %i.cq, i64 %i.dx  ; 2 uses
  %i.eb = getelementptr i8, ptr %i.dr, i64 %n.vec
  %i.ec = getelementptr i8, ptr %i.ds, i64 %n.vec
  %vector.recur.init = insertelement <8 x i32> poison, i32 %i.cy, i64 7
end_hunk_2
