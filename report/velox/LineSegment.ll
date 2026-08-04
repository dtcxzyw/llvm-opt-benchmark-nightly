inline.NumInlined: 170
inline.NumDeleted: 80
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4geos4geom11LineSegment13closestPointsERKS1_:_ZNK4geos4geom11LineSegment12intersectionERKS1_.exit
  %.pre161 = call noundef double @llvm.sqrt.f64(double %.pre159)
  br label %_ZNK4geos4geom11LineSegment12closestPointERKNS0_10CoordinateERS2_.exit54

_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.thread.i45: ; preds = %bb.j, %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.i43
  %i.dq = insertelement <2 x double> poison, double %i.r, i64 0
  %i.dr = insertelement <2 x double> %i.dq, double %i.bm, i64 1
  %i.ds = insertelement <2 x double> poison, double %i.v, i64 0
  %i.dt = shufflevector <2 x double> %i.ds, <2 x double> poison, <2 x i32> zeroinitializer
  %i.du = fsub <2 x double> %i.dr, %i.dt          ; 2 uses
  %i.dv = shufflevector <2 x double> %i.p, <2 x double> %i.bl, <2 x i32> <i32 0, i32 2>
  %i.dw = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dx = fsub <2 x double> %i.dv, %i.dw          ; 2 uses
  %i.dy = fmul <2 x double> %i.dx, %i.dx
  %i.dz = fmul <2 x double> %i.du, %i.du
  %i.ea = fadd <2 x double> %i.dy, %i.dz
  %i.eb = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.ea) ; 2 uses
  %i.ec = extractelement <2 x double> %i.eb, i64 0 ; 2 uses
  %i.ed = extractelement <2 x double> %i.eb, i64 1 ; 2 uses
  %i.ee = fcmp olt double %i.ec, %i.ed
  br i1 %i.ee, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.thread.i45
  %.sroa.1091.0..sroa_idx94 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.1091.0.copyload95 = load double, ptr %.sroa.1091.0..sroa_idx94, align 8, !tbaa !9
  br label %_ZNK4geos4geom11LineSegment12closestPointERKNS0_10CoordinateERS2_.exit54

bb.l:                                             ; preds = %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.thread.i45
  %.sroa.1091.0..sroa_idx92 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.1091.0.copyload93 = load double, ptr %.sroa.1091.0..sroa_idx92, align 8, !tbaa !9
  br label %_ZNK4geos4geom11LineSegment12closestPointERKNS0_10CoordinateERS2_.exit54

_ZNK4geos4geom11LineSegment12closestPointERKNS0_10CoordinateERS2_.exit54: ; preds = %_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit.i48, %bb.k, %bb.l
  %sqrt.i55.pre-phi = phi double [ %.pre161, %_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit.i48 ], [ %i.ec, %bb.k ], [ %i.ed, %bb.l ] ; 2 uses
  %.sroa.083.0 = phi double [ %i.dn, %_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit.i48 ], [ %i.q, %bb.k ], [ %i.bn, %bb.l ]
  %.sroa.886.0 = phi double [ %i.dp, %_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit.i48 ], [ %i.r, %bb.k ], [ %i.bm, %bb.l ]
  %.sroa.1091.0 = phi double [ +qnan, %_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit.i48 ], [ %.sroa.1091.0.copyload95, %bb.k ], [ %.sroa.1091.0.copyload93, %bb.l ]
  %i.ef = fcmp olt double %sqrt.i55.pre-phi, %.0
  br i1 %i.ef, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZNK4geos4geom11LineSegment12closestPointERKNS0_10CoordinateERS2_.exit54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !8
  store double %.sroa.083.0, ptr %.ptr.1.i, align 8, !tbaa !9
  %.sroa.886.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %.sroa.886.0, ptr %.sroa.886.0..sroa_idx, align 8, !tbaa !9
  store double %.sroa.1091.0, ptr %i.n, align 8, !tbaa !9
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZNK4geos4geom11LineSegment12closestPointERKNS0_10CoordinateERS2_.exit54
  %.1 = phi double [ %sqrt.i55.pre-phi, %bb.m ], [ %.0, %_ZNK4geos4geom11LineSegment12closestPointERKNS0_10CoordinateERS2_.exit54 ]
  %i.eg = fcmp oeq double %.pre.i, %i.q
  %i.eh = fcmp oeq double %i.bj, %i.r
  %.0.i.i.i.i56 = select i1 %i.eg, i1 %i.eh, i1 false
  br i1 %.0.i.i.i.i56, label %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.thread.i62, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ei = fcmp oeq double %.pre.i, %i.bn
  %i.ej = fcmp oeq double %i.bj, %i.bm
  %.0.i.i14.i.i59 = select i1 %i.ei, i1 %i.ej, i1 false
  br i1 %.0.i.i14.i.i59, label %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.thread.i62, label %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.i60

