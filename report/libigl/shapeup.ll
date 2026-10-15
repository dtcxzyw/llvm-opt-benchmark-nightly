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
  %.056207.us = phi i64 [ 0, %.preheader201.us ], [ %i.me, %bb.s ] ; 5 uses
  %.2206.us = phi i1 [ %.1209.us, %.preheader201.us ], [ %.3.us, %bb.s ]
  %.2187205.us = phi double [ %.1186208.us, %.preheader201.us ], [ %.3188.us, %bb.s ] ; 4 uses
  %i.ej = fmul double %.2187205.us, f0x3CC0000000000000 ; 2 uses
  %i.ek = fcmp ogt double %i.ej, f0x0010000000000000
  %.sroa.speculated149.us = select i1 %i.ek, double %i.ej, double f0x0010000000000000 ; 2 uses
  %.idx.i.us = mul i64 %.056207.us, 24            ; 5 uses
  %i.el = getelementptr i8, ptr %i.mg, i64 %.idx.i.us
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
  %i.et = load double, ptr %i.mh, align 8, !tbaa !33 ; 3 uses
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
  %sqrt.i.us = tail call double @sqrt(double noundef %i.fd) #27
  %i.fe = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.fb, i64 1
  %i.ff = insertelement <2 x double> poison, double %sqrt.i.us, i64 0
  %i.fg = shufflevector <2 x double> %i.ff, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fh = fdiv <2 x double> %i.fe, %i.fg
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.fi = phi <2 x double> [ %i.fh, %bb.p ], [ <double 0.000000e+00, double 1.000000e+00>, %bb.o ] ; 6 uses
  %i.fj = extractelement <2 x double> %i.fi, i64 1 ; 2 uses
  %i.fk = fcmp oeq double %i.fj, 1.000000e+00
  %i.fl = extractelement <2 x double> %i.fi, i64 0 ; 2 uses
  %i.fm = fcmp oeq double %i.fl, 0.000000e+00
  %or.cond.i.i.i.us = and i1 %i.fm, %i.fk
  br i1 %or.cond.i.i.i.us, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.i.us, label %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi2ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i.i.us

_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi2ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i.i.us: ; preds = %bb.q
  %i.fn = fneg double %i.fl
  %i.fo = insertelement <2 x double> poison, double %i.es, i64 0
  %i.fp = insertelement <2 x double> %i.fo, double %i.ew, i64 1
  %i.fq = shufflevector <2 x double> %i.fi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fr = fmul <2 x double> %i.fp, %i.fq
  %i.fs = shufflevector <2 x double> %i.fi, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ft = insertelement <2 x double> poison, double %i.et, i64 0
  %i.fu = insertelement <2 x double> %i.ft, double %i.em, i64 1
  %i.fv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fs, <2 x double> %i.fu, <2 x double> %i.fr) ; 2 uses
  %i.fw = fmul double %i.ew, %i.fj
  %i.fx = tail call double @llvm.fmuladd.f64(double %i.fn, double %i.em, double %i.fw)
  %i.fy = extractelement <2 x double> %i.fv, i64 1 ; 2 uses
  %.pre232 = tail call noundef double @llvm.fabs.f64(double %i.fy)
  %i.fz = extractelement <2 x double> %i.fv, i64 0
  br label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.i.us

_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.i.us: ; preds = %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi2ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i.i.us, %bb.q
  %.pre-phi = phi double [ %.pre232, %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi2ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i.i.us ], [ %i.en, %bb.q ] ; 2 uses
  %.sroa.13.0.i.us = phi double [ %i.fx, %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi2ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i.i.us ], [ %i.ew, %bb.q ]
  %.sroa.9.0.i.us = phi double [ %i.fy, %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi2ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i.i.us ], [ %i.em, %bb.q ]
  %.sroa.0.0.i.us = phi double [ %i.fz, %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi2ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i.i.us ], [ %i.et, %bb.q ]
  %i.ga = fmul double %.pre-phi, 2.000000e+00     ; 2 uses
  %i.gb = fcmp uge double %i.ga, f0x0010000000000000
  br i1 %i.gb, label %bb.r, label %_ZN5Eigen8internal19real_2x2_jacobi_svdINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEdlEEvRKT_T1_S7_PNS_14JacobiRotationIT0_EESB_.exit.us

