Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/colvarcomp_distances?download=true
inline.NumInlined: 2391
inline.NumDeleted: 581
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN6colvar11eigenvector24calc_Jacobian_derivativeEv:bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 376
  %i.cg = getelementptr inbounds nuw i8, ptr %i.af, i64 1024
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.af, i64 1040
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 1640
  br label %bb.l

._crit_edge:                                      ; preds = %.split.us.2, %.preheader249
  %.033.lcssa = phi double [ 0.000000e+00, %.preheader249 ], [ %i.kn, %.split.us.2 ]
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 1664
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !97
  %i.ct = call noundef double @sqrt(double noundef %i.cs) #24
  %i.cu = fmul double %.033.lcssa, %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 1104
  store double %i.cu, ptr %i.cv, align 8, !tbaa !104
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.cw = load ptr, ptr %i.c, align 8, !tbaa !179 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !182
  %.not.i.i.i.i77 = icmp eq ptr %i.cy, %i.cw
  br i1 %.not.i.i.i.i77, label %_ZNSt6vectorIN12colvarmodule8matrix2dINS0_7rvectorEE3rowESaIS4_EE5clearEv.exit.i.i, label %_ZSt8_DestroyIPN12colvarmodule8matrix2dINS0_7rvectorEE3rowES4_EvT_S6_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN12colvarmodule8matrix2dINS0_7rvectorEE3rowES4_EvT_S6_RSaIT0_E.exit.i.i.i.i: ; preds = %._crit_edge
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !182
  br label %_ZNSt6vectorIN12colvarmodule8matrix2dINS0_7rvectorEE3rowESaIS4_EE5clearEv.exit.i.i

_ZNSt6vectorIN12colvarmodule8matrix2dINS0_7rvectorEE3rowESaIS4_EE5clearEv.exit.i.i: ; preds = %_ZSt8_DestroyIPN12colvarmodule8matrix2dINS0_7rvectorEE3rowES4_EvT_S6_RSaIT0_E.exit.i.i.i.i, %._crit_edge
  %i.cz = load ptr, ptr %i.b, align 8, !tbaa !146 ; 2 uses
  %i.da = load ptr, ptr %i.e, align 8, !tbaa !148
  %.not.i.i1.i.i = icmp eq ptr %i.da, %i.cz
  br i1 %.not.i.i1.i.i, label %_ZN12colvarmodule8matrix2dINS_7rvectorEE5clearEv.exit.i, label %_ZSt8_DestroyIPN12colvarmodule7rvectorES1_EvT_S3_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN12colvarmodule7rvectorES1_EvT_S3_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZNSt6vectorIN12colvarmodule8matrix2dINS0_7rvectorEE3rowESaIS4_EE5clearEv.exit.i.i
  store ptr %i.cz, ptr %i.e, align 8, !tbaa !148
  br label %_ZN12colvarmodule8matrix2dINS_7rvectorEE5clearEv.exit.i

_ZN12colvarmodule8matrix2dINS_7rvectorEE5clearEv.exit.i: ; preds = %_ZSt8_DestroyIPN12colvarmodule7rvectorES1_EvT_S3_RSaIT0_E.exit.i.i.i.i, %_ZNSt6vectorIN12colvarmodule8matrix2dINS0_7rvectorEE3rowESaIS4_EE5clearEv.exit.i.i
  %i.db = load ptr, ptr %i.d, align 8, !tbaa !177 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIPN12colvarmodule7rvectorESaIS2_EED2Ev.exit.i78, label %bb.h

bb.h:                                             ; preds = %_ZN12colvarmodule8matrix2dINS_7rvectorEE5clearEv.exit.i
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !178
  %i.de = ptrtoint ptr %i.dd to i64
  %i.df = ptrtoint ptr %i.db to i64
  %i.dg = sub i64 %i.de, %i.df
  call void @_ZdlPvm(ptr noundef nonnull %i.db, i64 noundef %i.dg) #25
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !179
  br label %_ZNSt6vectorIPN12colvarmodule7rvectorESaIS2_EED2Ev.exit.i78

