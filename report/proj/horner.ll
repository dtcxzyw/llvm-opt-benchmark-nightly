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
  %i.e = fsub <2 x double> %i.c, %i.d             ; 3 uses
  %i.f = load <2 x i32>, ptr %i.b, align 8, !tbaa !60
  %i.g = icmp eq <2 x i32> %i.f, zeroinitializer
  %i.h = fneg <2 x double> %i.e
  %i.i = select <2 x i1> %i.g, <2 x double> %i.e, <2 x double> %i.h ; 2 uses
  %i.j = getelementptr i8, ptr %i.b, i64 16
  %.val.i = load double, ptr %i.j, align 8, !tbaa !56
  %i.k = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.e)
  %i.l = insertelement <2 x double> poison, double %.val.i, i64 0
  %i.m = shufflevector <2 x double> %i.l, <2 x double> poison, <2 x i32> zeroinitializer
  %i.n = fcmp ogt <2 x double> %i.k, %i.m
  %i.o = bitcast <2 x i1> %i.n to i2
  %.not = icmp eq i2 %i.o, 0
  br i1 %.not, label %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = tail call i32 @proj_errno_set(ptr noundef nonnull %1, i32 noundef 2050) ; 0 uses
  br label %_ZL20complex_default_implP8PJconstsPKN12_GLOBAL__N_16hornerE12PJ_DIRECTION5PJ_UV.exit

_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i: ; preds = %bb.a
  %.in.i = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.q = load ptr, ptr %.in.i, align 8, !tbaa !61 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !46
  %i.t = shl i32 %i.s, 1
  %i.u = add i32 %i.t, 2                          ; 2 uses
  %i.v = zext i32 %i.u to i64
  %.idx.i.i = shl nuw nsw i64 %i.v, 3
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx.i.i
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -16 ; 2 uses
  %i.y = load <2 x double>, ptr %i.x, align 8, !tbaa !59 ; 2 uses
  %i.z = icmp ugt i32 %i.u, 2
  br i1 %i.z, label %.lr.ph.i.i.preheader, label %_ZL20complex_default_implP8PJconstsPKN12_GLOBAL__N_16hornerE12PJ_DIRECTION5PJ_UV.exit

.lr.ph.i.i.preheader:                             ; preds = %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i
  %i.aa = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ab = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.02425.i.i = phi ptr [ %i.ad, %.lr.ph.i.i ], [ %i.x, %.lr.ph.i.i.preheader ]
  %i.ac = phi <2 x double> [ %i.aj, %.lr.ph.i.i ], [ %i.y, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.ad = getelementptr inbounds i8, ptr %.02425.i.i, i64 -16 ; 3 uses
  %i.ae = fneg <2 x double> %i.ac
  %i.af = shufflevector <2 x double> %i.ae, <2 x double> %i.ac, <2 x i32> <i32 1, i32 2>
  %i.ag = fmul <2 x double> %i.aa, %i.af
  %i.ah = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ab, <2 x double> %i.ac, <2 x double> %i.ag)
  %i.ai = load <2 x double>, ptr %i.ad, align 8, !tbaa !59
  %i.aj = fadd <2 x double> %i.ah, %i.ai          ; 2 uses
  %i.ak = icmp ugt ptr %i.ad, %i.q
  br i1 %i.ak, label %.lr.ph.i.i, label %_ZL20complex_default_implP8PJconstsPKN12_GLOBAL__N_16hornerE12PJ_DIRECTION5PJ_UV.exit, !llvm.loop !0

_ZL20complex_default_implP8PJconstsPKN12_GLOBAL__N_16hornerE12PJ_DIRECTION5PJ_UV.exit: ; preds = %.lr.ph.i.i, %bb.b, %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i
  %i.al = phi <2 x double> [ splat (double +inf), %bb.b ], [ %i.y, %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i ], [ %i.aj, %.lr.ph.i.i ]
  %i.am = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.am, ptr %0, align 8, !tbaa !59
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
  %i.e = fsub <2 x double> %i.c, %i.d             ; 3 uses
  %i.f = load <2 x i32>, ptr %i.b, align 8, !tbaa !60
  %i.g = icmp eq <2 x i32> %i.f, zeroinitializer
  %i.h = fneg <2 x double> %i.e
  %i.i = select <2 x i1> %i.g, <2 x double> %i.e, <2 x double> %i.h ; 2 uses
  %i.j = getelementptr i8, ptr %i.b, i64 16
  %.val.i = load double, ptr %i.j, align 8, !tbaa !56
  %i.k = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.e)
  %i.l = insertelement <2 x double> poison, double %.val.i, i64 0
  %i.m = shufflevector <2 x double> %i.l, <2 x double> poison, <2 x i32> zeroinitializer
  %i.n = fcmp ogt <2 x double> %i.k, %i.m
  %i.o = bitcast <2 x i1> %i.n to i2
  %.not = icmp eq i2 %i.o, 0
  br i1 %.not, label %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = tail call i32 @proj_errno_set(ptr noundef nonnull %1, i32 noundef 2050) ; 0 uses
  br label %_ZL20complex_default_implP8PJconstsPKN12_GLOBAL__N_16hornerE12PJ_DIRECTION5PJ_UV.exit

