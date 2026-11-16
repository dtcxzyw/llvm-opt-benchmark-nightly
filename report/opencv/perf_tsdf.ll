Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/perf_tsdf?download=true
inline.NumInlined: 1864
inline.NumDeleted: 929
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN11opencv_test12_GLOBAL__N_115SemisphereScene8getPosesEv:bb.a
  %i.eh = call float @llvm.fmuladd.f32(float %i.dv, float %i.bc, float %i.eg) ; 2 uses
  %i.ei = call float @llvm.fmuladd.f32(float %i.dt, float %i.bz, float 0.000000e+00)
  %i.ej = call float @llvm.fmuladd.f32(float %i.du, float %i.bn, float %i.ei)
  %i.ek = call noundef float @llvm.fmuladd.f32(float %i.dv, float %i.bb, float %i.ej)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37, !noalias !393
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  %i.el = load float, ptr %i.z, align 4, !tbaa !158, !noalias !395
  %i.em = fpext float %i.el to double
  %i.en = fpext float %i.al to double             ; 2 uses
  %i.eo = call double @sin(double noundef %i.en) #37
  %i.ep = fmul double %i.eo, %i.em
  %i.eq = fptrunc double %i.ep to float
  %i.er = load float, ptr %i.aa, align 4, !tbaa !158, !noalias !396
  %i.es = load float, ptr %i.ab, align 4, !tbaa !158, !noalias !397
  %i.et = fpext float %i.es to double
  %i.eu = call double @cos(double noundef %i.en) #37
  %i.ev = fmul double %i.eu, %i.et
  %i.ew = fptrunc double %i.ev to float
  %i.ex = fadd float %i.da, %i.eq                 ; 2 uses
  %i.ey = fadd float %i.ds, %i.er                 ; 2 uses
  %i.ez = fadd float %i.ek, %i.ew                 ; 2 uses
  %i.fa = load ptr, ptr %i.ad, align 8, !tbaa !167
  %.not.i = icmp eq ptr %i.ae, %i.fa
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store <2 x float> %i.cu, ptr %i.ae, align 4
  %.sroa.1780.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store float %i.cx, ptr %.sroa.1780.0..sroa_idx, align 4
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store float %i.ex, ptr %.sroa.21.0..sroa_idx, align 4
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store <2 x float> %i.dm, ptr %.sroa.27.0..sroa_idx, align 4
  %.sroa.38.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store float %i.dp, ptr %.sroa.38.0..sroa_idx, align 4
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 28
  store float %i.ey, ptr %.sroa.42.0..sroa_idx, align 4
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  store <2 x float> %i.ee, ptr %.sroa.48.0..sroa_idx, align 4
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  store float %i.eh, ptr %.sroa.58.0..sroa_idx, align 4
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 44
  %i.fb = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.ez, i64 0
  store <4 x float> %i.fb, ptr %.sroa.63.0..sroa_idx, align 4
  %.sroa.77.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 60
  store float 1.000000e+00, ptr %.sroa.77.0..sroa_idx, align 4, !tbaa !38
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ae, i64 64 ; 2 uses
  store ptr %i.fc, ptr %i.ac, align 8, !tbaa !139
  br label %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE9push_backERKS2_.exit

bb.e:                                             ; preds = %bb.c
  %i.fd = ptrtoint ptr %i.ae to i64
  %i.fe = ptrtoint ptr %i.ag to i64
  %i.ff = sub i64 %i.fd, %i.fe                    ; 4 uses
  %i.fg = icmp eq i64 %i.ff, 9223372036854775744
  br i1 %i.fg, label %bb.f, label %_ZNKSt6vectorIN2cv7Affine3IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  store ptr %i.ag, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #39
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt6vectorIN2cv7Affine3IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.fh = ashr exact i64 %i.ff, 6                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.fh, i64 1)
  %i.fi = add nsw i64 %.sroa.speculated.i.i.i, %i.fh ; 2 uses
  %i.fj = icmp ult i64 %i.fi, %i.fh
  %i.fk = call i64 @llvm.umin.i64(i64 %i.fi, i64 144115188075855871)
  %i.fl = select i1 %i.fj, i64 144115188075855871, i64 %i.fk ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.fl, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.fm = shl nuw nsw i64 %i.fl, 6
  %i.fn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fm) #40
          to label %.noexc20 unwind label %.loopexit ; 5 uses

