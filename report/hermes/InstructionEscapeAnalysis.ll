inline.NumInlined: 364
inline.NumDeleted: 155
begin_hunk_0_@_ZN6hermes25InstructionEscapeAnalysis8addRangeEN4llvh14iterator_rangeINS1_14ilist_iteratorINS1_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvEELb0ELb0EEEEE:bb.a
  %i.dv = add i32 %.098, 1                        ; 5 uses
  store i32 %i.dv, ptr %i.b, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.dw = icmp eq i32 %.val34, 0                  ; 2 uses
  br i1 %i.dw, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
end_hunk_0
begin_hunk_1_@_ZN6hermes25InstructionEscapeAnalysis8addRangeEN4llvh14iterator_rangeINS1_14ilist_iteratorINS1_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvEELb0ELb0EEEEE:bb.a

bb.v:                                             ; preds = %bb.t, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E5beginEv.exit
  %i.ed = phi i32 [ %i.ec, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E5beginEv.exit ], [ 0, %bb.t ] ; 2 uses
  %i.ee = phi i8 [ 1, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E5beginEv.exit ], [ 0, %bb.t ]
  store i32 %i.ed, ptr %5, align 8, !tbaa !60
  store i8 %i.ee, ptr %i.ah, align 4, !tbaa !61
  %i.ef = load ptr, ptr %i.ai, align 8, !tbaa !12 ; 4 uses
end_hunk_1
begin_hunk_2_@_ZN6hermes25InstructionEscapeAnalysis8addRangeEN4llvh14iterator_rangeINS1_14ilist_iteratorINS1_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvEELb0ELb0EEEEE:bb.a
  %.sroa.03.0.copyload = load i64, ptr %i.fc, align 4 ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.03.0.copyload to i32 ; 2 uses
  %.sroa.3.0.extract.shift.i = lshr i64 %.sroa.03.0.copyload, 32 ; 2 uses
  br i1 %i.dw, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %.sroa.3.0.extract.trunc.i = trunc i64 %.sroa.3.0.extract.shift.i to i8
end_hunk_2
