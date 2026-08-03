inline.NumInlined: 58
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN16OpenColorIO_v2_520GetSafeScalarInverseEff:bb.a
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
  %i.b = fpext float %i.a to double               ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.e = load float, ptr %i.d, align 4, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load float, ptr %i.f, align 4, !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.j = load float, ptr %i.i, align 4, !tbaa !9
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = load float, ptr %i.l, align 4, !tbaa !9
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.o = load float, ptr %i.n, align 4, !tbaa !9
  %i.p = fpext float %i.o to double               ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.r = load float, ptr %i.q, align 4, !tbaa !9
  %i.s = fpext float %i.r to double               ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.u = load float, ptr %i.t, align 4, !tbaa !9
  %i.v = fpext float %i.u to double               ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.x = load <2 x float>, ptr %i.w, align 4, !tbaa !9
  %i.y = fpext <2 x float> %i.x to <2 x double>   ; 7 uses
  %i.z = insertelement <2 x float> poison, float %i.g, i64 0
  %i.aa = insertelement <2 x float> %i.z, float %i.m, i64 1
  %i.ab = fpext <2 x float> %i.aa to <2 x double> ; 7 uses
  %i.ac = fneg double %i.s                        ; 2 uses
  %i.ad = load <2 x float>, ptr %i.c, align 4, !tbaa !9 ; 2 uses
  %i.ae = load <2 x float>, ptr %i.h, align 4, !tbaa !9 ; 2 uses
  %i.af = shufflevector <2 x float> %i.ae, <2 x float> %i.ad, <2 x i32> <i32 0, i32 2>
  %i.ag = fpext <2 x float> %i.af to <2 x double> ; 10 uses
  %i.ah = shufflevector <2 x float> %i.ae, <2 x float> %i.ad, <2 x i32> <i32 1, i32 3>
  %i.ai = fpext <2 x float> %i.ah to <2 x double> ; 8 uses
  %i.aj = extractelement <2 x double> %i.y, i64 1 ; 2 uses
  %i.ak = insertelement <2 x float> poison, float %i.j, i64 0
  %i.al = insertelement <2 x float> %i.ak, float %i.e, i64 1
  %i.am = fpext <2 x float> %i.al to <2 x double> ; 10 uses
  %2 = load <2 x float>, ptr %i.k, align 4, !tbaa !9
  %3 = fpext <2 x float> %2 to <2 x double>       ; 6 uses
  %4 = fneg <2 x double> %3                       ; 4 uses
  %5 = shufflevector <2 x double> %i.ag, <2 x double> %i.ai, <2 x i32> <i32 0, i32 2> ; 2 uses
  %6 = fmul <2 x double> %5, %4
  %7 = shufflevector <2 x double> %3, <2 x double> %i.ag, <2 x i32> <i32 1, i32 2>
  %8 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ab, <2 x double> %7, <2 x double> %6) ; 5 uses
  %9 = extractelement <2 x double> %i.y, i64 0    ; 3 uses
  %i.an = shufflevector <2 x double> %i.ai, <2 x double> %i.am, <2 x i32> <i32 0, i32 2>
  %10 = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ao = fmul <2 x double> %i.an, %10
  %i.ap = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> zeroinitializer
  %11 = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %12 = insertelement <2 x double> %11, double %i.p, i64 1
  %i.aq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ap, <2 x double> %12, <2 x double> %i.ao) ; 5 uses
  %i.ar = extractelement <2 x double> %i.aq, i64 0
  %i.as = fneg double %i.ar                       ; 2 uses
  %i.at = fmul double %i.aj, %i.as
  %i.au = shufflevector <2 x double> %i.am, <2 x double> poison, <2 x i32> zeroinitializer
  %i.av = shufflevector <2 x double> %3, <2 x double> %i.ab, <2 x i32> <i32 1, i32 3>
  %i.aw = fneg <2 x double> %i.av
  %i.ax = fmul <2 x double> %i.au, %i.aw
  %i.ay = insertelement <2 x double> poison, double %i.p, i64 0 ; 2 uses
  %i.az = shufflevector <2 x double> %i.ay, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ba = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %5, <2 x double> %i.az, <2 x double> %i.ax) ; 5 uses
  %i.bb = extractelement <2 x double> %i.ba, i64 0 ; 2 uses
  %i.bc = fneg double %i.bb
  %i.bd = fmul double %9, %i.bc
  %i.be = extractelement <2 x double> %i.ba, i64 1 ; 2 uses
  %13 = extractelement <2 x double> %i.aq, i64 1
  %14 = tail call double @llvm.fmuladd.f64(double %i.v, double %i.be, double %i.bd)
  %i.bf = shufflevector <2 x double> %i.aq, <2 x double> %8, <2 x i32> <i32 1, i32 3>
  %i.bg = insertelement <2 x double> poison, double %i.at, i64 0
  %i.bh = insertelement <2 x double> %i.bg, double %14, i64 1
  %i.bi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.y, <2 x double> %i.bf, <2 x double> %i.bh) ; 3 uses
  %i.bj = fneg double %13                         ; 2 uses
  %i.bk = fmul double %i.v, %i.bj
  %i.bl = insertelement <2 x double> poison, double %i.s, i64 0
  %i.bm = insertelement <2 x double> %i.bl, double %i.ac, i64 1
  %i.bn = shufflevector <2 x double> %i.bi, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.bo = insertelement <2 x double> %i.bn, double %i.bk, i64 0
  %i.bp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bm, <2 x double> %i.ba, <2 x double> %i.bo) ; 3 uses
  %i.bq = extractelement <2 x double> %8, i64 0   ; 2 uses
  %i.br = extractelement <2 x double> %i.bp, i64 0
  %i.bs = tail call double @llvm.fmuladd.f64(double %i.aj, double %i.bq, double %i.br) ; 2 uses
  %i.bt = fneg double %i.bq                       ; 2 uses
  %i.bu = fmul double %9, %i.bt
  %15 = insertelement <2 x double> %i.bp, double %i.v, i64 0
  %16 = shufflevector <2 x double> %i.aq, <2 x double> %i.ag, <2 x i32> <i32 0, i32 3>
  %17 = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.bu, i64 0
  %18 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %15, <2 x double> %16, <2 x double> %17)
  %i.bv = insertelement <2 x double> poison, double %i.ac, i64 0 ; 3 uses
  %19 = insertelement <2 x double> %i.bv, double %i.b, i64 1
  %20 = shufflevector <2 x double> %8, <2 x double> %i.bi, <2 x i32> <i32 1, i32 3>
  %i.bw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %19, <2 x double> %20, <2 x double> %18) ; 3 uses
  %i.bx = extractelement <2 x double> %i.ai, i64 1 ; 3 uses
  %i.by = extractelement <2 x double> %i.bw, i64 1
  %i.bz = tail call double @llvm.fmuladd.f64(double %i.bs, double %i.bx, double %i.by)
  %i.ca = extractelement <2 x double> %i.am, i64 1 ; 2 uses
  %i.cb = extractelement <2 x double> %i.bw, i64 0
  %i.cc = tail call double @llvm.fmuladd.f64(double %i.cb, double %i.ca, double %i.bz) ; 2 uses
  %i.cd = fptrunc double %i.cc to float           ; 2 uses
  %i.ce = bitcast float %i.cd to i32              ; 2 uses
  %i.cf = and i32 %i.ce, 2139095040
  %i.cg = icmp eq i32 %i.cf, 2139095040
  br i1 %i.cg, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.thread, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit

_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit: ; preds = %bb.a
  %i.ch = tail call float @llvm.fabs.f32(float %i.cd) ; 2 uses
  %i.ci = fneg float %i.ch
  %i.cj = bitcast float %i.ci to i32
  %i.ck = bitcast float %i.ch to i32
  %i.cl = sub nuw i32 -2147483648, %i.ck
  %i.cm = icmp slt i32 %i.ce, 0
  %i.cn = select i1 %i.cm, i32 %i.cl, i32 %i.cj   ; 3 uses
  %i.co = sub nuw i32 -2147483648, %i.cn
  %i.cp = xor i32 %i.cn, -2147483648
  %i.cq = icmp slt i32 %i.cn, 0
  %i.cr = select i1 %i.cq, i32 %i.cp, i32 %i.co
  %i.cs = icmp ult i32 %i.cr, 3
  br i1 %i.cs, label %bb.b, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.thread

_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.thread: ; preds = %bb.a, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit
  %i.ct = fdiv double 1.000000e+00, %i.cc
  %21 = extractelement <2 x double> %i.ag, i64 1
  %i.cu = fneg double %i.v                        ; 2 uses
  %i.cv = fmul double %i.bx, %i.cu
  %i.cw = fneg <2 x double> %i.ag
  %i.cx = fneg double %i.b
  %i.cy = insertelement <4 x double> poison, double %i.ct, i64 0
  %i.cz = shufflevector <4 x double> %i.cy, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.db = fmul double %i.bx, %i.bj
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dd = fmul double %i.ca, %i.bt
  %22 = tail call double @llvm.fmuladd.f64(double %i.b, double %i.be, double %i.db)
  %i.de = shufflevector <2 x double> %i.am, <2 x double> %i.ag, <2 x i32> <i32 1, i32 3>
  %i.df = insertelement <2 x double> poison, double %22, i64 0
  %i.dg = insertelement <2 x double> %i.df, double %i.dd, i64 1
  %i.dh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.de, <2 x double> %i.aq, <2 x double> %i.dg) ; 2 uses
  %i.di = extractelement <2 x double> %i.dh, i64 1
  %i.dj = tail call double @llvm.fmuladd.f64(double %i.cx, double %i.bb, double %i.di)
  %i.dk = insertelement <4 x double> poison, double %i.bs, i64 0
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dm = shufflevector <2 x double> %i.ai, <2 x double> %i.am, <2 x i32> <i32 1, i32 3>
  %i.dn = fneg <2 x double> %i.y
  %i.do = shufflevector <2 x double> %i.bv, <2 x double> %i.dn, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.dp = fmul <2 x double> %i.dm, %i.do
  %i.dq = shufflevector <2 x double> %i.am, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dr = fmul <2 x double> %i.dq, %i.do
  %i.ds = insertelement <2 x double> %i.ai, double %i.b, i64 0 ; 2 uses
  %i.dt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ds, <2 x double> %i.y, <2 x double> %i.dp) ; 4 uses
  %i.du = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ds, <2 x double> %i.du, <2 x double> %i.dr) ; 3 uses
  %i.dw = shufflevector <2 x double> %i.dv, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.dx = extractelement <2 x double> %i.dt, i64 0
  %i.dy = fneg double %i.dx                       ; 2 uses
  %i.dz = insertelement <2 x double> %i.ai, double %i.p, i64 1
  %i.ea = shufflevector <2 x double> %i.am, <2 x double> %4, <2 x i32> <i32 0, i32 2>
  %i.eb = shufflevector <2 x double> %i.ag, <2 x double> %i.am, <2 x i32> <i32 1, i32 3>
  %i.ec = insertelement <2 x double> %i.bv, double %i.cu, i64 1
  %i.ed = fmul <2 x double> %i.eb, %i.ec
  %i.ee = insertelement <2 x double> %i.ag, double %i.b, i64 0
  %i.ef = insertelement <2 x double> %i.y, double %i.v, i64 0
  %i.eg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ee, <2 x double> %i.ef, <2 x double> %i.ed) ; 6 uses
  %i.eh = shufflevector <2 x double> %i.eg, <2 x double> %i.ba, <2 x i32> <i32 1, i32 2>
  %i.ei = shufflevector <2 x double> %i.dv, <2 x double> %i.eg, <2 x i32> <i32 0, i32 2>
  %i.ej = fneg <2 x double> %i.ei                 ; 2 uses
  %i.ek = shufflevector <2 x double> %3, <2 x double> %i.am, <2 x i32> <i32 1, i32 2>
  %i.el = fmul <2 x double> %i.ek, %i.ej
  %i.em = insertelement <2 x double> %i.ej, double %i.dy, i64 1
  %i.en = fmul <2 x double> %i.dz, %i.em
  %i.eo = shufflevector <2 x double> %3, <2 x double> %i.ag, <2 x i32> <i32 0, i32 2>
  %i.ep = shufflevector <2 x double> %i.eg, <2 x double> %i.dv, <2 x i32> <i32 1, i32 2>
  %i.eq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eo, <2 x double> %i.ep, <2 x double> %i.el)
  %i.er = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ab, <2 x double> %i.dw, <2 x double> %i.en)
  %i.es = fneg <2 x double> %i.eg
  %i.et = fmul <2 x double> %11, %i.es
  %i.eu = shufflevector <2 x double> %3, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ev = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eu, <2 x double> %i.dt, <2 x double> %i.et)
  %i.ew = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ea, <2 x double> %i.dt, <2 x double> %i.er)
  %i.ex = fneg <2 x double> %i.ab
  %i.ey = shufflevector <2 x double> %i.ay, <2 x double> %i.ex, <2 x i32> <i32 0, i32 2>
  %i.ez = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ey, <2 x double> %i.eg, <2 x double> %i.eq)
  %i.fa = tail call double @llvm.fmuladd.f64(double %21, double %9, double %i.cv) ; 2 uses
  %i.fb = insertelement <2 x double> %8, double %i.fa, i64 0 ; 2 uses
  %i.fc = fneg <2 x double> %i.fb
  %i.fd = fmul <2 x double> %i.am, %i.fc
  %i.fe = insertelement <2 x double> poison, double %i.dy, i64 0
  %i.ff = insertelement <2 x double> %i.fe, double %i.as, i64 1
  %i.fg = fmul <2 x double> %i.ff, %i.ag
  %i.fh = insertelement <2 x double> %i.ab, double %i.b, i64 1
  %i.fi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fh, <2 x double> %i.fb, <2 x double> %i.fg)
  %i.fj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ai, <2 x double> %i.eh, <2 x double> %i.fd)
  %i.fk = shufflevector <2 x double> %i.eg, <2 x double> %8, <2 x i32> <i32 0, i32 2>
  %i.fl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ai, <2 x double> %i.fk, <2 x double> %i.fi)
  %i.fm = shufflevector <2 x double> %i.ba, <2 x double> %i.dt, <2 x i32> <i32 3, i32 1>
  %i.fn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cw, <2 x double> %i.fm, <2 x double> %i.fj)
  %i.fo = insertelement <2 x double> %4, double %i.p, i64 1
  %i.fp = insertelement <2 x double> poison, double %i.fa, i64 0
  %i.fq = shufflevector <2 x double> %i.fp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fo, <2 x double> %i.fq, <2 x double> %i.ev) ; 2 uses
  %i.fs = shufflevector <2 x double> %i.bi, <2 x double> %i.fr, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.ft = shufflevector <2 x double> %i.fn, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fu = shufflevector <4 x double> %i.fs, <4 x double> %i.ft, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.fv = fmul <4 x double> %i.cz, %i.fu
  %i.fw = fptrunc <4 x double> %i.fv to <4 x float>
  store <4 x float> %i.fw, ptr %0, align 4, !tbaa !9
  %i.fx = shufflevector <2 x double> %i.bp, <2 x double> %i.ew, <4 x i32> <i32 1, i32 3, i32 2, i32 poison>
  %i.fy = shufflevector <2 x double> %i.dh, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.fz = shufflevector <4 x double> %i.fx, <4 x double> %i.fy, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ga = fmul <4 x double> %i.cz, %i.fz
  %i.gb = fptrunc <4 x double> %i.ga to <4 x float>
  store <4 x float> %i.gb, ptr %i.da, align 4, !tbaa !9
  %i.gc = shufflevector <2 x double> %i.ez, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gd = shufflevector <4 x double> %i.dk, <4 x double> %i.gc, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.ge = insertelement <4 x double> %i.gd, double %i.dj, i64 3
  %i.gf = fmul <4 x double> %i.cz, %i.ge
  %i.gg = fptrunc <4 x double> %i.gf to <4 x float>
  store <4 x float> %i.gg, ptr %i.dc, align 4, !tbaa !9
  %i.gh = shufflevector <2 x double> %i.bw, <2 x double> %i.fr, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.gi = shufflevector <2 x double> %i.fl, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gj = shufflevector <4 x double> %i.gh, <4 x double> %i.gi, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.gk = fmul <4 x double> %i.cz, %i.gj
  %i.gl = fptrunc <4 x double> %i.gk to <4 x float>
  store <4 x float> %i.gl, ptr %i.dl, align 4, !tbaa !9
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
end_hunk_0
