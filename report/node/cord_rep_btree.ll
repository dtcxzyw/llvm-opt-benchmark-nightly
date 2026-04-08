inline.NumInlined: 774
inline.NumDeleted: 203
begin_hunk_0_@_ZN4absl13cord_internal12CordRepBtree7AddDataILNS1_8EdgeTypeE0EEEPS1_S4_St17basic_string_viewIcSt11char_traitsIcEEm:bb.a
  br label %bb.w

bb.w:                                             ; preds = %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE6UnwindILb0EEEPS3_S7_imNS3_8OpResultE.exit92, %bb.v
  %.sroa.0.1 = phi i64 [ %.sroa.0.0, %bb.v ], [ %.sroa.0.2, %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE6UnwindILb0EEEPS3_S7_imNS3_8OpResultE.exit92 ] ; 12 uses
  %.064 = phi i32 [ %i.d, %bb.v ], [ %.165, %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE6UnwindILb0EEEPS3_S7_imNS3_8OpResultE.exit92 ] ; 9 uses
  %.262 = phi ptr [ %.161, %bb.v ], [ %.363, %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE6UnwindILb0EEEPS3_S7_imNS3_8OpResultE.exit92 ] ; 5 uses
  %.2 = phi ptr [ %.1, %bb.v ], [ %.3, %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE6UnwindILb0EEEPS3_S7_imNS3_8OpResultE.exit92 ]
  %5 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #16 ; 11 uses
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 2, ptr %6, align 4
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i8 3, ptr %7, align 4
  %8 = getelementptr inbounds nuw i8, ptr %5, i64 13
  store i8 0, ptr %8, align 1
  %9 = getelementptr inbounds nuw i8, ptr %5, i64 15
  store i8 6, ptr %9, align 1
  %.not69.a = icmp eq i64 %.sroa.0.1, 0
  br i1 %.not69.a, label %_ZN4absl13cord_internal12CordRepBtree7NewLeafILNS1_8EdgeTypeE0EEEPS1_St17basic_string_viewIcSt11char_traitsIcEEm.exit, label %.lr.ph.i75

.lr.ph.i75:                                       ; preds = %bb.w
  %10 = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %11

11:                                               ; preds = %11, %.lr.ph.i75
  %.029.i = phi i64 [ 0, %.lr.ph.i75 ], [ %32, %11 ]
  %.01928.i = phi i64 [ 6, %.lr.ph.i75 ], [ %33, %11 ]
  %.sroa.0.027.i = phi i64 [ %.sroa.0.1, %.lr.ph.i75 ], [ %36, %11 ] ; 3 uses
  %12 = add i64 %.sroa.0.027.i, %3                ; 2 uses
  %13 = icmp ult i64 %12, 20
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %12, i64 4083)
  %14 = add nuw nsw i64 %spec.store.select.i.i.i, 13
  %.0.i.i.i = select i1 %13, i64 32, i64 %14      ; 2 uses
  %15 = icmp samesign ult i64 %.0.i.i.i, 513      ; 2 uses
  %.neg.i.i.i = select i1 %15, i64 -8, i64 -64
  %16 = select i1 %15, i64 8, i64 64
  %17 = add nsw i64 %.0.i.i.i, -1
  %18 = add nuw nsw i64 %17, %16
  %19 = and i64 %18, %.neg.i.i.i                  ; 3 uses
  %20 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %19) #17 ; 5 uses
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 2, ptr %21, align 8
  %22 = icmp samesign ult i64 %19, 513            ; 2 uses
  %.sink6.i.i.i.i.i = select i1 %22, i64 3, i64 6
  %.sink5.i.i.i.i.i = select i1 %22, i64 2, i64 58
  %23 = lshr i64 %19, %.sink6.i.i.i.i.i
  %24 = add nuw nsw i64 %23, %.sink5.i.i.i.i.i    ; 3 uses
  %25 = trunc nuw nsw i64 %24 to i8
  %26 = getelementptr inbounds nuw i8, ptr %20, i64 12
  store i8 %25, ptr %26, align 4
  %27 = trunc nuw nsw i64 %24 to i32
  %28 = icmp samesign ult i64 %24, 67             ; 2 uses
  %.sink6.i.i.i.i = select i1 %28, i32 3, i32 6
  %29 = shl nuw nsw i32 %27, %.sink6.i.i.i.i
  %30 = select i1 %28, i32 -29, i32 -3725
  %narrow.i.i.i = add nsw i32 %29, %30
  %31 = sext i32 %narrow.i.i.i to i64
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.027.i, i64 %31) ; 4 uses
  store i64 %.sroa.speculated.i, ptr %20, align 8
  %32 = add i64 %.sroa.speculated.i, %.029.i      ; 2 uses
  %33 = add nsw i64 %.01928.i, -1                 ; 4 uses
  %34 = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %33
  store ptr %20, ptr %34, align 8
  %35 = getelementptr inbounds nuw i8, ptr %20, i64 13
  %36 = sub nuw i64 %.sroa.0.027.i, %.sroa.speculated.i ; 3 uses
  %37 = getelementptr inbounds nuw i8, ptr %.sroa.11.0, i64 %36
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %35, ptr readonly align 1 %37, i64 %.sroa.speculated.i, i1 false)
  %38 = icmp eq i64 %36, 0
  %39 = icmp eq i64 %33, 0
  %.not20.i = or i1 %39, %38
  br i1 %.not20.i, label %._crit_edge.loopexit.i, label %11, !llvm.loop !24

