inline.NumInlined: 772
inline.NumDeleted: 374
begin_hunk_0_@_ZN6Assimp11RAWImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  br label %bb.p

bb.p:                                             ; preds = %bb.r, %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread.i
  %.2 = phi ptr [ %.1.lcssa, %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread.i ], [ %i.dd, %bb.r ] ; 5 uses
  %i.dc = load i8, ptr %.2, align 1               ; 2 uses
  switch i8 %i.dc, label %_ZN6Assimp11GetNextLineIcEEbRPKT_PS1_.exit.split.preheadersplit [
    i8 13, label %bb.q
end_hunk_0
begin_hunk_1_@_ZN6Assimp11RAWImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  br label %_ZN6Assimp11GetNextLineIcEEbRPKT_PS1_.exit.split.preheader

._ZN6Assimp11GetNextLineIcEEbRPKT_PS1_.exit.split.preheader_crit_edge: ; preds = %bb.q
  %.2.lcssa1150.a = phi ptr [ %.2, %bb.q ]
  br label %_ZN6Assimp11GetNextLineIcEEbRPKT_PS1_.exit.split.preheader

_ZN6Assimp11GetNextLineIcEEbRPKT_PS1_.exit.split.preheader: ; preds = %_ZN6Assimp11GetNextLineIcEEbRPKT_PS1_.exit.split.preheadersplit, %._ZN6Assimp11GetNextLineIcEEbRPKT_PS1_.exit.split.preheader_crit_edge
  %.2.lcssa = phi ptr [ %.2.lcssa1150.a, %._ZN6Assimp11GetNextLineIcEEbRPKT_PS1_.exit.split.preheader_crit_edge ], [ %.2.lcssa1149, %_ZN6Assimp11GetNextLineIcEEbRPKT_PS1_.exit.split.preheadersplit ] ; 2 uses
  br label %_ZN6Assimp11GetNextLineIcEEbRPKT_PS1_.exit.split

bb.q:                                             ; preds = %bb.p, %bb.p, %bb.p, %bb.p
end_hunk_1
begin_hunk_2_@_ZN6Assimp11RAWImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  br label %bb.di

bb.di:                                            ; preds = %.lr.ph608, %bb.dl
  %.sroa.0483.0606 = phi ptr [ %i.il, %.lr.ph608 ], [ %i.it, %bb.dl ] ; 5 uses
  %i.io = getelementptr i8, ptr %.sroa.0483.0606, i64 8
  %i.ip = load i64, ptr %i.io, align 8
  %i.iq = icmp eq i64 %i.ip, %.pre685
end_hunk_2
begin_hunk_3_@_ZN6Assimp11RAWImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  br label %.loopexit548.loopexit

..loopexit548.loopexit_crit_edge:                 ; preds = %bb.dj
  %.sroa.0483.0606.lcssa1153 = phi ptr [ %.sroa.0483.0606, %bb.dj ]
  br label %.loopexit548.loopexit

.loopexit548.loopexit:                            ; preds = %.loopexit548.loopexitsplit, %..loopexit548.loopexit_crit_edge
  %.sroa.0483.0606.lcssa = phi ptr [ %.sroa.0483.0606.lcssa1153, %..loopexit548.loopexit_crit_edge ], [ %.sroa.0483.0606.lcssa1154.a, %.loopexit548.loopexitsplit ]
  br label %.loopexit548

.loopexit548:                                     ; preds = %.loopexit548.loopexit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269
end_hunk_3
begin_hunk_4_@_ZN6Assimp12strtoul10_64I17DeadlyImportErrorEEmPKcPS3_Pj:bb.a
  br i1 %i.ad, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.lcssa185 = phi i64 [ %i.ac, %bb.j ]           ; 2 uses
  %.lcssa182 = phi ptr [ %lsr.iv, %bb.j ]         ; 3 uses
  store ptr %.lcssa182, ptr %i.a, align 8
end_hunk_4
begin_hunk_5_@_ZN6Assimp12strtoul10_64I17DeadlyImportErrorEEmPKcPS3_Pj:bb.a
  br label %.lr.ph71

.lr.ph71:                                         ; preds = %.lr.ph71.preheader, %.lr.ph71
  %lsr.iv194 = phi ptr [ %lsr.iv192, %.lr.ph71.preheader ], [ %scevgep195, %.lr.ph71 ] ; 3 uses
  store ptr %lsr.iv194, ptr %i.a, align 8
  %i.ag = load i8, ptr %lsr.iv194, align 1
  %i.ah = add i8 %i.ag, -48
end_hunk_5
