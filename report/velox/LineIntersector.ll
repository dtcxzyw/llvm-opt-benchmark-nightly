inline.NumInlined: 169
inline.NumDeleted: 58
begin_hunk_0_@_ZN4geos9algorithm15LineIntersector28computeCollinearIntersectionERKNS_4geom10CoordinateES5_S5_S5_:bb.a
  %i.mm = fsub double %i.lv, %i.lx                ; 2 uses
  %i.mn = fmul double %i.ml, %i.ml
  %i.mo = fmul double %i.mm, %i.mm
  %i.mp = fadd double %i.mn, %i.mo
  %i.mq = fdiv double %i.mp, %i.mk
  %sqrt.i.i.i143 = tail call double @llvm.sqrt.f64(double %i.mq)
  %i.mr = fmul double %i.me, %sqrt.i.i.i143
  %i.ms = fadd double %i.lm, %i.mr
  br label %_ZN4geos9algorithm15LineIntersector21zGetOrInterpolateCopyERKNS_4geom10CoordinateES5_S5_.exit144

_ZN4geos9algorithm15LineIntersector21zGetOrInterpolateCopyERKNS_4geom10CoordinateES5_S5_.exit144: ; preds = %bb.bf, %bb.bg, %bb.bh, %bb.bi, %bb.bj, %bb.bk, %bb.bl
  %.0.i.i140 = phi double [ %i.lj, %bb.bf ], [ %i.lo, %bb.bj ], [ %i.lo, %bb.bg ], [ %i.lm, %bb.bh ], [ %i.lm, %bb.bi ], [ %i.ms, %bb.bl ], [ %i.lm, %bb.bk ]
  %i.mt = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mt, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  %.sroa.4153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store double %.0.i.i140, ptr %.sroa.4153.0..sroa_idx, align 8, !tbaa !20
  %i.mu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.mv = load double, ptr %i.mu, align 8, !tbaa !21, !noalias !80 ; 2 uses
  %i.mw = fcmp uno double %i.mv, 0.000000e+00
  br i1 %i.mw, label %bb.bm, label %_ZN4geos9algorithm15LineIntersector21zGetOrInterpolateCopyERKNS_4geom10CoordinateES5_S5_.exit149

