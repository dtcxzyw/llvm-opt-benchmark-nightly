inline.NumInlined: 2456
inline.NumDeleted: 476
begin_hunk_0_@_ZNK2v88internal12AstRawString12AsArrayIndexEPj:bb.a
  %.023.us24.i = phi i32 [ %i.bh, %_ZN2v88internal20TryAddArrayIndexCharIjEEbPjT_.exit.us.i ], [ %i.ax, %_ZN2v88internal12_GLOBAL__N_119OneByteStringStream7HasMoreEv.exit18.lr.ph.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %indvars.iv.i
  %i.ba = load i8, ptr %i.az, align 1             ; 2 uses
  %i.bb = zext i8 %i.ba to i32                    ; 2 uses
  %2 = add i8 %i.ba, -48
  %i.bc = icmp ult i8 %2, 10
  br i1 %i.bc, label %bb.j, label %_ZN2v88internal13StringToIndexINS0_12_GLOBAL__N_119OneByteStringStreamEjLNS0_11ToIndexModeE0EEEbPT_PT0_.exit

bb.j:                                             ; preds = %.lr.ph.i
end_hunk_0
begin_hunk_1_@_ZNK2v88internal12AstRawString12AsArrayIndexEPj:bb.a

_ZN2v88internal20TryAddArrayIndexCharIjEEbPjT_.exit.us.i: ; preds = %bb.j
  %i.bg = mul nuw i32 %.023.us24.i, 10
  %3 = add i32 %i.bg, %i.bb
  %i.bh = add i32 %3, -48                         ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.i
  br i1 %exitcond.not.i, label %.split.us.i, label %.lr.ph.i

end_hunk_1
