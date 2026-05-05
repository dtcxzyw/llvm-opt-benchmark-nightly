inline.NumInlined: 1851
inline.NumDeleted: 929
begin_hunk_0_@_ZN6Assimp4Ogre10VertexData16GetVertexElementENS0_13VertexElement8SemanticEt:bb.a
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %.sroa.012.022 = phi ptr [ %i.j, %bb.c ], [ %i.b, %.lr.ph.preheader ] ; 5 uses
  %i.e = getelementptr i8, ptr %.sroa.012.022, i64 12
  %i.f = load i32, ptr %i.e, align 4
  %i.g = icmp eq i32 %i.f, %1
end_hunk_0
begin_hunk_1_@_ZN6Assimp4Ogre10VertexData16GetVertexElementENS0_13VertexElement8SemanticEt:bb.a
  br i1 %.not, label %._crit_edge.loopexitsplit, label %.lr.ph

._crit_edge.loopexitsplit:                        ; preds = %bb.c
  %.ph.ph = phi ptr [ null, %bb.c ]
  br label %._crit_edge.loopexit

.._crit_edge.loopexit_crit_edge:                  ; preds = %bb.b
  %.sroa.012.022.lcssa = phi ptr [ %.sroa.012.022, %bb.b ]
  %.sroa.012.022.lcssa.a = phi ptr [ %.sroa.012.022, %bb.b ] ; 0 uses
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexitsplit, %.._crit_edge.loopexit_crit_edge
  %.ph = phi ptr [ %.sroa.012.022.lcssa, %.._crit_edge.loopexit_crit_edge ], [ %.ph.ph, %._crit_edge.loopexitsplit ]
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
end_hunk_1
begin_hunk_2_@_ZN6Assimp4Ogre7SubMesh19ConvertToAssimpMeshEPNS0_4MeshE:bb.a
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.j
  %.sroa.012.022.i = phi ptr [ %i.ar, %bb.j ], [ %i.aj, %.lr.ph.i.preheader ] ; 5 uses
  %i.am = getelementptr i8, ptr %.sroa.012.022.i, i64 12
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = icmp eq i32 %i.an, 1
end_hunk_2
begin_hunk_3_@_ZN6Assimp4Ogre7SubMesh19ConvertToAssimpMeshEPNS0_4MeshE:bb.a
  br i1 %.not.i, label %_ZN6Assimp4Ogre10VertexData16GetVertexElementENS0_13VertexElement8SemanticEt.exitsplit, label %.lr.ph.i

_ZN6Assimp4Ogre10VertexData16GetVertexElementENS0_13VertexElement8SemanticEt.exitsplit: ; preds = %bb.j
  %.ph559 = phi ptr [ null, %bb.j ]
  br label %_ZN6Assimp4Ogre10VertexData16GetVertexElementENS0_13VertexElement8SemanticEt.exit

._ZN6Assimp4Ogre10VertexData16GetVertexElementENS0_13VertexElement8SemanticEt.exit_crit_edge: ; preds = %bb.i
  %.sroa.012.022.i.lcssa = phi ptr [ %.sroa.012.022.i, %bb.i ]
  %.sroa.012.022.i.lcssa.a = phi ptr [ %.sroa.012.022.i, %bb.i ] ; 0 uses
  br label %_ZN6Assimp4Ogre10VertexData16GetVertexElementENS0_13VertexElement8SemanticEt.exit

_ZN6Assimp4Ogre10VertexData16GetVertexElementENS0_13VertexElement8SemanticEt.exit: ; preds = %_ZN6Assimp4Ogre10VertexData16GetVertexElementENS0_13VertexElement8SemanticEt.exitsplit, %._ZN6Assimp4Ogre10VertexData16GetVertexElementENS0_13VertexElement8SemanticEt.exit_crit_edge
  %i.as = phi ptr [ %.sroa.012.022.i.lcssa, %._ZN6Assimp4Ogre10VertexData16GetVertexElementENS0_13VertexElement8SemanticEt.exit_crit_edge ], [ %.ph559, %_ZN6Assimp4Ogre10VertexData16GetVertexElementENS0_13VertexElement8SemanticEt.exitsplit ] ; 4 uses
  br label %.lr.ph.i234

