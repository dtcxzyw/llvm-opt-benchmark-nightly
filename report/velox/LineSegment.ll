Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/LineSegment?download=true
inline.NumInlined: 170
inline.NumDeleted: 80
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK4geos4geom11LineSegment7projectERKNS0_10CoordinateERS2_:bb.a
  %i.al = fmul double %.0.i, %i.ak
  %i.am = fadd double %i.q, %i.al
  %i.an = fsub double %i.aj, %i.o
  %i.ao = fmul double %.0.i, %i.an
  %i.ap = fadd double %i.o, %i.ao
  store double %i.am, ptr %2, align 8, !tbaa !9
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store double %i.ap, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !9
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  store double +qnan, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, double noundef %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = fcmp oeq double %1, 1.000000e+00
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !tbaa.struct !8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load <2 x double>, ptr %0, align 8, !tbaa !9 ; 2 uses
  %i.e = load <2 x double>, ptr %i.c, align 8, !tbaa !9
  %i.f = fsub <2 x double> %i.e, %i.d
  %i.g = insertelement <2 x double> poison, double %1, i64 0
  %i.h = shufflevector <2 x double> %i.g, <2 x double> poison, <2 x i32> zeroinitializer
  %i.i = fmul <2 x double> %i.h, %i.f
  %i.j = fadd <2 x double> %i.d, %i.i
  store <2 x double> %i.j, ptr %2, align 8, !tbaa !9
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  store double +qnan, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef zeroext i1 @_ZNK4geos4geom11LineSegment7projectERKS1_RS1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(48) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load double, ptr %1, align 8, !tbaa !11  ; 3 uses
  %i.b = load double, ptr %0, align 8, !tbaa !11  ; 10 uses
  %i.c = fcmp oeq double %i.a, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load double, ptr %i.d, align 8           ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load double, ptr %i.f, align 8           ; 10 uses
  %i.h = fcmp oeq double %i.e, %i.g
  %.0.i.i.i = select i1 %i.c, i1 %i.h, i1 false
  br i1 %.0.i.i.i, label %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load double, ptr %i.i, align 8, !tbaa !11 ; 2 uses
  %i.k = fcmp oeq double %i.a, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load double, ptr %i.l, align 8           ; 2 uses
  %i.n = fcmp oeq double %i.e, %i.m
  %.0.i.i14.i = select i1 %i.k, i1 %i.n, i1 false
  br i1 %.0.i.i14.i, label %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = fsub double %i.j, %i.b                   ; 3 uses
  %i.p = fsub double %i.m, %i.g                   ; 3 uses
  %i.q = fmul double %i.o, %i.o
  %i.r = fmul double %i.p, %i.p
  %i.s = fadd double %i.q, %i.r
  %i.t = fsub double %i.a, %i.b
  %i.u = fmul double %i.t, %i.o
  %i.v = fsub double %i.e, %i.g
  %i.w = fmul double %i.v, %i.p
  %i.x = fadd double %i.u, %i.w
  %i.y = fdiv double %i.x, %i.s
  br label %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit

_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi double [ %i.y, %bb.c ], [ 0.000000e+00, %bb.a ], [ 1.000000e+00, %bb.b ] ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = load double, ptr %i.z, align 8, !tbaa !11 ; 3 uses
  %i.ab = fcmp oeq double %i.aa, %i.b
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ad = load double, ptr %i.ac, align 8         ; 3 uses
  %i.ae = fcmp oeq double %i.ad, %i.g
  %.0.i.i.i14 = select i1 %i.ab, i1 %i.ae, i1 false
  br i1 %.0.i.i.i14, label %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit17.thread, label %bb.d

bb.d:                                             ; preds = %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load double, ptr %i.af, align 8, !tbaa !11 ; 2 uses
  %i.ah = fcmp oeq double %i.aa, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aj = load double, ptr %i.ai, align 8         ; 2 uses
  %i.ak = fcmp oeq double %i.ad, %i.aj
  %.0.i.i14.i15 = select i1 %i.ah, i1 %i.ak, i1 false
  br i1 %.0.i.i14.i15, label %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit17, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.al = fsub double %i.ag, %i.b                 ; 3 uses
  %i.am = fsub double %i.aj, %i.g                 ; 3 uses
  %i.an = fmul double %i.al, %i.al
  %i.ao = fmul double %i.am, %i.am
  %i.ap = fadd double %i.an, %i.ao
  %i.aq = fsub double %i.aa, %i.b
  %i.ar = fmul double %i.aq, %i.al
  %i.as = fsub double %i.ad, %i.g
  %i.at = fmul double %i.as, %i.am
  %i.au = fadd double %i.ar, %i.at
  %i.av = fdiv double %i.au, %i.ap
  br label %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit17

_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit17: ; preds = %bb.d, %bb.e
  %.0.i16 = phi double [ %i.av, %bb.e ], [ 1.000000e+00, %bb.d ] ; 2 uses
  %i.aw = fcmp oge double %.0.i, 1.000000e+00
  %i.ax = fcmp oge double %.0.i16, 1.000000e+00
  %or.cond = and i1 %i.aw, %i.ax
  br i1 %or.cond, label %bb.k, label %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit17.thread

_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit17.thread: ; preds = %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit, %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit17
  %.0.i1636 = phi double [ %.0.i16, %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit17 ], [ 0.000000e+00, %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit ] ; 4 uses
  %i.ay = fcmp ole double %.0.i, 0.000000e+00
  %i.az = fcmp ole double %.0.i1636, 0.000000e+00
  %or.cond3 = and i1 %i.ay, %i.az
  br i1 %or.cond3, label %bb.k, label %bb.f

