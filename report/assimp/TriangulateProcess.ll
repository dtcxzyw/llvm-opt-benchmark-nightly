inline.NumInlined: 605
inline.NumDeleted: 269
begin_hunk_0_@_ZN6mapbox6detail6EarcutIjE14findHoleBridgeEPNS2_4NodeES4_:bb.a
_ZN6mapbox6detail6EarcutIjE13locallyInsideEPKNS2_4NodeES5_.exit.thread: ; preds = %bb.n, %bb.m, %_ZN6mapbox6detail6EarcutIjE13locallyInsideEPKNS2_4NodeES5_.exit
  %i.cw = fcmp olt double %i.bb, %.080
  br i1 %i.cw, label %bb.r, label %bb.o

bb.o:                                             ; preds = %_ZN6mapbox6detail6EarcutIjE13locallyInsideEPKNS2_4NodeES5_.exit.thread
  %i.cx = fcmp oeq double %i.bb, %.080
  br i1 %i.cx, label %bb.p, label %_ZNK6mapbox6detail6EarcutIjE15pointInTriangleEdddddddd.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.cy = getelementptr inbounds nuw i8, ptr %.4, i64 8
  %i.cz = load double, ptr %i.cy, align 8         ; 5 uses
  %i.da = fcmp ogt double %i.ah, %i.cz
  br i1 %i.da, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.db = getelementptr inbounds nuw i8, ptr %.4, i64 24
  %i.dc = load ptr, ptr %i.db, align 8            ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.4, i64 16
  %i.de = load double, ptr %i.dd, align 8         ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.dg = load double, ptr %i.df, align 8
  %i.dh = fsub double %i.de, %i.dg
  %i.di = fsub double %i.bn, %i.cz
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.dk = load double, ptr %i.dj, align 8
  %i.dl = fsub double %i.cz, %i.dk
  %i.dm = fsub double %i.bh, %i.de
  %i.dn = fneg double %i.dm
  %i.do = fmul double %i.dl, %i.dn
  %i.dp = tail call noundef double @llvm.fmuladd.f64(double %i.dh, double %i.di, double %i.do)
  %i.dq = fcmp olt double %i.dp, 0.000000e+00
  br i1 %i.dq, label %_ZN6mapbox6detail6EarcutIjE20sectorContainsSectorEPKNS2_4NodeES5_.exit, label %_ZNK6mapbox6detail6EarcutIjE15pointInTriangleEdddddddd.exit.thread

_ZN6mapbox6detail6EarcutIjE20sectorContainsSectorEPKNS2_4NodeES5_.exit: ; preds = %bb.q
  %i.dr = getelementptr inbounds nuw i8, ptr %.4, i64 32
  %i.ds = load ptr, ptr %i.dr, align 8            ; 2 uses
  %i.dt = fsub double %i.de, %i.bq
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.dv = load double, ptr %i.du, align 8
  %i.dw = fsub double %i.dv, %i.cz
  %i.dx = fsub double %i.cz, %i.bk
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.dz = load double, ptr %i.dy, align 8
  %i.ea = fsub double %i.dz, %i.de
  %i.eb = fneg double %i.ea
  %i.ec = fmul double %i.dx, %i.eb
  %i.ed = tail call noundef double @llvm.fmuladd.f64(double %i.dt, double %i.dw, double %i.ec)
  %i.ee = fcmp olt double %i.ed, 0.000000e+00
  br i1 %i.ee, label %bb.r, label %_ZNK6mapbox6detail6EarcutIjE15pointInTriangleEdddddddd.exit.thread

bb.r:                                             ; preds = %_ZN6mapbox6detail6EarcutIjE20sectorContainsSectorEPKNS2_4NodeES5_.exit, %bb.p, %_ZN6mapbox6detail6EarcutIjE13locallyInsideEPKNS2_4NodeES5_.exit.thread
  br label %_ZNK6mapbox6detail6EarcutIjE15pointInTriangleEdddddddd.exit.thread

