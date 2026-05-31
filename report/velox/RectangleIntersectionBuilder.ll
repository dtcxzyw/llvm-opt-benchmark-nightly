inline.NumInlined: 915
inline.NumDeleted: 501
begin_hunk_0_@_ZN4geos9operation12intersection8distanceERKNS1_9RectangleEdddd:bb.a
  %i.e = fcmp olt double %1, %i.d
  %or.cond.i = select i1 %i.b, i1 %i.e, i1 false
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load double, ptr %i.f, align 8           ; 9 uses
  %i.h = fcmp ogt double %2, %i.g
  %or.cond29.i = select i1 %or.cond.i, i1 %i.h, i1 false
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load double, ptr %i.i, align 8           ; 9 uses
  %i.k = fcmp olt double %2, %i.j
  %or.cond32.i = select i1 %or.cond29.i, i1 %i.k, i1 false
  br i1 %or.cond32.i, label %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = fcmp olt double %1, %i.a
  %i.m = fcmp ogt double %1, %i.d
  %or.cond33.i = select i1 %i.l, i1 true, i1 %i.m
  %i.n = fcmp olt double %2, %i.g
  %or.cond34.i = select i1 %or.cond33.i, i1 true, i1 %i.n
  %i.o = fcmp ogt double %2, %i.j
  %or.cond35.i = select i1 %or.cond34.i, i1 true, i1 %i.o
  br i1 %or.cond35.i, label %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = fcmp oeq double %1, %i.a
  br i1 %i.p, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = fcmp oeq double %1, %i.d
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.0.i = phi i32 [ 0, %bb.d ], [ 16, %bb.e ], [ 4, %bb.c ] ; 3 uses
  %i.r = fcmp oeq double %2, %i.g
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = or disjoint i32 %.0.i, 32
  br label %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit

bb.h:                                             ; preds = %bb.f
  %i.t = fcmp oeq double %2, %i.j
  br i1 %i.t, label %bb.i, label %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit

bb.i:                                             ; preds = %bb.h
  %i.u = or disjoint i32 %.0.i, 8
  br label %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit

_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit: ; preds = %bb.a, %bb.b, %bb.g, %bb.h, %bb.i
  %.018.i = phi i32 [ 2, %bb.b ], [ 1, %bb.a ], [ %i.s, %bb.g ], [ %i.u, %bb.i ], [ %.0.i, %bb.h ] ; 2 uses
  %i.v = fcmp ogt double %3, %i.a
  %i.w = fcmp olt double %3, %i.d
  %or.cond.i80 = select i1 %i.v, i1 %i.w, i1 false
  %i.x = fcmp ogt double %4, %i.g
  %or.cond29.i81 = select i1 %or.cond.i80, i1 %i.x, i1 false
  %i.y = fcmp olt double %4, %i.j
  %or.cond32.i82 = select i1 %or.cond29.i81, i1 %i.y, i1 false
  br i1 %or.cond32.i82, label %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit88, label %bb.j

bb.j:                                             ; preds = %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit
  %i.z = fcmp olt double %3, %i.a
  %i.aa = fcmp ogt double %3, %i.d
  %or.cond33.i83 = select i1 %i.z, i1 true, i1 %i.aa
  %i.ab = fcmp olt double %4, %i.g
  %or.cond34.i84 = select i1 %or.cond33.i83, i1 true, i1 %i.ab
  %i.ac = fcmp ogt double %4, %i.j
  %or.cond35.i85 = select i1 %or.cond34.i84, i1 true, i1 %i.ac
  br i1 %or.cond35.i85, label %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit88, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = fcmp oeq double %3, %i.a
  br i1 %i.ad, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = fcmp oeq double %3, %i.d
  br i1 %i.ae, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %.0.i86 = phi i32 [ 0, %bb.l ], [ 16, %bb.m ], [ 4, %bb.k ] ; 3 uses
  %i.af = fcmp oeq double %4, %i.g
  br i1 %i.af, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ag = or disjoint i32 %.0.i86, 32
  br label %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit88

bb.p:                                             ; preds = %bb.n
  %i.ah = fcmp oeq double %4, %i.j
  br i1 %i.ah, label %bb.q, label %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit88

bb.q:                                             ; preds = %bb.p
  %i.ai = or disjoint i32 %.0.i86, 8
  br label %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit88

_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit88: ; preds = %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit, %bb.j, %bb.o, %bb.p, %bb.q
  %.018.i87 = phi i32 [ 2, %bb.j ], [ 1, %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit ], [ %i.ag, %bb.o ], [ %i.ai, %bb.q ], [ %.0.i86, %bb.p ] ; 2 uses
  %i.aj = or i32 %.018.i87, %.018.i
  %i.ak = and i32 %i.aj, 3
  %or.cond75 = icmp eq i32 %i.ak, 0
  br i1 %or.cond75, label %.preheader, label %bb.r

bb.r:                                             ; preds = %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit88
  %i.al = tail call ptr @__cxa_allocate_exception(i64 16) #16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.s unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN4geos4util24IllegalArgumentExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  invoke void @__cxa_throw(ptr nonnull %i.al, ptr nonnull @_ZTIN4geos4util24IllegalArgumentExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #19
          to label %bb.ae unwind label %bb.u

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.r
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.v

