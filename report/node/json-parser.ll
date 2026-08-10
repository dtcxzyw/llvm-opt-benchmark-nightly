inline.NumInlined: 4577
inline.NumDeleted: 1231
loop-unroll.NumCompletelyUnrolled: 71
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 73
begin_hunk_0_@_ZN2v88internal10JsonParserIhE14BuildJsonArrayEm:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  br i1 %.397, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @_ZN2v88internal21WriteBarrierModeScopeC1ENS0_16WriteBarrierModeE(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 0) #18
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.be = add i64 %i.bd, -1                       ; 2 uses
  %i.bf = or disjoint i64 %i.be, 1
  %i.bg = and i64 %i.be, -262144
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = load i64, ptr %i.bh, align 262144, !noalias !76 ; 2 uses
  %i.bj = and i64 %i.bi, 32
  %.not.i.i.i = icmp eq i64 %i.bj, 0
  %i.bk = and i64 %i.bi, 24
  %.not7.i.i.i = icmp ne i64 %i.bk, 0
  %i.bl = and i1 %.not.i.i.i, %.not7.i.i.i
  %.1.i.i.i = select i1 %i.bl, i32 1, i32 4
  call void @_ZN2v88internal21WriteBarrierModeScopeC1ENS0_6TaggedINS0_10HeapObjectEEENS0_16WriteBarrierModeE(ptr noundef nonnull align 4 dereferenceable(4) %2, i64 %i.bf, i32 noundef %.1.i.i.i) #18
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bm = icmp sgt i32 %i.j, 0
  br i1 %i.bm, label %.lr.ph81, label %._crit_edge82

.lr.ph81:                                         ; preds = %bb.j
  %i.bn = add i64 %i.bd, -1                       ; 3 uses
  %i.bo = inttoptr i64 %i.bn to ptr
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = or disjoint i64 %i.bn, 1                ; 2 uses
  %i.br = and i64 %i.bn, -262144
  %i.bs = inttoptr i64 %i.br to ptr
  %wide.trip.count = and i64 %i.i, 2147483647
  br label %bb.k

._crit_edge82:                                    ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, %bb.j
  call void @_ZN2v88internal21WriteBarrierModeScopeD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %.loopexit

bb.k:                                             ; preds = %.lr.ph81, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph81 ], [ %indvars.iv.next, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit ] ; 3 uses
  %i.bt = load ptr, ptr %i.a, align 8
  %i.bu = getelementptr [8 x i8], ptr %i.bt, i64 %1
  %i.bv = getelementptr [8 x i8], ptr %i.bu, i64 %indvars.iv
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = load i64, ptr %i.bw, align 8            ; 5 uses
  %i.by = load i32, ptr %2, align 4
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv ; 2 uses
  store atomic volatile i64 %i.bx, ptr %i.bz monotonic, align 8
  %i.ca = icmp sgt i32 %i.by, 1
  %i.cb = trunc i64 %i.bx to i1
  %or.cond.i.i.i.i = select i1 %i.ca, i1 %i.cb, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.l, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.l:                                             ; preds = %bb.k
  %i.cc = ptrtoint ptr %i.bz to i64               ; 2 uses
  %i.cd = load i64, ptr %i.bs, align 262144       ; 2 uses
  %i.ce = and i64 %i.cd, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.ce, 0
  %i.cf = and i64 %i.cd, 25
  %.not37.i.i.i.i.i = icmp eq i64 %i.cf, 0
  br i1 %.not37.i.i.i.i.i, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.cg = and i64 %i.bx, -262144
  %i.ch = inttoptr i64 %i.cg to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.ch, align 262144
  %i.ci = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.ci, 0
  br i1 %.not38.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.bq, i64 noundef %i.cc, i64 %i.bx) #18
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.p, !prof !6

bb.p:                                             ; preds = %bb.o
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.bq, i64 %i.cc, i64 %i.bx) #18
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %bb.k, %bb.o, %bb.p
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond87.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond87.not, label %._crit_edge82, label %bb.k, !llvm.loop !81

.loopexit:                                        ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit, %bb.c, %._crit_edge82
  %i.cj = phi ptr [ %i.az, %._crit_edge82 ], [ %i.aa, %bb.c ], [ %i.aa, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit ]
  ret ptr %i.cj
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN2v88internal11HandleScope14CloseAndEscapeINS0_6ObjectENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS6_EEEEES7_S7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 560 ; 2 uses
  %i.c = load i64, ptr %1, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  store ptr %i.e, ptr %i.b, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 576 ; 4 uses
  %i.i = load i32, ptr %i.h, align 8
  %i.j = add nsw i32 %i.i, -1
  store i32 %i.j, ptr %i.h, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 568 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8
  %.not.i = icmp eq ptr %i.l, %i.g
  br i1 %.not.i, label %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  store ptr %i.g, ptr %i.k, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %i.a) #18
  br label %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit

_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit: ; preds = %bb.a, %bb.b
  %i.m = load ptr, ptr %0, align 8                ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 560 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 568
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = icmp eq ptr %i.o, %i.q
  br i1 %i.r, label %bb.c, label %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.c:                                             ; preds = %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit
  %i.s = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.m) #18
  br label %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit, %bb.c
  %.0.i.i = phi ptr [ %i.s, %bb.c ], [ %i.o, %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit ] ; 3 uses
  %i.t = ptrtoint ptr %.0.i.i to i64
  %i.u = add i64 %i.t, 8
  %i.v = inttoptr i64 %i.u to ptr
  store ptr %i.v, ptr %i.n, align 8
  store i64 %i.c, ptr %.0.i.i, align 8
  %i.w = load ptr, ptr %i.b, align 8
  store ptr %i.w, ptr %i.d, align 8
  %i.x = load ptr, ptr %i.k, align 8
  store ptr %i.x, ptr %i.f, align 8
  %i.y = load i32, ptr %i.h, align 8
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr %i.h, align 8
  ret ptr %.0.i.i
}