_ZNK6mapbox6detail6EarcutIjE15pointInTriangleEdddddddd.exit.thread: ; preds = %bb.q, %bb.l, %bb.i, %bb.j, %bb.m, %_ZN6mapbox6detail6EarcutIjE13locallyInsideEPKNS2_4NodeES5_.exit, %bb.o, %_ZN6mapbox6detail6EarcutIjE20sectorContainsSectorEPKNS2_4NodeES5_.exit, %bb.r, %bb.h
  %.5 = phi ptr [ %.179, %bb.r ], [ %.4, %_ZN6mapbox6detail6EarcutIjE20sectorContainsSectorEPKNS2_4NodeES5_.exit ], [ %.4, %bb.o ], [ %.4, %_ZN6mapbox6detail6EarcutIjE13locallyInsideEPKNS2_4NodeES5_.exit ], [ %.4, %bb.q ], [ %.4, %bb.h ], [ %.4, %bb.l ], [ %.4, %bb.i ], [ %.4, %bb.m ], [ %.4, %bb.j ] ; 2 uses
  %.181 = phi double [ %i.bb, %bb.r ], [ %.080, %_ZN6mapbox6detail6EarcutIjE20sectorContainsSectorEPKNS2_4NodeES5_.exit ], [ %.080, %bb.o ], [ %.080, %_ZN6mapbox6detail6EarcutIjE13locallyInsideEPKNS2_4NodeES5_.exit ], [ %.080, %bb.q ], [ %.080, %bb.h ], [ %.080, %bb.l ], [ %.080, %bb.i ], [ %.080, %bb.m ], [ %.080, %bb.j ]
  %i.ef = getelementptr inbounds nuw i8, ptr %.179, i64 32
  %i.eg = load ptr, ptr %i.ef, align 8            ; 2 uses
  %.not103 = icmp eq ptr %i.eg, %.390
  br i1 %.not103, label %.loopexit, label %bb.h, !llvm.loop !53

.loopexit:                                        ; preds = %bb.e, %_ZNK6mapbox6detail6EarcutIjE15pointInTriangleEdddddddd.exit.thread, %bb.f
  %.3 = phi ptr [ null, %bb.f ], [ %.5, %_ZNK6mapbox6detail6EarcutIjE15pointInTriangleEdddddddd.exit.thread ], [ %.078., %bb.e ]
  ret ptr %.3
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #9

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6mapbox6detail6EarcutIjE10ObjectPoolINS2_4NodeESaIS4_EE9constructIJRKjRKdSB_EEEPS4_DpOT_(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8              ; 4 uses
  %.not = icmp ult i64 %i.b, %i.d
  br i1 %.not, label %_ZNSt6vectorIPN6mapbox6detail6EarcutIjE4NodeESaIS5_EE12emplace_backIJRS5_EEES9_DpOT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ugt i64 %i.d, 128102389400760775
  br i1 %i.e, label %bb.c, label %_ZNSt15__new_allocatorIN6mapbox6detail6EarcutIjE4NodeEE8allocateEmPKv.exit, !prof !39

bb.c:                                             ; preds = %bb.b
  %i.f = icmp ugt i64 %i.d, 256204778801521550
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #19
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #19
  unreachable

_ZNSt15__new_allocatorIN6mapbox6detail6EarcutIjE4NodeEE8allocateEmPKv.exit: ; preds = %bb.b
  %i.g = mul nuw nsw i64 %i.d, 72
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #16 ; 3 uses
  store ptr %i.h, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8
  %.not.i = icmp eq ptr %i.k, %i.m
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt15__new_allocatorIN6mapbox6detail6EarcutIjE4NodeEE8allocateEmPKv.exit
  store ptr %i.h, ptr %i.k, align 8
  %i.n = load ptr, ptr %i.j, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.o, ptr %i.j, align 8
  br label %_ZNSt6vectorIPN6mapbox6detail6EarcutIjE4NodeESaIS5_EE12emplace_backIJRS5_EEES9_DpOT_.exit

bb.g:                                             ; preds = %_ZNSt15__new_allocatorIN6mapbox6detail6EarcutIjE4NodeEE8allocateEmPKv.exit
  %i.p = load ptr, ptr %i.i, align 8              ; 4 uses
  %i.q = ptrtoint ptr %i.k to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r                       ; 6 uses
  %i.t = icmp eq i64 %i.s, 9223372036854775800
  br i1 %i.t, label %bb.h, label %_ZNKSt6vectorIPN6mapbox6detail6EarcutIjE4NodeESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #19
  unreachable

_ZNKSt6vectorIPN6mapbox6detail6EarcutIjE4NodeESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.u = ashr exact i64 %i.s, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 1)
  %i.v = add nsw i64 %.sroa.speculated.i.i.i, %i.u ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.u
  %i.x = tail call i64 @llvm.umin.i64(i64 %i.v, i64 1152921504606846975)
  %i.y = select i1 %i.w, i64 1152921504606846975, i64 %i.x ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.y, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.z = shl nuw nsw i64 %i.y, 3
  %i.aa = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #16 ; 4 uses
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 %i.s ; 2 uses
  store ptr %i.h, ptr %i.ab, align 8
  %i.ac = icmp sgt i64 %i.s, 0
  br i1 %i.ac, label %bb.i, label %_ZNSt6vectorIPN6mapbox6detail6EarcutIjE4NodeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorIPN6mapbox6detail6EarcutIjE4NodeESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aa, ptr align 8 %i.p, i64 %i.s, i1 false)
  br label %_ZNSt6vectorIPN6mapbox6detail6EarcutIjE4NodeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i