bb.f:                                             ; preds = %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit17.thread
  %i.ba = fcmp oeq double %.0.i, 1.000000e+00
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.026.0.copyload = load double, ptr %i.bb, align 8, !tbaa !9 ; 4 uses
  br i1 %i.ba, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.sroa.628.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bc = load <2 x double>, ptr %.sroa.628.0..sroa_idx, align 8, !tbaa !9 ; 2 uses
  %i.bd = extractelement <2 x double> %i.bc, i64 0
  br label %_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit

bb.h:                                             ; preds = %bb.f
  %i.be = fsub double %.sroa.026.0.copyload, %i.b
  %i.bf = fmul double %.0.i, %i.be
  %i.bg = fadd double %i.b, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !13 ; 2 uses
  %i.bj = fsub double %i.bi, %i.g
  %i.bk = fmul double %.0.i, %i.bj
  %i.bl = fadd double %i.g, %i.bk
  %i.bm = insertelement <2 x double> <double poison, double +qnan>, double %i.bl, i64 0
  br label %_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit

_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit: ; preds = %bb.g, %bb.h
  %.sroa.6.0.copyload = phi double [ %i.bd, %bb.g ], [ %i.bi, %bb.h ] ; 2 uses
  %.sroa.026.0 = phi double [ %.sroa.026.0.copyload, %bb.g ], [ %i.bg, %bb.h ]
  %i.bn = phi <2 x double> [ %i.bc, %bb.g ], [ %i.bm, %bb.h ]
  %i.bo = fcmp oeq double %.0.i1636, 1.000000e+00
  br i1 %i.bo, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.7.0.copyload = load double, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !9
  br label %_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit20

bb.j:                                             ; preds = %_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit
  %i.bp = fsub double %.sroa.026.0.copyload, %i.b
  %i.bq = fmul double %.0.i1636, %i.bp
  %i.br = fadd double %i.b, %i.bq
  %i.bs = fsub double %.sroa.6.0.copyload, %i.g
  %i.bt = fmul double %.0.i1636, %i.bs
  %i.bu = fadd double %i.g, %i.bt
  br label %_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit20

_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit20: ; preds = %bb.i, %bb.j
  %.sroa.0.0 = phi double [ %.sroa.026.0.copyload, %bb.i ], [ %i.br, %bb.j ]
  %.sroa.6.0 = phi double [ %.sroa.6.0.copyload, %bb.i ], [ %i.bu, %bb.j ]
  %.sroa.7.0 = phi double [ %.sroa.7.0.copyload, %bb.i ], [ +qnan, %bb.j ]
  store double %.sroa.026.0, ptr %2, align 8, !tbaa !9
  %.sroa.628.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store <2 x double> %i.bn, ptr %.sroa.628.0..sroa_idx29, align 8, !tbaa !9
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 24
  store double %.sroa.0.0, ptr %i.bv, align 8, !tbaa !9
  %.sroa.6.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %2, i64 32
  store double %.sroa.6.0, ptr %.sroa.6.0..sroa_idx22, align 8, !tbaa !9
  %.sroa.7.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %2, i64 40
  store double %.sroa.7.0, ptr %.sroa.7.0..sroa_idx24, align 8, !tbaa !9
  br label %bb.k

bb.k:                                             ; preds = %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit17.thread, %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit17, %_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit20
  %.0 = phi i1 [ true, %_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit20 ], [ false, %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit17 ], [ false, %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit17.thread ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZNK4geos4geom11LineSegment12closestPointERKNS0_10CoordinateERS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %3 = load <2 x double>, ptr %1, align 8         ; 6 uses
  %i.b = load <2 x double>, ptr %0, align 8       ; 5 uses
  %i.c = load double, ptr %i.a, align 8           ; 4 uses
  %i.d = extractelement <2 x double> %i.b, i64 0  ; 2 uses
  %4 = fcmp oeq <2 x double> %3, %i.b
  %5 = extractelement <2 x i1> %4, i64 0
  %6 = extractelement <2 x double> %3, i64 1      ; 3 uses
  %i.e = fcmp oeq double %6, %i.c
  %.0.i.i.i = select i1 %5, i1 %i.e, i1 false
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load double, ptr %.phi.trans.insert, align 8, !tbaa !11 ; 3 uses
  br i1 %.0.i.i.i, label %._ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.thread_crit_edge, label %bb.b

._ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.thread_crit_edge: ; preds = %bb.a
  %.phi.trans.insert16 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre17 = load double, ptr %.phi.trans.insert16, align 8, !tbaa !15
  br label %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.thread

bb.b:                                             ; preds = %bb.a
  %7 = extractelement <2 x double> %3, i64 0
  %i.f = fcmp oeq double %7, %.pre
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load double, ptr %i.g, align 8           ; 4 uses
  %i.i = fcmp oeq double %6, %i.h
  %.0.i.i14.i = select i1 %i.f, i1 %i.i, i1 false
  br i1 %.0.i.i14.i, label %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.thread, label %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit

_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit: ; preds = %bb.b
  %i.j = fsub double %.pre, %i.d                  ; 4 uses
  %i.k = fsub double %i.h, %i.c                   ; 4 uses
  %i.l = fmul double %i.j, %i.j
  %i.m = fmul double %i.k, %i.k
  %i.n = fadd double %i.l, %i.m
  %foldExtExtBinop = fsub <2 x double> %3, %i.b
  %8 = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.o = fmul double %8, %i.j
  %i.p = fsub double %6, %i.c
  %i.q = fmul double %i.p, %i.k
  %i.r = fadd double %i.o, %i.q
  %i.s = fdiv double %i.r, %i.n                   ; 4 uses
  %i.t = fcmp ogt double %i.s, 0.000000e+00
  %i.u = fcmp olt double %i.s, 1.000000e+00
  %or.cond = and i1 %i.t, %i.u
  br i1 %or.cond, label %_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit, label %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.thread

_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit: ; preds = %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit
  %i.v = fmul double %i.s, %i.j
  %i.w = fadd double %i.d, %i.v
  %i.x = fmul double %i.s, %i.k
  %i.y = fadd double %i.c, %i.x
  store double %i.w, ptr %2, align 8, !tbaa !9
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store double %i.y, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !9
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store double +qnan, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !9
  br label %bb.e

_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.thread: ; preds = %._ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.thread_crit_edge, %bb.b, %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit
  %i.z = phi double [ %.pre17, %._ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.thread_crit_edge ], [ %i.h, %bb.b ], [ %i.h, %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit ]
  %i.aa = insertelement <2 x double> %i.b, double %.pre, i64 1
  %i.ab = shufflevector <2 x double> %3, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ac = fsub <2 x double> %i.aa, %i.ab          ; 2 uses
  %i.ad = shufflevector <2 x double> %i.b, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ae = insertelement <2 x double> %i.ad, double %i.z, i64 1
  %9 = shufflevector <2 x double> %3, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.af = fsub <2 x double> %i.ae, %9             ; 2 uses
  %i.ag = fmul <2 x double> %i.ac, %i.ac
  %i.ah = fmul <2 x double> %i.af, %i.af
  %i.ai = fadd <2 x double> %i.ag, %i.ah
  %i.aj = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.ai) ; 2 uses
  %shift = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ak = fcmp olt <2 x double> %i.aj, %shift
  %i.al = extractelement <2 x i1> %i.ak, i64 0
  br i1 %i.al, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.thread
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !8
  br label %bb.e