declare ptr @_ZN2v88internal7Factory11NewJSObjectENS0_12DirectHandleINS0_10JSFunctionEEENS0_14AllocationTypeENS0_15NewJSObjectTypeE(ptr noundef nonnull align 1 dereferenceable(1), ptr, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN2v88internal10JsonParserIhE15BuildJsonObjectILb0EEENS0_6HandleINS0_8JSObjectEEERKNS2_16JsonContinuationENS0_12DirectHandleINS0_3MapEEE(ptr noundef nonnull align 8 dereferenceable(928) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::WriteBarrierModeScope", align 4 ; 5 uses
  %4 = alloca %"class.v8::internal::JSDataObjectBuilder", align 8 ; 11 uses
  %5 = alloca %"class.v8::internal::JsonParser<unsigned char>::NamedPropertyIterator", align 8 ; 4 uses
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %2, align 8
  %i.c = add i64 %i.b, 15
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load atomic volatile i32, ptr %i.d acquire, align 4
  %i.f = and i32 %i.e, 16777216
  %.not76 = icmp eq i32 %i.f, 0
  br i1 %.not76, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8
  %i.h = tail call ptr @_ZN2v88internal3Map6UpdateEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef %i.g, ptr nonnull %2) #18
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.c, %bb.b
  %.sroa.068.0 = phi ptr [ %2, %bb.b ], [ %i.h, %bb.c ], [ null, %bb.a ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load i32, ptr %i.i, align 8
  %i.k = lshr i32 %i.j, 2                         ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = load ptr, ptr %i.l, align 8
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = sdiv exact i64 %i.r, 24
  %i.t = trunc i64 %i.s to i32
  %i.u = sub i32 %i.t, %i.k                       ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8              ; 5 uses
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %bb.p, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4
  %i.z = add i32 %i.y, 1                          ; 2 uses
  %i.aa = lshr i32 %i.w, 1
  %i.ab = add i32 %i.aa, %i.w
  %spec.select.i.i.i = tail call i32 @llvm.usub.sat.i32(i32 %i.ab, i32 1)
  %i.ac = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %spec.select.i.i.i, i1 false)
  %i.ad = sub nuw nsw i32 32, %i.ac
  %6 = tail call i32 @llvm.umax.i32(i32 %i.ad, i32 2)
  %i.ae = shl i32 9, %6
  %.not77 = icmp ugt i32 %i.ae, %i.z
  %i.af = load ptr, ptr %0, align 8               ; 2 uses
  br i1 %.not77, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = tail call ptr @_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE3NewINS0_7IsolateEEENS0_6HandleIS2_EEPT_jNS0_14AllocationTypeENS0_15MinimumCapacityE(ptr noundef %i.af, i32 noundef %i.w, i8 noundef zeroext 0, i32 noundef 0) #18 ; 4 uses
  %i.ah = icmp sgt i32 %i.u, 0
  br i1 %i.ah, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.ai = zext nneg i32 %i.k to i64
  %wide.trip.count = zext nneg i32 %i.u to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.g, %bb.e
  %i.aj = load i64, ptr %i.ag, align 8
  %i.ak = add i64 %i.aj, -1
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load i32, ptr %i.v, align 8
  %i.an = sext i32 %i.am to i64
  %i.ao = shl nsw i64 %i.an, 32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store atomic volatile i64 %i.ao, ptr %i.ap monotonic, align 8
  %i.aq = load i64, ptr %i.ag, align 8
  %i.ar = add i64 %i.aq, -1
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = load i32, ptr %i.x, align 4
  tail call void @_ZN2v88internal16NumberDictionary18UpdateMaxNumberKeyEjNS0_12DirectHandleINS0_8JSObjectEEE(ptr noundef nonnull align 4 dereferenceable(16) %i.as, i32 noundef %i.at, ptr null) #18
  br label %bb.q

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %i.au = load ptr, ptr %i.l, align 8
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %i.au, i64 %indvars.iv
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %i.ai ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load i8, ptr %i.ax, align 4
  %i.az = and i8 %i.ay, 8
  %.not79 = icmp eq i8 %i.az, 0
  br i1 %.not79, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.ba = load i32, ptr %i.aw, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.sroa.015.0.copyload = load ptr, ptr %i.bb, align 8
  %i.bc = load ptr, ptr %0, align 8
  tail call void @_ZN2v88internal16NumberDictionary12UncheckedSetEPNS0_7IsolateENS0_12DirectHandleIS1_EEjNS4_INS0_6ObjectEEE(ptr noundef %i.bc, ptr %i.ag, i32 noundef %i.ba, ptr %.sroa.015.0.copyload) #18
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !82

bb.h:                                             ; preds = %bb.d
  %i.bd = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE22NewFixedArrayWithHolesEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %i.af, i32 noundef %i.z, i8 noundef zeroext 0) #18 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.bf = add i64 %i.be, -1                       ; 3 uses
  %i.bg = or disjoint i64 %i.bf, 1                ; 3 uses
  %i.bh = and i64 %i.bf, -262144
  %i.bi = inttoptr i64 %i.bh to ptr               ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 262144, !noalias !83 ; 2 uses
  %i.bk = and i64 %i.bj, 32
  %.not.i.i.i = icmp eq i64 %i.bk, 0
  %i.bl = and i64 %i.bj, 24
  %.not7.i.i.i = icmp ne i64 %i.bl, 0
  %i.bm = and i1 %.not.i.i.i, %.not7.i.i.i
  %.1.i.i.i = select i1 %i.bm, i32 1, i32 4
  call void @_ZN2v88internal21WriteBarrierModeScopeC1ENS0_6TaggedINS0_10HeapObjectEEENS0_16WriteBarrierModeE(ptr noundef nonnull align 4 dereferenceable(4) %3, i64 %i.bg, i32 noundef %.1.i.i.i) #18
  %i.bn = icmp sgt i32 %i.u, 0
  br i1 %i.bn, label %.lr.ph83, label %._crit_edge84

.lr.ph83:                                         ; preds = %bb.h
  %i.bo = inttoptr i64 %i.bf to ptr
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = zext nneg i32 %i.k to i64
  %wide.trip.count91 = zext nneg i32 %i.u to i64
  br label %bb.i

._crit_edge84:                                    ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, %bb.h
  call void @_ZN2v88internal21WriteBarrierModeScopeD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.q

bb.i:                                             ; preds = %.lr.ph83, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit
  %indvars.iv87 = phi i64 [ 0, %.lr.ph83 ], [ %indvars.iv.next88, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit ] ; 2 uses
  %i.br = load ptr, ptr %i.l, align 8
  %i.bs = getelementptr inbounds nuw [24 x i8], ptr %i.br, i64 %indvars.iv87
  %i.bt = getelementptr inbounds nuw [24 x i8], ptr %i.bs, i64 %i.bq ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load i8, ptr %i.bu, align 4
  %i.bw = and i8 %i.bv, 8
  %.not78 = icmp eq i8 %i.bw, 0
  br i1 %.not78, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bx = load i32, ptr %i.bt, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %.sroa.05.0.copyload = load ptr, ptr %i.by, align 8
  %i.bz = load i64, ptr %.sroa.05.0.copyload, align 8 ; 5 uses
  %i.ca = load i32, ptr %3, align 4
  %i.cb = sext i32 %i.bx to i64
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.cb ; 2 uses
  store atomic volatile i64 %i.bz, ptr %i.cc monotonic, align 8
  %i.cd = icmp sgt i32 %i.ca, 1
  %i.ce = trunc i64 %i.bz to i1
  %or.cond.i.i.i.i = select i1 %i.cd, i1 %i.ce, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.k, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.k:                                             ; preds = %bb.j
  %i.cf = ptrtoint ptr %i.cc to i64               ; 2 uses
  %i.cg = load i64, ptr %i.bi, align 262144       ; 2 uses
  %i.ch = and i64 %i.cg, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.ch, 0
  %i.ci = and i64 %i.cg, 25
  %.not37.i.i.i.i.i = icmp eq i64 %i.ci, 0
  br i1 %.not37.i.i.i.i.i, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.cj = and i64 %i.bz, -262144
  %i.ck = inttoptr i64 %i.cj to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.ck, align 262144
  %i.cl = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.cl, 0
  br i1 %.not38.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.bg, i64 noundef %i.cf, i64 %i.bz) #18
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.o, !prof !6

bb.o:                                             ; preds = %bb.n
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.bg, i64 %i.cf, i64 %i.bz) #18
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %bb.o, %bb.n, %bb.j, %bb.i
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1 ; 2 uses
  %exitcond92.not = icmp eq i64 %indvars.iv.next88, %wide.trip.count91
  br i1 %exitcond92.not, label %._crit_edge84, label %bb.i, !llvm.loop !88

bb.p:                                             ; preds = %.critedge
  %i.cm = load ptr, ptr %0, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 864
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge, %._crit_edge84, %bb.p
  %.sroa.064.0 = phi ptr [ %i.cn, %bb.p ], [ %i.ag, %._crit_edge ], [ %i.bd, %._crit_edge84 ]
  %.0 = phi i8 [ 3, %bb.p ], [ 13, %._crit_edge ], [ 3, %._crit_edge84 ] ; 2 uses
  %i.co = sub i32 %i.u, %i.w                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.cp = load ptr, ptr %0, align 8               ; 3 uses
  store ptr %i.cp, ptr %4, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i8 %.0, ptr %i.cq, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  store i32 %i.co, ptr %i.cr, align 4
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 1, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ct, i8 0, i64 24, i1 false)
  store ptr %.sroa.068.0, ptr %i.cu, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  store i32 0, ptr %i.cv, align 8
  %i.cw = icmp eq ptr %.sroa.068.0, null
  br i1 %i.cw, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cx = load i64, ptr %.sroa.068.0, align 8     ; 2 uses
  %i.cy = add i64 %i.cx, 14
  %i.cz = inttoptr i64 %i.cy to ptr
  %i.da = load i8, ptr %i.cz, align 1
  %i.db = lshr i8 %i.da, 2
  %.not.i.i = icmp eq i8 %i.db, %.0
  br i1 %.not.i.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dc = add i64 %i.cx, 15
  %i.dd = inttoptr i64 %i.dc to ptr
  %i.de = load atomic volatile i32, ptr %i.dd acquire, align 4
  %i.df = lshr i32 %i.de, 10
  %i.dg = and i32 %i.df, 1023                     ; 2 uses
  %i.dh = load i32, ptr %i.cr, align 4            ; 2 uses
  %.not16.i.i = icmp slt i32 %i.dg, %i.dh
  br i1 %.not16.i.i, label %._crit_edge.i, label %_ZN2v88internal19JSDataObjectBuilder36TryInitializeMapFromExpectedFinalMapEv.exit.i

._crit_edge.i:                                    ; preds = %bb.s
  %.pre.i = load ptr, ptr %4, align 8
  br label %bb.t

_ZN2v88internal19JSDataObjectBuilder36TryInitializeMapFromExpectedFinalMapEv.exit.i: ; preds = %bb.s
  %i.di = load i64, ptr %i.cu, align 8
  store i64 %i.di, ptr %i.ct, align 8
  store i32 %i.dg, ptr %i.cv, align 8
  br label %_ZN2v88internal19JSDataObjectBuilderC2EPNS0_7IsolateENS0_12ElementsKindEiNS0_12DirectHandleINS0_3MapEEENS1_14HeapNumberModeE.exit