bb.r:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.i.us
  %i.gc = fsub double %.sroa.0.0.i.us, %.sroa.13.0.i.us
  %i.gd = fdiv double %i.gc, %i.ga                ; 4 uses
  %i.ge = fmul double %i.gd, %i.gd
  %i.gf = fadd double %i.ge, 1.000000e+00
  %sqrt19.i.i.i.us = tail call double @sqrt(double noundef %i.gf) #27 ; 2 uses
  %i.gg = fcmp ogt double %i.gd, 0.000000e+00
  %i.gh = fneg double %sqrt19.i.i.i.us
  %.pn.p.i.i.i.us = select i1 %i.gg, double %sqrt19.i.i.i.us, double %i.gh
  %.pn.i.i.i.us = fadd double %i.gd, %.pn.p.i.i.i.us
  %storemerge.i.i.i.us = fdiv double 1.000000e+00, %.pn.i.i.i.us ; 4 uses
  %i.gi = fcmp ogt double %storemerge.i.i.i.us, 0.000000e+00
  %i.gj = fmul double %storemerge.i.i.i.us, %storemerge.i.i.i.us
  %i.gk = fadd double %i.gj, 1.000000e+00
  %sqrt.i.i.i.us = tail call double @sqrt(double noundef %i.gk) #27
  %i.gl = fdiv double 1.000000e+00, %sqrt.i.i.i.us ; 2 uses
  %i.gm = fdiv double %.sroa.9.0.i.us, %.pre-phi  ; 2 uses
  %i.gn = fneg double %i.gm
  %i.go = select i1 %i.gi, double %i.gn, double %i.gm
  %i.gp = tail call noundef double @llvm.fabs.f64(double %storemerge.i.i.i.us)
  %i.gq = fmul double %i.gp, %i.go
  %i.gr = fmul double %i.gl, %i.gq
  br label %_ZN5Eigen8internal19real_2x2_jacobi_svdINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEdlEEvRKT_T1_S7_PNS_14JacobiRotationIT0_EESB_.exit.us

_ZN5Eigen8internal19real_2x2_jacobi_svdINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEdlEEvRKT_T1_S7_PNS_14JacobiRotationIT0_EESB_.exit.us: ; preds = %bb.r, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.i.us
  %.sink20.i.i.i.us = phi double [ %i.gr, %bb.r ], [ 0.000000e+00, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.i.us ] ; 9 uses
  %.sink.i.i.i.us = phi double [ %i.gl, %bb.r ], [ 1.000000e+00, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.i.us ] ; 15 uses
  %i.gs = fneg double %.sink20.i.i.i.us           ; 7 uses
  %i.gt = shufflevector <2 x double> %i.fi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gu = insertelement <2 x double> poison, double %.sink20.i.i.i.us, i64 0
  %i.gv = insertelement <2 x double> %i.gu, double %.sink.i.i.i.us, i64 1
  %i.gw = fmul <2 x double> %i.gt, %i.gv
  %i.gx = shufflevector <2 x double> %i.fi, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.gy = insertelement <2 x double> poison, double %.sink.i.i.i.us, i64 0
  %i.gz = insertelement <2 x double> %i.gy, double %i.gs, i64 1
  %i.ha = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gx, <2 x double> %i.gz, <2 x double> %i.gw) ; 12 uses
  %i.hb = extractelement <2 x double> %i.ha, i64 0
  %i.hc = fcmp une double %i.hb, 1.000000e+00
  %i.hd = extractelement <2 x double> %i.ha, i64 1
  %i.he = fcmp une double %i.hd, 0.000000e+00
  %or.cond.i.i.us.not244 = or i1 %i.hc, %i.he
  br i1 %or.cond.i.i.us.not244, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.us, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.us