.noexc20:                                         ; preds = %_ZNKSt6vectorIN2cv7Affine3IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.ff ; 10 uses
  store <2 x float> %i.cu, ptr %i.fo, align 4
  %.sroa.1780.0..sroa_idx81 = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  store float %i.cx, ptr %.sroa.1780.0..sroa_idx81, align 4
  %.sroa.21.0..sroa_idx87 = getelementptr inbounds nuw i8, ptr %i.fo, i64 12
  store float %i.ex, ptr %.sroa.21.0..sroa_idx87, align 4
  %.sroa.27.0..sroa_idx90 = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  store <2 x float> %i.dm, ptr %.sroa.27.0..sroa_idx90, align 4
  %.sroa.38.0..sroa_idx99 = getelementptr inbounds nuw i8, ptr %i.fo, i64 24
  store float %i.dp, ptr %.sroa.38.0..sroa_idx99, align 4
  %.sroa.42.0..sroa_idx104 = getelementptr inbounds nuw i8, ptr %i.fo, i64 28
  store float %i.ey, ptr %.sroa.42.0..sroa_idx104, align 4
  %.sroa.48.0..sroa_idx107 = getelementptr inbounds nuw i8, ptr %i.fo, i64 32
  store <2 x float> %i.ee, ptr %.sroa.48.0..sroa_idx107, align 4
  %.sroa.58.0..sroa_idx116 = getelementptr inbounds nuw i8, ptr %i.fo, i64 40
  store float %i.eh, ptr %.sroa.58.0..sroa_idx116, align 4
  %.sroa.63.0..sroa_idx121 = getelementptr inbounds nuw i8, ptr %i.fo, i64 44
  %i.fp = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.ez, i64 0
  store <4 x float> %i.fp, ptr %.sroa.63.0..sroa_idx121, align 4
  %.sroa.77.0..sroa_idx135 = getelementptr inbounds nuw i8, ptr %i.fo, i64 60
  store float 1.000000e+00, ptr %.sroa.77.0..sroa_idx135, align 4, !tbaa !38
  %.not10.i.i.i.i.i = icmp eq ptr %i.ag, %i.ae
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc20, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.fr, %.lr.ph.i.i.i.i.i ], [ %i.fn, %.noexc20 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.fq, %.lr.ph.i.i.i.i.i ], [ %i.ag, %.noexc20 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(64) %.0911.i.i.i.i.i, i64 64, i1 false), !tbaa.struct !142, !alias.scope !398
  %i.fq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 64 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.fq, %i.ae
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !389

_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc20
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.fn, %.noexc20 ], [ %i.fr, %.lr.ph.i.i.i.i.i ]
  %i.fs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.ff) #36
  br label %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.fs, ptr %i.ac, align 8, !tbaa !139
  %i.ft = getelementptr inbounds nuw [64 x i8], ptr %i.fn, i64 %i.fl
  store ptr %i.ft, ptr %i.ad, align 8, !tbaa !167
  br label %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.d
  %i.fu = phi ptr [ %i.fs, %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.fc, %bb.d ]
  %i.fv = phi ptr [ %i.fn, %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.ag, %bb.d ] ; 2 uses
  %i.fw = add nuw nsw i32 %.012143, 1             ; 2 uses
  %i.fx = uitofp nneg i32 %i.fw to float
  %i.fy = load i32, ptr %i.a, align 8, !tbaa !163 ; 2 uses
  %i.fz = sitofp i32 %i.fy to float
  %i.ga = load float, ptr %i.b, align 4, !tbaa !164
  %i.gb = fmul float %i.ga, %i.fz
  %i.gc = fcmp ogt float %i.gb, %i.fx
  br i1 %i.gc, label %bb.b, label %._crit_edge, !llvm.loop !390

