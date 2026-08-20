inline.NumInlined: 2446
inline.NumDeleted: 989
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN7rocksdb11clock_cache19AutoHyperClockTable8DoInsertERKNS0_20ClockHandleBasicDataEjbRNS1_11InsertStateE:bb.a

bb.be:                                            ; preds = %.split.us
  %i.gj = icmp slt i32 %.097196.us, %i.gi
  br i1 %i.gj, label %.thread171.us, label %bb.bf

.thread171.us:                                    ; preds = %bb.be
  %i.gk = add nuw nsw i32 %.097196.us, 1
  %i.gl = zext nneg i32 %.097196.us to i64
  %i.gm = shl nuw nsw i64 1, %i.gl                ; 2 uses
  %i.gn = add i64 %i.gm, %.0161195.us
  tail call void @_ZN7rocksdb11clock_cache19AutoHyperClockTable23CatchUpLengthInfoNoWaitEm(ptr noundef nonnull align 64 dereferenceable(208) %0, i64 noundef %i.gn)
  %i.go = load i64, ptr %i.d, align 8, !tbaa !12
  %i.gp = and i64 %i.go, %i.gm
  %i.gq = add i64 %i.gp, %.0161195.us
  br label %bb.bh

bb.bf:                                            ; preds = %bb.be, %.split.us
  %i.gr = and i32 %.097196.us, 63
  %i.gs = zext nneg i32 %i.gr to i64
  %i.gt = or disjoint i64 %i.gb, %i.gs            ; 2 uses
  %i.gu = and i64 %i.gg, 192
  %i.gv = icmp eq i64 %i.gu, 128
  br i1 %i.gv, label %bb.bg, label %_ZN7rocksdb15BitFieldsAtomicINS_11clock_cache19AutoHyperClockTable10HandleImpl13NextWithShiftEE7CasWeakERS4_S4_.exit.us, !prof !69

bb.bg:                                            ; preds = %bb.bf
  %i.gw = or disjoint i64 %i.gt, 128
  %i.gx = and i64 %i.gg, -193
  br label %_ZN7rocksdb15BitFieldsAtomicINS_11clock_cache19AutoHyperClockTable10HandleImpl13NextWithShiftEE7CasWeakERS4_S4_.exit.us

_ZN7rocksdb15BitFieldsAtomicINS_11clock_cache19AutoHyperClockTable10HandleImpl13NextWithShiftEE7CasWeakERS4_S4_.exit.us: ; preds = %bb.bg, %bb.bf
  %.sroa.0145.0.us = phi i64 [ %i.gw, %bb.bg ], [ %i.gt, %bb.bf ]
  %.sroa.0.0.us = phi i64 [ %i.gx, %bb.bg ], [ %i.gg, %bb.bf ]
  store atomic i64 %.sroa.0.0.us, ptr %i.gd release, align 8
  %i.gy = cmpxchg weak ptr %i.gf, i64 %i.gg, i64 %.sroa.0145.0.us acq_rel acquire, align 8
  %i.gz = extractvalue { i64, i1 } %i.gy, 1
  br i1 %i.gz, label %.critedge, label %bb.bh

bb.bh:                                            ; preds = %_ZN7rocksdb15BitFieldsAtomicINS_11clock_cache19AutoHyperClockTable10HandleImpl13NextWithShiftEE7CasWeakERS4_S4_.exit.us, %.thread171.us
  %.198177.us = phi i32 [ %i.gk, %.thread171.us ], [ %.097196.us, %_ZN7rocksdb15BitFieldsAtomicINS_11clock_cache19AutoHyperClockTable10HandleImpl13NextWithShiftEE7CasWeakERS4_S4_.exit.us ]
  %.1162176.us = phi i64 [ %i.gq, %.thread171.us ], [ %.0161195.us, %_ZN7rocksdb15BitFieldsAtomicINS_11clock_cache19AutoHyperClockTable10HandleImpl13NextWithShiftEE7CasWeakERS4_S4_.exit.us ]
  %i.ha = add nuw nsw i32 %.096197.us, 1          ; 2 uses
  %exitcond215 = icmp eq i32 %i.ha, 4096
  br i1 %exitcond215, label %.split200.us, label %.split.us, !prof !149, !llvm.loop !241

.split200.us:                                     ; preds = %bb.bl, %bb.bh
  tail call void @_ZSt9terminatev() #35
  unreachable

.split:                                           ; preds = %bb.bd, %bb.bl
  %.096197 = phi i32 [ %i.hz, %bb.bl ], [ 0, %bb.bd ]
  %.097196 = phi i32 [ %.198177, %bb.bl ], [ %i.m, %bb.bd ] ; 6 uses
  %.0161195 = phi i64 [ %.1162176, %bb.bl ], [ %i.o, %bb.bd ] ; 4 uses
  %i.hb = getelementptr inbounds nuw [64 x i8], ptr %i.q, i64 %.0161195
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 48 ; 2 uses
  %i.hd = load atomic i64, ptr %i.hc acquire, align 8 ; 5 uses
  %i.he = trunc i64 %i.hd to i32
  %i.hf = and i32 %i.he, 63                       ; 2 uses
  %.not123 = icmp eq i32 %.097196, %i.hf
  br i1 %.not123, label %bb.bj, label %bb.bi, !prof !19

bb.bi:                                            ; preds = %.split
  %i.hg = icmp slt i32 %.097196, %i.hf
  br i1 %i.hg, label %.thread171, label %bb.bj

