inline.NumInlined: 72
inline.NumDeleted: 48
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN2cv11minAreaRectERKNS_11_InputArrayE:bb.a
  store i32 %.1243.i, ptr %i.bb, align 4, !tbaa !31
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i32 %.1245.i, ptr %i.bc, align 8, !tbaa !31
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  store i32 %.1231.i, ptr %i.bd, align 4, !tbaa !31
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 28
  %.sroa.gep58 = getelementptr inbounds nuw i8, ptr %3, i64 4
  br label %bb.p

bb.p:                                             ; preds = %bb.v, %bb.o
  %i.bh = phi i32 [ %.1231.i, %bb.o ], [ %i.dy, %bb.v ]
  %i.bi = phi i32 [ %.1245.i, %bb.o ], [ %i.eh, %bb.v ]
  %i.bj = phi i32 [ %.1243.i, %bb.o ], [ %i.du, %bb.v ]
  %i.bk = phi i32 [ %.1233.i, %bb.o ], [ %i.el, %bb.v ]
  %.0212310.i = phi float [ f0x7F7FFFFF, %bb.o ], [ %.1213.i, %bb.v ] ; 2 uses
  %.0221309.i = phi i32 [ 0, %bb.o ], [ %i.fl, %bb.v ]
  %.sroa.19.0308.i = phi i32 [ 0, %bb.o ], [ %.sroa.19.1.i, %bb.v ]
  %.sroa.0.0303.i = phi i32 [ 0, %bb.o ], [ %.sroa.0.1.i, %bb.v ]
  %i.bl = phi <2 x float> [ zeroinitializer, %bb.o ], [ %i.fj, %bb.v ]
  %i.bm = phi <2 x float> [ zeroinitializer, %bb.o ], [ %i.fk, %bb.v ]
  %i.bn = sext i32 %i.bk to i64
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.bn
  %i.bp = load i64, ptr %i.bo, align 4            ; 3 uses
  store i64 %i.bp, ptr %3, align 16
  %i.bq = sext i32 %i.bj to i64
  %i.br = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.bq ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !32 ; 3 uses
  store float %i.bt, ptr %i.be, align 8, !tbaa !34
  %i.bu = load float, ptr %i.br, align 4, !tbaa !34
  %i.bv = sext i32 %i.bi to i64
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.bv
  %i.bx = sext i32 %i.bh to i64
  %i.by = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.bx ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !32 ; 2 uses
  %i.cb = load <2 x float>, ptr %i.bw, align 4, !tbaa !27 ; 2 uses
  %i.cc = shufflevector <2 x float> %i.cb, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.cd = insertelement <4 x float> %i.cc, float %i.bu, i64 0
  %i.ce = insertelement <4 x float> %i.cd, float %i.ca, i64 3
  %i.cf = fneg <4 x float> %i.ce                  ; 3 uses
  store <4 x float> %i.cf, ptr %i.bf, align 4, !tbaa !27
  %i.cg = load float, ptr %i.by, align 4, !tbaa !34 ; 2 uses
  store float %i.cg, ptr %i.bg, align 4, !tbaa !32
  %i.ch = trunc i64 %i.bp to i32
  %i.ci = bitcast i32 %i.ch to float              ; 2 uses
  %i.cj = lshr i64 %i.bp, 32
  %i.ck = trunc nuw i64 %i.cj to i32
  %i.cl = bitcast i32 %i.ck to float
  %i.cm = fneg float %i.bt
  %i.cn = fmul float %i.cm, %i.cl
  %i.co = extractelement <4 x float> %i.cf, i64 0 ; 2 uses
  %i.cp = call float @llvm.fmuladd.f32(float %i.co, float %i.ci, float %i.cn)
  %i.cq = fcmp olt float %i.cp, 0.000000e+00      ; 3 uses
  %spec.select.i = zext i1 %i.cq to i32
  %.val278.1.i = select i1 %i.cq, float %i.bt, float %i.ci
  %.sroa.gep58.val = load float, ptr %.sroa.gep58, align 4
  %.val279.1.i = select i1 %i.cq, float %i.co, float %.sroa.gep58.val
  %i.cr = extractelement <2 x float> %i.cb, i64 0
  %i.cs = fmul float %i.cr, %.val279.1.i
  %i.ct = extractelement <4 x float> %i.cf, i64 2
  %i.cu = call float @llvm.fmuladd.f32(float %i.ct, float %.val278.1.i, float %i.cs)
  %i.cv = fcmp olt float %i.cu, 0.000000e+00
  %spec.select.1.i = select i1 %i.cv, i32 2, i32 %spec.select.i ; 2 uses
  %i.cw = zext nneg i32 %spec.select.1.i to i64
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.cw ; 2 uses
  %.val278.2.i = load float, ptr %i.cx, align 8, !tbaa !34
  %i.cy = getelementptr i8, ptr %i.cx, i64 4
  %.val279.2.i = load float, ptr %i.cy, align 4, !tbaa !32
  %i.cz = fmul float %i.ca, %.val279.2.i
  %i.da = call float @llvm.fmuladd.f32(float %i.cg, float %.val278.2.i, float %i.cz)
  %i.db = fcmp olt float %i.da, 0.000000e+00
  %spec.select.2.i = select i1 %i.db, i32 3, i32 %spec.select.1.i ; 2 uses
  %i.dc = zext nneg i32 %spec.select.2.i to i64
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dc ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !31 ; 2 uses
  %i.df = sext i32 %i.de to i64                   ; 2 uses
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.df ; 2 uses
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.df
  %i.di = load float, ptr %i.dh, align 4, !tbaa !27 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !32
  %i.dl = load float, ptr %i.dg, align 4, !tbaa !34
  %i.dm = fmul float %i.dl, %i.di                 ; 4 uses
  %i.dn = fmul float %i.di, %i.dk                 ; 4 uses
  switch i32 %spec.select.2.i, label %default.unreachable [
    i32 0, label %bb.t
    i32 1, label %bb.q
    i32 2, label %bb.r
    i32 3, label %bb.s
  ]

