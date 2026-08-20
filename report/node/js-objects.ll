inline.NumInlined: 7694
inline.NumDeleted: 2227
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN2v88internal8JSObject24EnsureCanContainElementsINS0_14FullObjectSlotEEEvPNS0_7IsolateENS0_12DirectHandleIS1_EET_jNS0_18EnsureElementsModeE:bb.a
  %i.g = load i8, ptr %i.f, align 1               ; 2 uses
  %i.h = lshr i8 %i.g, 2                          ; 5 uses
  %.not = icmp eq i8 %i.h, 3
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 10624
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %.not68 = icmp eq i32 %3, 0
  br i1 %.not68, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.n = icmp ult i8 %i.g, 24
  %i.o = trunc i8 %i.h to i1
  %i.p = and i1 %i.n, %i.o
  %i.q = zext i1 %i.p to i8                       ; 2 uses
  %i.r = icmp eq i32 %4, 2
  br i1 %i.r, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.us
  %.065.us = phi i8 [ %.261.us, %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.us ], [ %i.h, %.lr.ph ] ; 7 uses
  %.02264.us = phi i8 [ %.22460.us, %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.us ], [ %i.q, %.lr.ph ] ; 4 uses
  %.02763.us = phi i32 [ %i.ai, %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.us ], [ 0, %.lr.ph ]
  %.sroa.039.062.us = phi i64 [ %i.aj, %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.us ], [ %2, %.lr.ph ] ; 2 uses
  %i.s = inttoptr i64 %.sroa.039.062.us to ptr
  %i.t = load i64, ptr %i.s, align 8              ; 3 uses
  %i.u = icmp eq i64 %i.t, %i.m
  br i1 %i.u, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.us
  %i.v = and i64 %i.t, 1
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.us, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.us

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.us: ; preds = %bb.c
  %i.x = add nsw i64 %i.t, -1
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = load atomic volatile i64, ptr %i.y monotonic, align 8
  %i.aa = add i64 %i.z, 11
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load atomic volatile i16, ptr %i.ab monotonic, align 2
  %i.ad = icmp eq i16 %i.ac, 130
  br i1 %i.ad, label %bb.d, label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.us

_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.us: ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.us
  %i.ae = trunc nuw i8 %.02264.us to i1
  br i1 %i.ae, label %._crit_edge, label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.us

bb.d:                                             ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.us
  %i.af = icmp ult i8 %.065.us, 2
  %..us = or i8 %.02264.us, 4
  %spec.select.us = select i1 %i.af, i8 %..us, i8 %.065.us
  br label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.us

bb.e:                                             ; preds = %.lr.ph.split.us
  %i.ag = icmp ult i8 %.065.us, 7
  %switch.shifted = lshr i8 85, %.065.us
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.ag, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.us

switch.lookup:                                    ; preds = %bb.e
  %i.ah = shl nuw nsw i8 %.065.us, 3
  %switch.shiftamt = zext nneg i8 %i.ah to i56
  %switch.downshift = lshr i56 1970346312007681, %switch.shiftamt
  %switch.masked = trunc i56 %switch.downshift to i8
  br label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.us

_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.us: ; preds = %bb.e, %switch.lookup, %bb.d, %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.us, %bb.c
  %.261.us = phi i8 [ 2, %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.us ], [ %switch.masked, %switch.lookup ], [ %.065.us, %bb.c ], [ %spec.select.us, %bb.d ], [ %.065.us, %bb.e ] ; 2 uses
  %.22460.us = phi i8 [ 0, %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.us ], [ 1, %switch.lookup ], [ %.02264.us, %bb.c ], [ %.02264.us, %bb.d ], [ 1, %bb.e ]
  %i.ai = add nuw i32 %.02763.us, 1               ; 2 uses
  %i.aj = add i64 %.sroa.039.062.us, 8
  %exitcond71.not = icmp eq i32 %i.ai, %3
  br i1 %exitcond71.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !72

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread
  %.065 = phi i8 [ %.261, %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread ], [ %i.h, %.lr.ph ] ; 5 uses
  %.02264 = phi i8 [ %.22460, %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread ], [ %i.q, %.lr.ph ] ; 2 uses
  %.02763 = phi i32 [ %i.as, %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread ], [ 0, %.lr.ph ]
  %.sroa.039.062 = phi i64 [ %i.at, %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread ], [ %2, %.lr.ph ] ; 2 uses
  %i.ak = inttoptr i64 %.sroa.039.062 to ptr
  %i.al = load i64, ptr %i.ak, align 8            ; 2 uses
  %i.am = icmp eq i64 %i.al, %i.m
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.split
  %i.an = icmp ult i8 %.065, 7
  %switch.shifted85 = lshr i8 85, %.065
  %switch.lobit86 = trunc i8 %switch.shifted85 to i1
  %or.cond91 = select i1 %i.an, i1 %switch.lobit86, i1 false
  br i1 %or.cond91, label %switch.lookup84, label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread

bb.g:                                             ; preds = %.lr.ph.split
  %i.ao = and i64 %i.al, 1
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread, label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit

_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit: ; preds = %bb.g
  %i.aq = trunc nuw i8 %.02264 to i1
  br i1 %i.aq, label %._crit_edge, label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread

switch.lookup84:                                  ; preds = %bb.f
  %i.ar = shl nuw nsw i8 %.065, 3
  %switch.shiftamt88 = zext nneg i8 %i.ar to i56
  %switch.downshift89 = lshr i56 1970346312007681, %switch.shiftamt88
  %switch.masked90 = trunc i56 %switch.downshift89 to i8
  br label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread

