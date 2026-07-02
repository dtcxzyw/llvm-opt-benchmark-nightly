inline.NumInlined: 2106
inline.NumDeleted: 554
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZN2v88internal21OrderedNameDictionary9FindEntryINS0_7IsolateEEENS0_13InternalIndexEPT_NS0_6TaggedINS0_6ObjectEEE:bb.a

.critedge:                                        ; preds = %.lr.ph24, %.critedge.loopexit.split.loop.exit14, %_ZNK2v88internal4Name4hashEv.exit, %bb.a
  %.sroa.012.0 = phi i64 [ -1, %bb.a ], [ %i.ay, %.critedge.loopexit.split.loop.exit14 ], [ -1, %_ZNK2v88internal4Name4hashEv.exit ], [ -1, %.lr.ph24 ]
  ret i64 %.sroa.012.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden i64 @_ZN2v88internal21OrderedNameDictionary9FindEntryINS0_12LocalIsolateEEENS0_13InternalIndexEPT_NS0_6TaggedINS0_6ObjectEEE(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load atomic volatile i64, ptr %i.a monotonic, align 8
  %i.c = icmp ult i64 %i.b, 4294967296
  br i1 %i.c, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %2, -1
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load atomic i32, ptr %i.f acquire, align 4 ; 3 uses
  %i.h = and i32 %i.g, 1
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZNK2v88internal4Name4hashEv.exit, label %bb.c, !prof !8

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef i32 @_ZNK2v88internal4Name29GetRawHashFromForwardingTableEj(ptr noundef nonnull align 4 dereferenceable(12) %i.e, i32 noundef %i.g)
  br label %_ZNK2v88internal4Name4hashEv.exit

_ZNK2v88internal4Name4hashEv.exit:                ; preds = %bb.b, %bb.c
  %.0.in.i = phi i32 [ %i.j, %bb.c ], [ %i.g, %bb.b ]
  %.0.i = lshr i32 %.0.in.i, 2
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.l = load atomic volatile i64, ptr %i.k monotonic, align 8
  %i.m = lshr i64 %i.l, 32
  %i.n = trunc nuw i64 %i.m to i32
  %i.o = add i32 %i.n, 1073741823
  %i.p = and i32 %i.o, %.0.i
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr [8 x i8], ptr %0, i64 %i.q
  %i.s = getelementptr i8, ptr %i.r, i64 48
  %i.t = load atomic volatile i64, ptr %i.s monotonic, align 8 ; 2 uses
  %.08.in16 = lshr i64 %i.t, 32                   ; 2 uses
  %.not17 = icmp eq i64 %.08.in16, 4294967295
  br i1 %.not17, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK2v88internal4Name4hashEv.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.0823 = trunc nuw i64 %.08.in16 to i32
  %i.v = load atomic volatile i64, ptr %i.k monotonic, align 8
  %i.w = lshr i64 %i.v, 32
  %i.x = trunc nuw i64 %i.w to i32
  %i.y = shl nsw i32 %.0823, 2
  %i.z = add i32 %i.y, 4                          ; 2 uses
  %i.aa = add i32 %i.z, %i.x
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.ab
  %i.ad = load atomic volatile i64, ptr %i.ac monotonic, align 8
  %i.ae = icmp eq i64 %i.ad, %2
  br i1 %i.ae, label %.critedge.loopexit.split.loop.exit14, label %.lr.ph24

bb.d:                                             ; preds = %.lr.ph24
  %.08 = trunc nuw i64 %.08.in to i32
  %i.af = load atomic volatile i64, ptr %i.k monotonic, align 8
  %i.ag = lshr i64 %i.af, 32
  %i.ah = trunc nuw i64 %i.ag to i32
  %i.ai = shl nsw i32 %.08, 2
  %i.aj = add i32 %i.ai, 4                        ; 2 uses
  %i.ak = add i32 %i.aj, %i.ah
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.al
  %i.an = load atomic volatile i64, ptr %i.am monotonic, align 8
  %i.ao = icmp eq i64 %i.an, %2
  br i1 %i.ao, label %.critedge.loopexit.split.loop.exit14, label %.lr.ph24, !llvm.loop !24

.lr.ph24:                                         ; preds = %.lr.ph, %bb.d
  %i.ap = phi i32 [ %i.aj, %bb.d ], [ %i.z, %.lr.ph ]
  %i.aq = load atomic volatile i64, ptr %i.k monotonic, align 8
  %i.ar = lshr i64 %i.aq, 32
  %i.as = trunc nuw i64 %i.ar to i32
  %i.at = add i32 %i.ap, %i.as
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr [8 x i8], ptr %0, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.av, i64 40
  %i.ax = load atomic volatile i64, ptr %i.aw monotonic, align 8 ; 2 uses
  %.08.in = lshr i64 %i.ax, 32                    ; 2 uses
  %.not = icmp eq i64 %.08.in, 4294967295
  br i1 %.not, label %.critedge, label %bb.d, !llvm.loop !24

.critedge.loopexit.split.loop.exit14:             ; preds = %bb.d, %.lr.ph
  %.08.in.in18.lcssa = phi i64 [ %i.t, %.lr.ph ], [ %i.ax, %bb.d ]
  %i.ay = ashr i64 %.08.in.in18.lcssa, 32
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph24, %.critedge.loopexit.split.loop.exit14, %_ZNK2v88internal4Name4hashEv.exit, %bb.a
  %.sroa.012.0 = phi i64 [ -1, %bb.a ], [ %i.ay, %.critedge.loopexit.split.loop.exit14 ], [ -1, %_ZNK2v88internal4Name4hashEv.exit ], [ -1, %.lr.ph24 ]
  ret i64 %.sroa.012.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZN2v88internal21SmallOrderedHashTableINS0_19SmallOrderedHashSetEE6HasKeyEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8
  %i.b = tail call i64 @_ZN2v88internal21SmallOrderedHashTableINS0_19SmallOrderedHashSetEE9FindEntryEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i64 %i.a)
  %i.c = icmp ne i64 %i.b, -1
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN2v88internal21SmallOrderedHashTableINS0_19SmallOrderedHashSetEE9FindEntryEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.518", align 8 ; 4 uses
  %i.a = tail call i64 @_ZN2v88internal6Object13GetSimpleHashENS0_6TaggedIS1_EE(i64 %2) ; 2 uses
  %i.b = and i64 %i.a, 1
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZN2v88internal6Object7GetHashENS0_6TaggedIS1_EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = trunc i64 %2 to i1
  br i1 %i.d, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i, !prof !13

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.b
  %i.e = add nsw i64 %2, -1
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i64, ptr %i.f monotonic, align 8
  %i.h = add i64 %i.g, 11
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load atomic volatile i16, ptr %i.i monotonic, align 2
  %i.k = icmp ugt i16 %i.j, 299
  br i1 %i.k, label %bb.c, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i, !prof !14

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i: ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i, %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #14
  unreachable

