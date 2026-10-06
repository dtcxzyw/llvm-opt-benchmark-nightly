Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/intersection?download=true
inline.NumInlined: 254
inline.NumDeleted: 125
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN2cv28rotatedRectangleIntersectionERKNS_11RotatedRectES2_RKNS_12_OutputArrayE:bb.a
  %i.dl = load i64, ptr %i.cd, align 8, !tbaa !10
  store i64 %i.dl, ptr %i.dk, align 4, !tbaa !10
  br label %.loopexit440.i

bb.s:                                             ; preds = %bb.p
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

.critedge300.i:                                   ; preds = %bb.o, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g
  %i.dn = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.dq = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !74
  %i.ds = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.dt = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.du = load float, ptr %i.dt, align 4, !tbaa !74
  %i.dv = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dw = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !74
  %i.dy = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.dz = getelementptr inbounds nuw i8, ptr %7, i64 28
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !74
  %i.eb = load <2 x float>, ptr %i.dn, align 8, !tbaa !10 ; 2 uses
  %i.ec = load <3 x float>, ptr %i.dp, align 16, !tbaa !73 ; 2 uses
  %i.ed = shufflevector <2 x float> %i.aw, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.ee = shufflevector <3 x float> %i.ed, <3 x float> %i.ec, <4 x i32> <i32 0, i32 5, i32 poison, i32 3>
  %i.ef = shufflevector <2 x float> %i.eb, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.eg = shufflevector <4 x float> %i.ee, <4 x float> %i.ef, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 2 uses
  %i.eh = shufflevector <4 x float> %i.eg, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 2>
  %i.ei = shufflevector <3 x float> %i.ec, <3 x float> poison, <4 x i32> <i32 2, i32 0, i32 poison, i32 poison>
  %i.ej = shufflevector <4 x float> %i.ei, <4 x float> %i.eh, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ek = fsub <4 x float> %i.eg, %i.ej           ; 5 uses
  %i.el = shufflevector <4 x float> %i.ek, <4 x float> poison, <4 x i32> <i32 1, i32 3, i32 0, i32 2> ; 4 uses
  %i.em = shufflevector <2 x float> %i.aw, <2 x float> %i.eb, <4 x i32> <i32 1, i32 poison, i32 3, i32 poison>
  %i.en = insertelement <4 x float> %i.em, float %i.dx, i64 1
  %i.eo = insertelement <4 x float> %i.en, float %i.dr, i64 3 ; 2 uses
  %i.ep = shufflevector <4 x float> %i.eo, <4 x float> poison, <4 x i32> <i32 1, i32 3, i32 0, i32 2>
  %i.eq = fsub <4 x float> %i.eo, %i.ep           ; 8 uses
  %i.er = shufflevector <4 x float> %i.ek, <4 x float> %i.eq, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.er, ptr %4, align 16, !tbaa !10
  %i.es = shufflevector <4 x float> %i.ek, <4 x float> %i.eq, <4 x i32> <i32 1, i32 5, i32 0, i32 4>
  store <4 x float> %i.es, ptr %i.dv, align 16, !tbaa !10
  %i.et = load <2 x float>, ptr %i.do, align 8, !tbaa !10 ; 2 uses
  %i.eu = load <3 x float>, ptr %i.ds, align 16, !tbaa !73 ; 2 uses
  %i.ev = shufflevector <2 x float> %i.ax, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.ew = shufflevector <3 x float> %i.ev, <3 x float> %i.eu, <4 x i32> <i32 0, i32 5, i32 poison, i32 3>
  %i.ex = shufflevector <2 x float> %i.et, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ey = shufflevector <4 x float> %i.ew, <4 x float> %i.ex, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 2 uses
  %i.ez = shufflevector <4 x float> %i.ey, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 2>
  %i.fa = shufflevector <3 x float> %i.eu, <3 x float> poison, <4 x i32> <i32 2, i32 0, i32 poison, i32 poison>
  %i.fb = shufflevector <4 x float> %i.fa, <4 x float> %i.ez, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fc = fsub <4 x float> %i.ey, %i.fb           ; 5 uses
  %i.fd = shufflevector <4 x float> %i.fc, <4 x float> poison, <4 x i32> <i32 1, i32 3, i32 0, i32 2> ; 4 uses
  %i.fe = shufflevector <2 x float> %i.ax, <2 x float> %i.et, <4 x i32> <i32 1, i32 poison, i32 3, i32 poison>
  %i.ff = insertelement <4 x float> %i.fe, float %i.ea, i64 1
  %i.fg = insertelement <4 x float> %i.ff, float %i.du, i64 3 ; 2 uses
  %i.fh = shufflevector <4 x float> %i.fg, <4 x float> poison, <4 x i32> <i32 1, i32 3, i32 0, i32 2>
  %i.fi = fsub <4 x float> %i.fg, %i.fh           ; 8 uses
  %i.fj = shufflevector <4 x float> %i.fc, <4 x float> %i.fi, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.fj, ptr %5, align 16, !tbaa !10
  %i.fk = shufflevector <4 x float> %i.fc, <4 x float> %i.fi, <4 x i32> <i32 1, i32 5, i32 0, i32 4>
  store <4 x float> %i.fk, ptr %i.dy, align 16, !tbaa !10
  %i.fl = shufflevector <4 x float> %i.eq, <4 x float> %i.fi, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.fm = fmul <4 x float> %i.fl, %i.fl
  %i.fn = shufflevector <4 x float> %i.ek, <4 x float> %i.fc, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.fo = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fn, <4 x float> %i.fn, <4 x float> %i.fm) ; 4 uses
  %i.fp = extractelement <4 x float> %i.fo, i64 0
  %sqrt418.i = call float @llvm.sqrt.f32(float %i.fp) ; 2 uses
  %i.fq = fcmp olt float %sqrt418.i, %i.av
  %.sroa.speculated403.i = select i1 %i.fq, float %sqrt418.i, float %i.av ; 2 uses
  %i.fr = extractelement <4 x float> %i.fo, i64 1
  %sqrt.i = call float @llvm.sqrt.f32(float %i.fr) ; 2 uses
  %i.fs = fcmp olt float %sqrt.i, %.sroa.speculated403.i
  %.sroa.speculated399.i = select i1 %i.fs, float %sqrt.i, float %.sroa.speculated403.i ; 2 uses
  %i.ft = extractelement <4 x float> %i.fo, i64 2
  %sqrt418.1.i = call float @llvm.sqrt.f32(float %i.ft) ; 2 uses
  %i.fu = fcmp olt float %sqrt418.1.i, %.sroa.speculated399.i
  %.sroa.speculated403.1.i = select i1 %i.fu, float %sqrt418.1.i, float %.sroa.speculated399.i ; 2 uses
  %i.fv = extractelement <4 x float> %i.fo, i64 3
  %sqrt.1.i = call float @llvm.sqrt.f32(float %i.fv) ; 2 uses
  %i.fw = fcmp olt float %sqrt.1.i, %.sroa.speculated403.1.i
  %.sroa.speculated399.1.i = select i1 %i.fw, float %sqrt.1.i, float %.sroa.speculated403.1.i ; 2 uses
  %i.fx = shufflevector <4 x float> %i.eq, <4 x float> %i.fi, <4 x i32> <i32 1, i32 5, i32 0, i32 4> ; 2 uses
  %i.fy = fmul <4 x float> %i.fx, %i.fx
  %i.fz = shufflevector <4 x float> %i.ek, <4 x float> %i.fc, <4 x i32> <i32 1, i32 5, i32 0, i32 4> ; 2 uses
  %i.ga = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fz, <4 x float> %i.fz, <4 x float> %i.fy) ; 4 uses
  %i.gb = extractelement <4 x float> %i.ga, i64 0
  %sqrt418.2.i = call float @llvm.sqrt.f32(float %i.gb) ; 2 uses
  %i.gc = fcmp olt float %sqrt418.2.i, %.sroa.speculated399.1.i
  %.sroa.speculated403.2.i = select i1 %i.gc, float %sqrt418.2.i, float %.sroa.speculated399.1.i ; 2 uses
  %i.gd = extractelement <4 x float> %i.ga, i64 1
  %sqrt.2.i = call float @llvm.sqrt.f32(float %i.gd) ; 2 uses
  %i.ge = fcmp olt float %sqrt.2.i, %.sroa.speculated403.2.i
  %.sroa.speculated399.2.i = select i1 %i.ge, float %sqrt.2.i, float %.sroa.speculated403.2.i ; 2 uses
  %i.gf = extractelement <4 x float> %i.ga, i64 2
  %sqrt418.3.i = call float @llvm.sqrt.f32(float %i.gf) ; 2 uses
  %i.gg = fcmp olt float %sqrt418.3.i, %.sroa.speculated399.2.i
  %.sroa.speculated403.3.i = select i1 %i.gg, float %sqrt418.3.i, float %.sroa.speculated399.2.i ; 2 uses
  %i.gh = extractelement <4 x float> %i.ga, i64 3
  %sqrt.3.i = call float @llvm.sqrt.f32(float %i.gh) ; 2 uses
  %i.gi = fcmp olt float %sqrt.3.i, %.sroa.speculated403.3.i
  %.sroa.speculated399.3.i = select i1 %i.gi, float %sqrt.3.i, float %.sroa.speculated403.3.i ; 2 uses
  %i.gj = fcmp ogt float %.sroa.speculated399.3.i, 1.000000e-16
  %.sroa.speculated.i = select i1 %i.gj, float %.sroa.speculated399.3.i, float 1.000000e-16
  br label %.preheader433.i

