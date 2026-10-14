Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/odometry_functions?download=true
inline.NumInlined: 1901
inline.NumDeleted: 586
loop-unroll.NumCompletelyUnrolled: 57
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 62
begin_hunk_0_@_ZN2cv15computeCorrespsERKNS_4MatxIfLi3ELi3EEERKNS_3MatES6_S6_S6_S6_S6_S6_fRS4_S7_RdNS_12OdometryTypeE:bb.a
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  br label %.body264

bb.x:                                             ; preds = %bb.l
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %.body274

bb.y:                                             ; preds = %bb.r
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.z:                                             ; preds = %bb.s
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %23) #22
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.pn = phi { ptr, i32 } [ %i.bk, %bb.z ], [ %i.bj, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  br label %.body274

.body274:                                         ; preds = %bb.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i267, %bb.aa
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.aa ], [ %i.bi, %bb.x ], [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i267 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  br label %bb.bi

bb.ab:                                            ; preds = %bb.j, %bb.t
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bq = load float, ptr %0, align 4, !tbaa !23, !noalias !187
  %i.br = load float, ptr %i.bl, align 4, !tbaa !23, !noalias !187
  %i.bs = load float, ptr %i.bm, align 4, !tbaa !23, !noalias !187
  %i.bt = load <4 x float>, ptr %i.bn, align 4, !tbaa !23, !noalias !187 ; 3 uses
  %i.bu = shufflevector <4 x float> %i.bt, <4 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bv = insertelement <2 x float> %i.bu, float %i.bq, i64 0
  %i.bw = fpext <2 x float> %i.bv to <2 x double> ; 12 uses
  %i.bx = shufflevector <4 x float> %i.bt, <4 x float> poison, <2 x i32> <i32 poison, i32 1>
  %i.by = insertelement <2 x float> %i.bx, float %i.br, i64 0
  %i.bz = fpext <2 x float> %i.by to <2 x double> ; 13 uses
  %i.ca = shufflevector <4 x float> %i.bt, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.cb = insertelement <2 x float> %i.ca, float %i.bs, i64 0
  %i.cc = fpext <2 x float> %i.cb to <2 x double> ; 11 uses
  %i.cd = load <2 x float>, ptr %i.bo, align 4, !tbaa !23, !noalias !187
  %i.ce = fpext <2 x float> %i.cd to <2 x double> ; 10 uses
  %i.cf = load float, ptr %i.bp, align 4, !tbaa !23, !noalias !187
  %i.cg = fpext float %i.cf to double             ; 6 uses
  %i.ch = extractelement <2 x double> %i.cc, i64 1
  %i.ci = fneg double %i.ch                       ; 2 uses
  %i.cj = insertelement <2 x double> poison, double %i.ci, i64 0
  %i.ck = shufflevector <2 x double> %i.cj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cl = fmul <2 x double> %i.ck, %i.ce
  %i.cm = shufflevector <2 x double> %i.bw, <2 x double> %i.bz, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.cn = insertelement <2 x double> poison, double %i.cg, i64 0
  %i.co = shufflevector <2 x double> %i.cn, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cm, <2 x double> %i.co, <2 x double> %i.cl) ; 2 uses
  %i.cq = shufflevector <2 x double> %i.cp, <2 x double> %i.bz, <2 x i32> <i32 0, i32 3>
  %i.cr = fneg <2 x double> %i.cq                 ; 2 uses
  %i.cs = shufflevector <2 x double> %i.bz, <2 x double> %i.ce, <2 x i32> <i32 0, i32 2>
  %i.ct = fmul <2 x double> %i.cs, %i.cr
  %i.cu = shufflevector <2 x double> %i.cp, <2 x double> %i.ce, <2 x i32> <i32 1, i32 3>
  %i.cv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bw, <2 x double> %i.cu, <2 x double> %i.ct) ; 2 uses
  %i.cw = extractelement <2 x double> %i.cc, i64 0
  %i.cx = extractelement <2 x double> %i.cv, i64 0
  %i.cy = extractelement <2 x double> %i.cv, i64 1
  %i.cz = call noundef double @llvm.fmuladd.f64(double %i.cw, double %i.cy, double %i.cx) ; 2 uses
  %i.da = fcmp une double %i.cz, 0.000000e+00
  br i1 %i.da, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.db = fdiv double 1.000000e+00, %i.cz         ; 2 uses
  %i.dc = shufflevector <2 x double> %i.ce, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.dd = extractelement <2 x double> %i.bz, i64 1
  %i.de = fneg double %i.cg
  %i.df = extractelement <2 x double> %i.bw, i64 1
  %i.dg = fneg <2 x double> %i.ce                 ; 3 uses
  %i.dh = shufflevector <2 x double> %i.bz, <2 x double> %i.cc, <2 x i32> <i32 1, i32 3>
  %i.di = fmul <2 x double> %i.dh, %i.dg
  %i.dj = insertelement <2 x double> %i.dc, double %i.cg, i64 1
  %i.dk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cm, <2 x double> %i.dj, <2 x double> %i.di)
  %i.dl = insertelement <2 x double> poison, double %i.db, i64 0
  %i.dm = shufflevector <2 x double> %i.dl, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.dn = fmul <2 x double> %i.dk, %i.dm
  %i.do = fneg double %i.df
  %i.dp = extractelement <2 x double> %i.bz, i64 0
  %i.dq = shufflevector <2 x double> %i.bz, <2 x double> %i.bw, <2 x i32> <i32 0, i32 3>
  %i.dr = insertelement <2 x double> poison, double %i.de, i64 0
  %i.ds = shufflevector <2 x double> %i.dr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dt = fmul <2 x double> %i.dq, %i.ds
  %i.du = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cc, <2 x double> %i.dc, <2 x double> %i.dt)
  %i.dv = fmul <2 x double> %i.du, %i.dm
  %i.dw = extractelement <2 x double> %i.bw, i64 0
  %i.dx = shufflevector <2 x double> %i.cc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dy = shufflevector <2 x double> %i.dg, <2 x double> %i.cr, <2 x i32> <i32 0, i32 3>
  %i.dz = fmul <2 x double> %i.dx, %i.dy
  %i.ea = shufflevector <2 x double> %i.bw, <2 x double> %i.bz, <2 x i32> <i32 0, i32 2>
  %i.eb = insertelement <2 x double> %i.cc, double %i.cg, i64 0
  %i.ec = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ea, <2 x double> %i.eb, <2 x double> %i.dz)
  %i.ed = fmul <2 x double> %i.ec, %i.dm
  %i.ee = shufflevector <2 x double> %i.bw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ef = shufflevector <2 x double> %i.dg, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.eg = insertelement <2 x double> %i.ef, double %i.ci, i64 1
  %i.eh = fmul <2 x double> %i.ee, %i.eg
  %i.ei = shufflevector <2 x double> %i.bz, <2 x double> %i.cc, <2 x i32> <i32 0, i32 2>
  %i.ej = shufflevector <2 x double> %i.ce, <2 x double> %i.bw, <2 x i32> <i32 0, i32 3>
  %i.ek = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ei, <2 x double> %i.ej, <2 x double> %i.eh)
  %i.el = fmul <2 x double> %i.ek, %i.dm
  %i.em = fmul double %i.dp, %i.do
  %i.en = call double @llvm.fmuladd.f64(double %i.dw, double %i.dd, double %i.em)
  %i.eo = fmul double %i.en, %i.db
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.sroa.13342.0 = phi double [ %i.eo, %bb.ac ], [ 0.000000e+00, %bb.ab ] ; 2 uses
  %i.ep = phi <2 x double> [ %i.dn, %bb.ac ], [ zeroinitializer, %bb.ab ] ; 4 uses
  %i.eq = phi <2 x double> [ %i.ed, %bb.ac ], [ zeroinitializer, %bb.ab ] ; 3 uses
  %i.er = phi <2 x double> [ %i.el, %bb.ac ], [ zeroinitializer, %bb.ab ] ; 3 uses
  %i.es = phi <2 x double> [ %i.dv, %bb.ac ], [ zeroinitializer, %bb.ab ] ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 3 uses
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !60 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !54 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !71, !noalias !188 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %19, i64 32
  %i.fa = getelementptr inbounds nuw i8, ptr %19, i64 56
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !71, !noalias !188 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %19, i64 64
  %i.fd = getelementptr inbounds nuw i8, ptr %19, i64 88
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !71, !noalias !188 ; 2 uses
  %i.ff = insertelement <2 x double> poison, double %i.ey, i64 0
  %i.fg = shufflevector <2 x double> %i.ff, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bw, <2 x double> %i.fg, <2 x double> zeroinitializer)
  %i.fi = insertelement <2 x double> poison, double %i.fb, i64 0
  %i.fj = shufflevector <2 x double> %i.fi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bz, <2 x double> %i.fj, <2 x double> %i.fh)
  %i.fl = insertelement <2 x double> poison, double %i.fe, i64 0
  %i.fm = shufflevector <2 x double> %i.fl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cc, <2 x double> %i.fm, <2 x double> %i.fk)
  %i.fo = extractelement <2 x double> %i.ce, i64 0 ; 3 uses
  %i.fp = call double @llvm.fmuladd.f64(double %i.fo, double %i.ey, double 0.000000e+00)
  %i.fq = extractelement <2 x double> %i.ce, i64 1 ; 2 uses
  %i.fr = call double @llvm.fmuladd.f64(double %i.fq, double %i.fb, double %i.fp)
  %i.fs = call double @llvm.fmuladd.f64(double %i.cg, double %i.fe, double %i.fr) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #22
  %i.ft = add nsw i32 %i.ew, %i.eu                ; 2 uses
  %i.fu = mul nsw i32 %i.ft, 3                    ; 2 uses
  %i.fv = sext i32 %i.fu to i64                   ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 4 uses
  store ptr %i.fw, ptr %25, align 8, !tbaa !92
  %i.fx = getelementptr inbounds nuw i8, ptr %25, i64 8
  %.not.i.i = icmp ugt i32 %i.fu, 264
  store i64 %i.fv, ptr %i.fx, align 8, !tbaa !93
  br i1 %.not.i.i, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.fy = icmp slt i32 %i.ft, 0
  %i.fz = shl nuw nsw i64 %i.fv, 2
  %i.ga = select i1 %i.fy, i64 -1, i64 %i.fz
  %i.gb = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ga) #24
          to label %.noexc278 unwind label %bb.ag ; 2 uses