._crit_edge.loopexit.i:                           ; preds = %11
  %40 = trunc i64 %33 to i8
  br label %_ZN4absl13cord_internal12CordRepBtree7NewLeafILNS1_8EdgeTypeE0EEEPS1_St17basic_string_viewIcSt11char_traitsIcEEm.exit

_ZN4absl13cord_internal12CordRepBtree7NewLeafILNS1_8EdgeTypeE0EEEPS1_St17basic_string_viewIcSt11char_traitsIcEEm.exit: ; preds = %bb.w, %._crit_edge.loopexit.i
  %.019.lcssa.i = phi i8 [ 6, %bb.w ], [ %40, %._crit_edge.loopexit.i ]
  %.0.lcssa.i76 = phi i64 [ 0, %bb.w ], [ %32, %._crit_edge.loopexit.i ] ; 7 uses
  %41 = getelementptr inbounds nuw i8, ptr %5, i64 14
  store i64 %.0.lcssa.i76, ptr %5, align 8
  store i8 %.019.lcssa.i, ptr %41, align 2
  %.not69 = icmp eq i64 %.0.lcssa.i76, %.sroa.0.1 ; 2 uses
  br i1 %.not69, label %bb.x, label %bb.ad

bb.x:                                             ; preds = %_ZN4absl13cord_internal12CordRepBtree7NewLeafILNS1_8EdgeTypeE0EEEPS1_St17basic_string_viewIcSt11char_traitsIcEEm.exit
  %.not.i75 = icmp eq i32 %.064, 0
  br i1 %.not.i75, label %.loopexit42.i89, label %.preheader.i76

end_hunk_0
begin_hunk_1_@_ZN4absl13cord_internal12CordRepBtree7AddDataILNS1_8EdgeTypeE0EEEPS1_S4_St17basic_string_viewIcSt11char_traitsIcEEm:bb.a
  %i.ef = tail call fastcc noundef ptr @_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE8FinalizeEPS3_NS3_8OpResultE(ptr noundef %.262, ptr %.sroa.023.3.i90, i32 %.sroa.6.3.i91)
  br label %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE6UnwindILb0EEEPS3_S7_imNS3_8OpResultE.exit92

bb.ad:                                            ; preds = %_ZN4absl13cord_internal12CordRepBtree7NewLeafILNS1_8EdgeTypeE0EEEPS1_St17basic_string_viewIcSt11char_traitsIcEEm.exit
  %i.eg = sub i64 %.sroa.0.1, %.0.lcssa.i76
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.1, i64 %i.eg)
  %.not.i93 = icmp eq i32 %.064, 0
  br i1 %.not.i93, label %.loopexit42.i107, label %.preheader.i94
end_hunk_1
begin_hunk_2_@_ZN4absl13cord_internal12CordRepBtree7AddDataILNS1_8EdgeTypeE0EEEPS1_S4_St17basic_string_viewIcSt11char_traitsIcEEm:bb.a
  ]

bb.af:                                            ; preds = %bb.ae
  %i.ep = tail call { ptr, i32 } @_ZN4absl13cord_internal12CordRepBtree7AddEdgeILNS1_8EdgeTypeE0EEENS1_8OpResultEbPNS0_7CordRepEm(ptr noundef nonnull align 8 dereferenceable(64) %i.en, i1 noundef zeroext %i.eo, ptr noundef %.sroa.023.0.i97, i64 noundef %.0.lcssa.i76) ; 2 uses
  %i.eq = extractvalue { ptr, i32 } %i.ep, 0
  %i.er = extractvalue { ptr, i32 } %i.ep, 1
  br label %bb.ai