bb.u:                                             ; preds = %bb.t, %bb.s
  %.0 = phi i1 [ false, %bb.t ], [ true, %bb.s ]  ; 2 uses
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ao = load ptr, ptr %5, align 8, !tbaa !82    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.u
  call void @_ZdlPv(ptr noundef %i.ao) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br i1 %.0, label %bb.v, label %bb.w

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br i1 %.0, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn7293 = phi { ptr, i32 } [ %i.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.al) #16
  br label %bb.w

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn7292 = phi { ptr, i32 } [ %.pn7293, %bb.v ], [ %i.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn7292

.preheader:                                       ; preds = %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit88, %bb.ad
  %.063 = phi double [ %.164, %bb.ad ], [ %2, %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit88 ] ; 9 uses
  %.061 = phi double [ %.162, %bb.ad ], [ 0.000000e+00, %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit88 ] ; 2 uses
  %.060 = phi i32 [ %.0.i8996, %bb.ad ], [ %.018.i, %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit88 ] ; 9 uses
  %.058 = phi double [ %.159, %bb.ad ], [ %1, %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit88 ] ; 9 uses
  %i.ar = and i32 %.060, %.018.i87
  %.not68 = icmp eq i32 %i.ar, 0
  br i1 %.not68, label %bb.ac, label %bb.x

bb.x:                                             ; preds = %.preheader
  %i.as = fcmp une double %.058, %i.a
  %i.at = fcmp ult double %4, %.063
  %or.cond76 = select i1 %i.as, i1 true, i1 %i.at
  br i1 %or.cond76, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.au = fcmp une double %.063, %i.j
  %i.av = fcmp ult double %3, %.058
  %or.cond77 = select i1 %i.au, i1 true, i1 %i.av
  br i1 %or.cond77, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.aw = fcmp une double %.058, %i.d
  %i.ax = fcmp ugt double %4, %.063
  %or.cond78 = select i1 %i.aw, i1 true, i1 %i.ax
  br i1 %or.cond78, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ay = fcmp une double %.063, %i.g
  %i.az = fcmp ugt double %3, %.058
  %or.cond79 = select i1 %i.ay, i1 true, i1 %i.az
  br i1 %or.cond79, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y, %bb.x
  %i.ba = fsub double %3, %.058
  %i.bb = tail call double @llvm.fabs.f64(double %i.ba)
  %i.bc = fsub double %4, %.063
  %i.bd = tail call double @llvm.fabs.f64(double %i.bc)
  %i.be = fadd double %i.bd, %i.bb
  %i.bf = fadd double %.061, %i.be
  ret double %i.bf

bb.ac:                                            ; preds = %bb.aa, %.preheader
  switch i32 %.060, label %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit [
    i32 36, label %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread106
    i32 4, label %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread106
    i32 12, label %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread.thread113
    i32 8, label %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread.thread113
    i32 24, label %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread.thread
    i32 16, label %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread.thread
    i32 48, label %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread98
    i32 32, label %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread98
  ]

_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit: ; preds = %bb.ac
  %i.bg = and i32 %.060, 4
  %.not69 = icmp eq i32 %i.bg, 0
  br i1 %.not69, label %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread, label %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread98

_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread98: ; preds = %bb.ac, %bb.ac, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit
  %.0.i89101 = phi i32 [ %.060, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit ], [ 4, %bb.ac ], [ 4, %bb.ac ]
  %i.bh = fsub double %.058, %i.a
  br label %bb.ad

_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread: ; preds = %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit
  %i.bi = and i32 %.060, 8
  %.not70 = icmp eq i32 %i.bi, 0
  br i1 %.not70, label %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread, label %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread106

_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread106: ; preds = %bb.ac, %bb.ac, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread
  %.0.i8997109 = phi i32 [ %.060, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread ], [ 8, %bb.ac ], [ 8, %bb.ac ]
  %i.bj = fsub double %i.j, %.063
  br label %bb.ad

_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread: ; preds = %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread
  %i.bk = and i32 %.060, 16
  %.not71 = icmp eq i32 %i.bk, 0
  br i1 %.not71, label %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread.thread, label %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread.thread113

_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread.thread113: ; preds = %bb.ac, %bb.ac, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread
  %.0.i8997104116 = phi i32 [ %.060, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread ], [ 16, %bb.ac ], [ 16, %bb.ac ]
  %i.bl = fsub double %i.d, %.058
  br label %bb.ad

_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread.thread: ; preds = %bb.ac, %bb.ac, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread
  %.0.i8997104112 = phi i32 [ %.060, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread ], [ 32, %bb.ac ], [ 32, %bb.ac ]
  %i.bm = fsub double %.063, %i.g
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread106, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread.thread, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread.thread113, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread98
  %.0.i8996 = phi i32 [ %.0.i89101, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread98 ], [ %.0.i8997109, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread106 ], [ %.0.i8997104116, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread.thread113 ], [ %.0.i8997104112, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread.thread ]
  %.164 = phi double [ %.063, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread98 ], [ %i.j, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread106 ], [ %.063, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread.thread113 ], [ %i.g, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread.thread ]
  %.pn = phi double [ %i.bh, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread98 ], [ %i.bj, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread106 ], [ %i.bl, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread.thread113 ], [ %i.bm, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread.thread ]
  %.159 = phi double [ %i.a, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread98 ], [ %.058, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread106 ], [ %i.d, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread.thread113 ], [ %.058, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread.thread ]
  %.162 = fadd double %.061, %.pn
  br label %.preheader, !llvm.loop !86

bb.ae:                                            ; preds = %bb.t
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2 align 2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4geos4util24IllegalArgumentExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 24, ptr %i.a, align 8, !tbaa !88
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !82
  %i.d = load i64, ptr %i.a, align 8, !tbaa !88   ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !89
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.c, ptr noundef nonnull align 1 dereferenceable(24) @.str.3, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !90
  %i.f = load ptr, ptr %2, align 8, !tbaa !82
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  store i8 0, ptr %i.g, align 1, !tbaa !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  invoke void @_ZN4geos4util13GEOSExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %.noexc.i
  %i.h = load ptr, ptr %2, align 8, !tbaa !82     ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.b
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  call void @_ZdlPv(ptr noundef %i.h) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4geos4util24IllegalArgumentExceptionE, i64 16), ptr %0, align 8, !tbaa !13
  ret void

bb.b:                                             ; preds = %.noexc.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %2, align 8, !tbaa !82     ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.b
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.b
  call void @_ZdlPv(ptr noundef %i.k) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  resume { ptr, i32 } %i.j
}

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #6

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #7

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #8

; Function Attrs: mustprogress uwtable
define noundef double @_ZN4geos9operation12intersection8distanceERKNS1_9RectangleERKSt6vectorINS_4geom10CoordinateESaIS7_EEPKNS6_10LineStringE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91
  %i.c = load ptr, ptr %1, align 8, !tbaa !94     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = getelementptr i8, ptr %i.c, i64 %i.f     ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -24
  %i.i = tail call noundef ptr @_ZNK4geos4geom10LineString16getCoordinatesROEv(ptr noundef nonnull align 8 dereferenceable(48) %2) ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef 0) ; 2 uses
  %i.n = load double, ptr %i.h, align 8, !tbaa !95
  %i.o = getelementptr i8, ptr %i.g, i64 -16
  %i.p = load double, ptr %i.o, align 8, !tbaa !97
  %i.q = load double, ptr %i.m, align 8, !tbaa !95
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.s = load double, ptr %i.r, align 8, !tbaa !97
  %i.t = tail call noundef double @_ZN4geos9operation12intersection8distanceERKNS1_9RectangleEdddd(ptr noundef nonnull align 8 dereferenceable(32) %0, double noundef %i.n, double noundef %i.p, double noundef %i.q, double noundef %i.s)
  ret double %i.t
}

; Function Attrs: mustprogress uwtable
define noundef double @_ZN4geos9operation12intersection8distanceERKNS1_9RectangleERKSt6vectorINS_4geom10CoordinateESaIS7_EE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91
  %i.c = load ptr, ptr %1, align 8, !tbaa !94     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = getelementptr i8, ptr %i.c, i64 %i.f     ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -24
  %i.i = load double, ptr %i.h, align 8, !tbaa !95
  %i.j = getelementptr i8, ptr %i.g, i64 -16
  %i.k = load double, ptr %i.j, align 8, !tbaa !97
  %i.l = load double, ptr %i.c, align 8, !tbaa !95
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.n = load double, ptr %i.m, align 8, !tbaa !97
  %i.o = tail call noundef double @_ZN4geos9operation12intersection8distanceERKNS1_9RectangleEdddd(ptr noundef nonnull align 8 dereferenceable(32) %0, double noundef %i.i, double noundef %i.k, double noundef %i.l, double noundef %i.n)
  ret double %i.o
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN4geos9operation12intersection14reverse_pointsERSt6vectorINS_4geom10CoordinateESaIS4_EEmm(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #9 {
bb.a:
  %.sroa.014 = alloca { double, double }, align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.014)
  %i.a = icmp ult i64 %1, %2
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.019 = phi i64 [ %i.h, %.lr.ph ], [ %2, %bb.a ] ; 3 uses
  %.01118 = phi i64 [ %i.g, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !94     ; 2 uses
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.01118 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.014, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !98
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.515.0.copyload = load double, ptr %.sroa.515.0..sroa_idx, align 8, !tbaa !99
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.019 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.5.0.copyload = load double, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !99
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  store double %.sroa.5.0.copyload, ptr %.sroa.515.0..sroa_idx, align 8, !tbaa !99
  %i.e = load ptr, ptr %0, align 8, !tbaa !94
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %.019 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.014, i64 16, i1 false), !tbaa.struct !98
  %.sroa.515.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store double %.sroa.515.0.copyload, ptr %.sroa.515.0..sroa_idx16, align 8, !tbaa !99
  %i.g = add nuw i64 %.01118, 1                   ; 2 uses
  %i.h = add i64 %.019, -1                        ; 2 uses
  %i.i = icmp ult i64 %i.g, %i.h
  br i1 %i.i, label %.lr.ph, label %._crit_edge, !llvm.loop !100

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.014)
  ret void