.noexc278:                                        ; preds = %bb.ae
  store ptr %i.gb, ptr %25, align 8, !tbaa !92
  %.pre = load i32, ptr %i.et, align 4, !tbaa !60
  %.pre485 = load i32, ptr %i.ev, align 8, !tbaa !54
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %.noexc278
  %i.gc = phi i32 [ %i.ew, %bb.ad ], [ %.pre485, %.noexc278 ] ; 6 uses
  %i.gd = phi i32 [ %i.eu, %bb.ad ], [ %.pre, %.noexc278 ] ; 7 uses
  %i.ge = phi ptr [ %i.fw, %bb.ad ], [ %i.gb, %.noexc278 ] ; 6 uses
  %i.gf = sext i32 %i.gd to i64                   ; 3 uses
  %i.gg = getelementptr inbounds [4 x i8], ptr %i.ge, i64 %i.gf ; 4 uses
  %i.gh = sext i32 %i.gc to i64                   ; 4 uses
  %i.gi = getelementptr inbounds [4 x i8], ptr %i.gg, i64 %i.gh ; 3 uses
  %i.gj = shl i32 %i.gd, 1
  %i.gk = sext i32 %i.gj to i64                   ; 3 uses
  %i.gl = getelementptr inbounds [4 x i8], ptr %i.ge, i64 %i.gk ; 2 uses
  %i.gm = getelementptr inbounds [4 x i8], ptr %i.gl, i64 %i.gh ; 3 uses
  %i.gn = shl i32 %i.gc, 1
  %i.go = sext i32 %i.gn to i64                   ; 4 uses
  %i.gp = getelementptr inbounds [4 x i8], ptr %i.gl, i64 %i.go ; 4 uses
  %i.gq = mul i32 %i.gd, 3
  %i.gr = sext i32 %i.gq to i64                   ; 2 uses
  %i.gs = getelementptr inbounds [4 x i8], ptr %i.ge, i64 %i.gr
  %i.gt = getelementptr inbounds [4 x i8], ptr %i.gs, i64 %i.go ; 4 uses
  %i.gu = load double, ptr %19, align 8, !tbaa !71, !noalias !189 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.gw = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.gx = load double, ptr %i.ez, align 8, !tbaa !71, !noalias !189 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %19, i64 40
  %i.gz = load double, ptr %i.gy, align 8, !tbaa !71, !noalias !189 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %19, i64 48
  %26 = load <1 x double>, ptr %i.ha, align 8     ; 2 uses
  %27 = shufflevector <1 x double> %26, <1 x double> poison, <2 x i32> <i32 0, i32 poison>
  %i.hb = load double, ptr %i.fc, align 8, !tbaa !71, !noalias !189 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %19, i64 72
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !71, !noalias !189 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %19, i64 80
  %28 = load <1 x double>, ptr %i.he, align 8     ; 2 uses
  %29 = shufflevector <1 x double> %28, <1 x double> poison, <2 x i32> <i32 0, i32 poison>
  %i.hf = load double, ptr %i.gv, align 8, !tbaa !71, !noalias !189 ; 2 uses
  %30 = load <1 x double>, ptr %i.gw, align 8     ; 2 uses
  %31 = shufflevector <1 x double> %30, <1 x double> poison, <2 x i32> <i32 0, i32 poison>
  %i.hg = call double @llvm.fmuladd.f64(double %i.fo, double %i.hf, double 0.000000e+00)
  %i.hh = insertelement <2 x double> %31, double %i.gz, i64 1
  %i.hi = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.hg, i64 1
  %i.hj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ce, <2 x double> %i.hh, <2 x double> %i.hi)
  %i.hk = shufflevector <2 x double> %i.ce, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.hl = insertelement <2 x double> %i.hk, double %i.cg, i64 1
  %i.hm = insertelement <2 x double> %27, double %i.hd, i64 1
  %i.hn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hl, <2 x double> %i.hm, <2 x double> %i.hj) ; 4 uses
  %i.ho = insertelement <2 x double> poison, double %i.gu, i64 0
  %i.hp = shufflevector <2 x double> %i.ho, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bw, <2 x double> %i.hp, <2 x double> zeroinitializer)
  %i.hr = insertelement <2 x double> poison, double %i.gx, i64 0
  %i.hs = shufflevector <2 x double> %i.hr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ht = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bz, <2 x double> %i.hs, <2 x double> %i.hq)
  %i.hu = insertelement <2 x double> poison, double %i.hb, i64 0
  %i.hv = shufflevector <2 x double> %i.hu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cc, <2 x double> %i.hv, <2 x double> %i.ht) ; 4 uses
  %i.hx = insertelement <2 x double> poison, double %i.hf, i64 0
  %i.hy = shufflevector <2 x double> %i.hx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bw, <2 x double> %i.hy, <2 x double> zeroinitializer)
  %i.ia = insertelement <2 x double> poison, double %i.gz, i64 0
  %i.ib = shufflevector <2 x double> %i.ia, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ic = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bz, <2 x double> %i.ib, <2 x double> %i.hz)
  %i.id = insertelement <2 x double> poison, double %i.hd, i64 0
  %i.ie = shufflevector <2 x double> %i.id, <2 x double> poison, <2 x i32> zeroinitializer
  %i.if = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cc, <2 x double> %i.ie, <2 x double> %i.ic) ; 4 uses
  %i.ig = shufflevector <1 x double> %30, <1 x double> poison, <2 x i32> zeroinitializer
  %i.ih = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bw, <2 x double> %i.ig, <2 x double> zeroinitializer)
  %i.ii = shufflevector <1 x double> %26, <1 x double> poison, <2 x i32> zeroinitializer
  %i.ij = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bz, <2 x double> %i.ii, <2 x double> %i.ih)
  %i.ik = shufflevector <1 x double> %28, <1 x double> poison, <2 x i32> zeroinitializer
  %i.il = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cc, <2 x double> %i.ik, <2 x double> %i.ij) ; 4 uses
  %i.im = extractelement <2 x double> %i.hw, i64 0
  %i.in = extractelement <2 x double> %i.if, i64 0
  %i.io = shufflevector <2 x double> %i.es, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ip = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hw, <2 x double> %i.io, <2 x double> zeroinitializer)
  %i.iq = shufflevector <2 x double> %i.eq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ir = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.if, <2 x double> %i.iq, <2 x double> %i.ip)
  %i.is = shufflevector <2 x double> %i.eq, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.it = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hw, <2 x double> %i.is, <2 x double> zeroinitializer)
  %i.iu = shufflevector <2 x double> %i.er, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.iv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.if, <2 x double> %i.iu, <2 x double> %i.it)
  %i.iw = extractelement <2 x double> %i.ep, i64 1 ; 2 uses
  %i.ix = call double @llvm.fmuladd.f64(double %i.im, double %i.iw, double 0.000000e+00)
  %i.iy = extractelement <2 x double> %i.es, i64 1 ; 3 uses
  %i.iz = call double @llvm.fmuladd.f64(double %i.in, double %i.iy, double %i.ix)
  %i.ja = shufflevector <2 x double> %i.il, <2 x double> %i.hw, <2 x i32> <i32 0, i32 3>
  %i.jb = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.iz, i64 0
  %i.jc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ja, <2 x double> %i.ep, <2 x double> %i.jb) ; 3 uses
  %i.jd = extractelement <2 x double> %i.if, i64 1
  %i.je = extractelement <2 x double> %i.jc, i64 1
  %i.jf = call double @llvm.fmuladd.f64(double %i.jd, double %i.iy, double %i.je)
  %i.jg = extractelement <2 x double> %i.il, i64 1
  %i.jh = extractelement <2 x double> %i.ep, i64 0
  %i.ji = call double @llvm.fmuladd.f64(double %i.jg, double %i.jh, double %i.jf) ; 2 uses
  %i.jj = shufflevector <2 x double> %i.er, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.il, <2 x double> %i.jj, <2 x double> %i.ir) ; 3 uses
  %i.jl = insertelement <2 x double> poison, double %.sroa.13342.0, i64 0
  %i.jm = shufflevector <2 x double> %i.jl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.il, <2 x double> %i.jm, <2 x double> %i.iv) ; 3 uses
  %i.jo = extractelement <2 x double> %i.hn, i64 1
  %i.jp = call double @llvm.fmuladd.f64(double %i.fo, double %i.gu, double 0.000000e+00)
  %i.jq = call double @llvm.fmuladd.f64(double %i.fq, double %i.gx, double %i.jp)
  %i.jr = insertelement <2 x double> %29, double %i.hb, i64 1
  %i.js = insertelement <2 x double> %i.hn, double %i.jq, i64 1
  %i.jt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.co, <2 x double> %i.jr, <2 x double> %i.js) ; 5 uses
  %i.ju = extractelement <2 x double> %i.jt, i64 1
  %i.jv = call double @llvm.fmuladd.f64(double %i.ju, double %i.iw, double 0.000000e+00)
  %i.jw = call double @llvm.fmuladd.f64(double %i.jo, double %i.iy, double %i.jv)
  %i.jx = shufflevector <2 x double> %i.ep, <2 x double> %i.es, <2 x i32> <i32 0, i32 2>
  %i.jy = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.jw, i64 0
  %i.jz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jt, <2 x double> %i.jx, <2 x double> %i.jy) ; 3 uses
  %i.ka = extractelement <2 x double> %i.jt, i64 0
  %i.kb = shufflevector <2 x double> %i.hn, <2 x double> %i.jt, <2 x i32> <i32 1, i32 3>
  %i.kc = shufflevector <2 x double> %i.jz, <2 x double> <double poison, double 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.kd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kb, <2 x double> %i.eq, <2 x double> %i.kc)
  %i.ke = shufflevector <2 x double> %i.jt, <2 x double> %i.hn, <2 x i32> <i32 0, i32 3>
  %i.kf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ke, <2 x double> %i.er, <2 x double> %i.kd) ; 3 uses
  %i.kg = extractelement <2 x double> %i.kf, i64 1
  %i.kh = call double @llvm.fmuladd.f64(double %i.ka, double %.sroa.13342.0, double %i.kg) ; 2 uses
  %i.ki = icmp sgt i32 %i.gd, 0                   ; 2 uses
  br i1 %i.ki, label %.lr.ph.preheader, label %.preheader431

