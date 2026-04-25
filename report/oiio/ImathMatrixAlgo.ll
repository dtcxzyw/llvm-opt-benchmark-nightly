inline.NumInlined: 1149
inline.NumDeleted: 144
begin_hunk_0_@_ZN9Imath_3_132procrustesRotationAndTranslationIdEENS_8Matrix44IdEEPKNS_4Vec3IT_EES7_PKS4_mb:bb.a

.preheader227.epil.preheader:                     ; preds = %.unr-lcssa, %.preheader227.preheader
  %.084244.epil.init = phi i64 [ 0, %.preheader227.preheader ], [ %i.ae, %.unr-lcssa ] ; 2 uses
  %.sroa.26.0243.epil.init = phi double [ 0.000000e+00, %.preheader227.preheader ], [ %27, %.unr-lcssa ]
  %.sroa.22.0240.epil.init = phi double [ 0.000000e+00, %.preheader227.preheader ], [ %28, %.unr-lcssa ]
  %.epil.init = phi <2 x double> [ zeroinitializer, %.preheader227.preheader ], [ %i.ad, %.unr-lcssa ]
  %.epil.init437 = phi <2 x double> [ zeroinitializer, %.preheader227.preheader ], [ %26, %.unr-lcssa ]
  %lcmp.mod439 = trunc i64 %4 to i1
  tail call void @llvm.assume(i1 %lcmp.mod439)
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.084244.epil.init ; 2 uses
  %10 = load <2 x double>, ptr %i.j, align 8, !tbaa !7
  %11 = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.k = load double, ptr %11, align 8, !tbaa !9
  %12 = fadd <2 x double> %.epil.init437, %10
  %13 = fadd double %.sroa.26.0243.epil.init, %i.k
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %.084244.epil.init ; 2 uses
  %i.m = load <2 x double>, ptr %i.l, align 8, !tbaa !7
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.o = load double, ptr %i.n, align 8, !tbaa !9
  %i.p = fadd <2 x double> %.epil.init, %i.m
  %14 = fadd double %.sroa.22.0240.epil.init, %i.o
  br label %bb.d

bb.d:                                             ; preds = %.unr-lcssa, %.preheader227.epil.preheader
  %.lcssa428.a = phi <2 x double> [ %26, %.unr-lcssa ], [ %12, %.preheader227.epil.preheader ]
  %.lcssa429 = phi double [ %27, %.unr-lcssa ], [ %13, %.preheader227.epil.preheader ]
  %.lcssa428 = phi <2 x double> [ %i.ad, %.unr-lcssa ], [ %i.p, %.preheader227.epil.preheader ]
  %.lcssa427 = phi double [ %28, %.unr-lcssa ], [ %14, %.preheader227.epil.preheader ]
  %15 = uitofp i64 %4 to double
  br label %.loopexit229

.preheader227:                                    ; preds = %.preheader227, %.preheader227.preheader.new
  %.084244 = phi i64 [ 0, %.preheader227.preheader.new ], [ %i.ae, %.preheader227 ] ; 4 uses
  %.sroa.26.0243 = phi double [ 0.000000e+00, %.preheader227.preheader.new ], [ %27, %.preheader227 ]
  %.sroa.22.0240 = phi double [ 0.000000e+00, %.preheader227.preheader.new ], [ %28, %.preheader227 ]
  %i.q = phi <2 x double> [ zeroinitializer, %.preheader227.preheader.new ], [ %i.ad, %.preheader227 ]
  %16 = phi <2 x double> [ zeroinitializer, %.preheader227.preheader.new ], [ %26, %.preheader227 ]
  %niter = phi i64 [ 0, %.preheader227.preheader.new ], [ %niter.next.1, %.preheader227 ]
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.084244 ; 2 uses
  %17 = load <2 x double>, ptr %i.r, align 8, !tbaa !7
  %18 = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.s = load double, ptr %18, align 8, !tbaa !9
  %19 = fadd <2 x double> %16, %17
  %20 = fadd double %.sroa.26.0243, %i.s
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %.084244 ; 2 uses
  %i.u = load <2 x double>, ptr %i.t, align 8, !tbaa !7
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.w = load double, ptr %i.v, align 8, !tbaa !9
  %i.x = fadd <2 x double> %i.q, %i.u
  %21 = fadd double %.sroa.22.0240, %i.w
  %22 = or disjoint i64 %.084244, 1               ; 2 uses
  %23 = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %22 ; 2 uses
  %24 = load <2 x double>, ptr %23, align 8, !tbaa !7
  %25 = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.y = load double, ptr %25, align 8, !tbaa !9
  %26 = fadd <2 x double> %19, %24                ; 3 uses
  %27 = fadd double %20, %i.y                     ; 3 uses
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %22 ; 2 uses
  %i.aa = load <2 x double>, ptr %i.z, align 8, !tbaa !7
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !9
  %i.ad = fadd <2 x double> %i.x, %i.aa           ; 3 uses
  %28 = fadd double %21, %i.ac                    ; 3 uses
  %i.ae = add nuw i64 %.084244, 2                 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %.preheader227, !llvm.loop !11

