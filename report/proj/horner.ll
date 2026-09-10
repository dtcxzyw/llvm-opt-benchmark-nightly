Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/horner?download=true
inline.NumInlined: 45
inline.NumDeleted: 19
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZL13horner_freeupP8PJconstsi:bb.a
  tail call void @free(ptr noundef %i.r) #10
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !54
  tail call void @free(ptr noundef %i.t) #10
  tail call void @free(ptr noundef nonnull %i.c) #10
  store ptr null, ptr %i.b, align 8, !tbaa !55
  br label %.sink.split

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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 5 uses
  %.pn.in.in.i = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %.pn.in.i = load ptr, ptr %.pn.in.in.i, align 8, !tbaa !58
  %i.c = load <2 x double>, ptr %0, align 8, !tbaa !59
  %i.d = load <2 x double>, ptr %.pn.in.i, align 8, !tbaa !59
  %i.e = fsub <2 x double> %i.c, %i.d             ; 4 uses
  %i.f = load <2 x i32>, ptr %i.b, align 8, !tbaa !60
  %i.g = icmp eq <2 x i32> %i.f, zeroinitializer
  %i.h = fneg <2 x double> %i.e
  %i.i = select <2 x i1> %i.g, <2 x double> %i.e, <2 x double> %i.h ; 2 uses
  %i.j = getelementptr i8, ptr %i.b, i64 16
  %.val.i = load double, ptr %i.j, align 8, !tbaa !56 ; 2 uses
  %i.k = extractelement <2 x double> %i.e, i64 1
  %i.l = tail call double @llvm.fabs.f64(double %i.k)
  %i.m = fcmp ogt double %i.l, %.val.i
  %i.n = extractelement <2 x double> %i.e, i64 0
  %i.o = tail call double @llvm.fabs.f64(double %i.n)
  %i.p = fcmp ogt double %i.o, %.val.i
  %or.cond.i.i = or i1 %i.m, %i.p
  br i1 %or.cond.i.i, label %bb.b, label %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i

bb.b:                                             ; preds = %bb.a
  %i.q = tail call i32 @proj_errno_set(ptr noundef nonnull %1, i32 noundef 2050) ; 0 uses
  br label %_ZL20complex_default_implP8PJconstsPKN12_GLOBAL__N_16hornerE12PJ_DIRECTION5PJ_UV.exit

_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i: ; preds = %bb.a
  %.in.i = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.r = load ptr, ptr %.in.i, align 8, !tbaa !61 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !46
  %i.u = shl i32 %i.t, 1
  %i.v = add i32 %i.u, 2                          ; 2 uses
  %i.w = zext i32 %i.v to i64
  %.idx.i.i = shl nuw nsw i64 %i.w, 3
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i.i
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -16 ; 2 uses
  %i.z = load <2 x double>, ptr %i.y, align 8, !tbaa !59 ; 2 uses
  %i.aa = icmp ugt i32 %i.v, 2
  br i1 %i.aa, label %.lr.ph.i.i.preheader, label %_ZL20complex_default_implP8PJconstsPKN12_GLOBAL__N_16hornerE12PJ_DIRECTION5PJ_UV.exit

.lr.ph.i.i.preheader:                             ; preds = %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i
  %i.ab = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ac = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.02425.i.i = phi ptr [ %i.ae, %.lr.ph.i.i ], [ %i.y, %.lr.ph.i.i.preheader ]
  %i.ad = phi <2 x double> [ %i.ak, %.lr.ph.i.i ], [ %i.z, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.ae = getelementptr inbounds i8, ptr %.02425.i.i, i64 -16 ; 3 uses
  %i.af = fneg <2 x double> %i.ad
  %i.ag = shufflevector <2 x double> %i.af, <2 x double> %i.ad, <2 x i32> <i32 1, i32 2>
  %i.ah = fmul <2 x double> %i.ab, %i.ag
  %i.ai = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ac, <2 x double> %i.ad, <2 x double> %i.ah)
  %i.aj = load <2 x double>, ptr %i.ae, align 8, !tbaa !59
  %i.ak = fadd <2 x double> %i.ai, %i.aj          ; 2 uses
  %i.al = icmp ugt ptr %i.ae, %i.r
  br i1 %i.al, label %.lr.ph.i.i, label %_ZL20complex_default_implP8PJconstsPKN12_GLOBAL__N_16hornerE12PJ_DIRECTION5PJ_UV.exit, !llvm.loop !0