.lr.ph.preheader:                                 ; preds = %bb.af
  %wide.trip.count = zext nneg i32 %i.gd to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %i.gd, 8
  br i1 %min.iters.check, label %.lr.ph.preheader558, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.kj = add nsw i64 %i.gh, %i.gf
  %i.kk = shl nsw i64 %i.kj, 2                    ; 2 uses
  %i.kl = add nsw i64 %i.kk, -1
  %diff.check = icmp ult i64 %i.kl, 15
  %i.km = add nsw i64 %i.go, %i.gk
  %i.kn = shl nsw i64 %i.km, 2                    ; 2 uses
  %i.ko = add nsw i64 %i.kn, -1
  %diff.check516 = icmp ult i64 %i.ko, 15
  %conflict.rdx = or i1 %diff.check, %diff.check516
  %i.kp = sub nsw i64 %i.kk, %i.kn
  %diff.check517 = icmp ugt i64 %i.kp, -16
  %conflict.rdx518 = or i1 %conflict.rdx, %diff.check517
  br i1 %conflict.rdx518, label %.lr.ph.preheader558, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splat = shufflevector <2 x double> %i.jc, <2 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert519 = insertelement <4 x double> poison, double %i.ji, i64 0
  %broadcast.splat520 = shufflevector <4 x double> %broadcast.splatinsert519, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splat522 = shufflevector <2 x double> %i.jz, <2 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.kq = uitofp nneg <4 x i32> %vec.ind to <4 x double> ; 3 uses
  %i.kr = fmul <4 x double> %broadcast.splat, %i.kq
  %i.ks = fptrunc <4 x double> %i.kr to <4 x float>
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %index
  store <4 x float> %i.ks, ptr %i.kt, align 4, !tbaa !23
  %i.ku = fmul <4 x double> %broadcast.splat520, %i.kq
  %i.kv = fptrunc <4 x double> %i.ku to <4 x float>
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %index
  store <4 x float> %i.kv, ptr %i.kw, align 4, !tbaa !23
  %i.kx = fmul <4 x double> %broadcast.splat522, %i.kq
  %i.ky = fptrunc <4 x double> %i.kx to <4 x float>
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %index
  store <4 x float> %i.ky, ptr %i.kz, align 4, !tbaa !23
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.la = icmp eq i64 %index.next, %n.vec
  br i1 %i.la, label %middle.block, label %vector.body, !llvm.loop !176

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader431, label %.lr.ph.preheader558

