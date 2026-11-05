Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/perf_tsdf?download=true
inline.NumInlined: 1864
inline.NumDeleted: 929
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN11opencv_test12_GLOBAL__N_115SemisphereScene8getPosesEv:bb.a
  %i.dt = load float, ptr %i.w, align 4, !tbaa !158, !noalias !394 ; 3 uses
  %i.du = load float, ptr %i.x, align 4, !tbaa !158, !noalias !394 ; 3 uses
  %i.dv = load float, ptr %i.y, align 4, !tbaa !158, !noalias !394 ; 3 uses
  %i.dw = insertelement <2 x float> poison, float %i.dt, i64 0
  %i.dx = shufflevector <2 x float> %i.dw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dx, <2 x float> %i.ci, <2 x float> zeroinitializer)
  %i.dz = insertelement <2 x float> poison, float %i.du, i64 0
  %i.ea = shufflevector <2 x float> %i.dz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ea, <2 x float> %i.bw, <2 x float> %i.dy)
  %i.ec = insertelement <2 x float> poison, float %i.dv, i64 0
  %i.ed = shufflevector <2 x float> %i.ec, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ee = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ed, <2 x float> %i.bk, <2 x float> %i.eb) ; 2 uses
  %i.ef = call float @llvm.fmuladd.f32(float %i.dt, float %i.ca, float 0.000000e+00)
  %i.eg = call float @llvm.fmuladd.f32(float %i.du, float %i.bo, float %i.ef)
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
  %i.d = fpext <2 x float> %i.b to <2 x double>   ; 4 uses
  %foldExtExtBinop = fmul <2 x double> %i.d, %i.d
  %2 = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.e = fpext <2 x float> %i.c to <2 x double>   ; 2 uses
  %i.f = extractelement <2 x double> %i.d, i64 1  ; 2 uses
  %i.g = tail call double @llvm.fmuladd.f64(double %i.f, double %i.f, double %2)
  %i.h = extractelement <2 x double> %i.e, i64 1  ; 2 uses
  %i.i = tail call noundef double @llvm.fmuladd.f64(double %i.h, double %i.h, double %i.g)
  %sqrt.i = tail call noundef double @llvm.sqrt.f64(double %i.i) ; 4 uses
  %i.j = fcmp olt double %sqrt.i, f0x3CB0000000000000
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = fdiv double 1.000000e+00, %sqrt.i
  %i.l = tail call double @cos(double noundef %sqrt.i) #37 ; 2 uses
  %i.m = tail call double @sin(double noundef %sqrt.i) #37
  %i.n = fsub double 1.000000e+00, %i.l           ; 4 uses
  %i.o = insertelement <2 x double> poison, double %i.k, i64 0
  %i.p = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.q = fmul <2 x double> %i.p, %i.d             ; 3 uses
  %i.r = fmul <2 x double> %i.p, %i.e             ; 3 uses
  %i.s = fptrunc <2 x double> %i.q to <2 x float> ; 5 uses
  %i.t = fptrunc <2 x double> %i.r to <2 x float> ; 2 uses
  %i.u = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.v = fmul <2 x float> %i.u, %i.s
  %i.w = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> zeroinitializer
  %i.x = fmul <2 x float> %i.w, %i.s
  %i.y = fpext <2 x float> %i.x to <2 x double>
  %i.z = insertelement <2 x double> poison, double %i.n, i64 0
  %i.aa = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ab = fmul <2 x double> %i.aa, %i.y
  %i.ac = fptrunc <2 x double> %i.ab to <2 x float>
  %i.ad = fpext <2 x float> %i.v to <2 x double>
  %i.ae = insertelement <4 x double> poison, double %i.l, i64 0
  %i.af = insertelement <4 x double> %i.ae, double %i.n, i64 2
  %i.ag = shufflevector <4 x double> %i.af, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.ah = shufflevector <2 x double> %i.ad, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ai = shufflevector <4 x double> <double 1.000000e+00, double 0.000000e+00, double poison, double poison>, <4 x double> %i.ah, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.aj = fmul <4 x double> %i.ag, %i.ai
  %i.ak = fptrunc <4 x double> %i.aj to <4 x float> ; 3 uses
  %i.al = shufflevector <4 x float> %i.ak, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 1, i32 0, i32 3, i32 2, i32 1>
  %i.am = shufflevector <2 x double> %i.q, <2 x double> %i.r, <2 x i32> <i32 1, i32 3>
  %i.an = fptrunc <2 x double> %i.am to <2 x float> ; 2 uses
  %i.ao = fmul <2 x float> %i.an, %i.an
  %i.ap = fpext <2 x float> %i.ao to <2 x double> ; 2 uses
  %i.aq = extractelement <2 x double> %i.ap, i64 0
  %i.ar = fmul double %i.n, %i.aq
  %i.as = fptrunc double %i.ar to float
  %i.at = extractelement <2 x double> %i.ap, i64 1
  %i.au = fmul double %i.n, %i.at
  %i.av = fptrunc double %i.au to float
  %i.aw = shufflevector <4 x float> %i.ak, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 1, i32 1, i32 3> ; 2 uses
  %i.ax = shufflevector <2 x float> %i.ac, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ay = shufflevector <8 x float> %i.ax, <8 x float> %i.aw, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 13, i32 14, i32 15>
  %i.az = shufflevector <8 x float> %i.ay, <8 x float> %i.aw, <8 x i32> <i32 0, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 6, i32 7>
  %i.ba = insertelement <8 x float> %i.az, float %i.as, i64 4
  %i.bb = shufflevector <8 x float> %i.ba, <8 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 1, i32 4, i32 5, i32 6, i32 7>
  %i.bc = fadd <8 x float> %i.al, %i.bb
  %i.bd = extractelement <4 x float> %i.ak, i64 0
  %i.be = fadd float %i.bd, %i.av
  %i.bf = fpext <2 x float> %i.t to <2 x double>
  %i.bg = shufflevector <2 x double> %i.r, <2 x double> %i.q, <2 x i32> <i32 1, i32 2>
  %i.bh = fptrunc <2 x double> %i.bg to <2 x float>
  %i.bi = fneg <2 x float> %i.bh
  %i.bj = fpext <2 x float> %i.bi to <2 x double>
  %i.bk = fneg <2 x float> %i.s
  %i.bl = shufflevector <2 x float> %i.bk, <2 x float> %i.s, <2 x i32> <i32 1, i32 2>
  %i.bm = fpext <2 x float> %i.bl to <2 x double>
  %i.bn = insertelement <8 x double> poison, double %i.m, i64 0
  %i.bo = shufflevector <8 x double> %i.bn, <8 x double> poison, <8 x i32> zeroinitializer
  %i.bp = shufflevector <2 x double> %i.bj, <2 x double> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 1, i32 poison, i32 poison, i32 poison>
  %i.bq = shufflevector <8 x double> <double 0.000000e+00, double poison, double poison, double poison, double 0.000000e+00, double poison, double poison, double poison>, <8 x double> %i.bp, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
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
  %i.bt = fpext <2 x float> %i.bs to <2 x double> ; 4 uses
  %foldExtExtBinop125 = fmul <2 x double> %i.bt, %i.bt
  %2 = extractelement <2 x double> %foldExtExtBinop125, i64 1
  %i.bu = tail call double @llvm.fmuladd.f64(double %i.be, double %i.be, double %2)
  %i.bv = extractelement <2 x double> %i.bt, i64 0 ; 2 uses
  %i.bw = tail call noundef double @llvm.fmuladd.f64(double %i.bv, double %i.bv, double %i.bu) ; 2 uses
  %sqrt.i.i = tail call noundef double @llvm.sqrt.f64(double %i.bw)
  %i.bx = fcmp une double %i.bw, 0.000000e+00
  %i.by = fdiv double 1.000000e+00, %sqrt.i.i
  %i.bz = select i1 %i.bx, double %i.by, double 0.000000e+00 ; 2 uses
  %i.ca = insertelement <2 x double> poison, double %i.bz, i64 0
  %i.cb = shufflevector <2 x double> %i.ca, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cc = fmul <2 x double> %i.cb, %i.bt
  %i.cd = fmul double %i.bz, %i.be
  %i.ce = fptrunc double %i.cd to float           ; 2 uses
  %i.cf = fptrunc <2 x double> %i.cc to <2 x float> ; 3 uses
  br i1 %i.aa, label %_ZN11opencv_test12_GLOBAL__N_115SemisphereScene3mapEN2cv7Point3_IfEEb.exit.us.preheader, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %i.cg = shufflevector <2 x float> %i.bj, <2 x float> %i.bg, <2 x i32> <i32 1, i32 3>
  br label %.lr.ph.i.i.i

