inline.NumInlined: 3030
inline.NumDeleted: 1020
begin_hunk_0_@_ZN5arrow15VisitTypeInlineINS_8internal12_GLOBAL__N_117UTF8DataValidatorEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_:bb.a
  br i1 %.not54128.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit68.lr.ph.i.i.i.i, label %.critedge.i.i.i.i

_ZN5arrow6StatusD2Ev.exit68.lr.ph.i.i.i.i:        ; preds = %.preheader118.i.i.i.i
  %.val.i.promoted.i.i.i.i = load i64, ptr %i.e, align 8, !tbaa !57, !noalias !248
  %scevgep.i.i.i = getelementptr i8, ptr %.026.i.i.i, i64 -4
  %i.aq = shl nuw nsw i64 %i.ao, 2                ; 2 uses
  %scevgep45.i.i.i = getelementptr i8, ptr %scevgep.i.i.i, i64 %i.aq
  %scevgep46.i.i.i = getelementptr i8, ptr %.026.i.i.i, i64 %i.aq
  %i.ar = load i32, ptr %scevgep45.i.i.i, align 4, !tbaa !3, !noalias !253
  %i.as = add i64 %.val.i.promoted.i.i.i.i, %i.ao
  %i.at = add i64 %.048137.i.i.i.i, %i.ao
  store i64 %i.as, ptr %i.e, align 8, !tbaa !57, !noalias !248
  store ptr null, ptr %0, align 8, !tbaa !138, !alias.scope !254
  br label %.critedge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN5arrow6StatusD2Ev.exit75.i.i.i.i, %.lr.ph.preheader.i.i.i.i
end_hunk_0
begin_hunk_1_@_ZN5arrow15VisitTypeInlineINS_8internal12_GLOBAL__N_117UTF8DataValidatorEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_:bb.a

_ZN5arrow6StatusD2Ev.exit69.lr.ph.i.i.i.i:        ; preds = %.preheader11.i.i.i.i
  %i.ec = zext nneg i32 %i.cv to i64              ; 2 uses
  %.val65.val.promoted.i.i.i.i = load i64, ptr %i.c, align 8, !tbaa !57, !noalias !318
  %i.ed = add i64 %.val65.val.promoted.i.i.i.i, %i.ec
  %i.ee = add i64 %.04830.i.i.i.i, %i.ec
  store i64 %i.ed, ptr %i.c, align 8, !tbaa !57, !noalias !318
  store ptr null, ptr %0, align 8, !tbaa !138, !alias.scope !323
  br label %.critedge.i.i.i.i108

.lr.ph.i.i.i.i111:                                ; preds = %_ZN5arrow6StatusD2Ev.exit77.i.i.i.i, %.lr.ph.preheader.i.i.i.i110
end_hunk_1
begin_hunk_2_@_ZN5arrow15VisitTypeInlineINS_8internal12_GLOBAL__N_117UTF8DataValidatorEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_:bb.a
  br i1 %.not54128.i.i.i.i148, label %_ZN5arrow6StatusD2Ev.exit68.i.preheader.i.i.i, label %.critedge.i.i.i.i150

_ZN5arrow6StatusD2Ev.exit68.i.preheader.i.i.i:    ; preds = %.preheader118.i.i.i.i172
  %.val.i.i.promoted.i.i.i = load i64, ptr %i.b, align 8, !tbaa !57, !noalias !381 ; 3 uses
  %min.iters.check = icmp ult i16 %.sroa.0110.0.extract.trunc.i.i.i.i145, 4
  br i1 %min.iters.check, label %_ZN5arrow6StatusD2Ev.exit68.i.i.i.i.preheader, label %vector.memcheck

end_hunk_2
begin_hunk_3_@_ZN5arrow15VisitTypeInlineINS_8internal12_GLOBAL__N_117UTF8DataValidatorEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_:bb.a
  %i.hq = add <2 x i64> %vec.phi87, splat (i64 1) ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hr = icmp eq i64 %index.next, %n.vec
  br i1 %i.hr, label %middle.block, label %vector.body, !llvm.loop !386

middle.block:                                     ; preds = %vector.body
  %i.hs = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %.026.i.i.i139, i64 %i.hs
  %i.ht = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %i.ht, align 8, !tbaa !57, !alias.scope !389, !noalias !392
  %bin.rdx = add <2 x i64> %i.hq, %i.hp
  %i.hu = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  store i64 %i.hu, ptr %i.b, align 8, !tbaa !57, !alias.scope !393, !noalias !395
  %i.hv = extractelement <2 x i64> %wide.load, i64 1
  %cmp.n = icmp eq i64 %n.vec, %i.hj
  br i1 %cmp.n, label %..critedge.loopexit119_crit_edge.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit68.i.i.i.i.preheader
end_hunk_3
begin_hunk_4_@_ZN5arrow15VisitTypeInlineINS_8internal12_GLOBAL__N_117UTF8DataValidatorEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_:bb.a
  %.044130.i.i.i.i.prol = phi i64 [ %i.ic, %_ZN5arrow6StatusD2Ev.exit68.i.i.i.i.prol ], [ %.044130.i.i.i.i.ph, %_ZN5arrow6StatusD2Ev.exit68.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %_ZN5arrow6StatusD2Ev.exit68.i.i.i.i.prol ], [ 0, %_ZN5arrow6StatusD2Ev.exit68.i.i.i.i.preheader ]
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 8 ; 2 uses
  %i.ia = load i64, ptr %i.hy, align 8, !tbaa !57, !noalias !392
  %i.ib = add nsw i64 %i.hx, 1                    ; 3 uses
  store i64 %i.ib, ptr %i.b, align 8, !tbaa !57, !noalias !381
  %i.ic = add nuw nsw i64 %.044130.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_ZN5arrow6StatusD2Ev.exit68.i.i.i.i.prol.loopexit, label %_ZN5arrow6StatusD2Ev.exit68.i.i.i.i.prol, !llvm.loop !396

_ZN5arrow6StatusD2Ev.exit68.i.i.i.i.prol.loopexit: ; preds = %_ZN5arrow6StatusD2Ev.exit68.i.i.i.i.prol, %_ZN5arrow6StatusD2Ev.exit68.i.i.i.i.preheader
  %.lcssa103.unr = phi i64 [ poison, %_ZN5arrow6StatusD2Ev.exit68.i.i.i.i.preheader ], [ %i.ia, %_ZN5arrow6StatusD2Ev.exit68.i.i.i.i.prol ]
