Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/horner?download=true
inline.NumInlined: 45
inline.NumDeleted: 19
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZL25complex_horner_inverse_4dR8PJ_COORDP8PJconsts:bb.a
  %i.l = getelementptr i8, ptr %i.b, i64 16
  %.val.i = load double, ptr %i.l, align 8, !tbaa !62 ; 2 uses
  %i.m = tail call double @llvm.fabs.f64(double %i.j)
  %i.n = fcmp ogt double %i.m, %.val.i
  %i.o = tail call double @llvm.fabs.f64(double %i.i)
  %i.p = fcmp ogt double %i.o, %.val.i
  %or.cond.i.i = or i1 %i.n, %i.p
  br i1 %or.cond.i.i, label %bb.b, label %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i

bb.b:                                             ; preds = %bb.a
  %i.q = tail call i32 @proj_errno_set(ptr noundef nonnull %1, i32 noundef 2050) ; 0 uses
  br label %_ZL20complex_default_implP8PJconstsPKN12_GLOBAL__N_16hornerE12PJ_DIRECTION5PJ_UV.exit

_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i: ; preds = %bb.a
  %.in.i = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.r = load ptr, ptr %.in.i, align 8, !tbaa !67 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !45
  %i.u = shl i32 %i.t, 1
  %i.v = add i32 %i.u, 2                          ; 2 uses
  %i.w = zext i32 %i.v to i64
  %.idx.i.i = shl nuw nsw i64 %i.w, 3
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i.i
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -16 ; 2 uses
  %i.z = load <2 x double>, ptr %i.y, align 8, !tbaa !66 ; 2 uses
  %i.aa = icmp ugt i32 %i.v, 2
  br i1 %i.aa, label %.lr.ph.i.i.preheader, label %_ZL20complex_default_implP8PJconstsPKN12_GLOBAL__N_16hornerE12PJ_DIRECTION5PJ_UV.exit

.lr.ph.i.i.preheader:                             ; preds = %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i
  %i.ab = shufflevector <2 x double> %i.k, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ac = shufflevector <2 x double> %i.k, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.02425.i.i = phi ptr [ %i.ae, %.lr.ph.i.i ], [ %i.y, %.lr.ph.i.i.preheader ]
  %i.ad = phi <2 x double> [ %i.ak, %.lr.ph.i.i ], [ %i.z, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.ae = getelementptr inbounds i8, ptr %.02425.i.i, i64 -16 ; 3 uses
  %i.af = fneg <2 x double> %i.ad
  %i.ag = shufflevector <2 x double> %i.af, <2 x double> %i.ad, <2 x i32> <i32 1, i32 2>
  %i.ah = fmul <2 x double> %i.ab, %i.ag
  %i.ai = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ac, <2 x double> %i.ad, <2 x double> %i.ah)
  %i.aj = load <2 x double>, ptr %i.ae, align 8, !tbaa !66
  %i.ak = fadd <2 x double> %i.ai, %i.aj          ; 2 uses
  %i.al = icmp ugt ptr %i.ae, %i.r
  br i1 %i.al, label %.lr.ph.i.i, label %_ZL20complex_default_implP8PJconstsPKN12_GLOBAL__N_16hornerE12PJ_DIRECTION5PJ_UV.exit, !llvm.loop !68