_ZN11opencv_test12_GLOBAL__N_115SemisphereScene3mapEN2cv7Point3_IfEEb.exit.us.preheader: ; preds = %bb.b
  %i.ch = extractelement <2 x float> %i.cf, i64 1
  %i.ci = extractelement <2 x float> %i.cf, i64 0
  br label %_ZN11opencv_test12_GLOBAL__N_115SemisphereScene3mapEN2cv7Point3_IfEEb.exit.us

_ZN11opencv_test12_GLOBAL__N_115SemisphereScene3mapEN2cv7Point3_IfEEb.exit.us: ; preds = %_ZN11opencv_test12_GLOBAL__N_115SemisphereScene3mapEN2cv7Point3_IfEEb.exit.us.preheader, %bb.c
  %.04693.us = phi float [ %i.db, %bb.c ], [ 0.000000e+00, %_ZN11opencv_test12_GLOBAL__N_115SemisphereScene3mapEN2cv7Point3_IfEEb.exit.us.preheader ] ; 5 uses
  %.04892.us = phi i32 [ %i.dc, %bb.c ], [ 0, %_ZN11opencv_test12_GLOBAL__N_115SemisphereScene3mapEN2cv7Point3_IfEEb.exit.us.preheader ] ; 2 uses
  %i.cj = fmul float %.04693.us, %i.ch
  %i.ck = fmul float %.04693.us, %i.ci
  %i.cl = fadd float %i.bh, %i.cj
  %i.cm = fmul float %.04693.us, %i.ce
  %i.cn = fsub float %i.ai, %i.cm
  %i.co = fadd float %i.bk, %i.ck
  %i.cp = fadd float %i.cl, 0.000000e+00
  %i.cq = fadd float %i.cn, -3.000000e-01
  %i.cr = fadd float %i.co, -1.100000e+00
  %i.cs = fpext float %i.cp to double             ; 2 uses
  %i.ct = fpext float %i.cq to double             ; 2 uses
  %i.cu = fmul double %i.ct, %i.ct
  %i.cv = tail call double @llvm.fmuladd.f64(double %i.cs, double %i.cs, double %i.cu)
  %i.cw = fpext float %i.cr to double             ; 2 uses
  %i.cx = tail call double @llvm.fmuladd.f64(double %i.cw, double %i.cw, double %i.cv)
  %sqrt.i.i60.us = tail call noundef double @llvm.sqrt.f64(double %i.cx)
  %i.cy = fptrunc double %sqrt.i.i60.us to float
  %i.cz = fadd float %i.cy, -5.000000e-01         ; 2 uses
  %i.da = fcmp uge float %i.cz, f0x358637BD
  br i1 %i.da, label %bb.c, label %.split95.us