.lr.ph.preheader558:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %i.lb = extractelement <2 x double> %i.jc, i64 0
  %i.lc = extractelement <2 x double> %i.jz, i64 0
  br label %.lr.ph

.preheader431:                                    ; preds = %.lr.ph, %middle.block, %bb.af
  %i.ld = icmp sgt i32 %i.gc, 0
  br i1 %i.ld, label %.lr.ph434.preheader, label %._crit_edge444

.lr.ph434.preheader:                              ; preds = %.preheader431
  %wide.trip.count468 = zext nneg i32 %i.gc to i64 ; 3 uses
  %min.iters.check530 = icmp ult i32 %i.gc, 8
  br i1 %min.iters.check530, label %.lr.ph434.preheader557, label %vector.memcheck523

vector.memcheck523:                               ; preds = %.lr.ph434.preheader
  %i.le = add nsw i64 %i.gh, %i.gk
  %i.lf = shl nsw i64 %i.le, 2                    ; 2 uses
  %i.lg = shl nsw i64 %i.gf, 2                    ; 2 uses
  %i.lh = sub nsw i64 %i.lg, %i.lf
  %diff.check524 = icmp ugt i64 %i.lh, -16
  %i.li = add nsw i64 %i.gr, %i.go
  %i.lj = shl nsw i64 %i.li, 2                    ; 2 uses
  %i.lk = sub nsw i64 %i.lg, %i.lj
  %diff.check525 = icmp ugt i64 %i.lk, -16
  %conflict.rdx526 = or i1 %diff.check524, %diff.check525
  %i.ll = sub nsw i64 %i.lf, %i.lj
  %diff.check527 = icmp ugt i64 %i.ll, -16
  %conflict.rdx528 = or i1 %conflict.rdx526, %diff.check527
  br i1 %conflict.rdx528, label %.lr.ph434.preheader557, label %vector.ph531