.preheader228:                                    ; preds = %bb.c, %.preheader228
  %.085236 = phi i64 [ %i.az, %.preheader228 ], [ 0, %bb.c ] ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN9Imath_3_132procrustesRotationAndTranslationIdEENS_8Matrix44IdEEPKNS_4Vec3IT_EES7_PKS4_mb:bb.a
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.085236
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.085236 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !9
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %.085236 ; 2 uses
  %i.al = load double, ptr %i.ak, align 8, !tbaa !13
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.an = load double, ptr %i.ag, align 8, !tbaa !7 ; 2 uses
  %i.ao = load <2 x double>, ptr %i.ah, align 8, !tbaa !7
end_hunk_1
begin_hunk_2_@_ZN9Imath_3_132procrustesRotationAndTranslationIdEENS_8Matrix44IdEEPKNS_4Vec3IT_EES7_PKS4_mb:bb.a
  %i.ar = insertelement <6 x double> poison, double %i.an, i64 0
  %i.as = shufflevector <6 x double> %i.ar, <6 x double> poison, <6 x i32> zeroinitializer
  %i.at = insertelement <6 x double> <double 1.000000e+00, double poison, double poison, double poison, double poison, double poison>, double %i.aj, i64 1
  %i.au = shufflevector <2 x double> %i.ao, <2 x double> poison, <6 x i32> <i32 1, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %29 = shufflevector <6 x double> %i.at, <6 x double> %i.au, <6 x i32> <i32 0, i32 1, i32 6, i32 7, i32 poison, i32 poison>
  %i.av = shufflevector <2 x double> %i.ap, <2 x double> poison, <6 x i32> <i32 1, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %30 = shufflevector <6 x double> %29, <6 x double> %i.av, <6 x i32> <i32 0, i32 1, i32 2, i32 3, i32 6, i32 7>
  %i.aw = fmul <6 x double> %i.as, %30
  %i.ax = fadd double %.sroa.0180.1230, %i.aq     ; 2 uses
  %i.ay = fadd <6 x double> %i.af, %i.aw          ; 6 uses
  %i.az = add nuw i64 %.085236, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.az, %4
  br i1 %exitcond.not, label %.loopexit229.loopexit, label %.preheader228, !llvm.loop !14

.loopexit229.loopexit:                            ; preds = %.preheader228
  %i.ba = extractelement <6 x double> %i.ay, i64 4
  %i.bb = extractelement <6 x double> %i.ay, i64 1
  %i.bc = extractelement <6 x double> %i.ay, i64 0
  %31 = shufflevector <6 x double> %i.ay, <6 x double> poison, <2 x i32> <i32 3, i32 2>
  %i.bd = shufflevector <6 x double> %i.ay, <6 x double> poison, <2 x i32> <i32 poison, i32 5>
  %i.be = insertelement <2 x double> %i.bd, double %i.ax, i64 0
  br label %.loopexit229