bb.c:                                             ; preds = %_ZN11opencv_test12_GLOBAL__N_115SemisphereScene3mapEN2cv7Point3_IfEEb.exit.us
  %i.db = fadd float %.04693.us, %i.cz            ; 2 uses
  %i.dc = add nuw nsw i32 %.04892.us, 1
  %i.dd = icmp samesign ult i32 %.04892.us, 255
  %i.de = fcmp olt float %i.db, 2.000000e+01
  %i.df = and i1 %i.dd, %i.de
  br i1 %i.df, label %_ZN11opencv_test12_GLOBAL__N_115SemisphereScene3mapEN2cv7Point3_IfEEb.exit.us, label %.loopexit, !llvm.loop !406

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.d
  %.04693 = phi float [ %i.en, %bb.d ], [ 0.000000e+00, %.lr.ph.i.i.i.preheader ] ; 4 uses
  %.04892 = phi i32 [ %i.eo, %bb.d ], [ 0, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.dg = insertelement <2 x float> poison, float %.04693, i64 0
  %i.dh = shufflevector <2 x float> %i.dg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.di = fmul <2 x float> %i.dh, %i.cf
  %i.dj = fmul float %.04693, %i.ce
  %i.dk = fsub float %i.ai, %i.dj                 ; 2 uses
  %i.dl = fadd <2 x float> %i.cg, %i.di           ; 2 uses
  %i.dm = shufflevector <2 x float> %i.dl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dn = fadd <2 x float> %i.dm, <float 3.000000e-01, float -1.100000e+00>
  %i.do = fpext <2 x float> %i.dn to <2 x double> ; 2 uses
  %i.dp = shufflevector <2 x float> %i.dl, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dq = fadd <2 x float> %i.dp, <float -3.000000e-01, float 0.000000e+00>
  %i.dr = fpext <2 x float> %i.dq to <2 x double> ; 2 uses
  %i.ds = insertelement <2 x float> poison, float %i.dk, i64 0
  %i.dt = shufflevector <2 x float> %i.ds, <2 x float> poison, <2 x i32> zeroinitializer
  %i.du = fadd <2 x float> %i.dt, <float 1.000000e-01, float -3.000000e-01>
  %i.dv = fpext <2 x float> %i.du to <2 x double> ; 2 uses
  %i.dw = fmul <2 x double> %i.dv, %i.dv
  %i.dx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dr, <2 x double> %i.dr, <2 x double> %i.dw)
  %i.dy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.do, <2 x double> %i.do, <2 x double> %i.dx)
  %i.dz = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.dy)
  %i.ea = fptrunc <2 x double> %i.dz to <2 x float>
  %i.eb = fadd <2 x float> %i.ea, <float -5.000000e-02, float -5.000000e-01> ; 2 uses
  %i.ec = fadd float %i.dk, 5.000000e-01          ; 2 uses
  %i.ed = extractelement <2 x float> %i.eb, i64 0 ; 2 uses
  %i.ee = extractelement <2 x float> %i.eb, i64 1 ; 2 uses
  %i.ef = fcmp olt float %i.ed, %i.ee
  %i.eg = select i1 %i.ef, float %i.ed, float %i.ee ; 2 uses
  %i.eh = fcmp olt float %i.ec, %i.eg
  %.sroa.speculated.i = select i1 %i.eh, float %i.ec, float %i.eg ; 2 uses
  %i.ei = fcmp uge float %.sroa.speculated.i, f0x358637BD
  br i1 %i.ei, label %bb.d, label %.split95.us