.preheader433.i:                                  ; preds = %bb.u, %.critedge300.i
  %indvars.iv501.i = phi i64 [ 0, %.critedge300.i ], [ %indvars.iv.next502.i, %bb.u ] ; 3 uses
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv501.i
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv501.i
  %i.gm = load <2 x float>, ptr %i.gl, align 8, !tbaa !10 ; 5 uses
  %i.gn = extractelement <2 x float> %i.gm, i64 0
  %i.go = extractelement <2 x float> %i.gm, i64 1
  br label %bb.v

bb.t:                                             ; preds = %bb.u
  %i.gp = load ptr, ptr %15, align 8, !tbaa !75
  %i.gq = load ptr, ptr %i.y, align 8, !tbaa !75  ; 8 uses
  %i.gr = icmp eq ptr %i.gp, %i.gq
  %spec.select.i = select i1 %i.gr, i32 2, i32 1
  %i.gs = load <2 x float>, ptr %6, align 16, !tbaa !10 ; 2 uses
  %i.gt = load <8 x float>, ptr %7, align 16, !tbaa !10 ; 2 uses
  %i.gu = shufflevector <8 x float> %i.gt, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.gv = shufflevector <2 x float> %i.gs, <2 x float> poison, <4 x i32> zeroinitializer
  %i.gw = fsub <4 x float> %i.gu, %i.gv
  %i.gx = shufflevector <4 x float> %i.fi, <4 x float> poison, <4 x i32> <i32 1, i32 3, i32 0, i32 2>
  %i.gy = shufflevector <4 x float> %i.gw, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 3, i32 0>
  %i.gz = fmul <4 x float> %i.gx, %i.gy
  %i.ha = shufflevector <8 x float> %i.gt, <8 x float> poison, <4 x i32> <i32 5, i32 3, i32 7, i32 1>
  %i.hb = shufflevector <2 x float> %i.gs, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.hc = fsub <4 x float> %i.ha, %i.hb
  %i.hd = fmul <4 x float> %i.fd, %i.hc
  %i.he = fcmp oge <4 x float> %i.gz, %i.hd       ; 2 uses
  %i.hf = bitcast <4 x i1> %i.he to i4
  %i.hg = icmp eq i4 %i.hf, -1
  %i.hh = bitcast <4 x i1> %i.he to i4
  %i.hi = icmp eq i4 %i.hh, 0
  %or.cond7.i = or i1 %i.hg, %i.hi
  br i1 %or.cond7.i, label %bb.ad, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit.i

