Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/cyhair2pbrt?download=true
inline.NumInlined: 422
inline.NumDeleted: 191
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN6cyhair6CyHair19ToCubicBezierCurvesEPSt6vectorIfSaIfEES4_PKfS6_if:bb.a
bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #20
          to label %.noexc unwind label %.loopexit.split-lp471

.noexc:                                           ; preds = %bb.s
  unreachable

_ZNKSt6vectorIN6cyhair5real3ESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.r
  %i.cz = sdiv exact i64 %i.cx, 12                ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cz, i64 1)
  %i.da = add nsw i64 %.sroa.speculated.i.i.i, %i.cz ; 2 uses
  %i.db = icmp ult i64 %i.da, %i.cz
  %i.dc = tail call i64 @llvm.umin.i64(i64 %i.da, i64 768614336404564650)
  %i.dd = select i1 %i.db, i64 768614336404564650, i64 %i.dc ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.dd, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.de = mul nuw nsw i64 %i.dd, 12
  %i.df = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.de) #21
          to label %.noexc94 unwind label %.loopexit470 ; 5 uses

.noexc94:                                         ; preds = %_ZNKSt6vectorIN6cyhair5real3ESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.cx ; 3 uses
  store float %i.cq, ptr %i.dg, align 4, !tbaa !11
  %.sroa.6.0..sroa_idx317 = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  store float %i.cs, ptr %.sroa.6.0..sroa_idx317, align 4, !tbaa !11
  %.sroa.7.0..sroa_idx319 = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store float %i.cu, ptr %.sroa.7.0..sroa_idx319, align 4, !tbaa !11
  %.not10.i.i.i.i.i = icmp eq ptr %.sroa.0321.0578, %.sroa.13.0580
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN6cyhair5real3ESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc94, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.di, %.lr.ph.i.i.i.i.i ], [ %i.df, %.noexc94 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.dh, %.lr.ph.i.i.i.i.i ], [ %.sroa.0321.0578, %.noexc94 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !83, !alias.scope !84
  %i.dh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 12 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dh, %.sroa.13.0580
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6cyhair5real3ESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !77

_ZNSt6vectorIN6cyhair5real3ESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc94
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.df, %.noexc94 ], [ %i.di, %.lr.ph.i.i.i.i.i ]
  %.not.i23.i.i = icmp eq ptr %.sroa.0321.0578, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN6cyhair5real3ESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIN6cyhair5real3ESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0321.0578, i64 noundef %i.cx) #22
  br label %_ZNSt6vectorIN6cyhair5real3ESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN6cyhair5real3ESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.t, %_ZNSt6vectorIN6cyhair5real3ESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  %i.dj = getelementptr inbounds nuw [12 x i8], ptr %i.df, i64 %i.dd
  br label %_ZNSt6vectorIN6cyhair5real3ESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN6cyhair5real3ESaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIN6cyhair5real3ESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.q
  %.sroa.0321.1 = phi ptr [ %i.df, %_ZNSt6vectorIN6cyhair5real3ESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.0321.0578, %bb.q ] ; 8 uses
  %.0.lcssa.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorIN6cyhair5real3ESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.9.0579, %bb.q ]
  %.sroa.13.1 = phi ptr [ %i.dj, %_ZNSt6vectorIN6cyhair5real3ESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.13.0580, %bb.q ] ; 3 uses
  %.sroa.9.1 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn, i64 12
  %i.dk = add nuw nsw i64 %.080581, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.dk, %i.ch
  br i1 %exitcond.not, label %.preheader, label %bb.p, !llvm.loop !78

._crit_edge:                                      ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit243, %.preheader
  %.not.i.i.i95 = icmp eq ptr %.sroa.0321.1, null
  br i1 %.not.i.i.i95, label %_ZNSt6vectorIN6cyhair5real3ESaIS1_EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %._crit_edge
  %i.dl = ptrtoint ptr %.sroa.13.1 to i64
  %i.dm = ptrtoint ptr %.sroa.0321.1 to i64
  %i.dn = sub i64 %i.dl, %i.dm
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0321.1, i64 noundef %i.dn) #22
  br label %_ZNSt6vectorIN6cyhair5real3ESaIS1_EED2Ev.exit