.split95.us:                                      ; preds = %.lr.ph.i.i.i, %_ZN11opencv_test12_GLOBAL__N_115SemisphereScene3mapEN2cv7Point3_IfEEb.exit.us
  %.us-phi = phi float [ %.04693.us, %_ZN11opencv_test12_GLOBAL__N_115SemisphereScene3mapEN2cv7Point3_IfEEb.exit.us ], [ %.04693, %.lr.ph.i.i.i ] ; 2 uses
  %i.ej = fmul float %.us-phi, %.us-phi
  %i.ek = fmul float %i.bc, %i.ej
  %sqrt = tail call float @llvm.sqrt.f32(float %i.ek)
  %i.el = load float, ptr %i.ab, align 8, !tbaa !182
  %i.em = fmul float %sqrt, %i.el
  br label %.loopexit

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.en = fadd float %.04693, %.sroa.speculated.i ; 2 uses
  %i.eo = add nuw nsw i32 %.04892, 1
  %i.ep = icmp samesign ult i32 %.04892, 255
  %i.eq = fcmp olt float %i.en, 2.000000e+01
  %i.er = select i1 %i.ep, i1 %i.eq, i1 false
  br i1 %i.er, label %.lr.ph.i.i.i, label %.loopexit, !llvm.loop !406

.loopexit:                                        ; preds = %bb.d, %bb.c, %.split95.us
  %.2 = phi float [ %i.em, %.split95.us ], [ 0.000000e+00, %bb.c ], [ 0.000000e+00, %bb.d ]
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv
  store float %.2, ptr %i.es, align 4, !tbaa !158
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !407
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #24

; Function Attrs: nounwind
declare void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #8

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN11opencv_test12_GLOBAL__N_118RenderColorInvokerINS0_15SemisphereSceneEED0Ev(ptr noundef nonnull align 8 dereferenceable(101) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(101) dereferenceable(101) %0) #37
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #36
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZNK11opencv_test12_GLOBAL__N_118RenderColorInvokerINS0_15SemisphereSceneEEclERKN2cv5RangeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(101) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) unnamed_addr #26 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !176    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !177  ; 2 uses
  %i.d = icmp slt i32 %i.a, %i.c
  br i1 %i.d, label %.lr.ph114, label %._crit_edge115

