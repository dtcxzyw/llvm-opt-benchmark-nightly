Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/shapeup?download=true
inline.NumInlined: 5991
inline.NumDeleted: 2888
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 57
loop-unroll.NumUnrolled: 75
begin_hunk_0_@_ZN5Eigen9JacobiSVDINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi2EE7computeERKS2_j:bb.a
  %i.ay = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.aw, <2 x double> %i.al) #30, !srcloc !125
  %i.az = select <2 x i1> %i.ax, <2 x double> %i.al, <2 x double> %i.ay ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i.i.i = extractelement <2 x double> %i.az, i64 0 ; 3 uses
  %i.ba = fcmp uno double %.sroa.0.0.vec.extract.i.i.i.i.i, 0.000000e+00
  %.sroa.0.8.vec.extract.i.i.i.i.i = extractelement <2 x double> %i.az, i64 1 ; 3 uses
  %i.bb = fcmp ord double %.sroa.0.8.vec.extract.i.i.i.i.i, 0.000000e+00
  %i.bc = fcmp uge double %.sroa.0.0.vec.extract.i.i.i.i.i, %.sroa.0.8.vec.extract.i.i.i.i.i
  %.not3.i.i.i.i.i.i = and i1 %i.bb, %i.bc
  %i.bd = select i1 %i.ba, i1 true, i1 %.not3.i.i.i.i.i.i
  %i.be = select i1 %i.bd, double %.sroa.0.0.vec.extract.i.i.i.i.i, double %.sroa.0.8.vec.extract.i.i.i.i.i ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !33 ; 2 uses
  %i.bh = tail call noundef double @llvm.fabs.f64(double %i.bg) ; 2 uses
  %i.bi = fcmp uno double %i.be, 0.000000e+00
  %i.bj = fcmp ord double %i.bg, 0.000000e+00
  %i.bk = fcmp uge double %i.be, %i.bh
  %.not3.i.i.i.i.i = and i1 %i.bj, %i.bk
  %i.bl = select i1 %i.bi, i1 true, i1 %.not3.i.i.i.i.i
  %i.bm = select i1 %i.bl, double %i.be, double %i.bh ; 3 uses
  %i.bn = tail call double @llvm.fabs.f64(double %i.bm)
  %i.bo = fcmp ueq double %i.bn, +inf
  br i1 %i.bo, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN5Eigen9JacobiSVDINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi2EE8allocateEllj.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 172
  store i8 1, ptr %i.bp, align 4, !tbaa !717
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 3, ptr %i.bq, align 8, !tbaa !716
  br label %bb.ac

bb.d:                                             ; preds = %_ZN5Eigen9JacobiSVDINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi2EE8allocateEllj.exit
  %i.br = bitcast <2 x i64> %i.ac to <2 x double>
  %i.bs = fcmp oeq double %i.bm, 0.000000e+00
  %.0184 = select i1 %i.bs, double 1.000000e+00, double %i.bm ; 6 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 224
  %.sroa.821.24.vec.insert.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %.0184, i64 0
  %i.bu = shufflevector <2 x double> %.sroa.821.24.vec.insert.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bv = fdiv <2 x double> %i.br, %i.bu          ; 2 uses
  store <2 x double> %i.bv, ptr %i.bt, align 8, !tbaa !20
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.bx = load double, ptr %i.af, align 8, !tbaa !33
  %i.by = fdiv double %i.bx, %.0184
  store double %i.by, ptr %i.bw, align 8, !tbaa !33
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cb = load <2 x double>, ptr %i.ca, align 8, !tbaa !20
  %i.cc = fdiv <2 x double> %i.cb, %i.bu          ; 2 uses
  store <2 x double> %i.cc, ptr %i.bz, align 8, !tbaa !20
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !33
  %i.cg = fdiv double %i.cf, %.0184
  store double %i.cg, ptr %i.cd, align 8, !tbaa !33
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ci = load <2 x double>, ptr %i.aq, align 8, !tbaa !20
  %i.cj = fdiv <2 x double> %i.ci, %i.bu
  store <2 x double> %i.cj, ptr %i.ch, align 8, !tbaa !20
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.cl = load double, ptr %i.bf, align 8, !tbaa !33
  %i.cm = fdiv double %i.cl, %.0184               ; 2 uses
  store double %i.cm, ptr %i.ck, align 8, !tbaa !33
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 175
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !718, !range !170, !noundef !141
  %i.cp = trunc nuw i8 %i.co to i1
  %i.cq = extractelement <2 x double> %i.bv, i64 0
  %i.cr = extractelement <2 x double> %i.cc, i64 1
  br i1 %i.cp, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store double 1.000000e+00, ptr %0, align 8, !tbaa !33
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cs, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.ct, align 8, !tbaa !33
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cu, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.cv, align 8, !tbaa !33
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.cx = load i8, ptr %i.cw, align 8, !tbaa !719, !range !170, !noundef !141
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store double 1.000000e+00, ptr %0, align 8, !tbaa !33
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.da, align 8, !tbaa !33
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.db, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.dc, align 8, !tbaa !33
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 177
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !720, !range !170, !noundef !141
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 72
  store double 1.000000e+00, ptr %i.dg, align 8, !tbaa !33
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dh, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.di, align 8, !tbaa !33
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dj, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.dk, align 8, !tbaa !33
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 178
  %i.dm = load i8, ptr %i.dl, align 2, !tbaa !721, !range !170, !noundef !141
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 72
  store double 1.000000e+00, ptr %i.do, align 8, !tbaa !33
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dp, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.dq, align 8, !tbaa !33
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dr, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.ds, align 8, !tbaa !33
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 6 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !54 ; 5 uses
  %i.dw = icmp sgt i64 %i.dv, 1
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 175 ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 177 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 178 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  br i1 %i.dw, label %.preheader202.us.preheader, label %.preheader

.preheader202.us.preheader:                       ; preds = %bb.l
  %i.ec = tail call noundef double @llvm.fabs.f64(double %i.cq) ; 2 uses
  %i.ed = tail call noundef double @llvm.fabs.f64(double %i.cr) ; 2 uses
  %i.ee = tail call noundef double @llvm.fabs.f64(double %i.cm) ; 2 uses
  %i.ef = fcmp olt double %i.ed, %i.ee
  %i.eg = select i1 %i.ef, double %i.ee, double %i.ed ; 2 uses
  %i.eh = fcmp olt double %i.ec, %i.eg
  %i.ei = select i1 %i.eh, double %i.eg, double %i.ec
  br label %.preheader201.us