.thread171:                                       ; preds = %bb.bi
  %i.hh = add nuw nsw i32 %.097196, 1
  %i.hi = zext nneg i32 %.097196 to i64
  %i.hj = shl nuw nsw i64 1, %i.hi                ; 2 uses
  %i.hk = add i64 %i.hj, %.0161195
  tail call void @_ZN7rocksdb11clock_cache19AutoHyperClockTable23CatchUpLengthInfoNoWaitEm(ptr noundef nonnull align 64 dereferenceable(208) %0, i64 noundef %i.hk)
  %i.hl = load i64, ptr %i.d, align 8, !tbaa !12
  %i.hm = and i64 %i.hl, %i.hj
  %i.hn = add i64 %i.hm, %.0161195
  br label %bb.bl

bb.bj:                                            ; preds = %bb.bi, %.split
  %i.ho = and i32 %.097196, 63
  %i.hp = zext nneg i32 %i.ho to i64
  %i.hq = or disjoint i64 %i.gb, %i.hp            ; 2 uses
  %i.hr = and i64 %i.hd, 192
  %i.hs = icmp eq i64 %i.hr, 128
  br i1 %i.hs, label %bb.bk, label %_ZN7rocksdb15BitFieldsAtomicINS_11clock_cache19AutoHyperClockTable10HandleImpl13NextWithShiftEE7CasWeakERS4_S4_.exit, !prof !69

bb.bk:                                            ; preds = %bb.bj
  %i.ht = or disjoint i64 %i.hq, 128
  %i.hu = and i64 %i.hd, -193
  br label %_ZN7rocksdb15BitFieldsAtomicINS_11clock_cache19AutoHyperClockTable10HandleImpl13NextWithShiftEE7CasWeakERS4_S4_.exit

_ZN7rocksdb15BitFieldsAtomicINS_11clock_cache19AutoHyperClockTable10HandleImpl13NextWithShiftEE7CasWeakERS4_S4_.exit: ; preds = %bb.bk, %bb.bj
  %.sroa.0145.0 = phi i64 [ %i.ht, %bb.bk ], [ %i.hq, %bb.bj ]
  %.sroa.0.0 = phi i64 [ %i.hu, %bb.bk ], [ %i.hd, %bb.bj ]
  store atomic i64 %.sroa.0.0, ptr %i.gd release, align 8
  %i.hv = cmpxchg weak ptr %i.hc, i64 %i.hd, i64 %.sroa.0145.0 acq_rel acquire, align 8
  %i.hw = extractvalue { i64, i1 } %i.hv, 1
  br i1 %i.hw, label %.thread165, label %bb.bl

.thread165:                                       ; preds = %_ZN7rocksdb15BitFieldsAtomicINS_11clock_cache19AutoHyperClockTable10HandleImpl13NextWithShiftEE7CasWeakERS4_S4_.exit
  %i.hx = getelementptr inbounds nuw i8, ptr %i.gc, i64 40
  %i.hy = atomicrmw sub ptr %i.hx, i64 1 acq_rel, align 8 ; 0 uses
  br label %.critedge

bb.bl:                                            ; preds = %_ZN7rocksdb15BitFieldsAtomicINS_11clock_cache19AutoHyperClockTable10HandleImpl13NextWithShiftEE7CasWeakERS4_S4_.exit, %.thread171
  %.198177 = phi i32 [ %i.hh, %.thread171 ], [ %.097196, %_ZN7rocksdb15BitFieldsAtomicINS_11clock_cache19AutoHyperClockTable10HandleImpl13NextWithShiftEE7CasWeakERS4_S4_.exit ]
  %.1162176 = phi i64 [ %i.hn, %.thread171 ], [ %.0161195, %_ZN7rocksdb15BitFieldsAtomicINS_11clock_cache19AutoHyperClockTable10HandleImpl13NextWithShiftEE7CasWeakERS4_S4_.exit ]
  %i.hz = add nuw nsw i32 %.096197, 1             ; 2 uses
  %exitcond = icmp eq i32 %i.hz, 4096
  br i1 %exitcond, label %.split200.us, label %.split, !prof !149, !llvm.loop !241