bb.v:                                             ; preds = %.lr.ph, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit243
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit243 ] ; 2 uses
  %i.do = add nsw i64 %indvars.iv, -1             ; 2 uses
  %i.dp = icmp eq i64 %i.do, 0
  br i1 %i.dp, label %_ZN6cyhairL22CamullRomToCubicBezierEPNS_5real3EPKS0_ii.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dq = getelementptr [12 x i8], ptr %.sroa.0321.1, i64 %i.do ; 3 uses
  %i.dr = getelementptr i8, ptr %i.dq, i64 -12
  %.sroa.0338.0.copyload = load float, ptr %i.dr, align 4, !tbaa !11
  %.sroa.9343.0..sroa_idx = getelementptr i8, ptr %i.dq, i64 -8
  %i.ds = load <2 x float>, ptr %.sroa.9343.0..sroa_idx, align 4, !tbaa !11
  br label %_ZN6cyhairL22CamullRomToCubicBezierEPNS_5real3EPKS0_ii.exit

_ZN6cyhairL22CamullRomToCubicBezierEPNS_5real3EPKS0_ii.exit: ; preds = %bb.v, %bb.w
  %.sroa.17.0.in = phi ptr [ %i.dq, %bb.w ], [ %.sroa.0321.1, %bb.v ] ; 6 uses
  %.sroa.0338.0 = phi float [ %.sroa.0338.0.copyload, %bb.w ], [ 0.000000e+00, %bb.v ] ; 4 uses
  %_ZN6cyhairL6toC2B1E.sink.i = phi ptr [ @_ZN6cyhairL5toC2BE, %bb.w ], [ @_ZN6cyhairL6toC2B0E, %bb.v ] ; 16 uses
  %i.dt = phi <2 x float> [ %i.ds, %bb.w ], [ zeroinitializer, %bb.v ] ; 3 uses
  %.sroa.53.0.in = getelementptr i8, ptr %.sroa.17.0.in, i64 28
  %.sroa.47.0.in = getelementptr i8, ptr %.sroa.17.0.in, i64 24
  %.sroa.47.0 = load float, ptr %.sroa.47.0.in, align 4, !tbaa !11 ; 4 uses
  %.sroa.39.0.in = getelementptr i8, ptr %.sroa.17.0.in, i64 16
  %.sroa.32.0.in = getelementptr i8, ptr %.sroa.17.0.in, i64 12
  %.sroa.24.0.in = getelementptr inbounds nuw i8, ptr %.sroa.17.0.in, i64 4
  %.sroa.32.0 = load float, ptr %.sroa.32.0.in, align 4, !tbaa !11 ; 4 uses
  %.sroa.17.0 = load float, ptr %.sroa.17.0.in, align 4, !tbaa !11 ; 4 uses
  %i.du = load float, ptr %_ZN6cyhairL6toC2B1E.sink.i, align 16, !tbaa !11 ; 3 uses
  %i.dv = fmul float %.sroa.0338.0, %i.du
  %i.dw = extractelement <2 x float> %i.dt, i64 0 ; 3 uses
  %i.dx = fmul float %i.dw, %i.du
  %i.dy = extractelement <2 x float> %i.dt, i64 1 ; 3 uses
  %i.dz = fmul float %i.dy, %i.du
  %i.ea = getelementptr inbounds nuw i8, ptr %_ZN6cyhairL6toC2B1E.sink.i, i64 4
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !11 ; 3 uses
  %i.ec = fmul float %.sroa.17.0, %i.eb
  %i.ed = fadd float %i.dv, %i.ec
  %i.ee = getelementptr inbounds nuw i8, ptr %_ZN6cyhairL6toC2B1E.sink.i, i64 8
  %i.ef = load float, ptr %i.ee, align 8, !tbaa !11 ; 3 uses
  %i.eg = fmul float %.sroa.32.0, %i.ef
  %i.eh = fadd float %i.ed, %i.eg
  %i.ei = getelementptr inbounds nuw i8, ptr %_ZN6cyhairL6toC2B1E.sink.i, i64 12
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !11 ; 3 uses
  %i.ek = fmul float %.sroa.47.0, %i.ej
  %i.el = fadd float %i.eh, %i.ek
  %i.em = getelementptr inbounds nuw i8, ptr %_ZN6cyhairL6toC2B1E.sink.i, i64 16
  %i.en = load float, ptr %i.em, align 16, !tbaa !11 ; 3 uses
  %i.eo = fmul float %.sroa.0338.0, %i.en
  %i.ep = fmul float %i.dw, %i.en
  %i.eq = fmul float %i.dy, %i.en
  %i.er = getelementptr inbounds nuw i8, ptr %_ZN6cyhairL6toC2B1E.sink.i, i64 20
  %i.es = load float, ptr %i.er, align 4, !tbaa !11 ; 3 uses
  %i.et = fmul float %.sroa.17.0, %i.es
  %i.eu = fadd float %i.eo, %i.et
  %i.ev = getelementptr inbounds nuw i8, ptr %_ZN6cyhairL6toC2B1E.sink.i, i64 24
  %i.ew = load float, ptr %i.ev, align 8, !tbaa !11 ; 3 uses
  %i.ex = fmul float %.sroa.32.0, %i.ew
  %i.ey = fadd float %i.eu, %i.ex
  %i.ez = getelementptr inbounds nuw i8, ptr %_ZN6cyhairL6toC2B1E.sink.i, i64 28
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !11 ; 3 uses
  %i.fb = fmul float %.sroa.47.0, %i.fa
  %i.fc = fadd float %i.ey, %i.fb
  %i.fd = getelementptr inbounds nuw i8, ptr %_ZN6cyhairL6toC2B1E.sink.i, i64 32
  %i.fe = load float, ptr %i.fd, align 16, !tbaa !11 ; 3 uses
  %i.ff = fmul float %.sroa.0338.0, %i.fe
  %i.fg = fmul float %i.dw, %i.fe
  %i.fh = fmul float %i.dy, %i.fe
  %i.fi = getelementptr inbounds nuw i8, ptr %_ZN6cyhairL6toC2B1E.sink.i, i64 36
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !11 ; 3 uses
  %i.fk = fmul float %.sroa.17.0, %i.fj
  %i.fl = fadd float %i.ff, %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %_ZN6cyhairL6toC2B1E.sink.i, i64 40
  %i.fn = load float, ptr %i.fm, align 8, !tbaa !11 ; 3 uses
  %i.fo = fmul float %.sroa.32.0, %i.fn
  %i.fp = fadd float %i.fl, %i.fo
  %i.fq = getelementptr inbounds nuw i8, ptr %_ZN6cyhairL6toC2B1E.sink.i, i64 44
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !11 ; 3 uses
  %i.fs = fmul float %.sroa.47.0, %i.fr
  %i.ft = fadd float %i.fp, %i.fs
  %i.fu = getelementptr inbounds nuw i8, ptr %_ZN6cyhairL6toC2B1E.sink.i, i64 48
  %i.fv = getelementptr inbounds nuw i8, ptr %_ZN6cyhairL6toC2B1E.sink.i, i64 52
  %i.fw = getelementptr inbounds nuw i8, ptr %_ZN6cyhairL6toC2B1E.sink.i, i64 56
  %i.fx = getelementptr inbounds nuw i8, ptr %_ZN6cyhairL6toC2B1E.sink.i, i64 60
  %i.fy = load <2 x float>, ptr %.sroa.53.0.in, align 4, !tbaa !11 ; 3 uses
  %i.fz = load <2 x float>, ptr %.sroa.39.0.in, align 4, !tbaa !11 ; 3 uses
  %i.ga = load <2 x float>, ptr %.sroa.24.0.in, align 4, !tbaa !11 ; 3 uses
  %i.gb = extractelement <2 x float> %i.ga, i64 0 ; 3 uses
  %i.gc = fmul float %i.gb, %i.eb
  %i.gd = extractelement <2 x float> %i.ga, i64 1 ; 3 uses
  %i.ge = fmul float %i.gd, %i.eb
  %i.gf = fadd float %i.dx, %i.gc
  %i.gg = fadd float %i.dz, %i.ge
  %i.gh = extractelement <2 x float> %i.fz, i64 0 ; 3 uses
  %i.gi = fmul float %i.gh, %i.ef
  %i.gj = extractelement <2 x float> %i.fz, i64 1 ; 3 uses
  %i.gk = fmul float %i.gj, %i.ef
  %i.gl = fadd float %i.gf, %i.gi
  %i.gm = fadd float %i.gg, %i.gk
  %i.gn = extractelement <2 x float> %i.fy, i64 0 ; 3 uses
  %i.go = fmul float %i.gn, %i.ej
  %i.gp = extractelement <2 x float> %i.fy, i64 1 ; 3 uses
  %i.gq = fmul float %i.gp, %i.ej
  %i.gr = fadd float %i.gl, %i.go
  %i.gs = fadd float %i.gm, %i.gq
  %i.gt = fmul float %i.gb, %i.es
  %i.gu = fmul float %i.gd, %i.es
  %i.gv = fadd float %i.ep, %i.gt
  %i.gw = fadd float %i.eq, %i.gu
  %i.gx = fmul float %i.gh, %i.ew
  %i.gy = fmul float %i.gj, %i.ew
  %i.gz = fadd float %i.gv, %i.gx
  %i.ha = fadd float %i.gw, %i.gy
  %i.hb = fmul float %i.gn, %i.fa
  %i.hc = fmul float %i.gp, %i.fa
  %i.hd = fadd float %i.gz, %i.hb
  %i.he = fadd float %i.ha, %i.hc
  %i.hf = fmul float %i.gb, %i.fj
  %i.hg = fmul float %i.gd, %i.fj
  %i.hh = fadd float %i.fg, %i.hf
  %i.hi = fadd float %i.fh, %i.hg
  %i.hj = fmul float %i.gh, %i.fn
  %i.hk = fmul float %i.gj, %i.fn
  %i.hl = fadd float %i.hh, %i.hj
  %i.hm = fadd float %i.hi, %i.hk
  %i.hn = fmul float %i.gn, %i.fr
  %i.ho = fmul float %i.gp, %i.fr
  %i.hp = fadd float %i.hl, %i.hn
  %i.hq = fadd float %i.hm, %i.ho
  %i.hr = load float, ptr %i.fu, align 16, !tbaa !11 ; 2 uses
  %i.hs = fmul float %.sroa.0338.0, %i.hr
  %i.ht = insertelement <2 x float> poison, float %i.hr, i64 0
  %i.hu = shufflevector <2 x float> %i.ht, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hv = fmul <2 x float> %i.dt, %i.hu
  %7 = load float, ptr %i.fv, align 4, !tbaa !11  ; 2 uses
  %i.hw = fmul float %.sroa.17.0, %7
  %i.hx = insertelement <2 x float> poison, float %7, i64 0
  %i.hy = shufflevector <2 x float> %i.hx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hz = fmul <2 x float> %i.ga, %i.hy
  %i.ia = fadd float %i.hs, %i.hw
  %i.ib = fadd <2 x float> %i.hv, %i.hz
  %8 = load float, ptr %i.fw, align 8, !tbaa !11  ; 2 uses
  %i.ic = fmul float %.sroa.32.0, %8
  %i.id = insertelement <2 x float> poison, float %8, i64 0
  %i.ie = shufflevector <2 x float> %i.id, <2 x float> poison, <2 x i32> zeroinitializer
  %i.if = fmul <2 x float> %i.fz, %i.ie
  %i.ig = fadd float %i.ia, %i.ic
  %i.ih = fadd <2 x float> %i.ib, %i.if
  %9 = load float, ptr %i.fx, align 4, !tbaa !11  ; 2 uses
  %i.ii = fmul float %.sroa.47.0, %9
  %i.ij = insertelement <2 x float> poison, float %9, i64 0
  %i.ik = shufflevector <2 x float> %i.ij, <2 x float> poison, <2 x i32> zeroinitializer
  %i.il = fmul <2 x float> %i.fy, %i.ik
  %i.im = fadd float %i.ig, %i.ii
  %i.in = fadd <2 x float> %i.ih, %i.il           ; 2 uses
  %i.io = load float, ptr %3, align 4, !tbaa !11
  %i.ip = fmul float %i.io, %i.el
  %i.iq = load float, ptr %4, align 4, !tbaa !11
  %i.ir = fadd float %i.ip, %i.iq                 ; 2 uses
  %i.is = load ptr, ptr %i.l, align 8, !tbaa !57  ; 4 uses
  %i.it = load ptr, ptr %i.at, align 8, !tbaa !67 ; 2 uses
  %.not.i.i96 = icmp eq ptr %i.is, %i.it
  br i1 %.not.i.i96, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN6cyhairL22CamullRomToCubicBezierEPNS_5real3EPKS0_ii.exit
  store float %i.ir, ptr %i.is, align 4, !tbaa !11
  %i.iu = getelementptr inbounds nuw i8, ptr %i.is, i64 4 ; 2 uses
  store ptr %i.iu, ptr %i.l, align 8, !tbaa !57
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit

bb.y:                                             ; preds = %_ZN6cyhairL22CamullRomToCubicBezierEPNS_5real3EPKS0_ii.exit
  %i.iv = load ptr, ptr %1, align 8, !tbaa !58    ; 4 uses
  %i.iw = ptrtoint ptr %i.is to i64
  %i.ix = ptrtoint ptr %i.iv to i64               ; 2 uses
  %i.iy = sub i64 %i.iw, %i.ix                    ; 5 uses
  %i.iz = icmp eq i64 %i.iy, 9223372036854775804
  br i1 %i.iz, label %bb.z, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i

bb.z:                                             ; preds = %bb.y
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #20
          to label %.noexc97 unwind label %.loopexit.split-lp

.noexc97:                                         ; preds = %bb.z
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.y
  %i.ja = ashr exact i64 %i.iy, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ja, i64 1)
  %i.jb = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ja ; 2 uses
  %i.jc = icmp ult i64 %i.jb, %i.ja
  %i.jd = tail call i64 @llvm.umin.i64(i64 %i.jb, i64 2305843009213693951)
  %i.je = select i1 %i.jc, i64 2305843009213693951, i64 %i.jd ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.je, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.jf = shl nuw nsw i64 %i.je, 2
  %i.jg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jf) #21
          to label %.noexc98 unwind label %.loopexit ; 4 uses

