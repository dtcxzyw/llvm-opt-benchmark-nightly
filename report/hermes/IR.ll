inline.NumInlined: 3701
inline.NumDeleted: 2010
begin_hunk_0_@_ZNSt3_V28__rotateIPcEET_S2_S2_S2_St26random_access_iterator_tag:bb.a
bb.e:                                             ; preds = %.backedge, %bb.d
  %.086 = phi i64 [ %i.e, %bb.d ], [ %.086.be, %.backedge ] ; 11 uses
  %.082 = phi i64 [ %i.g, %bb.d ], [ %.082.be, %.backedge ] ; 20 uses
  %.058 = phi ptr [ %0, %bb.d ], [ %.058.be, %.backedge ] ; 24 uses
  %i.aq = sub nsw i64 %.086, %.082                ; 12 uses
  %i.ar = icmp slt i64 %.082, %i.aq
  br i1 %i.ar, label %bb.f, label %bb.i

end_hunk_0
begin_hunk_1_@_ZNSt3_V28__rotateIPcEET_S2_S2_S2_St26random_access_iterator_tag:bb.a
  br i1 %i.ax, label %.lr.ph109.preheader.a, label %._crit_edge110

.lr.ph109.preheader.a:                            ; preds = %bb.g
  %i.ay = getelementptr i8, ptr %.058, i64 %.082  ; 5 uses
  %min.iters.check = icmp ult i64 %i.aq, 32
  br i1 %min.iters.check, label %.lr.ph109.preheader229, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph109.preheader.a
end_hunk_1
begin_hunk_2_@_ZNSt3_V28__rotateIPcEET_S2_S2_S2_St26random_access_iterator_tag:bb.a
  %bound0 = icmp ult ptr %.058, %scevgep135
  %bound1 = icmp ult ptr %i.ay, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph109.preheader229, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aq, 9223372036854775776     ; 5 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 %n.vec
  %i.ba = getelementptr i8, ptr %.058, i64 %n.vec ; 2 uses
  br label %vector.body
end_hunk_2
begin_hunk_3_@_ZNSt3_V28__rotateIPcEET_S2_S2_S2_St26random_access_iterator_tag:bb.a
  store <16 x i8> %wide.load137, ptr %i.bc, align 1, !tbaa !66, !alias.scope !516
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block.a, label %vector.body, !llvm.loop !518

middle.block.a:                                   ; preds = %vector.body
  %cmp.n.a = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n.a, label %._crit_edge110, label %.lr.ph109.preheader229

.lr.ph109.preheader229:                           ; preds = %vector.memcheck, %.lr.ph109.preheader.a, %middle.block.a
  %.054107.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph109.preheader.a ], [ %n.vec, %middle.block.a ] ; 3 uses
  %.055106.ph = phi ptr [ %i.ay, %vector.memcheck ], [ %i.ay, %.lr.ph109.preheader.a ], [ %i.az, %middle.block.a ] ; 2 uses
  %.159105.ph = phi ptr [ %.058, %vector.memcheck ], [ %.058, %.lr.ph109.preheader.a ], [ %i.ba, %middle.block.a ] ; 2 uses
  %i.be = sub i64 %.086, %.082
  %xtraiter236 = and i64 %i.be, 3                 ; 2 uses
  %lcmp.mod237.not = icmp eq i64 %xtraiter236, 0
end_hunk_3
begin_hunk_4_@_ZNSt3_V28__rotateIPcEET_S2_S2_S2_St26random_access_iterator_tag:bb.a
  %i.bj = add nuw nsw i64 %.054107.prol, 1        ; 2 uses
  %prol.iter238.next = add i64 %prol.iter238, 1   ; 2 uses
  %prol.iter238.cmp.not = icmp eq i64 %prol.iter238.next, %xtraiter236
  br i1 %prol.iter238.cmp.not, label %.lr.ph109.prol.loopexit, label %.lr.ph109.prol, !llvm.loop !519

.lr.ph109.prol.loopexit:                          ; preds = %.lr.ph109.prol, %.lr.ph109.preheader229
  %.lcssa.unr = phi ptr [ poison, %.lr.ph109.preheader229 ], [ %i.bh, %.lr.ph109.prol ]
