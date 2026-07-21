inline.NumInlined: 56
inline.NumDeleted: 3
begin_hunk_0_@_ZN4geos4math2DD5truncERKS1_:bb.a
  br i1 %or.cond, label %_ZNK4geos4math2DD10isPositiveEv.exit.thread, label %_ZNK4geos4math2DD10isPositiveEv.exit.thread11

_ZNK4geos4math2DD10isPositiveEv.exit.thread:      ; preds = %bb.c, %bb.b
  %i.e = tail call double @llvm.floor.f64(double %.sroa.0.0.copyload8) ; 2 uses
  %i.f = fcmp oeq double %i.e, %.sroa.0.0.copyload8
  %i.g = tail call double @llvm.floor.f64(double %.sroa.8.0.copyload)
  %.sroa.3.0.i = select i1 %i.f, double %i.g, double 0.000000e+00
  br label %bb.d

_ZNK4geos4math2DD10isPositiveEv.exit.thread11:    ; preds = %bb.c
  %i.h = tail call double @llvm.ceil.f64(double %.sroa.0.0.copyload8) ; 2 uses
  %i.i = fcmp oeq double %i.h, %.sroa.0.0.copyload8
  %i.j = tail call double @llvm.ceil.f64(double %.sroa.8.0.copyload)
  %.sroa.3.0.i1 = select i1 %i.i, double %i.j, double 0.000000e+00
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZNK4geos4math2DD10isPositiveEv.exit.thread11, %_ZNK4geos4math2DD10isPositiveEv.exit.thread
  %.sroa.0.0.copyload8.pn = phi double [ %i.h, %_ZNK4geos4math2DD10isPositiveEv.exit.thread11 ], [ %i.e, %_ZNK4geos4math2DD10isPositiveEv.exit.thread ], [ %.sroa.0.0.copyload8, %bb.a ]
  %.sroa.8.0.copyload.pn = phi double [ %.sroa.3.0.i1, %_ZNK4geos4math2DD10isPositiveEv.exit.thread11 ], [ %.sroa.3.0.i, %_ZNK4geos4math2DD10isPositiveEv.exit.thread ], [ %.sroa.8.0.copyload, %bb.a ]
  %.pn = insertvalue { double, double } poison, double %.sroa.0.0.copyload8.pn, 0
  %.fca.1.insert.merged = insertvalue { double, double } %.pn, double %.sroa.8.0.copyload.pn, 1
  ret { double, double } %.fca.1.insert.merged
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { double, double } @_ZN4geos4math2DD3absERKS1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.0.0.copyload6 = load double, ptr %0, align 8, !tbaa !11 ; 6 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.8.0.copyload = load double, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !11 ; 4 uses
  %i.a = fcmp uno double %.sroa.0.0.copyload6, 0.000000e+00
  br i1 %i.a, label %_ZNK4geos4math2DD10isNegativeEv.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp olt double %.sroa.0.0.copyload6, 0.000000e+00
  br i1 %i.b, label %_ZNK4geos4math2DD10isNegativeEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = fcmp oeq double %.sroa.0.0.copyload6, 0.000000e+00
  %i.d = fcmp olt double %.sroa.8.0.copyload, 0.000000e+00
  %or.cond = select i1 %i.c, i1 %i.d, i1 false
  br i1 %or.cond, label %_ZNK4geos4math2DD10isNegativeEv.exit.thread, label %_ZNK4geos4math2DD10isNegativeEv.exit.thread8

_ZNK4geos4math2DD10isNegativeEv.exit.thread:      ; preds = %bb.c, %bb.b
  %i.e = fneg double %.sroa.0.0.copyload6
  %i.f = fneg double %.sroa.8.0.copyload
  br label %_ZNK4geos4math2DD10isNegativeEv.exit.thread8