bb.q:                                             ; preds = %bb.p
  %i.do = fneg float %i.dm
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.dp = fneg float %i.dm
  %i.dq = fneg float %i.dn
  br label %bb.t

bb.s:                                             ; preds = %bb.p
  %i.dr = fneg float %i.dn
  br label %bb.t

default.unreachable:                              ; preds = %bb.p
  unreachable

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %.0255.i = phi float [ %i.dr, %bb.s ], [ %i.dn, %bb.q ], [ %i.dp, %bb.r ], [ %i.dm, %bb.p ]
  %.0254.i = phi float [ %i.dm, %bb.s ], [ %i.do, %bb.q ], [ %i.dq, %bb.r ], [ %i.dn, %bb.p ]
  %i.ds = add nsw i32 %i.de, 1                    ; 2 uses
  %i.dt = icmp eq i32 %i.ds, %i.l
  %spec.select274.i = select i1 %i.dt, i32 0, i32 %i.ds
  store i32 %spec.select274.i, ptr %i.dd, align 4, !tbaa !31
  %i.du = load i32, ptr %i.bb, align 4, !tbaa !31 ; 2 uses
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.dv ; 2 uses
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !34
  %i.dy = load i32, ptr %i.bd, align 4, !tbaa !31 ; 3 uses
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.dz ; 2 uses
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !34
  %i.ec = fsub float %i.dx, %i.eb
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !32
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !32
  %i.eh = load i32, ptr %i.bc, align 8, !tbaa !31 ; 2 uses
  %i.ei = sext i32 %i.eh to i64
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.ei ; 2 uses
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !34
  %i.el = load i32, ptr %i.a, align 16, !tbaa !31 ; 3 uses
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.em ; 2 uses
  %i.eo = load float, ptr %i.en, align 4, !tbaa !34
  %i.ep = fsub float %i.ek, %i.eo
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  %i.er = load float, ptr %i.eq, align 4, !tbaa !32
  %i.es = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  %i.et = load float, ptr %i.es, align 4, !tbaa !32
  %i.eu = fneg float %i.ep
  %i.ev = insertelement <2 x float> poison, float %i.ee, i64 0
  %i.ew = insertelement <2 x float> %i.ev, float %i.er, i64 1
  %i.ex = insertelement <2 x float> poison, float %i.eg, i64 0
  %i.ey = insertelement <2 x float> %i.ex, float %i.et, i64 1
  %i.ez = fsub <2 x float> %i.ew, %i.ey
  %i.fa = insertelement <2 x float> poison, float %.0254.i, i64 0
  %i.fb = insertelement <2 x float> %i.fa, float %.0255.i, i64 1 ; 3 uses
  %i.fc = fmul <2 x float> %i.fb, %i.ez
  %i.fd = insertelement <2 x float> poison, float %i.ec, i64 0
  %i.fe = insertelement <2 x float> %i.fd, float %i.eu, i64 1
  %i.ff = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fe, <2 x float> %i.ff, <2 x float> %i.fc) ; 3 uses
  %shift = shufflevector <2 x float> %i.fg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %i.fg, %shift
  %i.fh = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.fi = fcmp ugt float %i.fh, %.0212310.i
  br i1 %i.fi, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.sroa.0.1.i = phi i32 [ %i.dy, %bb.u ], [ %.sroa.0.0303.i, %bb.t ] ; 2 uses
  %.sroa.19.1.i = phi i32 [ %i.el, %bb.u ], [ %.sroa.19.0308.i, %bb.t ] ; 2 uses
  %.1213.i = phi float [ %i.fh, %bb.u ], [ %.0212310.i, %bb.t ]
  %i.fj = phi <2 x float> [ %i.fg, %bb.u ], [ %i.bl, %bb.t ] ; 3 uses
  %i.fk = phi <2 x float> [ %i.fb, %bb.u ], [ %i.bm, %bb.t ] ; 9 uses
  %i.fl = add nuw nsw i32 %.0221309.i, 1          ; 2 uses
  %exitcond316.not.i = icmp eq i32 %i.fl, %i.l
  br i1 %exitcond316.not.i, label %bb.w, label %bb.p, !llvm.loop !35