bb.m:                                             ; preds = %.preheader201.us, %bb.s
  %.056207.us = phi i64 [ 0, %.preheader201.us ], [ %i.mh, %bb.s ] ; 5 uses
  %.2206.us = phi i1 [ %.1209.us, %.preheader201.us ], [ %.3.us, %bb.s ]
  %.2187205.us = phi double [ %.1186208.us, %.preheader201.us ], [ %.3188.us, %bb.s ] ; 4 uses
  %i.ej = fmul double %.2187205.us, f0x3CC0000000000000 ; 2 uses
  %i.ek = fcmp ogt double %i.ej, f0x0010000000000000
  %.sroa.speculated149.us = select i1 %i.ek, double %i.ej, double f0x0010000000000000 ; 2 uses
  %.idx.i.us = mul i64 %.056207.us, 24            ; 5 uses
  %i.el = getelementptr i8, ptr %i.mj, i64 %.idx.i.us
  %i.em = load double, ptr %i.el, align 8, !tbaa !33 ; 5 uses
  %i.en = tail call noundef double @llvm.fabs.f64(double %i.em) ; 2 uses
  %i.eo = fcmp ogt double %i.en, %.sroa.speculated149.us
  br i1 %i.eo, label %._crit_edge225, label %bb.n

._crit_edge225:                                   ; preds = %bb.m
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.056207.us
  %.pre228 = load double, ptr %gep, align 8, !tbaa !33
  br label %bb.o

bb.n:                                             ; preds = %bb.m
  %gep.us = getelementptr [8 x i8], ptr %invariant.gep.us, i64 %.056207.us
  %i.ep = load double, ptr %gep.us, align 8, !tbaa !33 ; 2 uses
  %i.eq = tail call noundef double @llvm.fabs.f64(double %i.ep)
  %i.er = fcmp ogt double %i.eq, %.sroa.speculated149.us
  br i1 %i.er, label %bb.o, label %bb.s

bb.o:                                             ; preds = %._crit_edge225, %bb.n
  %i.es = phi double [ %.pre228, %._crit_edge225 ], [ %i.ep, %bb.n ] ; 2 uses
  %i.et = load double, ptr %i.mk, align 8, !tbaa !33 ; 3 uses
  %i.eu = getelementptr [8 x i8], ptr %i.dt, i64 %.056207.us ; 5 uses
  %i.ev = getelementptr i8, ptr %i.eu, i64 %.idx.i.us ; 2 uses
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !33 ; 4 uses
  %i.ex = fsub double %i.es, %i.em                ; 2 uses
  %i.ey = tail call noundef double @llvm.fabs.f64(double %i.ex)
  %i.ez = fcmp olt double %i.ey, f0x0010000000000000
  br i1 %i.ez, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fa = fadd double %i.et, %i.ew
  %i.fb = fdiv double %i.fa, %i.ex                ; 3 uses
  %i.fc = fmul double %i.fb, %i.fb
  %i.fd = fadd double %i.fc, 1.000000e+00
  %i.fe = tail call double @sqrt(double noundef %i.fd) #27
  %i.ff = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.fb, i64 1
  %i.fg = insertelement <2 x double> poison, double %i.fe, i64 0
  %i.fh = shufflevector <2 x double> %i.fg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fi = fdiv <2 x double> %i.ff, %i.fh
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.fj = phi <2 x double> [ %i.fi, %bb.p ], [ <double 0.000000e+00, double 1.000000e+00>, %bb.o ] ; 6 uses
  %i.fk = extractelement <2 x double> %i.fj, i64 1 ; 2 uses
  %i.fl = fcmp oeq double %i.fk, 1.000000e+00
  %i.fm = extractelement <2 x double> %i.fj, i64 0 ; 2 uses
  %i.fn = fcmp oeq double %i.fm, 0.000000e+00
  %or.cond.i.i.i.us = and i1 %i.fn, %i.fl
  br i1 %or.cond.i.i.i.us, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.i.us, label %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi2ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i.i.us

_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi2ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i.i.us: ; preds = %bb.q
  %i.fo = fneg double %i.fm
  %i.fp = insertelement <2 x double> poison, double %i.es, i64 0
  %i.fq = insertelement <2 x double> %i.fp, double %i.ew, i64 1
  %i.fr = shufflevector <2 x double> %i.fj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fs = fmul <2 x double> %i.fq, %i.fr
  %i.ft = shufflevector <2 x double> %i.fj, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fu = insertelement <2 x double> poison, double %i.et, i64 0
  %i.fv = insertelement <2 x double> %i.fu, double %i.em, i64 1
  %i.fw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ft, <2 x double> %i.fv, <2 x double> %i.fs) ; 2 uses
  %i.fx = fmul double %i.ew, %i.fk
  %i.fy = tail call double @llvm.fmuladd.f64(double %i.fo, double %i.em, double %i.fx)
  %i.fz = extractelement <2 x double> %i.fw, i64 1 ; 2 uses
  %.pre232 = tail call noundef double @llvm.fabs.f64(double %i.fz)
  %i.ga = extractelement <2 x double> %i.fw, i64 0
  br label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.i.us

_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.i.us: ; preds = %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi2ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i.i.us, %bb.q
  %.pre-phi = phi double [ %.pre232, %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi2ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i.i.us ], [ %i.en, %bb.q ] ; 2 uses
  %.sroa.13.0.i.us = phi double [ %i.fy, %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi2ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i.i.us ], [ %i.ew, %bb.q ]
  %.sroa.9.0.i.us = phi double [ %i.fz, %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi2ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i.i.us ], [ %i.em, %bb.q ]
  %.sroa.0.0.i.us = phi double [ %i.ga, %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi2ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i.i.us ], [ %i.et, %bb.q ]
  %i.gb = fmul double %.pre-phi, 2.000000e+00     ; 2 uses
  %i.gc = fcmp uge double %i.gb, f0x0010000000000000
  br i1 %i.gc, label %bb.r, label %_ZN5Eigen8internal19real_2x2_jacobi_svdINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEdlEEvRKT_T1_S7_PNS_14JacobiRotationIT0_EESB_.exit.us