bb.d:                                             ; preds = %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.thread
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 24, i1 false), !tbaa.struct !8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i32 -1, 2) i32 @_ZNK4geos4geom11LineSegment9compareToERKS1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !11  ; 2 uses
  %i.b = load double, ptr %1, align 8, !tbaa !11  ; 2 uses
  %i.c = fcmp olt double %i.a, %i.b
  br i1 %i.c, label %_ZNK4geos4geom10Coordinate9compareToERKS1_.exit8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = fcmp ogt double %i.a, %i.b
  br i1 %i.d, label %_ZNK4geos4geom10Coordinate9compareToERKS1_.exit8, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load double, ptr %i.e, align 8, !tbaa !15 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load double, ptr %i.g, align 8, !tbaa !15 ; 2 uses
  %i.i = fcmp olt double %i.f, %i.h
  br i1 %i.i, label %_ZNK4geos4geom10Coordinate9compareToERKS1_.exit8, label %_ZNK4geos4geom10Coordinate9compareToERKS1_.exit

_ZNK4geos4geom10Coordinate9compareToERKS1_.exit:  ; preds = %bb.c
  %i.j = fcmp ule double %i.f, %i.h
  br i1 %i.j, label %bb.d, label %_ZNK4geos4geom10Coordinate9compareToERKS1_.exit8

bb.d:                                             ; preds = %_ZNK4geos4geom10Coordinate9compareToERKS1_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load double, ptr %i.k, align 8, !tbaa !11 ; 2 uses
  %i.n = load double, ptr %i.l, align 8, !tbaa !11 ; 2 uses
  %i.o = fcmp olt double %i.m, %i.n
  br i1 %i.o, label %_ZNK4geos4geom10Coordinate9compareToERKS1_.exit8, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = fcmp ogt double %i.m, %i.n
  br i1 %i.p, label %_ZNK4geos4geom10Coordinate9compareToERKS1_.exit8, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load double, ptr %i.q, align 8, !tbaa !15 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.t = load double, ptr %i.s, align 8, !tbaa !15 ; 2 uses
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
define noundef zeroext i1 @_ZNK4geos4geom11LineSegment10equalsTopoERKS1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !11  ; 2 uses
  %i.b = load double, ptr %1, align 8, !tbaa !11  ; 2 uses
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
  %.pre = load double, ptr %.phi.trans.insert, align 8, !tbaa !11
  %.phi.trans.insert8 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.pre9 = load double, ptr %.phi.trans.insert8, align 8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load double, ptr %i.i, align 8, !tbaa !11
  %i.l = load double, ptr %i.j, align 8, !tbaa !11 ; 2 uses
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
  %i.x = load double, ptr %i.w, align 8, !tbaa !11
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
define void @_ZN4geos4geom11LineSegment13closestPointsERKS1_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.std::array") align 8 captures(none) initializes((0, 48)) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %2) local_unnamed_addr #3 align 2 {
_ZNK4geos4geom11LineSegment12intersectionERKS1_.exit:
  %3 = alloca %"class.geos::algorithm::LineIntersector", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15, !noalias !16
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.ptr.i.i = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.ptr.i.i, i8 0, i64 16, i1 false), !noalias !16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !noalias !16
  store double +qnan, ptr %i.b, align 8, !tbaa !19, !noalias !16
  %.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.ptr.1.i.i, i8 0, i64 16, i1 false), !noalias !16
  store double +qnan, ptr %i.c, align 8, !tbaa !19, !noalias !16
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 128
  store i8 0, ptr %i.d, align 8, !tbaa !20, !noalias !16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  call void @_ZN4geos9algorithm15LineIntersector19computeIntersectionERKNS_4geom10CoordinateES5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(129) %3, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.f), !noalias !16
  %i.g = load i64, ptr %i.a, align 8, !tbaa !26, !noalias !16
  %.not.i = icmp eq i64 %i.g, 0                   ; 3 uses
  %.sroa.0122.0.copyload124 = load double, ptr %.ptr.i.i, align 8
  %.sroa.7.0..ptr.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 56
  %.sroa.7.0.copyload127 = load double, ptr %.sroa.7.0..ptr.i.i.sroa_idx, align 8
  %.sroa.9.0.copyload130 = load double, ptr %i.b, align 8
  %.sroa.9.0 = select i1 %.not.i, double +qnan, double %.sroa.9.0.copyload130 ; 3 uses
  %.sroa.7.0 = select i1 %.not.i, double +qnan, double %.sroa.7.0.copyload127 ; 3 uses
  %.sroa.0122.0 = select i1 %.not.i, double +qnan, double %.sroa.0122.0.copyload124 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15, !noalias !16
  %i.h = fcmp uno double %.sroa.0122.0, 0.000000e+00
  %i.i = fcmp uno double %.sroa.7.0, 0.000000e+00
  %or.cond.i = select i1 %i.h, i1 %i.i, i1 false
  %i.j = fcmp uno double %.sroa.9.0, 0.000000e+00
  %i.k = select i1 %or.cond.i, i1 %i.j, i1 false
  br i1 %i.k, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZNK4geos4geom11LineSegment12intersectionERKS1_.exit
  store double %.sroa.0122.0, ptr %0, align 8, !tbaa !9
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !9
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !9
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %.sroa.0122.0, ptr %i.l, align 8, !tbaa !9
  %.sroa.7.0..sroa_idx125 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %.sroa.7.0, ptr %.sroa.7.0..sroa_idx125, align 8, !tbaa !9
  %.sroa.9.0..sroa_idx128 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %.sroa.9.0, ptr %.sroa.9.0..sroa_idx128, align 8, !tbaa !9
  br label %bb.s