_ZL20complex_default_implP8PJconstsPKN12_GLOBAL__N_16hornerE12PJ_DIRECTION5PJ_UV.exit: ; preds = %.lr.ph.i.i, %bb.b, %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i
  %i.am = phi <2 x double> [ splat (double +inf), %bb.b ], [ %i.z, %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i ], [ %i.ak, %.lr.ph.i.i ]
  %i.an = shufflevector <2 x double> %i.am, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.an, ptr %0, align 8, !tbaa !66
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL35complex_horner_iterative_inverse_4dR8PJ_COORDP8PJconsts(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 6 uses
  %.sroa.0.0.copyload = load double, ptr %0, align 8, !tbaa !66 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload = load double, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !66 ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %.val.i = load double, ptr %i.c, align 8, !tbaa !62 ; 2 uses
  %i.d = tail call double @llvm.fabs.f64(double %.sroa.2.0.copyload)
  %i.e = fcmp ogt double %i.d, %.val.i
  %i.f = tail call double @llvm.fabs.f64(double %.sroa.0.0.copyload)
  %i.g = fcmp ogt double %i.f, %.val.i
  %or.cond.i.i = or i1 %i.e, %i.g
  br i1 %or.cond.i.i, label %bb.b, label %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i32 @proj_errno_set(ptr noundef nonnull %1, i32 noundef 2050) ; 0 uses
  br label %_ZL30complex_iterative_inverse_implP8PJconstsPKN12_GLOBAL__N_16hornerE5PJ_UV.exit

_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.j = load double, ptr %i.i, align 8, !tbaa !63 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !48   ; 2 uses
  %i.m = load double, ptr %i.l, align 8, !tbaa !66
  %i.n = fsub double %.sroa.2.0.copyload, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.p = load double, ptr %i.o, align 8, !tbaa !66
  %i.q = fsub double %.sroa.0.0.copyload, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_ZL19complex_horner_evaljPKd5PJ_UVj.exit.i, %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i
  %i.s = phi i32 [ 31, %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i ], [ %i.az, %_ZL19complex_horner_evaljPKd5PJ_UVj.exit.i ] ; 2 uses
  %.sroa.038.049.i = phi double [ 0.000000e+00, %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i ], [ %i.aq, %_ZL19complex_horner_evaljPKd5PJ_UVj.exit.i ] ; 2 uses
  %.sroa.7.048.i = phi double [ 0.000000e+00, %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i ], [ %i.ar, %_ZL19complex_horner_evaljPKd5PJ_UVj.exit.i ] ; 2 uses
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !48   ; 2 uses
  %i.u = load i32, ptr %i.r, align 8, !tbaa !45
  %i.v = shl i32 %i.u, 1
  %i.w = add i32 %i.v, 2                          ; 2 uses
  %i.x = zext i32 %i.w to i64
  %.idx.i.i = shl nuw nsw i64 %i.x, 3
  %.add.i = add nsw i64 %.idx.i.i, -16            ; 2 uses
  %.ptr46.i = getelementptr inbounds i8, ptr %i.t, i64 %.add.i
  %i.y = load <2 x double>, ptr %.ptr46.i, align 8, !tbaa !66 ; 2 uses
  %i.z = icmp ugt i32 %i.w, 4
  br i1 %i.z, label %.lr.ph.i.i.preheader, label %_ZL19complex_horner_evaljPKd5PJ_UVj.exit.i

.lr.ph.i.i.preheader:                             ; preds = %bb.c
  %i.aa = insertelement <2 x double> poison, double %.sroa.7.048.i, i64 0
  %i.ab = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ac = insertelement <2 x double> poison, double %.sroa.038.049.i, i64 0
  %i.ad = shufflevector <2 x double> %i.ac, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.02425.i.idx.i = phi i64 [ %.02425.i.add.i, %.lr.ph.i.i ], [ %.add.i, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.ae = phi <2 x double> [ %i.ak, %.lr.ph.i.i ], [ %i.y, %.lr.ph.i.i.preheader ] ; 3 uses
  %.02425.i.add.i = add nsw i64 %.02425.i.idx.i, -16 ; 2 uses
  %.ptr.i = getelementptr inbounds i8, ptr %i.t, i64 %.02425.i.add.i
  %i.af = fneg <2 x double> %i.ae
  %i.ag = shufflevector <2 x double> %i.af, <2 x double> %i.ae, <2 x i32> <i32 1, i32 2>
  %i.ah = fmul <2 x double> %i.ab, %i.ag
  %i.ai = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ad, <2 x double> %i.ae, <2 x double> %i.ah)
  %i.aj = load <2 x double>, ptr %.ptr.i, align 8, !tbaa !66
  %i.ak = fadd <2 x double> %i.ai, %i.aj          ; 2 uses
  %i.al = icmp sgt i64 %.02425.i.idx.i, 32
  br i1 %i.al, label %.lr.ph.i.i, label %_ZL19complex_horner_evaljPKd5PJ_UVj.exit.i, !llvm.loop !68

_ZL19complex_horner_evaljPKd5PJ_UVj.exit.i:       ; preds = %.lr.ph.i.i, %bb.c
  %i.am = phi <2 x double> [ %i.y, %bb.c ], [ %i.ak, %.lr.ph.i.i ] ; 2 uses
  %i.an = extractelement <2 x double> %i.am, i64 0
  %i.ao = extractelement <2 x double> %i.am, i64 1
  %i.ap = tail call noundef { double, double } @__divdc3(double noundef %i.n, double noundef %i.q, double noundef %i.an, double noundef %i.ao) #10 ; 2 uses
  %i.aq = extractvalue { double, double } %i.ap, 0 ; 3 uses
  %i.ar = extractvalue { double, double } %i.ap, 1 ; 3 uses
  %i.as = fsub double %i.aq, %.sroa.038.049.i
  %i.at = tail call double @llvm.fabs.f64(double %i.as)
  %i.au = fcmp olt double %i.at, %i.j
  %i.av = fsub double %i.ar, %.sroa.7.048.i
  %i.aw = tail call double @llvm.fabs.f64(double %i.av)
  %i.ax = fcmp olt double %i.aw, %i.j
  %i.ay = and i1 %i.au, %i.ax                     ; 2 uses
  %i.az = add nsw i32 %i.s, -1
  %i.ba = icmp eq i32 %i.s, 0
  %.not35.i = select i1 %i.ba, i1 true, i1 %i.ay
  br i1 %.not35.i, label %bb.d, label %bb.c, !llvm.loop !70

bb.d:                                             ; preds = %_ZL19complex_horner_evaljPKd5PJ_UVj.exit.i
  br i1 %i.ay, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bb = tail call i32 @proj_errno_set(ptr noundef %1, i32 noundef 2048) ; 0 uses
  br label %_ZL30complex_iterative_inverse_implP8PJconstsPKN12_GLOBAL__N_16hornerE5PJ_UV.exit

bb.f:                                             ; preds = %bb.d
  %i.bc = insertelement <2 x double> poison, double %i.ar, i64 0
  %i.bd = insertelement <2 x double> %i.bc, double %i.aq, i64 1 ; 2 uses
  %i.be = fneg <2 x double> %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !54
  %i.bh = load <2 x i32>, ptr %i.b, align 8, !tbaa !65
  %i.bi = icmp eq <2 x i32> %i.bh, zeroinitializer
  %i.bj = select <2 x i1> %i.bi, <2 x double> %i.bd, <2 x double> %i.be
  %i.bk = load <2 x double>, ptr %i.bg, align 8, !tbaa !66
  %i.bl = fadd <2 x double> %i.bj, %i.bk
  br label %_ZL30complex_iterative_inverse_implP8PJconstsPKN12_GLOBAL__N_16hornerE5PJ_UV.exit

_ZL30complex_iterative_inverse_implP8PJconstsPKN12_GLOBAL__N_16hornerE5PJ_UV.exit: ; preds = %bb.b, %bb.e, %bb.f
  %i.bm = phi <2 x double> [ splat (double +inf), %bb.b ], [ %i.bl, %bb.f ], [ splat (double +inf), %bb.e ]
  store <2 x double> %i.bm, ptr %0, align 8, !tbaa !66
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL17horner_forward_4dR8PJ_COORDP8PJconsts(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 5 uses
  %.pn.in.in.i = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %.pn.in.i = load ptr, ptr %.pn.in.in.i, align 8, !tbaa !64
  %i.c = load <2 x double>, ptr %0, align 8, !tbaa !66
  %i.d = load <2 x double>, ptr %.pn.in.i, align 8, !tbaa !66
  %i.e = fsub <2 x double> %i.c, %i.d             ; 4 uses
  %i.f = getelementptr i8, ptr %i.b, i64 16
  %.val.i = load double, ptr %i.f, align 8, !tbaa !62 ; 2 uses
  %i.g = extractelement <2 x double> %i.e, i64 1
  %i.h = tail call double @llvm.fabs.f64(double %i.g)
  %i.i = fcmp ogt double %i.h, %.val.i
  %i.j = extractelement <2 x double> %i.e, i64 0
  %i.k = tail call double @llvm.fabs.f64(double %i.j)
  %i.l = fcmp ogt double %i.k, %.val.i
  %or.cond.i.i = or i1 %i.i, %i.l
  br i1 %or.cond.i.i, label %bb.b, label %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i

bb.b:                                             ; preds = %bb.a
  %i.m = tail call i32 @proj_errno_set(ptr noundef nonnull %1, i32 noundef 2050) ; 0 uses
  br label %_ZL17real_default_implP8PJconstsPKN12_GLOBAL__N_16hornerE12PJ_DIRECTION5PJ_UV.exit

_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i: ; preds = %bb.a
  %.in.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.n = load ptr, ptr %.in.i, align 8, !tbaa !67
  %.in29.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.o = load ptr, ptr %.in29.i, align 8, !tbaa !67
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !45   ; 5 uses
  %i.r = add i32 %i.q, 1
  %i.s = add i32 %i.q, 2
  %i.t = mul i32 %i.r, %i.s
  %i.u = lshr i32 %i.t, 1
  %i.v = zext nneg i32 %i.u to i64                ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.v ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -8
  %i.z = load double, ptr %i.y, align 8, !tbaa !66
  %i.aa = getelementptr inbounds i8, ptr %i.w, i64 -8
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !66
  %.not.i = icmp eq i32 %i.q, 0
  %i.ac = insertelement <2 x double> poison, double %i.z, i64 0
  %i.ad = insertelement <2 x double> %i.ac, double %i.ab, i64 1 ; 2 uses
  br i1 %.not.i, label %_ZL17real_default_implP8PJconstsPKN12_GLOBAL__N_16hornerE12PJ_DIRECTION5PJ_UV.exit, label %.lr.ph55.i.i.preheader

.lr.ph55.i.i.preheader:                           ; preds = %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i
  %i.ae = shufflevector <2 x double> %i.e, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  br label %.lr.ph55.i.i

.lr.ph55.i.i:                                     ; preds = %.lr.ph55.i.i.preheader, %._crit_edge.i.i
  %.03453.i.i = phi i32 [ %i.an, %._crit_edge.i.i ], [ %i.q, %.lr.ph55.i.i.preheader ] ; 2 uses
  %.03750.i.i = phi ptr [ %.142.i.i, %._crit_edge.i.i ], [ %i.w, %.lr.ph55.i.i.preheader ]
  %.03849.i.i = phi ptr [ %.13941.i.i, %._crit_edge.i.i ], [ %i.x, %.lr.ph55.i.i.preheader ]
  %i.af = phi <2 x double> [ %i.am, %._crit_edge.i.i ], [ %i.ad, %.lr.ph55.i.i.preheader ]
  %i.ag = getelementptr inbounds i8, ptr %.03849.i.i, i64 -16 ; 2 uses
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !66
  %i.ai = getelementptr inbounds i8, ptr %.03750.i.i, i64 -16 ; 2 uses
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !66
  %i.ak = insertelement <2 x double> poison, double %i.ah, i64 0
  %i.al = insertelement <2 x double> %i.ak, double %i.aj, i64 1
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.am = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.e, <2 x double> %i.af, <2 x double> %i.av) ; 2 uses
  %i.an = add i32 %.03453.i.i, -1                 ; 2 uses
  %.not30.i = icmp eq i32 %i.an, 0
  br i1 %.not30.i, label %_ZL17real_default_implP8PJconstsPKN12_GLOBAL__N_16hornerE12PJ_DIRECTION5PJ_UV.exit, label %.lr.ph55.i.i, !llvm.loop !71

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph55.i.i
  %.045.i.i = phi i32 [ %i.aw, %.lr.ph.i.i ], [ %i.q, %.lr.ph55.i.i ]
  %.142.i.i = phi ptr [ %i.ar, %.lr.ph.i.i ], [ %i.ai, %.lr.ph55.i.i ] ; 2 uses
  %.13941.i.i = phi ptr [ %i.ap, %.lr.ph.i.i ], [ %i.ag, %.lr.ph55.i.i ] ; 2 uses
  %i.ao = phi <2 x double> [ %i.av, %.lr.ph.i.i ], [ %i.al, %.lr.ph55.i.i ]
  %i.ap = getelementptr inbounds i8, ptr %.13941.i.i, i64 -8 ; 2 uses
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !66
  %i.ar = getelementptr inbounds i8, ptr %.142.i.i, i64 -8 ; 2 uses
  %i.as = load double, ptr %i.ar, align 8, !tbaa !66
  %i.at = insertelement <2 x double> poison, double %i.aq, i64 0
  %i.au = insertelement <2 x double> %i.at, double %i.as, i64 1
  %i.av = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ae, <2 x double> %i.ao, <2 x double> %i.au) ; 2 uses
  %i.aw = add i32 %.045.i.i, -1                   ; 2 uses
  %.not.i.i = icmp ult i32 %i.aw, %.03453.i.i
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !72