bb.t:                                             ; preds = %._crit_edge.i, %bb.r, %bb.q
  %i.dj = phi i32 [ %i.dh, %._crit_edge.i ], [ %i.co, %bb.r ], [ %i.co, %bb.q ]
end_hunk_0
begin_hunk_1_@_ZN2v88internal10JsonParserItE14BuildJsonArrayEm:bb.a

bb.c:                                             ; preds = %._crit_edge
  %i.ab = icmp sgt i32 %i.j, 0
  br i1 %i.ab, label %.lr.ph85, label %.loopexit

.lr.ph85:                                         ; preds = %bb.c
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 15
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = add i64 %i.af, -1
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %wide.trip.count91 = and i64 %i.i, 2147483647
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph85, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit
  %indvars.iv88 = phi i64 [ 0, %.lr.ph85 ], [ %indvars.iv.next89, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit ] ; 3 uses
  %i.aj = load ptr, ptr %i.a, align 8
  %i.ak = getelementptr [8 x i8], ptr %i.aj, i64 %1
  %i.al = getelementptr [8 x i8], ptr %i.ak, i64 %indvars.iv88
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = load i64, ptr %i.am, align 8            ; 3 uses
  %i.ao = and i64 %i.an, 1
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aq = lshr i64 %i.an, 32
  %i.ar = trunc nuw i64 %i.aq to i32
  %i.as = sitofp i32 %i.ar to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit

bb.f:                                             ; preds = %bb.d
  %i.at = add nsw i64 %i.an, -1
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.0.copyload.i.i.i.i.i.i = load double, ptr %i.av, align 1
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit

_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit: ; preds = %bb.e, %bb.f
  %i.aw = phi double [ %i.as, %bb.e ], [ %.0.copyload.i.i.i.i.i.i, %bb.f ] ; 2 uses
  %i.ax = fcmp uno double %i.aw, 0.000000e+00
  %.0.i = select i1 %i.ax, double +qnan, double %i.aw
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv88
  store double %.0.i, ptr %i.ay, align 1
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1 ; 2 uses
  %exitcond92.not = icmp eq i64 %indvars.iv.next89, %wide.trip.count91
  br i1 %exitcond92.not, label %.loopexit, label %bb.d, !llvm.loop !131

bb.g:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.az = phi ptr [ %i.y, %._crit_edge.thread ], [ %i.aa, %._crit_edge ] ; 2 uses
  %.397 = phi i1 [ %i.k, %._crit_edge.thread ], [ true, %._crit_edge ]
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = add i64 %i.ba, 15
  %i.bc = inttoptr i64 %i.bb to ptr
  %i.bd = load i64, ptr %i.bc, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  br i1 %.397, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @_ZN2v88internal21WriteBarrierModeScopeC1ENS0_16WriteBarrierModeE(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 0) #18
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.be = add i64 %i.bd, -1                       ; 2 uses
  %i.bf = or disjoint i64 %i.be, 1
  %i.bg = and i64 %i.be, -262144
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = load i64, ptr %i.bh, align 262144, !noalias !132 ; 2 uses
  %i.bj = and i64 %i.bi, 32
  %.not.i.i.i = icmp eq i64 %i.bj, 0
  %i.bk = and i64 %i.bi, 24
  %.not7.i.i.i = icmp ne i64 %i.bk, 0
  %i.bl = and i1 %.not.i.i.i, %.not7.i.i.i
  %.1.i.i.i = select i1 %i.bl, i32 1, i32 4
  call void @_ZN2v88internal21WriteBarrierModeScopeC1ENS0_6TaggedINS0_10HeapObjectEEENS0_16WriteBarrierModeE(ptr noundef nonnull align 4 dereferenceable(4) %2, i64 %i.bf, i32 noundef %.1.i.i.i) #18
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bm = icmp sgt i32 %i.j, 0
  br i1 %i.bm, label %.lr.ph81, label %._crit_edge82

.lr.ph81:                                         ; preds = %bb.j
  %i.bn = add i64 %i.bd, -1                       ; 3 uses
  %i.bo = inttoptr i64 %i.bn to ptr
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = or disjoint i64 %i.bn, 1                ; 2 uses
  %i.br = and i64 %i.bn, -262144
  %i.bs = inttoptr i64 %i.br to ptr
  %wide.trip.count = and i64 %i.i, 2147483647
  br label %bb.k

._crit_edge82:                                    ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, %bb.j
  call void @_ZN2v88internal21WriteBarrierModeScopeD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %.loopexit

bb.k:                                             ; preds = %.lr.ph81, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph81 ], [ %indvars.iv.next, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit ] ; 3 uses
  %i.bt = load ptr, ptr %i.a, align 8
  %i.bu = getelementptr [8 x i8], ptr %i.bt, i64 %1
  %i.bv = getelementptr [8 x i8], ptr %i.bu, i64 %indvars.iv
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = load i64, ptr %i.bw, align 8            ; 5 uses
  %i.by = load i32, ptr %2, align 4
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv ; 2 uses
  store atomic volatile i64 %i.bx, ptr %i.bz monotonic, align 8
  %i.ca = icmp sgt i32 %i.by, 1
  %i.cb = trunc i64 %i.bx to i1
  %or.cond.i.i.i.i = select i1 %i.ca, i1 %i.cb, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.l, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.l:                                             ; preds = %bb.k
  %i.cc = ptrtoint ptr %i.bz to i64               ; 2 uses
  %i.cd = load i64, ptr %i.bs, align 262144       ; 2 uses
  %i.ce = and i64 %i.cd, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.ce, 0
  %i.cf = and i64 %i.cd, 25
  %.not37.i.i.i.i.i = icmp eq i64 %i.cf, 0
  br i1 %.not37.i.i.i.i.i, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.cg = and i64 %i.bx, -262144
  %i.ch = inttoptr i64 %i.cg to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.ch, align 262144
  %i.ci = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.ci, 0
  br i1 %.not38.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.bq, i64 noundef %i.cc, i64 %i.bx) #18
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.p, !prof !6

bb.p:                                             ; preds = %bb.o
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.bq, i64 %i.cc, i64 %i.bx) #18
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %bb.k, %bb.o, %bb.p
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond87.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond87.not, label %._crit_edge82, label %bb.k, !llvm.loop !137

