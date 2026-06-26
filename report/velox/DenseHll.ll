inline.NumInlined: 935
inline.NumDeleted: 340
begin_hunk_0_@_ZN8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEEC2EPKcPS4_:bb.a
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.af, !llvm.loop !63

bb.ak:                                            ; preds = %bb.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.ad
  %.pn.pn = phi { ptr, i32 } [ %i.cj, %bb.ad ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ci, %bb.ac ]
  call void @_ZNSt6vectorIaN8facebook5velox12StlAllocatorIaEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.i) #20
  call void @_ZNSt6vectorItN8facebook5velox12StlAllocatorItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.g) #20
  call void @_ZNSt6vectorIaN8facebook5velox12StlAllocatorIaEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.c) #20
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define weak_odr noundef signext i8 @_ZNK8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE8getDeltaEi(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ashr i32 %1, 1
  %i.b = sext i32 %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.b
  %i.f = load i8, ptr %i.e, align 1, !tbaa !30
  %.tr.i = trunc i32 %1 to i8
  %i.g = shl i8 %.tr.i, 2
  %i.h = and i8 %i.g, 4
  %i.i = xor i8 %i.h, 4
  %i.j = ashr i8 %i.f, %i.i
  %i.k = and i8 %i.j, 15
  ret i8 %i.k
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEEC2EPS4_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) unnamed_addr #0 comdat($_ZN8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEEC5EPS4_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i8 -1, ptr %0, align 8, !tbaa !44
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.a, align 1, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.b, align 4, !tbaa !45
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.c, align 8, !tbaa !24
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.b, label %bb.c, !prof !25

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox12StlAllocatorIaEC1EPNS0_19HashStringAllocatorEE18veloxCheckFailArgs) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = ptrtoint ptr %1 to i64                   ; 3 uses
  store i64 %i.e, ptr %i.d, align 8, !tbaa !26
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(26) %i.f, i8 0, i64 26, i1 false)
  store i64 %i.e, ptr %i.g, align 8, !tbaa !26
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.e, ptr %i.i, align 8, !tbaa !26
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: noreturn
declare void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(32), ptr) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef signext i8 @_ZNK8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE14indexBitLengthEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !44
  ret i8 %i.a
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE10insertHashEm(ptr noundef nonnull align 8 dereferenceable(120) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !44
  %i.b = sext i8 %i.a to i32                      ; 3 uses
  %i.c = sub nsw i32 64, %i.b
  %i.d = zext nneg i32 %i.c to i64
  %i.e = lshr i64 %1, %i.d
  %i.f = trunc i64 %i.e to i32
  %i.g = zext nneg i32 %i.b to i64
  %i.h = shl i64 %1, %i.g
  %i.i = add nsw i32 %i.b, -1
  %i.j = zext nneg i32 %i.i to i64
  %i.k = shl nuw i64 1, %i.j
  %i.l = or i64 %i.k, %i.h
  %i.m = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.l, i1 true)
  %i.n = trunc nuw nsw i64 %i.m to i8
  %i.o = add nuw nsw i8 %i.n, 1
  tail call void @_ZN8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE6insertEia(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %i.f, i8 noundef signext %i.o)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE6insertEia(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %1, i8 noundef signext %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = sext i8 %2 to i32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.c = load i8, ptr %i.b, align 1, !tbaa !7
  %i.d = sext i8 %i.c to i32
  %i.e = sub nsw i32 %i.a, %i.d                   ; 5 uses
  %i.f = ashr i32 %1, 1
  %i.g = sext i32 %i.f to i64                     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !47
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.g
  %i.k = load i8, ptr %i.j, align 1, !tbaa !30
  %.tr.i.i = trunc i32 %1 to i8
  %i.l = shl i8 %.tr.i.i, 2
  %i.m = and i8 %i.l, 4                           ; 2 uses
  %i.n = xor i8 %i.m, 4                           ; 2 uses
  %i.o = ashr i8 %i.k, %i.n
  %i.p = and i8 %i.o, 15                          ; 3 uses
  %i.q = zext nneg i8 %i.p to i32
  %.not = icmp sgt i32 %i.e, %i.q
  br i1 %.not, label %bb.b, label %bb.t

bb.b:                                             ; preds = %bb.a
  %i.r = icmp eq i8 %i.p, 15
  br i1 %i.r, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = load i16, ptr %i.s, align 8, !tbaa !61   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !50
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !47
  %i.y = icmp sgt i16 %i.t, 0
  br i1 %i.y, label %.lr.ph.preheader.i.i, label %_ZNK8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE11getOverflowEi.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.c
  %wide.trip.count.i.i = zext nneg i16 %i.t to i64
  br label %.lr.ph.i.i

bb.d:                                             ; preds = %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZNK8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE11getOverflowEi.exit, label %.lr.ph.i.i, !llvm.loop !65

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.d ] ; 3 uses
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %indvars.iv.i.i
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !60
  %i.ab = zext i16 %i.aa to i32
  %i.ac = icmp eq i32 %1, %i.ab
  br i1 %i.ac, label %bb.e, label %bb.d

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 %indvars.iv.i.i
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !30
  %i.af = sext i8 %i.ae to i32
  %i.ag = add nsw i32 %i.af, 15
  br label %_ZNK8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE11getOverflowEi.exit

_ZNK8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE11getOverflowEi.exit: ; preds = %bb.d, %bb.c, %bb.e
  %i.ah = phi i32 [ %i.ag, %bb.e ], [ 15, %bb.c ], [ 15, %bb.d ]
  %.not22 = icmp sgt i32 %i.e, %i.ah
  br i1 %.not22, label %bb.f, label %bb.t

bb.f:                                             ; preds = %_ZNK8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE11getOverflowEi.exit, %bb.b
  %i.ai = icmp sgt i32 %i.e, 15
  br i1 %i.ai, label %bb.g, label %bb.r

bb.g:                                             ; preds = %bb.f
  %i.aj = trunc nuw i32 %i.e to i8
  %i.ak = add i8 %i.aj, -15                       ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.am = load i16, ptr %i.al, align 8, !tbaa !61 ; 3 uses
  %i.an = icmp sgt i16 %i.am, 0
  br i1 %i.an, label %.lr.ph.i, label %._ZNK8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE17findOverflowEntryEi.exit.thread_crit_edge

._ZNK8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE17findOverflowEntryEi.exit.thread_crit_edge: ; preds = %bb.g
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !50
  br label %_ZNK8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE17findOverflowEntryEi.exit.thread

.lr.ph.i:                                         ; preds = %bb.g
  %wide.trip.count.i = zext nneg i16 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !50 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.i ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %indvars.iv.i
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !60
  %i.as = zext i16 %i.ar to i32
  %i.at = icmp eq i32 %1, %i.as
  br i1 %i.at, label %_ZNK8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE17findOverflowEntryEi.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE17findOverflowEntryEi.exit.thread, label %bb.h, !llvm.loop !66

_ZNK8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE17findOverflowEntryEi.exit: ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !47
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %indvars.iv.i
  store i8 %i.ak, ptr %i.aw, align 1, !tbaa !30
  br label %bb.r

_ZNK8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE17findOverflowEntryEi.exit.thread: ; preds = %bb.i, %._ZNK8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE17findOverflowEntryEi.exit.thread_crit_edge
  %i.ax = phi ptr [ %.pre, %._ZNK8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE17findOverflowEntryEi.exit.thread_crit_edge ], [ %i.ap, %bb.i ] ; 2 uses
  %i.ay = sext i16 %i.am to i64                   ; 4 uses
  %i.az = add nsw i64 %i.ay, 1                    ; 7 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !62 ; 2 uses
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.ax to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = ashr exact i64 %i.bf, 1                 ; 3 uses
  %i.bh = icmp ugt i64 %i.az, %i.bg
  br i1 %i.bh, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNK8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE17findOverflowEntryEi.exit.thread
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bj = sub nuw nsw i64 %i.az, %i.bg
  tail call void @_ZNSt6vectorItN8facebook5velox12StlAllocatorItEEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bi, i64 noundef %i.bj)
  %.pre.i = load i16, ptr %i.al, align 8, !tbaa !61
  %.pre5.i = sext i16 %.pre.i to i64              ; 2 uses
  %.pre6.i = add nsw i64 %.pre5.i, 1
  br label %_ZNSt6vectorItN8facebook5velox12StlAllocatorItEEE6resizeEm.exit.i