_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread: ; preds = %bb.f, %switch.lookup84, %bb.g, %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit
  %.261 = phi i8 [ 2, %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit ], [ %switch.masked90, %switch.lookup84 ], [ %.065, %bb.g ], [ %.065, %bb.f ] ; 2 uses
  %.22460 = phi i8 [ 0, %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit ], [ 1, %switch.lookup84 ], [ %.02264, %bb.g ], [ 1, %bb.f ]
  %i.as = add nuw i32 %.02763, 1                  ; 2 uses
  %i.at = add i64 %.sroa.039.062, 8
  %exitcond.not = icmp eq i32 %i.as, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !72

._crit_edge:                                      ; preds = %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit, %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread, %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.us, %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.us
  %.3 = phi i8 [ %.261.us, %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.us ], [ 3, %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.us ], [ %.261, %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread ], [ 3, %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit ] ; 2 uses
  %.not28 = icmp eq i8 %.3, %i.h
  br i1 %.not28, label %.critedge, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  tail call void @_ZN2v88internal8JSObject22TransitionElementsKindEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_12ElementsKindE(ptr noundef %0, ptr nonnull %1, i8 noundef zeroext %.3)
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.a, %bb.h, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN2v88internal8JSObject16ValidateElementsEPNS0_7IsolateENS0_6TaggedIS1_EE(ptr nofree noundef readnone captures(none) %0, i64 %1) local_unnamed_addr #10 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal8JSObject26WouldConvertToSlowElementsEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 4 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %0, align 8 ; 4 uses
  %i.a = add i64 %.sroa.0.0.copyload.i.i.i.i.i, -1
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.d = add i64 %i.c, 14
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load i8, ptr %i.e, align 1
  %i.g = icmp ult i8 %i.f, 24
  br i1 %i.g, label %bb.b, label %_ZN2v88internalL27ShouldConvertToSlowElementsENS0_6TaggedINS0_8JSObjectEEEjjPj.exit

bb.b:                                             ; preds = %bb.a
  %i.h = add i64 %.sroa.0.0.copyload.i.i.i.i.i, 15
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load i64, ptr %i.i, align 8
  %i.k = add i64 %i.j, -1
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i64, ptr %i.m, align 8
  %i.o = lshr i64 %i.n, 32
  %i.p = trunc nuw i64 %i.o to i32                ; 2 uses
  %i.q = icmp ult i32 %1, %i.p
  br i1 %i.q, label %_ZN2v88internalL27ShouldConvertToSlowElementsENS0_6TaggedINS0_8JSObjectEEEjjPj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = sub nuw i32 %1, %i.p
  %i.s = icmp ugt i32 %i.r, 1023
  br i1 %i.s, label %_ZN2v88internalL27ShouldConvertToSlowElementsENS0_6TaggedINS0_8JSObjectEEEjjPj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = add i32 %1, 1
  %i.u = lshr i32 %i.t, 1
  %i.v = add i32 %1, 17                           ; 2 uses
  %i.w = add i32 %i.u, %i.v                       ; 2 uses
  %i.x = icmp ult i32 %i.v, 134217729
  %i.y = tail call i32 @llvm.umin.i32(i32 %i.w, i32 134217728)
  %.0.i.i = select i1 %i.x, i32 %i.y, i32 %i.w    ; 3 uses
  %i.z = icmp ult i32 %.0.i.i, 501
  br i1 %i.z, label %_ZN2v88internalL27ShouldConvertToSlowElementsENS0_6TaggedINS0_8JSObjectEEEjjPj.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = icmp ult i32 %.0.i.i, 5001
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ab = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -262144
  %i.ac = inttoptr i64 %i.ab to ptr
  %.sroa.0.0.copyload.i.i3 = load i64, ptr %i.ac, align 262144
  %i.ad = and i64 %.sroa.0.0.copyload.i.i3, 24
  %.not.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i, label %bb.g, label %_ZN2v88internalL27ShouldConvertToSlowElementsENS0_6TaggedINS0_8JSObjectEEEjjPj.exit

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store i64 %.sroa.0.0.copyload.i.i.i.i.i, ptr %2, align 8
  %i.ae = call noundef i32 @_ZN2v88internal8JSObject20GetFastElementsUsageEv(ptr noundef nonnull align 8 dereferenceable(8) %2) ; 2 uses
  %i.af = lshr i32 %i.ae, 1
  %i.ag = add i32 %i.af, %i.ae
  %spec.select.i.i.i.i = tail call i32 @llvm.usub.sat.i32(i32 %i.ag, i32 1)
  %i.ah = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %spec.select.i.i.i.i, i1 false)
  %i.ai = sub nuw nsw i32 32, %i.ah
  %3 = tail call i32 @llvm.umax.i32(i32 %i.ai, i32 2)
  %i.aj = shl i32 9, %3
  %i.ak = icmp ule i32 %i.aj, %.0.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %_ZN2v88internalL27ShouldConvertToSlowElementsENS0_6TaggedINS0_8JSObjectEEEjjPj.exit