bb.r:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.i.us
  %i.gd = fsub double %.sroa.0.0.i.us, %.sroa.13.0.i.us
  %i.ge = fdiv double %i.gd, %i.gb                ; 4 uses
  %i.gf = fmul double %i.ge, %i.ge
  %i.gg = fadd double %i.gf, 1.000000e+00
  %i.gh = tail call double @sqrt(double noundef %i.gg) #27 ; 2 uses
  %i.gi = fcmp ogt double %i.ge, 0.000000e+00
  %i.gj = fneg double %i.gh
  %.pn.p.i.i.i.us = select i1 %i.gi, double %i.gh, double %i.gj
  %.pn.i.i.i.us = fadd double %i.ge, %.pn.p.i.i.i.us
  %storemerge.i.i.i.us = fdiv double 1.000000e+00, %.pn.i.i.i.us ; 4 uses
  %i.gk = fcmp ogt double %storemerge.i.i.i.us, 0.000000e+00
  %i.gl = fmul double %storemerge.i.i.i.us, %storemerge.i.i.i.us
  %i.gm = fadd double %i.gl, 1.000000e+00
  %i.gn = tail call double @sqrt(double noundef %i.gm) #27
  %i.go = fdiv double 1.000000e+00, %i.gn         ; 2 uses
  %i.gp = fdiv double %.sroa.9.0.i.us, %.pre-phi  ; 2 uses
  %i.gq = fneg double %i.gp
  %i.gr = select i1 %i.gk, double %i.gq, double %i.gp
  %i.gs = tail call noundef double @llvm.fabs.f64(double %storemerge.i.i.i.us)
  %i.gt = fmul double %i.gs, %i.gr
  %i.gu = fmul double %i.go, %i.gt
  br label %_ZN5Eigen8internal19real_2x2_jacobi_svdINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEdlEEvRKT_T1_S7_PNS_14JacobiRotationIT0_EESB_.exit.us

_ZN5Eigen8internal19real_2x2_jacobi_svdINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEdlEEvRKT_T1_S7_PNS_14JacobiRotationIT0_EESB_.exit.us: ; preds = %bb.r, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.i.us
  %.sink19.i.i.i.us = phi double [ %i.gu, %bb.r ], [ 0.000000e+00, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.i.us ] ; 9 uses
  %.sink.i.i.i.us = phi double [ %i.go, %bb.r ], [ 1.000000e+00, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.i.us ] ; 15 uses
  %i.gv = fneg double %.sink19.i.i.i.us           ; 7 uses
  %i.gw = shufflevector <2 x double> %i.fj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gx = insertelement <2 x double> poison, double %.sink19.i.i.i.us, i64 0
  %i.gy = insertelement <2 x double> %i.gx, double %.sink.i.i.i.us, i64 1
  %i.gz = fmul <2 x double> %i.gw, %i.gy
  %i.ha = shufflevector <2 x double> %i.fj, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.hb = insertelement <2 x double> poison, double %.sink.i.i.i.us, i64 0
  %i.hc = insertelement <2 x double> %i.hb, double %i.gv, i64 1
  %i.hd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ha, <2 x double> %i.hc, <2 x double> %i.gz) ; 12 uses
  %i.he = extractelement <2 x double> %i.hd, i64 0
  %i.hf = fcmp une double %i.he, 1.000000e+00
  %i.hg = extractelement <2 x double> %i.hd, i64 1
  %i.hh = fcmp une double %i.hg, 0.000000e+00
  %or.cond.i.i.us.not244 = or i1 %i.hf, %i.hh
  br i1 %or.cond.i.i.us.not244, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.us, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.us

_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.us: ; preds = %_ZN5Eigen8internal19real_2x2_jacobi_svdINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEdlEEvRKT_T1_S7_PNS_14JacobiRotationIT0_EESB_.exit.us
  %i.hi = load double, ptr %i.mj, align 8, !tbaa !33
  %i.hj = load double, ptr %i.eu, align 8, !tbaa !33
  %i.hk = insertelement <2 x double> poison, double %i.hj, i64 0
  %i.hl = shufflevector <2 x double> %i.hk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hm = fmul <2 x double> %i.hd, %i.hl
  %i.hn = fneg <2 x double> %i.hd
  %i.ho = shufflevector <2 x double> %i.hn, <2 x double> %i.hd, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.hp = insertelement <2 x double> poison, double %i.hi, i64 0
  %i.hq = shufflevector <2 x double> %i.hp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ho, <2 x double> %i.hq, <2 x double> %i.hm) ; 2 uses
  %i.hs = extractelement <2 x double> %i.hr, i64 1
  store double %i.hs, ptr %i.mj, align 8, !tbaa !33
  %i.ht = extractelement <2 x double> %i.hr, i64 0
  store double %i.ht, ptr %i.eu, align 8, !tbaa !33
  %i.hu = getelementptr inbounds nuw i8, ptr %i.eu, i64 24 ; 2 uses
  %i.hv = load double, ptr %i.ml, align 8, !tbaa !33
  %i.hw = load double, ptr %i.hu, align 8, !tbaa !33
  %i.hx = insertelement <2 x double> poison, double %i.hw, i64 0
  %i.hy = shufflevector <2 x double> %i.hx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hz = fmul <2 x double> %i.hd, %i.hy
  %i.ia = insertelement <2 x double> poison, double %i.hv, i64 0
  %i.ib = shufflevector <2 x double> %i.ia, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ic = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ho, <2 x double> %i.ib, <2 x double> %i.hz) ; 2 uses
  %i.id = extractelement <2 x double> %i.ic, i64 1
  store double %i.id, ptr %i.ml, align 8, !tbaa !33
  %i.ie = extractelement <2 x double> %i.ic, i64 0
  store double %i.ie, ptr %i.hu, align 8, !tbaa !33
  %i.if = getelementptr inbounds nuw i8, ptr %i.eu, i64 48 ; 2 uses
  %i.ig = load double, ptr %i.mm, align 8, !tbaa !33
  %i.ih = load double, ptr %i.if, align 8, !tbaa !33
  %i.ii = insertelement <2 x double> poison, double %i.ih, i64 0
  %i.ij = shufflevector <2 x double> %i.ii, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ik = fmul <2 x double> %i.hd, %i.ij
  %i.il = insertelement <2 x double> poison, double %i.ig, i64 0
  %i.im = shufflevector <2 x double> %i.il, <2 x double> poison, <2 x i32> zeroinitializer
  %i.in = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ho, <2 x double> %i.im, <2 x double> %i.ik) ; 2 uses
  %i.io = extractelement <2 x double> %i.in, i64 1
  store double %i.io, ptr %i.mm, align 8, !tbaa !33
  %i.ip = extractelement <2 x double> %i.in, i64 0
  store double %i.ip, ptr %i.if, align 8, !tbaa !33
  %i.iq = load i8, ptr %i.dx, align 1, !tbaa !718, !range !170, !noundef !141
  %i.ir = trunc nuw i8 %i.iq to i1
  %i.is = load i8, ptr %i.dy, align 8, !range !170
  %i.it = trunc nuw i8 %i.is to i1
  %i.iu = select i1 %i.ir, i1 true, i1 %i.it
  br i1 %i.iu, label %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi3ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i67.us, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.us