_ZL17real_default_implP8PJconstsPKN12_GLOBAL__N_16hornerE12PJ_DIRECTION5PJ_UV.exit: ; preds = %._crit_edge.i.i, %bb.b, %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i
  %i.ax = phi <2 x double> [ splat (double +inf), %bb.b ], [ %i.ad, %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i ], [ %i.am, %._crit_edge.i.i ]
  %i.ay = shufflevector <2 x double> %i.ax, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.ay, ptr %0, align 8, !tbaa !66
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL17horner_inverse_4dR8PJ_COORDP8PJconsts(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 5 uses
  %.pn.in.in.i = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %.pn.in.i = load ptr, ptr %.pn.in.in.i, align 8, !tbaa !64
  %i.c = load <2 x double>, ptr %0, align 8, !tbaa !66
  %i.d = load <2 x double>, ptr %.pn.in.i, align 8, !tbaa !66
  %i.e = fsub <2 x double> %i.c, %i.d             ; 4 uses
  %i.f = getelementptr i8, ptr %i.b, i64 16
  %.val.i = load double, ptr %i.f, align 8, !tbaa !62 ; 2 uses
  %i.g = extractelement <2 x double> %i.e, i64 1
  %i.h = tail call double @llvm.fabs.f64(double %i.g)
  %i.i = fcmp ogt double %i.h, %.val.i
  %i.j = extractelement <2 x double> %i.e, i64 0
  %i.k = tail call double @llvm.fabs.f64(double %i.j)
  %i.l = fcmp ogt double %i.k, %.val.i
  %or.cond.i.i = or i1 %i.i, %i.l
  br i1 %or.cond.i.i, label %bb.b, label %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i

bb.b:                                             ; preds = %bb.a
  %i.m = tail call i32 @proj_errno_set(ptr noundef nonnull %1, i32 noundef 2050) ; 0 uses
  br label %_ZL17real_default_implP8PJconstsPKN12_GLOBAL__N_16hornerE12PJ_DIRECTION5PJ_UV.exit

_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i: ; preds = %bb.a
  %.in.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.n = load ptr, ptr %.in.i, align 8, !tbaa !67
  %.in29.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.o = load ptr, ptr %.in29.i, align 8, !tbaa !67
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !45   ; 5 uses
  %i.r = add i32 %i.q, 1
  %i.s = add i32 %i.q, 2
  %i.t = mul i32 %i.r, %i.s
  %i.u = lshr i32 %i.t, 1
  %i.v = zext nneg i32 %i.u to i64                ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.v ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -8
  %i.z = load double, ptr %i.y, align 8, !tbaa !66
  %i.aa = getelementptr inbounds i8, ptr %i.w, i64 -8
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !66
  %.not.i = icmp eq i32 %i.q, 0
  %i.ac = insertelement <2 x double> poison, double %i.z, i64 0
  %i.ad = insertelement <2 x double> %i.ac, double %i.ab, i64 1 ; 2 uses
  br i1 %.not.i, label %_ZL17real_default_implP8PJconstsPKN12_GLOBAL__N_16hornerE12PJ_DIRECTION5PJ_UV.exit, label %.lr.ph55.i.i.preheader

.lr.ph55.i.i.preheader:                           ; preds = %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i
  %i.ae = shufflevector <2 x double> %i.e, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  br label %.lr.ph55.i.i

.lr.ph55.i.i:                                     ; preds = %.lr.ph55.i.i.preheader, %._crit_edge.i.i
  %.03453.i.i = phi i32 [ %i.an, %._crit_edge.i.i ], [ %i.q, %.lr.ph55.i.i.preheader ] ; 2 uses
  %.03750.i.i = phi ptr [ %.142.i.i, %._crit_edge.i.i ], [ %i.w, %.lr.ph55.i.i.preheader ]
  %.03849.i.i = phi ptr [ %.13941.i.i, %._crit_edge.i.i ], [ %i.x, %.lr.ph55.i.i.preheader ]
  %i.af = phi <2 x double> [ %i.am, %._crit_edge.i.i ], [ %i.ad, %.lr.ph55.i.i.preheader ]
  %i.ag = getelementptr inbounds i8, ptr %.03849.i.i, i64 -16 ; 2 uses
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !66
  %i.ai = getelementptr inbounds i8, ptr %.03750.i.i, i64 -16 ; 2 uses
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !66
  %i.ak = insertelement <2 x double> poison, double %i.ah, i64 0
  %i.al = insertelement <2 x double> %i.ak, double %i.aj, i64 1
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.am = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.e, <2 x double> %i.af, <2 x double> %i.av) ; 2 uses
  %i.an = add i32 %.03453.i.i, -1                 ; 2 uses
  %.not30.i = icmp eq i32 %i.an, 0
  br i1 %.not30.i, label %_ZL17real_default_implP8PJconstsPKN12_GLOBAL__N_16hornerE12PJ_DIRECTION5PJ_UV.exit, label %.lr.ph55.i.i, !llvm.loop !71

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph55.i.i
  %.045.i.i = phi i32 [ %i.aw, %.lr.ph.i.i ], [ %i.q, %.lr.ph55.i.i ]
  %.142.i.i = phi ptr [ %i.ar, %.lr.ph.i.i ], [ %i.ai, %.lr.ph55.i.i ] ; 2 uses
  %.13941.i.i = phi ptr [ %i.ap, %.lr.ph.i.i ], [ %i.ag, %.lr.ph55.i.i ] ; 2 uses
  %i.ao = phi <2 x double> [ %i.av, %.lr.ph.i.i ], [ %i.al, %.lr.ph55.i.i ]
  %i.ap = getelementptr inbounds i8, ptr %.13941.i.i, i64 -8 ; 2 uses
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !66
  %i.ar = getelementptr inbounds i8, ptr %.142.i.i, i64 -8 ; 2 uses
  %i.as = load double, ptr %i.ar, align 8, !tbaa !66
  %i.at = insertelement <2 x double> poison, double %i.aq, i64 0
  %i.au = insertelement <2 x double> %i.at, double %i.as, i64 1
  %i.av = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ae, <2 x double> %i.ao, <2 x double> %i.au) ; 2 uses
  %i.aw = add i32 %.045.i.i, -1                   ; 2 uses
  %.not.i.i = icmp ult i32 %i.aw, %.03453.i.i
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !72