_ZN2v88internalL27ShouldConvertToSlowElementsENS0_6TaggedINS0_8JSObjectEEEjjPj.exit: ; preds = %bb.g, %bb.f, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.d ], [ %i.ak, %bb.g ], [ true, %bb.c ], [ false, %bb.f ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i16 0, 258) i16 @_ZN2v88internal8JSObject14AddDataElementEPNS0_7IsolateENS0_12DirectHandleIS1_EEjNS4_INS0_6ObjectEEENS0_18PropertyAttributesE(ptr noundef %0, ptr %1, i32 noundef %2, ptr %3, i32 noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 4 uses
  %i.a = load i64, ptr %1, align 8                ; 6 uses
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr                 ; 7 uses
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.e = add i64 %i.d, 11
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i16, ptr %i.f monotonic, align 2
  %i.h = icmp eq i16 %i.g, 2119
  br i1 %i.h, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.i = add i64 %i.a, 23
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load i64, ptr %i.j, align 8              ; 4 uses
  %i.l = and i64 %i.k, 1
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.c, label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.n = icmp sgt i64 %i.k, -1
  br i1 %i.n, label %_ZN2v88internal6Object13ToArrayLengthENS0_6TaggedIS1_EEPj.exit.thread168, label %_ZN2v88internal6Object13ToArrayLengthENS0_6TaggedIS1_EEPj.exit.thread, !prof !8

_ZN2v88internal6Object13ToArrayLengthENS0_6TaggedIS1_EEPj.exit.thread168: ; preds = %bb.c
  %i.o = lshr i64 %i.k, 32
  %i.p = trunc nuw nsw i64 %i.o to i32
  br label %bb.e

_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i: ; preds = %bb.b
  %i.q = add nsw i64 %i.k, -1
  %i.r = inttoptr i64 %i.q to ptr                 ; 2 uses
  %i.s = load atomic volatile i64, ptr %i.r monotonic, align 8
  %i.t = add i64 %i.s, 11
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load atomic volatile i16, ptr %i.u monotonic, align 2
  %i.w = icmp eq i16 %i.v, 130
  br i1 %i.w, label %bb.d, label %_ZN2v88internal6Object13ToArrayLengthENS0_6TaggedIS1_EEPj.exit.thread, !prof !8

bb.d:                                             ; preds = %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.0.copyload.i.i.i.i.i.i = load double, ptr %i.x, align 8 ; 2 uses
  %i.y = fadd double %.0.copyload.i.i.i.i.i.i, f0x4330000000000000
  %i.z = bitcast double %i.y to i64               ; 2 uses
  %.mask.i.i.i = and i64 %i.z, -4294967296
  %i.aa = icmp eq i64 %.mask.i.i.i, 4841369599423283200
  %i.ab = trunc i64 %i.z to i32                   ; 2 uses
  %i.ac = uitofp i32 %i.ab to double
  %i.ad = fcmp oeq double %.0.copyload.i.i.i.i.i.i, %i.ac
  %or.cond184 = and i1 %i.aa, %i.ad
  br i1 %or.cond184, label %bb.e, label %_ZN2v88internal6Object13ToArrayLengthENS0_6TaggedIS1_EEPj.exit.thread, !prof !9

_ZN2v88internal6Object13ToArrayLengthENS0_6TaggedIS1_EEPj.exit.thread: ; preds = %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i, %bb.c, %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.71) #23
  unreachable

bb.e:                                             ; preds = %bb.d, %_ZN2v88internal6Object13ToArrayLengthENS0_6TaggedIS1_EEPj.exit.thread168, %bb.a
  %.0162 = phi i32 [ %i.ab, %bb.d ], [ 0, %bb.a ], [ %i.p, %_ZN2v88internal6Object13ToArrayLengthENS0_6TaggedIS1_EEPj.exit.thread168 ] ; 2 uses
  %i.ae = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.af = add i64 %i.ae, 14
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = lshr i8 %i.ah, 2                        ; 5 uses
  %i.aj = add i64 %i.a, 15
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = load i64, ptr %i.ak, align 8            ; 3 uses
  %i.am = and i8 %i.ai, 62                        ; 2 uses
  %i.an = icmp eq i8 %i.am, 14
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ao = add i64 %i.al, -1
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load i64, ptr %i.aq, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.as = icmp eq i8 %i.am, 16
  %spec.select = select i1 %i.as, i8 17, i8 13
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.086.0 = phi i64 [ %i.ar, %bb.f ], [ %i.al, %bb.g ]
  %.052 = phi i8 [ 15, %bb.f ], [ %spec.select, %bb.g ] ; 7 uses
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %bb.i, label %_ZN2v88internalL27BestFittingFastElementsKindENS0_6TaggedINS0_8JSObjectEEE.exit

bb.i:                                             ; preds = %bb.h
  %i.at = add i64 %.sroa.086.0, -1
  %i.au = inttoptr i64 %i.at to ptr               ; 4 uses
  %i.av = load atomic volatile i64, ptr %i.au monotonic, align 8
  %i.aw = add i64 %i.av, 11
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = load atomic volatile i16, ptr %i.ax monotonic, align 2
  %i.az = icmp eq i16 %i.ay, 211
  br i1 %i.az, label %bb.j, label %bb.s

bb.j:                                             ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 40 ; 2 uses
  %i.bb = load atomic volatile i64, ptr %i.ba monotonic, align 8
  %i.bc = and i64 %i.bb, 4294967297
  %.0.i.i = icmp eq i64 %i.bc, 4294967296
  %i.bd = icmp ugt i32 %2, 2147483646
  %or.cond.i = or i1 %i.bd, %.0.i.i
  br i1 %or.cond.i, label %_ZN2v88internalL27BestFittingFastElementsKindENS0_6TaggedINS0_8JSObjectEEE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.be = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.bf = add i64 %i.be, 11
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = load atomic volatile i16, ptr %i.bg monotonic, align 2
  %i.bi = icmp eq i16 %i.bh, 2119
  br i1 %i.bi, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bj = add i64 %i.a, 23
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = load i64, ptr %i.bk, align 8            ; 2 uses
  %i.bm = and i64 %i.bl, 1
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %.thread.i, label %_ZN2v88internalL27BestFittingFastElementsKindENS0_6TaggedINS0_8JSObjectEEE.exit

.thread.i:                                        ; preds = %bb.l
  %i.bo = lshr i64 %i.bl, 32
  %i.bp = trunc nuw i64 %i.bo to i32
  br label %_ZN2v88internalL27ShouldConvertToFastElementsENS0_6TaggedINS0_8JSObjectEEENS1_INS0_16NumberDictionaryEEEjPj.exit

