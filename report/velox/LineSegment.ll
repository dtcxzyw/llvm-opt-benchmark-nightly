inline.NumInlined: 170
inline.NumDeleted: 80
begin_hunk_0_@_ZNK4geos4geom11LineSegment12closestPointERKNS0_10CoordinateERS2_:bb.a
  %i.r = fsub double %i.a, %i.b
  %i.s = fmul double %i.r, %i.m
  %i.t = fsub double %i.e, %i.g
  %i.u = fmul double %i.t, %i.n
  %i.v = fadd double %i.s, %i.u
  %i.w = fdiv double %i.v, %i.q                   ; 4 uses
  %i.x = fcmp ogt double %i.w, 0.000000e+00
  %i.y = fcmp olt double %i.w, 1.000000e+00
  %or.cond = and i1 %i.x, %i.y
  br i1 %or.cond, label %_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit, label %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.thread

_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit: ; preds = %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit
  %i.z = fmul double %i.w, %i.m
  %i.aa = fadd double %i.b, %i.z
  %i.ab = fmul double %i.w, %i.n
  %i.ac = fadd double %i.g, %i.ab
  store double %i.aa, ptr %2, align 8, !tbaa !8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store double %i.ac, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store double +qnan, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !8
  br label %bb.e

_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.thread: ; preds = %._ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.thread_crit_edge, %bb.b, %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit
  %i.ad = phi double [ %.pre17, %._ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.thread_crit_edge ], [ %i.k, %bb.b ], [ %i.k, %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit ]
  %i.ae = fsub double %i.b, %i.a                  ; 2 uses
  %i.af = fsub double %i.g, %i.e                  ; 2 uses
  %i.ag = fmul double %i.ae, %i.ae
  %i.ah = fmul double %i.af, %i.af
  %i.ai = fadd double %i.ag, %i.ah
  %sqrt.i = tail call noundef double @llvm.sqrt.f64(double %i.ai)
  %i.aj = fsub double %.pre, %i.a                 ; 2 uses
  %i.ak = fsub double %i.ad, %i.e                 ; 2 uses
  %i.al = fmul double %i.aj, %i.aj
  %i.am = fmul double %i.ak, %i.ak
  %i.an = fadd double %i.al, %i.am
  %sqrt.i13 = tail call noundef double @llvm.sqrt.f64(double %i.an)
  %i.ao = fcmp olt double %sqrt.i, %sqrt.i13
  br i1 %i.ao, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.thread
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !7
  br label %bb.e

bb.d:                                             ; preds = %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.thread
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 24, i1 false), !tbaa.struct !7
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i32 -1, 2) i32 @_ZNK4geos4geom11LineSegment9compareToERKS1_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !10  ; 2 uses
  %i.b = load double, ptr %1, align 8, !tbaa !10  ; 2 uses
  %i.c = fcmp olt double %i.a, %i.b
  br i1 %i.c, label %_ZNK4geos4geom10Coordinate9compareToERKS1_.exit8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = fcmp ogt double %i.a, %i.b
  br i1 %i.d, label %_ZNK4geos4geom10Coordinate9compareToERKS1_.exit8, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load double, ptr %i.e, align 8, !tbaa !14 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load double, ptr %i.g, align 8, !tbaa !14 ; 2 uses
  %i.i = fcmp olt double %i.f, %i.h
  br i1 %i.i, label %_ZNK4geos4geom10Coordinate9compareToERKS1_.exit8, label %_ZNK4geos4geom10Coordinate9compareToERKS1_.exit

_ZNK4geos4geom10Coordinate9compareToERKS1_.exit:  ; preds = %bb.c
  %i.j = fcmp ule double %i.f, %i.h
  br i1 %i.j, label %bb.d, label %_ZNK4geos4geom10Coordinate9compareToERKS1_.exit8

bb.d:                                             ; preds = %_ZNK4geos4geom10Coordinate9compareToERKS1_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load double, ptr %i.k, align 8, !tbaa !10 ; 2 uses
  %i.n = load double, ptr %i.l, align 8, !tbaa !10 ; 2 uses
  %i.o = fcmp olt double %i.m, %i.n
  br i1 %i.o, label %_ZNK4geos4geom10Coordinate9compareToERKS1_.exit8, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = fcmp ogt double %i.m, %i.n
  br i1 %i.p, label %_ZNK4geos4geom10Coordinate9compareToERKS1_.exit8, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load double, ptr %i.q, align 8, !tbaa !14 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.t = load double, ptr %i.s, align 8, !tbaa !14 ; 2 uses
  %i.u = fcmp olt double %i.r, %i.t
  br i1 %i.u, label %_ZNK4geos4geom10Coordinate9compareToERKS1_.exit8, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = fcmp ogt double %i.r, %i.t
  %..i6 = zext i1 %i.v to i32
  br label %_ZNK4geos4geom10Coordinate9compareToERKS1_.exit8

