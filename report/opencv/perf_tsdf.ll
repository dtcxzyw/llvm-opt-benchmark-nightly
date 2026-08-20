inline.NumInlined: 1864
inline.NumDeleted: 929
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN11opencv_test12_GLOBAL__N_115SemisphereScene8getPosesEv
define internal void @_ZN11opencv_test12_GLOBAL__N_115SemisphereScene8getPosesEv(ptr dead_on_unwind noalias nofree writable sret(%"class.std::vector.39") align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(129) %1) unnamed_addr #21 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Affine3", align 4       ; 13 uses
  %3 = alloca %"class.cv::Vec", align 4           ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.c = load i32, ptr %i.a, align 8, !tbaa !232  ; 2 uses
  %i.d = sitofp i32 %i.c to float
  %i.e = load float, ptr %i.b, align 4, !tbaa !237
  %i.f = fmul float %i.e, %i.d
  %i.g = fcmp ogt float %i.f, 0.000000e+00
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE9push_backERKS2_.exit
  %i.af = phi ptr [ null, %.lr.ph ], [ %i.fs, %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE9push_backERKS2_.exit ] ; 15 uses
  %i.ag = phi i32 [ %i.c, %.lr.ph ], [ %i.fw, %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE9push_backERKS2_.exit ]
  %.012143 = phi i32 [ 0, %.lr.ph ], [ %i.fu, %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %i.ah = phi ptr [ null, %.lr.ph ], [ %i.ft, %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE9push_backERKS2_.exit ] ; 12 uses
  %i.ai = uitofp nneg i32 %.012143 to double
  %i.aj = fmul nnan double %i.ai, f0x401921FB54442D18
  %i.ak = sitofp i32 %i.ag to double
  %i.al = fdiv double %i.aj, %i.ak
  %i.am = fptrunc double %i.al to float           ; 3 uses
  %i.an = load float, ptr %i.h, align 8, !tbaa !223, !noalias !269 ; 2 uses
  %i.ao = load float, ptr %i.i, align 4, !tbaa !223, !noalias !269 ; 3 uses
  %i.ap = load float, ptr %i.j, align 8, !tbaa !223, !noalias !269 ; 3 uses
  %i.aq = load float, ptr %i.k, align 8, !tbaa !223, !noalias !269 ; 2 uses
  %i.ar = load float, ptr %i.l, align 4, !tbaa !223, !noalias !269 ; 3 uses
  %i.as = load float, ptr %i.m, align 8, !tbaa !223, !noalias !269 ; 3 uses
  %i.at = load float, ptr %i.n, align 8, !tbaa !223, !noalias !269 ; 2 uses
  %i.au = load float, ptr %i.o, align 4, !tbaa !223, !noalias !269 ; 3 uses
  %i.av = load float, ptr %i.p, align 8, !tbaa !223, !noalias !269 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  %i.aw = fmul float %i.am, 0.000000e+00          ; 2 uses
  store float %i.aw, ptr %3, align 4, !tbaa !223, !alias.scope !274
  %i.ax = fmul float %i.am, -5.000000e-01
  store float %i.ax, ptr %i.q, align 4, !tbaa !223, !alias.scope !274
  store float %i.aw, ptr %i.r, align 4, !tbaa !223, !alias.scope !274
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37, !noalias !277
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %2, i8 0, i64 64, i1 false), !tbaa !223, !noalias !277
  invoke void @_ZN2cv7Affine3IfE8rotationERKNS_3VecIfLi3EEE(ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(12) %3)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.ay = load float, ptr %2, align 4, !tbaa !223, !noalias !280 ; 3 uses
  %i.az = load float, ptr %i.s, align 4, !tbaa !223, !noalias !280 ; 3 uses
  %i.ba = load float, ptr %i.t, align 4, !tbaa !223, !noalias !280 ; 3 uses
  %i.bb = load float, ptr %i.u, align 4, !tbaa !223, !noalias !280 ; 3 uses
  %i.bc = load float, ptr %i.v, align 4, !tbaa !223, !noalias !280 ; 3 uses
  %i.bd = load float, ptr %i.w, align 4, !tbaa !223, !noalias !280 ; 3 uses
  %i.be = load float, ptr %i.x, align 4, !tbaa !223, !noalias !280 ; 3 uses
  %i.bf = load float, ptr %i.y, align 4, !tbaa !223, !noalias !280 ; 3 uses
  %i.bg = load float, ptr %i.z, align 4, !tbaa !223, !noalias !280 ; 3 uses
  %i.bh = fadd float %i.at, 0.000000e+00
  %i.bi = call float @llvm.fmuladd.f32(float %i.at, float 0.000000e+00, float 0.000000e+00) ; 2 uses
  %i.bj = call float @llvm.fmuladd.f32(float %i.au, float 0.000000e+00, float %i.bi) ; 2 uses
  %i.bk = call noundef float @llvm.fmuladd.f32(float %i.av, float 0.000000e+00, float %i.bj) ; 3 uses
  %i.bl = fadd float %i.av, %i.bj                 ; 3 uses
  %i.bm = fadd float %i.au, %i.bi
  %i.bn = call float @llvm.fmuladd.f32(float %i.au, float 0.000000e+00, float %i.bh)
  %i.bo = insertelement <2 x float> poison, float %i.av, i64 0
  %i.bp = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bq = insertelement <2 x float> poison, float %i.bn, i64 0
  %i.br = insertelement <2 x float> %i.bq, float %i.bm, i64 1
  %i.bs = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bp, <2 x float> zeroinitializer, <2 x float> %i.br) ; 3 uses
  %i.bt = fadd float %i.aq, 0.000000e+00
  %i.bu = call float @llvm.fmuladd.f32(float %i.aq, float 0.000000e+00, float 0.000000e+00) ; 2 uses
  %i.bv = call float @llvm.fmuladd.f32(float %i.ar, float 0.000000e+00, float %i.bu) ; 2 uses
  %i.bw = call noundef float @llvm.fmuladd.f32(float %i.as, float 0.000000e+00, float %i.bv) ; 3 uses
  %i.bx = fadd float %i.as, %i.bv                 ; 3 uses
  %i.by = fadd float %i.ar, %i.bu
  %i.bz = call float @llvm.fmuladd.f32(float %i.ar, float 0.000000e+00, float %i.bt)
  %i.ca = insertelement <2 x float> poison, float %i.as, i64 0
  %i.cb = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cc = insertelement <2 x float> poison, float %i.bz, i64 0
  %i.cd = insertelement <2 x float> %i.cc, float %i.by, i64 1
  %i.ce = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cb, <2 x float> zeroinitializer, <2 x float> %i.cd) ; 3 uses
  %i.cf = fadd float %i.an, 0.000000e+00
  %i.cg = call float @llvm.fmuladd.f32(float %i.an, float 0.000000e+00, float 0.000000e+00) ; 2 uses
  %i.ch = call float @llvm.fmuladd.f32(float %i.ao, float 0.000000e+00, float %i.cg) ; 2 uses
  %i.ci = call noundef float @llvm.fmuladd.f32(float %i.ap, float 0.000000e+00, float %i.ch) ; 3 uses
  %i.cj = fadd float %i.ap, %i.ch                 ; 3 uses
  %i.ck = fadd float %i.ao, %i.cg
  %i.cl = call float @llvm.fmuladd.f32(float %i.ao, float 0.000000e+00, float %i.cf)
  %i.cm = insertelement <2 x float> poison, float %i.ap, i64 0
  %i.cn = shufflevector <2 x float> %i.cm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.co = insertelement <2 x float> poison, float %i.cl, i64 0
  %i.cp = insertelement <2 x float> %i.co, float %i.ck, i64 1
  %i.cq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cn, <2 x float> zeroinitializer, <2 x float> %i.cp) ; 3 uses
  %i.cr = insertelement <2 x float> poison, float %i.ay, i64 0
  %i.cs = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ct = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cs, <2 x float> %i.cq, <2 x float> zeroinitializer)
  %i.cu = insertelement <2 x float> poison, float %i.az, i64 0
  %i.cv = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cv, <2 x float> %i.ce, <2 x float> %i.ct)
  %i.cx = insertelement <2 x float> poison, float %i.ba, i64 0
  %i.cy = shufflevector <2 x float> %i.cx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cy, <2 x float> %i.bs, <2 x float> %i.cw) ; 2 uses
  %i.da = call float @llvm.fmuladd.f32(float %i.ay, float %i.cj, float 0.000000e+00)
  %i.db = call float @llvm.fmuladd.f32(float %i.az, float %i.bx, float %i.da)
  %i.dc = call float @llvm.fmuladd.f32(float %i.ba, float %i.bl, float %i.db) ; 2 uses
  %i.dd = call float @llvm.fmuladd.f32(float %i.ay, float %i.ci, float 0.000000e+00)
  %i.de = call float @llvm.fmuladd.f32(float %i.az, float %i.bw, float %i.dd)
  %i.df = call noundef float @llvm.fmuladd.f32(float %i.ba, float %i.bk, float %i.de)
  %i.dg = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.dh = shufflevector <2 x float> %i.dg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.di = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dh, <2 x float> %i.cq, <2 x float> zeroinitializer)
  %i.dj = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.dk = shufflevector <2 x float> %i.dj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dk, <2 x float> %i.ce, <2 x float> %i.di)
  %i.dm = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.dn = shufflevector <2 x float> %i.dm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.do = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dn, <2 x float> %i.bs, <2 x float> %i.dl) ; 2 uses
  %i.dp = call float @llvm.fmuladd.f32(float %i.bb, float %i.cj, float 0.000000e+00)
  %i.dq = call float @llvm.fmuladd.f32(float %i.bc, float %i.bx, float %i.dp)
  %i.dr = call float @llvm.fmuladd.f32(float %i.bd, float %i.bl, float %i.dq) ; 2 uses
  %i.ds = call float @llvm.fmuladd.f32(float %i.bb, float %i.ci, float 0.000000e+00)
  %i.dt = call float @llvm.fmuladd.f32(float %i.bc, float %i.bw, float %i.ds)
  %i.du = call noundef float @llvm.fmuladd.f32(float %i.bd, float %i.bk, float %i.dt)
  %i.dv = insertelement <2 x float> poison, float %i.be, i64 0
  %i.dw = shufflevector <2 x float> %i.dv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dw, <2 x float> %i.cq, <2 x float> zeroinitializer)
  %i.dy = insertelement <2 x float> poison, float %i.bf, i64 0
  %i.dz = shufflevector <2 x float> %i.dy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ea = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dz, <2 x float> %i.ce, <2 x float> %i.dx)
  %i.eb = insertelement <2 x float> poison, float %i.bg, i64 0
  %i.ec = shufflevector <2 x float> %i.eb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ed = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ec, <2 x float> %i.bs, <2 x float> %i.ea) ; 2 uses
  %i.ee = call float @llvm.fmuladd.f32(float %i.be, float %i.cj, float 0.000000e+00)
  %i.ef = call float @llvm.fmuladd.f32(float %i.bf, float %i.bx, float %i.ee)
  %i.eg = call float @llvm.fmuladd.f32(float %i.bg, float %i.bl, float %i.ef) ; 2 uses
  %i.eh = call float @llvm.fmuladd.f32(float %i.be, float %i.ci, float 0.000000e+00)
  %i.ei = call float @llvm.fmuladd.f32(float %i.bf, float %i.bw, float %i.eh)
  %i.ej = call noundef float @llvm.fmuladd.f32(float %i.bg, float %i.bk, float %i.ei)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37, !noalias !277
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  %i.ek = load float, ptr %i.aa, align 4, !tbaa !223, !noalias !285
  %i.el = fpext float %i.ek to double
  %i.em = fpext float %i.am to double             ; 2 uses
  %i.en = call double @sin(double noundef %i.em) #37
  %i.eo = fmul double %i.en, %i.el
  %i.ep = fptrunc double %i.eo to float
  %i.eq = load float, ptr %i.ab, align 4, !tbaa !223, !noalias !288
  %i.er = load float, ptr %i.ac, align 4, !tbaa !223, !noalias !291
  %i.es = fpext float %i.er to double
  %i.et = call double @cos(double noundef %i.em) #37
  %i.eu = fmul double %i.et, %i.es
  %i.ev = fptrunc double %i.eu to float
  %i.ew = fadd float %i.df, %i.ep                 ; 2 uses
  %i.ex = fadd float %i.du, %i.eq                 ; 2 uses
  %i.ey = fadd float %i.ej, %i.ev                 ; 2 uses
  %i.ez = load ptr, ptr %i.ae, align 8, !tbaa !243
  %.not.i = icmp eq ptr %i.af, %i.ez
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store <2 x float> %i.cz, ptr %i.af, align 4
  %.sroa.1780.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store float %i.dc, ptr %.sroa.1780.0..sroa_idx, align 4
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  store float %i.ew, ptr %.sroa.21.0..sroa_idx, align 4
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store <2 x float> %i.do, ptr %.sroa.27.0..sroa_idx, align 4
  %.sroa.38.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store float %i.dr, ptr %.sroa.38.0..sroa_idx, align 4
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 28
  store float %i.ex, ptr %.sroa.42.0..sroa_idx, align 4
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  store <2 x float> %i.ed, ptr %.sroa.48.0..sroa_idx, align 4
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  store float %i.eg, ptr %.sroa.58.0..sroa_idx, align 4
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 44
  %4 = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.ey, i64 0
  store <4 x float> %4, ptr %.sroa.63.0..sroa_idx, align 4
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 60
  store float 1.000000e+00, ptr %.sroa.69.0..sroa_idx, align 4, !tbaa !15
  %i.fa = getelementptr inbounds nuw i8, ptr %i.af, i64 64 ; 2 uses
  store ptr %i.fa, ptr %i.ad, align 8, !tbaa !193
  br label %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE9push_backERKS2_.exit

