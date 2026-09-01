Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/direct_delta_mush?download=true
inline.NumInlined: 8135
inline.NumDeleted: 4104
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 67
begin_hunk_0_@_ZN5Eigen9JacobiSVDINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi2EE7computeERKS2_j:bb.a
  %i.ak = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ai, <2 x double> %i.ae) #25, !srcloc !106
  %i.al = select <2 x i1> %i.aj, <2 x double> %i.ae, <2 x double> %i.ak ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = load <2 x i64>, ptr %i.am, align 8, !tbaa !65
  %i.ao = and <2 x i64> %i.an, splat (i64 9223372036854775807)
  %i.ap = bitcast <2 x i64> %i.ao to <2 x double> ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ar = load <2 x i64>, ptr %i.aq, align 8, !tbaa !65
  %i.as = and <2 x i64> %i.ar, splat (i64 9223372036854775807)
  %i.at = bitcast <2 x i64> %i.as to <2 x double>
  %i.au = fcmp uno <2 x double> %i.ap, zeroinitializer
  %i.av = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.at, <2 x double> %i.ap) #25, !srcloc !106
  %i.aw = select <2 x i1> %i.au, <2 x double> %i.ap, <2 x double> %i.av
  %i.ax = fcmp uno <2 x double> %i.al, zeroinitializer
  %i.ay = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.aw, <2 x double> %i.al) #25, !srcloc !106
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
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !56 ; 2 uses
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
  store i8 1, ptr %i.bp, align 4, !tbaa !101
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 3, ptr %i.bq, align 8, !tbaa !100
  br label %bb.ac

bb.d:                                             ; preds = %_ZN5Eigen9JacobiSVDINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi2EE8allocateEllj.exit
  %i.br = bitcast <2 x i64> %i.ac to <2 x double>
  %i.bs = fcmp oeq double %i.bm, 0.000000e+00
  %.0184 = select i1 %i.bs, double 1.000000e+00, double %i.bm ; 6 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 224
  %.sroa.821.24.vec.insert.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %.0184, i64 0
  %i.bu = shufflevector <2 x double> %.sroa.821.24.vec.insert.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bv = fdiv <2 x double> %i.br, %i.bu          ; 2 uses
  store <2 x double> %i.bv, ptr %i.bt, align 8, !tbaa !65
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.bx = load double, ptr %i.af, align 8, !tbaa !56
  %i.by = fdiv double %i.bx, %.0184
  store double %i.by, ptr %i.bw, align 8, !tbaa !56
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cb = load <2 x double>, ptr %i.ca, align 8, !tbaa !65
  %i.cc = fdiv <2 x double> %i.cb, %i.bu          ; 2 uses
  store <2 x double> %i.cc, ptr %i.bz, align 8, !tbaa !65
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !56
  %i.cg = fdiv double %i.cf, %.0184
  store double %i.cg, ptr %i.cd, align 8, !tbaa !56
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ci = load <2 x double>, ptr %i.aq, align 8, !tbaa !65
  %i.cj = fdiv <2 x double> %i.ci, %i.bu
  store <2 x double> %i.cj, ptr %i.ch, align 8, !tbaa !65
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.cl = load double, ptr %i.bf, align 8, !tbaa !56
  %i.cm = fdiv double %i.cl, %.0184               ; 2 uses
  store double %i.cm, ptr %i.ck, align 8, !tbaa !56
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 175
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !102, !range !96, !noundef !97
  %i.cp = trunc nuw i8 %i.co to i1
  %i.cq = extractelement <2 x double> %i.bv, i64 0
  %i.cr = extractelement <2 x double> %i.cc, i64 1
  br i1 %i.cp, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store double 1.000000e+00, ptr %0, align 8, !tbaa !56
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cs, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.ct, align 8, !tbaa !56
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cu, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.cv, align 8, !tbaa !56
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.cx = load i8, ptr %i.cw, align 8, !tbaa !103, !range !96, !noundef !97
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store double 1.000000e+00, ptr %0, align 8, !tbaa !56
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.da, align 8, !tbaa !56
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.db, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.dc, align 8, !tbaa !56
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 177
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !104, !range !96, !noundef !97
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 72
  store double 1.000000e+00, ptr %i.dg, align 8, !tbaa !56
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dh, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.di, align 8, !tbaa !56
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dj, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.dk, align 8, !tbaa !56
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 178
  %i.dm = load i8, ptr %i.dl, align 2, !tbaa !105, !range !96, !noundef !97
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 72
  store double 1.000000e+00, ptr %i.do, align 8, !tbaa !56
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dp, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.dq, align 8, !tbaa !56
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dr, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.ds, align 8, !tbaa !56
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 6 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !83 ; 5 uses
  %i.dw = icmp sgt i64 %i.dv, 1
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 175 ; 3 uses
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
  %.056207.us = phi i64 [ 0, %.preheader201.us ], [ %i.lt, %bb.s ] ; 5 uses
  %.2206.us = phi i1 [ %.1209.us, %.preheader201.us ], [ %.3.us, %bb.s ]
  %.2187205.us = phi double [ %.1186208.us, %.preheader201.us ], [ %.3188.us, %bb.s ] ; 4 uses
  %i.ej = fmul double %.2187205.us, f0x3CC0000000000000 ; 2 uses
  %i.ek = fcmp ogt double %i.ej, f0x0010000000000000
  %.sroa.speculated149.us = select i1 %i.ek, double %i.ej, double f0x0010000000000000 ; 2 uses
  %.idx.i.us = mul i64 %.056207.us, 24            ; 5 uses
  %i.el = getelementptr i8, ptr %i.lv, i64 %.idx.i.us
  %i.em = load double, ptr %i.el, align 8, !tbaa !56 ; 5 uses
  %i.en = tail call noundef double @llvm.fabs.f64(double %i.em) ; 2 uses
  %i.eo = fcmp ogt double %i.en, %.sroa.speculated149.us
  br i1 %i.eo, label %._crit_edge225, label %bb.n

