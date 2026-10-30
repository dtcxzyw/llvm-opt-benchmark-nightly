Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/direct_delta_mush?download=true
inline.NumInlined: 8135
inline.NumDeleted: 4104
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 65
begin_hunk_0_@_ZN5Eigen9JacobiSVDINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi2EE7computeERKS2_j:bb.a
  %i.ay = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.aw, <2 x double> %i.al) #25, !srcloc !230
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
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !52 ; 2 uses
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
  store i8 1, ptr %i.bp, align 4, !tbaa !225
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 3, ptr %i.bq, align 8, !tbaa !224
  br label %bb.ac

bb.d:                                             ; preds = %_ZN5Eigen9JacobiSVDINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi2EE8allocateEllj.exit
  %i.br = bitcast <2 x i64> %i.ac to <2 x double>
  %i.bs = fcmp oeq double %i.bm, 0.000000e+00
  %.0184 = select i1 %i.bs, double 1.000000e+00, double %i.bm ; 6 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 224
  %.sroa.821.24.vec.insert.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %.0184, i64 0
  %i.bu = shufflevector <2 x double> %.sroa.821.24.vec.insert.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bv = fdiv <2 x double> %i.br, %i.bu          ; 2 uses
  store <2 x double> %i.bv, ptr %i.bt, align 8, !tbaa !56
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.bx = load double, ptr %i.af, align 8, !tbaa !52
  %i.by = fdiv double %i.bx, %.0184
  store double %i.by, ptr %i.bw, align 8, !tbaa !52
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cb = load <2 x double>, ptr %i.ca, align 8, !tbaa !56
  %i.cc = fdiv <2 x double> %i.cb, %i.bu          ; 2 uses
  store <2 x double> %i.cc, ptr %i.bz, align 8, !tbaa !56
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !52
  %i.cg = fdiv double %i.cf, %.0184
  store double %i.cg, ptr %i.cd, align 8, !tbaa !52
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ci = load <2 x double>, ptr %i.aq, align 8, !tbaa !56
  %i.cj = fdiv <2 x double> %i.ci, %i.bu
  store <2 x double> %i.cj, ptr %i.ch, align 8, !tbaa !56
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.cl = load double, ptr %i.bf, align 8, !tbaa !52
  %i.cm = fdiv double %i.cl, %.0184               ; 2 uses
  store double %i.cm, ptr %i.ck, align 8, !tbaa !52
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 175
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !226, !range !71, !noundef !72
  %i.cp = trunc nuw i8 %i.co to i1
  %i.cq = extractelement <2 x double> %i.bv, i64 0
  %i.cr = extractelement <2 x double> %i.cc, i64 1
  br i1 %i.cp, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store double 1.000000e+00, ptr %0, align 8, !tbaa !52
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cs, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.ct, align 8, !tbaa !52
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cu, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.cv, align 8, !tbaa !52
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.cx = load i8, ptr %i.cw, align 8, !tbaa !227, !range !71, !noundef !72
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store double 1.000000e+00, ptr %0, align 8, !tbaa !52
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.da, align 8, !tbaa !52
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.db, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.dc, align 8, !tbaa !52
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 177
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !228, !range !71, !noundef !72
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 72
  store double 1.000000e+00, ptr %i.dg, align 8, !tbaa !52
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dh, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.di, align 8, !tbaa !52
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dj, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.dk, align 8, !tbaa !52
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 178
  %i.dm = load i8, ptr %i.dl, align 2, !tbaa !229, !range !71, !noundef !72
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 72
  store double 1.000000e+00, ptr %i.do, align 8, !tbaa !52
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dp, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.dq, align 8, !tbaa !52
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dr, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.ds, align 8, !tbaa !52
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 6 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !69 ; 5 uses
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
  %i.em = load double, ptr %i.el, align 8, !tbaa !52 ; 5 uses
  %i.en = tail call noundef double @llvm.fabs.f64(double %i.em) ; 2 uses
  %i.eo = fcmp ogt double %i.en, %.sroa.speculated149.us
  br i1 %i.eo, label %._crit_edge225, label %bb.n

._crit_edge225:                                   ; preds = %bb.m
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.056207.us
  %.pre228 = load double, ptr %gep, align 8, !tbaa !52
  br label %bb.o

bb.n:                                             ; preds = %bb.m
  %gep.us = getelementptr [8 x i8], ptr %invariant.gep.us, i64 %.056207.us
  %i.ep = load double, ptr %gep.us, align 8, !tbaa !52 ; 2 uses
  %i.eq = tail call noundef double @llvm.fabs.f64(double %i.ep)
  %i.er = fcmp ogt double %i.eq, %.sroa.speculated149.us
  br i1 %i.er, label %bb.o, label %bb.s

