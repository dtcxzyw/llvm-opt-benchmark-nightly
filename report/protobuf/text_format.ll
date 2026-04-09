inline.NumInlined: 5150
inline.NumDeleted: 1899
begin_hunk_0_@_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS7_SaIS7_EEEEEET_SD_SD_SD_St26random_access_iterator_tag:bb.a

bb.e:                                             ; preds = %.backedge, %bb.d
  %.sroa.041.0 = phi ptr [ %0, %bb.d ], [ %.sroa.041.0.be, %.backedge ] ; 22 uses
  %.084 = phi i64 [ %i.i, %bb.d ], [ %.084.be, %.backedge ] ; 16 uses
  %.0 = phi i64 [ %i.f, %bb.d ], [ %.0.be, %.backedge ] ; 9 uses
  %i.ag = sub nsw i64 %.0, %.084                  ; 10 uses
  %i.ah = icmp slt i64 %.084, %i.ag
  br i1 %i.ah, label %bb.f, label %bb.i
end_hunk_0
begin_hunk_1_@_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS7_SaIS7_EEEEEET_SD_SD_SD_St26random_access_iterator_tag:bb.a
  br i1 %cmp.n, label %._crit_edge100, label %.lr.ph99.preheader195

.lr.ph99.preheader195:                            ; preds = %vector.memcheck, %.lr.ph99.preheader, %middle.block
  %.02897.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph99.preheader ], [ %n.vec, %middle.block ]
  %.sroa.041.196.ph = phi ptr [ %.sroa.041.0, %vector.memcheck ], [ %.sroa.041.0, %.lr.ph99.preheader ], [ %i.at, %middle.block ]
  %.sroa.038.095.ph = phi ptr [ %i.ao, %vector.memcheck ], [ %i.ao, %.lr.ph99.preheader ], [ %i.av, %middle.block ]
  br label %.lr.ph99

._crit_edge100:                                   ; preds = %.lr.ph99, %middle.block, %bb.g
  %.sroa.041.1.lcssa = phi ptr [ %.sroa.041.0, %bb.g ], [ %i.at, %middle.block ], [ %i.bc, %.lr.ph99 ]
  %i.az = srem i64 %.0, %.084                     ; 2 uses
  %.not31 = icmp eq i64 %i.az, 0
  br i1 %.not31, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit, label %bb.h

.lr.ph99:                                         ; preds = %.lr.ph99.preheader195, %.lr.ph99
  %.02897 = phi i64 [ %i.be, %.lr.ph99 ], [ %.02897.ph, %.lr.ph99.preheader195 ]
  %.sroa.041.196 = phi ptr [ %i.bc, %.lr.ph99 ], [ %.sroa.041.196.ph, %.lr.ph99.preheader195 ] ; 3 uses
  %.sroa.038.095 = phi ptr [ %i.bd, %.lr.ph99 ], [ %.sroa.038.095.ph, %.lr.ph99.preheader195 ] ; 3 uses
  %i.ba = load ptr, ptr %.sroa.041.196, align 8, !tbaa !506
  %i.bb = load ptr, ptr %.sroa.038.095, align 8, !tbaa !506
  store ptr %i.bb, ptr %.sroa.041.196, align 8, !tbaa !506
  store ptr %i.ba, ptr %.sroa.038.095, align 8, !tbaa !506
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.041.196, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.038.095, i64 8
  %i.be = add nuw nsw i64 %.02897, 1              ; 2 uses
  %exitcond108.not = icmp eq i64 %i.be, %i.ag
  br i1 %exitcond108.not, label %._crit_edge100, label %.lr.ph99, !llvm.loop !959

bb.h:                                             ; preds = %._crit_edge100
  %i.bf = sub nsw i64 %.084, %i.az
