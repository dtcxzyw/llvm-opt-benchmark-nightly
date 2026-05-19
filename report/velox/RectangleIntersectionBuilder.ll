inline.NumInlined: 915
inline.NumDeleted: 501
begin_hunk_0_@_ZN4geos9operation12intersection28RectangleIntersectionBuilder5buildEv:bb.a
  br i1 %.not.i17.i.i.i30, label %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i31, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i29
  tail call void @_ZdlPv(ptr noundef nonnull %i.cm) #17
  br label %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i31

_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i31: ; preds = %bb.t, %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i29
  store ptr %i.cx, ptr %i.o, align 8, !tbaa !60
  store ptr %i.da, ptr %i.bb, align 8, !tbaa !64
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.cv ; 2 uses
  store ptr %i.db, ptr %i.q, align 8, !tbaa !65
  br label %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE9push_backEOS3_.exit32

_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE9push_backEOS3_.exit32: ; preds = %bb.p, %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i31
  %i.dc = phi ptr [ %i.ch, %bb.p ], [ %i.db, %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i31 ]
  %i.dd = phi ptr [ %i.cl, %bb.p ], [ %i.da, %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i31 ]
  %.sroa.034.0 = load ptr, ptr %.sroa.034.061, align 8, !tbaa !7 ; 2 uses
  %.not50 = icmp eq ptr %.sroa.034.0, %i.g
  br i1 %.not50, label %._crit_edge63.loopexit, label %bb.o, !llvm.loop !78

bb.u:                                             ; preds = %_ZNSt7__cxx114listIPN4geos4geom5PointESaIS4_EE5clearEv.exit, %_ZNSt10unique_ptrIN4geos4geom18GeometryCollectionESt14default_deleteIS2_EED2Ev.exit
  ret void
}

declare void @_ZNK4geos4geom15GeometryFactory24createGeometryCollectionEv(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.54") align 8, ptr noundef nonnull align 8 dereferenceable(45)) local_unnamed_addr #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

declare noundef ptr @_ZNK4geos4geom15GeometryFactory13buildGeometryEPSt6vectorIPNS0_8GeometryESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(45), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef double @_ZN4geos9operation12intersection8distanceERKNS1_9RectangleEdddd(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator.67", align 1 ; 5 uses
  %i.a = load double, ptr %0, align 8, !tbaa !79  ; 9 uses
  %i.b = fcmp ogt double %1, %i.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load double, ptr %i.c, align 8           ; 9 uses
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
  %7 = add nsw i32 %.060, -4                      ; 2 uses
  %i.bg = tail call i32 @llvm.fshl.i32(i32 %7, i32 %7, i32 30)
  switch i32 %i.bg, label %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit [
    i32 8, label %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread106
    i32 0, label %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread106
    i32 2, label %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread.thread113
    i32 1, label %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread.thread113
    i32 5, label %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread.thread
    i32 3, label %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread.thread
    i32 11, label %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread98
    i32 7, label %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread98
  ]

_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit: ; preds = %bb.ac
  %i.bh = and i32 %.060, 4
  %.not69 = icmp eq i32 %i.bh, 0
  br i1 %.not69, label %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread, label %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread98

_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread98: ; preds = %bb.ac, %bb.ac, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit
  %.0.i89101 = phi i32 [ %.060, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit ], [ 4, %bb.ac ], [ 4, %bb.ac ]
  %i.bi = fsub double %.058, %i.a
  br label %bb.ad

_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread: ; preds = %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit
  %i.bj = and i32 %.060, 8
  %.not70 = icmp eq i32 %i.bj, 0
  br i1 %.not70, label %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread, label %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread106

_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread106: ; preds = %bb.ac, %bb.ac, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread
  %.0.i8997109 = phi i32 [ %.060, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread ], [ 8, %bb.ac ], [ 8, %bb.ac ]
  %i.bk = fsub double %i.j, %.063
  br label %bb.ad

_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread: ; preds = %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread
  %i.bl = and i32 %.060, 16
  %.not71 = icmp eq i32 %i.bl, 0
  br i1 %.not71, label %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread.thread, label %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread.thread113

_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread.thread113: ; preds = %bb.ac, %bb.ac, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread
  %.0.i8997104116 = phi i32 [ %.060, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread ], [ 16, %bb.ac ], [ 16, %bb.ac ]
  %i.bm = fsub double %i.d, %.058
  br label %bb.ad

_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread.thread: ; preds = %bb.ac, %bb.ac, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread
  %.0.i8997104112 = phi i32 [ %.060, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread ], [ 32, %bb.ac ], [ 32, %bb.ac ]
  %i.bn = fsub double %.063, %i.g
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread106, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread.thread, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread.thread113, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread98
  %.0.i8996 = phi i32 [ %.0.i89101, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread98 ], [ %.0.i8997109, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread106 ], [ %.0.i8997104116, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread.thread113 ], [ %.0.i8997104112, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread.thread ]
  %.164 = phi double [ %.063, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread98 ], [ %i.j, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread106 ], [ %.063, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread.thread113 ], [ %i.g, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread.thread ]
  %.pn = phi double [ %i.bi, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread98 ], [ %i.bk, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread106 ], [ %i.bm, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread.thread113 ], [ %i.bn, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread.thread ]
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
begin_hunk_1_@_ZN4geos9operation12intersection14normalize_ringERSt6vectorINS_4geom10CoordinateESaIS4_EE:bb.a
  %i.z = load ptr, ptr %0, align 8, !tbaa !94
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %.019.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.014.i, i64 16, i1 false), !tbaa.struct !98
  %.sroa.515.0..sroa_idx16.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store double %.sroa.515.0.copyload.i, ptr %.sroa.515.0..sroa_idx16.i, align 8, !tbaa !99
  %i.ab = add nuw i64 %.01118.i, 1                ; 2 uses
  %i.ac = add i64 %.019.i, -1                     ; 2 uses
  %i.ad = icmp ult i64 %i.ab, %i.ac
  br i1 %i.ad, label %.lr.ph.i, label %_ZN4geos9operation12intersection14reverse_pointsERSt6vectorINS_4geom10CoordinateESaIS4_EEmm.exit, !llvm.loop !100

_ZN4geos9operation12intersection14reverse_pointsERSt6vectorINS_4geom10CoordinateESaIS4_EEmm.exit: ; preds = %.lr.ph.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.014.i)
  %i.ae = add nsw i64 %i.h, -2                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.014.i31)
  %i.af = icmp ult i64 %.1, %i.ae
  br i1 %i.af, label %.lr.ph.i32, label %_ZN4geos9operation12intersection14reverse_pointsERSt6vectorINS_4geom10CoordinateESaIS4_EEmm.exit40