end_hunk_0
begin_hunk_1_@_ZN4geos9operation12intersection28RectangleIntersectionBuilder14close_boundaryERKNS1_9RectangleEPSt6vectorINS_4geom10CoordinateESaIS8_EEdddd:bb.a
bb.c:                                             ; preds = %bb.b
  %i.p = fcmp oeq double %5, %i.a
  br i1 %i.p, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = fcmp oeq double %5, %i.d
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.0.i = phi i32 [ 0, %bb.d ], [ 16, %bb.e ], [ 4, %bb.c ] ; 3 uses
  %i.r = fcmp oeq double %6, %i.g
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = or disjoint i32 %.0.i, 32
  br label %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit

bb.h:                                             ; preds = %bb.f
  %i.t = fcmp oeq double %6, %i.j
  br i1 %i.t, label %bb.i, label %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit

bb.i:                                             ; preds = %bb.h
  %i.u = or disjoint i32 %.0.i, 8
  br label %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit

_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit: ; preds = %bb.a, %bb.b, %bb.g, %bb.h, %bb.i
  %.018.i = phi i32 [ 2, %bb.b ], [ 1, %bb.a ], [ %i.s, %bb.g ], [ %i.u, %bb.i ], [ %.0.i, %bb.h ]
  %i.v = fcmp ogt double %3, %i.a
  %i.w = fcmp olt double %3, %i.d
  %or.cond.i51 = select i1 %i.v, i1 %i.w, i1 false
  %i.x = fcmp ogt double %4, %i.g
  %or.cond29.i52 = select i1 %or.cond.i51, i1 %i.x, i1 false
  %i.y = fcmp olt double %4, %i.j
  %or.cond32.i53 = select i1 %or.cond29.i52, i1 %i.y, i1 false
  br i1 %or.cond32.i53, label %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit59, label %bb.j

bb.j:                                             ; preds = %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit
  %i.z = fcmp olt double %3, %i.a
  %i.aa = fcmp ogt double %3, %i.d
  %or.cond33.i54 = select i1 %i.z, i1 true, i1 %i.aa
  %i.ab = fcmp olt double %4, %i.g
  %or.cond34.i55 = select i1 %or.cond33.i54, i1 true, i1 %i.ab
  %i.ac = fcmp ogt double %4, %i.j
  %or.cond35.i56 = select i1 %or.cond34.i55, i1 true, i1 %i.ac
  br i1 %or.cond35.i56, label %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit59, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = fcmp oeq double %3, %i.a
  br i1 %i.ad, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = fcmp oeq double %3, %i.d
  br i1 %i.ae, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %.0.i57 = phi i32 [ 0, %bb.l ], [ 16, %bb.m ], [ 4, %bb.k ] ; 3 uses
  %i.af = fcmp oeq double %4, %i.g
  br i1 %i.af, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ag = or disjoint i32 %.0.i57, 32
  br label %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit59

bb.p:                                             ; preds = %bb.n
  %i.ah = fcmp oeq double %4, %i.j
  br i1 %i.ah, label %bb.q, label %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit59

bb.q:                                             ; preds = %bb.p
  %i.ai = or disjoint i32 %.0.i57, 8
  br label %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit59

_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit59: ; preds = %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit, %bb.j, %bb.o, %bb.p, %bb.q
  %.018.i58 = phi i32 [ 2, %bb.j ], [ 1, %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit ], [ %i.ag, %bb.o ], [ %i.ai, %bb.q ], [ %.0.i57, %bb.p ]
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backEOS2_.exit74

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backEOS2_.exit74: ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backEOS2_.exit74.backedge, %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit59
  %.042 = phi double [ %4, %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit59 ], [ %.143, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backEOS2_.exit74.backedge ] ; 7 uses
  %.041 = phi double [ %3, %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit59 ], [ %.1, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backEOS2_.exit74.backedge ] ; 7 uses
  %.0 = phi i32 [ %.018.i58, %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit59 ], [ %.0.i6091, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backEOS2_.exit74.backedge ] ; 9 uses
  %i.al = and i32 %.0, %.018.i
  %.not = icmp eq i32 %i.al, 0
  br i1 %.not, label %bb.ab, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backEOS2_.exit74
  %i.am = load double, ptr %1, align 8, !tbaa !79
  %i.an = fcmp une double %.041, %i.am
  %i.ao = fcmp ult double %6, %.042
  %or.cond = or i1 %i.ao, %i.an
  br i1 %or.cond, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.ap = load double, ptr %i.i, align 8, !tbaa !103
  %i.aq = fcmp une double %.042, %i.ap
  %i.ar = fcmp ult double %5, %.041
  %or.cond47 = or i1 %i.ar, %i.aq
  br i1 %or.cond47, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.as = load double, ptr %i.c, align 8, !tbaa !104
  %i.at = fcmp une double %.041, %i.as
  %i.au = fcmp ugt double %6, %.042
  %or.cond48 = or i1 %i.au, %i.at
  br i1 %or.cond48, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.av = load double, ptr %i.f, align 8, !tbaa !105
  %i.aw = fcmp une double %.042, %i.av
  %i.ax = fcmp ugt double %5, %.041
  %or.cond49 = or i1 %i.ax, %i.aw
  br i1 %or.cond49, label %bb.ab, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.r
  %i.ay = fcmp une double %.041, %5
  %i.az = fcmp une double %.042, %6
  %or.cond50 = or i1 %i.az, %i.ay
  br i1 %or.cond50, label %bb.w, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backEOS2_.exit

bb.w:                                             ; preds = %bb.v
  %i.ba = load ptr, ptr %i.aj, align 8, !tbaa !91 ; 8 uses
  %i.bb = load ptr, ptr %i.ak, align 8, !tbaa !106
  %.not.i.i = icmp eq ptr %i.ba, %i.bb
  br i1 %.not.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store double %5, ptr %i.ba, align 8, !tbaa !99
  %.sroa.582.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store double %6, ptr %.sroa.582.0..sroa_idx, align 8, !tbaa !99
  %.sroa.685.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store double +qnan, ptr %.sroa.685.0..sroa_idx, align 8, !tbaa !99
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  store ptr %i.bc, ptr %i.aj, align 8, !tbaa !91
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backEOS2_.exit

