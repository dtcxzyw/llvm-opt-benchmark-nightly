inline.NumInlined: 136
inline.NumDeleted: 12
begin_hunk_0_@sdsjoin:bb.a
  br label %sdsempty.exit

sdsempty.exit:                                    ; preds = %bb.a, %adjustTypeIfNeeded.exit.i.i
  %.0.i.i = phi ptr [ %i.i, %adjustTypeIfNeeded.exit.i.i ], [ null, %bb.a ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.j = icmp sgt i32 %1, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %sdsempty.exit
  %i.k = add nsw i32 %1, -1
  %i.l = zext nneg i32 %i.k to i64
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %sdscat.exit18
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %sdscat.exit18 ] ; 3 uses
  %.01019 = phi ptr [ %.0.i.i, %.lr.ph ], [ %.1, %sdscat.exit18 ] ; 6 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !20   ; 2 uses
  %i.o = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.n) #27 ; 3 uses
end_hunk_0
begin_hunk_1_@sdsjoin:bb.a
sdscat.exit18:                                    ; preds = %sdssetlen.exit.i.i16, %sdslen.exit.i.i13, %sdscat.exit
  %.1 = phi ptr [ %i.ae, %sdscat.exit ], [ null, %sdslen.exit.i.i13 ], [ %i.bj, %sdssetlen.exit.i.i16 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !50

._crit_edge:                                      ; preds = %sdscat.exit18, %sdsempty.exit
  %.010.lcssa = phi ptr [ %.0.i.i, %sdsempty.exit ], [ %.1, %sdscat.exit18 ]
  ret ptr %.010.lcssa
}

end_hunk_1
begin_hunk_2_@sdsjoinsds:bb.a
  br label %sdsempty.exit

sdsempty.exit:                                    ; preds = %bb.a, %adjustTypeIfNeeded.exit.i.i
  %.0.i.i = phi ptr [ %i.i, %adjustTypeIfNeeded.exit.i.i ], [ null, %bb.a ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.j = icmp sgt i32 %1, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %sdsempty.exit
  %i.k = add nsw i32 %1, -1
  %i.l = zext nneg i32 %i.k to i64
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %sdscatlen.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %sdscatlen.exit ] ; 3 uses
  %.01114 = phi ptr [ %.0.i.i, %.lr.ph ], [ %.1, %sdscatlen.exit ]
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !20
  %i.o = call ptr @sdscatsds(ptr noundef %.01114, ptr noundef %i.n) ; 7 uses
end_hunk_2
begin_hunk_3_@sdsjoinsds:bb.a
sdscatlen.exit:                                   ; preds = %sdssetlen.exit.i, %sdslen.exit.i, %bb.d
  %.1 = phi ptr [ %i.o, %bb.d ], [ null, %sdslen.exit.i ], [ %i.ae, %sdssetlen.exit.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !51

._crit_edge:                                      ; preds = %sdscatlen.exit, %sdsempty.exit
  %.011.lcssa = phi ptr [ %.0.i.i, %sdsempty.exit ], [ %.1, %sdscatlen.exit ]
  ret ptr %.011.lcssa
}

end_hunk_3
begin_hunk_4_@sdstemplate:bb.a
  %.0.i.i.i53 = phi i64 [ %i.cp, %bb.ah ], [ %i.ce, %bb.ad ], [ %i.ch, %bb.ae ], [ %i.ck, %bb.af ], [ %i.cn, %bb.ag ], [ 0, %bb.ac ] ; 2 uses
  %i.cq = call ptr @_sdsMakeRoomFor(ptr noundef nonnull %.1, i64 noundef 1, i32 noundef 1) ; 9 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %sdscat.exit, label %bb.ai, !llvm.loop !52

bb.ai:                                            ; preds = %sdslen.exit.i.i52
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.0.i.i.i53
end_hunk_4
begin_hunk_5_@sdstemplate:bb.a
sdssetlen.exit.i.i55:                             ; preds = %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai
  %i.de = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.ct
  store i8 0, ptr %i.de, align 1, !tbaa !17
  br label %sdscat.exit, !llvm.loop !52

bb.ao:                                            ; preds = %sdscatlen.exit
  %i.df = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.by, i32 noundef 125) #27 ; 3 uses
end_hunk_5
begin_hunk_6_@llvm.assume
!47 = distinct !{!47, !28}
!48 = distinct !{!48, !28}
!49 = distinct !{!49, !28}
!50 = distinct !{!50, !28}
!51 = distinct !{!51, !28}
!52 = distinct !{!52, !28}
end_hunk_6