bb.ag:                                            ; preds = %bb.ae
  %i.es = tail call { ptr, i32 } @_ZN4absl13cord_internal12CordRepBtree7SetEdgeILNS1_8EdgeTypeE0EEENS1_8OpResultEbPNS0_7CordRepEm(ptr noundef nonnull align 8 dereferenceable(64) %i.en, i1 noundef zeroext %i.eo, ptr noundef %.sroa.023.0.i97, i64 noundef %.0.lcssa.i76) ; 2 uses
  %i.et = extractvalue { ptr, i32 } %i.es, 0
  %i.eu = extractvalue { ptr, i32 } %i.es, 1
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ae
  %i.ev = load i64, ptr %i.en, align 8
  %i.ew = add i64 %i.ev, %.0.lcssa.i76
  store i64 %i.ew, ptr %i.en, align 8
  %i.ex = icmp samesign ugt i64 %indvars.iv.i96, 1
  br i1 %i.ex, label %.lr.ph.i101, label %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE6UnwindILb0EEEPS3_S7_imNS3_8OpResultE.exit110
end_hunk_2
begin_hunk_3_@_ZN4absl13cord_internal12CordRepBtree7AddDataILNS1_8EdgeTypeE0EEEPS1_S4_St17basic_string_viewIcSt11char_traitsIcEEm:bb.a
  %i.ey = getelementptr [8 x i8], ptr %4, i64 %indvars.iv58.i102
  %i.ez = load ptr, ptr %i.ey, align 8            ; 3 uses
  %i.fa = load i64, ptr %i.ez, align 8
  %i.fb = add i64 %i.fa, %.0.lcssa.i76
  store i64 %i.fb, ptr %i.ez, align 8
  %i.fc = icmp sgt i64 %indvars.iv58.i102, 1
  br i1 %i.fc, label %.lr.ph.i101, label %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE6UnwindILb0EEEPS3_S7_imNS3_8OpResultE.exit110, !llvm.loop !8
end_hunk_3
begin_hunk_4_@_ZN4absl13cord_internal12CordRepBtree7AddDataILNS1_8EdgeTypeE0EEEPS1_S4_St17basic_string_viewIcSt11char_traitsIcEEm:bb.a
_ZN4absl13cord_internal7CordRep5btreeEv.exit.i113: ; preds = %bb.al
  %indvars.iv.next.i116 = add nuw nsw i64 %indvars.iv.i114261, 1 ; 2 uses
  %exitcond.not.i115 = icmp eq i64 %indvars.iv.next.i116, %wide.trip.count.i112
  br i1 %exitcond.not.i115, label %_ZN4absl13cord_internal7CordRep5btreeEv.exit.i113._crit_edge, label %.lr.ph263, !llvm.loop !25

.lr.ph263:                                        ; preds = %_ZN4absl13cord_internal7CordRep5btreeEv.exit.preheader.i111, %_ZN4absl13cord_internal7CordRep5btreeEv.exit.i113
  %.09.i262 = phi ptr [ %i.fs, %_ZN4absl13cord_internal7CordRep5btreeEv.exit.i113 ], [ %.2.i100, %_ZN4absl13cord_internal7CordRep5btreeEv.exit.preheader.i111 ] ; 4 uses
end_hunk_4
begin_hunk_5_@_ZN4absl13cord_internal12CordRepBtree7AddDataILNS1_8EdgeTypeE0EEEPS1_S4_St17basic_string_viewIcSt11char_traitsIcEEm:bb.a
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 12
  %i.fu = load i8, ptr %i.ft, align 4
  %i.fv = icmp eq i8 %i.fu, 3
  br i1 %i.fv, label %_ZN4absl13cord_internal7CordRep5btreeEv.exit.i113, label %bb.am, !llvm.loop !25

bb.am:                                            ; preds = %bb.al
  tail call void @__assert_fail(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58, i32 noundef 599, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal7CordRep5btreeEv) #15