bb.y:                                             ; preds = %bb.w
  %i.bd = load ptr, ptr %2, align 8, !tbaa !94    ; 5 uses
  %i.be = ptrtoint ptr %i.ba to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf                    ; 3 uses
  %i.bh = icmp eq i64 %i.bg, 9223372036854775800
  br i1 %i.bh, label %bb.z, label %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.z:                                             ; preds = %bb.y
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #19
  unreachable

_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.y
  %i.bi = sdiv exact i64 %i.bg, 24                ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bi, i64 1)
  %i.bj = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bi ; 2 uses
  %i.bk = icmp ult i64 %i.bj, %i.bi
  %i.bl = tail call i64 @llvm.umin.i64(i64 %i.bj, i64 384307168202282325)
  %i.bm = select i1 %i.bk, i64 384307168202282325, i64 %i.bl ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bm, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bn = mul nuw nsw i64 %i.bm, 24
  %i.bo = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bn) #18 ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bg ; 3 uses
  store double %5, ptr %i.bp, align 8, !tbaa !99
  %.sroa.582.0..sroa_idx83 = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store double %6, ptr %.sroa.582.0..sroa_idx83, align 8, !tbaa !99
  %.sroa.685.0..sroa_idx86 = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store double +qnan, ptr %.sroa.685.0..sroa_idx86, align 8, !tbaa !99
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.bd, %i.ba
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i.i.i.i.i.i ], [ %i.bo, %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.i.i.i ], [ %i.bd, %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !98, !alias.scope !107
  %i.bq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bq, %i.ba
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !111

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.bo, %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.br, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 24
  %.not.i23.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.bd) #17
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.aa, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  store ptr %i.bo, ptr %2, align 8, !tbaa !94
  store ptr %i.bs, ptr %i.aj, align 8, !tbaa !91
  %i.bt = getelementptr inbounds nuw [24 x i8], ptr %i.bo, i64 %i.bm
  store ptr %i.bt, ptr %i.ak, align 8, !tbaa !106
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backEOS2_.exit

bb.ab:                                            ; preds = %bb.u, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backEOS2_.exit74
  switch i32 %.0, label %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit [
    i32 36, label %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread100
    i32 4, label %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread100
    i32 12, label %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread.thread107
    i32 8, label %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread.thread107
    i32 24, label %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread.thread
    i32 16, label %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread.thread
    i32 48, label %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread92
    i32 32, label %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread92
  ]

_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit: ; preds = %bb.ab
  %i.bu = and i32 %.0, 4
  %.not44 = icmp eq i32 %i.bu, 0
  br i1 %.not44, label %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread, label %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread92

_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread92: ; preds = %bb.ab, %bb.ab, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit
  %.0.i6095 = phi i32 [ %.0, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit ], [ 4, %bb.ab ], [ 4, %bb.ab ]
  %i.bv = load double, ptr %1, align 8, !tbaa !79
  br label %bb.ac

_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread: ; preds = %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit
  %i.bw = and i32 %.0, 8
  %.not45 = icmp eq i32 %i.bw, 0
  br i1 %.not45, label %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread, label %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread100

_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread100: ; preds = %bb.ab, %bb.ab, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread
  %.0.i6090103 = phi i32 [ %.0, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread ], [ 8, %bb.ab ], [ 8, %bb.ab ]
  %i.bx = load double, ptr %i.i, align 8, !tbaa !103
  br label %bb.ac

_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread: ; preds = %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread
  %i.by = and i32 %.0, 16
  %.not46 = icmp eq i32 %i.by, 0
  br i1 %.not46, label %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread.thread, label %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread.thread107

_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread.thread107: ; preds = %bb.ab, %bb.ab, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread
  %.0.i609098110 = phi i32 [ %.0, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread ], [ 16, %bb.ab ], [ 16, %bb.ab ]
  %i.bz = load double, ptr %i.c, align 8, !tbaa !104
  br label %bb.ac

_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread.thread: ; preds = %bb.ab, %bb.ab, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread
  %.0.i609098106 = phi i32 [ %.0, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread ], [ 32, %bb.ab ], [ 32, %bb.ab ]
  %i.ca = load double, ptr %i.f, align 8, !tbaa !105
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread100, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread.thread, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread.thread107, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread92
  %.0.i6091 = phi i32 [ %.0.i6095, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread92 ], [ %.0.i6090103, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread100 ], [ %.0.i609098110, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread.thread107 ], [ %.0.i609098106, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread.thread ]
  %.143 = phi double [ %.042, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread92 ], [ %i.bx, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread100 ], [ %.042, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread.thread107 ], [ %i.ca, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread.thread ] ; 3 uses
  %.1 = phi double [ %i.bv, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread92 ], [ %.041, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread100 ], [ %i.bz, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread.thread107 ], [ %.041, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread.thread ] ; 3 uses
  %i.cb = load ptr, ptr %i.aj, align 8, !tbaa !91 ; 8 uses
  %i.cc = load ptr, ptr %i.ak, align 8, !tbaa !106
  %.not.i.i61 = icmp eq ptr %i.cb, %i.cc
  br i1 %.not.i.i61, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store double %.1, ptr %i.cb, align 8, !tbaa !99
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store double %.143, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !99
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  store double +qnan, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !99
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  store ptr %i.cd, ptr %i.aj, align 8, !tbaa !91
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backEOS2_.exit74.backedge

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backEOS2_.exit74.backedge: ; preds = %bb.ad, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i73
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backEOS2_.exit74, !llvm.loop !112

bb.ae:                                            ; preds = %bb.ac
  %i.ce = load ptr, ptr %2, align 8, !tbaa !94    ; 5 uses
  %i.cf = ptrtoint ptr %i.cb to i64
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.cf, %i.cg                    ; 3 uses
  %i.ci = icmp eq i64 %i.ch, 9223372036854775800
  br i1 %i.ci, label %bb.af, label %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i62

bb.af:                                            ; preds = %bb.ae
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #19
  unreachable

_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i62: ; preds = %bb.ae
  %i.cj = sdiv exact i64 %i.ch, 24                ; 3 uses
  %.sroa.speculated.i.i.i.i63 = tail call i64 @llvm.umax.i64(i64 %i.cj, i64 1)
  %i.ck = add nsw i64 %.sroa.speculated.i.i.i.i63, %i.cj ; 2 uses
  %i.cl = icmp ult i64 %i.ck, %i.cj
  %i.cm = tail call i64 @llvm.umin.i64(i64 %i.ck, i64 384307168202282325)
  %i.cn = select i1 %i.cl, i64 384307168202282325, i64 %i.cm ; 3 uses
  %.not.i.i.i.i64 = icmp ne i64 %i.cn, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i64)
  %i.co = mul nuw nsw i64 %i.cn, 24
  %i.cp = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.co) #18 ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.ch ; 3 uses
  store double %.1, ptr %i.cq, align 8, !tbaa !99
  %.sroa.5.0..sroa_idx76 = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store double %.143, ptr %.sroa.5.0..sroa_idx76, align 8, !tbaa !99
  %.sroa.6.0..sroa_idx78 = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  store double +qnan, ptr %.sroa.6.0..sroa_idx78, align 8, !tbaa !99
  %.not10.i.i.i.i.i.i.i65 = icmp eq ptr %i.ce, %i.cb
  br i1 %.not10.i.i.i.i.i.i.i65, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i70, label %.lr.ph.i.i.i.i.i.i.i66

