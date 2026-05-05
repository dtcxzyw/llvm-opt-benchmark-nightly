inline.NumInlined: 1138
inline.NumDeleted: 495
begin_hunk_0_@_ZN6Assimp12X3DGeoHelper10add_normalER6aiMeshRKSt6vectorIiSaIiEES7_RKNSt7__cxx114listI10aiVector3tIfESaISB_EEEb:bb.a
  br label %.lr.ph334

._crit_edge335:                                   ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit
  %.sroa.0195.2.lcssa531 = phi ptr [ %.sroa.0195.2, %_ZNSt6vectorImSaImEE9push_backEOm.exit ]
  %.sroa.42.2.lcssa = phi ptr [ %.sroa.42.2, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 8 uses
  %.sroa.23.1.lcssa = phi ptr [ %.sroa.23.1, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 2 uses
  %.sroa.0195.2.lcssa = phi ptr [ %.sroa.0195.2, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 11 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp12X3DGeoHelper10add_normalER6aiMeshRKSt6vectorIiSaIiEES7_RKNSt7__cxx114listI10aiVector3tIfESaISB_EEEb:bb.a
  %lsr.iv = phi i64 [ 0, %.lr.ph463.preheader ], [ %lsr.iv.next, %bb.u ] ; 2 uses
  %.078339462 = phi i64 [ %i.ea, %bb.u ], [ 0, %.lr.ph463.preheader ] ; 4 uses
  %i.cd = shl nuw nsw i64 %.078339462, 3
  %scevgep531 = getelementptr i8, ptr %.sroa.0195.2.lcssa531, i64 %i.cd
  %i.ce = load i64, ptr %scevgep531, align 8      ; 2 uses
  %.not87 = icmp ult i64 %i.ce, %i.cc
  br i1 %.not87, label %bb.aj, label %bb.v
end_hunk_1
begin_hunk_2_@_ZSt16__do_uninit_copyIPK6aiFacePS0_ET0_T_S5_S4_:bb.a
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !90

bb.e:                                             ; preds = %bb.c
  %lsr.iv.lcssa = phi i64 [ %lsr.iv, %bb.c ]
  %.016.lcssa = phi ptr [ %.016, %bb.c ]
  %i.k = landingpad { ptr, i32 }
          catch ptr null
end_hunk_2
begin_hunk_3_@_ZSt16__do_uninit_copyIPK6aiFacePS0_ET0_T_S5_S4_:bb.a

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i
  %lsr.iv32 = phi ptr [ %scevgep, %.lr.ph.i.i.preheader ], [ %scevgep33, %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i ] ; 2 uses
  %lsr.iv29 = phi i64 [ %lsr.iv.lcssa, %.lr.ph.i.i.preheader ], [ %lsr.iv.next30, %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i ]
  %i.n = load ptr, ptr %lsr.iv32, align 8         ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i, label %bb.f
end_hunk_3