.lr.ph.i32:                                       ; preds = %_ZN4geos9operation12intersection14reverse_pointsERSt6vectorINS_4geom10CoordinateESaIS4_EEmm.exit, %.lr.ph.i32
  %.019.i33 = phi i64 [ %i.am, %.lr.ph.i32 ], [ %i.ae, %_ZN4geos9operation12intersection14reverse_pointsERSt6vectorINS_4geom10CoordinateESaIS4_EEmm.exit ] ; 3 uses
  %.01118.i34 = phi i64 [ %i.al, %.lr.ph.i32 ], [ %.1, %_ZN4geos9operation12intersection14reverse_pointsERSt6vectorINS_4geom10CoordinateESaIS4_EEmm.exit ] ; 2 uses
  %i.ag = load ptr, ptr %0, align 8, !tbaa !94    ; 2 uses
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %.01118.i34 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.014.i31, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !tbaa.struct !98
  %.sroa.515.0..sroa_idx.i35 = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  %.sroa.515.0.copyload.i36 = load double, ptr %.sroa.515.0..sroa_idx.i35, align 8, !tbaa !99
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %.019.i33 ; 2 uses
  %.sroa.5.0..sroa_idx.i37 = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.sroa.5.0.copyload.i38 = load double, ptr %.sroa.5.0..sroa_idx.i37, align 8, !tbaa !99
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i64 16, i1 false)
  store double %.sroa.5.0.copyload.i38, ptr %.sroa.515.0..sroa_idx.i35, align 8, !tbaa !99
  %i.aj = load ptr, ptr %0, align 8, !tbaa !94
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.aj, i64 %.019.i33 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.014.i31, i64 16, i1 false), !tbaa.struct !98
  %.sroa.515.0..sroa_idx16.i39 = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store double %.sroa.515.0.copyload.i36, ptr %.sroa.515.0..sroa_idx16.i39, align 8, !tbaa !99
  %i.al = add nuw i64 %.01118.i34, 1              ; 2 uses
  %i.am = add i64 %.019.i33, -1                   ; 2 uses
  %i.an = icmp ult i64 %i.al, %i.am
  br i1 %i.an, label %.lr.ph.i32, label %_ZN4geos9operation12intersection14reverse_pointsERSt6vectorINS_4geom10CoordinateESaIS4_EEmm.exit40, !llvm.loop !100