.lr.ph.i.i.i.i.i.i.i66:                           ; preds = %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i62, %.lr.ph.i.i.i.i.i.i.i66
  %.012.i.i.i.i.i.i.i67 = phi ptr [ %i.cs, %.lr.ph.i.i.i.i.i.i.i66 ], [ %i.cp, %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i62 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i68 = phi ptr [ %i.cr, %.lr.ph.i.i.i.i.i.i.i66 ], [ %i.ce, %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i62 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i.i67, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i.i68, i64 24, i1 false), !tbaa.struct !98, !alias.scope !113
  %i.cr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i68, i64 24 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i67, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i69 = icmp eq ptr %i.cr, %i.cb
  br i1 %.not.i.i.i.i.i.i.i69, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i70, label %.lr.ph.i.i.i.i.i.i.i66, !llvm.loop !111

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i70: ; preds = %.lr.ph.i.i.i.i.i.i.i66, %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i62
  %.0.lcssa.i.i.i.i.i.i.i71 = phi ptr [ %i.cp, %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i62 ], [ %i.cs, %.lr.ph.i.i.i.i.i.i.i66 ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i71, i64 24
  %.not.i23.i.i.i72 = icmp eq ptr %i.ce, null
  br i1 %.not.i23.i.i.i72, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i73, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i70
  tail call void @_ZdlPv(ptr noundef nonnull %i.ce) #17
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i73

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i73: ; preds = %bb.ag, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i70
  store ptr %i.cp, ptr %2, align 8, !tbaa !94
  store ptr %i.ct, ptr %i.aj, align 8, !tbaa !91
  %i.cu = getelementptr inbounds nuw [24 x i8], ptr %i.cp, i64 %i.cn
  store ptr %i.cu, ptr %i.ak, align 8, !tbaa !106
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backEOS2_.exit74.backedge

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backEOS2_.exit: ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.x, %bb.v
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation12intersection28RectangleIntersectionBuilder10close_ringERKNS1_9RectangleEPSt6vectorINS_4geom10CoordinateESaIS8_EE(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(80) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef captures(none) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91
  %i.c = load ptr, ptr %2, align 8, !tbaa !94     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = getelementptr i8, ptr %i.c, i64 %i.f     ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -24
  %i.i = load double, ptr %i.c, align 8, !tbaa !95
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.k = load double, ptr %i.j, align 8, !tbaa !97
  %i.l = load double, ptr %i.h, align 8, !tbaa !95
  %i.m = getelementptr i8, ptr %i.g, i64 -16
  %i.n = load double, ptr %i.m, align 8, !tbaa !97
  tail call void @_ZN4geos9operation12intersection28RectangleIntersectionBuilder14close_boundaryERKNS1_9RectangleEPSt6vectorINS_4geom10CoordinateESaIS8_EEdddd(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %2, double noundef %i.l, double noundef %i.n, double noundef %i.i, double noundef %i.k)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation12intersection28RectangleIntersectionBuilder17reconnectPolygonsERKNS1_9RectangleE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::list.71", align 8 ; 22 uses
  %3 = alloca %"class.std::unique_ptr.24", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::list", align 8 ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !31
  store ptr %2, ptr %2, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store i64 0, ptr %i.b, align 8, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !36, !nonnull !46, !align !47 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !117  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 13 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !7    ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.g
  br i1 %i.i, label %bb.b, label %.lr.ph231

.lr.ph231:                                        ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  br label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = invoke noundef ptr @_ZNK4geos9operation12intersection9Rectangle12toLinearRingERKNS_4geom15GeometryFactoryE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(45) %i.d)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.l = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #18
          to label %bb.d unwind label %bb.g       ; 2 uses

bb.d:                                             ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  %i.m = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #18
          to label %bb.e unwind label %bb.g       ; 3 uses

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.k, ptr %i.n, align 8
  %.sroa.5196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr %i.l, ptr %.sroa.5196.0..sroa_idx, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %2) #16
  %i.o = load i64, ptr %i.b, align 8, !tbaa !123
  %i.p = add i64 %i.o, 1
  store i64 %i.p, ptr %i.b, align 8, !tbaa !123
  br label %.loopexit215

bb.f:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.g:                                             ; preds = %bb.d, %bb.c
  %i.r = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2_@_ZN4geos4util13GEOSExceptionD0Ev
define linkonce_odr void @_ZN4geos4util13GEOSExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #16
  tail call void @_ZdlPv(ptr noundef nonnull %0) #17
  ret void
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #13

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #3

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt7__cxx114listIPN4geos4geom7PolygonESaIS4_EE6insertISt20_List_const_iteratorIS4_EvEESt14_List_iteratorIS4_ES9_T_SC_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::list", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %4, ptr %i.a, align 8, !tbaa !31
  store ptr %4, ptr %4, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store i64 0, ptr %i.b, align 8, !tbaa !52
  %.not4.i.i = icmp eq ptr %2, %3
  br i1 %.not4.i.i, label %_ZNSt7__cxx1110_List_baseIPN4geos4geom7PolygonESaIS4_EED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.noexc.i
  %.sroa.01.05.i.i = phi ptr [ %i.i, %.noexc.i ], [ %2, %bb.a ] ; 2 uses
  %i.c = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #18
          to label %.noexc.i unwind label %bb.b   ; 2 uses

.noexc.i:                                         ; preds = %.lr.ph.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !11
  store ptr %i.f, ptr %i.e, align 8, !tbaa !11
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %4) #16
  %i.g = load i64, ptr %i.b, align 8, !tbaa !49
  %i.h = add i64 %i.g, 1
  store i64 %i.h, ptr %i.b, align 8, !tbaa !49
  %i.i = load ptr, ptr %.sroa.01.05.i.i, align 8, !tbaa !7 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %3
  br i1 %.not.i.i, label %_ZNSt7__cxx114listIPN4geos4geom7PolygonESaIS4_EEC2ISt20_List_const_iteratorIS4_EvEET_SA_RKS5_.exit, label %.lr.ph.i.i, !llvm.loop !173

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %4, align 8, !tbaa !7      ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.k, %4
  br i1 %.not8.i.i.i, label %.body, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i ], [ %i.k, %bb.b ] ; 2 uses
  %i.l = load ptr, ptr %.09.i.i.i, align 8, !tbaa !7 ; 2 uses
  call void @_ZdlPv(ptr noundef nonnull %.09.i.i.i) #17
  %.not.i.i.i = icmp eq ptr %i.l, %4
  br i1 %.not.i.i.i, label %.body, label %.lr.ph.i.i.i, !llvm.loop !22

_ZNSt7__cxx114listIPN4geos4geom7PolygonESaIS4_EEC2ISt20_List_const_iteratorIS4_EvEET_SA_RKS5_.exit: ; preds = %.noexc.i
  %.pre = load ptr, ptr %4, align 8, !tbaa !7     ; 4 uses
  %i.m = icmp eq ptr %.pre, %4
  br i1 %i.m, label %bb.c, label %_ZNSt7__cxx114listIPN4geos4geom7PolygonESaIS4_EE6spliceESt20_List_const_iteratorIS4_ERS6_.exit

