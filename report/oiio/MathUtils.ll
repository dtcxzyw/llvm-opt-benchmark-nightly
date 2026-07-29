inline.NumInlined: 58
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN16OpenColorIO_v2_513IsM44IdentityIdEEbPKT_:bb.a
  %i.jt = sub nuw i32 -2147483648, %i.js
  %i.ju = icmp slt i32 %i.jm, 0
  %i.jv = select i1 %i.ju, i32 %i.jt, i32 %i.jr   ; 3 uses
  %i.jw = icmp ult i32 %i.jv, -1082130432
  %i.jx = sub nuw i32 -1082130432, %i.jv
  %i.jy = add i32 %i.jv, 1082130432
  %i.jz = select i1 %i.jw, i32 %i.jx, i32 %i.jy
  %i.ka = icmp ult i32 %i.jz, 3
  br i1 %i.ka, label %.critedge20, label %.critedge20.loopexit

.critedge20.loopexit:                             ; preds = %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIdEEbT_.exit.3.3, %bb.m, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.2.3, %bb.l, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.1.3, %bb.k, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.335, %.critedge.2, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.3.2, %bb.j, %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIdEEbT_.exit.2.2, %bb.i, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.1.2, %bb.h, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.233, %.critedge.1, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.3.1, %bb.g, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.2.1, %bb.f, %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIdEEbT_.exit.1.1, %bb.e, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.131, %.critedge, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.3, %bb.d, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.2, %bb.c, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.1, %bb.b, %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIdEEbT_.exit, %bb.a
  br label %.critedge20

