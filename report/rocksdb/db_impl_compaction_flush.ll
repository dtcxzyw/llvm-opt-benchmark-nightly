inline.NumInlined: 9895
inline.NumDeleted: 4272
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN7rocksdb6DBImpl19AddManualCompactionEPNS0_21ManualCompactionStateE:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 5992
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1556
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -8
  %.not.i = icmp eq ptr %i.c, %i.f
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %i.c, align 8, !tbaa !1553
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.g, ptr %i.b, align 8, !tbaa !1555
  br label %_ZNSt5dequeIPN7rocksdb6DBImpl21ManualCompactionStateESaIS3_EE9push_backERKS3_.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 5928
  call void @_ZNSt5dequeIPN7rocksdb6DBImpl21ManualCompactionStateESaIS3_EE16_M_push_back_auxIJRKS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZNSt5dequeIPN7rocksdb6DBImpl21ManualCompactionStateESaIS3_EE9push_backERKS3_.exit

_ZNSt5dequeIPN7rocksdb6DBImpl21ManualCompactionStateESaIS3_EE9push_backERKS3_.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN7rocksdb6DBImpl27ShouldntRunManualCompactionEPNS0_21ManualCompactionStateE(ptr nofree noundef nonnull readonly align 64 captures(none) dereferenceable(7336) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 43
  %i.b = load i8, ptr %i.a, align 1, !tbaa !1541, !range !36, !noundef !37
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 5872
  %i.e = load i32, ptr %i.d, align 16, !tbaa !1557
  %i.f = icmp sgt i32 %i.e, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 5876
  %i.h = load i32, ptr %i.g, align 4
  %i.i = icmp sgt i32 %i.h, 0
  %i.j = select i1 %i.f, i1 true, i1 %i.i
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 5944
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1562, !noalias !1913 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 5976
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1562, !noalias !1916 ; 4 uses
  %.not35 = icmp eq ptr %i.l, %i.n
  br i1 %.not35, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 5968
  %i.p = load ptr, ptr %i.o, align 16, !tbaa !1569, !noalias !1913
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 5960
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1570, !noalias !1913
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt15_Deque_iteratorIPN7rocksdb6DBImpl21ManualCompactionStateERS3_PS3_EppEv.exit
  %.0.ph33 = phi i1 [ true, %_ZNSt15_Deque_iteratorIPN7rocksdb6DBImpl21ManualCompactionStateERS3_PS3_EppEv.exit ], [ false, %.lr.ph.preheader ]
  %.sroa.21.0.ph32 = phi ptr [ %.sroa.21.1, %_ZNSt15_Deque_iteratorIPN7rocksdb6DBImpl21ManualCompactionStateERS3_PS3_EppEv.exit ], [ %i.p, %.lr.ph.preheader ] ; 2 uses
  %.sroa.16.0.ph31 = phi ptr [ %.sroa.16.1, %_ZNSt15_Deque_iteratorIPN7rocksdb6DBImpl21ManualCompactionStateERS3_PS3_EppEv.exit ], [ %i.r, %.lr.ph.preheader ] ; 2 uses
  %.sroa.09.0.ph30 = phi ptr [ %.sroa.09.1, %_ZNSt15_Deque_iteratorIPN7rocksdb6DBImpl21ManualCompactionStateERS3_PS3_EppEv.exit ], [ %i.l, %.lr.ph.preheader ] ; 2 uses
  br i1 %.0.ph33, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZNSt15_Deque_iteratorIPN7rocksdb6DBImpl21ManualCompactionStateERS3_PS3_EppEv.exit8.us
  %.sroa.21.023.us = phi ptr [ %.sroa.21.2.us, %_ZNSt15_Deque_iteratorIPN7rocksdb6DBImpl21ManualCompactionStateERS3_PS3_EppEv.exit8.us ], [ %.sroa.21.0.ph32, %.lr.ph ] ; 3 uses
  %.sroa.16.022.us = phi ptr [ %.sroa.16.2.us, %_ZNSt15_Deque_iteratorIPN7rocksdb6DBImpl21ManualCompactionStateERS3_PS3_EppEv.exit8.us ], [ %.sroa.16.0.ph31, %.lr.ph ] ; 3 uses
  %.sroa.09.021.us = phi ptr [ %.sroa.09.2.us, %_ZNSt15_Deque_iteratorIPN7rocksdb6DBImpl21ManualCompactionStateERS3_PS3_EppEv.exit8.us ], [ %.sroa.09.0.ph30, %.lr.ph ] ; 3 uses
  %i.s = load ptr, ptr %.sroa.09.021.us, align 8, !tbaa !1553
  %i.t = icmp eq ptr %1, %i.s
  br i1 %i.t, label %.split.us, label %_ZN7rocksdb6DBImpl9MCOverlapEPNS0_21ManualCompactionStateES2_.exit.us

_ZN7rocksdb6DBImpl9MCOverlapEPNS0_21ManualCompactionStateES2_.exit.us: ; preds = %.lr.ph.split.us
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.09.021.us, i64 8 ; 2 uses
  %i.v = icmp eq ptr %i.u, %.sroa.16.022.us
  br i1 %i.v, label %bb.d, label %_ZNSt15_Deque_iteratorIPN7rocksdb6DBImpl21ManualCompactionStateERS3_PS3_EppEv.exit8.us

bb.d:                                             ; preds = %_ZN7rocksdb6DBImpl9MCOverlapEPNS0_21ManualCompactionStateES2_.exit.us
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.21.023.us, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1571 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 512
  br label %_ZNSt15_Deque_iteratorIPN7rocksdb6DBImpl21ManualCompactionStateERS3_PS3_EppEv.exit8.us

_ZNSt15_Deque_iteratorIPN7rocksdb6DBImpl21ManualCompactionStateERS3_PS3_EppEv.exit8.us: ; preds = %bb.d, %_ZN7rocksdb6DBImpl9MCOverlapEPNS0_21ManualCompactionStateES2_.exit.us
  %.sroa.09.2.us = phi ptr [ %i.x, %bb.d ], [ %i.u, %_ZN7rocksdb6DBImpl9MCOverlapEPNS0_21ManualCompactionStateES2_.exit.us ] ; 2 uses
  %.sroa.16.2.us = phi ptr [ %i.y, %bb.d ], [ %.sroa.16.022.us, %_ZN7rocksdb6DBImpl9MCOverlapEPNS0_21ManualCompactionStateES2_.exit.us ]
  %.sroa.21.2.us = phi ptr [ %i.w, %bb.d ], [ %.sroa.21.023.us, %_ZN7rocksdb6DBImpl9MCOverlapEPNS0_21ManualCompactionStateES2_.exit.us ]
  %.not36 = icmp eq ptr %.sroa.09.2.us, %i.n
  br i1 %.not36, label %.loopexit, label %.lr.ph.split.us, !llvm.loop !1572

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNSt15_Deque_iteratorIPN7rocksdb6DBImpl21ManualCompactionStateERS3_PS3_EppEv.exit8
  %.sroa.21.023 = phi ptr [ %.sroa.21.2, %_ZNSt15_Deque_iteratorIPN7rocksdb6DBImpl21ManualCompactionStateERS3_PS3_EppEv.exit8 ], [ %.sroa.21.0.ph32, %.lr.ph ] ; 3 uses
  %.sroa.16.022 = phi ptr [ %.sroa.16.2, %_ZNSt15_Deque_iteratorIPN7rocksdb6DBImpl21ManualCompactionStateERS3_PS3_EppEv.exit8 ], [ %.sroa.16.0.ph31, %.lr.ph ] ; 3 uses
  %.sroa.09.021 = phi ptr [ %.sroa.09.2, %_ZNSt15_Deque_iteratorIPN7rocksdb6DBImpl21ManualCompactionStateERS3_PS3_EppEv.exit8 ], [ %.sroa.09.0.ph30, %.lr.ph ] ; 3 uses
  %i.z = load ptr, ptr %.sroa.09.021, align 8, !tbaa !1553 ; 3 uses
  %i.aa = icmp eq ptr %1, %i.z
  br i1 %i.aa, label %.split.us, label %_ZN7rocksdb6DBImpl9MCOverlapEPNS0_21ManualCompactionStateES2_.exit

.split.us:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us
  %.us-phi = phi ptr [ %.sroa.09.021.us, %.lr.ph.split.us ], [ %.sroa.09.021, %.lr.ph.split ]
  %.us-phi27 = phi ptr [ %.sroa.16.022.us, %.lr.ph.split.us ], [ %.sroa.16.022, %.lr.ph.split ] ; 2 uses
  %.us-phi28 = phi ptr [ %.sroa.21.023.us, %.lr.ph.split.us ], [ %.sroa.21.023, %.lr.ph.split ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.us-phi, i64 8 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %.us-phi27
  br i1 %i.ac, label %bb.e, label %_ZNSt15_Deque_iteratorIPN7rocksdb6DBImpl21ManualCompactionStateERS3_PS3_EppEv.exit

bb.e:                                             ; preds = %.split.us
  %i.ad = getelementptr inbounds nuw i8, ptr %.us-phi28, i64 8 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1571 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 512
  br label %_ZNSt15_Deque_iteratorIPN7rocksdb6DBImpl21ManualCompactionStateERS3_PS3_EppEv.exit

_ZNSt15_Deque_iteratorIPN7rocksdb6DBImpl21ManualCompactionStateERS3_PS3_EppEv.exit: ; preds = %.split.us, %bb.e
  %.sroa.09.1 = phi ptr [ %i.ae, %bb.e ], [ %i.ab, %.split.us ] ; 2 uses
  %.sroa.16.1 = phi ptr [ %i.af, %bb.e ], [ %.us-phi27, %.split.us ]
  %.sroa.21.1 = phi ptr [ %i.ad, %bb.e ], [ %.us-phi28, %.split.us ]
  %.not37 = icmp eq ptr %.sroa.09.1, %i.n
  br i1 %.not37, label %.loopexit, label %.lr.ph, !llvm.loop !1572

_ZN7rocksdb6DBImpl9MCOverlapEPNS0_21ManualCompactionStateES2_.exit: ; preds = %.lr.ph.split
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 43
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !1541, !range !36, !noundef !37
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN7rocksdb6DBImpl9MCOverlapEPNS0_21ManualCompactionStateES2_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 41
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !1573, !range !36, !noundef !37
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %_ZN7rocksdb6DBImpl9MCOverlapEPNS0_21ManualCompactionStateES2_.exit, %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.09.021, i64 8 ; 2 uses
  %i.an = icmp eq ptr %i.am, %.sroa.16.022
  br i1 %i.an, label %bb.h, label %_ZNSt15_Deque_iteratorIPN7rocksdb6DBImpl21ManualCompactionStateERS3_PS3_EppEv.exit8

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.21.023, i64 8 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !1571 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 512
  br label %_ZNSt15_Deque_iteratorIPN7rocksdb6DBImpl21ManualCompactionStateERS3_PS3_EppEv.exit8

_ZNSt15_Deque_iteratorIPN7rocksdb6DBImpl21ManualCompactionStateERS3_PS3_EppEv.exit8: ; preds = %bb.g, %bb.h
  %.sroa.09.2 = phi ptr [ %i.ap, %bb.h ], [ %i.am, %bb.g ] ; 2 uses
  %.sroa.16.2 = phi ptr [ %i.aq, %bb.h ], [ %.sroa.16.022, %bb.g ]
  %.sroa.21.2 = phi ptr [ %i.ao, %bb.h ], [ %.sroa.21.023, %bb.g ]
  %.not = icmp eq ptr %.sroa.09.2, %i.n
  br i1 %.not, label %.loopexit, label %.lr.ph.split, !llvm.loop !1572

.loopexit:                                        ; preds = %_ZNSt15_Deque_iteratorIPN7rocksdb6DBImpl21ManualCompactionStateERS3_PS3_EppEv.exit, %_ZNSt15_Deque_iteratorIPN7rocksdb6DBImpl21ManualCompactionStateERS3_PS3_EppEv.exit8, %bb.f, %_ZNSt15_Deque_iteratorIPN7rocksdb6DBImpl21ManualCompactionStateERS3_PS3_EppEv.exit8.us, %bb.c, %bb.b
  %.1 = phi i1 [ %i.j, %bb.b ], [ false, %_ZNSt15_Deque_iteratorIPN7rocksdb6DBImpl21ManualCompactionStateERS3_PS3_EppEv.exit8.us ], [ false, %_ZNSt15_Deque_iteratorIPN7rocksdb6DBImpl21ManualCompactionStateERS3_PS3_EppEv.exit8 ], [ false, %bb.c ], [ true, %bb.f ], [ false, %_ZNSt15_Deque_iteratorIPN7rocksdb6DBImpl21ManualCompactionStateERS3_PS3_EppEv.exit ]
  ret i1 %.1
}

declare noundef ptr @_ZN7rocksdb16ColumnFamilyData12CompactRangeERKNS_16MutableCFOptionsERKNS_16MutableDBOptionsEiiRKNS_19CompactRangeOptionsEPKNS_11InternalKeyESC_PPSA_PbmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3088), ptr noundef nonnull align 8 dereferenceable(736), ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: uwtable
define void @_ZN7rocksdb6DBImpl22BGWorkBottomCompactionEPv(ptr noundef %0) #13 align 2 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !1919
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !1920 ; 4 uses
  tail call void @_ZdlPvm(ptr noundef %0, i64 noundef 24) #33
  %.not.i = icmp eq ptr @_ZTHN7rocksdb15iostats_contextE, null
  br i1 %.not.i, label %_ZTWN7rocksdb15iostats_contextE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZTHN7rocksdb15iostats_contextE()
  br label %_ZTWN7rocksdb15iostats_contextE.exit