bb.w:                                             ; preds = %bb.v
  %i.fm = extractelement <2 x float> %i.fk, i64 0
  %i.fn = fneg float %i.fm                        ; 2 uses
  %i.fo = sext i32 %.sroa.0.1.i to i64
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.fo
  %i.fq = extractelement <2 x float> %i.fk, i64 1 ; 2 uses
  %i.fr = sext i32 %.sroa.19.1.i to i64
  %i.fs = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.fr
  %foldExtExtBinop65 = fmul <2 x float> %i.fk, %i.fk
  %i.ft = extractelement <2 x float> %foldExtExtBinop65, i64 0
  %i.fu = call float @llvm.fmuladd.f32(float %i.fq, float %i.fq, float %i.ft)
  %i.fv = fdiv float 1.000000e+00, %i.fu
  %i.fw = load <2 x float>, ptr %i.fp, align 4, !tbaa !27 ; 2 uses
  %i.fx = load <2 x float>, ptr %i.fs, align 4, !tbaa !27 ; 2 uses
  %i.fy = shufflevector <2 x float> %i.fw, <2 x float> %i.fx, <2 x i32> <i32 1, i32 3>
  %i.fz = fmul <2 x float> %i.fk, %i.fy
  %i.ga = shufflevector <2 x float> %i.fk, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.gb = insertelement <2 x float> %i.ga, float %i.fn, i64 1 ; 2 uses
  %i.gc = shufflevector <2 x float> %i.fw, <2 x float> %i.fx, <2 x i32> <i32 0, i32 2>
  %i.gd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gb, <2 x float> %i.gc, <2 x float> %i.fz) ; 2 uses
  %i.ge = insertelement <2 x float> %i.fk, float %i.fn, i64 1
  %i.gf = fmul <2 x float> %i.gd, %i.ge
  %i.gg = shufflevector <2 x float> %i.gf, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gd, <2 x float> %i.ga, <2 x float> %i.gg)
  %i.gi = insertelement <2 x float> poison, float %i.fv, i64 0
  %i.gj = fmul <2 x float> %i.fj, %i.gb           ; 4 uses
  %i.gk = fmul <2 x float> %i.fk, %i.fj           ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %.not.i.i280.i = icmp eq ptr %i.v, %i.r
  br i1 %.not.i.i280.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZdaPv(ptr noundef nonnull %i.v) #14
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  %i.gl = extractelement <2 x float> %i.gj, i64 0
  %i.gm = extractelement <2 x float> %i.gk, i64 0
  %9 = fpext <2 x float> %i.gj to <2 x double>    ; 3 uses
  %10 = fpext <2 x float> %i.gk to <2 x double>   ; 3 uses
  %11 = fmul <2 x double> %10, %10
  %12 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %9, <2 x double> %9, <2 x double> %11)
  %13 = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %12)
  %14 = fptrunc <2 x double> %13 to <2 x float>   ; 2 uses
  %15 = shufflevector <2 x float> %14, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 1, i32 0>
  %16 = shufflevector <2 x float> %i.gj, <2 x float> %i.gk, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %17 = shufflevector <2 x float> %i.gj, <2 x float> %i.gk, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %18 = fadd <4 x float> %16, %17
  %19 = shufflevector <4 x float> %18, <4 x float> %15, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %20 = shufflevector <2 x float> %i.gi, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %21 = shufflevector <2 x float> %i.gh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %22 = fmul <4 x float> %20, %21
  %23 = shufflevector <4 x float> %22, <4 x float> <float poison, float poison, float -0.000000e+00, float -0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %24 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %19, <4 x float> <float 5.000000e-01, float 5.000000e-01, float 1.000000e+00, float 1.000000e+00>, <4 x float> %23)
  store <4 x float> %24, ptr %0, align 4, !tbaa !27
  %i.gn = fcmp oeq float %i.gl, 0.000000e+00
  %i.go = fcmp ogt float %i.gm, 0.000000e+00
  %or.cond = select i1 %i.gn, i1 %i.go, i1 false
  br i1 %or.cond, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> %14, ptr %25, align 4, !tbaa !27
  br label %bb.al

