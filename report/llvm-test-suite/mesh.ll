inline.NumInlined: 2154
inline.NumDeleted: 448
begin_hunk_0_@KDTree_Destroy
; Function Attrs: mustprogress uwtable
define dso_local noundef range(i64 -2147483648, 2147483648) i64 @_ZN4Mesh13refine_smoothERSt6vectorIiSaIiEERiS4_(ptr noundef nonnull align 8 captures(none) dereferenceable(2288) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %2, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %struct.timeval, align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !62   ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4Mesh13refine_smoothERSt6vectorIiSaIiEERiS4_:bb.a
.thread547:                                       ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.thread
  store i32 0, ptr %2, align 4, !tbaa !4
  store i32 0, ptr %3, align 4, !tbaa !4
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.thread, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %i.r = phi i64 [ %i.q, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.thread ], [ %i.n, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit ]
end_hunk_1
begin_hunk_2_@_ZN4Mesh13refine_smoothERSt6vectorIiSaIiEERiS4_:bb.a
.thread542:                                       ; preds = %.thread.i, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %storemerge649 = phi i32 [ 0, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit ], [ %.124.i, %.thread.i ]
  %storemerge = phi i32 [ 0, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit ], [ %.130.i, %.thread.i ]
  %i.be = phi ptr [ %i.m, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit ], [ %i.s, %.thread.i ]
  %i.bf = phi ptr [ %i.h, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit ], [ %i.t, %.thread.i ] ; 2 uses
  %i.bg = phi ptr [ %i.i, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit ], [ %i.u, %.thread.i ]
  store i32 %storemerge649, ptr %2, align 4, !tbaa !4
end_hunk_2
begin_hunk_3_@_ZN4Mesh13refine_smoothERSt6vectorIiSaIiEERiS4_:bb.a
  %i.bi = ptrtoint ptr %i.bf to i64
  %i.bj = sub i64 %i.bh, %i.bi
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.bj) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %.thread547, %.thread542
  %5 = phi ptr [ %i.p, %.thread547 ], [ %i.be, %.thread542 ] ; 3 uses
  %6 = load i32, ptr %2, align 4, !tbaa !4
  call void @cpu_timer_start(ptr noundef nonnull %4)
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %bb.o, label %_ZNSt6vectorIiSaIiEE5clearEv.exit

bb.o:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 1120 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !94
  %i.bm = icmp sgt i32 %i.bl, 1
end_hunk_3
begin_hunk_4_@_ZN4Mesh13refine_smoothERSt6vectorIiSaIiEERiS4_:bb.a
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !98
  %.not = icmp eq i32 %i.bo, 0
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 2 uses
  %spec.select = select i1 %.not, ptr %5, ptr %i.bp
  %.0311 = load i64, ptr %spec.select, align 8, !tbaa !60 ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 588 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !4