bb.e:                                             ; preds = %bb.c
  %i.fb = ptrtoint ptr %i.af to i64
  %i.fc = ptrtoint ptr %i.ah to i64
  %i.fd = sub i64 %i.fb, %i.fc                    ; 4 uses
  %i.fe = icmp eq i64 %i.fd, 9223372036854775744
  br i1 %i.fe, label %bb.f, label %_ZNKSt6vectorIN2cv7Affine3IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  store ptr %i.ah, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #39
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt6vectorIN2cv7Affine3IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.ff = ashr exact i64 %i.fd, 6                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ff, i64 1)
  %i.fg = add nsw i64 %.sroa.speculated.i.i.i, %i.ff ; 2 uses
  %i.fh = icmp ult i64 %i.fg, %i.ff
  %i.fi = call i64 @llvm.umin.i64(i64 %i.fg, i64 144115188075855871)
  %i.fj = select i1 %i.fh, i64 144115188075855871, i64 %i.fi ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.fj, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.fk = shl nuw nsw i64 %i.fj, 6
  %i.fl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fk) #40
          to label %.noexc20 unwind label %.loopexit ; 5 uses

.noexc20:                                         ; preds = %_ZNKSt6vectorIN2cv7Affine3IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fd ; 10 uses
  store <2 x float> %i.cz, ptr %i.fm, align 4
  %.sroa.1780.0..sroa_idx81 = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  store float %i.dc, ptr %.sroa.1780.0..sroa_idx81, align 4
  %.sroa.21.0..sroa_idx87 = getelementptr inbounds nuw i8, ptr %i.fm, i64 12
  store float %i.ew, ptr %.sroa.21.0..sroa_idx87, align 4
  %.sroa.27.0..sroa_idx90 = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  store <2 x float> %i.do, ptr %.sroa.27.0..sroa_idx90, align 4
  %.sroa.38.0..sroa_idx99 = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  store float %i.dr, ptr %.sroa.38.0..sroa_idx99, align 4
  %.sroa.42.0..sroa_idx104 = getelementptr inbounds nuw i8, ptr %i.fm, i64 28
  store float %i.ex, ptr %.sroa.42.0..sroa_idx104, align 4
  %.sroa.48.0..sroa_idx107 = getelementptr inbounds nuw i8, ptr %i.fm, i64 32
  store <2 x float> %i.ed, ptr %.sroa.48.0..sroa_idx107, align 4
  %.sroa.58.0..sroa_idx116 = getelementptr inbounds nuw i8, ptr %i.fm, i64 40
  store float %i.eg, ptr %.sroa.58.0..sroa_idx116, align 4
  %.sroa.63.0..sroa_idx121 = getelementptr inbounds nuw i8, ptr %i.fm, i64 44
  %i.fn = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.ey, i64 0
  store <4 x float> %i.fn, ptr %.sroa.63.0..sroa_idx121, align 4
  %.sroa.77.0..sroa_idx135 = getelementptr inbounds nuw i8, ptr %i.fm, i64 60
  store float 1.000000e+00, ptr %.sroa.77.0..sroa_idx135, align 4, !tbaa !15
  %.not10.i.i.i.i.i = icmp eq ptr %i.ah, %i.af
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc20, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.fp, %.lr.ph.i.i.i.i.i ], [ %i.fl, %.noexc20 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.fo, %.lr.ph.i.i.i.i.i ], [ %i.ah, %.noexc20 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(64) %.0911.i.i.i.i.i, i64 64, i1 false), !tbaa.struct !196, !alias.scope !294
  %i.fo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 64 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.fo, %i.af
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !298