bb.bm:                                            ; preds = %_ZN4geos9algorithm15LineIntersector21zGetOrInterpolateCopyERKNS_4geom10CoordinateES5_S5_.exit144
  %i.mx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.my = load double, ptr %i.mx, align 8, !tbaa !21, !noalias !80 ; 6 uses
  %i.mz = load double, ptr %i.li, align 8, !tbaa !21, !noalias !80 ; 4 uses
  %i.na = fcmp uno double %i.my, 0.000000e+00
  br i1 %i.na, label %_ZN4geos9algorithm15LineIntersector21zGetOrInterpolateCopyERKNS_4geom10CoordinateES5_S5_.exit149, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.nb = fcmp uno double %i.mz, 0.000000e+00
  br i1 %i.nb, label %_ZN4geos9algorithm15LineIntersector21zGetOrInterpolateCopyERKNS_4geom10CoordinateES5_S5_.exit149, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.nc = load double, ptr %1, align 8, !tbaa !7, !noalias !80 ; 3 uses
  %i.nd = load double, ptr %3, align 8, !tbaa !7, !noalias !80 ; 3 uses
  %i.ne = fcmp oeq double %i.nc, %i.nd
  %i.nf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ng = load double, ptr %i.nf, align 8, !noalias !80 ; 3 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ni = load double, ptr %i.nh, align 8, !noalias !80 ; 3 uses
  %i.nj = fcmp oeq double %i.ng, %i.ni
  %.0.i.i.i.i146 = select i1 %i.ne, i1 %i.nj, i1 false
  br i1 %.0.i.i.i.i146, label %_ZN4geos9algorithm15LineIntersector21zGetOrInterpolateCopyERKNS_4geom10CoordinateES5_S5_.exit149, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.nk = load double, ptr %4, align 8, !tbaa !7, !noalias !80 ; 2 uses
  %i.nl = fcmp oeq double %i.nc, %i.nk
  %i.nm = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.nn = load double, ptr %i.nm, align 8, !noalias !80 ; 2 uses
  %i.no = fcmp oeq double %i.ng, %i.nn
  %.0.i41.i.i.i147 = select i1 %i.nl, i1 %i.no, i1 false
  br i1 %.0.i41.i.i.i147, label %_ZN4geos9algorithm15LineIntersector21zGetOrInterpolateCopyERKNS_4geom10CoordinateES5_S5_.exit149, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.np = fsub double %i.mz, %i.my                ; 2 uses
  %i.nq = fcmp oeq double %i.np, 0.000000e+00
  br i1 %i.nq, label %_ZN4geos9algorithm15LineIntersector21zGetOrInterpolateCopyERKNS_4geom10CoordinateES5_S5_.exit149, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.nr = fsub double %i.nk, %i.nd                ; 2 uses
  %i.ns = fsub double %i.nn, %i.ni                ; 2 uses
  %i.nt = fmul double %i.nr, %i.nr
  %i.nu = fmul double %i.ns, %i.ns
  %i.nv = fadd double %i.nt, %i.nu
  %i.nw = fsub double %i.nc, %i.nd                ; 2 uses
  %i.nx = fsub double %i.ng, %i.ni                ; 2 uses
  %i.ny = fmul double %i.nw, %i.nw
  %i.nz = fmul double %i.nx, %i.nx
  %i.oa = fadd double %i.ny, %i.nz
  %i.ob = fdiv double %i.oa, %i.nv
  %sqrt.i.i.i148 = tail call double @llvm.sqrt.f64(double %i.ob)
  %i.oc = fmul double %i.np, %sqrt.i.i.i148
  %i.od = fadd double %i.my, %i.oc
  br label %_ZN4geos9algorithm15LineIntersector21zGetOrInterpolateCopyERKNS_4geom10CoordinateES5_S5_.exit149

_ZN4geos9algorithm15LineIntersector21zGetOrInterpolateCopyERKNS_4geom10CoordinateES5_S5_.exit149: ; preds = %_ZN4geos9algorithm15LineIntersector21zGetOrInterpolateCopyERKNS_4geom10CoordinateES5_S5_.exit144, %bb.bm, %bb.bn, %bb.bo, %bb.bp, %bb.bq, %bb.br
  %.0.i.i145 = phi double [ %i.mv, %_ZN4geos9algorithm15LineIntersector21zGetOrInterpolateCopyERKNS_4geom10CoordinateES5_S5_.exit144 ], [ %i.mz, %bb.bp ], [ %i.mz, %bb.bm ], [ %i.my, %bb.bn ], [ %i.my, %bb.bo ], [ %i.od, %bb.br ], [ %i.my, %bb.bq ]
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.oe, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store double %.0.i.i145, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !20
  %i.of = load <2 x double>, ptr %4, align 8
  %i.og = load <2 x double>, ptr %1, align 8
  %i.oh = fcmp une <2 x double> %i.of, %i.og      ; 2 uses
  %i.oi = extractelement <2 x i1> %i.oh, i64 0
  %i.oj = extractelement <2 x i1> %i.oh, i64 1
  %.0.i.i150.not176 = select i1 %i.oi, i1 true, i1 %i.oj
  %i.ok = or i1 %i.d, %.0.i.i150.not176
  %.not173 = or i1 %i.a, %i.ok
  %i.ol = select i1 %.not173, i8 2, i8 1
  br label %bb.bu