_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i: ; preds = %bb.a
  %.in.i = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.q = load ptr, ptr %.in.i, align 8, !tbaa !61 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !46
  %i.t = shl i32 %i.s, 1
  %i.u = add i32 %i.t, 2                          ; 2 uses
  %i.v = zext i32 %i.u to i64
  %.idx.i.i = shl nuw nsw i64 %i.v, 3
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx.i.i
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -16 ; 2 uses
  %i.y = load <2 x double>, ptr %i.x, align 8, !tbaa !59 ; 2 uses
  %i.z = icmp ugt i32 %i.u, 2
  br i1 %i.z, label %.lr.ph.i.i.preheader, label %_ZL20complex_default_implP8PJconstsPKN12_GLOBAL__N_16hornerE12PJ_DIRECTION5PJ_UV.exit

.lr.ph.i.i.preheader:                             ; preds = %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i
  %i.aa = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ab = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.02425.i.i = phi ptr [ %i.ad, %.lr.ph.i.i ], [ %i.x, %.lr.ph.i.i.preheader ]
  %i.ac = phi <2 x double> [ %i.aj, %.lr.ph.i.i ], [ %i.y, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.ad = getelementptr inbounds i8, ptr %.02425.i.i, i64 -16 ; 3 uses
  %i.ae = fneg <2 x double> %i.ac
  %i.af = shufflevector <2 x double> %i.ae, <2 x double> %i.ac, <2 x i32> <i32 1, i32 2>
  %i.ag = fmul <2 x double> %i.aa, %i.af
  %i.ah = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ab, <2 x double> %i.ac, <2 x double> %i.ag)
  %i.ai = load <2 x double>, ptr %i.ad, align 8, !tbaa !59
  %i.aj = fadd <2 x double> %i.ah, %i.ai          ; 2 uses
  %i.ak = icmp ugt ptr %i.ad, %i.q
  br i1 %i.ak, label %.lr.ph.i.i, label %_ZL20complex_default_implP8PJconstsPKN12_GLOBAL__N_16hornerE12PJ_DIRECTION5PJ_UV.exit, !llvm.loop !0

_ZL20complex_default_implP8PJconstsPKN12_GLOBAL__N_16hornerE12PJ_DIRECTION5PJ_UV.exit: ; preds = %.lr.ph.i.i, %bb.b, %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i
  %i.al = phi <2 x double> [ splat (double +inf), %bb.b ], [ %i.y, %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i ], [ %i.aj, %.lr.ph.i.i ]
  %i.am = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.am, ptr %0, align 8, !tbaa !59
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
  %i.j = load double, ptr %i.i, align 8, !tbaa !57
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !47   ; 2 uses
  %i.m = load double, ptr %i.l, align 8, !tbaa !59
  %i.n = fsub double %.sroa.2.0.copyload, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.p = load double, ptr %i.o, align 8, !tbaa !59
  %i.q = fsub double %.sroa.0.0.copyload, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.s = insertelement <2 x double> poison, double %i.j, i64 0
  %i.t = shufflevector <2 x double> %i.s, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %_ZL19complex_horner_evaljPKd5PJ_UVj.exit.i, %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i
  %i.u = phi i32 [ 31, %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i ], [ %i.az, %_ZL19complex_horner_evaljPKd5PJ_UVj.exit.i ] ; 2 uses
  %i.v = phi <2 x double> [ zeroinitializer, %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i ], [ %i.at, %_ZL19complex_horner_evaljPKd5PJ_UVj.exit.i ] ; 7 uses
  %i.w = load ptr, ptr %i.k, align 8, !tbaa !47   ; 4 uses
  %i.x = load i32, ptr %i.r, align 8, !tbaa !46
  %i.y = shl i32 %i.x, 1
  %i.z = add i32 %i.y, 2                          ; 2 uses
  %i.aa = zext i32 %i.z to i64
  %.idx.i.i = shl nuw nsw i64 %i.aa, 3            ; 3 uses
  %.add.i = add nsw i64 %.idx.i.i, -16            ; 2 uses
  %.ptr46.i = getelementptr inbounds i8, ptr %i.w, i64 %.add.i
  %i.ab = load <2 x double>, ptr %.ptr46.i, align 8, !tbaa !59 ; 5 uses
  %i.ac = icmp ugt i32 %i.z, 4
  br i1 %i.ac, label %.lr.ph.i.i.preheader, label %_ZL19complex_horner_evaljPKd5PJ_UVj.exit.i