bb.aa:                                            ; preds = %bb.j
  %i.gp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.ab:                                            ; preds = %bb.m
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.ac:                                            ; preds = %bb.y
  %i.gr = extractelement <2 x double> %9, i64 0
  %i.gs = extractelement <2 x double> %10, i64 0
  %i.gt = call double @atan2(double noundef %i.gr, double noundef %i.gs) #12
  %i.gu = fneg double %i.gt
  br label %bb.al

bb.ad:                                            ; preds = %bb.k
  switch i32 %i.l, label %bb.al [
    i32 2, label %bb.ae
    i32 1, label %bb.ak
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.gv = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.gy = load <2 x float>, ptr %i.n, align 4, !tbaa !27 ; 3 uses
  %i.gz = load <2 x float>, ptr %i.gv, align 4, !tbaa !27 ; 3 uses
  %i.ha = fadd <2 x float> %i.gy, %i.gz
  %foldExtExtBinop67 = fsub <2 x float> %i.gy, %i.gz
  %i.hb = extractelement <2 x float> %foldExtExtBinop67, i64 0 ; 2 uses
  %i.hc = fpext float %i.hb to double             ; 4 uses
  %foldExtExtBinop69 = fsub <2 x float> %i.gy, %i.gz
  %i.hd = extractelement <2 x float> %foldExtExtBinop69, i64 1 ; 3 uses
  %i.he = fpext float %i.hd to double             ; 4 uses
  %i.hf = fmul double %i.he, %i.he
  %i.hg = call double @llvm.fmuladd.f64(double %i.hc, double %i.hc, double %i.hf)
  %sqrt57 = call double @llvm.sqrt.f64(double %i.hg)
  %i.hh = fptrunc double %sqrt57 to float         ; 3 uses
  %i.hi = insertelement <4 x float> <float poison, float poison, float 1.000000e+00, float poison>, float %i.hh, i64 3
  %i.hj = shufflevector <2 x float> %i.ha, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.hk = shufflevector <4 x float> %i.hj, <4 x float> %i.hi, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.hl = fmul <4 x float> %i.hk, <float 5.000000e-01, float 5.000000e-01, float 0.000000e+00, float 1.000000e+00>
  store <4 x float> %i.hl, ptr %0, align 4, !tbaa !27
  %i.hm = fcmp oeq float %i.hb, 0.000000e+00
  br i1 %i.hm, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store float %i.hh, ptr %i.gw, align 4, !tbaa !27
  store float 0.000000e+00, ptr %i.gx, align 4, !tbaa !27
  br label %bb.al

bb.ag:                                            ; preds = %bb.ae
  %i.hn = fcmp olt float %i.hd, 0.000000e+00
  br i1 %i.hn, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ho = call double @atan2(double noundef %i.he, double noundef %i.hc) #12
  store float %i.hh, ptr %i.gw, align 4, !tbaa !27
  store float 0.000000e+00, ptr %i.gx, align 4, !tbaa !27
  br label %bb.al

bb.ai:                                            ; preds = %bb.ag
  %i.hp = fcmp ogt float %i.hd, 0.000000e+00
  br i1 %i.hp, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.hq = call double @atan2(double noundef %i.hc, double noundef %i.he) #12
  %i.hr = fneg double %i.hq
  br label %bb.al

bb.ak:                                            ; preds = %bb.ad
  %i.hs = load i64, ptr %i.n, align 4
  store i64 %i.hs, ptr %0, align 4
  br label %bb.al

bb.al:                                            ; preds = %bb.ad, %bb.af, %bb.ai, %bb.aj, %bb.ah, %bb.ak, %bb.z, %bb.ac
  %.1 = phi double [ f0xBFF921FB54442D18, %bb.z ], [ %i.gu, %bb.ac ], [ f0xBFF921FB54442D18, %bb.ad ], [ f0xBFF921FB54442D18, %bb.ak ], [ f0xBFF921FB54442D18, %bb.af ], [ %i.ho, %bb.ah ], [ %i.hr, %bb.aj ], [ f0xBFF921FB54442D18, %bb.ai ]
  %i.ht = fmul double %.1, 1.800000e+02
  %i.hu = fdiv double %i.ht, f0x400921FB54442D18
  %i.hv = fptrunc double %i.hu to float
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.hv, ptr %i.hw, align 4, !tbaa !36
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %i.hx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.hy = load i32, ptr %i.hx, align 8, !tbaa !39
  %.not.i = icmp eq i32 %i.hy, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %4)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.hz = landingpad { ptr, i32 }
          catch ptr null
  %i.ia = extractvalue { ptr, i32 } %i.hz, 0
  call void @__clang_call_terminate(ptr %i.ia) #15
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  ret void