_ZL20complex_default_implP8PJconstsPKN12_GLOBAL__N_16hornerE12PJ_DIRECTION5PJ_UV.exit: ; preds = %.lr.ph.i.i, %bb.b, %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i
  %i.am = phi <2 x double> [ splat (double +inf), %bb.b ], [ %i.z, %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i ], [ %i.ak, %.lr.ph.i.i ]
  %i.an = shufflevector <2 x double> %i.am, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.an, ptr %0, align 8, !tbaa !59
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL25complex_horner_inverse_4dR8PJ_COORDP8PJconsts(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 5 uses
  %.pn.in.in.i = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %.pn.in.i = load ptr, ptr %.pn.in.in.i, align 8, !tbaa !58
  %i.c = load <2 x double>, ptr %0, align 8, !tbaa !59
  %i.d = load <2 x double>, ptr %.pn.in.i, align 8, !tbaa !59
  %i.e = fsub <2 x double> %i.c, %i.d             ; 4 uses
  %i.f = load <2 x i32>, ptr %i.b, align 8, !tbaa !60
  %i.g = icmp eq <2 x i32> %i.f, zeroinitializer
  %i.h = fneg <2 x double> %i.e
  %i.i = select <2 x i1> %i.g, <2 x double> %i.e, <2 x double> %i.h ; 2 uses
  %i.j = getelementptr i8, ptr %i.b, i64 16
  %.val.i = load double, ptr %i.j, align 8, !tbaa !56 ; 2 uses
  %i.k = extractelement <2 x double> %i.e, i64 1
  %i.l = tail call double @llvm.fabs.f64(double %i.k)
  %i.m = fcmp ogt double %i.l, %.val.i
  %i.n = extractelement <2 x double> %i.e, i64 0
  %i.o = tail call double @llvm.fabs.f64(double %i.n)
  %i.p = fcmp ogt double %i.o, %.val.i
  %or.cond.i.i = or i1 %i.m, %i.p
  br i1 %or.cond.i.i, label %bb.b, label %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i

bb.b:                                             ; preds = %bb.a
  %i.q = tail call i32 @proj_errno_set(ptr noundef nonnull %1, i32 noundef 2050) ; 0 uses
  br label %_ZL20complex_default_implP8PJconstsPKN12_GLOBAL__N_16hornerE12PJ_DIRECTION5PJ_UV.exit

_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i: ; preds = %bb.a
  %.in.i = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.r = load ptr, ptr %.in.i, align 8, !tbaa !61 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !46
  %i.u = shl i32 %i.t, 1
  %i.v = add i32 %i.u, 2                          ; 2 uses
  %i.w = zext i32 %i.v to i64
  %.idx.i.i = shl nuw nsw i64 %i.w, 3
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i.i
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -16 ; 2 uses
  %i.z = load <2 x double>, ptr %i.y, align 8, !tbaa !59 ; 2 uses
  %i.aa = icmp ugt i32 %i.v, 2
  br i1 %i.aa, label %.lr.ph.i.i.preheader, label %_ZL20complex_default_implP8PJconstsPKN12_GLOBAL__N_16hornerE12PJ_DIRECTION5PJ_UV.exit

.lr.ph.i.i.preheader:                             ; preds = %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i
  %i.ab = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ac = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.02425.i.i = phi ptr [ %i.ae, %.lr.ph.i.i ], [ %i.y, %.lr.ph.i.i.preheader ]
  %i.ad = phi <2 x double> [ %i.ak, %.lr.ph.i.i ], [ %i.z, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.ae = getelementptr inbounds i8, ptr %.02425.i.i, i64 -16 ; 3 uses
  %i.af = fneg <2 x double> %i.ad
  %i.ag = shufflevector <2 x double> %i.af, <2 x double> %i.ad, <2 x i32> <i32 1, i32 2>
  %i.ah = fmul <2 x double> %i.ab, %i.ag
  %i.ai = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ac, <2 x double> %i.ad, <2 x double> %i.ah)
  %i.aj = load <2 x double>, ptr %i.ae, align 8, !tbaa !59
  %i.ak = fadd <2 x double> %i.ai, %i.aj          ; 2 uses
  %i.al = icmp ugt ptr %i.ae, %i.r
  br i1 %i.al, label %.lr.ph.i.i, label %_ZL20complex_default_implP8PJconstsPKN12_GLOBAL__N_16hornerE12PJ_DIRECTION5PJ_UV.exit, !llvm.loop !0

_ZL20complex_default_implP8PJconstsPKN12_GLOBAL__N_16hornerE12PJ_DIRECTION5PJ_UV.exit: ; preds = %.lr.ph.i.i, %bb.b, %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i
  %i.am = phi <2 x double> [ splat (double +inf), %bb.b ], [ %i.z, %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i ], [ %i.ak, %.lr.ph.i.i ]
  %i.an = shufflevector <2 x double> %i.am, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.an, ptr %0, align 8, !tbaa !59
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL35complex_horner_iterative_inverse_4dR8PJ_COORDP8PJconsts(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 6 uses
  %.sroa.0.0.copyload = load double, ptr %0, align 8, !tbaa !59 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload = load double, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !59 ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %.val.i = load double, ptr %i.c, align 8, !tbaa !56 ; 2 uses
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
  %i.j = load double, ptr %i.i, align 8, !tbaa !57 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !47   ; 2 uses
  %i.m = load double, ptr %i.l, align 8, !tbaa !59
  %i.n = fsub double %.sroa.2.0.copyload, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.p = load double, ptr %i.o, align 8, !tbaa !59
  %i.q = fsub double %.sroa.0.0.copyload, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_ZL19complex_horner_evaljPKd5PJ_UVj.exit.i, %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i
  %i.s = phi i32 [ 31, %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i ], [ %i.ay, %_ZL19complex_horner_evaljPKd5PJ_UVj.exit.i ] ; 2 uses
  %.sroa.038.049.i = phi double [ 0.000000e+00, %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i ], [ %i.ap, %_ZL19complex_horner_evaljPKd5PJ_UVj.exit.i ] ; 4 uses
  %.sroa.7.048.i = phi double [ 0.000000e+00, %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i ], [ %i.aq, %_ZL19complex_horner_evaljPKd5PJ_UVj.exit.i ] ; 4 uses
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !47   ; 4 uses
  %i.u = load i32, ptr %i.r, align 8, !tbaa !46
  %i.v = shl i32 %i.u, 1
  %i.w = add i32 %i.v, 2                          ; 2 uses
  %i.x = zext i32 %i.w to i64
  %.idx.i.i = shl nuw nsw i64 %i.x, 3             ; 3 uses
  %.add.i = add nsw i64 %.idx.i.i, -16            ; 2 uses
  %.ptr46.i = getelementptr inbounds i8, ptr %i.t, i64 %.add.i
  %i.y = load <2 x double>, ptr %.ptr46.i, align 8, !tbaa !59 ; 5 uses
  %i.z = icmp ugt i32 %i.w, 4
  br i1 %i.z, label %.lr.ph.i.i.preheader, label %_ZL19complex_horner_evaljPKd5PJ_UVj.exit.i

.lr.ph.i.i.preheader:                             ; preds = %bb.c
  %2 = add nsw i64 %.idx.i.i, -48                 ; 2 uses
  %3 = and i64 %2, 16
  %lcmp.mod.not.not = icmp eq i64 %3, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.prol, label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %.02425.i.add.i.prol = add nsw i64 %.idx.i.i, -32 ; 2 uses
  %.ptr.i.prol = getelementptr inbounds i8, ptr %i.t, i64 %.02425.i.add.i.prol
  %4 = insertelement <2 x double> poison, double %.sroa.7.048.i, i64 0
  %5 = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> zeroinitializer
  %6 = fneg <2 x double> %i.y
  %7 = shufflevector <2 x double> %6, <2 x double> %i.y, <2 x i32> <i32 1, i32 2>
  %8 = fmul <2 x double> %5, %7
  %9 = insertelement <2 x double> poison, double %.sroa.038.049.i, i64 0
  %10 = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> zeroinitializer
  %11 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %10, <2 x double> %i.y, <2 x double> %8)
  %12 = load <2 x double>, ptr %.ptr.i.prol, align 8, !tbaa !59
  %13 = fadd <2 x double> %11, %12                ; 2 uses
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.02425.i.idx.i.unr = phi i64 [ %.add.i, %.lr.ph.i.i.preheader ], [ %.02425.i.add.i.prol, %.lr.ph.i.i.prol ]
  %.unr = phi <2 x double> [ %i.y, %.lr.ph.i.i.preheader ], [ %13, %.lr.ph.i.i.prol ]
  %.lcssa.unr = phi <2 x double> [ poison, %.lr.ph.i.i.preheader ], [ %13, %.lr.ph.i.i.prol ]
  %14 = icmp eq i64 %2, 0
  br i1 %14, label %_ZL19complex_horner_evaljPKd5PJ_UVj.exit.i, label %.lr.ph.i.i.preheader.a

.lr.ph.i.i.preheader.a:                           ; preds = %.lr.ph.i.i.prol.loopexit
  %15 = insertelement <2 x double> poison, double %.sroa.7.048.i, i64 0
  %16 = shufflevector <2 x double> %15, <2 x double> poison, <2 x i32> zeroinitializer
  %17 = insertelement <2 x double> poison, double %.sroa.038.049.i, i64 0
  %18 = shufflevector <2 x double> %17, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aa = insertelement <2 x double> poison, double %.sroa.7.048.i, i64 0
  %i.ab = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ac = insertelement <2 x double> poison, double %.sroa.038.049.i, i64 0
  %i.ad = shufflevector <2 x double> %i.ac, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.a
  %.02425.i.idx.i = phi i64 [ %.02425.i.idx.i.unr, %.lr.ph.i.i.preheader.a ], [ %.02425.i.add.i, %.lr.ph.i.i ] ; 3 uses
  %i.ae = phi <2 x double> [ %.unr, %.lr.ph.i.i.preheader.a ], [ %i.ak, %.lr.ph.i.i ] ; 3 uses
  %19 = getelementptr i8, ptr %i.t, i64 %.02425.i.idx.i
  %.ptr.i = getelementptr i8, ptr %19, i64 -16
  %20 = fneg <2 x double> %i.ae
  %21 = shufflevector <2 x double> %20, <2 x double> %i.ae, <2 x i32> <i32 1, i32 2>
  %22 = fmul <2 x double> %16, %21
  %23 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %18, <2 x double> %i.ae, <2 x double> %22)
  %24 = load <2 x double>, ptr %.ptr.i, align 8, !tbaa !59
  %25 = fadd <2 x double> %23, %24                ; 3 uses
  %.02425.i.add.i = add nsw i64 %.02425.i.idx.i, -32 ; 2 uses
  %.ptr.i.a = getelementptr inbounds i8, ptr %i.t, i64 %.02425.i.add.i
  %i.af = fneg <2 x double> %25
  %i.ag = shufflevector <2 x double> %i.af, <2 x double> %25, <2 x i32> <i32 1, i32 2>
  %i.ah = fmul <2 x double> %i.ab, %i.ag
  %i.ai = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ad, <2 x double> %25, <2 x double> %i.ah)
  %i.aj = load <2 x double>, ptr %.ptr.i.a, align 8, !tbaa !59
  %i.ak = fadd <2 x double> %i.ai, %i.aj          ; 2 uses
  %i.al = icmp sgt i64 %.02425.i.idx.i, 48
  br i1 %i.al, label %.lr.ph.i.i, label %_ZL19complex_horner_evaljPKd5PJ_UVj.exit.i, !llvm.loop !0