_ZNK4geos4geom10Coordinate9compareToERKS1_.exit8: ; preds = %bb.b, %bb.a, %bb.c, %bb.g, %bb.f, %bb.e, %bb.d, %_ZNK4geos4geom10Coordinate9compareToERKS1_.exit
  %.0 = phi i32 [ %..i6, %bb.g ], [ 1, %_ZNK4geos4geom10Coordinate9compareToERKS1_.exit ], [ -1, %bb.f ], [ -1, %bb.d ], [ 1, %bb.e ], [ 1, %bb.b ], [ -1, %bb.a ], [ -1, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK4geos4geom11LineSegment10equalsTopoERKS1_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !10  ; 2 uses
  %i.b = load double, ptr %1, align 8, !tbaa !10  ; 2 uses
  %i.c = fcmp oeq double %i.a, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load double, ptr %i.d, align 8           ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load double, ptr %i.f, align 8           ; 2 uses
  %i.h = fcmp oeq double %i.e, %i.g
  %.0.i.i = select i1 %i.c, i1 %i.h, i1 false
  br i1 %.0.i.i, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre = load double, ptr %.phi.trans.insert, align 8, !tbaa !10
  %.phi.trans.insert8 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.pre9 = load double, ptr %.phi.trans.insert8, align 8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load double, ptr %i.i, align 8, !tbaa !10
  %i.l = load double, ptr %i.j, align 8, !tbaa !10 ; 2 uses
  %i.m = fcmp oeq double %i.k, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load double, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = load double, ptr %i.p, align 8           ; 2 uses
  %i.r = fcmp oeq double %i.o, %i.q
  %.0.i.i5 = select i1 %i.m, i1 %i.r, i1 false
  br i1 %.0.i.i5, label %bb.e, label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.s = phi double [ %.pre9, %._crit_edge ], [ %i.q, %bb.b ]
  %i.t = phi double [ %.pre, %._crit_edge ], [ %i.l, %bb.b ]
  %i.u = fcmp oeq double %i.a, %i.t
  %i.v = fcmp oeq double %i.e, %i.s
  %.0.i.i6 = select i1 %i.u, i1 %i.v, i1 false
  br i1 %.0.i.i6, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load double, ptr %i.w, align 8, !tbaa !10
  %i.y = fcmp oeq double %i.x, %i.b
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aa = load double, ptr %i.z, align 8
  %i.ab = fcmp oeq double %i.aa, %i.g
  %.0.i.i7 = select i1 %i.y, i1 %i.ab, i1 false
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %i.ac = phi i1 [ true, %bb.b ], [ false, %bb.c ], [ %.0.i.i7, %bb.d ]
  ret i1 %i.ac
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK4geos4geom11LineSegment16orientationIndexERKS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = tail call noundef i32 @_ZN4geos9algorithm11Orientation5indexERKNS_4geom10CoordinateES5_S5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1) ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = tail call noundef i32 @_ZN4geos9algorithm11Orientation5indexERKNS_4geom10CoordinateES5_S5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.c) ; 4 uses
  %i.e = or i32 %i.d, %i.b
  %or.cond = icmp sgt i32 %i.e, -1
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.speculated10 = tail call i32 @llvm.smax.i32(i32 %i.b, i32 %i.d)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = icmp slt i32 %i.b, 1
  %i.g = icmp slt i32 %i.d, 1
  %or.cond3 = and i1 %i.f, %i.g
  br i1 %or.cond3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.d, i32 %i.b)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i32 [ %.sroa.speculated10, %bb.b ], [ %.sroa.speculated, %bb.d ], [ 0, %bb.c ]
  ret i32 %.0
}