_ZN4geos9operation12intersection14reverse_pointsERSt6vectorINS_4geom10CoordinateESaIS4_EEmm.exit40: ; preds = %.lr.ph.i32, %_ZN4geos9operation12intersection14reverse_pointsERSt6vectorINS_4geom10CoordinateESaIS4_EEmm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.014.i31)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.014.i41)
  %.not53 = icmp eq i64 %i.ae, 0
  br i1 %.not53, label %_ZN4geos9operation12intersection14reverse_pointsERSt6vectorINS_4geom10CoordinateESaIS4_EEmm.exit50, label %.lr.ph.i42

.lr.ph.i42:                                       ; preds = %_ZN4geos9operation12intersection14reverse_pointsERSt6vectorINS_4geom10CoordinateESaIS4_EEmm.exit40, %.lr.ph.i42
  %.019.i43 = phi i64 [ %i.au, %.lr.ph.i42 ], [ %i.ae, %_ZN4geos9operation12intersection14reverse_pointsERSt6vectorINS_4geom10CoordinateESaIS4_EEmm.exit40 ] ; 3 uses
  %.01118.i44 = phi i64 [ %i.at, %.lr.ph.i42 ], [ 0, %_ZN4geos9operation12intersection14reverse_pointsERSt6vectorINS_4geom10CoordinateESaIS4_EEmm.exit40 ] ; 2 uses
  %i.ao = load ptr, ptr %0, align 8, !tbaa !94    ; 2 uses
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %.01118.i44 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.014.i41, ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i64 16, i1 false), !tbaa.struct !98
  %.sroa.515.0..sroa_idx.i45 = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  %.sroa.515.0.copyload.i46 = load double, ptr %.sroa.515.0..sroa_idx.i45, align 8, !tbaa !99
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %.019.i43 ; 2 uses
  %.sroa.5.0..sroa_idx.i47 = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %.sroa.5.0.copyload.i48 = load double, ptr %.sroa.5.0..sroa_idx.i47, align 8, !tbaa !99
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i64 16, i1 false)
  store double %.sroa.5.0.copyload.i48, ptr %.sroa.515.0..sroa_idx.i45, align 8, !tbaa !99
  %i.ar = load ptr, ptr %0, align 8, !tbaa !94
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.ar, i64 %.019.i43 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.014.i41, i64 16, i1 false), !tbaa.struct !98
  %.sroa.515.0..sroa_idx16.i49 = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store double %.sroa.515.0.copyload.i46, ptr %.sroa.515.0..sroa_idx16.i49, align 8, !tbaa !99
  %i.at = add nuw i64 %.01118.i44, 1              ; 2 uses
  %i.au = add i64 %.019.i43, -1                   ; 2 uses
  %i.av = icmp ult i64 %i.at, %i.au
  br i1 %i.av, label %.lr.ph.i42, label %_ZN4geos9operation12intersection14reverse_pointsERSt6vectorINS_4geom10CoordinateESaIS4_EEmm.exit50, !llvm.loop !100

_ZN4geos9operation12intersection14reverse_pointsERSt6vectorINS_4geom10CoordinateESaIS4_EEmm.exit50: ; preds = %.lr.ph.i42, %_ZN4geos9operation12intersection14reverse_pointsERSt6vectorINS_4geom10CoordinateESaIS4_EEmm.exit40
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.014.i41)
  %i.aw = load ptr, ptr %0, align 8, !tbaa !94    ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.sroa.5.0.copyload = load double, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !99
  %i.ax = getelementptr i8, ptr %i.aw, i64 %i.g   ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 -24
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i64 16, i1 false)
  %.sroa.5.0..sroa_idx51 = getelementptr i8, ptr %i.ax, i64 -8
  store double %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx51, align 8, !tbaa !99
  br label %bb.g

