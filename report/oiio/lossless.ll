inline.NumInlined: 86
inline.NumDeleted: 26
begin_hunk_0_@VP8LInverseTransform:bb.a
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !18 ; 3 uses
  %i.be = shl nuw i32 1, %i.bd                    ; 4 uses
  %i.bf = add nsw i32 %i.be, -1
  %i.bg = add i32 %i.b, %i.be
  %i.bh = add i32 %i.bg, -1
  %i.bi = lshr i32 %i.bh, %i.bd                   ; 2 uses
  %i.bj = icmp slt i32 %.056.i, %2
  br i1 %i.bj, label %.lr.ph84.i, label %PredictorInverseTransform_C.exit
end_hunk_0
begin_hunk_1_@VP8LInverseTransform:bb.a
bb.f:                                             ; preds = %bb.a
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !18 ; 3 uses
  %i.gp = shl nuw i32 1, %i.go                    ; 5 uses
  %i.gq = add nsw i32 %i.gp, -1
  %i.gr = sub i32 0, %i.gp
  %i.gs = and i32 %i.b, %i.gr                     ; 3 uses
  %i.gt = sub nsw i32 %i.b, %i.gs                 ; 2 uses
  %6 = add i32 %i.b, %i.gp
  %i.gu = add i32 %6, -1
  %i.gv = lshr i32 %i.gu, %i.go                   ; 2 uses
  %i.gw = icmp slt i32 %1, %2
  br i1 %i.gw, label %.lr.ph62.i, label %ColorSpaceInverseTransform_C.exit
end_hunk_1
begin_hunk_2_@VP8LInverseTransform:bb.a
  %i.io = sub nsw i32 %2, %1                      ; 2 uses
  %i.ip = mul nsw i32 %i.b, %i.io
  %i.iq = shl nuw i32 1, %i.im
  %i.ir = add i32 %i.b, %i.iq
  %i.is = add i32 %i.ir, -1
  %i.it = lshr i32 %i.is, %i.im
  %i.iu = mul i32 %i.it, %i.io
  %i.iv = sext i32 %i.ip to i64
end_hunk_2