bb.m:                                             ; preds = %bb.k
  %i.bq = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.br = add i64 %i.bq, 11
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = load atomic volatile i16, ptr %i.bs monotonic, align 2
  %i.bu = icmp eq i16 %i.bt, 2118
  br i1 %i.bu, label %_ZN2v88internalL27BestFittingFastElementsKindENS0_6TaggedINS0_8JSObjectEEE.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bv = load atomic volatile i64, ptr %i.ba monotonic, align 8 ; 2 uses
  %i.bw = and i64 %i.bv, 1
  %i.bx = icmp eq i64 %i.bw, 0
  %sum.shift.i.i = lshr i64 %i.bv, 33
  %i.by = trunc nuw nsw i64 %sum.shift.i.i to i32
  %i.bz = add nuw i32 %i.by, 1
  %i.ca = select i1 %i.bx, i32 %i.bz, i32 1
  br label %_ZN2v88internalL27ShouldConvertToFastElementsENS0_6TaggedINS0_8JSObjectEEENS1_INS0_16NumberDictionaryEEEjPj.exit

_ZN2v88internalL27ShouldConvertToFastElementsENS0_6TaggedINS0_8JSObjectEEENS1_INS0_16NumberDictionaryEEEjPj.exit: ; preds = %.thread.i, %bb.n
  %storemerge.i = phi i32 [ %i.ca, %bb.n ], [ %i.bp, %.thread.i ]
  %i.cb = add nuw nsw i32 %2, 1
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.cb, i32 %storemerge.i) ; 10 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.cd = load atomic volatile i64, ptr %i.cc monotonic, align 8
  %i.ce = lshr i64 %i.cd, 32
  %i.cf = trunc nuw i64 %i.ce to i32
  %i.cg = mul i32 %i.cf, 6
  %.not187.a = icmp ult i32 %i.cg, %.sroa.speculated.i
  br i1 %.not187.a, label %_ZN2v88internalL27BestFittingFastElementsKindENS0_6TaggedINS0_8JSObjectEEE.exit, label %bb.o

bb.o:                                             ; preds = %_ZN2v88internalL27ShouldConvertToFastElementsENS0_6TaggedINS0_8JSObjectEEENS1_INS0_16NumberDictionaryEEEjPj.exit
  %i.ch = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.ci = add i64 %i.ch, 11
  %i.cj = inttoptr i64 %i.ci to ptr
  %i.ck = load atomic volatile i16, ptr %i.cj monotonic, align 2
  switch i16 %i.ck, label %_ZN2v88internalL27BestFittingFastElementsKindENS0_6TaggedINS0_8JSObjectEEE.exit [
    i16 2119, label %bb.p
    i16 1041, label %bb.p
    i16 2118, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o, %bb.o, %bb.o
  %i.cl = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.cm = add i64 %i.cl, 14
  %i.cn = inttoptr i64 %i.cm to ptr
  %i.co = load i8, ptr %i.cn, align 1
  %i.cp = and i8 %i.co, -8
  %i.cq = icmp eq i8 %i.cp, 56
  br i1 %i.cq, label %_ZN2v88internalL27BestFittingFastElementsKindENS0_6TaggedINS0_8JSObjectEEE.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cr = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.cs = add i64 %i.cr, 14
  %i.ct = inttoptr i64 %i.cs to ptr
  %i.cu = load i8, ptr %i.ct, align 1
  %i.cv = and i8 %i.cu, -8
  %i.cw = icmp eq i8 %i.cv, 64
  br i1 %i.cw, label %_ZN2v88internalL27BestFittingFastElementsKindENS0_6TaggedINS0_8JSObjectEEE.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cx = add i64 %i.al, -1
  %i.cy = inttoptr i64 %i.cx to ptr               ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %i.da = load atomic volatile i64, ptr %i.cz monotonic, align 8
  %i.db = lshr i64 %i.da, 32                      ; 3 uses
  %.not101.i = icmp eq i64 %i.db, 0
  br i1 %.not101.i, label %_ZN2v88internalL27BestFittingFastElementsKindENS0_6TaggedINS0_8JSObjectEEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.r
  %i.dc = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 10624
  %i.de = load ptr, ptr %i.dd, align 8            ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 96 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cy, i64 16 ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 104 ; 2 uses
  %i.di = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 261), align 1, !range !5
  %.fr109.i = freeze i8 %i.di
  %i.dj = trunc i8 %.fr109.i to i1
  br i1 %i.dj, label %.lr.ph.split.us.split.i, label %.lr.ph.split.i

