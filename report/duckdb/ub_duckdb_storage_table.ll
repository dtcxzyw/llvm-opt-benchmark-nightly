inline.NumInlined: 22010
inline.NumDeleted: 8913
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 650
loop-unroll.NumUnrolled: 660
begin_hunk_0_@_ZN6duckdb15TableStatistics10MergeStatsERS0_:bb.a

bb.s:                                             ; preds = %bb.r
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !2991
  %.not34 = icmp eq ptr %i.as, null
  br i1 %.not34, label %bb.z, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.at = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6vectorINS_10shared_ptrINS_16ColumnStatisticsELb1EEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 noundef %.035)
          to label %bb.u unwind label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.au = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_16ColumnStatisticsELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.at)
          to label %bb.v unwind label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.av = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6vectorINS_10shared_ptrINS_16ColumnStatisticsELb1EEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 noundef %.035)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.aw = invoke noundef nonnull align 8 dereferenceable(136) ptr @_ZNK6duckdb10shared_ptrINS_16ColumnStatisticsELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.av)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN6duckdb16ColumnStatistics5MergeERS0_(ptr noundef nonnull align 8 dereferenceable(136) %i.au, ptr noundef nonnull align 8 dereferenceable(136) %i.aw)
          to label %bb.z unwind label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.r
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb14BlockingSampleESt14default_deleteIS1_EED2Ev.exit25

bb.z:                                             ; preds = %bb.s, %bb.x
  %i.ay = add nuw i64 %.035, 1                    ; 2 uses
  %i.az = load ptr, ptr %i.al, align 8, !tbaa !2311
  %i.ba = load ptr, ptr %i.ak, align 8, !tbaa !2308
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = ashr exact i64 %i.bd, 4
  %i.bf = icmp ult i64 %i.ay, %i.be
  br i1 %i.bf, label %bb.r, label %_ZNSt10unique_ptrIN6duckdb19TableStatisticsLockESt14default_deleteIS1_EED2Ev.exit, !llvm.loop !3274

_ZNSt10unique_ptrIN6duckdb14BlockingSampleESt14default_deleteIS1_EED2Ev.exit25: ; preds = %_ZNKSt14default_deleteIN6duckdb14BlockingSampleEEclEPS1_.exit.i24, %bb.j, %bb.p, %bb.q, %bb.i, %bb.y
  %.pn21 = phi { ptr, i32 } [ %i.ax, %bb.y ], [ %i.p, %bb.i ], [ %i.ai, %bb.p ], [ %i.aj, %bb.q ], [ %i.q, %bb.j ], [ %i.q, %_ZNKSt14default_deleteIN6duckdb14BlockingSampleEEclEPS1_.exit.i24 ]
  call void @_ZNSt10unique_ptrIN6duckdb19TableStatisticsLockESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %common.resume
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_11SegmentNodeINS0_8RowGroupEEESt14default_deleteIS4_ELb1EEESaIS7_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2947   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2946 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_11SegmentNodeINS0_8RowGroupEEESt14default_deleteIS4_ELb1EEES7_EvT_S9_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_11SegmentNodeINS0_8RowGroupEEESt14default_deleteIS4_ELb1EEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.v, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_11SegmentNodeINS0_8RowGroupEEESt14default_deleteIS4_ELb1EEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !1282 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_11SegmentNodeINS0_8RowGroupEEESt14default_deleteIS4_ELb1EEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !93   ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb11SegmentNodeINS0_8RowGroupEEEEclEPS3_.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.h = load atomic i64, ptr %i.g acquire, align 8 ; 2 uses
  %i.i = icmp eq i64 %i.h, 4294967297
  %i.j = trunc i64 %i.h to i32                    ; 2 uses
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.g, align 8, !tbaa !94
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 0, ptr %i.k, align 4, !tbaa !96
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #37, !inline_history !3275
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !12
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #37, !inline_history !3275
  br label %_ZNKSt14default_deleteIN6duckdb11SegmentNodeINS0_8RowGroupEEEEclEPS3_.exit.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !98
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = add nsw i32 %i.j, -1
  store i32 %i.s, ptr %i.g, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.t = atomicrmw volatile add ptr %i.g, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.j, %bb.f ], [ %i.t, %bb.g ]
  %i.u = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.u, label %bb.h, label %_ZNKSt14default_deleteIN6duckdb11SegmentNodeINS0_8RowGroupEEEEclEPS3_.exit.i.i.i.i, !prof !99

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #37
  br label %_ZNKSt14default_deleteIN6duckdb11SegmentNodeINS0_8RowGroupEEEEclEPS3_.exit.i.i.i.i