_ZNSt6vectorIPN6mapbox6detail6EarcutIjE4NodeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i: ; preds = %bb.i, %_ZNKSt6vectorIPN6mapbox6detail6EarcutIjE4NodeESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.not.i17.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN6mapbox6detail6EarcutIjE4NodeESaIS5_EE17_M_realloc_insertIJRS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIPN6mapbox6detail6EarcutIjE4NodeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.s) #18
  br label %_ZNSt6vectorIPN6mapbox6detail6EarcutIjE4NodeESaIS5_EE17_M_realloc_insertIJRS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorIPN6mapbox6detail6EarcutIjE4NodeESaIS5_EE17_M_realloc_insertIJRS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorIPN6mapbox6detail6EarcutIjE4NodeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i
  store ptr %i.aa, ptr %i.i, align 8
  store ptr %i.ad, ptr %i.j, align 8
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.y
  store ptr %i.ae, ptr %i.l, align 8
  br label %_ZNSt6vectorIPN6mapbox6detail6EarcutIjE4NodeESaIS5_EE12emplace_backIJRS5_EEES9_DpOT_.exit

_ZNSt6vectorIPN6mapbox6detail6EarcutIjE4NodeESaIS5_EE12emplace_backIJRS5_EEES9_DpOT_.exit: ; preds = %_ZNSt6vectorIPN6mapbox6detail6EarcutIjE4NodeESaIS5_EE17_M_realloc_insertIJRS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, %bb.f, %bb.a
  %i.af = phi i64 [ %i.b, %bb.a ], [ 0, %bb.f ], [ 0, %_ZNSt6vectorIPN6mapbox6detail6EarcutIjE4NodeESaIS5_EE17_M_realloc_insertIJRS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i ] ; 2 uses
  %i.ag = load ptr, ptr %0, align 8
  %i.ah = add nuw i64 %i.af, 1
  store i64 %i.ah, ptr %i.a, align 8
  %i.ai = getelementptr inbounds nuw [72 x i8], ptr %i.ag, i64 %i.af ; 6 uses
  %i.aj = load i32, ptr %1, align 4
  %i.ak = load double, ptr %2, align 8
  %i.al = load double, ptr %3, align 8
  store i32 %i.aj, ptr %i.ai, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store double %i.ak, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store double %i.al, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ao, i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.ap, i8 0, i64 17, i1 false)
  ret ptr %i.ai
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6mapbox6detail6EarcutIjE10indexCurveEPNS2_4NodeE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.0 = phi ptr [ %1, %bb.a ], [ %i.ai, %bb.d ]   ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0, i64 40 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8              ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %2 = load <2 x double>, ptr %i.a, align 8
  %3 = load <2 x double>, ptr %i.b, align 8
  %i.g = load double, ptr %i.c, align 8
  %i.h = load <2 x double>, ptr %i.f, align 8
  %i.i = insertelement <2 x double> %2, double %i.g, i64 1
  %i.j = fsub <2 x double> %i.h, %i.i
  %i.k = shufflevector <2 x double> %3, <2 x double> poison, <2 x i32> zeroinitializer
  %i.l = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.m = fmul <2 x double> %i.k, %i.l
  %i.n = fptosi <2 x double> %i.m to <2 x i32>    ; 2 uses
  %i.o = shl <2 x i32> %i.n, splat (i32 8)
  %i.p = or <2 x i32> %i.o, %i.n
  %i.q = and <2 x i32> %i.p, splat (i32 16711935) ; 2 uses
  %i.r = shl nuw nsw <2 x i32> %i.q, splat (i32 4)
  %i.s = or <2 x i32> %i.r, %i.q
  %i.t = and <2 x i32> %i.s, splat (i32 252645135) ; 2 uses
  %i.u = shl nuw nsw <2 x i32> %i.t, splat (i32 2)
  %i.v = or <2 x i32> %i.u, %i.t
  %i.w = and <2 x i32> %i.v, splat (i32 858993459) ; 3 uses
  %i.x = shl nuw <2 x i32> %i.w, <i32 2, i32 1>
  %i.y = extractelement <2 x i32> %i.w, i64 0
  %i.z = shl nuw nsw i32 %i.y, 1
  %i.aa = insertelement <2 x i32> %i.w, i32 %i.z, i64 0
  %i.ab = or <2 x i32> %i.x, %i.aa
  %i.ac = and <2 x i32> %i.ab, <i32 -1431655766, i32 1431655765> ; 2 uses
  %shift = shufflevector <2 x i32> %i.ac, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = or disjoint <2 x i32> %i.ac, %shift
  %i.ad = extractelement <2 x i32> %foldExtExtBinop, i64 0
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.ae = phi i32 [ %i.ad, %bb.c ], [ %i.e, %bb.b ]
  store i32 %i.ae, ptr %i.d, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %.0, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %.0, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8            ; 4 uses
  %i.aj = load <2 x ptr>, ptr %i.af, align 8
  store <2 x ptr> %i.aj, ptr %i.ag, align 8
  %.not19 = icmp eq ptr %i.ai, %1
  br i1 %.not19, label %bb.e, label %bb.b, !llvm.loop !54