.loopexit229:                                     ; preds = %.loopexit229.loopexit, %bb.d
  %.sroa.0197.2 = phi double [ %.lcssa427, %bb.d ], [ %i.ba, %.loopexit229.loopexit ]
  %.sroa.14205.2 = phi double [ %.lcssa429, %bb.d ], [ %i.bb, %.loopexit229.loopexit ]
  %.sroa.26.2 = phi double [ %15, %bb.d ], [ %i.bc, %.loopexit229.loopexit ] ; 4 uses
  %32 = phi <2 x double> [ %.lcssa428, %bb.d ], [ %i.be, %.loopexit229.loopexit ]
  %i.bf = phi <2 x double> [ %.lcssa428.a, %bb.d ], [ %31, %.loopexit229.loopexit ]
  %i.bg = fcmp oeq double %.sroa.26.2, 0.000000e+00
  br i1 %i.bg, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.loopexit229
end_hunk_2
begin_hunk_3_@_ZN9Imath_3_132procrustesRotationAndTranslationIdEENS_8Matrix44IdEEPKNS_4Vec3IT_EES7_PKS4_mb:bb.a
  br label %bb.i

bb.f:                                             ; preds = %.loopexit229
  %33 = insertelement <2 x double> poison, double %.sroa.26.2, i64 0
  %34 = shufflevector <2 x double> %33, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %35 = fdiv <2 x double> %i.bf, %34              ; 8 uses
  %36 = fdiv double %.sroa.14205.2, %.sroa.26.2   ; 5 uses
  %i.bn = fdiv <2 x double> %32, %34              ; 3 uses
  %i.bo = fdiv double %.sroa.0197.2, %.sroa.26.2  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 24
end_hunk_3
begin_hunk_4_@_ZN9Imath_3_132procrustesRotationAndTranslationIdEENS_8Matrix44IdEEPKNS_4Vec3IT_EES7_PKS4_mb:bb.a
  br i1 %i.h, label %.preheader223.preheader, label %.preheader225.preheader

.preheader225.preheader:                          ; preds = %bb.f
  %37 = shufflevector <2 x double> %i.bn, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %38 = insertelement <4 x double> %37, double %i.bo, i64 2
  %39 = shufflevector <2 x double> %35, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %40 = insertelement <4 x double> %39, double %36, i64 2
  br label %.preheader225

.preheader223.preheader:                          ; preds = %bb.f
  %41 = shufflevector <2 x double> %35, <2 x double> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 poison>
  %i.bu = insertelement <4 x double> %41, double %36, i64 1
  %i.bv = shufflevector <4 x double> %i.bu, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  br label %.preheader223

end_hunk_4
begin_hunk_5_@_ZN9Imath_3_132procrustesRotationAndTranslationIdEENS_8Matrix44IdEEPKNS_4Vec3IT_EES7_PKS4_mb:bb.a
  %i.by = phi <4 x double> [ %i.cj, %.preheader223 ], [ zeroinitializer, %.preheader223.preheader ]
  %i.bz = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %.083280 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !9
  %i.cc = fsub double %i.cb, %i.bo                ; 2 uses
  %i.cd = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.083280 ; 2 uses
  %42 = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.ce = load <2 x double>, ptr %i.bz, align 8, !tbaa !7
  %i.cf = fsub <2 x double> %i.ce, %i.bn          ; 2 uses
  %i.cg = shufflevector <2 x double> %i.cf, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %43 = load <2 x double>, ptr %42, align 8, !tbaa !7
  %44 = load <2 x double>, ptr %i.cd, align 8, !tbaa !7
  %45 = shufflevector <2 x double> %43, <2 x double> %44, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %46 = fsub <4 x double> %45, %i.bv              ; 3 uses
  %47 = shufflevector <4 x double> %46, <4 x double> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 2>
  %48 = fmul <4 x double> %i.cg, %47
  %49 = shufflevector <2 x double> %i.cf, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %50 = insertelement <2 x double> %49, double %i.cc, i64 1
  %51 = shufflevector <2 x double> %50, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %52 = fmul <4 x double> %51, %46
  %53 = extractelement <4 x double> %46, i64 1
  %i.ch = fmul double %i.cc, %53
  %i.ci = fadd <4 x double> %48, %i.bx            ; 2 uses
  %i.cj = fadd <4 x double> %52, %i.by            ; 2 uses
  %i.ck = fadd double %i.ch, %i.bw                ; 2 uses
  %i.cl = add nuw i64 %.083280, 1                 ; 2 uses
  %exitcond339.not = icmp eq i64 %i.cl, %4