.loopexit:                                        ; preds = %_ZNKSt6vectorIN2cv7Affine3IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ag, ptr %0, align 8
  br label %bb.i

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %bb.b
  %i.gd = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ag, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %bb.i

bb.i:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.h
  %.pn15 = phi { ptr, i32 } [ %i.gd, %bb.h ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i21 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i21, label %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ge = load ptr, ptr %i.ad, align 8, !tbaa !167
  %i.gf = ptrtoint ptr %i.ge to i64
  %i.gg = ptrtoint ptr %i.ag to i64
  %i.gh = sub i64 %i.gf, %i.gg
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.gh) #36
  br label %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EED2Ev.exit:   ; preds = %bb.i, %bb.j
  resume { ptr, i32 } %.pn15

._crit_edge:                                      ; preds = %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE9push_backERKS2_.exit, %bb.a
  %.lcssa139 = phi ptr [ null, %bb.a ], [ %i.fv, %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE9push_backERKS2_.exit ]
  store ptr %.lcssa139, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv7Affine3IfE8rotationERKNS_3VecIfLi3EEE(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(12) %1) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load <2 x float>, ptr %1, align 4, !tbaa !158
  %i.c = load <2 x float>, ptr %i.a, align 4, !tbaa !158
  %i.d = fpext <2 x float> %i.b to <2 x double>   ; 3 uses
  %i.e = extractelement <2 x double> %i.d, i64 0  ; 2 uses
  %i.f = tail call double @llvm.fmuladd.f64(double %i.e, double %i.e, double 0.000000e+00)
  %i.g = fpext <2 x float> %i.c to <2 x double>   ; 2 uses
  %i.h = extractelement <2 x double> %i.d, i64 1  ; 2 uses
  %i.i = tail call double @llvm.fmuladd.f64(double %i.h, double %i.h, double %i.f)
  %i.j = extractelement <2 x double> %i.g, i64 1  ; 2 uses
  %i.k = tail call noundef double @llvm.fmuladd.f64(double %i.j, double %i.j, double %i.i)
  %sqrt.i = tail call noundef double @llvm.sqrt.f64(double %i.k) ; 4 uses
  %i.l = fcmp olt double %sqrt.i, f0x3CB0000000000000
  br i1 %i.l, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = fdiv double 1.000000e+00, %sqrt.i
  %i.n = tail call double @cos(double noundef %sqrt.i) #37 ; 2 uses
  %i.o = tail call double @sin(double noundef %sqrt.i) #37
  %i.p = fsub double 1.000000e+00, %i.n           ; 4 uses
  %i.q = insertelement <2 x double> poison, double %i.m, i64 0
  %i.r = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.s = fmul <2 x double> %i.r, %i.d             ; 3 uses
  %i.t = fmul <2 x double> %i.r, %i.g             ; 3 uses
  %i.u = fptrunc <2 x double> %i.s to <2 x float> ; 5 uses
  %i.v = fptrunc <2 x double> %i.t to <2 x float> ; 2 uses
  %i.w = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.x = fmul <2 x float> %i.w, %i.u
  %i.y = shufflevector <2 x float> %i.u, <2 x float> poison, <2 x i32> zeroinitializer
  %i.z = fmul <2 x float> %i.y, %i.u
  %i.aa = fpext <2 x float> %i.z to <2 x double>
  %i.ab = insertelement <2 x double> poison, double %i.p, i64 0
  %i.ac = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ad = fmul <2 x double> %i.ac, %i.aa
  %i.ae = fptrunc <2 x double> %i.ad to <2 x float>
  %i.af = fpext <2 x float> %i.x to <2 x double>
  %i.ag = insertelement <4 x double> poison, double %i.n, i64 0
  %i.ah = insertelement <4 x double> %i.ag, double %i.p, i64 2
  %2 = shufflevector <4 x double> %i.ah, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.ai = shufflevector <2 x double> %i.af, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %3 = shufflevector <4 x double> <double 1.000000e+00, double 0.000000e+00, double poison, double poison>, <4 x double> %i.ai, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.aj = fmul <4 x double> %2, %3
  %i.ak = fptrunc <4 x double> %i.aj to <4 x float> ; 3 uses
  %i.al = shufflevector <4 x float> %i.ak, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 1, i32 0, i32 3, i32 2, i32 1>
  %i.am = shufflevector <2 x double> %i.s, <2 x double> %i.t, <2 x i32> <i32 1, i32 3>
  %i.an = fptrunc <2 x double> %i.am to <2 x float> ; 2 uses
  %i.ao = fmul <2 x float> %i.an, %i.an
  %i.ap = fpext <2 x float> %i.ao to <2 x double> ; 2 uses
  %i.aq = extractelement <2 x double> %i.ap, i64 0
  %i.ar = fmul double %i.p, %i.aq
  %i.as = fptrunc double %i.ar to float
  %i.at = extractelement <2 x double> %i.ap, i64 1
  %i.au = fmul double %i.p, %i.at
  %i.av = fptrunc double %i.au to float
  %i.aw = shufflevector <4 x float> %i.ak, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 1, i32 1, i32 3> ; 2 uses
  %i.ax = shufflevector <2 x float> %i.ae, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ay = shufflevector <8 x float> %i.ax, <8 x float> %i.aw, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 13, i32 14, i32 15>
  %i.az = shufflevector <8 x float> %i.ay, <8 x float> %i.aw, <8 x i32> <i32 0, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 6, i32 7>
  %i.ba = insertelement <8 x float> %i.az, float %i.as, i64 4
  %i.bb = shufflevector <8 x float> %i.ba, <8 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 1, i32 4, i32 5, i32 6, i32 7>
  %i.bc = fadd <8 x float> %i.al, %i.bb
  %i.bd = extractelement <4 x float> %i.ak, i64 0
  %i.be = fadd float %i.bd, %i.av
  %i.bf = fpext <2 x float> %i.v to <2 x double>
  %i.bg = shufflevector <2 x double> %i.t, <2 x double> %i.s, <2 x i32> <i32 1, i32 2>
  %i.bh = fptrunc <2 x double> %i.bg to <2 x float>
  %i.bi = fneg <2 x float> %i.bh
  %i.bj = fpext <2 x float> %i.bi to <2 x double>
  %i.bk = fneg <2 x float> %i.u
  %i.bl = shufflevector <2 x float> %i.bk, <2 x float> %i.u, <2 x i32> <i32 1, i32 2>
  %i.bm = fpext <2 x float> %i.bl to <2 x double>
  %i.bn = insertelement <8 x double> poison, double %i.o, i64 0
  %i.bo = shufflevector <8 x double> %i.bn, <8 x double> poison, <8 x i32> zeroinitializer
  %i.bp = shufflevector <2 x double> %i.bj, <2 x double> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 1, i32 poison, i32 poison, i32 poison>
  %i.bq = shufflevector <8 x double> %i.bp, <8 x double> <double 0.000000e+00, double poison, double poison, double poison, double 0.000000e+00, double poison, double poison, double poison>, <8 x i32> <i32 8, i32 0, i32 poison, i32 poison, i32 12, i32 4, i32 poison, i32 poison>
  %i.br = shufflevector <2 x double> %i.bm, <2 x double> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bs = shufflevector <8 x double> %i.bq, <8 x double> %i.br, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 4, i32 5, i32 8, i32 9>
  %i.bt = shufflevector <2 x double> %i.bf, <2 x double> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bu = shufflevector <8 x double> %i.bs, <8 x double> %i.bt, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 6, i32 7>
  %i.bv = fmul <8 x double> %i.bo, %i.bu
  %i.bw = fptrunc <8 x double> %i.bv to <8 x float> ; 2 uses
  %i.bx = fadd <8 x float> %i.bc, %i.bw
  %i.by = extractelement <8 x float> %i.bw, i64 0
  %i.bz = fadd float %i.be, %i.by
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi float [ %i.bz, %bb.b ], [ 1.000000e+00, %bb.a ]
  %i.ca = phi <8 x float> [ %i.bx, %bb.b ], [ <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, %bb.a ] ; 8 uses
  %i.cb = extractelement <8 x float> %i.ca, i64 0
  store float %i.cb, ptr %0, align 4, !tbaa !158
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cd = extractelement <8 x float> %i.ca, i64 1
  store float %i.cd, ptr %i.cc, align 4, !tbaa !158
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cf = extractelement <8 x float> %i.ca, i64 2
  store float %i.cf, ptr %i.ce, align 4, !tbaa !158
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ch = extractelement <8 x float> %i.ca, i64 3
  store float %i.ch, ptr %i.cg, align 4, !tbaa !158
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.cj = extractelement <8 x float> %i.ca, i64 4
  store float %i.cj, ptr %i.ci, align 4, !tbaa !158
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cl = extractelement <8 x float> %i.ca, i64 5
  store float %i.cl, ptr %i.ck, align 4, !tbaa !158
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cn = extractelement <8 x float> %i.ca, i64 6
  store float %i.cn, ptr %i.cm, align 4, !tbaa !158
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.cp = extractelement <8 x float> %i.ca, i64 7
  store float %i.cp, ptr %i.co, align 4, !tbaa !158
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %.sink, ptr %i.cq, align 4, !tbaa !158
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #23

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #24