.noexc98:                                         ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i
  %i.jh = getelementptr inbounds i8, ptr %i.jg, i64 %i.iy ; 2 uses
  store float %i.ir, ptr %i.jh, align 4, !tbaa !11
  %i.ji = icmp sgt i64 %i.iy, 0
  br i1 %i.ji, label %bb.aa, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i

bb.aa:                                            ; preds = %.noexc98
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.jg, ptr align 4 %i.iv, i64 %i.iy, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.aa, %.noexc98
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jh, i64 4 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.iv, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i
  %i.jk = load ptr, ptr %i.at, align 8, !tbaa !67
  %i.jl = ptrtoint ptr %i.jk to i64
  %i.jm = sub i64 %i.jl, %i.ix
  tail call void @_ZdlPvm(ptr noundef nonnull %i.iv, i64 noundef %i.jm) #22
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i: ; preds = %bb.ab, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i
  store ptr %i.jg, ptr %1, align 8, !tbaa !58
  store ptr %i.jj, ptr %i.l, align 8, !tbaa !57
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %i.je ; 2 uses
  store ptr %i.jn, ptr %i.at, align 8, !tbaa !67
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit

_ZNSt6vectorIfSaIfEE9push_backEOf.exit:           ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i, %bb.x
  %i.jo = phi ptr [ %i.jn, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i ], [ %i.it, %bb.x ] ; 3 uses
  %i.jp = phi ptr [ %i.jj, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i ], [ %i.iu, %bb.x ] ; 3 uses
  %i.jq = load float, ptr %i.au, align 4, !tbaa !11
  %i.jr = fmul float %i.jq, %i.gr
  %i.js = load float, ptr %i.av, align 4, !tbaa !11
  %i.jt = fadd float %i.jr, %i.js                 ; 2 uses
  %.not.i.i99 = icmp eq ptr %i.jp, %i.jo
  br i1 %.not.i.i99, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit
  store float %i.jt, ptr %i.jp, align 4, !tbaa !11
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jp, i64 4 ; 2 uses
  store ptr %i.ju, ptr %i.l, align 8, !tbaa !57
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit108