_ZNSt6vectorIPN12colvarmodule7rvectorESaIS2_EED2Ev.exit.i78: ; preds = %bb.h, %_ZN12colvarmodule8matrix2dINS_7rvectorEE5clearEv.exit.i
  %i.dh = phi ptr [ %i.cw, %_ZN12colvarmodule8matrix2dINS_7rvectorEE5clearEv.exit.i ], [ %.pre.i, %bb.h ] ; 3 uses
  %.not.i.i.i2.i = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i2.i, label %_ZNSt6vectorIN12colvarmodule8matrix2dINS0_7rvectorEE3rowESaIS4_EED2Ev.exit.i79, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIPN12colvarmodule7rvectorESaIS2_EED2Ev.exit.i78
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !180
  %i.dk = ptrtoint ptr %i.dj to i64
  %i.dl = ptrtoint ptr %i.dh to i64
  %i.dm = sub i64 %i.dk, %i.dl
  call void @_ZdlPvm(ptr noundef nonnull %i.dh, i64 noundef %i.dm) #25
  br label %_ZNSt6vectorIN12colvarmodule8matrix2dINS0_7rvectorEE3rowESaIS4_EED2Ev.exit.i79

_ZNSt6vectorIN12colvarmodule8matrix2dINS0_7rvectorEE3rowESaIS4_EED2Ev.exit.i79: ; preds = %bb.i, %_ZNSt6vectorIPN12colvarmodule7rvectorESaIS2_EED2Ev.exit.i78
  %i.dn = load ptr, ptr %i.b, align 8, !tbaa !146 ; 3 uses
  %.not.i.i.i3.i = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i3.i, label %_ZN12colvarmodule8matrix2dINS_7rvectorEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN12colvarmodule8matrix2dINS0_7rvectorEE3rowESaIS4_EED2Ev.exit.i79
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !147
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = ptrtoint ptr %i.dn to i64
  %i.ds = sub i64 %i.dq, %i.dr
  call void @_ZdlPvm(ptr noundef nonnull %i.dn, i64 noundef %i.ds) #25
  br label %_ZN12colvarmodule8matrix2dINS_7rvectorEED2Ev.exit

_ZN12colvarmodule8matrix2dINS_7rvectorEED2Ev.exit: ; preds = %_ZNSt6vectorIN12colvarmodule8matrix2dINS0_7rvectorEE3rowESaIS4_EED2Ev.exit.i79, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void