bb.b:                                             ; preds = %_ZNK4geos4geom11LineSegment12intersectionERKS1_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.ptr.1.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load <2 x double>, ptr %2, align 8       ; 10 uses
  %i.q = extractelement <2 x double> %i.p, i64 0  ; 8 uses
  %i.r = load double, ptr %i.o, align 8           ; 15 uses
  %i.s = load <2 x double>, ptr %1, align 8       ; 13 uses
  %i.t = extractelement <2 x double> %i.s, i64 1  ; 12 uses
  %4 = extractelement <2 x double> %i.s, i64 0    ; 7 uses
  %i.u = fcmp oeq <2 x double> %i.p, %i.s
  %i.v = extractelement <2 x i1> %i.u, i64 0
  %i.w = fcmp oeq double %i.r, %i.t
  %.0.i.i.i.i = select i1 %i.v, i1 %i.w, i1 false ; 2 uses
  %.pre.i = load double, ptr %i.e, align 8, !tbaa !11 ; 13 uses
  br i1 %.0.i.i.i.i, label %._ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.thread_crit_edge.i, label %bb.c

._ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.thread_crit_edge.i: ; preds = %bb.b
  %.phi.trans.insert16.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.pre17.i = load double, ptr %.phi.trans.insert16.i, align 8, !tbaa !15
  br label %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.thread.i

bb.c:                                             ; preds = %bb.b
  %i.x = fcmp oeq double %i.q, %.pre.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.z = load double, ptr %i.y, align 8           ; 5 uses
  %i.aa = fcmp oeq double %i.r, %i.z
  %.0.i.i14.i.i = select i1 %i.x, i1 %i.aa, i1 false
  br i1 %.0.i.i14.i.i, label %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.thread.i, label %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.i

_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.i: ; preds = %bb.c
  %i.ab = fsub double %.pre.i, %4                 ; 4 uses
  %i.ac = fsub double %i.z, %i.t                  ; 4 uses
  %i.ad = fmul double %i.ab, %i.ab
  %i.ae = fmul double %i.ac, %i.ac
  %i.af = fadd double %i.ad, %i.ae
  %foldExtExtBinop = fsub <2 x double> %i.p, %i.s
  %i.ag = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ah = fmul double %i.ag, %i.ab
  %i.ai = fsub double %i.r, %i.t
  %i.aj = fmul double %i.ai, %i.ac
  %i.ak = fadd double %i.ah, %i.aj
  %i.al = fdiv double %i.ak, %i.af                ; 4 uses
  %i.am = fcmp ogt double %i.al, 0.000000e+00
  %i.an = fcmp olt double %i.al, 1.000000e+00
  %or.cond.i21 = and i1 %i.am, %i.an
  br i1 %or.cond.i21, label %_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit.i, label %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.thread.i

_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit.i: ; preds = %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.i
  %i.ao = fmul double %i.ab, %i.al
  %i.ap = fadd double %4, %i.ao                   ; 2 uses
  %i.aq = fmul double %i.ac, %i.al
  %i.ar = fadd double %i.t, %i.aq                 ; 2 uses
  %.pre = fsub double %i.ap, %i.q                 ; 2 uses
  %.pre131 = fsub double %i.ar, %i.r              ; 2 uses
  %.pre133 = fmul double %.pre, %.pre
  %.pre135 = fmul double %.pre131, %.pre131
  %.pre137 = fadd double %.pre133, %.pre135
  %.pre139 = call noundef double @llvm.sqrt.f64(double %.pre137)
  br label %_ZNK4geos4geom11LineSegment12closestPointERKNS0_10CoordinateERS2_.exit