bb.c:                                             ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  store i64 %2, ptr %3, align 8
  %i.l = call i64 @_ZN2v88internal10JSReceiver15GetIdentityHashEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %_ZN2v88internal6Object7GetHashENS0_6TaggedIS1_EE.exit

_ZN2v88internal6Object7GetHashENS0_6TaggedIS1_EE.exit: ; preds = %bb.a, %bb.c
  %.sroa.09.0.i = phi i64 [ %i.l, %bb.c ], [ %i.a, %bb.a ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.n = load i64, ptr %i.m, align 8
  %i.o = icmp eq i64 %.sroa.09.0.i, %i.n
  br i1 %i.o, label %.critedge, label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal6Object7GetHashENS0_6TaggedIS1_EE.exit
  %i.p = lshr i64 %.sroa.09.0.i, 32
  %i.q = trunc nuw i64 %i.p to i32
  %i.r = load i64, ptr %0, align 8                ; 3 uses
  %i.s = add i64 %i.r, 9
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load i8, ptr %i.t, align 1
  %i.v = zext i8 %i.u to i32                      ; 2 uses
  %i.w = add nsw i32 %i.v, -1
  %i.x = and i32 %i.w, %i.q
  %i.y = shl nuw nsw i32 %i.v, 4
  %i.z = add nuw nsw i32 %i.y, 16
  %i.aa = add i32 %i.z, %i.x
  %i.ab = sext i32 %i.aa to i64
  %i.ac = add i64 %i.r, -1
  %i.ad = add i64 %i.ac, %i.ab
  %.018.in.in34 = inttoptr i64 %i.ad to ptr
  %.018.in35 = load i8, ptr %.018.in.in34, align 1 ; 2 uses
  %.not37 = icmp eq i8 %.018.in35, -1
  br i1 %.not37, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %.pre42 = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %i.ae = phi i64 [ %i.as, %bb.f ], [ %i.r, %.lr.ph.preheader ] ; 2 uses
  %i.af = phi ptr [ %i.at, %bb.f ], [ %.pre42, %.lr.ph.preheader ] ; 2 uses
  %.018.in38 = phi i8 [ %.018.in, %bb.f ], [ %.018.in35, %.lr.ph.preheader ] ; 2 uses
  %.01839 = zext i8 %.018.in38 to i32             ; 2 uses
  %i.ag = shl nuw nsw i32 %.01839, 3
  %i.ah = add nuw nsw i32 %i.ag, 15
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = add i64 %i.ae, %i.ai
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = load i64, ptr %i.ak, align 8            ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 10624
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 104
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = icmp eq i64 %i.al, %i.ap
  br i1 %i.aq, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.ar = call noundef zeroext i1 @_ZN2v88internal6Object13SameValueZeroENS0_6TaggedIS1_EES3_(i64 %i.al, i64 %2) #13
  br i1 %i.ar, label %.critedge.loopexit.split.loop.exit, label %._crit_edge

._crit_edge:                                      ; preds = %bb.e
  %.pre = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %.pre43 = load i64, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %.lr.ph
  %i.as = phi i64 [ %i.ae, %.lr.ph ], [ %.pre43, %._crit_edge ] ; 3 uses
  %i.at = phi ptr [ %i.af, %.lr.ph ], [ %.pre, %._crit_edge ]
  %i.au = add i64 %i.as, 9
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = zext i8 %i.aw to i32                    ; 2 uses
  %i.ay = shl nuw nsw i32 %i.ax, 4
  %i.az = add nuw nsw i32 %.01839, 16
  %i.ba = add nuw nsw i32 %i.az, %i.ax
  %i.bb = add nuw nsw i32 %i.ba, %i.ay
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = add i64 %i.as, -1
  %i.be = add i64 %i.bd, %i.bc
  %.018.in.in = inttoptr i64 %i.be to ptr
  %.018.in = load i8, ptr %.018.in.in, align 1    ; 2 uses
  %.not = icmp eq i8 %.018.in, -1
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !25

.critedge.loopexit.split.loop.exit:               ; preds = %bb.e
  %i.bf = zext i8 %.018.in38 to i64
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %.critedge.loopexit.split.loop.exit, %bb.d, %_ZN2v88internal6Object7GetHashENS0_6TaggedIS1_EE.exit
  %.sroa.019.0 = phi i64 [ -1, %_ZN2v88internal6Object7GetHashENS0_6TaggedIS1_EE.exit ], [ %i.bf, %.critedge.loopexit.split.loop.exit ], [ -1, %bb.d ], [ -1, %bb.f ]
  ret i64 %.sroa.019.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal21SmallOrderedHashTableINS0_19SmallOrderedHashSetEE6RehashEPNS0_7IsolateENS0_6HandleIS2_EEi(ptr noundef %0, ptr %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.518", align 8 ; 4 uses
  %i.a = load i64, ptr %1, align 8
  %i.b = and i64 %i.a, -262144
  %i.c = inttoptr i64 %i.b to ptr
  %.sroa.0.0.copyload.i28 = load i64, ptr %i.c, align 262144
  %i.d = and i64 %.sroa.0.0.copyload.i28, 24
  %.not = icmp eq i64 %i.d, 0
  %i.e = zext i1 %.not to i8
  %i.f = tail call ptr @_ZN2v88internal7Factory22NewSmallOrderedHashSetEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %2, i8 noundef zeroext %i.e) #13 ; 5 uses
  %i.g = load i64, ptr %1, align 8                ; 2 uses
  %i.h = add i64 %i.g, 7
  %i.i = inttoptr i64 %i.h to ptr                 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1
  %i.k = zext i8 %i.j to i64
  %i.l = add i64 %i.g, 8
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load i8, ptr %i.m, align 1
  %i.o = zext i8 %i.n to i64
  %i.p = add nuw nsw i64 %i.o, %i.k               ; 2 uses
  %.not112113 = icmp eq i64 %i.p, 0
  br i1 %.not112113, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 656
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.k
  %.pre = load i64, ptr %1, align 8
  %.pre116 = add i64 %.pre, 7
  %.pre117 = inttoptr i64 %.pre116 to ptr
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.pre-phi118 = phi ptr [ %.pre117, %._crit_edge.loopexit ], [ %i.i, %bb.a ]
  %i.r = load i64, ptr %i.f, align 8
  %i.s = load i8, ptr %.pre-phi118, align 1
  %i.t = add i64 %i.r, 7
  %i.u = inttoptr i64 %i.t to ptr
  store i8 %i.s, ptr %i.u, align 1
  ret ptr %i.f

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %.0115 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.k ] ; 5 uses
  %.sroa.051.0114 = phi i64 [ 0, %.lr.ph ], [ %i.cs, %bb.k ] ; 2 uses
  %i.v = load i64, ptr %1, align 8
  %i.w = trunc i64 %.sroa.051.0114 to i32
  %i.x = shl i32 %i.w, 3
  %i.y = add i32 %i.x, 16
  %i.z = sext i32 %i.y to i64
  %i.aa = add nsw i64 %i.z, -1                    ; 2 uses
  %i.ab = add i64 %i.aa, %i.v
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = load i64, ptr %i.ac, align 8            ; 5 uses
  %i.ae = load i64, ptr %i.q, align 8
  %i.af = icmp eq i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ag = call i64 @_ZN2v88internal6Object13GetSimpleHashENS0_6TaggedIS1_EE(i64 %i.ad) ; 2 uses
  %i.ah = and i64 %i.ag, 1
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %_ZN2v88internal6Object7GetHashENS0_6TaggedIS1_EE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = trunc i64 %i.ad to i1
  br i1 %i.aj, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i, !prof !13

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.d
  %i.ak = add nsw i64 %i.ad, -1
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load atomic volatile i64, ptr %i.al monotonic, align 8
  %i.an = add i64 %i.am, 11
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = load atomic volatile i16, ptr %i.ao monotonic, align 2
  %i.aq = icmp ugt i16 %i.ap, 299
  br i1 %i.aq, label %bb.e, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i, !prof !14

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i: ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i, %bb.d
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #14
  unreachable