_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.i60: ; preds = %bb.o
  %foldExtExtBinop189 = fsub <2 x double> %i.bl, %i.p ; 3 uses
  %i.ek = extractelement <2 x double> %foldExtExtBinop189, i64 0 ; 2 uses
  %i.el = fsub double %i.bm, %i.r                 ; 4 uses
  %foldExtExtBinop191 = fmul <2 x double> %foldExtExtBinop189, %foldExtExtBinop189
  %i.em = extractelement <2 x double> %foldExtExtBinop191, i64 0
  %i.en = fmul double %i.el, %i.el
  %i.eo = fadd double %i.em, %i.en
  %i.ep = fsub double %.pre.i, %i.q
  %i.eq = fmul double %i.ep, %i.ek
  %i.er = fsub double %i.bj, %i.r
  %i.es = fmul double %i.er, %i.el
  %i.et = fadd double %i.eq, %i.es
  %i.eu = fdiv double %i.et, %i.eo                ; 4 uses
  %i.ev = fcmp ogt double %i.eu, 0.000000e+00
  %i.ew = fcmp olt double %i.eu, 1.000000e+00
  %or.cond.i61 = and i1 %i.ev, %i.ew
  br i1 %or.cond.i61, label %_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit.i65, label %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.thread.i62

_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit.i65: ; preds = %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.i60
  %i.ex = fmul double %i.ek, %i.eu
  %i.ey = fadd double %i.q, %i.ex                 ; 2 uses
  %i.ez = fmul double %i.el, %i.eu
  %i.fa = fadd double %i.r, %i.ez                 ; 2 uses
  %.pre162 = fsub double %i.ey, %.pre.i           ; 2 uses
  %.pre164 = fsub double %i.fa, %i.bj             ; 2 uses
  %.pre166 = fmul double %.pre162, %.pre162
  %.pre168 = fmul double %.pre164, %.pre164
  %.pre170 = fadd double %.pre166, %.pre168
  %.pre172 = call noundef double @llvm.sqrt.f64(double %.pre170)
  br label %_ZNK4geos4geom11LineSegment12closestPointERKNS0_10CoordinateERS2_.exit71

_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.thread.i62: ; preds = %bb.n, %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.i60, %bb.o
  %i.fb = shufflevector <2 x double> %i.p, <2 x double> %i.bl, <2 x i32> <i32 0, i32 2>
  %i.fc = insertelement <2 x double> poison, double %.pre.i, i64 0
  %i.fd = shufflevector <2 x double> %i.fc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fe = fsub <2 x double> %i.fb, %i.fd          ; 2 uses
  %i.ff = shufflevector <2 x double> %i.p, <2 x double> %i.bl, <2 x i32> <i32 1, i32 3>
  %i.fg = insertelement <2 x double> poison, double %i.bj, i64 0
  %i.fh = shufflevector <2 x double> %i.fg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fi = fsub <2 x double> %i.ff, %i.fh          ; 2 uses
  %i.fj = fmul <2 x double> %i.fe, %i.fe
  %i.fk = fmul <2 x double> %i.fi, %i.fi
  %i.fl = fadd <2 x double> %i.fj, %i.fk
  %i.fm = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.fl) ; 2 uses
  %i.fn = extractelement <2 x double> %i.fm, i64 0 ; 2 uses
  %i.fo = extractelement <2 x double> %i.fm, i64 1 ; 2 uses
  %i.fp = fcmp olt double %i.fn, %i.fo
  br i1 %i.fp, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.thread.i62
  %.sroa.10.0..sroa_idx81 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.10.0.copyload82 = load double, ptr %.sroa.10.0..sroa_idx81, align 8, !tbaa !9
  br label %_ZNK4geos4geom11LineSegment12closestPointERKNS0_10CoordinateERS2_.exit71