_ZTWN7rocksdb15iostats_contextE.exit:             ; preds = %bb.a, %bb.b
  %i.a = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN7rocksdb15iostats_contextE)
  store i64 0, ptr %i.a, align 8, !tbaa !1921
  tail call void @_ZN7rocksdb6DBImpl24BackgroundCallCompactionEPNS0_19PrepickedCompactionENS_3Env8PriorityE(ptr noundef nonnull align 64 dereferenceable(7336) %.sroa.0.0.copyload, ptr noundef %.sroa.4.0.copyload, i32 noundef 0)
  %i.b = icmp eq ptr %.sroa.4.0.copyload, null
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZTWN7rocksdb15iostats_contextE.exit
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !424  ; 3 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN7rocksdb6DBImpl19PrepickedCompactionD2Ev.exit, label %_ZNKSt14default_deleteIN7rocksdb16TaskLimiterTokenEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN7rocksdb16TaskLimiterTokenEEclEPS1_.exit.i.i: ; preds = %bb.c
  tail call void @_ZN7rocksdb16TaskLimiterTokenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.d) #34
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 8) #33
  br label %_ZN7rocksdb6DBImpl19PrepickedCompactionD2Ev.exit

_ZN7rocksdb6DBImpl19PrepickedCompactionD2Ev.exit: ; preds = %bb.c, %_ZNKSt14default_deleteIN7rocksdb16TaskLimiterTokenEEclEPS1_.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.4.0.copyload, i64 noundef 32) #33
  br label %bb.d

