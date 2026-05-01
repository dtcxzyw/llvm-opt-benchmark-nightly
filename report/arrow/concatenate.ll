inline.NumInlined: 2830
inline.NumDeleted: 1091
begin_hunk_0_@_ZNO5arrow12_GLOBAL__N_115ConcatenateImpl11ConcatenateEPSt10shared_ptrINS_9ArrayDataEEPNS0_10ErrorHintsE:bb.a
  %39 = alloca %"class.std::vector.35", align 16  ; 10 uses
  %40 = alloca %"class.arrow::Result.57", align 8 ; 13 uses
  %41 = alloca %"class.arrow::Result.102", align 8 ; 15 uses
  %42 = alloca %"class.std::vector.35", align 8   ; 9 uses
  %43 = alloca %"class.arrow::Result.57", align 8 ; 16 uses
  %44 = alloca %"class.arrow::Result.144", align 8 ; 14 uses
  %45 = alloca %"class.std::vector.9", align 16   ; 12 uses
end_hunk_0
begin_hunk_1_@_ZNO5arrow12_GLOBAL__N_115ConcatenateImpl11ConcatenateEPSt10shared_ptrINS_9ArrayDataEEPNS0_10ErrorHintsE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #21, !noalias !499
  call void @llvm.experimental.noalias.scope.decl(metadata !564)
  call void @llvm.experimental.noalias.scope.decl(metadata !567)
  %i.czs = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 2 uses
  %118 = load ptr, ptr %i.czs, align 8, !tbaa !116, !noalias !570 ; 2 uses
  store ptr %118, ptr %42, align 8, !tbaa !116, !alias.scope !571, !noalias !499
  %119 = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 2 uses
  %i.czt = getelementptr inbounds nuw i8, ptr %41, i64 16
  %i.czu = getelementptr inbounds nuw i8, ptr %42, i64 16
  %120 = load <2 x ptr>, ptr %i.czt, align 8, !tbaa !203, !noalias !570
  store <2 x ptr> %120, ptr %119, align 8, !tbaa !203, !alias.scope !571, !noalias !499
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.czs, i8 0, i64 24, i1 false), !noalias !570
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #21, !noalias !499
  call void @llvm.experimental.noalias.scope.decl(metadata !572)
  %i.czv = load ptr, ptr %i.cjj, align 8, !tbaa !42, !noalias !572
end_hunk_1
begin_hunk_2_@_ZNO5arrow12_GLOBAL__N_115ConcatenateImpl11ConcatenateEPSt10shared_ptrINS_9ArrayDataEEPNS0_10ErrorHintsE:bb.a
  %.077153.i.i = phi ptr [ %i.dbh, %.lr.ph156.i.i ], [ %i.dgk, %bb.ahj ] ; 4 uses
  %.079152.i.i = phi i64 [ 0, %.lr.ph156.i.i ], [ %i.dgl, %bb.ahj ] ; 3 uses
  %i.dbn = getelementptr inbounds nuw [16 x i8], ptr %i.dbm, i64 %.079152.i.i ; 3 uses
  %i.dbo = getelementptr inbounds nuw [16 x i8], ptr %118, i64 %.079152.i.i
  %i.dbp = load ptr, ptr %i.dbo, align 8, !tbaa !164, !noalias !572 ; 2 uses
  %i.dbq = getelementptr inbounds nuw i8, ptr %i.dbp, i64 9
  %i.dbr = load i8, ptr %i.dbq, align 1, !tbaa !167, !range !65, !noalias !572, !noundef !66
end_hunk_2
begin_hunk_3_@_ZNO5arrow12_GLOBAL__N_115ConcatenateImpl11ConcatenateEPSt10shared_ptrINS_9ArrayDataEEPNS0_10ErrorHintsE:bb.a

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit96.i: ; preds = %bb.aii, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i87.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i93.i
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #21, !noalias !499
  %i.djo = load ptr, ptr %42, align 8, !tbaa !116, !noalias !499 ; 3 uses
  %i.djp = load ptr, ptr %119, align 8, !tbaa !113, !noalias !499 ; 2 uses
  %.not4.i.i.i.i409 = icmp eq ptr %i.djo, %i.djp
  br i1 %.not4.i.i.i.i409, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i.i417, label %.lr.ph.i.i.i.i410

end_hunk_3
begin_hunk_4_@_ZNO5arrow12_GLOBAL__N_115ConcatenateImpl11ConcatenateEPSt10shared_ptrINS_9ArrayDataEEPNS0_10ErrorHintsE:bb.a
  br i1 %.not.i.i.i98.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i416, label %.lr.ph.i.i.i.i410, !llvm.loop !118

_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i416: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i415
  %.pr.i99.i = load ptr, ptr %42, align 8, !tbaa !116, !noalias !499
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i.i417

_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i.i417: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i416, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit96.i
end_hunk_4
begin_hunk_5_@_ZNO5arrow12_GLOBAL__N_115ConcatenateImpl11ConcatenateEPSt10shared_ptrINS_9ArrayDataEEPNS0_10ErrorHintsE:bb.a
  br i1 %.not.i.i1.i.i418, label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit.i419, label %bb.aip

bb.aip:                                           ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i.i417
  %i.dkj = load ptr, ptr %i.czu, align 8, !tbaa !206, !noalias !499
  %i.dkk = ptrtoint ptr %i.dkj to i64
  %i.dkl = ptrtoint ptr %i.dki to i64
  %i.dkm = sub i64 %i.dkk, %i.dkl
end_hunk_5