.lr.ph114:                                        ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !420, !nonnull !138, !align !186 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !188
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph114.split.preheader, label %._crit_edge115

.lr.ph114.split.preheader:                        ; preds = %.lr.ph114
  %i.t = sext i32 %i.a to i64
  br label %.lr.ph114.split

._crit_edge115:                                   ; preds = %._crit_edge, %.lr.ph114, %bb.a
  ret void

.lr.ph114.split:                                  ; preds = %.lr.ph114.split.preheader, %._crit_edge
  %i.u = phi i32 [ %i.c, %.lr.ph114.split.preheader ], [ %i.ai, %._crit_edge ]
  %i.v = phi ptr [ %i.p, %.lr.ph114.split.preheader ], [ %i.aj, %._crit_edge ] ; 4 uses
  %indvars.iv131 = phi i64 [ %i.t, %.lr.ph114.split.preheader ], [ %indvars.iv.next132, %._crit_edge ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !187
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 128
  %i.z = load i64, ptr %i.y, align 8, !tbaa !43
  %i.aa = mul i64 %i.z, %indvars.iv131
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !188
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph114.split
  %i.af = trunc nsw i64 %indvars.iv131 to i32
  %i.ag = sitofp i32 %i.af to float
  %i.ah = insertelement <2 x float> poison, float %i.ag, i64 1
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %.loopexit
  %.pre = load i32, ptr %i.b, align 4, !tbaa !177
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph114.split
  %i.ai = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.u, %.lr.ph114.split ] ; 2 uses
  %i.aj = phi ptr [ %i.ft, %._crit_edge.loopexit ], [ %i.v, %.lr.ph114.split ]
  %indvars.iv.next132 = add nsw i64 %indvars.iv131, 1 ; 2 uses
  %i.ak = sext i32 %i.ai to i64
  %i.al = icmp slt i64 %indvars.iv.next132, %i.ak
  br i1 %i.al, label %.lr.ph114.split, label %._crit_edge115, !llvm.loop !411

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.loopexit ] ; 3 uses
  %i.am = load float, ptr %i.g, align 4, !tbaa !158, !noalias !422 ; 2 uses
  %i.an = trunc nuw nsw i64 %indvars.iv to i32
  %i.ao = uitofp nneg i32 %i.an to float
  %i.ap = load float, ptr %i.f, align 8, !tbaa !158, !noalias !423
  %i.aq = load float, ptr %i.l, align 4, !tbaa !158, !noalias !423
  %i.ar = load float, ptr %i.m, align 8, !tbaa !158, !noalias !423
  %i.as = load <2 x float>, ptr %i.k, align 8, !tbaa !158
  %i.at = insertelement <2 x float> %i.ah, float %i.ao, i64 0
  %i.au = fsub <2 x float> %i.at, %i.as
  %i.av = load <2 x float>, ptr %i.j, align 8, !tbaa !158
  %i.aw = fmul <2 x float> %i.av, %i.au           ; 4 uses
  %i.ax = load <8 x float>, ptr %i.n, align 8, !tbaa !158, !noalias !138 ; 4 uses
  %i.ay = load float, ptr %i.i, align 4, !tbaa !158, !noalias !422
  %i.az = load float, ptr %i.h, align 4, !tbaa !158, !noalias !422
  %i.ba = extractelement <2 x float> %i.aw, i64 0
  %i.bb = tail call float @llvm.fmuladd.f32(float %i.ap, float %i.ba, float 0.000000e+00)
  %i.bc = extractelement <2 x float> %i.aw, i64 1
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.aq, float %i.bc, float %i.bb)
  %i.be = fadd float %i.ar, %i.bd
  %i.bf = shufflevector <8 x float> %i.ax, <8 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.bg = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bf, <2 x float> %i.bg, <2 x float> zeroinitializer)
  %i.bi = shufflevector <8 x float> %i.ax, <8 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.bj = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bi, <2 x float> %i.bj, <2 x float> %i.bh)
  %i.bl = shufflevector <8 x float> %i.ax, <8 x float> poison, <2 x i32> <i32 2, i32 6>
  %i.bm = fadd <2 x float> %i.bl, %i.bk
  %i.bn = fpext float %i.be to double             ; 3 uses
  %2 = fmul double %i.bn, %i.bn
  %i.bo = fpext <2 x float> %i.bm to <2 x double> ; 3 uses
  %i.bp = extractelement <2 x double> %i.bo, i64 0 ; 2 uses
  %i.bq = tail call double @llvm.fmuladd.f64(double %i.bp, double %i.bp, double %2)
  %i.br = extractelement <2 x double> %i.bo, i64 1 ; 2 uses
  %i.bs = tail call noundef double @llvm.fmuladd.f64(double %i.br, double %i.br, double %i.bq) ; 2 uses
  %sqrt.i.i = tail call noundef double @llvm.sqrt.f64(double %i.bs)
  %i.bt = fcmp une double %i.bs, 0.000000e+00
  %i.bu = fdiv double 1.000000e+00, %sqrt.i.i
  %i.bv = select i1 %i.bt, double %i.bu, double 0.000000e+00 ; 2 uses
  %i.bw = fmul double %i.bv, %i.bn
  %i.bx = fptrunc double %i.bw to float           ; 2 uses
  %i.by = insertelement <2 x double> poison, double %i.bv, i64 0
  %i.bz = shufflevector <2 x double> %i.by, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ca = fmul <2 x double> %i.bz, %i.bo
  %i.cb = fptrunc <2 x double> %i.ca to <2 x float> ; 3 uses
  %i.cc = load i8, ptr %i.o, align 4, !tbaa !185, !range !137, !noundef !138
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %_ZN11opencv_test12_GLOBAL__N_115SemisphereScene3mapEN2cv7Point3_IfEEb.exit.us.preheader, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %i.ce = extractelement <2 x float> %i.cb, i64 1
  %i.cf = extractelement <2 x float> %i.cb, i64 0
  br label %.lr.ph.i.i.i