.lr.ph.split.us.split.i:                          ; preds = %.lr.ph.i, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread.us.i
  %.018103.us.i = phi i8 [ %.422.ph.us.i, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread.us.i ], [ 1, %.lr.ph.i ] ; 4 uses
  %.sroa.036.0102.us.i = phi i64 [ %i.em, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread.us.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.dk = mul i64 %.sroa.036.0102.us.i, 12884901888 ; 2 uses
  %sext.i.i.i.us.i = add i64 %i.dk, 17179869184
  %i.dl = ashr exact i64 %sext.i.i.i.us.i, 29
  %i.dm = getelementptr inbounds i8, ptr %i.dg, i64 %i.dl
  %i.dn = load atomic volatile i64, ptr %i.dm monotonic, align 8 ; 4 uses
  %i.do = load i64, ptr %i.df, align 8
  %i.dp = icmp eq i64 %i.dn, %i.do
  br i1 %i.dp, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread.us.i, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.us.i

_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.us.i: ; preds = %.lr.ph.split.us.split.i
  %i.dq = load i64, ptr %i.dh, align 8
  %.not.i.us.i = icmp eq i64 %i.dn, %i.dq
  br i1 %.not.i.us.i, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread.us.i, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.us.i

_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.us.i: ; preds = %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.us.i
  %i.dr = and i64 %i.dn, 1
  %i.ds = icmp eq i64 %i.dr, 0
  br i1 %i.ds, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit31.thread.us.i, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit31.us.i

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit31.us.i: ; preds = %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.us.i
  %i.dt = add nsw i64 %i.dn, -1
  %i.du = inttoptr i64 %i.dt to ptr
  %i.dv = load atomic volatile i64, ptr %i.du monotonic, align 8
  %i.dw = add i64 %i.dv, 11
  %i.dx = inttoptr i64 %i.dw to ptr
  %i.dy = load atomic volatile i16, ptr %i.dx monotonic, align 2
  %i.dz = icmp eq i16 %i.dy, 130
  br i1 %i.dz, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit31.thread.us.i, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread.us.i

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit31.thread.us.i: ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit31.us.i, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.us.i
  %sext.i.i.us.i = add i64 %i.dk, 21474836480
  %i.ea = ashr exact i64 %sext.i.i.us.i, 29
  %i.eb = getelementptr inbounds i8, ptr %i.dg, i64 %i.ea
  %i.ec = load atomic volatile i64, ptr %i.eb monotonic, align 8 ; 2 uses
  %i.ed = and i64 %i.ec, 1
  %i.ee = icmp eq i64 %i.ed, 0
  br i1 %i.ee, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread.us.i, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.us.i

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.us.i: ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit31.thread.us.i
  %i.ef = add nsw i64 %i.ec, -1
  %i.eg = inttoptr i64 %i.ef to ptr
  %i.eh = load atomic volatile i64, ptr %i.eg monotonic, align 8
  %i.ei = add i64 %i.eh, 11
  %i.ej = inttoptr i64 %i.ei to ptr
  %i.ek = load atomic volatile i16, ptr %i.ej monotonic, align 2
  %i.el = icmp eq i16 %i.ek, 130
  br i1 %i.el, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread.us.i, label %_ZN2v88internalL27BestFittingFastElementsKindENS0_6TaggedINS0_8JSObjectEEE.exit

_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread.us.i: ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.us.i, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit31.thread.us.i, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit31.us.i, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.us.i, %.lr.ph.split.us.split.i
  %.422.ph.us.i = phi i8 [ %.018103.us.i, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit31.thread.us.i ], [ %.018103.us.i, %.lr.ph.split.us.split.i ], [ %.018103.us.i, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit31.us.i ], [ %.018103.us.i, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.us.i ], [ 5, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.us.i ] ; 2 uses
  %i.em = add nuw nsw i64 %.sroa.036.0102.us.i, 1 ; 2 uses
  %.not.us.i = icmp eq i64 %i.em, %i.db
  br i1 %.not.us.i, label %_ZN2v88internalL27BestFittingFastElementsKindENS0_6TaggedINS0_8JSObjectEEE.exit, label %.lr.ph.split.us.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  %.sroa.036.0102.i = phi i64 [ %i.fo, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.en = mul i64 %.sroa.036.0102.i, 12884901888  ; 2 uses
  %sext.i.i.i.i = add i64 %i.en, 17179869184
  %i.eo = ashr exact i64 %sext.i.i.i.i, 29
  %i.ep = getelementptr inbounds i8, ptr %i.dg, i64 %i.eo
  %i.eq = load atomic volatile i64, ptr %i.ep monotonic, align 8 ; 4 uses
  %i.er = load i64, ptr %i.df, align 8
  %i.es = icmp eq i64 %i.eq, %i.er
  br i1 %i.es, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread.i, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.i

_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.i: ; preds = %.lr.ph.split.i
  %i.et = load i64, ptr %i.dh, align 8
  %.not.i.i = icmp eq i64 %i.eq, %i.et
  br i1 %.not.i.i, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread.i, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.i

_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.i
  %i.eu = and i64 %i.eq, 1
  %i.ev = icmp eq i64 %i.eu, 0
  br i1 %i.ev, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit31.thread.i, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit31.i

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit31.i: ; preds = %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.ew = add nsw i64 %i.eq, -1
  %i.ex = inttoptr i64 %i.ew to ptr
  %i.ey = load atomic volatile i64, ptr %i.ex monotonic, align 8
  %i.ez = add i64 %i.ey, 11
  %i.fa = inttoptr i64 %i.ez to ptr
  %i.fb = load atomic volatile i16, ptr %i.fa monotonic, align 2
  %i.fc = icmp eq i16 %i.fb, 130
  br i1 %i.fc, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit31.thread.i, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit31.thread.i: ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit31.i, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.i
  %sext.i.i.i = add i64 %i.en, 21474836480
  %i.fd = ashr exact i64 %sext.i.i.i, 29
  %i.fe = getelementptr inbounds i8, ptr %i.dg, i64 %i.fd
  %i.ff = load atomic volatile i64, ptr %i.fe monotonic, align 8 ; 2 uses
  %i.fg = and i64 %i.ff, 1
  %i.fh = icmp eq i64 %i.fg, 0
  br i1 %i.fh, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread.i, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit31.thread.i
  %i.fi = add nsw i64 %i.ff, -1
  %i.fj = inttoptr i64 %i.fi to ptr
  %i.fk = load atomic volatile i64, ptr %i.fj monotonic, align 8
  %i.fl = add i64 %i.fk, 11
  %i.fm = inttoptr i64 %i.fl to ptr
  %i.fn = load atomic volatile i16, ptr %i.fm monotonic, align 2 ; 0 uses
  br label %_ZN2v88internalL27BestFittingFastElementsKindENS0_6TaggedINS0_8JSObjectEEE.exit

_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread.i: ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit31.thread.i, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit31.i, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.i, %.lr.ph.split.i
  %i.fo = add nuw nsw i64 %.sroa.036.0102.i, 1    ; 2 uses
  %.not.i = icmp eq i64 %i.fo, %i.db
  br i1 %.not.i, label %_ZN2v88internalL27BestFittingFastElementsKindENS0_6TaggedINS0_8JSObjectEEE.exit, label %.lr.ph.split.i

bb.s:                                             ; preds = %bb.i
  %i.fp = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.fq = load i64, ptr %i.fp, align 8
  %i.fr = lshr i64 %i.fq, 32
  %i.fs = trunc nuw i64 %i.fr to i32              ; 3 uses
  %i.ft = icmp ult i32 %2, %i.fs
  br i1 %i.ft, label %_ZN2v88internalL27BestFittingFastElementsKindENS0_6TaggedINS0_8JSObjectEEE.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fu = sub nuw i32 %2, %i.fs
  %i.fv = icmp ugt i32 %i.fu, 1023
  br i1 %i.fv, label %_ZN2v88internalL27BestFittingFastElementsKindENS0_6TaggedINS0_8JSObjectEEE.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fw = add i32 %2, 1
  %i.fx = lshr i32 %i.fw, 1
  %i.fy = add i32 %2, 17                          ; 2 uses
  %i.fz = add i32 %i.fx, %i.fy                    ; 2 uses
  %i.ga = icmp ult i32 %i.fy, 134217729
  %i.gb = tail call i32 @llvm.umin.i32(i32 %i.fz, i32 134217728)
  %.0.i.i65 = select i1 %i.ga, i32 %i.gb, i32 %i.fz ; 6 uses
  %i.gc = icmp ult i32 %.0.i.i65, 501
  br i1 %i.gc, label %_ZN2v88internalL27BestFittingFastElementsKindENS0_6TaggedINS0_8JSObjectEEE.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gd = icmp ult i32 %.0.i.i65, 5001
  br i1 %i.gd, label %bb.w, label %_ZN2v88internalL27ShouldConvertToSlowElementsENS0_6TaggedINS0_8JSObjectEEEjjPj.exit

bb.w:                                             ; preds = %bb.v
  %i.ge = and i64 %i.a, -262144
  %i.gf = inttoptr i64 %i.ge to ptr
  %.sroa.0.0.copyload.i.i66 = load i64, ptr %i.gf, align 262144
  %i.gg = and i64 %.sroa.0.0.copyload.i.i66, 24
  %.not.i67 = icmp eq i64 %i.gg, 0
  br i1 %.not.i67, label %_ZN2v88internalL27ShouldConvertToSlowElementsENS0_6TaggedINS0_8JSObjectEEEjjPj.exit, label %_ZN2v88internalL27BestFittingFastElementsKindENS0_6TaggedINS0_8JSObjectEEE.exit

_ZN2v88internalL27ShouldConvertToSlowElementsENS0_6TaggedINS0_8JSObjectEEEjjPj.exit: ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store i64 %i.a, ptr %5, align 8
  %i.gh = call noundef i32 @_ZN2v88internal8JSObject20GetFastElementsUsageEv(ptr noundef nonnull align 8 dereferenceable(8) %5) ; 2 uses
  %i.gi = lshr i32 %i.gh, 1
  %i.gj = add i32 %i.gi, %i.gh
  %spec.select.i.i.i.i = tail call i32 @llvm.usub.sat.i32(i32 %i.gj, i32 1)
  %i.gk = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %spec.select.i.i.i.i, i1 false)
  %i.gl = sub nuw nsw i32 32, %i.gk
  %6 = tail call i32 @llvm.umax.i32(i32 %i.gl, i32 2)
  %i.gm = shl i32 9, %6
  %.fr = freeze i32 %i.gm
  %.not186 = icmp ugt i32 %.fr, %.0.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %spec.select185 = select i1 %.not186, i8 %i.ai, i8 %.052
  br label %_ZN2v88internalL27BestFittingFastElementsKindENS0_6TaggedINS0_8JSObjectEEE.exit

_ZN2v88internalL27BestFittingFastElementsKindENS0_6TaggedINS0_8JSObjectEEE.exit: ; preds = %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread.i, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread.us.i, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.us.i, %_ZN2v88internalL27ShouldConvertToSlowElementsENS0_6TaggedINS0_8JSObjectEEEjjPj.exit, %bb.s, %bb.w, %bb.u, %bb.t, %bb.l, %bb.j, %bb.m, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i, %bb.r, %bb.q, %bb.p, %bb.o, %_ZN2v88internalL27ShouldConvertToFastElementsENS0_6TaggedINS0_8JSObjectEEENS1_INS0_16NumberDictionaryEEEjPj.exit, %bb.h
  %.0164 = phi i32 [ %.0.i.i65, %bb.w ], [ %.sroa.speculated.i, %_ZN2v88internalL27ShouldConvertToFastElementsENS0_6TaggedINS0_8JSObjectEEENS1_INS0_16NumberDictionaryEEEjPj.exit ], [ %.sroa.speculated.i, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread.us.i ], [ 0, %bb.h ], [ %.sroa.speculated.i, %bb.o ], [ %.sroa.speculated.i, %bb.p ], [ %.sroa.speculated.i, %bb.q ], [ %.sroa.speculated.i, %bb.r ], [ %i.fs, %bb.s ], [ %.0.i.i65, %bb.u ], [ %.sroa.speculated.i, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i ], [ 0, %bb.t ], [ %.0.i.i65, %_ZN2v88internalL27ShouldConvertToSlowElementsENS0_6TaggedINS0_8JSObjectEEEjjPj.exit ], [ 0, %bb.l ], [ 0, %bb.m ], [ 0, %bb.j ], [ %.sroa.speculated.i, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.us.i ], [ %.sroa.speculated.i, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread.i ]
  %.0 = phi i8 [ %i.ai, %bb.w ], [ %.052, %_ZN2v88internalL27ShouldConvertToFastElementsENS0_6TaggedINS0_8JSObjectEEENS1_INS0_16NumberDictionaryEEEjPj.exit ], [ %.422.ph.us.i, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread.us.i ], [ %.052, %bb.h ], [ 3, %bb.o ], [ 14, %bb.p ], [ 16, %bb.q ], [ 1, %bb.r ], [ %i.ai, %bb.s ], [ %i.ai, %bb.u ], [ 3, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i ], [ %.052, %bb.t ], [ %spec.select185, %_ZN2v88internalL27ShouldConvertToSlowElementsENS0_6TaggedINS0_8JSObjectEEEjjPj.exit ], [ %.052, %bb.l ], [ %.052, %bb.m ], [ %.052, %bb.j ], [ 3, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.us.i ], [ 1, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread.i ] ; 5 uses
  %i.gn = load i64, ptr %3, align 8               ; 2 uses
  %i.go = and i64 %i.gn, 1
  %i.gp = icmp eq i64 %i.go, 0
  br i1 %i.gp, label %_ZN2v88internal6Object19OptimalElementsKindENS0_6TaggedIS1_EENS0_16PtrComprCageBaseE.exit, label %bb.x

bb.x:                                             ; preds = %_ZN2v88internalL27BestFittingFastElementsKindENS0_6TaggedINS0_8JSObjectEEE.exit
  %i.gq = add nsw i64 %i.gn, -1
  %i.gr = inttoptr i64 %i.gq to ptr
  %i.gs = load atomic volatile i64, ptr %i.gr monotonic, align 8
  %i.gt = add i64 %i.gs, 11
  %i.gu = inttoptr i64 %i.gt to ptr
  %i.gv = load atomic volatile i16, ptr %i.gu monotonic, align 2
  %i.gw = icmp eq i16 %i.gv, 130
  %..i = select i1 %i.gw, i8 4, i8 2
  br label %_ZN2v88internal6Object19OptimalElementsKindENS0_6TaggedIS1_EENS0_16PtrComprCageBaseE.exit

_ZN2v88internal6Object19OptimalElementsKindENS0_6TaggedIS1_EENS0_16PtrComprCageBaseE.exit: ; preds = %_ZN2v88internalL27BestFittingFastElementsKindENS0_6TaggedINS0_8JSObjectEEE.exit, %bb.x
  %.1.i68 = phi i8 [ %..i, %bb.x ], [ 0, %_ZN2v88internalL27BestFittingFastElementsKindENS0_6TaggedINS0_8JSObjectEEE.exit ] ; 2 uses
  %i.gx = trunc i8 %.0 to i1
  %i.gy = icmp ult i8 %.0, 6
  %i.gz = and i1 %i.gy, %i.gx
  br i1 %i.gz, label %switch.lookup, label %bb.y

bb.y:                                             ; preds = %_ZN2v88internal6Object19OptimalElementsKindENS0_6TaggedIS1_EENS0_16PtrComprCageBaseE.exit
  %i.ha = load i64, ptr %1, align 8
  %i.hb = add i64 %i.ha, -1
  %i.hc = inttoptr i64 %i.hb to ptr
  %i.hd = load atomic volatile i64, ptr %i.hc monotonic, align 8
  %i.he = add i64 %i.hd, 11
  %i.hf = inttoptr i64 %i.he to ptr
  %i.hg = load atomic volatile i16, ptr %i.hf monotonic, align 2
  %i.hh = icmp ne i16 %i.hg, 2119
  %i.hi = icmp ugt i32 %2, %.0162
  %or.cond = select i1 %i.hh, i1 true, i1 %i.hi
  br i1 %or.cond, label %switch.lookup, label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit72

switch.lookup:                                    ; preds = %_ZN2v88internal6Object19OptimalElementsKindENS0_6TaggedIS1_EENS0_16PtrComprCageBaseE.exit, %bb.y
  %i.hj = shl nuw nsw i8 %.1.i68, 3
  %switch.shiftamt = zext nneg i8 %i.hj to i40
  %switch.downshift = lshr i40 21475033089, %switch.shiftamt
  %switch.masked = trunc i40 %switch.downshift to i8 ; 5 uses
  switch i8 %.0, label %bb.ac [
    i8 0, label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit72
    i8 4, label %bb.z
    i8 2, label %bb.aa
    i8 6, label %bb.ab
  ]

bb.z:                                             ; preds = %switch.lookup
  br label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit72

bb.aa:                                            ; preds = %switch.lookup
  br label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit72

bb.ab:                                            ; preds = %switch.lookup
  br label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit72

bb.ac:                                            ; preds = %switch.lookup
  br label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit72

_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit72: ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z, %switch.lookup, %bb.y
  %.053 = phi i8 [ %.1.i68, %bb.y ], [ %switch.masked, %switch.lookup ], [ %switch.masked, %bb.z ], [ %switch.masked, %bb.aa ], [ %switch.masked, %bb.ab ], [ %switch.masked, %bb.ac ] ; 2 uses
  %.1 = phi i8 [ %.0, %bb.y ], [ 1, %switch.lookup ], [ 5, %bb.z ], [ 3, %bb.aa ], [ 7, %bb.ab ], [ %.0, %bb.ac ] ; 2 uses
  %i.hk = tail call noundef zeroext i1 @_ZN2v88internal35IsMoreGeneralElementsKindTransitionENS0_12ElementsKindES1_(i8 noundef zeroext %.1, i8 noundef zeroext %.053) #21
  %..i73 = select i1 %i.hk, i8 %.053, i8 %.1
  %i.hl = load ptr, ptr @_ZN2v88internal16ElementsAccessor19elements_accessors_E, align 8
  %i.hm = zext nneg i8 %..i73 to i64
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.hl, i64 %i.hm
  %i.ho = load ptr, ptr %i.hn, align 8            ; 2 uses
  %i.hp = load ptr, ptr %i.ho, align 8
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 168
  %i.hr = load ptr, ptr %i.hq, align 8
  %i.hs = tail call i16 %i.hr(ptr noundef nonnull align 8 dereferenceable(8) %i.ho, ptr noundef %0, ptr nonnull %1, i32 noundef %2, ptr nonnull %3, i32 noundef %4, i32 noundef %.0164) #21
  %i.ht = trunc i16 %i.hs to i1
  br i1 %i.ht, label %bb.ad, label %_ZN2v88internal7JSArray10set_lengthENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEENS0_16WriteBarrierModeE.exit

bb.ad:                                            ; preds = %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit72
  %i.hu = load i64, ptr %1, align 8
  %i.hv = add i64 %i.hu, -1
  %i.hw = inttoptr i64 %i.hv to ptr
  %i.hx = load atomic volatile i64, ptr %i.hw monotonic, align 8
  %i.hy = add i64 %i.hx, 11
  %i.hz = inttoptr i64 %i.hy to ptr
  %i.ia = load atomic volatile i16, ptr %i.hz monotonic, align 2
  %i.ib = icmp ne i16 %i.ia, 2119
  %.not55 = icmp ult i32 %2, %.0162
  %or.cond60 = select i1 %i.ib, i1 true, i1 %.not55
  br i1 %or.cond60, label %_ZN2v88internal7JSArray10set_lengthENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEENS0_16WriteBarrierModeE.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ic = add i32 %2, 1                           ; 3 uses
  %i.id = icmp sgt i32 %i.ic, -1
  br i1 %i.id, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.ie = zext nneg i32 %i.ic to i64
  %i.if = shl nuw nsw i64 %i.ie, 32               ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.ih = load ptr, ptr %i.ig, align 8            ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.ij = load ptr, ptr %i.ii, align 8
  %i.ik = icmp eq ptr %i.ih, %i.ij
  br i1 %i.ik, label %bb.ag, label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !7

bb.ag:                                            ; preds = %bb.af
  %i.il = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 1 dereferenceable(1) %0) #21
  br label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.ag, %bb.af
  %.0.i.i.i = phi ptr [ %i.il, %bb.ag ], [ %i.ih, %bb.af ] ; 2 uses
  %i.im = ptrtoint ptr %.0.i.i.i to i64
  %i.in = add i64 %i.im, 8
  %i.io = inttoptr i64 %i.in to ptr
  store ptr %i.io, ptr %i.ig, align 8
  store i64 %i.if, ptr %.0.i.i.i, align 8
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromUintILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEj.exit

