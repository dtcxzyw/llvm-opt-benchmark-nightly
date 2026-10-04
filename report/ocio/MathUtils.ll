Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/MathUtils?download=true
inline.NumInlined: 58
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN16OpenColorIO_v2_513IsM44IdentityIdEEbPKT_:bb.a
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
  %i.c = load float, ptr %i.b, align 4, !tbaa !10 ; 2 uses
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
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !19

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
  %i.c = load float, ptr %i.b, align 4, !tbaa !10 ; 2 uses
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
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !20

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
  %i.a = load ptr, ptr @imath_half_to_float_table, align 8, !tbaa !23
  %i.b = zext i16 %0 to i64
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.b
  %i.d = load float, ptr %i.c, align 4, !tbaa !24
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
  %i.a = load float, ptr %1, align 4, !tbaa !10
  %i.b = fpext float %i.a to double               ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.e = load float, ptr %i.d, align 4, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load float, ptr %i.f, align 4, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.j = load float, ptr %i.i, align 4, !tbaa !10
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = load float, ptr %i.l, align 4, !tbaa !10
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.o = load float, ptr %i.n, align 4, !tbaa !10
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.r = load <2 x float>, ptr %i.q, align 4, !tbaa !10
  %i.s = fpext <2 x float> %i.r to <2 x double>   ; 8 uses
  %i.t = insertelement <2 x float> poison, float %i.g, i64 0
  %i.u = insertelement <2 x float> %i.t, float %i.m, i64 1
  %i.v = fpext <2 x float> %i.u to <2 x double>   ; 10 uses
  %i.w = load <2 x float>, ptr %i.c, align 4, !tbaa !10 ; 2 uses
  %i.x = load <2 x float>, ptr %i.h, align 4, !tbaa !10 ; 2 uses
  %i.y = shufflevector <2 x float> %i.x, <2 x float> %i.w, <2 x i32> <i32 0, i32 2>
  %i.z = fpext <2 x float> %i.y to <2 x double>   ; 10 uses
  %i.aa = shufflevector <2 x float> %i.x, <2 x float> %i.w, <2 x i32> <i32 1, i32 3>
  %i.ab = fpext <2 x float> %i.aa to <2 x double> ; 10 uses
  %i.ac = insertelement <2 x float> poison, float %i.j, i64 0
  %i.ad = insertelement <2 x float> %i.ac, float %i.e, i64 1
  %i.ae = fpext <2 x float> %i.ad to <2 x double> ; 9 uses
  %2 = load <2 x float>, ptr %i.k, align 4, !tbaa !10
  %3 = fpext float %i.o to double                 ; 4 uses
  %4 = fpext <2 x float> %2 to <2 x double>       ; 7 uses
  %5 = fneg <2 x double> %4                       ; 4 uses
  %6 = shufflevector <2 x double> %i.ab, <2 x double> %i.ae, <2 x i32> <i32 0, i32 2>
  %i.af = fmul <2 x double> %6, %5
  %i.ag = shufflevector <2 x double> %i.v, <2 x double> %i.z, <2 x i32> <i32 0, i32 2> ; 2 uses
  %7 = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %8 = insertelement <2 x double> %7, double %3, i64 1
  %i.ah = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ag, <2 x double> %8, <2 x double> %i.af) ; 5 uses
  %i.ai = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %9 = shufflevector <2 x double> %i.z, <2 x double> %i.ab, <2 x i32> <i32 0, i32 2>
  %10 = fmul <2 x double> %9, %5
  %11 = shufflevector <2 x double> %4, <2 x double> %i.v, <2 x i32> <i32 1, i32 3>
  %12 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ag, <2 x double> %11, <2 x double> %10) ; 6 uses
  %13 = shufflevector <2 x double> %i.ae, <2 x double> poison, <2 x i32> zeroinitializer
  %14 = shufflevector <2 x double> %i.v, <2 x double> %4, <2 x i32> <i32 1, i32 2>
  %15 = fneg <2 x double> %14
  %16 = fmul <2 x double> %13, %15
  %17 = shufflevector <2 x double> %i.ab, <2 x double> %i.v, <2 x i32> <i32 0, i32 2>
  %i.aj = insertelement <2 x double> poison, double %3, i64 0 ; 2 uses
  %i.ak = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.al = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %17, <2 x double> %i.ak, <2 x double> %16) ; 5 uses
  %18 = fneg <2 x double> %i.ah
  %19 = shufflevector <2 x double> %18, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %20 = fmul <2 x double> %19, %i.s
  %21 = shufflevector <2 x double> %i.s, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %22 = shufflevector <2 x double> %12, <2 x double> %i.al, <2 x i32> <i32 1, i32 2>
  %23 = shufflevector <2 x double> %i.al, <2 x double> %12, <2 x i32> <i32 1, i32 2>
  %i.am = fneg <2 x double> %23                   ; 2 uses
  %24 = load <2 x float>, ptr %i.p, align 4, !tbaa !10
  %25 = fpext <2 x float> %24 to <2 x double>     ; 5 uses
  %i.an = extractelement <2 x double> %25, i64 0
  %26 = fneg double %i.an                         ; 2 uses
  %i.ao = shufflevector <2 x double> %25, <2 x double> %i.s, <2 x i32> <i32 1, i32 2> ; 2 uses
  %27 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ao, <2 x double> %i.al, <2 x double> %20)
  %28 = insertelement <2 x double> %21, double %26, i64 1 ; 2 uses
  %29 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %28, <2 x double> %22, <2 x double> %27) ; 4 uses
  %30 = fmul <2 x double> %i.ao, %i.am
  %i.ap = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %25, <2 x double> %i.ai, <2 x double> %30)
  %31 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %28, <2 x double> %12, <2 x double> %i.ap) ; 4 uses
  %foldExtExtBinop = fmul <2 x double> %29, %i.z
  %32 = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.aq = extractelement <2 x double> %29, i64 0
  %i.ar = tail call double @llvm.fmuladd.f64(double %i.aq, double %i.b, double %32)
  %i.as = extractelement <2 x double> %i.ab, i64 1 ; 2 uses
  %i.at = extractelement <2 x double> %31, i64 0
  %i.au = tail call double @llvm.fmuladd.f64(double %i.at, double %i.as, double %i.ar)
  %i.av = extractelement <2 x double> %i.ae, i64 1
  %i.aw = extractelement <2 x double> %31, i64 1
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.aw, double %i.av, double %i.au) ; 2 uses
  %i.ay = fptrunc double %i.ax to float           ; 2 uses
  %i.az = bitcast float %i.ay to i32              ; 2 uses
  %i.ba = and i32 %i.az, 2139095040
  %i.bb = icmp eq i32 %i.ba, 2139095040
  br i1 %i.bb, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.thread, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit

_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit: ; preds = %bb.a
  %i.bc = tail call float @llvm.fabs.f32(float %i.ay) ; 2 uses
  %i.bd = fneg float %i.bc
  %i.be = bitcast float %i.bd to i32
  %i.bf = bitcast float %i.bc to i32
  %i.bg = sub nuw i32 -2147483648, %i.bf
  %i.bh = icmp slt i32 %i.az, 0
  %i.bi = select i1 %i.bh, i32 %i.bg, i32 %i.be   ; 3 uses
  %i.bj = sub nuw i32 -2147483648, %i.bi
  %i.bk = xor i32 %i.bi, -2147483648
  %i.bl = icmp slt i32 %i.bi, 0
  %i.bm = select i1 %i.bl, i32 %i.bk, i32 %i.bj
  %i.bn = icmp ult i32 %i.bm, 3
  br i1 %i.bn, label %bb.b, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.thread

_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.thread: ; preds = %bb.a, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit
  %i.bo = fdiv double 1.000000e+00, %i.ax
  %33 = extractelement <2 x double> %25, i64 1
  %34 = fneg double %33                           ; 2 uses
  %35 = fmul double %i.as, %34
  %i.bp = fneg <2 x double> %i.z
  %i.bq = fneg double %i.b
  %i.br = insertelement <4 x double> poison, double %i.bo, i64 0
  %i.bs = shufflevector <4 x double> %i.br, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %36 = shufflevector <2 x double> %29, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bv = shufflevector <2 x double> %i.ab, <2 x double> %i.ae, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.bw = fmul <2 x double> %i.bv, %i.am
  %i.bx = insertelement <2 x double> %i.z, double %i.b, i64 0 ; 2 uses
  %i.by = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bx, <2 x double> %i.al, <2 x double> %i.bw)
  %37 = shufflevector <2 x double> %i.ae, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bz = insertelement <2 x double> %37, double %i.bq, i64 1
  %38 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bz, <2 x double> %i.ah, <2 x double> %i.by)
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ca = insertelement <2 x double> poison, double %26, i64 0 ; 2 uses
  %i.cb = fneg <2 x double> %i.s
  %i.cc = shufflevector <2 x double> %i.ca, <2 x double> %i.cb, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.cd = fmul <2 x double> %i.bv, %i.cc
  %i.ce = fmul <2 x double> %37, %i.cc
  %i.cf = insertelement <2 x double> %i.ab, double %i.b, i64 0 ; 2 uses
  %i.cg = shufflevector <2 x double> %i.s, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ch = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cf, <2 x double> %i.cg, <2 x double> %i.ce) ; 3 uses
  %i.ci = shufflevector <2 x double> %i.ch, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.cj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cf, <2 x double> %i.s, <2 x double> %i.cd) ; 5 uses
  %i.ck = extractelement <2 x double> %i.cj, i64 0
  %i.cl = insertelement <2 x double> %i.ab, double %3, i64 1
  %i.cm = shufflevector <2 x double> %i.cj, <2 x double> %i.al, <2 x i32> <i32 1, i32 2>
  %40 = shufflevector <2 x double> %i.ae, <2 x double> %5, <2 x i32> <i32 0, i32 2>
  %i.cn = shufflevector <2 x double> %i.z, <2 x double> %i.ae, <2 x i32> <i32 1, i32 3>
  %i.co = insertelement <2 x double> %i.ca, double %34, i64 1
  %i.cp = fmul <2 x double> %i.cn, %i.co
  %41 = shufflevector <2 x double> %i.s, <2 x double> %25, <2 x i32> <i32 3, i32 1>
  %i.cq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bx, <2 x double> %41, <2 x double> %i.cp) ; 6 uses
  %42 = shufflevector <2 x double> %i.ah, <2 x double> %i.cq, <2 x i32> <i32 3, i32 1>
  %43 = shufflevector <2 x double> %i.ch, <2 x double> %i.cq, <2 x i32> <i32 0, i32 2>
  %44 = fneg <2 x double> %43                     ; 3 uses
  %i.cr = shufflevector <2 x double> %4, <2 x double> %i.ae, <2 x i32> <i32 1, i32 2>
  %45 = fmul <2 x double> %i.cr, %44
  %46 = shufflevector <2 x double> %i.z, <2 x double> %i.v, <2 x i32> <i32 1, i32 3>
  %47 = shufflevector <2 x double> %i.ah, <2 x double> %i.cq, <2 x i32> <i32 0, i32 3>
  %48 = fneg <2 x double> %47
  %49 = fmul <2 x double> %46, %48
  %i.cs = insertelement <2 x double> %4, double %i.b, i64 0
  %50 = shufflevector <2 x double> %i.cj, <2 x double> %12, <2 x i32> <i32 3, i32 1>
  %i.ct = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cs, <2 x double> %50, <2 x double> %49) ; 2 uses
  %51 = shufflevector <2 x double> %4, <2 x double> %i.z, <2 x i32> <i32 0, i32 2>
  %i.cu = shufflevector <2 x double> %i.cq, <2 x double> %i.ch, <2 x i32> <i32 1, i32 2>
  %i.cv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %51, <2 x double> %i.cu, <2 x double> %45)
  %i.cw = fneg <2 x double> %i.v
  %i.cx = shufflevector <2 x double> %i.aj, <2 x double> %i.cw, <2 x i32> <i32 0, i32 2>
  %i.cy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cx, <2 x double> %i.cq, <2 x double> %i.cv)
  %52 = shufflevector <2 x double> %i.ab, <2 x double> %i.z, <2 x i32> <i32 1, i32 3>
  %53 = shufflevector <2 x double> %12, <2 x double> %i.s, <2 x i32> <i32 0, i32 2>
  %i.cz = insertelement <2 x double> %i.ct, double %35, i64 1
  %54 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %52, <2 x double> %53, <2 x double> %i.cz) ; 5 uses
  %55 = extractelement <2 x double> %54, i64 1
  %56 = shufflevector <2 x double> %12, <2 x double> %54, <2 x i32> <i32 3, i32 1>
  %i.da = fneg <2 x double> %56
  %i.db = fmul <2 x double> %i.ae, %i.da
  %i.dc = fneg double %i.ck                       ; 2 uses
  %i.dd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ab, <2 x double> %42, <2 x double> %i.db)
  %i.de = shufflevector <2 x double> %i.v, <2 x double> %i.z, <2 x i32> <i32 1, i32 2>
  %i.df = shufflevector <2 x double> %44, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.dg = insertelement <2 x double> %i.df, double %i.dc, i64 1
  %i.dh = fmul <2 x double> %i.de, %i.dg
  %i.di = insertelement <2 x double> %44, double %i.dc, i64 1
  %i.dj = fmul <2 x double> %i.cl, %i.di
  %57 = shufflevector <2 x double> %4, <2 x double> %54, <2 x i32> <i32 1, i32 3>
  %i.dk = shufflevector <2 x double> %i.cj, <2 x double> %i.v, <2 x i32> <i32 0, i32 2>
  %i.dl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %57, <2 x double> %i.dk, <2 x double> %i.dh)
  %i.dm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.v, <2 x double> %i.ci, <2 x double> %i.dj)
  %i.dn = extractelement <2 x double> %i.ct, i64 1
  %i.do = tail call double @llvm.fmuladd.f64(double %3, double %55, double %i.dn)
  %i.dp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bp, <2 x double> %i.cm, <2 x double> %i.dd)
  %i.dq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %40, <2 x double> %i.cj, <2 x double> %i.dm)
  %58 = shufflevector <2 x double> %5, <2 x double> %i.ab, <2 x i32> <i32 0, i32 2>
  %59 = shufflevector <2 x double> %54, <2 x double> %i.cq, <2 x i32> <i32 1, i32 2>
  %i.dr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %58, <2 x double> %59, <2 x double> %i.dl)
  %i.ds = insertelement <4 x double> %36, double %i.do, i64 1
  %i.dt = shufflevector <2 x double> %i.dp, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.du = shufflevector <4 x double> %i.ds, <4 x double> %i.dt, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.dv = fmul <4 x double> %i.bs, %i.du
  %i.dw = fptrunc <4 x double> %i.dv to <4 x float>
  store <4 x float> %i.dw, ptr %0, align 4, !tbaa !10
  %60 = shufflevector <2 x double> %29, <2 x double> %i.dq, <4 x i32> <i32 1, i32 3, i32 2, i32 poison>
  %61 = shufflevector <2 x double> %38, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %62 = shufflevector <4 x double> %60, <4 x double> %61, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.dx = fmul <4 x double> %i.bs, %62
  %i.dy = fptrunc <4 x double> %i.dx to <4 x float>
  store <4 x float> %i.dy, ptr %i.bt, align 4, !tbaa !10
  %i.dz = shufflevector <2 x double> %31, <2 x double> %i.cy, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %63 = shufflevector <4 x double> %i.dz, <4 x double> %61, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.ea = fmul <4 x double> %i.bs, %63
  %i.eb = fptrunc <4 x double> %i.ea to <4 x float>
  store <4 x float> %i.eb, ptr %i.bu, align 4, !tbaa !10
  %64 = shufflevector <2 x double> %31, <2 x double> %i.dr, <4 x i32> <i32 1, i32 2, i32 3, i32 poison>
  %i.ec = shufflevector <2 x double> %54, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ed = shufflevector <4 x double> %64, <4 x double> %i.ec, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ee = fmul <4 x double> %i.bs, %i.ed
  %i.ef = fptrunc <4 x double> %i.ee to <4 x float>
  store <4 x float> %i.ef, ptr %39, align 4, !tbaa !10
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
  %.sroa.1965.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.3581.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.5197.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.51.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.a = load <4 x float>, ptr %1, align 4        ; 4 uses
  %i.b = load <4 x float>, ptr %2, align 4        ; 4 uses
  %i.c = load <4 x float>, ptr %.sroa.19.0..sroa_idx, align 4 ; 4 uses
  %i.d = load <4 x float>, ptr %.sroa.35.0..sroa_idx, align 4 ; 4 uses
  %i.e = load <4 x float>, ptr %.sroa.51.0..sroa_idx, align 4 ; 4 uses
  %i.f = shufflevector <4 x float> %i.a, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.g = fmul <4 x float> %i.f, %i.c
  %i.h = shufflevector <4 x float> %i.a, <4 x float> poison, <4 x i32> zeroinitializer
  %i.i = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.h, <4 x float> %i.b, <4 x float> %i.g)
  %i.j = shufflevector <4 x float> %i.a, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.k = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.j, <4 x float> %i.d, <4 x float> %i.i)
  %i.l = shufflevector <4 x float> %i.a, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.m = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.l, <4 x float> %i.e, <4 x float> %i.k)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load <4 x float>, ptr %.sroa.1965.0..sroa_idx, align 4 ; 4 uses
  %i.p = shufflevector <4 x float> %i.o, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.q = fmul <4 x float> %i.p, %i.c
  %i.r = shufflevector <4 x float> %i.o, <4 x float> poison, <4 x i32> zeroinitializer
  %i.s = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.r, <4 x float> %i.b, <4 x float> %i.q)
  %i.t = shufflevector <4 x float> %i.o, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.u = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.t, <4 x float> %i.d, <4 x float> %i.s)
  %i.v = shufflevector <4 x float> %i.o, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.w = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.v, <4 x float> %i.e, <4 x float> %i.u)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = load <4 x float>, ptr %.sroa.3581.0..sroa_idx, align 4 ; 4 uses
  %i.z = shufflevector <4 x float> %i.y, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.aa = fmul <4 x float> %i.z, %i.c
  %i.ab = shufflevector <4 x float> %i.y, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ac = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ab, <4 x float> %i.b, <4 x float> %i.aa)
  %i.ad = shufflevector <4 x float> %i.y, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ae = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ad, <4 x float> %i.d, <4 x float> %i.ac)
  %i.af = shufflevector <4 x float> %i.y, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ag = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.e, <4 x float> %i.ae)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ai = load <4 x float>, ptr %.sroa.5197.0..sroa_idx, align 4 ; 4 uses
  store <4 x float> %i.m, ptr %0, align 4, !tbaa !10
  store <4 x float> %i.w, ptr %i.n, align 4, !tbaa !10
  store <4 x float> %i.ag, ptr %i.x, align 4, !tbaa !10
  %i.aj = shufflevector <4 x float> %i.ai, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ak = fmul <4 x float> %i.aj, %i.c
  %i.al = shufflevector <4 x float> %i.ai, <4 x float> poison, <4 x i32> zeroinitializer
  %i.am = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.b, <4 x float> %i.ak)
  %i.an = shufflevector <4 x float> %i.ai, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ao = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.an, <4 x float> %i.d, <4 x float> %i.am)
  %i.ap = shufflevector <4 x float> %i.ai, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.aq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ap, <4 x float> %i.e, <4 x float> %i.ao)
  store <4 x float> %i.aq, ptr %i.ah, align 4, !tbaa !10
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
  %i.a = load <4 x float>, ptr %2, align 4        ; 4 uses
  %i.b = load <4 x float>, ptr %.sroa.725.0..sroa_idx, align 4 ; 4 uses
  %i.c = load <4 x float>, ptr %.sroa.1127.0..sroa_idx, align 4 ; 4 uses
  %i.d = load <4 x float>, ptr %.sroa.1529.0..sroa_idx, align 4 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load <4 x float>, ptr %3, align 4        ; 4 uses
  %i.i = load <4 x float>, ptr %5, align 4
  %i.j = load <16 x float>, ptr %4, align 4       ; 20 uses
  %i.k = shufflevector <16 x float> %i.j, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %i.l = shufflevector <16 x float> %i.j, <16 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.m = fmul <4 x float> %i.b, %i.l
  %i.n = shufflevector <16 x float> %i.j, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %i.o = shufflevector <16 x float> %i.j, <16 x float> poison, <4 x i32> zeroinitializer
  %i.p = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.o, <4 x float> %i.a, <4 x float> %i.m)
  %i.q = shufflevector <16 x float> %i.j, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %i.r = shufflevector <16 x float> %i.j, <16 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.s = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.r, <4 x float> %i.c, <4 x float> %i.p)
  %i.t = shufflevector <16 x float> %i.j, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.u = shufflevector <16 x float> %i.j, <16 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.v = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.u, <4 x float> %i.d, <4 x float> %i.s)
  %i.w = shufflevector <16 x float> %i.j, <16 x float> poison, <4 x i32> <i32 5, i32 5, i32 5, i32 5>
  %i.x = fmul <4 x float> %i.b, %i.w
  %i.y = shufflevector <16 x float> %i.j, <16 x float> poison, <4 x i32> <i32 4, i32 4, i32 4, i32 4>
  %i.z = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.y, <4 x float> %i.a, <4 x float> %i.x)
  %i.aa = shufflevector <16 x float> %i.j, <16 x float> poison, <4 x i32> <i32 6, i32 6, i32 6, i32 6>
  %i.ab = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aa, <4 x float> %i.c, <4 x float> %i.z)
  %i.ac = shufflevector <16 x float> %i.j, <16 x float> poison, <4 x i32> <i32 7, i32 7, i32 7, i32 7>
  %i.ad = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ac, <4 x float> %i.d, <4 x float> %i.ab)
  %i.ae = shufflevector <16 x float> %i.j, <16 x float> poison, <4 x i32> <i32 9, i32 9, i32 9, i32 9>
  %i.af = fmul <4 x float> %i.b, %i.ae
  %i.ag = shufflevector <16 x float> %i.j, <16 x float> poison, <4 x i32> <i32 8, i32 8, i32 8, i32 8>
  %i.ah = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ag, <4 x float> %i.a, <4 x float> %i.af)
  %i.ai = shufflevector <16 x float> %i.j, <16 x float> poison, <4 x i32> <i32 10, i32 10, i32 10, i32 10>
  %i.aj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ai, <4 x float> %i.c, <4 x float> %i.ah)
  %i.ak = shufflevector <16 x float> %i.j, <16 x float> poison, <4 x i32> <i32 11, i32 11, i32 11, i32 11>
  %i.al = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ak, <4 x float> %i.d, <4 x float> %i.aj)
  store <4 x float> %i.v, ptr %0, align 4, !tbaa !10
  store <4 x float> %i.ad, ptr %i.e, align 4, !tbaa !10
  store <4 x float> %i.al, ptr %i.f, align 4, !tbaa !10
  %i.am = shufflevector <16 x float> %i.j, <16 x float> poison, <4 x i32> <i32 13, i32 13, i32 13, i32 13>
  %i.an = fmul <4 x float> %i.b, %i.am
  %i.ao = shufflevector <16 x float> %i.j, <16 x float> poison, <4 x i32> <i32 12, i32 12, i32 12, i32 12>
  %i.ap = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ao, <4 x float> %i.a, <4 x float> %i.an)
  %i.aq = shufflevector <16 x float> %i.j, <16 x float> poison, <4 x i32> <i32 14, i32 14, i32 14, i32 14>
  %i.ar = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aq, <4 x float> %i.c, <4 x float> %i.ap)
  %i.as = shufflevector <16 x float> %i.j, <16 x float> poison, <4 x i32> <i32 15, i32 15, i32 15, i32 15>
  %i.at = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.as, <4 x float> %i.d, <4 x float> %i.ar)
  store <4 x float> %i.at, ptr %i.g, align 4, !tbaa !10
  %i.au = shufflevector <4 x float> %i.h, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.av = fmul <4 x float> %i.au, %i.k
  %i.aw = shufflevector <4 x float> %i.h, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ax = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.n, <4 x float> %i.aw, <4 x float> %i.av)
  %i.ay = shufflevector <4 x float> %i.h, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.az = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.q, <4 x float> %i.ay, <4 x float> %i.ax)
  %i.ba = shufflevector <4 x float> %i.h, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.bb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.t, <4 x float> %i.ba, <4 x float> %i.az)
  %i.bc = fadd <4 x float> %i.bb, %i.i
  store <4 x float> %i.bc, ptr %1, align 4, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden noundef zeroext i1 @_ZN16OpenColorIO_v2_513GetMxbInverseEPfS0_PKfS2_(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [16 x float], align 16            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull align 4 dereferenceable(64) %2, i64 64, i1 false)
  %.sroa.0.0.copyload = load float, ptr %3, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.9.0.copyload = load float, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.sroa.12.0.copyload = load float, ptr %.sroa.12.0..sroa_idx, align 4
  %i.b = call noundef zeroext i1 @_ZN16OpenColorIO_v2_513GetM44InverseEPfPKf(ptr noundef %0, ptr noundef nonnull %i.a) ; 2 uses
  br i1 %i.b, label %.preheader.preheader, label %bb.b