declare noundef i32 @_ZN4geos9algorithm11Orientation5indexERKNS_4geom10CoordinateES5_S5_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN4geos4geom11LineSegment13closestPointsERKS1_(ptr dead_on_unwind noalias writable writeonly sret(%"struct.std::array") align 8 captures(none) initializes((0, 48)) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %2) local_unnamed_addr #3 align 2 {
_ZNK4geos4geom11LineSegment12intersectionERKS1_.exit:
  %3 = alloca %"class.geos::algorithm::LineIntersector", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15, !noalias !15
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.ptr.i.i = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.ptr.i.i, i8 0, i64 16, i1 false), !noalias !15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !noalias !15
  store double +qnan, ptr %i.b, align 8, !tbaa !18, !noalias !15
  %.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.ptr.1.i.i, i8 0, i64 16, i1 false), !noalias !15
  store double +qnan, ptr %i.c, align 8, !tbaa !18, !noalias !15
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 128
  store i8 0, ptr %i.d, align 8, !tbaa !19, !noalias !15
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  call void @_ZN4geos9algorithm15LineIntersector19computeIntersectionERKNS_4geom10CoordinateES5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(129) %3, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.f), !noalias !15
  %i.g = load i64, ptr %i.a, align 8, !tbaa !25, !noalias !15
  %.not.i = icmp eq i64 %i.g, 0                   ; 3 uses
  %.sroa.0122.0.copyload124 = load double, ptr %.ptr.i.i, align 8
  %.sroa.7.0..ptr.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 56
  %.sroa.7.0.copyload127 = load double, ptr %.sroa.7.0..ptr.i.i.sroa_idx, align 8
  %.sroa.9.0.copyload130 = load double, ptr %i.b, align 8
  %.sroa.9.0 = select i1 %.not.i, double +qnan, double %.sroa.9.0.copyload130 ; 3 uses
  %.sroa.7.0 = select i1 %.not.i, double +qnan, double %.sroa.7.0.copyload127 ; 3 uses
  %.sroa.0122.0 = select i1 %.not.i, double +qnan, double %.sroa.0122.0.copyload124 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15, !noalias !15
  %4 = fcmp uno double %.sroa.0122.0, 0.000000e+00
  %5 = fcmp uno double %.sroa.7.0, 0.000000e+00
  %or.cond.i = select i1 %4, i1 %5, i1 false
  %6 = fcmp uno double %.sroa.9.0, 0.000000e+00
  %7 = select i1 %or.cond.i, i1 %6, i1 false
  br i1 %7, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZNK4geos4geom11LineSegment12intersectionERKS1_.exit
  store double %.sroa.0122.0, ptr %0, align 8, !tbaa !8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !8
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %.sroa.0122.0, ptr %8, align 8, !tbaa !8
  %.sroa.7.0..sroa_idx125 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %.sroa.7.0, ptr %.sroa.7.0..sroa_idx125, align 8, !tbaa !8
  %.sroa.9.0..sroa_idx128 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %.sroa.9.0, ptr %.sroa.9.0..sroa_idx128, align 8, !tbaa !8
  br label %bb.s

bb.b:                                             ; preds = %_ZNK4geos4geom11LineSegment12intersectionERKS1_.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.ptr.1.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.j = load double, ptr %2, align 8, !tbaa !10  ; 17 uses
  %i.k = load double, ptr %1, align 8, !tbaa !10  ; 16 uses
  %i.l = fcmp oeq double %i.j, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load double, ptr %i.m, align 8           ; 17 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load double, ptr %i.o, align 8           ; 16 uses
  %i.q = fcmp oeq double %i.n, %i.p
  %.0.i.i.i.i = select i1 %i.l, i1 %i.q, i1 false ; 2 uses
  %.pre.i = load double, ptr %i.e, align 8, !tbaa !10 ; 14 uses
  br i1 %.0.i.i.i.i, label %._ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.thread_crit_edge.i, label %bb.c

._ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.thread_crit_edge.i: ; preds = %bb.b
  %.phi.trans.insert16.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.pre17.i = load double, ptr %.phi.trans.insert16.i, align 8, !tbaa !14
  br label %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.thread.i

bb.c:                                             ; preds = %bb.b
  %i.r = fcmp oeq double %i.j, %.pre.i
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.t = load double, ptr %i.s, align 8           ; 5 uses
  %i.u = fcmp oeq double %i.n, %i.t
  %.0.i.i14.i.i = select i1 %i.r, i1 %i.u, i1 false
  br i1 %.0.i.i14.i.i, label %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.thread.i, label %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.i

_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.i: ; preds = %bb.c
  %i.v = fsub double %.pre.i, %i.k                ; 4 uses
  %i.w = fsub double %i.t, %i.p                   ; 4 uses
  %i.x = fmul double %i.v, %i.v
  %i.y = fmul double %i.w, %i.w
  %i.z = fadd double %i.x, %i.y
  %i.aa = fsub double %i.j, %i.k
  %i.ab = fmul double %i.aa, %i.v
  %i.ac = fsub double %i.n, %i.p
  %i.ad = fmul double %i.ac, %i.w
  %i.ae = fadd double %i.ab, %i.ad
  %i.af = fdiv double %i.ae, %i.z                 ; 4 uses
  %i.ag = fcmp ogt double %i.af, 0.000000e+00
  %i.ah = fcmp olt double %i.af, 1.000000e+00
  %or.cond.i21 = and i1 %i.ag, %i.ah
  br i1 %or.cond.i21, label %_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit.i, label %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.thread.i