bb.e:                                             ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  store i64 %i.ad, ptr %3, align 8
  %i.ar = call i64 @_ZN2v88internal10JSReceiver15GetIdentityHashEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %_ZN2v88internal6Object7GetHashENS0_6TaggedIS1_EE.exit

_ZN2v88internal6Object7GetHashENS0_6TaggedIS1_EE.exit: ; preds = %bb.c, %bb.e
  %.sroa.09.0.i = phi i64 [ %i.ar, %bb.e ], [ %i.ag, %bb.c ]
  %i.as = lshr i64 %.sroa.09.0.i, 32
  %i.at = trunc nuw i64 %i.as to i32
  %i.au = load i64, ptr %i.f, align 8             ; 2 uses
  %i.av = add i64 %i.au, 9
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = zext i8 %i.ax to i32                    ; 2 uses
  %i.az = add nsw i32 %i.ay, -1
  %i.ba = and i32 %i.az, %i.at
  %i.bb = shl nuw nsw i32 %i.ay, 4
  %i.bc = add nuw nsw i32 %i.bb, 16
  %i.bd = add i32 %i.bc, %i.ba
  %i.be = sext i32 %i.bd to i64
  %i.bf = add i64 %i.au, -1
  %i.bg = add i64 %i.bf, %i.be
  %i.bh = inttoptr i64 %i.bg to ptr               ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1
  %i.bj = trunc i32 %.0115 to i8
  store i8 %i.bj, ptr %i.bh, align 1
  %i.bk = load i64, ptr %i.f, align 8             ; 2 uses
  %i.bl = add i64 %i.bk, 9
  %i.bm = inttoptr i64 %i.bl to ptr
  %i.bn = load i8, ptr %i.bm, align 1
  %i.bo = zext i8 %i.bn to i32                    ; 2 uses
  %i.bp = shl nuw nsw i32 %i.bo, 4
  %i.bq = add i32 %.0115, 16
  %i.br = add i32 %i.bq, %i.bo
  %i.bs = add i32 %i.br, %i.bp
  %i.bt = sext i32 %i.bs to i64
  %i.bu = add i64 %i.bk, -1
  %i.bv = add i64 %i.bu, %i.bt
  %i.bw = inttoptr i64 %i.bv to ptr
  store i8 %i.bi, ptr %i.bw, align 1
  %i.bx = shl i32 %.0115, 3
  %i.by = add i32 %i.bx, 16
  %i.bz = sext i32 %i.by to i64
  %i.ca = add nsw i64 %i.bz, -1
  %i.cb = load i64, ptr %1, align 8
  %i.cc = add i64 %i.aa, %i.cb
  %i.cd = inttoptr i64 %i.cc to ptr
  %i.ce = load i64, ptr %i.cd, align 8            ; 5 uses
  %i.cf = load i64, ptr %i.f, align 8             ; 4 uses
  %i.cg = add i64 %i.ca, %i.cf                    ; 3 uses
  %i.ch = inttoptr i64 %i.cg to ptr
  store atomic volatile i64 %i.ce, ptr %i.ch monotonic, align 8
  %i.ci = trunc i64 %i.ce to i1
  br i1 %i.ci, label %bb.f, label %_ZN2v88internal21SmallOrderedHashTableINS0_19SmallOrderedHashSetEE12SetDataEntryEiiNS0_6TaggedINS0_6ObjectEEE.exit