.lr.ph.i234:                                      ; preds = %_ZN6Assimp4Ogre10VertexData16GetVertexElementENS0_13VertexElement8SemanticEt.exit, %bb.l
  %.sroa.012.022.i235 = phi ptr [ %i.ay, %bb.l ], [ %i.aj, %_ZN6Assimp4Ogre10VertexData16GetVertexElementENS0_13VertexElement8SemanticEt.exit ] ; 5 uses
  %i.at = getelementptr i8, ptr %.sroa.012.022.i235, i64 12
  %i.au = load i32, ptr %i.at, align 4
  %i.av = icmp eq i32 %i.au, 4
end_hunk_3
begin_hunk_4_@_ZN6Assimp4Ogre7SubMesh19ConvertToAssimpMeshEPNS0_4MeshE:bb.a
  br i1 %.not.i236, label %_ZN6Assimp4Ogre10VertexData16GetVertexElementENS0_13VertexElement8SemanticEt.exit237split, label %.lr.ph.i234

_ZN6Assimp4Ogre10VertexData16GetVertexElementENS0_13VertexElement8SemanticEt.exit237split: ; preds = %bb.l
  %.ph562 = phi ptr [ null, %bb.l ]
  br label %_ZN6Assimp4Ogre10VertexData16GetVertexElementENS0_13VertexElement8SemanticEt.exit237

._ZN6Assimp4Ogre10VertexData16GetVertexElementENS0_13VertexElement8SemanticEt.exit237_crit_edge: ; preds = %bb.k
  %.sroa.012.022.i235.lcssa = phi ptr [ %.sroa.012.022.i235, %bb.k ]
  %.sroa.012.022.i235.lcssa.a = phi ptr [ %.sroa.012.022.i235, %bb.k ] ; 0 uses
  br label %_ZN6Assimp4Ogre10VertexData16GetVertexElementENS0_13VertexElement8SemanticEt.exit237

_ZN6Assimp4Ogre10VertexData16GetVertexElementENS0_13VertexElement8SemanticEt.exit237: ; preds = %_ZN6Assimp4Ogre10VertexData16GetVertexElementENS0_13VertexElement8SemanticEt.exit237split, %._ZN6Assimp4Ogre10VertexData16GetVertexElementENS0_13VertexElement8SemanticEt.exit237_crit_edge
  %i.az = phi ptr [ %.sroa.012.022.i235.lcssa, %._ZN6Assimp4Ogre10VertexData16GetVertexElementENS0_13VertexElement8SemanticEt.exit237_crit_edge ], [ %.ph562, %_ZN6Assimp4Ogre10VertexData16GetVertexElementENS0_13VertexElement8SemanticEt.exit237split ] ; 6 uses
  br label %.lr.ph.i239

.lr.ph.i239:                                      ; preds = %_ZN6Assimp4Ogre10VertexData16GetVertexElementENS0_13VertexElement8SemanticEt.exit237, %bb.n
  %.sroa.012.022.i240 = phi ptr [ %i.bf, %bb.n ], [ %i.aj, %_ZN6Assimp4Ogre10VertexData16GetVertexElementENS0_13VertexElement8SemanticEt.exit237 ] ; 5 uses
  %i.ba = getelementptr i8, ptr %.sroa.012.022.i240, i64 12
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = icmp eq i32 %i.bb, 7
end_hunk_4
begin_hunk_5_@_ZN6Assimp4Ogre7SubMesh19ConvertToAssimpMeshEPNS0_4MeshE:bb.a
  br i1 %.not.i241, label %_ZN6Assimp4Ogre10VertexData16GetVertexElementENS0_13VertexElement8SemanticEt.exit242split, label %.lr.ph.i239

_ZN6Assimp4Ogre10VertexData16GetVertexElementENS0_13VertexElement8SemanticEt.exit242split: ; preds = %bb.n
  %.ph565 = phi ptr [ null, %bb.n ]
  br label %_ZN6Assimp4Ogre10VertexData16GetVertexElementENS0_13VertexElement8SemanticEt.exit242