_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.thread.i: ; preds = %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.i, %bb.c, %._ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.thread_crit_edge.i
  %.sroa.8112.0.copyload114 = phi double [ %.pre17.i, %._ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.thread_crit_edge.i ], [ %i.z, %bb.c ], [ %i.z, %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.i ] ; 4 uses
  %i.as = insertelement <2 x double> %i.s, double %.pre.i, i64 1
  %i.at = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> zeroinitializer
  %i.au = fsub <2 x double> %i.as, %i.at          ; 2 uses
  %5 = shufflevector <2 x double> %i.s, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.av = insertelement <2 x double> %5, double %.sroa.8112.0.copyload114, i64 1
  %i.aw = insertelement <2 x double> poison, double %i.r, i64 0
  %i.ax = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ay = fsub <2 x double> %i.av, %i.ax          ; 2 uses
  %i.az = fmul <2 x double> %i.au, %i.au
  %i.ba = fmul <2 x double> %i.ay, %i.ay
  %i.bb = fadd <2 x double> %i.az, %i.ba
  %i.bc = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.bb) ; 2 uses
  %i.bd = extractelement <2 x double> %i.bc, i64 0 ; 2 uses
  %i.be = extractelement <2 x double> %i.bc, i64 1 ; 2 uses
  %i.bf = fcmp olt double %i.bd, %i.be
  br i1 %i.bf, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.thread.i
  %.sroa.10117.0..sroa_idx120 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.10117.0.copyload121 = load double, ptr %.sroa.10117.0..sroa_idx120, align 8, !tbaa !9
  br label %_ZNK4geos4geom11LineSegment12closestPointERKNS0_10CoordinateERS2_.exit

bb.e:                                             ; preds = %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.thread.i
  %.sroa.10117.0..sroa_idx118 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.10117.0.copyload119 = load double, ptr %.sroa.10117.0..sroa_idx118, align 8, !tbaa !9
  br label %_ZNK4geos4geom11LineSegment12closestPointERKNS0_10CoordinateERS2_.exit

_ZNK4geos4geom11LineSegment12closestPointERKNS0_10CoordinateERS2_.exit: ; preds = %_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit.i, %bb.d, %bb.e
  %sqrt.i.pre-phi = phi double [ %.pre139, %_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit.i ], [ %i.bd, %bb.d ], [ %i.be, %bb.e ] ; 2 uses
  %i.bg = phi double [ %i.z, %_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit.i ], [ %.sroa.8112.0.copyload114, %bb.d ], [ %.sroa.8112.0.copyload114, %bb.e ] ; 9 uses
  %.sroa.0109.0 = phi double [ %i.ap, %_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit.i ], [ %4, %bb.d ], [ %.pre.i, %bb.e ]
  %.sroa.8112.0 = phi double [ %i.ar, %_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit.i ], [ %i.t, %bb.d ], [ %.sroa.8112.0.copyload114, %bb.e ]
  %.sroa.10117.0 = phi double [ +qnan, %_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit.i ], [ %.sroa.10117.0.copyload121, %bb.d ], [ %.sroa.10117.0.copyload119, %bb.e ]
  store double %.sroa.0109.0, ptr %0, align 8, !tbaa !9
  %.sroa.8112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store double %.sroa.8112.0, ptr %.sroa.8112.0..sroa_idx, align 8, !tbaa !9
  store double %.sroa.10117.0, ptr %i.m, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.ptr.1.i, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !8
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bi = load <2 x double>, ptr %i.f, align 8    ; 9 uses
  %i.bj = load double, ptr %i.bh, align 8         ; 11 uses
  %i.bk = extractelement <2 x double> %i.bi, i64 0 ; 5 uses
  %i.bl = fcmp oeq <2 x double> %i.bi, %i.s
  %i.bm = extractelement <2 x i1> %i.bl, i64 0
  %i.bn = fcmp oeq double %i.bj, %i.t
  %.0.i.i.i.i22 = select i1 %i.bm, i1 %i.bn, i1 false ; 2 uses
  br i1 %.0.i.i.i.i22, label %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.thread.i28, label %bb.f

bb.f:                                             ; preds = %_ZNK4geos4geom11LineSegment12closestPointERKNS0_10CoordinateERS2_.exit
  %i.bo = fcmp oeq double %i.bk, %.pre.i
  %i.bp = fcmp oeq double %i.bj, %i.bg
  %.0.i.i14.i.i25 = select i1 %i.bo, i1 %i.bp, i1 false
  br i1 %.0.i.i14.i.i25, label %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.thread.i28, label %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.i26

_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.i26: ; preds = %bb.f
  %i.bq = fsub double %.pre.i, %4                 ; 4 uses
  %i.br = fsub double %i.bg, %i.t                 ; 4 uses
  %i.bs = fmul double %i.bq, %i.bq
  %i.bt = fmul double %i.br, %i.br
  %i.bu = fadd double %i.bs, %i.bt
  %foldExtExtBinop179 = fsub <2 x double> %i.bi, %i.s
  %i.bv = extractelement <2 x double> %foldExtExtBinop179, i64 0
  %i.bw = fmul double %i.bq, %i.bv
  %i.bx = fsub double %i.bj, %i.t
  %i.by = fmul double %i.bx, %i.br
  %i.bz = fadd double %i.bw, %i.by
  %i.ca = fdiv double %i.bz, %i.bu                ; 4 uses
  %i.cb = fcmp ogt double %i.ca, 0.000000e+00
  %i.cc = fcmp olt double %i.ca, 1.000000e+00
  %or.cond.i27 = and i1 %i.cb, %i.cc
  br i1 %or.cond.i27, label %_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit.i31, label %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.thread.i28