end_hunk_4
begin_hunk_5_@_ZN5arrow15VisitTypeInlineINS_8internal12_GLOBAL__N_117UTF8DataValidatorEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_:bb.a
  %.044130.i.i.i.i = phi i64 [ %i.il, %_ZN5arrow6StatusD2Ev.exit68.i.i.i.i ], [ %.044130.i.i.i.i.unr, %_ZN5arrow6StatusD2Ev.exit68.i.i.i.i.prol.loopexit ]
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 24
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ig, i64 32
  %i.ij = load i64, ptr %i.ih, align 8, !tbaa !57, !noalias !392
  %i.ik = add nsw i64 %i.if, 4                    ; 2 uses
  %i.il = add nuw nsw i64 %.044130.i.i.i.i, 4     ; 2 uses
  %exitcond143.not.i.i.i.i.3 = icmp eq i64 %i.il, %i.hj
  br i1 %exitcond143.not.i.i.i.i.3, label %..critedge.loopexit119_crit_edge.i.i.i.i.loopexit.unr-lcssa, label %_ZN5arrow6StatusD2Ev.exit68.i.i.i.i, !llvm.loop !398

.lr.ph.i.i.i.i155:                                ; preds = %_ZN5arrow6StatusD2Ev.exit75.i.i.i.i161, %.lr.ph.preheader.i.i.i.i154
  %.228.i.i.i156 = phi ptr [ %.026.i.i.i139, %.lr.ph.preheader.i.i.i.i154 ], [ %.329.i.i.i163, %_ZN5arrow6StatusD2Ev.exit75.i.i.i.i161 ] ; 3 uses
end_hunk_5
begin_hunk_6_@_ZN5arrow15VisitTypeInlineINS_8internal12_GLOBAL__N_117UTF8DataValidatorEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_:bb.a
bb.aq:                                            ; preds = %.lr.ph.i.i.i.i155
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19, !noalias !367
  %i.iu = getelementptr inbounds i8, ptr %storemerge.i.i.i128, i64 %.2.i.i.i157
  %i.iv = load i64, ptr %.228.i.i.i156, align 8, !tbaa !57, !noalias !399 ; 3 uses
  %i.iw = sub nsw i64 %i.iv, %.2.i.i.i157
  %i.ix = invoke noundef zeroext i1 @_ZN5arrow4util12ValidateUTF8ESt17basic_string_viewIcSt11char_traitsIcEE(i64 %i.iw, ptr nonnull %i.iu)
          to label %.noexc6.i167 unwind label %.loopexit.split-lp.loopexit.i165, !noalias !351
end_hunk_6
begin_hunk_7_@_ZN5arrow15VisitTypeInlineINS_8internal12_GLOBAL__N_117UTF8DataValidatorEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_:bb.a
  br i1 %i.ix, label %_ZN5arrow6StatusD2Ev.exit73.thread.i.i.i.i171, label %_ZN5arrow6StatusD2Ev.exit73.i.i.i.i168, !prof !174

_ZN5arrow6StatusD2Ev.exit73.thread.i.i.i.i171:    ; preds = %.noexc6.i167
  %i.iy = load i64, ptr %i.b, align 8, !tbaa !57, !noalias !402
  %i.iz = add nsw i64 %i.iy, 1
  store i64 %i.iz, ptr %i.b, align 8, !tbaa !57, !noalias !402
  store ptr null, ptr %0, align 8, !tbaa !138, !alias.scope !405
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19, !noalias !367
  br label %_ZN5arrow6StatusD2Ev.exit75.i.i.i.i161

end_hunk_7
begin_hunk_8_@_ZN5arrow15VisitTypeInlineINS_8internal12_GLOBAL__N_117UTF8DataValidatorEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_:bb.a
          to label %.noexc7.i169 unwind label %.loopexit.split-lp.loopexit.i165, !noalias !351

.noexc7.i169:                                     ; preds = %_ZN5arrow6StatusD2Ev.exit73.i.i.i.i168
  %.pr115.i.i.i.i170 = load ptr, ptr %3, align 8, !tbaa !138, !noalias !408 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !410)
  store ptr %.pr115.i.i.i.i170, ptr %0, align 8, !tbaa !138, !alias.scope !408
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19, !noalias !367
  %i.ja = icmp eq ptr %.pr115.i.i.i.i170, null
  br i1 %i.ja, label %_ZN5arrow6StatusD2Ev.exit75.i.i.i.i161, label %_ZN5arrow8internalL14VisitBitBlocksIZNS0_22ArraySpanInlineVisitorINS_15LargeStringTypeEvE11VisitStatusIZNS0_12_GLOBAL__N_117UTF8DataValidator5VisitIS3_EENS_6StatusERKT_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNS8_IS3_EES9_SC_EUlvE_EES9_RKNS_9ArraySpanEOSA_OT0_EUllE_ZNS5_ISH_SI_EES9_SL_SM_SO_EUlvE_EES9_PKhllSM_SO_.exit.i.i.i

_ZN5arrow6StatusD2Ev.exit78.i.i.i.i160:           ; preds = %.lr.ph.i.i.i.i155
  %i.jb = load i64, ptr %.228.i.i.i156, align 8, !tbaa !57, !noalias !411
  %i.jc = load i64, ptr %i.b, align 8, !tbaa !57, !noalias !414
  %i.jd = add nsw i64 %i.jc, 1
  store i64 %i.jd, ptr %i.b, align 8, !tbaa !57, !noalias !414
  store ptr null, ptr %0, align 8, !tbaa !138, !alias.scope !417
  br label %_ZN5arrow6StatusD2Ev.exit75.i.i.i.i161

_ZN5arrow6StatusD2Ev.exit75.i.i.i.i161:           ; preds = %_ZN5arrow6StatusD2Ev.exit78.i.i.i.i160, %.noexc7.i169, %_ZN5arrow6StatusD2Ev.exit73.thread.i.i.i.i171
end_hunk_8
begin_hunk_9_@_ZN5arrow15VisitTypeInlineINS_8internal12_GLOBAL__N_117UTF8DataValidatorEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_:bb.a
  %i.je = add nuw nsw i64 %.042127.i.i.i.i158, 1  ; 2 uses
  %i.jf = add nsw i64 %.351126.i.i.i.i159, 1
  %exitcond.not.i.i.i.i164 = icmp eq i64 %i.je, %i.hj
  br i1 %exitcond.not.i.i.i.i164, label %.critedge.i.i.i.i150, label %.lr.ph.i.i.i.i155, !llvm.loop !420

..critedge.loopexit119_crit_edge.i.i.i.i.loopexit.unr-lcssa: ; preds = %_ZN5arrow6StatusD2Ev.exit68.i.i.i.i
  store i64 %i.ik, ptr %i.b, align 8, !tbaa !57, !noalias !381
  br label %..critedge.loopexit119_crit_edge.i.i.i.i

