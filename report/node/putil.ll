inline.NumInlined: 85
inline.NumDeleted: 33
begin_hunk_0_@u_versionFromString_78:bb.a
  br i1 %i.aa, label %.lr.ph21.preheader, label %.loopexit

.lr.ph21.preheader:                               ; preds = %bb.b, %.preheader, %.lr.ph.preheader, %bb.c, %.lr.ph.2, %bb.e, %.lr.ph.1, %bb.d
  %.1.ph = phi i16 [ 2, %bb.d ], [ 2, %.lr.ph.1 ], [ 3, %bb.e ], [ 3, %.lr.ph.2 ], [ 1, %bb.c ], [ 1, %.lr.ph.preheader ], [ 0, %.preheader ], [ 0, %bb.b ] ; 2 uses
  %2 = zext nneg i16 %.1.ph to i64
  %scevgep = getelementptr i8, ptr %0, i64 %2
  %narrow = sub nuw nsw i16 4, %.1.ph
  %3 = zext nneg i16 %narrow to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i8 0, i64 %3, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %.lr.ph21.preheader, %bb.a
end_hunk_0