_ZL19complex_horner_evaljPKd5PJ_UVj.exit.i:       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.c
  %26 = phi <2 x double> [ %i.y, %bb.c ], [ %.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.ak, %.lr.ph.i.i ] ; 2 uses
  %i.am = extractelement <2 x double> %26, i64 0
  %i.an = extractelement <2 x double> %26, i64 1
  %i.ao = tail call noundef { double, double } @__divdc3(double noundef %i.n, double noundef %i.q, double noundef %i.am, double noundef %i.an) #10 ; 2 uses
  %i.ap = extractvalue { double, double } %i.ao, 0 ; 3 uses
  %i.aq = extractvalue { double, double } %i.ao, 1 ; 3 uses
  %i.ar = fsub double %i.ap, %.sroa.038.049.i
  %i.as = tail call double @llvm.fabs.f64(double %i.ar)
  %i.at = fcmp olt double %i.as, %i.j
  %i.au = fsub double %i.aq, %.sroa.7.048.i
  %i.av = tail call double @llvm.fabs.f64(double %i.au)
  %i.aw = fcmp olt double %i.av, %i.j
  %i.ax = and i1 %i.at, %i.aw                     ; 2 uses
  %i.ay = add nsw i32 %i.s, -1
  %i.az = icmp eq i32 %i.s, 0
  %.not35.i = select i1 %i.az, i1 true, i1 %i.ax
  br i1 %.not35.i, label %bb.d, label %bb.c, !llvm.loop !72

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
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !53
  %i.bg = load <2 x i32>, ptr %i.b, align 8, !tbaa !60
  %i.bh = icmp eq <2 x i32> %i.bg, zeroinitializer
  %i.bi = select <2 x i1> %i.bh, <2 x double> %i.bc, <2 x double> %i.bd
  %i.bj = load <2 x double>, ptr %i.bf, align 8, !tbaa !59
  %i.bk = fadd <2 x double> %i.bi, %i.bj
  br label %_ZL30complex_iterative_inverse_implP8PJconstsPKN12_GLOBAL__N_16hornerE5PJ_UV.exit