bb.f:                                             ; preds = %_ZN2v88internal6Object7GetHashENS0_6TaggedIS1_EE.exit
  %i.cj = and i64 %i.cf, -262144
  %i.ck = inttoptr i64 %i.cj to ptr
  %i.cl = load i64, ptr %i.ck, align 262144       ; 2 uses
  %i.cm = and i64 %i.cl, 32
  %.not.i.i.i = icmp eq i64 %i.cm, 0
  %i.cn = and i64 %i.cl, 25
  %.not37.i.i.i = icmp eq i64 %i.cn, 0
  br i1 %.not37.i.i.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.co = and i64 %i.ce, -262144
  %i.cp = inttoptr i64 %i.co to ptr
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.cp, align 262144
  %i.cq = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 25
  %.not38.i.i.i = icmp eq i64 %i.cq, 0
  br i1 %.not38.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.cf, i64 noundef %i.cg, i64 %i.ce) #13
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  br i1 %.not.i.i.i, label %_ZN2v88internal21SmallOrderedHashTableINS0_19SmallOrderedHashSetEE12SetDataEntryEiiNS0_6TaggedINS0_6ObjectEEE.exit, label %bb.j, !prof !8

bb.j:                                             ; preds = %bb.i
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.cf, i64 %i.cg, i64 %i.ce) #13
  br label %_ZN2v88internal21SmallOrderedHashTableINS0_19SmallOrderedHashSetEE12SetDataEntryEiiNS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal21SmallOrderedHashTableINS0_19SmallOrderedHashSetEE12SetDataEntryEiiNS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal6Object7GetHashENS0_6TaggedIS1_EE.exit, %bb.i, %bb.j
  %i.cr = add nsw i32 %.0115, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.b, %_ZN2v88internal21SmallOrderedHashTableINS0_19SmallOrderedHashSetEE12SetDataEntryEiiNS0_6TaggedINS0_6ObjectEEE.exit
