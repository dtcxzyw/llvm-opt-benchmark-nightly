inline.NumInlined: 193
inline.NumDeleted: 62
begin_hunk_0_@_ZN3dpx10ReadPackedINS_17ElementReadStreamEhLj65472ELi2ELi4ELi6EEEbRKNS_6HeaderEPjPT_iRKNS_5BlockEPT0_:bb.a
  %.not.us21.i = and i16 %i.cc, 6
  %i.cd = xor i16 %.not.us21.i, 6
  %i.ce = shl i16 %i.cb, %i.cd
  %6 = lshr i16 %i.ce, 10
  %7 = getelementptr inbounds nuw i8, ptr %i.bh, i64 %indvars.iv.i
  %i.cf = trunc nuw nsw i16 %6 to i8
  store i8 %i.cf, ptr %7, align 1, !tbaa !29
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %.not35.i = icmp eq i64 %indvars.iv.i, 0
  br i1 %.not35.i, label %_ZN3dpx12UnPackPackedIhLj65472ELi2ELi4ELi6EEEvPjiPT_ii.exit, label %.lr.ph.split.us19.i, !llvm.loop !87
end_hunk_0
begin_hunk_1_@_ZN3dpx10ReadPackedINS_17ElementReadStreamEtLj65472ELi2ELi4ELi6EEEbRKNS_6HeaderEPjPT_iRKNS_5BlockEPT0_:bb.a
  %.not.us.i = and i16 %i.bq, 6
  %i.br = xor i16 %.not.us.i, 6
  %i.bs = shl i16 %i.bp, %i.br                    ; 2 uses
  %6 = lshr i16 %i.bs, 10
  %7 = and i16 %i.bs, -64
  %i.bt = or disjoint i16 %7, %6
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %i.bh, i64 %indvars.iv27.i
  store i16 %i.bt, ptr %i.bu, align 2, !tbaa !25
  %indvars.iv.next28.i = add nsw i64 %indvars.iv27.i, -1
end_hunk_1
begin_hunk_2_@_ZN3dpx10ReadPackedINS_17ElementReadStreamEtLj65520ELi4ELi2ELi4EEEbRKNS_6HeaderEPjPT_iRKNS_5BlockEPT0_:bb.a
  %.not.us21.i = and i16 %i.cg, 4
  %i.ch = xor i16 %.not.us21.i, 4
  %i.ci = shl i16 %i.ce, %i.ch                    ; 2 uses
  %6 = lshr i16 %i.ci, 12
  %7 = and i16 %i.ci, -16
  %i.cj = or disjoint i16 %7, %6
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %i.bh, i64 %indvars.iv.i
  store i16 %i.cj, ptr %i.ck, align 2, !tbaa !25
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
end_hunk_2
begin_hunk_3_@_ZN3dpx10ReadPackedINS_17ElementReadStreamEjLj65472ELi2ELi4ELi6EEEbRKNS_6HeaderEPjPT_iRKNS_5BlockEPT0_:bb.a
  %.not.us.i = and i16 %i.bq, 6
  %i.br = xor i16 %.not.us.i, 6
  %i.bs = shl i16 %i.bp, %i.br                    ; 2 uses
  %6 = lshr i16 %i.bs, 10
  %7 = and i16 %i.bs, -64
  %i.bt = or disjoint i16 %7, %6
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv27.i
  %i.bv = zext i16 %i.bt to i32
  %i.bw = mul nuw i32 %i.bv, 65537
end_hunk_3
begin_hunk_4_@_ZN3dpx10ReadPackedINS_17ElementReadStreamEjLj65520ELi4ELi2ELi4EEEbRKNS_6HeaderEPjPT_iRKNS_5BlockEPT0_:bb.a
  %.not.us21.i = and i16 %i.ci, 4
  %i.cj = xor i16 %.not.us21.i, 4
  %i.ck = shl i16 %i.cg, %i.cj                    ; 2 uses
  %6 = lshr i16 %i.ck, 12
  %7 = and i16 %i.ck, -16
  %i.cl = or disjoint i16 %7, %6
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv.i
  %i.cn = zext i16 %i.cl to i32
  %i.co = mul nuw i32 %i.cn, 65537
end_hunk_4
begin_hunk_5_@_ZN3dpx10ReadPackedINS_17ElementReadStreamEfLj65472ELi2ELi4ELi6EEEbRKNS_6HeaderEPjPT_iRKNS_5BlockEPT0_:bb.a
  %.not.us.i = and i16 %i.bq, 6
  %i.br = xor i16 %.not.us.i, 6
  %i.bs = shl i16 %i.bp, %i.br                    ; 2 uses
  %6 = lshr i16 %i.bs, 10
  %7 = and i16 %i.bs, -64
  %i.bt = or disjoint i16 %7, %6
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv27.i
  %i.bv = uitofp i16 %i.bt to float
  store float %i.bv, ptr %i.bu, align 4, !tbaa !62
end_hunk_5
begin_hunk_6_@_ZN3dpx10ReadPackedINS_17ElementReadStreamEfLj65520ELi4ELi2ELi4EEEbRKNS_6HeaderEPjPT_iRKNS_5BlockEPT0_:bb.a
  %.not.us21.i = and i16 %i.ch, 4
  %i.ci = xor i16 %.not.us21.i, 4
  %i.cj = shl i16 %i.cf, %i.ci                    ; 2 uses
  %6 = lshr i16 %i.cj, 12
  %7 = and i16 %i.cj, -16
  %i.ck = or disjoint i16 %7, %6
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv.i
  %i.cm = uitofp i16 %i.ck to float
  store float %i.cm, ptr %i.cl, align 4, !tbaa !62
end_hunk_6
begin_hunk_7_@_ZN3dpx10ReadPackedINS_17ElementReadStreamEdLj65472ELi2ELi4ELi6EEEbRKNS_6HeaderEPjPT_iRKNS_5BlockEPT0_:bb.a
  %.not.us.i = and i16 %i.bq, 6
  %i.br = xor i16 %.not.us.i, 6
  %i.bs = shl i16 %i.bp, %i.br                    ; 2 uses
  %6 = lshr i16 %i.bs, 10
  %7 = and i16 %i.bs, -64
  %i.bt = or disjoint i16 %7, %6
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv27.i
  %i.bv = uitofp i16 %i.bt to double
  store double %i.bv, ptr %i.bu, align 8, !tbaa !72
end_hunk_7
begin_hunk_8_@_ZN3dpx10ReadPackedINS_17ElementReadStreamEdLj65520ELi4ELi2ELi4EEEbRKNS_6HeaderEPjPT_iRKNS_5BlockEPT0_:bb.a
  %.not.us21.i = and i16 %i.ch, 4
  %i.ci = xor i16 %.not.us21.i, 4
  %i.cj = shl i16 %i.cf, %i.ci                    ; 2 uses
  %6 = lshr i16 %i.cj, 12
  %7 = and i16 %i.cj, -16
  %i.ck = or disjoint i16 %7, %6
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv.i
  %i.cm = uitofp i16 %i.ck to double
  store double %i.cm, ptr %i.cl, align 8, !tbaa !72
end_hunk_8