end_hunk_4
begin_hunk_5_@_ZNSt3_V28__rotateIPcEET_S2_S2_S2_St26random_access_iterator_tag:bb.a
  %i.bm = icmp ugt i64 %i.bl, -4
  br i1 %i.bm, label %._crit_edge110, label %.lr.ph109

._crit_edge110:                                   ; preds = %.lr.ph109.prol.loopexit, %.lr.ph109, %middle.block.a, %bb.g
  %.159.lcssa = phi ptr [ %.058, %bb.g ], [ %i.ba, %middle.block.a ], [ %.lcssa.unr, %.lr.ph109.prol.loopexit ], [ %i.cc, %.lr.ph109 ]
  %i.bn = srem i64 %.086, %.082                   ; 2 uses
  %.not67 = icmp eq i64 %i.bn, 0
  br i1 %.not67, label %_ZSt11swap_rangesIPcS0_ET0_T_S2_S1_.exit, label %bb.h
end_hunk_5
begin_hunk_6_@_ZNSt3_V28__rotateIPcEET_S2_S2_S2_St26random_access_iterator_tag:bb.a
  %i.cd = getelementptr inbounds nuw i8, ptr %.055106, i64 4
  %i.ce = add nuw nsw i64 %.054107, 4             ; 2 uses
  %exitcond118.not.3 = icmp eq i64 %i.ce, %i.aq
  br i1 %exitcond118.not.3, label %._crit_edge110, label %.lr.ph109, !llvm.loop !520

bb.h:                                             ; preds = %._crit_edge110
  %i.cf = sub nsw i64 %.082, %i.bn
end_hunk_6
begin_hunk_7_@_ZNSt3_V28__rotateIPcEET_S2_S2_S2_St26random_access_iterator_tag:bb.a
  %offset.idx156 = sub i64 0, %index154
  %next.gep157 = getelementptr i8, ptr %i.cq, i64 %offset.idx156
  %i.cw = getelementptr inbounds i8, ptr %next.gep157, i64 -16 ; 2 uses
  %wide.load158 = load <16 x i8>, ptr %i.cw, align 1, !tbaa !66, !alias.scope !521, !noalias !524
  %i.cx = getelementptr inbounds i8, ptr %next.gep155, i64 -16 ; 2 uses
  %wide.load159 = load <16 x i8>, ptr %i.cx, align 1, !tbaa !66, !alias.scope !524
  store <16 x i8> %wide.load159, ptr %i.cw, align 1, !tbaa !66, !alias.scope !521, !noalias !524
  store <16 x i8> %wide.load158, ptr %i.cx, align 1, !tbaa !66, !alias.scope !524
  %index.next163 = add nuw i64 %index154, 16      ; 2 uses
  %i.cy = icmp eq i64 %index.next163, %n.vec152
  br i1 %i.cy, label %middle.block164, label %vector.body153, !llvm.loop !526

middle.block164:                                  ; preds = %vector.body153
  %cmp.n165 = icmp eq i64 %.082, %n.vec152
end_hunk_7
begin_hunk_8_@_ZNSt3_V28__rotateIPcEET_S2_S2_S2_St26random_access_iterator_tag:bb.a

vec.epilog.iter.check.a:                          ; preds = %middle.block164
  %min.epilog.iters.check.not.not = icmp eq i64 %n.mod.vf151, 0
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph.preheader, label %vec.epilog.ph.a, !prof !527

vec.epilog.ph.a:                                  ; preds = %vector.main.loop.iter.check.a, %vec.epilog.iter.check.a
  %vec.epilog.resume.val.a = phi i64 [ %n.vec152, %vec.epilog.iter.check.a ], [ 0, %vector.main.loop.iter.check.a ]
end_hunk_8
begin_hunk_9_@_ZNSt3_V28__rotateIPcEET_S2_S2_S2_St26random_access_iterator_tag:bb.a
  %i.de = sub i64 0, %index170
  %next.gep172 = getelementptr i8, ptr %i.cq, i64 %i.de
  %i.df = getelementptr inbounds i8, ptr %next.gep172, i64 -8 ; 2 uses
  %wide.load173 = load <8 x i8>, ptr %i.df, align 1, !tbaa !66, !alias.scope !521, !noalias !524
  %i.dg = getelementptr inbounds i8, ptr %next.gep171, i64 -8 ; 2 uses
  %wide.load175 = load <8 x i8>, ptr %i.dg, align 1, !tbaa !66, !alias.scope !524
  store <8 x i8> %wide.load175, ptr %i.df, align 1, !tbaa !66, !alias.scope !521, !noalias !524
  store <8 x i8> %wide.load173, ptr %i.dg, align 1, !tbaa !66, !alias.scope !524
  %index.next179 = add nuw i64 %index170, 8       ; 2 uses
  %i.dh = icmp eq i64 %index.next179, %n.vec169
  br i1 %i.dh, label %vec.epilog.middle.block, label %vec.epilog.vector.body.a, !llvm.loop !528

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body.a
  %cmp.n180 = icmp eq i64 %.082, %n.vec169