bb.g:                                             ; preds = %_ZN4geos9operation12intersection14reverse_pointsERSt6vectorINS_4geom10CoordinateESaIS4_EEmm.exit50, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation12intersection28RectangleIntersectionBuilder14close_boundaryERKNS1_9RectangleEPSt6vectorINS_4geom10CoordinateESaIS8_EEdddd(ptr nonnull readnone align 8 captures(none) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef captures(none) %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load double, ptr %1, align 8, !tbaa !79  ; 6 uses
  %i.b = fcmp ogt double %5, %i.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.d = load double, ptr %i.c, align 8           ; 6 uses
  %i.e = fcmp olt double %5, %i.d
  %or.cond.i = select i1 %i.b, i1 %i.e, i1 false
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.g = load double, ptr %i.f, align 8           ; 6 uses
  %i.h = fcmp ogt double %6, %i.g
  %or.cond29.i = select i1 %or.cond.i, i1 %i.h, i1 false
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.j = load double, ptr %i.i, align 8           ; 6 uses
  %i.k = fcmp olt double %6, %i.j
  %or.cond32.i = select i1 %or.cond29.i, i1 %i.k, i1 false
  br i1 %or.cond32.i, label %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = fcmp olt double %5, %i.a
  %i.m = fcmp ogt double %5, %i.d
  %or.cond33.i = select i1 %i.l, i1 true, i1 %i.m
  %i.n = fcmp olt double %6, %i.g
  %or.cond34.i = select i1 %or.cond33.i, i1 true, i1 %i.n
  %i.o = fcmp ogt double %6, %i.j
  %or.cond35.i = select i1 %or.cond34.i, i1 true, i1 %i.o
  br i1 %or.cond35.i, label %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit, label %bb.c

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
  %7 = add nsw i32 %.0, -4                        ; 2 uses
  %i.bu = tail call i32 @llvm.fshl.i32(i32 %7, i32 %7, i32 30)
  switch i32 %i.bu, label %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit [
    i32 8, label %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread100
    i32 0, label %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread100
    i32 2, label %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread.thread107
    i32 1, label %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread.thread107
    i32 5, label %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread.thread
    i32 3, label %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread.thread
    i32 11, label %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread92
    i32 7, label %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread92
  ]

_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit: ; preds = %bb.ab
  %i.bv = and i32 %.0, 4
  %.not44 = icmp eq i32 %i.bv, 0
  br i1 %.not44, label %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread, label %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread92

_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread92: ; preds = %bb.ab, %bb.ab, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit
  %.0.i6095 = phi i32 [ %.0, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit ], [ 4, %bb.ab ], [ 4, %bb.ab ]
  %i.bw = load double, ptr %1, align 8, !tbaa !79
  br label %bb.ac

_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread: ; preds = %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit
  %i.bx = and i32 %.0, 8
  %.not45 = icmp eq i32 %i.bx, 0
  br i1 %.not45, label %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread, label %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread100

_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread100: ; preds = %bb.ab, %bb.ab, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread
  %.0.i6090103 = phi i32 [ %.0, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread ], [ 8, %bb.ab ], [ 8, %bb.ab ]
  %i.by = load double, ptr %i.i, align 8, !tbaa !103
  br label %bb.ac

_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread: ; preds = %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread
  %i.bz = and i32 %.0, 16
  %.not46 = icmp eq i32 %i.bz, 0
  br i1 %.not46, label %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread.thread, label %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread.thread107

_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread.thread107: ; preds = %bb.ab, %bb.ab, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread
  %.0.i609098110 = phi i32 [ %.0, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread ], [ 16, %bb.ab ], [ 16, %bb.ab ]
  %i.ca = load double, ptr %i.c, align 8, !tbaa !104
  br label %bb.ac

_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread.thread: ; preds = %bb.ab, %bb.ab, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread
  %.0.i609098106 = phi i32 [ %.0, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread ], [ 32, %bb.ab ], [ 32, %bb.ab ]
  %i.cb = load double, ptr %i.f, align 8, !tbaa !105
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread100, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread.thread, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread.thread107, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread92
  %.0.i6091 = phi i32 [ %.0.i6095, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread92 ], [ %.0.i6090103, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread100 ], [ %.0.i609098110, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread.thread107 ], [ %.0.i609098106, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread.thread ]
  %.143 = phi double [ %.042, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread92 ], [ %i.by, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread100 ], [ %.042, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread.thread107 ], [ %i.cb, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread.thread ] ; 3 uses
  %.1 = phi double [ %i.bw, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread92 ], [ %.041, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread100 ], [ %i.ca, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread.thread107 ], [ %.041, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread.thread ] ; 3 uses
  %i.cc = load ptr, ptr %i.aj, align 8, !tbaa !91 ; 8 uses
  %i.cd = load ptr, ptr %i.ak, align 8, !tbaa !106
  %.not.i.i61 = icmp eq ptr %i.cc, %i.cd
  br i1 %.not.i.i61, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store double %.1, ptr %i.cc, align 8, !tbaa !99
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store double %.143, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !99
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store double +qnan, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !99
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  store ptr %i.ce, ptr %i.aj, align 8, !tbaa !91
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backEOS2_.exit74.backedge

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backEOS2_.exit74.backedge: ; preds = %bb.ad, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i73
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backEOS2_.exit74, !llvm.loop !112

bb.ae:                                            ; preds = %bb.ac
  %i.cf = load ptr, ptr %2, align 8, !tbaa !94    ; 5 uses
  %i.cg = ptrtoint ptr %i.cc to i64
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = sub i64 %i.cg, %i.ch                    ; 3 uses
  %i.cj = icmp eq i64 %i.ci, 9223372036854775800
  br i1 %i.cj, label %bb.af, label %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i62

bb.af:                                            ; preds = %bb.ae
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #19
  unreachable

_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i62: ; preds = %bb.ae
  %i.ck = sdiv exact i64 %i.ci, 24                ; 3 uses
  %.sroa.speculated.i.i.i.i63 = tail call i64 @llvm.umax.i64(i64 %i.ck, i64 1)
  %i.cl = add nsw i64 %.sroa.speculated.i.i.i.i63, %i.ck ; 2 uses
  %i.cm = icmp ult i64 %i.cl, %i.ck
  %i.cn = tail call i64 @llvm.umin.i64(i64 %i.cl, i64 384307168202282325)
  %i.co = select i1 %i.cm, i64 384307168202282325, i64 %i.cn ; 3 uses
  %.not.i.i.i.i64 = icmp ne i64 %i.co, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i64)
  %i.cp = mul nuw nsw i64 %i.co, 24
  %i.cq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cp) #18 ; 5 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.ci ; 3 uses
  store double %.1, ptr %i.cr, align 8, !tbaa !99
  %.sroa.5.0..sroa_idx76 = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store double %.143, ptr %.sroa.5.0..sroa_idx76, align 8, !tbaa !99
  %.sroa.6.0..sroa_idx78 = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store double +qnan, ptr %.sroa.6.0..sroa_idx78, align 8, !tbaa !99
  %.not10.i.i.i.i.i.i.i65 = icmp eq ptr %i.cf, %i.cc
  br i1 %.not10.i.i.i.i.i.i.i65, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i70, label %.lr.ph.i.i.i.i.i.i.i66