declare void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #3

declare void @_ZN2cv3MatC2Eiii(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i32 noundef) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #25

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN11opencv_test12_GLOBAL__N_113RenderInvokerINS0_15SemisphereSceneEED0Ev(ptr noundef nonnull align 8 dereferenceable(101) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(101) dereferenceable(101) %0) #37
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #36
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZNK11opencv_test12_GLOBAL__N_113RenderInvokerINS0_15SemisphereSceneEEclERKN2cv5RangeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(101) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) unnamed_addr #26 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !176    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !177  ; 2 uses
  %i.d = icmp slt i32 %i.a, %i.c
  br i1 %i.d, label %.lr.ph99, label %._crit_edge100.split

.lr.ph99:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !408, !nonnull !138, !align !186 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !187
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %i.j = load i64, ptr %i.i, align 8, !tbaa !43
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !188  ; 2 uses
  %i.m = icmp sgt i32 %i.l, 0
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.z = load i8, ptr %i.y, align 4, !range !137
  %i.aa = trunc nuw i8 %i.z to i1
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 96
  br i1 %i.m, label %.lr.ph.preheader, label %._crit_edge100.split

.lr.ph.preheader:                                 ; preds = %.lr.ph99
  %i.ac = sext i32 %i.a to i64
  %wide.trip.count109 = sext i32 %i.c to i64
  %wide.trip.count = zext nneg i32 %i.l to i64
  br label %.lr.ph