_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi3ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i67.us: ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.us
  %i.iv = getelementptr inbounds i8, ptr %0, i64 %.idx.i.us ; 4 uses
  %i.iw = load double, ptr %i.mn, align 8, !tbaa !33
  %i.ix = load double, ptr %i.iv, align 8, !tbaa !33
  %i.iy = insertelement <2 x double> poison, double %i.ix, i64 0
  %i.iz = shufflevector <2 x double> %i.iy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ja = fmul <2 x double> %i.hd, %i.iz
  %i.jb = fneg <2 x double> %i.hd
  %i.jc = shufflevector <2 x double> %i.jb, <2 x double> %i.hd, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.jd = insertelement <2 x double> poison, double %i.iw, i64 0
  %i.je = shufflevector <2 x double> %i.jd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jc, <2 x double> %i.je, <2 x double> %i.ja) ; 2 uses
  %i.jg = extractelement <2 x double> %i.jf, i64 1
  store double %i.jg, ptr %i.mn, align 8, !tbaa !33
  %i.jh = extractelement <2 x double> %i.jf, i64 0
  store double %i.jh, ptr %i.iv, align 8, !tbaa !33
  %i.ji = getelementptr inbounds nuw i8, ptr %i.iv, i64 8 ; 2 uses
  %i.jj = load double, ptr %i.mo, align 8, !tbaa !33
  %i.jk = load double, ptr %i.ji, align 8, !tbaa !33
  %i.jl = insertelement <2 x double> poison, double %i.jk, i64 0
  %i.jm = shufflevector <2 x double> %i.jl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jn = fmul <2 x double> %i.hd, %i.jm
  %i.jo = insertelement <2 x double> poison, double %i.jj, i64 0
  %i.jp = shufflevector <2 x double> %i.jo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jc, <2 x double> %i.jp, <2 x double> %i.jn) ; 2 uses
  %i.jr = extractelement <2 x double> %i.jq, i64 1
  store double %i.jr, ptr %i.mo, align 8, !tbaa !33
  %i.js = extractelement <2 x double> %i.jq, i64 0
  store double %i.js, ptr %i.ji, align 8, !tbaa !33
  %i.jt = getelementptr inbounds nuw i8, ptr %i.iv, i64 16 ; 2 uses
  %i.ju = load double, ptr %i.mp, align 8, !tbaa !33
  %i.jv = load double, ptr %i.jt, align 8, !tbaa !33
  %i.jw = insertelement <2 x double> poison, double %i.jv, i64 0
  %i.jx = shufflevector <2 x double> %i.jw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jy = fmul <2 x double> %i.hd, %i.jx
  %i.jz = insertelement <2 x double> poison, double %i.ju, i64 0
  %i.ka = shufflevector <2 x double> %i.jz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jc, <2 x double> %i.ka, <2 x double> %i.jy) ; 2 uses
  %i.kc = extractelement <2 x double> %i.kb, i64 1
  store double %i.kc, ptr %i.mp, align 8, !tbaa !33
  %i.kd = extractelement <2 x double> %i.kb, i64 0
  store double %i.kd, ptr %i.jt, align 8, !tbaa !33
  br label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.us

_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.us: ; preds = %_ZN5Eigen8internal19real_2x2_jacobi_svdINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEdlEEvRKT_T1_S7_PNS_14JacobiRotationIT0_EESB_.exit.us, %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi3ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i67.us, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.us
  %i.ke = fcmp oeq double %.sink.i.i.i.us, 1.000000e+00
  %i.kf = fcmp oeq double %.sink19.i.i.i.us, 0.000000e+00
  %or.cond.i.i68.us = and i1 %i.kf, %i.ke
  br i1 %or.cond.i.i68.us, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit77.us, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit72.thread.us

_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit72.thread.us: ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.us
  %i.kg = getelementptr inbounds i8, ptr %i.dt, i64 %.idx.i.us ; 4 uses
  %i.kh = load double, ptr %invariant.gep.us, align 8, !tbaa !33 ; 2 uses
  %i.ki = load double, ptr %i.kg, align 8, !tbaa !33 ; 2 uses
  %i.kj = fmul double %i.ki, %i.gv
  %i.kk = tail call double @llvm.fmuladd.f64(double %.sink.i.i.i.us, double %i.kh, double %i.kj)
  store double %i.kk, ptr %invariant.gep.us, align 8, !tbaa !33
  %i.kl = fmul double %.sink.i.i.i.us, %i.ki
  %i.km = tail call double @llvm.fmuladd.f64(double %.sink19.i.i.i.us, double %i.kh, double %i.kl)
  store double %i.km, ptr %i.kg, align 8, !tbaa !33
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kg, i64 8 ; 2 uses
  %i.ko = load double, ptr %i.mq, align 8, !tbaa !33 ; 2 uses
  %i.kp = load double, ptr %i.kn, align 8, !tbaa !33 ; 2 uses
  %i.kq = fmul double %i.kp, %i.gv
  %i.kr = tail call double @llvm.fmuladd.f64(double %.sink.i.i.i.us, double %i.ko, double %i.kq)
  store double %i.kr, ptr %i.mq, align 8, !tbaa !33
  %i.ks = fmul double %.sink.i.i.i.us, %i.kp
  %i.kt = tail call double @llvm.fmuladd.f64(double %.sink19.i.i.i.us, double %i.ko, double %i.ks)
  store double %i.kt, ptr %i.kn, align 8, !tbaa !33
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kg, i64 16 ; 2 uses
  %i.kv = load double, ptr %i.mr, align 8, !tbaa !33 ; 2 uses
  %i.kw = load double, ptr %i.ku, align 8, !tbaa !33 ; 2 uses
  %i.kx = fmul double %i.kw, %i.gv
  %i.ky = tail call double @llvm.fmuladd.f64(double %.sink.i.i.i.us, double %i.kv, double %i.kx)
  store double %i.ky, ptr %i.mr, align 8, !tbaa !33
  %i.kz = fmul double %.sink.i.i.i.us, %i.kw
  %i.la = tail call double @llvm.fmuladd.f64(double %.sink19.i.i.i.us, double %i.kv, double %i.kz)
  store double %i.la, ptr %i.ku, align 8, !tbaa !33
  %i.lb = load i8, ptr %i.dz, align 1, !tbaa !720, !range !170, !noundef !141
  %i.lc = trunc nuw i8 %i.lb to i1
  %i.ld = load i8, ptr %i.ea, align 2, !range !170
  %i.le = trunc nuw i8 %i.ld to i1
  %i.lf = select i1 %i.lc, i1 true, i1 %i.le
  br i1 %i.lf, label %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi3ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i74.us, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit77.us