bb.q:                                             ; preds = %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.thread.i62
  %.sroa.10.0..sroa_idx79 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.10.0.copyload80 = load double, ptr %.sroa.10.0..sroa_idx79, align 8, !tbaa !9
  br label %_ZNK4geos4geom11LineSegment12closestPointERKNS0_10CoordinateERS2_.exit71

_ZNK4geos4geom11LineSegment12closestPointERKNS0_10CoordinateERS2_.exit71: ; preds = %_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit.i65, %bb.p, %bb.q
  %sqrt.i72.pre-phi = phi double [ %.pre172, %_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit.i65 ], [ %i.fn, %bb.p ], [ %i.fo, %bb.q ]
  %.sroa.0.0 = phi double [ %i.ey, %_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit.i65 ], [ %i.q, %bb.p ], [ %i.bn, %bb.q ]
  %.sroa.8.0 = phi double [ %i.fa, %_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit.i65 ], [ %i.r, %bb.p ], [ %i.bm, %bb.q ]
  %.sroa.10.0 = phi double [ +qnan, %_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit.i65 ], [ %.sroa.10.0.copyload82, %bb.p ], [ %.sroa.10.0.copyload80, %bb.q ]
  %i.fq = fcmp olt double %sqrt.i72.pre-phi, %.1
  br i1 %i.fq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNK4geos4geom11LineSegment12closestPointERKNS0_10CoordinateERS2_.exit71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !tbaa.struct !8
  store double %.sroa.0.0, ptr %.ptr.1.i, align 8, !tbaa !9
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %.sroa.8.0, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !9
  store double %.sroa.10.0, ptr %i.n, align 8, !tbaa !9
  br label %bb.s

bb.s:                                             ; preds = %_ZNK4geos4geom11LineSegment12closestPointERKNS0_10CoordinateERS2_.exit71, %bb.r, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK4geos4geom11LineSegment12intersectionERKS1_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.geos::geom::Coordinate") align 8 captures(none) initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"class.geos::algorithm::LineIntersector", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.ptr.i = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.ptr.i, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.b, align 8, !tbaa !19
  %.ptr.1.i = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.ptr.1.i, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.c, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 128
  store i8 0, ptr %i.d, align 8, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @_ZN4geos9algorithm15LineIntersector19computeIntersectionERKNS_4geom10CoordinateES5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(129) %3, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.f)
  %i.g = load i64, ptr %i.a, align 8, !tbaa !26
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.ptr.i, i64 24, i1 false), !tbaa.struct !8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x double> splat (double +qnan), ptr %0, align 8, !tbaa !9
  store double +qnan, ptr %i.h, align 8, !tbaa !19
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void
}

declare void @_ZN4geos9algorithm15LineIntersector19computeIntersectionERKNS_4geom10CoordinateES5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(129), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZNK4geos4geom11LineSegment16lineIntersectionERKS1_(ptr dead_on_unwind noalias writable sret(%"class.geos::geom::Coordinate") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  tail call void @_ZN4geos9algorithm12Intersection12intersectionERKNS_4geom10CoordinateES5_S5_S5_(ptr dead_on_unwind writable sret(%"class.geos::geom::Coordinate") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.b)
  ret void
}