bb.k:                                             ; preds = %_ZNK8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE17findOverflowEntryEi.exit.thread
  %i.bk = icmp ult i64 %i.az, %i.bg
  br i1 %i.bk, label %bb.l, label %_ZNSt6vectorItN8facebook5velox12StlAllocatorItEEE6resizeEm.exit.i

bb.l:                                             ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %i.az ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bc, %i.bl
  br i1 %.not.i.i.i, label %_ZNSt6vectorItN8facebook5velox12StlAllocatorItEEE6resizeEm.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr %i.bl, ptr %i.bb, align 8, !tbaa !62
  br label %_ZNSt6vectorItN8facebook5velox12StlAllocatorItEEE6resizeEm.exit.i

_ZNSt6vectorItN8facebook5velox12StlAllocatorItEEE6resizeEm.exit.i: ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %.pre-phi7.i = phi i64 [ %.pre6.i, %bb.j ], [ %i.az, %bb.k ], [ %i.az, %bb.l ], [ %i.az, %bb.m ] ; 4 uses
  %.pre-phi.i = phi i64 [ %.pre5.i, %bb.j ], [ %i.ay, %bb.k ], [ %i.ay, %bb.l ], [ %i.ay, %bb.m ] ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !46 ; 2 uses
  %i.bp = load ptr, ptr %i.bm, align 8, !tbaa !47 ; 5 uses
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br                    ; 3 uses
  %i.bt = icmp ugt i64 %.pre-phi7.i, %i.bs
  br i1 %i.bt, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNSt6vectorItN8facebook5velox12StlAllocatorItEEE6resizeEm.exit.i
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bv = sub nuw i64 %.pre-phi7.i, %i.bs
  tail call void @_ZNSt6vectorIaN8facebook5velox12StlAllocatorIaEEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bu, i64 noundef %i.bv)
  %.pre3.i = load i16, ptr %i.al, align 8, !tbaa !61
  %.pre4.i = load ptr, ptr %i.bm, align 8, !tbaa !47
  %.pre8.i = sext i16 %.pre3.i to i64
  br label %_ZN8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE11addOverflowEia.exit

bb.o:                                             ; preds = %_ZNSt6vectorItN8facebook5velox12StlAllocatorItEEE6resizeEm.exit.i
  %i.bw = icmp ult i64 %.pre-phi7.i, %i.bs
  br i1 %i.bw, label %bb.p, label %_ZN8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE11addOverflowEia.exit

bb.p:                                             ; preds = %bb.o
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.pre-phi7.i ; 2 uses
  %.not.i.i2.i = icmp eq ptr %i.bo, %i.bx
  br i1 %.not.i.i2.i, label %_ZN8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE11addOverflowEia.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  store ptr %i.bx, ptr %i.bn, align 8, !tbaa !46
  br label %_ZN8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE11addOverflowEia.exit

_ZN8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE11addOverflowEia.exit: ; preds = %bb.n, %bb.o, %bb.p, %bb.q
  %.pre-phi9.i = phi i64 [ %.pre8.i, %bb.n ], [ %.pre-phi.i, %bb.o ], [ %.pre-phi.i, %bb.p ], [ %.pre-phi.i, %bb.q ]
  %i.by = phi ptr [ %.pre4.i, %bb.n ], [ %i.bp, %bb.o ], [ %i.bp, %bb.p ], [ %i.bp, %bb.q ]
  %i.bz = trunc i32 %1 to i16
  %i.ca = load ptr, ptr %i.ba, align 8, !tbaa !50
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %.pre-phi9.i
  store i16 %i.bz, ptr %i.cb, align 2, !tbaa !60
  %i.cc = load i16, ptr %i.al, align 8, !tbaa !61
  %i.cd = sext i16 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.cd
  store i8 %i.ak, ptr %i.ce, align 1, !tbaa !30
  %i.cf = load i16, ptr %i.al, align 8, !tbaa !61
  %i.cg = add i16 %i.cf, 1
  store i16 %i.cg, ptr %i.al, align 8, !tbaa !61
  br label %bb.r

