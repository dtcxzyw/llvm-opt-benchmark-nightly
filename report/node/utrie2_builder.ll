inline.NumInlined: 48
inline.NumDeleted: 21
begin_hunk_0_@utrie2_setRange32_78:bb.a
  %i.ab = shl nuw nsw i32 %i.p, 2
  %.idx = zext nneg i32 %i.ab to i64              ; 18 uses
  %.not.i = icmp eq i8 %4, 0
  %6 = sub nuw nsw i64 124, %.idx
  %i.ac = lshr exact i64 %6, 2
  %7 = add nuw nsw i64 %i.ac, 1                   ; 4 uses
  %min.iters.check205 = icmp samesign ugt i32 %i.p, 24 ; 2 uses
  br i1 %.not.i, label %.lr.ph19.i.preheader, label %.lr.ph.i.preheader

end_hunk_0
begin_hunk_1_@utrie2_setRange32_78:bb.a
  br i1 %min.iters.check205, label %.lr.ph.i.preheader348, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %7, 56                         ; 4 uses
  %i.ad = shl nuw nsw i64 %n.vec, 2
  %i.ae = add nuw nsw i64 %i.ad, %.idx
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %3, i64 0
end_hunk_1
begin_hunk_2_@utrie2_setRange32_78:bb.a
  br label %middle.block

middle.block:                                     ; preds = %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %7, %n.vec
  br i1 %cmp.n, label %_ZL9fillBlockPjiijja.exit, label %.lr.ph.i.preheader348

.lr.ph.i.preheader348:                            ; preds = %.lr.ph.i.preheader, %middle.block
end_hunk_2
begin_hunk_3_@utrie2_setRange32_78:bb.a
  br i1 %min.iters.check205, label %.lr.ph19.i.preheader347, label %vector.ph206

vector.ph206:                                     ; preds = %.lr.ph19.i.preheader
  %n.vec208 = and i64 %7, 56                      ; 4 uses
  %i.ap = shl nuw nsw i64 %n.vec208, 2
  %i.aq = add nuw nsw i64 %i.ap, %.idx
  %broadcast.splatinsert209 = insertelement <4 x i32> poison, i32 %i.aa, i64 0
end_hunk_3
begin_hunk_4_@utrie2_setRange32_78:bb.a
  br label %middle.block229

middle.block229:                                  ; preds = %pred.store.continue225.2, %pred.store.if226.2, %pred.store.continue227.1, %pred.store.continue227
  %cmp.n230 = icmp eq i64 %7, %n.vec208
  br i1 %cmp.n230, label %_ZL9fillBlockPjiijja.exit, label %.lr.ph19.i.preheader347

.lr.ph19.i.preheader347:                          ; preds = %.lr.ph19.i.preheader, %middle.block229
end_hunk_4