vector.ph531:                                     ; preds = %vector.memcheck523
  %n.vec532 = and i64 %wide.trip.count468, 2147483644 ; 3 uses
  %broadcast.splat534 = shufflevector <2 x double> %i.jk, <2 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splat536 = shufflevector <2 x double> %i.jn, <2 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splat538 = shufflevector <2 x double> %i.jk, <2 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat540 = shufflevector <2 x double> %i.jn, <2 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat542 = shufflevector <2 x double> %i.kf, <2 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert543 = insertelement <4 x double> poison, double %i.kh, i64 0
  %broadcast.splat544 = shufflevector <4 x double> %broadcast.splatinsert543, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body545

vector.body545:                                   ; preds = %vector.body545, %vector.ph531
  %index546 = phi i64 [ 0, %vector.ph531 ], [ %index.next548, %vector.body545 ] ; 4 uses
  %vec.ind547 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph531 ], [ %vec.ind.next549, %vector.body545 ] ; 2 uses
  %i.lm = uitofp nneg <4 x i32> %vec.ind547 to <4 x double> ; 3 uses
  %i.ln = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat534, <4 x double> %i.lm, <4 x double> %broadcast.splat536)
  %i.lo = fptrunc <4 x double> %i.ln to <4 x float>
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %index546
  store <4 x float> %i.lo, ptr %i.lp, align 4, !tbaa !23
  %i.lq = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat538, <4 x double> %i.lm, <4 x double> %broadcast.splat540)
  %i.lr = fptrunc <4 x double> %i.lq to <4 x float>
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %index546
  store <4 x float> %i.lr, ptr %i.ls, align 4, !tbaa !23
  %i.lt = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat542, <4 x double> %i.lm, <4 x double> %broadcast.splat544)
  %i.lu = fptrunc <4 x double> %i.lt to <4 x float>
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %index546
  store <4 x float> %i.lu, ptr %i.lv, align 4, !tbaa !23
  %index.next548 = add nuw i64 %index546, 4       ; 2 uses
  %vec.ind.next549 = add <4 x i32> %vec.ind547, splat (i32 4)
  %i.lw = icmp eq i64 %index.next548, %n.vec532
  br i1 %i.lw, label %middle.block550, label %vector.body545, !llvm.loop !177