bb.r:                                             ; preds = %_ZNK8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE17findOverflowEntryEi.exit, %_ZN8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE11addOverflowEia.exit, %bb.f
  %.0 = phi i32 [ %i.e, %bb.f ], [ 15, %_ZN8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE11addOverflowEia.exit ], [ 15, %_ZNK8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE17findOverflowEntryEi.exit ]
  %i.ch = trunc nuw nsw i32 %.0 to i8
  %i.ci = lshr exact i8 -16, %i.m
  %i.cj = xor i8 %i.ci, -1
  %i.ck = load ptr, ptr %i.h, align 8, !tbaa !47
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.g ; 2 uses
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !30
  %i.cn = and i8 %i.cm, %i.cj
  store i8 %i.cn, ptr %i.cl, align 1, !tbaa !30
  %i.co = shl i8 %i.ch, %i.n
  %i.cp = load ptr, ptr %i.h, align 8, !tbaa !47
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.g ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !30
  %i.cs = or i8 %i.cr, %i.co
  store i8 %i.cs, ptr %i.cq, align 1, !tbaa !30
  %i.ct = icmp eq i8 %i.p, 0
  br i1 %i.ct, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !45
  %i.cw = add nsw i32 %i.cv, -1
  store i32 %i.cw, ptr %i.cu, align 4, !tbaa !45
  tail call void @_ZN8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE22adjustBaselineIfNeededEv(ptr noundef nonnull align 8 dereferenceable(120) %0)
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %bb.a, %_ZNK8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE11getOverflowEi.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr noundef signext i8 @_ZNK8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE11getOverflowEi(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i16, ptr %i.a, align 8, !tbaa !61   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !50
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !47
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
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox6common3hll12_GLOBAL__N_115cardinalityImplERKNS3_12DenseHllViewE:bb.a
  br label %_ZNK8facebook5velox6common3hll12_GLOBAL__N_112DenseHllView8getValueEi.exit.us

_ZNK8facebook5velox6common3hll12_GLOBAL__N_112DenseHllView8getValueEi.exit.us: ; preds = %bb.e, %bb.f, %.lr.ph40.split.us
  %.0.i32.us = phi i8 [ %i.md, %.lr.ph40.split.us ], [ %i.ml, %bb.f ], [ 15, %bb.e ]
  %i.mm = add i8 %.0.i32.us, %i.kg
  %i.mn = sext i8 %i.mm to i64
  %i.mo = and i64 %i.mn, 4294967295
  %i.mp = shl nuw i64 1, %i.mo
  %i.mq = sitofp i64 %i.mp to double
  %i.mr = fdiv double 1.000000e+00, %i.mq
  %i.ms = fadd double %.02837.us, %i.mr           ; 2 uses
  %i.mt = add nuw nsw i32 %.02738.us, 1           ; 2 uses
  %exitcond54.not = icmp eq i32 %i.mt, %smax53
  br i1 %exitcond54.not, label %._crit_edge41, label %.lr.ph40.split.us, !llvm.loop !80

._crit_edge41:                                    ; preds = %.lr.ph40.split, %_ZNK8facebook5velox6common3hll12_GLOBAL__N_112DenseHllView8getValueEi.exit.us
  %.028.lcssa = phi double [ %i.ms, %_ZNK8facebook5velox6common3hll12_GLOBAL__N_112DenseHllView8getValueEi.exit.us ], [ %i.pr, %.lr.ph40.split ] ; 4 uses
  switch i8 %i.a, label %._crit_edge41.thread [
    i8 4, label %_ZN8facebook5velox6common3hll12_GLOBAL__N_15alphaEi.exit
    i8 5, label %bb.g
    i8 6, label %bb.h
  ]

bb.g:                                             ; preds = %._crit_edge41
  br label %_ZN8facebook5velox6common3hll12_GLOBAL__N_15alphaEi.exit

bb.h:                                             ; preds = %._crit_edge41
  br label %_ZN8facebook5velox6common3hll12_GLOBAL__N_15alphaEi.exit

._crit_edge41.thread:                             ; preds = %bb.d, %._crit_edge41
  %.028.lcssa62 = phi double [ %.028.lcssa, %._crit_edge41 ], [ 0.000000e+00, %bb.d ]
  %i.mu = sitofp i32 %i.c to double
  %i.mv = fdiv double 1.079000e+00, %i.mu
  %i.mw = fadd double %i.mv, 1.000000e+00
  %i.mx = fdiv double 7.213000e-01, %i.mw
  br label %_ZN8facebook5velox6common3hll12_GLOBAL__N_15alphaEi.exit

_ZN8facebook5velox6common3hll12_GLOBAL__N_15alphaEi.exit: ; preds = %._crit_edge41, %bb.g, %bb.h, %._crit_edge41.thread
  %.028.lcssa61 = phi double [ %.028.lcssa62, %._crit_edge41.thread ], [ %.028.lcssa, %bb.h ], [ %.028.lcssa, %bb.g ], [ %.028.lcssa, %._crit_edge41 ]
  %.0.i = phi double [ %i.mx, %._crit_edge41.thread ], [ 7.090000e-01, %bb.h ], [ 6.970000e-01, %bb.g ], [ 6.730000e-01, %._crit_edge41 ]
  %i.my = sitofp i32 %i.c to double               ; 2 uses
  %i.mz = fmul double %.0.i, %i.my
  %i.na = fmul double %i.mz, %i.my
  %i.nb = fdiv double %i.na, %.028.lcssa61        ; 8 uses
  %i.nc = sext i8 %i.a to i64
  %i.nd = add nsw i64 %i.nc, -4                   ; 2 uses
  %i.ne = load ptr, ptr @_ZN8facebook5velox6common3hll14BiasCorrection13kRawEstimatesE, align 8, !tbaa !81
  %i.nf = getelementptr inbounds nuw [24 x i8], ptr %i.ne, i64 %i.nd ; 2 uses
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !84 ; 6 uses
  %i.nh = load double, ptr %i.ng, align 8, !tbaa !87
  %i.ni = fcmp olt double %i.nb, %i.nh
  br i1 %i.ni, label %_ZN8facebook5velox6common3hll12_GLOBAL__N_111correctBiasEda.exit, label %bb.i

bb.i:                                             ; preds = %_ZN8facebook5velox6common3hll12_GLOBAL__N_15alphaEi.exit
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nf, i64 8
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !89
  %i.nl = ptrtoint ptr %i.nk to i64
  %i.nm = ptrtoint ptr %i.ng to i64
  %i.nn = sub i64 %i.nl, %i.nm                    ; 2 uses
  %i.no = getelementptr i8, ptr %i.ng, i64 %i.nn
  %i.np = getelementptr i8, ptr %i.no, i64 -8
  %i.nq = load double, ptr %i.np, align 8, !tbaa !87
  %i.nr = fcmp ogt double %i.nb, %i.nq
  br i1 %i.nr, label %_ZN8facebook5velox6common3hll12_GLOBAL__N_111correctBiasEda.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ns = load ptr, ptr @_ZN8facebook5velox6common3hll14BiasCorrection5kBiasE, align 8, !tbaa !81
  %i.nt = getelementptr inbounds nuw [24 x i8], ptr %i.ns, i64 %i.nd ; 2 uses
  %i.nu = lshr exact i64 %i.nn, 3
  %i.nv = trunc i64 %i.nu to i32
  %i.nw = add i32 %i.nv, -1
  br label %bb.k

bb.k:                                             ; preds = %bb.o, %bb.j
  %.0177.i.i = phi i32 [ 0, %bb.j ], [ %.219.i.i, %bb.o ] ; 2 uses
  %.0206.i.i = phi i32 [ %i.nw, %bb.j ], [ %.222.i.i, %bb.o ] ; 2 uses
  %i.nx = add i32 %.0206.i.i, %.0177.i.i
  %i.ny = lshr i32 %i.nx, 1                       ; 3 uses
  %i.nz = zext nneg i32 %i.ny to i64              ; 2 uses
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %i.ng, i64 %i.nz
  %i.ob = load double, ptr %i.oa, align 8, !tbaa !87 ; 2 uses
  %i.oc = fcmp ogt double %i.nb, %i.ob
  br i1 %i.oc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.od = add nuw nsw i32 %i.ny, 1
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.oe = fcmp olt double %i.nb, %i.ob
  br i1 %i.oe, label %bb.n, label %_ZN8facebook5velox6common3hll12_GLOBAL__N_16searchEdRKSt6vectorIdSaIdEE.exit.thread.i

bb.n:                                             ; preds = %bb.m
  %i.of = add nsw i32 %i.ny, -1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l
  %.222.i.i = phi i32 [ %i.of, %bb.n ], [ %.0206.i.i, %bb.l ] ; 2 uses
  %.219.i.i = phi i32 [ %.0177.i.i, %bb.n ], [ %i.od, %bb.l ] ; 4 uses
  %.not.i.i = icmp ugt i32 %.219.i.i, %.222.i.i
  br i1 %.not.i.i, label %_ZN8facebook5velox6common3hll12_GLOBAL__N_16searchEdRKSt6vectorIdSaIdEE.exit.i, label %bb.k, !llvm.loop !90

_ZN8facebook5velox6common3hll12_GLOBAL__N_16searchEdRKSt6vectorIdSaIdEE.exit.thread.i: ; preds = %bb.m
  %i.og = load ptr, ptr %i.nt, align 8, !tbaa !84
  %i.oh = getelementptr inbounds nuw [8 x i8], ptr %i.og, i64 %i.nz
  %i.oi = load double, ptr %i.oh, align 8, !tbaa !87
  br label %bb.p

_ZN8facebook5velox6common3hll12_GLOBAL__N_16searchEdRKSt6vectorIdSaIdEE.exit.i: ; preds = %bb.o
  %i.oj = add nsw i32 %.219.i.i, -1
  %i.ok = zext nneg i32 %i.oj to i64              ; 2 uses
  %i.ol = getelementptr inbounds nuw [8 x i8], ptr %i.ng, i64 %i.ok
  %i.om = load double, ptr %i.ol, align 8, !tbaa !87 ; 2 uses
  %i.on = load ptr, ptr %i.nt, align 8, !tbaa !84 ; 2 uses
  %i.oo = getelementptr inbounds nuw [8 x i8], ptr %i.on, i64 %i.ok
  %i.op = load double, ptr %i.oo, align 8, !tbaa !87 ; 2 uses
  %i.oq = zext nneg i32 %.219.i.i to i64          ; 2 uses
  %i.or = getelementptr inbounds nuw [8 x i8], ptr %i.ng, i64 %i.oq
  %i.os = load double, ptr %i.or, align 8, !tbaa !87
  %i.ot = getelementptr inbounds nuw [8 x i8], ptr %i.on, i64 %i.oq
  %i.ou = load double, ptr %i.ot, align 8, !tbaa !87
  %i.ov = fsub double %i.nb, %i.om
  %i.ow = fsub double %i.ou, %i.op
  %i.ox = fmul double %i.ov, %i.ow
  %i.oy = fsub double %i.os, %i.om
  %i.oz = fdiv double %i.ox, %i.oy
  %i.pa = fadd double %i.op, %i.oz
  br label %bb.p

bb.p:                                             ; preds = %_ZN8facebook5velox6common3hll12_GLOBAL__N_16searchEdRKSt6vectorIdSaIdEE.exit.i, %_ZN8facebook5velox6common3hll12_GLOBAL__N_16searchEdRKSt6vectorIdSaIdEE.exit.thread.i
  %.031.i = phi double [ %i.oi, %_ZN8facebook5velox6common3hll12_GLOBAL__N_16searchEdRKSt6vectorIdSaIdEE.exit.thread.i ], [ %i.pa, %_ZN8facebook5velox6common3hll12_GLOBAL__N_16searchEdRKSt6vectorIdSaIdEE.exit.i ]
  %i.pb = fsub double %i.nb, %.031.i
  br label %_ZN8facebook5velox6common3hll12_GLOBAL__N_111correctBiasEda.exit

.lr.ph40.split:                                   ; preds = %.lr.ph40, %.lr.ph40.split
  %.02738 = phi i32 [ %i.ps, %.lr.ph40.split ], [ 0, %.lr.ph40 ] ; 3 uses
  %.02837 = phi double [ %i.pr, %.lr.ph40.split ], [ 0.000000e+00, %.lr.ph40 ]
  %i.pc = lshr i32 %.02738, 1
  %i.pd = zext nneg i32 %i.pc to i64
  %i.pe = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.pd
  %i.pf = load i8, ptr %i.pe, align 1, !tbaa !30
  %.tr.i.i.i = trunc i32 %.02738 to i8
  %i.pg = shl i8 %.tr.i.i.i, 2
  %i.ph = and i8 %i.pg, 4
  %i.pi = xor i8 %i.ph, 4
  %i.pj = ashr i8 %i.pf, %i.pi
  %i.pk = and i8 %i.pj, 15
  %i.pl = add i8 %i.pk, %i.kg
  %i.pm = sext i8 %i.pl to i64
  %i.pn = and i64 %i.pm, 4294967295
  %i.po = shl nuw i64 1, %i.pn
  %i.pp = sitofp i64 %i.po to double
  %i.pq = fdiv double 1.000000e+00, %i.pp
  %i.pr = fadd double %.02837, %i.pq              ; 2 uses
  %i.ps = add nuw nsw i32 %.02738, 1              ; 2 uses
  %exitcond52.not = icmp eq i32 %i.ps, %smax53
  br i1 %exitcond52.not, label %._crit_edge41, label %.lr.ph40.split, !llvm.loop !80

_ZN8facebook5velox6common3hll12_GLOBAL__N_111correctBiasEda.exit: ; preds = %bb.p, %bb.i, %_ZN8facebook5velox6common3hll12_GLOBAL__N_15alphaEi.exit, %bb.c
  %.0.i31.sink = phi double [ %i.lm, %bb.c ], [ %i.pb, %bb.p ], [ %i.nb, %bb.i ], [ %i.nb, %_ZN8facebook5velox6common3hll12_GLOBAL__N_15alphaEi.exit ]
  %i.pt = tail call double @llvm.round.f64(double %.0.i31.sink)
  %.0 = fptosi double %i.pt to i64
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE9serializeEPc(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !61   ; 2 uses
  %i.c = icmp sgt i16 %i.b, 1
  br i1 %i.c, label %.lr.ph.i, label %_ZN8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE13sortOverflowsEv.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i
  %i.f = phi i16 [ %i.b, %.lr.ph.i ], [ %i.ai, %bb.f ]
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.f ] ; 6 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !50   ; 3 uses
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %indvars.iv.i
  %i.i = load i16, ptr %i.h, align 2, !tbaa !60   ; 2 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.j = icmp sgt i64 %indvars.iv26.i27, 1
  br i1 %i.j, label %bb.d, label %.critedge.i, !llvm.loop !91

bb.d:                                             ; preds = %bb.b, %bb.c
  %indvars.iv26.i27 = phi i64 [ %indvars.iv.i, %bb.b ], [ %indvars.iv.next27.i, %bb.c ] ; 3 uses
  %indvars.iv.next27.i = add nsw i64 %indvars.iv26.i27, -1 ; 3 uses
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %indvars.iv.next27.i
  %i.l = load i16, ptr %i.k, align 2, !tbaa !60
  %i.m = icmp ugt i16 %i.l, %i.i
  br i1 %i.m, label %bb.c, label %.critedge.split.loop.exit31.i, !llvm.loop !91

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
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !47
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
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !47
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 %.023.lcssa.i ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr nonnull align 1 %i.ad, i64 %i.y, i1 false)
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %i.o
  store i16 %i.i, ptr %i.af, align 2, !tbaa !60
  %i.ag = load ptr, ptr %i.e, align 8, !tbaa !47
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.o
  store i8 %i.s, ptr %i.ah, align 1, !tbaa !30
  %.pre.i = load i16, ptr %i.a, align 8, !tbaa !61
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.critedge.i
  %i.ai = phi i16 [ %.pre.i, %bb.e ], [ %i.f, %.critedge.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.aj = sext i16 %i.ai to i64
  %i.ak = icmp slt i64 %indvars.iv.next.i, %i.aj
  br i1 %i.ak, label %bb.b, label %_ZN8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE13sortOverflowsEv.exit, !llvm.loop !92

_ZN8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE13sortOverflowsEv.exit: ; preds = %bb.f, %bb.a
  store i8 3, ptr %1, align 1, !tbaa !30
  %i.al = load i8, ptr %0, align 8, !tbaa !44
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.al, ptr %i.am, align 1, !tbaa !30
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !7
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !30
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !47 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !46
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av                    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 3
  %sext = shl i64 %i.aw, 32                       ; 2 uses
  %i.ay = ashr exact i64 %sext, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ax, ptr align 1 %i.ar, i64 %i.ay, i1 false)
  %i.az = load i16, ptr %i.a, align 8, !tbaa !61  ; 3 uses
  %sext20 = add i64 %sext, 12884901888
  %i.ba = ashr exact i64 %sext20, 32
  %i.bb = getelementptr inbounds i8, ptr %1, i64 %i.ba
  store i16 %i.az, ptr %i.bb, align 2, !tbaa !60
  %.not = icmp eq i16 %i.az, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE13sortOverflowsEv.exit
  %i.bc = trunc i64 %i.aw to i32
  %i.bd = add i32 %i.bc, 5                        ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !50
  %i.bg = sext i16 %i.az to i32
  %i.bh = shl nsw i32 %i.bg, 1                    ; 2 uses
  %i.bi = sext i32 %i.bd to i64
  %i.bj = getelementptr inbounds i8, ptr %1, i64 %i.bi
  %i.bk = sext i32 %i.bh to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bj, ptr align 1 %i.bf, i64 %i.bk, i1 false)
  %i.bl = add nsw i32 %i.bh, %i.bd
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !47
  %i.bo = load i16, ptr %i.a, align 8, !tbaa !61
  %i.bp = sext i32 %i.bl to i64
  %i.bq = getelementptr inbounds i8, ptr %1, i64 %i.bp
  %i.br = sext i16 %i.bo to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bq, ptr align 1 %i.bn, i64 %i.br, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE13sortOverflowsEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE13sortOverflowsEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !61   ; 2 uses
  %i.c = icmp sgt i16 %i.b, 1
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %i.f = phi i16 [ %i.b, %.lr.ph ], [ %i.ai, %bb.f ]
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 6 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !50   ; 3 uses
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %indvars.iv
  %i.i = load i16, ptr %i.h, align 2, !tbaa !60   ; 2 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.j = icmp sgt i64 %indvars.iv2635, 1
  br i1 %i.j, label %bb.d, label %.critedge, !llvm.loop !91