_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.us: ; preds = %_ZN5Eigen8internal19real_2x2_jacobi_svdINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEdlEEvRKT_T1_S7_PNS_14JacobiRotationIT0_EESB_.exit.us
  %i.hf = load double, ptr %i.mg, align 8, !tbaa !33
  %i.hg = load double, ptr %i.eu, align 8, !tbaa !33
  %i.hh = insertelement <2 x double> poison, double %i.hg, i64 0
  %i.hi = shufflevector <2 x double> %i.hh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hj = fmul <2 x double> %i.ha, %i.hi
  %i.hk = fneg <2 x double> %i.ha
  %i.hl = shufflevector <2 x double> %i.hk, <2 x double> %i.ha, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.hm = insertelement <2 x double> poison, double %i.hf, i64 0
  %i.hn = shufflevector <2 x double> %i.hm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ho = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hl, <2 x double> %i.hn, <2 x double> %i.hj) ; 2 uses
  %i.hp = extractelement <2 x double> %i.ho, i64 1
  store double %i.hp, ptr %i.mg, align 8, !tbaa !33
  %i.hq = extractelement <2 x double> %i.ho, i64 0
  store double %i.hq, ptr %i.eu, align 8, !tbaa !33
  %i.hr = getelementptr inbounds nuw i8, ptr %i.eu, i64 24 ; 2 uses
  %i.hs = load double, ptr %i.mi, align 8, !tbaa !33
  %i.ht = load double, ptr %i.hr, align 8, !tbaa !33
  %i.hu = insertelement <2 x double> poison, double %i.ht, i64 0
  %i.hv = shufflevector <2 x double> %i.hu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hw = fmul <2 x double> %i.ha, %i.hv
  %i.hx = insertelement <2 x double> poison, double %i.hs, i64 0
  %i.hy = shufflevector <2 x double> %i.hx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hl, <2 x double> %i.hy, <2 x double> %i.hw) ; 2 uses
  %i.ia = extractelement <2 x double> %i.hz, i64 1
  store double %i.ia, ptr %i.mi, align 8, !tbaa !33
  %i.ib = extractelement <2 x double> %i.hz, i64 0
  store double %i.ib, ptr %i.hr, align 8, !tbaa !33
  %i.ic = getelementptr inbounds nuw i8, ptr %i.eu, i64 48 ; 2 uses
  %i.id = load double, ptr %i.mj, align 8, !tbaa !33
  %i.ie = load double, ptr %i.ic, align 8, !tbaa !33
  %i.if = insertelement <2 x double> poison, double %i.ie, i64 0
  %i.ig = shufflevector <2 x double> %i.if, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ih = fmul <2 x double> %i.ha, %i.ig
  %i.ii = insertelement <2 x double> poison, double %i.id, i64 0
  %i.ij = shufflevector <2 x double> %i.ii, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ik = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hl, <2 x double> %i.ij, <2 x double> %i.ih) ; 2 uses
  %i.il = extractelement <2 x double> %i.ik, i64 1
  store double %i.il, ptr %i.mj, align 8, !tbaa !33
  %i.im = extractelement <2 x double> %i.ik, i64 0
  store double %i.im, ptr %i.ic, align 8, !tbaa !33
  %i.in = load i8, ptr %i.dx, align 1, !tbaa !718, !range !170, !noundef !141
  %i.io = trunc nuw i8 %i.in to i1
  %i.ip = load i8, ptr %i.dy, align 8, !range !170
  %i.iq = trunc nuw i8 %i.ip to i1
  %i.ir = select i1 %i.io, i1 true, i1 %i.iq
  br i1 %i.ir, label %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi3ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i67.us, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.us

_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi3ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i67.us: ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.us
  %i.is = getelementptr inbounds i8, ptr %0, i64 %.idx.i.us ; 4 uses
  %i.it = load double, ptr %i.mk, align 8, !tbaa !33
  %i.iu = load double, ptr %i.is, align 8, !tbaa !33
  %i.iv = insertelement <2 x double> poison, double %i.iu, i64 0
  %i.iw = shufflevector <2 x double> %i.iv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ix = fmul <2 x double> %i.ha, %i.iw
  %i.iy = fneg <2 x double> %i.ha
  %i.iz = shufflevector <2 x double> %i.iy, <2 x double> %i.ha, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.ja = insertelement <2 x double> poison, double %i.it, i64 0
  %i.jb = shufflevector <2 x double> %i.ja, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iz, <2 x double> %i.jb, <2 x double> %i.ix) ; 2 uses
  %i.jd = extractelement <2 x double> %i.jc, i64 1
  store double %i.jd, ptr %i.mk, align 8, !tbaa !33
  %i.je = extractelement <2 x double> %i.jc, i64 0
  store double %i.je, ptr %i.is, align 8, !tbaa !33
  %i.jf = getelementptr inbounds nuw i8, ptr %i.is, i64 8 ; 2 uses
  %i.jg = load double, ptr %i.ml, align 8, !tbaa !33
  %i.jh = load double, ptr %i.jf, align 8, !tbaa !33
  %i.ji = insertelement <2 x double> poison, double %i.jh, i64 0
  %i.jj = shufflevector <2 x double> %i.ji, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jk = fmul <2 x double> %i.ha, %i.jj
  %i.jl = insertelement <2 x double> poison, double %i.jg, i64 0
  %i.jm = shufflevector <2 x double> %i.jl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iz, <2 x double> %i.jm, <2 x double> %i.jk) ; 2 uses
  %i.jo = extractelement <2 x double> %i.jn, i64 1
  store double %i.jo, ptr %i.ml, align 8, !tbaa !33
  %i.jp = extractelement <2 x double> %i.jn, i64 0
  store double %i.jp, ptr %i.jf, align 8, !tbaa !33
  %i.jq = getelementptr inbounds nuw i8, ptr %i.is, i64 16 ; 2 uses
  %i.jr = load double, ptr %i.mm, align 8, !tbaa !33
  %i.js = load double, ptr %i.jq, align 8, !tbaa !33
  %i.jt = insertelement <2 x double> poison, double %i.js, i64 0
  %i.ju = shufflevector <2 x double> %i.jt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jv = fmul <2 x double> %i.ha, %i.ju
  %i.jw = insertelement <2 x double> poison, double %i.jr, i64 0
  %i.jx = shufflevector <2 x double> %i.jw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iz, <2 x double> %i.jx, <2 x double> %i.jv) ; 2 uses
  %i.jz = extractelement <2 x double> %i.jy, i64 1
  store double %i.jz, ptr %i.mm, align 8, !tbaa !33
  %i.ka = extractelement <2 x double> %i.jy, i64 0
  store double %i.ka, ptr %i.jq, align 8, !tbaa !33
  br label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.us