.lr.ph.i.i.preheader:                             ; preds = %bb.c
  %2 = add nsw i64 %.idx.i.i, -48                 ; 2 uses
  %3 = and i64 %2, 16
  %lcmp.mod.not.not = icmp eq i64 %3, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.prol, label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %.02425.i.add.i.prol = add nsw i64 %.idx.i.i, -32 ; 2 uses
  %.ptr.i.prol = getelementptr inbounds i8, ptr %i.w, i64 %.02425.i.add.i.prol
  %4 = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> zeroinitializer
  %5 = fneg <2 x double> %i.ab
  %6 = shufflevector <2 x double> %5, <2 x double> %i.ab, <2 x i32> <i32 1, i32 2>
  %7 = fmul <2 x double> %4, %6
  %8 = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %9 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %8, <2 x double> %i.ab, <2 x double> %7)
  %10 = load <2 x double>, ptr %.ptr.i.prol, align 8, !tbaa !59
  %11 = fadd <2 x double> %9, %10                 ; 2 uses
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.02425.i.idx.i.unr = phi i64 [ %.add.i, %.lr.ph.i.i.preheader ], [ %.02425.i.add.i.prol, %.lr.ph.i.i.prol ]
  %.unr = phi <2 x double> [ %i.ab, %.lr.ph.i.i.preheader ], [ %11, %.lr.ph.i.i.prol ]
  %.lcssa.unr = phi <2 x double> [ poison, %.lr.ph.i.i.preheader ], [ %11, %.lr.ph.i.i.prol ]
  %12 = icmp eq i64 %2, 0
  br i1 %12, label %_ZL19complex_horner_evaljPKd5PJ_UVj.exit.i, label %.lr.ph.i.i.preheader.a

.lr.ph.i.i.preheader.a:                           ; preds = %.lr.ph.i.i.prol.loopexit
  %13 = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> zeroinitializer
  %14 = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ad = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ae = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.a
  %.02425.i.idx.i = phi i64 [ %.02425.i.idx.i.unr, %.lr.ph.i.i.preheader.a ], [ %.02425.i.add.i, %.lr.ph.i.i ] ; 3 uses
  %i.af = phi <2 x double> [ %.unr, %.lr.ph.i.i.preheader.a ], [ %i.al, %.lr.ph.i.i ] ; 3 uses
  %15 = getelementptr i8, ptr %i.w, i64 %.02425.i.idx.i
  %.ptr.i = getelementptr i8, ptr %15, i64 -16
  %16 = fneg <2 x double> %i.af
  %17 = shufflevector <2 x double> %16, <2 x double> %i.af, <2 x i32> <i32 1, i32 2>
  %18 = fmul <2 x double> %13, %17
  %19 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %14, <2 x double> %i.af, <2 x double> %18)
  %20 = load <2 x double>, ptr %.ptr.i, align 8, !tbaa !59
  %21 = fadd <2 x double> %19, %20                ; 3 uses
  %.02425.i.add.i = add nsw i64 %.02425.i.idx.i, -32 ; 2 uses
  %.ptr.i.a = getelementptr inbounds i8, ptr %i.w, i64 %.02425.i.add.i
  %i.ag = fneg <2 x double> %21
  %i.ah = shufflevector <2 x double> %i.ag, <2 x double> %21, <2 x i32> <i32 1, i32 2>
  %i.ai = fmul <2 x double> %i.ad, %i.ah
  %i.aj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ae, <2 x double> %21, <2 x double> %i.ai)
  %i.ak = load <2 x double>, ptr %.ptr.i.a, align 8, !tbaa !59
  %i.al = fadd <2 x double> %i.aj, %i.ak          ; 2 uses
  %i.am = icmp sgt i64 %.02425.i.idx.i, 48
  br i1 %i.am, label %.lr.ph.i.i, label %_ZL19complex_horner_evaljPKd5PJ_UVj.exit.i, !llvm.loop !0