end_hunk_5
begin_hunk_6_@_ZN4absl13cord_internal12CordRepBtree7AddDataILNS1_8EdgeTypeE0EEEPS1_S4_St17basic_string_viewIcSt11char_traitsIcEEm:bb.a
  %.165 = phi i32 [ %i.fh, %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE15BuildOwnedStackEPS3_i.exit ], [ %.064, %bb.ab ], [ %.064, %.loopexit42.i89 ], [ %.064, %.lr.ph.i83 ]
  %.363 = phi ptr [ %.2.i100, %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE15BuildOwnedStackEPS3_i.exit ], [ %.262, %bb.ab ], [ %.262, %.loopexit42.i89 ], [ %.262, %.lr.ph.i83 ]
  %.3 = phi ptr [ %.2, %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE15BuildOwnedStackEPS3_i.exit ], [ %i.do, %bb.ab ], [ %i.ef, %.loopexit42.i89 ], [ %i.ea, %.lr.ph.i83 ] ; 2 uses
  br i1 %.not69, label %.loopexit, label %bb.w, !llvm.loop !26

.loopexit:                                        ; preds = %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE6UnwindILb0EEEPS3_S7_imNS3_8OpResultE.exit92, %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE6UnwindILb0EEEPS3_S7_imNS3_8OpResultE.exit
  %.4 = phi ptr [ %.0, %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE6UnwindILb0EEEPS3_S7_imNS3_8OpResultE.exit ], [ %.3, %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE6UnwindILb0EEEPS3_S7_imNS3_8OpResultE.exit92 ]
end_hunk_6
begin_hunk_7_@_ZN4absl13cord_internal12CordRepBtree7AddDataILNS1_8EdgeTypeE0EEESt17basic_string_viewIcSt11char_traitsIcEES7_m:bb.a
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %_ZN4absl13cord_internal12CordRepBtree8AlignEndEv.exit
  %.sroa.0.0 = phi i64 [ %1, %_ZN4absl13cord_internal12CordRepBtree8AlignEndEv.exit ], [ %i.as, %bb.h ] ; 3 uses
  %i.s = add i64 %.sroa.0.0, %3                   ; 2 uses
  %i.t = icmp ult i64 %i.s, 20
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.s, i64 4083)
end_hunk_7
begin_hunk_8_@_ZN4absl13cord_internal12CordRepBtree7AddDataILNS1_8EdgeTypeE0EEESt17basic_string_viewIcSt11char_traitsIcEES7_m:bb.a
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ap
  store ptr %i.aa, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aa, i64 13
  %i.as = sub nuw i64 %.sroa.0.0, %.sroa.speculated ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 %i.as
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ar, ptr align 1 %i.at, i64 %.sroa.speculated, i1 false)
  %i.au = icmp eq i64 %i.as, 0
  %.not = icmp eq i8 %i.ao, 0
  %or.cond = or i1 %.not, %i.au
  br i1 %or.cond, label %.critedge, label %bb.h, !llvm.loop !27

.critedge:                                        ; preds = %bb.h
  %.fca.0.insert.i.i = insertvalue { i64, ptr } poison, i64 %i.as, 0
  %.fca.1.insert.i.i = insertvalue { i64, ptr } %.fca.0.insert.i.i, ptr %2, 1
  ret { i64, ptr } %.fca.1.insert.i.i
}
end_hunk_8
begin_hunk_9_@_ZN4absl13cord_internal12CordRepBtree7NewLeafILNS1_8EdgeTypeE0EEEPS1_St17basic_string_viewIcSt11char_traitsIcEEm:bb.a
bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.029 = phi i64 [ 0, %.lr.ph ], [ %i.ac, %bb.b ]
  %.01928 = phi i64 [ 6, %.lr.ph ], [ %i.ad, %bb.b ]
  %.sroa.0.027 = phi i64 [ %0, %.lr.ph ], [ %i.ag, %bb.b ] ; 3 uses
  %i.h = add i64 %.sroa.0.027, %2                 ; 2 uses
  %i.i = icmp ult i64 %i.h, 20
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 4083)
end_hunk_9
begin_hunk_10_@_ZN4absl13cord_internal12CordRepBtree7NewLeafILNS1_8EdgeTypeE0EEEPS1_St17basic_string_viewIcSt11char_traitsIcEEm:bb.a
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ad
  store ptr %i.p, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 13
  %i.ag = sub nuw i64 %.sroa.0.027, %.sroa.speculated ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %i.ag
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.af, ptr align 1 %i.ah, i64 %.sroa.speculated, i1 false)
  %i.ai = icmp eq i64 %i.ag, 0
  %i.aj = icmp eq i64 %i.ad, 0
  %.not20 = or i1 %i.ai, %i.aj
  br i1 %.not20, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !24

._crit_edge.loopexit:                             ; preds = %bb.b
  %i.ak = trunc i64 %i.ad to i8
end_hunk_10
