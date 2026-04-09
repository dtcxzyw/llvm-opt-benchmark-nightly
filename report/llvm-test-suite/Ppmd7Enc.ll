inline.NumInlined: 11
inline.NumDeleted: 4
begin_hunk_0_@Ppmd7_EncodeSymbol:bb.a
  %i.ii = getelementptr inbounds nuw [2 x i8], ptr %i.gu, i64 %i.ih ; 5 uses
  %i.ij = zext i8 %i.hv to i32
  %.not168 = icmp eq i32 %2, %i.ij                ; 2 uses
  %i.ik = load i16, ptr %i.ii, align 2, !tbaa !50 ; 3 uses
  %i.il = zext i16 %i.ik to i32                   ; 3 uses
  %i.im = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.in = load i32, ptr %i.im, align 8, !tbaa !12 ; 2 uses
end_hunk_0
begin_hunk_1_@Ppmd7_EncodeSymbol:bb.a
  br i1 %i.jw, label %bb.n, label %RangeEnc_EncodeBit_0.exit.loopexit, !llvm.loop !52

RangeEnc_EncodeBit_0.exit.loopexit:               ; preds = %RangeEnc_ShiftLow.exit.i211
  %.pre295 = load i16, ptr %i.ii, align 2, !tbaa !50 ; 2 uses
  %.pre297 = zext i16 %.pre295 to i32
  br label %RangeEnc_EncodeBit_0.exit

RangeEnc_EncodeBit_0.exit:                        ; preds = %RangeEnc_EncodeBit_0.exit.loopexit, %bb.m
  %.pre-phi = phi i32 [ %.pre297, %RangeEnc_EncodeBit_0.exit.loopexit ], [ %i.il, %bb.m ]
  %3 = phi i16 [ %.pre295, %RangeEnc_EncodeBit_0.exit.loopexit ], [ %i.ik, %bb.m ]
  %i.jx = add nuw nsw i32 %.pre-phi, 32
  %i.jy = lshr i32 %i.jx, 7
  %4 = trunc nuw nsw i32 %i.jy to i16
  %5 = sub i16 %3, %4
  %6 = add i16 %5, 128
  store i16 %6, ptr %i.ii, align 2, !tbaa !50
  store ptr %i.hu, ptr %i.hl, align 8, !tbaa !38
  tail call void @Ppmd7_UpdateBin(ptr noundef nonnull %0) #5
  br label %bb.q
end_hunk_1
