inline.NumInlined: 18
inline.NumDeleted: 6
begin_hunk_0_@LzmaDec_DecodeReal2:bb.a
  %storemerge1036.i = phi i16 [ %i.od, %bb.bp ], [ %i.nz, %bb.bo ]
  %.25893.i = phi i32 [ %i.oa, %bb.bp ], [ %i.nu, %bb.bo ] ; 3 uses
  %.25.i = phi i32 [ %i.ob, %bb.bp ], [ %.24.i, %bb.bo ] ; 2 uses
  %.0812.i = phi i32 [ 3, %bb.bp ], [ 2, %bb.bo ] ; 2 uses
  store i16 %storemerge1036.i, ptr %i.nj, align 2, !tbaa !34
  %3 = zext nneg i32 %.0812.i to i64
  %i.oe = getelementptr inbounds nuw [2 x i8], ptr %i.ni, i64 %3 ; 2 uses
  %i.of = load i16, ptr %i.oe, align 2, !tbaa !34 ; 4 uses
  %i.og = zext i16 %i.of to i32                   ; 2 uses
  %i.oh = icmp ult i32 %.25893.i, 16777216
end_hunk_0
begin_hunk_1_@LzmaDec_DecodeReal2:bb.a
  %i.oo = lshr i32 %.26894.i, 11
  %i.op = mul i32 %i.oo, %i.og                    ; 4 uses
  %i.oq = icmp ult i32 %.26.i, %i.op
  %4 = shl nuw nsw i32 %.0812.i, 1                ; 2 uses
  br i1 %i.oq, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
end_hunk_1
begin_hunk_2_@LzmaDec_DecodeReal2:bb.a
  %i.ow = sub nuw i32 %.26.i, %i.op
  %i.ox = lshr i16 %i.of, 5
  %i.oy = sub i16 %i.of, %i.ox
  %i.oz = or disjoint i32 %4, 1
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %.sink1169.i = phi i16 [ %i.ou, %bb.bt ], [ %i.oy, %bb.bu ]
  %.27895.i = phi i32 [ %i.op, %bb.bt ], [ %i.ov, %bb.bu ] ; 3 uses
  %.27.i = phi i32 [ %.26.i, %bb.bt ], [ %i.ow, %bb.bu ] ; 2 uses
  %.1813.i = phi i32 [ %4, %bb.bt ], [ %i.oz, %bb.bu ] ; 2 uses
  store i16 %.sink1169.i, ptr %i.oe, align 2, !tbaa !34
  %i.pa = zext nneg i32 %.1813.i to i64
  %i.pb = getelementptr inbounds nuw [2 x i8], ptr %i.ni, i64 %i.pa ; 2 uses
end_hunk_2
begin_hunk_3_@LzmaDec_DecodeReal2:bb.a
  %.38906.i = phi i32 [ %i.tr, %bb.cu ], [ %i.tx, %bb.cv ] ; 4 uses
  %.38.i = phi i32 [ %.37.i, %bb.cu ], [ %i.ty, %bb.cv ] ; 3 uses
  %.7819.i = phi i32 [ %i.sz, %bb.cu ], [ %i.ub, %bb.cv ] ; 3 uses
  %.1801.i.a = phi i32 [ 2, %bb.cu ], [ 3, %bb.cv ] ; 2 uses
  store i16 %.sink1174.i, ptr %i.tg, align 2, !tbaa !34
  %.not1037.i = icmp eq i32 %i.su, 2
  br i1 %.not1037.i, label %.thread1047.i, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %5 = zext nneg i32 %.1801.i.a to i64
  %i.uc = getelementptr inbounds nuw [2 x i8], ptr %i.tf, i64 %5 ; 2 uses
  %i.ud = load i16, ptr %i.uc, align 2, !tbaa !34 ; 4 uses
  %i.ue = zext i16 %i.ud to i32                   ; 2 uses
  %i.uf = icmp ult i32 %.38906.i, 16777216
end_hunk_3
begin_hunk_4_@LzmaDec_DecodeReal2:bb.a
  %i.um = lshr i32 %.37905.i.1, 11
  %i.un = mul i32 %i.um, %i.ue                    ; 4 uses
  %i.uo = icmp ult i32 %.37.i.1, %i.un
  %6 = shl nuw nsw i32 %.1801.i.a, 1              ; 2 uses
  br i1 %i.uo, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