end_hunk_5
begin_hunk_6_@_ZN9Imath_3_132procrustesRotationAndTranslationIdEENS_8Matrix44IdEEPKNS_4Vec3IT_EES7_PKS4_mb:bb.a
  %i.cn = phi <8 x double> [ %i.cy, %.preheader225 ], [ zeroinitializer, %.preheader225.preheader ]
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.082261
  %i.cp = load double, ptr %i.co, align 8, !tbaa !7
  %i.cq = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %.082261 ; 2 uses
  %54 = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %55 = load double, ptr %54, align 8, !tbaa !9
  %i.cr = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.082261 ; 2 uses
  %56 = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %57 = load double, ptr %56, align 8, !tbaa !9
  %58 = load <2 x double>, ptr %i.cq, align 8, !tbaa !7
  %59 = shufflevector <2 x double> %58, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %60 = insertelement <4 x double> %59, double %55, i64 2
  %61 = fsub <4 x double> %60, %38
  %62 = insertelement <4 x double> poison, double %i.cp, i64 0
  %63 = shufflevector <4 x double> %62, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %64 = fmul <4 x double> %63, %61                ; 2 uses
  %i.cs = shufflevector <4 x double> %64, <4 x double> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 2, i32 2>
  %65 = load <2 x double>, ptr %i.cr, align 8, !tbaa !7
  %66 = shufflevector <2 x double> %65, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %67 = insertelement <4 x double> %66, double %57, i64 2
  %68 = fsub <4 x double> %67, %40                ; 2 uses
  %i.ct = shufflevector <4 x double> %68, <4 x double> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 0, i32 1, i32 2, i32 0, i32 1>
  %i.cu = fmul <8 x double> %i.ct, %i.cs
  %i.cv = extractelement <4 x double> %68, i64 2
  %i.cw = extractelement <4 x double> %64, i64 2
  %i.cx = fmul double %i.cw, %i.cv
  %i.cy = fadd <8 x double> %i.cu, %i.cn          ; 3 uses
  %i.cz = fadd double %i.cx, %i.cm                ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN9Imath_3_132procrustesRotationAndTranslationIdEENS_8Matrix44IdEEPKNS_4Vec3IT_EES7_PKS4_mb:bb.a
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.loopexit224
  br i1 %i.h, label %.preheader220.preheader, label %.preheader221.preheader

.preheader221.preheader:                          ; preds = %bb.g
  %69 = extractelement <2 x double> %35, i64 0
  %70 = extractelement <2 x double> %35, i64 1
  br label %.preheader221

.preheader220.preheader:                          ; preds = %bb.g
  %71 = extractelement <2 x double> %35, i64 0
  %72 = extractelement <2 x double> %35, i64 1
  br label %.preheader220

.preheader220:                                    ; preds = %.preheader220.preheader, %.preheader220
  %.079286 = phi i64 [ %i.gv, %.preheader220 ], [ 0, %.preheader220.preheader ] ; 2 uses
  %.sroa.0110.0285 = phi double [ %i.gs, %.preheader220 ], [ 0.000000e+00, %.preheader220.preheader ] ; 2 uses
  %.sroa.8.0284 = phi double [ %i.gu, %.preheader220 ], [ 0.000000e+00, %.preheader220.preheader ]
  %i.gf = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.079286 ; 3 uses
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !13
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !23
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !9
  %i.gl = fsub double %i.gg, %71                  ; 2 uses
  %i.gm = fsub double %i.gi, %72                  ; 2 uses
  %i.gn = fsub double %i.gk, %36                  ; 2 uses
  %i.go = fmul double %i.gm, %i.gm
  %i.gp = call double @llvm.fmuladd.f64(double %i.gl, double %i.gl, double %i.go)
  %i.gq = call noundef double @llvm.fmuladd.f64(double %i.gn, double %i.gn, double %i.gp)
