inline.NumInlined: 74
inline.NumDeleted: 14
begin_hunk_0_@_ZN5folly6detail25qfind_first_byte_of_sse42ENS0_15StringPieceLiteES1_:bb.a
  %i.p = icmp samesign ult i64 %i.j, 3
  br i1 %i.p, label %.preheader.i.i, label %bb.i

.preheader.i.i:                                   ; preds = %bb.e, %._crit_edge.i.i
  %.01425.i.i = phi ptr [ %i.u, %._crit_edge.i.i ], [ %0, %bb.e ] ; 4 uses
  %i.q = load i8, ptr %.01425.i.i, align 1, !tbaa !12
  br label %bb.g

bb.f:                                             ; preds = %bb.g
end_hunk_0
begin_hunk_1_@_ZN5folly6detail25qfind_first_byte_of_sse42ENS0_15StringPieceLiteES1_:bb.a
  %.01223.i.i = phi ptr [ %2, %.preheader.i.i ], [ %i.r, %bb.f ] ; 2 uses
  %i.s = load i8, ptr %.01223.i.i, align 1, !tbaa !12
  %i.t = icmp eq i8 %i.q, %i.s
  br i1 %i.t, label %_ZSt13find_first_ofIPKcS1_ZN5folly6detail23qfind_first_byte_of_stdENS3_15StringPieceLiteES4_EUlccE_ET_S6_S6_T0_S7_T1_.exit.i.a, label %bb.f

._crit_edge.i.i:                                  ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %.01425.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %1
  br i1 %.not.i.i, label %.critedge, label %.preheader.i.i, !llvm.loop !15

_ZSt13find_first_ofIPKcS1_ZN5folly6detail23qfind_first_byte_of_stdENS3_15StringPieceLiteES4_EUlccE_ET_S6_S6_T0_S7_T1_.exit.i.a: ; preds = %bb.g
  %i.v = icmp eq ptr %.01425.i.i, %1
  br i1 %i.v, label %.critedge, label %bb.h

bb.h:                                             ; preds = %_ZSt13find_first_ofIPKcS1_ZN5folly6detail23qfind_first_byte_of_stdENS3_15StringPieceLiteES4_EUlccE_ET_S6_S6_T0_S7_T1_.exit.i.a
  %i.w = ptrtoint ptr %.01425.i.i to i64
  %i.x = sub i64 %i.w, %i.i
  br label %.critedge

end_hunk_1
begin_hunk_2_@_ZN5folly6detail25qfind_first_byte_of_sse42ENS0_15StringPieceLiteES1_:bb.a
  %.not30 = select i1 %i.bf, i1 true, i1 %.not3049
  br i1 %.not30, label %bb.l, label %.critedge

.critedge:                                        ; preds = %._crit_edge.i.i, %_ZN5folly6detail17scanHaystackBlockILb1EEEmNS0_15StringPieceLiteES2_m.exit, %bb.l, %bb.k, %bb.h, %_ZSt13find_first_ofIPKcS1_ZN5folly6detail23qfind_first_byte_of_stdENS3_15StringPieceLiteES4_EUlccE_ET_S6_S6_T0_S7_T1_.exit.i.a, %bb.a, %_ZN5folly6detail17scanHaystackBlockILb0EEEmNS0_15StringPieceLiteES2_m.exit, %bb.i, %bb.c
  %.2 = phi i64 [ -1, %bb.l ], [ %i.g, %bb.c ], [ -1, %bb.a ], [ %i.y, %bb.i ], [ %i.x, %bb.h ], [ %.013.i, %_ZN5folly6detail17scanHaystackBlockILb0EEEmNS0_15StringPieceLiteES2_m.exit ], [ -1, %_ZSt13find_first_ofIPKcS1_ZN5folly6detail23qfind_first_byte_of_stdENS3_15StringPieceLiteES4_EUlccE_ET_S6_S6_T0_S7_T1_.exit.i.a ], [ -1, %bb.k ], [ %i.bh, %_ZN5folly6detail17scanHaystackBlockILb1EEEmNS0_15StringPieceLiteES2_m.exit ], [ -1, %._crit_edge.i.i ]
  ret i64 %.2
}

end_hunk_2