_ZNSt7__cxx114listIPN4geos4geom7PolygonESaIS4_EE6spliceESt20_List_const_iteratorIS4_ERS6_.exit: ; preds = %_ZNSt7__cxx114listIPN4geos4geom7PolygonESaIS4_EEC2ISt20_List_const_iteratorIS4_EvEET_SA_RKS5_.exit
  call void @_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %.pre, ptr noundef nonnull align 8 dereferenceable(24) %4) #16
  %i.n = load i64, ptr %i.b, align 8, !tbaa !49
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !49
  %i.q = add i64 %i.p, %i.n
  store i64 %i.q, ptr %i.o, align 8, !tbaa !49
  store i64 0, ptr %i.b, align 8, !tbaa !49
  %.pre10 = load ptr, ptr %4, align 8, !tbaa !7
  br label %bb.c

.body:                                            ; preds = %.lr.ph.i.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  resume { ptr, i32 } %i.j

bb.c:                                             ; preds = %_ZNSt7__cxx114listIPN4geos4geom7PolygonESaIS4_EEC2ISt20_List_const_iteratorIS4_EvEET_SA_RKS5_.exit, %_ZNSt7__cxx114listIPN4geos4geom7PolygonESaIS4_EE6spliceESt20_List_const_iteratorIS4_ERS6_.exit
  %i.r = phi ptr [ %.pre10, %_ZNSt7__cxx114listIPN4geos4geom7PolygonESaIS4_EE6spliceESt20_List_const_iteratorIS4_ERS6_.exit ], [ %.pre, %_ZNSt7__cxx114listIPN4geos4geom7PolygonESaIS4_EEC2ISt20_List_const_iteratorIS4_EvEET_SA_RKS5_.exit ] ; 2 uses
  %.sroa.06.0 = phi ptr [ %.pre, %_ZNSt7__cxx114listIPN4geos4geom7PolygonESaIS4_EE6spliceESt20_List_const_iteratorIS4_ERS6_.exit ], [ %1, %_ZNSt7__cxx114listIPN4geos4geom7PolygonESaIS4_EEC2ISt20_List_const_iteratorIS4_EvEET_SA_RKS5_.exit ] ; 2 uses
  %.not8.i.i = icmp eq ptr %i.r, %4
  br i1 %.not8.i.i, label %_ZNSt7__cxx1110_List_baseIPN4geos4geom7PolygonESaIS4_EED2Ev.exit, label %.lr.ph.i.i7

.lr.ph.i.i7:                                      ; preds = %bb.c, %.lr.ph.i.i7
  %.09.i.i = phi ptr [ %i.s, %.lr.ph.i.i7 ], [ %i.r, %bb.c ] ; 2 uses
  %i.s = load ptr, ptr %.09.i.i, align 8, !tbaa !7 ; 2 uses
  call void @_ZdlPv(ptr noundef nonnull %.09.i.i) #17
  %.not.i.i8 = icmp eq ptr %i.s, %4
  br i1 %.not.i.i8, label %_ZNSt7__cxx1110_List_baseIPN4geos4geom7PolygonESaIS4_EED2Ev.exit, label %.lr.ph.i.i7, !llvm.loop !22

_ZNSt7__cxx1110_List_baseIPN4geos4geom7PolygonESaIS4_EED2Ev.exit: ; preds = %.lr.ph.i.i7, %bb.a, %bb.c
  %.sroa.06.020 = phi ptr [ %1, %bb.a ], [ %.sroa.06.0, %bb.c ], [ %.sroa.06.0, %.lr.ph.i.i7 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  ret ptr %.sroa.06.020
}

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt7__cxx114listIPN4geos4geom10LineStringESaIS4_EE6insertISt20_List_const_iteratorIS4_EvEESt14_List_iteratorIS4_ES9_T_SC_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::list.0", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %4, ptr %i.a, align 8, !tbaa !31
  store ptr %4, ptr %4, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store i64 0, ptr %i.b, align 8, !tbaa !52
  %.not4.i.i = icmp eq ptr %2, %3
  br i1 %.not4.i.i, label %_ZNSt7__cxx1110_List_baseIPN4geos4geom10LineStringESaIS4_EED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.noexc.i
  %.sroa.01.05.i.i = phi ptr [ %i.i, %.noexc.i ], [ %2, %bb.a ] ; 2 uses
  %i.c = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #18
          to label %.noexc.i unwind label %bb.b   ; 2 uses

.noexc.i:                                         ; preds = %.lr.ph.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !17
  store ptr %i.f, ptr %i.e, align 8, !tbaa !17
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %4) #16
  %i.g = load i64, ptr %i.b, align 8, !tbaa !26
  %i.h = add i64 %i.g, 1
  store i64 %i.h, ptr %i.b, align 8, !tbaa !26
  %i.i = load ptr, ptr %.sroa.01.05.i.i, align 8, !tbaa !7 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %3
  br i1 %.not.i.i, label %_ZNSt7__cxx114listIPN4geos4geom10LineStringESaIS4_EEC2ISt20_List_const_iteratorIS4_EvEET_SA_RKS5_.exit, label %.lr.ph.i.i, !llvm.loop !174

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %4, align 8, !tbaa !7      ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.k, %4
  br i1 %.not8.i.i.i, label %.body, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i ], [ %i.k, %bb.b ] ; 2 uses
  %i.l = load ptr, ptr %.09.i.i.i, align 8, !tbaa !7 ; 2 uses
  call void @_ZdlPv(ptr noundef nonnull %.09.i.i.i) #17
  %.not.i.i.i = icmp eq ptr %i.l, %4
  br i1 %.not.i.i.i, label %.body, label %.lr.ph.i.i.i, !llvm.loop !21

_ZNSt7__cxx114listIPN4geos4geom10LineStringESaIS4_EEC2ISt20_List_const_iteratorIS4_EvEET_SA_RKS5_.exit: ; preds = %.noexc.i
  %.pre = load ptr, ptr %4, align 8, !tbaa !7     ; 4 uses
  %i.m = icmp eq ptr %.pre, %4
  br i1 %i.m, label %bb.c, label %_ZNSt7__cxx114listIPN4geos4geom10LineStringESaIS4_EE6spliceESt20_List_const_iteratorIS4_ERS6_.exit

_ZNSt7__cxx114listIPN4geos4geom10LineStringESaIS4_EE6spliceESt20_List_const_iteratorIS4_ERS6_.exit: ; preds = %_ZNSt7__cxx114listIPN4geos4geom10LineStringESaIS4_EEC2ISt20_List_const_iteratorIS4_EvEET_SA_RKS5_.exit
  call void @_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %.pre, ptr noundef nonnull align 8 dereferenceable(24) %4) #16
  %i.n = load i64, ptr %i.b, align 8, !tbaa !26
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !26
  %i.q = add i64 %i.p, %i.n
  store i64 %i.q, ptr %i.o, align 8, !tbaa !26
  store i64 0, ptr %i.b, align 8, !tbaa !26
  %.pre10 = load ptr, ptr %4, align 8, !tbaa !7
  br label %bb.c

.body:                                            ; preds = %.lr.ph.i.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  resume { ptr, i32 } %i.j