end_hunk_7
begin_hunk_8_@_ZN9Imath_3_132procrustesRotationAndTranslationIdEENS_8Matrix44IdEEPKNS_4Vec3IT_EES7_PKS4_mb:bb.a
  %exitcond343.not = icmp eq i64 %i.gv, %4
  br i1 %exitcond343.not, label %.loopexit, label %.preheader220, !llvm.loop !24

.preheader221:                                    ; preds = %.preheader221.preheader, %.preheader221
  %.078283 = phi i64 [ %i.hp, %.preheader221 ], [ 0, %.preheader221.preheader ] ; 3 uses
  %.sroa.0110.1282 = phi double [ %i.hm, %.preheader221 ], [ 0.000000e+00, %.preheader221.preheader ] ; 2 uses
  %.sroa.8.1281 = phi double [ %i.ho, %.preheader221 ], [ 0.000000e+00, %.preheader221.preheader ]
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.078283
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !7
  %i.gy = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.078283 ; 3 uses
  %i.gz = load double, ptr %i.gy, align 8, !tbaa !13
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !23
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !9
  %i.he = fsub double %i.gz, %69                  ; 2 uses
  %i.hf = fsub double %i.hb, %70                  ; 2 uses
  %i.hg = fsub double %i.hd, %36                  ; 2 uses
  %i.hh = fmul double %i.hf, %i.hf
  %i.hi = call double @llvm.fmuladd.f64(double %i.he, double %i.he, double %i.hh)
  %i.hj = call noundef double @llvm.fmuladd.f64(double %i.hg, double %i.hg, double %i.hi)
end_hunk_8
begin_hunk_9_@_ZN9Imath_3_132procrustesRotationAndTranslationIdEENS_8Matrix44IdEEPKNS_4Vec3IT_EES7_PKS4_mb:bb.a

bb.h:                                             ; preds = %.loopexit, %.loopexit224
  %.080 = phi double [ %i.jx, %.loopexit ], [ 1.000000e+00, %.loopexit224 ] ; 4 uses
  %73 = extractelement <2 x double> %35, i64 0
  %i.jy = fmul double %73, %.080                  ; 2 uses
  %74 = extractelement <2 x double> %35, i64 1
  %i.jz = fmul double %74, %.080                  ; 2 uses
  %i.ka = fmul double %36, %.080                  ; 2 uses
  %i.kb = fmul double %i.fm, %i.jz
  %i.kc = call double @llvm.fmuladd.f64(double %i.jy, double %i.er, double %i.kb)
  %i.kd = call double @llvm.fmuladd.f64(double %i.ka, double %i.gd, double %i.kc)
end_hunk_9
begin_hunk_10_@_ZN9Imath_3_132procrustesRotationAndTranslationIfEENS_8Matrix44IdEEPKNS_4Vec3IT_EES7_PKS4_mb:bb.a
  br i1 %exitcond336.not, label %bb.d, label %.preheader227, !llvm.loop !32