_ZNKSt14default_deleteIN6duckdb11SegmentNodeINS0_8RowGroupEEEEclEPS3_.exit.i.i.i.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i, %bb.d, %bb.b
  tail call void @_ZdlPv(ptr noundef nonnull %i.d) #39
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_11SegmentNodeINS0_8RowGroupEEESt14default_deleteIS4_ELb1EEEEvPT_.exit.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_11SegmentNodeINS0_8RowGroupEEESt14default_deleteIS4_ELb1EEEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb11SegmentNodeINS0_8RowGroupEEEEclEPS3_.exit.i.i.i.i, %.lr.ph.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_11SegmentNodeINS0_8RowGroupEEESt14default_deleteIS4_ELb1EEES7_EvT_S9_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !3256

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_11SegmentNodeINS0_8RowGroupEEESt14default_deleteIS4_ELb1EEES7_EvT_S9_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_11SegmentNodeINS0_8RowGroupEEESt14default_deleteIS4_ELb1EEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !2947
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_11SegmentNodeINS0_8RowGroupEEESt14default_deleteIS4_ELb1EEES7_EvT_S9_RSaIT0_E.exit

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_11SegmentNodeINS0_8RowGroupEEESt14default_deleteIS4_ELb1EEES7_EvT_S9_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_11SegmentNodeINS0_8RowGroupEEESt14default_deleteIS4_ELb1EEES7_EvT_S9_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.w = phi ptr [ %.pr, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_11SegmentNodeINS0_8RowGroupEEESt14default_deleteIS4_ELb1EEES7_EvT_S9_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.w, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_11SegmentNodeINS0_8RowGroupEEESt14default_deleteIS4_ELb1EEESaIS7_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_11SegmentNodeINS0_8RowGroupEEESt14default_deleteIS4_ELb1EEES7_EvT_S9_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.w) #39
  br label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_11SegmentNodeINS0_8RowGroupEEESt14default_deleteIS4_ELb1EEESaIS7_EED2Ev.exit

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_11SegmentNodeINS0_8RowGroupEEESt14default_deleteIS4_ELb1EEESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_11SegmentNodeINS0_8RowGroupEEESt14default_deleteIS4_ELb1EEES7_EvT_S9_RSaIT0_E.exit, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN6duckdb18RowGroupCollection6DeleteENS_15TransactionDataERNS_9DataTableEPlm(ptr noundef nonnull align 8 dereferenceable(217) %0, ptr nofree noundef readonly byval(%"struct.duckdb::TransactionData") align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(124) %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.duckdb::shared_ptr.63", align 8 ; 7 uses
  %6 = alloca %"class.duckdb::VersionDeleteState", align 8 ; 15 uses
  %7 = alloca %"class.duckdb::shared_ptr.950", align 16 ; 7 uses
  %8 = alloca %"class.duckdb::optional_ptr.897", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3276)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #37, !noalias !3276 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #40, !noalias !3276
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i:        ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !93, !noalias !3276 ; 2 uses
  %i.g = load <2 x ptr>, ptr %i.c, align 8, !tbaa !309, !noalias !3276
  store <2 x ptr> %i.g, ptr %7, align 16, !tbaa !309, !alias.scope !3276
  %.not.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i, label %_ZNK6duckdb18RowGroupCollection12GetRowGroupsEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.i = load i8, ptr @__libc_single_threaded, align 1, !tbaa !98, !noalias !3276
  %.not.i.i.i.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load i32, ptr %i.h, align 4, !tbaa !3, !noalias !3276
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.h, align 4, !tbaa !3, !noalias !3276
  br label %_ZNK6duckdb18RowGroupCollection12GetRowGroupsEv.exit