_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit.i31: ; preds = %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.i26
  %i.cd = fmul double %i.bq, %i.ca
  %i.ce = fadd double %4, %i.cd                   ; 2 uses
  %i.cf = fmul double %i.br, %i.ca
  %i.cg = fadd double %i.t, %i.cf                 ; 2 uses
  %.pre140 = fsub double %i.ce, %i.bk             ; 2 uses
  %.pre142 = fsub double %i.cg, %i.bj             ; 2 uses
  %.pre144 = fmul double %.pre140, %.pre140
  %.pre146 = fmul double %.pre142, %.pre142
  %.pre148 = fadd double %.pre144, %.pre146
  %.pre150 = call noundef double @llvm.sqrt.f64(double %.pre148)
  br label %_ZNK4geos4geom11LineSegment12closestPointERKNS0_10CoordinateERS2_.exit37

_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.thread.i28: ; preds = %_ZNK4geos4geom11LineSegment12closestPointERKNS0_10CoordinateERS2_.exit, %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.i26, %bb.f
  %i.ch = shufflevector <2 x double> %i.s, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ci = insertelement <2 x double> %i.ch, double %i.bg, i64 1
  %i.cj = insertelement <2 x double> poison, double %i.bj, i64 0
  %i.ck = shufflevector <2 x double> %i.cj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cl = fsub <2 x double> %i.ci, %i.ck          ; 2 uses
  %i.cm = insertelement <2 x double> %i.s, double %.pre.i, i64 1
  %i.cn = shufflevector <2 x double> %i.bi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.co = fsub <2 x double> %i.cm, %i.cn          ; 2 uses
  %i.cp = fmul <2 x double> %i.co, %i.co
  %i.cq = fmul <2 x double> %i.cl, %i.cl
  %i.cr = fadd <2 x double> %i.cp, %i.cq
  %i.cs = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.cr) ; 2 uses
  %i.ct = extractelement <2 x double> %i.cs, i64 0 ; 2 uses
  %i.cu = extractelement <2 x double> %i.cs, i64 1 ; 2 uses
  %i.cv = fcmp olt double %i.ct, %i.cu
  br i1 %i.cv, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.thread.i28
  %.sroa.10104.0..sroa_idx107 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.10104.0.copyload108 = load double, ptr %.sroa.10104.0..sroa_idx107, align 8, !tbaa !9
  br label %_ZNK4geos4geom11LineSegment12closestPointERKNS0_10CoordinateERS2_.exit37

bb.h:                                             ; preds = %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.thread.i28
  %.sroa.10104.0..sroa_idx105 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.10104.0.copyload106 = load double, ptr %.sroa.10104.0..sroa_idx105, align 8, !tbaa !9
  br label %_ZNK4geos4geom11LineSegment12closestPointERKNS0_10CoordinateERS2_.exit37

_ZNK4geos4geom11LineSegment12closestPointERKNS0_10CoordinateERS2_.exit37: ; preds = %_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit.i31, %bb.g, %bb.h
  %sqrt.i38.pre-phi = phi double [ %.pre150, %_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit.i31 ], [ %i.ct, %bb.g ], [ %i.cu, %bb.h ] ; 2 uses
  %.sroa.096.0 = phi double [ %i.ce, %_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit.i31 ], [ %4, %bb.g ], [ %.pre.i, %bb.h ]
  %.sroa.899.0 = phi double [ %i.cg, %_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit.i31 ], [ %i.t, %bb.g ], [ %i.bg, %bb.h ]
  %.sroa.10104.0 = phi double [ +qnan, %_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit.i31 ], [ %.sroa.10104.0.copyload108, %bb.g ], [ %.sroa.10104.0.copyload106, %bb.h ]
  %i.cw = fcmp olt double %sqrt.i38.pre-phi, %sqrt.i.pre-phi
  br i1 %i.cw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNK4geos4geom11LineSegment12closestPointERKNS0_10CoordinateERS2_.exit37
  store double %.sroa.096.0, ptr %0, align 8, !tbaa !9
  store double %.sroa.899.0, ptr %.sroa.8112.0..sroa_idx, align 8, !tbaa !9
  store double %.sroa.10104.0, ptr %i.m, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.ptr.1.i, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !tbaa.struct !8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZNK4geos4geom11LineSegment12closestPointERKNS0_10CoordinateERS2_.exit37
  %.0 = phi double [ %sqrt.i38.pre-phi, %bb.i ], [ %sqrt.i.pre-phi, %_ZNK4geos4geom11LineSegment12closestPointERKNS0_10CoordinateERS2_.exit37 ] ; 2 uses
  %brmerge = or i1 %.0.i.i.i.i, %.0.i.i.i.i22
  br i1 %brmerge, label %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.thread.i45, label %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.i43

_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.i43: ; preds = %bb.j
  %foldExtExtBinop181 = fsub <2 x double> %i.bi, %i.p ; 4 uses
  %i.cx = fsub double %i.bj, %i.r                 ; 4 uses
  %foldExtExtBinop183 = fmul <2 x double> %foldExtExtBinop181, %foldExtExtBinop181
  %i.cy = extractelement <2 x double> %foldExtExtBinop183, i64 0
  %i.cz = fmul double %i.cx, %i.cx
  %i.da = fadd double %i.cy, %i.cz
  %foldExtExtBinop185 = fsub <2 x double> %i.s, %i.p
  %foldExtExtBinop187 = fmul <2 x double> %foldExtExtBinop185, %foldExtExtBinop181
  %i.db = extractelement <2 x double> %foldExtExtBinop187, i64 0
  %i.dc = fsub double %i.t, %i.r
  %i.dd = fmul double %i.dc, %i.cx
  %i.de = fadd double %i.db, %i.dd
  %i.df = fdiv double %i.de, %i.da                ; 4 uses
  %i.dg = fcmp ogt double %i.df, 0.000000e+00
  %i.dh = fcmp olt double %i.df, 1.000000e+00
  %or.cond.i44 = and i1 %i.dg, %i.dh
  br i1 %or.cond.i44, label %_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit.i48, label %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.thread.i45