_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.us: ; preds = %_ZN5Eigen8internal19real_2x2_jacobi_svdINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEdlEEvRKT_T1_S7_PNS_14JacobiRotationIT0_EESB_.exit.us, %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi3ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i67.us, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.us
  %i.kb = fcmp oeq double %.sink.i.i.i.us, 1.000000e+00
  %i.kc = fcmp oeq double %.sink20.i.i.i.us, 0.000000e+00
  %or.cond.i.i68.us = and i1 %i.kc, %i.kb
  br i1 %or.cond.i.i68.us, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit77.us, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit72.thread.us

_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit72.thread.us: ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.us
  %i.kd = getelementptr inbounds i8, ptr %i.dt, i64 %.idx.i.us ; 4 uses
  %i.ke = load double, ptr %invariant.gep.us, align 8, !tbaa !33 ; 2 uses
  %i.kf = load double, ptr %i.kd, align 8, !tbaa !33 ; 2 uses
  %i.kg = fmul double %i.kf, %i.gs
  %i.kh = tail call double @llvm.fmuladd.f64(double %.sink.i.i.i.us, double %i.ke, double %i.kg)
  store double %i.kh, ptr %invariant.gep.us, align 8, !tbaa !33
  %i.ki = fmul double %.sink.i.i.i.us, %i.kf
  %i.kj = tail call double @llvm.fmuladd.f64(double %.sink20.i.i.i.us, double %i.ke, double %i.ki)
  store double %i.kj, ptr %i.kd, align 8, !tbaa !33
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kd, i64 8 ; 2 uses
  %i.kl = load double, ptr %i.mn, align 8, !tbaa !33 ; 2 uses
  %i.km = load double, ptr %i.kk, align 8, !tbaa !33 ; 2 uses
  %i.kn = fmul double %i.km, %i.gs
  %i.ko = tail call double @llvm.fmuladd.f64(double %.sink.i.i.i.us, double %i.kl, double %i.kn)
  store double %i.ko, ptr %i.mn, align 8, !tbaa !33
  %i.kp = fmul double %.sink.i.i.i.us, %i.km
  %i.kq = tail call double @llvm.fmuladd.f64(double %.sink20.i.i.i.us, double %i.kl, double %i.kp)
  store double %i.kq, ptr %i.kk, align 8, !tbaa !33
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kd, i64 16 ; 2 uses
  %i.ks = load double, ptr %i.mo, align 8, !tbaa !33 ; 2 uses
  %i.kt = load double, ptr %i.kr, align 8, !tbaa !33 ; 2 uses
  %i.ku = fmul double %i.kt, %i.gs
  %i.kv = tail call double @llvm.fmuladd.f64(double %.sink.i.i.i.us, double %i.ks, double %i.ku)
  store double %i.kv, ptr %i.mo, align 8, !tbaa !33
  %i.kw = fmul double %.sink.i.i.i.us, %i.kt
  %i.kx = tail call double @llvm.fmuladd.f64(double %.sink20.i.i.i.us, double %i.ks, double %i.kw)
  store double %i.kx, ptr %i.kr, align 8, !tbaa !33
  %i.ky = load i8, ptr %i.dz, align 1, !tbaa !720, !range !170, !noundef !141
  %i.kz = trunc nuw i8 %i.ky to i1
  %i.la = load i8, ptr %i.ea, align 2, !range !170
  %i.lb = trunc nuw i8 %i.la to i1
  %i.lc = select i1 %i.kz, i1 true, i1 %i.lb
  br i1 %i.lc, label %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi3ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i74.us, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit77.us