bb.o:                                             ; preds = %._crit_edge225, %bb.n
  %i.es = phi double [ %.pre228, %._crit_edge225 ], [ %i.ep, %bb.n ] ; 2 uses
  %i.et = load double, ptr %i.mk, align 8, !tbaa !52 ; 3 uses
  %i.eu = getelementptr [8 x i8], ptr %i.dt, i64 %.056207.us ; 5 uses
  %i.ev = getelementptr i8, ptr %i.eu, i64 %.idx.i.us ; 2 uses
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !52 ; 4 uses
  %i.ex = fsub double %i.es, %i.em                ; 2 uses
  %i.ey = tail call noundef double @llvm.fabs.f64(double %i.ex)
  %i.ez = fcmp olt double %i.ey, f0x0010000000000000
  br i1 %i.ez, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fa = fadd double %i.et, %i.ew
  %i.fb = fdiv double %i.fa, %i.ex                ; 3 uses
  %i.fc = fmul double %i.fb, %i.fb
  %i.fd = fadd double %i.fc, 1.000000e+00
  %i.fe = tail call double @sqrt(double noundef %i.fd) #24
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
  %i.gh = tail call double @sqrt(double noundef %i.gg) #24 ; 2 uses
  %i.gi = fcmp ogt double %i.ge, 0.000000e+00
  %i.gj = fneg double %i.gh
  %.pn.p.i.i.i.us = select i1 %i.gi, double %i.gh, double %i.gj
  %.pn.i.i.i.us = fadd double %i.ge, %.pn.p.i.i.i.us
  %storemerge.i.i.i.us = fdiv double 1.000000e+00, %.pn.i.i.i.us ; 4 uses
  %i.gk = fcmp ogt double %storemerge.i.i.i.us, 0.000000e+00
  %i.gl = fmul double %storemerge.i.i.i.us, %storemerge.i.i.i.us
  %i.gm = fadd double %i.gl, 1.000000e+00
  %i.gn = tail call double @sqrt(double noundef %i.gm) #24
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
  %i.hi = load double, ptr %i.mj, align 8, !tbaa !52
  %i.hj = load double, ptr %i.eu, align 8, !tbaa !52
  %i.hk = insertelement <2 x double> poison, double %i.hj, i64 0
  %i.hl = shufflevector <2 x double> %i.hk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hm = fmul <2 x double> %i.hd, %i.hl
  %i.hn = fneg <2 x double> %i.hd
  %i.ho = shufflevector <2 x double> %i.hn, <2 x double> %i.hd, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.hp = insertelement <2 x double> poison, double %i.hi, i64 0
  %i.hq = shufflevector <2 x double> %i.hp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ho, <2 x double> %i.hq, <2 x double> %i.hm) ; 2 uses
  %i.hs = extractelement <2 x double> %i.hr, i64 1
  store double %i.hs, ptr %i.mj, align 8, !tbaa !52
  %i.ht = extractelement <2 x double> %i.hr, i64 0
  store double %i.ht, ptr %i.eu, align 8, !tbaa !52
  %i.hu = getelementptr inbounds nuw i8, ptr %i.eu, i64 24 ; 2 uses
  %i.hv = load double, ptr %i.ml, align 8, !tbaa !52
  %i.hw = load double, ptr %i.hu, align 8, !tbaa !52
  %i.hx = insertelement <2 x double> poison, double %i.hw, i64 0
  %i.hy = shufflevector <2 x double> %i.hx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hz = fmul <2 x double> %i.hd, %i.hy
  %i.ia = insertelement <2 x double> poison, double %i.hv, i64 0
  %i.ib = shufflevector <2 x double> %i.ia, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ic = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ho, <2 x double> %i.ib, <2 x double> %i.hz) ; 2 uses
  %i.id = extractelement <2 x double> %i.ic, i64 1
  store double %i.id, ptr %i.ml, align 8, !tbaa !52
  %i.ie = extractelement <2 x double> %i.ic, i64 0
  store double %i.ie, ptr %i.hu, align 8, !tbaa !52
  %i.if = getelementptr inbounds nuw i8, ptr %i.eu, i64 48 ; 2 uses
  %i.ig = load double, ptr %i.mm, align 8, !tbaa !52
  %i.ih = load double, ptr %i.if, align 8, !tbaa !52
  %i.ii = insertelement <2 x double> poison, double %i.ih, i64 0
  %i.ij = shufflevector <2 x double> %i.ii, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ik = fmul <2 x double> %i.hd, %i.ij
  %i.il = insertelement <2 x double> poison, double %i.ig, i64 0
  %i.im = shufflevector <2 x double> %i.il, <2 x double> poison, <2 x i32> zeroinitializer
  %i.in = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ho, <2 x double> %i.im, <2 x double> %i.ik) ; 2 uses
  %i.io = extractelement <2 x double> %i.in, i64 1
  store double %i.io, ptr %i.mm, align 8, !tbaa !52
  %i.ip = extractelement <2 x double> %i.in, i64 0
  store double %i.ip, ptr %i.if, align 8, !tbaa !52
  %i.iq = load i8, ptr %i.dx, align 1, !tbaa !226, !range !71, !noundef !72
  %i.ir = trunc nuw i8 %i.iq to i1
  %i.is = load i8, ptr %i.dy, align 8, !range !71
  %i.it = trunc nuw i8 %i.is to i1
  %i.iu = select i1 %i.ir, i1 true, i1 %i.it
  br i1 %i.iu, label %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi3ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i67.us, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.us