._crit_edge225:                                   ; preds = %bb.m
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.056207.us
  %.pre228 = load double, ptr %gep, align 8, !tbaa !56
  br label %bb.o

bb.n:                                             ; preds = %bb.m
  %gep.us = getelementptr [8 x i8], ptr %invariant.gep.us, i64 %.056207.us
  %i.ep = load double, ptr %gep.us, align 8, !tbaa !56 ; 2 uses
  %i.eq = tail call noundef double @llvm.fabs.f64(double %i.ep)
  %i.er = fcmp ogt double %i.eq, %.sroa.speculated149.us
  br i1 %i.er, label %bb.o, label %bb.s

bb.o:                                             ; preds = %._crit_edge225, %bb.n
  %i.es = phi double [ %.pre228, %._crit_edge225 ], [ %i.ep, %bb.n ] ; 2 uses
  %i.et = load double, ptr %i.lw, align 8, !tbaa !56 ; 2 uses
  %i.eu = getelementptr [8 x i8], ptr %i.dt, i64 %.056207.us ; 5 uses
  %i.ev = getelementptr i8, ptr %i.eu, i64 %.idx.i.us ; 2 uses
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !56 ; 3 uses
  %i.ex = fsub double %i.es, %i.em                ; 2 uses
  %i.ey = tail call noundef double @llvm.fabs.f64(double %i.ex)
  %i.ez = fcmp olt double %i.ey, f0x0010000000000000
  br i1 %i.ez, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fa = fadd double %i.et, %i.ew
  %i.fb = fdiv double %i.fa, %i.ex                ; 3 uses
  %i.fc = fmul double %i.fb, %i.fb
  %i.fd = fadd double %i.fc, 1.000000e+00
  %sqrt.i.us = tail call double @llvm.sqrt.f64(double %i.fd)
  %i.fe = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.fb, i64 1
  %i.ff = insertelement <2 x double> poison, double %sqrt.i.us, i64 0
  %i.fg = shufflevector <2 x double> %i.ff, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fh = fdiv <2 x double> %i.fe, %i.fg
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.fi = phi <2 x double> [ %i.fh, %bb.p ], [ <double 0.000000e+00, double 1.000000e+00>, %bb.o ] ; 7 uses
  %i.fj = extractelement <2 x double> %i.fi, i64 1 ; 2 uses
  %i.fk = fcmp oeq double %i.fj, 1.000000e+00
  %i.fl = extractelement <2 x double> %i.fi, i64 0 ; 2 uses
  %i.fm = fcmp oeq double %i.fl, 0.000000e+00
  %or.cond.i.i.i.us = and i1 %i.fm, %i.fk
  %3 = insertelement <2 x double> poison, double %i.et, i64 0
  %4 = insertelement <2 x double> %3, double %i.ew, i64 1 ; 3 uses
  br i1 %or.cond.i.i.i.us, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.i.us, label %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi2ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i.i.us