bb.d:                                             ; preds = %bb.b, %bb.c
  %indvars.iv2635 = phi i64 [ %indvars.iv, %bb.b ], [ %indvars.iv.next27, %bb.c ] ; 3 uses
  %indvars.iv.next27 = add nsw i64 %indvars.iv2635, -1 ; 3 uses
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %indvars.iv.next27
  %i.l = load i16, ptr %i.k, align 2, !tbaa !60
  %i.m = icmp ugt i16 %i.l, %i.i
  br i1 %i.m, label %bb.c, label %.critedge.split.loop.exit31, !llvm.loop !91

.critedge.split.loop.exit31:                      ; preds = %bb.d
  %i.n = trunc nuw nsw i64 %indvars.iv2635 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %.critedge.split.loop.exit31
  %.023.in.lcssa = phi i32 [ %i.n, %.critedge.split.loop.exit31 ], [ 0, %bb.c ] ; 2 uses
  %.023.lcssa = phi i64 [ %indvars.iv.next27, %.critedge.split.loop.exit31 ], [ -1, %bb.c ] ; 2 uses
  %i.o = sext i32 %.023.in.lcssa to i64           ; 3 uses
  %i.p = icmp sgt i64 %indvars.iv, %i.o
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.critedge
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !47
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %indvars.iv
  %i.s = load i8, ptr %i.r, align 1, !tbaa !30
  %i.t = getelementptr inbounds [2 x i8], ptr %i.g, i64 %.023.lcssa ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.w = trunc nuw nsw i64 %indvars.iv to i32
  %i.x = sub i32 %i.w, %.023.in.lcssa
  %i.y = sext i32 %i.x to i64                     ; 2 uses
  %i.z = shl nsw i64 %i.y, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.u, ptr nonnull align 2 %i.v, i64 %i.z, i1 false)
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !47
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 %.023.lcssa ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr nonnull align 1 %i.ad, i64 %i.y, i1 false)
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %i.o
  store i16 %i.i, ptr %i.af, align 2, !tbaa !60
  %i.ag = load ptr, ptr %i.e, align 8, !tbaa !47
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.o
  store i8 %i.s, ptr %i.ah, align 1, !tbaa !30
  %.pre = load i16, ptr %i.a, align 8, !tbaa !61
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.critedge
  %i.ai = phi i16 [ %.pre, %bb.e ], [ %i.f, %.critedge ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aj = sext i16 %i.ai to i64
  %i.ak = icmp slt i64 %indvars.iv.next, %i.aj
  br i1 %i.ak, label %bb.b, label %._crit_edge, !llvm.loop !92
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef i32 @_ZNK8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE14serializedSizeEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !44
  %i.b = zext nneg i8 %i.a to i32
  %i.c = shl nuw i32 1, %i.b
  %i.d = sdiv i32 %i.c, 2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i16, ptr %i.e, align 8, !tbaa !61
  %i.g = sext i16 %i.f to i32                     ; 2 uses
  %i.h = shl nsw i32 %i.g, 1
  %i.i = add nsw i32 %i.g, 5
  %i.j = add nsw i32 %i.i, %i.d
  %i.k = add nsw i32 %i.j, %i.h
  ret i32 %i.k
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE9mergeWithERKS5_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(120) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.99", align 16 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"struct.facebook::velox::common::hll::DenseHll<>::HllView", align 8 ; 9 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !44      ; 2 uses
  %i.b = load i8, ptr %1, align 8, !tbaa !44      ; 2 uses
  %.not = icmp eq i8 %i.a, %i.b
  br i1 %.not, label %bb.e, label %bb.b, !prof !56

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20, !noalias !93
  %i.c = sext i8 %i.a to i32
  store i32 %i.c, ptr %2, align 16, !tbaa !30, !noalias !93
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = sext i8 %i.b to i32
  store i32 %i.e, ptr %i.d, align 16, !tbaa !30, !noalias !93
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.7, i64 62, i64 17, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20, !noalias !93
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE9mergeWithERKS5_E18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.7) #19
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %3, align 8, !tbaa !34     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.j = load i64, ptr %i.h, align 8, !tbaa !30
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %i.f

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !7     ; 2 uses
  store i8 %i.m, ptr %4, align 8, !tbaa !96
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !47
  store ptr %i.p, ptr %i.n, align 8, !tbaa !98
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.s = load i16, ptr %i.r, align 8, !tbaa !61
  store i16 %i.s, ptr %i.q, align 8, !tbaa !99
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !50
  store ptr %i.v, ptr %i.t, align 8, !tbaa !100
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !47
  store ptr %i.y, ptr %i.w, align 8, !tbaa !101
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !30
  %i.ab = tail call i8 @llvm.smax.i8(i8 %i.aa, i8 %i.m) ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !46
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !47
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = icmp ugt i64 %i.ai, 31
  br i1 %i.aj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ak = call noundef i32 @_ZN8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE13mergeWithSimdERKNS5_7HllViewEa(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(40) %4, i8 noundef signext %i.ab)
  br label %_ZN8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE9mergeWithERKNS5_7HllViewE.exit

