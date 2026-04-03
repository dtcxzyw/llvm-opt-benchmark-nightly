begin_hunk_0
inline.NumInlined: 773
inline.NumDeleted: 203
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
end_hunk_0
begin_hunk_1
  br label %bb.w

bb.w:                                             ; preds = %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE6UnwindILb0EEEPS3_S7_imNS3_8OpResultE.exit92, %bb.v
  %.sroa.0.1 = phi i64 [ %.sroa.0.0, %bb.v ], [ %.sroa.0.2, %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE6UnwindILb0EEEPS3_S7_imNS3_8OpResultE.exit92 ] ; 11 uses
  %.064 = phi i32 [ %i.d, %bb.v ], [ %.165, %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE6UnwindILb0EEEPS3_S7_imNS3_8OpResultE.exit92 ] ; 9 uses
  %.262 = phi ptr [ %.161, %bb.v ], [ %.363, %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE6UnwindILb0EEEPS3_S7_imNS3_8OpResultE.exit92 ] ; 5 uses
  %.2 = phi ptr [ %.1, %bb.v ], [ %.3, %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE6UnwindILb0EEEPS3_S7_imNS3_8OpResultE.exit92 ]
  %5 = tail call noundef ptr @_ZN4absl13cord_internal12CordRepBtree7NewLeafILNS1_8EdgeTypeE0EEEPS1_St17basic_string_viewIcSt11char_traitsIcEEm(i64 %.sroa.0.1, ptr %.sroa.11.0, i64 noundef %3) ; 5 uses
  %6 = load i64, ptr %5, align 8                  ; 6 uses
  %.not69.a = icmp eq i64 %6, %.sroa.0.1          ; 2 uses
  br i1 %.not69.a, label %bb.x, label %bb.ad

bb.x:                                             ; preds = %bb.w
  %.not.i75 = icmp eq i32 %.064, 0
  br i1 %.not.i75, label %.loopexit42.i89, label %.preheader.i76

end_hunk_1
begin_hunk_2
  %i.ef = tail call fastcc noundef ptr @_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE8FinalizeEPS3_NS3_8OpResultE(ptr noundef %.262, ptr %.sroa.023.3.i90, i32 %.sroa.6.3.i91)
  br label %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE6UnwindILb0EEEPS3_S7_imNS3_8OpResultE.exit92

bb.ad:                                            ; preds = %bb.w
  %i.eg = sub i64 %.sroa.0.1, %6
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.1, i64 %i.eg)
  %.not.i93 = icmp eq i32 %.064, 0
  br i1 %.not.i93, label %.loopexit42.i107, label %.preheader.i94
end_hunk_2
begin_hunk_3
  ]

bb.af:                                            ; preds = %bb.ae
  %i.ep = tail call { ptr, i32 } @_ZN4absl13cord_internal12CordRepBtree7AddEdgeILNS1_8EdgeTypeE0EEENS1_8OpResultEbPNS0_7CordRepEm(ptr noundef nonnull align 8 dereferenceable(64) %i.en, i1 noundef zeroext %i.eo, ptr noundef %.sroa.023.0.i97, i64 noundef %6) ; 2 uses
  %i.eq = extractvalue { ptr, i32 } %i.ep, 0
  %i.er = extractvalue { ptr, i32 } %i.ep, 1
  br label %bb.ai

bb.ag:                                            ; preds = %bb.ae
  %i.es = tail call { ptr, i32 } @_ZN4absl13cord_internal12CordRepBtree7SetEdgeILNS1_8EdgeTypeE0EEENS1_8OpResultEbPNS0_7CordRepEm(ptr noundef nonnull align 8 dereferenceable(64) %i.en, i1 noundef zeroext %i.eo, ptr noundef %.sroa.023.0.i97, i64 noundef %6) ; 2 uses
  %i.et = extractvalue { ptr, i32 } %i.es, 0
  %i.eu = extractvalue { ptr, i32 } %i.es, 1
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ae
  %i.ev = load i64, ptr %i.en, align 8
  %i.ew = add i64 %i.ev, %6
  store i64 %i.ew, ptr %i.en, align 8
  %i.ex = icmp samesign ugt i64 %indvars.iv.i96, 1
  br i1 %i.ex, label %.lr.ph.i101, label %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE6UnwindILb0EEEPS3_S7_imNS3_8OpResultE.exit110
end_hunk_3
begin_hunk_4
  %i.ey = getelementptr [8 x i8], ptr %4, i64 %indvars.iv58.i102
  %i.ez = load ptr, ptr %i.ey, align 8            ; 3 uses
  %i.fa = load i64, ptr %i.ez, align 8
  %i.fb = add i64 %i.fa, %6
  store i64 %i.fb, ptr %i.ez, align 8
  %i.fc = icmp sgt i64 %indvars.iv58.i102, 1
  br i1 %i.fc, label %.lr.ph.i101, label %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE6UnwindILb0EEEPS3_S7_imNS3_8OpResultE.exit110, !llvm.loop !8
end_hunk_4
begin_hunk_5
_ZN4absl13cord_internal7CordRep5btreeEv.exit.i113: ; preds = %bb.al
  %indvars.iv.next.i116 = add nuw nsw i64 %indvars.iv.i114261, 1 ; 2 uses
  %exitcond.not.i115 = icmp eq i64 %indvars.iv.next.i116, %wide.trip.count.i112
  br i1 %exitcond.not.i115, label %_ZN4absl13cord_internal7CordRep5btreeEv.exit.i113._crit_edge, label %.lr.ph263, !llvm.loop !24

