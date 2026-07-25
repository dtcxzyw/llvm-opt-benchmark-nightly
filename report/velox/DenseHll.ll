inline.NumInlined: 935
inline.NumDeleted: 340
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNK8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE11getOverflowEi:bb.a

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef i32 @_ZNK8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE17findOverflowEntryEi(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i16, ptr %i.a, align 8, !tbaa !61   ; 2 uses
  %i.c = icmp sgt i16 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %wide.trip.count = zext nneg i16 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !50
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv
  %i.g = load i16, ptr %i.f, align 2, !tbaa !60
  %i.h = zext i16 %i.g to i32
  %i.i = icmp eq i32 %1, %i.h
  br i1 %i.i, label %._crit_edge.loopexit.split.loop.exit14, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !66

._crit_edge.loopexit.split.loop.exit14:           ; preds = %bb.b
  %i.j = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %._crit_edge.loopexit.split.loop.exit14, %bb.a
  %i.k = phi i32 [ -1, %bb.a ], [ %i.j, %._crit_edge.loopexit.split.loop.exit14 ], [ -1, %bb.c ]
  ret i32 %i.k
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE11addOverflowEia(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %1, i8 noundef signext %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !61
  %i.c = sext i16 %i.b to i64                     ; 4 uses
  %i.d = add nsw i64 %i.c, 1                      ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !62   ; 2 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !50   ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 1                   ; 3 uses
  %i.m = icmp ugt i64 %i.d, %i.l
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = sub nuw nsw i64 %i.d, %i.l
  tail call void @_ZNSt6vectorItN8facebook5velox12StlAllocatorItEEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 noundef %i.o)
  %.pre = load i16, ptr %i.a, align 8, !tbaa !61
  %.pre5 = sext i16 %.pre to i64                  ; 2 uses
  %.pre6 = add nsw i64 %.pre5, 1
  br label %_ZNSt6vectorItN8facebook5velox12StlAllocatorItEEE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.p = icmp ult i64 %i.d, %i.l
  br i1 %i.p, label %bb.d, label %_ZNSt6vectorItN8facebook5velox12StlAllocatorItEEE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.d ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, %i.q
  br i1 %.not.i.i, label %_ZNSt6vectorItN8facebook5velox12StlAllocatorItEEE6resizeEm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.q, ptr %i.f, align 8, !tbaa !62
  br label %_ZNSt6vectorItN8facebook5velox12StlAllocatorItEEE6resizeEm.exit

_ZNSt6vectorItN8facebook5velox12StlAllocatorItEEE6resizeEm.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.pre-phi7 = phi i64 [ %.pre6, %bb.b ], [ %i.d, %bb.c ], [ %i.d, %bb.d ], [ %i.d, %bb.e ] ; 4 uses
  %.pre-phi = phi i64 [ %.pre5, %bb.b ], [ %i.c, %bb.c ], [ %i.c, %bb.d ], [ %i.c, %bb.e ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !46   ; 2 uses
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !47   ; 5 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w                       ; 3 uses
  %i.y = icmp ugt i64 %.pre-phi7, %i.x
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt6vectorItN8facebook5velox12StlAllocatorItEEE6resizeEm.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aa = sub nuw i64 %.pre-phi7, %i.x
  tail call void @_ZNSt6vectorIaN8facebook5velox12StlAllocatorIaEEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(32) %i.z, i64 noundef %i.aa)
  %.pre3 = load i16, ptr %i.a, align 8, !tbaa !61
  %.pre4 = load ptr, ptr %i.r, align 8, !tbaa !47
  %.pre8 = sext i16 %.pre3 to i64
  br label %_ZNSt6vectorIaN8facebook5velox12StlAllocatorIaEEE6resizeEm.exit

bb.g:                                             ; preds = %_ZNSt6vectorItN8facebook5velox12StlAllocatorItEEE6resizeEm.exit
  %i.ab = icmp ult i64 %.pre-phi7, %i.x
  br i1 %i.ab, label %bb.h, label %_ZNSt6vectorIaN8facebook5velox12StlAllocatorIaEEE6resizeEm.exit

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 %.pre-phi7 ; 2 uses
  %.not.i.i2 = icmp eq ptr %i.t, %i.ac
  br i1 %.not.i.i2, label %_ZNSt6vectorIaN8facebook5velox12StlAllocatorIaEEE6resizeEm.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.ac, ptr %i.s, align 8, !tbaa !46
  br label %_ZNSt6vectorIaN8facebook5velox12StlAllocatorIaEEE6resizeEm.exit

_ZNSt6vectorIaN8facebook5velox12StlAllocatorIaEEE6resizeEm.exit: ; preds = %bb.f, %bb.g, %bb.h, %bb.i
  %.pre-phi9 = phi i64 [ %.pre8, %bb.f ], [ %.pre-phi, %bb.g ], [ %.pre-phi, %bb.h ], [ %.pre-phi, %bb.i ]
  %i.ad = phi ptr [ %.pre4, %bb.f ], [ %i.u, %bb.g ], [ %i.u, %bb.h ], [ %i.u, %bb.i ]
  %i.ae = trunc i32 %1 to i16
  %i.af = load ptr, ptr %i.e, align 8, !tbaa !50
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %.pre-phi9
  store i16 %i.ae, ptr %i.ag, align 2, !tbaa !60
  %i.ah = load i16, ptr %i.a, align 8, !tbaa !61
  %i.ai = sext i16 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ai
  store i8 %2, ptr %i.aj, align 1, !tbaa !30
  %i.ak = load i16, ptr %i.a, align 8, !tbaa !61
  %i.al = add i16 %i.ak, 1
  store i16 %i.al, ptr %i.a, align 8, !tbaa !61
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE8setDeltaEia(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %1, i8 noundef signext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ashr i32 %1, 1
  %.tr.i = trunc i32 %1 to i8
  %i.b = shl i8 %.tr.i, 2
  %i.c = and i8 %i.b, 4                           ; 2 uses
  %i.d = xor i8 %i.c, 4
  %i.e = lshr exact i8 -16, %i.c
  %i.f = xor i8 %i.e, -1
  %i.g = sext i32 %i.a to i64                     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !47
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.g ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !30
  %i.l = and i8 %i.k, %i.f
  store i8 %i.l, ptr %i.j, align 1, !tbaa !30
  %i.m = shl i8 %2, %i.d
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !47
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.g ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !30
  %i.q = or i8 %i.p, %i.m
  store i8 %i.q, ptr %i.o, align 1, !tbaa !30
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE22adjustBaselineIfNeededEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !45
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %.lr.ph42, label %._crit_edge

.lr.ph42:                                         ; preds = %bb.a
  %i.d = load i8, ptr %0, align 8, !tbaa !44      ; 2 uses
  %i.e = zext nneg i8 %i.d to i32
  %i.f = shl nuw i32 1, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not = icmp ne i8 %i.d, 31
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  tail call void @llvm.assume(i1 %.not)
  %smax = tail call i32 @llvm.smax.i32(i32 %i.f, i32 1)
  br label %.lr.ph41.us

.lr.ph41.us:                                      ; preds = %.lr.ph42, %..loopexit_crit_edge.us
  %i.l = load i8, ptr %i.g, align 1, !tbaa !7
  %i.m = add i8 %i.l, 1
  store i8 %i.m, ptr %i.g, align 1, !tbaa !7
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph41.us, %.critedge32.us
  %.038.us = phi i32 [ 0, %.lr.ph41.us ], [ %i.bm, %.critedge32.us ] ; 4 uses
  %i.n = lshr i32 %.038.us, 1
  %i.o = zext nneg i32 %i.n to i64                ; 2 uses
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !47
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.o ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !30    ; 2 uses
  %.tr.i.i.us = trunc i32 %.038.us to i8
  %i.s = shl i8 %.tr.i.i.us, 2
  %i.t = and i8 %i.s, 4                           ; 2 uses
  %i.u = xor i8 %i.t, 4                           ; 2 uses
  %i.v = ashr i8 %i.r, %i.u
  %i.w = and i8 %i.v, 15                          ; 2 uses
  %i.x = zext nneg i8 %i.w to i32
  %i.y = icmp eq i8 %i.w, 15
  br i1 %i.y, label %.preheader.us, label %.critedge.us

.critedge.us:                                     ; preds = %6, %.preheader.us, %bb.b
  %i.z = add nsw i32 %i.x, -1                     ; 2 uses
  %i.aa = trunc nsw i32 %i.z to i8
  %i.ab = lshr exact i8 -16, %i.t
  %i.ac = xor i8 %i.ab, -1
  %i.ad = and i8 %i.r, %i.ac
  store i8 %i.ad, ptr %i.q, align 1, !tbaa !30
  %i.ae = shl i8 %i.aa, %i.u
  %i.af = load ptr, ptr %i.h, align 8, !tbaa !47
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.o ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !30
  %i.ai = or i8 %i.ah, %i.ae
  store i8 %i.ai, ptr %i.ag, align 1, !tbaa !30
  %i.aj = icmp eq i32 %i.z, 0
  br i1 %i.aj, label %bb.c, label %.critedge32.us

bb.c:                                             ; preds = %.critedge.us
  %i.ak = load i32, ptr %i.a, align 4, !tbaa !45
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr %i.a, align 4, !tbaa !45
  br label %.critedge32.us

1:                                                ; preds = %.lr.ph.us, %6
  %indvars.iv = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next, %6 ] ; 6 uses
  %2 = getelementptr inbounds nuw [2 x i8], ptr %i.bp, i64 %indvars.iv
  %3 = load i16, ptr %2, align 2, !tbaa !60
  %4 = zext i16 %3 to i32
  %5 = icmp eq i32 %.038.us, %4
  br i1 %5, label %bb.d, label %6

6:                                                ; preds = %1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge.us, label %1, !llvm.loop !67

bb.d:                                             ; preds = %1
  %i.am = load ptr, ptr %i.k, align 8, !tbaa !47
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %indvars.iv ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !30
  %i.ap = add i8 %i.ao, -1
  store i8 %i.ap, ptr %i.an, align 1, !tbaa !30
  %i.aq = load ptr, ptr %i.k, align 8, !tbaa !47  ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %indvars.iv ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !30
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.e, label %.critedge32.us

bb.e:                                             ; preds = %bb.d
  %i.au = trunc nuw nsw i64 %indvars.iv to i32
  %i.av = load i16, ptr %i.i, align 8, !tbaa !61  ; 2 uses
  %i.aw = sext i16 %i.av to i32
  %i.ax = add nsw i32 %i.aw, -1                   ; 2 uses
  %i.ay = icmp sgt i32 %i.ax, %i.au
  br i1 %i.ay, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.az = sext i32 %i.ax to i64                   ; 4 uses
  %i.ba = load ptr, ptr %i.j, align 8, !tbaa !50  ; 2 uses
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %i.az
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !60
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %indvars.iv
  store i16 %i.bc, ptr %i.bd, align 2, !tbaa !60
  %i.be = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.az
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !30
  store i8 %i.bf, ptr %i.ar, align 1, !tbaa !30
  %i.bg = load ptr, ptr %i.j, align 8, !tbaa !50
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.bg, i64 %i.az
  store i16 0, ptr %i.bh, align 2, !tbaa !60
  %i.bi = load ptr, ptr %i.k, align 8, !tbaa !47
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.az
  store i8 0, ptr %i.bj, align 1, !tbaa !30
  %.pre = load i16, ptr %i.i, align 8, !tbaa !61
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bk = phi i16 [ %.pre, %bb.f ], [ %i.av, %bb.e ]
  %i.bl = add i16 %i.bk, -1
  store i16 %i.bl, ptr %i.i, align 8, !tbaa !61
  br label %.critedge32.us

.critedge32.us:                                   ; preds = %bb.g, %bb.d, %bb.c, %.critedge.us
  %i.bm = add nuw nsw i32 %.038.us, 1             ; 2 uses
  %exitcond47.not = icmp eq i32 %i.bm, %smax
  br i1 %exitcond47.not, label %..loopexit_crit_edge.us, label %bb.b, !llvm.loop !68

.preheader.us:                                    ; preds = %bb.b
  %i.bn = load i16, ptr %i.i, align 8, !tbaa !61  ; 2 uses
  %i.bo = icmp sgt i16 %i.bn, 0
  br i1 %i.bo, label %.lr.ph.us, label %.critedge.us

.lr.ph.us:                                        ; preds = %.preheader.us
  %wide.trip.count = zext nneg i16 %i.bn to i64
  %i.bp = load ptr, ptr %i.j, align 8, !tbaa !50
  br label %1

..loopexit_crit_edge.us:                          ; preds = %.critedge32.us
  %i.bq = load i32, ptr %i.a, align 4, !tbaa !45
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %.lr.ph41.us, label %._crit_edge, !llvm.loop !69

._crit_edge:                                      ; preds = %..loopexit_crit_edge.us, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr noundef i64 @_ZNK8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE11cardinalityEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"struct.facebook::velox::common::hll::(anonymous namespace)::DenseHllView", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.a = load i8, ptr %0, align 8, !tbaa !44
  store i8 %i.a, ptr %1, align 8, !tbaa !70
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !7
  store i8 %i.d, ptr %i.b, align 1, !tbaa !72
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !47
  store ptr %i.g, ptr %i.e, align 8, !tbaa !73
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load i16, ptr %i.i, align 8, !tbaa !61
  store i16 %i.j, ptr %i.h, align 8, !tbaa !74
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !50
  store ptr %i.m, ptr %i.k, align 8, !tbaa !75
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !47
  store ptr %i.p, ptr %i.n, align 8, !tbaa !76
  %i.q = call fastcc noundef i64 @_ZN8facebook5velox6common3hll12_GLOBAL__N_115cardinalityImplERKNS3_12DenseHllViewE(ptr noundef nonnull align 8 dereferenceable(40) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  ret i64 %i.q
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define internal fastcc noundef i64 @_ZN8facebook5velox6common3hll12_GLOBAL__N_115cardinalityImplERKNS3_12DenseHllViewE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #4 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !70      ; 6 uses
  %i.b = zext nneg i8 %i.a to i32
  %i.c = shl nuw i32 1, %i.b                      ; 8 uses
  %.not = icmp eq i8 %i.a, 31                     ; 2 uses
  br i1 %.not, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.d, align 8, !tbaa !73  ; 49 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.c, i32 1) ; 2 uses
  %min.iters.check = icmp slt i32 %i.c, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check64 = icmp slt i32 %i.c, 32
  br i1 %min.iters.check64, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i32 %smax, 2147483616
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 33 uses
  %vec.phi = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.hm, %vector.body ]
  %vec.phi65 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.hn, %vector.body ]
  %vec.phi66 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.ho, %vector.body ]
  %vec.phi67 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.hp, %vector.body ]
  %vec.ind = phi <8 x i8> [ <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %i.e = lshr exact i32 %index, 1
  %i.f = lshr exact i32 %index, 1
  %i.g = lshr exact i32 %index, 1
  %i.h = lshr exact i32 %index, 1
  %i.i = lshr exact i32 %index, 1
  %i.j = lshr exact i32 %index, 1
  %i.k = lshr exact i32 %index, 1
  %i.l = lshr exact i32 %index, 1
  %i.m = lshr exact i32 %index, 1
  %i.n = lshr exact i32 %index, 1
  %i.o = lshr exact i32 %index, 1
  %i.p = lshr exact i32 %index, 1
  %i.q = lshr exact i32 %index, 1
  %i.r = lshr exact i32 %index, 1
  %i.s = lshr exact i32 %index, 1
  %i.t = lshr exact i32 %index, 1
  %i.u = lshr exact i32 %index, 1
  %i.v = lshr exact i32 %index, 1
  %i.w = lshr exact i32 %index, 1
  %i.x = lshr exact i32 %index, 1
  %i.y = lshr exact i32 %index, 1
  %i.z = lshr exact i32 %index, 1
  %i.aa = lshr exact i32 %index, 1
  %i.ab = lshr exact i32 %index, 1
  %i.ac = lshr exact i32 %index, 1
  %i.ad = lshr exact i32 %index, 1
  %i.ae = lshr exact i32 %index, 1
  %i.af = lshr exact i32 %index, 1
  %i.ag = lshr exact i32 %index, 1
  %i.ah = lshr exact i32 %index, 1
  %i.ai = lshr exact i32 %index, 1
  %i.aj = lshr exact i32 %index, 1
  %i.ak = zext nneg i32 %i.e to i64
  %i.al = zext nneg i32 %i.f to i64
  %i.am = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ak
  %i.an = getelementptr inbounds nuw i8, ptr %.val, i64 %i.al
  %i.ao = zext nneg i32 %i.g to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  %i.ar = zext nneg i32 %i.h to i64
  %i.as = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  %i.au = zext nneg i32 %i.i to i64
  %i.av = getelementptr inbounds nuw i8, ptr %.val, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 2
  %i.ax = zext nneg i32 %i.j to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 2
  %i.ba = zext nneg i32 %i.k to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 3
  %i.bd = zext nneg i32 %i.l to i64
  %i.be = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 3
  %i.bg = zext nneg i32 %i.m to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bj = zext nneg i32 %i.n to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.bm = zext nneg i32 %i.o to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 5
  %i.bp = zext nneg i32 %i.p to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 5
  %i.bs = zext nneg i32 %i.q to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bs
end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE11getOverflowEi:bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !272
  %i.g = icmp sgt i16 %i.b, 0
  br i1 %i.g, label %.lr.ph.preheader.i, label %_ZN8facebook5velox6common3hll12_GLOBAL__N_115getOverflowImplEiiPKtPKa.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext nneg i16 %i.b to i64
  br label %.lr.ph.i

bb.b:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN8facebook5velox6common3hll12_GLOBAL__N_115getOverflowImplEiiPKtPKa.exit, label %.lr.ph.i, !llvm.loop !65

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.b ] ; 3 uses
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv.i
  %i.i = load i16, ptr %i.h, align 2, !tbaa !60
  %i.j = zext i16 %i.i to i32
  %i.k = icmp eq i32 %1, %i.j
  br i1 %i.k, label %bb.c, label %bb.b