_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi3ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i74.us: ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit72.thread.us
  %i.ld = getelementptr inbounds i8, ptr %i.eb, i64 %.idx.i.us ; 4 uses
  %i.le = load double, ptr %i.mp, align 8, !tbaa !33 ; 2 uses
  %i.lf = load double, ptr %i.ld, align 8, !tbaa !33 ; 2 uses
  %i.lg = fmul double %i.lf, %i.gs
  %i.lh = tail call double @llvm.fmuladd.f64(double %.sink.i.i.i.us, double %i.le, double %i.lg)
  store double %i.lh, ptr %i.mp, align 8, !tbaa !33
  %i.li = fmul double %.sink.i.i.i.us, %i.lf
  %i.lj = tail call double @llvm.fmuladd.f64(double %.sink20.i.i.i.us, double %i.le, double %i.li)
  store double %i.lj, ptr %i.ld, align 8, !tbaa !33
  %i.lk = getelementptr inbounds nuw i8, ptr %i.ld, i64 8 ; 2 uses
  %i.ll = load double, ptr %i.mq, align 8, !tbaa !33 ; 2 uses
  %i.lm = load double, ptr %i.lk, align 8, !tbaa !33 ; 2 uses
  %i.ln = fmul double %i.lm, %i.gs
  %i.lo = tail call double @llvm.fmuladd.f64(double %.sink.i.i.i.us, double %i.ll, double %i.ln)
  store double %i.lo, ptr %i.mq, align 8, !tbaa !33
  %i.lp = fmul double %.sink.i.i.i.us, %i.lm
  %i.lq = tail call double @llvm.fmuladd.f64(double %.sink20.i.i.i.us, double %i.ll, double %i.lp)
  store double %i.lq, ptr %i.lk, align 8, !tbaa !33
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ld, i64 16 ; 2 uses
  %i.ls = load double, ptr %i.mr, align 8, !tbaa !33 ; 2 uses
  %i.lt = load double, ptr %i.lr, align 8, !tbaa !33 ; 2 uses
  %i.lu = fmul double %i.lt, %i.gs
  %i.lv = tail call double @llvm.fmuladd.f64(double %.sink.i.i.i.us, double %i.ls, double %i.lu)
  store double %i.lv, ptr %i.mr, align 8, !tbaa !33
  %i.lw = fmul double %.sink.i.i.i.us, %i.lt
  %i.lx = tail call double @llvm.fmuladd.f64(double %.sink20.i.i.i.us, double %i.ls, double %i.lw)
  store double %i.lx, ptr %i.lr, align 8, !tbaa !33
  br label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit77.us

_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit77.us: ; preds = %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi3ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i74.us, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit72.thread.us, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.us
  %i.ly = load double, ptr %i.mh, align 8, !tbaa !33
  %i.lz = tail call noundef double @llvm.fabs.f64(double %i.ly) ; 2 uses
  %i.ma = load double, ptr %i.ev, align 8, !tbaa !33
  %i.mb = tail call noundef double @llvm.fabs.f64(double %i.ma) ; 2 uses
  %i.mc = fcmp olt double %i.lz, %i.mb
  %.sroa.speculated.us = select i1 %i.mc, double %i.mb, double %i.lz ; 2 uses
  %i.md = fcmp olt double %.2187205.us, %.sroa.speculated.us
  %.sroa.speculated135.us = select i1 %i.md, double %.sroa.speculated.us, double %.2187205.us
  br label %bb.s

bb.s:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit77.us, %bb.n
  %.3188.us = phi double [ %.sroa.speculated135.us, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit77.us ], [ %.2187205.us, %bb.n ] ; 2 uses
  %.3.us = phi i1 [ false, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit77.us ], [ %.2206.us, %bb.n ] ; 3 uses
  %i.me = add nuw nsw i64 %.056207.us, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.me, %.057210.us
