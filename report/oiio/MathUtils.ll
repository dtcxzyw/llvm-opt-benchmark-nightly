inline.NumInlined: 58
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN16OpenColorIO_v2_520GetSafeScalarInverseEff:bb.a

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
  %i.b = fpext float %i.a to double               ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.e = load float, ptr %i.d, align 4, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load float, ptr %i.f, align 4, !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.j = load float, ptr %i.i, align 4, !tbaa !9
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load float, ptr %i.k, align 4, !tbaa !9
  %i.m = fpext float %i.l to double               ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.o = load float, ptr %i.n, align 4, !tbaa !9
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.q = load float, ptr %i.p, align 4, !tbaa !9
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.s = load float, ptr %i.r, align 4, !tbaa !9
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.u = load float, ptr %i.t, align 4, !tbaa !9
  %i.v = fpext float %i.u to double               ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.x = load float, ptr %i.w, align 4, !tbaa !9
  %i.y = fpext float %i.x to double               ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aa = load <2 x float>, ptr %i.z, align 4, !tbaa !9
  %i.ab = fpext <2 x float> %i.aa to <2 x double> ; 8 uses
  %i.ac = insertelement <2 x float> poison, float %i.g, i64 0
  %i.ad = insertelement <2 x float> %i.ac, float %i.q, i64 1
  %i.ae = fpext <2 x float> %i.ad to <2 x double> ; 9 uses
  %2 = extractelement <2 x double> %i.ae, i64 1   ; 2 uses
  %i.af = fneg double %i.v                        ; 2 uses
  %i.ag = load <2 x float>, ptr %i.c, align 4, !tbaa !9 ; 2 uses
  %i.ah = load <2 x float>, ptr %i.h, align 4, !tbaa !9 ; 2 uses
  %i.ai = shufflevector <2 x float> %i.ah, <2 x float> %i.ag, <2 x i32> <i32 0, i32 2>
  %i.aj = fpext <2 x float> %i.ai to <2 x double> ; 7 uses
  %i.ak = shufflevector <2 x float> %i.ah, <2 x float> %i.ag, <2 x i32> <i32 1, i32 3>
  %i.al = fpext <2 x float> %i.ak to <2 x double> ; 10 uses
  %i.am = extractelement <2 x double> %i.ab, i64 1
  %i.an = insertelement <2 x float> poison, float %i.j, i64 0
  %i.ao = insertelement <2 x float> %i.an, float %i.e, i64 1
  %i.ap = fpext <2 x float> %i.ao to <2 x double> ; 8 uses
  %i.aq = fneg double %i.m                        ; 4 uses
  %3 = fneg double %2
  %i.ar = fpext float %i.s to double              ; 4 uses
  %i.as = shufflevector <2 x double> %i.ap, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %4 = insertelement <2 x double> poison, double %3, i64 0
  %i.at = insertelement <2 x double> %4, double %i.aq, i64 1
  %i.au = fmul <2 x double> %i.as, %i.at
  %i.av = shufflevector <2 x double> %i.ap, <2 x double> %i.al, <2 x i32> <i32 0, i32 2>
  %5 = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aw = insertelement <2 x double> %i.ae, double %i.ar, i64 0
  %6 = shufflevector <2 x double> %i.al, <2 x double> %i.ae, <2 x i32> <i32 0, i32 2>
  %7 = insertelement <2 x double> poison, double %i.ar, i64 0 ; 2 uses
  %i.ax = shufflevector <2 x double> %7, <2 x double> poison, <2 x i32> zeroinitializer
  %8 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %6, <2 x double> %i.ax, <2 x double> %i.au) ; 5 uses
  %9 = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %10 = insertelement <2 x double> %9, double %i.y, i64 0 ; 2 uses
  %11 = insertelement <2 x double> poison, double %i.af, i64 0 ; 3 uses
  %i.ay = insertelement <2 x double> %11, double %i.v, i64 1
  %12 = shufflevector <2 x double> %i.aj, <2 x double> %i.al, <2 x i32> <i32 0, i32 2>
  %13 = insertelement <2 x double> poison, double %i.aq, i64 0
  %14 = shufflevector <2 x double> %13, <2 x double> poison, <2 x i32> zeroinitializer
  %15 = fmul <2 x double> %12, %14
  %16 = fpext float %i.o to double                ; 5 uses
  %17 = fneg double %16
  %i.az = insertelement <2 x double> poison, double %17, i64 0
  %18 = shufflevector <2 x double> %i.az, <2 x double> poison, <2 x i32> zeroinitializer
  %19 = fmul <2 x double> %i.av, %18
  %20 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %5, <2 x double> %i.aw, <2 x double> %19) ; 6 uses
  %21 = extractelement <2 x double> %20, i64 1    ; 2 uses
  %i.ba = shufflevector <2 x double> %i.ae, <2 x double> poison, <2 x i32> zeroinitializer
  %22 = insertelement <2 x double> %i.ae, double %16, i64 0
  %23 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ba, <2 x double> %22, <2 x double> %15) ; 5 uses
  %24 = extractelement <2 x double> %23, i64 1    ; 2 uses
  %25 = fneg double %24
  %26 = shufflevector <2 x double> %20, <2 x double> %23, <2 x i32> <i32 0, i32 3>
  %i.bb = fneg <2 x double> %26
  %i.bc = fmul <2 x double> %i.ab, %i.bb
  %i.bd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %10, <2 x double> %8, <2 x double> %i.bc) ; 2 uses
  %i.be = extractelement <2 x double> %i.bd, i64 0
  %i.bf = tail call double @llvm.fmuladd.f64(double %i.am, double %21, double %i.be) ; 2 uses
  %i.bg = shufflevector <2 x double> %8, <2 x double> %23, <2 x i32> <i32 1, i32 2>
  %i.bh = fneg <2 x double> %i.bg                 ; 2 uses
  %27 = shufflevector <2 x double> %8, <2 x double> %20, <2 x i32> <i32 0, i32 2>
  %i.bi = fmul <2 x double> %10, %i.bh            ; 2 uses
  %i.bj = shufflevector <2 x double> %i.bd, <2 x double> %i.bi, <2 x i32> <i32 1, i32 2>
  %i.bk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ay, <2 x double> %27, <2 x double> %i.bj) ; 3 uses
  %i.bl = insertelement <2 x double> %9, double %i.y, i64 1
  %i.bm = shufflevector <2 x double> %i.bk, <2 x double> %i.bi, <2 x i32> <i32 1, i32 3>
  %i.bn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bl, <2 x double> %23, <2 x double> %i.bm) ; 3 uses
  %i.bo = extractelement <2 x double> %i.bn, i64 1
  %i.bp = tail call double @llvm.fmuladd.f64(double %i.af, double %21, double %i.bo) ; 2 uses
  %i.bq = extractelement <2 x double> %i.aj, i64 1 ; 3 uses
  %i.br = extractelement <2 x double> %i.bk, i64 0
  %i.bs = fmul double %i.br, %i.bq
  %i.bt = tail call double @llvm.fmuladd.f64(double %i.bf, double %i.b, double %i.bs)
  %i.bu = extractelement <2 x double> %i.al, i64 1 ; 2 uses
  %i.bv = extractelement <2 x double> %i.bn, i64 0
  %i.bw = tail call double @llvm.fmuladd.f64(double %i.bv, double %i.bu, double %i.bt)
  %i.bx = extractelement <2 x double> %i.ap, i64 1 ; 2 uses
  %i.by = tail call double @llvm.fmuladd.f64(double %i.bp, double %i.bx, double %i.bw) ; 2 uses
  %i.bz = fptrunc double %i.by to float           ; 2 uses
  %i.ca = bitcast float %i.bz to i32              ; 2 uses
  %i.cb = and i32 %i.ca, 2139095040
  %i.cc = icmp eq i32 %i.cb, 2139095040
  br i1 %i.cc, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.thread, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit

_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit: ; preds = %bb.a
  %i.cd = tail call float @llvm.fabs.f32(float %i.bz) ; 2 uses
  %i.ce = fneg float %i.cd
  %i.cf = bitcast float %i.ce to i32
  %i.cg = bitcast float %i.cd to i32
  %i.ch = sub nuw i32 -2147483648, %i.cg
  %i.ci = icmp slt i32 %i.ca, 0
  %i.cj = select i1 %i.ci, i32 %i.ch, i32 %i.cf   ; 3 uses
  %i.ck = sub nuw i32 -2147483648, %i.cj
  %i.cl = xor i32 %i.cj, -2147483648
  %i.cm = icmp slt i32 %i.cj, 0
  %i.cn = select i1 %i.cm, i32 %i.cl, i32 %i.ck
  %i.co = icmp ult i32 %i.cn, 3
  br i1 %i.co, label %bb.b, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.thread

_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.thread: ; preds = %bb.a, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit
  %i.cp = fdiv double 1.000000e+00, %i.by
  %i.cq = fneg double %i.y                        ; 2 uses
  %i.cr = fmul double %i.bu, %i.cq
  %i.cs = extractelement <2 x double> %i.ab, i64 0
  %i.ct = fneg <2 x double> %i.aj
  %i.cu = fneg double %i.b
  %i.cv = insertelement <4 x double> poison, double %i.cp, i64 0
  %i.cw = shufflevector <4 x double> %i.cv, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.cx = insertelement <4 x double> poison, double %i.bf, i64 0
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.da = shufflevector <2 x double> %i.al, <2 x double> %i.ap, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.db = fmul <2 x double> %i.da, %i.bh
  %i.dc = insertelement <2 x double> %i.aj, double %i.b, i64 0 ; 2 uses
  %i.dd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dc, <2 x double> %8, <2 x double> %i.db) ; 2 uses
  %i.de = extractelement <2 x double> %i.dd, i64 0
  %28 = tail call double @llvm.fmuladd.f64(double %i.bx, double %24, double %i.de)
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %30 = fmul double %i.bq, %25
  %31 = insertelement <2 x double> poison, double %i.cu, i64 0
  %32 = insertelement <2 x double> %31, double %i.b, i64 1
  %33 = shufflevector <2 x double> %i.dd, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %34 = insertelement <2 x double> %33, double %30, i64 1
  %35 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %32, <2 x double> %20, <2 x double> %34) ; 2 uses
  %i.df = fneg <2 x double> %i.ab
  %i.dg = shufflevector <2 x double> %11, <2 x double> %i.df, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.dh = fmul <2 x double> %i.da, %i.dg
  %i.di = shufflevector <2 x double> %i.ap, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dj = fmul <2 x double> %i.di, %i.dg
  %i.dk = insertelement <2 x double> %i.al, double %i.b, i64 0 ; 2 uses
  %i.dl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dk, <2 x double> %i.ab, <2 x double> %i.dh) ; 5 uses
  %i.dm = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dk, <2 x double> %i.dm, <2 x double> %i.dj) ; 3 uses
  %i.do = shufflevector <2 x double> %i.dn, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.dp = extractelement <2 x double> %i.dl, i64 0
  %i.dq = insertelement <2 x double> %i.al, double %i.ar, i64 1
  %i.dr = insertelement <2 x double> %i.ap, double %i.aq, i64 1
  %i.ds = shufflevector <2 x double> %i.aj, <2 x double> %i.ap, <2 x i32> <i32 1, i32 3>
  %i.dt = insertelement <2 x double> %11, double %i.cq, i64 1
  %i.du = fmul <2 x double> %i.ds, %i.dt
  %i.dv = insertelement <2 x double> %i.ab, double %i.y, i64 0
  %i.dw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dc, <2 x double> %i.dv, <2 x double> %i.du) ; 6 uses
  %i.dx = shufflevector <2 x double> %i.dn, <2 x double> %i.dw, <2 x i32> <i32 0, i32 2>
  %i.dy = fneg <2 x double> %i.dx                 ; 3 uses
  %36 = extractelement <2 x double> %i.dw, i64 1
  %37 = fneg double %36
  %38 = fmul double %2, %37
  %39 = shufflevector <2 x double> %i.dw, <2 x double> %20, <2 x i32> <i32 1, i32 2>
  %i.dz = insertelement <2 x double> %i.as, double %16, i64 0
  %40 = fmul <2 x double> %i.dz, %i.dy
  %41 = insertelement <2 x double> %5, double %i.m, i64 0
  %42 = shufflevector <2 x double> %i.dw, <2 x double> %i.dn, <2 x i32> <i32 1, i32 2>
  %43 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %41, <2 x double> %42, <2 x double> %40)
  %44 = shufflevector <2 x double> %i.al, <2 x double> %i.dl, <2 x i32> <i32 1, i32 3>
  %i.ea = insertelement <2 x double> %23, double %16, i64 1
  %45 = shufflevector <2 x double> %35, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %46 = insertelement <2 x double> %45, double %38, i64 1
  %i.eb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %44, <2 x double> %i.ea, <2 x double> %46) ; 2 uses
  %i.ec = fneg <2 x double> %i.ae
  %i.ed = shufflevector <2 x double> %7, <2 x double> %i.ec, <2 x i32> <i32 0, i32 2>
  %i.ee = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ed, <2 x double> %i.dw, <2 x double> %43)
  %i.ef = tail call double @llvm.fmuladd.f64(double %i.bq, double %i.cs, double %i.cr) ; 4 uses
  %i.eg = insertelement <2 x double> %20, double %i.ef, i64 0
  %i.eh = fneg <2 x double> %i.eg
  %47 = fmul <2 x double> %i.ap, %i.eh
  %48 = fneg double %i.dp                         ; 2 uses
  %49 = shufflevector <2 x double> %i.ae, <2 x double> %i.aj, <2 x i32> <i32 1, i32 2>
  %50 = shufflevector <2 x double> %i.dy, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %51 = insertelement <2 x double> %50, double %48, i64 1
  %i.ei = fmul <2 x double> %49, %51
  %52 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.al, <2 x double> %39, <2 x double> %47)
  %i.ej = insertelement <2 x double> %i.dy, double %48, i64 1
  %i.ek = fmul <2 x double> %i.dq, %i.ej
  %53 = insertelement <2 x double> poison, double %16, i64 0
  %i.el = insertelement <2 x double> %53, double %i.ef, i64 1
  %54 = shufflevector <2 x double> %i.dl, <2 x double> %i.ae, <2 x i32> <i32 0, i32 2>
  %55 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.el, <2 x double> %54, <2 x double> %i.ei)
  %i.em = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ae, <2 x double> %i.do, <2 x double> %i.ek)
  %i.en = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dr, <2 x double> %i.dl, <2 x double> %i.em)
  %56 = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %57 = insertelement <2 x double> %56, double %i.aq, i64 0
  %58 = shufflevector <2 x double> %i.dw, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %59 = insertelement <2 x double> %58, double %i.ef, i64 0
  %60 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %57, <2 x double> %59, <2 x double> %55)
  %i.eo = shufflevector <2 x double> %i.dl, <2 x double> %8, <2 x i32> <i32 1, i32 2>
  %i.ep = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ct, <2 x double> %i.eo, <2 x double> %52)
  %i.eq = extractelement <2 x double> %i.eb, i64 1
  %i.er = tail call double @llvm.fmuladd.f64(double %i.ar, double %i.ef, double %i.eq)
  %i.es = insertelement <4 x double> %i.cx, double %i.er, i64 1
  %i.et = shufflevector <2 x double> %i.ep, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.eu = shufflevector <4 x double> %i.es, <4 x double> %i.et, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ev = fmul <4 x double> %i.cw, %i.eu
  %i.ew = fptrunc <4 x double> %i.ev to <4 x float>
  store <4 x float> %i.ew, ptr %0, align 4, !tbaa !9
  %i.ex = shufflevector <2 x double> %i.bk, <2 x double> %i.en, <4 x i32> <i32 0, i32 3, i32 2, i32 poison>
  %i.ey = insertelement <4 x double> %i.ex, double %28, i64 3
  %i.ez = fmul <4 x double> %i.cw, %i.ey
  %i.fa = fptrunc <4 x double> %i.ez to <4 x float>
  store <4 x float> %i.fa, ptr %i.cy, align 4, !tbaa !9
  %i.fb = shufflevector <2 x double> %i.bn, <2 x double> %i.ee, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %61 = shufflevector <2 x double> %35, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %62 = shufflevector <4 x double> %i.fb, <4 x double> %61, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.fc = fmul <4 x double> %i.cw, %62
  %i.fd = fptrunc <4 x double> %i.fc to <4 x float>
  store <4 x float> %i.fd, ptr %i.cz, align 4, !tbaa !9
  %i.fe = insertelement <4 x double> poison, double %i.bp, i64 0
  %63 = shufflevector <2 x double> %60, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %64 = shufflevector <4 x double> %i.fe, <4 x double> %63, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %65 = shufflevector <2 x double> %i.eb, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %66 = shufflevector <4 x double> %64, <4 x double> %65, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ff = fmul <4 x double> %i.cw, %66
  %i.fg = fptrunc <4 x double> %i.ff to <4 x float>
  store <4 x float> %i.fg, ptr %29, align 4, !tbaa !9
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