_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit.i: ; preds = %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.i
  %i.ai = fmul double %i.v, %i.af
  %i.aj = fadd double %i.k, %i.ai                 ; 2 uses
  %i.ak = fmul double %i.w, %i.af
  %i.al = fadd double %i.p, %i.ak                 ; 2 uses
  %.pre = fsub double %i.aj, %i.j                 ; 2 uses
  %.pre131 = fsub double %i.al, %i.n              ; 2 uses
  %.pre133 = fmul double %.pre, %.pre
  %.pre135 = fmul double %.pre131, %.pre131
  %.pre137 = fadd double %.pre133, %.pre135
  %.pre139 = call noundef double @llvm.sqrt.f64(double %.pre137)
  br label %_ZNK4geos4geom11LineSegment12closestPointERKNS0_10CoordinateERS2_.exit

_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.thread.i: ; preds = %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.i, %bb.c, %._ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.thread_crit_edge.i
  %.sroa.8112.0.copyload114 = phi double [ %.pre17.i, %._ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.thread_crit_edge.i ], [ %i.t, %bb.c ], [ %i.t, %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.i ] ; 4 uses
  %i.am = fsub double %i.k, %i.j                  ; 2 uses
  %i.an = fsub double %i.p, %i.n                  ; 2 uses
  %i.ao = fmul double %i.am, %i.am
  %i.ap = fmul double %i.an, %i.an
  %i.aq = fadd double %i.ao, %i.ap
  %sqrt.i.i = call noundef double @llvm.sqrt.f64(double %i.aq) ; 2 uses
  %i.ar = fsub double %.pre.i, %i.j               ; 2 uses
  %i.as = fsub double %.sroa.8112.0.copyload114, %i.n ; 2 uses
  %i.at = fmul double %i.ar, %i.ar
  %i.au = fmul double %i.as, %i.as
  %i.av = fadd double %i.at, %i.au
  %sqrt.i13.i = call noundef double @llvm.sqrt.f64(double %i.av) ; 2 uses
  %i.aw = fcmp olt double %sqrt.i.i, %sqrt.i13.i
  br i1 %i.aw, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.thread.i
  %.sroa.10117.0..sroa_idx120 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.10117.0.copyload121 = load double, ptr %.sroa.10117.0..sroa_idx120, align 8, !tbaa !8
  br label %_ZNK4geos4geom11LineSegment12closestPointERKNS0_10CoordinateERS2_.exit

bb.e:                                             ; preds = %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.thread.i
  %.sroa.10117.0..sroa_idx118 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.10117.0.copyload119 = load double, ptr %.sroa.10117.0..sroa_idx118, align 8, !tbaa !8
  br label %_ZNK4geos4geom11LineSegment12closestPointERKNS0_10CoordinateERS2_.exit

_ZNK4geos4geom11LineSegment12closestPointERKNS0_10CoordinateERS2_.exit: ; preds = %_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit.i, %bb.d, %bb.e
  %sqrt.i.pre-phi = phi double [ %.pre139, %_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit.i ], [ %sqrt.i.i, %bb.d ], [ %sqrt.i13.i, %bb.e ] ; 2 uses
  %i.ax = phi double [ %i.t, %_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit.i ], [ %.sroa.8112.0.copyload114, %bb.d ], [ %.sroa.8112.0.copyload114, %bb.e ] ; 10 uses
  %.sroa.0109.0 = phi double [ %i.aj, %_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit.i ], [ %i.k, %bb.d ], [ %.pre.i, %bb.e ]
  %.sroa.8112.0 = phi double [ %i.al, %_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit.i ], [ %i.p, %bb.d ], [ %.sroa.8112.0.copyload114, %bb.e ]
  %.sroa.10117.0 = phi double [ +qnan, %_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit.i ], [ %.sroa.10117.0.copyload121, %bb.d ], [ %.sroa.10117.0.copyload119, %bb.e ]
  store double %.sroa.0109.0, ptr %0, align 8, !tbaa !8
  %.sroa.8112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store double %.sroa.8112.0, ptr %.sroa.8112.0..sroa_idx, align 8, !tbaa !8
  store double %.sroa.10117.0, ptr %i.h, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.ptr.1.i, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !7
  %i.ay = load double, ptr %i.f, align 8, !tbaa !10 ; 13 uses
  %i.az = fcmp oeq double %i.ay, %i.k
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bb = load double, ptr %i.ba, align 8         ; 13 uses
  %i.bc = fcmp oeq double %i.bb, %i.p
  %.0.i.i.i.i22 = select i1 %i.az, i1 %i.bc, i1 false ; 2 uses
  br i1 %.0.i.i.i.i22, label %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.thread.i28, label %bb.f

bb.f:                                             ; preds = %_ZNK4geos4geom11LineSegment12closestPointERKNS0_10CoordinateERS2_.exit
  %i.bd = fcmp oeq double %i.ay, %.pre.i
  %i.be = fcmp oeq double %i.bb, %i.ax
  %.0.i.i14.i.i25 = select i1 %i.bd, i1 %i.be, i1 false
  br i1 %.0.i.i14.i.i25, label %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.thread.i28, label %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.i26