end_hunk_0
begin_hunk_1_@_ZN5Eigen9JacobiSVDINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi2EE7computeERKS2_j:bb.a
  %i.nd = icmp sgt i64 %.lcssa, 0
  br i1 %i.nd, label %.lr.ph216.preheader, label %.loopexit

.lr.ph216.preheader:                              ; preds = %._crit_edge
  %i.ne = add nsw i64 %.lcssa, -2
  br label %.lr.ph216

bb.u:                                             ; preds = %.lr.ph, %bb.w
  %i.nf = phi i64 [ %i.dv, %.lr.ph ], [ %i.nx, %bb.w ]
  %i.ng = phi i8 [ %.pre230, %.lr.ph ], [ %i.ny, %bb.w ] ; 2 uses
  %.055213 = phi i64 [ 0, %.lr.ph ], [ %i.nz, %bb.w ] ; 4 uses
  %i.nh = getelementptr [8 x i8], ptr %i.dt, i64 %.055213
  %.idx.i82 = mul i64 %.055213, 24                ; 2 uses
  %i.ni = getelementptr i8, ptr %i.nh, i64 %.idx.i82
  %i.nj = load double, ptr %i.ni, align 8, !tbaa !33 ; 2 uses
  %i.nk = tail call noundef double @llvm.fabs.f64(double %i.nj)
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %i.mt, i64 %.055213
  store double %i.nk, ptr %i.nl, align 8, !tbaa !33
  %i.nm = trunc nuw i8 %i.ng to i1
  %i.nn = load i8, ptr %i.dy, align 8, !range !170
  %i.no = trunc nuw i8 %i.nn to i1
  %i.np = select i1 %i.nm, i1 true, i1 %i.no
  %i.nq = fcmp olt double %i.nj, 0.000000e+00
  %or.cond = and i1 %i.nq, %i.np
  br i1 %or.cond, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.nr = getelementptr inbounds i8, ptr %0, i64 %.idx.i82 ; 3 uses
  %i.ns = load <2 x double>, ptr %i.nr, align 8, !tbaa !20
  %i.nt = fneg <2 x double> %i.ns
  store <2 x double> %i.nt, ptr %i.nr, align 8, !tbaa !20
  %i.nu = getelementptr i8, ptr %i.nr, i64 16     ; 2 uses
  %i.nv = load double, ptr %i.nu, align 8, !tbaa !33
  %i.nw = fneg double %i.nv
  store double %i.nw, ptr %i.nu, align 8, !tbaa !33
  %.pre229 = load i8, ptr %i.dx, align 1, !tbaa !718, !range !170
  %.pre231 = load i64, ptr %i.du, align 8, !tbaa !54
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.nx = phi i64 [ %.pre231, %bb.v ], [ %i.nf, %bb.u ] ; 3 uses
  %i.ny = phi i8 [ %.pre229, %bb.v ], [ %i.ng, %bb.u ]
  %i.nz = add nuw nsw i64 %.055213, 1             ; 2 uses
  %i.oa = icmp slt i64 %i.nz, %i.nx
  br i1 %i.oa, label %bb.u, label %._crit_edge, !llvm.loop !710

.lr.ph216:                                        ; preds = %.lr.ph216.preheader, %.thread195
  %.0214 = phi i64 [ %i.qe, %.thread195 ], [ 0, %.lr.ph216.preheader ] ; 9 uses
  %i.ob = xor i64 %.0214, -1
  %i.oc = add nsw i64 %.lcssa, %i.ob              ; 3 uses
  %i.od = sub nuw nsw i64 %.lcssa, %.0214         ; 2 uses
  %i.oe = sub nsw i64 3, %i.od
  %i.of = getelementptr inbounds [8 x i8], ptr %i.mu, i64 %i.oe ; 4 uses
  %i.og = load double, ptr %i.of, align 8, !tbaa !33 ; 5 uses
  %i.oh = icmp sgt i64 %i.od, 1
  br i1 %i.oh, label %.lr.ph.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.thread191