_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi3ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i67.us: ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.us
  %i.iv = getelementptr inbounds i8, ptr %0, i64 %.idx.i.us ; 4 uses
  %i.iw = load double, ptr %i.mn, align 8, !tbaa !52
  %i.ix = load double, ptr %i.iv, align 8, !tbaa !52
  %i.iy = insertelement <2 x double> poison, double %i.ix, i64 0
  %i.iz = shufflevector <2 x double> %i.iy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ja = fmul <2 x double> %i.hd, %i.iz
  %i.jb = fneg <2 x double> %i.hd
  %i.jc = shufflevector <2 x double> %i.jb, <2 x double> %i.hd, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.jd = insertelement <2 x double> poison, double %i.iw, i64 0
  %i.je = shufflevector <2 x double> %i.jd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jc, <2 x double> %i.je, <2 x double> %i.ja) ; 2 uses
  %i.jg = extractelement <2 x double> %i.jf, i64 1
  store double %i.jg, ptr %i.mn, align 8, !tbaa !52
  %i.jh = extractelement <2 x double> %i.jf, i64 0
  store double %i.jh, ptr %i.iv, align 8, !tbaa !52
  %i.ji = getelementptr inbounds nuw i8, ptr %i.iv, i64 8 ; 2 uses
  %i.jj = load double, ptr %i.mo, align 8, !tbaa !52
  %i.jk = load double, ptr %i.ji, align 8, !tbaa !52
  %i.jl = insertelement <2 x double> poison, double %i.jk, i64 0
  %i.jm = shufflevector <2 x double> %i.jl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jn = fmul <2 x double> %i.hd, %i.jm
  %i.jo = insertelement <2 x double> poison, double %i.jj, i64 0
  %i.jp = shufflevector <2 x double> %i.jo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jc, <2 x double> %i.jp, <2 x double> %i.jn) ; 2 uses
  %i.jr = extractelement <2 x double> %i.jq, i64 1
  store double %i.jr, ptr %i.mo, align 8, !tbaa !52
  %i.js = extractelement <2 x double> %i.jq, i64 0
  store double %i.js, ptr %i.ji, align 8, !tbaa !52
  %i.jt = getelementptr inbounds nuw i8, ptr %i.iv, i64 16 ; 2 uses
  %i.ju = load double, ptr %i.mp, align 8, !tbaa !52
  %i.jv = load double, ptr %i.jt, align 8, !tbaa !52
  %i.jw = insertelement <2 x double> poison, double %i.jv, i64 0
  %i.jx = shufflevector <2 x double> %i.jw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jy = fmul <2 x double> %i.hd, %i.jx
  %i.jz = insertelement <2 x double> poison, double %i.ju, i64 0
  %i.ka = shufflevector <2 x double> %i.jz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jc, <2 x double> %i.ka, <2 x double> %i.jy) ; 2 uses
  %i.kc = extractelement <2 x double> %i.kb, i64 1
  store double %i.kc, ptr %i.mp, align 8, !tbaa !52
  %i.kd = extractelement <2 x double> %i.kb, i64 0
  store double %i.kd, ptr %i.jt, align 8, !tbaa !52
  br label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.us

_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.us: ; preds = %_ZN5Eigen8internal19real_2x2_jacobi_svdINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEdlEEvRKT_T1_S7_PNS_14JacobiRotationIT0_EESB_.exit.us, %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi3ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i67.us, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.us
  %i.ke = fcmp oeq double %.sink.i.i.i.us, 1.000000e+00
  %i.kf = fcmp oeq double %.sink19.i.i.i.us, 0.000000e+00
  %or.cond.i.i68.us = and i1 %i.kf, %i.ke
  br i1 %or.cond.i.i68.us, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit77.us, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit72.thread.us

_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit72.thread.us: ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.us
  %i.kg = getelementptr inbounds i8, ptr %i.dt, i64 %.idx.i.us ; 4 uses
  %i.kh = load double, ptr %invariant.gep.us, align 8, !tbaa !52 ; 2 uses
  %i.ki = load double, ptr %i.kg, align 8, !tbaa !52 ; 2 uses
  %i.kj = fmul double %i.ki, %i.gv
  %i.kk = tail call double @llvm.fmuladd.f64(double %.sink.i.i.i.us, double %i.kh, double %i.kj)
  store double %i.kk, ptr %invariant.gep.us, align 8, !tbaa !52
  %i.kl = fmul double %.sink.i.i.i.us, %i.ki
  %i.km = tail call double @llvm.fmuladd.f64(double %.sink19.i.i.i.us, double %i.kh, double %i.kl)
  store double %i.km, ptr %i.kg, align 8, !tbaa !52
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kg, i64 8 ; 2 uses
  %i.ko = load double, ptr %i.mq, align 8, !tbaa !52 ; 2 uses
  %i.kp = load double, ptr %i.kn, align 8, !tbaa !52 ; 2 uses
  %i.kq = fmul double %i.kp, %i.gv
  %i.kr = tail call double @llvm.fmuladd.f64(double %.sink.i.i.i.us, double %i.ko, double %i.kq)
  store double %i.kr, ptr %i.mq, align 8, !tbaa !52
  %i.ks = fmul double %.sink.i.i.i.us, %i.kp
  %i.kt = tail call double @llvm.fmuladd.f64(double %.sink19.i.i.i.us, double %i.ko, double %i.ks)
  store double %i.kt, ptr %i.kn, align 8, !tbaa !52
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kg, i64 16 ; 2 uses
  %i.kv = load double, ptr %i.mr, align 8, !tbaa !52 ; 2 uses
  %i.kw = load double, ptr %i.ku, align 8, !tbaa !52 ; 2 uses
  %i.kx = fmul double %i.kw, %i.gv
  %i.ky = tail call double @llvm.fmuladd.f64(double %.sink.i.i.i.us, double %i.kv, double %i.kx)
  store double %i.ky, ptr %i.mr, align 8, !tbaa !52
  %i.kz = fmul double %.sink.i.i.i.us, %i.kw
  %i.la = tail call double @llvm.fmuladd.f64(double %.sink19.i.i.i.us, double %i.kv, double %i.kz)
  store double %i.la, ptr %i.ku, align 8, !tbaa !52
  %i.lb = load i8, ptr %i.dz, align 1, !tbaa !228, !range !71, !noundef !72
  %i.lc = trunc nuw i8 %i.lb to i1
  %i.ld = load i8, ptr %i.ea, align 2, !range !71
  %i.le = trunc nuw i8 %i.ld to i1
  %i.lf = select i1 %i.lc, i1 true, i1 %i.le
  br i1 %i.lf, label %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi3ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i74.us, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit77.us