bb.ao:                                            ; preds = %bb.f, %bb.i, %bb.ab, %bb.aa
  %.pn50.pn.pn = phi { ptr, i32 } [ %i.gp, %bb.aa ], [ %i.i, %bb.f ], [ %.pn48, %bb.i ], [ %i.gq, %bb.ab ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  resume { ptr, i32 } %.pn50.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

declare void @_ZN2cv10convexHullERKNS_11_InputArrayERKNS_12_OutputArrayEbb(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, double noundef, double noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #3

declare noundef i32 @_ZNK2cv3Mat11checkVectorEiib(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !39
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
  tail call void @__clang_call_terminate(ptr %i.d) #15
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv9boxPointsENS_11RotatedRectERKNS_12_OutputArrayE(ptr noundef byval(%"class.cv::RotatedRect") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  %3 = alloca %"class.cv::Mat", align 8           ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv9boxPointsENS_11RotatedRectERKNS_12_OutputArrayEE25__cv_trace_location_fn432)
  invoke void @_ZNK2cv12_OutputArray6createEiiiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 4, i32 noundef 2, i32 noundef 5, i32 noundef -1, i1 noundef zeroext false, i32 noundef 0)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.a = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.b
  %i.b = icmp eq i32 %i.a, 65536
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12, !noalias !42
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(208) %i.d)
          to label %_ZNK2cv11_InputArray6getMatEi.exit unwind label %bb.i

bb.d:                                             ; preds = %.noexc
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit unwind label %bb.i

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.c, %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !21
  invoke void @_ZNK2cv11RotatedRect6pointsEPNS_6Point_IfEE(ptr noundef nonnull align 4 dereferenceable(20) %0, ptr noundef %i.f)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !39
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %2)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #15
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret void