_ZL19complex_horner_evaljPKd5PJ_UVj.exit.i:       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.c
  %22 = phi <2 x double> [ %i.ab, %bb.c ], [ %.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.al, %.lr.ph.i.i ] ; 2 uses
  %i.an = extractelement <2 x double> %22, i64 0
  %i.ao = extractelement <2 x double> %22, i64 1
  %i.ap = tail call noundef { double, double } @__divdc3(double noundef %i.n, double noundef %i.q, double noundef %i.an, double noundef %i.ao) #10 ; 2 uses
  %i.aq = extractvalue { double, double } %i.ap, 0
  %i.ar = extractvalue { double, double } %i.ap, 1
  %i.as = insertelement <2 x double> poison, double %i.ar, i64 0
  %i.at = insertelement <2 x double> %i.as, double %i.aq, i64 1 ; 4 uses
  %i.au = fsub <2 x double> %i.at, %i.v
  %i.av = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.au)
  %i.aw = fcmp uge <2 x double> %i.av, %i.t
  %i.ax = bitcast <2 x i1> %i.aw to i2
  %i.ay = icmp eq i2 %i.ax, 0                     ; 2 uses
  %i.az = add nsw i32 %i.u, -1
  %i.ba = icmp eq i32 %i.u, 0
  %.not35.i = select i1 %i.ba, i1 true, i1 %i.ay
  br i1 %.not35.i, label %bb.d, label %bb.c, !llvm.loop !72

bb.d:                                             ; preds = %_ZL19complex_horner_evaljPKd5PJ_UVj.exit.i
  br i1 %i.ay, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bb = tail call i32 @proj_errno_set(ptr noundef %1, i32 noundef 2048) ; 0 uses
  br label %_ZL30complex_iterative_inverse_implP8PJconstsPKN12_GLOBAL__N_16hornerE5PJ_UV.exit

bb.f:                                             ; preds = %bb.d
  %i.bc = fneg <2 x double> %i.at
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !53
  %i.bf = load <2 x i32>, ptr %i.b, align 8, !tbaa !60
  %i.bg = icmp eq <2 x i32> %i.bf, zeroinitializer
  %i.bh = select <2 x i1> %i.bg, <2 x double> %i.at, <2 x double> %i.bc
  %i.bi = load <2 x double>, ptr %i.be, align 8, !tbaa !59
  %i.bj = fadd <2 x double> %i.bh, %i.bi
  br label %_ZL30complex_iterative_inverse_implP8PJconstsPKN12_GLOBAL__N_16hornerE5PJ_UV.exit

_ZL30complex_iterative_inverse_implP8PJconstsPKN12_GLOBAL__N_16hornerE5PJ_UV.exit: ; preds = %bb.b, %bb.e, %bb.f
  %i.bk = phi <2 x double> [ splat (double +inf), %bb.b ], [ %i.bj, %bb.f ], [ splat (double +inf), %bb.e ]
  store <2 x double> %i.bk, ptr %0, align 8, !tbaa !59
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
  %i.e = fsub <2 x double> %i.c, %i.d             ; 3 uses
  %i.f = getelementptr i8, ptr %i.b, i64 16
  %.val.i = load double, ptr %i.f, align 8, !tbaa !56
  %i.g = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.e)
  %i.h = insertelement <2 x double> poison, double %.val.i, i64 0
  %i.i = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> zeroinitializer
  %i.j = fcmp ogt <2 x double> %i.g, %i.i
  %i.k = bitcast <2 x i1> %i.j to i2
  %.not = icmp eq i2 %i.k, 0
  br i1 %.not, label %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = tail call i32 @proj_errno_set(ptr noundef nonnull %1, i32 noundef 2050) ; 0 uses
  br label %_ZL17real_default_implP8PJconstsPKN12_GLOBAL__N_16hornerE12PJ_DIRECTION5PJ_UV.exit