.loopexit:                                        ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit, %bb.c, %._crit_edge82
  %i.cj = phi ptr [ %i.az, %._crit_edge82 ], [ %i.aa, %bb.c ], [ %i.aa, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit ]
  ret ptr %i.cj
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN2v88internal10JsonParserItE15BuildJsonObjectILb0EEENS0_6HandleINS0_8JSObjectEEERKNS2_16JsonContinuationENS0_12DirectHandleINS0_3MapEEE(ptr noundef nonnull align 8 dereferenceable(928) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::WriteBarrierModeScope", align 4 ; 5 uses
  %4 = alloca %"class.v8::internal::JSDataObjectBuilder", align 8 ; 11 uses
  %5 = alloca %"class.v8::internal::JsonParser<unsigned short>::NamedPropertyIterator", align 8 ; 4 uses
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %2, align 8
  %i.c = add i64 %i.b, 15
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load atomic volatile i32, ptr %i.d acquire, align 4
  %i.f = and i32 %i.e, 16777216
  %.not76 = icmp eq i32 %i.f, 0
  br i1 %.not76, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8
  %i.h = tail call ptr @_ZN2v88internal3Map6UpdateEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef %i.g, ptr nonnull %2) #18
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.c, %bb.b
  %.sroa.068.0 = phi ptr [ %2, %bb.b ], [ %i.h, %bb.c ], [ null, %bb.a ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load i32, ptr %i.i, align 8
  %i.k = lshr i32 %i.j, 2                         ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = load ptr, ptr %i.l, align 8
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = sdiv exact i64 %i.r, 24
  %i.t = trunc i64 %i.s to i32
  %i.u = sub i32 %i.t, %i.k                       ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8              ; 5 uses
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %bb.p, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4
  %i.z = add i32 %i.y, 1                          ; 2 uses
  %i.aa = lshr i32 %i.w, 1
  %i.ab = add i32 %i.aa, %i.w
  %spec.select.i.i.i = tail call i32 @llvm.usub.sat.i32(i32 %i.ab, i32 1)
  %i.ac = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %spec.select.i.i.i, i1 false)
  %i.ad = sub nuw nsw i32 32, %i.ac
  %6 = tail call i32 @llvm.umax.i32(i32 %i.ad, i32 2)
  %i.ae = shl i32 9, %6
  %.not77 = icmp ugt i32 %i.ae, %i.z
  %i.af = load ptr, ptr %0, align 8               ; 2 uses
  br i1 %.not77, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = tail call ptr @_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE3NewINS0_7IsolateEEENS0_6HandleIS2_EEPT_jNS0_14AllocationTypeENS0_15MinimumCapacityE(ptr noundef %i.af, i32 noundef %i.w, i8 noundef zeroext 0, i32 noundef 0) #18 ; 4 uses
  %i.ah = icmp sgt i32 %i.u, 0
  br i1 %i.ah, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.ai = zext nneg i32 %i.k to i64
  %wide.trip.count = zext nneg i32 %i.u to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.g, %bb.e
  %i.aj = load i64, ptr %i.ag, align 8
  %i.ak = add i64 %i.aj, -1
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load i32, ptr %i.v, align 8
  %i.an = sext i32 %i.am to i64
  %i.ao = shl nsw i64 %i.an, 32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store atomic volatile i64 %i.ao, ptr %i.ap monotonic, align 8
  %i.aq = load i64, ptr %i.ag, align 8
  %i.ar = add i64 %i.aq, -1
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = load i32, ptr %i.x, align 4
  tail call void @_ZN2v88internal16NumberDictionary18UpdateMaxNumberKeyEjNS0_12DirectHandleINS0_8JSObjectEEE(ptr noundef nonnull align 4 dereferenceable(16) %i.as, i32 noundef %i.at, ptr null) #18
  br label %bb.q

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %i.au = load ptr, ptr %i.l, align 8
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %i.au, i64 %indvars.iv
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %i.ai ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load i8, ptr %i.ax, align 4
  %i.az = and i8 %i.ay, 8
  %.not79 = icmp eq i8 %i.az, 0
  br i1 %.not79, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.ba = load i32, ptr %i.aw, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.sroa.015.0.copyload = load ptr, ptr %i.bb, align 8
  %i.bc = load ptr, ptr %0, align 8
  tail call void @_ZN2v88internal16NumberDictionary12UncheckedSetEPNS0_7IsolateENS0_12DirectHandleIS1_EEjNS4_INS0_6ObjectEEE(ptr noundef %i.bc, ptr %i.ag, i32 noundef %i.ba, ptr %.sroa.015.0.copyload) #18
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !138

bb.h:                                             ; preds = %bb.d
  %i.bd = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE22NewFixedArrayWithHolesEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %i.af, i32 noundef %i.z, i8 noundef zeroext 0) #18 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.bf = add i64 %i.be, -1                       ; 3 uses
  %i.bg = or disjoint i64 %i.bf, 1                ; 3 uses
  %i.bh = and i64 %i.bf, -262144
  %i.bi = inttoptr i64 %i.bh to ptr               ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 262144, !noalias !139 ; 2 uses
  %i.bk = and i64 %i.bj, 32
  %.not.i.i.i = icmp eq i64 %i.bk, 0
  %i.bl = and i64 %i.bj, 24
  %.not7.i.i.i = icmp ne i64 %i.bl, 0
  %i.bm = and i1 %.not.i.i.i, %.not7.i.i.i
  %.1.i.i.i = select i1 %i.bm, i32 1, i32 4
  call void @_ZN2v88internal21WriteBarrierModeScopeC1ENS0_6TaggedINS0_10HeapObjectEEENS0_16WriteBarrierModeE(ptr noundef nonnull align 4 dereferenceable(4) %3, i64 %i.bg, i32 noundef %.1.i.i.i) #18
  %i.bn = icmp sgt i32 %i.u, 0
  br i1 %i.bn, label %.lr.ph83, label %._crit_edge84

.lr.ph83:                                         ; preds = %bb.h
  %i.bo = inttoptr i64 %i.bf to ptr
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = zext nneg i32 %i.k to i64
  %wide.trip.count91 = zext nneg i32 %i.u to i64
  br label %bb.i

._crit_edge84:                                    ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, %bb.h
  call void @_ZN2v88internal21WriteBarrierModeScopeD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.q

bb.i:                                             ; preds = %.lr.ph83, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit
  %indvars.iv87 = phi i64 [ 0, %.lr.ph83 ], [ %indvars.iv.next88, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit ] ; 2 uses
  %i.br = load ptr, ptr %i.l, align 8
  %i.bs = getelementptr inbounds nuw [24 x i8], ptr %i.br, i64 %indvars.iv87
  %i.bt = getelementptr inbounds nuw [24 x i8], ptr %i.bs, i64 %i.bq ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load i8, ptr %i.bu, align 4
  %i.bw = and i8 %i.bv, 8
  %.not78 = icmp eq i8 %i.bw, 0
  br i1 %.not78, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bx = load i32, ptr %i.bt, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %.sroa.05.0.copyload = load ptr, ptr %i.by, align 8
  %i.bz = load i64, ptr %.sroa.05.0.copyload, align 8 ; 5 uses
  %i.ca = load i32, ptr %3, align 4
  %i.cb = sext i32 %i.bx to i64
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.cb ; 2 uses
  store atomic volatile i64 %i.bz, ptr %i.cc monotonic, align 8
  %i.cd = icmp sgt i32 %i.ca, 1
  %i.ce = trunc i64 %i.bz to i1
  %or.cond.i.i.i.i = select i1 %i.cd, i1 %i.ce, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.k, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.k:                                             ; preds = %bb.j
  %i.cf = ptrtoint ptr %i.cc to i64               ; 2 uses
  %i.cg = load i64, ptr %i.bi, align 262144       ; 2 uses
  %i.ch = and i64 %i.cg, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.ch, 0
  %i.ci = and i64 %i.cg, 25
  %.not37.i.i.i.i.i = icmp eq i64 %i.ci, 0
  br i1 %.not37.i.i.i.i.i, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.cj = and i64 %i.bz, -262144
  %i.ck = inttoptr i64 %i.cj to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.ck, align 262144
  %i.cl = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.cl, 0
  br i1 %.not38.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.bg, i64 noundef %i.cf, i64 %i.bz) #18
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.o, !prof !6

bb.o:                                             ; preds = %bb.n
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.bg, i64 %i.cf, i64 %i.bz) #18
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %bb.o, %bb.n, %bb.j, %bb.i
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1 ; 2 uses
  %exitcond92.not = icmp eq i64 %indvars.iv.next88, %wide.trip.count91
  br i1 %exitcond92.not, label %._crit_edge84, label %bb.i, !llvm.loop !144

bb.p:                                             ; preds = %.critedge
  %i.cm = load ptr, ptr %0, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 864
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge, %._crit_edge84, %bb.p
  %.sroa.064.0 = phi ptr [ %i.cn, %bb.p ], [ %i.ag, %._crit_edge ], [ %i.bd, %._crit_edge84 ]
  %.0 = phi i8 [ 3, %bb.p ], [ 13, %._crit_edge ], [ 3, %._crit_edge84 ] ; 2 uses
  %i.co = sub i32 %i.u, %i.w                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.cp = load ptr, ptr %0, align 8               ; 3 uses
  store ptr %i.cp, ptr %4, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i8 %.0, ptr %i.cq, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  store i32 %i.co, ptr %i.cr, align 4
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 1, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ct, i8 0, i64 24, i1 false)
  store ptr %.sroa.068.0, ptr %i.cu, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  store i32 0, ptr %i.cv, align 8
  %i.cw = icmp eq ptr %.sroa.068.0, null
  br i1 %i.cw, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cx = load i64, ptr %.sroa.068.0, align 8     ; 2 uses
  %i.cy = add i64 %i.cx, 14
  %i.cz = inttoptr i64 %i.cy to ptr
  %i.da = load i8, ptr %i.cz, align 1
  %i.db = lshr i8 %i.da, 2
  %.not.i.i = icmp eq i8 %i.db, %.0
  br i1 %.not.i.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dc = add i64 %i.cx, 15
  %i.dd = inttoptr i64 %i.dc to ptr
  %i.de = load atomic volatile i32, ptr %i.dd acquire, align 4
  %i.df = lshr i32 %i.de, 10
  %i.dg = and i32 %i.df, 1023                     ; 2 uses
  %i.dh = load i32, ptr %i.cr, align 4            ; 2 uses
  %.not16.i.i = icmp slt i32 %i.dg, %i.dh
  br i1 %.not16.i.i, label %._crit_edge.i, label %_ZN2v88internal19JSDataObjectBuilder36TryInitializeMapFromExpectedFinalMapEv.exit.i

._crit_edge.i:                                    ; preds = %bb.s
  %.pre.i = load ptr, ptr %4, align 8
  br label %bb.t