..critedge.loopexit119_crit_edge.i.i.i.i:         ; preds = %..critedge.loopexit119_crit_edge.i.i.i.i.loopexit.unr-lcssa, %_ZN5arrow6StatusD2Ev.exit68.i.i.i.i.prol.loopexit, %middle.block
end_hunk_9
begin_hunk_10_@_ZN5arrow15VisitTypeInlineINS_8internal12_GLOBAL__N_117UTF8DataValidatorEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_:bb.a
  %i.jg = shl nuw nsw i64 %i.hj, 3
  %scevgep.i.i.i173 = getelementptr i8, ptr %.026.i.i.i139, i64 %i.jg
  %i.jh = add i64 %.048137.i.i.i.i141, %i.hj
  store ptr null, ptr %0, align 8, !tbaa !138, !alias.scope !421
  br label %.critedge.i.i.i.i150

.critedge.i.i.i.i150:                             ; preds = %_ZN5arrow6StatusD2Ev.exit75.i.i.i.i161, %_ZN5arrow6StatusD2Ev.exit66.i.i.i.i187, %..critedge.loopexit119_crit_edge.i.i.i.i, %.preheader118.i.i.i.i172, %.preheader120.i.i.i.i149, %.preheader.i.i.i.i174
end_hunk_10
begin_hunk_11_@_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl5VisitERKNS_13Decimal32TypeE:bb.a

_ZN5arrow6StatusD2Ev.exit71.lr.ph.i.i.i.i:        ; preds = %.preheader11.i.i.i.i
  %i.bz = zext nneg i32 %i.an to i64              ; 2 uses
  %i.ca = mul nsw i64 %i.bz, %i.x
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0.i.i.i, i64 %i.ca
  %i.cb = add i64 %.04835.i.i.i.i, %i.bz
  store ptr null, ptr %0, align 8, !tbaa !138, !alias.scope !840
  br label %.critedge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN5arrow6StatusD2Ev.exit92.i.i.i.i, %.lr.ph.preheader.i.i.i.i
end_hunk_11
begin_hunk_12_@_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl5VisitERKNS_13Decimal64TypeE:bb.a

_ZN5arrow6StatusD2Ev.exit71.lr.ph.i.i.i.i:        ; preds = %.preheader11.i.i.i.i
  %i.bz = zext nneg i32 %i.an to i64              ; 2 uses
  %i.ca = mul nsw i64 %i.bz, %i.x
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0.i.i.i, i64 %i.ca
  %i.cb = add i64 %.04835.i.i.i.i, %i.bz
  store ptr null, ptr %0, align 8, !tbaa !138, !alias.scope !913
  br label %.critedge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN5arrow6StatusD2Ev.exit92.i.i.i.i, %.lr.ph.preheader.i.i.i.i
end_hunk_12
begin_hunk_13_@_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl5VisitERKNS_14Decimal128TypeE:bb.a

_ZN5arrow6StatusD2Ev.exit71.lr.ph.i.i.i.i:        ; preds = %.preheader11.i.i.i.i
  %i.by = zext nneg i32 %i.an to i64              ; 2 uses
  %i.bz = mul nsw i64 %i.by, %i.x
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0.i.i.i, i64 %i.bz
  %i.ca = add i64 %.04835.i.i.i.i, %i.by
  store ptr null, ptr %0, align 8, !tbaa !138, !alias.scope !986
  br label %.critedge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN5arrow6StatusD2Ev.exit92.i.i.i.i, %.lr.ph.preheader.i.i.i.i
end_hunk_13
begin_hunk_14_@_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl5VisitERKNS_14Decimal256TypeE:bb.a

_ZN5arrow6StatusD2Ev.exit71.lr.ph.i.i.i.i:        ; preds = %.preheader11.i.i.i.i
  %i.by = zext nneg i32 %i.an to i64              ; 2 uses
  %i.bz = mul nsw i64 %i.by, %i.x
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0.i.i.i, i64 %i.bz
  %i.ca = add i64 %.04835.i.i.i.i, %i.by
  store ptr null, ptr %0, align 8, !tbaa !138, !alias.scope !1059
  br label %.critedge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN5arrow6StatusD2Ev.exit92.i.i.i.i, %.lr.ph.preheader.i.i.i.i
end_hunk_14
begin_hunk_15_@_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl5VisitERKNS_14DictionaryTypeE:bb.a

_ZN5arrow6StatusD2Ev.exit75.lr.ph.i.i.i.i.i.i:    ; preds = %.preheader11.i.i.i.i.i.i
  %i.dv = zext nneg i32 %i.cu to i64              ; 2 uses
  %.val71.promoted.i.i.i.i.i.i = load i64, ptr %i.x, align 8, !tbaa !57, !noalias !1414
  %i.dw = add i64 %.val71.promoted.i.i.i.i.i.i, %i.dv
  %i.dx = add i64 %.04832.i.i.i.i.i.i, %i.dv
  store i64 %i.dw, ptr %i.x, align 8, !tbaa !57, !noalias !1414
  store ptr null, ptr %58, align 8, !tbaa !138, !alias.scope !1417
  br label %.critedge.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN5arrow6StatusD2Ev.exit83.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i
end_hunk_15
begin_hunk_16_@_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl5VisitERKNS_14DictionaryTypeE:bb.a

_ZN5arrow6StatusD2Ev.exit75.lr.ph.i.i.i.i136.i.i: ; preds = %.preheader11.i.i.i.i135.i.i
  %i.hf = zext nneg i32 %i.ge to i64              ; 2 uses
  %.val71.promoted.i.i.i.i137.i.i = load i64, ptr %i.u, align 8, !tbaa !57, !noalias !1479
  %i.hg = add i64 %.val71.promoted.i.i.i.i137.i.i, %i.hf
  %i.hh = add i64 %.04832.i.i.i.i104.i.i, %i.hf
  store i64 %i.hg, ptr %i.u, align 8, !tbaa !57, !noalias !1479
  store ptr null, ptr %58, align 8, !tbaa !138, !alias.scope !1482
  br label %.critedge.i.i.i.i113.i.i

.lr.ph.i.i.i.i117.i.i:                            ; preds = %_ZN5arrow6StatusD2Ev.exit83.i.i.i.i120.i.i, %.lr.ph.preheader.i.i.i.i115.i.i
end_hunk_16
begin_hunk_17_@_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl5VisitERKNS_14DictionaryTypeE:bb.a

_ZN5arrow6StatusD2Ev.exit75.lr.ph.i.i.i.i202.i.i: ; preds = %.preheader11.i.i.i.i201.i.i
  %i.kp = zext nneg i32 %i.jo to i64              ; 2 uses
  %.val71.promoted.i.i.i.i203.i.i = load i64, ptr %i.r, align 8, !tbaa !57, !noalias !1541
  %i.kq = add i64 %.val71.promoted.i.i.i.i203.i.i, %i.kp
  %i.kr = add i64 %.04832.i.i.i.i170.i.i, %i.kp
  store i64 %i.kq, ptr %i.r, align 8, !tbaa !57, !noalias !1541
  store ptr null, ptr %58, align 8, !tbaa !138, !alias.scope !1544
  br label %.critedge.i.i.i.i179.i.i