end_hunk_0
begin_hunk_1_@_ZN2v88internal21SmallOrderedHashTableINS0_19SmallOrderedHashSetEE10InitializeEPNS0_7IsolateEi:bb.a
  %i.p = load i64, ptr %0, align 8
  %i.q = sext i32 %i.o to i64
  %i.r = add nsw i64 %i.q, 15
  %i.s = add i64 %i.r, %i.p
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = add nsw i32 %i.a, %2
  %i.v = sext i32 %i.u to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.t, i8 -1, i64 %i.v, i1 false)
  %i.w = load i64, ptr %0, align 8
  %i.x = add i64 %i.w, 15
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 656
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = sext i32 %2 to i64
  %i.ab = inttoptr i64 %i.x to ptr
  %i.ac = tail call { i64, ptr } asm sideeffect "cld;rep ; stosq", "=&{cx},=&{di},{ax},0,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %i.z, i64 %i.aa, ptr %i.ab) #13, !srcloc !26 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZN2v88internal21SmallOrderedHashTableINS0_19SmallOrderedHashSetEE6DeleteEPNS0_7IsolateENS0_6TaggedIS2_EENS6_INS0_6ObjectEEE(ptr noundef %0, i64 %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  store i64 %1, ptr %3, align 8
  %i.a = call i64 @_ZN2v88internal21SmallOrderedHashTableINS0_19SmallOrderedHashSetEE9FindEntryEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %0, i64 %2) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.b = icmp ne i64 %i.a, -1                     ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %1, 7
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1
  %i.f = add i64 %1, 8
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.j = load i64, ptr %i.i, align 8
  %.fr45 = freeze i64 %i.j                        ; 6 uses
  %i.k = trunc i64 %i.a to i32
  %i.l = shl i32 %i.k, 3
  %i.m = add i32 %i.l, 16
  %i.n = sext i32 %i.m to i64
  %i.o = add i64 %1, -1
  %i.p = add i64 %i.o, %i.n                       ; 3 uses
  %i.q = inttoptr i64 %i.p to ptr                 ; 2 uses
  %i.r = trunc i64 %.fr45 to i1
  %i.s = and i64 %.fr45, -262144
  %i.t = inttoptr i64 %i.s to ptr
  br i1 %i.r, label %.split.us, label %_ZN2v88internal21SmallOrderedHashTableINS0_19SmallOrderedHashSetEE12SetDataEntryEiiNS0_6TaggedINS0_6ObjectEEE.exit

.split.us:                                        ; preds = %bb.b
  %i.u = and i64 %1, -262144
  %i.v = inttoptr i64 %i.u to ptr
  store atomic volatile i64 %.fr45, ptr %i.q monotonic, align 8
  %i.w = load i64, ptr %i.v, align 262144         ; 2 uses
  %i.x = and i64 %i.w, 32
  %.not.i.i.i.us = icmp eq i64 %i.x, 0
  %i.y = and i64 %i.w, 25
  %.not37.i.i.i.us = icmp eq i64 %i.y, 0
  br i1 %.not37.i.i.i.us, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.split.us
  %.sroa.0.0.copyload.i.i.i.i.i.us = load i64, ptr %i.t, align 262144
  %i.z = and i64 %.sroa.0.0.copyload.i.i.i.i.i.us, 25
  %.not38.i.i.i.us = icmp eq i64 %i.z, 0
  br i1 %.not38.i.i.i.us, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %1, i64 noundef %i.p, i64 %.fr45) #13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %.split.us
  br i1 %.not.i.i.i.us, label %.split44.us, label %bb.f, !prof !8

bb.f:                                             ; preds = %bb.e
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %1, i64 %i.p, i64 %.fr45) #13
  br label %.split44.us

.split44.us:                                      ; preds = %bb.f, %bb.e, %_ZN2v88internal21SmallOrderedHashTableINS0_19SmallOrderedHashSetEE12SetDataEntryEiiNS0_6TaggedINS0_6ObjectEEE.exit
  %i.aa = add i8 %i.e, -1
  store i8 %i.aa, ptr %i.d, align 1
  %i.ab = add i8 %i.h, 1
  store i8 %i.ab, ptr %i.g, align 1
  br label %bb.g

_ZN2v88internal21SmallOrderedHashTableINS0_19SmallOrderedHashSetEE12SetDataEntryEiiNS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.b
  store atomic volatile i64 %.fr45, ptr %i.q monotonic, align 8
  br label %.split44.us