bb.ad:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit
  %i.jv = load ptr, ptr %1, align 8, !tbaa !58    ; 4 uses
  %i.jw = ptrtoint ptr %i.jo to i64
  %i.jx = ptrtoint ptr %i.jv to i64               ; 2 uses
  %i.jy = sub i64 %i.jw, %i.jx                    ; 5 uses
  %i.jz = icmp eq i64 %i.jy, 9223372036854775804
  br i1 %i.jz, label %bb.ae, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i100

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #20
          to label %.noexc106 unwind label %.loopexit.split-lp410

.noexc106:                                        ; preds = %bb.ae
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i100: ; preds = %bb.ad
  %i.ka = ashr exact i64 %i.jy, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i101 = tail call i64 @llvm.umax.i64(i64 %i.ka, i64 1)
  %i.kb = add nsw i64 %.sroa.speculated.i.i.i.i101, %i.ka ; 2 uses
  %i.kc = icmp ult i64 %i.kb, %i.ka
  %i.kd = tail call i64 @llvm.umin.i64(i64 %i.kb, i64 2305843009213693951)
  %i.ke = select i1 %i.kc, i64 2305843009213693951, i64 %i.kd ; 3 uses
  %.not.i.i.i.i102 = icmp ne i64 %i.ke, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i102)
  %i.kf = shl nuw nsw i64 %i.ke, 2
  %i.kg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kf) #21
          to label %.noexc107 unwind label %.loopexit409 ; 4 uses