_ZN11opencv_test12_GLOBAL__N_115SemisphereScene3mapEN2cv7Point3_IfEEb.exit.us.preheader: ; preds = %bb.b
  %i.cg = shufflevector <8 x float> %i.ax, <8 x float> poison, <2 x i32> <i32 3, i32 7> ; 2 uses
  br label %_ZN11opencv_test12_GLOBAL__N_115SemisphereScene3mapEN2cv7Point3_IfEEb.exit.us

_ZN11opencv_test12_GLOBAL__N_115SemisphereScene3mapEN2cv7Point3_IfEEb.exit.us: ; preds = %_ZN11opencv_test12_GLOBAL__N_115SemisphereScene3mapEN2cv7Point3_IfEEb.exit.us.preheader, %bb.c
  %.053106.us = phi float [ %i.dc, %bb.c ], [ 0.000000e+00, %_ZN11opencv_test12_GLOBAL__N_115SemisphereScene3mapEN2cv7Point3_IfEEb.exit.us.preheader ] ; 3 uses
  %.054105.us = phi i32 [ %i.dd, %bb.c ], [ 0, %_ZN11opencv_test12_GLOBAL__N_115SemisphereScene3mapEN2cv7Point3_IfEEb.exit.us.preheader ] ; 2 uses
  %i.ch = fmul float %.053106.us, %i.bx
  %i.ci = insertelement <2 x float> poison, float %.053106.us, i64 0
  %i.cj = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ck = fmul <2 x float> %i.cj, %i.cb           ; 2 uses
  %i.cl = fadd float %i.am, %i.ch                 ; 2 uses
  %i.cm = fadd <2 x float> %i.cg, %i.ck
  %i.cn = fsub <2 x float> %i.cg, %i.ck
  %i.co = shufflevector <2 x float> %i.cn, <2 x float> %i.cm, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.cp = fadd float %i.cl, 0.000000e+00
  %i.cq = fadd <2 x float> %i.co, <float -3.000000e-01, float -1.100000e+00> ; 2 uses
  %i.cr = fpext float %i.cp to double             ; 2 uses
  %i.cs = extractelement <2 x float> %i.cq, i64 0
  %i.ct = fpext float %i.cs to double             ; 2 uses
  %i.cu = fmul double %i.ct, %i.ct
  %i.cv = tail call double @llvm.fmuladd.f64(double %i.cr, double %i.cr, double %i.cu)
  %i.cw = extractelement <2 x float> %i.cq, i64 1
  %i.cx = fpext float %i.cw to double             ; 2 uses
  %i.cy = tail call double @llvm.fmuladd.f64(double %i.cx, double %i.cx, double %i.cv)
  %sqrt.i.i66.us = tail call noundef double @llvm.sqrt.f64(double %i.cy)
  %i.cz = fptrunc double %sqrt.i.i66.us to float
  %i.da = fadd float %i.cz, -5.000000e-01         ; 2 uses
  %i.db = fcmp uge float %i.da, f0x358637BD
  br i1 %i.db, label %bb.c, label %.split108.us