_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi3ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i74.us: ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit72.thread.us
  %i.lg = getelementptr inbounds i8, ptr %i.eb, i64 %.idx.i.us ; 4 uses
  %i.lh = load double, ptr %i.ms, align 8, !tbaa !52 ; 2 uses
  %i.li = load double, ptr %i.lg, align 8, !tbaa !52 ; 2 uses
  %i.lj = fmul double %i.li, %i.gv
  %i.lk = tail call double @llvm.fmuladd.f64(double %.sink.i.i.i.us, double %i.lh, double %i.lj)
  store double %i.lk, ptr %i.ms, align 8, !tbaa !52
  %i.ll = fmul double %.sink.i.i.i.us, %i.li
  %i.lm = tail call double @llvm.fmuladd.f64(double %.sink19.i.i.i.us, double %i.lh, double %i.ll)
  store double %i.lm, ptr %i.lg, align 8, !tbaa !52
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lg, i64 8 ; 2 uses
  %i.lo = load double, ptr %i.mt, align 8, !tbaa !52 ; 2 uses
  %i.lp = load double, ptr %i.ln, align 8, !tbaa !52 ; 2 uses
  %i.lq = fmul double %i.lp, %i.gv
  %i.lr = tail call double @llvm.fmuladd.f64(double %.sink.i.i.i.us, double %i.lo, double %i.lq)
  store double %i.lr, ptr %i.mt, align 8, !tbaa !52
  %i.ls = fmul double %.sink.i.i.i.us, %i.lp
  %i.lt = tail call double @llvm.fmuladd.f64(double %.sink19.i.i.i.us, double %i.lo, double %i.ls)
  store double %i.lt, ptr %i.ln, align 8, !tbaa !52
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lg, i64 16 ; 2 uses
  %i.lv = load double, ptr %i.mu, align 8, !tbaa !52 ; 2 uses
  %i.lw = load double, ptr %i.lu, align 8, !tbaa !52 ; 2 uses
  %i.lx = fmul double %i.lw, %i.gv
  %i.ly = tail call double @llvm.fmuladd.f64(double %.sink.i.i.i.us, double %i.lv, double %i.lx)
  store double %i.ly, ptr %i.mu, align 8, !tbaa !52
  %i.lz = fmul double %.sink.i.i.i.us, %i.lw
  %i.ma = tail call double @llvm.fmuladd.f64(double %.sink19.i.i.i.us, double %i.lv, double %i.lz)
  store double %i.ma, ptr %i.lu, align 8, !tbaa !52
  br label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit77.us

_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit77.us: ; preds = %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi3ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i74.us, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit72.thread.us, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.us
  %i.mb = load double, ptr %i.mk, align 8, !tbaa !52
  %i.mc = tail call noundef double @llvm.fabs.f64(double %i.mb) ; 2 uses
  %i.md = load double, ptr %i.ev, align 8, !tbaa !52
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
begin_hunk_1_@_ZN5Eigen8internal23assign_sparse_to_sparseINS_12SparseMatrixIdLi1ElEES3_EEvRT_RKT0_:bb.a
  resume { ptr, i32 } %.pn47.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal15call_assignmentINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEENS_7ProductINS3_IdLi3ELi1ELi0ELi3ELi1EEENS_9TransposeIS7_EELi0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_NS0_9enable_ifIXsr25evaluator_assume_aliasingISF_EE5valueEPvE4typeE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Eigen::Matrix.54", align 16 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.a = load ptr, ptr %1, align 8, !tbaa !646, !nonnull !72, !align !130 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = inttoptr i64 %i.c to ptr                 ; 3 uses
  %i.e = load <2 x double>, ptr %i.a, align 8, !tbaa !56 ; 3 uses
  %i.f = load double, ptr %i.d, align 8, !tbaa !52 ; 2 uses
  %i.g = insertelement <2 x double> poison, double %i.f, i64 0
  %i.h = shufflevector <2 x double> %i.g, <2 x double> poison, <2 x i32> zeroinitializer
  %i.i = fmul <2 x double> %i.e, %i.h
  store <2 x double> %i.i, ptr %4, align 16, !tbaa !56
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = load double, ptr %i.k, align 8, !tbaa !52 ; 3 uses
  %i.m = fmul double %i.f, %i.l
  store double %i.m, ptr %i.j, align 16, !tbaa !52
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.o = getelementptr i8, ptr %i.d, i64 8
  %i.p = load double, ptr %i.o, align 8, !tbaa !52 ; 2 uses
  %i.q = insertelement <2 x double> poison, double %i.p, i64 0
  %i.r = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> zeroinitializer
  %i.s = fmul <2 x double> %i.e, %i.r
  store <2 x double> %i.s, ptr %i.n, align 8, !tbaa !56
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.u = fmul double %i.l, %i.p
  store double %i.u, ptr %i.t, align 8, !tbaa !52
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.w = getelementptr i8, ptr %i.d, i64 16
  %i.x = load double, ptr %i.w, align 8, !tbaa !52 ; 2 uses
  %i.y = insertelement <2 x double> poison, double %i.x, i64 0
  %i.z = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aa = fmul <2 x double> %i.e, %i.z
  store <2 x double> %i.aa, ptr %i.v, align 16, !tbaa !56
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.ac = fmul double %i.l, %i.x
  store double %i.ac, ptr %i.ab, align 16, !tbaa !52
  %i.ad = load ptr, ptr %0, align 8, !tbaa !124   ; 7 uses
  %i.ae = ptrtoint ptr %i.ad to i64               ; 2 uses
  %i.af = and i64 %i.ae, 7
  %.not.i.i.i.i = icmp eq i64 %i.af, 0
  br i1 %.not.i.i.i.i, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !30 ; 5 uses
  %i.ai = icmp sgt i64 %i.ah, 0
  br i1 %i.ai, label %.preheader.lr.ph.i.i.i.i.i, label %_ZN5Eigen8internal24call_assignment_no_aliasINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEENS3_IdLi3ELi3ELi0ELi3ELi3EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit

.preheader.lr.ph.i.i.i.i.i:                       ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !30 ; 2 uses
  %i.al = icmp sgt i64 %i.ak, 0
  br i1 %i.al, label %.preheader.i.i.i.i.i.preheader, label %_ZN5Eigen8internal24call_assignment_no_aliasINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEENS3_IdLi3ELi3ELi0ELi3ELi3EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit

.preheader.i.i.i.i.i.preheader:                   ; preds = %.preheader.lr.ph.i.i.i.i.i
  %i.am = shl nuw i64 %i.ak, 3                    ; 3 uses
  %xtraiter = and i64 %i.ah, 1
  %i.an = icmp eq i64 %i.ah, 1
  br i1 %i.an, label %.preheader.i.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.i.preheader.new

.preheader.i.i.i.i.i.preheader.new:               ; preds = %.preheader.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.ah, 9223372036854775806
  br label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i, %.preheader.i.i.i.i.i.preheader.new
  %.0810.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.preheader.new ], [ %i.ar, %.preheader.i.i.i.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader.i.i.i.i.i.preheader.new ], [ %niter.next.1, %.preheader.i.i.i.i.i ]
  %.idx.i.i.i.i.i.i.i.i = shl i64 %.0810.i.i.i.i.i, 5
  %i.ao = getelementptr i8, ptr %i.ad, i64 %.idx.i.i.i.i.i.i.i.i
  %.idx.i4.i.i.i.i.i.i.i = mul i64 %.0810.i.i.i.i.i, 24
  %invariant.gep.i.i.i.i.i = getelementptr i8, ptr %4, i64 %.idx.i4.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ao, ptr align 16 %invariant.gep.i.i.i.i.i, i64 %i.am, i1 false), !tbaa !52
  %i.ap = or disjoint i64 %.0810.i.i.i.i.i, 1     ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.1 = shl i64 %i.ap, 5
  %i.aq = getelementptr i8, ptr %i.ad, i64 %.idx.i.i.i.i.i.i.i.i.1
  %.idx.i4.i.i.i.i.i.i.i.1 = mul i64 %i.ap, 24
  %invariant.gep.i.i.i.i.i.1 = getelementptr i8, ptr %4, i64 %.idx.i4.i.i.i.i.i.i.i.1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.aq, ptr align 8 %invariant.gep.i.i.i.i.i.1, i64 %i.am, i1 false), !tbaa !52
  %i.ar = add nuw nsw i64 %.0810.i.i.i.i.i, 2     ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5Eigen8internal24call_assignment_no_aliasINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEENS3_IdLi3ELi3ELi0ELi3ELi3EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit.loopexit13.unr-lcssa, label %.preheader.i.i.i.i.i, !llvm.loop !641

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i: ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !30 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !30 ; 2 uses
  %i.aw = icmp sgt i64 %i.av, 0
  br i1 %i.aw, label %.lr.ph58.i.i.i.i, label %_ZN5Eigen8internal24call_assignment_no_aliasINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEENS3_IdLi3ELi3ELi0ELi3ELi3EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit

.lr.ph58.i.i.i.i:                                 ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i
  %i.ax = lshr exact i64 %i.ae, 3
  %i.ay = and i64 %i.ax, 1
  %i.az = tail call i64 @llvm.smin.i64(i64 %i.ay, i64 %i.at)
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.i.i.i.i, %.lr.ph58.i.i.i.i
  %.03457.i.i.i.i = phi i64 [ 0, %.lr.ph58.i.i.i.i ], [ %i.bx, %._crit_edge.i.i.i.i ] ; 7 uses
  %.03556.i.i.i.i = phi i64 [ %i.az, %.lr.ph58.i.i.i.i ], [ %.sroa.speculated.i.i.i.i, %._crit_edge.i.i.i.i ] ; 8 uses
  %i.ba = sub i64 %i.at, %.03556.i.i.i.i          ; 4 uses
  %i.bb = and i64 %i.ba, -2
  %i.bc = add i64 %i.bb, %.03556.i.i.i.i          ; 2 uses
  %i.bd = icmp sgt i64 %.03556.i.i.i.i, 0
  br i1 %i.bd, label %.preheader47.loopexit.i.i.i.i, label %.preheader47.i.i.i.i

.preheader47.loopexit.i.i.i.i:                    ; preds = %bb.c
  %.idx.i4.i.i.i.i.i.i = mul i64 %.03457.i.i.i.i, 24
  %invariant.gep.i.i.i.i = getelementptr i8, ptr %4, i64 %.idx.i4.i.i.i.i.i.i
  %.idx.i.i.i.i.i.i.i = shl i64 %.03457.i.i.i.i, 5
  %i.be = getelementptr i8, ptr %i.ad, i64 %.idx.i.i.i.i.i.i.i
  %i.bf = load double, ptr %invariant.gep.i.i.i.i, align 8, !tbaa !52
  store double %i.bf, ptr %i.be, align 8, !tbaa !52
  br label %.preheader47.i.i.i.i

.preheader47.i.i.i.i:                             ; preds = %.preheader47.loopexit.i.i.i.i, %bb.c
  %i.bg = icmp sgt i64 %i.ba, 1
  br i1 %i.bg, label %.lr.ph51.i.i.i.i, label %.preheader.i.i.i.i