_ZL17real_default_implP8PJconstsPKN12_GLOBAL__N_16hornerE12PJ_DIRECTION5PJ_UV.exit: ; preds = %._crit_edge.i.i, %bb.b, %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i
  %i.ax = phi <2 x double> [ splat (double +inf), %bb.b ], [ %i.ad, %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i ], [ %i.am, %._crit_edge.i.i ]
  %i.ay = shufflevector <2 x double> %i.ax, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.ay, ptr %0, align 8, !tbaa !66
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL27horner_iterative_inverse_4dR8PJ_COORDP8PJconsts(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 6 uses
  %i.c = load <2 x double>, ptr %0, align 8, !tbaa !66 ; 3 uses
  %i.d = getelementptr i8, ptr %i.b, i64 16
  %.val.i = load double, ptr %i.d, align 8, !tbaa !62 ; 2 uses
  %i.e = extractelement <2 x double> %i.c, i64 1
  %i.f = tail call double @llvm.fabs.f64(double %i.e)
  %i.g = fcmp ogt double %i.f, %.val.i
  %i.h = extractelement <2 x double> %i.c, i64 0
  %i.i = tail call double @llvm.fabs.f64(double %i.h)
  %i.j = fcmp ogt double %i.i, %.val.i
  %or.cond.i.i = or i1 %i.g, %i.j
  br i1 %or.cond.i.i, label %bb.b, label %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i

bb.b:                                             ; preds = %bb.a
  %i.k = tail call i32 @proj_errno_set(ptr noundef nonnull %1, i32 noundef 2050) ; 0 uses
  br label %_ZL27real_iterative_inverse_implP8PJconstsPKN12_GLOBAL__N_16hornerE5PJ_UV.exit

_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !45   ; 12 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.o = load double, ptr %i.n, align 8, !tbaa !63 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !50   ; 3 uses
  %i.r = load double, ptr %i.q, align 8, !tbaa !66
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !51   ; 3 uses
  %i.u = load double, ptr %i.t, align 8, !tbaa !66
  %i.v = insertelement <2 x double> poison, double %i.r, i64 0
  %i.w = insertelement <2 x double> %i.v, double %i.u, i64 1
  %i.x = fsub <2 x double> %i.c, %i.w             ; 3 uses
  %i.y = add i32 %i.m, 1                          ; 2 uses
  %i.z = add i32 %i.m, 2
  %i.aa = mul i32 %i.y, %i.z
  %i.ab = lshr i32 %i.aa, 1
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ac
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.ac
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -8 ; 2 uses
  %i.ag = load double, ptr %i.af, align 8, !tbaa !66 ; 3 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ad, i64 -8 ; 2 uses
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !66 ; 3 uses
  %i.aj = icmp ugt i32 %i.m, 1
  %i.ak = zext i32 %i.y to i64                    ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ak
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -8 ; 3 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.ak
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -8 ; 3 uses
  %i.ap = fneg <2 x double> %i.x
  %i.aq = shufflevector <2 x double> %i.ap, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ar = load double, ptr %i.am, align 8, !tbaa !66 ; 4 uses
  %i.as = load double, ptr %i.ao, align 8, !tbaa !66 ; 4 uses
  br i1 %i.aj, label %.lr.ph55.i.preheader.us.i.preheader, label %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.split.i

.lr.ph55.i.preheader.us.i.preheader:              ; preds = %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i
  %i.at = add i32 %i.m, -1                        ; 2 uses
  %i.au = add i32 %i.m, -2                        ; 2 uses
  %i.av = insertelement <2 x double> poison, double %i.ai, i64 0
  %i.aw = insertelement <2 x double> %i.av, double %i.ag, i64 1
  %xtraiter = and i32 %i.at, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %i.ax = icmp ult i32 %i.au, 3
  %xtraiter63 = and i32 %i.at, 3                  ; 2 uses
  %lcmp.mod64.not = icmp eq i32 %xtraiter63, 0
  %i.ay = icmp ult i32 %i.au, 3
  %i.az = insertelement <2 x double> poison, double %i.o, i64 0
  %i.ba = shufflevector <2 x double> %i.az, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph55.i.preheader.us.i

.lr.ph55.i.preheader.us.i:                        ; preds = %.lr.ph55.i.preheader.us.i.preheader, %_ZL23single_real_horner_evaljPKddj.exit72.loopexit.us.i
  %i.bb = phi i32 [ %i.el, %_ZL23single_real_horner_evaljPKddj.exit72.loopexit.us.i ], [ 31, %.lr.ph55.i.preheader.us.i.preheader ] ; 2 uses
  %i.bc = phi <2 x double> [ %i.ee, %_ZL23single_real_horner_evaljPKddj.exit72.loopexit.us.i ], [ zeroinitializer, %.lr.ph55.i.preheader.us.i.preheader ] ; 13 uses
  %i.bd = shufflevector <2 x double> %i.bc, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  br label %.lr.ph55.i.us.i

.lr.ph55.i.us.i:                                  ; preds = %._crit_edge.i.us.i, %.lr.ph55.i.preheader.us.i
  %.03453.i.us.i = phi i32 [ %i.bw, %._crit_edge.i.us.i ], [ %i.m, %.lr.ph55.i.preheader.us.i ] ; 3 uses
  %.03750.i.us.i = phi ptr [ %.1.lcssa.i.us.i, %._crit_edge.i.us.i ], [ %i.ah, %.lr.ph55.i.preheader.us.i ]
  %.03849.i.us.i = phi ptr [ %.139.lcssa.i.us.i, %._crit_edge.i.us.i ], [ %i.af, %.lr.ph55.i.preheader.us.i ]
  %i.be = phi <2 x double> [ %i.bv, %._crit_edge.i.us.i ], [ %i.aw, %.lr.ph55.i.preheader.us.i ]
  %i.bf = getelementptr inbounds i8, ptr %.03849.i.us.i, i64 -8 ; 3 uses
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !66
  %i.bh = getelementptr inbounds i8, ptr %.03750.i.us.i, i64 -8 ; 3 uses
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !66
  %.not40.i.us.i = icmp ult i32 %i.m, %.03453.i.us.i
  %i.bj = insertelement <2 x double> poison, double %i.bi, i64 0
  %i.bk = insertelement <2 x double> %i.bj, double %i.bg, i64 1 ; 2 uses
  br i1 %.not40.i.us.i, label %._crit_edge.i.us.i, label %.lr.ph.i.us.i

.lr.ph.i.us.i:                                    ; preds = %.lr.ph55.i.us.i, %.lr.ph.i.us.i
  %.045.i.us.i = phi i32 [ %i.bt, %.lr.ph.i.us.i ], [ %i.m, %.lr.ph55.i.us.i ]
  %.142.i.us.i = phi ptr [ %i.bo, %.lr.ph.i.us.i ], [ %i.bh, %.lr.ph55.i.us.i ]
  %.13941.i.us.i = phi ptr [ %i.bm, %.lr.ph.i.us.i ], [ %i.bf, %.lr.ph55.i.us.i ]
  %i.bl = phi <2 x double> [ %i.bs, %.lr.ph.i.us.i ], [ %i.bk, %.lr.ph55.i.us.i ]
  %i.bm = getelementptr inbounds i8, ptr %.13941.i.us.i, i64 -8 ; 3 uses
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !66
  %i.bo = getelementptr inbounds i8, ptr %.142.i.us.i, i64 -8 ; 3 uses
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !66
  %i.bq = insertelement <2 x double> poison, double %i.bp, i64 0
  %i.br = insertelement <2 x double> %i.bq, double %i.bn, i64 1
  %i.bs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bc, <2 x double> %i.bl, <2 x double> %i.br) ; 2 uses
  %i.bt = add i32 %.045.i.us.i, -1                ; 2 uses
  %.not.i.us.i = icmp ult i32 %i.bt, %.03453.i.us.i
  br i1 %.not.i.us.i, label %._crit_edge.i.us.i, label %.lr.ph.i.us.i, !llvm.loop !72