.lr.ph.i.i.i.i183.i.i:                            ; preds = %_ZN5arrow6StatusD2Ev.exit83.i.i.i.i186.i.i, %.lr.ph.preheader.i.i.i.i181.i.i
end_hunk_17
begin_hunk_18_@_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl5VisitERKNS_14DictionaryTypeE:bb.a

_ZN5arrow6StatusD2Ev.exit75.lr.ph.i.i.i.i268.i.i: ; preds = %.preheader11.i.i.i.i267.i.i
  %i.nz = zext nneg i32 %i.my to i64              ; 2 uses
  %.val71.promoted.i.i.i.i269.i.i = load i64, ptr %i.o, align 8, !tbaa !57, !noalias !1601
  %i.oa = add i64 %.val71.promoted.i.i.i.i269.i.i, %i.nz
  %i.ob = add i64 %.04832.i.i.i.i236.i.i, %i.nz
  store i64 %i.oa, ptr %i.o, align 8, !tbaa !57, !noalias !1601
  store ptr null, ptr %58, align 8, !tbaa !138, !alias.scope !1604
  br label %.critedge.i.i.i.i245.i.i

.lr.ph.i.i.i.i249.i.i:                            ; preds = %_ZN5arrow6StatusD2Ev.exit83.i.i.i.i252.i.i, %.lr.ph.preheader.i.i.i.i247.i.i
end_hunk_18
begin_hunk_19_@_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl5VisitERKNS_14DictionaryTypeE:bb.a

_ZN5arrow6StatusD2Ev.exit75.lr.ph.i.i.i.i334.i.i: ; preds = %.preheader11.i.i.i.i333.i.i
  %i.rj = zext nneg i32 %i.qi to i64              ; 2 uses
  %.val71.promoted.i.i.i.i335.i.i = load i64, ptr %i.l, align 8, !tbaa !57, !noalias !1661
  %i.rk = add i64 %.val71.promoted.i.i.i.i335.i.i, %i.rj
  %i.rl = add i64 %.04832.i.i.i.i302.i.i, %i.rj
  store i64 %i.rk, ptr %i.l, align 8, !tbaa !57, !noalias !1661
  store ptr null, ptr %58, align 8, !tbaa !138, !alias.scope !1664
  br label %.critedge.i.i.i.i311.i.i

.lr.ph.i.i.i.i315.i.i:                            ; preds = %_ZN5arrow6StatusD2Ev.exit83.i.i.i.i318.i.i, %.lr.ph.preheader.i.i.i.i313.i.i
end_hunk_19
begin_hunk_20_@_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl5VisitERKNS_14DictionaryTypeE:bb.a

_ZN5arrow6StatusD2Ev.exit75.lr.ph.i.i.i.i400.i.i: ; preds = %.preheader11.i.i.i.i399.i.i
  %i.ut = zext nneg i32 %i.ts to i64              ; 2 uses
  %.val71.promoted.i.i.i.i401.i.i = load i64, ptr %i.i, align 8, !tbaa !57, !noalias !1721
  %i.uu = add i64 %.val71.promoted.i.i.i.i401.i.i, %i.ut
  %i.uv = add i64 %.04832.i.i.i.i368.i.i, %i.ut
  store i64 %i.uu, ptr %i.i, align 8, !tbaa !57, !noalias !1721
  store ptr null, ptr %58, align 8, !tbaa !138, !alias.scope !1724
  br label %.critedge.i.i.i.i377.i.i

.lr.ph.i.i.i.i381.i.i:                            ; preds = %_ZN5arrow6StatusD2Ev.exit83.i.i.i.i384.i.i, %.lr.ph.preheader.i.i.i.i379.i.i
end_hunk_20
begin_hunk_21_@_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl5VisitERKNS_14DictionaryTypeE:bb.a

_ZN5arrow6StatusD2Ev.exit75.lr.ph.i.i.i.i466.i.i: ; preds = %.preheader11.i.i.i.i465.i.i
  %i.yc = zext nneg i32 %i.xc to i64              ; 2 uses
  %.val71.promoted.i.i.i.i467.i.i = load i64, ptr %i.f, align 8, !tbaa !57, !noalias !1781
  %i.yd = add i64 %.val71.promoted.i.i.i.i467.i.i, %i.yc
  %i.ye = add i64 %.04832.i.i.i.i434.i.i, %i.yc
  store i64 %i.yd, ptr %i.f, align 8, !tbaa !57, !noalias !1781
  store ptr null, ptr %58, align 8, !tbaa !138, !alias.scope !1784
  br label %.critedge.i.i.i.i443.i.i

.lr.ph.i.i.i.i447.i.i:                            ; preds = %_ZN5arrow6StatusD2Ev.exit83.i.i.i.i450.i.i, %.lr.ph.preheader.i.i.i.i445.i.i
end_hunk_21
begin_hunk_22_@_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl5VisitERKNS_14DictionaryTypeE:bb.a

_ZN5arrow6StatusD2Ev.exit75.lr.ph.i.i.i.i532.i.i: ; preds = %.preheader11.i.i.i.i531.i.i
  %i.abk = zext nneg i32 %i.aak to i64            ; 2 uses
  %.val71.promoted.i.i.i.i533.i.i = load i64, ptr %i.c, align 8, !tbaa !57, !noalias !1841
  %i.abl = add i64 %.val71.promoted.i.i.i.i533.i.i, %i.abk
  %i.abm = add i64 %.04832.i.i.i.i500.i.i, %i.abk
  store i64 %i.abl, ptr %i.c, align 8, !tbaa !57, !noalias !1841
  store ptr null, ptr %58, align 8, !tbaa !138, !alias.scope !1844
  br label %.critedge.i.i.i.i509.i.i