.critedge20:                                      ; preds = %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIdEEbT_.exit.3.3, %.critedge20.loopexit
  %i.kb = phi i1 [ false, %.critedge20.loopexit ], [ true, %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIdEEbT_.exit.3.3 ]
  ret i1 %i.kb
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef float @_ZN16OpenColorIO_v2_520GetSafeScalarInverseEff(float noundef %0, float noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = bitcast float %0 to i32                  ; 2 uses
  %i.b = and i32 %i.a, 2139095040
  %i.c = icmp eq i32 %i.b, 2139095040
  br i1 %i.c, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.thread, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit

_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.thread: ; preds = %bb.a
  %i.d = fdiv float 1.000000e+00, %0
  br label %bb.c

_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit: ; preds = %bb.a
  %i.e = tail call float @llvm.fabs.f32(float %0) ; 2 uses
  %i.f = fneg float %i.e
  %i.g = bitcast float %i.f to i32
  %i.h = bitcast float %i.e to i32
  %i.i = sub nuw i32 -2147483648, %i.h
  %i.j = icmp slt i32 %i.a, 0
  %i.k = select i1 %i.j, i32 %i.i, i32 %i.g       ; 3 uses
  %i.l = sub nuw i32 -2147483648, %i.k
  %i.m = xor i32 %i.k, -2147483648
  %i.n = icmp slt i32 %i.k, 0
  %i.o = select i1 %i.n, i32 %i.m, i32 %i.l
  %.fr = freeze i32 %i.o
  %i.p = icmp ult i32 %.fr, 3
  %i.q = fdiv float 1.000000e+00, %0
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit
  br label %bb.c

bb.c:                                             ; preds = %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.thread, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit, %bb.b
  %i.r = phi float [ %1, %bb.b ], [ %i.q, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit ], [ %i.d, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.thread ]
  ret float %i.r
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZN16OpenColorIO_v2_515VecContainsZeroEPKfi(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.thread ] ; 2 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.c = load float, ptr %i.b, align 4, !tbaa !9  ; 2 uses
  %i.d = bitcast float %i.c to i32                ; 2 uses
  %i.e = and i32 %i.d, 2139095040
  %i.f = icmp eq i32 %i.e, 2139095040
  br i1 %i.f, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.thread, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit

_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit: ; preds = %.lr.ph
  %i.g = tail call float @llvm.fabs.f32(float %i.c) ; 2 uses
  %i.h = fneg float %i.g
  %i.i = bitcast float %i.h to i32
  %i.j = bitcast float %i.g to i32
  %i.k = sub nuw i32 -2147483648, %i.j
  %i.l = icmp slt i32 %i.d, 0
  %i.m = select i1 %i.l, i32 %i.k, i32 %i.i       ; 3 uses
  %i.n = sub nuw i32 -2147483648, %i.m
  %i.o = xor i32 %i.m, -2147483648
  %i.p = icmp slt i32 %i.m, 0
  %i.q = select i1 %i.p, i32 %i.o, i32 %i.n
  %i.r = icmp ult i32 %i.q, 3
  br i1 %i.r, label %._crit_edge, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.thread

_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.thread: ; preds = %.lr.ph, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !18

._crit_edge:                                      ; preds = %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.thread, %bb.a
  %.lcssa = phi i1 [ false, %bb.a ], [ false, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.thread ], [ true, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit ]
  ret i1 %.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZN16OpenColorIO_v2_514VecContainsOneEPKfi(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIfEEbT_.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIfEEbT_.exit.thread ] ; 2 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.c = load float, ptr %i.b, align 4, !tbaa !9  ; 2 uses
  %i.d = bitcast float %i.c to i32                ; 2 uses
  %i.e = and i32 %i.d, 2139095040
  %i.f = icmp eq i32 %i.e, 2139095040
  br i1 %i.f, label %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIfEEbT_.exit.thread, label %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIfEEbT_.exit

_ZN16OpenColorIO_v2_518IsScalarEqualToOneIfEEbT_.exit: ; preds = %.lr.ph
  %i.g = tail call float @llvm.fabs.f32(float %i.c) ; 2 uses
  %i.h = fneg float %i.g
  %i.i = bitcast float %i.h to i32
  %i.j = bitcast float %i.g to i32
  %i.k = sub nuw i32 -2147483648, %i.j
  %i.l = icmp slt i32 %i.d, 0
  %i.m = select i1 %i.l, i32 %i.k, i32 %i.i       ; 3 uses
  %i.n = icmp ult i32 %i.m, -1082130432
  %i.o = sub nuw i32 -1082130432, %i.m
  %i.p = add nsw i32 %i.m, 1082130432
  %i.q = select i1 %i.n, i32 %i.o, i32 %i.p
  %i.r = icmp ult i32 %i.q, 3
  br i1 %i.r, label %._crit_edge, label %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIfEEbT_.exit.thread

_ZN16OpenColorIO_v2_518IsScalarEqualToOneIfEEbT_.exit.thread: ; preds = %.lr.ph, %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIfEEbT_.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !19

._crit_edge:                                      ; preds = %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIfEEbT_.exit, %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIfEEbT_.exit.thread, %bb.a
  %.lcssa = phi i1 [ false, %bb.a ], [ false, %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIfEEbT_.exit.thread ], [ true, %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIfEEbT_.exit ]
  ret i1 %.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef double @_ZN16OpenColorIO_v2_515ClampToNormHalfEd(double noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = fcmp olt double %0, -6.550400e+04
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call double @llvm.fabs.f64(double %0)
  %or.cond = fcmp olt double %i.b, f0x3F0FFFFFFF8F68F6
  br i1 %or.cond, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = fcmp ogt double %0, 6.550400e+04
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.a, %bb.c, %bb.d
  %.0 = phi double [ %0, %bb.c ], [ 0.000000e+00, %bb.b ], [ 6.550400e+04, %bb.d ], [ -6.550400e+04, %bb.a ]
  ret double %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef float @_ZN16OpenColorIO_v2_522ConvertHalfBitsToFloatEt(i16 noundef zeroext %0) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @imath_half_to_float_table, align 8, !tbaa !20
  %i.b = zext i16 %0 to i64
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.b
  %i.d = load float, ptr %i.c, align 4, !tbaa !23
  ret float %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef float @_ZN16OpenColorIO_v2_513SanitizeFloatEf(float noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = fcmp oeq float %0, -inf
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp oeq float %0, +inf
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv = fcmp ord float %0, 0.000000e+00
  %. = select i1 %.inv, float %0, float 0.000000e+00
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi float [ %., %bb.c ], [ f0xFF7FFFFF, %bb.a ], [ f0x7F7FFFFF, %bb.b ]
  ret float %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden noundef zeroext i1 @_ZN16OpenColorIO_v2_513GetM44InverseEPfPKf(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = load float, ptr %1, align 4, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.d = load float, ptr %i.c, align 4, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load float, ptr %i.e, align 4, !tbaa !9
  %2 = insertelement <2 x float> poison, float %i.f, i64 0
  %3 = insertelement <2 x float> %2, float %i.a, i64 1
  %4 = fpext <2 x float> %3 to <2 x double>       ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.i = load float, ptr %i.h, align 4, !tbaa !9
  %i.j = load <2 x float>, ptr %i.b, align 4, !tbaa !9 ; 2 uses
  %i.k = load <2 x float>, ptr %i.g, align 4, !tbaa !9 ; 2 uses
  %i.l = shufflevector <2 x float> %i.k, <2 x float> %i.j, <2 x i32> <i32 0, i32 2>
  %i.m = fpext <2 x float> %i.l to <2 x double>   ; 8 uses
  %i.n = shufflevector <2 x float> %i.k, <2 x float> %i.j, <2 x i32> <i32 1, i32 3>
  %i.o = fpext <2 x float> %i.n to <2 x double>   ; 8 uses
  %i.p = insertelement <2 x float> poison, float %i.i, i64 0
  %i.q = insertelement <2 x float> %i.p, float %i.d, i64 1
  %i.r = fpext <2 x float> %i.q to <2 x double>   ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %5 = load <2 x float>, ptr %i.t, align 4, !tbaa !9
  %6 = fpext <2 x float> %5 to <2 x double>       ; 8 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.v = load float, ptr %i.u, align 4, !tbaa !9
  %i.w = fpext float %i.v to double               ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 52
  %7 = load <2 x float>, ptr %i.x, align 4, !tbaa !9
  %8 = fpext <2 x float> %7 to <2 x double>       ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 60
  %9 = load float, ptr %i.y, align 4, !tbaa !9
  %10 = fpext float %9 to double                  ; 5 uses
  %11 = shufflevector <2 x double> %6, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %12 = extractelement <2 x double> %6, i64 0     ; 2 uses
  %i.z = shufflevector <2 x double> %i.m, <2 x double> %i.o, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.aa = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ab = load <2 x float>, ptr %i.s, align 4, !tbaa !9
  %i.ac = fpext <2 x float> %i.ab to <2 x double> ; 6 uses
  %i.ad = fneg <2 x double> %i.ac                 ; 4 uses
  %i.ae = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> zeroinitializer
  %i.af = fmul <2 x double> %i.z, %i.ae
  %13 = shufflevector <2 x double> %i.ac, <2 x double> %6, <2 x i32> <i32 1, i32 2>
  %i.ag = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aa, <2 x double> %13, <2 x double> %i.af) ; 5 uses
  %i.ah = shufflevector <2 x double> %i.r, <2 x double> %i.o, <2 x i32> <i32 0, i32 2>
  %i.ai = fmul <2 x double> %i.ah, %i.ad
  %14 = shufflevector <2 x double> %4, <2 x double> %i.m, <2 x i32> <i32 0, i32 2>
  %i.aj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %14, <2 x double> %11, <2 x double> %i.ai) ; 5 uses
  %i.ak = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> zeroinitializer
  %15 = shufflevector <2 x double> %i.ac, <2 x double> %6, <2 x i32> <i32 1, i32 2>
  %i.al = fneg <2 x double> %15
  %i.am = fmul <2 x double> %i.ak, %i.al
  %16 = shufflevector <2 x double> %6, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.an = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.z, <2 x double> %16, <2 x double> %i.am) ; 5 uses
  %i.ao = extractelement <2 x double> %i.an, i64 0
  %i.ap = fneg double %i.ao
  %i.aq = extractelement <2 x double> %8, i64 1   ; 2 uses
  %i.ar = fmul double %i.aq, %i.ap
  %i.as = extractelement <2 x double> %8, i64 0   ; 2 uses
  %17 = extractelement <2 x double> %i.an, i64 1
  %18 = tail call double @llvm.fmuladd.f64(double %i.as, double %17, double %i.ar)
  %i.at = extractelement <2 x double> %i.ag, i64 1
  %i.au = fneg double %i.at                       ; 2 uses
  %i.av = fmul double %10, %i.au
  %i.aw = extractelement <2 x double> %i.aj, i64 0
  %19 = shufflevector <2 x double> %8, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %20 = insertelement <2 x double> %19, double %10, i64 1
  %i.ax = insertelement <2 x double> poison, double %i.av, i64 0
  %i.ay = insertelement <2 x double> %i.ax, double %18, i64 1
  %i.az = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %20, <2 x double> %i.aj, <2 x double> %i.ay) ; 3 uses
  %i.ba = fneg double %i.w                        ; 3 uses
  %i.bb = fneg double %i.aw                       ; 2 uses
  %i.bc = fmul double %i.as, %i.bb
  %i.bd = insertelement <2 x double> poison, double %i.w, i64 0
  %i.be = insertelement <2 x double> %i.bd, double %i.ba, i64 1
  %i.bf = shufflevector <2 x double> %i.az, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.bg = insertelement <2 x double> %i.bf, double %i.bc, i64 0
  %i.bh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.be, <2 x double> %i.an, <2 x double> %i.bg) ; 3 uses
  %i.bi = extractelement <2 x double> %i.ag, i64 0
  %21 = fneg double %i.bi                         ; 2 uses
  %22 = fmul double %i.aq, %21
  %23 = insertelement <2 x double> %19, double %10, i64 0
  %24 = insertelement <2 x double> %i.bh, double %22, i64 1
  %25 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %23, <2 x double> %i.ag, <2 x double> %24) ; 3 uses
  %foldExtExtBinop = fmul <2 x double> %i.bh, %i.m
  %i.bj = insertelement <2 x double> %i.az, double %i.ba, i64 0
  %26 = shufflevector <2 x double> %i.aj, <2 x double> %4, <2 x i32> <i32 1, i32 3>
  %i.bk = shufflevector <2 x double> %25, <2 x double> %foldExtExtBinop, <2 x i32> <i32 1, i32 3>
  %27 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bj, <2 x double> %26, <2 x double> %i.bk) ; 3 uses
  %28 = extractelement <2 x double> %i.o, i64 1
  %i.bl = extractelement <2 x double> %25, i64 0
  %i.bm = extractelement <2 x double> %27, i64 1
  %i.bn = tail call double @llvm.fmuladd.f64(double %i.bl, double %28, double %i.bm)
  %i.bo = extractelement <2 x double> %i.r, i64 1
  %i.bp = extractelement <2 x double> %27, i64 0
  %i.bq = tail call double @llvm.fmuladd.f64(double %i.bp, double %i.bo, double %i.bn) ; 2 uses
  %i.br = fptrunc double %i.bq to float           ; 2 uses
  %i.bs = bitcast float %i.br to i32              ; 2 uses
  %i.bt = and i32 %i.bs, 2139095040
  %i.bu = icmp eq i32 %i.bt, 2139095040
  br i1 %i.bu, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.thread, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit

_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit: ; preds = %bb.a
  %i.bv = tail call float @llvm.fabs.f32(float %i.br) ; 2 uses
  %i.bw = fneg float %i.bv
  %i.bx = bitcast float %i.bw to i32
  %i.by = bitcast float %i.bv to i32
  %i.bz = sub nuw i32 -2147483648, %i.by
  %i.ca = icmp slt i32 %i.bs, 0
  %i.cb = select i1 %i.ca, i32 %i.bz, i32 %i.bx   ; 3 uses
  %i.cc = sub nuw i32 -2147483648, %i.cb
  %i.cd = xor i32 %i.cb, -2147483648
  %i.ce = icmp slt i32 %i.cb, 0
  %i.cf = select i1 %i.ce, i32 %i.cd, i32 %i.cc
  %i.cg = icmp ult i32 %i.cf, 3
  br i1 %i.cg, label %bb.b, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.thread

_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.thread: ; preds = %bb.a, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit
  %i.ch = fdiv double 1.000000e+00, %i.bq
  %29 = shufflevector <2 x double> %i.m, <2 x double> %i.o, <2 x i32> <i32 1, i32 3> ; 2 uses
  %30 = insertelement <2 x double> poison, double %i.ba, i64 0 ; 2 uses
  %31 = shufflevector <2 x double> %30, <2 x double> poison, <2 x i32> zeroinitializer
  %32 = fmul <2 x double> %29, %31
  %33 = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %34 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %33, <2 x double> %8, <2 x double> %32) ; 5 uses
  %35 = shufflevector <2 x double> %i.r, <2 x double> %i.o, <2 x i32> <i32 1, i32 3>
  %36 = shufflevector <2 x double> %4, <2 x double> %i.m, <2 x i32> <i32 1, i32 3>
  %37 = insertelement <2 x double> %8, double %10, i64 0
  %38 = fneg <2 x double> %8                      ; 2 uses
  %39 = shufflevector <2 x double> %30, <2 x double> %38, <2 x i32> <i32 0, i32 2>
  %40 = fmul <2 x double> %35, %39
  %41 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %36, <2 x double> %37, <2 x double> %40) ; 5 uses
  %42 = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %43 = fmul <2 x double> %42, %38
  %44 = insertelement <2 x double> poison, double %10, i64 0
  %45 = shufflevector <2 x double> %44, <2 x double> poison, <2 x i32> zeroinitializer
  %46 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %29, <2 x double> %45, <2 x double> %43) ; 5 uses
  %47 = extractelement <2 x double> %46, i64 0
  %48 = fneg double %47
  %49 = fmul double %12, %48
  %50 = extractelement <2 x double> %46, i64 1
  %51 = extractelement <2 x double> %i.ac, i64 1  ; 2 uses
  %52 = tail call double @llvm.fmuladd.f64(double %51, double %50, double %49)
  %53 = extractelement <2 x double> %41, i64 1
  %54 = extractelement <2 x double> %34, i64 1
  %55 = fneg double %54                           ; 2 uses
  %56 = extractelement <2 x double> %6, i64 1
  %57 = fmul double %56, %55
  %i.ci = extractelement <2 x double> %41, i64 0
  %58 = insertelement <2 x double> poison, double %57, i64 0
  %i.cj = insertelement <2 x double> %58, double %52, i64 1
  %59 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %6, <2 x double> %41, <2 x double> %i.cj) ; 2 uses
  %60 = fneg double %i.ci                         ; 2 uses
  %61 = fmul double %51, %60
  %62 = shufflevector <2 x double> %i.ad, <2 x double> %i.ac, <2 x i32> <i32 2, i32 0>
  %63 = shufflevector <2 x double> %59, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ck = insertelement <2 x double> %63, double %61, i64 0
  %i.cl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %62, <2 x double> %46, <2 x double> %i.ck) ; 2 uses
  %64 = extractelement <2 x double> %34, i64 0
  %65 = fneg double %64                           ; 2 uses
  %66 = fmul double %12, %65
  %67 = shufflevector <2 x double> %6, <2 x double> %i.ac, <2 x i32> <i32 1, i32 3>
  %68 = insertelement <2 x double> %i.cl, double %66, i64 1
  %69 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %67, <2 x double> %34, <2 x double> %68) ; 2 uses
  %70 = extractelement <2 x double> %69, i64 1
  %71 = extractelement <2 x double> %i.ad, i64 0
  %72 = tail call double @llvm.fmuladd.f64(double %71, double %53, double %70)
  %73 = fneg <2 x double> %i.m
  %74 = shufflevector <2 x double> %i.aj, <2 x double> %41, <2 x i32> <i32 3, i32 1> ; 2 uses
  %i.cm = fneg <2 x double> %74
  %i.cn = fmul <2 x double> %i.r, %i.cm
  %75 = shufflevector <2 x double> %46, <2 x double> %i.an, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.co = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.o, <2 x double> %75, <2 x double> %i.cn)
  %76 = shufflevector <2 x double> %i.an, <2 x double> %46, <2 x i32> <i32 3, i32 1> ; 2 uses
  %i.cp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %73, <2 x double> %76, <2 x double> %i.co)
  %77 = insertelement <4 x double> poison, double %i.ch, i64 0
  %78 = shufflevector <4 x double> %77, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %79 = shufflevector <2 x double> %i.az, <2 x double> %59, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %80 = shufflevector <2 x double> %i.cp, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %81 = shufflevector <4 x double> %79, <4 x double> %80, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %82 = fmul <4 x double> %78, %81
  %83 = fptrunc <4 x double> %82 to <4 x float>
  store <4 x float> %83, ptr %0, align 4, !tbaa !9
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cq = insertelement <2 x double> poison, double %60, i64 0
  %i.cr = insertelement <2 x double> %i.cq, double %i.bb, i64 1
  %i.cs = fmul <2 x double> %i.cr, %i.o
  %85 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %4, <2 x double> %76, <2 x double> %i.cs)
  %86 = shufflevector <2 x double> %i.ag, <2 x double> %34, <2 x i32> <i32 3, i32 1>
  %i.ct = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.r, <2 x double> %86, <2 x double> %85)
  %87 = shufflevector <2 x double> %i.bh, <2 x double> %i.cl, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %88 = shufflevector <2 x double> %i.ct, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %89 = shufflevector <4 x double> %87, <4 x double> %88, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %90 = fmul <4 x double> %78, %89
  %91 = fptrunc <4 x double> %90 to <4 x float>
  store <4 x float> %91, ptr %84, align 4, !tbaa !9
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %93 = insertelement <2 x double> poison, double %65, i64 0
  %94 = insertelement <2 x double> %93, double %21, i64 1
  %95 = fmul <2 x double> %94, %i.r
  %96 = shufflevector <2 x double> %41, <2 x double> %i.aj, <2 x i32> <i32 0, i32 2>
  %97 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.m, <2 x double> %96, <2 x double> %95)
  %98 = fneg <2 x double> %4
  %99 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %98, <2 x double> %75, <2 x double> %97)
  %100 = shufflevector <2 x double> %25, <2 x double> %69, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %101 = shufflevector <2 x double> %99, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %102 = shufflevector <4 x double> %100, <4 x double> %101, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.cu = fmul <4 x double> %78, %102
  %i.cv = fptrunc <4 x double> %i.cu to <4 x float>
  store <4 x float> %i.cv, ptr %92, align 4, !tbaa !9
  %103 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %104 = insertelement <2 x double> poison, double %55, i64 0
  %105 = insertelement <2 x double> %104, double %i.au, i64 1
  %106 = fmul <2 x double> %105, %i.m
  %107 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %4, <2 x double> %74, <2 x double> %106)
  %108 = shufflevector <2 x double> %34, <2 x double> %i.ag, <2 x i32> <i32 0, i32 2>
  %109 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.o, <2 x double> %108, <2 x double> %107)
  %110 = shufflevector <2 x double> %27, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %111 = insertelement <4 x double> %110, double %72, i64 1
  %i.cw = shufflevector <2 x double> %109, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cx = shufflevector <4 x double> %111, <4 x double> %i.cw, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.cy = fmul <4 x double> %78, %i.cx
  %i.cz = fptrunc <4 x double> %i.cy to <4 x float>
  store <4 x float> %i.cz, ptr %103, align 4, !tbaa !9
  br label %bb.b

