begin_hunk_0

.preheader.i:                                     ; preds = %_ZN13CRecordVectorIN8NArchive4NCab7CMvItemEE11SortRefDownEPS2_iiPFiPKS2_S6_PvES7_.exit.i
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.r ; 2 uses
  %.sroa.0.0.copyload40.i = load <2 x i32>, ptr %i.fk, align 4 ; 3 uses
  %i.fl = load i64, ptr %i.p, align 4
  store i64 %i.fl, ptr %i.fk, align 4
  store <2 x i32> %.sroa.0.0.copyload40.i, ptr %i.p, align 4
  %i.fm = icmp eq i32 %i.m, 2
  br i1 %i.fm, label %_ZN13CRecordVectorIN8NArchive4NCab7CMvItemEE4SortEPFiPKS2_S5_PvES6_.exit, label %.lr.ph.i21.preheader.i

.lr.ph.i21.preheader.i:                           ; preds = %.preheader.i, %_ZN13CRecordVectorIN8NArchive4NCab7CMvItemEE11SortRefDownEPS2_iiPFiPKS2_S6_PvES7_.exit31.i
  %.sroa.090.0 = phi <2 x i32> [ %.sroa.0.0.copyload.i, %_ZN13CRecordVectorIN8NArchive4NCab7CMvItemEE11SortRefDownEPS2_iiPFiPKS2_S6_PvES7_.exit31.i ], [ %.sroa.0.0.copyload40.i, %.preheader.i ] ; 3 uses
  %indvars.iv47.i = phi i64 [ %indvars.iv.next50.i, %_ZN13CRecordVectorIN8NArchive4NCab7CMvItemEE11SortRefDownEPS2_iiPFiPKS2_S6_PvES7_.exit31.i ], [ %i.r, %.preheader.i ] ; 3 uses
  %indvars.iv.next50.i = add nsw i64 %indvars.iv47.i, -1 ; 3 uses
  %.sroa.090.0.vec.extract = extractelement <2 x i32> %.sroa.090.0, i64 0 ; 3 uses
  %1 = sext i32 %.sroa.090.0.vec.extract to i64   ; 2 uses
  %.sroa.090.4.vec.extract = extractelement <2 x i32> %.sroa.090.0, i64 1 ; 2 uses
  %2 = sext i32 %.sroa.090.4.vec.extract to i64
  br label %.lr.ph.i21.i

.lr.ph.i21.i:                                     ; preds = %_ZN8NArchive4NCabL14CompareMvItemsEPKNS0_7CMvItemES3_Pv.exit.thread99, %.lr.ph.i21.preheader.i
  %i.fn = phi i32 [ %i.ko, %_ZN8NArchive4NCabL14CompareMvItemsEPKNS0_7CMvItemES3_Pv.exit.thread99 ], [ 2, %.lr.ph.i21.preheader.i ] ; 3 uses
  %.02632.i22.i = phi i32 [ %.025.i23.i, %_ZN8NArchive4NCabL14CompareMvItemsEPKNS0_7CMvItemES3_Pv.exit.thread99 ], [ 1, %.lr.ph.i21.preheader.i ] ; 2 uses
  %i.fo = sext i32 %i.fn to i64                   ; 3 uses
  %i.fp = icmp sgt i64 %indvars.iv.next50.i, %i.fo
  %.pre142 = load ptr, ptr %i.t, align 8, !tbaa !77 ; 4 uses
  br i1 %i.fp, label %bb.ab, label %bb.an

end_hunk_0
begin_hunk_1
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN8NArchive4NCabL14CompareMvItemsEPKNS0_7CMvItemES3_Pv.exit58 ], [ %i.fo, %.lr.ph.i21.i ] ; 2 uses
  %.025.i23.i = phi i32 [ %spec.select.i30.i, %_ZN8NArchive4NCabL14CompareMvItemsEPKNS0_7CMvItemES3_Pv.exit58 ], [ %i.fn, %.lr.ph.i21.i ] ; 2 uses
  %i.if = getelementptr inbounds [8 x i8], ptr %i.q, i64 %.pre-phi.i ; 3 uses
  %i.ig = getelementptr inbounds [8 x i8], ptr %.pre142, i64 %1
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !79 ; 2 uses
  %i.ii = load i32, ptr %i.if, align 4, !tbaa !88 ; 3 uses
  %i.ij = sext i32 %i.ii to i64                   ; 2 uses