_ZN2v88internal19JSDataObjectBuilder36TryInitializeMapFromExpectedFinalMapEv.exit.i: ; preds = %bb.s
  %i.di = load i64, ptr %i.cu, align 8
  store i64 %i.di, ptr %i.ct, align 8
  store i32 %i.dg, ptr %i.cv, align 8
  br label %_ZN2v88internal19JSDataObjectBuilderC2EPNS0_7IsolateENS0_12ElementsKindEiNS0_12DirectHandleINS0_3MapEEENS1_14HeapNumberModeE.exit

bb.t:                                             ; preds = %._crit_edge.i, %bb.r, %bb.q
  %i.dj = phi i32 [ %i.dh, %._crit_edge.i ], [ %i.co, %bb.r ], [ %i.co, %bb.q ]
end_hunk_1
begin_hunk_2_@_ZN2v88internal10ConsString9set_firstENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE:bb.a
  br i1 %.not.i.i.i.i, label %_ZN2v88internal12TaggedMemberINS0_6StringENS0_27V8HeapCompressionSchemeImplINS0_8MainCageEEEE5storeEPNS0_16HeapObjectLayoutENS0_6TaggedIS2_EENS0_16WriteBarrierModeE.exit, label %bb.f, !prof !6

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.e, i64 %i.f, i64 %1) #18
  br label %_ZN2v88internal12TaggedMemberINS0_6StringENS0_27V8HeapCompressionSchemeImplINS0_8MainCageEEEE5storeEPNS0_16HeapObjectLayoutENS0_6TaggedIS2_EENS0_16WriteBarrierModeE.exit

_ZN2v88internal12TaggedMemberINS0_6StringENS0_27V8HeapCompressionSchemeImplINS0_8MainCageEEEE5storeEPNS0_16HeapObjectLayoutENS0_6TaggedIS2_EENS0_16WriteBarrierModeE.exit: ; preds = %bb.a, %bb.e, %bb.f
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal10ConsString10set_secondENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE(ptr noundef nonnull align 4 dereferenceable(32) %0, i64 %1, i32 noundef %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store atomic volatile i64 %1, ptr %i.a monotonic, align 8
  %i.b = icmp sgt i32 %2, 1
  %i.c = trunc i64 %1 to i1
  %or.cond.i.i.i = select i1 %i.b, i1 %i.c, i1 false
  br i1 %or.cond.i.i.i, label %bb.b, label %_ZN2v88internal12TaggedMemberINS0_6StringENS0_27V8HeapCompressionSchemeImplINS0_8MainCageEEEE5storeEPNS0_16HeapObjectLayoutENS0_6TaggedIS2_EENS0_16WriteBarrierModeE.exit

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.e = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.f = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.g = and i64 %i.d, -262144
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load i64, ptr %i.h, align 262144         ; 2 uses
  %i.j = and i64 %i.i, 32
  %.not.i.i.i.i = icmp eq i64 %i.j, 0
  %i.k = and i64 %i.i, 25
  %.not37.i.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not37.i.i.i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.l = and i64 %1, -262144
  %i.m = inttoptr i64 %i.l to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.m, align 262144
  %i.n = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 25
  %.not38.i.i.i.i = icmp eq i64 %i.n, 0
  br i1 %.not38.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.e, i64 noundef %i.f, i64 %1) #18
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  br i1 %.not.i.i.i.i, label %_ZN2v88internal12TaggedMemberINS0_6StringENS0_27V8HeapCompressionSchemeImplINS0_8MainCageEEEE5storeEPNS0_16HeapObjectLayoutENS0_6TaggedIS2_EENS0_16WriteBarrierModeE.exit, label %bb.f, !prof !6

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.e, i64 %i.f, i64 %1) #18
  br label %_ZN2v88internal12TaggedMemberINS0_6StringENS0_27V8HeapCompressionSchemeImplINS0_8MainCageEEEE5storeEPNS0_16HeapObjectLayoutENS0_6TaggedIS2_EENS0_16WriteBarrierModeE.exit

_ZN2v88internal12TaggedMemberINS0_6StringENS0_27V8HeapCompressionSchemeImplINS0_8MainCageEEEE5storeEPNS0_16HeapObjectLayoutENS0_6TaggedIS2_EENS0_16WriteBarrierModeE.exit: ; preds = %bb.a, %bb.e, %bb.f
  ret void
}

declare void @_ZN2v88internal6String12WriteToFlat2IhEEvPT_NS0_6TaggedINS0_10ConsStringEEEjjRKNS0_31SharedStringAccessGuardIfNeededERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSC_2EEEE(ptr noundef, i64, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #2

declare void @_ZN2v88internal6String12WriteToFlat2ItEEvPT_NS0_6TaggedINS0_10ConsStringEEEjjRKNS0_31SharedStringAccessGuardIfNeededERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSC_2EEEE(ptr noundef, i64, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #2

declare void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare ptr @_ZN2v88internal9HashTableINS0_18ObjectTwoHashTableENS0_25ObjectMultiHashTableShapeILi2EEEE3NewINS0_7IsolateEEENS0_6HandleIS2_EEPT_jNS0_14AllocationTypeENS0_15MinimumCapacityE(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(36) ptr @_ZN2v88internal10JsonParserIhE16JsonContinuationaSEOS3_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8
  store ptr %i.c, ptr %0, align 8
  br label %_ZN2v88internal11HandleScopeaSEOS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 560
  store ptr %i.e, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 576 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8
  %i.k = add nsw i32 %i.j, -1
  store i32 %i.k, ptr %i.i, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 568 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8
  %.not.i.i = icmp eq ptr %i.m, %i.g
  br i1 %.not.i.i, label %_ZN2v88internal11HandleScopeaSEOS1_.exit, label %bb.d, !prof !6

bb.d:                                             ; preds = %bb.c
  store ptr %i.g, ptr %i.l, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %i.a) #18
  br label %_ZN2v88internal11HandleScopeaSEOS1_.exit

_ZN2v88internal11HandleScopeaSEOS1_.exit:         ; preds = %bb.b, %bb.c, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.r, ptr %i.s, align 8
  store ptr null, ptr %1, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.t, ptr noundef nonnull align 8 dereferenceable(12) %i.u, i64 12, i1 false)
  ret ptr %0
}

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewFixedArrayEiNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, i8 noundef zeroext, i8) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2v88internal10JsonParserIhE16JsonContinuationESaIS4_EE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -40 ; 2 uses
  store ptr %i.c, ptr %i.a, align 8
  %i.d = load ptr, ptr %i.c, align 8              ; 5 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZSt10destroy_atIN2v88internal10JsonParserIhE16JsonContinuationEEvPT_.exit, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 -32
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr %i.b, i64 -24
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 560
  store ptr %i.g, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 576 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8
  %i.m = add nsw i32 %i.l, -1
  store i32 %i.m, ptr %i.k, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 568 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8
  %.not.i.i.i = icmp eq ptr %i.o, %i.i
  br i1 %.not.i.i.i, label %_ZSt10destroy_atIN2v88internal10JsonParserIhE16JsonContinuationEEvPT_.exit, label %bb.c, !prof !6

bb.c:                                             ; preds = %bb.b
  store ptr %i.i, ptr %i.n, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %i.d) #18
  br label %_ZSt10destroy_atIN2v88internal10JsonParserIhE16JsonContinuationEEvPT_.exit