bb.e:                                             ; preds = %bb.c
  %i.l = atomicrmw volatile add ptr %i.h, i32 1 acq_rel, align 4, !noalias !3276 ; 0 uses
  br label %_ZNK6duckdb18RowGroupCollection12GetRowGroupsEv.exit

_ZNK6duckdb18RowGroupCollection12GetRowGroupsEv.exit: ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i, %bb.d, %bb.e
  %i.m = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #37, !noalias !3276 ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 16432 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16440 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16456 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 16448 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.f

bb.f:                                             ; preds = %bb.ac, %_ZNK6duckdb18RowGroupCollection12GetRowGroupsEv.exit
  %.033 = phi i64 [ 0, %_ZNK6duckdb18RowGroupCollection12GetRowGroupsEv.exit ], [ %i.cu, %bb.ac ]
  %.031 = phi i64 [ 0, %_ZNK6duckdb18RowGroupCollection12GetRowGroupsEv.exit ], [ %.132.lcssa, %bb.ac ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  %i.x = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_19RowGroupSegmentTreeELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.031 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !24
  %i.aa = invoke ptr @_ZNK6duckdb11SegmentTreeINS_8RowGroupELb1EE10GetSegmentEm(ptr noundef nonnull align 8 dereferenceable(88) %i.x, i64 noundef %i.z)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  store ptr %i.aa, ptr %8, align 8
  invoke void @_ZNK6duckdb12optional_ptrINS_11SegmentNodeINS_8RowGroupEEELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.ab = load ptr, ptr %8, align 8, !tbaa !2318
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = invoke noundef nonnull align 8 dereferenceable(218) ptr @_ZNK6duckdb10shared_ptrINS_8RowGroupELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ac)
          to label %_ZNK6duckdb11SegmentNodeINS_8RowGroupEE7GetNodeEv.exit unwind label %bb.m ; 2 uses

_ZNK6duckdb11SegmentNodeINS_8RowGroupEE7GetNodeEv.exit: ; preds = %bb.i
  invoke void @_ZNK6duckdb12optional_ptrINS_11SegmentNodeINS_8RowGroupEEELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %_ZNK6duckdb11SegmentNodeINS_8RowGroupEE7GetNodeEv.exit
  %i.ae = load ptr, ptr %8, align 8, !tbaa !2318
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !2319 ; 4 uses
  %i.ag = load atomic i64, ptr %i.ad seq_cst, align 8
  %i.ah = add i64 %i.ag, %i.af
  %i.ai = add i64 %.031, 1
  %umax = call i64 @llvm.umax.i64(i64 %4, i64 %i.ai) ; 3 uses
  %i.aj = add i64 %umax, -1                       ; 2 uses
  %.13297 = add nuw i64 %.031, 1                  ; 2 uses
  %exitcond.not98 = icmp eq i64 %.031, %i.aj
  br i1 %exitcond.not98, label %._crit_edge101, label %.lr.ph

bb.k:                                             ; preds = %.lr.ph
  %.132 = add nuw i64 %.13299, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %.13299, %i.aj
  br i1 %exitcond.not, label %._crit_edge101, label %.lr.ph, !llvm.loop !3279

.lr.ph:                                           ; preds = %bb.j, %bb.k
  %.13299 = phi i64 [ %.132, %bb.k ], [ %.13297, %bb.j ] ; 5 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.13299
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !24 ; 2 uses
  %i.am = icmp uge i64 %i.al, %i.af
  %.not = icmp ult i64 %i.al, %i.ah
  %or.cond = and i1 %i.am, %.not
  br i1 %or.cond, label %bb.k, label %._crit_edge, !llvm.loop !3279

bb.l:                                             ; preds = %bb.g, %bb.f
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %bb.i, %bb.h
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %_ZNK6duckdb11SegmentNodeINS_8RowGroupEE7GetNodeEv.exit
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

._crit_edge:                                      ; preds = %.lr.ph
  br label %._crit_edge101, !llvm.loop !3279