.critedge:                                        ; preds = %bb.au, %_ZN7rocksdb11clock_cache12_GLOBAL__N_19TryInsertERKNS0_20ClockHandleBasicDataERNS0_11ClockHandleEjbPb.exit143, %_ZN7rocksdb15BitFieldsAtomicINS_11clock_cache19AutoHyperClockTable10HandleImpl13NextWithShiftEE7CasWeakERS4_S4_.exit.us, %_ZN7rocksdb11clock_cache12_GLOBAL__N_19TryInsertERKNS0_20ClockHandleBasicDataERNS0_11ClockHandleEjbPb.exit135, %_ZN7rocksdb11clock_cache12_GLOBAL__N_19TryInsertERKNS0_20ClockHandleBasicDataERNS0_11ClockHandleEjbPb.exit135.1, %_ZN7rocksdb11clock_cache12_GLOBAL__N_19TryInsertERKNS0_20ClockHandleBasicDataERNS0_11ClockHandleEjbPb.exit135.2, %_ZN7rocksdb11clock_cache12_GLOBAL__N_19TryInsertERKNS0_20ClockHandleBasicDataERNS0_11ClockHandleEjbPb.exit135.3, %.thread165, %_ZN7rocksdb11clock_cache12_GLOBAL__N_19TryInsertERKNS0_20ClockHandleBasicDataERNS0_11ClockHandleEjbPb.exit
  %.7 = phi ptr [ %i.gc, %.thread165 ], [ null, %_ZN7rocksdb11clock_cache12_GLOBAL__N_19TryInsertERKNS0_20ClockHandleBasicDataERNS0_11ClockHandleEjbPb.exit ], [ null, %_ZN7rocksdb11clock_cache12_GLOBAL__N_19TryInsertERKNS0_20ClockHandleBasicDataERNS0_11ClockHandleEjbPb.exit135 ], [ null, %_ZN7rocksdb11clock_cache12_GLOBAL__N_19TryInsertERKNS0_20ClockHandleBasicDataERNS0_11ClockHandleEjbPb.exit135.1 ], [ %i.gc, %_ZN7rocksdb15BitFieldsAtomicINS_11clock_cache19AutoHyperClockTable10HandleImpl13NextWithShiftEE7CasWeakERS4_S4_.exit.us ], [ null, %_ZN7rocksdb11clock_cache12_GLOBAL__N_19TryInsertERKNS0_20ClockHandleBasicDataERNS0_11ClockHandleEjbPb.exit135.3 ], [ null, %_ZN7rocksdb11clock_cache12_GLOBAL__N_19TryInsertERKNS0_20ClockHandleBasicDataERNS0_11ClockHandleEjbPb.exit135.2 ], [ null, %_ZN7rocksdb11clock_cache12_GLOBAL__N_19TryInsertERKNS0_20ClockHandleBasicDataERNS0_11ClockHandleEjbPb.exit143 ], [ null, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  ret ptr %.7
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define internal fastcc noundef zeroext i1 @_ZN7rocksdb11clock_cache12_GLOBAL__N_19TryInsertERKNS0_20ClockHandleBasicDataERNS0_11ClockHandleEjbPb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %1, i32 noundef %2, i1 noundef zeroext %3, ptr nofree noundef nonnull writeonly captures(none) %4) unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 7 uses
  %i.b = atomicrmw or ptr %i.a, i64 2305843009213693952 acq_rel, align 8 ; 2 uses
  %or.cond.not.not.i = icmp ugt i64 %i.b, -2305843009213693953
  br i1 %or.cond.not.not.i, label %bb.b, label %_ZN7rocksdb11clock_cache12_GLOBAL__N_115BeginSlotInsertERKNS0_20ClockHandleBasicDataERNS0_11ClockHandleEjPb.exit

bb.b:                                             ; preds = %bb.a
  %i.c = zext i32 %2 to i64                       ; 4 uses
  %i.d = atomicrmw add ptr %i.a, i64 %i.c acq_rel, align 8 ; 2 uses
  %spec.select.i13.i = icmp ugt i64 %i.d, -4611686018427387905
  br i1 %spec.select.i13.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i128, ptr %i.e, align 8
  %i.h = load i128, ptr %i.f, align 8
  %i.i = icmp ne i128 %i.g, %i.h
  %i.j = zext i1 %i.i to i32
  %.not9.i.i.i.i.i.i = icmp eq i32 %i.j, 0
  br i1 %.not9.i.i.i.i.i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = shl nuw nsw i64 %i.c, 30
  %i.l = atomicrmw add ptr %i.a, i64 %i.k acq_rel, align 8
  %i.m = and i64 %i.l, 1152921500311879680
  %i.n = icmp samesign ugt i64 %i.m, 576460755524648960
  br i1 %i.n, label %bb.e, label %_ZN7rocksdb11clock_cache12_GLOBAL__N_119CorrectNearOverflowENS0_11ClockHandle8SlotMetaERNS_15BitFieldsAtomicIS3_EE.exit.i, !prof !69

bb.e:                                             ; preds = %bb.d
  %i.o = atomicrmw and ptr %i.a, i64 -576460752840294401 monotonic, align 8 ; 0 uses
  br label %_ZN7rocksdb11clock_cache12_GLOBAL__N_119CorrectNearOverflowENS0_11ClockHandle8SlotMetaERNS_15BitFieldsAtomicIS3_EE.exit.i

_ZN7rocksdb11clock_cache12_GLOBAL__N_119CorrectNearOverflowENS0_11ClockHandle8SlotMetaERNS_15BitFieldsAtomicIS3_EE.exit.i: ; preds = %bb.e, %bb.d
  store i8 1, ptr %4, align 1, !tbaa !166
  br label %_ZN7rocksdb11clock_cache12_GLOBAL__N_115BeginSlotInsertERKNS0_20ClockHandleBasicDataERNS0_11ClockHandleEjPb.exit

bb.f:                                             ; preds = %bb.c
  %i.p = atomicrmw sub ptr %i.a, i64 %i.c acq_rel, align 8 ; 0 uses
  br label %_ZN7rocksdb11clock_cache12_GLOBAL__N_115BeginSlotInsertERKNS0_20ClockHandleBasicDataERNS0_11ClockHandleEjPb.exit

bb.g:                                             ; preds = %bb.b
  %i.q = icmp sgt i64 %i.d, 4611686018427387903
  br i1 %i.q, label %bb.h, label %_ZN7rocksdb11clock_cache12_GLOBAL__N_115BeginSlotInsertERKNS0_20ClockHandleBasicDataERNS0_11ClockHandleEjPb.exit, !prof !69

bb.h:                                             ; preds = %bb.g
  %i.r = atomicrmw sub ptr %i.a, i64 %i.c acq_rel, align 8 ; 0 uses
  br label %_ZN7rocksdb11clock_cache12_GLOBAL__N_115BeginSlotInsertERKNS0_20ClockHandleBasicDataERNS0_11ClockHandleEjPb.exit