end_hunk_1
begin_hunk_2
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !79 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.ih, i64 144
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !77
  %i.io = getelementptr inbounds [8 x i8], ptr %i.in, i64 %2
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !79 ; 4 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.if, i64 4
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !90 ; 2 uses
end_hunk_2
begin_hunk_3

bb.ap:                                            ; preds = %bb.ao
  %i.jf = load ptr, ptr %i.u, align 8, !tbaa !77  ; 2 uses
  %i.jg = getelementptr inbounds [4 x i8], ptr %i.jf, i64 %1
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !4
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ih, i64 108
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !78
end_hunk_3
begin_hunk_4
  br i1 %.not56.i, label %bb.ay, label %_ZN8NArchive4NCabL14CompareMvItemsEPKNS0_7CMvItemES3_Pv.exit

bb.ay:                                            ; preds = %bb.ax
  %.not57.i = icmp eq i32 %.sroa.090.0.vec.extract, %i.ii
  %3 = icmp sge i32 %.sroa.090.0.vec.extract, %i.ii
  %4 = icmp sge i32 %.sroa.090.4.vec.extract, %i.ir
  %spec.select107 = select i1 %.not57.i, i1 %4, i1 %3
  br i1 %spec.select107, label %.._crit_edge.loopexit_crit_edge.i28.i, label %_ZN8NArchive4NCabL14CompareMvItemsEPKNS0_7CMvItemES3_Pv.exit.thread99

_ZN8NArchive4NCabL14CompareMvItemsEPKNS0_7CMvItemES3_Pv.exit: ; preds = %_ZNK8NArchive4NCab13CMvDatabaseEx14GetFolderIndexEPKNS0_7CMvItemE.exit61.i, %bb.aw, %bb.ax
end_hunk_4
begin_hunk_5
_ZN13CRecordVectorIN8NArchive4NCab7CMvItemEE11SortRefDownEPS2_iiPFiPKS2_S6_PvES7_.exit31.i: ; preds = %_ZN8NArchive4NCabL14CompareMvItemsEPKNS0_7CMvItemES3_Pv.exit.thread99, %.._crit_edge.loopexit_crit_edge.i28.i
  %.pre35.pre-phi.i25.i = phi i64 [ %.pre36.i29.i, %.._crit_edge.loopexit_crit_edge.i28.i ], [ %.pre-phi.i, %_ZN8NArchive4NCabL14CompareMvItemsEPKNS0_7CMvItemES3_Pv.exit.thread99 ]
  %i.kq = getelementptr inbounds [8 x i8], ptr %i.q, i64 %.pre35.pre-phi.i25.i
  store <2 x i32> %.sroa.090.0, ptr %i.kq, align 4
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next50.i ; 2 uses
  %.sroa.0.0.copyload.i = load <2 x i32>, ptr %i.kr, align 4 ; 3 uses
  %i.ks = load i64, ptr %i.p, align 4
  store i64 %i.ks, ptr %i.kr, align 4
  store <2 x i32> %.sroa.0.0.copyload.i, ptr %i.p, align 4
  %i.kt = icmp slt i64 %indvars.iv47.i, 4
  br i1 %i.kt, label %_ZN13CRecordVectorIN8NArchive4NCab7CMvItemEE4SortEPFiPKS2_S5_PvES6_.exit, label %.lr.ph.i21.preheader.i, !llvm.loop !92

_ZN13CRecordVectorIN8NArchive4NCab7CMvItemEE4SortEPFiPKS2_S5_PvES6_.exit: ; preds = %_ZN13CRecordVectorIN8NArchive4NCab7CMvItemEE11SortRefDownEPS2_iiPFiPKS2_S6_PvES7_.exit31.i, %.preheader.i
  %.lcssa.in.i = phi <2 x i32> [ %.sroa.0.0.copyload40.i, %.preheader.i ], [ %.sroa.0.0.copyload.i, %_ZN13CRecordVectorIN8NArchive4NCab7CMvItemEE11SortRefDownEPS2_iiPFiPKS2_S6_PvES7_.exit31.i ]
  store <2 x i32> %.lcssa.in.i, ptr %i.p, align 4
  %.pre143 = load i32, ptr %i.l, align 4, !tbaa !78
  %i.ku = icmp sgt i32 %.pre143, 1
  br i1 %i.ku, label %.lr.ph121, label %._crit_edge122
end_hunk_5
