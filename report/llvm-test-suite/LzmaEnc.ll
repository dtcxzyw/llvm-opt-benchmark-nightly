inline.NumInlined: 105
inline.NumDeleted: 33
begin_hunk_0_@LzmaEnc_CodeOneBlock:bb.a

bb.dt:                                            ; preds = %bb.dr
  %notsub.i = add i32 %i.ahz, -524288
  %isneg.inv.i = icmp slt i32 %notsub.i, 0        ; 2 uses
  %i.ain = select i1 %isneg.inv.i, i32 6, i32 18
  %i.aio = lshr i32 %i.ahz, %i.ain
  %i.aip = zext nneg i32 %i.aio to i64
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.aip
  %i.air = load i8, ptr %i.aiq, align 1, !tbaa !21
  %4 = zext i8 %i.air to i64
  %5 = select i1 %isneg.inv.i, i64 12, i64 36
  %i.ais = and i32 %i.ahz, 15
  %i.ait = zext nneg i32 %i.ais to i64
  %i.aiu = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.ait
  %i.aiv = load i32, ptr %i.aiu, align 4, !tbaa !4
  %i.aiw = zext i32 %i.aig to i64
  %i.aix = getelementptr inbounds nuw [256 x i8], ptr %i.ey, i64 %i.aiw
  %6 = getelementptr inbounds nuw [4 x i8], ptr %i.aix, i64 %5
  %i.aiy = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %4
  %i.aiz = load i32, ptr %i.aiy, align 4, !tbaa !4
  %i.aja = add i32 %i.aiz, %i.aiv
  br label %bb.du
end_hunk_0
begin_hunk_1_@LzmaEnc_CodeOneBlock:bb.a
  %i.big = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.bif
  %i.bih = load i32, ptr %i.big, align 4, !tbaa !4 ; 3 uses
  %notsub822.i = add i32 %i.bih, -524288
  %isneg.inv823.i = icmp slt i32 %notsub822.i, 0  ; 2 uses
  %i.bii = select i1 %isneg.inv823.i, i32 6, i32 18
  %i.bij = lshr i32 %i.bih, %i.bii
  %i.bik = zext nneg i32 %i.bij to i64
  %i.bil = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.bik
  %i.bim = load i8, ptr %i.bil, align 1, !tbaa !21
  %i.bin = zext i8 %i.bim to i32
  %7 = select i1 %isneg.inv823.i, i32 12, i32 36
  %i.bio = add nuw nsw i32 %7, %i.bin
  %i.bip = getelementptr inbounds nuw [1088 x i8], ptr %i.ev, i64 %i.aqm
  %i.biq = getelementptr inbounds nuw [4 x i8], ptr @kMatchNextStates, i64 %i.aqk
  %i.bir = add i32 %i.aut, 1
end_hunk_1
begin_hunk_2_@LzmaEnc_CodeOneBlock:bb.a

bb.gq:                                            ; preds = %bb.gp
  %notsub825.i = add i32 %i.bpw, -524288
  %isneg.inv826.i = icmp slt i32 %notsub825.i, 0  ; 2 uses
  %i.bpy = select i1 %isneg.inv826.i, i32 6, i32 18
  %i.bpz = lshr i32 %i.bpw, %i.bpy
  %i.bqa = zext nneg i32 %i.bpz to i64
  %i.bqb = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.bqa
  %i.bqc = load i8, ptr %i.bqb, align 1, !tbaa !21
  %i.bqd = zext i8 %i.bqc to i32
  %8 = select i1 %isneg.inv826.i, i32 12, i32 36
  %i.bqe = add nuw nsw i32 %8, %i.bqd
  br label %.thread929.i

.thread929.i:                                     ; preds = %bb.gi, %bb.gq, %bb.gp
end_hunk_2
begin_hunk_3_@LzmaEnc_CodeOneBlock:bb.a

bb.ig:                                            ; preds = %RangeEnc_EncodeBit.exit299
  %notsub = add i32 %.0351, -524292
  %isneg.inv = icmp slt i32 %notsub, 0            ; 2 uses
  %i.cbb = select i1 %isneg.inv, i32 6, i32 18
  %i.cbc = lshr i32 %i.cav, %i.cbb
  %i.cbd = zext nneg i32 %i.cbc to i64
  %i.cbe = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.cbd
  %i.cbf = load i8, ptr %i.cbe, align 1, !tbaa !21
  %i.cbg = zext i8 %i.cbf to i32
  %9 = select i1 %isneg.inv, i32 12, i32 36
  %i.cbh = add nuw nsw i32 %9, %i.cbg
  br label %bb.ih

bb.ih:                                            ; preds = %bb.ig, %bb.if
end_hunk_3