._crit_edge.i.us.i:                               ; preds = %.lr.ph.i.us.i, %.lr.ph55.i.us.i
  %.139.lcssa.i.us.i = phi ptr [ %i.bf, %.lr.ph55.i.us.i ], [ %i.bm, %.lr.ph.i.us.i ]
  %.1.lcssa.i.us.i = phi ptr [ %i.bh, %.lr.ph55.i.us.i ], [ %i.bo, %.lr.ph.i.us.i ]
  %i.bu = phi <2 x double> [ %i.bk, %.lr.ph55.i.us.i ], [ %i.bs, %.lr.ph.i.us.i ]
  %i.bv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bd, <2 x double> %i.be, <2 x double> %i.bu) ; 4 uses
  %i.bw = add i32 %.03453.i.us.i, -1              ; 2 uses
  %i.bx = icmp ugt i32 %i.bw, 1
  br i1 %i.bx, label %.lr.ph55.i.us.i, label %.lr.ph.i65.us.i.preheader, !llvm.loop !71

.lr.ph.i65.us.i.preheader:                        ; preds = %._crit_edge.i.us.i
  br i1 %lcmp.mod.not, label %.lr.ph.i65.us.i.prol.loopexit, label %.lr.ph.i65.us.i.prol.preheader

.lr.ph.i65.us.i.prol.preheader:                   ; preds = %.lr.ph.i65.us.i.preheader
  %i.by = extractelement <2 x double> %i.bc, i64 0
  br label %.lr.ph.i65.us.i.prol