._crit_edge100.split:                             ; preds = %._crit_edge, %.lr.ph99, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv106 = phi i64 [ %i.ac, %.lr.ph.preheader ], [ %indvars.iv.next107, %._crit_edge ] ; 3 uses
  %i.ad = mul i64 %i.j, %indvars.iv106
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ad
  %i.af = trunc nsw i64 %indvars.iv106 to i32
  %i.ag = sitofp i32 %i.af to float
  %i.ah = insertelement <2 x float> poison, float %i.ag, i64 1
  br label %bb.b

._crit_edge:                                      ; preds = %.loopexit
  %indvars.iv.next107 = add nsw i64 %indvars.iv106, 1 ; 2 uses
  %exitcond110.not = icmp eq i64 %indvars.iv.next107, %wide.trip.count109
  br i1 %exitcond110.not, label %._crit_edge100.split, label %.lr.ph, !llvm.loop !399

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.loopexit ] ; 3 uses
  %i.ai = load float, ptr %i.p, align 4, !tbaa !158, !noalias !409 ; 2 uses
  %i.aj = trunc nuw nsw i64 %indvars.iv to i32
  %i.ak = uitofp nneg i32 %i.aj to float
  %i.al = load <2 x float>, ptr %i.s, align 8, !tbaa !158
  %i.am = insertelement <2 x float> %i.ah, float %i.ak, i64 0
  %i.an = fsub <2 x float> %i.am, %i.al
  %i.ao = load float, ptr %i.v, align 8, !tbaa !158, !noalias !410
  %i.ap = load <2 x float>, ptr %i.r, align 8, !tbaa !158
  %i.aq = fmul <2 x float> %i.ap, %i.an           ; 7 uses
  %foldExtExtBinop = fmul <2 x float> %i.aq, %i.aq
  %i.ar = load <2 x float>, ptr %i.u, align 8, !tbaa !158, !noalias !410 ; 2 uses
  %i.as = extractelement <2 x float> %i.aq, i64 0
  %i.at = extractelement <2 x float> %i.ar, i64 0
  %i.au = tail call float @llvm.fmuladd.f32(float %i.at, float %i.as, float 0.000000e+00)
  %i.av = shufflevector <2 x float> %i.aq, <2 x float> %i.ar, <2 x i32> <i32 0, i32 3>
  %i.aw = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ax = insertelement <2 x float> %i.aw, float %i.au, i64 1
  %i.ay = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.av, <2 x float> %i.aq, <2 x float> %i.ax)
  %i.az = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.ao, i64 1
  %i.ba = fadd <2 x float> %i.az, %i.ay           ; 2 uses
  %i.bb = extractelement <2 x float> %i.ba, i64 0
  %i.bc = fdiv float 1.000000e+00, %i.bb
  %i.bd = extractelement <2 x float> %i.ba, i64 1
  %i.be = fpext float %i.bd to double             ; 3 uses
  %i.bf = load <2 x float>, ptr %i.n, align 8, !tbaa !158, !noalias !410 ; 2 uses
  %i.bg = load <2 x float>, ptr %i.t, align 8, !tbaa !158, !noalias !138 ; 2 uses
  %i.bh = load float, ptr %i.o, align 4, !tbaa !158, !noalias !409
  %i.bi = load <2 x float>, ptr %i.w, align 8, !tbaa !158, !noalias !410 ; 2 uses
  %i.bj = load <2 x float>, ptr %i.x, align 8, !tbaa !158, !noalias !138 ; 2 uses
  %i.bk = load float, ptr %i.q, align 4, !tbaa !158, !noalias !409
  %i.bl = shufflevector <2 x float> %i.bi, <2 x float> %i.bf, <2 x i32> <i32 0, i32 2>
  %i.bm = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bl, <2 x float> %i.bm, <2 x float> zeroinitializer)
  %i.bo = shufflevector <2 x float> %i.bi, <2 x float> %i.bf, <2 x i32> <i32 1, i32 3>
  %i.bp = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bo, <2 x float> %i.bp, <2 x float> %i.bn)
  %i.br = shufflevector <2 x float> %i.bj, <2 x float> %i.bg, <2 x i32> <i32 0, i32 2>
  %i.bs = fadd <2 x float> %i.br, %i.bq
  %i.bt = fpext <2 x float> %i.bs to <2 x double> ; 3 uses
  %i.bu = extractelement <2 x double> %i.bt, i64 1 ; 2 uses
  %i.bv = tail call double @llvm.fmuladd.f64(double %i.bu, double %i.bu, double 0.000000e+00)
end_hunk_0