bb.ah:                                            ; preds = %bb.ae
  %i.ip = uitofp i32 %i.ic to double
  %i.iq = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewHeapNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_10HeapNumberEEEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #21 ; 2 uses
  %i.ir = load i64, ptr %i.iq, align 8
  %i.is = add i64 %i.ir, -1
  %i.it = inttoptr i64 %i.is to ptr
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  store double %i.ip, ptr %i.iu, align 1
  %.pre = load i64, ptr %i.iq, align 8
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromUintILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEj.exit

_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromUintILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEj.exit: ; preds = %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, %bb.ah
  %i.iv = phi i64 [ %i.if, %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ], [ %.pre, %bb.ah ] ; 5 uses
  %i.iw = load i64, ptr %1, align 8               ; 4 uses
  %i.ix = add i64 %i.iw, 23                       ; 3 uses
  %i.iy = inttoptr i64 %i.ix to ptr
  store atomic volatile i64 %i.iv, ptr %i.iy monotonic, align 8
  %i.iz = trunc i64 %i.iv to i1
  br i1 %i.iz, label %bb.ai, label %_ZN2v88internal7JSArray10set_lengthENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEENS0_16WriteBarrierModeE.exit

bb.ai:                                            ; preds = %_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromUintILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEj.exit
  %i.ja = and i64 %i.iw, -262144
  %i.jb = inttoptr i64 %i.ja to ptr
  %i.jc = load i64, ptr %i.jb, align 262144       ; 2 uses
  %i.jd = and i64 %i.jc, 32
  %.not.i.i.i = icmp eq i64 %i.jd, 0
  %i.je = and i64 %i.jc, 25
  %.not37.i.i.i = icmp eq i64 %i.je, 0
  br i1 %.not37.i.i.i, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.jf = and i64 %i.iv, -262144
  %i.jg = inttoptr i64 %i.jf to ptr
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.jg, align 262144
  %i.jh = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 25
  %.not38.i.i.i = icmp eq i64 %i.jh, 0
  br i1 %.not38.i.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.iw, i64 noundef %i.ix, i64 %i.iv) #21
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai
  br i1 %.not.i.i.i, label %_ZN2v88internal7JSArray10set_lengthENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEENS0_16WriteBarrierModeE.exit, label %bb.am, !prof !17