end_hunk_9
begin_hunk_10_@_ZNSt3_V28__rotateIPcEET_S2_S2_S2_St26random_access_iterator_tag:bb.a
  %i.dm = add nuw nsw i64 %.0104.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !529

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.0104.unr = phi i64 [ %.0104.ph, %.lr.ph.preheader ], [ %i.dm, %.lr.ph.prol ]
end_hunk_10
begin_hunk_11_@_ZNSt3_V28__rotateIPcEET_S2_S2_S2_St26random_access_iterator_tag:bb.a
  %.086.be = phi i64 [ %.082, %bb.h ], [ %i.aq, %._crit_edge ]
  %.082.be = phi i64 [ %i.cf, %bb.h ], [ %i.dp, %._crit_edge ]
  %.058.be = phi ptr [ %.159.lcssa, %bb.h ], [ %.260.lcssa, %._crit_edge ]
  br label %bb.e, !llvm.loop !530

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.0104 = phi i64 [ %i.eg, %.lr.ph ], [ %.0104.unr, %.lr.ph.prol.loopexit ]
end_hunk_11
begin_hunk_12_@_ZNSt3_V28__rotateIPcEET_S2_S2_S2_St26random_access_iterator_tag:bb.a
  store i8 %i.ee, ptr %i.ed, align 1, !tbaa !66
  %i.eg = add nuw nsw i64 %.0104, 4               ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.eg, %.082
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !531

_ZSt11swap_rangesIPcS0_ET0_T_S2_S1_.exit:         ; preds = %._crit_edge, %._crit_edge110, %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block206, %vec.epilog.middle.block225, %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit, %_ZSt4moveIPcS0_ET0_T_S2_S1_.exit, %bb.b, %bb.a
  %.6 = phi ptr [ %0, %bb.b ], [ %2, %bb.a ], [ %i.ap, %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit ], [ %i.ap, %_ZSt4moveIPcS0_ET0_T_S2_S1_.exit ], [ %1, %middle.block206 ], [ %1, %.lr.ph.i.prol.loopexit ], [ %1, %vec.epilog.middle.block225 ], [ %1, %.lr.ph.i ], [ %i.ap, %._crit_edge110 ], [ %i.ap, %._crit_edge ]
end_hunk_12
begin_hunk_13_@_ZNSt10_HashtableISt6vectorIPN6hermes13LiteralStringESaIS3_EESt4pairIKS5_jESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ENS1_6Module14HashRawStringsENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE:bb.a

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !532
  br label %_ZNSt10_HashtableISt6vectorIPN6hermes13LiteralStringESaIS3_EESt4pairIKS5_jESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ENS1_6Module14HashRawStringsENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