middle.block550:                                  ; preds = %vector.body545
  %cmp.n551 = icmp eq i64 %n.vec532, %wide.trip.count468
  br i1 %cmp.n551, label %.lr.ph443, label %.lr.ph434.preheader557

.lr.ph434.preheader557:                           ; preds = %vector.memcheck523, %.lr.ph434.preheader, %middle.block550
  %indvars.iv465.ph = phi i64 [ 0, %vector.memcheck523 ], [ 0, %.lr.ph434.preheader ], [ %n.vec532, %middle.block550 ]
  %i.lx = extractelement <2 x double> %i.kf, i64 0
  br label %.lr.ph434

bb.ag:                                            ; preds = %bb.ae
  %i.ly = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit298

.lr.ph:                                           ; preds = %.lr.ph.preheader558, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader558 ] ; 5 uses
  %i.lz = trunc nuw nsw i64 %indvars.iv to i32
  %i.ma = uitofp nneg i32 %i.lz to double         ; 3 uses
  %i.mb = fmul double %i.lb, %i.ma
  %i.mc = fptrunc double %i.mb to float
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %indvars.iv
  store float %i.mc, ptr %i.md, align 4, !tbaa !23
  %i.me = fmul double %i.ji, %i.ma
  %i.mf = fptrunc double %i.me to float
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %indvars.iv
  store float %i.mf, ptr %i.mg, align 4, !tbaa !23
  %i.mh = fmul double %i.lc, %i.ma
  %i.mi = fptrunc double %i.mh to float
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %indvars.iv
  store float %i.mi, ptr %i.mj, align 4, !tbaa !23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader431, label %.lr.ph, !llvm.loop !178

.lr.ph443:                                        ; preds = %.lr.ph434, %middle.block550
  %i.mk = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %6, i64 128 ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.mn = getelementptr inbounds nuw i8, ptr %7, i64 128
  %i.mo = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.mp = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.mq = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.mr = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ms = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.mt = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.mu = getelementptr inbounds nuw i8, ptr %20, i64 4
  %i.mv = getelementptr inbounds nuw i8, ptr %20, i64 24
  %i.mw = getelementptr inbounds nuw i8, ptr %20, i64 128
  %i.mx = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.my = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %5, i64 128 ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %22, i64 4
  %i.nf = getelementptr inbounds nuw i8, ptr %22, i64 24
  %i.ng = getelementptr inbounds nuw i8, ptr %22, i64 128
  br i1 %i.ki, label %.lr.ph443.split, label %._crit_edge444

.lr.ph434:                                        ; preds = %.lr.ph434.preheader557, %.lr.ph434
  %indvars.iv465 = phi i64 [ %indvars.iv.next466, %.lr.ph434 ], [ %indvars.iv465.ph, %.lr.ph434.preheader557 ] ; 5 uses
  %i.nh = trunc nuw nsw i64 %indvars.iv465 to i32
  %i.ni = uitofp nneg i32 %i.nh to double         ; 2 uses
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %indvars.iv465
end_hunk_0
begin_hunk_1_@_ZN2cv7Affine3IdEC2ERKNS_3MatERKNS_3VecIdLi3EEE:bb.a
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.26, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv7Affine3IdEC2ERKNS_3MatERKNS_3VecIdLi3EEE, ptr noundef nonnull @.str.27, i32 noundef 362) #23
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.f = load ptr, ptr %3, align 8, !tbaa !49     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.i = load i64, ptr %i.g, align 8, !tbaa !19
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.e, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.r

bb.g:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !60
  %i.m = icmp eq i32 %i.l, 4
  br i1 %i.m, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !54
  switch i32 %i.o, label %bb.o [
    i32 4, label %bb.i
    i32 3, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 -1040056314, ptr %5, align 8, !tbaa !26
  store ptr %0, ptr %i.p, align 8, !tbaa !27
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 17179869188, ptr %i.q, align 8, !tbaa !20
  call void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.q

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  store <4 x i32> <i32 0, i32 0, i32 3, i32 3>, ptr %7, align 16, !tbaa !20
  call void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 4 dereferenceable(16) %7)
  invoke void @_ZN2cv7Affine3IdE8rotationERKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(208) %6)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  store <4 x i32> <i32 3, i32 0, i32 1, i32 3>, ptr %10, align 16, !tbaa !20
  call void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %9, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 4 dereferenceable(16) %10)
  invoke void @_ZNK2cv3MatcvNS_3VecIT_XT0_EEEIdLi3EEEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Vec.31") align 8 %8, ptr noundef nonnull align 8 dereferenceable(208) %9)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.r = load double, ptr %8, align 8, !tbaa !71
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.r, ptr %i.s, align 8, !tbaa !71
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.u = load double, ptr %i.t, align 8, !tbaa !71
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double %i.u, ptr %i.v, align 8, !tbaa !71
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.x = load double, ptr %i.w, align 8, !tbaa !71
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 88
  store double %i.x, ptr %i.y, align 8, !tbaa !71
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.p