bb.h:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.i:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #12
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.m, %bb.j ], [ %i.l, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.k ], [ %i.k, %bb.h ]
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  resume { ptr, i32 } %.pn.pn
}

declare void @_ZNK2cv12_OutputArray6createEiiiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare void @_ZNK2cv11RotatedRect6pointsEPNS_6Point_IfEE(ptr noundef nonnull align 4 dereferenceable(20), ptr noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #12 ; 0 uses
  tail call void @_ZSt9terminatev() #15
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #10

declare void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #2

declare noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #2

declare void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind }
attributes #13 = { builtin allocsize(0) }
attributes #14 = { builtin nounwind }
attributes #15 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !5, i64 0}
!9 = !{!"_ZTSN2cv11_InputArrayE", !5, i64 0, !10, i64 8, !11, i64 16}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"_ZTSN2cv5Size_IiEE", !5, i64 0, !5, i64 4}
!12 = !{!9, !10, i64 8}
!13 = !{!14, !5, i64 0}
!14 = !{!"_ZTSN2cv3MatE", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !16, i64 56, !17, i64 64, !18, i64 72, !20, i64 128}
!15 = !{!"p1 omnipotent char", !10, i64 0}
!16 = !{!"p1 _ZTSN2cv12MatAllocatorE", !10, i64 0}
!17 = !{!"p1 _ZTSN2cv8UMatDataE", !10, i64 0}
!18 = !{!"_ZTSN2cv8MatShapeE", !5, i64 0, !19, i64 4, !5, i64 8, !6, i64 12}
!19 = !{!"_ZTSN2cv10DataLayoutE", !6, i64 0}
!20 = !{!"_ZTSN2cv7MatStepE", !6, i64 0}
!21 = !{!14, !15, i64 24}
!22 = !{!23, !24, i64 0}
!23 = !{!"_ZTSN2cv10AutoBufferIfLm264EEE", !24, i64 0, !25, i64 8, !6, i64 16}
!24 = !{!"p1 float", !10, i64 0}
!25 = !{!"long", !6, i64 0}
!26 = !{!23, !25, i64 8}
!27 = !{!28, !28, i64 0}
!28 = !{!"float", !6, i64 0}
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!5, !5, i64 0}
!32 = !{!33, !28, i64 4}
!33 = !{!"_ZTSN2cv6Point_IfEE", !28, i64 0, !28, i64 4}
!34 = !{!33, !28, i64 0}
!35 = distinct !{!35, !30}
!36 = !{!37, !28, i64 16}
!37 = !{!"_ZTSN2cv11RotatedRectE", !33, i64 0, !38, i64 8, !28, i64 16}
!38 = !{!"_ZTSN2cv5Size_IfEE", !28, i64 0, !28, i64 4}
!39 = !{!40, !5, i64 8}
!40 = !{!"_ZTSN2cv5utils5trace7details6RegionE", !41, i64 0, !5, i64 8}
!41 = !{!"p1 _ZTSN2cv5utils5trace7details6Region4ImplE", !10, i64 0}
!42 = !{!43}
!43 = distinct !{!43, !44, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!44 = distinct !{!44, !"_ZNK2cv11_InputArray6getMatEi"}
end_hunk_0
