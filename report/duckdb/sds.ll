inline.NumInlined: 91
inline.NumDeleted: 9
begin_hunk_0_@_ZN10duckdb_hll7sdsjoinEPPciS0_:bb.a
  br label %_ZN10duckdb_hll8sdsemptyEv.exit

_ZN10duckdb_hll8sdsemptyEv.exit:                  ; preds = %bb.a, %bb.b
  %.0.i.i = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.f = icmp sgt i32 %1, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN10duckdb_hll8sdsemptyEv.exit
  %i.g = add nsw i32 %1, -1
  %i.h = zext nneg i32 %i.g to i64
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN10duckdb_hll6sdscatEPcPKc.exit16
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN10duckdb_hll6sdscatEPcPKc.exit16 ] ; 3 uses
  %.01017 = phi ptr [ %.0.i.i, %.lr.ph ], [ %.1, %_ZN10duckdb_hll6sdscatEPcPKc.exit16 ] ; 6 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !28   ; 2 uses
  %i.k = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.j) #32 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN10duckdb_hll7sdsjoinEPPciS0_:bb.a
_ZN10duckdb_hll6sdscatEPcPKc.exit16:              ; preds = %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i.i14, %_ZN10duckdb_hllL6sdslenEPc.exit.i.i12, %_ZN10duckdb_hll6sdscatEPcPKc.exit
  %.1 = phi ptr [ %i.ac, %_ZN10duckdb_hll6sdscatEPcPKc.exit ], [ null, %_ZN10duckdb_hllL6sdslenEPc.exit.i.i12 ], [ %i.bk, %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i.i14 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !47

._crit_edge:                                      ; preds = %_ZN10duckdb_hll6sdscatEPcPKc.exit16, %_ZN10duckdb_hll8sdsemptyEv.exit
  %.010.lcssa = phi ptr [ %.0.i.i, %_ZN10duckdb_hll8sdsemptyEv.exit ], [ %.1, %_ZN10duckdb_hll6sdscatEPcPKc.exit16 ]
  ret ptr %.010.lcssa
}

end_hunk_1
begin_hunk_2_@_ZN10duckdb_hll10sdsjoinsdsEPPciPKcm:bb.a
  br label %_ZN10duckdb_hll8sdsemptyEv.exit

_ZN10duckdb_hll8sdsemptyEv.exit:                  ; preds = %bb.a, %bb.b
  %.0.i.i = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.f = icmp sgt i32 %1, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN10duckdb_hll8sdsemptyEv.exit
  %i.g = add nsw i32 %1, -1
  %i.h = zext nneg i32 %i.g to i64
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN10duckdb_hll9sdscatlenEPcPKvm.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN10duckdb_hll9sdscatlenEPcPKvm.exit ] ; 3 uses
  %.01114 = phi ptr [ %.0.i.i, %.lr.ph ], [ %.1, %_ZN10duckdb_hll9sdscatlenEPcPKvm.exit ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !28
  %i.k = tail call noundef ptr @_ZN10duckdb_hll9sdscatsdsEPcS0_(ptr noundef %.01114, ptr noundef %i.j) ; 7 uses
end_hunk_2
begin_hunk_3_@_ZN10duckdb_hll10sdsjoinsdsEPPciPKcm:bb.a
_ZN10duckdb_hll9sdscatlenEPcPKvm.exit:            ; preds = %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i, %_ZN10duckdb_hllL6sdslenEPc.exit.i, %bb.c
  %.1 = phi ptr [ %i.k, %bb.c ], [ null, %_ZN10duckdb_hllL6sdslenEPc.exit.i ], [ %i.ac, %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !48

._crit_edge:                                      ; preds = %_ZN10duckdb_hll9sdscatlenEPcPKvm.exit, %_ZN10duckdb_hll8sdsemptyEv.exit
  %.011.lcssa = phi ptr [ %.0.i.i, %_ZN10duckdb_hll8sdsemptyEv.exit ], [ %.1, %_ZN10duckdb_hll9sdscatlenEPcPKvm.exit ]
  ret ptr %.011.lcssa
}

end_hunk_3
begin_hunk_4_@calloc
!44 = distinct !{!44, !23}
!45 = distinct !{!45, !23}
!46 = distinct !{!46, !23}
!47 = distinct !{!47, !23}
!48 = distinct !{!48, !23}
end_hunk_4