end_hunk_4
begin_hunk_5_@LzmaDec_DecodeReal2:bb.a
  %i.uq = sub nuw i32 %.37.i.1, %i.un
  %i.ur = lshr i16 %i.ud, 5
  %i.us = sub i16 %i.ud, %i.ur
  %i.ut = or disjoint i32 %6, 1
  %i.uu = or i32 %.7819.i, 2
  br label %bb.dc

end_hunk_5
begin_hunk_6_@LzmaDec_DecodeReal2:bb.a
  %.38906.i.1 = phi i32 [ %i.un, %bb.db ], [ %i.up, %bb.da ] ; 4 uses
  %.38.i.1 = phi i32 [ %.37.i.1, %bb.db ], [ %i.uq, %bb.da ] ; 3 uses
  %.7819.i.1 = phi i32 [ %.7819.i, %bb.db ], [ %i.uu, %bb.da ] ; 3 uses
  %.1801.i.1 = phi i32 [ %6, %bb.db ], [ %i.ut, %bb.da ] ; 2 uses
  store i16 %.sink1174.i.1, ptr %i.uc, align 2, !tbaa !34
  %.not1037.i.1 = icmp eq i32 %i.su, 3
  br i1 %.not1037.i.1, label %.thread1047.i, label %bb.dd
end_hunk_6
begin_hunk_7_@LzmaDec_DecodeReal2:bb.a
  %.42910.i = phi i32 [ %i.yv, %bb.ec ], [ %i.zb, %bb.ed ] ; 3 uses
  %.42.i = phi i32 [ %.41.i, %bb.ec ], [ %i.zc, %bb.ed ] ; 2 uses
  %.9.i = phi i32 [ %i.yk, %bb.ec ], [ %i.zf, %bb.ed ] ; 2 uses
  %.0791.i = phi i32 [ 2, %bb.ec ], [ 3, %bb.ed ] ; 2 uses
  store i16 %.sink1175.i, ptr %i.ba, align 2, !tbaa !34
  %7 = zext nneg i32 %.0791.i to i64
  %i.zg = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %7 ; 2 uses
  %i.zh = load i16, ptr %i.zg, align 2, !tbaa !34 ; 4 uses
  %i.zi = zext i16 %i.zh to i32                   ; 2 uses
  %i.zj = icmp ult i32 %.42910.i, 16777216
end_hunk_7
begin_hunk_8_@LzmaDec_DecodeReal2:bb.a
  %i.zq = lshr i32 %.43911.i, 11
  %i.zr = mul i32 %i.zq, %i.zi                    ; 4 uses
  %i.zs = icmp ult i32 %.43.i, %i.zr
  %8 = shl nuw nsw i32 %.0791.i, 1                ; 2 uses
  br i1 %i.zs, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
end_hunk_8
begin_hunk_9_@LzmaDec_DecodeReal2:bb.a
  %i.zy = sub nuw i32 %.43.i, %i.zr
  %i.zz = lshr i16 %i.zh, 5
  %i.aaa = sub i16 %i.zh, %i.zz
  %i.aab = or disjoint i32 %8, 1
  %i.aac = or i32 %.9.i, 2
  br label %bb.ej

end_hunk_9
begin_hunk_10_@LzmaDec_DecodeReal2:bb.a
  %.44912.i = phi i32 [ %i.zr, %bb.eh ], [ %i.zx, %bb.ei ] ; 3 uses
  %.44.i = phi i32 [ %.43.i, %bb.eh ], [ %i.zy, %bb.ei ] ; 2 uses
  %.10.i = phi i32 [ %.9.i, %bb.eh ], [ %i.aac, %bb.ei ] ; 2 uses
  %.1792.i = phi i32 [ %8, %bb.eh ], [ %i.aab, %bb.ei ] ; 2 uses
  store i16 %.sink1176.i, ptr %i.zg, align 2, !tbaa !34
  %i.aad = zext nneg i32 %.1792.i to i64
  %i.aae = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %i.aad ; 2 uses
end_hunk_10
