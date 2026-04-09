inline.NumInlined: 487
inline.NumDeleted: 195
begin_hunk_0_@_ZN6Assimp19SkeletonMeshBuilder10CreateMeshEv:bb.a
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = sdiv exact i64 %i.an, 12                ; 4 uses
  %i.ap = trunc i64 %i.ao to i32                  ; 2 uses
  store i32 %i.ap, ptr %i.c, align 8
  %i.aq = and i64 %i.ao, 4294967295               ; 5 uses
  %i.ar = shl nuw nsw i64 %i.aq, 4
  %i.as = or disjoint i64 %i.ar, 8
  %i.at = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.as) #12 ; 2 uses
  store i64 %i.aq, ptr %i.at, align 16
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 5 uses
  %i.av = icmp eq i64 %i.aq, 0
  br i1 %i.av, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %.loopexit69
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %i.aq
  %1 = add nuw nsw i64 %i.aq, 1152921504606846975
  %2 = and i64 %1, 1152921504606846975
  %xtraiter = and i64 %i.ao, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.e, %.prol.preheader
  %3 = phi ptr [ %5, %.prol.preheader ], [ %i.au, %bb.e ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.e ]
  store i32 0, ptr %3, align 8
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %4, align 8
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !207

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.e
  %.unr = phi ptr [ %i.au, %bb.e ], [ %5, %.prol.preheader ]
  %6 = icmp samesign ult i64 %2, 7
  br i1 %6, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %.prol.loopexit, %bb.f
  %i.ax = phi ptr [ %i.az, %bb.f ], [ %.unr, %.prol.loopexit ] ; 17 uses
  store i32 0, ptr %i.ax, align 8
  %7 = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr null, ptr %7, align 8
  %8 = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store i32 0, ptr %8, align 8
  %9 = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  store ptr null, ptr %9, align 8
  %10 = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  store i32 0, ptr %10, align 8
  %11 = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  store ptr null, ptr %11, align 8
  %12 = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  store i32 0, ptr %12, align 8
  %13 = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  store ptr null, ptr %13, align 8
  %14 = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  store i32 0, ptr %14, align 8
  %15 = getelementptr inbounds nuw i8, ptr %i.ax, i64 72
  store ptr null, ptr %15, align 8
  %16 = getelementptr inbounds nuw i8, ptr %i.ax, i64 80
  store i32 0, ptr %16, align 8
  %17 = getelementptr inbounds nuw i8, ptr %i.ax, i64 88
  store ptr null, ptr %17, align 8
  %18 = getelementptr inbounds nuw i8, ptr %i.ax, i64 96
  store i32 0, ptr %18, align 8
  %19 = getelementptr inbounds nuw i8, ptr %i.ax, i64 104
  store ptr null, ptr %19, align 8
  %20 = getelementptr inbounds nuw i8, ptr %i.ax, i64 112
  store i32 0, ptr %20, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 120
  store ptr null, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 128 ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.aw
  br i1 %i.ba, label %.loopexit, label %bb.f

.loopexit:                                        ; preds = %.prol.loopexit, %bb.f, %.loopexit69
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store ptr %i.au, ptr %i.bb, align 8
  %.not = icmp eq i32 %i.ap, 0
end_hunk_0
begin_hunk_1_@_ZN6Assimp19SkeletonMeshBuilder10CreateMeshEv:bb.a
  store float %.sroa.8.0, ptr %.sroa.8.0..sroa_idx.2, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !208
}

; Function Attrs: mustprogress uwtable
end_hunk_1
begin_hunk_2_@llvm.fmuladd.v4f32
!204 = distinct !{!204, !9}
!205 = distinct !{!205, !9}
!206 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!207 = distinct !{!207, !202}
!208 = distinct !{!208, !9}
end_hunk_2