.lr.ph.i.i.i.i.preheader:                         ; preds = %.lr.ph216
  %xtraiter = and i64 %i.oc, 1
  %i.oi = icmp eq i64 %i.ne, %.0214
  br i1 %i.oi, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.preheader.new:                     ; preds = %.lr.ph.i.i.i.i.preheader
  %unroll_iter = and i64 %i.oc, -2
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader.new
  %.sroa.0.0.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %.sroa.0.1.i.i.1, %.lr.ph.i.i.i.i ]
  %.sroa.7.0.i.i = phi double [ %i.og, %.lr.ph.i.i.i.i.preheader.new ], [ %.sroa.7.1.i.i.1, %.lr.ph.i.i.i.i ]
  %.02123.i.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.i.preheader.new ], [ %i.ot, %.lr.ph.i.i.i.i ] ; 4 uses
  %i.oj = phi double [ %i.og, %.lr.ph.i.i.i.i.preheader.new ], [ %i.os, %.lr.ph.i.i.i.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i.i.i ]
  %i.ok = getelementptr [8 x i8], ptr %i.of, i64 %.02123.i.i.i.i
  %i.ol = load double, ptr %i.ok, align 8, !tbaa !33 ; 3 uses
  %i.om = fcmp ogt double %i.ol, %i.oj            ; 3 uses
  %.sroa.0.1.i.i = select i1 %i.om, i64 %.02123.i.i.i.i, i64 %.sroa.0.0.i.i
  %.sroa.7.1.i.i = select i1 %i.om, double %i.ol, double %.sroa.7.0.i.i
  %i.on = select i1 %i.om, double %i.ol, double %i.oj ; 2 uses
  %i.oo = add nuw nsw i64 %.02123.i.i.i.i, 1      ; 2 uses
  %i.op = getelementptr [8 x i8], ptr %i.of, i64 %i.oo
  %i.oq = load double, ptr %i.op, align 8, !tbaa !33 ; 3 uses
  %i.or = fcmp ogt double %i.oq, %i.on            ; 3 uses
  %.sroa.0.1.i.i.1 = select i1 %i.or, i64 %i.oo, i64 %.sroa.0.1.i.i ; 3 uses
  %.sroa.7.1.i.i.1 = select i1 %i.or, double %i.oq, double %.sroa.7.1.i.i ; 3 uses
  %i.os = select i1 %i.or, double %i.oq, double %i.on ; 2 uses
  %i.ot = add nuw nsw i64 %.02123.i.i.i.i, 2      ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa, label %.lr.ph.i.i.i.i, !llvm.loop !711

_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa, %.lr.ph.i.i.i.i.preheader
  %.sroa.0.0.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.0.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ]
  %.sroa.7.0.i.i.epil.init = phi double [ %i.og, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.7.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ]
  %.02123.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.preheader ], [ %i.ot, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ] ; 2 uses
  %.epil.init = phi double [ %i.og, %.lr.ph.i.i.i.i.preheader ], [ %i.os, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ]
  %lcmp.mod254 = trunc i64 %i.oc to i1
  tail call void @llvm.assume(i1 %lcmp.mod254)
  %i.ou = getelementptr [8 x i8], ptr %i.of, i64 %.02123.i.i.i.i.epil.init
  %i.ov = load double, ptr %i.ou, align 8, !tbaa !33 ; 2 uses
  %i.ow = fcmp ogt double %i.ov, %.epil.init      ; 2 uses
  %.sroa.0.1.i.i.epil = select i1 %i.ow, i64 %.02123.i.i.i.i.epil.init, i64 %.sroa.0.0.i.i.epil.init
  %.sroa.7.1.i.i.epil = select i1 %i.ow, double %i.ov, double %.sroa.7.0.i.i.epil.init
  br label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit

_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit: ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa, %.lr.ph.i.i.i.i.epil.preheader
  %.sroa.0.1.i.i.lcssa = phi i64 [ %.sroa.0.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ], [ %.sroa.0.1.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader ] ; 2 uses
  %.sroa.7.1.i.i.lcssa = phi double [ %.sroa.7.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ], [ %.sroa.7.1.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader ]
  %i.ox = fcmp une double %.sroa.7.1.i.i.lcssa, 0.000000e+00
  br i1 %i.ox, label %bb.x, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.thread

_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.thread191: ; preds = %.lr.ph216
  %i.oy = fcmp une double %i.og, 0.000000e+00
  br i1 %i.oy, label %.thread195, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.thread