_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi2ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i.i.us: ; preds = %bb.q
  %i.fn = insertelement <2 x double> %4, double %i.es, i64 0
  %5 = fmul <2 x double> %i.fn, %i.fi
  %6 = fmul double %i.ew, %i.fl
  %7 = tail call double @llvm.fmuladd.f64(double %i.fj, double %i.em, double %6) ; 2 uses
  %8 = fneg <2 x double> %i.fi
  %9 = shufflevector <2 x double> %i.fi, <2 x double> %8, <2 x i32> <i32 1, i32 2>
  %i.fo = insertelement <2 x double> %4, double %i.em, i64 1
  %i.fp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %9, <2 x double> %i.fo, <2 x double> %5)
  %.pre230 = tail call noundef double @llvm.fabs.f64(double %7)
  br label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.i.us

_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.i.us: ; preds = %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi2ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i.i.us, %bb.q
  %.pre-phi = phi double [ %.pre230, %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi2ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i.i.us ], [ %i.en, %bb.q ] ; 2 uses
  %.sroa.9.0.i.us = phi double [ %7, %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi2ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i.i.us ], [ %i.em, %bb.q ]
  %10 = phi <2 x double> [ %i.fp, %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi2ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i.i.us ], [ %4, %bb.q ] ; 2 uses
  %i.fq = fmul double %.pre-phi, 2.000000e+00     ; 2 uses
  %i.fr = fcmp uge double %i.fq, f0x0010000000000000
  br i1 %i.fr, label %bb.r, label %_ZN5Eigen8internal19real_2x2_jacobi_svdINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEdlEEvRKT_T1_S7_PNS_14JacobiRotationIT0_EESB_.exit.us

bb.r:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.i.us
  %shift = shufflevector <2 x double> %10, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %10, %shift
  %11 = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.fs = fdiv double %11, %i.fq                  ; 4 uses
  %i.ft = fmul double %i.fs, %i.fs
  %i.fu = fadd double %i.ft, 1.000000e+00
  %sqrt19.i.i.i.us = tail call double @llvm.sqrt.f64(double %i.fu) ; 2 uses
  %i.fv = fcmp ogt double %i.fs, 0.000000e+00
  %i.fw = fneg double %sqrt19.i.i.i.us
  %.pn.p.i.i.i.us = select i1 %i.fv, double %sqrt19.i.i.i.us, double %i.fw
  %.pn.i.i.i.us = fadd double %i.fs, %.pn.p.i.i.i.us
  %storemerge.i.i.i.us = fdiv double 1.000000e+00, %.pn.i.i.i.us ; 4 uses
  %i.fx = fcmp ogt double %storemerge.i.i.i.us, 0.000000e+00
  %i.fy = fmul double %storemerge.i.i.i.us, %storemerge.i.i.i.us
  %i.fz = fadd double %i.fy, 1.000000e+00
  %sqrt.i.i.i.us = tail call double @llvm.sqrt.f64(double %i.fz)
  %i.ga = fdiv double 1.000000e+00, %sqrt.i.i.i.us ; 2 uses
  %i.gb = fdiv double %.sroa.9.0.i.us, %.pre-phi  ; 2 uses
  %i.gc = fneg double %i.gb
  %i.gd = select i1 %i.fx, double %i.gc, double %i.gb
  %i.ge = tail call noundef double @llvm.fabs.f64(double %storemerge.i.i.i.us)
  %i.gf = fmul double %i.ge, %i.gd
  %i.gg = fmul double %i.gf, %i.ga
  br label %_ZN5Eigen8internal19real_2x2_jacobi_svdINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEdlEEvRKT_T1_S7_PNS_14JacobiRotationIT0_EESB_.exit.us