_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i: ; preds = %bb.a
  %.in.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.m = load ptr, ptr %.in.i, align 8, !tbaa !61
  %.in29.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.n = load ptr, ptr %.in29.i, align 8, !tbaa !61
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !46   ; 5 uses
  %i.q = add i32 %i.p, 1
  %i.r = add i32 %i.p, 2
  %i.s = mul i32 %i.q, %i.r
  %i.t = lshr i32 %i.s, 1
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.u ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -8
  %i.y = load double, ptr %i.x, align 8, !tbaa !59
  %i.z = getelementptr inbounds i8, ptr %i.v, i64 -8
  %i.aa = load double, ptr %i.z, align 8, !tbaa !59
  %.not.i = icmp eq i32 %i.p, 0
  %i.ab = insertelement <2 x double> poison, double %i.y, i64 0
  %i.ac = insertelement <2 x double> %i.ab, double %i.aa, i64 1 ; 2 uses
  br i1 %.not.i, label %_ZL17real_default_implP8PJconstsPKN12_GLOBAL__N_16hornerE12PJ_DIRECTION5PJ_UV.exit, label %.lr.ph55.i.i.preheader

.lr.ph55.i.i.preheader:                           ; preds = %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i
  %i.ad = shufflevector <2 x double> %i.e, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  br label %.lr.ph55.i.i

.lr.ph55.i.i:                                     ; preds = %.lr.ph55.i.i.preheader, %._crit_edge.i.loopexit.i
  %.03453.i.i = phi i32 [ %i.ao, %._crit_edge.i.loopexit.i ], [ %i.p, %.lr.ph55.i.i.preheader ] ; 2 uses
  %i.ae = phi ptr [ %.142.i.i, %._crit_edge.i.loopexit.i ], [ %i.v, %.lr.ph55.i.i.preheader ]
  %i.af = phi ptr [ %.13941.i.i, %._crit_edge.i.loopexit.i ], [ %i.w, %.lr.ph55.i.i.preheader ]
  %i.ag = phi <2 x double> [ %i.an, %._crit_edge.i.loopexit.i ], [ %i.ac, %.lr.ph55.i.i.preheader ]
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 -16 ; 2 uses
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !59
  %i.aj = getelementptr inbounds i8, ptr %i.ae, i64 -16 ; 2 uses
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !59
  %i.al = insertelement <2 x double> poison, double %i.ai, i64 0
  %i.am = insertelement <2 x double> %i.al, double %i.ak, i64 1
  br label %.lr.ph.i.i

._crit_edge.i.loopexit.i:                         ; preds = %.lr.ph.i.i
  %i.an = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.e, <2 x double> %i.ag, <2 x double> %i.aw) ; 2 uses
  %i.ao = add i32 %.03453.i.i, -1                 ; 2 uses
  %.not30.i = icmp eq i32 %i.ao, 0
  br i1 %.not30.i, label %_ZL17real_default_implP8PJconstsPKN12_GLOBAL__N_16hornerE12PJ_DIRECTION5PJ_UV.exit, label %.lr.ph55.i.i, !llvm.loop !1

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph55.i.i
  %.045.i.i = phi i32 [ %i.ax, %.lr.ph.i.i ], [ %i.p, %.lr.ph55.i.i ]
  %.142.i.i = phi ptr [ %i.as, %.lr.ph.i.i ], [ %i.aj, %.lr.ph55.i.i ] ; 2 uses
  %.13941.i.i = phi ptr [ %i.aq, %.lr.ph.i.i ], [ %i.ah, %.lr.ph55.i.i ] ; 2 uses
  %i.ap = phi <2 x double> [ %i.aw, %.lr.ph.i.i ], [ %i.am, %.lr.ph55.i.i ]
  %i.aq = getelementptr inbounds i8, ptr %.13941.i.i, i64 -8 ; 2 uses
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !59
  %i.as = getelementptr inbounds i8, ptr %.142.i.i, i64 -8 ; 2 uses
  %i.at = load double, ptr %i.as, align 8, !tbaa !59
  %i.au = insertelement <2 x double> poison, double %i.ar, i64 0
  %i.av = insertelement <2 x double> %i.au, double %i.at, i64 1
  %i.aw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ad, <2 x double> %i.ap, <2 x double> %i.av) ; 2 uses
  %i.ax = add i32 %.045.i.i, -1                   ; 2 uses
  %.not.i.i = icmp ult i32 %i.ax, %.03453.i.i
  br i1 %.not.i.i, label %._crit_edge.i.loopexit.i, label %.lr.ph.i.i, !llvm.loop !2