bb.d:                                             ; preds = %_ZN7rocksdb6DBImpl19PrepickedCompactionD2Ev.exit, %_ZTWN7rocksdb15iostats_contextE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb6DBImpl28UnscheduleCompactionCallbackEPv(ptr noundef %0) #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.rocksdb::Status", align 8   ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1616
  switch i32 %i.b, label %bb.d [
    i32 0, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %2 = load ptr, ptr %0, align 8, !tbaa !1577
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 5872 ; 2 uses
  %4 = load i32, ptr %3, align 16, !tbaa !1557
  %5 = add nsw i32 %4, -1
  store i32 %5, ptr %3, align 16, !tbaa !1557
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !1577
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 5876 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1558
  %i.f = add nsw i32 %i.e, -1
  store i32 %i.f, ptr %i.d, align 4, !tbaa !1558
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !1920 ; 6 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #33
  %.not = icmp eq ptr %.sroa.4.0.copyload, null
  br i1 %.not, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1584 ; 6 uses
  %.not20 = icmp eq ptr %i.h, null
  br i1 %.not20, label %_ZN7rocksdb6StatusD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i8 1, ptr %i.i, align 8, !tbaa !1552
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i8 7, ptr %i.j, align 8, !tbaa !654
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 25
  store i8 11, ptr %i.k, align 1, !tbaa !658
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 26
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  store i32 0, ptr %i.l, align 2
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !39   ; 2 uses
  store ptr null, ptr %i.m, align 8, !tbaa !39
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZN7rocksdb6StatusaSEOS0_.exit

_ZN7rocksdb6StatusaSEOS0_.exit:                   ; preds = %bb.f
  tail call void @_ZdaPv(ptr noundef nonnull %i.n) #33
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %bb.f, %_ZN7rocksdb6StatusaSEOS0_.exit, %bb.e
  %i.o = load ptr, ptr %.sroa.4.0.copyload, align 8, !tbaa !1592 ; 2 uses
  %.not21 = icmp eq ptr %i.o, null
  br i1 %.not21, label %bb.k, label %bb.g

bb.g:                                             ; preds = %_ZN7rocksdb6StatusD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  store i8 7, ptr %1, align 8, !tbaa !654, !alias.scope !1924
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 11, ptr %i.p, align 1, !tbaa !658, !alias.scope !1924
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store ptr null, ptr %i.r, align 8, !tbaa !653, !alias.scope !1924
  store i32 0, ptr %i.q, align 2, !alias.scope !1924
  invoke void @_ZN7rocksdb10Compaction22ReleaseCompactionFilesERKNS_6StatusE(ptr noundef nonnull align 16 dereferenceable(12020) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !39   ; 2 uses
  %.not.i.i22 = icmp eq ptr %i.s, null
  br i1 %.not.i.i22, label %_ZN7rocksdb6StatusD2Ev.exit24, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i23

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i23: ; preds = %bb.h
  call void @_ZdaPv(ptr noundef nonnull %i.s) #33
  br label %_ZN7rocksdb6StatusD2Ev.exit24

_ZN7rocksdb6StatusD2Ev.exit24:                    ; preds = %bb.h, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  %i.t = load ptr, ptr %.sroa.4.0.copyload, align 8, !tbaa !1592 ; 3 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZN7rocksdb6StatusD2Ev.exit24
  call void @_ZN7rocksdb10CompactionD1Ev(ptr noundef nonnull align 16 dead_on_return(12020) dereferenceable(12020) %i.t) #34
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef 12032) #33
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !39   ; 2 uses
  %.not.i.i25 = icmp eq ptr %i.w, null
  br i1 %.not.i.i25, label %_ZN7rocksdb6StatusD2Ev.exit27, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i26

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i26: ; preds = %bb.j
  call void @_ZdaPv(ptr noundef nonnull %i.w) #33
  br label %_ZN7rocksdb6StatusD2Ev.exit27

_ZN7rocksdb6StatusD2Ev.exit27:                    ; preds = %bb.j, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  resume { ptr, i32 } %i.v

bb.k:                                             ; preds = %_ZN7rocksdb6StatusD2Ev.exit, %bb.i, %_ZN7rocksdb6StatusD2Ev.exit24
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !424  ; 3 uses
  %.not.i.i28 = icmp eq ptr %i.y, null
  br i1 %.not.i.i28, label %_ZN7rocksdb6DBImpl19PrepickedCompactionD2Ev.exit, label %_ZNKSt14default_deleteIN7rocksdb16TaskLimiterTokenEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN7rocksdb16TaskLimiterTokenEEclEPS1_.exit.i.i: ; preds = %bb.k
  call void @_ZN7rocksdb16TaskLimiterTokenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.y) #34
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef 8) #33
  br label %_ZN7rocksdb6DBImpl19PrepickedCompactionD2Ev.exit