bb.c:                                             ; preds = %_ZN11opencv_test12_GLOBAL__N_115SemisphereScene3mapEN2cv7Point3_IfEEb.exit.us
  %i.dc = fadd float %.053106.us, %i.da           ; 2 uses
  %i.dd = add nuw nsw i32 %.054105.us, 1
  %i.de = icmp samesign ult i32 %.054105.us, 255
  %i.df = fcmp olt float %i.dc, 2.000000e+01
  %i.dg = and i1 %i.de, %i.df
  br i1 %i.dg, label %_ZN11opencv_test12_GLOBAL__N_115SemisphereScene3mapEN2cv7Point3_IfEEb.exit.us, label %.loopexit, !llvm.loop !418

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.d
  %.053106 = phi float [ %i.fm, %bb.d ], [ 0.000000e+00, %.lr.ph.i.i.i.preheader ] ; 4 uses
  %.054105 = phi i32 [ %i.fn, %bb.d ], [ 0, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.dh = fmul float %.053106, %i.cf
  %i.di = fsub float %i.az, %i.dh                 ; 2 uses
  %i.dj = fmul float %.053106, %i.bx
  %i.dk = fmul float %.053106, %i.ce
  %i.dl = fadd float %i.am, %i.dj                 ; 2 uses
  %i.dm = fadd float %i.ay, %i.dk                 ; 2 uses
  %i.dn = insertelement <2 x float> poison, float %i.dm, i64 0
  %i.do = shufflevector <2 x float> %i.dn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dp = fadd <2 x float> %i.do, <float 3.000000e-01, float -1.100000e+00>
  %i.dq = fpext <2 x float> %i.dp to <2 x double> ; 2 uses
  %i.dr = insertelement <2 x float> poison, float %i.dl, i64 0
  %i.ds = shufflevector <2 x float> %i.dr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dt = fadd <2 x float> %i.ds, <float -3.000000e-01, float 0.000000e+00>
  %i.du = fpext <2 x float> %i.dt to <2 x double> ; 2 uses
  %i.dv = insertelement <2 x float> poison, float %i.di, i64 0 ; 2 uses
  %i.dw = shufflevector <2 x float> %i.dv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dx = fadd <2 x float> %i.dw, <float 1.000000e-01, float -3.000000e-01>
  %i.dy = fpext <2 x float> %i.dx to <2 x double> ; 2 uses
  %i.dz = fmul <2 x double> %i.dy, %i.dy
  %i.ea = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.du, <2 x double> %i.du, <2 x double> %i.dz)
  %i.eb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dq, <2 x double> %i.dq, <2 x double> %i.ea)
  %i.ec = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.eb)
  %i.ed = fptrunc <2 x double> %i.ec to <2 x float>
  %i.ee = fadd <2 x float> %i.ed, <float -5.000000e-02, float -5.000000e-01> ; 2 uses
  %i.ef = fadd float %i.di, 5.000000e-01          ; 2 uses
  %i.eg = extractelement <2 x float> %i.ee, i64 0 ; 2 uses
  %i.eh = extractelement <2 x float> %i.ee, i64 1 ; 2 uses
  %i.ei = fcmp olt float %i.eg, %i.eh
  %i.ej = select i1 %i.ei, float %i.eg, float %i.eh ; 2 uses
  %i.ek = fcmp olt float %i.ef, %i.ej
  %.sroa.speculated.i = select i1 %i.ek, float %i.ef, float %i.ej ; 2 uses
  %i.el = fcmp uge float %.sroa.speculated.i, f0x358637BD
  br i1 %i.el, label %bb.d, label %.split108.us.loopexit166

.split108.us.loopexit166:                         ; preds = %.lr.ph.i.i.i
  %i.em = insertelement <2 x float> %i.dv, float %i.dm, i64 1
  br label %.split108.us

