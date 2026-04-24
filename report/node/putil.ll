inline.NumInlined: 85
inline.NumDeleted: 33
begin_hunk_0_@u_versionFromString_78:bb.a
  br i1 %i.aa, label %.lr.ph21.preheader, label %.loopexit

.lr.ph21.preheader:                               ; preds = %bb.b, %.preheader, %.lr.ph.preheader, %bb.c, %.lr.ph.2, %bb.e, %.lr.ph.1, %bb.d
  %.1.ph = phi i64 [ 2, %bb.d ], [ 2, %.lr.ph.1 ], [ 3, %bb.e ], [ 3, %.lr.ph.2 ], [ 1, %bb.c ], [ 1, %.lr.ph.preheader ], [ 0, %.preheader ], [ 0, %bb.b ]
  %.neg = phi i64 [ 2, %bb.d ], [ 2, %.lr.ph.1 ], [ 1, %bb.e ], [ 1, %.lr.ph.2 ], [ 3, %bb.c ], [ 3, %.lr.ph.preheader ], [ 4, %.preheader ], [ 4, %bb.b ]
  %scevgep = getelementptr i8, ptr %0, i64 %.1.ph
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i8 0, i64 %.neg, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %.lr.ph21.preheader, %bb.a
end_hunk_0