_ZL30complex_iterative_inverse_implP8PJconstsPKN12_GLOBAL__N_16hornerE5PJ_UV.exit: ; preds = %bb.b, %bb.e, %bb.f
  %i.bl = phi <2 x double> [ splat (double +inf), %bb.b ], [ %i.bk, %bb.f ], [ splat (double +inf), %bb.e ]
  store <2 x double> %i.bl, ptr %0, align 8, !tbaa !59
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL17horner_forward_4dR8PJ_COORDP8PJconsts(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 5 uses
  %.pn.in.in.i = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %.pn.in.i = load ptr, ptr %.pn.in.in.i, align 8, !tbaa !58
  %i.c = load <2 x double>, ptr %0, align 8, !tbaa !59
  %i.d = load <2 x double>, ptr %.pn.in.i, align 8, !tbaa !59
  %i.e = fsub <2 x double> %i.c, %i.d             ; 4 uses
  %i.f = getelementptr i8, ptr %i.b, i64 16
  %.val.i = load double, ptr %i.f, align 8, !tbaa !56 ; 2 uses
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
  %i.n = load ptr, ptr %.in.i, align 8, !tbaa !61
  %.in29.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.o = load ptr, ptr %.in29.i, align 8, !tbaa !61
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !46   ; 5 uses
  %i.r = add i32 %i.q, 1
  %i.s = add i32 %i.q, 2
  %i.t = mul i32 %i.r, %i.s
  %i.u = lshr i32 %i.t, 1
  %i.v = zext nneg i32 %i.u to i64                ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.v ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -8
  %i.z = load double, ptr %i.y, align 8, !tbaa !59
  %i.aa = getelementptr inbounds i8, ptr %i.w, i64 -8
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !59
  %.not.i = icmp eq i32 %i.q, 0
  %i.ac = insertelement <2 x double> poison, double %i.z, i64 0
  %i.ad = insertelement <2 x double> %i.ac, double %i.ab, i64 1 ; 2 uses
  br i1 %.not.i, label %_ZL17real_default_implP8PJconstsPKN12_GLOBAL__N_16hornerE12PJ_DIRECTION5PJ_UV.exit, label %.lr.ph55.i.i.preheader

.lr.ph55.i.i.preheader:                           ; preds = %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i
  %i.ae = shufflevector <2 x double> %i.e, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  br label %.lr.ph55.i.i

.lr.ph55.i.i:                                     ; preds = %.lr.ph55.i.i.preheader, %._crit_edge.i.loopexit.i
  %.03453.i.i = phi i32 [ %i.ap, %._crit_edge.i.loopexit.i ], [ %i.q, %.lr.ph55.i.i.preheader ] ; 2 uses
  %i.af = phi ptr [ %.142.i.i, %._crit_edge.i.loopexit.i ], [ %i.w, %.lr.ph55.i.i.preheader ]
  %i.ag = phi ptr [ %.13941.i.i, %._crit_edge.i.loopexit.i ], [ %i.x, %.lr.ph55.i.i.preheader ]
  %i.ah = phi <2 x double> [ %i.ao, %._crit_edge.i.loopexit.i ], [ %i.ad, %.lr.ph55.i.i.preheader ]
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 -16 ; 2 uses
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !59
  %i.ak = getelementptr inbounds i8, ptr %i.af, i64 -16 ; 2 uses
  %i.al = load double, ptr %i.ak, align 8, !tbaa !59
  %i.am = insertelement <2 x double> poison, double %i.aj, i64 0
  %i.an = insertelement <2 x double> %i.am, double %i.al, i64 1
  br label %.lr.ph.i.i

._crit_edge.i.loopexit.i:                         ; preds = %.lr.ph.i.i
  %i.ao = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.e, <2 x double> %i.ah, <2 x double> %i.ax) ; 2 uses
  %i.ap = add i32 %.03453.i.i, -1                 ; 2 uses
  %.not30.i = icmp eq i32 %i.ap, 0
  br i1 %.not30.i, label %_ZL17real_default_implP8PJconstsPKN12_GLOBAL__N_16hornerE12PJ_DIRECTION5PJ_UV.exit, label %.lr.ph55.i.i, !llvm.loop !1

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph55.i.i
  %.045.i.i = phi i32 [ %i.ay, %.lr.ph.i.i ], [ %i.q, %.lr.ph55.i.i ]
  %.142.i.i = phi ptr [ %i.at, %.lr.ph.i.i ], [ %i.ak, %.lr.ph55.i.i ] ; 2 uses
  %.13941.i.i = phi ptr [ %i.ar, %.lr.ph.i.i ], [ %i.ai, %.lr.ph55.i.i ] ; 2 uses
  %i.aq = phi <2 x double> [ %i.ax, %.lr.ph.i.i ], [ %i.an, %.lr.ph55.i.i ]
  %i.ar = getelementptr inbounds i8, ptr %.13941.i.i, i64 -8 ; 2 uses
  %i.as = load double, ptr %i.ar, align 8, !tbaa !59
  %i.at = getelementptr inbounds i8, ptr %.142.i.i, i64 -8 ; 2 uses
  %i.au = load double, ptr %i.at, align 8, !tbaa !59
  %i.av = insertelement <2 x double> poison, double %i.as, i64 0
  %i.aw = insertelement <2 x double> %i.av, double %i.au, i64 1
  %i.ax = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ae, <2 x double> %i.aq, <2 x double> %i.aw) ; 2 uses
  %i.ay = add i32 %.045.i.i, -1                   ; 2 uses
  %.not.i.i = icmp ult i32 %i.ay, %.03453.i.i
  br i1 %.not.i.i, label %._crit_edge.i.loopexit.i, label %.lr.ph.i.i, !llvm.loop !2