bb.bs:                                            ; preds = %bb.be
  %or.cond19 = and i1 %i.b, %i.d
  br i1 %or.cond19, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @_ZN4geos9algorithm15LineIntersector21zGetOrInterpolateCopyERKNS_4geom10CoordinateES5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.geos::geom::Coordinate") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.om, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  call void @_ZN4geos9algorithm15LineIntersector21zGetOrInterpolateCopyERKNS_4geom10CoordinateES5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.geos::geom::Coordinate") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
  %i.on = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.on, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  %i.oo = load <2 x double>, ptr %4, align 8
  %i.op = load <2 x double>, ptr %2, align 8
  %i.oq = fcmp une <2 x double> %i.oo, %i.op      ; 2 uses
  %i.or = extractelement <2 x i1> %i.oq, i64 0
  %i.os = extractelement <2 x i1> %i.oq, i64 1
  %.0.i.i151.not172 = select i1 %i.or, i1 true, i1 %i.os
  %i.ot = or i1 %i.c, %.0.i.i151.not172
  %.not = or i1 %i.a, %i.ot
  %i.ou = select i1 %.not, i8 2, i8 1
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bs, %bb.bt, %_ZN4geos9algorithm15LineIntersector21zGetOrInterpolateCopyERKNS_4geom10CoordinateES5_S5_.exit149, %_ZN4geos9algorithm15LineIntersector21zGetOrInterpolateCopyERKNS_4geom10CoordinateES5_S5_.exit138, %_ZN4geos9algorithm15LineIntersector21zGetOrInterpolateCopyERKNS_4geom10CoordinateES5_S5_.exit127, %_ZN4geos9algorithm15LineIntersector21zGetOrInterpolateCopyERKNS_4geom10CoordinateES5_S5_.exit117, %_ZN4geos9algorithm15LineIntersector21zGetOrInterpolateCopyERKNS_4geom10CoordinateES5_S5_.exit107
  %.0 = phi i8 [ 2, %_ZN4geos9algorithm15LineIntersector21zGetOrInterpolateCopyERKNS_4geom10CoordinateES5_S5_.exit107 ], [ 2, %_ZN4geos9algorithm15LineIntersector21zGetOrInterpolateCopyERKNS_4geom10CoordinateES5_S5_.exit117 ], [ %i.id, %_ZN4geos9algorithm15LineIntersector21zGetOrInterpolateCopyERKNS_4geom10CoordinateES5_S5_.exit127 ], [ %i.lh, %_ZN4geos9algorithm15LineIntersector21zGetOrInterpolateCopyERKNS_4geom10CoordinateES5_S5_.exit138 ], [ %i.ol, %_ZN4geos9algorithm15LineIntersector21zGetOrInterpolateCopyERKNS_4geom10CoordinateES5_S5_.exit149 ], [ %i.ou, %bb.bt ], [ 0, %bb.bs ]
  ret i8 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef double @_ZN4geos9algorithm15LineIntersector17zGetOrInterpolateERKNS_4geom10CoordinateES5_S5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load double, ptr %i.a, align 8, !tbaa !21 ; 2 uses
  %i.c = fcmp uno double %i.b, 0.000000e+00
  br i1 %i.c, label %bb.b, label %_ZN4geos9algorithm15LineIntersector12zInterpolateERKNS_4geom10CoordinateES5_S5_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load double, ptr %i.d, align 8, !tbaa !21 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load double, ptr %i.f, align 8, !tbaa !21 ; 4 uses
  %i.h = fcmp uno double %i.e, 0.000000e+00
  br i1 %i.h, label %_ZN4geos9algorithm15LineIntersector12zInterpolateERKNS_4geom10CoordinateES5_S5_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = fcmp uno double %i.g, 0.000000e+00
  br i1 %i.i, label %_ZN4geos9algorithm15LineIntersector12zInterpolateERKNS_4geom10CoordinateES5_S5_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load double, ptr %0, align 8, !tbaa !7   ; 3 uses
  %i.k = load double, ptr %1, align 8, !tbaa !7   ; 3 uses
  %i.l = fcmp oeq double %i.j, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load double, ptr %i.m, align 8           ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load double, ptr %i.o, align 8           ; 3 uses
  %i.q = fcmp oeq double %i.n, %i.p
  %.0.i.i = select i1 %i.l, i1 %i.q, i1 false
  br i1 %.0.i.i, label %_ZN4geos9algorithm15LineIntersector12zInterpolateERKNS_4geom10CoordinateES5_S5_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load double, ptr %2, align 8, !tbaa !7   ; 2 uses
  %i.s = fcmp oeq double %i.j, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load double, ptr %i.t, align 8           ; 2 uses
  %i.v = fcmp oeq double %i.n, %i.u
  %.0.i41.i = select i1 %i.s, i1 %i.v, i1 false
  br i1 %.0.i41.i, label %_ZN4geos9algorithm15LineIntersector12zInterpolateERKNS_4geom10CoordinateES5_S5_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = fsub double %i.g, %i.e                   ; 2 uses
  %i.x = fcmp oeq double %i.w, 0.000000e+00
  br i1 %i.x, label %_ZN4geos9algorithm15LineIntersector12zInterpolateERKNS_4geom10CoordinateES5_S5_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = fsub double %i.r, %i.k                   ; 2 uses
  %i.z = fsub double %i.u, %i.p                   ; 2 uses
  %i.aa = fmul double %i.y, %i.y
  %i.ab = fmul double %i.z, %i.z
  %i.ac = fadd double %i.aa, %i.ab
  %i.ad = fsub double %i.j, %i.k                  ; 2 uses
  %i.ae = fsub double %i.n, %i.p                  ; 2 uses
  %i.af = fmul double %i.ad, %i.ad
  %i.ag = fmul double %i.ae, %i.ae
  %i.ah = fadd double %i.af, %i.ag
  %i.ai = fdiv double %i.ah, %i.ac
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.ai)
  %i.aj = fmul double %i.w, %sqrt.i
  %i.ak = fadd double %i.e, %i.aj
  br label %_ZN4geos9algorithm15LineIntersector12zInterpolateERKNS_4geom10CoordinateES5_S5_.exit

