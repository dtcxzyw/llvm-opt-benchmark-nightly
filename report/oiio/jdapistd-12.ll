inline.NumInlined: 6
inline.NumDeleted: 2
begin_hunk_0_@jpeg12_skip_scanlines:bb.a
  %i.bh = mul nsw i32 %i.bg, %i.be
  %.fr228 = freeze i32 %i.bh                      ; 10 uses
  %i.bi = urem i32 %.fr261, %.fr228
  %i.bj = sub nuw i32 %.fr228, %i.bi
  %i.bk = urem i32 %i.bj, %.fr228                 ; 8 uses
  %i.bl = sub i32 %1, %i.bk                       ; 7 uses
  %i.bm = load ptr, ptr %i.k, align 8, !tbaa !51  ; 3 uses
end_hunk_0
begin_hunk_1_@jpeg12_skip_scanlines:bb.a
  %.not180 = icmp ne i32 %i.br, 0
  %i.bs = add i32 %.fr228, 1
  %i.bt = icmp ult i32 %i.bl, %i.bs
  %or.cond192 = and i1 %.not180, %i.bt
  br i1 %or.cond192, label %bb.q, label %bb.ac

bb.q:                                             ; preds = %bb.p, %bb.n
end_hunk_1
begin_hunk_2_@jpeg12_skip_scanlines:bb.a
bb.af:                                            ; preds = %bb.ae
  %i.cy = icmp eq i32 %i.cw, 1
  %i.cz = icmp ugt i32 %i.bk, 2
  %or.cond = and i1 %i.cy, %i.cz
  br i1 %or.cond, label %bb.ag, label %set_wraparound_pointers.exit

bb.ag:                                            ; preds = %bb.af, %bb.ae
end_hunk_2