bb.m:                                             ; preds = %bb.j
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.r

bb.n:                                             ; preds = %bb.k
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.r

bb.o:                                             ; preds = %bb.h, %bb.g
  tail call void @_ZN2cv7Affine3IdE8rotationERKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(208) %1)
  %i.ab = load double, ptr %2, align 8, !tbaa !71
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.ab, ptr %i.ac, align 8, !tbaa !71
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !71
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double %i.ae, ptr %i.af, align 8, !tbaa !71
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !71
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88
  store double %i.ah, ptr %i.ai, align 8, !tbaa !71
  br label %bb.p

bb.p:                                             ; preds = %bb.l, %bb.o
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.ak, align 8, !tbaa !71
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.i
  ret void

bb.r:                                             ; preds = %bb.n, %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn19 = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.aa, %bb.n ], [ %i.z, %bb.m ]
  resume { ptr, i32 } %.pn19
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #10

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK2cv8DualQuatIdE3expEv(ptr dead_on_unwind noalias writable sret(%"class.cv::DualQuat") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.cv::Quat", align 8          ; 6 uses
  %3 = alloca %"class.cv::Matx.23", align 8       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !276)
  %i.a = load double, ptr %1, align 8, !tbaa !277, !noalias !276 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load <2 x double>, ptr %i.b, align 8, !tbaa !71, !noalias !276 ; 2 uses
  store double %i.a, ptr %2, align 8, !tbaa !110, !alias.scope !276
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = extractelement <2 x double> %i.d, i64 0  ; 3 uses
  store double %i.f, ptr %i.e, align 8, !tbaa !278, !alias.scope !276
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load <2 x double>, ptr %i.c, align 8, !tbaa !71, !noalias !276 ; 4 uses
  store <2 x double> %i.h, ptr %i.g, align 8, !tbaa !71, !alias.scope !276
  %i.i = tail call double @llvm.fmuladd.f64(double %i.f, double %i.f, double 0.000000e+00)
  %i.j = extractelement <2 x double> %i.h, i64 0  ; 2 uses
  %i.k = tail call double @llvm.fmuladd.f64(double %i.j, double %i.j, double %i.i)
  %i.l = extractelement <2 x double> %i.h, i64 1  ; 2 uses
  %i.m = tail call noundef double @llvm.fmuladd.f64(double %i.l, double %i.l, double %i.k)
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.m) ; 4 uses
  %i.n = fcmp olt double %sqrt.i, f0x3EB0C6F7A0B5ED8D
  br i1 %i.n, label %_ZNK2cv4QuatIdE3expEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = tail call double @sin(double noundef %sqrt.i) #22, !noalias !279
  %i.p = fdiv double %i.o, %sqrt.i
  br label %_ZNK2cv4QuatIdE3expEv.exit

_ZNK2cv4QuatIdE3expEv.exit:                       ; preds = %bb.a, %bb.b
  %i.q = phi double [ %i.p, %bb.b ], [ 1.000000e+00, %bb.a ]
  %i.r = tail call double @exp(double noundef %i.a) #22, !noalias !279
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.w = tail call double @cos(double noundef %sqrt.i) #22, !noalias !279
  %i.x = shufflevector <2 x double> %i.d, <2 x double> %i.h, <4 x i32> <i32 poison, i32 0, i32 1, i32 3>
  %i.y = insertelement <4 x double> %i.x, double %i.w, i64 0
  %i.z = insertelement <4 x double> <double 1.000000e+00, double poison, double poison, double poison>, double %i.q, i64 1
  %i.aa = shufflevector <4 x double> %i.z, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.ab = fmul <4 x double> %i.y, %i.aa
  %i.ac = insertelement <4 x double> poison, double %i.r, i64 0
  %i.ad = shufflevector <4 x double> %i.ac, <4 x double> poison, <4 x i32> zeroinitializer
  %i.ae = fmul <4 x double> %i.ad, %i.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_ZN2cv6detail9jacob_expIdEENS_4MatxIT_Li4ELi4EEERKNS_4QuatIS3_EE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Matx.23") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %2)
  store <4 x double> %i.ae, ptr %0, align 8, !tbaa !71, !alias.scope !280
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %4 = load <1 x double>, ptr %i.s, align 8
  %5 = load <1 x double>, ptr %i.t, align 8
  %6 = load <1 x double>, ptr %i.u, align 8
  %i.ag = load double, ptr %i.v, align 8, !tbaa !108, !noalias !281
  %i.ah = load <16 x double>, ptr %3, align 8, !tbaa !71, !noalias !282 ; 4 uses
  %i.ai = shufflevector <16 x double> %i.ah, <16 x double> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %i.aj = shufflevector <1 x double> %4, <1 x double> poison, <4 x i32> zeroinitializer
  %i.ak = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ai, <4 x double> %i.aj, <4 x double> zeroinitializer)
  %i.al = shufflevector <16 x double> %i.ah, <16 x double> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %i.am = shufflevector <1 x double> %5, <1 x double> poison, <4 x i32> zeroinitializer
  %i.an = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.al, <4 x double> %i.am, <4 x double> %i.ak)
  %i.ao = shufflevector <16 x double> %i.ah, <16 x double> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %i.ap = shufflevector <1 x double> %6, <1 x double> poison, <4 x i32> zeroinitializer
  %i.aq = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ao, <4 x double> %i.ap, <4 x double> %i.an)
  %i.ar = shufflevector <16 x double> %i.ah, <16 x double> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.as = insertelement <4 x double> poison, double %i.ag, i64 0
  %i.at = shufflevector <4 x double> %i.as, <4 x double> poison, <4 x i32> zeroinitializer
  %i.au = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ar, <4 x double> %i.at, <4 x double> %i.aq)
  store <4 x double> %i.au, ptr %i.af, align 8, !tbaa !71, !alias.scope !280
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void
}

