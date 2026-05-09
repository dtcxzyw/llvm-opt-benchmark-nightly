inline.NumInlined: 33
inline.NumDeleted: 23
begin_hunk_0_@pfr_face_init:bb.a

bb.w:                                             ; preds = %bb.v
  %i.ei = and i32 %i.eg, 8
  %.not67.i = icmp eq i32 %i.ei, 0                ; 2 uses
  %spec.select.i161 = select i1 %.not67.i, i64 1, i64 2
  %i.ej = and i32 %i.eg, 3
  %i.ek = icmp eq i32 %i.ej, 0
  %6 = select i1 %.not67.i, i64 4, i64 5
  %spec.select76.i = select i1 %i.ek, i64 %6, i64 %spec.select.i161
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.1.i = phi i64 [ 0, %bb.v ], [ %spec.select76.i, %bb.w ]
  %i.el = and i32 %i.eg, 16
  %.not68.i = icmp eq i32 %i.el, 0                ; 2 uses
  %i.em = and i32 %i.eg, 32
  %.not69.i = icmp eq i32 %i.em, 0                ; 2 uses
  %7 = select i1 %.not69.i, i64 14, i64 15
  %.2.i = select i1 %.not68.i, i64 13, i64 %7
  %i.en = add nuw nsw i64 %.2.i, %.1.i
  %i.eo = icmp samesign ugt i64 %i.en, %i.bm
  br i1 %i.eo, label %bb.ar, label %bb.y

end_hunk_0
begin_hunk_1_@pfr_face_init:bb.a
  br i1 %or.cond.i, label %.thread196.sink.split.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.lj = and i32 %i.lh, 4
  %.not161.i = icmp eq i32 %i.lj, 0               ; 4 uses
  br i1 %.not161.i, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %bb.aw
end_hunk_1
begin_hunk_2_@pfr_face_init:bb.a

bb.br:                                            ; preds = %bb.bq
  %i.to = and i32 %i.lh, 2
  %.not170.i = icmp eq i32 %i.to, 0               ; 4 uses
  %spec.select.i165 = select i1 %.not170.i, i32 4, i32 5
  %spec.select.i165.a = select i1 %.not170.i, i32 6, i32 7
  %.1.i166 = select i1 %.not161.i, i32 %spec.select.i165, i32 %spec.select.i165.a
  %i.tp = lshr i32 %i.lh, 3
  %i.tq = and i32 %i.tp, 1                        ; 2 uses
  %i.tr = and i32 %i.lh, 16                       ; 2 uses
end_hunk_2
begin_hunk_3_@pfr_face_init:bb.a
  %i.tt = and i32 %i.lh, 32                       ; 2 uses
  %.not173.i = icmp eq i32 %i.tt, 0
  %i.tu = lshr exact i32 %i.tt, 5
  %.2.i167 = add nuw nsw i32 %i.ts, %i.tq
  %.3.i168 = add nuw nsw i32 %.2.i167, %i.tu
  %.4.i169 = add nuw nsw i32 %.3.i168, %.1.i166
  %i.tv = mul nuw nsw i32 %i.tg, %.4.i169
  %i.tw = zext nneg i32 %i.tv to i64
  %i.tx = getelementptr inbounds nuw i8, ptr %i.ry, i64 %i.tw
end_hunk_3
begin_hunk_4_@pfr_extra_item_load_kerning_pairs:bb.a
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !255
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.af = and i8 %i.s, 1
  %.not74 = icmp eq i8 %i.af, 0                   ; 3 uses
  %spec.store.select = select i1 %.not74, i32 3, i32 5
  %3 = and i8 %i.s, 2
  %.not75 = icmp eq i8 %3, 0
  %4 = select i1 %.not74, i32 4, i32 6
  %spec.select = select i1 %.not75, i32 %spec.store.select, i32 %4 ; 4 uses
  store i32 %spec.select, ptr %i.ae, align 4
  %i.ag = zext i8 %i.g to i32                     ; 4 uses
  %i.ah = mul nuw nsw i32 %spec.select, %i.ag
end_hunk_4