_ZN5Eigen8internal19real_2x2_jacobi_svdINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEdlEEvRKT_T1_S7_PNS_14JacobiRotationIT0_EESB_.exit.us: ; preds = %bb.r, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.i.us
  %.sink20.i.i.i.us = phi double [ %i.gg, %bb.r ], [ 0.000000e+00, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.i.us ] ; 9 uses
  %.sink.i.i.i.us = phi double [ %i.ga, %bb.r ], [ 1.000000e+00, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.i.us ] ; 15 uses
  %i.gh = fneg double %.sink20.i.i.i.us           ; 7 uses
  %i.gi = shufflevector <2 x double> %i.fi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gj = insertelement <2 x double> poison, double %.sink20.i.i.i.us, i64 0
  %i.gk = insertelement <2 x double> %i.gj, double %.sink.i.i.i.us, i64 1
  %i.gl = fmul <2 x double> %i.gi, %i.gk
  %i.gm = shufflevector <2 x double> %i.fi, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.gn = insertelement <2 x double> poison, double %.sink.i.i.i.us, i64 0
  %i.go = insertelement <2 x double> %i.gn, double %i.gh, i64 1
  %i.gp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gm, <2 x double> %i.go, <2 x double> %i.gl) ; 12 uses
  %i.gq = extractelement <2 x double> %i.gp, i64 0
  %i.gr = fcmp une double %i.gq, 1.000000e+00
  %i.gs = extractelement <2 x double> %i.gp, i64 1
  %i.gt = fcmp une double %i.gs, 0.000000e+00
  %or.cond.i.i.us.not242 = or i1 %i.gr, %i.gt
  br i1 %or.cond.i.i.us.not242, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.us, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.us