declare noundef double @_ZN2cv11determinantERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #10

declare noundef zeroext i1 @_ZN2cv5solveERKNS_11_InputArrayES2_RKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #1

declare noundef double @_ZN2cv4normERKNS_11_InputArrayEiS2_(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv() local_unnamed_addr #1

declare void @_ZN2cv9RodriguesERKNS_11_InputArrayERKNS_12_OutputArrayES5_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #7

declare void @_ZNK2cv13OdometryFrame12getGrayImageERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK2cv4UMat5emptyEv(ptr noundef nonnull align 8 dereferenceable(184)) local_unnamed_addr #1

declare void @_ZNK2cv13OdometryFrame8getImageERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare void @_ZN2cv8cvtColorERKNS_11_InputArrayERKNS_12_OutputArrayEiiNS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(184) ptr @_ZN2cv4UMataSERKS0_(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef nonnull align 8 dereferenceable(184)) local_unnamed_addr #1

declare void @_ZNK2cv4UMat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, double noundef, double noundef) local_unnamed_addr #1

declare void @_ZNK2cv13OdometryFrame17getProcessedDepthERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN2cvL18prepareScaledDepthERNS_13OdometryFrameE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::UMat", align 8          ; 12 uses
  %3 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.8", align 1  ; 3 uses
  %6 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %7 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %i.a = alloca double, align 8                   ; 5 uses
  %8 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %9 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %10 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @_ZN2cv4UMatC1ENS_14UMatUsageFlagsE(ptr noundef nonnull align 8 dereferenceable(184) %2, i32 noundef 0) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.c, align 8
  store i32 34209792, ptr %3, align 8, !tbaa !26
  store ptr %2, ptr %i.b, align 8, !tbaa !27
  invoke void @_ZNK2cv13OdometryFrame8getDepthERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.d = invoke noundef zeroext i1 @_ZNK2cv4UMat5emptyEv(ptr noundef nonnull align 8 dereferenceable(184) %2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  br i1 %i.d, label %bb.f, label %bb.k

bb.d:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.af

bb.e:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.12, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZN2cvL18prepareScaledDepthERNS_13OdometryFrameE, ptr noundef nonnull @.str.1, i32 noundef 49) #23
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.j:                                             ; preds = %bb.g
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.i = load ptr, ptr %4, align 8, !tbaa !49     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.l = load i64, ptr %i.j, align 8, !tbaa !19
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.i
  %.pn33 = phi { ptr, i32 } [ %i.g, %bb.i ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.h, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.af

bb.k:                                             ; preds = %bb.c
  %i.n = load i32, ptr %2, align 8, !tbaa !70
  %i.o = and i32 %i.n, 4095                       ; 2 uses
  %i.p = icmp eq i32 %i.o, 5
  br i1 %i.p, label %.thread, label %bb.l

.thread:                                          ; preds = %bb.k
  call void @_ZN2cv4UMatC1ENS_14UMatUsageFlagsE(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef 0) #22
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.q = icmp eq i32 %i.o, 6
  call void @_ZN2cv4UMatC1ENS_14UMatUsageFlagsE(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef 0) #22
  br i1 %i.q, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l, %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 0, ptr %i.s, align 8
  store i32 34209792, ptr %6, align 8, !tbaa !26
  store ptr %0, ptr %i.r, align 8, !tbaa !27
  invoke void @_ZNK2cv4UMat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(184) %2, ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef 5, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 0, ptr %i.u, align 8
  store i32 50987008, ptr %7, align 8, !tbaa !26
  store ptr %0, ptr %i.t, align 8, !tbaa !27
  invoke void @_ZN2cv9patchNaNsERKNS_17_InputOutputArrayEd(ptr noundef nonnull align 8 dereferenceable(24) %7, double noundef 0.000000e+00)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.r

bb.p:                                             ; preds = %bb.m
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.ae

bb.q:                                             ; preds = %bb.n
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.ae

bb.r:                                             ; preds = %bb.l, %bb.o
  %i.x = phi i1 [ true, %bb.o ], [ false, %bb.l ]
  %. = phi ptr [ %0, %bb.o ], [ %2, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 0, ptr %i.y, align 8, !tbaa !40
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 0, ptr %i.z, align 4, !tbaa !41
  store i32 17432576, ptr %8, align 8, !tbaa !26
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %., ptr %i.aa, align 8, !tbaa !27
  %i.ab = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.s unwind label %bb.x

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN2cv9minMaxLocERKNS_11_InputArrayEPdS3_PNS_6Point_IiEES6_S2_(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
end_hunk_1