.split108.us:                                     ; preds = %_ZN11opencv_test12_GLOBAL__N_115SemisphereScene3mapEN2cv7Point3_IfEEb.exit.us, %.split108.us.loopexit166
  %.us-phi = phi float [ %i.dl, %.split108.us.loopexit166 ], [ %i.cl, %_ZN11opencv_test12_GLOBAL__N_115SemisphereScene3mapEN2cv7Point3_IfEEb.exit.us ]
  %i.en = phi <2 x float> [ %i.em, %.split108.us.loopexit166 ], [ %i.co, %_ZN11opencv_test12_GLOBAL__N_115SemisphereScene3mapEN2cv7Point3_IfEEb.exit.us ]
  %i.eo = fpext float %.us-phi to double
  %i.ep = tail call double @fmod(double noundef %i.eo, double noundef 2.500000e-01) #37
  %i.eq = fpext <2 x float> %i.en to <2 x double> ; 2 uses
  %i.er = extractelement <2 x double> %i.eq, i64 0
  %i.es = tail call double @fmod(double noundef %i.er, double noundef 2.500000e-01) #37
  %i.et = extractelement <2 x double> %i.eq, i64 1
  %i.eu = tail call double @fmod(double noundef %i.et, double noundef 2.500000e-01) #37
  %i.ev = tail call noundef double @llvm.fabs.f64(double %i.ep)
  %i.ew = fcmp ogt double %i.ev, 1.250000e-01
  %i.ex = uitofp i1 %i.ew to float                ; 2 uses
  %i.ey = tail call noundef double @llvm.fabs.f64(double %i.es)
  %i.ez = fcmp ogt double %i.ey, 1.250000e-01
  %i.fa = uitofp i1 %i.ez to float                ; 2 uses
  %i.fb = tail call noundef double @llvm.fabs.f64(double %i.eu)
  %i.fc = fcmp ogt double %i.fb, 1.250000e-01
  %i.fd = uitofp i1 %i.fc to float                ; 2 uses
  %i.fe = fadd nnan float %i.ex, %i.fa
  %i.ff = fadd nnan float %i.fa, %i.fd
  %i.fg = fadd nnan float %i.ex, %i.fd
  %i.fh = fmul nnan float %i.fe, 1.280000e+02
  %i.fi = insertelement <2 x float> poison, float %i.ff, i64 0
  %i.fj = insertelement <2 x float> %i.fi, float %i.fg, i64 1
  %i.fk = fmul nnan <2 x float> %i.fj, splat (float 1.280000e+02)
  %i.fl = bitcast <2 x float> %i.fk to <2 x i32>
  br label %.loopexit

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.fm = fadd float %.053106, %.sroa.speculated.i ; 2 uses
  %i.fn = add nuw nsw i32 %.054105, 1
  %i.fo = icmp samesign ult i32 %.054105, 255
  %i.fp = fcmp olt float %i.fm, 2.000000e+01
  %i.fq = select i1 %i.fo, i1 %i.fp, i1 false
  br i1 %i.fq, label %.lr.ph.i.i.i, label %.loopexit, !llvm.loop !418

.loopexit:                                        ; preds = %bb.d, %bb.c, %.split108.us
  %.sroa.090.2 = phi float [ %i.fh, %.split108.us ], [ 0.000000e+00, %bb.c ], [ 0.000000e+00, %bb.d ]
  %i.fr = phi <2 x i32> [ %i.fl, %.split108.us ], [ zeroinitializer, %bb.c ], [ zeroinitializer, %bb.d ]
  %i.fs = getelementptr inbounds nuw [12 x i8], ptr %i.ab, i64 %indvars.iv ; 2 uses
  store float %.sroa.090.2, ptr %i.fs, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fs, i64 4
  store <2 x i32> %i.fr, ptr %.sroa.7.0..sroa_idx, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ft = load ptr, ptr %i.e, align 8, !tbaa !420, !nonnull !138, !align !186 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 12
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !188
  %i.fw = sext i32 %i.fv to i64
  %i.fx = icmp slt i64 %indvars.iv.next, %i.fw
  br i1 %i.fx, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !419
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #24

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #27

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #28

declare void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #3

declare void @_ZN6cvtest9testSetUpEv() local_unnamed_addr #3

declare void @_ZN4perf8TestBase15RunPerfTestBodyEv(ptr noundef nonnull align 8 dereferenceable(248)) local_unnamed_addr #3

declare void @_ZN6cvtest12testTearDownEv() local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !135
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #38
  unreachable
}

end_hunk_0