_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi3ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i74.us: ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit72.thread.us
  %i.lg = getelementptr inbounds i8, ptr %i.eb, i64 %.idx.i.us ; 4 uses
  %i.lh = load double, ptr %i.ms, align 8, !tbaa !33 ; 2 uses
  %i.li = load double, ptr %i.lg, align 8, !tbaa !33 ; 2 uses
  %i.lj = fmul double %i.li, %i.gv
  %i.lk = tail call double @llvm.fmuladd.f64(double %.sink.i.i.i.us, double %i.lh, double %i.lj)
  store double %i.lk, ptr %i.ms, align 8, !tbaa !33
  %i.ll = fmul double %.sink.i.i.i.us, %i.li
  %i.lm = tail call double @llvm.fmuladd.f64(double %.sink19.i.i.i.us, double %i.lh, double %i.ll)
  store double %i.lm, ptr %i.lg, align 8, !tbaa !33
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lg, i64 8 ; 2 uses
  %i.lo = load double, ptr %i.mt, align 8, !tbaa !33 ; 2 uses
  %i.lp = load double, ptr %i.ln, align 8, !tbaa !33 ; 2 uses
  %i.lq = fmul double %i.lp, %i.gv
  %i.lr = tail call double @llvm.fmuladd.f64(double %.sink.i.i.i.us, double %i.lo, double %i.lq)
  store double %i.lr, ptr %i.mt, align 8, !tbaa !33
  %i.ls = fmul double %.sink.i.i.i.us, %i.lp
  %i.lt = tail call double @llvm.fmuladd.f64(double %.sink19.i.i.i.us, double %i.lo, double %i.ls)
  store double %i.lt, ptr %i.ln, align 8, !tbaa !33
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lg, i64 16 ; 2 uses
  %i.lv = load double, ptr %i.mu, align 8, !tbaa !33 ; 2 uses
  %i.lw = load double, ptr %i.lu, align 8, !tbaa !33 ; 2 uses
  %i.lx = fmul double %i.lw, %i.gv
  %i.ly = tail call double @llvm.fmuladd.f64(double %.sink.i.i.i.us, double %i.lv, double %i.lx)
  store double %i.ly, ptr %i.mu, align 8, !tbaa !33
  %i.lz = fmul double %.sink.i.i.i.us, %i.lw
  %i.ma = tail call double @llvm.fmuladd.f64(double %.sink19.i.i.i.us, double %i.lv, double %i.lz)
  store double %i.ma, ptr %i.lu, align 8, !tbaa !33
  br label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit77.us

_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit77.us: ; preds = %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi3ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i74.us, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit72.thread.us, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.us
  %i.mb = load double, ptr %i.mk, align 8, !tbaa !33
  %i.mc = tail call noundef double @llvm.fabs.f64(double %i.mb) ; 2 uses
  %i.md = load double, ptr %i.ev, align 8, !tbaa !33
  %i.me = tail call noundef double @llvm.fabs.f64(double %i.md) ; 2 uses
  %i.mf = fcmp olt double %i.mc, %i.me
  %.sroa.speculated.us = select i1 %i.mf, double %i.me, double %i.mc ; 2 uses
  %i.mg = fcmp olt double %.2187205.us, %.sroa.speculated.us
  %.sroa.speculated135.us = select i1 %i.mg, double %.sroa.speculated.us, double %.2187205.us
  br label %bb.s

bb.s:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit77.us, %bb.n
  %.3188.us = phi double [ %.sroa.speculated135.us, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit77.us ], [ %.2187205.us, %bb.n ] ; 2 uses
  %.3.us = phi i1 [ false, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit77.us ], [ %.2206.us, %bb.n ] ; 3 uses
  %i.mh = add nuw nsw i64 %.056207.us, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.mh, %.057210.us
end_hunk_0
begin_hunk_1_@_ZN5Eigen9JacobiSVDINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi2EE7computeERKS2_j:bb.a
  %i.ng = icmp sgt i64 %.lcssa, 0
  br i1 %i.ng, label %.lr.ph216.preheader, label %.loopexit

.lr.ph216.preheader:                              ; preds = %._crit_edge
  %i.nh = add nsw i64 %.lcssa, -2
  br label %.lr.ph216