.lr.ph.i65.us.i.prol:                             ; preds = %.lr.ph.i65.us.i.prol, %.lr.ph.i65.us.i.prol.preheader
  %.015.i.us.i.prol = phi i32 [ %i.cc, %.lr.ph.i65.us.i.prol ], [ %i.m, %.lr.ph.i65.us.i.prol.preheader ]
  %.01114.i.us.i.prol = phi double [ %i.cb, %.lr.ph.i65.us.i.prol ], [ %i.ar, %.lr.ph.i65.us.i.prol.preheader ]
  %.01213.i.us.i.prol = phi ptr [ %i.bz, %.lr.ph.i65.us.i.prol ], [ %i.am, %.lr.ph.i65.us.i.prol.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i65.us.i.prol ], [ 0, %.lr.ph.i65.us.i.prol.preheader ]
  %i.bz = getelementptr inbounds i8, ptr %.01213.i.us.i.prol, i64 -8 ; 3 uses
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !66
  %i.cb = tail call double @llvm.fmuladd.f64(double %i.by, double %.01114.i.us.i.prol, double %i.ca) ; 3 uses
  %i.cc = add i32 %.015.i.us.i.prol, -1           ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i65.us.i.prol.loopexit, label %.lr.ph.i65.us.i.prol, !llvm.loop !73