_ZN4geos9algorithm15LineIntersector12zInterpolateERKNS_4geom10CoordinateES5_S5_.exit: ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi double [ %i.b, %bb.a ], [ %i.g, %bb.e ], [ %i.g, %bb.b ], [ %i.e, %bb.c ], [ %i.e, %bb.d ], [ %i.ak, %bb.g ], [ %i.e, %bb.f ]
  ret double %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZNK4geos9algorithm15LineIntersector12intersectionERKNS_4geom10CoordinateES5_S5_S5_(ptr dead_on_unwind noalias writable sret(%"class.geos::geom::Coordinate") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(129) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #3 align 2 {
bb.a:
  %6 = alloca %"class.geos::geom::Envelope", align 8 ; 5 uses
  %7 = alloca %"class.geos::geom::Envelope", align 8 ; 5 uses
  tail call void @_ZN4geos9algorithm12Intersection12intersectionERKNS_4geom10CoordinateES5_S5_S5_(ptr dead_on_unwind writable sret(%"class.geos::geom::Coordinate") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %8 = load <3 x double>, ptr %0, align 8, !alias.scope !83
  %.fr = freeze <3 x double> %8                   ; 3 uses
  %9 = fcmp ord <3 x double> %.fr, zeroinitializer
  %10 = bitcast <3 x i1> %9 to i3
  %11 = icmp eq i3 %10, 0
  %12 = extractelement <3 x double> %.fr, i64 0
  %13 = extractelement <3 x double> %.fr, i64 1
  br i1 %11, label %bb.b, label %_ZNK4geos9algorithm15LineIntersector16intersectionSafeERKNS_4geom10CoordinateES5_S5_S5_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef double @_ZN4geos9algorithm8Distance14pointToSegmentERKNS_4geom10CoordinateES5_S5_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5), !noalias !86 ; 2 uses
  %i.c = tail call noundef double @_ZN4geos9algorithm8Distance14pointToSegmentERKNS_4geom10CoordinateES5_S5_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5), !noalias !86 ; 2 uses
  %i.d = fcmp olt double %i.c, %i.b               ; 2 uses
  %.025.i.i = select i1 %i.d, ptr %3, ptr %2
  %.0.i.i = select i1 %i.d, double %i.c, double %i.b ; 2 uses
  %i.e = tail call noundef double @_ZN4geos9algorithm8Distance14pointToSegmentERKNS_4geom10CoordinateES5_S5_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3), !noalias !86 ; 2 uses
  %i.f = fcmp olt double %i.e, %.0.i.i            ; 2 uses
  %.126.i.i = select i1 %i.f, ptr %4, ptr %.025.i.i
  %.1.i.i = select i1 %i.f, double %i.e, double %.0.i.i
  %i.g = tail call noundef double @_ZN4geos9algorithm8Distance14pointToSegmentERKNS_4geom10CoordinateES5_S5_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3), !noalias !86
  %i.h = fcmp olt double %i.g, %.1.i.i
  %.2.i.i = select i1 %i.h, ptr %5, ptr %.126.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.2.i.i, i64 24, i1 false)
  %.pre = load double, ptr %0, align 8, !tbaa !7
  %.pre9 = load double, ptr %i.a, align 8, !tbaa !10
  br label %_ZNK4geos9algorithm15LineIntersector16intersectionSafeERKNS_4geom10CoordinateES5_S5_S5_.exit

