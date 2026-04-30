inline.NumInlined: 627
inline.NumDeleted: 141
begin_hunk_0_@_ZN11HullLibrary15CleanupVerticesEjPK9btVector3jRjPS0_fRS0_:bb.a
  br label %.lr.ph387

bb.m:                                             ; preds = %bb.k, %_ZN20btAlignedObjectArrayIiE9push_backERKi.exit
  %.1283384 = phi ptr [ %2, %bb.k ], [ %i.bw, %_ZN20btAlignedObjectArrayIiE9push_backERKi.exit ] ; 3 uses
  %.0306383 = phi i32 [ 0, %bb.k ], [ %i.ff, %_ZN20btAlignedObjectArrayIiE9push_backERKi.exit ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.1283384, i64 %i.s
end_hunk_0
begin_hunk_1_@_ZN11HullLibrary15CleanupVerticesEjPK9btVector3jRjPS0_fRS0_:bb.a
  store float %i.cb, ptr %i.dm, align 4, !tbaa !8
  %i.dn = add i32 %i.cc, 1
  store i32 %i.dn, ptr %4, align 4, !tbaa !4
  br label %bb.r

bb.r:                                             ; preds = %.loopexit.thread, %.loopexit
  %.0310369459 = phi i32 [ %.0310369460.a, %.loopexit.thread ], [ %.0310369, %.loopexit ]
  %8 = load i32, ptr %i.b, align 4, !tbaa !77     ; 7 uses
  %i.do = load i32, ptr %i.bs, align 8, !tbaa !78
  %i.dp = icmp eq i32 %8, %i.do
  br i1 %i.dp, label %bb.s, label %_ZN20btAlignedObjectArrayIiE9push_backERKi.exit

bb.s:                                             ; preds = %bb.r
  %.not.i.i = icmp eq i32 %8, 0
  %i.dq = shl nsw i32 %8, 1
  %i.dr = select i1 %.not.i.i, i32 1, i32 %i.dq   ; 4 uses
  %i.ds = icmp slt i32 %8, %i.dr
  br i1 %i.ds, label %bb.t, label %_ZN20btAlignedObjectArrayIiE9push_backERKi.exit

bb.t:                                             ; preds = %bb.s
end_hunk_1
begin_hunk_2_@_ZN11HullLibrary15CleanupVerticesEjPK9btVector3jRjPS0_fRS0_:bb.a
  br label %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i: ; preds = %bb.u, %bb.t
  %i.dw = phi i32 [ %.pre.i, %bb.u ], [ %8, %bb.t ] ; 4 uses
  %.0.i.i.i = phi ptr [ %i.dv, %bb.u ], [ null, %bb.t ] ; 8 uses
  %i.dx = icmp sgt i32 %i.dw, 0
  %i.dy = load ptr, ptr %i.bt, align 8, !tbaa !70 ; 9 uses
end_hunk_2
begin_hunk_3_@_ZN11HullLibrary15CleanupVerticesEjPK9btVector3jRjPS0_fRS0_:bb.a
  br label %_ZN20btAlignedObjectArrayIiE9push_backERKi.exit

_ZN20btAlignedObjectArrayIiE9push_backERKi.exit:  ; preds = %bb.r, %bb.s, %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i343
  %i.ez = phi i32 [ %.pre2.i, %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i343 ], [ %8, %bb.s ], [ %8, %bb.r ]
  %i.fa = load ptr, ptr %i.bt, align 8, !tbaa !70
  %i.fb = sext i32 %i.ez to i64
  %i.fc = getelementptr inbounds [4 x i8], ptr %i.fa, i64 %i.fb
  store i32 %.0310369459, ptr %i.fc, align 4, !tbaa !4
  %i.fd = load i32, ptr %i.b, align 4, !tbaa !77
  %i.fe = add nsw i32 %i.fd, 1
  store i32 %i.fe, ptr %i.b, align 4, !tbaa !77
  %i.ff = add nuw i32 %.0306383, 1                ; 2 uses
  %exitcond400.not = icmp eq i32 %i.ff, %1
end_hunk_3