_ZN7rocksdb11clock_cache12_GLOBAL__N_115BeginSlotInsertERKNS0_20ClockHandleBasicDataERNS0_11ClockHandleEjPb.exit: ; preds = %bb.a, %_ZN7rocksdb11clock_cache12_GLOBAL__N_119CorrectNearOverflowENS0_11ClockHandle8SlotMetaERNS_15BitFieldsAtomicIS3_EE.exit.i, %bb.f, %bb.g, %bb.h
  %i.s = and i64 %i.b, 2305843009213693952
  %.not.i.i = icmp eq i64 %i.s, 0                 ; 2 uses
  br i1 %.not.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN7rocksdb11clock_cache12_GLOBAL__N_115BeginSlotInsertERKNS0_20ClockHandleBasicDataERNS0_11ClockHandleEjPb.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull readonly align 8 dereferenceable(40) %0, i64 40, i1 false)
  %.neg.i = sext i1 %3 to i32
  %i.t = add i32 %2, %.neg.i
  %i.u = and i32 %2, 1073741823
  %i.v = zext nneg i32 %i.u to i64
  %i.w = and i32 %i.t, 1073741823
  %i.x = zext nneg i32 %i.w to i64
  %i.y = shl nuw nsw i64 %i.x, 30
  %i.z = or disjoint i64 %i.y, %i.v
  %i.aa = or disjoint i64 %i.z, -2305843009213693952
  store atomic i64 %i.aa, ptr %i.a release, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN7rocksdb11clock_cache12_GLOBAL__N_115BeginSlotInsertERKNS0_20ClockHandleBasicDataERNS0_11ClockHandleEjPb.exit
  ret i1 %.not.i.i
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb11clock_cache19AutoHyperClockTable6RemoveEPNS1_10HandleImplE(ptr noundef nonnull align 64 dereferenceable(208) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_ZN7rocksdb11clock_cache19AutoHyperClockTable9PurgeImplIKSt5arrayImLm2EEEEvPT_mPNS0_14BaseClockTable12EvictionDataE(ptr noundef nonnull align 64 dereferenceable(208) %0, ptr noundef nonnull %i.a, i64 noundef -1, ptr noundef null)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb11clock_cache19AutoHyperClockTable9PurgeImplIKSt5arrayImLm2EEEEvPT_mPNS0_14BaseClockTable12EvictionDataE(ptr noundef nonnull align 64 dereferenceable(208) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load atomic i64, ptr %i.a acquire, align 16 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !12   ; 2 uses
  %i.e = trunc i64 %i.b to i32
  %i.f = and i32 %i.e, 255
  %i.g = lshr i64 %i.b, 8
  %i.h = and i64 %i.b, 255
  %i.i = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.d, i64 range(i64 -2147483648, 2147483648) %i.h)
  %i.j = icmp ult i64 %i.i, %i.g                  ; 2 uses
  %i.k = zext i1 %i.j to i32
  %i.l = add nuw nsw i32 %i.f, %i.k               ; 2 uses
  %i.m = zext nneg i32 %i.l to i64
  %i.n = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.d, i64 range(i64 -2147483648, 2147483648) %i.m)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 32, !tbaa !144 ; 2 uses
  %i.q = getelementptr inbounds nuw [64 x i8], ptr %i.p, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 48 ; 4 uses
  %i.t = atomicrmw or ptr %i.s, i64 128 acq_rel, align 8 ; 2 uses
  %i.u = and i64 %i.t, 192
  %i.v = icmp eq i64 %i.u, 128
  br i1 %i.v, label %.lr.ph.i.i, label %_ZN7rocksdb11clock_cache19AutoHyperClockTable16ChainRewriteLockC2EPNS1_10HandleImplERNS_13RelaxedAtomicImEE.exit

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %i.w = atomicrmw add ptr %i.r, i64 1 monotonic, align 8 ; 0 uses
  %i.x = tail call noundef i32 @sched_yield() #31 ; 0 uses
  %i.y = atomicrmw or ptr %i.s, i64 128 acq_rel, align 8 ; 2 uses
  %i.z = and i64 %i.y, 192
  %i.aa = icmp eq i64 %i.z, 128
  br i1 %i.aa, label %.lr.ph.i.i, label %_ZN7rocksdb11clock_cache19AutoHyperClockTable16ChainRewriteLockC2EPNS1_10HandleImplERNS_13RelaxedAtomicImEE.exit

_ZN7rocksdb11clock_cache19AutoHyperClockTable16ChainRewriteLockC2EPNS1_10HandleImplERNS_13RelaxedAtomicImEE.exit: ; preds = %.lr.ph.i.i, %bb.a
  %.sroa.13.3.in = phi i64 [ %i.t, %bb.a ], [ %i.y, %.lr.ph.i.i ] ; 3 uses
  %i.ab = trunc i64 %.sroa.13.3.in to i32
  %i.ac = and i32 %i.ab, 63
  %i.ad = icmp samesign ult i32 %i.l, %i.ac
  br i1 %i.ad, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZN7rocksdb11clock_cache19AutoHyperClockTable16ChainRewriteLockC2EPNS1_10HandleImplERNS_13RelaxedAtomicImEE.exit
  %4 = zext i1 %i.j to i64
  %5 = and i64 %i.b, 255
  %6 = add nuw nsw i64 %5, %4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN7rocksdb11clock_cache19AutoHyperClockTable16ChainRewriteLock5ResetEPNS1_10HandleImplERNS_13RelaxedAtomicImEE.exit
  %indvars.iv = phi i64 [ %6, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN7rocksdb11clock_cache19AutoHyperClockTable16ChainRewriteLock5ResetEPNS1_10HandleImplERNS_13RelaxedAtomicImEE.exit ]
  %.sroa.022.055 = phi ptr [ %i.s, %.lr.ph.preheader ], [ %i.aj, %_ZN7rocksdb11clock_cache19AutoHyperClockTable16ChainRewriteLock5ResetEPNS1_10HandleImplERNS_13RelaxedAtomicImEE.exit ]
  %.sroa.13.0.in54 = phi i64 [ %.sroa.13.3.in, %.lr.ph.preheader ], [ %.sroa.13.1.in, %_ZN7rocksdb11clock_cache19AutoHyperClockTable16ChainRewriteLock5ResetEPNS1_10HandleImplERNS_13RelaxedAtomicImEE.exit ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ae = load i64, ptr %i.c, align 8, !tbaa !12
  %i.af = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.ae, i64 range(i64 -2147483648, 2147483648) %indvars.iv.next)
  %i.ag = getelementptr inbounds nuw [64 x i8], ptr %i.p, i64 %i.af
  %i.ah = and i64 %.sroa.13.0.in54, 64
  %.not.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i, label %bb.b, label %_ZN7rocksdb11clock_cache19AutoHyperClockTable16ChainRewriteLockD2Ev.exit.i