_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit.i48: ; preds = %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.i43
  %i.di = extractelement <2 x double> %foldExtExtBinop181, i64 0
  %i.dj = fmul double %i.di, %i.df
  %i.dk = fadd double %i.q, %i.dj                 ; 2 uses
  %i.dl = fmul double %i.cx, %i.df
  %i.dm = fadd double %i.r, %i.dl                 ; 2 uses
  %.pre151 = fsub double %i.dk, %4                ; 2 uses
  %.pre153 = fsub double %i.dm, %i.t              ; 2 uses
  %.pre155 = fmul double %.pre151, %.pre151
  %.pre157 = fmul double %.pre153, %.pre153
  %.pre159 = fadd double %.pre155, %.pre157
  %.pre161 = call noundef double @llvm.sqrt.f64(double %.pre159)
  br label %_ZNK4geos4geom11LineSegment12closestPointERKNS0_10CoordinateERS2_.exit54

_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.thread.i45: ; preds = %bb.j, %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.i43
  %i.dn = insertelement <2 x double> poison, double %i.r, i64 0
  %i.do = insertelement <2 x double> %i.dn, double %i.bj, i64 1
  %6 = shufflevector <2 x double> %i.s, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dp = fsub <2 x double> %i.do, %6             ; 2 uses
  %i.dq = shufflevector <2 x double> %i.p, <2 x double> %i.bi, <2 x i32> <i32 0, i32 2>
  %i.dr = shufflevector <2 x double> %i.s, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ds = fsub <2 x double> %i.dq, %i.dr          ; 2 uses
  %i.dt = fmul <2 x double> %i.ds, %i.ds
  %i.du = fmul <2 x double> %i.dp, %i.dp
  %i.dv = fadd <2 x double> %i.dt, %i.du
  %i.dw = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.dv) ; 2 uses
  %i.dx = extractelement <2 x double> %i.dw, i64 0 ; 2 uses
  %i.dy = extractelement <2 x double> %i.dw, i64 1 ; 2 uses
  %i.dz = fcmp olt double %i.dx, %i.dy
  br i1 %i.dz, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.thread.i45
  %.sroa.1091.0..sroa_idx94 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.1091.0.copyload95 = load double, ptr %.sroa.1091.0..sroa_idx94, align 8, !tbaa !9
  br label %_ZNK4geos4geom11LineSegment12closestPointERKNS0_10CoordinateERS2_.exit54

bb.l:                                             ; preds = %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.thread.i45
  %.sroa.1091.0..sroa_idx92 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.1091.0.copyload93 = load double, ptr %.sroa.1091.0..sroa_idx92, align 8, !tbaa !9
  br label %_ZNK4geos4geom11LineSegment12closestPointERKNS0_10CoordinateERS2_.exit54

_ZNK4geos4geom11LineSegment12closestPointERKNS0_10CoordinateERS2_.exit54: ; preds = %_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit.i48, %bb.k, %bb.l
  %sqrt.i55.pre-phi = phi double [ %.pre161, %_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit.i48 ], [ %i.dx, %bb.k ], [ %i.dy, %bb.l ] ; 2 uses
  %.sroa.083.0 = phi double [ %i.dk, %_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit.i48 ], [ %i.q, %bb.k ], [ %i.bk, %bb.l ]
  %.sroa.886.0 = phi double [ %i.dm, %_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit.i48 ], [ %i.r, %bb.k ], [ %i.bj, %bb.l ]
  %.sroa.1091.0 = phi double [ +qnan, %_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit.i48 ], [ %.sroa.1091.0.copyload95, %bb.k ], [ %.sroa.1091.0.copyload93, %bb.l ]
  %i.ea = fcmp olt double %sqrt.i55.pre-phi, %.0
  br i1 %i.ea, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZNK4geos4geom11LineSegment12closestPointERKNS0_10CoordinateERS2_.exit54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !8
  store double %.sroa.083.0, ptr %.ptr.1.i, align 8, !tbaa !9
  %.sroa.886.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %.sroa.886.0, ptr %.sroa.886.0..sroa_idx, align 8, !tbaa !9
  store double %.sroa.1091.0, ptr %i.n, align 8, !tbaa !9
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZNK4geos4geom11LineSegment12closestPointERKNS0_10CoordinateERS2_.exit54
  %.1 = phi double [ %sqrt.i55.pre-phi, %bb.m ], [ %.0, %_ZNK4geos4geom11LineSegment12closestPointERKNS0_10CoordinateERS2_.exit54 ]
  %i.eb = fcmp oeq double %.pre.i, %i.q
  %i.ec = fcmp oeq double %i.bg, %i.r
  %.0.i.i.i.i56 = select i1 %i.eb, i1 %i.ec, i1 false
  br i1 %.0.i.i.i.i56, label %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.thread.i62, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ed = fcmp oeq double %.pre.i, %i.bk
  %i.ee = fcmp oeq double %i.bg, %i.bj
  %.0.i.i14.i.i59 = select i1 %i.ed, i1 %i.ee, i1 false
  br i1 %.0.i.i14.i.i59, label %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.thread.i62, label %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.i60

