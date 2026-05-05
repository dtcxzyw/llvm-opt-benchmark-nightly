inline.NumInlined: 1116
inline.NumDeleted: 120
begin_hunk_0_@_ZN4llvh6AMDGPU17getArchNameAMDGCNENS0_7GPUKindE:bb.a
bb.a:
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %bb.a
  %.04.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ @_ZN12_GLOBAL__N_110AMDGCNGPUsE, %bb.a ] ; 2 uses
  %.0113.i.i.i = phi i64 [ %.112.i.i.i, %.lr.ph.i.i.i ], [ 32, %bb.a ] ; 2 uses
  %i.a = lshr i64 %.0113.i.i.i, 1                 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN4llvh6AMDGPU15getArchNameR600ENS0_7GPUKindE:bb.a
bb.a:
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %bb.a
  %.04.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ @_ZN12_GLOBAL__N_18R600GPUsE, %bb.a ] ; 2 uses
  %.0113.i.i.i = phi i64 [ %.112.i.i.i, %.lr.ph.i.i.i ], [ 26, %bb.a ] ; 2 uses
  %i.a = lshr i64 %.0113.i.i.i, 1                 ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN4llvh6AMDGPU17getArchAttrAMDGCNENS0_7GPUKindE:bb.a
bb.a:
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %bb.a
  %.04.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ @_ZN12_GLOBAL__N_110AMDGCNGPUsE, %bb.a ] ; 2 uses
  %.0113.i.i.i = phi i64 [ %.112.i.i.i, %.lr.ph.i.i.i ], [ 32, %bb.a ] ; 2 uses
  %i.a = lshr i64 %.0113.i.i.i, 1                 ; 3 uses
end_hunk_2
begin_hunk_3_@_ZN4llvh6AMDGPU15getArchAttrR600ENS0_7GPUKindE:bb.a
bb.a:
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %bb.a
  %.04.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ @_ZN12_GLOBAL__N_18R600GPUsE, %bb.a ] ; 2 uses
  %.0113.i.i.i = phi i64 [ %.112.i.i.i, %.lr.ph.i.i.i ], [ 26, %bb.a ] ; 2 uses
  %i.a = lshr i64 %.0113.i.i.i, 1                 ; 3 uses
end_hunk_3