_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc20
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.fl, %.noexc20 ], [ %i.fp, %.lr.ph.i.i.i.i.i ]
  %i.fq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.fd) #36
  br label %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.fq, ptr %i.ad, align 8, !tbaa !193
  %i.fr = getelementptr inbounds nuw [64 x i8], ptr %i.fl, i64 %i.fj
  store ptr %i.fr, ptr %i.ae, align 8, !tbaa !243
  br label %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.d
  %i.fs = phi ptr [ %i.fq, %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.fa, %bb.d ]
  %i.ft = phi ptr [ %i.fl, %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.ah, %bb.d ] ; 2 uses
  %i.fu = add nuw nsw i32 %.012143, 1             ; 2 uses
  %i.fv = uitofp nneg i32 %i.fu to float
  %i.fw = load i32, ptr %i.a, align 8, !tbaa !232 ; 2 uses
  %i.fx = sitofp i32 %i.fw to float
  %i.fy = load float, ptr %i.b, align 4, !tbaa !237
  %i.fz = fmul float %i.fy, %i.fx
  %i.ga = fcmp ogt float %i.fz, %i.fv
  br i1 %i.ga, label %bb.b, label %._crit_edge, !llvm.loop !299

.loopexit:                                        ; preds = %_ZNKSt6vectorIN2cv7Affine3IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ah, ptr %0, align 8
  br label %bb.i

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %bb.b
  %i.gb = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ah, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %bb.i