_ZL17real_default_implP8PJconstsPKN12_GLOBAL__N_16hornerE12PJ_DIRECTION5PJ_UV.exit: ; preds = %._crit_edge.i.loopexit.i, %bb.b, %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i
  %i.az = phi <2 x double> [ splat (double +inf), %bb.b ], [ %i.ad, %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i ], [ %i.ao, %._crit_edge.i.loopexit.i ]
  %i.ba = shufflevector <2 x double> %i.az, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.ba, ptr %0, align 8, !tbaa !59
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL17horner_inverse_4dR8PJ_COORDP8PJconsts(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 5 uses
  %.pn.in.in.i = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %.pn.in.i = load ptr, ptr %.pn.in.in.i, align 8, !tbaa !58
  %i.c = load <2 x double>, ptr %0, align 8, !tbaa !59
  %i.d = load <2 x double>, ptr %.pn.in.i, align 8, !tbaa !59
  %i.e = fsub <2 x double> %i.c, %i.d             ; 4 uses
  %i.f = getelementptr i8, ptr %i.b, i64 16
  %.val.i = load double, ptr %i.f, align 8, !tbaa !56 ; 2 uses
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
  %i.n = load ptr, ptr %.in.i, align 8, !tbaa !61
  %.in29.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.o = load ptr, ptr %.in29.i, align 8, !tbaa !61
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !46   ; 5 uses
  %i.r = add i32 %i.q, 1
  %i.s = add i32 %i.q, 2
  %i.t = mul i32 %i.r, %i.s
  %i.u = lshr i32 %i.t, 1
  %i.v = zext nneg i32 %i.u to i64                ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.v ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -8
  %i.z = load double, ptr %i.y, align 8, !tbaa !59
  %i.aa = getelementptr inbounds i8, ptr %i.w, i64 -8
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !59
  %.not.i = icmp eq i32 %i.q, 0
  %i.ac = insertelement <2 x double> poison, double %i.z, i64 0
  %i.ad = insertelement <2 x double> %i.ac, double %i.ab, i64 1 ; 2 uses
  br i1 %.not.i, label %_ZL17real_default_implP8PJconstsPKN12_GLOBAL__N_16hornerE12PJ_DIRECTION5PJ_UV.exit, label %.lr.ph55.i.i.preheader

.lr.ph55.i.i.preheader:                           ; preds = %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i
  %i.ae = shufflevector <2 x double> %i.e, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  br label %.lr.ph55.i.i

.lr.ph55.i.i:                                     ; preds = %.lr.ph55.i.i.preheader, %._crit_edge.i.loopexit.i
  %.03453.i.i = phi i32 [ %i.ap, %._crit_edge.i.loopexit.i ], [ %i.q, %.lr.ph55.i.i.preheader ] ; 2 uses
  %i.af = phi ptr [ %.142.i.i, %._crit_edge.i.loopexit.i ], [ %i.w, %.lr.ph55.i.i.preheader ]
  %i.ag = phi ptr [ %.13941.i.i, %._crit_edge.i.loopexit.i ], [ %i.x, %.lr.ph55.i.i.preheader ]
  %i.ah = phi <2 x double> [ %i.ao, %._crit_edge.i.loopexit.i ], [ %i.ad, %.lr.ph55.i.i.preheader ]
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 -16 ; 2 uses
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !59
  %i.ak = getelementptr inbounds i8, ptr %i.af, i64 -16 ; 2 uses
  %i.al = load double, ptr %i.ak, align 8, !tbaa !59
  %i.am = insertelement <2 x double> poison, double %i.aj, i64 0
  %i.an = insertelement <2 x double> %i.am, double %i.al, i64 1
  br label %.lr.ph.i.i

end_hunk_0