.noexc107:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i100
  %i.kh = getelementptr inbounds i8, ptr %i.kg, i64 %i.jy ; 2 uses
  store float %i.jt, ptr %i.kh, align 4, !tbaa !11
  %i.ki = icmp sgt i64 %i.jy, 0
  br i1 %i.ki, label %bb.af, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i103

bb.af:                                            ; preds = %.noexc107
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.kg, ptr align 4 %i.jv, i64 %i.jy, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i103

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i103: ; preds = %bb.af, %.noexc107
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kh, i64 4 ; 2 uses
  %.not.i17.i.i.i104 = icmp eq ptr %i.jv, null
  br i1 %.not.i17.i.i.i104, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i105, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i103
  %i.kk = load ptr, ptr %i.at, align 8, !tbaa !67
  %i.kl = ptrtoint ptr %i.kk to i64
  %i.km = sub i64 %i.kl, %i.jx
  tail call void @_ZdlPvm(ptr noundef nonnull %i.jv, i64 noundef %i.km) #22
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i105

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i105: ; preds = %bb.ag, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i103
  store ptr %i.kg, ptr %1, align 8, !tbaa !58
  store ptr %i.kj, ptr %i.l, align 8, !tbaa !57
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.kg, i64 %i.ke ; 2 uses
  store ptr %i.kn, ptr %i.at, align 8, !tbaa !67
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit108

_ZNSt6vectorIfSaIfEE9push_backEOf.exit108:        ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i105, %bb.ac
  %i.ko = phi ptr [ %i.kn, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i105 ], [ %i.jo, %bb.ac ] ; 3 uses
  %i.kp = phi ptr [ %i.kj, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i105 ], [ %i.ju, %bb.ac ] ; 3 uses
  %i.kq = load float, ptr %i.aw, align 4, !tbaa !11
  %i.kr = fmul float %i.kq, %i.gs
  %i.ks = load float, ptr %i.ax, align 4, !tbaa !11
  %i.kt = fadd float %i.kr, %i.ks                 ; 2 uses
  %.not.i.i109 = icmp eq ptr %i.kp, %i.ko
  br i1 %.not.i.i109, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit108
  store float %i.kt, ptr %i.kp, align 4, !tbaa !11
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kp, i64 4 ; 2 uses
  store ptr %i.ku, ptr %i.l, align 8, !tbaa !57
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit118

bb.ai:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit108
  %i.kv = load ptr, ptr %1, align 8, !tbaa !58    ; 4 uses
  %i.kw = ptrtoint ptr %i.ko to i64
  %i.kx = ptrtoint ptr %i.kv to i64               ; 2 uses
  %i.ky = sub i64 %i.kw, %i.kx                    ; 5 uses
  %i.kz = icmp eq i64 %i.ky, 9223372036854775804
  br i1 %i.kz, label %bb.aj, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i110

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #20
          to label %.noexc116 unwind label %.loopexit.split-lp415

.noexc116:                                        ; preds = %bb.aj
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i110: ; preds = %bb.ai
  %i.la = ashr exact i64 %i.ky, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i111 = tail call i64 @llvm.umax.i64(i64 %i.la, i64 1)
  %i.lb = add nsw i64 %.sroa.speculated.i.i.i.i111, %i.la ; 2 uses
  %i.lc = icmp ult i64 %i.lb, %i.la
  %i.ld = tail call i64 @llvm.umin.i64(i64 %i.lb, i64 2305843009213693951)
  %i.le = select i1 %i.lc, i64 2305843009213693951, i64 %i.ld ; 3 uses
  %.not.i.i.i.i112 = icmp ne i64 %i.le, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i112)
  %i.lf = shl nuw nsw i64 %i.le, 2
  %i.lg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lf) #21
          to label %.noexc117 unwind label %.loopexit414 ; 4 uses

.noexc117:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i110
  %i.lh = getelementptr inbounds i8, ptr %i.lg, i64 %i.ky ; 2 uses
  store float %i.kt, ptr %i.lh, align 4, !tbaa !11
  %i.li = icmp sgt i64 %i.ky, 0
  br i1 %i.li, label %bb.ak, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i113

bb.ak:                                            ; preds = %.noexc117
end_hunk_0