bb.g:                                             ; preds = %bb.e
  %i.al = call noundef i32 @_ZN8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE15mergeWithScalarERKNS5_7HllViewEa(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(40) %4, i8 noundef signext %i.ab)
  br label %_ZN8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE9mergeWithERKNS5_7HllViewE.exit

_ZN8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE9mergeWithERKNS5_7HllViewE.exit: ; preds = %bb.f, %bb.g
  %.sink.i = phi i32 [ %i.ak, %bb.f ], [ %i.al, %bb.g ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sink.i, ptr %i.am, align 4, !tbaa !45
  store i8 %i.ab, ptr %i.z, align 1, !tbaa !7
  call void @_ZN8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE22adjustBaselineIfNeededEv(ptr noundef nonnull align 8 dereferenceable(120) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE9mergeWithERKNS5_7HllViewE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !30
  %i.c = load i8, ptr %1, align 8, !tbaa !30
  %i.d = tail call i8 @llvm.smax.i8(i8 %i.b, i8 %i.c) ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !46
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !47
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = icmp ugt i64 %i.k, 31
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = tail call noundef i32 @_ZN8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE13mergeWithSimdERKNS5_7HllViewEa(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i8 noundef signext %i.d)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = tail call noundef i32 @_ZN8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE15mergeWithScalarERKNS5_7HllViewEa(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i8 noundef signext %i.d)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i32 [ %i.m, %bb.b ], [ %i.n, %bb.c ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sink, ptr %i.o, align 4, !tbaa !45
  store i8 %i.d, ptr %i.a, align 1, !tbaa !7
  tail call void @_ZN8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE22adjustBaselineIfNeededEv(ptr noundef nonnull align 8 dereferenceable(120) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE9mergeWithEPKc(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.99", align 16 ; 5 uses
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.99", align 16 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"struct.facebook::velox::common::hll::DenseHll<>::HllView", align 8 ; 9 uses
  %i.a = load i8, ptr %1, align 1, !tbaa !30      ; 2 uses
  %.not = icmp eq i8 %i.a, 3
  br i1 %.not, label %bb.e, label %bb.b, !prof !56

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIaN8facebook5velox6memory12StlAllocatorIaEEE6resizeEm:bb.a
  br i1 %i.ca, label %bb.g, label %_ZNSt6vectorIaN8facebook5velox6memory12StlAllocatorIaEEE17_M_default_appendEm.exit

bb.g:                                             ; preds = %bb.f
  %i.cb = getelementptr inbounds nuw i8, ptr %i.d, i64 %1 ; 2 uses
  %.not.i4 = icmp eq ptr %i.c, %i.cb
  br i1 %.not.i4, label %_ZNSt6vectorIaN8facebook5velox6memory12StlAllocatorIaEEE17_M_default_appendEm.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %i.cb, ptr %i.b, align 8, !tbaa !289
  br label %_ZNSt6vectorIaN8facebook5velox6memory12StlAllocatorIaEEE17_M_default_appendEm.exit

_ZNSt6vectorIaN8facebook5velox6memory12StlAllocatorIaEEE17_M_default_appendEm.exit: ; preds = %bb.h, %bb.g, %_ZNSt12_Vector_baseIaN8facebook5velox6memory12StlAllocatorIaEEE13_M_deallocateEPam.exit.i, %_ZSt27__uninitialized_default_n_aIPamN8facebook5velox6memory12StlAllocatorIaEEET_S6_T0_RT1_.exit.i, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr noundef signext i8 @_ZNK8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE8getDeltaEi(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ashr i32 %1, 1
  %i.b = sext i32 %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !272
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.b
  %i.f = load i8, ptr %i.e, align 1, !tbaa !30
  %.tr.i = trunc i32 %1 to i8
  %i.g = shl i8 %.tr.i, 2
  %i.h = and i8 %i.g, 4
  %i.i = xor i8 %i.h, 4
  %i.j = ashr i8 %i.f, %i.i
  %i.k = and i8 %i.j, 15
  ret i8 %i.k
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEEC2EPS5_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) unnamed_addr #0 comdat($_ZN8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEEC5EPS5_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i8 -1, ptr %0, align 8, !tbaa !270
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.a, align 1, !tbaa !244
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.b, align 4, !tbaa !271
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.c, align 8, !tbaa !256
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.b, label %bb.c, !prof !25

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox6memory12StlAllocatorIaEC1EPNS1_10MemoryPoolEE18veloxCheckFailArgs) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = ptrtoint ptr %1 to i64                   ; 3 uses
  store i64 %i.e, ptr %i.d, align 8, !tbaa !257
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(26) %i.f, i8 0, i64 26, i1 false)
  store i64 %i.e, ptr %i.g, align 8, !tbaa !257
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.e, ptr %i.i, align 8, !tbaa !257
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef signext i8 @_ZNK8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE14indexBitLengthEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !270
  ret i8 %i.a
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE10insertHashEm(ptr noundef nonnull align 8 dereferenceable(120) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !270
  %i.b = sext i8 %i.a to i32                      ; 3 uses
  %i.c = sub nsw i32 64, %i.b
  %i.d = zext nneg i32 %i.c to i64
  %i.e = lshr i64 %1, %i.d
  %i.f = trunc i64 %i.e to i32
  %i.g = zext nneg i32 %i.b to i64
  %i.h = shl i64 %1, %i.g
  %i.i = add nsw i32 %i.b, -1
  %i.j = zext nneg i32 %i.i to i64
  %i.k = shl nuw i64 1, %i.j
  %i.l = or i64 %i.k, %i.h
  %i.m = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.l, i1 true)
  %i.n = trunc nuw nsw i64 %i.m to i8
  %i.o = add nuw nsw i8 %i.n, 1
  tail call void @_ZN8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE6insertEia(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %i.f, i8 noundef signext %i.o)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE6insertEia(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %1, i8 noundef signext %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = sext i8 %2 to i32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.c = load i8, ptr %i.b, align 1, !tbaa !244
  %i.d = sext i8 %i.c to i32
  %i.e = sub nsw i32 %i.a, %i.d                   ; 5 uses
  %i.f = ashr i32 %1, 1
  %i.g = sext i32 %i.f to i64                     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !272
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.g
  %i.k = load i8, ptr %i.j, align 1, !tbaa !30
  %.tr.i.i = trunc i32 %1 to i8
  %i.l = shl i8 %.tr.i.i, 2
  %i.m = and i8 %i.l, 4                           ; 2 uses
  %i.n = xor i8 %i.m, 4                           ; 2 uses
  %i.o = ashr i8 %i.k, %i.n
  %i.p = and i8 %i.o, 15                          ; 3 uses
  %i.q = zext nneg i8 %i.p to i32
  %.not = icmp sgt i32 %i.e, %i.q
  br i1 %.not, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.r = icmp eq i8 %i.p, 15
  br i1 %i.r, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = load i16, ptr %i.s, align 8, !tbaa !284  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !286
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !272
  %i.y = icmp sgt i16 %i.t, 0
  br i1 %i.y, label %.lr.ph.preheader.i.i, label %_ZNK8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE11getOverflowEi.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.c
  %wide.trip.count.i.i = zext nneg i16 %i.t to i64
  br label %.lr.ph.i.i

bb.d:                                             ; preds = %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZNK8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE11getOverflowEi.exit, label %.lr.ph.i.i, !llvm.loop !65

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.d ] ; 3 uses
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %indvars.iv.i.i
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !60
  %i.ab = zext i16 %i.aa to i32
  %i.ac = icmp eq i32 %1, %i.ab
  br i1 %i.ac, label %bb.e, label %bb.d

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 %indvars.iv.i.i
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !30
  %i.af = sext i8 %i.ae to i32
  %i.ag = add nsw i32 %i.af, 15
  br label %_ZNK8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE11getOverflowEi.exit

_ZNK8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE11getOverflowEi.exit: ; preds = %bb.d, %bb.c, %bb.e
  %i.ah = phi i32 [ %i.ag, %bb.e ], [ 15, %bb.c ], [ 15, %bb.d ]
  %.not22 = icmp sgt i32 %i.e, %i.ah
  br i1 %.not22, label %bb.f, label %bb.p

bb.f:                                             ; preds = %_ZNK8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE11getOverflowEi.exit, %bb.b
  %i.ai = icmp sgt i32 %i.e, 15
  br i1 %i.ai, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.aj = trunc nuw i32 %i.e to i8
  %i.ak = add i8 %i.aj, -15                       ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.am = load i16, ptr %i.al, align 8, !tbaa !284 ; 3 uses
  %i.an = icmp sgt i16 %i.am, 0
  br i1 %i.an, label %.lr.ph.i, label %._ZNK8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE17findOverflowEntryEi.exit.thread_crit_edge

._ZNK8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE17findOverflowEntryEi.exit.thread_crit_edge: ; preds = %bb.g
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !286
  br label %_ZNK8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE17findOverflowEntryEi.exit.thread

.lr.ph.i:                                         ; preds = %bb.g
  %wide.trip.count.i = zext nneg i16 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !286 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.i ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %indvars.iv.i
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !60
  %i.as = zext i16 %i.ar to i32
  %i.at = icmp eq i32 %1, %i.as
  br i1 %i.at, label %_ZNK8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE17findOverflowEntryEi.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE17findOverflowEntryEi.exit.thread, label %bb.h, !llvm.loop !329

_ZNK8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE17findOverflowEntryEi.exit: ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !272
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %indvars.iv.i
  store i8 %i.ak, ptr %i.aw, align 1, !tbaa !30
  br label %bb.n

_ZNK8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE17findOverflowEntryEi.exit.thread: ; preds = %bb.i, %._ZNK8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE17findOverflowEntryEi.exit.thread_crit_edge
  %i.ax = phi ptr [ %.pre, %._ZNK8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE17findOverflowEntryEi.exit.thread_crit_edge ], [ %i.ap, %bb.i ] ; 2 uses
  %i.ay = sext i16 %i.am to i64
  %i.az = add nsw i64 %i.ay, 1                    ; 7 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !285 ; 2 uses
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.ax to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = ashr exact i64 %i.bf, 1                 ; 3 uses
  %i.bh = icmp ugt i64 %i.az, %i.bg
  br i1 %i.bh, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNK8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE17findOverflowEntryEi.exit.thread
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bj = sub nuw nsw i64 %i.az, %i.bg
  tail call void @_ZNSt6vectorItN8facebook5velox6memory12StlAllocatorItEEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bi, i64 noundef %i.bj)
  %.pre.i = load i16, ptr %i.al, align 8, !tbaa !284
  %.pre2.i = sext i16 %.pre.i to i64
  %.pre3.i = add nsw i64 %.pre2.i, 1
  br label %_ZN8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE11addOverflowEia.exit

bb.k:                                             ; preds = %_ZNK8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE17findOverflowEntryEi.exit.thread
  %i.bk = icmp ult i64 %i.az, %i.bg
  br i1 %i.bk, label %bb.l, label %_ZN8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE11addOverflowEia.exit

bb.l:                                             ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %i.az ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bc, %i.bl
  br i1 %.not.i.i.i, label %_ZN8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE11addOverflowEia.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr %i.bl, ptr %i.bb, align 8, !tbaa !285
  br label %_ZN8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE11addOverflowEia.exit

_ZN8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE11addOverflowEia.exit: ; preds = %bb.j, %bb.k, %bb.l, %bb.m
  %.pre-phi4.i = phi i64 [ %.pre3.i, %bb.j ], [ %i.az, %bb.k ], [ %i.az, %bb.l ], [ %i.az, %bb.m ]
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @_ZNSt6vectorIaN8facebook5velox6memory12StlAllocatorIaEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bm, i64 noundef %.pre-phi4.i)
  %i.bn = trunc i32 %1 to i16
  %i.bo = load i16, ptr %i.al, align 8, !tbaa !284
  %i.bp = sext i16 %i.bo to i64
  %i.bq = load ptr, ptr %i.ba, align 8, !tbaa !286
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %i.bq, i64 %i.bp
  store i16 %i.bn, ptr %i.br, align 2, !tbaa !60
  %i.bs = load i16, ptr %i.al, align 8, !tbaa !284
  %i.bt = sext i16 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !272
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bt
  store i8 %i.ak, ptr %i.bw, align 1, !tbaa !30
  %i.bx = load i16, ptr %i.al, align 8, !tbaa !284
  %i.by = add i16 %i.bx, 1
  store i16 %i.by, ptr %i.al, align 8, !tbaa !284
  br label %bb.n

bb.n:                                             ; preds = %_ZNK8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE17findOverflowEntryEi.exit, %_ZN8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE11addOverflowEia.exit, %bb.f
  %.0 = phi i32 [ %i.e, %bb.f ], [ 15, %_ZN8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE11addOverflowEia.exit ], [ 15, %_ZNK8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE17findOverflowEntryEi.exit ]
  %i.bz = trunc nuw nsw i32 %.0 to i8
  %i.ca = lshr exact i8 -16, %i.m
  %i.cb = xor i8 %i.ca, -1
  %i.cc = load ptr, ptr %i.h, align 8, !tbaa !272
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.g ; 2 uses
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !30
  %i.cf = and i8 %i.ce, %i.cb
  store i8 %i.cf, ptr %i.cd, align 1, !tbaa !30
  %i.cg = shl i8 %i.bz, %i.n
  %i.ch = load ptr, ptr %i.h, align 8, !tbaa !272
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.g ; 2 uses
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !30
  %i.ck = or i8 %i.cj, %i.cg
  store i8 %i.ck, ptr %i.ci, align 1, !tbaa !30
  %i.cl = icmp eq i8 %i.p, 0
  br i1 %i.cl, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !271
  %i.co = add nsw i32 %i.cn, -1
  store i32 %i.co, ptr %i.cm, align 4, !tbaa !271
  tail call void @_ZN8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE22adjustBaselineIfNeededEv(ptr noundef nonnull align 8 dereferenceable(120) %0)
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.a, %_ZNK8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE11getOverflowEi.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr noundef signext i8 @_ZNK8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE11getOverflowEi(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i16, ptr %i.a, align 8, !tbaa !284  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !286
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
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
end_hunk_2
begin_hunk_3_@_ZN8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE22adjustBaselineIfNeededEv:bb.a
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
  %.038.us = phi i32 [ 0, %.lr.ph41.us ], [ %i.bq, %.critedge32.us ] ; 4 uses
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

.critedge.us:                                     ; preds = %bb.e, %.preheader.us, %bb.b
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

bb.d:                                             ; preds = %.lr.ph.us, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next, %bb.e ] ; 6 uses
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.bt, i64 %indvars.iv
  %i.an = load i16, ptr %i.am, align 2, !tbaa !60
  %i.ao = zext i16 %i.an to i32
  %i.ap = icmp eq i32 %.038.us, %i.ao
  br i1 %i.ap, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge.us, label %bb.d, !llvm.loop !330

bb.f:                                             ; preds = %bb.d
  %i.aq = load ptr, ptr %i.k, align 8, !tbaa !272
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %indvars.iv ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !30
  %i.at = add i8 %i.as, -1
  store i8 %i.at, ptr %i.ar, align 1, !tbaa !30
  %i.au = load ptr, ptr %i.k, align 8, !tbaa !272 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %indvars.iv ; 2 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !30
  %i.ax = icmp eq i8 %i.aw, 0
  br i1 %i.ax, label %bb.g, label %.critedge32.us

bb.g:                                             ; preds = %bb.f
  %i.ay = trunc nuw nsw i64 %indvars.iv to i32
  %i.az = load i16, ptr %i.i, align 8, !tbaa !284 ; 2 uses
  %i.ba = sext i16 %i.az to i32
  %i.bb = add nsw i32 %i.ba, -1                   ; 2 uses
  %i.bc = icmp sgt i32 %i.bb, %i.ay
  br i1 %i.bc, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bd = sext i32 %i.bb to i64                   ; 4 uses
  %i.be = load ptr, ptr %i.j, align 8, !tbaa !286 ; 2 uses
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %i.bd
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !60
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %indvars.iv
  store i16 %i.bg, ptr %i.bh, align 2, !tbaa !60
  %i.bi = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.bd
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !30
  store i8 %i.bj, ptr %i.av, align 1, !tbaa !30
  %i.bk = load ptr, ptr %i.j, align 8, !tbaa !286
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %i.bd
  store i16 0, ptr %i.bl, align 2, !tbaa !60
  %i.bm = load ptr, ptr %i.k, align 8, !tbaa !272
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bd
  store i8 0, ptr %i.bn, align 1, !tbaa !30
  %.pre = load i16, ptr %i.i, align 8, !tbaa !284
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bo = phi i16 [ %.pre, %bb.h ], [ %i.az, %bb.g ]
  %i.bp = add i16 %i.bo, -1
  store i16 %i.bp, ptr %i.i, align 8, !tbaa !284
  br label %.critedge32.us

.critedge32.us:                                   ; preds = %bb.i, %bb.f, %bb.c, %.critedge.us
  %i.bq = add nuw nsw i32 %.038.us, 1             ; 2 uses
  %exitcond47.not = icmp eq i32 %i.bq, %smax
  br i1 %exitcond47.not, label %..loopexit_crit_edge.us, label %bb.b, !llvm.loop !331

.preheader.us:                                    ; preds = %bb.b
  %i.br = load i16, ptr %i.i, align 8, !tbaa !284 ; 2 uses
  %i.bs = icmp sgt i16 %i.br, 0
  br i1 %i.bs, label %.lr.ph.us, label %.critedge.us

.lr.ph.us:                                        ; preds = %.preheader.us
  %wide.trip.count = zext nneg i16 %i.br to i64
  %i.bt = load ptr, ptr %i.j, align 8, !tbaa !286
  br label %bb.d

..loopexit_crit_edge.us:                          ; preds = %.critedge32.us
  %i.bu = load i32, ptr %i.a, align 4, !tbaa !271
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %.lr.ph41.us, label %._crit_edge, !llvm.loop !332

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
  %i.ba = ashr exact i64 %sext20, 32
  %i.bb = getelementptr inbounds i8, ptr %1, i64 %i.ba
  store i16 %i.az, ptr %i.bb, align 2, !tbaa !60
  %.not = icmp eq i16 %i.az, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE13sortOverflowsEv.exit
  %i.bc = trunc i64 %i.aw to i32
  %i.bd = add i32 %i.bc, 5                        ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !286
  %i.bg = sext i16 %i.az to i32
  %i.bh = shl nsw i32 %i.bg, 1                    ; 2 uses
  %i.bi = sext i32 %i.bd to i64
  %i.bj = getelementptr inbounds i8, ptr %1, i64 %i.bi
  %i.bk = sext i32 %i.bh to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bj, ptr align 1 %i.bf, i64 %i.bk, i1 false)
  %i.bl = add nsw i32 %i.bh, %i.bd
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !272
  %i.bo = load i16, ptr %i.a, align 8, !tbaa !284
  %i.bp = sext i32 %i.bl to i64
  %i.bq = getelementptr inbounds i8, ptr %1, i64 %i.bp
  %i.br = sext i16 %i.bo to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bq, ptr align 1 %i.bn, i64 %i.br, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE13sortOverflowsEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE13sortOverflowsEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !284  ; 2 uses
  %i.c = icmp sgt i16 %i.b, 1
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %i.f = phi i16 [ %i.b, %.lr.ph ], [ %i.ai, %bb.f ]
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 6 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !286  ; 3 uses
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %indvars.iv
  %i.i = load i16, ptr %i.h, align 2, !tbaa !60   ; 2 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.j = icmp sgt i64 %indvars.iv2635, 1
  br i1 %i.j, label %bb.d, label %.critedge, !llvm.loop !333