._crit_edge101:                                   ; preds = %bb.k, %._crit_edge, %bb.j
  %.132.lcssa93 = phi i64 [ %.13299, %._crit_edge ], [ %.13297, %bb.j ], [ %.132, %bb.k ]
  %.132.lcssa = phi i64 [ %.13299, %._crit_edge ], [ %umax, %bb.j ], [ %umax, %bb.k ] ; 2 uses
  %i.aq = icmp ult i64 %.132.lcssa93, %4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.ar = sub i64 %.132.lcssa, %.031
  store ptr %i.ad, ptr %6, align 8, !tbaa !314
  store ptr %2, ptr %i.o, align 8, !tbaa !2877
  store i64 -1, ptr %i.p, align 8, !tbaa !2878
  store i64 0, ptr %i.q, align 8, !tbaa !2880
  store i64 %i.af, ptr %i.r, align 8, !tbaa !2881
  store i64 0, ptr %i.s, align 8, !tbaa !2882
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_ZN6duckdb18VersionDeleteState6DeleteEl.exit.i
  invoke void @_ZN6duckdb18VersionDeleteState5FlushEv(ptr noundef nonnull align 8 dereferenceable(16464) %6)
          to label %bb.ac unwind label %.body65.loopexit.split-lp.loopexit

.lr.ph.i:                                         ; preds = %_ZN6duckdb18VersionDeleteState6DeleteEl.exit.i, %._crit_edge101
  %i.as = phi i64 [ -1, %._crit_edge101 ], [ %i.co, %_ZN6duckdb18VersionDeleteState6DeleteEl.exit.i ] ; 2 uses
  %i.at = phi i64 [ -1, %._crit_edge101 ], [ %i.ax, %_ZN6duckdb18VersionDeleteState6DeleteEl.exit.i ]
  %.08.i = phi i64 [ 0, %._crit_edge101 ], [ %i.cs, %_ZN6duckdb18VersionDeleteState6DeleteEl.exit.i ] ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.08.i
  %i.av = load i64, ptr %i.au, align 8, !tbaa !24
  %i.aw = sub nsw i64 %i.av, %i.af                ; 3 uses
  %i.ax = lshr i64 %i.aw, 11                      ; 4 uses
  %.not.i.i = icmp eq i64 %i.at, %i.ax
  %.pre = load i64, ptr %i.q, align 8, !tbaa !2880 ; 3 uses
  br i1 %.not.i.i, label %_ZN6duckdb18VersionDeleteState6DeleteEl.exit.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i
  %i.ay = and i64 %i.aw, -2048
  %i.az = icmp eq i64 %.pre, 0
  br i1 %i.az, label %.noexc39, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ba = load ptr, ptr %6, align 8, !tbaa !2885, !nonnull !70, !align !145 ; 2 uses
  %i.bb = load i64, ptr %i.v, align 8, !tbaa !2886
  %i.bc = invoke ptr @_ZN6duckdb8RowGroup14GetVersionInfoEv(ptr noundef nonnull align 8 dereferenceable(218) %i.ba)
          to label %.noexc53 unwind label %.body65.loopexit ; 2 uses

.noexc53:                                         ; preds = %bb.p
  %.not.i49 = icmp eq ptr %i.bc, null
  br i1 %.not.i49, label %bb.q, label %.noexc

bb.q:                                             ; preds = %.noexc53
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  invoke void @_ZN6duckdb8RowGroup30GetOrCreateVersionInfoInternalEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::shared_ptr.63") align 8 %5, ptr noundef nonnull align 8 dereferenceable(218) %i.ba)
          to label %.noexc55 unwind label %.body65.loopexit

.noexc55:                                         ; preds = %bb.q
  %i.bd = invoke noundef nonnull align 8 dereferenceable(336) ptr @_ZNK6duckdb10shared_ptrINS_17RowVersionManagerELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.r unwind label %bb.y

bb.r:                                             ; preds = %.noexc55
  %i.be = load ptr, ptr %i.w, align 8, !tbaa !93  ; 8 uses
  %.not.i.i.i.i51 = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i51, label %_ZN6duckdb10shared_ptrINS_17RowVersionManagerELb1EED2Ev.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 4 uses
  %i.bg = load atomic i64, ptr %i.bf acquire, align 8 ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 4294967297
  %i.bi = trunc i64 %i.bg to i32                  ; 2 uses
  br i1 %i.bh, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.bf, align 8, !tbaa !94
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  store i32 0, ptr %i.bj, align 4, !tbaa !96
  %i.bk = load ptr, ptr %i.be, align 8, !tbaa !12
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #37, !inline_history !3280
  %i.bn = load ptr, ptr %i.be, align 8, !tbaa !12
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #37, !inline_history !3280
  br label %_ZN6duckdb10shared_ptrINS_17RowVersionManagerELb1EED2Ev.exit.i