.lr.ph.i65.us.i.prol.loopexit:                    ; preds = %.lr.ph.i65.us.i.prol, %.lr.ph.i65.us.i.preheader
  %.015.i.us.i.unr = phi i32 [ %i.m, %.lr.ph.i65.us.i.preheader ], [ %i.cc, %.lr.ph.i65.us.i.prol ]
  %.01114.i.us.i.unr = phi double [ %i.ar, %.lr.ph.i65.us.i.preheader ], [ %i.cb, %.lr.ph.i65.us.i.prol ]
  %.01213.i.us.i.unr = phi ptr [ %i.am, %.lr.ph.i65.us.i.preheader ], [ %i.bz, %.lr.ph.i65.us.i.prol ]
  %.lcssa59.unr = phi double [ poison, %.lr.ph.i65.us.i.preheader ], [ %i.cb, %.lr.ph.i65.us.i.prol ]
  br i1 %i.ax, label %.lr.ph.i68.us.i.preheader, label %.lr.ph.i65.us.i.preheader.new

.lr.ph.i65.us.i.preheader.new:                    ; preds = %.lr.ph.i65.us.i.prol.loopexit
  %i.cd = extractelement <2 x double> %i.bc, i64 0
  %i.ce = extractelement <2 x double> %i.bc, i64 0
  %i.cf = extractelement <2 x double> %i.bc, i64 0
  %i.cg = extractelement <2 x double> %i.bc, i64 0
  br label %.lr.ph.i65.us.i