bb.u:                                             ; preds = %.lr.ph, %bb.w
  %i.ni = phi i64 [ %i.dv, %.lr.ph ], [ %i.oa, %bb.w ]
  %i.nj = phi i8 [ %.pre230, %.lr.ph ], [ %i.ob, %bb.w ] ; 2 uses
  %.055213 = phi i64 [ 0, %.lr.ph ], [ %i.oc, %bb.w ] ; 4 uses
  %i.nk = getelementptr [8 x i8], ptr %i.dt, i64 %.055213
  %.idx.i82 = mul i64 %.055213, 24                ; 2 uses
  %i.nl = getelementptr i8, ptr %i.nk, i64 %.idx.i82
  %i.nm = load double, ptr %i.nl, align 8, !tbaa !33 ; 2 uses
  %i.nn = tail call noundef double @llvm.fabs.f64(double %i.nm)
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %i.mw, i64 %.055213
  store double %i.nn, ptr %i.no, align 8, !tbaa !33
  %i.np = trunc nuw i8 %i.nj to i1
  %i.nq = load i8, ptr %i.dy, align 8, !range !170
  %i.nr = trunc nuw i8 %i.nq to i1
  %i.ns = select i1 %i.np, i1 true, i1 %i.nr
  %i.nt = fcmp olt double %i.nm, 0.000000e+00
  %or.cond = and i1 %i.nt, %i.ns
  br i1 %or.cond, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.nu = getelementptr inbounds i8, ptr %0, i64 %.idx.i82 ; 3 uses
  %i.nv = load <2 x double>, ptr %i.nu, align 8, !tbaa !20
  %i.nw = fneg <2 x double> %i.nv
  store <2 x double> %i.nw, ptr %i.nu, align 8, !tbaa !20
  %i.nx = getelementptr i8, ptr %i.nu, i64 16     ; 2 uses
  %i.ny = load double, ptr %i.nx, align 8, !tbaa !33
  %i.nz = fneg double %i.ny
  store double %i.nz, ptr %i.nx, align 8, !tbaa !33
  %.pre229 = load i8, ptr %i.dx, align 1, !tbaa !718, !range !170
  %.pre231 = load i64, ptr %i.du, align 8, !tbaa !54
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.oa = phi i64 [ %.pre231, %bb.v ], [ %i.ni, %bb.u ] ; 3 uses
  %i.ob = phi i8 [ %.pre229, %bb.v ], [ %i.nj, %bb.u ]
  %i.oc = add nuw nsw i64 %.055213, 1             ; 2 uses
  %i.od = icmp slt i64 %i.oc, %i.oa
  br i1 %i.od, label %bb.u, label %._crit_edge, !llvm.loop !710

.lr.ph216:                                        ; preds = %.lr.ph216.preheader, %.thread195
  %.0214 = phi i64 [ %i.qh, %.thread195 ], [ 0, %.lr.ph216.preheader ] ; 9 uses
  %i.oe = xor i64 %.0214, -1
  %i.of = add nsw i64 %.lcssa, %i.oe              ; 3 uses
  %i.og = sub nuw nsw i64 %.lcssa, %.0214         ; 2 uses
  %i.oh = sub nsw i64 3, %i.og
  %i.oi = getelementptr inbounds [8 x i8], ptr %i.mx, i64 %i.oh ; 4 uses
  %i.oj = load double, ptr %i.oi, align 8, !tbaa !33 ; 5 uses
  %i.ok = icmp sgt i64 %i.og, 1
  br i1 %i.ok, label %.lr.ph.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.thread191

.lr.ph.i.i.i.i.preheader:                         ; preds = %.lr.ph216
  %xtraiter = and i64 %i.of, 1
  %i.ol = icmp eq i64 %i.nh, %.0214
  br i1 %i.ol, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.preheader.new:                     ; preds = %.lr.ph.i.i.i.i.preheader
  %unroll_iter = and i64 %i.of, -2
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader.new
  %.sroa.0.0.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %.sroa.0.1.i.i.1, %.lr.ph.i.i.i.i ]
  %.sroa.7.0.i.i = phi double [ %i.oj, %.lr.ph.i.i.i.i.preheader.new ], [ %.sroa.7.1.i.i.1, %.lr.ph.i.i.i.i ]
  %.02123.i.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.i.preheader.new ], [ %i.ow, %.lr.ph.i.i.i.i ] ; 4 uses
  %i.om = phi double [ %i.oj, %.lr.ph.i.i.i.i.preheader.new ], [ %i.ov, %.lr.ph.i.i.i.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i.i.i ]
  %i.on = getelementptr [8 x i8], ptr %i.oi, i64 %.02123.i.i.i.i
  %i.oo = load double, ptr %i.on, align 8, !tbaa !33 ; 3 uses
  %i.op = fcmp ogt double %i.oo, %i.om            ; 3 uses
  %.sroa.0.1.i.i = select i1 %i.op, i64 %.02123.i.i.i.i, i64 %.sroa.0.0.i.i
  %.sroa.7.1.i.i = select i1 %i.op, double %i.oo, double %.sroa.7.0.i.i
  %i.oq = select i1 %i.op, double %i.oo, double %i.om ; 2 uses
  %i.or = add nuw nsw i64 %.02123.i.i.i.i, 1      ; 2 uses
  %i.os = getelementptr [8 x i8], ptr %i.oi, i64 %i.or
  %i.ot = load double, ptr %i.os, align 8, !tbaa !33 ; 3 uses
  %i.ou = fcmp ogt double %i.ot, %i.oq            ; 3 uses
  %.sroa.0.1.i.i.1 = select i1 %i.ou, i64 %i.or, i64 %.sroa.0.1.i.i ; 3 uses
  %.sroa.7.1.i.i.1 = select i1 %i.ou, double %i.ot, double %.sroa.7.1.i.i ; 3 uses
  %i.ov = select i1 %i.ou, double %i.ot, double %i.oq ; 2 uses
  %i.ow = add nuw nsw i64 %.02123.i.i.i.i, 2      ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa, label %.lr.ph.i.i.i.i, !llvm.loop !711

_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa, %.lr.ph.i.i.i.i.preheader
  %.sroa.0.0.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.0.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ]
  %.sroa.7.0.i.i.epil.init = phi double [ %i.oj, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.7.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ]
  %.02123.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.preheader ], [ %i.ow, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ] ; 2 uses
  %.epil.init = phi double [ %i.oj, %.lr.ph.i.i.i.i.preheader ], [ %i.ov, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ]
  %lcmp.mod254 = trunc i64 %i.of to i1
  tail call void @llvm.assume(i1 %lcmp.mod254)
  %i.ox = getelementptr [8 x i8], ptr %i.oi, i64 %.02123.i.i.i.i.epil.init
  %i.oy = load double, ptr %i.ox, align 8, !tbaa !33 ; 2 uses
  %i.oz = fcmp ogt double %i.oy, %.epil.init      ; 2 uses
  %.sroa.0.1.i.i.epil = select i1 %i.oz, i64 %.02123.i.i.i.i.epil.init, i64 %.sroa.0.0.i.i.epil.init
  %.sroa.7.1.i.i.epil = select i1 %i.oz, double %i.oy, double %.sroa.7.0.i.i.epil.init
  br label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit

_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit: ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa, %.lr.ph.i.i.i.i.epil.preheader
  %.sroa.0.1.i.i.lcssa = phi i64 [ %.sroa.0.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ], [ %.sroa.0.1.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader ] ; 2 uses
  %.sroa.7.1.i.i.lcssa = phi double [ %.sroa.7.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ], [ %.sroa.7.1.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader ]
  %i.pa = fcmp une double %.sroa.7.1.i.i.lcssa, 0.000000e+00
  br i1 %i.pa, label %bb.x, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.thread

_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.thread191: ; preds = %.lr.ph216
  %i.pb = fcmp une double %i.oj, 0.000000e+00
  br i1 %i.pb, label %.thread195, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.thread

bb.x:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit
  %.not63 = icmp eq i64 %.sroa.0.1.i.i.lcssa, 0
  br i1 %.not63, label %.thread195, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.pc = add nuw nsw i64 %.sroa.0.1.i.i.lcssa, %.0214 ; 3 uses
  %i.pd = getelementptr inbounds nuw [8 x i8], ptr %i.mx, i64 %.0214 ; 2 uses
  %i.pe = getelementptr inbounds nuw [8 x i8], ptr %i.mx, i64 %i.pc ; 2 uses
  %i.pf = load double, ptr %i.pd, align 8, !tbaa !33
  %i.pg = load double, ptr %i.pe, align 8, !tbaa !33
  store double %i.pg, ptr %i.pd, align 8, !tbaa !33
  store double %i.pf, ptr %i.pe, align 8, !tbaa !33
  %i.ph = load i8, ptr %i.dx, align 1, !tbaa !718, !range !170, !noundef !141
  %i.pi = trunc nuw i8 %i.ph to i1
  %i.pj = load i8, ptr %i.dy, align 8, !range !170
  %i.pk = trunc nuw i8 %i.pj to i1
  %i.pl = select i1 %i.pi, i1 true, i1 %i.pk
  br i1 %i.pl, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %.idx.i.i.i.i84 = mul nuw nsw i64 %i.pc, 24
  %i.pm = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i.i.i.i84 ; 3 uses
  %.idx.i.i.i.i85 = mul nuw nsw i64 %.0214, 24
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i.i.i.i85 ; 3 uses
  %i.po = load <2 x double>, ptr %i.pn, align 8, !tbaa !20
  %i.pp = load <2 x double>, ptr %i.pm, align 8, !tbaa !20
  store <2 x double> %i.pp, ptr %i.pn, align 8, !tbaa !20
  store <2 x double> %i.po, ptr %i.pm, align 8, !tbaa !20
  %i.pq = getelementptr i8, ptr %i.pm, i64 16     ; 2 uses
  %i.pr = getelementptr i8, ptr %i.pn, i64 16     ; 2 uses
  %i.ps = load double, ptr %i.pq, align 8, !tbaa !33
  %i.pt = load double, ptr %i.pr, align 8, !tbaa !33
  store double %i.pt, ptr %i.pq, align 8, !tbaa !33
  store double %i.ps, ptr %i.pr, align 8, !tbaa !33
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.pu = load i8, ptr %i.dz, align 1, !tbaa !720, !range !170, !noundef !141
  %i.pv = trunc nuw i8 %i.pu to i1
  %i.pw = load i8, ptr %i.ea, align 2, !range !170
  %i.px = trunc nuw i8 %i.pw to i1
  %i.py = select i1 %i.pv, i1 true, i1 %i.px
  br i1 %i.py, label %bb.ab, label %.thread195

bb.ab:                                            ; preds = %bb.aa
  %.idx.i.i.i.i86 = mul nuw nsw i64 %i.pc, 24
  %i.pz = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.idx.i.i.i.i86 ; 3 uses
  %.idx.i.i.i.i87 = mul nuw nsw i64 %.0214, 24
  %i.qa = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.idx.i.i.i.i87 ; 3 uses
  %i.qb = load <2 x double>, ptr %i.qa, align 8, !tbaa !20
  %i.qc = load <2 x double>, ptr %i.pz, align 8, !tbaa !20
  store <2 x double> %i.qc, ptr %i.qa, align 8, !tbaa !20
  store <2 x double> %i.qb, ptr %i.pz, align 8, !tbaa !20
  %i.qd = getelementptr i8, ptr %i.pz, i64 16     ; 2 uses
  %i.qe = getelementptr i8, ptr %i.qa, i64 16     ; 2 uses
  %i.qf = load double, ptr %i.qd, align 8, !tbaa !33
  %i.qg = load double, ptr %i.qe, align 8, !tbaa !33
  store double %i.qg, ptr %i.qd, align 8, !tbaa !33
  store double %i.qf, ptr %i.qe, align 8, !tbaa !33
  br label %.thread195

_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.thread: ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.thread191
  store i64 %.0214, ptr %i.nf, align 8, !tbaa !722
  br label %.loopexit

.thread195:                                       ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.thread191, %bb.x, %bb.ab, %bb.aa
  %i.qh = add nuw nsw i64 %.0214, 1               ; 2 uses
  %exitcond220.not = icmp eq i64 %i.qh, %.lcssa
  br i1 %exitcond220.not, label %.loopexit, label %.lr.ph216, !llvm.loop !712

.loopexit:                                        ; preds = %.thread195, %._crit_edge, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.thread
  %i.qi = getelementptr inbounds nuw i8, ptr %0, i64 172
  store i8 1, ptr %i.qi, align 4, !tbaa !717
  br label %bb.ac