_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.i60: ; preds = %bb.o
  %foldExtExtBinop189 = fsub <2 x double> %i.bi, %i.p ; 3 uses
  %i.ef = extractelement <2 x double> %foldExtExtBinop189, i64 0 ; 2 uses
  %i.eg = fsub double %i.bj, %i.r                 ; 4 uses
  %foldExtExtBinop191 = fmul <2 x double> %foldExtExtBinop189, %foldExtExtBinop189
  %i.eh = extractelement <2 x double> %foldExtExtBinop191, i64 0
  %i.ei = fmul double %i.eg, %i.eg
  %i.ej = fadd double %i.eh, %i.ei
  %i.ek = fsub double %.pre.i, %i.q
  %i.el = fmul double %i.ek, %i.ef
  %i.em = fsub double %i.bg, %i.r
  %i.en = fmul double %i.em, %i.eg
  %i.eo = fadd double %i.el, %i.en
  %i.ep = fdiv double %i.eo, %i.ej                ; 4 uses
  %i.eq = fcmp ogt double %i.ep, 0.000000e+00
  %i.er = fcmp olt double %i.ep, 1.000000e+00
  %or.cond.i61 = and i1 %i.eq, %i.er
  br i1 %or.cond.i61, label %_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit.i65, label %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.thread.i62

_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit.i65: ; preds = %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.i60
  %i.es = fmul double %i.ef, %i.ep
  %i.et = fadd double %i.q, %i.es                 ; 2 uses
  %i.eu = fmul double %i.eg, %i.ep
  %i.ev = fadd double %i.r, %i.eu                 ; 2 uses
  %.pre162 = fsub double %i.et, %.pre.i           ; 2 uses
  %.pre164 = fsub double %i.ev, %i.bg             ; 2 uses
  %.pre166 = fmul double %.pre162, %.pre162
  %.pre168 = fmul double %.pre164, %.pre164
  %.pre170 = fadd double %.pre166, %.pre168
  %.pre172 = call noundef double @llvm.sqrt.f64(double %.pre170)
  br label %_ZNK4geos4geom11LineSegment12closestPointERKNS0_10CoordinateERS2_.exit71

_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.thread.i62: ; preds = %bb.n, %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.i60, %bb.o
  %i.ew = shufflevector <2 x double> %i.p, <2 x double> %i.bi, <2 x i32> <i32 0, i32 2>
  %i.ex = insertelement <2 x double> poison, double %.pre.i, i64 0
  %i.ey = shufflevector <2 x double> %i.ex, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ez = fsub <2 x double> %i.ew, %i.ey          ; 2 uses
  %i.fa = shufflevector <2 x double> %i.p, <2 x double> %i.bi, <2 x i32> <i32 1, i32 3>
  %i.fb = insertelement <2 x double> poison, double %i.bg, i64 0
  %i.fc = shufflevector <2 x double> %i.fb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fd = fsub <2 x double> %i.fa, %i.fc          ; 2 uses
  %i.fe = fmul <2 x double> %i.ez, %i.ez
  %i.ff = fmul <2 x double> %i.fd, %i.fd
  %i.fg = fadd <2 x double> %i.fe, %i.ff
  %i.fh = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.fg) ; 2 uses
  %i.fi = extractelement <2 x double> %i.fh, i64 0 ; 2 uses
  %i.fj = extractelement <2 x double> %i.fh, i64 1 ; 2 uses
  %i.fk = fcmp olt double %i.fi, %i.fj
  br i1 %i.fk, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.thread.i62
  %.sroa.10.0..sroa_idx81 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.10.0.copyload82 = load double, ptr %.sroa.10.0..sroa_idx81, align 8, !tbaa !9
  br label %_ZNK4geos4geom11LineSegment12closestPointERKNS0_10CoordinateERS2_.exit71

bb.q:                                             ; preds = %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit.thread.i62
  %.sroa.10.0..sroa_idx79 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.10.0.copyload80 = load double, ptr %.sroa.10.0..sroa_idx79, align 8, !tbaa !9
  br label %_ZNK4geos4geom11LineSegment12closestPointERKNS0_10CoordinateERS2_.exit71

_ZNK4geos4geom11LineSegment12closestPointERKNS0_10CoordinateERS2_.exit71: ; preds = %_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit.i65, %bb.p, %bb.q
  %sqrt.i72.pre-phi = phi double [ %.pre172, %_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit.i65 ], [ %i.fi, %bb.p ], [ %i.fj, %bb.q ]
  %.sroa.0.0 = phi double [ %i.et, %_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit.i65 ], [ %i.q, %bb.p ], [ %i.bk, %bb.q ]
  %.sroa.8.0 = phi double [ %i.ev, %_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit.i65 ], [ %i.r, %bb.p ], [ %i.bj, %bb.q ]
  %.sroa.10.0 = phi double [ +qnan, %_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE.exit.i65 ], [ %.sroa.10.0.copyload82, %bb.p ], [ %.sroa.10.0.copyload80, %bb.q ]
  %i.fl = fcmp olt double %sqrt.i72.pre-phi, %.1
  br i1 %i.fl, label %bb.r, label %bb.s

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
  %i.d = fsub <2 x double> %i.c, %i.b             ; 4 uses
  %i.e = fmul <2 x double> %i.d, %i.d             ; 2 uses
  %shift = shufflevector <2 x double> %i.e, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.e, %shift
  %i.f = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %sqrt = tail call double @llvm.sqrt.f64(double %i.f)
  %i.g = fcmp une double %2, 0.000000e+00
  br i1 %i.g, label %bb.b, label %bb.j

end_hunk_0