bb.d:                                             ; preds = %bb.b, %bb.c
  %indvars.iv2635 = phi i64 [ %indvars.iv, %bb.b ], [ %indvars.iv.next27, %bb.c ] ; 3 uses
  %indvars.iv.next27 = add nsw i64 %indvars.iv2635, -1 ; 3 uses
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %indvars.iv.next27
  %i.l = load i16, ptr %i.k, align 2, !tbaa !60
  %i.m = icmp ugt i16 %i.l, %i.i
  br i1 %i.m, label %bb.c, label %.critedge.split.loop.exit31, !llvm.loop !333

.critedge.split.loop.exit31:                      ; preds = %bb.d
  %i.n = trunc nuw nsw i64 %indvars.iv2635 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %.critedge.split.loop.exit31
  %.023.in.lcssa = phi i32 [ %i.n, %.critedge.split.loop.exit31 ], [ 0, %bb.c ] ; 2 uses
  %.023.lcssa = phi i64 [ %indvars.iv.next27, %.critedge.split.loop.exit31 ], [ -1, %bb.c ] ; 2 uses
  %i.o = sext i32 %.023.in.lcssa to i64           ; 3 uses
  %i.p = icmp sgt i64 %indvars.iv, %i.o
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.critedge
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !272
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %indvars.iv
  %i.s = load i8, ptr %i.r, align 1, !tbaa !30
  %i.t = getelementptr inbounds [2 x i8], ptr %i.g, i64 %.023.lcssa ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.w = trunc nuw nsw i64 %indvars.iv to i32
  %i.x = sub i32 %i.w, %.023.in.lcssa
  %i.y = sext i32 %i.x to i64                     ; 2 uses
  %i.z = shl nsw i64 %i.y, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.u, ptr nonnull align 2 %i.v, i64 %i.z, i1 false)
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !272
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 %.023.lcssa ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr nonnull align 1 %i.ad, i64 %i.y, i1 false)
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !286
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %i.o
  store i16 %i.i, ptr %i.af, align 2, !tbaa !60
  %i.ag = load ptr, ptr %i.e, align 8, !tbaa !272
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.o
  store i8 %i.s, ptr %i.ah, align 1, !tbaa !30
  %.pre = load i16, ptr %i.a, align 8, !tbaa !284
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.critedge
  %i.ai = phi i16 [ %.pre, %bb.e ], [ %i.f, %.critedge ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aj = sext i16 %i.ai to i64
  %i.ak = icmp slt i64 %indvars.iv.next, %i.aj
  br i1 %i.ak, label %bb.b, label %._crit_edge, !llvm.loop !334
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef i32 @_ZNK8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE14serializedSizeEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !270
  %i.b = zext nneg i8 %i.a to i32
  %i.c = shl nuw i32 1, %i.b
  %i.d = sdiv i32 %i.c, 2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i16, ptr %i.e, align 8, !tbaa !284
  %i.g = sext i16 %i.f to i32                     ; 2 uses
  %i.h = shl nsw i32 %i.g, 1
  %i.i = add nsw i32 %i.g, 5
  %i.j = add nsw i32 %i.i, %i.d
  %i.k = add nsw i32 %i.j, %i.h
  ret i32 %i.k
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE9mergeWithERKS6_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(120) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.99", align 16 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"struct.facebook::velox::common::hll::DenseHll<facebook::velox::memory::MemoryPool>::HllView", align 8 ; 9 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !270     ; 2 uses
  %i.b = load i8, ptr %1, align 8, !tbaa !270     ; 2 uses
  %.not = icmp eq i8 %i.a, %i.b
  br i1 %.not, label %bb.e, label %bb.b, !prof !56

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20, !noalias !335
  %i.c = sext i8 %i.a to i32
  store i32 %i.c, ptr %2, align 16, !tbaa !30, !noalias !335
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = sext i8 %i.b to i32
  store i32 %i.e, ptr %i.d, align 16, !tbaa !30, !noalias !335
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.7, i64 62, i64 17, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20, !noalias !335
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE9mergeWithERKS6_E18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.7) #19
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %3, align 8, !tbaa !34     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.j = load i64, ptr %i.h, align 8, !tbaa !30
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %i.f

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !244   ; 2 uses
  store i8 %i.m, ptr %4, align 8, !tbaa !338
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !272
  store ptr %i.p, ptr %i.n, align 8, !tbaa !340
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.s = load i16, ptr %i.r, align 8, !tbaa !284
  store i16 %i.s, ptr %i.q, align 8, !tbaa !341
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !286
  store ptr %i.v, ptr %i.t, align 8, !tbaa !342
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !272
  store ptr %i.y, ptr %i.w, align 8, !tbaa !343
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !30
  %i.ab = tail call i8 @llvm.smax.i8(i8 %i.aa, i8 %i.m) ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !289
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !272
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = icmp ugt i64 %i.ai, 31
  br i1 %i.aj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ak = call noundef i32 @_ZN8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE13mergeWithSimdERKNS6_7HllViewEa(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(40) %4, i8 noundef signext %i.ab)
  br label %_ZN8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE9mergeWithERKNS6_7HllViewE.exit