end_hunk_13
begin_hunk_14_@_ZNSt10_HashtableISt6vectorIPN6hermes13LiteralStringESaIS3_EESt4pairIKS5_jESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ENS1_6Module14HashRawStringsENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE:bb.a
bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.1 = phi i64 [ %.02530, %bb.i ], [ %i.l, %bb.h ], [ %i.l, %bb.g ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !533

._crit_edge:                                      ; preds = %bb.j, %_ZNSt10_HashtableISt6vectorIPN6hermes13LiteralStringESaIS3_EESt4pairIKS5_jESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ENS1_6Module14HashRawStringsENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !314    ; 2 uses
end_hunk_14
begin_hunk_15_@_ZN4llvh8DenseMapIN6hermes10IdentifierEjNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_jEEE4growEj:_ZN4llvh8DenseMapIN6hermes10IdentifierEjNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_jEEE15allocateBucketsEj.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %.06.i.prol, i64 16 ; 2 uses
  %prol.iter29.next = add i64 %prol.iter29, 1     ; 2 uses
  %prol.iter29.cmp.not = icmp eq i64 %prol.iter29.next, %xtraiter27
  br i1 %prol.iter29.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !534

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.06.i.unr = phi ptr [ %i.t, %.lr.ph.i.preheader ], [ %i.ac, %.lr.ph.i.prol ]
end_hunk_15
begin_hunk_16_@_ZN4llvh8DenseMapIN6hermes10IdentifierEjNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_jEEE4growEj:_ZN4llvh8DenseMapIN6hermes10IdentifierEjNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_jEEE15allocateBucketsEj.exit
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ak, align 8, !tbaa !111
  %i.al = getelementptr inbounds nuw i8, ptr %.06.i, i64 128 ; 2 uses
  %.not.i.7 = icmp eq ptr %i.al, %i.y
  br i1 %.not.i.7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E9initEmptyEv.exit, label %.lr.ph.i, !llvm.loop !535

bb.b:                                             ; preds = %_ZN4llvh8DenseMapIN6hermes10IdentifierEjNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_jEEE15allocateBucketsEj.exit
  %i.am = zext i32 %i.b to i64
end_hunk_16
begin_hunk_17_@_ZN4llvh8DenseMapIN6hermes10IdentifierEjNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_jEEE4growEj:_ZN4llvh8DenseMapIN6hermes10IdentifierEjNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_jEEE15allocateBucketsEj.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %.06.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !536

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.06.i.i.unr = phi ptr [ %i.t, %.lr.ph.i.i.preheader ], [ %i.aw, %.lr.ph.i.i.prol ]
end_hunk_17
begin_hunk_18_@_ZN4llvh8DenseMapIN6hermes10IdentifierEjNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_jEEE4growEj:_ZN4llvh8DenseMapIN6hermes10IdentifierEjNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_jEEE15allocateBucketsEj.exit
  store ptr inttoptr (i64 -8 to ptr), ptr %i.be, align 8, !tbaa !111
  %i.bf = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 128 ; 2 uses
  %.not.i.i.7 = icmp eq ptr %i.bf, %i.as
  br i1 %.not.i.i.7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E9initEmptyEv.exit.i, label %.lr.ph.i.i, !llvm.loop !535

_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E9initEmptyEv.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.b
  %.not22.i = icmp eq i32 %i.b, 0
end_hunk_18
begin_hunk_19_@_ZN4llvh8DenseMapIN6hermes10IdentifierEjNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_jEEE4growEj:_ZN4llvh8DenseMapIN6hermes10IdentifierEjNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_jEEE15allocateBucketsEj.exit
  %i.cf = phi i32 [ %i.ce, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit.i ], [ %i.bg, %.lr.ph.i6 ], [ %i.bg, %.lr.ph.i6 ]
  %i.cg = getelementptr inbounds nuw i8, ptr %.023.i, i64 16 ; 2 uses
  %.not.i7 = icmp eq ptr %i.cg, %i.an
  br i1 %.not.i7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E18moveFromOldBucketsEPS8_SB_.exit, label %.lr.ph.i6, !llvm.loop !537

_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E18moveFromOldBucketsEPS8_SB_.exit: ; preds = %bb.f, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E9initEmptyEv.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #29
end_hunk_19
begin_hunk_20_@llvm.fshl.i64
!516 = !{!517}
!517 = distinct !{!517, !515}
!518 = distinct !{!518, !72, !485, !486}
!519 = distinct !{!519, !259}
!520 = distinct !{!520, !72, !485}
!521 = !{!522}
!522 = distinct !{!522, !523}
!523 = distinct !{!523, !"LVerDomain"}
!524 = !{!525}
!525 = distinct !{!525, !523}
!526 = distinct !{!526, !72, !485, !486}
!527 = !{!"branch_weights", i32 8, i32 8}
!528 = distinct !{!528, !72, !485, !486}
!529 = distinct !{!529, !259}
!530 = distinct !{!530, !72}
!531 = distinct !{!531, !72, !485}
!532 = !{!302, !305, i64 48}
!533 = distinct !{!533, !72}
!534 = distinct !{!534, !259}
!535 = distinct !{!535, !72}
!536 = distinct !{!536, !259}
!537 = distinct !{!537, !72}
end_hunk_20
