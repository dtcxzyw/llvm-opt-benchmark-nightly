inline.NumInlined: 57
inline.NumDeleted: 31
begin_hunk_0_@_ZN5o3dgc10ITransformEPlm:bb.a
  %.037 = phi i64 [ %i.k, %.lr.ph39 ], [ %i.cj, %_ZN5o3dgc8IPredictEPll.exit ] ; 3 uses
  %.136 = phi i64 [ 1, %.lr.ph39 ], [ %i.q, %_ZN5o3dgc8IPredictEPll.exit ]
  %i.n = shl i64 %.136, 1
  %i.o = lshr i64 %i.i, %.037                     ; 3 uses
  %i.p = and i64 %i.o, 1
  %i.q = sub i64 %i.n, %i.p                       ; 6 uses
  %i.r = ashr i64 %i.q, 1                         ; 3 uses
  %i.s = and i64 %i.q, 1
end_hunk_0
begin_hunk_1_@_ZN5o3dgc10ITransformEPlm:bb.a
  br i1 %i.u, label %.preheader.i.preheader, label %_ZN5o3dgc5MergeEPll.exit

.preheader.i.preheader:                           ; preds = %bb.b
  %2 = or i64 %i.o, -2
  %i.v = sub i64 %i.r, %i.o
  %i.w = and i64 %i.v, 1
  %lcmp.mod.not.not = icmp eq i64 %i.w, 0
end_hunk_1
begin_hunk_2_@_ZN5o3dgc10ITransformEPlm:bb.a
.preheader.i.prol.loopexit:                       ; preds = %._crit_edge.i.prol, %.preheader.i.preheader
  %.01519.in.i.unr = phi i64 [ %i.t, %.preheader.i.preheader ], [ %.01519.i.prol, %._crit_edge.i.prol ]
  %.01418.i.unr = phi i64 [ %i.t, %.preheader.i.preheader ], [ %i.ac, %._crit_edge.i.prol ]
  %i.ad = sub nsw i64 0, %2
  %i.ae = icmp eq i64 %i.r, %i.ad
  br i1 %i.ae, label %_ZN5o3dgc5MergeEPll.exit, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.prol.loopexit, %._crit_edge.i.1
end_hunk_2