bb.ac:                                            ; preds = %.loopexit, %bb.c
  ret ptr %0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #17

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal19gemv_dense_selectorILi2ELi1ELb1EE3runINS_9TransposeIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS4_IKNS_5BlockIS6_Li1ELin1ELb0EEEEENS4_INS5_IdLi1ELin1ELi1ELi1ELin1EEEEEEEvRKT_RKT0_RT1_RKNSL_6ScalarE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Eigen::internal::const_blas_data_mapper", align 8 ; 6 uses
  %5 = alloca %"class.Eigen::internal::const_blas_data_mapper.454", align 8 ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !162, !nonnull !141, !align !142 ; 3 uses
  %.sroa.031.0.copyload = load ptr, ptr %1, align 8 ; 6 uses
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.533.0.copyload = load i64, ptr %.sroa.533.0..sroa_idx, align 8 ; 10 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.12.0.copyload = load ptr, ptr %.sroa.12.0..sroa_idx, align 8
  %i.b = load double, ptr %3, align 8, !tbaa !33
  %i.c = icmp ugt i64 %.sroa.533.0.copyload, 2305843009213693951
  br i1 %i.c, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.d, align 8, !tbaa !36
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #28
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit: ; preds = %bb.a
  %i.e = shl nuw i64 %.sroa.533.0.copyload, 3     ; 2 uses
  %i.f = icmp samesign ugt i64 %.sroa.533.0.copyload, 16384 ; 4 uses
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.e) #29 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !36
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #28
  unreachable

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.j = add nuw nsw i64 %i.e, 15
  %i.k = alloca i8, i64 %i.j, align 16            ; 2 uses
  %.not = icmp eq i64 %.sroa.533.0.copyload, 0
  br i1 %.not, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %bb.c, %bb.e
  %i.l = phi ptr [ %i.k, %bb.e ], [ %i.g, %bb.c ] ; 9 uses
  %.in = getelementptr inbounds nuw i8, ptr %.sroa.12.0.copyload, i64 8
  %i.m = load i64, ptr %.in, align 8, !tbaa !31   ; 6 uses
  %min.iters.check = icmp ugt i64 %.sroa.533.0.copyload, 3
  %ident.check.not = icmp eq i64 %i.m, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.ph, label %.lr.ph.i.i.i.i.i.i.i.i.preheader46

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %.sroa.533.0.copyload, 2305843009213693948 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.o = getelementptr inbounds [8 x i8], ptr %.sroa.031.0.copyload, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %wide.load = load <2 x double>, ptr %i.o, align 8, !tbaa !33
  %wide.load45 = load <2 x double>, ptr %i.p, align 8, !tbaa !33
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store <2 x double> %wide.load, ptr %i.n, align 8, !tbaa !33
  store <2 x double> %wide.load45, ptr %i.q, align 8, !tbaa !33
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !723

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.sroa.533.0.copyload, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.preheader46

.lr.ph.i.i.i.i.i.i.i.i.preheader46:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %.sroa.533.0.copyload, 3    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader46, %.lr.ph.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.w, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader46 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader46 ]
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.05.i.i.i.i.i.i.i.i.prol
  %i.t = mul nsw i64 %.05.i.i.i.i.i.i.i.i.prol, %i.m
  %i.u = getelementptr inbounds [8 x i8], ptr %.sroa.031.0.copyload, i64 %i.t
  %i.v = load double, ptr %i.u, align 8, !tbaa !33
  store double %i.v, ptr %i.s, align 8, !tbaa !33
  %i.w = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol, !llvm.loop !724

.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.preheader46
  %.05.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader46 ], [ %i.w, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %i.x = sub nsw i64 %.05.i.i.i.i.i.i.i.i.ph, %.sroa.533.0.copyload
  %i.y = icmp ugt i64 %i.x, -4
  br i1 %i.y, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi i64 [ %i.as, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.05.i.i.i.i.i.i.i.i
  %i.aa = mul nsw i64 %.05.i.i.i.i.i.i.i.i, %i.m
  %i.ab = getelementptr inbounds [8 x i8], ptr %.sroa.031.0.copyload, i64 %i.aa
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !33
  store double %i.ac, ptr %i.z, align 8, !tbaa !33
  %i.ad = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ad
  %i.af = mul nsw i64 %i.ad, %i.m
  %i.ag = getelementptr inbounds [8 x i8], ptr %.sroa.031.0.copyload, i64 %i.af
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !33
  store double %i.ah, ptr %i.ae, align 8, !tbaa !33
  %i.ai = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ai
  %i.ak = mul nsw i64 %i.ai, %i.m
  %i.al = getelementptr inbounds [8 x i8], ptr %.sroa.031.0.copyload, i64 %i.ak
  %i.am = load double, ptr %i.al, align 8, !tbaa !33
  store double %i.am, ptr %i.aj, align 8, !tbaa !33
  %i.an = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.an
  %i.ap = mul nsw i64 %i.an, %i.m
  %i.aq = getelementptr inbounds [8 x i8], ptr %.sroa.031.0.copyload, i64 %i.ap
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !33
  store double %i.ar, ptr %i.ao, align 8, !tbaa !33
  %i.as = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.as, %.sroa.533.0.copyload
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !725

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %bb.e
  %i.at = phi i1 [ false, %bb.e ], [ %i.f, %middle.block ], [ %i.f, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.au = phi ptr [ %i.k, %bb.e ], [ %i.l, %middle.block ], [ %i.l, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.l, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !41
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !31 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.az = load ptr, ptr %i.a, align 8, !tbaa !30
  store ptr %i.az, ptr %4, align 8, !tbaa !157
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ay, ptr %i.ba, align 8, !tbaa !158
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr %i.au, ptr %5, align 8, !tbaa !160
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 1, ptr %i.bb, align 8, !tbaa !161
  %i.bc = load ptr, ptr %2, align 8, !tbaa !727
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !56
  invoke void @_ZN5Eigen8internal29general_matrix_vector_productIldNS0_22const_blas_data_mapperIdlLi1EEELi1ELb0EdNS2_IdlLi0EEELb0ELi0EE3runEllRKS3_RKS4_Pdld(i64 noundef %i.aw, i64 noundef %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %i.bd, i64 noundef 1, double noundef %i.b)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br i1 %i.at, label %bb.g, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

bb.g:                                             ; preds = %bb.f
  call void @free(ptr noundef nonnull %i.au) #27
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit: ; preds = %bb.f, %bb.g
  ret void

bb.h:                                             ; preds = %.loopexit
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br i1 %i.at, label %bb.i, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit18

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef nonnull %i.au) #27
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit18

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit18: ; preds = %bb.h, %bb.i
  resume { ptr, i32 } %i.be
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !41   ; 2 uses
  %i.e = mul nsw i64 %i.d, %i.b                   ; 3 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_ZN5Eigen8internal28conditional_aligned_new_autoIdLb1EEEPT_m.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.e, 2305843009213693951
  br i1 %i.g, label %bb.c, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.h, align 8, !tbaa !36
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #28
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i: ; preds = %bb.b
  %i.i = shl nuw i64 %i.e, 3
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #29 ; 2 uses
end_hunk_1