_ZSt10destroy_atIN2v88internal10JsonParserIhE16JsonContinuationEEvPT_.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN2v88internal10JsonParserIhE15BuildJsonObjectILb1EEENS0_6HandleINS0_8JSObjectEEERKNS2_16JsonContinuationENS0_12DirectHandleINS0_3MapEEE(ptr noundef nonnull align 8 dereferenceable(928) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::WriteBarrierModeScope", align 4 ; 5 uses
  %4 = alloca %"class.v8::internal::JSDataObjectBuilder", align 8 ; 11 uses
  %5 = alloca %"class.v8::internal::JsonParser<unsigned char>::NamedPropertyIterator", align 8 ; 4 uses
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %2, align 8
  %i.c = add i64 %i.b, 15
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load atomic volatile i32, ptr %i.d acquire, align 4
  %i.f = and i32 %i.e, 16777216
  %.not76 = icmp eq i32 %i.f, 0
  br i1 %.not76, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8
  %i.h = tail call ptr @_ZN2v88internal3Map6UpdateEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef %i.g, ptr nonnull %2) #18
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.c, %bb.b
  %.sroa.068.0 = phi ptr [ %2, %bb.b ], [ %i.h, %bb.c ], [ null, %bb.a ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load i32, ptr %i.i, align 8
  %i.k = lshr i32 %i.j, 2                         ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = load ptr, ptr %i.l, align 8
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = sdiv exact i64 %i.r, 24
  %i.t = trunc i64 %i.s to i32
  %i.u = sub i32 %i.t, %i.k                       ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8              ; 5 uses
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %bb.p, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4
  %i.z = add i32 %i.y, 1                          ; 2 uses
  %i.aa = lshr i32 %i.w, 1
  %i.ab = add i32 %i.aa, %i.w
  %spec.select.i.i.i = tail call i32 @llvm.usub.sat.i32(i32 %i.ab, i32 1)
  %i.ac = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %spec.select.i.i.i, i1 false)
  %i.ad = sub nuw nsw i32 32, %i.ac
  %6 = tail call i32 @llvm.umax.i32(i32 %i.ad, i32 2)
  %i.ae = shl i32 9, %6
  %.not77 = icmp ugt i32 %i.ae, %i.z
  %i.af = load ptr, ptr %0, align 8               ; 2 uses
  br i1 %.not77, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = tail call ptr @_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE3NewINS0_7IsolateEEENS0_6HandleIS2_EEPT_jNS0_14AllocationTypeENS0_15MinimumCapacityE(ptr noundef %i.af, i32 noundef %i.w, i8 noundef zeroext 0, i32 noundef 0) #18 ; 4 uses
  %i.ah = icmp sgt i32 %i.u, 0
  br i1 %i.ah, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.ai = zext nneg i32 %i.k to i64
  %wide.trip.count = zext nneg i32 %i.u to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.g, %bb.e
  %i.aj = load i64, ptr %i.ag, align 8
  %i.ak = add i64 %i.aj, -1
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load i32, ptr %i.v, align 8
  %i.an = sext i32 %i.am to i64
  %i.ao = shl nsw i64 %i.an, 32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store atomic volatile i64 %i.ao, ptr %i.ap monotonic, align 8
  %i.aq = load i64, ptr %i.ag, align 8
  %i.ar = add i64 %i.aq, -1
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = load i32, ptr %i.x, align 4
  tail call void @_ZN2v88internal16NumberDictionary18UpdateMaxNumberKeyEjNS0_12DirectHandleINS0_8JSObjectEEE(ptr noundef nonnull align 4 dereferenceable(16) %i.as, i32 noundef %i.at, ptr null) #18
  br label %bb.q

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %i.au = load ptr, ptr %i.l, align 8
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %i.au, i64 %indvars.iv
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %i.ai ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load i8, ptr %i.ax, align 4
  %i.az = and i8 %i.ay, 8
  %.not79 = icmp eq i8 %i.az, 0
  br i1 %.not79, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.ba = load i32, ptr %i.aw, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.sroa.015.0.copyload = load ptr, ptr %i.bb, align 8
  %i.bc = load ptr, ptr %0, align 8
  tail call void @_ZN2v88internal16NumberDictionary12UncheckedSetEPNS0_7IsolateENS0_12DirectHandleIS1_EEjNS4_INS0_6ObjectEEE(ptr noundef %i.bc, ptr %i.ag, i32 noundef %i.ba, ptr %.sroa.015.0.copyload) #18
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !165

bb.h:                                             ; preds = %bb.d
  %i.bd = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE22NewFixedArrayWithHolesEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %i.af, i32 noundef %i.z, i8 noundef zeroext 0) #18 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.bf = add i64 %i.be, -1                       ; 3 uses
  %i.bg = or disjoint i64 %i.bf, 1                ; 3 uses
  %i.bh = and i64 %i.bf, -262144
  %i.bi = inttoptr i64 %i.bh to ptr               ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 262144, !noalias !166 ; 2 uses
  %i.bk = and i64 %i.bj, 32
  %.not.i.i.i = icmp eq i64 %i.bk, 0
  %i.bl = and i64 %i.bj, 24
  %.not7.i.i.i = icmp ne i64 %i.bl, 0
  %i.bm = and i1 %.not.i.i.i, %.not7.i.i.i
  %.1.i.i.i = select i1 %i.bm, i32 1, i32 4
  call void @_ZN2v88internal21WriteBarrierModeScopeC1ENS0_6TaggedINS0_10HeapObjectEEENS0_16WriteBarrierModeE(ptr noundef nonnull align 4 dereferenceable(4) %3, i64 %i.bg, i32 noundef %.1.i.i.i) #18
  %i.bn = icmp sgt i32 %i.u, 0
  br i1 %i.bn, label %.lr.ph83, label %._crit_edge84

.lr.ph83:                                         ; preds = %bb.h
  %i.bo = inttoptr i64 %i.bf to ptr
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = zext nneg i32 %i.k to i64
  %wide.trip.count91 = zext nneg i32 %i.u to i64
  br label %bb.i

._crit_edge84:                                    ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, %bb.h
  call void @_ZN2v88internal21WriteBarrierModeScopeD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.q

bb.i:                                             ; preds = %.lr.ph83, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit
  %indvars.iv87 = phi i64 [ 0, %.lr.ph83 ], [ %indvars.iv.next88, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit ] ; 2 uses
  %i.br = load ptr, ptr %i.l, align 8
  %i.bs = getelementptr inbounds nuw [24 x i8], ptr %i.br, i64 %indvars.iv87
  %i.bt = getelementptr inbounds nuw [24 x i8], ptr %i.bs, i64 %i.bq ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load i8, ptr %i.bu, align 4
  %i.bw = and i8 %i.bv, 8
  %.not78 = icmp eq i8 %i.bw, 0
  br i1 %.not78, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bx = load i32, ptr %i.bt, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %.sroa.05.0.copyload = load ptr, ptr %i.by, align 8
  %i.bz = load i64, ptr %.sroa.05.0.copyload, align 8 ; 5 uses
  %i.ca = load i32, ptr %3, align 4
  %i.cb = sext i32 %i.bx to i64
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.cb ; 2 uses
  store atomic volatile i64 %i.bz, ptr %i.cc monotonic, align 8
  %i.cd = icmp sgt i32 %i.ca, 1
  %i.ce = trunc i64 %i.bz to i1
  %or.cond.i.i.i.i = select i1 %i.cd, i1 %i.ce, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.k, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.k:                                             ; preds = %bb.j
  %i.cf = ptrtoint ptr %i.cc to i64               ; 2 uses
  %i.cg = load i64, ptr %i.bi, align 262144       ; 2 uses
  %i.ch = and i64 %i.cg, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.ch, 0
  %i.ci = and i64 %i.cg, 25
  %.not37.i.i.i.i.i = icmp eq i64 %i.ci, 0
  br i1 %.not37.i.i.i.i.i, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.cj = and i64 %i.bz, -262144
  %i.ck = inttoptr i64 %i.cj to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.ck, align 262144
  %i.cl = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.cl, 0
  br i1 %.not38.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.bg, i64 noundef %i.cf, i64 %i.bz) #18
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.o, !prof !6

bb.o:                                             ; preds = %bb.n
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.bg, i64 %i.cf, i64 %i.bz) #18
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %bb.o, %bb.n, %bb.j, %bb.i
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1 ; 2 uses
  %exitcond92.not = icmp eq i64 %indvars.iv.next88, %wide.trip.count91
  br i1 %exitcond92.not, label %._crit_edge84, label %bb.i, !llvm.loop !171

bb.p:                                             ; preds = %.critedge
  %i.cm = load ptr, ptr %0, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 864
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge, %._crit_edge84, %bb.p
  %.sroa.064.0 = phi ptr [ %i.cn, %bb.p ], [ %i.ag, %._crit_edge ], [ %i.bd, %._crit_edge84 ]
  %.0 = phi i8 [ 3, %bb.p ], [ 13, %._crit_edge ], [ 3, %._crit_edge84 ] ; 2 uses
  %i.co = sub i32 %i.u, %i.w                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.cp = load ptr, ptr %0, align 8               ; 3 uses
  store ptr %i.cp, ptr %4, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i8 %.0, ptr %i.cq, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  store i32 %i.co, ptr %i.cr, align 4
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ct, i8 0, i64 24, i1 false)
  store ptr %.sroa.068.0, ptr %i.cu, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  store i32 0, ptr %i.cv, align 8
  %i.cw = icmp eq ptr %.sroa.068.0, null
  br i1 %i.cw, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cx = load i64, ptr %.sroa.068.0, align 8     ; 2 uses
  %i.cy = add i64 %i.cx, 14
  %i.cz = inttoptr i64 %i.cy to ptr
  %i.da = load i8, ptr %i.cz, align 1
  %i.db = lshr i8 %i.da, 2
  %.not.i.i = icmp eq i8 %i.db, %.0
  br i1 %.not.i.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dc = add i64 %i.cx, 15
  %i.dd = inttoptr i64 %i.dc to ptr
  %i.de = load atomic volatile i32, ptr %i.dd acquire, align 4
  %i.df = lshr i32 %i.de, 10
  %i.dg = and i32 %i.df, 1023                     ; 2 uses
  %i.dh = load i32, ptr %i.cr, align 4            ; 2 uses
  %.not16.i.i = icmp slt i32 %i.dg, %i.dh
  br i1 %.not16.i.i, label %._crit_edge.i, label %_ZN2v88internal19JSDataObjectBuilder36TryInitializeMapFromExpectedFinalMapEv.exit.i