.lr.ph.i.i.i.i.i.i.i66:                           ; preds = %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i62, %.lr.ph.i.i.i.i.i.i.i66
  %.012.i.i.i.i.i.i.i67 = phi ptr [ %i.ct, %.lr.ph.i.i.i.i.i.i.i66 ], [ %i.cq, %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i62 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i68 = phi ptr [ %i.cs, %.lr.ph.i.i.i.i.i.i.i66 ], [ %i.cf, %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i62 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i.i67, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i.i68, i64 24, i1 false), !tbaa.struct !98, !alias.scope !113
  %i.cs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i68, i64 24 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i67, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i69 = icmp eq ptr %i.cs, %i.cc
  br i1 %.not.i.i.i.i.i.i.i69, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i70, label %.lr.ph.i.i.i.i.i.i.i66, !llvm.loop !111

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i70: ; preds = %.lr.ph.i.i.i.i.i.i.i66, %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i62
  %.0.lcssa.i.i.i.i.i.i.i71 = phi ptr [ %i.cq, %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i62 ], [ %i.ct, %.lr.ph.i.i.i.i.i.i.i66 ]
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i71, i64 24
  %.not.i23.i.i.i72 = icmp eq ptr %i.cf, null
  br i1 %.not.i23.i.i.i72, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i73, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i70
  tail call void @_ZdlPv(ptr noundef nonnull %i.cf) #17
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i73

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i73: ; preds = %bb.ag, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i70
  store ptr %i.cq, ptr %2, align 8, !tbaa !94
  store ptr %i.cu, ptr %i.aj, align 8, !tbaa !91
  %i.cv = getelementptr inbounds nuw [24 x i8], ptr %i.cq, i64 %i.co
  store ptr %i.cv, ptr %i.ak, align 8, !tbaa !106
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