_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.i26: ; preds = %bb.f
  %i.bf = fsub double %.pre.i, %i.k               ; 4 uses
  %i.bg = fsub double %i.ax, %i.p                 ; 4 uses
  %i.bh = fmul double %i.bf, %i.bf
  %i.bi = fmul double %i.bg, %i.bg
  %i.bj = fadd double %i.bh, %i.bi
  %i.bk = fsub double %i.ay, %i.k
  %i.bl = fmul double %i.bf, %i.bk
  %i.bm = fsub double %i.bb, %i.p
  %i.bn = fmul double %i.bm, %i.bg
  %i.bo = fadd double %i.bl, %i.bn
  %i.bp = fdiv double %i.bo, %i.bj                ; 4 uses
  %i.bq = fcmp ogt double %i.bp, 0.000000e+00
  %i.br = fcmp olt double %i.bp, 1.000000e+00
  %or.cond.i27 = and i1 %i.bq, %i.br
  br i1 %or.cond.i27, label %_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit.i31, label %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.thread.i28

_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit.i31: ; preds = %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.i26
  %i.bs = fmul double %i.bf, %i.bp
  %i.bt = fadd double %i.k, %i.bs                 ; 2 uses
  %i.bu = fmul double %i.bg, %i.bp
  %i.bv = fadd double %i.p, %i.bu                 ; 2 uses
  %.pre140 = fsub double %i.bt, %i.ay             ; 2 uses
  %.pre142 = fsub double %i.bv, %i.bb             ; 2 uses
  %.pre144 = fmul double %.pre140, %.pre140
  %.pre146 = fmul double %.pre142, %.pre142
  %.pre148 = fadd double %.pre144, %.pre146
  %.pre150 = call noundef double @llvm.sqrt.f64(double %.pre148)
  br label %_ZNK4geos4geom11LineSegment12closestPointERKNS0_10CoordinateERS2_.exit37

_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.thread.i28: ; preds = %_ZNK4geos4geom11LineSegment12closestPointERKNS0_10CoordinateERS2_.exit, %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.i26, %bb.f
  %i.bw = fsub double %i.k, %i.ay                 ; 2 uses
  %i.bx = fsub double %i.p, %i.bb                 ; 2 uses
  %i.by = fmul double %i.bw, %i.bw
  %i.bz = fmul double %i.bx, %i.bx
  %i.ca = fadd double %i.by, %i.bz
  %sqrt.i.i29 = call noundef double @llvm.sqrt.f64(double %i.ca) ; 2 uses
  %i.cb = fsub double %.pre.i, %i.ay              ; 2 uses
  %i.cc = fsub double %i.ax, %i.bb                ; 2 uses
  %i.cd = fmul double %i.cb, %i.cb
  %i.ce = fmul double %i.cc, %i.cc
  %i.cf = fadd double %i.cd, %i.ce
  %sqrt.i13.i30 = call noundef double @llvm.sqrt.f64(double %i.cf) ; 2 uses
  %i.cg = fcmp olt double %sqrt.i.i29, %sqrt.i13.i30
  br i1 %i.cg, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.thread.i28
  %.sroa.10104.0..sroa_idx107 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.10104.0.copyload108 = load double, ptr %.sroa.10104.0..sroa_idx107, align 8, !tbaa !8
  br label %_ZNK4geos4geom11LineSegment12closestPointERKNS0_10CoordinateERS2_.exit37

bb.h:                                             ; preds = %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.thread.i28
  %.sroa.10104.0..sroa_idx105 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.10104.0.copyload106 = load double, ptr %.sroa.10104.0..sroa_idx105, align 8, !tbaa !8
  br label %_ZNK4geos4geom11LineSegment12closestPointERKNS0_10CoordinateERS2_.exit37

_ZNK4geos4geom11LineSegment12closestPointERKNS0_10CoordinateERS2_.exit37: ; preds = %_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit.i31, %bb.g, %bb.h
  %sqrt.i38.pre-phi = phi double [ %.pre150, %_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit.i31 ], [ %sqrt.i.i29, %bb.g ], [ %sqrt.i13.i30, %bb.h ] ; 2 uses
  %.sroa.096.0 = phi double [ %i.bt, %_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit.i31 ], [ %i.k, %bb.g ], [ %.pre.i, %bb.h ]
  %.sroa.899.0 = phi double [ %i.bv, %_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit.i31 ], [ %i.p, %bb.g ], [ %i.ax, %bb.h ]
  %.sroa.10104.0 = phi double [ +qnan, %_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit.i31 ], [ %.sroa.10104.0.copyload108, %bb.g ], [ %.sroa.10104.0.copyload106, %bb.h ]
  %i.ch = fcmp olt double %sqrt.i38.pre-phi, %sqrt.i.pre-phi
  br i1 %i.ch, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNK4geos4geom11LineSegment12closestPointERKNS0_10CoordinateERS2_.exit37
  store double %.sroa.096.0, ptr %0, align 8, !tbaa !8
  store double %.sroa.899.0, ptr %.sroa.8112.0..sroa_idx, align 8, !tbaa !8
  store double %.sroa.10104.0, ptr %i.h, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.ptr.1.i, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !tbaa.struct !7
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZNK4geos4geom11LineSegment12closestPointERKNS0_10CoordinateERS2_.exit37
  %.0 = phi double [ %sqrt.i38.pre-phi, %bb.i ], [ %sqrt.i.pre-phi, %_ZNK4geos4geom11LineSegment12closestPointERKNS0_10CoordinateERS2_.exit37 ] ; 2 uses
  %brmerge = or i1 %.0.i.i.i.i, %.0.i.i.i.i22
  br i1 %brmerge, label %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.thread.i45, label %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.i43