bb.am:                                            ; preds = %bb.al
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.iw, i64 %i.ix, i64 %i.iv) #21
  br label %_ZN2v88internal7JSArray10set_lengthENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal7JSArray10set_lengthENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEENS0_16WriteBarrierModeE.exit: ; preds = %bb.ad, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromUintILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEj.exit, %bb.al, %bb.am, %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit72
  %.sroa.051.0 = phi i16 [ 0, %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit72 ], [ 257, %bb.am ], [ 257, %bb.al ], [ 257, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromUintILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEj.exit ], [ 257, %bb.ad ]
  ret i16 %.sroa.051.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN2v88internal8JSObject20GetFastElementsUsageEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8 ; 5 uses
  %i.a = add i64 %.sroa.0.0.copyload.i.i, 15
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load i64, ptr %i.b, align 8              ; 9 uses
  %i.d = add i64 %.sroa.0.0.copyload.i.i, -1
  %i.e = inttoptr i64 %i.d to ptr                 ; 4 uses
  %i.f = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.g = add i64 %i.f, 14
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load i8, ptr %i.h, align 1
  %i.j = lshr i8 %i.i, 2
  switch i8 %i.j, label %_ZN2v88internalL18HoleyElementsUsageINS0_10FixedArrayEEEiNS0_6TaggedINS0_8JSObjectEEENS3_IT_EE.exit [
    i8 0, label %bb.b
    i8 4, label %bb.b
    i8 2, label %bb.b
    i8 10, label %bb.b
    i8 8, label %bb.b
    i8 6, label %bb.b
    i8 12, label %bb.b
end_hunk_0