bb.e:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 48 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  store ptr null, ptr %i.am, align 8
  store ptr null, ptr %i.ak, align 8
  br label %.lr.ph80.i

.lr.ph80.i:                                       ; preds = %._crit_edge81.i, %bb.e
  %.058.i = phi ptr [ %i.ai, %bb.e ], [ %.260.us.i, %._crit_edge81.i ] ; 2 uses
  %.0.i = phi i32 [ 1, %bb.e ], [ %i.bs, %._crit_edge81.i ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.058.i) ]
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %.loopexit.us.i, %.lr.ph80.i
  %.04678.us.i = phi i32 [ %i.an, %.loopexit.us.i ], [ 0, %.lr.ph80.i ] ; 2 uses
  %.04877.us.i = phi ptr [ %.149.us.i, %.loopexit.us.i ], [ null, %.lr.ph80.i ]
  %.05576.us.i = phi ptr [ %.253.us.i, %.loopexit.us.i ], [ %.058.i, %.lr.ph80.i ] ; 2 uses
  %.15975.us.i = phi ptr [ %.260.us.i, %.loopexit.us.i ], [ null, %.lr.ph80.i ]
  %i.an = add nuw nsw i32 %.04678.us.i, 1
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %exitcond.not.i = icmp eq i32 %i.ao, %.0.i
  br i1 %exitcond.not.i, label %._crit_edge.us.i.preheader, label %bb.g, !llvm.loop !55