bb.g:                                             ; preds = %bb.e
  %i.al = call noundef i32 @_ZN8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE15mergeWithScalarERKNS6_7HllViewEa(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(40) %4, i8 noundef signext %i.ab)
  br label %_ZN8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE9mergeWithERKNS6_7HllViewE.exit

_ZN8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE9mergeWithERKNS6_7HllViewE.exit: ; preds = %bb.f, %bb.g
  %.sink.i = phi i32 [ %i.ak, %bb.f ], [ %i.al, %bb.g ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sink.i, ptr %i.am, align 4, !tbaa !271
  store i8 %i.ab, ptr %i.z, align 1, !tbaa !244
  call void @_ZN8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE22adjustBaselineIfNeededEv(ptr noundef nonnull align 8 dereferenceable(120) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE9mergeWithERKNS6_7HllViewE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !30
  %i.c = load i8, ptr %1, align 8, !tbaa !30
  %i.d = tail call i8 @llvm.smax.i8(i8 %i.b, i8 %i.c) ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !289
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !272
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = icmp ugt i64 %i.k, 31
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = tail call noundef i32 @_ZN8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE13mergeWithSimdERKNS6_7HllViewEa(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i8 noundef signext %i.d)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = tail call noundef i32 @_ZN8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE15mergeWithScalarERKNS6_7HllViewEa(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i8 noundef signext %i.d)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i32 [ %i.m, %bb.b ], [ %i.n, %bb.c ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sink, ptr %i.o, align 4, !tbaa !271
  store i8 %i.d, ptr %i.a, align 1, !tbaa !244
  tail call void @_ZN8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE22adjustBaselineIfNeededEv(ptr noundef nonnull align 8 dereferenceable(120) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE9mergeWithEPKc(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.99", align 16 ; 5 uses
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.99", align 16 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"struct.facebook::velox::common::hll::DenseHll<facebook::velox::memory::MemoryPool>::HllView", align 8 ; 9 uses
  %i.a = load i8, ptr %1, align 1, !tbaa !30      ; 2 uses
  %.not = icmp eq i8 %i.a, 3
  br i1 %.not, label %bb.e, label %bb.b, !prof !56

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
end_hunk_3