end_hunk_4
begin_hunk_5_@_ZN4Mesh13refine_smoothERSt6vectorIiSaIiEERiS4_:bb.a
  %.sroa.67.4 = phi ptr [ %i.bz, %.noexc419 ], [ null, %bb.p ] ; 4 uses
  %.sroa.0489.4 = phi ptr [ %i.bv, %.noexc419 ], [ null, %bb.p ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.cb = load i64, ptr %5, align 8, !tbaa !47    ; 2 uses
  %.not687 = icmp eq i64 %i.cb, 0
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 1352
  %i.cd = load ptr, ptr %i.cc, align 8            ; 9 uses
end_hunk_5
begin_hunk_6_@_ZN4Mesh13refine_smoothERSt6vectorIiSaIiEERiS4_:bb.a
  %spec.select641 = select i1 %.not.i.i422, ptr %.sroa.49.0.lcssa, ptr %.sroa.0489.1.lcssa
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %.critedge, %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.o
  %.sroa.0489.2590 = phi ptr [ %.sroa.0489.1.lcssa, %.critedge ], [ null, %_ZNSt6vectorIiSaIiEED2Ev.exit ], [ null, %bb.o ] ; 11 uses
  %.sroa.67.2589 = phi ptr [ %.sroa.67.1.lcssa, %.critedge ], [ null, %_ZNSt6vectorIiSaIiEED2Ev.exit ], [ null, %bb.o ] ; 7 uses
  %.sroa.49.3 = phi ptr [ %spec.select641, %.critedge ], [ null, %_ZNSt6vectorIiSaIiEED2Ev.exit ], [ null, %bb.o ] ; 6 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !81 ; 4 uses
  %i.ho = ptrtoint ptr %.sroa.49.3 to i64         ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN4Mesh13refine_smoothERSt6vectorIiSaIiEERiS4_:bb.a
  store ptr %.sroa.0489.5, ptr %1, align 8, !tbaa !63
  store ptr %.sroa.49.4, ptr %i.a, align 8, !tbaa !62
  store ptr %.sroa.67.5, ptr %i.iv, align 8, !tbaa !68
  %i.ix = load i64, ptr %5, align 8, !tbaa !47    ; 6 uses
  %.not688 = icmp eq i64 %i.ix, 0                 ; 2 uses
  br i1 %.not688, label %._crit_edge683.thread, label %.lr.ph

end_hunk_7
begin_hunk_8_@_ZN4Mesh13refine_smoothERSt6vectorIiSaIiEERiS4_:bb.a
.thread604:                                       ; preds = %._crit_edge683.thread
  store i32 0, ptr %2, align 4, !tbaa !4
  store i32 0, ptr %3, align 4, !tbaa !4
  %8 = load i32, ptr %2, align 4, !tbaa !4        ; 2 uses
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit453

.lr.ph.i438:                                      ; preds = %._crit_edge683, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit436
end_hunk_8
begin_hunk_9_@_ZN4Mesh13refine_smoothERSt6vectorIiSaIiEERiS4_:bb.a
bb.cd:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit436
  store i32 0, ptr %2, align 4, !tbaa !4
  store i32 0, ptr %3, align 4, !tbaa !4
  %9 = load i32, ptr %2, align 4, !tbaa !4
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %.thread599
  %i.sm = phi ptr [ %i.qz, %.thread599 ], [ %i.qh, %bb.cd ] ; 2 uses
  %i.sn = phi ptr [ %i.ra, %.thread599 ], [ %i.qi, %bb.cd ]
  %i.so = phi i32 [ %i.sl, %.thread599 ], [ %9, %bb.cd ]
  %i.sp = ptrtoint ptr %i.sn to i64
  %i.sq = ptrtoint ptr %i.sm to i64
  %i.sr = sub i64 %i.sp, %i.sq
  call void @_ZdlPvm(ptr noundef nonnull %i.sm, i64 noundef %i.sr) #31
  %.pre695 = load i32, ptr %2, align 4, !tbaa !4
  %.pre696 = load i32, ptr %3, align 4
  %i.ss = icmp ne i32 %.pre696, 0
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit453

_ZNSt6vectorIiSaIiEED2Ev.exit453:                 ; preds = %.thread604, %bb.ce
  %10 = phi i1 [ false, %.thread604 ], [ %i.ss, %bb.ce ]
  %11 = phi i32 [ %8, %.thread604 ], [ %.pre695, %bb.ce ]
  %i.st = phi i32 [ %8, %.thread604 ], [ %i.so, %bb.ce ]
  %.not364 = icmp ne i32 %11, 0
  %narrow = select i1 %.not364, i1 true, i1 %10
  %12 = zext i1 %narrow to i8
  %i.su = getelementptr inbounds nuw i8, ptr %0, i64 616
  store i8 %12, ptr %i.su, align 8, !tbaa !109
  %.sroa.0.0.copyload = load i64, ptr %4, align 8, !tbaa !60
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !60
end_hunk_9