bb.b:                                             ; preds = %.lr.ph
  %i.ai = atomicrmw and ptr %.sroa.022.055, i64 -129 acq_rel, align 8 ; 0 uses
  br label %_ZN7rocksdb11clock_cache19AutoHyperClockTable16ChainRewriteLockD2Ev.exit.i

_ZN7rocksdb11clock_cache19AutoHyperClockTable16ChainRewriteLockD2Ev.exit.i: ; preds = %bb.b, %.lr.ph
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 48 ; 4 uses
  %i.ak = atomicrmw or ptr %i.aj, i64 128 acq_rel, align 8 ; 2 uses
  %i.al = and i64 %i.ak, 192
  %i.am = icmp eq i64 %i.al, 128
  br i1 %i.am, label %.lr.ph.i.i.i, label %_ZN7rocksdb11clock_cache19AutoHyperClockTable16ChainRewriteLock5ResetEPNS1_10HandleImplERNS_13RelaxedAtomicImEE.exit

.lr.ph.i.i.i:                                     ; preds = %_ZN7rocksdb11clock_cache19AutoHyperClockTable16ChainRewriteLockD2Ev.exit.i, %.lr.ph.i.i.i
  %i.an = atomicrmw add ptr %i.r, i64 1 monotonic, align 8 ; 0 uses
  %i.ao = tail call noundef i32 @sched_yield() #31 ; 0 uses
  %i.ap = atomicrmw or ptr %i.aj, i64 128 acq_rel, align 8 ; 2 uses
  %i.aq = and i64 %i.ap, 192
  %i.ar = icmp eq i64 %i.aq, 128
  br i1 %i.ar, label %.lr.ph.i.i.i, label %_ZN7rocksdb11clock_cache19AutoHyperClockTable16ChainRewriteLock5ResetEPNS1_10HandleImplERNS_13RelaxedAtomicImEE.exit

_ZN7rocksdb11clock_cache19AutoHyperClockTable16ChainRewriteLock5ResetEPNS1_10HandleImplERNS_13RelaxedAtomicImEE.exit: ; preds = %.lr.ph.i.i.i, %_ZN7rocksdb11clock_cache19AutoHyperClockTable16ChainRewriteLockD2Ev.exit.i
  %.sroa.13.1.in = phi i64 [ %i.ak, %_ZN7rocksdb11clock_cache19AutoHyperClockTable16ChainRewriteLockD2Ev.exit.i ], [ %i.ap, %.lr.ph.i.i.i ] ; 3 uses
  %i.as = and i64 %.sroa.13.1.in, 63
  %i.at = icmp samesign ult i64 %indvars.iv.next, %i.as
  br i1 %i.at, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN7rocksdb11clock_cache19AutoHyperClockTable16ChainRewriteLock5ResetEPNS1_10HandleImplERNS_13RelaxedAtomicImEE.exit, %_ZN7rocksdb11clock_cache19AutoHyperClockTable16ChainRewriteLockC2EPNS1_10HandleImplERNS_13RelaxedAtomicImEE.exit
  %.sroa.13.0.in.lcssa = phi i64 [ %.sroa.13.3.in, %_ZN7rocksdb11clock_cache19AutoHyperClockTable16ChainRewriteLockC2EPNS1_10HandleImplERNS_13RelaxedAtomicImEE.exit ], [ %.sroa.13.1.in, %_ZN7rocksdb11clock_cache19AutoHyperClockTable16ChainRewriteLock5ResetEPNS1_10HandleImplERNS_13RelaxedAtomicImEE.exit ] ; 3 uses
  %.sroa.022.0.lcssa = phi ptr [ %i.s, %_ZN7rocksdb11clock_cache19AutoHyperClockTable16ChainRewriteLockC2EPNS1_10HandleImplERNS_13RelaxedAtomicImEE.exit ], [ %i.aj, %_ZN7rocksdb11clock_cache19AutoHyperClockTable16ChainRewriteLock5ResetEPNS1_10HandleImplERNS_13RelaxedAtomicImEE.exit ] ; 4 uses
  %.sroa.13.0.lcssa = or i64 %.sroa.13.0.in.lcssa, 128 ; 3 uses
  %i.au = and i64 %.sroa.13.0.in.lcssa, 64
  %.not = icmp eq i64 %i.au, 0
  br i1 %.not, label %bb.c, label %_ZN7rocksdb11clock_cache19AutoHyperClockTable15PurgeImplLockedIvEEvPT_RNS1_16ChainRewriteLockEmPNS0_14BaseClockTable12EvictionDataE.exit