_ZN7rocksdb6DBImpl19PrepickedCompactionD2Ev.exit: ; preds = %bb.k, %_ZNKSt14default_deleteIN7rocksdb16TaskLimiterTokenEEclEPS1_.exit.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.4.0.copyload, i64 noundef 32) #33
  br label %bb.l

bb.l:                                             ; preds = %_ZN7rocksdb6DBImpl19PrepickedCompactionD2Ev.exit, %bb.d
  ret void
}

; Function Attrs: uwtable
define void @_ZN7rocksdb6DBImpl16BGWorkCompactionEPv(ptr noundef %0) #13 align 2 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !1919
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !1920 ; 4 uses
  tail call void @_ZdlPvm(ptr noundef %0, i64 noundef 24) #33
  %.not.i = icmp eq ptr @_ZTHN7rocksdb15iostats_contextE, null
  br i1 %.not.i, label %_ZTWN7rocksdb15iostats_contextE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZTHN7rocksdb15iostats_contextE()
  br label %_ZTWN7rocksdb15iostats_contextE.exit

_ZTWN7rocksdb15iostats_contextE.exit:             ; preds = %bb.a, %bb.b
  %i.a = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN7rocksdb15iostats_contextE)
  store i64 1, ptr %i.a, align 8, !tbaa !1921
  tail call void @_ZN7rocksdb6DBImpl24BackgroundCallCompactionEPNS0_19PrepickedCompactionENS_3Env8PriorityE(ptr noundef nonnull align 64 dereferenceable(7336) %.sroa.0.0.copyload, ptr noundef %.sroa.4.0.copyload, i32 noundef 1)
  %i.b = icmp eq ptr %.sroa.4.0.copyload, null
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZTWN7rocksdb15iostats_contextE.exit
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !424  ; 3 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN7rocksdb6DBImpl19PrepickedCompactionD2Ev.exit, label %_ZNKSt14default_deleteIN7rocksdb16TaskLimiterTokenEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN7rocksdb16TaskLimiterTokenEEclEPS1_.exit.i.i: ; preds = %bb.c
  tail call void @_ZN7rocksdb16TaskLimiterTokenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.d) #34
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 8) #33
  br label %_ZN7rocksdb6DBImpl19PrepickedCompactionD2Ev.exit