_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.i43: ; preds = %bb.j
  %i.ci = fsub double %i.ay, %i.j                 ; 4 uses
  %i.cj = fsub double %i.bb, %i.n                 ; 4 uses
  %i.ck = fmul double %i.ci, %i.ci
  %i.cl = fmul double %i.cj, %i.cj
  %i.cm = fadd double %i.ck, %i.cl
  %i.cn = fsub double %i.k, %i.j
  %i.co = fmul double %i.cn, %i.ci
  %i.cp = fsub double %i.p, %i.n
  %i.cq = fmul double %i.cp, %i.cj
  %i.cr = fadd double %i.co, %i.cq
  %i.cs = fdiv double %i.cr, %i.cm                ; 4 uses
  %i.ct = fcmp ogt double %i.cs, 0.000000e+00
  %i.cu = fcmp olt double %i.cs, 1.000000e+00
  %or.cond.i44 = and i1 %i.ct, %i.cu
  br i1 %or.cond.i44, label %_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit.i48, label %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.thread.i45

_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit.i48: ; preds = %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.i43
  %i.cv = fmul double %i.ci, %i.cs
  %i.cw = fadd double %i.j, %i.cv                 ; 2 uses
  %i.cx = fmul double %i.cj, %i.cs
  %i.cy = fadd double %i.n, %i.cx                 ; 2 uses
  %.pre151 = fsub double %i.cw, %i.k              ; 2 uses
  %.pre153 = fsub double %i.cy, %i.p              ; 2 uses
  %.pre155 = fmul double %.pre151, %.pre151
  %.pre157 = fmul double %.pre153, %.pre153
  %.pre159 = fadd double %.pre155, %.pre157
  %.pre161 = call noundef double @llvm.sqrt.f64(double %.pre159)
  br label %_ZNK4geos4geom11LineSegment12closestPointERKNS0_10CoordinateERS2_.exit54

_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.thread.i45: ; preds = %bb.j, %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.i43
  %i.cz = fsub double %i.j, %i.k                  ; 2 uses
  %i.da = fsub double %i.n, %i.p                  ; 2 uses
  %i.db = fmul double %i.cz, %i.cz
  %i.dc = fmul double %i.da, %i.da
  %i.dd = fadd double %i.db, %i.dc
  %sqrt.i.i46 = call noundef double @llvm.sqrt.f64(double %i.dd) ; 2 uses
  %i.de = fsub double %i.ay, %i.k                 ; 2 uses
  %i.df = fsub double %i.bb, %i.p                 ; 2 uses
  %i.dg = fmul double %i.de, %i.de
  %i.dh = fmul double %i.df, %i.df
  %i.di = fadd double %i.dg, %i.dh
  %sqrt.i13.i47 = call noundef double @llvm.sqrt.f64(double %i.di) ; 2 uses
  %i.dj = fcmp olt double %sqrt.i.i46, %sqrt.i13.i47
  br i1 %i.dj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.thread.i45
  %.sroa.1091.0..sroa_idx94 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.1091.0.copyload95 = load double, ptr %.sroa.1091.0..sroa_idx94, align 8, !tbaa !8
  br label %_ZNK4geos4geom11LineSegment12closestPointERKNS0_10CoordinateERS2_.exit54

bb.l:                                             ; preds = %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.thread.i45
  %.sroa.1091.0..sroa_idx92 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.1091.0.copyload93 = load double, ptr %.sroa.1091.0..sroa_idx92, align 8, !tbaa !8
  br label %_ZNK4geos4geom11LineSegment12closestPointERKNS0_10CoordinateERS2_.exit54