bb.c:                                             ; preds = %_ZNSt7__cxx114listIPN4geos4geom10LineStringESaIS4_EEC2ISt20_List_const_iteratorIS4_EvEET_SA_RKS5_.exit, %_ZNSt7__cxx114listIPN4geos4geom10LineStringESaIS4_EE6spliceESt20_List_const_iteratorIS4_ERS6_.exit
  %i.r = phi ptr [ %.pre10, %_ZNSt7__cxx114listIPN4geos4geom10LineStringESaIS4_EE6spliceESt20_List_const_iteratorIS4_ERS6_.exit ], [ %.pre, %_ZNSt7__cxx114listIPN4geos4geom10LineStringESaIS4_EEC2ISt20_List_const_iteratorIS4_EvEET_SA_RKS5_.exit ] ; 2 uses
  %.sroa.06.0 = phi ptr [ %.pre, %_ZNSt7__cxx114listIPN4geos4geom10LineStringESaIS4_EE6spliceESt20_List_const_iteratorIS4_ERS6_.exit ], [ %1, %_ZNSt7__cxx114listIPN4geos4geom10LineStringESaIS4_EEC2ISt20_List_const_iteratorIS4_EvEET_SA_RKS5_.exit ] ; 2 uses
  %.not8.i.i = icmp eq ptr %i.r, %4
  br i1 %.not8.i.i, label %_ZNSt7__cxx1110_List_baseIPN4geos4geom10LineStringESaIS4_EED2Ev.exit, label %.lr.ph.i.i7

.lr.ph.i.i7:                                      ; preds = %bb.c, %.lr.ph.i.i7
  %.09.i.i = phi ptr [ %i.s, %.lr.ph.i.i7 ], [ %i.r, %bb.c ] ; 2 uses
  %i.s = load ptr, ptr %.09.i.i, align 8, !tbaa !7 ; 2 uses
  call void @_ZdlPv(ptr noundef nonnull %.09.i.i) #17
  %.not.i.i8 = icmp eq ptr %i.s, %4
  br i1 %.not.i.i8, label %_ZNSt7__cxx1110_List_baseIPN4geos4geom10LineStringESaIS4_EED2Ev.exit, label %.lr.ph.i.i7, !llvm.loop !21