bb.u:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backEOS2_.exit.i
  %indvars.iv.next502.i = add nuw nsw i64 %indvars.iv501.i, 1 ; 2 uses
  %exitcond504.not.i = icmp eq i64 %indvars.iv.next502.i, 4
  br i1 %exitcond504.not.i, label %bb.t, label %.preheader433.i, !llvm.loop !31

bb.v:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backEOS2_.exit.i, %.preheader433.i
  %indvars.iv.i = phi i64 [ 0, %.preheader433.i ], [ %indvars.iv.next.i, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backEOS2_.exit.i ] ; 3 uses
  %i.hj = load <2 x float>, ptr %i.gk, align 8, !tbaa !10 ; 3 uses
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.i ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 4
  %i.hm = load <2 x float>, ptr %i.hk, align 8, !tbaa !10 ; 3 uses
  %i.hn = load float, ptr %i.hl, align 4, !tbaa !74
  %i.ho = fneg float %i.hn
  %i.hp = fmul float %i.gn, %i.ho
  %i.hq = extractelement <2 x float> %i.hm, i64 0
  %i.hr = call float @llvm.fmuladd.f32(float %i.hq, float %i.go, float %i.hp) ; 2 uses
  %i.hs = call noundef float @llvm.fabs.f32(float %i.hr)
  %i.ht = fpext float %i.hs to double
  %i.hu = fcmp olt double %i.ht, f0x3D719799812DEA11
  br i1 %i.hu, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backEOS2_.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv.i ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 4
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !74
  %i.hy = load float, ptr %i.hv, align 8, !tbaa !73
  %i.hz = extractelement <2 x float> %i.hj, i64 1
  %i.ia = extractelement <2 x float> %i.hj, i64 0
  %i.ib = fsub float %i.hy, %i.ia
  %i.ic = fneg float %i.ib
  %i.id = fsub float %i.hx, %i.hz
  %i.ie = fdiv float 1.000000e+00, %i.hr
  %i.if = shufflevector <2 x float> %i.gm, <2 x float> %i.hm, <2 x i32> <i32 3, i32 1>
  %i.ig = insertelement <2 x float> poison, float %i.ic, i64 0
  %i.ih = shufflevector <2 x float> %i.ig, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ii = fmul <2 x float> %i.if, %i.ih
  %i.ij = shufflevector <2 x float> %i.hm, <2 x float> %i.gm, <2 x i32> <i32 0, i32 2>
  %i.ik = insertelement <2 x float> poison, float %i.id, i64 0
  %i.il = shufflevector <2 x float> %i.ik, <2 x float> poison, <2 x i32> zeroinitializer
  %i.im = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ij, <2 x float> %i.il, <2 x float> %i.ii)
  %i.in = insertelement <2 x float> poison, float %i.ie, i64 0
  %i.io = shufflevector <2 x float> %i.in, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ip = fmul <2 x float> %i.io, %i.im           ; 4 uses
  %i.iq = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ip)
  %i.ir = shufflevector <2 x float> %i.ip, <2 x float> %i.iq, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.is = fcmp ord <4 x float> %i.ir, zeroinitializer
  %i.it = fcmp une <4 x float> %i.ir, <float 0.000000e+00, float 0.000000e+00, float +inf, float +inf>
  %i.iu = shufflevector <4 x i1> %i.is, <4 x i1> %i.it, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.iv = freeze <4 x i1> %i.iu
  %i.iw = bitcast <4 x i1> %i.iv to i4
  %i.ix = icmp eq i4 %i.iw, -1
  br i1 %i.ix, label %bb.x, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backEOS2_.exit.i