_ZNK4geos4geom11LineSegment12closestPointERKNS0_10CoordinateERS2_.exit54: ; preds = %_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit.i48, %bb.k, %bb.l
  %sqrt.i55.pre-phi = phi double [ %.pre161, %_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit.i48 ], [ %sqrt.i.i46, %bb.k ], [ %sqrt.i13.i47, %bb.l ] ; 2 uses
  %.sroa.083.0 = phi double [ %i.cw, %_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit.i48 ], [ %i.j, %bb.k ], [ %i.ay, %bb.l ]
  %.sroa.886.0 = phi double [ %i.cy, %_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit.i48 ], [ %i.n, %bb.k ], [ %i.bb, %bb.l ]
  %.sroa.1091.0 = phi double [ +qnan, %_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit.i48 ], [ %.sroa.1091.0.copyload95, %bb.k ], [ %.sroa.1091.0.copyload93, %bb.l ]
  %i.dk = fcmp olt double %sqrt.i55.pre-phi, %.0
  br i1 %i.dk, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZNK4geos4geom11LineSegment12closestPointERKNS0_10CoordinateERS2_.exit54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !7
  store double %.sroa.083.0, ptr %.ptr.1.i, align 8, !tbaa !8
  %.sroa.886.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %.sroa.886.0, ptr %.sroa.886.0..sroa_idx, align 8, !tbaa !8
  store double %.sroa.1091.0, ptr %i.i, align 8, !tbaa !8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZNK4geos4geom11LineSegment12closestPointERKNS0_10CoordinateERS2_.exit54
  %.1 = phi double [ %sqrt.i55.pre-phi, %bb.m ], [ %.0, %_ZNK4geos4geom11LineSegment12closestPointERKNS0_10CoordinateERS2_.exit54 ]
  %i.dl = fcmp oeq double %.pre.i, %i.j
  %i.dm = fcmp oeq double %i.ax, %i.n
  %.0.i.i.i.i56 = select i1 %i.dl, i1 %i.dm, i1 false
  br i1 %.0.i.i.i.i56, label %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.thread.i62, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dn = fcmp oeq double %.pre.i, %i.ay
  %i.do = fcmp oeq double %i.ax, %i.bb
  %.0.i.i14.i.i59 = select i1 %i.dn, i1 %i.do, i1 false
  br i1 %.0.i.i14.i.i59, label %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.thread.i62, label %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.i60

_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.i60: ; preds = %bb.o
  %i.dp = fsub double %i.ay, %i.j                 ; 4 uses
  %i.dq = fsub double %i.bb, %i.n                 ; 4 uses
  %i.dr = fmul double %i.dp, %i.dp
  %i.ds = fmul double %i.dq, %i.dq
  %i.dt = fadd double %i.dr, %i.ds
  %i.du = fsub double %.pre.i, %i.j
  %i.dv = fmul double %i.du, %i.dp
  %i.dw = fsub double %i.ax, %i.n
  %i.dx = fmul double %i.dw, %i.dq
  %i.dy = fadd double %i.dv, %i.dx
  %i.dz = fdiv double %i.dy, %i.dt                ; 4 uses
  %i.ea = fcmp ogt double %i.dz, 0.000000e+00
  %i.eb = fcmp olt double %i.dz, 1.000000e+00
  %or.cond.i61 = and i1 %i.ea, %i.eb
  br i1 %or.cond.i61, label %_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit.i65, label %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.thread.i62

_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit.i65: ; preds = %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.i60
  %i.ec = fmul double %i.dp, %i.dz
  %i.ed = fadd double %i.j, %i.ec                 ; 2 uses
  %i.ee = fmul double %i.dq, %i.dz
  %i.ef = fadd double %i.n, %i.ee                 ; 2 uses
  %.pre162 = fsub double %i.ed, %.pre.i           ; 2 uses
  %.pre164 = fsub double %i.ef, %i.ax             ; 2 uses
  %.pre166 = fmul double %.pre162, %.pre162
  %.pre168 = fmul double %.pre164, %.pre164
  %.pre170 = fadd double %.pre166, %.pre168
  %.pre172 = call noundef double @llvm.sqrt.f64(double %.pre170)
  br label %_ZNK4geos4geom11LineSegment12closestPointERKNS0_10CoordinateERS2_.exit71

_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.thread.i62: ; preds = %bb.n, %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.i60, %bb.o
  %i.eg = fsub double %i.j, %.pre.i               ; 2 uses
  %i.eh = fsub double %i.n, %i.ax                 ; 2 uses
  %i.ei = fmul double %i.eg, %i.eg
  %i.ej = fmul double %i.eh, %i.eh
  %i.ek = fadd double %i.ei, %i.ej
  %sqrt.i.i63 = call noundef double @llvm.sqrt.f64(double %i.ek) ; 2 uses
  %i.el = fsub double %i.ay, %.pre.i              ; 2 uses
  %i.em = fsub double %i.bb, %i.ax                ; 2 uses
  %i.en = fmul double %i.el, %i.el
  %i.eo = fmul double %i.em, %i.em
  %i.ep = fadd double %i.en, %i.eo
  %sqrt.i13.i64 = call noundef double @llvm.sqrt.f64(double %i.ep) ; 2 uses
  %i.eq = fcmp olt double %sqrt.i.i63, %sqrt.i13.i64
  br i1 %i.eq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.thread.i62
  %.sroa.10.0..sroa_idx81 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.10.0.copyload82 = load double, ptr %.sroa.10.0..sroa_idx81, align 8, !tbaa !8
  br label %_ZNK4geos4geom11LineSegment12closestPointERKNS0_10CoordinateERS2_.exit71

