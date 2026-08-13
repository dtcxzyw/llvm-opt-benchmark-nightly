inline.NumInlined: 45
inline.NumDeleted: 19
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZL13horner_freeupP8PJconstsi:bb.a

.sink.split:                                      ; preds = %bb.b, %bb.c
  %i.u = tail call noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef nonnull %0, i32 noundef %1)
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.u, %.sink.split ]
  ret ptr %.0
}

declare i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare noundef ptr @_Z15pj_param_existsP8ARG_listPKc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal void @_ZL25complex_horner_forward_4dR8PJ_COORDP8PJconsts(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 5 uses
  %.pn.in.in.i = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %.pn.in.i = load ptr, ptr %.pn.in.in.i, align 8, !tbaa !64
  %i.c = load <2 x i32>, ptr %i.b, align 8, !tbaa !65
  %i.d = icmp eq <2 x i32> %i.c, zeroinitializer
  %i.e = load <2 x double>, ptr %0, align 8, !tbaa !66
  %i.f = load <2 x double>, ptr %.pn.in.i, align 8, !tbaa !66
  %i.g = fsub <2 x double> %i.e, %i.f             ; 4 uses
  %i.h = fneg <2 x double> %i.g
  %i.i = extractelement <2 x double> %i.g, i64 0
  %i.j = extractelement <2 x double> %i.g, i64 1
  %i.k = select <2 x i1> %i.d, <2 x double> %i.g, <2 x double> %i.h ; 2 uses
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
  %.in.i = getelementptr inbounds nuw i8, ptr %i.b, i64 72
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
  %.027.i.i = phi ptr [ %i.ae, %.lr.ph.i.i ], [ %i.y, %.lr.ph.i.i.preheader ]
  %i.ad = phi <2 x double> [ %i.ak, %.lr.ph.i.i ], [ %i.z, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.ae = getelementptr inbounds i8, ptr %.027.i.i, i64 -16 ; 3 uses
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
define internal void @_ZL25complex_horner_inverse_4dR8PJ_COORDP8PJconsts(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 5 uses
  %.pn.in.in.i = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %.pn.in.i = load ptr, ptr %.pn.in.in.i, align 8, !tbaa !64
  %i.c = load <2 x i32>, ptr %i.b, align 8, !tbaa !65
  %i.d = icmp eq <2 x i32> %i.c, zeroinitializer
  %i.e = load <2 x double>, ptr %0, align 8, !tbaa !66
  %i.f = load <2 x double>, ptr %.pn.in.i, align 8, !tbaa !66
  %i.g = fsub <2 x double> %i.e, %i.f             ; 4 uses
  %i.h = fneg <2 x double> %i.g
  %i.i = extractelement <2 x double> %i.g, i64 0
  %i.j = extractelement <2 x double> %i.g, i64 1
  %i.k = select <2 x i1> %i.d, <2 x double> %i.g, <2 x double> %i.h ; 2 uses
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
  %.027.i.i = phi ptr [ %i.ae, %.lr.ph.i.i ], [ %i.y, %.lr.ph.i.i.preheader ]
  %i.ad = phi <2 x double> [ %i.ak, %.lr.ph.i.i ], [ %i.z, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.ae = getelementptr inbounds i8, ptr %.027.i.i, i64 -16 ; 3 uses
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
  %i.s = phi i32 [ 31, %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i ], [ %i.ay, %_ZL19complex_horner_evaljPKd5PJ_UVj.exit.i ] ; 2 uses
  %.sroa.7.049.i = phi double [ 0.000000e+00, %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i ], [ %i.aq, %_ZL19complex_horner_evaljPKd5PJ_UVj.exit.i ] ; 2 uses
  %.sroa.038.048.i = phi double [ 0.000000e+00, %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i ], [ %i.ap, %_ZL19complex_horner_evaljPKd5PJ_UVj.exit.i ] ; 2 uses
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !48   ; 2 uses
  %i.u = load i32, ptr %i.r, align 8, !tbaa !45
  %i.v = shl i32 %i.u, 1
  %i.w = add i32 %i.v, 2                          ; 2 uses
  %i.x = zext i32 %i.w to i64
  %.idx.i.i = shl nuw nsw i64 %i.x, 3             ; 2 uses
  %.ptr45.i = getelementptr i8, ptr %i.t, i64 %.idx.i.i
  %.ptr46.i = getelementptr i8, ptr %.ptr45.i, i64 -16
  %i.y = load <2 x double>, ptr %.ptr46.i, align 8, !tbaa !66 ; 2 uses
  %i.z = icmp ugt i32 %i.w, 4
  br i1 %i.z, label %.lr.ph.i.i.preheader, label %_ZL19complex_horner_evaljPKd5PJ_UVj.exit.i

.lr.ph.i.i.preheader:                             ; preds = %bb.c
  %i.aa = insertelement <2 x double> poison, double %.sroa.7.049.i, i64 0
  %i.ab = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ac = insertelement <2 x double> poison, double %.sroa.038.048.i, i64 0
  %i.ad = shufflevector <2 x double> %i.ac, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.027.i.idx.i.a = phi i64 [ %.027.i.add.i, %.lr.ph.i.i ], [ %.idx.i.i, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.ae = phi <2 x double> [ %i.ak, %.lr.ph.i.i ], [ %i.y, %.lr.ph.i.i.preheader ] ; 3 uses
  %.027.i.add.i = add nsw i64 %.027.i.idx.i.a, -16
  %2 = getelementptr i8, ptr %i.t, i64 %.027.i.idx.i.a
  %.ptr.i = getelementptr i8, ptr %2, i64 -32
  %i.af = fneg <2 x double> %i.ae
  %i.ag = shufflevector <2 x double> %i.af, <2 x double> %i.ae, <2 x i32> <i32 1, i32 2>
  %i.ah = fmul <2 x double> %i.ab, %i.ag
  %i.ai = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ad, <2 x double> %i.ae, <2 x double> %i.ah)
  %i.aj = load <2 x double>, ptr %.ptr.i, align 8, !tbaa !66
  %i.ak = fadd <2 x double> %i.ai, %i.aj          ; 2 uses
  %3 = icmp samesign ugt i64 %.027.i.idx.i.a, 48
  br i1 %3, label %.lr.ph.i.i, label %_ZL19complex_horner_evaljPKd5PJ_UVj.exit.i, !llvm.loop !68

_ZL19complex_horner_evaljPKd5PJ_UVj.exit.i:       ; preds = %.lr.ph.i.i, %bb.c
  %i.al = phi <2 x double> [ %i.y, %bb.c ], [ %i.ak, %.lr.ph.i.i ] ; 2 uses
  %i.am = extractelement <2 x double> %i.al, i64 0
  %i.an = extractelement <2 x double> %i.al, i64 1
  %i.ao = tail call noundef { double, double } @__divdc3(double noundef %i.n, double noundef %i.q, double noundef %i.am, double noundef %i.an) #10 ; 2 uses
  %i.ap = extractvalue { double, double } %i.ao, 0 ; 3 uses
  %i.aq = extractvalue { double, double } %i.ao, 1 ; 3 uses
  %i.ar = fsub double %i.ap, %.sroa.038.048.i
  %i.as = tail call double @llvm.fabs.f64(double %i.ar)
  %i.at = fcmp olt double %i.as, %i.j
  %i.au = fsub double %i.aq, %.sroa.7.049.i
  %i.av = tail call double @llvm.fabs.f64(double %i.au)
  %i.aw = fcmp olt double %i.av, %i.j
  %i.ax = and i1 %i.at, %i.aw                     ; 2 uses
  %i.ay = add nsw i32 %i.s, -1
  %i.az = icmp eq i32 %i.s, 0
  %.not35.i = select i1 %i.az, i1 true, i1 %i.ax
  br i1 %.not35.i, label %bb.d, label %bb.c, !llvm.loop !70

bb.d:                                             ; preds = %_ZL19complex_horner_evaljPKd5PJ_UVj.exit.i
  br i1 %i.ax, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ba = tail call i32 @proj_errno_set(ptr noundef %1, i32 noundef 2048) ; 0 uses
  br label %_ZL30complex_iterative_inverse_implP8PJconstsPKN12_GLOBAL__N_16hornerE5PJ_UV.exit

bb.f:                                             ; preds = %bb.d
  %i.bb = insertelement <2 x double> poison, double %i.aq, i64 0
  %i.bc = insertelement <2 x double> %i.bb, double %i.ap, i64 1 ; 2 uses
  %i.bd = fneg <2 x double> %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !54
  %i.bg = load <2 x i32>, ptr %i.b, align 8, !tbaa !65
  %i.bh = icmp eq <2 x i32> %i.bg, zeroinitializer
  %i.bi = select <2 x i1> %i.bh, <2 x double> %i.bc, <2 x double> %i.bd
  %i.bj = load <2 x double>, ptr %i.bf, align 8, !tbaa !66
  %i.bk = fadd <2 x double> %i.bi, %i.bj
  br label %_ZL30complex_iterative_inverse_implP8PJconstsPKN12_GLOBAL__N_16hornerE5PJ_UV.exit

_ZL30complex_iterative_inverse_implP8PJconstsPKN12_GLOBAL__N_16hornerE5PJ_UV.exit: ; preds = %bb.b, %bb.e, %bb.f
  %i.bl = phi <2 x double> [ splat (double +inf), %bb.b ], [ %i.bk, %bb.f ], [ splat (double +inf), %bb.e ]
  store <2 x double> %i.bl, ptr %0, align 8, !tbaa !66
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
  %i.q = load i32, ptr %i.p, align 8, !tbaa !45   ; 6 uses
  %i.r = add i32 %i.q, 1
  %i.s = add i32 %i.q, 2
  %i.t = mul i32 %i.r, %i.s
  %i.u = lshr i32 %i.t, 1
  %i.v = zext nneg i32 %i.u to i64                ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.v
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.v
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -8 ; 2 uses
  %i.z = load double, ptr %i.y, align 8, !tbaa !66
  %i.aa = getelementptr inbounds i8, ptr %i.w, i64 -8 ; 2 uses
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !66
  %.not.i = icmp eq i32 %i.q, 0
  %i.ac = insertelement <2 x double> poison, double %i.z, i64 0
  %i.ad = insertelement <2 x double> %i.ac, double %i.ab, i64 1 ; 2 uses
  br i1 %.not.i, label %_ZL17real_default_implP8PJconstsPKN12_GLOBAL__N_16hornerE12PJ_DIRECTION5PJ_UV.exit, label %.lr.ph55.i.i.preheader

.lr.ph55.i.i.preheader:                           ; preds = %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i
  %i.ae = shufflevector <2 x double> %i.e, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  br label %.lr.ph55.i.i

.lr.ph55.i.i:                                     ; preds = %.lr.ph55.i.i.preheader, %._crit_edge.i.i
  %.03453.i.i = phi i32 [ %i.ao, %._crit_edge.i.i ], [ %i.q, %.lr.ph55.i.i.preheader ] ; 3 uses
  %.03750.i.i = phi ptr [ %.1.lcssa.i.i, %._crit_edge.i.i ], [ %i.aa, %.lr.ph55.i.i.preheader ]
  %.03849.i.i = phi ptr [ %.139.lcssa.i.i, %._crit_edge.i.i ], [ %i.y, %.lr.ph55.i.i.preheader ]
  %i.af = phi <2 x double> [ %i.an, %._crit_edge.i.i ], [ %i.ad, %.lr.ph55.i.i.preheader ]
  %i.ag = getelementptr inbounds i8, ptr %.03849.i.i, i64 -8 ; 3 uses
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !66
  %i.ai = getelementptr inbounds i8, ptr %.03750.i.i, i64 -8 ; 3 uses
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !66
  %.not40.i.i = icmp ult i32 %i.q, %.03453.i.i
  %i.ak = insertelement <2 x double> poison, double %i.ah, i64 0
  %i.al = insertelement <2 x double> %i.ak, double %i.aj, i64 1 ; 2 uses
  br i1 %.not40.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %.lr.ph55.i.i
  %.139.lcssa.i.i = phi ptr [ %i.ag, %.lr.ph55.i.i ], [ %i.aq, %.lr.ph.i.i ]
  %.1.lcssa.i.i = phi ptr [ %i.ai, %.lr.ph55.i.i ], [ %i.as, %.lr.ph.i.i ]
  %i.am = phi <2 x double> [ %i.al, %.lr.ph55.i.i ], [ %i.aw, %.lr.ph.i.i ]
  %i.an = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.e, <2 x double> %i.af, <2 x double> %i.am) ; 2 uses
  %i.ao = add i32 %.03453.i.i, -1                 ; 2 uses
  %.not30.i = icmp eq i32 %i.ao, 0
  br i1 %.not30.i, label %_ZL17real_default_implP8PJconstsPKN12_GLOBAL__N_16hornerE12PJ_DIRECTION5PJ_UV.exit, label %.lr.ph55.i.i, !llvm.loop !71

.lr.ph.i.i:                                       ; preds = %.lr.ph55.i.i, %.lr.ph.i.i
  %.045.i.i = phi i32 [ %i.ax, %.lr.ph.i.i ], [ %i.q, %.lr.ph55.i.i ]
  %.142.i.i = phi ptr [ %i.as, %.lr.ph.i.i ], [ %i.ai, %.lr.ph55.i.i ]
  %.13941.i.i = phi ptr [ %i.aq, %.lr.ph.i.i ], [ %i.ag, %.lr.ph55.i.i ]
  %i.ap = phi <2 x double> [ %i.aw, %.lr.ph.i.i ], [ %i.al, %.lr.ph55.i.i ]
  %i.aq = getelementptr inbounds i8, ptr %.13941.i.i, i64 -8 ; 3 uses
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !66
  %i.as = getelementptr inbounds i8, ptr %.142.i.i, i64 -8 ; 3 uses
  %i.at = load double, ptr %i.as, align 8, !tbaa !66
  %i.au = insertelement <2 x double> poison, double %i.ar, i64 0
  %i.av = insertelement <2 x double> %i.au, double %i.at, i64 1
  %i.aw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ae, <2 x double> %i.ap, <2 x double> %i.av) ; 2 uses
  %i.ax = add i32 %.045.i.i, -1                   ; 2 uses
  %.not.i.i = icmp ult i32 %i.ax, %.03453.i.i
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !72

_ZL17real_default_implP8PJconstsPKN12_GLOBAL__N_16hornerE12PJ_DIRECTION5PJ_UV.exit: ; preds = %._crit_edge.i.i, %bb.b, %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i
  %i.ay = phi <2 x double> [ splat (double +inf), %bb.b ], [ %i.ad, %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i ], [ %i.an, %._crit_edge.i.i ]
  %i.az = shufflevector <2 x double> %i.ay, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.az, ptr %0, align 8, !tbaa !66
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
  %i.q = load i32, ptr %i.p, align 8, !tbaa !45   ; 6 uses
  %i.r = add i32 %i.q, 1
  %i.s = add i32 %i.q, 2
  %i.t = mul i32 %i.r, %i.s
  %i.u = lshr i32 %i.t, 1
  %i.v = zext nneg i32 %i.u to i64                ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.v
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.v
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -8 ; 2 uses
  %i.z = load double, ptr %i.y, align 8, !tbaa !66
  %i.aa = getelementptr inbounds i8, ptr %i.w, i64 -8 ; 2 uses
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !66
  %.not.i = icmp eq i32 %i.q, 0
  %i.ac = insertelement <2 x double> poison, double %i.z, i64 0
  %i.ad = insertelement <2 x double> %i.ac, double %i.ab, i64 1 ; 2 uses
  br i1 %.not.i, label %_ZL17real_default_implP8PJconstsPKN12_GLOBAL__N_16hornerE12PJ_DIRECTION5PJ_UV.exit, label %.lr.ph55.i.i.preheader

.lr.ph55.i.i.preheader:                           ; preds = %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i
  %i.ae = shufflevector <2 x double> %i.e, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  br label %.lr.ph55.i.i

.lr.ph55.i.i:                                     ; preds = %.lr.ph55.i.i.preheader, %._crit_edge.i.i
  %.03453.i.i = phi i32 [ %i.ao, %._crit_edge.i.i ], [ %i.q, %.lr.ph55.i.i.preheader ] ; 3 uses
  %.03750.i.i = phi ptr [ %.1.lcssa.i.i, %._crit_edge.i.i ], [ %i.aa, %.lr.ph55.i.i.preheader ]
  %.03849.i.i = phi ptr [ %.139.lcssa.i.i, %._crit_edge.i.i ], [ %i.y, %.lr.ph55.i.i.preheader ]
end_hunk_0