.preheader.preheader:                             ; preds = %bb.a
  %i.c = fneg float %.sroa.0.0.copyload           ; 4 uses
  %i.d = fneg float %.sroa.6.0.copyload           ; 4 uses
  %i.e = fneg float %.sroa.9.0.copyload           ; 4 uses
  %i.f = fneg float %.sroa.12.0.copyload          ; 4 uses
  %i.g = load float, ptr %0, align 4, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.i = load float, ptr %i.h, align 4, !tbaa !10
  %i.j = fmul float %i.i, %i.d
  %i.k = tail call float @llvm.fmuladd.f32(float %i.g, float %i.c, float %i.j)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load float, ptr %i.l, align 4, !tbaa !10
  %i.n = tail call float @llvm.fmuladd.f32(float %i.m, float %i.e, float %i.k)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.p = load float, ptr %i.o, align 4, !tbaa !10
  %i.q = tail call float @llvm.fmuladd.f32(float %i.p, float %i.f, float %i.n)
  store float %i.q, ptr %1, align 4, !tbaa !10
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load float, ptr %i.r, align 4, !tbaa !10
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.u = load float, ptr %i.t, align 4, !tbaa !10
  %i.v = fmul float %i.u, %i.d
  %i.w = tail call float @llvm.fmuladd.f32(float %i.s, float %i.c, float %i.v)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load float, ptr %i.x, align 4, !tbaa !10
  %i.z = tail call float @llvm.fmuladd.f32(float %i.y, float %i.e, float %i.w)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !10
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.ab, float %i.f, float %i.z)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.ac, ptr %i.ad, align 4, !tbaa !10
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = load float, ptr %i.ae, align 4, !tbaa !10
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !10
  %i.ai = fmul float %i.ah, %i.d
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.af, float %i.c, float %i.ai)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.al = load float, ptr %i.ak, align 4, !tbaa !10
  %i.am = tail call float @llvm.fmuladd.f32(float %i.al, float %i.e, float %i.aj)
end_hunk_0