.lr.ph.i65.us.i:                                  ; preds = %.lr.ph.i65.us.i, %.lr.ph.i65.us.i.preheader.new
  %.015.i.us.i = phi i32 [ %.015.i.us.i.unr, %.lr.ph.i65.us.i.preheader.new ], [ %i.ct, %.lr.ph.i65.us.i ]
  %.01114.i.us.i = phi double [ %.01114.i.us.i.unr, %.lr.ph.i65.us.i.preheader.new ], [ %i.cs, %.lr.ph.i65.us.i ]
  %.01213.i.us.i = phi ptr [ %.01213.i.us.i.unr, %.lr.ph.i65.us.i.preheader.new ], [ %i.cq, %.lr.ph.i65.us.i ] ; 4 uses
  %i.ch = getelementptr inbounds i8, ptr %.01213.i.us.i, i64 -8
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !66
  %i.cj = tail call double @llvm.fmuladd.f64(double %i.cd, double %.01114.i.us.i, double %i.ci)
  %i.ck = getelementptr inbounds i8, ptr %.01213.i.us.i, i64 -16
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !66
  %i.cm = tail call double @llvm.fmuladd.f64(double %i.ce, double %i.cj, double %i.cl)
  %i.cn = getelementptr inbounds i8, ptr %.01213.i.us.i, i64 -24
  %i.co = load double, ptr %i.cn, align 8, !tbaa !66
  %i.cp = tail call double @llvm.fmuladd.f64(double %i.cf, double %i.cm, double %i.co)
  %i.cq = getelementptr inbounds i8, ptr %.01213.i.us.i, i64 -32 ; 2 uses
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !66
  %i.cs = tail call double @llvm.fmuladd.f64(double %i.cg, double %i.cp, double %i.cr) ; 2 uses
  %i.ct = add i32 %.015.i.us.i, -4                ; 2 uses
  %i.cu = icmp ugt i32 %i.ct, 1
  br i1 %i.cu, label %.lr.ph.i65.us.i, label %.lr.ph.i68.us.i.preheader, !llvm.loop !75

.lr.ph.i68.us.i.preheader:                        ; preds = %.lr.ph.i65.us.i, %.lr.ph.i65.us.i.prol.loopexit
  %.lcssa59 = phi double [ %.lcssa59.unr, %.lr.ph.i65.us.i.prol.loopexit ], [ %i.cs, %.lr.ph.i65.us.i ] ; 2 uses
  br i1 %lcmp.mod64.not, label %.lr.ph.i68.us.i.prol.loopexit, label %.lr.ph.i68.us.i.prol.preheader

.lr.ph.i68.us.i.prol.preheader:                   ; preds = %.lr.ph.i68.us.i.preheader
  %i.cv = extractelement <2 x double> %i.bc, i64 1
  br label %.lr.ph.i68.us.i.prol

.lr.ph.i68.us.i.prol:                             ; preds = %.lr.ph.i68.us.i.prol, %.lr.ph.i68.us.i.prol.preheader
  %.015.i69.us.i.prol = phi i32 [ %i.cz, %.lr.ph.i68.us.i.prol ], [ %i.m, %.lr.ph.i68.us.i.prol.preheader ]
  %.01114.i70.us.i.prol = phi double [ %i.cy, %.lr.ph.i68.us.i.prol ], [ %i.as, %.lr.ph.i68.us.i.prol.preheader ]
  %.01213.i71.us.i.prol = phi ptr [ %i.cw, %.lr.ph.i68.us.i.prol ], [ %i.ao, %.lr.ph.i68.us.i.prol.preheader ]
  %prol.iter65 = phi i32 [ %prol.iter65.next, %.lr.ph.i68.us.i.prol ], [ 0, %.lr.ph.i68.us.i.prol.preheader ]
end_hunk_0