bb.g:                                             ; preds = %bb.a, %.split44.us
  ret i1 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZN2v88internal21SmallOrderedHashTableINS0_19SmallOrderedHashMapEE6HasKeyEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8
  %i.b = tail call i64 @_ZN2v88internal21SmallOrderedHashTableINS0_19SmallOrderedHashMapEE9FindEntryEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i64 %i.a)
  %i.c = icmp ne i64 %i.b, -1
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN2v88internal21SmallOrderedHashTableINS0_19SmallOrderedHashMapEE9FindEntryEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.518", align 8 ; 4 uses
  %i.a = tail call i64 @_ZN2v88internal6Object13GetSimpleHashENS0_6TaggedIS1_EE(i64 %2) ; 2 uses
  %i.b = and i64 %i.a, 1
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZN2v88internal6Object7GetHashENS0_6TaggedIS1_EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = trunc i64 %2 to i1
  br i1 %i.d, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i, !prof !13

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.b
  %i.e = add nsw i64 %2, -1
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i64, ptr %i.f monotonic, align 8
  %i.h = add i64 %i.g, 11
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load atomic volatile i16, ptr %i.i monotonic, align 2
  %i.k = icmp ugt i16 %i.j, 299
  br i1 %i.k, label %bb.c, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i, !prof !14

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i: ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i, %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #14
  unreachable

bb.c:                                             ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  store i64 %2, ptr %3, align 8
  %i.l = call i64 @_ZN2v88internal10JSReceiver15GetIdentityHashEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %_ZN2v88internal6Object7GetHashENS0_6TaggedIS1_EE.exit