._ZN6Assimp4Ogre10VertexData16GetVertexElementENS0_13VertexElement8SemanticEt.exit242_crit_edge: ; preds = %bb.m
  %.sroa.012.022.i240.lcssa = phi ptr [ %.sroa.012.022.i240, %bb.m ]
  %.sroa.012.022.i240.lcssa.a = phi ptr [ %.sroa.012.022.i240, %bb.m ] ; 0 uses
  br label %_ZN6Assimp4Ogre10VertexData16GetVertexElementENS0_13VertexElement8SemanticEt.exit242

_ZN6Assimp4Ogre10VertexData16GetVertexElementENS0_13VertexElement8SemanticEt.exit242: ; preds = %_ZN6Assimp4Ogre10VertexData16GetVertexElementENS0_13VertexElement8SemanticEt.exit242split, %._ZN6Assimp4Ogre10VertexData16GetVertexElementENS0_13VertexElement8SemanticEt.exit242_crit_edge
  %i.bg = phi ptr [ %.sroa.012.022.i240.lcssa, %._ZN6Assimp4Ogre10VertexData16GetVertexElementENS0_13VertexElement8SemanticEt.exit242_crit_edge ], [ %.ph565, %_ZN6Assimp4Ogre10VertexData16GetVertexElementENS0_13VertexElement8SemanticEt.exit242split ] ; 6 uses
  br label %.lr.ph.i244

.lr.ph.i244:                                      ; preds = %_ZN6Assimp4Ogre10VertexData16GetVertexElementENS0_13VertexElement8SemanticEt.exit242, %bb.p
  %.sroa.012.022.i245 = phi ptr [ %i.bm, %bb.p ], [ %i.aj, %_ZN6Assimp4Ogre10VertexData16GetVertexElementENS0_13VertexElement8SemanticEt.exit242 ] ; 5 uses
  %i.bh = getelementptr i8, ptr %.sroa.012.022.i245, i64 12
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = icmp eq i32 %i.bi, 7
end_hunk_5
begin_hunk_6_@_ZN6Assimp4Ogre7SubMesh19ConvertToAssimpMeshEPNS0_4MeshE:bb.a
  br i1 %.not.i246, label %_ZN6Assimp4Ogre10VertexData16GetVertexElementENS0_13VertexElement8SemanticEt.exit247split, label %.lr.ph.i244

_ZN6Assimp4Ogre10VertexData16GetVertexElementENS0_13VertexElement8SemanticEt.exit247split: ; preds = %bb.p
  %.ph568 = phi ptr [ null, %bb.p ]
  br label %_ZN6Assimp4Ogre10VertexData16GetVertexElementENS0_13VertexElement8SemanticEt.exit247

._ZN6Assimp4Ogre10VertexData16GetVertexElementENS0_13VertexElement8SemanticEt.exit247_crit_edge: ; preds = %bb.o
  %.sroa.012.022.i245.lcssa = phi ptr [ %.sroa.012.022.i245, %bb.o ]
  %.sroa.012.022.i245.lcssa.a = phi ptr [ %.sroa.012.022.i245, %bb.o ] ; 0 uses
  br label %_ZN6Assimp4Ogre10VertexData16GetVertexElementENS0_13VertexElement8SemanticEt.exit247

_ZN6Assimp4Ogre10VertexData16GetVertexElementENS0_13VertexElement8SemanticEt.exit247: ; preds = %_ZN6Assimp4Ogre10VertexData16GetVertexElementENS0_13VertexElement8SemanticEt.exit247split, %._ZN6Assimp4Ogre10VertexData16GetVertexElementENS0_13VertexElement8SemanticEt.exit247_crit_edge
  %i.bn = phi ptr [ %.sroa.012.022.i245.lcssa, %._ZN6Assimp4Ogre10VertexData16GetVertexElementENS0_13VertexElement8SemanticEt.exit247_crit_edge ], [ %.ph568, %_ZN6Assimp4Ogre10VertexData16GetVertexElementENS0_13VertexElement8SemanticEt.exit247split ] ; 6 uses
  %.not211 = icmp eq ptr %i.as, null
  br i1 %.not211, label %_ZN6Assimp4Ogre10VertexData16GetVertexElementENS0_13VertexElement8SemanticEt.exit247.thread, label %bb.s

end_hunk_6