.lr.ph263:                                        ; preds = %_ZN4absl13cord_internal7CordRep5btreeEv.exit.preheader.i111, %_ZN4absl13cord_internal7CordRep5btreeEv.exit.i113
  %.09.i262 = phi ptr [ %i.fs, %_ZN4absl13cord_internal7CordRep5btreeEv.exit.i113 ], [ %.2.i100, %_ZN4absl13cord_internal7CordRep5btreeEv.exit.preheader.i111 ] ; 4 uses
end_hunk_5
begin_hunk_6
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 12
  %i.fu = load i8, ptr %i.ft, align 4
  %i.fv = icmp eq i8 %i.fu, 3
  br i1 %i.fv, label %_ZN4absl13cord_internal7CordRep5btreeEv.exit.i113, label %bb.am, !llvm.loop !24

bb.am:                                            ; preds = %bb.al
  tail call void @__assert_fail(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58, i32 noundef 599, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal7CordRep5btreeEv) #15
end_hunk_6
begin_hunk_7
  %.165 = phi i32 [ %i.fh, %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE15BuildOwnedStackEPS3_i.exit ], [ %.064, %bb.ab ], [ %.064, %.loopexit42.i89 ], [ %.064, %.lr.ph.i83 ]
  %.363 = phi ptr [ %.2.i100, %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE15BuildOwnedStackEPS3_i.exit ], [ %.262, %bb.ab ], [ %.262, %.loopexit42.i89 ], [ %.262, %.lr.ph.i83 ]
  %.3 = phi ptr [ %.2, %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE15BuildOwnedStackEPS3_i.exit ], [ %i.do, %bb.ab ], [ %i.ef, %.loopexit42.i89 ], [ %i.ea, %.lr.ph.i83 ] ; 2 uses
  br i1 %.not69.a, label %.loopexit, label %bb.w, !llvm.loop !25

.loopexit:                                        ; preds = %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE6UnwindILb0EEEPS3_S7_imNS3_8OpResultE.exit92, %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE6UnwindILb0EEEPS3_S7_imNS3_8OpResultE.exit
  %.4 = phi ptr [ %.0, %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE6UnwindILb0EEEPS3_S7_imNS3_8OpResultE.exit ], [ %.3, %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE6UnwindILb0EEEPS3_S7_imNS3_8OpResultE.exit92 ]
end_hunk_7
begin_hunk_8
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %_ZN4absl13cord_internal12CordRepBtree8AlignEndEv.exit
  %.sroa.0.0 = phi i64 [ %1, %_ZN4absl13cord_internal12CordRepBtree8AlignEndEv.exit ], [ %.sroa.speculated.i.i, %bb.h ] ; 4 uses
  %i.s = add i64 %.sroa.0.0, %3                   ; 2 uses
  %i.t = icmp ult i64 %i.s, 20
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.s, i64 4083)
end_hunk_8
begin_hunk_9
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ap
  store ptr %i.aa, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aa, i64 13
  %i.as = sub i64 %.sroa.0.0, %.sroa.speculated   ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 %i.as
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ar, ptr align 1 %i.at, i64 %.sroa.speculated, i1 false)
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0, i64 %i.as) ; 3 uses
  %i.au = icmp eq i64 %.sroa.speculated.i.i, 0
  %.not = icmp eq i8 %i.ao, 0
  %or.cond = or i1 %.not, %i.au
  br i1 %or.cond, label %.critedge, label %bb.h, !llvm.loop !26

.critedge:                                        ; preds = %bb.h
  %.fca.0.insert.i.i = insertvalue { i64, ptr } poison, i64 %.sroa.speculated.i.i, 0
  %.fca.1.insert.i.i = insertvalue { i64, ptr } %.fca.0.insert.i.i, ptr %2, 1
  ret { i64, ptr } %.fca.1.insert.i.i
}
end_hunk_9
begin_hunk_10
bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.029 = phi i64 [ 0, %.lr.ph ], [ %i.ac, %bb.b ]
  %.01928 = phi i64 [ 6, %.lr.ph ], [ %i.ad, %bb.b ]
  %.sroa.0.027 = phi i64 [ %0, %.lr.ph ], [ %.sroa.speculated.i.i, %bb.b ] ; 4 uses
  %i.h = add i64 %.sroa.0.027, %2                 ; 2 uses
  %i.i = icmp ult i64 %i.h, 20
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 4083)
end_hunk_10
begin_hunk_11
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ad
  store ptr %i.p, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 13
  %i.ag = sub i64 %.sroa.0.027, %.sroa.speculated ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %i.ag
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.af, ptr align 1 %i.ah, i64 %.sroa.speculated, i1 false)
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.027, i64 %i.ag) ; 2 uses
  %i.ai = icmp eq i64 %.sroa.speculated.i.i, 0
  %i.aj = icmp eq i64 %i.ad, 0
  %.not20 = or i1 %i.ai, %i.aj
  br i1 %.not20, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !27

._crit_edge.loopexit:                             ; preds = %bb.b
  %i.ak = trunc i64 %i.ad to i8
end_hunk_11