.preheader228:                                    ; preds = %bb.c, %.preheader228
  %.081237 = phi double [ %11, %.preheader228 ], [ 0.000000e+00, %bb.c ]
  %.085236 = phi i64 [ %i.av, %.preheader228 ], [ 0, %bb.c ] ; 4 uses
  %i.ag = phi <6 x double> [ %i.au, %.preheader228 ], [ zeroinitializer, %bb.c ]
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.085236
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !31
  %10 = fpext float %i.ai to double               ; 2 uses
  %11 = fadd double %.081237, %10                 ; 2 uses
  %12 = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %.085236 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !30
  %i.al = getelementptr inbounds nuw [12 x i8], ptr %2, i64 %.085236 ; 2 uses
  %i.am = load float, ptr %i.al, align 4, !tbaa !26
  %13 = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %14 = load <2 x float>, ptr %13, align 4, !tbaa !31
  %15 = fpext <2 x float> %14 to <2 x double>
  %i.an = load <2 x float>, ptr %12, align 4, !tbaa !31
  %16 = fpext <2 x float> %i.an to <2 x double>
  %17 = insertelement <2 x float> poison, float %i.ak, i64 0
  %18 = insertelement <2 x float> %17, float %i.am, i64 1
  %19 = fpext <2 x float> %18 to <2 x double>
  %i.ao = insertelement <6 x double> poison, double %10, i64 0
  %i.ap = shufflevector <6 x double> %i.ao, <6 x double> poison, <6 x i32> zeroinitializer
  %20 = shufflevector <2 x double> %16, <2 x double> poison, <6 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison>
  %21 = shufflevector <2 x double> %19, <2 x double> poison, <6 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aq = shufflevector <6 x double> %20, <6 x double> %21, <6 x i32> <i32 0, i32 1, i32 6, i32 7, i32 poison, i32 poison>
  %i.ar = shufflevector <2 x double> %15, <2 x double> poison, <6 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.as = shufflevector <6 x double> %i.aq, <6 x double> %i.ar, <6 x i32> <i32 0, i32 1, i32 2, i32 3, i32 6, i32 7>
  %i.at = fmul <6 x double> %i.ap, %i.as
  %i.au = fadd <6 x double> %i.ag, %i.at          ; 5 uses
  %i.av = add nuw i64 %.085236, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.av, %4
  br i1 %exitcond.not, label %.loopexit229.loopexit, label %.preheader228, !llvm.loop !33

.loopexit229.loopexit:                            ; preds = %.preheader228
  %i.aw = extractelement <6 x double> %i.au, i64 5
  %i.ax = extractelement <6 x double> %i.au, i64 1
  %22 = shufflevector <6 x double> %i.au, <6 x double> poison, <2 x i32> <i32 2, i32 0>
  %23 = shufflevector <6 x double> %i.au, <6 x double> poison, <2 x i32> <i32 3, i32 4>
  br label %.loopexit229

.loopexit229:                                     ; preds = %.loopexit229.loopexit, %bb.d
  %.sroa.22.2 = phi double [ %i.ae, %bb.d ], [ %i.aw, %.loopexit229.loopexit ]
  %.sroa.14205.2 = phi double [ %i.v, %bb.d ], [ %i.ax, %.loopexit229.loopexit ]
  %.1 = phi double [ %i.i, %bb.d ], [ %11, %.loopexit229.loopexit ] ; 4 uses
  %i.ay = phi <2 x double> [ %i.ad, %bb.d ], [ %23, %.loopexit229.loopexit ]
  %i.az = phi <2 x double> [ %i.w, %bb.d ], [ %22, %.loopexit229.loopexit ]
  %i.ba = fcmp oeq double %.1, 0.000000e+00
  br i1 %i.ba, label %bb.e, label %bb.f

end_hunk_10
begin_hunk_11_@_ZN9Imath_3_132procrustesRotationAndTranslationIfEENS_8Matrix44IdEEPKNS_4Vec3IT_EES7_PKS4_mb:bb.a
  br i1 %i.h, label %.preheader223, label %.preheader225.preheader

.preheader225.preheader:                          ; preds = %bb.f
  %24 = shufflevector <2 x double> %i.bl, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %25 = insertelement <4 x double> %24, double %i.bm, i64 2
  %26 = shufflevector <2 x double> %i.bk, <2 x double> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 poison>
  %27 = insertelement <4 x double> %26, double %i.bh, i64 1
  br label %.preheader225