end_hunk_1
begin_hunk_2_@_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS7_SaIS7_EEEEEET_SD_SD_SD_St26random_access_iterator_tag:bb.a
  %next.gep150 = getelementptr i8, ptr %i.bs, i64 %offset.idx149 ; 2 uses
  %i.ca = getelementptr inbounds i8, ptr %next.gep150, i64 -16 ; 2 uses
  %i.cb = getelementptr inbounds i8, ptr %next.gep150, i64 -32 ; 2 uses
  %wide.load151 = load <2 x ptr>, ptr %i.ca, align 8, !tbaa !506, !alias.scope !960, !noalias !963
  %wide.load152 = load <2 x ptr>, ptr %i.cb, align 8, !tbaa !506, !alias.scope !960, !noalias !963
  %i.cc = getelementptr inbounds i8, ptr %next.gep148, i64 -16 ; 2 uses
  %i.cd = getelementptr inbounds i8, ptr %next.gep148, i64 -32 ; 2 uses
  %wide.load154 = load <2 x ptr>, ptr %i.cc, align 8, !tbaa !506, !alias.scope !963
  %wide.load155 = load <2 x ptr>, ptr %i.cd, align 8, !tbaa !506, !alias.scope !963
  store <2 x ptr> %wide.load154, ptr %i.ca, align 8, !tbaa !506, !alias.scope !960, !noalias !963
  store <2 x ptr> %wide.load155, ptr %i.cb, align 8, !tbaa !506, !alias.scope !960, !noalias !963
  store <2 x ptr> %wide.load151, ptr %i.cc, align 8, !tbaa !506, !alias.scope !963
  store <2 x ptr> %wide.load152, ptr %i.cd, align 8, !tbaa !506, !alias.scope !963
  %index.next162 = add nuw i64 %index146, 4       ; 2 uses
  %i.ce = icmp eq i64 %index.next162, %n.vec144
  br i1 %i.ce, label %middle.block163, label %vector.body145, !llvm.loop !965

middle.block163:                                  ; preds = %vector.body145
  %cmp.n164 = icmp eq i64 %.084, %n.vec144
end_hunk_2
begin_hunk_3_@_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS7_SaIS7_EEEEEET_SD_SD_SD_St26random_access_iterator_tag:bb.a
  %i.cj = add nuw nsw i64 %.02794.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !966

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader196
  %.02794.unr = phi i64 [ %.02794.ph, %.lr.ph.preheader196 ], [ %i.cj, %.lr.ph.prol ]
end_hunk_3
begin_hunk_4_@_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS7_SaIS7_EEEEEET_SD_SD_SD_St26random_access_iterator_tag:bb.a
  %.sroa.041.0.be = phi ptr [ %.sroa.041.1.lcssa, %bb.h ], [ %.sroa.041.2.lcssa, %._crit_edge ]
  %.084.be = phi i64 [ %i.bf, %bb.h ], [ %i.cm, %._crit_edge ]
  %.0.be = phi i64 [ %.084, %bb.h ], [ %i.ag, %._crit_edge ]
  br label %bb.e, !llvm.loop !967

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.02794 = phi i64 [ %i.dd, %.lr.ph ], [ %.02794.unr, %.lr.ph.prol.loopexit ]
end_hunk_4
begin_hunk_5_@_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS7_SaIS7_EEEEEET_SD_SD_SD_St26random_access_iterator_tag:bb.a
  store ptr %i.db, ptr %i.da, align 8, !tbaa !506
  %i.dd = add nuw nsw i64 %.02794, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.dd, %.084
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !968

_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit: ; preds = %._crit_edge, %._crit_edge100, %.lr.ph.i, %middle.block190, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit, %bb.b, %bb.a
  %.sroa.024.1 = phi ptr [ %0, %bb.b ], [ %2, %bb.a ], [ %i.af, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit ], [ %i.af, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit ], [ %1, %middle.block190 ], [ %1, %.lr.ph.i ], [ %i.af, %._crit_edge100 ], [ %i.af, %._crit_edge ]
end_hunk_5
begin_hunk_6_@_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv:bb.a
  store <2 x i64> %i.q, ptr %i.d, align 8, !tbaa !243
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.r = icmp eq i64 %index.next, 156
  br i1 %i.r, label %vector.ph10, label %vector.body, !llvm.loop !969

vector.ph10:                                      ; preds = %vector.body
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 1248
end_hunk_6
begin_hunk_7_@_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv:bb.a
  store <2 x i64> %i.af, ptr %i.t, align 8, !tbaa !243
  %index.next17 = add nuw i64 %index12, 2         ; 2 uses
  %i.ag = icmp eq i64 %index.next17, 154
  br i1 %i.ag, label %.preheader.i, label %vector.body11, !llvm.loop !970

.preheader.i:                                     ; preds = %vector.body11
  %vector.recur.extract = extractelement <2 x i64> %wide.load15, i64 1
end_hunk_7
begin_hunk_8_@bcmp
!956 = !{!957}
!957 = distinct !{!957, !955}
!958 = distinct !{!958, !95, !129, !130}
!959 = distinct !{!959, !95, !129}
!960 = !{!961}
!961 = distinct !{!961, !962}
!962 = distinct !{!962, !"LVerDomain"}
!963 = !{!964}
!964 = distinct !{!964, !962}
!965 = distinct !{!965, !95, !129, !130}
!966 = distinct !{!966, !871}
!967 = distinct !{!967, !95}
!968 = distinct !{!968, !95, !129}
!969 = distinct !{!969, !95, !129, !130}
!970 = distinct !{!970, !95, !129, !130}
end_hunk_8