bb.c:                                             ; preds = %.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv.i
  %i.m = load i8, ptr %i.l, align 1, !tbaa !30
  br label %_ZN8facebook5velox6common3hll12_GLOBAL__N_115getOverflowImplEiiPKtPKa.exit

_ZN8facebook5velox6common3hll12_GLOBAL__N_115getOverflowImplEiiPKtPKa.exit: ; preds = %bb.b, %bb.a, %bb.c
  %i.n = phi i8 [ %i.m, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i8 %i.n
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef i32 @_ZNK8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE17findOverflowEntryEi(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i16, ptr %i.a, align 8, !tbaa !284  ; 2 uses
  %i.c = icmp sgt i16 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %wide.trip.count = zext nneg i16 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !286
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv
  %i.g = load i16, ptr %i.f, align 2, !tbaa !60
  %i.h = zext i16 %i.g to i32
  %i.i = icmp eq i32 %1, %i.h
  br i1 %i.i, label %._crit_edge.loopexit.split.loop.exit14, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !329

._crit_edge.loopexit.split.loop.exit14:           ; preds = %bb.b
  %i.j = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %._crit_edge.loopexit.split.loop.exit14, %bb.a
  %i.k = phi i32 [ -1, %bb.a ], [ %i.j, %._crit_edge.loopexit.split.loop.exit14 ], [ -1, %bb.c ]
  ret i32 %i.k
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE11addOverflowEia(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %1, i8 noundef signext %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !284
  %i.c = sext i16 %i.b to i64
  %i.d = add nsw i64 %i.c, 1                      ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !285  ; 2 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !286  ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 1                   ; 3 uses
  %i.m = icmp ugt i64 %i.d, %i.l
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = sub nuw nsw i64 %i.d, %i.l
  tail call void @_ZNSt6vectorItN8facebook5velox6memory12StlAllocatorItEEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 noundef %i.o)
  %.pre = load i16, ptr %i.a, align 8, !tbaa !284
  %.pre2 = sext i16 %.pre to i64
  %.pre3 = add nsw i64 %.pre2, 1
  br label %_ZNSt6vectorItN8facebook5velox6memory12StlAllocatorItEEE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.p = icmp ult i64 %i.d, %i.l
  br i1 %i.p, label %bb.d, label %_ZNSt6vectorItN8facebook5velox6memory12StlAllocatorItEEE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.d ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, %i.q
  br i1 %.not.i.i, label %_ZNSt6vectorItN8facebook5velox6memory12StlAllocatorItEEE6resizeEm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.q, ptr %i.f, align 8, !tbaa !285
  br label %_ZNSt6vectorItN8facebook5velox6memory12StlAllocatorItEEE6resizeEm.exit

_ZNSt6vectorItN8facebook5velox6memory12StlAllocatorItEEE6resizeEm.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.pre-phi4 = phi i64 [ %.pre3, %bb.b ], [ %i.d, %bb.c ], [ %i.d, %bb.d ], [ %i.d, %bb.e ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @_ZNSt6vectorIaN8facebook5velox6memory12StlAllocatorIaEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 noundef %.pre-phi4)
  %i.s = trunc i32 %1 to i16
  %i.t = load i16, ptr %i.a, align 8, !tbaa !284
  %i.u = sext i16 %i.t to i64
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !286
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %i.u
  store i16 %i.s, ptr %i.w, align 2, !tbaa !60
  %i.x = load i16, ptr %i.a, align 8, !tbaa !284
  %i.y = sext i16 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !272
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i8 %2, ptr %i.ab, align 1, !tbaa !30
  %i.ac = load i16, ptr %i.a, align 8, !tbaa !284
  %i.ad = add i16 %i.ac, 1
  store i16 %i.ad, ptr %i.a, align 8, !tbaa !284
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE8setDeltaEia(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %1, i8 noundef signext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ashr i32 %1, 1
  %.tr.i = trunc i32 %1 to i8
  %i.b = shl i8 %.tr.i, 2
  %i.c = and i8 %i.b, 4                           ; 2 uses
  %i.d = xor i8 %i.c, 4
  %i.e = lshr exact i8 -16, %i.c
  %i.f = xor i8 %i.e, -1
  %i.g = sext i32 %i.a to i64                     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !272
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.g ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !30
  %i.l = and i8 %i.k, %i.f
  store i8 %i.l, ptr %i.j, align 1, !tbaa !30
  %i.m = shl i8 %2, %i.d
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !272
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.g ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !30
  %i.q = or i8 %i.p, %i.m
  store i8 %i.q, ptr %i.o, align 1, !tbaa !30
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE22adjustBaselineIfNeededEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !271
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %.lr.ph42, label %._crit_edge

.lr.ph42:                                         ; preds = %bb.a
  %i.d = load i8, ptr %0, align 8, !tbaa !270     ; 2 uses
  %i.e = zext nneg i8 %i.d to i32
  %i.f = shl nuw i32 1, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not = icmp ne i8 %i.d, 31
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  tail call void @llvm.assume(i1 %.not)
  %smax = tail call i32 @llvm.smax.i32(i32 %i.f, i32 1)
  br label %.lr.ph41.us

.lr.ph41.us:                                      ; preds = %.lr.ph42, %..loopexit_crit_edge.us
  %i.l = load i8, ptr %i.g, align 1, !tbaa !244
  %i.m = add i8 %i.l, 1
  store i8 %i.m, ptr %i.g, align 1, !tbaa !244
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph41.us, %.critedge32.us
  %.038.us = phi i32 [ 0, %.lr.ph41.us ], [ %i.bm, %.critedge32.us ] ; 4 uses
  %i.n = lshr i32 %.038.us, 1
  %i.o = zext nneg i32 %i.n to i64                ; 2 uses
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !272
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.o ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !30    ; 2 uses
  %.tr.i.i.us = trunc i32 %.038.us to i8
  %i.s = shl i8 %.tr.i.i.us, 2
  %i.t = and i8 %i.s, 4                           ; 2 uses
  %i.u = xor i8 %i.t, 4                           ; 2 uses
  %i.v = ashr i8 %i.r, %i.u
  %i.w = and i8 %i.v, 15                          ; 2 uses
  %i.x = zext nneg i8 %i.w to i32
  %i.y = icmp eq i8 %i.w, 15
  br i1 %i.y, label %.preheader.us, label %.critedge.us

.critedge.us:                                     ; preds = %6, %.preheader.us, %bb.b
  %i.z = add nsw i32 %i.x, -1                     ; 2 uses
  %i.aa = trunc nsw i32 %i.z to i8
  %i.ab = lshr exact i8 -16, %i.t
  %i.ac = xor i8 %i.ab, -1
  %i.ad = and i8 %i.r, %i.ac
  store i8 %i.ad, ptr %i.q, align 1, !tbaa !30
  %i.ae = shl i8 %i.aa, %i.u
  %i.af = load ptr, ptr %i.h, align 8, !tbaa !272
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.o ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !30
  %i.ai = or i8 %i.ah, %i.ae
  store i8 %i.ai, ptr %i.ag, align 1, !tbaa !30
  %i.aj = icmp eq i32 %i.z, 0
  br i1 %i.aj, label %bb.c, label %.critedge32.us

bb.c:                                             ; preds = %.critedge.us
  %i.ak = load i32, ptr %i.a, align 4, !tbaa !271
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr %i.a, align 4, !tbaa !271
  br label %.critedge32.us

1:                                                ; preds = %.lr.ph.us, %6
  %indvars.iv = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next, %6 ] ; 6 uses
  %2 = getelementptr inbounds nuw [2 x i8], ptr %i.bp, i64 %indvars.iv
  %3 = load i16, ptr %2, align 2, !tbaa !60
  %4 = zext i16 %3 to i32
  %5 = icmp eq i32 %.038.us, %4
  br i1 %5, label %bb.d, label %6

6:                                                ; preds = %1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge.us, label %1, !llvm.loop !330

bb.d:                                             ; preds = %1
  %i.am = load ptr, ptr %i.k, align 8, !tbaa !272
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %indvars.iv ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !30
  %i.ap = add i8 %i.ao, -1
  store i8 %i.ap, ptr %i.an, align 1, !tbaa !30
  %i.aq = load ptr, ptr %i.k, align 8, !tbaa !272 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %indvars.iv ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !30
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.e, label %.critedge32.us

bb.e:                                             ; preds = %bb.d
  %i.au = trunc nuw nsw i64 %indvars.iv to i32
  %i.av = load i16, ptr %i.i, align 8, !tbaa !284 ; 2 uses
  %i.aw = sext i16 %i.av to i32
  %i.ax = add nsw i32 %i.aw, -1                   ; 2 uses
  %i.ay = icmp sgt i32 %i.ax, %i.au
  br i1 %i.ay, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.az = sext i32 %i.ax to i64                   ; 4 uses
  %i.ba = load ptr, ptr %i.j, align 8, !tbaa !286 ; 2 uses
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %i.az
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !60
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %indvars.iv
  store i16 %i.bc, ptr %i.bd, align 2, !tbaa !60
  %i.be = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.az
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !30
  store i8 %i.bf, ptr %i.ar, align 1, !tbaa !30
  %i.bg = load ptr, ptr %i.j, align 8, !tbaa !286
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.bg, i64 %i.az
  store i16 0, ptr %i.bh, align 2, !tbaa !60
  %i.bi = load ptr, ptr %i.k, align 8, !tbaa !272
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.az
  store i8 0, ptr %i.bj, align 1, !tbaa !30
  %.pre = load i16, ptr %i.i, align 8, !tbaa !284
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bk = phi i16 [ %.pre, %bb.f ], [ %i.av, %bb.e ]
  %i.bl = add i16 %i.bk, -1
  store i16 %i.bl, ptr %i.i, align 8, !tbaa !284
  br label %.critedge32.us

.critedge32.us:                                   ; preds = %bb.g, %bb.d, %bb.c, %.critedge.us
  %i.bm = add nuw nsw i32 %.038.us, 1             ; 2 uses
  %exitcond47.not = icmp eq i32 %i.bm, %smax
  br i1 %exitcond47.not, label %..loopexit_crit_edge.us, label %bb.b, !llvm.loop !331

.preheader.us:                                    ; preds = %bb.b
  %i.bn = load i16, ptr %i.i, align 8, !tbaa !284 ; 2 uses
  %i.bo = icmp sgt i16 %i.bn, 0
  br i1 %i.bo, label %.lr.ph.us, label %.critedge.us

.lr.ph.us:                                        ; preds = %.preheader.us
  %wide.trip.count = zext nneg i16 %i.bn to i64
  %i.bp = load ptr, ptr %i.j, align 8, !tbaa !286
  br label %1

..loopexit_crit_edge.us:                          ; preds = %.critedge32.us
  %i.bq = load i32, ptr %i.a, align 4, !tbaa !271
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %.lr.ph41.us, label %._crit_edge, !llvm.loop !332

._crit_edge:                                      ; preds = %..loopexit_crit_edge.us, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr noundef i64 @_ZNK8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE11cardinalityEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"struct.facebook::velox::common::hll::(anonymous namespace)::DenseHllView", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.a = load i8, ptr %0, align 8, !tbaa !270
  store i8 %i.a, ptr %1, align 8, !tbaa !70
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !244
  store i8 %i.d, ptr %i.b, align 1, !tbaa !72
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !272
  store ptr %i.g, ptr %i.e, align 8, !tbaa !73
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load i16, ptr %i.i, align 8, !tbaa !284
  store i16 %i.j, ptr %i.h, align 8, !tbaa !74
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !286
  store ptr %i.m, ptr %i.k, align 8, !tbaa !75
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !272
  store ptr %i.p, ptr %i.n, align 8, !tbaa !76
  %i.q = call fastcc noundef i64 @_ZN8facebook5velox6common3hll12_GLOBAL__N_115cardinalityImplERKNS3_12DenseHllViewE(ptr noundef nonnull align 8 dereferenceable(40) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  ret i64 %i.q
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE9serializeEPc(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !284  ; 2 uses
  %i.c = icmp sgt i16 %i.b, 1
  br i1 %i.c, label %.lr.ph.i, label %_ZN8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE13sortOverflowsEv.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i
  %i.f = phi i16 [ %i.b, %.lr.ph.i ], [ %i.ai, %bb.f ]
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.f ] ; 6 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !286  ; 3 uses
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %indvars.iv.i
  %i.i = load i16, ptr %i.h, align 2, !tbaa !60   ; 2 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.j = icmp sgt i64 %indvars.iv26.i27, 1
  br i1 %i.j, label %bb.d, label %.critedge.i, !llvm.loop !333

bb.d:                                             ; preds = %bb.b, %bb.c
  %indvars.iv26.i27 = phi i64 [ %indvars.iv.i, %bb.b ], [ %indvars.iv.next27.i, %bb.c ] ; 3 uses
  %indvars.iv.next27.i = add nsw i64 %indvars.iv26.i27, -1 ; 3 uses
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %indvars.iv.next27.i
  %i.l = load i16, ptr %i.k, align 2, !tbaa !60
  %i.m = icmp ugt i16 %i.l, %i.i
  br i1 %i.m, label %bb.c, label %.critedge.split.loop.exit31.i, !llvm.loop !333

.critedge.split.loop.exit31.i:                    ; preds = %bb.d
  %i.n = trunc nuw nsw i64 %indvars.iv26.i27 to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.c, %.critedge.split.loop.exit31.i
  %.023.in.lcssa.i = phi i32 [ %i.n, %.critedge.split.loop.exit31.i ], [ 0, %bb.c ] ; 2 uses
  %.023.lcssa.i = phi i64 [ %indvars.iv.next27.i, %.critedge.split.loop.exit31.i ], [ -1, %bb.c ] ; 2 uses
  %i.o = sext i32 %.023.in.lcssa.i to i64         ; 3 uses
  %i.p = icmp sgt i64 %indvars.iv.i, %i.o
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.critedge.i
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !272
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %indvars.iv.i
  %i.s = load i8, ptr %i.r, align 1, !tbaa !30
  %i.t = getelementptr inbounds [2 x i8], ptr %i.g, i64 %.023.lcssa.i ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.w = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.x = sub i32 %i.w, %.023.in.lcssa.i
  %i.y = sext i32 %i.x to i64                     ; 2 uses
  %i.z = shl nsw i64 %i.y, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.u, ptr nonnull align 2 %i.v, i64 %i.z, i1 false)
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !272
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 %.023.lcssa.i ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr nonnull align 1 %i.ad, i64 %i.y, i1 false)
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !286
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %i.o
  store i16 %i.i, ptr %i.af, align 2, !tbaa !60
  %i.ag = load ptr, ptr %i.e, align 8, !tbaa !272
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.o
  store i8 %i.s, ptr %i.ah, align 1, !tbaa !30
  %.pre.i = load i16, ptr %i.a, align 8, !tbaa !284
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.critedge.i
  %i.ai = phi i16 [ %.pre.i, %bb.e ], [ %i.f, %.critedge.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.aj = sext i16 %i.ai to i64
  %i.ak = icmp slt i64 %indvars.iv.next.i, %i.aj
  br i1 %i.ak, label %bb.b, label %_ZN8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE13sortOverflowsEv.exit, !llvm.loop !334

_ZN8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE13sortOverflowsEv.exit: ; preds = %bb.f, %bb.a
  store i8 3, ptr %1, align 1, !tbaa !30
  %i.al = load i8, ptr %0, align 8, !tbaa !270
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.al, ptr %i.am, align 1, !tbaa !30
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !244
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !30
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !272 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !289
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av                    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 3
  %sext = shl i64 %i.aw, 32                       ; 2 uses
  %i.ay = ashr exact i64 %sext, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ax, ptr align 1 %i.ar, i64 %i.ay, i1 false)
  %i.az = load i16, ptr %i.a, align 8, !tbaa !284 ; 3 uses
  %sext20 = add i64 %sext, 12884901888
end_hunk_1