bb.g:                                             ; preds = %bb.f, %.lr.ph.us.i
  %.04469.us.i = phi i32 [ 0, %.lr.ph.us.i ], [ %i.ao, %bb.f ]
  %.05167.us.i = phi ptr [ %.05576.us.i, %.lr.ph.us.i ], [ %i.aq, %bb.f ]
  %i.ao = add nuw nsw i32 %.04469.us.i, 1         ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.05167.us.i, i64 56
  %i.aq = load ptr, ptr %i.ap, align 8            ; 3 uses
  %.not64.us.i = icmp eq ptr %i.aq, null
  br i1 %.not64.us.i, label %._crit_edge.us.i.preheader, label %bb.f

._crit_edge.us.i.preheader:                       ; preds = %bb.g, %bb.f
  %.2.us.i.ph = phi i32 [ %.0.i, %bb.f ], [ %i.ao, %bb.g ]
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %._crit_edge.us.i.preheader, %bb.p
  %.260.us.i = phi ptr [ %.361.us.i, %bb.p ], [ %.15975.us.i, %._crit_edge.us.i.preheader ] ; 3 uses
  %.156.us.i = phi ptr [ %.257.us.i, %bb.p ], [ %.05576.us.i, %._crit_edge.us.i.preheader ] ; 7 uses
  %.253.us.i = phi ptr [ %.354.us.i, %bb.p ], [ %i.aq, %._crit_edge.us.i.preheader ] ; 11 uses
  %.149.us.i = phi ptr [ %.050.us.i, %bb.p ], [ %.04877.us.i, %._crit_edge.us.i.preheader ] ; 5 uses
  %.2.us.i = phi i32 [ %.3.us.i, %bb.p ], [ %.2.us.i.ph, %._crit_edge.us.i.preheader ] ; 5 uses
  %.043.us.i = phi i32 [ %.1.us.i, %bb.p ], [ %.0.i, %._crit_edge.us.i.preheader ] ; 6 uses
  %i.ar = icmp sgt i32 %.2.us.i, 0
  br i1 %i.ar, label %.critedge.thread.us.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge.us.i
  %i.as = icmp sgt i32 %.043.us.i, 0
  %i.at = icmp ne ptr %.253.us.i, null
  %i.au = select i1 %i.as, i1 %i.at, i1 false
  br i1 %i.au, label %.critedge.us.i, label %.loopexit.us.i

.critedge.us.i:                                   ; preds = %bb.h
  %i.av = icmp eq i32 %.2.us.i, 0
  br i1 %i.av, label %bb.i, label %.critedge.thread.us.i

bb.i:                                             ; preds = %.critedge.us.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.253.us.i, i64 56
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = add nsw i32 %.043.us.i, -1
  br label %bb.n

.critedge.thread.us.i:                            ; preds = %.critedge.us.i, %._crit_edge.us.i
  %i.az = icmp ne i32 %.043.us.i, 0
  %i.ba = icmp ne ptr %.253.us.i, null
  %or.cond.us.i = select i1 %i.az, i1 %i.ba, i1 false
  br i1 %or.cond.us.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.critedge.thread.us.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.156.us.i, i64 56
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = add nsw i32 %.2.us.i, -1
  br label %bb.n