bb.u:                                             ; preds = %bb.s
  %i.bq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !98
  %.not.i.i.i.i.i52 = icmp eq i8 %i.bq, 0
  br i1 %.not.i.i.i.i.i52, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.br = add nsw i32 %i.bi, -1
  store i32 %i.br, ptr %i.bf, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.bs = atomicrmw volatile add ptr %i.bf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i.i = phi i32 [ %i.bi, %bb.v ], [ %i.bs, %bb.w ]
  %i.bt = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bt, label %bb.x, label %_ZN6duckdb10shared_ptrINS_17RowVersionManagerELb1EED2Ev.exit.i, !prof !99

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #37
  br label %_ZN6duckdb10shared_ptrINS_17RowVersionManagerELb1EED2Ev.exit.i

_ZN6duckdb10shared_ptrINS_17RowVersionManagerELb1EED2Ev.exit.i: ; preds = %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %.noexc

bb.y:                                             ; preds = %.noexc55
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_17RowVersionManagerELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %.body

.noexc:                                           ; preds = %_ZN6duckdb10shared_ptrINS_17RowVersionManagerELb1EED2Ev.exit.i, %.noexc53
  %.0.i50 = phi ptr [ %i.bd, %_ZN6duckdb10shared_ptrINS_17RowVersionManagerELb1EED2Ev.exit.i ], [ %i.bc, %.noexc53 ] ; 4 uses
  %i.bv = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(336) %.0.i50) #37 ; 2 uses
  %.not.i.i.i.i.i41 = icmp eq i32 %i.bv, 0
  br i1 %.not.i.i.i.i.i41, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i, label %bb.z

bb.z:                                             ; preds = %.noexc
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.bv) #40
          to label %.noexc42 unwind label %.body65.loopexit.split-lp.loopexit.split-lp

.noexc42:                                         ; preds = %bb.z
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i:    ; preds = %.noexc
  %i.bw = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN6duckdb17RowVersionManager13GetVectorInfoEm(ptr noundef nonnull align 8 dereferenceable(336) %.0.i50, i64 noundef %i.as)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i
  %i.bx = invoke noundef i64 @_ZN6duckdb15ChunkVectorInfo6DeleteEmPlm(ptr noundef nonnull align 8 dereferenceable(56) %i.bw, i64 noundef %i.bb, ptr noundef nonnull %i.u, i64 noundef %.pre)
          to label %_ZN6duckdb8RowGroup10DeleteRowsEmmPlm.exit.i unwind label %bb.ab ; 3 uses

bb.ab:                                            ; preds = %bb.aa, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i
  %i.by = landingpad { ptr, i32 }
          cleanup
  %i.bz = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(336) %.0.i50) #37 ; 0 uses
  br label %.body

_ZN6duckdb8RowGroup10DeleteRowsEmmPlm.exit.i:     ; preds = %bb.aa
  %i.ca = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(336) %.0.i50) #37 ; 0 uses
  %i.cb = load i64, ptr %i.s, align 8, !tbaa !2882
  %i.cc = add i64 %i.cb, %i.bx
  store i64 %i.cc, ptr %i.s, align 8, !tbaa !2882
  %i.cd = load ptr, ptr %i.n, align 8, !tbaa !1156 ; 2 uses
  %i.ce = icmp ne ptr %i.cd, null
  %i.cf = icmp ne i64 %i.bx, 0
  %or.cond.i = and i1 %i.cf, %i.ce
  br i1 %or.cond.i, label %.noexc43, label %.noexc39

.noexc43:                                         ; preds = %_ZN6duckdb8RowGroup10DeleteRowsEmmPlm.exit.i
  %i.cg = load ptr, ptr %i.o, align 8, !tbaa !2887, !nonnull !70, !align !145
  %i.ch = load ptr, ptr %6, align 8, !tbaa !2885, !nonnull !70, !align !145
  %i.ci = invoke noundef nonnull align 8 dereferenceable(336) ptr @_ZN6duckdb8RowGroup22GetOrCreateVersionInfoEv(ptr noundef nonnull align 8 dereferenceable(218) %i.ch)
          to label %.noexc44 unwind label %.body65.loopexit