_ZN2v88internal6Object7GetHashENS0_6TaggedIS1_EE.exit: ; preds = %bb.a, %bb.c
  %.sroa.09.0.i = phi i64 [ %i.l, %bb.c ], [ %i.a, %bb.a ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.n = load i64, ptr %i.m, align 8
  %i.o = icmp eq i64 %.sroa.09.0.i, %i.n
  br i1 %i.o, label %.critedge, label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal6Object7GetHashENS0_6TaggedIS1_EE.exit
  %i.p = lshr i64 %.sroa.09.0.i, 32
  %i.q = trunc nuw i64 %i.p to i32
  %i.r = load i64, ptr %0, align 8                ; 3 uses
  %i.s = add i64 %i.r, 9
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load i8, ptr %i.t, align 1
  %i.v = zext i8 %i.u to i32                      ; 2 uses
  %i.w = add nsw i32 %i.v, -1
  %i.x = and i32 %i.w, %i.q
  %i.y = shl nuw nsw i32 %i.v, 5
  %i.z = or disjoint i32 %i.y, 16
  %i.aa = add i32 %i.z, %i.x
  %i.ab = sext i32 %i.aa to i64
  %i.ac = add i64 %i.r, -1
  %i.ad = add i64 %i.ac, %i.ab
  %.018.in.in34 = inttoptr i64 %i.ad to ptr
  %.018.in35 = load i8, ptr %.018.in.in34, align 1 ; 2 uses
  %.not37 = icmp eq i8 %.018.in35, -1
  br i1 %.not37, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %.pre42 = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %i.ae = phi i64 [ %i.as, %bb.f ], [ %i.r, %.lr.ph.preheader ] ; 2 uses
  %i.af = phi ptr [ %i.at, %bb.f ], [ %.pre42, %.lr.ph.preheader ] ; 2 uses
  %.018.in38 = phi i8 [ %.018.in, %bb.f ], [ %.018.in35, %.lr.ph.preheader ] ; 2 uses
  %.01839 = zext i8 %.018.in38 to i32             ; 2 uses
  %i.ag = shl nuw nsw i32 %.01839, 4
  %i.ah = or disjoint i32 %i.ag, 15
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = add i64 %i.ae, %i.ai
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = load i64, ptr %i.ak, align 8            ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 10624
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 104
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = icmp eq i64 %i.al, %i.ap
  br i1 %i.aq, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.ar = call noundef zeroext i1 @_ZN2v88internal6Object13SameValueZeroENS0_6TaggedIS1_EES3_(i64 %i.al, i64 %2) #13
  br i1 %i.ar, label %.critedge.loopexit.split.loop.exit, label %._crit_edge

._crit_edge:                                      ; preds = %bb.e
  %.pre = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %.pre43 = load i64, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %.lr.ph
  %i.as = phi i64 [ %i.ae, %.lr.ph ], [ %.pre43, %._crit_edge ] ; 3 uses
  %i.at = phi ptr [ %i.af, %.lr.ph ], [ %.pre, %._crit_edge ]
  %i.au = add i64 %i.as, 9
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = zext i8 %i.aw to i32                    ; 2 uses
  %i.ay = shl nuw nsw i32 %i.ax, 5
  %i.az = add nuw nsw i32 %.01839, 16
  %i.ba = add nuw nsw i32 %i.az, %i.ax
  %i.bb = add nuw nsw i32 %i.ba, %i.ay
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = add i64 %i.as, -1
  %i.be = add i64 %i.bd, %i.bc
  %.018.in.in = inttoptr i64 %i.be to ptr
  %.018.in = load i8, ptr %.018.in.in, align 1    ; 2 uses
  %.not = icmp eq i8 %.018.in, -1
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !27

.critedge.loopexit.split.loop.exit:               ; preds = %bb.e
  %i.bf = zext i8 %.018.in38 to i64
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %.critedge.loopexit.split.loop.exit, %bb.d, %_ZN2v88internal6Object7GetHashENS0_6TaggedIS1_EE.exit
  %.sroa.019.0 = phi i64 [ -1, %_ZN2v88internal6Object7GetHashENS0_6TaggedIS1_EE.exit ], [ %i.bf, %.critedge.loopexit.split.loop.exit ], [ -1, %bb.d ], [ -1, %bb.f ]
  ret i64 %.sroa.019.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal21SmallOrderedHashTableINS0_19SmallOrderedHashMapEE6RehashEPNS0_7IsolateENS0_6HandleIS2_EEi(ptr noundef %0, ptr %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.518", align 8 ; 4 uses
  %i.a = load i64, ptr %1, align 8
  %i.b = and i64 %i.a, -262144
  %i.c = inttoptr i64 %i.b to ptr
  %.sroa.0.0.copyload.i28 = load i64, ptr %i.c, align 262144
  %i.d = and i64 %.sroa.0.0.copyload.i28, 24
  %.not = icmp eq i64 %i.d, 0
  %i.e = zext i1 %.not to i8
  %i.f = tail call ptr @_ZN2v88internal7Factory22NewSmallOrderedHashMapEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %2, i8 noundef zeroext %i.e) #13 ; 6 uses
  %i.g = load i64, ptr %1, align 8                ; 2 uses
  %i.h = add i64 %i.g, 7
  %i.i = inttoptr i64 %i.h to ptr                 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1
  %i.k = zext i8 %i.j to i64
  %i.l = add i64 %i.g, 8
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load i8, ptr %i.m, align 1
  %i.o = zext i8 %i.n to i64
  %i.p = add nuw nsw i64 %i.o, %i.k               ; 2 uses
  %.not112114 = icmp eq i64 %i.p, 0
  br i1 %.not112114, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 656
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.p
  %.pre = load i64, ptr %1, align 8
  %.pre118 = add i64 %.pre, 7
  %.pre119 = inttoptr i64 %.pre118 to ptr
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.pre-phi120 = phi ptr [ %.pre119, %._crit_edge.loopexit ], [ %i.i, %bb.a ]
  %i.r = load i64, ptr %i.f, align 8
  %i.s = load i8, ptr %.pre-phi120, align 1
  %i.t = add i64 %i.r, 7
  %i.u = inttoptr i64 %i.t to ptr
  store i8 %i.s, ptr %i.u, align 1
  ret ptr %i.f

bb.b:                                             ; preds = %.lr.ph, %bb.p
  %.0116 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.p ] ; 5 uses
  %.sroa.051.0115 = phi i64 [ 0, %.lr.ph ], [ %i.dm, %bb.p ] ; 2 uses
  %i.v = load i64, ptr %1, align 8
  %i.w = trunc i64 %.sroa.051.0115 to i32
  %i.x = shl nsw i32 %i.w, 4                      ; 2 uses
  %i.y = add nsw i32 %i.x, 16
  %i.z = or disjoint i32 %i.x, 15
  %i.aa = sext i32 %i.z to i64
  %i.ab = add i64 %i.v, %i.aa
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = load i64, ptr %i.ac, align 8            ; 5 uses
  %i.ae = load i64, ptr %i.q, align 8
  %i.af = icmp eq i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.p, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ag = call i64 @_ZN2v88internal6Object13GetSimpleHashENS0_6TaggedIS1_EE(i64 %i.ad) ; 2 uses
  %i.ah = and i64 %i.ag, 1
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %_ZN2v88internal6Object7GetHashENS0_6TaggedIS1_EE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = trunc i64 %i.ad to i1
  br i1 %i.aj, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i, !prof !13

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.d
  %i.ak = add nsw i64 %i.ad, -1
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load atomic volatile i64, ptr %i.al monotonic, align 8
  %i.an = add i64 %i.am, 11
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = load atomic volatile i16, ptr %i.ao monotonic, align 2
  %i.aq = icmp ugt i16 %i.ap, 299
  br i1 %i.aq, label %bb.e, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i, !prof !14

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i: ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i, %bb.d
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #14
  unreachable

bb.e:                                             ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  store i64 %i.ad, ptr %3, align 8
  %i.ar = call i64 @_ZN2v88internal10JSReceiver15GetIdentityHashEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %_ZN2v88internal6Object7GetHashENS0_6TaggedIS1_EE.exit