declare void @_ZN4geos9algorithm12Intersection12intersectionERKNS_4geom10CoordinateES5_S5_S5_(ptr dead_on_unwind writable sret(%"class.geos::geom::Coordinate") align 8, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZNK4geos4geom11LineSegment16pointAlongOffsetEddRNS0_10CoordinateE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, double noundef %1, double noundef %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load <2 x double>, ptr %0, align 8, !tbaa !9 ; 2 uses
  %i.c = load <2 x double>, ptr %i.a, align 8, !tbaa !9
  %i.d = fsub <2 x double> %i.c, %i.b             ; 6 uses
  %foldExtExtBinop = fmul <2 x double> %i.d, %i.d
  %foldExtExtBinop38 = fmul <2 x double> %i.d, %i.d
  %shift = shufflevector <2 x double> %foldExtExtBinop38, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop40 = fadd <2 x double> %foldExtExtBinop, %shift
  %i.e = extractelement <2 x double> %foldExtExtBinop40, i64 0 ; 2 uses
  %sqrt = tail call double @llvm.sqrt.f64(double %i.e)
  %i.f = fcmp une double %2, 0.000000e+00
  br i1 %i.f, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.g = fcmp une double %i.e, 0.000000e+00
  br i1 %i.g, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @__cxa_allocate_exception(i64 16) #15 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN4geos4util21IllegalStateExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTIN4geos4util21IllegalStateExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #16
          to label %bb.k unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %.025 = phi i1 [ false, %bb.e ], [ true, %bb.d ] ; 2 uses
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.k = load ptr, ptr %4, align 8, !tbaa !27     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.k) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br i1 %.025, label %bb.g, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br i1 %.025, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn34 = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.h) #15
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn33 = phi { ptr, i32 } [ %.pn34, %bb.g ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn33

bb.i:                                             ; preds = %bb.b
  %i.n = insertelement <2 x double> poison, double %2, i64 0
  %i.o = shufflevector <2 x double> %i.n, <2 x double> poison, <2 x i32> zeroinitializer
  %i.p = fmul <2 x double> %i.o, %i.d
  %i.q = insertelement <2 x double> poison, double %sqrt, i64 0
  %i.r = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> zeroinitializer
  %i.s = fdiv <2 x double> %i.p, %i.r
  %i.t = shufflevector <2 x double> %i.s, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.a
  %i.u = phi <2 x double> [ %i.t, %bb.i ], [ zeroinitializer, %bb.a ] ; 2 uses
  %i.v = insertelement <2 x double> poison, double %1, i64 0
  %i.w = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> zeroinitializer
  %i.x = fmul <2 x double> %i.w, %i.d
  %i.y = fadd <2 x double> %i.b, %i.x             ; 2 uses
  %i.z = fsub <2 x double> %i.y, %i.u
  %i.aa = fadd <2 x double> %i.y, %i.u
  %i.ab = shufflevector <2 x double> %i.z, <2 x double> %i.aa, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.ab, ptr %3, align 8, !tbaa !9
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  store double +qnan, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !9
  ret void

bb.k:                                             ; preds = %bb.e
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #3 align 2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4geos4util21IllegalStateExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 21, ptr %i.a, align 8, !tbaa !32
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !27
  %i.d = load i64, ptr %i.a, align 8, !tbaa !32   ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.c, ptr noundef nonnull align 1 dereferenceable(21) @.str.1, i64 21, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !34
  %i.f = load ptr, ptr %2, align 8, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  store i8 0, ptr %i.g, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  invoke void @_ZN4geos4util13GEOSExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %.noexc.i
  %i.h = load ptr, ptr %2, align 8, !tbaa !27     ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.b
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  call void @_ZdlPv(ptr noundef %i.h) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4geos4util21IllegalStateExceptionE, i64 16), ptr %0, align 8, !tbaa !35
  ret void

bb.b:                                             ; preds = %.noexc.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %2, align 8, !tbaa !27     ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.b
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.b
  call void @_ZdlPv(ptr noundef %i.k) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  resume { ptr, i32 } %i.j
}

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #5

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #6

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define void @_ZNK4geos4geom11LineSegment10toGeometryERKNS0_15GeometryFactoryE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(45) %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::unique_ptr.3", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !35
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  call void %i.e(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.3") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 2, i64 noundef 0)
  %i.f = load ptr, ptr %3, align 8, !tbaa !42     ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !35
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.i = load ptr, ptr %i.h, align 8
  invoke void %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 0)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %3, align 8, !tbaa !42     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !35
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.n = load ptr, ptr %i.m, align 8
  invoke void %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef 1)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZNK4geos4geom15GeometryFactory16createLineStringEOSt10unique_ptrINS0_18CoordinateSequenceESt14default_deleteIS3_EE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(45) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %3, align 8, !tbaa !42     ; 3 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i: ; preds = %bb.d
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !35
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.o) #15, !inline_history !44
  br label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit

end_hunk_0