._crit_edge.i:                                    ; preds = %bb.s
  %.pre.i = load ptr, ptr %4, align 8
  br label %bb.t

_ZN2v88internal19JSDataObjectBuilder36TryInitializeMapFromExpectedFinalMapEv.exit.i: ; preds = %bb.s
  %i.di = load i64, ptr %i.cu, align 8
  store i64 %i.di, ptr %i.ct, align 8
  store i32 %i.dg, ptr %i.cv, align 8
  br label %_ZN2v88internal19JSDataObjectBuilderC2EPNS0_7IsolateENS0_12ElementsKindEiNS0_12DirectHandleINS0_3MapEEENS1_14HeapNumberModeE.exit

bb.t:                                             ; preds = %._crit_edge.i, %bb.r, %bb.q
  %i.dj = phi i32 [ %i.dh, %._crit_edge.i ], [ %i.co, %bb.r ], [ %i.co, %bb.q ]
end_hunk_2
begin_hunk_3_@_ZN2v84base11SmallVectorIiLm16ESaIiEE4GrowEv:bb.a

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIiLm16ESaIiEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %0, align 8                ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.h)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.j = sub nuw nsw i64 64, %i.i                 ; 2 uses
  %i.k = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.k, label %bb.b, label %bb.e, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %spec.select.i.i, 2305843009213693951
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #19
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #19
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = shl nuw i64 4, %i.j
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #20 ; 5 uses
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.p, %i.f                       ; 4 uses
  %i.r = icmp sgt i64 %i.q, 4
  br i1 %i.r, label %bb.f, label %bb.g, !prof !6

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.o, ptr align 4 %i.b, i64 %i.q, i1 false)
  br label %_ZSt18uninitialized_moveIPiS0_ET0_T_S2_S1_.exit

bb.g:                                             ; preds = %bb.e
  %i.s = icmp eq i64 %i.q, 4
  br i1 %i.s, label %bb.h, label %_ZSt18uninitialized_moveIPiS0_ET0_T_S2_S1_.exit

bb.h:                                             ; preds = %bb.g
  %i.t = load i32, ptr %i.b, align 4
  store i32 %i.t, ptr %i.o, align 4
  br label %_ZSt18uninitialized_moveIPiS0_ET0_T_S2_S1_.exit

_ZSt18uninitialized_moveIPiS0_ET0_T_S2_S1_.exit:  ; preds = %bb.f, %bb.g, %bb.h
  %i.u = shl nuw i64 1, %i.j
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIiLm16ESaIiEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  store ptr %i.o, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.q
  store ptr %i.v, ptr %i.a, align 8
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.u
  store ptr %i.w, ptr %i.c, align 8
  ret void
}

declare ptr @_ZN2v88internal7Factory18NewProperSubStringENS0_12DirectHandleINS0_6StringEEEjj(ptr noundef nonnull align 1 dereferenceable(1), ptr, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(36) ptr @_ZN2v88internal10JsonParserItE16JsonContinuationaSEOS3_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8
  store ptr %i.c, ptr %0, align 8
  br label %_ZN2v88internal11HandleScopeaSEOS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 560
  store ptr %i.e, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 576 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8
  %i.k = add nsw i32 %i.j, -1
  store i32 %i.k, ptr %i.i, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 568 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8
  %.not.i.i = icmp eq ptr %i.m, %i.g
  br i1 %.not.i.i, label %_ZN2v88internal11HandleScopeaSEOS1_.exit, label %bb.d, !prof !6

bb.d:                                             ; preds = %bb.c
  store ptr %i.g, ptr %i.l, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %i.a) #18
  br label %_ZN2v88internal11HandleScopeaSEOS1_.exit

_ZN2v88internal11HandleScopeaSEOS1_.exit:         ; preds = %bb.b, %bb.c, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.r, ptr %i.s, align 8
  store ptr null, ptr %1, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.t, ptr noundef nonnull align 8 dereferenceable(12) %i.u, i64 12, i1 false)
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2v88internal10JsonParserItE16JsonContinuationESaIS4_EE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -40 ; 2 uses
  store ptr %i.c, ptr %i.a, align 8
  %i.d = load ptr, ptr %i.c, align 8              ; 5 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZSt10destroy_atIN2v88internal10JsonParserItE16JsonContinuationEEvPT_.exit, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 -32
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr %i.b, i64 -24
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 560
  store ptr %i.g, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 576 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8
  %i.m = add nsw i32 %i.l, -1
  store i32 %i.m, ptr %i.k, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 568 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8
  %.not.i.i.i = icmp eq ptr %i.o, %i.i
  br i1 %.not.i.i.i, label %_ZSt10destroy_atIN2v88internal10JsonParserItE16JsonContinuationEEvPT_.exit, label %bb.c, !prof !6

bb.c:                                             ; preds = %bb.b
  store ptr %i.i, ptr %i.n, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %i.d) #18
  br label %_ZSt10destroy_atIN2v88internal10JsonParserItE16JsonContinuationEEvPT_.exit

_ZSt10destroy_atIN2v88internal10JsonParserItE16JsonContinuationEEvPT_.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN2v88internal10JsonParserItE15BuildJsonObjectILb1EEENS0_6HandleINS0_8JSObjectEEERKNS2_16JsonContinuationENS0_12DirectHandleINS0_3MapEEE(ptr noundef nonnull align 8 dereferenceable(928) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::WriteBarrierModeScope", align 4 ; 5 uses
  %4 = alloca %"class.v8::internal::JSDataObjectBuilder", align 8 ; 11 uses
  %5 = alloca %"class.v8::internal::JsonParser<unsigned short>::NamedPropertyIterator", align 8 ; 4 uses
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %2, align 8
  %i.c = add i64 %i.b, 15
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load atomic volatile i32, ptr %i.d acquire, align 4
  %i.f = and i32 %i.e, 16777216
  %.not76 = icmp eq i32 %i.f, 0
  br i1 %.not76, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8
  %i.h = tail call ptr @_ZN2v88internal3Map6UpdateEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef %i.g, ptr nonnull %2) #18
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.c, %bb.b
  %.sroa.068.0 = phi ptr [ %2, %bb.b ], [ %i.h, %bb.c ], [ null, %bb.a ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load i32, ptr %i.i, align 8
  %i.k = lshr i32 %i.j, 2                         ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = load ptr, ptr %i.l, align 8
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = sdiv exact i64 %i.r, 24
  %i.t = trunc i64 %i.s to i32
  %i.u = sub i32 %i.t, %i.k                       ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8              ; 5 uses
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %bb.p, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4
  %i.z = add i32 %i.y, 1                          ; 2 uses
  %i.aa = lshr i32 %i.w, 1
  %i.ab = add i32 %i.aa, %i.w
  %spec.select.i.i.i = tail call i32 @llvm.usub.sat.i32(i32 %i.ab, i32 1)
  %i.ac = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %spec.select.i.i.i, i1 false)
  %i.ad = sub nuw nsw i32 32, %i.ac
  %6 = tail call i32 @llvm.umax.i32(i32 %i.ad, i32 2)
  %i.ae = shl i32 9, %6
  %.not77 = icmp ugt i32 %i.ae, %i.z
  %i.af = load ptr, ptr %0, align 8               ; 2 uses
  br i1 %.not77, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = tail call ptr @_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE3NewINS0_7IsolateEEENS0_6HandleIS2_EEPT_jNS0_14AllocationTypeENS0_15MinimumCapacityE(ptr noundef %i.af, i32 noundef %i.w, i8 noundef zeroext 0, i32 noundef 0) #18 ; 4 uses
  %i.ah = icmp sgt i32 %i.u, 0
  br i1 %i.ah, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.ai = zext nneg i32 %i.k to i64
  %wide.trip.count = zext nneg i32 %i.u to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.g, %bb.e
  %i.aj = load i64, ptr %i.ag, align 8
  %i.ak = add i64 %i.aj, -1
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load i32, ptr %i.v, align 8
  %i.an = sext i32 %i.am to i64
  %i.ao = shl nsw i64 %i.an, 32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store atomic volatile i64 %i.ao, ptr %i.ap monotonic, align 8
  %i.aq = load i64, ptr %i.ag, align 8
  %i.ar = add i64 %i.aq, -1
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = load i32, ptr %i.x, align 4
  tail call void @_ZN2v88internal16NumberDictionary18UpdateMaxNumberKeyEjNS0_12DirectHandleINS0_8JSObjectEEE(ptr noundef nonnull align 4 dereferenceable(16) %i.as, i32 noundef %i.at, ptr null) #18
  br label %bb.q

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %i.au = load ptr, ptr %i.l, align 8
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %i.au, i64 %indvars.iv
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %i.ai ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load i8, ptr %i.ax, align 4
  %i.az = and i8 %i.ay, 8
  %.not79 = icmp eq i8 %i.az, 0
  br i1 %.not79, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.ba = load i32, ptr %i.aw, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.sroa.015.0.copyload = load ptr, ptr %i.bb, align 8
  %i.bc = load ptr, ptr %0, align 8
  tail call void @_ZN2v88internal16NumberDictionary12UncheckedSetEPNS0_7IsolateENS0_12DirectHandleIS1_EEjNS4_INS0_6ObjectEEE(ptr noundef %i.bc, ptr %i.ag, i32 noundef %i.ba, ptr %.sroa.015.0.copyload) #18
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !213