.lr.ph51.i.i.i.i:                                 ; preds = %.preheader47.i.i.i.i
  %.idx.i.i.i37.i.i.i.i = shl i64 %.03457.i.i.i.i, 5
  %.idx.i4.i.i38.i.i.i.i = mul nuw nsw i64 %.03457.i.i.i.i, 24
  %i.bh = getelementptr i8, ptr %i.ad, i64 %.idx.i.i.i37.i.i.i.i
  %invariant.gep.i.i.i = getelementptr i8, ptr %4, i64 %.idx.i4.i.i38.i.i.i.i
  %i.bi = shl i64 %.03556.i.i.i.i, 3              ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bh, i64 %i.bi
  %scevgep5 = getelementptr i8, ptr %invariant.gep.i.i.i, i64 %i.bi
  %i.bj = add nsw i64 %.03556.i.i.i.i, 2
  %smax = tail call i64 @llvm.smax.i64(i64 %i.bc, i64 %i.bj)
  %i.bk = xor i64 %.03556.i.i.i.i, -1
  %i.bl = add i64 %smax, %i.bk
  %i.bm = shl i64 %i.bl, 3
  %i.bn = and i64 %i.bm, -16
  %i.bo = add i64 %i.bn, 16
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %scevgep, ptr align 8 %scevgep5, i64 %i.bo, i1 false), !tbaa !56
  br label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.lr.ph51.i.i.i.i, %.preheader47.i.i.i.i
  %i.bp = icmp slt i64 %i.bc, %i.at
  br i1 %i.bp, label %.lr.ph53.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph53.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i
  %.idx.i.i.i39.i.i.i.i = shl i64 %.03457.i.i.i.i, 5
  %i.bq = getelementptr i8, ptr %i.ad, i64 %.idx.i.i.i39.i.i.i.i
  %.idx.i4.i.i40.i.i.i.i = mul i64 %.03457.i.i.i.i, 24
  %invariant.gep54.i.i.i.i = getelementptr i8, ptr %4, i64 %.idx.i4.i.i40.i.i.i.i
  %i.br = and i64 %i.ba, 2305843009213693950
  %i.bs = add i64 %.03556.i.i.i.i, %i.br
  %i.bt = shl i64 %i.bs, 3                        ; 2 uses
  %scevgep6 = getelementptr i8, ptr %i.bq, i64 %i.bt
  %scevgep7 = getelementptr i8, ptr %invariant.gep54.i.i.i.i, i64 %i.bt
  %i.bu = shl i64 %i.ba, 3
  %i.bv = and i64 %i.bu, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %scevgep6, ptr align 8 %scevgep7, i64 %i.bv, i1 false), !tbaa !52
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph53.i.i.i.i, %.preheader.i.i.i.i
  %i.bw = srem i64 %.03556.i.i.i.i, 2
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %i.at, i64 %i.bw)
  %i.bx = add nuw nsw i64 %.03457.i.i.i.i, 1      ; 2 uses
  %exitcond61.not.i.i.i.i = icmp eq i64 %i.bx, %i.av
  br i1 %exitcond61.not.i.i.i.i, label %_ZN5Eigen8internal24call_assignment_no_aliasINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEENS3_IdLi3ELi3ELi0ELi3ELi3EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit, label %bb.c, !llvm.loop !642

_ZN5Eigen8internal24call_assignment_no_aliasINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEENS3_IdLi3ELi3ELi0ELi3ELi3EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit.loopexit13.unr-lcssa: ; preds = %.preheader.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5Eigen8internal24call_assignment_no_aliasINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEENS3_IdLi3ELi3ELi0ELi3ELi3EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit, label %.preheader.i.i.i.i.i.epil.preheader

.preheader.i.i.i.i.i.epil.preheader:              ; preds = %_ZN5Eigen8internal24call_assignment_no_aliasINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEENS3_IdLi3ELi3ELi0ELi3ELi3EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit.loopexit13.unr-lcssa, %.preheader.i.i.i.i.i.preheader
  %.0810.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.preheader ], [ %i.ar, %_ZN5Eigen8internal24call_assignment_no_aliasINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEENS3_IdLi3ELi3ELi0ELi3ELi3EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit.loopexit13.unr-lcssa ] ; 2 uses
  %lcmp.mod14 = trunc i64 %i.ah to i1
  tail call void @llvm.assume(i1 %lcmp.mod14)
  %.idx.i.i.i.i.i.i.i.i.epil = shl i64 %.0810.i.i.i.i.i.epil.init, 5
  %i.by = getelementptr i8, ptr %i.ad, i64 %.idx.i.i.i.i.i.i.i.i.epil
  %.idx.i4.i.i.i.i.i.i.i.epil = mul i64 %.0810.i.i.i.i.i.epil.init, 24
  %invariant.gep.i.i.i.i.i.epil = getelementptr i8, ptr %4, i64 %.idx.i4.i.i.i.i.i.i.i.epil
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.by, ptr align 8 %invariant.gep.i.i.i.i.i.epil, i64 %i.am, i1 false), !tbaa !52
  br label %_ZN5Eigen8internal24call_assignment_no_aliasINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEENS3_IdLi3ELi3ELi0ELi3ELi3EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit

_ZN5Eigen8internal24call_assignment_no_aliasINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEENS3_IdLi3ELi3ELi0ELi3ELi3EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit: ; preds = %.preheader.i.i.i.i.i.epil.preheader, %_ZN5Eigen8internal24call_assignment_no_aliasINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEENS3_IdLi3ELi3ELi0ELi3ELi3EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit.loopexit13.unr-lcssa, %._crit_edge.i.i.i.i, %bb.b, %.preheader.lr.ph.i.i.i.i.i, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #14

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold noreturn }
attributes #10 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { mustprogress noinline uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nounwind }
attributes #25 = { nounwind memory(none) }
attributes #26 = { nounwind allocsize(0) }
attributes #27 = { noreturn }
attributes #28 = { builtin nounwind }
attributes #29 = { builtin allocsize(0) }
attributes #30 = { nounwind allocsize(1) }

!llvm.module.flags = !{!9, !10, !11}
!llvm.ident = !{!12}
!llvm.errno.tbaa = !{!17}