bb.x:                                             ; preds = %bb.w
  %i.iy = shufflevector <2 x float> %i.ip, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.iz = fcmp ole <4 x float> %i.iy, <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.ja = fcmp oge <4 x float> %i.iy, <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.jb = shufflevector <4 x i1> %i.iz, <4 x i1> %i.ja, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %17 = freeze <4 x i1> %i.jb
  %i.jc = bitcast <4 x i1> %17 to i4
  %i.jd = icmp eq i4 %i.jc, -1
  br i1 %i.jd, label %bb.y, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backEOS2_.exit.i

bb.y:                                             ; preds = %bb.x
  %i.je = shufflevector <2 x float> %i.ip, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gm, <2 x float> %i.je, <2 x float> %i.hj) ; 2 uses
  %i.jg = load ptr, ptr %i.y, align 8, !tbaa !15  ; 6 uses
  %i.jh = load ptr, ptr %i.x, align 8, !tbaa !17
  %.not.i.i335.i = icmp eq ptr %i.jg, %i.jh
  br i1 %.not.i.i335.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store <2 x float> %i.jf, ptr %i.jg, align 4, !tbaa !10
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  store ptr %i.ji, ptr %i.y, align 8, !tbaa !15
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backEOS2_.exit.i

bb.aa:                                            ; preds = %bb.y
  %i.jj = load ptr, ptr %15, align 8, !tbaa !14   ; 5 uses
  %i.jk = ptrtoint ptr %i.jg to i64
  %i.jl = ptrtoint ptr %i.jj to i64               ; 2 uses
  %i.jm = sub i64 %i.jk, %i.jl                    ; 3 uses
  %i.jn = icmp eq i64 %i.jm, 9223372036854775800
  br i1 %i.jn, label %bb.ab, label %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #19
          to label %.noexc336.i unwind label %.loopexit.split-lp435.i

