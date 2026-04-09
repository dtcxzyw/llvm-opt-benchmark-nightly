inline.NumInlined: 487
inline.NumDeleted: 195
begin_hunk_0_@_ZN6Assimp19SkeletonMeshBuilder10CreateMeshEv:bb.a
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = sdiv exact i64 %i.an, 12                ; 3 uses
  %i.ap = trunc i64 %i.ao to i32                  ; 2 uses
  store i32 %i.ap, ptr %i.c, align 8
  %i.aq = and i64 %i.ao, 4294967295               ; 4 uses
  %i.ar = shl nuw nsw i64 %i.aq, 4
  %i.as = or disjoint i64 %i.ar, 8
  %i.at = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.as) #12 ; 2 uses
  store i64 %i.aq, ptr %i.at, align 16
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 4 uses
  %i.av = icmp eq i64 %i.aq, 0
  br i1 %i.av, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %.loopexit69
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %i.aq
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %i.ax = phi ptr [ %i.au, %bb.e ], [ %i.az, %bb.f ] ; 3 uses
  store i32 0, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr null, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.aw
  br i1 %i.ba, label %.loopexit, label %bb.f

.loopexit:                                        ; preds = %bb.f, %.loopexit69
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store ptr %i.au, ptr %i.bb, align 8
  %.not = icmp eq i32 %i.ap, 0
end_hunk_0
begin_hunk_1_@_ZN6Assimp19SkeletonMeshBuilder10CreateMeshEv:bb.a
  store float %.sroa.8.0, ptr %.sroa.8.0..sroa_idx.2, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !207
}

; Function Attrs: mustprogress uwtable
end_hunk_1
begin_hunk_2_@llvm.fmuladd.v4f32
!204 = distinct !{!204, !9}
!205 = distinct !{!205, !9}
!206 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!207 = distinct !{!207, !9}
end_hunk_2