.lr.ph.i.i.i.i513.i.i:                            ; preds = %_ZN5arrow6StatusD2Ev.exit83.i.i.i.i516.i.i, %.lr.ph.preheader.i.i.i.i511.i.i
end_hunk_22
begin_hunk_23_@llvm.vector.reduce.add.v2i64
!245 = distinct !{!245, !243, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!246 = !{!245}
!247 = distinct !{!247, !93}
!248 = !{!249, !251, !232, !221, !218, !208}
!249 = distinct !{!249, !250, !"_ZZN5arrow8internal12_GLOBAL__N_117UTF8DataValidator5VisitINS_10StringTypeEEENS_6StatusERKT_ENKUlvE_clEv: argument 0"}
!250 = distinct !{!250, !"_ZZN5arrow8internal12_GLOBAL__N_117UTF8DataValidator5VisitINS_10StringTypeEEENS_6StatusERKT_ENKUlvE_clEv"}
!251 = distinct !{!251, !252, !"_ZZN5arrow8internal22ArraySpanInlineVisitorINS_10StringTypeEvE11VisitStatusIZNS0_12_GLOBAL__N_117UTF8DataValidator5VisitIS2_EENS_6StatusERKT_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNS7_IS2_EES8_SB_EUlvE_EES8_RKNS_9ArraySpanEOS9_OT0_ENKUlvE_clEv: argument 0"}
!252 = distinct !{!252, !"_ZZN5arrow8internal22ArraySpanInlineVisitorINS_10StringTypeEvE11VisitStatusIZNS0_12_GLOBAL__N_117UTF8DataValidator5VisitIS2_EENS_6StatusERKT_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNS7_IS2_EES8_SB_EUlvE_EES8_RKNS_9ArraySpanEOS9_OT0_ENKUlvE_clEv"}
!253 = !{!251, !232, !221, !218, !208}
!254 = !{!255, !232, !221, !218, !208}
!255 = distinct !{!255, !256, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!256 = distinct !{!256, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!257 = !{!258, !232, !221, !218, !208}
!258 = distinct !{!258, !259, !"_ZZN5arrow8internal22ArraySpanInlineVisitorINS_10StringTypeEvE11VisitStatusIZNS0_12_GLOBAL__N_117UTF8DataValidator5VisitIS2_EENS_6StatusERKT_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNS7_IS2_EES8_SB_EUlvE_EES8_RKNS_9ArraySpanEOS9_OT0_ENKUllE_clEl: argument 0"}
!259 = distinct !{!259, !"_ZZN5arrow8internal22ArraySpanInlineVisitorINS_10StringTypeEvE11VisitStatusIZNS0_12_GLOBAL__N_117UTF8DataValidator5VisitIS2_EENS_6StatusERKT_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNS7_IS2_EES8_SB_EUlvE_EES8_RKNS_9ArraySpanEOS9_OT0_ENKUllE_clEl"}
end_hunk_23
begin_hunk_24_@llvm.vector.reduce.add.v2i64
!315 = distinct !{!315, !313, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!316 = !{!315}
!317 = distinct !{!317, !93}
!318 = !{!319, !321, !302, !295, !292, !289}
!319 = distinct !{!319, !320, !"_ZZN5arrow8internal12_GLOBAL__N_117UTF8DataValidator5VisitINS_14StringViewTypeEEENS_6StatusERKT_ENKUlvE_clEv: argument 0"}
!320 = distinct !{!320, !"_ZZN5arrow8internal12_GLOBAL__N_117UTF8DataValidator5VisitINS_14StringViewTypeEEENS_6StatusERKT_ENKUlvE_clEv"}
!321 = distinct !{!321, !322, !"_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14StringViewTypeEvE11VisitStatusIZNS0_12_GLOBAL__N_117UTF8DataValidator5VisitIS2_EENS_6StatusERKT_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNS7_IS2_EES8_SB_EUlvE_EES8_RKNS_9ArraySpanEOS9_OT0_ENKUlvE_clEv: argument 0"}
!322 = distinct !{!322, !"_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14StringViewTypeEvE11VisitStatusIZNS0_12_GLOBAL__N_117UTF8DataValidator5VisitIS2_EENS_6StatusERKT_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNS7_IS2_EES8_SB_EUlvE_EES8_RKNS_9ArraySpanEOS9_OT0_ENKUlvE_clEv"}
!323 = !{!324, !302, !295, !292, !289}
!324 = distinct !{!324, !325, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!325 = distinct !{!325, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!326 = !{!327, !302, !295, !292, !289}
!327 = distinct !{!327, !328, !"_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14StringViewTypeEvE11VisitStatusIZNS0_12_GLOBAL__N_117UTF8DataValidator5VisitIS2_EENS_6StatusERKT_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNS7_IS2_EES8_SB_EUlvE_EES8_RKNS_9ArraySpanEOS9_OT0_ENKUllE_clEl: argument 0"}
!328 = distinct !{!328, !"_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14StringViewTypeEvE11VisitStatusIZNS0_12_GLOBAL__N_117UTF8DataValidator5VisitIS2_EENS_6StatusERKT_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNS7_IS2_EES8_SB_EUlvE_EES8_RKNS_9ArraySpanEOS9_OT0_ENKUllE_clEl"}
end_hunk_24
begin_hunk_25_@llvm.vector.reduce.add.v2i64
!378 = distinct !{!378, !376, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!379 = !{!378}
!380 = distinct !{!380, !93}
!381 = !{!382, !384, !365, !358, !355, !352}
!382 = distinct !{!382, !383, !"_ZZN5arrow8internal12_GLOBAL__N_117UTF8DataValidator5VisitINS_15LargeStringTypeEEENS_6StatusERKT_ENKUlvE_clEv: argument 0"}
!383 = distinct !{!383, !"_ZZN5arrow8internal12_GLOBAL__N_117UTF8DataValidator5VisitINS_15LargeStringTypeEEENS_6StatusERKT_ENKUlvE_clEv"}
!384 = distinct !{!384, !385, !"_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeStringTypeEvE11VisitStatusIZNS0_12_GLOBAL__N_117UTF8DataValidator5VisitIS2_EENS_6StatusERKT_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNS7_IS2_EES8_SB_EUlvE_EES8_RKNS_9ArraySpanEOS9_OT0_ENKUlvE_clEv: argument 0"}
!385 = distinct !{!385, !"_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeStringTypeEvE11VisitStatusIZNS0_12_GLOBAL__N_117UTF8DataValidator5VisitIS2_EENS_6StatusERKT_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNS7_IS2_EES8_SB_EUlvE_EES8_RKNS_9ArraySpanEOS9_OT0_ENKUlvE_clEv"}
!386 = distinct !{!386, !93, !387, !388}
!387 = !{!"llvm.loop.isvectorized", i32 1}
!388 = !{!"llvm.loop.unroll.runtime.disable"}
!389 = !{!390}
!390 = distinct !{!390, !391}
!391 = distinct !{!391, !"LVerDomain"}
!392 = !{!384, !365, !358, !355, !352}
!393 = !{!394}
!394 = distinct !{!394, !391}
!395 = !{!382, !384, !365, !358, !355, !352, !390}
!396 = distinct !{!396, !397}
!397 = !{!"llvm.loop.unroll.disable"}
!398 = distinct !{!398, !93, !387}
!399 = !{!400, !365, !358, !355, !352}
!400 = distinct !{!400, !401, !"_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeStringTypeEvE11VisitStatusIZNS0_12_GLOBAL__N_117UTF8DataValidator5VisitIS2_EENS_6StatusERKT_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNS7_IS2_EES8_SB_EUlvE_EES8_RKNS_9ArraySpanEOS9_OT0_ENKUllE_clEl: argument 0"}
!401 = distinct !{!401, !"_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeStringTypeEvE11VisitStatusIZNS0_12_GLOBAL__N_117UTF8DataValidator5VisitIS2_EENS_6StatusERKT_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNS7_IS2_EES8_SB_EUlvE_EES8_RKNS_9ArraySpanEOS9_OT0_ENKUllE_clEl"}
!402 = !{!403, !400, !365, !358, !355, !352}
!403 = distinct !{!403, !404, !"_ZZN5arrow8internal12_GLOBAL__N_117UTF8DataValidator5VisitINS_15LargeStringTypeEEENS_6StatusERKT_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESC_: argument 0"}
!404 = distinct !{!404, !"_ZZN5arrow8internal12_GLOBAL__N_117UTF8DataValidator5VisitINS_15LargeStringTypeEEENS_6StatusERKT_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESC_"}
!405 = !{!406, !365, !358, !355, !352}
!406 = distinct !{!406, !407, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0:thread"}
!407 = distinct !{!407, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!408 = !{!409, !365, !358, !355, !352}
!409 = distinct !{!409, !407, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!410 = !{!409}
!411 = !{!412, !365, !358, !355, !352}
!412 = distinct !{!412, !413, !"_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeStringTypeEvE11VisitStatusIZNS0_12_GLOBAL__N_117UTF8DataValidator5VisitIS2_EENS_6StatusERKT_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNS7_IS2_EES8_SB_EUlvE_EES8_RKNS_9ArraySpanEOS9_OT0_ENKUlvE_clEv: argument 0"}
!413 = distinct !{!413, !"_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeStringTypeEvE11VisitStatusIZNS0_12_GLOBAL__N_117UTF8DataValidator5VisitIS2_EENS_6StatusERKT_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNS7_IS2_EES8_SB_EUlvE_EES8_RKNS_9ArraySpanEOS9_OT0_ENKUlvE_clEv"}
!414 = !{!415, !412, !365, !358, !355, !352}
!415 = distinct !{!415, !416, !"_ZZN5arrow8internal12_GLOBAL__N_117UTF8DataValidator5VisitINS_15LargeStringTypeEEENS_6StatusERKT_ENKUlvE_clEv: argument 0"}
!416 = distinct !{!416, !"_ZZN5arrow8internal12_GLOBAL__N_117UTF8DataValidator5VisitINS_15LargeStringTypeEEENS_6StatusERKT_ENKUlvE_clEv"}
!417 = !{!418, !365, !358, !355, !352}
!418 = distinct !{!418, !419, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!419 = distinct !{!419, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!420 = distinct !{!420, !93}
!421 = !{!422, !365, !358, !355, !352}
!422 = distinct !{!422, !423, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!423 = distinct !{!423, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!424 = distinct !{!424, !93}
!425 = !{!426, !365, !358, !355, !352}
!426 = distinct !{!426, !427, !"_ZN5arrow6Status2OKEv: argument 0"}
end_hunk_25
begin_hunk_26_@llvm.vector.reduce.add.v2i64
!1412 = !{!1411}
!1413 = distinct !{!1413, !93}
!1414 = !{!1415, !1392, !1388, !1385, !1381, !1378, !1372}
!1415 = distinct !{!1415, !1416, !"_ZZN5arrow8internal12_GLOBAL__N_113BoundsChecker5VisitINS_8Int8TypeEEENSt9enable_ifIXsr15is_integer_typeIT_EE5valueENS_6StatusEE4typeERKS6_ENKUlvE_clEv: argument 0"}
!1416 = distinct !{!1416, !"_ZZN5arrow8internal12_GLOBAL__N_113BoundsChecker5VisitINS_8Int8TypeEEENSt9enable_ifIXsr15is_integer_typeIT_EE5valueENS_6StatusEE4typeERKS6_ENKUlvE_clEv"}
!1417 = !{!1418, !1392, !1388, !1385, !1381, !1378, !1372}
!1418 = distinct !{!1418, !1419, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!1419 = distinct !{!1419, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!1420 = !{!1421, !1392, !1388, !1385, !1381, !1378, !1372}
!1421 = distinct !{!1421, !1422, !"_ZZN5arrow8internal22ArraySpanInlineVisitorINS_8Int8TypeEvE11VisitStatusIZNS0_12_GLOBAL__N_113BoundsChecker5VisitIS2_EENSt9enable_ifIXsr15is_integer_typeIT_EE5valueENS_6StatusEE4typeERKS9_EUlaE_ZNS7_IS2_EESC_SE_EUlvE_EESA_RKNS_9ArraySpanEOS9_OT0_ENKUllE_clEl: argument 0"}
!1422 = distinct !{!1422, !"_ZZN5arrow8internal22ArraySpanInlineVisitorINS_8Int8TypeEvE11VisitStatusIZNS0_12_GLOBAL__N_113BoundsChecker5VisitIS2_EENSt9enable_ifIXsr15is_integer_typeIT_EE5valueENS_6StatusEE4typeERKS9_EUlaE_ZNS7_IS2_EESC_SE_EUlvE_EESA_RKNS_9ArraySpanEOS9_OT0_ENKUllE_clEl"}
end_hunk_26
begin_hunk_27_@llvm.vector.reduce.add.v2i64
!1477 = !{!1475}
!1478 = distinct !{!1478, !93}
!1479 = !{!1480, !1460, !1456, !1453, !1449, !1378, !1372}
!1480 = distinct !{!1480, !1481, !"_ZZN5arrow8internal12_GLOBAL__N_113BoundsChecker5VisitINS_9UInt8TypeEEENSt9enable_ifIXsr15is_integer_typeIT_EE5valueENS_6StatusEE4typeERKS6_ENKUlvE_clEv: argument 0"}
!1481 = distinct !{!1481, !"_ZZN5arrow8internal12_GLOBAL__N_113BoundsChecker5VisitINS_9UInt8TypeEEENSt9enable_ifIXsr15is_integer_typeIT_EE5valueENS_6StatusEE4typeERKS6_ENKUlvE_clEv"}
!1482 = !{!1483, !1460, !1456, !1453, !1449, !1378, !1372}
!1483 = distinct !{!1483, !1484, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!1484 = distinct !{!1484, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!1485 = !{!1486, !1460, !1456, !1453, !1449, !1378, !1372}
!1486 = distinct !{!1486, !1487, !"_ZZN5arrow8internal22ArraySpanInlineVisitorINS_9UInt8TypeEvE11VisitStatusIZNS0_12_GLOBAL__N_113BoundsChecker5VisitIS2_EENSt9enable_ifIXsr15is_integer_typeIT_EE5valueENS_6StatusEE4typeERKS9_EUlhE_ZNS7_IS2_EESC_SE_EUlvE_EESA_RKNS_9ArraySpanEOS9_OT0_ENKUllE_clEl: argument 0"}
!1487 = distinct !{!1487, !"_ZZN5arrow8internal22ArraySpanInlineVisitorINS_9UInt8TypeEvE11VisitStatusIZNS0_12_GLOBAL__N_113BoundsChecker5VisitIS2_EENSt9enable_ifIXsr15is_integer_typeIT_EE5valueENS_6StatusEE4typeERKS9_EUlhE_ZNS7_IS2_EESC_SE_EUlvE_EESA_RKNS_9ArraySpanEOS9_OT0_ENKUllE_clEl"}
end_hunk_27
begin_hunk_28_@llvm.vector.reduce.add.v2i64
!1539 = !{!1537}
!1540 = distinct !{!1540, !93}
!1541 = !{!1542, !1520, !1516, !1513, !1509, !1378, !1372}
!1542 = distinct !{!1542, !1543, !"_ZZN5arrow8internal12_GLOBAL__N_113BoundsChecker5VisitINS_9Int16TypeEEENSt9enable_ifIXsr15is_integer_typeIT_EE5valueENS_6StatusEE4typeERKS6_ENKUlvE_clEv: argument 0"}
!1543 = distinct !{!1543, !"_ZZN5arrow8internal12_GLOBAL__N_113BoundsChecker5VisitINS_9Int16TypeEEENSt9enable_ifIXsr15is_integer_typeIT_EE5valueENS_6StatusEE4typeERKS6_ENKUlvE_clEv"}
!1544 = !{!1545, !1520, !1516, !1513, !1509, !1378, !1372}
!1545 = distinct !{!1545, !1546, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!1546 = distinct !{!1546, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!1547 = !{!1548, !1520, !1516, !1513, !1509, !1378, !1372}
!1548 = distinct !{!1548, !1549, !"_ZZN5arrow8internal22ArraySpanInlineVisitorINS_9Int16TypeEvE11VisitStatusIZNS0_12_GLOBAL__N_113BoundsChecker5VisitIS2_EENSt9enable_ifIXsr15is_integer_typeIT_EE5valueENS_6StatusEE4typeERKS9_EUlsE_ZNS7_IS2_EESC_SE_EUlvE_EESA_RKNS_9ArraySpanEOS9_OT0_ENKUllE_clEl: argument 0"}
!1549 = distinct !{!1549, !"_ZZN5arrow8internal22ArraySpanInlineVisitorINS_9Int16TypeEvE11VisitStatusIZNS0_12_GLOBAL__N_113BoundsChecker5VisitIS2_EENSt9enable_ifIXsr15is_integer_typeIT_EE5valueENS_6StatusEE4typeERKS9_EUlsE_ZNS7_IS2_EESC_SE_EUlvE_EESA_RKNS_9ArraySpanEOS9_OT0_ENKUllE_clEl"}
end_hunk_28
begin_hunk_29_@llvm.vector.reduce.add.v2i64
!1599 = !{!1597}
!1600 = distinct !{!1600, !93}
!1601 = !{!1602, !1582, !1578, !1575, !1571, !1378, !1372}
!1602 = distinct !{!1602, !1603, !"_ZZN5arrow8internal12_GLOBAL__N_113BoundsChecker5VisitINS_10UInt16TypeEEENSt9enable_ifIXsr15is_integer_typeIT_EE5valueENS_6StatusEE4typeERKS6_ENKUlvE_clEv: argument 0"}
!1603 = distinct !{!1603, !"_ZZN5arrow8internal12_GLOBAL__N_113BoundsChecker5VisitINS_10UInt16TypeEEENSt9enable_ifIXsr15is_integer_typeIT_EE5valueENS_6StatusEE4typeERKS6_ENKUlvE_clEv"}
!1604 = !{!1605, !1582, !1578, !1575, !1571, !1378, !1372}
!1605 = distinct !{!1605, !1606, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!1606 = distinct !{!1606, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!1607 = !{!1608, !1582, !1578, !1575, !1571, !1378, !1372}
!1608 = distinct !{!1608, !1609, !"_ZZN5arrow8internal22ArraySpanInlineVisitorINS_10UInt16TypeEvE11VisitStatusIZNS0_12_GLOBAL__N_113BoundsChecker5VisitIS2_EENSt9enable_ifIXsr15is_integer_typeIT_EE5valueENS_6StatusEE4typeERKS9_EUltE_ZNS7_IS2_EESC_SE_EUlvE_EESA_RKNS_9ArraySpanEOS9_OT0_ENKUllE_clEl: argument 0"}
!1609 = distinct !{!1609, !"_ZZN5arrow8internal22ArraySpanInlineVisitorINS_10UInt16TypeEvE11VisitStatusIZNS0_12_GLOBAL__N_113BoundsChecker5VisitIS2_EENSt9enable_ifIXsr15is_integer_typeIT_EE5valueENS_6StatusEE4typeERKS9_EUltE_ZNS7_IS2_EESC_SE_EUlvE_EESA_RKNS_9ArraySpanEOS9_OT0_ENKUllE_clEl"}
end_hunk_29
begin_hunk_30_@llvm.vector.reduce.add.v2i64
!1659 = !{!1657}
!1660 = distinct !{!1660, !93}
!1661 = !{!1662, !1642, !1638, !1635, !1631, !1378, !1372}
!1662 = distinct !{!1662, !1663, !"_ZZN5arrow8internal12_GLOBAL__N_113BoundsChecker5VisitINS_9Int32TypeEEENSt9enable_ifIXsr15is_integer_typeIT_EE5valueENS_6StatusEE4typeERKS6_ENKUlvE_clEv: argument 0"}
!1663 = distinct !{!1663, !"_ZZN5arrow8internal12_GLOBAL__N_113BoundsChecker5VisitINS_9Int32TypeEEENSt9enable_ifIXsr15is_integer_typeIT_EE5valueENS_6StatusEE4typeERKS6_ENKUlvE_clEv"}
!1664 = !{!1665, !1642, !1638, !1635, !1631, !1378, !1372}
!1665 = distinct !{!1665, !1666, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!1666 = distinct !{!1666, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!1667 = !{!1668, !1642, !1638, !1635, !1631, !1378, !1372}
!1668 = distinct !{!1668, !1669, !"_ZZN5arrow8internal22ArraySpanInlineVisitorINS_9Int32TypeEvE11VisitStatusIZNS0_12_GLOBAL__N_113BoundsChecker5VisitIS2_EENSt9enable_ifIXsr15is_integer_typeIT_EE5valueENS_6StatusEE4typeERKS9_EUliE_ZNS7_IS2_EESC_SE_EUlvE_EESA_RKNS_9ArraySpanEOS9_OT0_ENKUllE_clEl: argument 0"}
!1669 = distinct !{!1669, !"_ZZN5arrow8internal22ArraySpanInlineVisitorINS_9Int32TypeEvE11VisitStatusIZNS0_12_GLOBAL__N_113BoundsChecker5VisitIS2_EENSt9enable_ifIXsr15is_integer_typeIT_EE5valueENS_6StatusEE4typeERKS9_EUliE_ZNS7_IS2_EESC_SE_EUlvE_EESA_RKNS_9ArraySpanEOS9_OT0_ENKUllE_clEl"}
end_hunk_30
begin_hunk_31_@llvm.vector.reduce.add.v2i64
!1719 = !{!1717}
!1720 = distinct !{!1720, !93}
!1721 = !{!1722, !1702, !1698, !1695, !1691, !1378, !1372}
!1722 = distinct !{!1722, !1723, !"_ZZN5arrow8internal12_GLOBAL__N_113BoundsChecker5VisitINS_10UInt32TypeEEENSt9enable_ifIXsr15is_integer_typeIT_EE5valueENS_6StatusEE4typeERKS6_ENKUlvE_clEv: argument 0"}
!1723 = distinct !{!1723, !"_ZZN5arrow8internal12_GLOBAL__N_113BoundsChecker5VisitINS_10UInt32TypeEEENSt9enable_ifIXsr15is_integer_typeIT_EE5valueENS_6StatusEE4typeERKS6_ENKUlvE_clEv"}
!1724 = !{!1725, !1702, !1698, !1695, !1691, !1378, !1372}
!1725 = distinct !{!1725, !1726, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!1726 = distinct !{!1726, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!1727 = !{!1728, !1702, !1698, !1695, !1691, !1378, !1372}
!1728 = distinct !{!1728, !1729, !"_ZZN5arrow8internal22ArraySpanInlineVisitorINS_10UInt32TypeEvE11VisitStatusIZNS0_12_GLOBAL__N_113BoundsChecker5VisitIS2_EENSt9enable_ifIXsr15is_integer_typeIT_EE5valueENS_6StatusEE4typeERKS9_EUljE_ZNS7_IS2_EESC_SE_EUlvE_EESA_RKNS_9ArraySpanEOS9_OT0_ENKUllE_clEl: argument 0"}
!1729 = distinct !{!1729, !"_ZZN5arrow8internal22ArraySpanInlineVisitorINS_10UInt32TypeEvE11VisitStatusIZNS0_12_GLOBAL__N_113BoundsChecker5VisitIS2_EENSt9enable_ifIXsr15is_integer_typeIT_EE5valueENS_6StatusEE4typeERKS9_EUljE_ZNS7_IS2_EESC_SE_EUlvE_EESA_RKNS_9ArraySpanEOS9_OT0_ENKUllE_clEl"}
end_hunk_31
begin_hunk_32_@llvm.vector.reduce.add.v2i64
!1779 = !{!1777}
!1780 = distinct !{!1780, !93}
!1781 = !{!1782, !1762, !1758, !1755, !1751, !1378, !1372}
!1782 = distinct !{!1782, !1783, !"_ZZN5arrow8internal12_GLOBAL__N_113BoundsChecker5VisitINS_9Int64TypeEEENSt9enable_ifIXsr15is_integer_typeIT_EE5valueENS_6StatusEE4typeERKS6_ENKUlvE_clEv: argument 0"}
!1783 = distinct !{!1783, !"_ZZN5arrow8internal12_GLOBAL__N_113BoundsChecker5VisitINS_9Int64TypeEEENSt9enable_ifIXsr15is_integer_typeIT_EE5valueENS_6StatusEE4typeERKS6_ENKUlvE_clEv"}
!1784 = !{!1785, !1762, !1758, !1755, !1751, !1378, !1372}
!1785 = distinct !{!1785, !1786, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!1786 = distinct !{!1786, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!1787 = !{!1788, !1762, !1758, !1755, !1751, !1378, !1372}
!1788 = distinct !{!1788, !1789, !"_ZZN5arrow8internal22ArraySpanInlineVisitorINS_9Int64TypeEvE11VisitStatusIZNS0_12_GLOBAL__N_113BoundsChecker5VisitIS2_EENSt9enable_ifIXsr15is_integer_typeIT_EE5valueENS_6StatusEE4typeERKS9_EUllE_ZNS7_IS2_EESC_SE_EUlvE_EESA_RKNS_9ArraySpanEOS9_OT0_ENKUllE_clEl: argument 0"}
!1789 = distinct !{!1789, !"_ZZN5arrow8internal22ArraySpanInlineVisitorINS_9Int64TypeEvE11VisitStatusIZNS0_12_GLOBAL__N_113BoundsChecker5VisitIS2_EENSt9enable_ifIXsr15is_integer_typeIT_EE5valueENS_6StatusEE4typeERKS9_EUllE_ZNS7_IS2_EESC_SE_EUlvE_EESA_RKNS_9ArraySpanEOS9_OT0_ENKUllE_clEl"}
end_hunk_32
begin_hunk_33_@llvm.vector.reduce.add.v2i64
!1839 = !{!1837}
!1840 = distinct !{!1840, !93}
!1841 = !{!1842, !1822, !1818, !1815, !1811, !1378, !1372}
!1842 = distinct !{!1842, !1843, !"_ZZN5arrow8internal12_GLOBAL__N_113BoundsChecker5VisitINS_10UInt64TypeEEENSt9enable_ifIXsr15is_integer_typeIT_EE5valueENS_6StatusEE4typeERKS6_ENKUlvE_clEv: argument 0"}
!1843 = distinct !{!1843, !"_ZZN5arrow8internal12_GLOBAL__N_113BoundsChecker5VisitINS_10UInt64TypeEEENSt9enable_ifIXsr15is_integer_typeIT_EE5valueENS_6StatusEE4typeERKS6_ENKUlvE_clEv"}
!1844 = !{!1845, !1822, !1818, !1815, !1811, !1378, !1372}
!1845 = distinct !{!1845, !1846, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!1846 = distinct !{!1846, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!1847 = !{!1848, !1822, !1818, !1815, !1811, !1378, !1372}
!1848 = distinct !{!1848, !1849, !"_ZZN5arrow8internal22ArraySpanInlineVisitorINS_10UInt64TypeEvE11VisitStatusIZNS0_12_GLOBAL__N_113BoundsChecker5VisitIS2_EENSt9enable_ifIXsr15is_integer_typeIT_EE5valueENS_6StatusEE4typeERKS9_EUlmE_ZNS7_IS2_EESC_SE_EUlvE_EESA_RKNS_9ArraySpanEOS9_OT0_ENKUllE_clEl: argument 0"}
!1849 = distinct !{!1849, !"_ZZN5arrow8internal22ArraySpanInlineVisitorINS_10UInt64TypeEvE11VisitStatusIZNS0_12_GLOBAL__N_113BoundsChecker5VisitIS2_EENSt9enable_ifIXsr15is_integer_typeIT_EE5valueENS_6StatusEE4typeERKS9_EUlmE_ZNS7_IS2_EESC_SE_EUlvE_EESA_RKNS_9ArraySpanEOS9_OT0_ENKUllE_clEl"}
end_hunk_33