.noexc44:                                         ; preds = %.noexc43
  %i.cj = load i64, ptr %i.p, align 8, !tbaa !2878
  %i.ck = load i64, ptr %i.r, align 8, !tbaa !2881
  %i.cl = load i64, ptr %i.t, align 8, !tbaa !2883
  %i.cm = add i64 %i.cl, %i.ck
  invoke void @_ZN6duckdb15DuckTransaction10PushDeleteERNS_9DataTableERNS_17RowVersionManagerEmPlmm(ptr noundef nonnull align 8 dereferenceable(480) %i.cd, ptr noundef nonnull align 8 dereferenceable(124) %i.cg, ptr noundef nonnull align 8 dereferenceable(336) %i.ci, i64 noundef %i.cj, ptr noundef nonnull %i.u, i64 noundef %i.bx, i64 noundef %i.cm)
          to label %.noexc39 unwind label %.body65.loopexit

.noexc39:                                         ; preds = %_ZN6duckdb8RowGroup10DeleteRowsEmmPlm.exit.i, %.noexc44, %bb.o
  store i64 %i.ax, ptr %i.p, align 8, !tbaa !2878
  store i64 %i.ay, ptr %i.t, align 8, !tbaa !2883
  br label %_ZN6duckdb18VersionDeleteState6DeleteEl.exit.i

_ZN6duckdb18VersionDeleteState6DeleteEl.exit.i:   ; preds = %.noexc39, %.lr.ph.i
  %i.cn = phi i64 [ 0, %.noexc39 ], [ %.pre, %.lr.ph.i ] ; 2 uses
  %i.co = phi i64 [ %i.ax, %.noexc39 ], [ %i.as, %.lr.ph.i ]
  %i.cp = and i64 %i.aw, 2047
  %i.cq = add i64 %i.cn, 1
  store i64 %i.cq, ptr %i.q, align 8, !tbaa !2880
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.cn
  store i64 %i.cp, ptr %i.cr, align 8, !tbaa !24
  %i.cs = add nuw i64 %.08.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cs, %i.ar
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !2884

bb.ac:                                            ; preds = %._crit_edge.i
  %i.ct = load i64, ptr %i.s, align 8, !tbaa !2882
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  %i.cu = add i64 %i.ct, %.033                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br i1 %i.aq, label %bb.f, label %bb.ad, !llvm.loop !3281

bb.ad:                                            ; preds = %bb.ac
  %i.cv = load ptr, ptr %i.d, align 8, !tbaa !93  ; 8 uses
  %.not.i.i.i40 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i40, label %_ZN6duckdb10shared_ptrINS_19RowGroupSegmentTreeELb1EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 4 uses
  %i.cx = load atomic i64, ptr %i.cw acquire, align 8 ; 2 uses
  %i.cy = icmp eq i64 %i.cx, 4294967297
  %i.cz = trunc i64 %i.cx to i32                  ; 2 uses
  br i1 %i.cy, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i32 0, ptr %i.cw, align 8, !tbaa !94
  %i.da = getelementptr inbounds nuw i8, ptr %i.cv, i64 12
  store i32 0, ptr %i.da, align 4, !tbaa !96
  %i.db = load ptr, ptr %i.cv, align 8, !tbaa !12
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8
  call void %i.dd(ptr noundef nonnull align 8 dereferenceable(16) %i.cv) #37, !inline_history !2941
  %i.de = load ptr, ptr %i.cv, align 8, !tbaa !12
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dg = load ptr, ptr %i.df, align 8
  call void %i.dg(ptr noundef nonnull align 8 dereferenceable(16) %i.cv) #37, !inline_history !2941
  br label %_ZN6duckdb10shared_ptrINS_19RowGroupSegmentTreeELb1EED2Ev.exit

bb.ag:                                            ; preds = %bb.ae
  %i.dh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !98
  %.not.i.i.i.i = icmp eq i8 %i.dh, 0
  br i1 %.not.i.i.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
end_hunk_0