bb.k:                                             ; preds = %bb.g
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.l:                                             ; preds = %.lr.ph, %.split.us.2
  %i.du = phi ptr [ %i.aj, %.lr.ph ], [ %i.kp, %.split.us.2 ]
  %.032263 = phi i64 [ 0, %.lr.ph ], [ %i.ko, %.split.us.2 ] ; 5 uses
  %.033262 = phi double [ 0.000000e+00, %.lr.ph ], [ %i.kn, %.split.us.2 ]
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 1136
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !181 ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !184, !noalias !523
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %.032263
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !97, !noalias !523 ; 9 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dw, i64 40
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !184, !noalias !523
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.ec, i64 %.032263
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !97, !noalias !523 ; 9 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dw, i64 48
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !184, !noalias !523
  %i.eh = getelementptr inbounds [8 x i8], ptr %i.eg, i64 %.032263
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !97, !noalias !523 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24, !noalias !523
  store double %i.ea, ptr %1, align 16, !tbaa !99, !noalias !523
  store double %i.ee, ptr %i.am, align 8, !tbaa !102, !noalias !523
  store double %i.ei, ptr %i.an, align 16, !tbaa !101, !noalias !523
  %i.ej = fneg double %i.ee                       ; 4 uses
  store double 0.000000e+00, ptr %i.ao, align 8, !tbaa !99, !noalias !523
  store double %i.ei, ptr %i.ap, align 16, !tbaa !102, !noalias !523
  store double %i.ej, ptr %i.aq, align 8, !tbaa !101, !noalias !523
  %i.ek = fneg double %i.ei                       ; 4 uses
  store double %i.ek, ptr %i.ar, align 16, !tbaa !99, !noalias !523
  store double 0.000000e+00, ptr %i.as, align 8, !tbaa !102, !noalias !523
  store double %i.ea, ptr %i.at, align 16, !tbaa !101, !noalias !523
  %i.el = fneg double %i.ea                       ; 4 uses
  store double %i.ee, ptr %i.au, align 8, !tbaa !99, !noalias !523
  store double %i.el, ptr %i.av, align 16, !tbaa !102, !noalias !523
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i8 0, i64 16, i1 false), !noalias !523
  store double %i.ei, ptr %i.ax, align 8, !tbaa !102, !noalias !523
  store double %i.ej, ptr %i.ay, align 16, !tbaa !101, !noalias !523
  store double %i.ea, ptr %i.az, align 8, !tbaa !99, !noalias !523
  store double %i.ej, ptr %i.ba, align 16, !tbaa !102, !noalias !523
  store double %i.ek, ptr %i.bb, align 8, !tbaa !101, !noalias !523
  store double %i.ee, ptr %i.bc, align 16, !tbaa !99, !noalias !523
  store double %i.ea, ptr %i.bd, align 8, !tbaa !102, !noalias !523
  store double 0.000000e+00, ptr %i.be, align 16, !tbaa !101, !noalias !523
  store double %i.ei, ptr %i.bf, align 8, !tbaa !99, !noalias !523
  store double 0.000000e+00, ptr %i.bg, align 16, !tbaa !102, !noalias !523
  store double %i.ea, ptr %i.bh, align 8, !tbaa !101, !noalias !523
  store double %i.ek, ptr %i.bi, align 16, !tbaa !99, !noalias !523
  store double 0.000000e+00, ptr %i.bj, align 8, !tbaa !102, !noalias !523
  store double %i.ea, ptr %i.bk, align 16, !tbaa !101, !noalias !523
  store double %i.ee, ptr %i.bl, align 8, !tbaa !99, !noalias !523
  store double %i.ea, ptr %i.bm, align 16, !tbaa !102, !noalias !523
  store double 0.000000e+00, ptr %i.bn, align 8, !tbaa !101, !noalias !523
  store double %i.el, ptr %i.bo, align 16, !tbaa !99, !noalias !523
  store double %i.ee, ptr %i.bp, align 8, !tbaa !102, !noalias !523
  store double %i.ek, ptr %i.bq, align 16, !tbaa !101, !noalias !523
  store double 0.000000e+00, ptr %i.br, align 8, !tbaa !99, !noalias !523
  store double %i.ei, ptr %i.bs, align 16, !tbaa !102, !noalias !523
  store double %i.ee, ptr %i.bt, align 8, !tbaa !101, !noalias !523
  store double %i.ee, ptr %i.bu, align 16, !tbaa !99, !noalias !523
  store double %i.el, ptr %i.bv, align 8, !tbaa !102, !noalias !523
  store double 0.000000e+00, ptr %i.bw, align 16, !tbaa !101, !noalias !523
  store double %i.ei, ptr %i.bx, align 8, !tbaa !99, !noalias !523
  store double 0.000000e+00, ptr %i.by, align 16, !tbaa !102, !noalias !523
  store double %i.ea, ptr %i.bz, align 8, !tbaa !101, !noalias !523
  store double 0.000000e+00, ptr %i.ca, align 16, !tbaa !99, !noalias !523
  store double %i.ei, ptr %i.cb, align 8, !tbaa !102, !noalias !523
  store double %i.ee, ptr %i.cc, align 16, !tbaa !101, !noalias !523
  store double %i.el, ptr %i.cd, align 8, !tbaa !99, !noalias !523
  store double %i.ej, ptr %i.ce, align 16, !tbaa !102, !noalias !523
  store double %i.ei, ptr %i.cf, align 8, !tbaa !101, !noalias !523
  invoke void @_ZNK19rotation_derivative20calc_derivative_implILb0ELb1ELb0EEEvRA4_A4_KN12colvarmodule7rvectorEPS2_PSt5arrayIS2_Lm4EEPS8_IS9_Lm4EE(ptr noundef nonnull align 8 dereferenceable(712) %i.dw, ptr noundef nonnull align 8 dereferenceable(384) %1, ptr noundef null, ptr noundef nonnull %4, ptr noundef null)
          to label %.split.us.2 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.split.us.2:                                      ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24, !noalias !523
  %i.en = load double, ptr %i.ch, align 8, !tbaa !99, !noalias !524 ; 3 uses
  %i.eo = load double, ptr %i.ck, align 8, !tbaa !101, !noalias !525 ; 2 uses
  %i.ep = load <2 x double>, ptr %i.cg, align 8, !tbaa !97 ; 7 uses
  %i.eq = extractelement <2 x double> %i.ep, i64 1
  %i.er = fmul <2 x double> %i.ep, splat (double 2.000000e+00) ; 4 uses
  %i.es = extractelement <2 x double> %i.er, i64 0
  %i.et = fmul double %i.es, %i.en                ; 2 uses
  %i.eu = load double, ptr %i.cl, align 8, !tbaa !97 ; 4 uses
  %i.ev = load double, ptr %i.cn, align 8, !tbaa !101, !noalias !526 ; 4 uses
  %i.ew = load double, ptr %i.ag, align 8, !tbaa !97 ; 3 uses
  %i.ex = load double, ptr %4, align 8, !tbaa !99, !noalias !527 ; 2 uses
  %i.ey = fmul double %i.eu, %i.ex
  %i.ez = fmul double %i.en, %i.eq
  %i.fa = load ptr, ptr %i.c, align 8, !tbaa !179 ; 4 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !186 ; 5 uses
  %i.fc = load <2 x double>, ptr %i.cj, align 8, !tbaa !97, !noalias !525 ; 5 uses
  %i.fd = shufflevector <2 x double> %i.er, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fe = fmul <2 x double> %i.fd, %i.fc          ; 2 uses
  %i.ff = load <2 x double>, ptr %i.cm, align 8, !tbaa !97, !noalias !526 ; 5 uses
  %i.fg = extractelement <2 x double> %i.ff, i64 0
  %foldExtExtBinop = fmul <2 x double> %i.ep, %i.fc
  %i.fh = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.fi = fadd double %i.ez, %i.fh                ; 2 uses
  %.sroa.6132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.fj = fmul double %i.eu, 2.000000e+00         ; 2 uses
  %i.fk = insertelement <2 x double> poison, double %i.fj, i64 0
  %i.fl = shufflevector <2 x double> %i.fk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fm = fmul <2 x double> %i.fl, %i.ff          ; 3 uses
  %i.fn = fmul double %i.fg, %i.ew
  %i.fo = fadd double %i.fn, %i.ey                ; 2 uses
  %i.fp = fadd <2 x double> %i.fe, %i.fm
  %i.fq = fmul <2 x double> %i.fp, splat (double -2.000000e+00)
  %.sroa.5125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fb, i64 32
  %i.fr = load <2 x double>, ptr %i.ci, align 8, !tbaa !97, !noalias !524 ; 3 uses
  %i.fs = shufflevector <2 x double> %i.fr, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ft = insertelement <2 x double> %i.fs, double %i.eo, i64 1 ; 3 uses
  %i.fu = fmul <2 x double> %i.er, %i.ft          ; 3 uses
  %5 = load <2 x double>, ptr %i.co, align 8, !tbaa !97, !noalias !527 ; 3 uses
  %6 = load double, ptr %i.cp, align 8, !tbaa !101, !noalias !527 ; 2 uses
  %7 = insertelement <2 x double> poison, double %i.ew, i64 0 ; 2 uses
  %8 = insertelement <2 x double> %7, double %i.eu, i64 1
  %9 = fmul <2 x double> %i.ft, %8
  %10 = insertelement <2 x double> poison, double %6, i64 0
  %11 = insertelement <2 x double> %10, double %i.ev, i64 1
  %12 = fmul <2 x double> %i.ep, %11
  %13 = fadd <2 x double> %9, %12                 ; 4 uses
  %i.fv = insertelement <2 x double> %5, double %i.ev, i64 1
  %i.fw = insertelement <2 x double> poison, double %i.eu, i64 0 ; 2 uses
  %i.fx = insertelement <2 x double> %i.fw, double %i.ew, i64 1 ; 3 uses
  %i.fy = fmul <2 x double> %i.fv, %i.fx
  %i.fz = shufflevector <2 x double> %i.ep, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.ga = fmul <2 x double> %i.fr, %i.fz
  %i.gb = insertelement <2 x double> poison, double %i.ev, i64 0
  %i.gc = insertelement <2 x double> %i.gb, double %6, i64 1
  %i.gd = fmul <2 x double> %i.ep, %i.gc
  %i.ge = fmul <2 x double> %i.ft, %i.fx
  %i.gf = fadd <2 x double> %i.ge, %i.gd          ; 2 uses
  %i.gg = shufflevector <2 x double> %i.ff, <2 x double> %5, <2 x i32> <i32 1, i32 3>
  %i.gh = shufflevector <2 x double> %i.fx, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.gi = fmul <2 x double> %i.gg, %i.gh
  %i.gj = fadd <2 x double> %i.fy, %i.gi          ; 3 uses
  %i.gk = shufflevector <2 x double> %i.ep, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.gl = shufflevector <2 x double> %i.fc, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.gm = insertelement <2 x double> %i.gl, double %i.eo, i64 1
  %i.gn = fmul <2 x double> %i.gk, %i.gm
  %i.go = fadd <2 x double> %i.ga, %i.gn          ; 3 uses
  %i.gp = fadd <2 x double> %i.go, %i.gj
  %i.gq = fmul <2 x double> %i.gp, splat (double 2.000000e+00)
  store <2 x double> %i.fq, ptr %i.fb, align 8, !tbaa !97
  %i.gr = shufflevector <2 x double> %i.fu, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.gs = insertelement <2 x double> %i.gr, double %i.fi, i64 1
  store <2 x double> %i.gq, ptr %.sroa.5125.0..sroa_idx, align 8, !tbaa !97
  %i.gt = extractelement <2 x double> %i.gf, i64 0 ; 2 uses
  %i.gu = extractelement <2 x double> %i.gf, i64 1 ; 2 uses
  %i.gv = fsub double %i.gt, %i.gu
  %i.gw = fmul double %i.gv, 2.000000e+00
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fb, i64 48
  %i.gy = shufflevector <2 x double> %7, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gz = fmul <2 x double> %i.fc, %i.gy
  %i.ha = fmul <2 x double> %i.gk, %i.ff
  %i.hb = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.hc = insertelement <2 x double> %i.hb, double %i.ex, i64 0 ; 2 uses
  %i.hd = fmul <2 x double> %i.fz, %i.hc
  %i.he = insertelement <2 x double> %i.fs, double %i.en, i64 0 ; 2 uses
  %i.hf = shufflevector <2 x double> %i.fw, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hg = fmul <2 x double> %i.he, %i.hf
  %i.hh = fadd <2 x double> %i.gz, %i.hd          ; 2 uses
  %i.hi = fadd <2 x double> %i.hg, %i.ha          ; 2 uses
  %i.hj = fsub <2 x double> %i.hi, %i.hh
  %i.hk = fmul <2 x double> %i.hj, splat (double 2.000000e+00)
  store <2 x double> %i.hk, ptr %i.gx, align 8, !tbaa !97
  %.sroa.6120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fb, i64 64
  store double %i.gw, ptr %.sroa.6120.0..sroa_idx, align 8, !tbaa !97
  %i.hl = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !186 ; 8 uses
  %.sroa.5113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.hn = fsub double %i.fi, %i.fo
  %foldExtExtBinop283 = fsub <2 x double> %i.go, %i.gj
  %i.ho = insertelement <2 x double> poison, double %i.hn, i64 0
  %i.hp = shufflevector <2 x double> %i.ho, <2 x double> %foldExtExtBinop283, <2 x i32> <i32 0, i32 2>
  %i.hq = fmul <2 x double> %i.hp, splat (double 2.000000e+00)
  %.sroa.6114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  %i.hr = extractelement <2 x double> %i.fm, i64 0
  %foldExtExtBinop285 = fsub <2 x double> %i.go, %i.gj
  %i.hs = fadd double %i.et, %i.hr
  %i.ht = shufflevector <2 x double> %foldExtExtBinop285, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.hu = insertelement <2 x double> %i.ht, double %i.hs, i64 1
  %i.hv = fmul <2 x double> %i.hu, <double 2.000000e+00, double -2.000000e+00>
  %.sroa.5107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hm, i64 32
  %i.hw = insertelement <2 x double> %i.er, double %i.fj, i64 1
  %i.hx = insertelement <2 x double> %i.fr, double %i.ev, i64 1
  %i.hy = fmul <2 x double> %i.hw, %i.hx          ; 2 uses
  %i.hz = shufflevector <2 x double> %i.hy, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ia = insertelement <2 x double> %i.hz, double %i.fo, i64 1
  %i.ib = fadd <2 x double> %i.gs, %i.ia
  %i.ic = fmul <2 x double> %i.ib, <double -2.000000e+00, double 2.000000e+00>
  store <2 x double> %i.ic, ptr %.sroa.6132.0..sroa_idx, align 8, !tbaa !97
  store <2 x double> %i.hq, ptr %i.hm, align 8, !tbaa !97
  %i.id = shufflevector <2 x double> %i.fm, <2 x double> %i.fu, <2 x i32> <i32 1, i32 2>
  %i.ie = fadd <2 x double> %i.hy, %i.id
  %i.if = fmul <2 x double> %i.ie, splat (double -2.000000e+00)
  store <2 x double> %i.hv, ptr %.sroa.6114.0..sroa_idx, align 8, !tbaa !97
  store <2 x double> %i.if, ptr %.sroa.5107.0..sroa_idx, align 8, !tbaa !97
  %shift = shufflevector <2 x double> %13, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop287 = fadd <2 x double> %shift, %13
  %14 = extractelement <2 x double> %foldExtExtBinop287, i64 0
  %i.ig = fmul double %14, 2.000000e+00
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hm, i64 48
  %i.ii = fmul <2 x double> %i.fz, %i.ff
  %i.ij = fmul <2 x double> %i.fc, %i.hf
  %i.ik = fadd <2 x double> %i.ij, %i.ii          ; 3 uses
  %i.il = fmul <2 x double> %i.he, %i.gy
  %i.im = fmul <2 x double> %i.gk, %i.hc
  %i.in = fadd <2 x double> %i.il, %i.im          ; 3 uses
  %i.io = fadd <2 x double> %i.ik, %i.in
  %i.ip = fmul <2 x double> %i.io, splat (double 2.000000e+00)
  store <2 x double> %i.ip, ptr %i.ih, align 8, !tbaa !97
  %.sroa.6102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hm, i64 64
  store double %i.ig, ptr %.sroa.6102.0..sroa_idx, align 8, !tbaa !97
  %i.iq = getelementptr inbounds nuw i8, ptr %i.fa, i64 32
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !186 ; 5 uses
  %i.is = fadd <2 x double> %i.hi, %i.hh
  %i.it = fmul <2 x double> %i.is, splat (double 2.000000e+00)
  store <2 x double> %i.it, ptr %i.ir, align 8, !tbaa !97
  %.sroa.696.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ir, i64 16
  %i.iu = fadd double %i.gt, %i.gu
  %foldExtExtBinop287.a = fsub <2 x double> %i.ik, %i.in
  %i.iv = insertelement <2 x double> poison, double %i.iu, i64 0
  %i.iw = shufflevector <2 x double> %i.iv, <2 x double> %foldExtExtBinop287.a, <2 x i32> <i32 0, i32 2>
  %i.ix = fmul <2 x double> %i.iw, splat (double 2.000000e+00) ; 2 uses
  store <2 x double> %i.ix, ptr %.sroa.696.0..sroa_idx, align 8, !tbaa !97
  %.sroa.589.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ir, i64 32
  %15 = shufflevector <2 x double> %i.ik, <2 x double> %13, <2 x i32> <i32 1, i32 3>
  %16 = shufflevector <2 x double> %i.in, <2 x double> %13, <2 x i32> <i32 1, i32 2>
  %i.iy = fsub <2 x double> %15, %16
  %i.iz = fmul <2 x double> %i.iy, splat (double 2.000000e+00) ; 2 uses
  store <2 x double> %i.iz, ptr %.sroa.589.0..sroa_idx, align 8, !tbaa !97
  %i.ja = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.fu)
  %i.jb = fmul double %i.ja, -2.000000e+00        ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ir, i64 48
  %i.jd = insertelement <2 x double> %i.hz, double %i.et, i64 0
  %i.je = fadd <2 x double> %i.jd, %i.fe
  %i.jf = fmul <2 x double> %i.je, splat (double -2.000000e+00)
  store <2 x double> %i.jf, ptr %i.jc, align 8, !tbaa !97
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ir, i64 64
  store double %i.jb, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !97
  %i.jg = load ptr, ptr %i.cq, align 8, !tbaa !146
  %i.jh = getelementptr inbounds nuw [24 x i8], ptr %i.jg, i64 %.032263 ; 5 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 8 ; 3 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jh, i64 16 ; 2 uses
  %i.jk = load ptr, ptr %i.fa, align 8, !tbaa !186 ; 3 uses
  %i.jl = load double, ptr %i.jk, align 8, !tbaa !97
  %i.jm = load double, ptr %i.jh, align 8, !tbaa !97
  %i.jn = call double @llvm.fmuladd.f64(double %i.jl, double %i.jm, double %.033262)
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jk, i64 24
  %i.jp = load double, ptr %i.jo, align 8, !tbaa !97
  %i.jq = load double, ptr %i.ji, align 8, !tbaa !97
  %i.jr = call double @llvm.fmuladd.f64(double %i.jp, double %i.jq, double %i.jn)
  %i.js = getelementptr inbounds nuw i8, ptr %i.jk, i64 48
  %i.jt = load double, ptr %i.js, align 8, !tbaa !97
  %i.ju = load double, ptr %i.jj, align 8, !tbaa !97
  %i.jv = call double @llvm.fmuladd.f64(double %i.jt, double %i.ju, double %i.jr)
  %i.jw = load double, ptr %.sroa.5113.0..sroa_idx, align 8, !tbaa !97
  %i.jx = load double, ptr %i.jh, align 8, !tbaa !97
  %i.jy = call double @llvm.fmuladd.f64(double %i.jw, double %i.jx, double %i.jv)
  %i.jz = getelementptr inbounds nuw i8, ptr %i.hm, i64 32
  %i.ka = load double, ptr %i.jz, align 8, !tbaa !97
  %i.kb = load double, ptr %i.ji, align 8, !tbaa !97
  %i.kc = call double @llvm.fmuladd.f64(double %i.ka, double %i.kb, double %i.jy)
  %i.kd = getelementptr inbounds nuw i8, ptr %i.hm, i64 56
  %i.ke = load double, ptr %i.kd, align 8, !tbaa !97
  %i.kf = load double, ptr %i.jj, align 8, !tbaa !97 ; 2 uses
  %i.kg = call double @llvm.fmuladd.f64(double %i.ke, double %i.kf, double %i.kc)
  %i.kh = load double, ptr %i.jh, align 8, !tbaa !97
  %i.ki = extractelement <2 x double> %i.ix, i64 0
  %i.kj = call double @llvm.fmuladd.f64(double %i.ki, double %i.kh, double %i.kg)
  %i.kk = load double, ptr %i.ji, align 8, !tbaa !97
  %i.kl = extractelement <2 x double> %i.iz, i64 1
  %i.km = call double @llvm.fmuladd.f64(double %i.kl, double %i.kk, double %i.kj)
  %i.kn = call double @llvm.fmuladd.f64(double %i.jb, double %i.kf, double %i.km) ; 2 uses
  %i.ko = add nuw i64 %.032263, 1                 ; 2 uses
  %i.kp = load ptr, ptr %i.ae, align 8, !tbaa !161 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 1144
  %i.kr = load i64, ptr %i.kq, align 8, !tbaa !127
  %i.ks = icmp ult i64 %i.ko, %i.kr
  br i1 %i.ks, label %bb.l, label %._crit_edge, !llvm.loop !522