bb.c:                                             ; preds = %._crit_edge
  %i.av = load ptr, ptr %i.o, align 32, !tbaa !144 ; 3 uses
  %i.aw = lshr i64 %.sroa.13.0.in.lcssa, 8
  %i.ax = getelementptr inbounds nuw [64 x i8], ptr %i.av, i64 %i.aw
  br label %bb.e

bb.d:                                             ; preds = %bb.m
  tail call void @_ZSt9terminatev() #35
  unreachable

bb.e:                                             ; preds = %bb.m, %bb.c
  %.sroa.13.5 = phi i64 [ %.sroa.13.0.lcssa, %bb.c ], [ %.sroa.13.8, %bb.m ] ; 5 uses
  %.02665.i = phi i64 [ 0, %bb.c ], [ %i.bz, %bb.m ]
  %.02764.i = phi i1 [ false, %bb.c ], [ %.2.ph.i, %bb.m ]
  %.02863.i = phi ptr [ null, %bb.c ], [ %.230.ph.i, %bb.m ] ; 3 uses
  %.03162.i = phi ptr [ %i.ax, %bb.c ], [ %.233.ph.i, %bb.m ] ; 4 uses
  %.sroa.036.061.i = phi i64 [ %.sroa.13.0.lcssa, %bb.c ], [ %.sroa.036.1.ph.i, %bb.m ] ; 2 uses
  %.not.i = icmp eq ptr %.03162.i, null           ; 2 uses
  br i1 %.not.i, label %.critedge.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %.03162.i, i64 40
  %i.az = load atomic i64, ptr %i.ay acquire, align 8
  %i.ba = and i64 %i.az, 4611686018427387904
  %.not59.i = icmp eq i64 %i.ba, 0
  br i1 %.not59.i, label %.thread.i, label %.critedge.i

.critedge.i:                                      ; preds = %bb.f, %bb.e
  br i1 %.02764.i, label %bb.g, label %_ZN7rocksdb11clock_cache19AutoHyperClockTable16ChainRewriteLock9CasUpdateENS1_10HandleImpl13NextWithShiftERNS_13RelaxedAtomicImEE.exit.thread43.i

bb.g:                                             ; preds = %.critedge.i
  %.not34.i = icmp eq ptr %.02863.i, null
  br i1 %.not34.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %.02863.i, i64 56
  store atomic i64 %.sroa.036.061.i, ptr %i.bb release, align 8
  br label %_ZN7rocksdb11clock_cache19AutoHyperClockTable16ChainRewriteLock9CasUpdateENS1_10HandleImpl13NextWithShiftERNS_13RelaxedAtomicImEE.exit.thread43.i

bb.i:                                             ; preds = %bb.g
  %i.bc = or i64 %.sroa.036.061.i, 128            ; 2 uses
  %i.bd = cmpxchg ptr %.sroa.022.0.lcssa, i64 %.sroa.13.5, i64 %i.bc acq_rel acquire, align 8 ; 2 uses
  %i.be = extractvalue { i64, i1 } %i.bd, 1
  br i1 %i.be, label %_ZN7rocksdb11clock_cache19AutoHyperClockTable16ChainRewriteLock9CasUpdateENS1_10HandleImpl13NextWithShiftERNS_13RelaxedAtomicImEE.exit.thread43.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bf = extractvalue { i64, i1 } %i.bd, 0       ; 2 uses
  %i.bg = and i64 %.sroa.13.5, 64
  %.not.i.i17 = icmp ne i64 %i.bg, 0
  %i.bh = and i64 %i.bf, 64
  %.not9.i.i = icmp eq i64 %i.bh, 0
  %or.cond.i.i = select i1 %.not.i.i17, i1 %.not9.i.i, i1 false
  br i1 %or.cond.i.i, label %bb.k, label %_ZN7rocksdb11clock_cache19AutoHyperClockTable16ChainRewriteLock9CasUpdateENS1_10HandleImpl13NextWithShiftERNS_13RelaxedAtomicImEE.exit.thread.i

bb.k:                                             ; preds = %bb.j
  %i.bi = atomicrmw or ptr %.sroa.022.0.lcssa, i64 128 acq_rel, align 8 ; 2 uses
  %i.bj = or i64 %i.bi, 128
  %i.bk = and i64 %i.bi, 192
  %i.bl = icmp eq i64 %i.bk, 128
  br i1 %i.bl, label %.lr.ph.i.i.i18, label %_ZN7rocksdb11clock_cache19AutoHyperClockTable16ChainRewriteLock9CasUpdateENS1_10HandleImpl13NextWithShiftERNS_13RelaxedAtomicImEE.exit.thread.i

.lr.ph.i.i.i18:                                   ; preds = %bb.k, %.lr.ph.i.i.i18
  %i.bm = atomicrmw add ptr %i.r, i64 1 monotonic, align 8 ; 0 uses
  %i.bn = tail call noundef i32 @sched_yield() #31 ; 0 uses
  %i.bo = atomicrmw or ptr %.sroa.022.0.lcssa, i64 128 acq_rel, align 8 ; 2 uses
  %i.bp = and i64 %i.bo, 192
  %i.bq = icmp eq i64 %i.bp, 128
  br i1 %i.bq, label %.lr.ph.i.i.i18, label %_ZN7rocksdb11clock_cache19AutoHyperClockTable16ChainRewriteLock9CasUpdateENS1_10HandleImpl13NextWithShiftERNS_13RelaxedAtomicImEE.exit.thread.i.loopexit