.noexc336.i:                                      ; preds = %bb.ab
  unreachable

_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.aa
  %i.jo = ashr exact i64 %i.jm, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.jo, i64 1)
  %i.jp = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.jo ; 2 uses
  %i.jq = icmp ult i64 %i.jp, %i.jo
  %i.jr = call i64 @llvm.umin.i64(i64 %i.jp, i64 1152921504606846975)
  %i.js = select i1 %i.jq, i64 1152921504606846975, i64 %i.jr ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.js, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.jt = shl nuw nsw i64 %i.js, 3
  %i.ju = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jt) #17
          to label %.noexc337.i unwind label %.loopexit434.i ; 5 uses

.noexc337.i:                                      ; preds = %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 %i.jm
  store <2 x float> %i.jf, ptr %i.jv, align 4, !tbaa !10
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.jj, %i.jg
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc337.i, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.jy, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ju, %.noexc337.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.jx, %.lr.ph.i.i.i.i.i.i.i ], [ %i.jj, %.noexc337.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !76)
  call void @llvm.experimental.noalias.scope.decl(metadata !77)
  %i.jw = load i64, ptr %.0911.i.i.i.i.i.i.i, align 4, !tbaa !10, !alias.scope !77, !noalias !76
  store i64 %i.jw, ptr %.012.i.i.i.i.i.i.i, align 4, !tbaa !10, !alias.scope !76, !noalias !77
  %i.jx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.jx, %i.jg
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !0

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.noexc337.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ju, %.noexc337.i ], [ %i.jy, %.lr.ph.i.i.i.i.i.i.i ]
  %i.jz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i = icmp eq ptr %i.jj, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i
  %i.ka = load ptr, ptr %i.x, align 8, !tbaa !17
  %i.kb = ptrtoint ptr %i.ka to i64
  %i.kc = sub i64 %i.kb, %i.jl
  call void @_ZdlPvm(ptr noundef nonnull %i.jj, i64 noundef %i.kc) #18
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i: ; preds = %bb.ac, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i
  store ptr %i.ju, ptr %15, align 8, !tbaa !14
  store ptr %i.jz, ptr %i.y, align 8, !tbaa !15
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %i.js
  store ptr %i.kd, ptr %i.x, align 8, !tbaa !17
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backEOS2_.exit.i

.loopexit434.i:                                   ; preds = %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %lpad.loopexit436.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

.loopexit.split-lp435.i:                          ; preds = %bb.ab
  %lpad.loopexit.split-lp437.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backEOS2_.exit.i: ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i, %bb.z, %bb.x, %bb.w, %bb.v
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 4
  br i1 %exitcond.not.i, label %bb.u, label %bb.v, !llvm.loop !35

bb.ad:                                            ; preds = %bb.t
  %i.ke = load ptr, ptr %i.x, align 8, !tbaa !17
  %.not.i.i = icmp eq ptr %i.gq, %i.ke
  br i1 %.not.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.kf = load i64, ptr %6, align 16, !tbaa !10
  store i64 %i.kf, ptr %i.gq, align 4, !tbaa !10
  %i.kg = getelementptr inbounds nuw i8, ptr %i.gq, i64 8 ; 2 uses
  store ptr %i.kg, ptr %i.y, align 8, !tbaa !15
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit.i

bb.af:                                            ; preds = %bb.ad
  %i.kh = load ptr, ptr %15, align 8, !tbaa !14   ; 5 uses
  %i.ki = ptrtoint ptr %i.gq to i64
  %i.kj = ptrtoint ptr %i.kh to i64               ; 2 uses
  %i.kk = sub i64 %i.ki, %i.kj                    ; 3 uses
  %i.kl = icmp eq i64 %i.kk, 9223372036854775800
  br i1 %i.kl, label %bb.ag, label %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ag:                                            ; preds = %bb.as, %bb.ao, %bb.ak, %bb.af
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #19
          to label %.noexc338.i unwind label %.loopexit.split-lp429.i

