begin_hunk_0_@adpcm_coder:bb.a
  %i.o = select i1 %i.n, i32 8, i32 0
  %spec.select = tail call i32 @llvm.abs.i32(i32 %i.m, i1 true) ; 2 uses
  %i.p = ashr i32 %.06991, 3
  %.not84 = icmp slt i32 %spec.select, %.06991    ; 2 uses
  %.073 = select i1 %.not84, i32 0, i32 4         ; 2 uses
  %i.q = select i1 %.not84, i32 0, i32 %.06991    ; 2 uses
  %.171 = sub nsw i32 %spec.select, %i.q          ; 2 uses
  %.064 = add nsw i32 %i.q, %i.p
  %i.r = ashr i32 %.06991, 1                      ; 2 uses
  %.not85 = icmp slt i32 %.171, %i.r              ; 2 uses
  %4 = or disjoint i32 %.073, 2
  %.174 = select i1 %.not85, i32 %.073, i32 %4
  %i.s = select i1 %.not85, i32 0, i32 %i.r       ; 2 uses
  %.272 = sub nsw i32 %.171, %i.s
end_hunk_0
begin_hunk_1_@adpcm_coder:bb.a

bb.b:                                             ; preds = %.lr.ph
  %i.af = shl nuw nsw i32 %i.x, 4
  %5 = and i32 %i.af, 240
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
end_hunk_1
begin_hunk_2_@adpcm_coder:bb.a

bb.d:                                             ; preds = %bb.c, %bb.b
  %.179 = phi ptr [ %.07888, %bb.b ], [ %i.ai, %bb.c ] ; 2 uses
  %.1 = phi i32 [ %5, %bb.b ], [ %.06294, %bb.c ] ; 2 uses
  %i.aj = add nsw i32 %.07690, -1
  %i.ak = xor i1 %.095, true
  %i.al = icmp sgt i32 %.07690, 1
end_hunk_2