_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.us: ; preds = %_ZN5Eigen8internal19real_2x2_jacobi_svdINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEdlEEvRKT_T1_S7_PNS_14JacobiRotationIT0_EESB_.exit.us
  %i.gu = load double, ptr %i.lv, align 8, !tbaa !56
  %i.gv = load double, ptr %i.eu, align 8, !tbaa !56
  %i.gw = insertelement <2 x double> poison, double %i.gv, i64 0
  %i.gx = shufflevector <2 x double> %i.gw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gy = fmul <2 x double> %i.gp, %i.gx
  %i.gz = fneg <2 x double> %i.gp
  %i.ha = shufflevector <2 x double> %i.gz, <2 x double> %i.gp, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.hb = insertelement <2 x double> poison, double %i.gu, i64 0
  %i.hc = shufflevector <2 x double> %i.hb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ha, <2 x double> %i.hc, <2 x double> %i.gy) ; 2 uses
  %i.he = extractelement <2 x double> %i.hd, i64 1
  store double %i.he, ptr %i.lv, align 8, !tbaa !56
  %i.hf = extractelement <2 x double> %i.hd, i64 0
  store double %i.hf, ptr %i.eu, align 8, !tbaa !56
  %i.hg = getelementptr inbounds nuw i8, ptr %i.eu, i64 24 ; 2 uses
  %i.hh = load double, ptr %i.lx, align 8, !tbaa !56
  %i.hi = load double, ptr %i.hg, align 8, !tbaa !56
  %i.hj = insertelement <2 x double> poison, double %i.hi, i64 0
  %i.hk = shufflevector <2 x double> %i.hj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hl = fmul <2 x double> %i.gp, %i.hk
  %i.hm = insertelement <2 x double> poison, double %i.hh, i64 0
  %i.hn = shufflevector <2 x double> %i.hm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ho = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ha, <2 x double> %i.hn, <2 x double> %i.hl) ; 2 uses
  %i.hp = extractelement <2 x double> %i.ho, i64 1
  store double %i.hp, ptr %i.lx, align 8, !tbaa !56
  %i.hq = extractelement <2 x double> %i.ho, i64 0
  store double %i.hq, ptr %i.hg, align 8, !tbaa !56
  %i.hr = getelementptr inbounds nuw i8, ptr %i.eu, i64 48 ; 2 uses
  %i.hs = load double, ptr %i.ly, align 8, !tbaa !56
  %i.ht = load double, ptr %i.hr, align 8, !tbaa !56
  %i.hu = insertelement <2 x double> poison, double %i.ht, i64 0
  %i.hv = shufflevector <2 x double> %i.hu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hw = fmul <2 x double> %i.gp, %i.hv
  %i.hx = insertelement <2 x double> poison, double %i.hs, i64 0
  %i.hy = shufflevector <2 x double> %i.hx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ha, <2 x double> %i.hy, <2 x double> %i.hw) ; 2 uses
  %i.ia = extractelement <2 x double> %i.hz, i64 1
  store double %i.ia, ptr %i.ly, align 8, !tbaa !56
  %i.ib = extractelement <2 x double> %i.hz, i64 0
  store double %i.ib, ptr %i.hr, align 8, !tbaa !56
  %i.ic = load i8, ptr %i.dx, align 1, !tbaa !102, !range !96, !noundef !97
  %i.id = trunc nuw i8 %i.ic to i1
  %i.ie = load i8, ptr %i.dy, align 8, !range !96
  %i.if = trunc nuw i8 %i.ie to i1
  %i.ig = select i1 %i.id, i1 true, i1 %i.if
  br i1 %i.ig, label %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi3ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i67.us, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.us