_ZN7rocksdb11clock_cache19AutoHyperClockTable16ChainRewriteLock9CasUpdateENS1_10HandleImpl13NextWithShiftERNS_13RelaxedAtomicImEE.exit.thread.i.loopexit: ; preds = %.lr.ph.i.i.i18
  %i.br = or i64 %i.bo, 128
  br label %_ZN7rocksdb11clock_cache19AutoHyperClockTable16ChainRewriteLock9CasUpdateENS1_10HandleImpl13NextWithShiftERNS_13RelaxedAtomicImEE.exit.thread.i

_ZN7rocksdb11clock_cache19AutoHyperClockTable16ChainRewriteLock9CasUpdateENS1_10HandleImpl13NextWithShiftERNS_13RelaxedAtomicImEE.exit.thread.i: ; preds = %_ZN7rocksdb11clock_cache19AutoHyperClockTable16ChainRewriteLock9CasUpdateENS1_10HandleImpl13NextWithShiftERNS_13RelaxedAtomicImEE.exit.thread.i.loopexit, %bb.j, %bb.k
  %.sroa.13.9 = phi i64 [ %i.bf, %bb.j ], [ %i.bj, %bb.k ], [ %i.br, %_ZN7rocksdb11clock_cache19AutoHyperClockTable16ChainRewriteLock9CasUpdateENS1_10HandleImpl13NextWithShiftERNS_13RelaxedAtomicImEE.exit.thread.i.loopexit ] ; 3 uses
  %i.bs = lshr i64 %.sroa.13.9, 8
  %i.bt = getelementptr inbounds nuw [64 x i8], ptr %i.av, i64 %i.bs
  br label %bb.m

_ZN7rocksdb11clock_cache19AutoHyperClockTable16ChainRewriteLock9CasUpdateENS1_10HandleImpl13NextWithShiftERNS_13RelaxedAtomicImEE.exit.thread43.i: ; preds = %bb.i, %bb.h, %.critedge.i
  %.sroa.13.6 = phi i64 [ %.sroa.13.5, %.critedge.i ], [ %.sroa.13.5, %bb.h ], [ %i.bc, %bb.i ] ; 2 uses
  br i1 %.not.i, label %_ZN7rocksdb11clock_cache19AutoHyperClockTable15PurgeImplLockedIvEEvPT_RNS1_16ChainRewriteLockEmPNS0_14BaseClockTable12EvictionDataE.exit, label %.thread.i