_ZNK4geos4math2DD10isNegativeEv.exit.thread8:     ; preds = %bb.c, %bb.a, %_ZNK4geos4math2DD10isNegativeEv.exit.thread
  %.sroa.0.0.copyload6.pn = phi double [ %.sroa.0.0.copyload6, %bb.a ], [ %i.e, %_ZNK4geos4math2DD10isNegativeEv.exit.thread ], [ %.sroa.0.0.copyload6, %bb.c ]
  %.sroa.8.0.copyload.pn = phi double [ %.sroa.8.0.copyload, %bb.a ], [ %i.f, %_ZNK4geos4math2DD10isNegativeEv.exit.thread ], [ %.sroa.8.0.copyload, %bb.c ]
  %.pn = insertvalue { double, double } poison, double %.sroa.0.0.copyload6.pn, 0
  %.fca.1.insert.merged = insertvalue { double, double } %.pn, double %.sroa.8.0.copyload.pn, 1
  ret { double, double } %.fca.1.insert.merged
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { double, double } @_ZN4geos4math2DD11determinantERKS1_S3_S3_S3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load <2 x double>, ptr %0, align 8, !tbaa !11 ; 2 uses
  %i.b = load <2 x double>, ptr %3, align 8, !tbaa !11 ; 2 uses
  %i.c = load <2 x double>, ptr %1, align 8, !tbaa !11 ; 2 uses
  %i.d = load <2 x double>, ptr %2, align 8, !tbaa !11 ; 2 uses
  %i.e = shufflevector <2 x double> %i.a, <2 x double> %i.c, <2 x i32> <i32 0, i32 2> ; 5 uses
  %i.f = fmul <2 x double> %i.e, splat (double f0x41A0000002000000) ; 2 uses
  %i.g = fsub <2 x double> %i.f, %i.e
  %i.h = shufflevector <2 x double> %i.b, <2 x double> %i.d, <2 x i32> <i32 0, i32 2> ; 5 uses
  %i.i = fmul <2 x double> %i.h, splat (double f0x41A0000002000000) ; 2 uses
  %i.j = fsub <2 x double> %i.f, %i.g             ; 3 uses
  %i.k = fsub <2 x double> %i.e, %i.j             ; 2 uses
  %i.l = fsub <2 x double> %i.i, %i.h
  %i.m = fmul <2 x double> %i.e, %i.h             ; 3 uses
  %i.n = fsub <2 x double> %i.i, %i.l             ; 3 uses
  %i.o = fsub <2 x double> %i.h, %i.n             ; 2 uses
  %i.p = fmul <2 x double> %i.j, %i.n
  %i.q = fsub <2 x double> %i.p, %i.m
  %i.r = fmul <2 x double> %i.j, %i.o
  %i.s = fadd <2 x double> %i.r, %i.q
  %i.t = fmul <2 x double> %i.k, %i.n
  %i.u = fadd <2 x double> %i.t, %i.s
  %i.v = fmul <2 x double> %i.k, %i.o
  %i.w = fadd <2 x double> %i.v, %i.u
  %i.x = shufflevector <2 x double> %i.b, <2 x double> %i.d, <2 x i32> <i32 1, i32 3>
  %i.y = fmul <2 x double> %i.e, %i.x
  %i.z = shufflevector <2 x double> %i.a, <2 x double> %i.c, <2 x i32> <i32 1, i32 3>
  %i.aa = fmul <2 x double> %i.z, %i.h
  %i.ab = fadd <2 x double> %i.aa, %i.y
  %i.ac = fadd <2 x double> %i.ab, %i.w           ; 2 uses
  %i.ad = fadd <2 x double> %i.m, %i.ac           ; 3 uses
  %i.ae = fsub <2 x double> %i.m, %i.ad
  %i.af = fadd <2 x double> %i.ac, %i.ae          ; 2 uses
  %i.ag = extractelement <2 x double> %i.ad, i64 1 ; 2 uses
  %i.ah = fneg double %i.ag
  %i.ai = extractelement <2 x double> %i.af, i64 1 ; 2 uses
  %i.aj = fneg double %i.ai
  %i.ak = extractelement <2 x double> %i.ad, i64 0 ; 3 uses
  %i.al = fsub double %i.ak, %i.ag                ; 4 uses
  %i.am = extractelement <2 x double> %i.af, i64 0 ; 3 uses
  %i.an = fsub double %i.am, %i.ai                ; 3 uses
  %i.ao = fsub double %i.al, %i.ak                ; 2 uses
  %i.ap = fsub double %i.an, %i.am                ; 2 uses
  %i.aq = fsub double %i.al, %i.ao
  %i.ar = fsub double %i.an, %i.ap
  %i.as = fsub double %i.ah, %i.ao
  %i.at = fsub double %i.ak, %i.aq
  %i.au = fadd double %i.as, %i.at
  %i.av = fsub double %i.aj, %i.ap
  %i.aw = fsub double %i.am, %i.ar
  %i.ax = fadd double %i.av, %i.aw
  %i.ay = fadd double %i.an, %i.au                ; 2 uses
  %i.az = fadd double %i.al, %i.ay                ; 3 uses
  %i.ba = fsub double %i.al, %i.az
  %i.bb = fadd double %i.ay, %i.ba
  %i.bc = fadd double %i.ax, %i.bb                ; 2 uses
  %i.bd = fadd double %i.az, %i.bc                ; 2 uses
  %i.be = fsub double %i.az, %i.bd
  %i.bf = fadd double %i.bc, %i.be
  %.fca.0.insert.i6 = insertvalue { double, double } poison, double %i.bd, 0
  %.fca.1.insert.i7 = insertvalue { double, double } %.fca.0.insert.i6, double %i.bf, 1
  ret { double, double } %.fca.1.insert.i7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { double, double } @_ZN4geos4math2DD11determinantEdddd(double noundef %0, double noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = insertelement <2 x double> poison, double %0, i64 0
  %i.b = insertelement <2 x double> %i.a, double %1, i64 1 ; 5 uses
  %i.c = fmul <2 x double> %i.b, splat (double f0x41A0000002000000) ; 2 uses
  %i.d = insertelement <2 x double> poison, double %3, i64 0
  %i.e = insertelement <2 x double> %i.d, double %2, i64 1 ; 5 uses
  %i.f = fmul <2 x double> %i.e, splat (double f0x41A0000002000000) ; 2 uses
  %i.g = fmul <2 x double> %i.b, %i.e             ; 3 uses
  %i.h = fmul <2 x double> %i.b, zeroinitializer
  %i.i = fmul <2 x double> %i.e, zeroinitializer
  %i.j = fsub <2 x double> %i.c, %i.b
  %i.k = fsub <2 x double> %i.c, %i.j             ; 3 uses
  %i.l = fsub <2 x double> %i.b, %i.k             ; 2 uses
  %i.m = fsub <2 x double> %i.f, %i.e
  %i.n = fsub <2 x double> %i.f, %i.m             ; 3 uses
  %i.o = fsub <2 x double> %i.e, %i.n             ; 2 uses
  %i.p = fmul <2 x double> %i.k, %i.n
  %i.q = fsub <2 x double> %i.p, %i.g
  %i.r = fmul <2 x double> %i.k, %i.o
  %i.s = fadd <2 x double> %i.r, %i.q
  %i.t = fmul <2 x double> %i.l, %i.n
  %i.u = fadd <2 x double> %i.t, %i.s
  %i.v = fmul <2 x double> %i.l, %i.o
  %i.w = fadd <2 x double> %i.v, %i.u
  %i.x = fadd <2 x double> %i.h, %i.i
  %i.y = fadd <2 x double> %i.x, %i.w             ; 2 uses
  %i.z = fadd <2 x double> %i.g, %i.y             ; 3 uses
  %i.aa = fsub <2 x double> %i.g, %i.z
  %i.ab = fadd <2 x double> %i.y, %i.aa           ; 2 uses
  %i.ac = extractelement <2 x double> %i.z, i64 1 ; 2 uses
  %i.ad = fneg double %i.ac
  %i.ae = extractelement <2 x double> %i.ab, i64 1 ; 2 uses
  %i.af = fneg double %i.ae
  %i.ag = extractelement <2 x double> %i.z, i64 0 ; 3 uses
  %i.ah = fsub double %i.ag, %i.ac                ; 4 uses
  %i.ai = extractelement <2 x double> %i.ab, i64 0 ; 3 uses
  %i.aj = fsub double %i.ai, %i.ae                ; 3 uses
  %i.ak = fsub double %i.ah, %i.ag                ; 2 uses
  %i.al = fsub double %i.aj, %i.ai                ; 2 uses
  %i.am = fsub double %i.ah, %i.ak
  %i.an = fsub double %i.aj, %i.al
  %i.ao = fsub double %i.ad, %i.ak
  %i.ap = fsub double %i.ag, %i.am
  %i.aq = fadd double %i.ao, %i.ap
  %i.ar = fsub double %i.af, %i.al
  %i.as = fsub double %i.ai, %i.an
  %i.at = fadd double %i.ar, %i.as
  %i.au = fadd double %i.aj, %i.aq                ; 2 uses
  %i.av = fadd double %i.ah, %i.au                ; 3 uses
  %i.aw = fsub double %i.ah, %i.av
  %i.ax = fadd double %i.au, %i.aw
  %i.ay = fadd double %i.at, %i.ax                ; 2 uses
  %i.az = fadd double %i.av, %i.ay                ; 2 uses
  %i.ba = fsub double %i.av, %i.az
  %i.bb = fadd double %i.ay, %i.ba
  %.fca.0.insert.i6.i = insertvalue { double, double } poison, double %i.az, 0
  %.fca.1.insert.i7.i = insertvalue { double, double } %.fca.0.insert.i6.i, double %i.bb, 1
  ret { double, double } %.fca.1.insert.i7.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { double, double } @_ZN4geos4math2DD3powERKS1_i(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.018.0.copyload = load double, ptr %0, align 8, !tbaa !11 ; 2 uses
  %.sroa.821.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.821.0.copyload = load double, ptr %.sroa.821.0..sroa_idx, align 8, !tbaa !11 ; 2 uses
  %i.b = tail call i32 @llvm.abs.i32(i32 %1, i1 true) ; 2 uses
  %i.c = icmp samesign ugt i32 %i.b, 1
  br i1 %i.c, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.b, %bb.e
  %.029 = phi i32 [ %i.t, %bb.e ], [ %i.b, %bb.b ] ; 2 uses
  %.sroa.0.028 = phi double [ %.sroa.0.1, %bb.e ], [ 1.000000e+00, %bb.b ] ; 6 uses
  %.sroa.8.027 = phi double [ %.sroa.8.1, %bb.e ], [ 0.000000e+00, %bb.b ] ; 2 uses
  %.sroa.018.026 = phi double [ %i.aj, %bb.e ], [ %.sroa.018.0.copyload, %bb.b ] ; 11 uses
  %.sroa.821.025 = phi double [ %i.al, %bb.e ], [ %.sroa.821.0.copyload, %bb.b ] ; 2 uses
  %i.d = and i32 %.029, 1
  %.not9 = icmp eq i32 %i.d, 0
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.preheader
  %2 = fmul double %.sroa.0.028, f0x41A0000002000000 ; 2 uses
  %3 = fsub double %2, %.sroa.0.028
  %4 = fmul double %.sroa.018.026, f0x41A0000002000000 ; 2 uses
  %5 = fsub double %2, %3                         ; 3 uses
  %6 = fsub double %.sroa.0.028, %5               ; 2 uses
  %7 = fsub double %4, %.sroa.018.026
  %8 = fmul double %.sroa.018.026, %.sroa.0.028   ; 3 uses
  %9 = fsub double %4, %7                         ; 3 uses
  %10 = fsub double %.sroa.018.026, %9            ; 2 uses
  %i.e = fmul double %9, %5
  %i.f = fsub double %i.e, %8
  %i.g = fmul double %10, %5
  %i.h = fadd double %i.g, %i.f
  %i.i = fmul double %9, %6
  %i.j = fadd double %i.i, %i.h
  %i.k = fmul double %10, %6
  %i.l = fadd double %i.k, %i.j
  %i.m = fmul double %.sroa.821.025, %.sroa.0.028
  %i.n = fmul double %.sroa.018.026, %.sroa.8.027
  %i.o = fadd double %i.n, %i.m
  %i.p = fadd double %i.o, %i.l                   ; 2 uses
  %i.q = fadd double %8, %i.p                     ; 2 uses
  %i.r = fsub double %8, %i.q
  %i.s = fadd double %i.p, %i.r
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.preheader
  %.sroa.8.1 = phi double [ %.sroa.8.027, %.preheader ], [ %i.s, %bb.c ] ; 2 uses
  %.sroa.0.1 = phi double [ %.sroa.0.028, %.preheader ], [ %i.q, %bb.c ] ; 2 uses
  %i.t = lshr i32 %.029, 1                        ; 2 uses
  %.not10 = icmp eq i32 %i.t, 0
  br i1 %.not10, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = fmul double %.sroa.018.026, f0x41A0000002000000 ; 2 uses
  %i.v = fsub double %i.u, %.sroa.018.026
  %i.w = fsub double %i.u, %i.v                   ; 4 uses
  %i.x = fsub double %.sroa.018.026, %i.w         ; 3 uses
  %i.y = fmul double %.sroa.018.026, %.sroa.018.026 ; 3 uses
  %i.z = fmul double %i.w, %i.w
  %i.aa = fsub double %i.z, %i.y
  %i.ab = fmul double %i.w, %i.x                  ; 2 uses
  %i.ac = fadd double %i.ab, %i.aa
  %i.ad = fadd double %i.ab, %i.ac
  %i.ae = fmul double %i.x, %i.x
  %i.af = fadd double %i.ae, %i.ad
  %i.ag = fmul double %.sroa.821.025, %.sroa.018.026 ; 2 uses
  %i.ah = fadd double %i.ag, %i.ag
  %i.ai = fadd double %i.ah, %i.af                ; 2 uses
  %i.aj = fadd double %i.y, %i.ai                 ; 2 uses
  %i.ak = fsub double %i.y, %i.aj
  %i.al = fadd double %i.ai, %i.ak
  br label %.preheader, !llvm.loop !12

.loopexit:                                        ; preds = %bb.d, %bb.b
  %.sroa.8.2 = phi double [ %.sroa.821.0.copyload, %bb.b ], [ %.sroa.8.1, %bb.d ] ; 2 uses
  %.sroa.0.2 = phi double [ %.sroa.018.0.copyload, %bb.b ], [ %.sroa.0.1, %bb.d ] ; 7 uses
  %i.am = icmp slt i32 %1, 0
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.loopexit
  %i.an = fdiv double 1.000000e+00, %.sroa.0.2    ; 7 uses
  %i.ao = fmul double %i.an, f0x41A0000002000000  ; 2 uses
  %i.ap = fsub double %i.ao, %i.an
  %i.aq = fmul double %.sroa.0.2, f0x41A0000002000000 ; 2 uses
  %i.ar = fsub double %i.ao, %i.ap                ; 3 uses
  %i.as = fsub double %i.an, %i.ar                ; 2 uses
  %i.at = fsub double %i.aq, %.sroa.0.2
  %i.au = fmul double %.sroa.0.2, %i.an           ; 2 uses
  %i.av = fsub double %i.aq, %i.at                ; 3 uses
  %i.aw = fsub double %.sroa.0.2, %i.av           ; 2 uses
  %i.ax = fmul double %i.av, %i.ar
  %i.ay = fsub double %i.ax, %i.au
  %i.az = fmul double %i.ar, %i.aw
  %i.ba = fadd double %i.az, %i.ay
  %i.bb = fmul double %i.av, %i.as
  %i.bc = fadd double %i.bb, %i.ba
  %i.bd = fmul double %i.aw, %i.as
  %i.be = fadd double %i.bd, %i.bc
  %i.bf = fsub double 1.000000e+00, %i.au
  %i.bg = fsub double %i.bf, %i.be
  %i.bh = fmul double %.sroa.8.2, %i.an
  %i.bi = fsub double %i.bg, %i.bh
  %i.bj = fdiv double %i.bi, %.sroa.0.2           ; 2 uses
  %i.bk = fadd double %i.an, %i.bj                ; 2 uses
  %i.bl = fsub double %i.an, %i.bk
  %i.bm = fadd double %i.bj, %i.bl
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.loopexit, %bb.a
  %.sroa.4.1 = phi double [ 0.000000e+00, %bb.a ], [ %i.bm, %bb.f ], [ %.sroa.8.2, %.loopexit ]
  %.sroa.024.1 = phi double [ 1.000000e+00, %bb.a ], [ %i.bk, %bb.f ], [ %.sroa.0.2, %.loopexit ]
  %.fca.0.insert = insertvalue { double, double } poison, double %.sroa.024.1, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.sroa.4.1, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

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
!8 = !{!"_ZTSN4geos4math2DDE", !9, i64 0, !9, i64 8}
!9 = !{!"double", !5, i64 0}
!10 = !{!8, !9, i64 8}
!11 = !{!9, !9, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
end_hunk_0