.preheader223:                                    ; preds = %bb.f, %.preheader223
end_hunk_11
begin_hunk_12_@_ZN9Imath_3_132procrustesRotationAndTranslationIfEENS_8Matrix44IdEEPKNS_4Vec3IT_EES7_PKS4_mb:bb.a
  %i.do = load float, ptr %i.dn, align 4, !tbaa !31
  %i.dp = fpext float %i.do to double
  %i.dq = getelementptr inbounds nuw [12 x i8], ptr %2, i64 %.082261 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %28 = load float, ptr %i.dr, align 4, !tbaa !30
  %i.ds = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %.082261 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.du = load float, ptr %i.dt, align 4, !tbaa !30
  %i.dv = load <2 x float>, ptr %i.dq, align 4, !tbaa !31
  %29 = shufflevector <2 x float> %i.dv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %30 = insertelement <4 x float> %29, float %28, i64 2
  %31 = fpext <4 x float> %30 to <4 x double>
  %32 = fsub <4 x double> %31, %25
  %33 = insertelement <4 x double> poison, double %i.dp, i64 0
  %34 = shufflevector <4 x double> %33, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %35 = fmul <4 x double> %32, %34                ; 2 uses
  %i.dw = shufflevector <4 x double> %35, <4 x double> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 2, i32 2>
  %i.dx = load <2 x float>, ptr %i.ds, align 4, !tbaa !31
  %36 = shufflevector <2 x float> %i.dx, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %37 = insertelement <4 x float> %36, float %i.du, i64 2
  %38 = fpext <4 x float> %37 to <4 x double>
  %39 = fsub <4 x double> %38, %27                ; 2 uses
  %i.dy = shufflevector <4 x double> %39, <4 x double> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 0, i32 1, i32 2, i32 0, i32 1>
  %i.dz = fmul <8 x double> %i.dy, %i.dw
  %i.ea = extractelement <4 x double> %39, i64 2
  %i.eb = extractelement <4 x double> %35, i64 2
  %i.ec = fmul double %i.eb, %i.ea
  %i.ed = fadd <8 x double> %i.dz, %i.dm          ; 5 uses
  %i.ee = fadd double %i.ec, %i.dl                ; 2 uses
end_hunk_12
begin_hunk_13_@_ZN9Imath_3_19jacobiSVDIdEEvRKNS_8Matrix33IT_EERS3_RNS_4Vec3IS2_EES6_S2_b:bb.a
  %.sroa.66.0 = phi double [ %i.q, %bb.a ], [ %.sroa.66.2, %_ZN9Imath_3_112_GLOBAL__N_122twoSidedJacobiRotationIdLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i ], [ %.sroa.66.3, %bb.h ]
  %.sroa.33.0 = phi double [ %i.i, %bb.a ], [ %.sroa.33.2, %_ZN9Imath_3_112_GLOBAL__N_122twoSidedJacobiRotationIdLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i ], [ %.sroa.33.3, %bb.h ] ; 2 uses
  %.sroa.0.0 = phi double [ %i.a, %bb.a ], [ %.sroa.0.3, %_ZN9Imath_3_112_GLOBAL__N_122twoSidedJacobiRotationIdLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i ], [ %.sroa.0.3, %bb.h ] ; 3 uses
  store double %.sroa.0.0, ptr %2, align 8, !tbaa !13
  %i.og = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 9 uses
  store double %.sroa.33.0, ptr %i.og, align 8, !tbaa !23
  %i.oh = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 9 uses
  store double %.sroa.66.0, ptr %i.oh, align 8, !tbaa !9
  %i.oi = fcmp olt double %.sroa.0.0, 0.000000e+00
  br i1 %i.oi, label %.loopexit.loopexit.i, label %.loopexit.i

end_hunk_13
begin_hunk_14_@_ZN9Imath_3_19jacobiSVDIdEEvRKNS_8Matrix33IT_EERS3_RNS_4Vec3IS2_EES6_S2_b:bb.a
  %i.sg = fneg double %i.rk
  store double %i.sg, ptr %i.t, align 8, !tbaa !7
  store double %i.rt, ptr %i.u, align 8, !tbaa !7
  %i.sh = load double, ptr %i.oh, align 8, !tbaa !9
  %i.si = fneg double %i.sh
  store double %i.si, ptr %i.oh, align 8, !tbaa !9
  br label %bb.m