bb.b:                                             ; preds = %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.thread
  %.0 = phi i1 [ false, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit ], [ true, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.thread ]
  ret i1 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN16OpenColorIO_v2_516GetM44M44ProductEPfPKfS2_(ptr nofree noundef writeonly captures(none) initializes((0, 64)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #5 {
bb.a:
  %.sroa.049.0.copyload = load float, ptr %1, align 4
  %.sroa.753.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.753.0.copyload = load float, ptr %.sroa.753.0..sroa_idx, align 4
  %.sroa.1157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.1157.0.copyload = load float, ptr %.sroa.1157.0..sroa_idx, align 4
  %.sroa.1561.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.1561.0.copyload = load float, ptr %.sroa.1561.0..sroa_idx, align 4
  %.sroa.1965.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.1965.0.copyload = load float, ptr %.sroa.1965.0..sroa_idx, align 4
  %.sroa.2369.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.2369.0.copyload = load float, ptr %.sroa.2369.0..sroa_idx, align 4
  %.sroa.2773.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.2773.0.copyload = load float, ptr %.sroa.2773.0..sroa_idx, align 4
  %.sroa.3177.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.3177.0.copyload = load float, ptr %.sroa.3177.0..sroa_idx, align 4
  %.sroa.3581.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.3581.0.copyload = load float, ptr %.sroa.3581.0..sroa_idx, align 4
  %.sroa.3985.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.3985.0.copyload = load float, ptr %.sroa.3985.0..sroa_idx, align 4
  %.sroa.4389.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.4389.0.copyload = load float, ptr %.sroa.4389.0..sroa_idx, align 4
  %.sroa.4793.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.sroa.4793.0.copyload = load float, ptr %.sroa.4793.0..sroa_idx, align 4
  %.sroa.5197.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.5197.0.copyload = load float, ptr %.sroa.5197.0..sroa_idx, align 4
  %.sroa.55101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.55101.0.copyload = load float, ptr %.sroa.55101.0..sroa_idx, align 4
  %.sroa.59105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.59105.0.copyload = load float, ptr %.sroa.59105.0..sroa_idx, align 4
  %.sroa.63109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 60
  %.sroa.63109.0.copyload = load float, ptr %.sroa.63109.0..sroa_idx, align 4
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.51.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.a = load <4 x float>, ptr %2, align 4        ; 4 uses
  %i.b = load <4 x float>, ptr %.sroa.19.0..sroa_idx, align 4 ; 4 uses
  %i.c = load <4 x float>, ptr %.sroa.35.0..sroa_idx, align 4 ; 4 uses
  %i.d = load <4 x float>, ptr %.sroa.51.0..sroa_idx, align 4 ; 4 uses
  %i.e = insertelement <4 x float> poison, float %.sroa.753.0.copyload, i64 0
  %i.f = shufflevector <4 x float> %i.e, <4 x float> poison, <4 x i32> zeroinitializer
  %i.g = fmul <4 x float> %i.f, %i.b
  %i.h = insertelement <4 x float> poison, float %.sroa.049.0.copyload, i64 0
  %i.i = shufflevector <4 x float> %i.h, <4 x float> poison, <4 x i32> zeroinitializer
  %i.j = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.i, <4 x float> %i.a, <4 x float> %i.g)
  %i.k = insertelement <4 x float> poison, float %.sroa.1157.0.copyload, i64 0
  %i.l = shufflevector <4 x float> %i.k, <4 x float> poison, <4 x i32> zeroinitializer
  %i.m = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.l, <4 x float> %i.c, <4 x float> %i.j)
  %i.n = insertelement <4 x float> poison, float %.sroa.1561.0.copyload, i64 0
  %i.o = shufflevector <4 x float> %i.n, <4 x float> poison, <4 x i32> zeroinitializer
  %i.p = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.o, <4 x float> %i.d, <4 x float> %i.m)
  store <4 x float> %i.p, ptr %0, align 4, !tbaa !9
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = insertelement <4 x float> poison, float %.sroa.2369.0.copyload, i64 0
  %i.s = shufflevector <4 x float> %i.r, <4 x float> poison, <4 x i32> zeroinitializer
  %i.t = fmul <4 x float> %i.s, %i.b
  %i.u = insertelement <4 x float> poison, float %.sroa.1965.0.copyload, i64 0
  %i.v = shufflevector <4 x float> %i.u, <4 x float> poison, <4 x i32> zeroinitializer
  %i.w = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.v, <4 x float> %i.a, <4 x float> %i.t)
  %i.x = insertelement <4 x float> poison, float %.sroa.2773.0.copyload, i64 0
  %i.y = shufflevector <4 x float> %i.x, <4 x float> poison, <4 x i32> zeroinitializer
  %i.z = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.y, <4 x float> %i.c, <4 x float> %i.w)
  %i.aa = insertelement <4 x float> poison, float %.sroa.3177.0.copyload, i64 0
  %i.ab = shufflevector <4 x float> %i.aa, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ac = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ab, <4 x float> %i.d, <4 x float> %i.z)
  store <4 x float> %i.ac, ptr %i.q, align 4, !tbaa !9
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = insertelement <4 x float> poison, float %.sroa.3985.0.copyload, i64 0
  %i.af = shufflevector <4 x float> %i.ae, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ag = fmul <4 x float> %i.af, %i.b
  %i.ah = insertelement <4 x float> poison, float %.sroa.3581.0.copyload, i64 0
  %i.ai = shufflevector <4 x float> %i.ah, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ai, <4 x float> %i.a, <4 x float> %i.ag)
  %i.ak = insertelement <4 x float> poison, float %.sroa.4389.0.copyload, i64 0
  %i.al = shufflevector <4 x float> %i.ak, <4 x float> poison, <4 x i32> zeroinitializer
  %i.am = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.c, <4 x float> %i.aj)
  %i.an = insertelement <4 x float> poison, float %.sroa.4793.0.copyload, i64 0
  %i.ao = shufflevector <4 x float> %i.an, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ap = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ao, <4 x float> %i.d, <4 x float> %i.am)
  store <4 x float> %i.ap, ptr %i.ad, align 4, !tbaa !9
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ar = insertelement <4 x float> poison, float %.sroa.55101.0.copyload, i64 0
  %i.as = shufflevector <4 x float> %i.ar, <4 x float> poison, <4 x i32> zeroinitializer
  %i.at = fmul <4 x float> %i.as, %i.b
  %i.au = insertelement <4 x float> poison, float %.sroa.5197.0.copyload, i64 0
  %i.av = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.av, <4 x float> %i.a, <4 x float> %i.at)
  %i.ax = insertelement <4 x float> poison, float %.sroa.59105.0.copyload, i64 0
  %i.ay = shufflevector <4 x float> %i.ax, <4 x float> poison, <4 x i32> zeroinitializer
  %i.az = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ay, <4 x float> %i.c, <4 x float> %i.aw)
  %i.ba = insertelement <4 x float> poison, float %.sroa.63109.0.copyload, i64 0
  %i.bb = shufflevector <4 x float> %i.ba, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bb, <4 x float> %i.d, <4 x float> %i.az)
  store <4 x float> %i.bc, ptr %i.aq, align 4, !tbaa !9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN16OpenColorIO_v2_513GetMxbCombineEPfS0_PKfS2_S2_S2_(ptr nofree noundef writeonly captures(none) initializes((0, 64)) %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #5 {
bb.a:
  %.sroa.725.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.1127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.1529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.017.0.copyload = load float, ptr %3, align 4
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.sroa.418.0.copyload = load float, ptr %.sroa.418.0..sroa_idx, align 4
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.519.0.copyload = load float, ptr %.sroa.519.0..sroa_idx, align 4
  %.sroa.620.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.sroa.620.0.copyload = load float, ptr %.sroa.620.0..sroa_idx, align 4
  %i.a = load <4 x float>, ptr %2, align 4        ; 4 uses
  %i.b = load <4 x float>, ptr %.sroa.725.0..sroa_idx, align 4 ; 4 uses
  %i.c = load <4 x float>, ptr %.sroa.1127.0..sroa_idx, align 4 ; 4 uses
  %i.d = load <4 x float>, ptr %.sroa.1529.0..sroa_idx, align 4 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load <16 x float>, ptr %4, align 4       ; 20 uses
  %i.i = load <4 x float>, ptr %5, align 4
  %i.j = shufflevector <16 x float> %i.h, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %i.k = shufflevector <16 x float> %i.h, <16 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.l = fmul <4 x float> %i.b, %i.k
  %i.m = shufflevector <16 x float> %i.h, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %i.n = shufflevector <16 x float> %i.h, <16 x float> poison, <4 x i32> zeroinitializer
  %i.o = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.n, <4 x float> %i.a, <4 x float> %i.l)
  %i.p = shufflevector <16 x float> %i.h, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %i.q = shufflevector <16 x float> %i.h, <16 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.r = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.q, <4 x float> %i.c, <4 x float> %i.o)
  %i.s = shufflevector <16 x float> %i.h, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.t = shufflevector <16 x float> %i.h, <16 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.u = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.t, <4 x float> %i.d, <4 x float> %i.r)
  store <4 x float> %i.u, ptr %0, align 4, !tbaa !9
  %i.v = shufflevector <16 x float> %i.h, <16 x float> poison, <4 x i32> <i32 5, i32 5, i32 5, i32 5>
  %i.w = fmul <4 x float> %i.b, %i.v
  %i.x = shufflevector <16 x float> %i.h, <16 x float> poison, <4 x i32> <i32 4, i32 4, i32 4, i32 4>
  %i.y = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.x, <4 x float> %i.a, <4 x float> %i.w)
  %i.z = shufflevector <16 x float> %i.h, <16 x float> poison, <4 x i32> <i32 6, i32 6, i32 6, i32 6>
  %i.aa = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.z, <4 x float> %i.c, <4 x float> %i.y)
  %i.ab = shufflevector <16 x float> %i.h, <16 x float> poison, <4 x i32> <i32 7, i32 7, i32 7, i32 7>
  %i.ac = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ab, <4 x float> %i.d, <4 x float> %i.aa)
  store <4 x float> %i.ac, ptr %i.e, align 4, !tbaa !9
  %i.ad = shufflevector <16 x float> %i.h, <16 x float> poison, <4 x i32> <i32 9, i32 9, i32 9, i32 9>
  %i.ae = fmul <4 x float> %i.b, %i.ad
  %i.af = shufflevector <16 x float> %i.h, <16 x float> poison, <4 x i32> <i32 8, i32 8, i32 8, i32 8>
  %i.ag = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.a, <4 x float> %i.ae)
  %i.ah = shufflevector <16 x float> %i.h, <16 x float> poison, <4 x i32> <i32 10, i32 10, i32 10, i32 10>
  %i.ai = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ah, <4 x float> %i.c, <4 x float> %i.ag)
  %i.aj = shufflevector <16 x float> %i.h, <16 x float> poison, <4 x i32> <i32 11, i32 11, i32 11, i32 11>
  %i.ak = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aj, <4 x float> %i.d, <4 x float> %i.ai)
  store <4 x float> %i.ak, ptr %i.f, align 4, !tbaa !9
  %i.al = shufflevector <16 x float> %i.h, <16 x float> poison, <4 x i32> <i32 13, i32 13, i32 13, i32 13>
  %i.am = fmul <4 x float> %i.b, %i.al
  %i.an = shufflevector <16 x float> %i.h, <16 x float> poison, <4 x i32> <i32 12, i32 12, i32 12, i32 12>
  %i.ao = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.an, <4 x float> %i.a, <4 x float> %i.am)
  %i.ap = shufflevector <16 x float> %i.h, <16 x float> poison, <4 x i32> <i32 14, i32 14, i32 14, i32 14>
  %i.aq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ap, <4 x float> %i.c, <4 x float> %i.ao)
  %i.ar = shufflevector <16 x float> %i.h, <16 x float> poison, <4 x i32> <i32 15, i32 15, i32 15, i32 15>
  %i.as = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ar, <4 x float> %i.d, <4 x float> %i.aq)
  store <4 x float> %i.as, ptr %i.g, align 4, !tbaa !9
  %i.at = insertelement <4 x float> poison, float %.sroa.418.0.copyload, i64 0
  %i.au = shufflevector <4 x float> %i.at, <4 x float> poison, <4 x i32> zeroinitializer
  %i.av = fmul <4 x float> %i.au, %i.j
  %i.aw = insertelement <4 x float> poison, float %.sroa.017.0.copyload, i64 0
  %i.ax = shufflevector <4 x float> %i.aw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ay = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.m, <4 x float> %i.ax, <4 x float> %i.av)
  %i.az = insertelement <4 x float> poison, float %.sroa.519.0.copyload, i64 0
  %i.ba = shufflevector <4 x float> %i.az, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.p, <4 x float> %i.ba, <4 x float> %i.ay)
  %i.bc = insertelement <4 x float> poison, float %.sroa.620.0.copyload, i64 0
  %i.bd = shufflevector <4 x float> %i.bc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.be = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.s, <4 x float> %i.bd, <4 x float> %i.bb)
  %i.bf = fadd <4 x float> %i.be, %i.i
  store <4 x float> %i.bf, ptr %1, align 4, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden noundef zeroext i1 @_ZN16OpenColorIO_v2_513GetMxbInverseEPfS0_PKfS2_(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [16 x float], align 16            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull align 4 dereferenceable(64) %2, i64 64, i1 false)
end_hunk_0