_ZN2v88internal6Object7GetHashENS0_6TaggedIS1_EE.exit: ; preds = %bb.c, %bb.e
  %.sroa.09.0.i = phi i64 [ %i.ar, %bb.e ], [ %i.ag, %bb.c ]
  %i.as = lshr i64 %.sroa.09.0.i, 32
  %i.at = trunc nuw i64 %i.as to i32
  %i.au = load i64, ptr %i.f, align 8             ; 2 uses
  %i.av = add i64 %i.au, 9
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = zext i8 %i.ax to i32                    ; 2 uses
  %i.az = add nsw i32 %i.ay, -1
  %i.ba = and i32 %i.az, %i.at
  %i.bb = shl nuw nsw i32 %i.ay, 5
  %i.bc = or disjoint i32 %i.bb, 16
  %i.bd = add i32 %i.bc, %i.ba
  %i.be = sext i32 %i.bd to i64
  %i.bf = add i64 %i.au, -1
  %i.bg = add i64 %i.bf, %i.be
  %i.bh = inttoptr i64 %i.bg to ptr               ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1
  %i.bj = trunc i32 %.0116 to i8
  store i8 %i.bj, ptr %i.bh, align 1
  %i.bk = load i64, ptr %i.f, align 8             ; 2 uses
  %i.bl = add i64 %i.bk, 9
  %i.bm = inttoptr i64 %i.bl to ptr
  %i.bn = load i8, ptr %i.bm, align 1
  %i.bo = zext i8 %i.bn to i32                    ; 2 uses
  %i.bp = shl nuw nsw i32 %i.bo, 5
  %i.bq = add i32 %.0116, 16
  %i.br = add i32 %i.bq, %i.bo
  %i.bs = add i32 %i.br, %i.bp
  %i.bt = sext i32 %i.bs to i64
  %i.bu = add i64 %i.bk, -1
  %i.bv = add i64 %i.bu, %i.bt
  %i.bw = inttoptr i64 %i.bv to ptr
  store i8 %i.bi, ptr %i.bw, align 1
  %i.bx = shl nsw i32 %.0116, 4
  %i.by = add nsw i32 %i.bx, 16
  %i.bz = sext i32 %i.y to i64                    ; 2 uses
  %i.ca = sext i32 %i.by to i64                   ; 2 uses
  %i.cb = load i64, ptr %1, align 8
  %i.cc = add nsw i64 %i.bz, -1
  %i.cd = add i64 %i.cc, %i.cb
  %i.ce = inttoptr i64 %i.cd to ptr
  %i.cf = load i64, ptr %i.ce, align 8            ; 5 uses
  %i.cg = load i64, ptr %i.f, align 8             ; 4 uses
  %i.ch = add nsw i64 %i.ca, -1
  %i.ci = add i64 %i.ch, %i.cg                    ; 3 uses
  %i.cj = inttoptr i64 %i.ci to ptr
  store atomic volatile i64 %i.cf, ptr %i.cj monotonic, align 8
  %i.ck = trunc i64 %i.cf to i1
  br i1 %i.ck, label %bb.f, label %_ZN2v88internal21SmallOrderedHashTableINS0_19SmallOrderedHashMapEE12SetDataEntryEiiNS0_6TaggedINS0_6ObjectEEE.exit

bb.f:                                             ; preds = %_ZN2v88internal6Object7GetHashENS0_6TaggedIS1_EE.exit
  %i.cl = and i64 %i.cg, -262144
  %i.cm = inttoptr i64 %i.cl to ptr
  %i.cn = load i64, ptr %i.cm, align 262144       ; 2 uses
  %i.co = and i64 %i.cn, 32
  %.not.i.i.i = icmp eq i64 %i.co, 0
  %i.cp = and i64 %i.cn, 25
  %.not37.i.i.i = icmp eq i64 %i.cp, 0
  br i1 %.not37.i.i.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.cq = and i64 %i.cf, -262144
  %i.cr = inttoptr i64 %i.cq to ptr
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.cr, align 262144
  %i.cs = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 25
  %.not38.i.i.i = icmp eq i64 %i.cs, 0
  br i1 %.not38.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.cg, i64 noundef %i.ci, i64 %i.cf) #13
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  br i1 %.not.i.i.i, label %_ZN2v88internal21SmallOrderedHashTableINS0_19SmallOrderedHashMapEE12SetDataEntryEiiNS0_6TaggedINS0_6ObjectEEE.exit, label %bb.j, !prof !8

bb.j:                                             ; preds = %bb.i
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.cg, i64 %i.ci, i64 %i.cf) #13
  br label %_ZN2v88internal21SmallOrderedHashTableINS0_19SmallOrderedHashMapEE12SetDataEntryEiiNS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal21SmallOrderedHashTableINS0_19SmallOrderedHashMapEE12SetDataEntryEiiNS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal6Object7GetHashENS0_6TaggedIS1_EE.exit, %bb.i, %bb.j
  %i.ct = load i64, ptr %1, align 8
  %i.cu = or disjoint i64 %i.bz, 7
end_hunk_1