bb.q:                                             ; preds = %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.thread.i62
  %.sroa.10.0..sroa_idx79 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.10.0.copyload80 = load double, ptr %.sroa.10.0..sroa_idx79, align 8, !tbaa !8
  br label %_ZNK4geos4geom11LineSegment12closestPointERKNS0_10CoordinateERS2_.exit71

_ZNK4geos4geom11LineSegment12closestPointERKNS0_10CoordinateERS2_.exit71: ; preds = %_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit.i65, %bb.p, %bb.q
  %sqrt.i72.pre-phi = phi double [ %.pre172, %_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit.i65 ], [ %sqrt.i.i63, %bb.p ], [ %sqrt.i13.i64, %bb.q ]
  %.sroa.0.0 = phi double [ %i.ed, %_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit.i65 ], [ %i.j, %bb.p ], [ %i.ay, %bb.q ]
  %.sroa.8.0 = phi double [ %i.ef, %_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit.i65 ], [ %i.n, %bb.p ], [ %i.bb, %bb.q ]
  %.sroa.10.0 = phi double [ +qnan, %_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit.i65 ], [ %.sroa.10.0.copyload82, %bb.p ], [ %.sroa.10.0.copyload80, %bb.q ]
  %i.er = fcmp olt double %sqrt.i72.pre-phi, %.1
  br i1 %i.er, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNK4geos4geom11LineSegment12closestPointERKNS0_10CoordinateERS2_.exit71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !tbaa.struct !7
  store double %.sroa.0.0, ptr %.ptr.1.i, align 8, !tbaa !8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %.sroa.8.0, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !8
  store double %.sroa.10.0, ptr %i.i, align 8, !tbaa !8
  br label %bb.s

bb.s:                                             ; preds = %_ZNK4geos4geom11LineSegment12closestPointERKNS0_10CoordinateERS2_.exit71, %bb.r, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK4geos4geom11LineSegment12intersectionERKS1_(ptr dead_on_unwind noalias writable writeonly sret(%"class.geos::geom::Coordinate") align 8 captures(none) initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"class.geos::algorithm::LineIntersector", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.ptr.i = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.ptr.i, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.b, align 8, !tbaa !18
  %.ptr.1.i = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.ptr.1.i, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.c, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 128
  store i8 0, ptr %i.d, align 8, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @_ZN4geos9algorithm15LineIntersector19computeIntersectionERKNS_4geom10CoordinateES5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(129) %3, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.f)
  %i.g = load i64, ptr %i.a, align 8, !tbaa !25
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.ptr.i, i64 24, i1 false), !tbaa.struct !7
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x double> splat (double +qnan), ptr %0, align 8, !tbaa !8
  store double +qnan, ptr %4, align 8, !tbaa !18
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
define void @_ZNK4geos4geom11LineSegment16pointAlongOffsetEddRNS0_10CoordinateE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, double noundef %1, double noundef %2, ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load <2 x double>, ptr %0, align 8, !tbaa !8 ; 2 uses
  %i.c = load <2 x double>, ptr %i.a, align 8, !tbaa !8
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
  %i.k = load ptr, ptr %4, align 8, !tbaa !26     ; 2 uses
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
  store <2 x double> %i.ab, ptr %3, align 8, !tbaa !8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  store double +qnan, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !8
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
  store ptr %i.b, ptr %2, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 21, ptr %i.a, align 8, !tbaa !31
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !26
  %i.d = load i64, ptr %i.a, align 8, !tbaa !31   ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.c, ptr noundef nonnull align 1 dereferenceable(21) @.str.1, i64 21, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !33
  %i.f = load ptr, ptr %2, align 8, !tbaa !26
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  store i8 0, ptr %i.g, align 1, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  invoke void @_ZN4geos4util13GEOSExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %.noexc.i
  %i.h = load ptr, ptr %2, align 8, !tbaa !26     ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.b
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  call void @_ZdlPv(ptr noundef %i.h) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4geos4util21IllegalStateExceptionE, i64 16), ptr %0, align 8, !tbaa !34
  ret void

bb.b:                                             ; preds = %.noexc.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %2, align 8, !tbaa !26     ; 2 uses
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
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #5

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #6

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define void @_ZNK4geos4geom11LineSegment10toGeometryERKNS0_15GeometryFactoryE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(45) %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::unique_ptr.3", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
end_hunk_0