.thread.i:                                        ; preds = %_ZN7rocksdb11clock_cache19AutoHyperClockTable16ChainRewriteLock9CasUpdateENS1_10HandleImpl13NextWithShiftERNS_13RelaxedAtomicImEE.exit.thread43.i, %bb.f
  %.sroa.13.7 = phi i64 [ %.sroa.13.6, %_ZN7rocksdb11clock_cache19AutoHyperClockTable16ChainRewriteLock9CasUpdateENS1_10HandleImpl13NextWithShiftERNS_13RelaxedAtomicImEE.exit.thread43.i ], [ %.sroa.13.5, %bb.f ] ; 2 uses
  %.148.i = phi i1 [ false, %_ZN7rocksdb11clock_cache19AutoHyperClockTable16ChainRewriteLock9CasUpdateENS1_10HandleImpl13NextWithShiftERNS_13RelaxedAtomicImEE.exit.thread43.i ], [ true, %bb.f ] ; 2 uses
  %.12947.i = phi ptr [ %.03162.i, %_ZN7rocksdb11clock_cache19AutoHyperClockTable16ChainRewriteLock9CasUpdateENS1_10HandleImpl13NextWithShiftERNS_13RelaxedAtomicImEE.exit.thread43.i ], [ %.02863.i, %bb.f ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.03162.i, i64 56
  %i.bv = load atomic i64, ptr %i.bu acquire, align 8 ; 4 uses
  %i.bw = and i64 %i.bv, 64
  %.not60.i = icmp eq i64 %i.bw, 0
  br i1 %.not60.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.thread.i
  %i.bx = lshr i64 %i.bv, 8
  %i.by = getelementptr inbounds nuw [64 x i8], ptr %i.av, i64 %i.bx
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.thread.i, %_ZN7rocksdb11clock_cache19AutoHyperClockTable16ChainRewriteLock9CasUpdateENS1_10HandleImpl13NextWithShiftERNS_13RelaxedAtomicImEE.exit.thread.i
  %.sroa.13.8 = phi i64 [ %.sroa.13.7, %bb.l ], [ %.sroa.13.7, %.thread.i ], [ %.sroa.13.9, %_ZN7rocksdb11clock_cache19AutoHyperClockTable16ChainRewriteLock9CasUpdateENS1_10HandleImpl13NextWithShiftERNS_13RelaxedAtomicImEE.exit.thread.i ]
  %.sroa.036.1.ph.i = phi i64 [ %i.bv, %bb.l ], [ %i.bv, %.thread.i ], [ %.sroa.13.9, %_ZN7rocksdb11clock_cache19AutoHyperClockTable16ChainRewriteLock9CasUpdateENS1_10HandleImpl13NextWithShiftERNS_13RelaxedAtomicImEE.exit.thread.i ]
  %.233.ph.i = phi ptr [ %i.by, %bb.l ], [ null, %.thread.i ], [ %i.bt, %_ZN7rocksdb11clock_cache19AutoHyperClockTable16ChainRewriteLock9CasUpdateENS1_10HandleImpl13NextWithShiftERNS_13RelaxedAtomicImEE.exit.thread.i ]
  %.230.ph.i = phi ptr [ %.12947.i, %bb.l ], [ %.12947.i, %.thread.i ], [ null, %_ZN7rocksdb11clock_cache19AutoHyperClockTable16ChainRewriteLock9CasUpdateENS1_10HandleImpl13NextWithShiftERNS_13RelaxedAtomicImEE.exit.thread.i ]
  %.2.ph.i = phi i1 [ %.148.i, %bb.l ], [ %.148.i, %.thread.i ], [ false, %_ZN7rocksdb11clock_cache19AutoHyperClockTable16ChainRewriteLock9CasUpdateENS1_10HandleImpl13NextWithShiftERNS_13RelaxedAtomicImEE.exit.thread.i ]
  %i.bz = add nuw nsw i64 %.02665.i, 1            ; 2 uses
  %exitcond.i = icmp eq i64 %i.bz, 4096
  br i1 %exitcond.i, label %bb.d, label %bb.e, !prof !149, !llvm.loop !242

_ZN7rocksdb11clock_cache19AutoHyperClockTable15PurgeImplLockedIvEEvPT_RNS1_16ChainRewriteLockEmPNS0_14BaseClockTable12EvictionDataE.exit: ; preds = %_ZN7rocksdb11clock_cache19AutoHyperClockTable16ChainRewriteLock9CasUpdateENS1_10HandleImpl13NextWithShiftERNS_13RelaxedAtomicImEE.exit.thread43.i, %._crit_edge
  %.sroa.13.2 = phi i64 [ %.sroa.13.0.lcssa, %._crit_edge ], [ %.sroa.13.6, %_ZN7rocksdb11clock_cache19AutoHyperClockTable16ChainRewriteLock9CasUpdateENS1_10HandleImpl13NextWithShiftERNS_13RelaxedAtomicImEE.exit.thread43.i ]
  %i.ca = and i64 %.sroa.13.2, 64
  %.not.i19 = icmp eq i64 %i.ca, 0
  br i1 %.not.i19, label %bb.n, label %_ZN7rocksdb11clock_cache19AutoHyperClockTable16ChainRewriteLockD2Ev.exit

bb.n:                                             ; preds = %_ZN7rocksdb11clock_cache19AutoHyperClockTable15PurgeImplLockedIvEEvPT_RNS1_16ChainRewriteLockEmPNS0_14BaseClockTable12EvictionDataE.exit
  %i.cb = atomicrmw and ptr %.sroa.022.0.lcssa, i64 -129 acq_rel, align 8 ; 0 uses
  br label %_ZN7rocksdb11clock_cache19AutoHyperClockTable16ChainRewriteLockD2Ev.exit

_ZN7rocksdb11clock_cache19AutoHyperClockTable16ChainRewriteLockD2Ev.exit: ; preds = %_ZN7rocksdb11clock_cache19AutoHyperClockTable15PurgeImplLockedIvEEvPT_RNS1_16ChainRewriteLockEmPNS0_14BaseClockTable12EvictionDataE.exit, %bb.n
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7rocksdb11clock_cache19AutoHyperClockTable14TryEraseHandleEPNS1_10HandleImplEbb(ptr noundef nonnull align 64 dereferenceable(208) %0, ptr noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.b = load atomic i64, ptr %i.a acquire, align 8 ; 3 uses
  %i.c = zext i1 %2 to i32                        ; 2 uses
  %i.d = trunc i64 %i.b to i32
  %i.e = and i32 %i.d, 1073741823
  %i.f = lshr i64 %i.b, 30
  %i.g = trunc i64 %i.f to i32
  %i.h = and i32 %i.g, 1073741823
  %i.i = sub nsw i32 %i.e, %i.h
  %.not21 = icmp eq i32 %i.i, %i.c
  br i1 %.not21, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN7rocksdb15BitFieldsAtomicINS_11clock_cache11ClockHandle8SlotMetaEE7CasWeakERS3_S3_.exit, %bb.a
  br i1 %3, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %._crit_edge
  %i.j = atomicrmw and ptr %i.a, i64 9223372036854775807 acq_rel, align 8 ; 0 uses
  br label %.loopexit

.lr.ph:                                           ; preds = %bb.a, %_ZN7rocksdb15BitFieldsAtomicINS_11clock_cache11ClockHandle8SlotMetaEE7CasWeakERS3_S3_.exit
  %.sroa.016.022 = phi i64 [ %i.n, %_ZN7rocksdb15BitFieldsAtomicINS_11clock_cache11ClockHandle8SlotMetaEE7CasWeakERS3_S3_.exit ], [ %i.b, %bb.a ] ; 2 uses
  %i.k = and i64 %.sroa.016.022, 4611686018427387904
  %.not20 = icmp eq i64 %i.k, 0
  br i1 %.not20, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.l = cmpxchg weak ptr %i.a, i64 %.sroa.016.022, i64 2305843009213693952 acq_rel acquire, align 8 ; 2 uses
  %i.m = extractvalue { i64, i1 } %i.l, 1
  br i1 %i.m, label %bb.d, label %_ZN7rocksdb15BitFieldsAtomicINS_11clock_cache11ClockHandle8SlotMetaEE7CasWeakERS3_S3_.exit

_ZN7rocksdb15BitFieldsAtomicINS_11clock_cache11ClockHandle8SlotMetaEE7CasWeakERS3_S3_.exit: ; preds = %bb.c
  %i.n = extractvalue { i64, i1 } %i.l, 0         ; 3 uses
  %i.o = trunc i64 %i.n to i32
  %i.p = and i32 %i.o, 1073741823
end_hunk_0