bb.n:                                             ; preds = %bb.m, %bb.k
  %.pn65.pn = phi { ptr, i32 } [ %i.dt, %bb.k ], [ %i.em, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @_ZN12colvarmodule8matrix2dINS_7rvectorEED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %common.resume
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZThn320_N6colvar11eigenvectorD1Ev(ptr noundef %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -320 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 216) (i8, ptr @_ZTVN6colvar11eigenvectorE, i64 16), ptr %i.a, align 8, !tbaa !91
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6colvar11eigenvectorE, i64 248), ptr %0, align 8, !tbaa !91
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1320
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !146  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1336
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !147
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #25, !inline_history !156
  br label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1296
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !146  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i1.i, label %_ZN6colvar11eigenvectorD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !147
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #25, !inline_history !156
  br label %_ZN6colvar11eigenvectorD2Ev.exit

_ZN6colvar11eigenvectorD2Ev.exit:                 ; preds = %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit.i, %bb.c
  tail call void @_ZN6colvar3cvcD2Ev(ptr noundef nonnull align 8 dead_on_return(1608) dereferenceable(1672) %i.a) #24, !inline_history !156
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZThn320_N6colvar11eigenvectorD0Ev(ptr noundef %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -320 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 216) (i8, ptr @_ZTVN6colvar11eigenvectorE, i64 16), ptr %i.a, align 8, !tbaa !91
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6colvar11eigenvectorE, i64 248), ptr %0, align 8, !tbaa !91
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1320
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !146  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1336
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !147
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #25, !inline_history !528
  br label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit.i.i