bb.x:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit
  %.not63 = icmp eq i64 %.sroa.0.1.i.i.lcssa, 0
  br i1 %.not63, label %.thread195, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.oz = add nuw nsw i64 %.sroa.0.1.i.i.lcssa, %.0214 ; 3 uses
  %i.pa = getelementptr inbounds nuw [8 x i8], ptr %i.mu, i64 %.0214 ; 2 uses
  %i.pb = getelementptr inbounds nuw [8 x i8], ptr %i.mu, i64 %i.oz ; 2 uses
  %i.pc = load double, ptr %i.pa, align 8, !tbaa !33
  %i.pd = load double, ptr %i.pb, align 8, !tbaa !33
  store double %i.pd, ptr %i.pa, align 8, !tbaa !33
  store double %i.pc, ptr %i.pb, align 8, !tbaa !33
  %i.pe = load i8, ptr %i.dx, align 1, !tbaa !718, !range !170, !noundef !141
  %i.pf = trunc nuw i8 %i.pe to i1
  %i.pg = load i8, ptr %i.dy, align 8, !range !170
  %i.ph = trunc nuw i8 %i.pg to i1
  %i.pi = select i1 %i.pf, i1 true, i1 %i.ph
  br i1 %i.pi, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %.idx.i.i.i.i84 = mul nuw nsw i64 %i.oz, 24
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i.i.i.i84 ; 3 uses
  %.idx.i.i.i.i85 = mul nuw nsw i64 %.0214, 24
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i.i.i.i85 ; 3 uses
  %i.pl = load <2 x double>, ptr %i.pk, align 8, !tbaa !20
  %i.pm = load <2 x double>, ptr %i.pj, align 8, !tbaa !20
  store <2 x double> %i.pm, ptr %i.pk, align 8, !tbaa !20
  store <2 x double> %i.pl, ptr %i.pj, align 8, !tbaa !20
  %i.pn = getelementptr i8, ptr %i.pj, i64 16     ; 2 uses
  %i.po = getelementptr i8, ptr %i.pk, i64 16     ; 2 uses
  %i.pp = load double, ptr %i.pn, align 8, !tbaa !33
  %i.pq = load double, ptr %i.po, align 8, !tbaa !33
  store double %i.pq, ptr %i.pn, align 8, !tbaa !33
  store double %i.pp, ptr %i.po, align 8, !tbaa !33
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.pr = load i8, ptr %i.dz, align 1, !tbaa !720, !range !170, !noundef !141
  %i.ps = trunc nuw i8 %i.pr to i1
  %i.pt = load i8, ptr %i.ea, align 2, !range !170
  %i.pu = trunc nuw i8 %i.pt to i1
  %i.pv = select i1 %i.ps, i1 true, i1 %i.pu
  br i1 %i.pv, label %bb.ab, label %.thread195

bb.ab:                                            ; preds = %bb.aa
  %.idx.i.i.i.i86 = mul nuw nsw i64 %i.oz, 24
  %i.pw = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.idx.i.i.i.i86 ; 3 uses
  %.idx.i.i.i.i87 = mul nuw nsw i64 %.0214, 24
  %i.px = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.idx.i.i.i.i87 ; 3 uses
  %i.py = load <2 x double>, ptr %i.px, align 8, !tbaa !20
  %i.pz = load <2 x double>, ptr %i.pw, align 8, !tbaa !20
  store <2 x double> %i.pz, ptr %i.px, align 8, !tbaa !20
  store <2 x double> %i.py, ptr %i.pw, align 8, !tbaa !20
  %i.qa = getelementptr i8, ptr %i.pw, i64 16     ; 2 uses
  %i.qb = getelementptr i8, ptr %i.px, i64 16     ; 2 uses
  %i.qc = load double, ptr %i.qa, align 8, !tbaa !33
  %i.qd = load double, ptr %i.qb, align 8, !tbaa !33
  store double %i.qd, ptr %i.qa, align 8, !tbaa !33
  store double %i.qc, ptr %i.qb, align 8, !tbaa !33
  br label %.thread195

_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.thread: ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.thread191
  store i64 %.0214, ptr %i.nc, align 8, !tbaa !722
  br label %.loopexit

.thread195:                                       ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.thread191, %bb.x, %bb.ab, %bb.aa
  %i.qe = add nuw nsw i64 %.0214, 1               ; 2 uses
  %exitcond220.not = icmp eq i64 %i.qe, %.lcssa
  br i1 %exitcond220.not, label %.loopexit, label %.lr.ph216, !llvm.loop !712

.loopexit:                                        ; preds = %.thread195, %._crit_edge, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.thread
  %i.qf = getelementptr inbounds nuw i8, ptr %0, i64 172
  store i8 1, ptr %i.qf, align 4, !tbaa !717
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