bb.k:                                             ; preds = %.critedge.thread.us.i
  %i.be = getelementptr inbounds nuw i8, ptr %.156.us.i, i64 40
  %i.bf = load i32, ptr %i.be, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %.253.us.i, i64 40
  %i.bh = load i32, ptr %i.bg, align 8
  %.not65.us.i = icmp sgt i32 %i.bf, %i.bh
  br i1 %.not65.us.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bi = getelementptr inbounds nuw i8, ptr %.156.us.i, i64 56
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = add nsw i32 %.2.us.i, -1
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %.253.us.i, i64 56
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = add nsw i32 %.043.us.i, -1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.j, %bb.i
  %.257.us.i = phi ptr [ %.156.us.i, %bb.i ], [ %i.bj, %bb.l ], [ %.156.us.i, %bb.m ], [ %i.bc, %bb.j ]
  %.354.us.i = phi ptr [ %i.ax, %bb.i ], [ %.253.us.i, %bb.l ], [ %i.bm, %bb.m ], [ %.253.us.i, %bb.j ]
  %.050.us.i = phi ptr [ %.253.us.i, %bb.i ], [ %.156.us.i, %bb.l ], [ %.253.us.i, %bb.m ], [ %.156.us.i, %bb.j ] ; 4 uses
  %.3.us.i = phi i32 [ 0, %bb.i ], [ %i.bk, %bb.l ], [ %.2.us.i, %bb.m ], [ %i.bd, %bb.j ]
  %.1.us.i = phi i32 [ %i.ay, %bb.i ], [ %.043.us.i, %bb.l ], [ %i.bn, %bb.m ], [ %.043.us.i, %bb.j ]
  %.not66.us.i = icmp eq ptr %.149.us.i, null
  br i1 %.not66.us.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bo = getelementptr inbounds nuw i8, ptr %.149.us.i, i64 56
  store ptr %.050.us.i, ptr %i.bo, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.361.us.i = phi ptr [ %.260.us.i, %bb.o ], [ %.050.us.i, %bb.n ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.050.us.i, i64 48
  store ptr %.149.us.i, ptr %i.bp, align 8
  br label %._crit_edge.us.i, !llvm.loop !56

.loopexit.us.i:                                   ; preds = %bb.h
  %.not.us.i = icmp eq ptr %.253.us.i, null
  br i1 %.not.us.i, label %._crit_edge81.i, label %.lr.ph.us.i, !llvm.loop !57

._crit_edge81.i:                                  ; preds = %.loopexit.us.i
  %i.bq = getelementptr inbounds nuw i8, ptr %.149.us.i, i64 56
  store ptr null, ptr %i.bq, align 8
  %i.br = icmp eq i32 %.04678.us.i, 0
  %i.bs = shl nuw nsw i32 %.0.i, 1
  br i1 %i.br, label %_ZN6mapbox6detail6EarcutIjE10sortLinkedEPNS2_4NodeE.exit, label %.lr.ph80.i, !llvm.loop !58

_ZN6mapbox6detail6EarcutIjE10sortLinkedEPNS2_4NodeE.exit: ; preds = %._crit_edge81.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN6mapbox6detail6EarcutIjE11isEarHashedEPNS2_4NodeE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.f = load double, ptr %i.e, align 8           ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.h = load double, ptr %i.g, align 8           ; 5 uses
  %i.i = fsub double %i.f, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.k = load double, ptr %i.j, align 8           ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.m = load double, ptr %i.l, align 8           ; 8 uses
  %i.n = fsub double %i.k, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.p = load double, ptr %i.o, align 8           ; 5 uses
  %i.q = fsub double %i.m, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %i.s = load double, ptr %i.r, align 8           ; 7 uses
  %i.t = fsub double %i.s, %i.f
  %i.u = fneg double %i.t
  %i.v = fmul double %i.q, %i.u
  %i.w = tail call noundef double @llvm.fmuladd.f64(double %i.i, double %i.n, double %i.v)
  %i.x = fcmp ult double %i.w, 0.000000e+00
  br i1 %i.x, label %bb.b, label %.critedge2

bb.b:                                             ; preds = %bb.a
  %i.y = fcmp olt double %i.k, %i.m               ; 2 uses
  %..i = select i1 %i.y, ptr %i.j, ptr %i.l
  %i.z = select i1 %i.y, double %i.k, double %i.m
end_hunk_0