_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit.i.i: ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1296
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !146  ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i1.i.i, label %_ZN6colvar11eigenvectorD0Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !147
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #25, !inline_history !528
  br label %_ZN6colvar11eigenvectorD0Ev.exit

_ZN6colvar11eigenvectorD0Ev.exit:                 ; preds = %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit.i.i, %bb.c
  tail call void @_ZN6colvar3cvcD2Ev(ptr noundef nonnull align 8 dead_on_return(1608) dereferenceable(1672) %i.a) #24, !inline_history !528
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(1672) %i.a, i64 noundef 1672) #25, !inline_history !529
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6colvar4rmsdD2Ev(ptr noundef nonnull align 8 dead_on_return(1656) dereferenceable(1656) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 216) (i8, ptr @_ZTVN6colvar4rmsdE, i64 16), ptr %0, align 8, !tbaa !91
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6colvar4rmsdE, i64 248), ptr %i.a, align 8, !tbaa !91
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1616
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !146  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1632
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !147
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #25
  br label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit

_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN6colvar3cvcD2Ev(ptr noundef nonnull align 8 dead_on_return(1608) dereferenceable(1608) %0) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6colvar4rmsdD0Ev(ptr noundef nonnull align 8 dereferenceable(1656) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 216) (i8, ptr @_ZTVN6colvar4rmsdE, i64 16), ptr %0, align 8, !tbaa !91
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6colvar4rmsdE, i64 248), ptr %i.a, align 8, !tbaa !91
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1616
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !146  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZN6colvar4rmsdD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1632
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !147
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #25, !inline_history !187
  br label %_ZN6colvar4rmsdD2Ev.exit

_ZN6colvar4rmsdD2Ev.exit:                         ; preds = %bb.a, %bb.b
  tail call void @_ZN6colvar3cvcD2Ev(ptr noundef nonnull align 8 dead_on_return(1608) dereferenceable(1656) %0) #24, !inline_history !187
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 1656) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN6colvar4rmsd4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1656) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
end_hunk_0