_ZNK4geos9algorithm15LineIntersector16intersectionSafeERKNS_4geom10CoordinateES5_S5_S5_.exit: ; preds = %bb.a, %bb.b
  %i.i = phi double [ %13, %bb.a ], [ %.pre9, %bb.b ]
  %i.j = phi double [ %12, %bb.a ], [ %.pre, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !11
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !11
  %i.o = load <2 x double>, ptr %i.l, align 8, !tbaa !20 ; 3 uses
  %i.p = load <2 x double>, ptr %i.n, align 8, !tbaa !20 ; 3 uses
  %i.q = fcmp olt <2 x double> %i.o, %i.p
  %i.r = shufflevector <2 x i1> %i.q, <2 x i1> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.s = shufflevector <2 x double> %i.p, <2 x double> %i.o, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.t = shufflevector <2 x double> %i.o, <2 x double> %i.p, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.u = select <4 x i1> %i.r, <4 x double> %i.s, <4 x double> %i.t
  %i.v = shufflevector <4 x double> %i.u, <4 x double> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  store <4 x double> %i.v, ptr %6, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !11
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !11
  %i.aa = load <2 x double>, ptr %i.x, align 8, !tbaa !20 ; 3 uses
  %i.ab = load <2 x double>, ptr %i.z, align 8, !tbaa !20 ; 3 uses
  %i.ac = fcmp olt <2 x double> %i.aa, %i.ab
  %i.ad = shufflevector <2 x i1> %i.ac, <2 x i1> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ae = shufflevector <2 x double> %i.ab, <2 x double> %i.aa, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.af = shufflevector <2 x double> %i.aa, <2 x double> %i.ab, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.ag = select <4 x i1> %i.ad, <4 x double> %i.ae, <4 x double> %i.af
  %i.ah = shufflevector <4 x double> %i.ag, <4 x double> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  store <4 x double> %i.ah, ptr %7, align 8, !tbaa !20
  %i.ai = call noundef zeroext i1 @_ZNK4geos4geom8Envelope6coversEdd(ptr noundef nonnull align 8 dereferenceable(32) %6, double noundef %i.j, double noundef %i.i)
  br i1 %i.ai, label %_ZNK4geos9algorithm15LineIntersector20isInSegmentEnvelopesERKNS_4geom10CoordinateE.exit, label %_ZNK4geos9algorithm15LineIntersector20isInSegmentEnvelopesERKNS_4geom10CoordinateE.exit.thread

_ZNK4geos9algorithm15LineIntersector20isInSegmentEnvelopesERKNS_4geom10CoordinateE.exit.thread: ; preds = %_ZNK4geos9algorithm15LineIntersector16intersectionSafeERKNS_4geom10CoordinateES5_S5_S5_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %bb.c

_ZNK4geos9algorithm15LineIntersector20isInSegmentEnvelopesERKNS_4geom10CoordinateE.exit: ; preds = %_ZNK4geos9algorithm15LineIntersector16intersectionSafeERKNS_4geom10CoordinateES5_S5_S5_.exit
  %i.aj = load double, ptr %0, align 8, !tbaa !7
  %i.ak = load double, ptr %i.a, align 8, !tbaa !10
  %i.al = call noundef zeroext i1 @_ZNK4geos4geom8Envelope6coversEdd(ptr noundef nonnull align 8 dereferenceable(32) %7, double noundef %i.aj, double noundef %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br i1 %i.al, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK4geos9algorithm15LineIntersector20isInSegmentEnvelopesERKNS_4geom10CoordinateE.exit.thread, %_ZNK4geos9algorithm15LineIntersector20isInSegmentEnvelopesERKNS_4geom10CoordinateE.exit
  %i.am = call noundef double @_ZN4geos9algorithm8Distance14pointToSegmentERKNS_4geom10CoordinateES5_S5_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5), !noalias !89 ; 2 uses
  %i.an = call noundef double @_ZN4geos9algorithm8Distance14pointToSegmentERKNS_4geom10CoordinateES5_S5_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5), !noalias !89 ; 2 uses
  %i.ao = fcmp olt double %i.an, %i.am            ; 2 uses
  %.025.i = select i1 %i.ao, ptr %3, ptr %2
  %.0.i = select i1 %i.ao, double %i.an, double %i.am ; 2 uses
  %i.ap = call noundef double @_ZN4geos9algorithm8Distance14pointToSegmentERKNS_4geom10CoordinateES5_S5_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3), !noalias !89 ; 2 uses
  %i.aq = fcmp olt double %i.ap, %.0.i            ; 2 uses
  %.126.i = select i1 %i.aq, ptr %4, ptr %.025.i
  %.1.i = select i1 %i.aq, double %i.ap, double %.0.i
  %i.ar = call noundef double @_ZN4geos9algorithm8Distance14pointToSegmentERKNS_4geom10CoordinateES5_S5_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3), !noalias !89
  %i.as = fcmp olt double %i.ar, %.1.i
  %.2.i = select i1 %i.as, ptr %5, ptr %.126.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.2.i, i64 24, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNK4geos9algorithm15LineIntersector20isInSegmentEnvelopesERKNS_4geom10CoordinateE.exit
  %i.at = load ptr, ptr %1, align 8, !tbaa !92    ; 4 uses
  %.not = icmp eq ptr %i.at, null
  br i1 %.not, label %_ZNK4geos4geom14PrecisionModel11makePreciseERNS0_10CoordinateE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.au = load i32, ptr %i.at, align 8, !tbaa !93
  %i.av = icmp eq i32 %i.au, 1
  br i1 %i.av, label %_ZNK4geos4geom14PrecisionModel11makePreciseERNS0_10CoordinateE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aw = load double, ptr %0, align 8, !tbaa !7
  %i.ax = call noundef double @_ZNK4geos4geom14PrecisionModel11makePreciseEd(ptr noundef nonnull align 8 dereferenceable(16) %i.at, double noundef %i.aw)
  store double %i.ax, ptr %0, align 8, !tbaa !7
  %i.ay = load double, ptr %i.a, align 8, !tbaa !10
  %i.az = call noundef double @_ZNK4geos4geom14PrecisionModel11makePreciseEd(ptr noundef nonnull align 8 dereferenceable(16) %i.at, double noundef %i.ay)
  store double %i.az, ptr %i.a, align 8, !tbaa !10
  br label %_ZNK4geos4geom14PrecisionModel11makePreciseERNS0_10CoordinateE.exit