!0 = distinct !{!0, !53}
!1 = distinct !{!1, !53}
!2 = distinct !{!2, !53}
!3 = distinct !{!3, !53}
!4 = distinct !{!4, !53}
!5 = distinct !{!5, !53}
!6 = distinct !{!6, !53}
!7 = distinct !{!7, !53}
!8 = distinct !{!8, !53}
!9 = !{i32 8, !"PIC Level", i32 2}
!10 = !{i32 7, !"PIE Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 2}
!12 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!13 = !{!"Simple C++ TBAA"}
!14 = !{!"omnipotent char", !13, i64 0}
!15 = !{!"int", !14, i64 0}
!16 = !{!"__libc_errno", !15, i64 0}
!17 = !{!16, !15, i64 0}
!18 = !{!"any pointer", !14, i64 0}
!19 = !{!"p1 double", !18, i64 0}
!20 = !{!"long", !14, i64 0}
!21 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EEE", !19, i64 0, !20, i64 8, !20, i64 16}
!22 = !{!21, !20, i64 8}
!23 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELin1ELi4ELi0EEE", !19, i64 0, !20, i64 8}
!24 = !{!23, !19, i64 0}
!25 = !{!21, !20, i64 16}
!26 = !{!23, !20, i64 8}
!27 = !{!"_ZTSN5Eigen8internal19variable_if_dynamicIlLin1EEE", !20, i64 0}
!28 = !{!"_ZTSN5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELi4ELi0ELin1ELi4EEELin1ELin1ELb0EEELi0EEE", !19, i64 0, !27, i64 8, !27, i64 16}
!29 = !{!28, !19, i64 0}
!30 = !{!27, !20, i64 0}
!31 = !{!"p1 _ZTSN5Eigen6MatrixIdLin1ELi4ELi0ELin1ELi4EEE", !18, i64 0}
!32 = !{!31, !31, i64 0}
!33 = !{!"_ZTSN5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELi4ELi0ELin1ELi4EEELin1ELin1ELb0EEELi1EEE", !28, i64 0}
!34 = !{!"_ZTSN5Eigen8internal15BlockImpl_denseINS_6MatrixIdLin1ELi4ELi0ELin1ELi4EEELin1ELin1ELb0ELb1EEE", !33, i64 0, !31, i64 24, !27, i64 32, !27, i64 40, !20, i64 48}
!35 = !{!34, !20, i64 48}
!36 = !{!21, !19, i64 0}
!37 = !{!"_ZTSN5Eigen8internal30plainobjectbase_evaluator_dataIdLin1EEE", !19, i64 0, !20, i64 8}
!38 = !{!37, !19, i64 0}
!39 = !{!37, !20, i64 8}
!40 = !{!"_ZTSN5Eigen8internal19variable_if_dynamicIlLi1EEE"}
!41 = !{!"_ZTSN5Eigen8internal17mapbase_evaluatorINS_5BlockINS_6MatrixIdLin1ELi4ELi0ELin1ELi4EEELin1ELin1ELb0EEENS3_IdLin1ELin1ELi0ELin1ELi4EEEEE", !19, i64 0, !40, i64 8, !27, i64 16}
!42 = !{!41, !19, i64 0}
!43 = !{!"p1 _ZTSN5Eigen8internal9evaluatorINS_5BlockINS_6MatrixIdLin1ELi4ELi0ELin1ELi4EEELin1ELin1ELb0EEEEE", !18, i64 0}
!44 = !{!43, !43, i64 0}
!45 = !{!"p1 _ZTSN5Eigen8internal9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEE", !18, i64 0}
!46 = !{!45, !45, i64 0}
!47 = !{!"p1 _ZTSN5Eigen8internal9assign_opIddEE", !18, i64 0}
!48 = !{!47, !47, i64 0}
!49 = !{!"p1 _ZTSN5Eigen5BlockINS_6MatrixIdLin1ELi4ELi0ELin1ELi4EEELin1ELin1ELb0EEE", !18, i64 0}
!50 = !{!49, !49, i64 0}
!51 = !{!"double", !14, i64 0}
!52 = !{!51, !51, i64 0}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!"llvm.loop.isvectorized", i32 1}
!55 = !{!"llvm.loop.unroll.runtime.disable"}
!56 = !{!14, !14, i64 0}
!57 = !{!"_ZTSN5Eigen8internal11plain_arrayIdLi9ELi0ELi0EEE", !14, i64 0}
!58 = !{!"_ZTSN5Eigen12DenseStorageIdLi9ELi3ELi3ELi0EEE", !57, i64 0}
!59 = !{!"_ZTSN5Eigen15PlainObjectBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEEE", !58, i64 0}
!60 = !{!"_ZTSN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEE", !59, i64 0}
!61 = !{!"_ZTSN5Eigen8internal11plain_arrayIdLi3ELi0ELi0EEE", !14, i64 0}
!62 = !{!"_ZTSN5Eigen12DenseStorageIdLi3ELi3ELi1ELi0EEE", !61, i64 0}
!63 = !{!"_ZTSN5Eigen15PlainObjectBaseINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEE", !62, i64 0}
!64 = !{!"_ZTSN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEE", !63, i64 0}
!65 = !{!"_ZTSN5Eigen15ComputationInfoE", !14, i64 0}
!66 = !{!"bool", !14, i64 0}
!67 = !{!"_ZTSN5Eigen7SVDBaseINS_9JacobiSVDINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi2EEEEE", !60, i64 0, !60, i64 72, !64, i64 144, !65, i64 168, !66, i64 172, !66, i64 173, !66, i64 174, !66, i64 175, !66, i64 176, !66, i64 177, !66, i64 178, !15, i64 180, !20, i64 184, !20, i64 192, !20, i64 200, !20, i64 208, !51, i64 216}
!68 = !{!67, !15, i64 180}
!69 = !{!67, !20, i64 208}
!70 = !{!"llvm.loop.unroll.disable"}
!71 = !{i8 0, i8 2}
!72 = !{}
!73 = !{!"_ZTSN5Eigen16SparseMatrixBaseINS_12SparseMatrixIdLi0EiEEEE", !66, i64 0}
!74 = !{!73, !66, i64 0}
!75 = !{!"_ZTSN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEE", !73, i64 0}
!76 = !{!"p1 int", !18, i64 0}
!77 = !{!"_ZTSN5Eigen8internal17CompressedStorageIdiEE", !19, i64 0, !76, i64 8, !20, i64 16, !20, i64 24}
!78 = !{!"_ZTSN5Eigen12SparseMatrixIdLi0EiEE", !75, i64 0, !20, i64 8, !20, i64 16, !76, i64 24, !76, i64 32, !77, i64 40}
!79 = !{!78, !20, i64 16}
!80 = !{!78, !76, i64 24}
!81 = !{!"vtable pointer", !13, i64 0}
!82 = !{!81, !81, i64 0}
!83 = !{!78, !20, i64 8}
!84 = !{!"_ZTSN5Eigen16SparseMatrixBaseINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_12SparseMatrixIdLi0EiEEEEEE", !66, i64 0}
!85 = !{!84, !66, i64 0}
!86 = !{!"p1 _ZTSN5Eigen12SparseMatrixIdLi0EiEE", !18, i64 0}
!87 = !{!86, !86, i64 0}
!88 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EEE", !19, i64 0, !20, i64 8}
!89 = !{!88, !20, i64 8}
!90 = !{!88, !19, i64 0}
!91 = !{!"_ZTSN5Eigen16SparseMatrixBaseINS_10SparseViewINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEE", !66, i64 0}
!92 = !{!91, !66, i64 0}
!93 = !{!"p1 _ZTSN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEE", !18, i64 0}
!94 = !{!93, !93, i64 0}
!95 = !{!"_ZTSN5Eigen16SparseMatrixBaseINS_7ProductINS_12SparseMatrixIdLi0EiEES3_Li2EEEEE", !66, i64 0}
!96 = !{!95, !66, i64 0}
!97 = !{!"_ZTSN5Eigen16SparseSolverBaseINS_14SimplicialLDLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEEEE", !66, i64 0}
!98 = !{!97, !66, i64 0}
!99 = !{!"_ZTSN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEE", !88, i64 0}
!100 = !{!"_ZTSN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEE", !99, i64 0}
!101 = !{!"_ZTSN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EEE", !76, i64 0, !20, i64 8}
!102 = !{!"_ZTSN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEE", !101, i64 0}
!103 = !{!"_ZTSN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEE", !102, i64 0}
!104 = !{!"_ZTSN5Eigen17PermutationMatrixILin1ELin1EiEE", !103, i64 0}
!105 = !{!"_ZTSN5Eigen22SimplicialCholeskyBaseINS_14SimplicialLDLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEEEE", !97, i64 0, !65, i64 4, !66, i64 8, !66, i64 9, !78, i64 16, !100, i64 88, !103, i64 104, !103, i64 120, !104, i64 136, !104, i64 152, !51, i64 168, !51, i64 176}
!106 = !{!105, !65, i64 4}
!107 = !{!105, !66, i64 8}
!108 = !{!105, !66, i64 9}
!109 = !{!105, !51, i64 176}
!110 = !{!"_ZTSN5Eigen16SparseMatrixBaseINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS_12SparseMatrixIdLi0EiEEKNS1_INS2_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES7_EEEEEE", !66, i64 0}
!111 = !{!110, !66, i64 0}
!112 = !{!20, !20, i64 0}
!113 = !{!"_ZTSN5Eigen8internal18scalar_constant_opIdEE", !51, i64 0}
!114 = !{!113, !51, i64 0}
!115 = !{!78, !76, i64 32}
!116 = !{!77, !19, i64 0}
!117 = !{!77, !76, i64 8}
!118 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELin1ELi10ELi0EEE", !19, i64 0, !20, i64 8}
!119 = !{!118, !19, i64 0}
!120 = !{!118, !20, i64 8}
!121 = !{!"_ZTSN5Eigen16SparseMatrixBaseINS_9TransposeIKNS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS_12SparseMatrixIdLi0EiEEKNS2_INS3_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS3_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES8_EEEEEEEE", !66, i64 0}
!122 = !{!121, !66, i64 0}
!123 = !{!"_ZTSN5Eigen7MapBaseINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELi0EEE", !19, i64 0, !27, i64 8, !27, i64 16}
!124 = !{!123, !19, i64 0}
!125 = !{!15, !15, i64 0}
!126 = !{!"_ZTSN5Eigen16CwiseUnaryOpImplINS_8internal18scalar_opposite_opIdEEKNS_12SparseMatrixIdLi0EiEENS_6SparseEEE", !84, i64 0}
!127 = !{!"_ZTSN5Eigen8internal18scalar_opposite_opIdEE"}
!128 = !{!"_ZTSN5Eigen12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_12SparseMatrixIdLi0EiEEEE", !126, i64 0, !86, i64 8, !127, i64 16}
!129 = !{!128, !86, i64 8}
!130 = !{i64 8}
!131 = !{!101, !76, i64 0}
!132 = !{!77, !20, i64 16}
!133 = !{!77, !20, i64 24}
!134 = !{!19, !19, i64 0}
!135 = !{!76, !76, i64 0}
!136 = !{!18, !18, i64 0}
!137 = !{!"p1 _ZTSN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEE", !18, i64 0}
!138 = !{!"_ZTSN5Eigen15DiagonalWrapperIKNS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEE", !137, i64 0}
!139 = !{!138, !137, i64 0}
!140 = !{!"_ZTSN5Eigen10SparseViewINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEE", !91, i64 0, !93, i64 8, !51, i64 16, !51, i64 24}
!141 = !{!140, !93, i64 8}
!142 = !{!140, !51, i64 16}
!143 = !{!140, !51, i64 24}
end_hunk_1