bb.i:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.h
  %.pn15 = phi { ptr, i32 } [ %i.gb, %bb.h ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i21 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i21, label %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.gc = load ptr, ptr %i.ae, align 8, !tbaa !243
  %i.gd = ptrtoint ptr %i.gc to i64
  %i.ge = ptrtoint ptr %i.ah to i64
  %i.gf = sub i64 %i.gd, %i.ge
  call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.gf) #36
  br label %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EED2Ev.exit:   ; preds = %bb.i, %bb.j
  resume { ptr, i32 } %.pn15

._crit_edge:                                      ; preds = %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE9push_backERKS2_.exit, %bb.a
  %.lcssa139 = phi ptr [ null, %bb.a ], [ %i.ft, %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE9push_backERKS2_.exit ]
  store ptr %.lcssa139, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv7Affine3IfE8rotationERKNS_3VecIfLi3EEE(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(12) %1) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load <2 x float>, ptr %1, align 4, !tbaa !223
  %i.c = load <2 x float>, ptr %i.a, align 4, !tbaa !223
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
  %i.y = fpext <2 x float> %i.x to <2 x double>
  %i.z = insertelement <4 x double> poison, double %i.n, i64 0
  %i.aa = insertelement <4 x double> %i.z, double %i.p, i64 2
  %i.ab = shufflevector <4 x double> %i.aa, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.ac = shufflevector <2 x double> %i.y, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ad = shufflevector <4 x double> <double 1.000000e+00, double 0.000000e+00, double poison, double poison>, <4 x double> %i.ac, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ae = fmul <4 x double> %i.ab, %i.ad
  %i.af = fptrunc <4 x double> %i.ae to <4 x float> ; 3 uses
  %i.ag = shufflevector <4 x float> %i.af, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 1, i32 0, i32 3, i32 2, i32 1>
  %i.ah = shufflevector <2 x float> %i.u, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ai = fmul <2 x float> %i.ah, %i.u
  %i.aj = fpext <2 x float> %i.ai to <2 x double>
  %i.ak = insertelement <2 x double> poison, double %i.p, i64 0
  %i.al = shufflevector <2 x double> %i.ak, <2 x double> poison, <2 x i32> zeroinitializer
  %i.am = fmul <2 x double> %i.al, %i.aj
  %i.an = fptrunc <2 x double> %i.am to <2 x float>
  %i.ao = shufflevector <2 x double> %i.s, <2 x double> %i.t, <2 x i32> <i32 1, i32 3>
  %i.ap = fptrunc <2 x double> %i.ao to <2 x float> ; 2 uses
  %i.aq = fmul <2 x float> %i.ap, %i.ap
  %i.ar = fpext <2 x float> %i.aq to <2 x double> ; 2 uses
  %i.as = extractelement <2 x double> %i.ar, i64 0
  %i.at = fmul double %i.p, %i.as
  %i.au = fptrunc double %i.at to float
  %i.av = extractelement <2 x double> %i.ar, i64 1
  %i.aw = fmul double %i.p, %i.av
  %i.ax = fptrunc double %i.aw to float
  %i.ay = shufflevector <4 x float> %i.af, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 1, i32 1, i32 3> ; 2 uses
  %i.az = shufflevector <2 x float> %i.an, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ba = shufflevector <8 x float> %i.az, <8 x float> %i.ay, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 13, i32 14, i32 15>
  %i.bb = shufflevector <8 x float> %i.ba, <8 x float> %i.ay, <8 x i32> <i32 0, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 6, i32 7>
  %i.bc = insertelement <8 x float> %i.bb, float %i.au, i64 4
  %i.bd = shufflevector <8 x float> %i.bc, <8 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 1, i32 4, i32 5, i32 6, i32 7>
  %i.be = fadd <8 x float> %i.ag, %i.bd
  %i.bf = extractelement <4 x float> %i.af, i64 0
  %i.bg = fadd float %i.bf, %i.ax
end_hunk_0