_ZNK4geos4geom14PrecisionModel11makePreciseERNS0_10CoordinateE.exit: ; preds = %bb.f, %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef double @_ZN4geos9algorithm15LineIntersector12zInterpolateERKNS_4geom10CoordinateES5_S5_S5_S5_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load double, ptr %i.a, align 8, !tbaa !21 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load double, ptr %i.c, align 8, !tbaa !21 ; 4 uses
  %i.e = fcmp uno double %i.b, 0.000000e+00
  br i1 %i.e, label %_ZN4geos9algorithm15LineIntersector12zInterpolateERKNS_4geom10CoordinateES5_S5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = fcmp uno double %i.d, 0.000000e+00
  br i1 %i.f, label %_ZN4geos9algorithm15LineIntersector12zInterpolateERKNS_4geom10CoordinateES5_S5_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load double, ptr %0, align 8, !tbaa !7   ; 3 uses
  %i.h = load double, ptr %1, align 8, !tbaa !7   ; 3 uses
  %i.i = fcmp oeq double %i.g, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load double, ptr %i.j, align 8           ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load double, ptr %i.l, align 8           ; 3 uses
  %i.n = fcmp oeq double %i.k, %i.m
  %.0.i.i = select i1 %i.i, i1 %i.n, i1 false
  br i1 %.0.i.i, label %_ZN4geos9algorithm15LineIntersector12zInterpolateERKNS_4geom10CoordinateES5_S5_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load double, ptr %2, align 8, !tbaa !7   ; 2 uses
  %i.p = fcmp oeq double %i.g, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = load double, ptr %i.q, align 8           ; 2 uses
  %i.s = fcmp oeq double %i.k, %i.r
  %.0.i41.i = select i1 %i.p, i1 %i.s, i1 false
  br i1 %.0.i41.i, label %_ZN4geos9algorithm15LineIntersector12zInterpolateERKNS_4geom10CoordinateES5_S5_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = fsub double %i.d, %i.b                   ; 2 uses
  %i.u = fcmp oeq double %i.t, 0.000000e+00
  br i1 %i.u, label %_ZN4geos9algorithm15LineIntersector12zInterpolateERKNS_4geom10CoordinateES5_S5_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = fsub double %i.o, %i.h                   ; 2 uses
  %i.w = fsub double %i.r, %i.m                   ; 2 uses
  %i.x = fmul double %i.v, %i.v
  %i.y = fmul double %i.w, %i.w
  %i.z = fadd double %i.x, %i.y
  %i.aa = fsub double %i.g, %i.h                  ; 2 uses
  %i.ab = fsub double %i.k, %i.m                  ; 2 uses
  %i.ac = fmul double %i.aa, %i.aa
  %i.ad = fmul double %i.ab, %i.ab
  %i.ae = fadd double %i.ac, %i.ad
  %i.af = fdiv double %i.ae, %i.z
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.af)
  %i.ag = fmul double %i.t, %sqrt.i
  %i.ah = fadd double %i.b, %i.ag
  br label %_ZN4geos9algorithm15LineIntersector12zInterpolateERKNS_4geom10CoordinateES5_S5_.exit