bb.m:                                             ; preds = %.preheader126.preheader.i, %bb.l
end_hunk_14
begin_hunk_15_@_ZN9Imath_3_19jacobiSVDIdEEvRKNS_8Matrix33IT_EERS3_RNS_4Vec3IS2_EES6_S2_b:bb.a
  %i.ti = fneg double %i.sm
  store double %i.ti, ptr %i.x, align 8, !tbaa !7
  store double %i.sv, ptr %i.y, align 8, !tbaa !7
  %i.tj = load double, ptr %i.oh, align 8, !tbaa !9
  %i.tk = fneg double %i.tj
  store double %i.tk, ptr %i.oh, align 8, !tbaa !9
  br label %_ZN9Imath_3_112_GLOBAL__N_117twoSidedJacobiSVDIdEEvNS_8Matrix33IT_EERS4_RNS_4Vec3IS3_EES5_S3_b.exit

_ZN9Imath_3_112_GLOBAL__N_117twoSidedJacobiSVDIdEEvNS_8Matrix33IT_EERS4_RNS_4Vec3IS3_EES5_S3_b.exit: ; preds = %._crit_edge.1.i, %bb.m, %.preheader.preheader.i
end_hunk_15
begin_hunk_16_@llvm.fabs.v2f64
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"double", !5, i64 0}
!9 = !{!10, !8, i64 16}
!10 = !{!"_ZTSN9Imath_3_14Vec3IdEE", !8, i64 0, !8, i64 8, !8, i64 16}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!10, !8, i64 0}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !12}
!16 = distinct !{!16, !12}
!17 = !{!18}
!18 = distinct !{!18, !19, !"_ZNK9Imath_3_18Matrix33IdE10transposedEv: argument 0"}
!19 = distinct !{!19, !"_ZNK9Imath_3_18Matrix33IdE10transposedEv"}
end_hunk_16
begin_hunk_17_@llvm.fabs.v2f64
!21 = distinct !{!21, !22, !"_ZNK9Imath_3_18Matrix33IdEmlERKS1_: argument 0"}
!22 = distinct !{!22, !"_ZNK9Imath_3_18Matrix33IdEmlERKS1_"}
!23 = !{!10, !8, i64 8}
!24 = distinct !{!24, !12}
!25 = distinct !{!25, !12}
!26 = !{!27, !28, i64 0}
!27 = !{!"_ZTSN9Imath_3_14Vec3IfEE", !28, i64 0, !28, i64 4, !28, i64 8}
!28 = !{!"float", !5, i64 0}
!29 = !{!27, !28, i64 4}
!30 = !{!27, !28, i64 8}
!31 = !{!28, !28, i64 0}
!32 = distinct !{!32, !12}
!33 = distinct !{!33, !12}
!34 = distinct !{!34, !12}
!35 = distinct !{!35, !12}
!36 = !{!37}
!37 = distinct !{!37, !38, !"_ZNK9Imath_3_18Matrix33IdE10transposedEv: argument 0"}
!38 = distinct !{!38, !"_ZNK9Imath_3_18Matrix33IdE10transposedEv"}
!39 = !{!40}
!40 = distinct !{!40, !41, !"_ZNK9Imath_3_18Matrix33IdEmlERKS1_: argument 0"}
!41 = distinct !{!41, !"_ZNK9Imath_3_18Matrix33IdEmlERKS1_"}
!42 = distinct !{!42, !12}
!43 = distinct !{!43, !12}
!44 = distinct !{!44, !12}
!45 = distinct !{!45, !12}
!46 = distinct !{!46, !12}
!47 = distinct !{!47, !12}
!48 = distinct !{!48, !12}
!49 = distinct !{!49, !12}
!50 = distinct !{!50, !12}
!51 = distinct !{!51, !12}
end_hunk_17