.noexc338.i:                                      ; preds = %bb.ag
  unreachable

_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.af
  %i.km = ashr exact i64 %i.kk, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.km, i64 1)
  %i.kn = add nsw i64 %.sroa.speculated.i.i.i.i, %i.km ; 2 uses
  %i.ko = icmp ult i64 %i.kn, %i.km
  %i.kp = call i64 @llvm.umin.i64(i64 %i.kn, i64 1152921504606846975)
  %i.kq = select i1 %i.ko, i64 1152921504606846975, i64 %i.kp ; 3 uses
  %.not.i.i.i.i41 = icmp ne i64 %i.kq, 0
  call void @llvm.assume(i1 %.not.i.i.i.i41)
  %i.kr = shl nuw nsw i64 %i.kq, 3
  %i.ks = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kr) #17
          to label %.noexc339.i unwind label %.loopexit428.i ; 5 uses

.noexc339.i:                                      ; preds = %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 %i.kk
  %i.ku = load i64, ptr %6, align 16, !tbaa !10
  store i64 %i.ku, ptr %i.kt, align 4, !tbaa !10
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.kh, %i.gq
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc339.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.kx, %.lr.ph.i.i.i.i.i.i ], [ %i.ks, %.noexc339.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.kw, %.lr.ph.i.i.i.i.i.i ], [ %i.kh, %.noexc339.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !78)
  call void @llvm.experimental.noalias.scope.decl(metadata !79)
  %i.kv = load i64, ptr %.0911.i.i.i.i.i.i, align 4, !tbaa !10, !alias.scope !79, !noalias !78
  store i64 %i.kv, ptr %.012.i.i.i.i.i.i, align 4, !tbaa !10, !alias.scope !78, !noalias !79
  %i.kw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.kw, %i.gq
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc339.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ks, %.noexc339.i ], [ %i.kx, %.lr.ph.i.i.i.i.i.i ]
  %i.ky = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.kh, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  %i.kz = load ptr, ptr %i.x, align 8, !tbaa !17
  %i.la = ptrtoint ptr %i.kz to i64
  %i.lb = sub i64 %i.la, %i.kj
  call void @_ZdlPvm(ptr noundef nonnull %i.kh, i64 noundef %i.lb) #18
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.ah, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  store ptr %i.ks, ptr %15, align 8, !tbaa !14
  store ptr %i.ky, ptr %i.y, align 8, !tbaa !15
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.ks, i64 %i.kq
  store ptr %i.lc, ptr %i.x, align 8, !tbaa !17
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit.i

.loopexit428.i:                                   ; preds = %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.3, %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.2, %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.1, %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit430.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

.loopexit.split-lp429.i:                          ; preds = %bb.ag
  %lpad.loopexit.split-lp431.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit.i: ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.ae, %bb.t
  %i.ld = phi ptr [ %i.ky, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.kg, %bb.ae ], [ %i.gq, %bb.t ] ; 7 uses
  %i.le = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.lf = load <2 x float>, ptr %i.le, align 8, !tbaa !10 ; 2 uses
  %i.lg = load <8 x float>, ptr %7, align 16, !tbaa !10 ; 2 uses
  %i.lh = shufflevector <8 x float> %i.lg, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.li = shufflevector <2 x float> %i.lf, <2 x float> poison, <4 x i32> zeroinitializer
  %i.lj = fsub <4 x float> %i.lh, %i.li
  %i.lk = shufflevector <4 x float> %i.fi, <4 x float> poison, <4 x i32> <i32 1, i32 3, i32 0, i32 2>
  %i.ll = shufflevector <4 x float> %i.lj, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 3, i32 0>
  %i.lm = fmul <4 x float> %i.lk, %i.ll
  %i.ln = shufflevector <8 x float> %i.lg, <8 x float> poison, <4 x i32> <i32 5, i32 3, i32 7, i32 1>
  %i.lo = shufflevector <2 x float> %i.lf, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
end_hunk_0