_ZNSt7__cxx1110_List_baseIPN4geos4geom10LineStringESaIS4_EED2Ev.exit: ; preds = %.lr.ph.i.i7, %bb.a, %bb.c
  %.sroa.06.020 = phi ptr [ %1, %bb.a ], [ %.sroa.06.0, %bb.c ], [ %.sroa.06.0, %.lr.ph.i.i7 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  ret ptr %.sroa.06.020
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { cold noreturn }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { nounwind }
attributes #17 = { builtin nounwind }
attributes #18 = { builtin allocsize(0) }
attributes #19 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTSNSt8__detail15_List_node_baseE", !9, i64 0, !9, i64 8}
!9 = !{!"p1 _ZTSNSt8__detail15_List_node_baseE", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 _ZTSN4geos4geom7PolygonE", !10, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"vtable pointer", !6, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!18, !18, i64 0}
!18 = !{!"p1 _ZTSN4geos4geom10LineStringE", !10, i64 0}
!19 = distinct !{!19, !16}
!20 = distinct !{!20, !16}
!21 = distinct !{!21, !16}
!22 = distinct !{!22, !16}
!23 = !{!24, !24, i64 0}
!24 = !{!"p1 _ZTSN4geos4geom5PointE", !10, i64 0}
!25 = distinct !{!25, !16}
!26 = !{!27, !30, i64 16}
!27 = !{!"_ZTSNSt7__cxx1110_List_baseIPN4geos4geom10LineStringESaIS4_EEE", !28, i64 0}
!28 = !{!"_ZTSNSt7__cxx1110_List_baseIPN4geos4geom10LineStringESaIS4_EE10_List_implE", !29, i64 0}
!29 = !{!"_ZTSNSt8__detail17_List_node_headerE", !8, i64 0, !30, i64 16}
!30 = !{!"long", !5, i64 0}
!31 = !{!8, !9, i64 8}
!32 = distinct !{null}
!33 = distinct !{null}
!34 = !{!35, !35, i64 0}
!35 = !{!"p1 _ZTSN4geos4geom23CoordinateArraySequenceE", !10, i64 0}
!36 = !{!37, !45, i64 72}
!37 = !{!"_ZTSN4geos9operation12intersection28RectangleIntersectionBuilderE", !38, i64 0, !41, i64 24, !42, i64 48, !45, i64 72}
!38 = !{!"_ZTSNSt7__cxx114listIPN4geos4geom7PolygonESaIS4_EEE", !39, i64 0}
!39 = !{!"_ZTSNSt7__cxx1110_List_baseIPN4geos4geom7PolygonESaIS4_EEE", !40, i64 0}
!40 = !{!"_ZTSNSt7__cxx1110_List_baseIPN4geos4geom7PolygonESaIS4_EE10_List_implE", !29, i64 0}
!41 = !{!"_ZTSNSt7__cxx114listIPN4geos4geom10LineStringESaIS4_EEE", !27, i64 0}
!42 = !{!"_ZTSNSt7__cxx114listIPN4geos4geom5PointESaIS4_EEE", !43, i64 0}
!43 = !{!"_ZTSNSt7__cxx1110_List_baseIPN4geos4geom5PointESaIS4_EEE", !44, i64 0}
!44 = !{!"_ZTSNSt7__cxx1110_List_baseIPN4geos4geom5PointESaIS4_EE10_List_implE", !29, i64 0}
!45 = !{!"p1 _ZTSN4geos4geom15GeometryFactoryE", !10, i64 0}
!46 = !{}
!47 = !{i64 8}
!48 = distinct !{null, null}
!49 = !{!39, !30, i64 16}
!50 = distinct !{!50, !16}
!51 = distinct !{!51, !16}
!52 = !{!29, !30, i64 16}
!53 = !{!43, !30, i64 16}
!54 = distinct !{!54, !16}
!55 = !{!56, !56, i64 0}
!56 = !{!"p1 _ZTSN4geos4geom18GeometryCollectionE", !10, i64 0}
!57 = !{!58, !59, i64 0}
!58 = !{!"_ZTSSt10_Head_baseILm0EPN4geos4geom8GeometryELb0EE", !59, i64 0}
!59 = !{!"p1 _ZTSN4geos4geom8GeometryE", !10, i64 0}
!60 = !{!61, !62, i64 0}
!61 = !{!"_ZTSNSt12_Vector_baseIPN4geos4geom8GeometryESaIS3_EE17_Vector_impl_dataE", !62, i64 0, !62, i64 8, !62, i64 16}
!62 = !{!"p2 _ZTSN4geos4geom8GeometryE", !63, i64 0}
!63 = !{!"any p2 pointer", !10, i64 0}
!64 = !{!61, !62, i64 8}
!65 = !{!61, !62, i64 16}
!66 = !{!59, !59, i64 0}
!67 = distinct !{!67, !16}
!68 = distinct !{!68, !16}
!69 = !{!70, !45, i64 24}
!70 = !{!"_ZTSN4geos4geom8GeometryE", !71, i64 8, !4, i64 16, !45, i64 24, !10, i64 32}
!71 = !{!"_ZTSSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS2_EE", !72, i64 0}
!72 = !{!"_ZTSSt15__uniq_ptr_dataIN4geos4geom8EnvelopeESt14default_deleteIS2_ELb1ELb1EE", !73, i64 0}
!73 = !{!"_ZTSSt15__uniq_ptr_implIN4geos4geom8EnvelopeESt14default_deleteIS2_EE", !74, i64 0}
!74 = !{!"_ZTSSt5tupleIJPN4geos4geom8EnvelopeESt14default_deleteIS2_EEE", !75, i64 0}
!75 = !{!"_ZTSSt11_Tuple_implILm0EJPN4geos4geom8EnvelopeESt14default_deleteIS2_EEE", !76, i64 0}
!76 = !{!"_ZTSSt10_Head_baseILm0EPN4geos4geom8EnvelopeELb0EE", !77, i64 0}
!77 = !{!"p1 _ZTSN4geos4geom8EnvelopeE", !10, i64 0}
!78 = distinct !{!78, !16}
!79 = !{!80, !81, i64 0}
!80 = !{!"_ZTSN4geos9operation12intersection9RectangleE", !81, i64 0, !81, i64 8, !81, i64 16, !81, i64 24}
!81 = !{!"double", !5, i64 0}
!82 = !{!83, !85, i64 0}
!83 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !84, i64 0, !30, i64 8, !5, i64 16}
!84 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !85, i64 0}
!85 = !{!"p1 omnipotent char", !10, i64 0}
!86 = distinct !{!86, !16}
!87 = !{!84, !85, i64 0}
!88 = !{!30, !30, i64 0}
!89 = !{!5, !5, i64 0}
!90 = !{!83, !30, i64 8}
!91 = !{!92, !93, i64 8}
!92 = !{!"_ZTSNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE17_Vector_impl_dataE", !93, i64 0, !93, i64 8, !93, i64 16}
!93 = !{!"p1 _ZTSN4geos4geom10CoordinateE", !10, i64 0}
!94 = !{!92, !93, i64 0}
!95 = !{!96, !81, i64 0}
!96 = !{!"_ZTSN4geos4geom10CoordinateE", !81, i64 0, !81, i64 8, !81, i64 16}
!97 = !{!96, !81, i64 8}
!98 = !{i64 0, i64 8, !99, i64 8, i64 8, !99, i64 16, i64 8, !99}
!99 = !{!81, !81, i64 0}
!100 = distinct !{!100, !16}
!101 = !{!93, !93, i64 0}
!102 = distinct !{!102, !16}
!103 = !{!80, !81, i64 24}
!104 = !{!80, !81, i64 16}
!105 = !{!80, !81, i64 8}
!106 = !{!92, !93, i64 16}
!107 = !{!108, !110}
!108 = distinct !{!108, !109, !"_ZSt19__relocate_object_aIN4geos4geom10CoordinateES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!109 = distinct !{!109, !"_ZSt19__relocate_object_aIN4geos4geom10CoordinateES2_SaIS2_EEvPT_PT0_RT1_"}
!110 = distinct !{!110, !109, !"_ZSt19__relocate_object_aIN4geos4geom10CoordinateES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!111 = distinct !{!111, !16}
!112 = distinct !{!112, !16}
!113 = !{!114, !116}
!114 = distinct !{!114, !115, !"_ZSt19__relocate_object_aIN4geos4geom10CoordinateES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!115 = distinct !{!115, !"_ZSt19__relocate_object_aIN4geos4geom10CoordinateES2_SaIS2_EEvPT_PT0_RT1_"}
!116 = distinct !{!116, !115, !"_ZSt19__relocate_object_aIN4geos4geom10CoordinateES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!117 = !{!118, !121, i64 32}
!118 = !{!"_ZTSN4geos4geom15GeometryFactoryE", !119, i64 8, !4, i64 24, !121, i64 32, !4, i64 40, !122, i64 44}
!119 = !{!"_ZTSN4geos4geom14PrecisionModelE", !120, i64 0, !81, i64 8}
!120 = !{!"_ZTSN4geos4geom14PrecisionModel4TypeE", !5, i64 0}
!121 = !{!"p1 _ZTSN4geos4geom25CoordinateSequenceFactoryE", !10, i64 0}
!122 = !{!"bool", !5, i64 0}
!123 = !{!124, !30, i64 16}
!124 = !{!"_ZTSNSt7__cxx1110_List_baseISt4pairIPN4geos4geom10LinearRingEPSt6vectorIS5_SaIS5_EEESaISA_EEE", !125, i64 0}
!125 = !{!"_ZTSNSt7__cxx1110_List_baseISt4pairIPN4geos4geom10LinearRingEPSt6vectorIS5_SaIS5_EEESaISA_EE10_List_implE", !29, i64 0}
!126 = !{ptr @_ZN4geos9operation12intersection8distanceERKNS1_9RectangleERKSt6vectorINS_4geom10CoordinateESaIS7_EEPKNS6_10LineStringE}
!127 = distinct !{!127, !16}
!128 = !{!129, !129, i64 0}
!129 = !{!"p1 _ZTSN4geos4geom18CoordinateSequenceE", !10, i64 0}
!130 = distinct !{null, null}
!131 = !{!132, !134}
!132 = distinct !{!132, !133, !"_ZSt19__relocate_object_aIN4geos4geom10CoordinateES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!133 = distinct !{!133, !"_ZSt19__relocate_object_aIN4geos4geom10CoordinateES2_SaIS2_EEvPT_PT0_RT1_"}
!134 = distinct !{!134, !133, !"_ZSt19__relocate_object_aIN4geos4geom10CoordinateES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!135 = distinct !{!135, !16}
!136 = distinct !{!136, !16}
!137 = !{!138, !140, i64 8}
!138 = !{!"_ZTSSt4pairIPN4geos4geom10LinearRingEPSt6vectorIS3_SaIS3_EEE", !139, i64 0, !140, i64 8}
!139 = !{!"p1 _ZTSN4geos4geom10LinearRingE", !10, i64 0}
!140 = !{!"p1 _ZTSSt6vectorIPN4geos4geom10LinearRingESaIS3_EE", !10, i64 0}
!141 = !{!142, !143, i64 8}
!142 = !{!"_ZTSNSt12_Vector_baseIPN4geos4geom10LinearRingESaIS3_EE17_Vector_impl_dataE", !143, i64 0, !143, i64 8, !143, i64 16}
!143 = !{!"p2 _ZTSN4geos4geom10LinearRingE", !63, i64 0}
!144 = !{!142, !143, i64 16}
!145 = !{!139, !139, i64 0}
!146 = !{!142, !143, i64 0}
!147 = !{!138, !139, i64 0}
!148 = distinct !{!148, !16}
!149 = distinct !{!149, !16}
!150 = distinct !{!150, !16}
!151 = distinct !{!151, !16}
!152 = distinct !{!152, !16}
!153 = distinct !{!153, !16}
!154 = !{!155}
!155 = distinct !{!155, !156, !"_ZNSt7__cxx114listIPN4geos4geom10LineStringESaIS4_EE4rendEv: argument 0"}
!156 = distinct !{!156, !"_ZNSt7__cxx114listIPN4geos4geom10LineStringESaIS4_EE4rendEv"}
!157 = distinct !{!157, !16}
!158 = distinct !{!158, !16}
!159 = !{!160}
!160 = distinct !{!160, !161, !"_ZNK4geos4geom10LineString7reverseEv: argument 0"}
!161 = distinct !{!161, !"_ZNK4geos4geom10LineString7reverseEv"}
!162 = distinct !{null}
end_hunk_2