bb.h:                                             ; preds = %bb.d
  %i.bd = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE22NewFixedArrayWithHolesEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %i.af, i32 noundef %i.z, i8 noundef zeroext 0) #18 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.bf = add i64 %i.be, -1                       ; 3 uses
  %i.bg = or disjoint i64 %i.bf, 1                ; 3 uses
  %i.bh = and i64 %i.bf, -262144
  %i.bi = inttoptr i64 %i.bh to ptr               ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 262144, !noalias !214 ; 2 uses
  %i.bk = and i64 %i.bj, 32
  %.not.i.i.i = icmp eq i64 %i.bk, 0
  %i.bl = and i64 %i.bj, 24
  %.not7.i.i.i = icmp ne i64 %i.bl, 0
  %i.bm = and i1 %.not.i.i.i, %.not7.i.i.i
  %.1.i.i.i = select i1 %i.bm, i32 1, i32 4
  call void @_ZN2v88internal21WriteBarrierModeScopeC1ENS0_6TaggedINS0_10HeapObjectEEENS0_16WriteBarrierModeE(ptr noundef nonnull align 4 dereferenceable(4) %3, i64 %i.bg, i32 noundef %.1.i.i.i) #18
  %i.bn = icmp sgt i32 %i.u, 0
  br i1 %i.bn, label %.lr.ph83, label %._crit_edge84

.lr.ph83:                                         ; preds = %bb.h
  %i.bo = inttoptr i64 %i.bf to ptr
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = zext nneg i32 %i.k to i64
  %wide.trip.count91 = zext nneg i32 %i.u to i64
  br label %bb.i

._crit_edge84:                                    ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, %bb.h
  call void @_ZN2v88internal21WriteBarrierModeScopeD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.q

bb.i:                                             ; preds = %.lr.ph83, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit
  %indvars.iv87 = phi i64 [ 0, %.lr.ph83 ], [ %indvars.iv.next88, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit ] ; 2 uses
  %i.br = load ptr, ptr %i.l, align 8
  %i.bs = getelementptr inbounds nuw [24 x i8], ptr %i.br, i64 %indvars.iv87
  %i.bt = getelementptr inbounds nuw [24 x i8], ptr %i.bs, i64 %i.bq ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load i8, ptr %i.bu, align 4
  %i.bw = and i8 %i.bv, 8
  %.not78 = icmp eq i8 %i.bw, 0
  br i1 %.not78, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bx = load i32, ptr %i.bt, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %.sroa.05.0.copyload = load ptr, ptr %i.by, align 8
  %i.bz = load i64, ptr %.sroa.05.0.copyload, align 8 ; 5 uses
  %i.ca = load i32, ptr %3, align 4
  %i.cb = sext i32 %i.bx to i64
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.cb ; 2 uses
  store atomic volatile i64 %i.bz, ptr %i.cc monotonic, align 8
  %i.cd = icmp sgt i32 %i.ca, 1
  %i.ce = trunc i64 %i.bz to i1
  %or.cond.i.i.i.i = select i1 %i.cd, i1 %i.ce, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.k, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.k:                                             ; preds = %bb.j
  %i.cf = ptrtoint ptr %i.cc to i64               ; 2 uses
  %i.cg = load i64, ptr %i.bi, align 262144       ; 2 uses
  %i.ch = and i64 %i.cg, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.ch, 0
  %i.ci = and i64 %i.cg, 25
  %.not37.i.i.i.i.i = icmp eq i64 %i.ci, 0
  br i1 %.not37.i.i.i.i.i, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.cj = and i64 %i.bz, -262144
  %i.ck = inttoptr i64 %i.cj to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.ck, align 262144
  %i.cl = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.cl, 0
  br i1 %.not38.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.bg, i64 noundef %i.cf, i64 %i.bz) #18
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.o, !prof !6

bb.o:                                             ; preds = %bb.n
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.bg, i64 %i.cf, i64 %i.bz) #18
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %bb.o, %bb.n, %bb.j, %bb.i
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1 ; 2 uses
  %exitcond92.not = icmp eq i64 %indvars.iv.next88, %wide.trip.count91
  br i1 %exitcond92.not, label %._crit_edge84, label %bb.i, !llvm.loop !219

bb.p:                                             ; preds = %.critedge
  %i.cm = load ptr, ptr %0, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 864
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge, %._crit_edge84, %bb.p
  %.sroa.064.0 = phi ptr [ %i.cn, %bb.p ], [ %i.ag, %._crit_edge ], [ %i.bd, %._crit_edge84 ]
  %.0 = phi i8 [ 3, %bb.p ], [ 13, %._crit_edge ], [ 3, %._crit_edge84 ] ; 2 uses
  %i.co = sub i32 %i.u, %i.w                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.cp = load ptr, ptr %0, align 8               ; 3 uses
  store ptr %i.cp, ptr %4, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i8 %.0, ptr %i.cq, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  store i32 %i.co, ptr %i.cr, align 4
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ct, i8 0, i64 24, i1 false)
  store ptr %.sroa.068.0, ptr %i.cu, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  store i32 0, ptr %i.cv, align 8
  %i.cw = icmp eq ptr %.sroa.068.0, null
  br i1 %i.cw, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cx = load i64, ptr %.sroa.068.0, align 8     ; 2 uses
  %i.cy = add i64 %i.cx, 14
  %i.cz = inttoptr i64 %i.cy to ptr
  %i.da = load i8, ptr %i.cz, align 1
  %i.db = lshr i8 %i.da, 2
  %.not.i.i = icmp eq i8 %i.db, %.0
  br i1 %.not.i.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dc = add i64 %i.cx, 15
  %i.dd = inttoptr i64 %i.dc to ptr
  %i.de = load atomic volatile i32, ptr %i.dd acquire, align 4
  %i.df = lshr i32 %i.de, 10
  %i.dg = and i32 %i.df, 1023                     ; 2 uses
  %i.dh = load i32, ptr %i.cr, align 4            ; 2 uses
  %.not16.i.i = icmp slt i32 %i.dg, %i.dh
  br i1 %.not16.i.i, label %._crit_edge.i, label %_ZN2v88internal19JSDataObjectBuilder36TryInitializeMapFromExpectedFinalMapEv.exit.i

._crit_edge.i:                                    ; preds = %bb.s
  %.pre.i = load ptr, ptr %4, align 8
  br label %bb.t

_ZN2v88internal19JSDataObjectBuilder36TryInitializeMapFromExpectedFinalMapEv.exit.i: ; preds = %bb.s
  %i.di = load i64, ptr %i.cu, align 8
  store i64 %i.di, ptr %i.ct, align 8
  store i32 %i.dg, ptr %i.cv, align 8
  br label %_ZN2v88internal19JSDataObjectBuilderC2EPNS0_7IsolateENS0_12ElementsKindEiNS0_12DirectHandleINS0_3MapEEENS1_14HeapNumberModeE.exit

bb.t:                                             ; preds = %._crit_edge.i, %bb.r, %bb.q
  %i.dj = phi i32 [ %i.dh, %._crit_edge.i ], [ %i.co, %bb.r ], [ %i.co, %bb.q ]
end_hunk_3