_ZL17real_default_implP8PJconstsPKN12_GLOBAL__N_16hornerE12PJ_DIRECTION5PJ_UV.exit: ; preds = %._crit_edge.i.loopexit.i, %bb.b, %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i
  %i.ay = phi <2 x double> [ splat (double +inf), %bb.b ], [ %i.ac, %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i ], [ %i.an, %._crit_edge.i.loopexit.i ]
  %i.az = shufflevector <2 x double> %i.ay, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.az, ptr %0, align 8, !tbaa !59
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
  %i.e = fsub <2 x double> %i.c, %i.d             ; 3 uses
  %i.f = getelementptr i8, ptr %i.b, i64 16
  %.val.i = load double, ptr %i.f, align 8, !tbaa !56
  %i.g = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.e)
  %i.h = insertelement <2 x double> poison, double %.val.i, i64 0
  %i.i = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> zeroinitializer
  %i.j = fcmp ogt <2 x double> %i.g, %i.i
  %i.k = bitcast <2 x i1> %i.j to i2
  %.not = icmp eq i2 %i.k, 0
  br i1 %.not, label %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = tail call i32 @proj_errno_set(ptr noundef nonnull %1, i32 noundef 2050) ; 0 uses
  br label %_ZL17real_default_implP8PJconstsPKN12_GLOBAL__N_16hornerE12PJ_DIRECTION5PJ_UV.exit

_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i: ; preds = %bb.a
  %.in.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.m = load ptr, ptr %.in.i, align 8, !tbaa !61
  %.in29.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.n = load ptr, ptr %.in29.i, align 8, !tbaa !61
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !46   ; 5 uses
  %i.q = add i32 %i.p, 1
  %i.r = add i32 %i.p, 2
  %i.s = mul i32 %i.q, %i.r
  %i.t = lshr i32 %i.s, 1
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.u ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -8
  %i.y = load double, ptr %i.x, align 8, !tbaa !59
  %i.z = getelementptr inbounds i8, ptr %i.v, i64 -8
  %i.aa = load double, ptr %i.z, align 8, !tbaa !59
  %.not.i = icmp eq i32 %i.p, 0
  %i.ab = insertelement <2 x double> poison, double %i.y, i64 0
  %i.ac = insertelement <2 x double> %i.ab, double %i.aa, i64 1 ; 2 uses
  br i1 %.not.i, label %_ZL17real_default_implP8PJconstsPKN12_GLOBAL__N_16hornerE12PJ_DIRECTION5PJ_UV.exit, label %.lr.ph55.i.i.preheader

.lr.ph55.i.i.preheader:                           ; preds = %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i
  %i.ad = shufflevector <2 x double> %i.e, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  br label %.lr.ph55.i.i

.lr.ph55.i.i:                                     ; preds = %.lr.ph55.i.i.preheader, %._crit_edge.i.loopexit.i
  %.03453.i.i = phi i32 [ %i.ao, %._crit_edge.i.loopexit.i ], [ %i.p, %.lr.ph55.i.i.preheader ] ; 2 uses
  %i.ae = phi ptr [ %.142.i.i, %._crit_edge.i.loopexit.i ], [ %i.v, %.lr.ph55.i.i.preheader ]
  %i.af = phi ptr [ %.13941.i.i, %._crit_edge.i.loopexit.i ], [ %i.w, %.lr.ph55.i.i.preheader ]
  %i.ag = phi <2 x double> [ %i.an, %._crit_edge.i.loopexit.i ], [ %i.ac, %.lr.ph55.i.i.preheader ]
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 -16 ; 2 uses
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !59
  %i.aj = getelementptr inbounds i8, ptr %i.ae, i64 -16 ; 2 uses
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !59
  %i.al = insertelement <2 x double> poison, double %i.ai, i64 0
  %i.am = insertelement <2 x double> %i.al, double %i.ak, i64 1
  br label %.lr.ph.i.i

._crit_edge.i.loopexit.i:                         ; preds = %.lr.ph.i.i
  %i.an = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.e, <2 x double> %i.ag, <2 x double> %i.aw) ; 2 uses
  %i.ao = add i32 %.03453.i.i, -1                 ; 2 uses
  %.not30.i = icmp eq i32 %i.ao, 0
end_hunk_0