_ZN7rocksdb6DBImpl19PrepickedCompactionD2Ev.exit: ; preds = %bb.c, %_ZNKSt14default_deleteIN7rocksdb16TaskLimiterTokenEEclEPS1_.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.4.0.copyload, i64 noundef 32) #33
  br label %bb.d

bb.d:                                             ; preds = %_ZN7rocksdb6DBImpl19PrepickedCompactionD2Ev.exit, %_ZTWN7rocksdb15iostats_contextE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb6DBImpl22RemoveManualCompactionEPNS0_21ManualCompactionStateE(ptr noundef nonnull align 64 dereferenceable(7336) %0, ptr nofree noundef readnone captures(address) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"struct.std::_Deque_iterator.273", align 8 ; 7 uses
  %3 = alloca %"struct.std::_Deque_iterator.273", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5928
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 5944
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1562, !noalias !1927 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 5976
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1562, !noalias !1930 ; 2 uses
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 5968
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !1569, !noalias !1927
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 5960
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1570, !noalias !1927
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt15_Deque_iteratorIPN7rocksdb6DBImpl21ManualCompactionStateERS3_PS3_EppEv.exit
  %.sroa.17.014 = phi ptr [ %.sroa.17.1, %_ZNSt15_Deque_iteratorIPN7rocksdb6DBImpl21ManualCompactionStateERS3_PS3_EppEv.exit ], [ %i.h, %.lr.ph.preheader ] ; 4 uses
  %.sroa.13.013 = phi ptr [ %.sroa.13.1, %_ZNSt15_Deque_iteratorIPN7rocksdb6DBImpl21ManualCompactionStateERS3_PS3_EppEv.exit ], [ %i.j, %.lr.ph.preheader ] ; 2 uses
  %.sroa.04.012 = phi ptr [ %.sroa.04.1, %_ZNSt15_Deque_iteratorIPN7rocksdb6DBImpl21ManualCompactionStateERS3_PS3_EppEv.exit ], [ %i.c, %.lr.ph.preheader ] ; 3 uses
  %i.k = load ptr, ptr %.sroa.04.012, align 8, !tbaa !1553
  %i.l = icmp eq ptr %1, %i.k
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1933)
  store ptr %.sroa.04.012, ptr %2, align 8, !tbaa !1562, !alias.scope !1933, !noalias !1936
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load ptr, ptr %.sroa.17.014, align 8, !tbaa !1571, !noalias !1939 ; 2 uses
  store ptr %i.n, ptr %i.m, align 8, !tbaa !1631, !alias.scope !1933, !noalias !1936
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 512
  store ptr %i.p, ptr %i.o, align 8, !tbaa !1570, !alias.scope !1933, !noalias !1936
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %.sroa.17.014, ptr %i.q, align 8, !tbaa !1569, !alias.scope !1933, !noalias !1936
  call void @_ZNSt5dequeIPN7rocksdb6DBImpl21ManualCompactionStateESaIS3_EE8_M_eraseESt15_Deque_iteratorIS3_RS3_PS3_E(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator.273") align 8 %3, ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dead_on_return %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.04.012, i64 8 ; 2 uses
  %i.s = icmp eq ptr %i.r, %.sroa.13.013
  br i1 %i.s, label %bb.d, label %_ZNSt15_Deque_iteratorIPN7rocksdb6DBImpl21ManualCompactionStateERS3_PS3_EppEv.exit

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.17.014, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1571 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 512
  br label %_ZNSt15_Deque_iteratorIPN7rocksdb6DBImpl21ManualCompactionStateERS3_PS3_EppEv.exit

_ZNSt15_Deque_iteratorIPN7rocksdb6DBImpl21ManualCompactionStateERS3_PS3_EppEv.exit: ; preds = %bb.c, %bb.d
end_hunk_0