_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi3ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i67.us: ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.us
  %i.ih = getelementptr inbounds i8, ptr %0, i64 %.idx.i.us ; 4 uses
  %i.ii = load double, ptr %i.lz, align 8, !tbaa !56
  %i.ij = load double, ptr %i.ih, align 8, !tbaa !56
  %i.ik = insertelement <2 x double> poison, double %i.ij, i64 0
  %i.il = shufflevector <2 x double> %i.ik, <2 x double> poison, <2 x i32> zeroinitializer
  %i.im = fmul <2 x double> %i.gp, %i.il
  %i.in = fneg <2 x double> %i.gp
  %i.io = shufflevector <2 x double> %i.in, <2 x double> %i.gp, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.ip = insertelement <2 x double> poison, double %i.ii, i64 0
  %i.iq = shufflevector <2 x double> %i.ip, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ir = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.io, <2 x double> %i.iq, <2 x double> %i.im) ; 2 uses
  %i.is = extractelement <2 x double> %i.ir, i64 1
  store double %i.is, ptr %i.lz, align 8, !tbaa !56
  %i.it = extractelement <2 x double> %i.ir, i64 0
  store double %i.it, ptr %i.ih, align 8, !tbaa !56
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ih, i64 8 ; 2 uses
  %i.iv = load double, ptr %i.ma, align 8, !tbaa !56
  %i.iw = load double, ptr %i.iu, align 8, !tbaa !56
  %i.ix = insertelement <2 x double> poison, double %i.iw, i64 0
  %i.iy = shufflevector <2 x double> %i.ix, <2 x double> poison, <2 x i32> zeroinitializer
  %i.iz = fmul <2 x double> %i.gp, %i.iy
  %i.ja = insertelement <2 x double> poison, double %i.iv, i64 0
  %i.jb = shufflevector <2 x double> %i.ja, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.io, <2 x double> %i.jb, <2 x double> %i.iz) ; 2 uses
  %i.jd = extractelement <2 x double> %i.jc, i64 1
  store double %i.jd, ptr %i.ma, align 8, !tbaa !56
  %i.je = extractelement <2 x double> %i.jc, i64 0
  store double %i.je, ptr %i.iu, align 8, !tbaa !56
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ih, i64 16 ; 2 uses
  %i.jg = load double, ptr %i.mb, align 8, !tbaa !56
  %i.jh = load double, ptr %i.jf, align 8, !tbaa !56
  %i.ji = insertelement <2 x double> poison, double %i.jh, i64 0
  %i.jj = shufflevector <2 x double> %i.ji, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jk = fmul <2 x double> %i.gp, %i.jj
  %i.jl = insertelement <2 x double> poison, double %i.jg, i64 0
  %i.jm = shufflevector <2 x double> %i.jl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.io, <2 x double> %i.jm, <2 x double> %i.jk) ; 2 uses
  %i.jo = extractelement <2 x double> %i.jn, i64 1
  store double %i.jo, ptr %i.mb, align 8, !tbaa !56
  %i.jp = extractelement <2 x double> %i.jn, i64 0
  store double %i.jp, ptr %i.jf, align 8, !tbaa !56
  br label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.us

_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.us: ; preds = %_ZN5Eigen8internal19real_2x2_jacobi_svdINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEdlEEvRKT_T1_S7_PNS_14JacobiRotationIT0_EESB_.exit.us, %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi3ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i67.us, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.us
  %i.jq = fcmp oeq double %.sink.i.i.i.us, 1.000000e+00
  %i.jr = fcmp oeq double %.sink20.i.i.i.us, 0.000000e+00
  %or.cond.i.i68.us = and i1 %i.jr, %i.jq
  br i1 %or.cond.i.i68.us, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit77.us, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit72.thread.us

_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit72.thread.us: ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.us
  %i.js = getelementptr inbounds i8, ptr %i.dt, i64 %.idx.i.us ; 4 uses
  %i.jt = load double, ptr %invariant.gep.us, align 8, !tbaa !56 ; 2 uses
  %i.ju = load double, ptr %i.js, align 8, !tbaa !56 ; 2 uses
  %i.jv = fmul double %i.ju, %i.gh
  %i.jw = tail call double @llvm.fmuladd.f64(double %.sink.i.i.i.us, double %i.jt, double %i.jv)
  store double %i.jw, ptr %invariant.gep.us, align 8, !tbaa !56
  %i.jx = fmul double %.sink.i.i.i.us, %i.ju
  %i.jy = tail call double @llvm.fmuladd.f64(double %.sink20.i.i.i.us, double %i.jt, double %i.jx)
  store double %i.jy, ptr %i.js, align 8, !tbaa !56
  %i.jz = getelementptr inbounds nuw i8, ptr %i.js, i64 8 ; 2 uses
  %i.ka = load double, ptr %i.mc, align 8, !tbaa !56 ; 2 uses
  %i.kb = load double, ptr %i.jz, align 8, !tbaa !56 ; 2 uses
  %i.kc = fmul double %i.kb, %i.gh
  %i.kd = tail call double @llvm.fmuladd.f64(double %.sink.i.i.i.us, double %i.ka, double %i.kc)
  store double %i.kd, ptr %i.mc, align 8, !tbaa !56
  %i.ke = fmul double %.sink.i.i.i.us, %i.kb
  %i.kf = tail call double @llvm.fmuladd.f64(double %.sink20.i.i.i.us, double %i.ka, double %i.ke)
  store double %i.kf, ptr %i.jz, align 8, !tbaa !56
  %i.kg = getelementptr inbounds nuw i8, ptr %i.js, i64 16 ; 2 uses
  %i.kh = load double, ptr %i.md, align 8, !tbaa !56 ; 2 uses
  %i.ki = load double, ptr %i.kg, align 8, !tbaa !56 ; 2 uses
  %i.kj = fmul double %i.ki, %i.gh
  %i.kk = tail call double @llvm.fmuladd.f64(double %.sink.i.i.i.us, double %i.kh, double %i.kj)
  store double %i.kk, ptr %i.md, align 8, !tbaa !56
  %i.kl = fmul double %.sink.i.i.i.us, %i.ki
  %i.km = tail call double @llvm.fmuladd.f64(double %.sink20.i.i.i.us, double %i.kh, double %i.kl)
  store double %i.km, ptr %i.kg, align 8, !tbaa !56
  %i.kn = load i8, ptr %i.dz, align 1, !tbaa !104, !range !96, !noundef !97
  %i.ko = trunc nuw i8 %i.kn to i1
  %i.kp = load i8, ptr %i.ea, align 2, !range !96
  %i.kq = trunc nuw i8 %i.kp to i1
  %i.kr = select i1 %i.ko, i1 true, i1 %i.kq
  br i1 %i.kr, label %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi3ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i74.us, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit77.us

