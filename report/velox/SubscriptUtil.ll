inline.NumInlined: 10385
inline.NumDeleted: 4577
begin_hunk_0_@_ZNK8facebook5velox9functions6detail12MapSubscript8applyMapERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERNS0_4exec7EvalCtxE:bb.a
.critedge.i.i143.i:                               ; preds = %bb.hy, %bb.hx
  %i.ams = trunc nsw i64 %indvars.iv.i.i to i32
  invoke void @_ZN8facebook5velox12NullsBuilder7setNullEi(ptr noundef nonnull align 8 dereferenceable(32) %12, i32 noundef %i.ams)
          to label %"_ZZN8facebook5velox9functions12_GLOBAL__N_119applyMapComplexTypeERKNS0_17SelectivityVectorERKNS0_13DecodedVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEbRS9_INS1_6detail15LookupTableBaseEEENK3$_1clEi.exit.i.i" unwind label %.loopexit.split-lp266.loopexit.i

"_ZZN8facebook5velox9functions12_GLOBAL__N_119applyMapComplexTypeERKNS0_17SelectivityVectorERKNS0_13DecodedVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEbRS9_INS1_6detail15LookupTableBaseEEENK3$_1clEi.exit.i.i": ; preds = %.critedge.i.i143.i, %bb.ia
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %lftr.wideiv.i.i = trunc i64 %indvars.iv.next.i.i to i32
  %exitcond.not.i144.i = icmp eq i32 %i.als, %lftr.wideiv.i.i
  br i1 %exitcond.not.i144.i, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_9functions12_GLOBAL__N_119applyMapComplexTypeERKS1_RKNS0_13DecodedVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEbRSA_INS3_6detail15LookupTableBaseEEE3$_1EEvT_.exit.i", label %bb.hx, !llvm.loop !314

bb.ib:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i122.i
  %i.amt = load ptr, ptr %2, align 8, !tbaa !173, !noalias !212 ; 4 uses
end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox9functions6detail12MapSubscript8applyMapERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERNS0_4exec7EvalCtxE:bb.a
  %i.aoq = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.aor = and i64 %i.aoq, %.012.i.i.i.i.i.i      ; 2 uses
  %.not10.i.i.i.i.i140.i = icmp eq i64 %i.aor, 0
  br i1 %.not10.i.i.i.i.i140.i, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_9functions12_GLOBAL__N_119applyMapComplexTypeERKS1_RKNS0_13DecodedVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEbRSA_INS3_6detail15LookupTableBaseEEE3$_1EEvT_.exit.i", label %.preheader.i.i.i.i.i139.i, !llvm.loop !315

bb.ih:                                            ; preds = %bb.ic
  %.not32.i.i.i.i126.i = icmp eq i32 %i.alr, %i.amx
end_hunk_1
begin_hunk_2_@_ZNK8facebook5velox9functions6detail12MapSubscript8applyMapERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERNS0_4exec7EvalCtxE:bb.a

.critedge.i.i45.i.i.i.i.i:                        ; preds = %bb.ik, %bb.ij
  invoke void @_ZN8facebook5velox12NullsBuilder7setNullEi(ptr noundef nonnull align 8 dereferenceable(32) %12, i32 noundef %i.apg)
          to label %"_ZZN8facebook5velox9functions12_GLOBAL__N_119applyMapComplexTypeERKNS0_17SelectivityVectorERKNS0_13DecodedVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEbRS9_INS1_6detail15LookupTableBaseEEENK3$_1clEi.exit.i46.i.i.i.i.i" unwind label %.loopexit.split-lp266.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !inline_history !316

"_ZZN8facebook5velox9functions12_GLOBAL__N_119applyMapComplexTypeERKNS0_17SelectivityVectorERKNS0_13DecodedVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEbRS9_INS1_6detail15LookupTableBaseEEENK3$_1clEi.exit.i46.i.i.i.i.i": ; preds = %.critedge.i.i45.i.i.i.i.i, %bb.im
  %i.aqf = add i64 %.012.i38.i.i.i.i.i, -1
  %i.aqg = and i64 %i.aqf, %.012.i38.i.i.i.i.i    ; 2 uses
  %.not10.i47.i.i.i.i.i = icmp eq i64 %i.aqg, 0
  br i1 %.not10.i47.i.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions12_GLOBAL__N_119applyMapComplexTypeERKNS0_17SelectivityVectorERKNS0_13DecodedVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEbRSB_INS3_6detail15LookupTableBaseEEE3$_1EEvPKmiibT_ENKUlimE_clEim.exit48.i.i.i.i.i", label %bb.ij, !llvm.loop !315

"_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions12_GLOBAL__N_119applyMapComplexTypeERKNS0_17SelectivityVectorERKNS0_13DecodedVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEbRSB_INS3_6detail15LookupTableBaseEEE3$_1EEvPKmiibT_ENKUlimE_clEim.exit48.i.i.i.i.i": ; preds = %"_ZZN8facebook5velox9functions12_GLOBAL__N_119applyMapComplexTypeERKNS0_17SelectivityVectorERKNS0_13DecodedVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEbRS9_INS1_6detail15LookupTableBaseEEENK3$_1clEi.exit.i46.i.i.i.i.i", %bb.ii, %bb.ih
  %i.aqh = add nsw i32 %i.amx, 64                 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZNK8facebook5velox9functions6detail12MapSubscript8applyMapERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERNS0_4exec7EvalCtxE:bb.a