_ZN4geos9algorithm15LineIntersector12zInterpolateERKNS_4geom10CoordinateES5_S5_.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.1.i = phi double [ %i.d, %bb.d ], [ %i.d, %bb.a ], [ %i.b, %bb.b ], [ %i.b, %bb.c ], [ %i.ah, %bb.f ], [ %i.b, %bb.e ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !21 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.al = load double, ptr %i.ak, align 8, !tbaa !21 ; 4 uses
  %i.am = fcmp uno double %i.aj, 0.000000e+00
  br i1 %i.am, label %_ZN4geos9algorithm15LineIntersector12zInterpolateERKNS_4geom10CoordinateES5_S5_.exit17, label %bb.g

bb.g:                                             ; preds = %_ZN4geos9algorithm15LineIntersector12zInterpolateERKNS_4geom10CoordinateES5_S5_.exit
  %i.an = fcmp uno double %i.al, 0.000000e+00
  br i1 %i.an, label %_ZN4geos9algorithm15LineIntersector12zInterpolateERKNS_4geom10CoordinateES5_S5_.exit17, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = load double, ptr %0, align 8, !tbaa !7  ; 3 uses
  %i.ap = load double, ptr %3, align 8, !tbaa !7  ; 3 uses
  %i.aq = fcmp oeq double %i.ao, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = load double, ptr %i.ar, align 8         ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.au = load double, ptr %i.at, align 8         ; 3 uses
  %i.av = fcmp oeq double %i.as, %i.au
  %.0.i.i13 = select i1 %i.aq, i1 %i.av, i1 false
  br i1 %.0.i.i13, label %_ZN4geos9algorithm15LineIntersector12zInterpolateERKNS_4geom10CoordinateES5_S5_.exit17, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = load double, ptr %4, align 8, !tbaa !7  ; 2 uses
  %i.ax = fcmp oeq double %i.ao, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.az = load double, ptr %i.ay, align 8         ; 2 uses
  %i.ba = fcmp oeq double %i.as, %i.az
  %.0.i41.i14 = select i1 %i.ax, i1 %i.ba, i1 false
  br i1 %.0.i41.i14, label %_ZN4geos9algorithm15LineIntersector12zInterpolateERKNS_4geom10CoordinateES5_S5_.exit17, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bb = fsub double %i.al, %i.aj                ; 2 uses
  %i.bc = fcmp oeq double %i.bb, 0.000000e+00
  br i1 %i.bc, label %_ZN4geos9algorithm15LineIntersector12zInterpolateERKNS_4geom10CoordinateES5_S5_.exit17, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bd = fsub double %i.aw, %i.ap                ; 2 uses
  %i.be = fsub double %i.az, %i.au                ; 2 uses
  %i.bf = fmul double %i.bd, %i.bd
  %i.bg = fmul double %i.be, %i.be
  %i.bh = fadd double %i.bf, %i.bg
  %i.bi = fsub double %i.ao, %i.ap                ; 2 uses
  %i.bj = fsub double %i.as, %i.au                ; 2 uses
  %i.bk = fmul double %i.bi, %i.bi
  %i.bl = fmul double %i.bj, %i.bj
  %i.bm = fadd double %i.bk, %i.bl
  %i.bn = fdiv double %i.bm, %i.bh
  %sqrt.i15 = tail call double @llvm.sqrt.f64(double %i.bn)
  %i.bo = fmul double %i.bb, %sqrt.i15
  %i.bp = fadd double %i.aj, %i.bo
  br label %_ZN4geos9algorithm15LineIntersector12zInterpolateERKNS_4geom10CoordinateES5_S5_.exit17

_ZN4geos9algorithm15LineIntersector12zInterpolateERKNS_4geom10CoordinateES5_S5_.exit17: ; preds = %_ZN4geos9algorithm15LineIntersector12zInterpolateERKNS_4geom10CoordinateES5_S5_.exit, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k
  %.1.i16 = phi double [ %i.al, %bb.i ], [ %i.al, %_ZN4geos9algorithm15LineIntersector12zInterpolateERKNS_4geom10CoordinateES5_S5_.exit ], [ %i.aj, %bb.g ], [ %i.aj, %bb.h ], [ %i.bp, %bb.k ], [ %i.aj, %bb.j ] ; 3 uses
  %i.bq = fcmp uno double %.1.i, 0.000000e+00
  br i1 %i.bq, label %bb.n, label %bb.l
end_hunk_0