_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi3ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i74.us: ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit72.thread.us
  %i.ks = getelementptr inbounds i8, ptr %i.eb, i64 %.idx.i.us ; 4 uses
  %i.kt = load double, ptr %i.me, align 8, !tbaa !56 ; 2 uses
  %i.ku = load double, ptr %i.ks, align 8, !tbaa !56 ; 2 uses
  %i.kv = fmul double %i.ku, %i.gh
  %i.kw = tail call double @llvm.fmuladd.f64(double %.sink.i.i.i.us, double %i.kt, double %i.kv)
  store double %i.kw, ptr %i.me, align 8, !tbaa !56
  %i.kx = fmul double %.sink.i.i.i.us, %i.ku
  %i.ky = tail call double @llvm.fmuladd.f64(double %.sink20.i.i.i.us, double %i.kt, double %i.kx)
  store double %i.ky, ptr %i.ks, align 8, !tbaa !56
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ks, i64 8 ; 2 uses
  %i.la = load double, ptr %i.mf, align 8, !tbaa !56 ; 2 uses
  %i.lb = load double, ptr %i.kz, align 8, !tbaa !56 ; 2 uses
  %i.lc = fmul double %i.lb, %i.gh
  %i.ld = tail call double @llvm.fmuladd.f64(double %.sink.i.i.i.us, double %i.la, double %i.lc)
  store double %i.ld, ptr %i.mf, align 8, !tbaa !56
  %i.le = fmul double %.sink.i.i.i.us, %i.lb
  %i.lf = tail call double @llvm.fmuladd.f64(double %.sink20.i.i.i.us, double %i.la, double %i.le)
  store double %i.lf, ptr %i.kz, align 8, !tbaa !56
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ks, i64 16 ; 2 uses
  %i.lh = load double, ptr %i.mg, align 8, !tbaa !56 ; 2 uses
  %i.li = load double, ptr %i.lg, align 8, !tbaa !56 ; 2 uses
  %i.lj = fmul double %i.li, %i.gh
  %i.lk = tail call double @llvm.fmuladd.f64(double %.sink.i.i.i.us, double %i.lh, double %i.lj)
  store double %i.lk, ptr %i.mg, align 8, !tbaa !56
  %i.ll = fmul double %.sink.i.i.i.us, %i.li
  %i.lm = tail call double @llvm.fmuladd.f64(double %.sink20.i.i.i.us, double %i.lh, double %i.ll)
end_hunk_0