.critedge.i.i55.i.i.i.i.i:                        ; preds = %bb.ip, %bb.io
  invoke void @_ZN8facebook5velox12NullsBuilder7setNullEi(ptr noundef nonnull align 8 dereferenceable(32) %12, i32 noundef %i.aqs)
          to label %"_ZZN8facebook5velox9functions12_GLOBAL__N_119applyMapComplexTypeERKNS0_17SelectivityVectorERKNS0_13DecodedVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEbRS9_INS1_6detail15LookupTableBaseEEENK3$_1clEi.exit.i56.i.i.i.i.i" unwind label %.loopexit.split-lp266.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !inline_history !316

"_ZZN8facebook5velox9functions12_GLOBAL__N_119applyMapComplexTypeERKNS0_17SelectivityVectorERKNS0_13DecodedVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEbRS9_INS1_6detail15LookupTableBaseEEENK3$_1clEi.exit.i56.i.i.i.i.i": ; preds = %.critedge.i.i55.i.i.i.i.i, %bb.ir
  %i.arr = add nuw i64 %.031.i.i.i.i.i.i, 1       ; 2 uses
end_hunk_3
begin_hunk_4_@_ZNK8facebook5velox9functions6detail12MapSubscript8applyMapERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERNS0_4exec7EvalCtxE:bb.a

.critedge.i23.i.i.i.i.i.i:                        ; preds = %bb.it, %bb.is
  invoke void @_ZN8facebook5velox12NullsBuilder7setNullEi(ptr noundef nonnull align 8 dereferenceable(32) %12, i32 noundef %i.arv)
          to label %"_ZZN8facebook5velox9functions12_GLOBAL__N_119applyMapComplexTypeERKNS0_17SelectivityVectorERKNS0_13DecodedVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEbRS9_INS1_6detail15LookupTableBaseEEENK3$_1clEi.exit24.i.i.i.i.i.i" unwind label %.loopexit.split-lp266.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !inline_history !316

"_ZZN8facebook5velox9functions12_GLOBAL__N_119applyMapComplexTypeERKNS0_17SelectivityVectorERKNS0_13DecodedVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEbRS9_INS1_6detail15LookupTableBaseEEENK3$_1clEi.exit24.i.i.i.i.i.i": ; preds = %.critedge.i23.i.i.i.i.i.i, %bb.iv
  %i.asu = add i64 %.01530.i.i.i.i.i.i, -1
end_hunk_4
begin_hunk_5_@_ZNK8facebook5velox9functions6detail12MapSubscript8applyMapERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERNS0_4exec7EvalCtxE:bb.a

.critedge.i.i68.i.i.i.i.i:                        ; preds = %bb.ix, %.preheader.i60.i.i.i.i.i
  invoke void @_ZN8facebook5velox12NullsBuilder7setNullEi(ptr noundef nonnull align 8 dereferenceable(32) %12, i32 noundef %i.ath)
          to label %"_ZZN8facebook5velox9functions12_GLOBAL__N_119applyMapComplexTypeERKNS0_17SelectivityVectorERKNS0_13DecodedVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEbRS9_INS1_6detail15LookupTableBaseEEENK3$_1clEi.exit.i69.i.i.i.i.i" unwind label %.loopexit.split-lp266.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !inline_history !316

"_ZZN8facebook5velox9functions12_GLOBAL__N_119applyMapComplexTypeERKNS0_17SelectivityVectorERKNS0_13DecodedVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEbRS9_INS1_6detail15LookupTableBaseEEENK3$_1clEi.exit.i69.i.i.i.i.i": ; preds = %.critedge.i.i68.i.i.i.i.i, %bb.iz
  %i.aug = add nsw i64 %.012.i61.i.i.i.i.i, -1
  %i.auh = and i64 %i.aug, %.012.i61.i.i.i.i.i    ; 2 uses
  %.not10.i70.i.i.i.i.i = icmp eq i64 %i.auh, 0
  br i1 %.not10.i70.i.i.i.i.i, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_9functions12_GLOBAL__N_119applyMapComplexTypeERKS1_RKNS0_13DecodedVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEbRSA_INS3_6detail15LookupTableBaseEEE3$_1EEvT_.exit.i", label %.preheader.i60.i.i.i.i.i, !llvm.loop !315

.loopexit265.i:                                   ; preds = %bb.hz
  %lpad.loopexit267.i = landingpad { ptr, i32 }
end_hunk_5
begin_hunk_6_@llvm.cttz.i16
!311 = distinct !{!311, !132}
!312 = distinct !{!312, !132}
!313 = distinct !{!313, !132}
!314 = distinct !{!314, !132}
!315 = distinct !{!315, !132}
!316 = distinct !{null}
!317 = distinct !{!317, !132}
!318 = distinct !{!318, !132}
!319 = distinct !{!319, !132}
end_hunk_6
