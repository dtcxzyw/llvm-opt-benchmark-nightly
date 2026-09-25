Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/stats?download=true
inline.NumInlined: 283
inline.NumDeleted: 5
begin_hunk_0_@_ZN7CaDiCaL5Stats5printEPNS_8InternalE:bb.a
  %i.bx = load i64, ptr %i.bn, align 8, !tbaa !179 ; 2 uses
  %i.by = sitofp i64 %i.bx to double
  %.not1789 = icmp eq i64 %i.bx, 0
  %i.bz = fdiv double %i.bw, %i.by
  %i.ca = select i1 %.not1789, double 0.000000e+00, double %i.bz
  tail call void (ptr, ptr, ...) @_ZN7CaDiCaL8Internal7messageEPKcz(ptr noundef nonnull align 8 dereferenceable(7288) %1, ptr noundef nonnull @.str.4, i64 noundef %i.bv, double noundef %i.ca)
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 5480 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !181 ; 2 uses
  %i.cd = sitofp i64 %i.cc to double
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 3920
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !182 ; 2 uses
  %i.cg = sitofp i64 %i.cf to double
  %i.ch = fmul nnan double %i.cd, 1.000000e+02
  %.not1790 = icmp eq i64 %i.cf, 0
  %i.ci = fdiv double %i.ch, %i.cg
  %i.cj = select i1 %.not1790, double 0.000000e+00, double %i.ci
  tail call void (ptr, ptr, ...) @_ZN7CaDiCaL8Internal7messageEPKcz(ptr noundef nonnull align 8 dereferenceable(7288) %1, ptr noundef nonnull @.str.5, i64 noundef %i.cc, double noundef %i.cj)
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 5328
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !183 ; 2 uses
  %i.cm = sitofp i64 %i.cl to double
  %i.cn = load i64, ptr %i.cb, align 8, !tbaa !181 ; 2 uses
  %i.co = sitofp i64 %i.cn to double
  %.not1791 = icmp eq i64 %i.cn, 0
  %i.cp = fdiv double %i.cm, %i.co
  %i.cq = select i1 %.not1791, double 0.000000e+00, double %i.cp
  tail call void (ptr, ptr, ...) @_ZN7CaDiCaL8Internal7messageEPKcz(ptr noundef nonnull align 8 dereferenceable(7288) %1, ptr noundef nonnull @.str.6, i64 noundef %i.cl, double noundef %i.cq)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 4592
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !184
  br label %bb.h

.critedge1498:                                    ; preds = %bb.f, %bb.g
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 4592
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !184 ; 2 uses
  %.not1467 = icmp eq i64 %i.cs, 0
  br i1 %.not1467, label %.critedge1500, label %bb.h

bb.h:                                             ; preds = %.critedge1498, %.critedge1497.thread
  %i.ct = phi i64 [ %i.cs, %.critedge1498 ], [ %.pre, %.critedge1497.thread ] ; 2 uses
  %i.cu = sitofp i64 %i.ct to double
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 3928 ; 3 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !178 ; 2 uses
  %i.cx = sitofp i64 %i.cw to double
  %i.cy = fmul nnan double %i.cu, 1.000000e+02
  %.not1792 = icmp eq i64 %i.cw, 0
  %i.cz = fdiv double %i.cy, %i.cx
  %i.da = select i1 %.not1792, double 0.000000e+00, double %i.cz
  tail call void (ptr, ptr, ...) @_ZN7CaDiCaL8Internal7messageEPKcz(ptr noundef nonnull align 8 dereferenceable(7288) %1, ptr noundef nonnull @.str.7, i64 noundef %i.ct, double noundef %i.da)
  br i1 %i.g, label %bb.i, label %.critedge1500

bb.i:                                             ; preds = %bb.h
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 4496
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !185 ; 3 uses
  %i.dd = load i64, ptr %i.cv, align 8, !tbaa !178
  %i.de = sitofp i64 %i.dd to double
  %i.df = sitofp i64 %i.dc to double
  %.not1793 = icmp eq i64 %i.dc, 0
  %i.dg = fdiv double %i.de, %i.df
  %i.dh = select i1 %.not1793, double 0.000000e+00, double %i.dg
  tail call void (ptr, ptr, ...) @_ZN7CaDiCaL8Internal7messageEPKcz(ptr noundef nonnull align 8 dereferenceable(7288) %1, ptr noundef nonnull @.str.8, i64 noundef %i.dc, double noundef %i.dh)
  %.pre1966 = load i64, ptr %i.cv, align 8, !tbaa !178
  br label %bb.j

.critedge1500:                                    ; preds = %.critedge1498, %bb.h
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 3928
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !178 ; 2 uses
  %.not1468 = icmp eq i64 %i.dj, 0
  br i1 %.not1468, label %.critedge1502, label %bb.j

bb.j:                                             ; preds = %bb.i, %.critedge1500
  %i.dk = phi i64 [ %.pre1966, %bb.i ], [ %i.dj, %.critedge1500 ] ; 2 uses
  %i.dl = sitofp i64 %i.dk to double
  %i.dm = fcmp une double %i.j, 0.000000e+00      ; 2 uses
  %i.dn = fdiv double %i.dl, %i.j
  %i.do = select i1 %i.dm, double %i.dn, double 0.000000e+00
  tail call void (ptr, ptr, ...) @_ZN7CaDiCaL8Internal7messageEPKcz(ptr noundef nonnull align 8 dereferenceable(7288) %1, ptr noundef nonnull @.str.9, i64 noundef %i.dk, double noundef %i.do)
  br i1 %i.g, label %.critedge1535, label %.critedge1502

.critedge1502:                                    ; preds = %.critedge1500, %bb.j
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 4152
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !186 ; 3 uses
  %.not1469 = icmp eq i64 %i.dq, 0
  br i1 %.not1469, label %.critedge1512, label %bb.k

bb.k:                                             ; preds = %.critedge1502
  %i.dr = sitofp i64 %i.dq to double
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 4248
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !176 ; 2 uses
  %i.du = sitofp i64 %i.dt to double
  %i.dv = fmul nnan double %i.dr, 1.000000e+02
  %.not1794 = icmp eq i64 %i.dt, 0
  %i.dw = fdiv double %i.dv, %i.du
  %i.dx = select i1 %.not1794, double 0.000000e+00, double %i.dw
  tail call void (ptr, ptr, ...) @_ZN7CaDiCaL8Internal7messageEPKcz(ptr noundef nonnull align 8 dereferenceable(7288) %1, ptr noundef nonnull @.str.11, i64 noundef %i.dq, double noundef %i.dx)
  br label %.critedge1512

.critedge1512:                                    ; preds = %.critedge1502, %bb.k
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 4296
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !187 ; 3 uses
  %.not1470 = icmp eq i64 %i.dz, 0
  br i1 %.not1470, label %.critedge1516, label %bb.l

bb.l:                                             ; preds = %.critedge1512
  %i.ea = sitofp i64 %i.dz to double
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 4248
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !176 ; 2 uses
  %i.ed = sitofp i64 %i.ec to double
  %i.ee = fmul nnan double %i.ea, 1.000000e+02
  %.not1795 = icmp eq i64 %i.ec, 0
  %i.ef = fdiv double %i.ee, %i.ed
  %i.eg = select i1 %.not1795, double 0.000000e+00, double %i.ef
  tail call void (ptr, ptr, ...) @_ZN7CaDiCaL8Internal7messageEPKcz(ptr noundef nonnull align 8 dereferenceable(7288) %1, ptr noundef nonnull @.str.21, i64 noundef %i.dz, double noundef %i.eg)
  br label %.critedge1516

.critedge1516:                                    ; preds = %.critedge1512, %bb.l
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 3936
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !188 ; 3 uses
  %.not1471 = icmp eq i64 %i.ei, 0
  br i1 %.not1471, label %.critedge1518, label %bb.m

bb.m:                                             ; preds = %.critedge1516
  %i.ej = sitofp i64 %i.ei to double
  %i.ek = fcmp une double %i.j, 0.000000e+00
  %i.el = fdiv double %i.ej, %i.j
  %i.em = select i1 %i.ek, double %i.el, double 0.000000e+00
  tail call void (ptr, ptr, ...) @_ZN7CaDiCaL8Internal7messageEPKcz(ptr noundef nonnull align 8 dereferenceable(7288) %1, ptr noundef nonnull @.str.25, i64 noundef %i.ei, double noundef %i.em)
  br label %.critedge1518

.critedge1518:                                    ; preds = %.critedge1516, %bb.m
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 5464
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !189 ; 3 uses
  %.not1472 = icmp eq i64 %i.eo, 0
  br i1 %.not1472, label %.critedge1530, label %bb.n

bb.n:                                             ; preds = %.critedge1518
  %i.ep = sitofp i64 %i.eo to double
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 3920
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !182 ; 2 uses
  %i.es = sitofp i64 %i.er to double
  %i.et = fmul nnan double %i.ep, 1.000000e+02
  %.not1796 = icmp eq i64 %i.er, 0
  %i.eu = fdiv double %i.et, %i.es
  %i.ev = select i1 %.not1796, double 0.000000e+00, double %i.eu
  tail call void (ptr, ptr, ...) @_ZN7CaDiCaL8Internal7messageEPKcz(ptr noundef nonnull align 8 dereferenceable(7288) %1, ptr noundef nonnull @.str.27, i64 noundef %i.eo, double noundef %i.ev)
  br label %.critedge1530

.critedge1530:                                    ; preds = %.critedge1518, %bb.n
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 4000 ; 2 uses
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !190 ; 2 uses
  %.not1473 = icmp eq i64 %i.ex, 0
  br i1 %.not1473, label %.thread1775, label %.critedge1536.critedge

.critedge1535:                                    ; preds = %bb.j
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 3928 ; 4 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 4600
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !191 ; 2 uses
  %i.fb = sitofp i64 %i.fa to double
  %i.fc = load i64, ptr %i.ey, align 8, !tbaa !178 ; 2 uses
  %i.fd = sitofp i64 %i.fc to double
  %i.fe = fmul nnan double %i.fb, 1.000000e+02
  %.not1798 = icmp eq i64 %i.fc, 0
  %i.ff = fdiv double %i.fe, %i.fd
  %i.fg = select i1 %.not1798, double 0.000000e+00, double %i.ff
  tail call void (ptr, ptr, ...) @_ZN7CaDiCaL8Internal7messageEPKcz(ptr noundef nonnull align 8 dereferenceable(7288) %1, ptr noundef nonnull @.str.10, i64 noundef %i.fa, double noundef %i.fg)
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 4152 ; 4 uses
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !186 ; 2 uses
  %i.fj = sitofp i64 %i.fi to double
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 4248 ; 2 uses
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !176 ; 2 uses
  %i.fm = sitofp i64 %i.fl to double
  %i.fn = fmul nnan double %i.fj, 1.000000e+02
  %.not1799 = icmp eq i64 %i.fl, 0
  %i.fo = fdiv double %i.fn, %i.fm
  %i.fp = select i1 %.not1799, double 0.000000e+00, double %i.fo
  tail call void (ptr, ptr, ...) @_ZN7CaDiCaL8Internal7messageEPKcz(ptr noundef nonnull align 8 dereferenceable(7288) %1, ptr noundef nonnull @.str.11, i64 noundef %i.fi, double noundef %i.fp)
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 4160 ; 5 uses
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !192 ; 3 uses
  %i.fs = load i64, ptr %i.ey, align 8, !tbaa !178
  %i.ft = sitofp i64 %i.fs to double
  %i.fu = sitofp i64 %i.fr to double
  %.not1800 = icmp eq i64 %i.fr, 0
  %i.fv = fdiv double %i.ft, %i.fu
  %i.fw = select i1 %.not1800, double 0.000000e+00, double %i.fv
  tail call void (ptr, ptr, ...) @_ZN7CaDiCaL8Internal7messageEPKcz(ptr noundef nonnull align 8 dereferenceable(7288) %1, ptr noundef nonnull @.str.12, i64 noundef %i.fr, double noundef %i.fw)
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 4128 ; 2 uses
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !193 ; 2 uses
  %i.fz = sitofp i64 %i.fy to double
  %i.ga = load i64, ptr %i.fq, align 8, !tbaa !192 ; 2 uses
  %i.gb = sitofp i64 %i.ga to double
  %.not1801 = icmp eq i64 %i.ga, 0
  %i.gc = fdiv double %i.fz, %i.gb
  %i.gd = select i1 %.not1801, double 0.000000e+00, double %i.gc
  tail call void (ptr, ptr, ...) @_ZN7CaDiCaL8Internal7messageEPKcz(ptr noundef nonnull align 8 dereferenceable(7288) %1, ptr noundef nonnull @.str.13, i64 noundef %i.fy, double noundef %i.gd)
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 4080 ; 3 uses
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !194
  %i.gg = load i64, ptr %i.fq, align 8, !tbaa !192 ; 2 uses
  %.not1802 = icmp eq i64 %i.gg, 0
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 4104
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !195 ; 2 uses
  %.not1803 = icmp eq i64 %i.gi, 0
  %i.gj = sitofp i64 %i.gf to double
  %i.gk = sitofp i64 %i.gi to double
  %i.gl = sitofp i64 %i.gg to double
  %i.gm = insertelement <2 x double> poison, double %i.gj, i64 0
  %i.gn = shufflevector <2 x double> %i.gm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.go = fmul nnan <2 x double> %i.gn, <double 1.000000e+00, double 1.000000e+02>
  %i.gp = insertelement <2 x double> poison, double %i.gl, i64 0
  %i.gq = insertelement <2 x double> %i.gp, double %i.gk, i64 1
  %i.gr = fdiv <2 x double> %i.go, %i.gq          ; 2 uses
  %i.gs = extractelement <2 x double> %i.gr, i64 0
  %i.gt = select i1 %.not1802, double 0.000000e+00, double %i.gs
  %i.gu = extractelement <2 x double> %i.gr, i64 1
  %i.gv = select i1 %.not1803, double 0.000000e+00, double %i.gu
  tail call void (ptr, ptr, ...) @_ZN7CaDiCaL8Internal7messageEPKcz(ptr noundef nonnull align 8 dereferenceable(7288) %1, ptr noundef nonnull @.str.14, double noundef %i.gt, double noundef %i.gv)
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 4136
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !196
  %i.gy = load i64, ptr %i.fq, align 8, !tbaa !192 ; 2 uses
  %.not1804 = icmp eq i64 %i.gy, 0
  %i.gz = load i64, ptr %i.ge, align 8, !tbaa !194 ; 2 uses
  %.not1805 = icmp eq i64 %i.gz, 0
  %i.ha = sitofp i64 %i.gx to double
  %i.hb = sitofp i64 %i.gz to double
  %i.hc = sitofp i64 %i.gy to double
  %i.hd = insertelement <2 x double> poison, double %i.ha, i64 0
  %i.he = shufflevector <2 x double> %i.hd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hf = fmul nnan <2 x double> %i.he, <double 1.000000e+00, double 1.000000e+02>
  %i.hg = insertelement <2 x double> poison, double %i.hc, i64 0
  %i.hh = insertelement <2 x double> %i.hg, double %i.hb, i64 1
  %i.hi = fdiv <2 x double> %i.hf, %i.hh          ; 2 uses
  %i.hj = extractelement <2 x double> %i.hi, i64 0
  %i.hk = select i1 %.not1804, double 0.000000e+00, double %i.hj
  %i.hl = extractelement <2 x double> %i.hi, i64 1
  %i.hm = select i1 %.not1805, double 0.000000e+00, double %i.hl
  tail call void (ptr, ptr, ...) @_ZN7CaDiCaL8Internal7messageEPKcz(ptr noundef nonnull align 8 dereferenceable(7288) %1, ptr noundef nonnull @.str.15, double noundef %i.hk, double noundef %i.hm)
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 4112
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !197
  %i.hp = load i64, ptr %i.fq, align 8, !tbaa !192 ; 2 uses
  %.not1806 = icmp eq i64 %i.hp, 0
  %i.hq = load i64, ptr %i.ge, align 8, !tbaa !194 ; 2 uses
  %.not1807 = icmp eq i64 %i.hq, 0
  %i.hr = sitofp i64 %i.ho to double
  %i.hs = sitofp i64 %i.hq to double
  %i.ht = sitofp i64 %i.hp to double
  %i.hu = insertelement <2 x double> poison, double %i.hr, i64 0
  %i.hv = shufflevector <2 x double> %i.hu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hw = fmul nnan <2 x double> %i.hv, <double 1.000000e+00, double 1.000000e+02>
  %i.hx = insertelement <2 x double> poison, double %i.ht, i64 0
  %i.hy = insertelement <2 x double> %i.hx, double %i.hs, i64 1
  %i.hz = fdiv <2 x double> %i.hw, %i.hy          ; 2 uses
  %i.ia = extractelement <2 x double> %i.hz, i64 0
  %i.ib = select i1 %.not1806, double 0.000000e+00, double %i.ia
  %i.ic = extractelement <2 x double> %i.hz, i64 1
  %i.id = select i1 %.not1807, double 0.000000e+00, double %i.ic
  tail call void (ptr, ptr, ...) @_ZN7CaDiCaL8Internal7messageEPKcz(ptr noundef nonnull align 8 dereferenceable(7288) %1, ptr noundef nonnull @.str.16, double noundef %i.ib, double noundef %i.id)
  %i.ie = getelementptr inbounds nuw i8, ptr %1, i64 4096 ; 3 uses
  %i.if = load i64, ptr %i.ie, align 8, !tbaa !198
  %i.ig = load i64, ptr %i.fh, align 8, !tbaa !186 ; 2 uses
  %.not1808 = icmp eq i64 %i.ig, 0
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 4088
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !199 ; 2 uses
  %.not1809 = icmp eq i64 %i.ii, 0
  %i.ij = sitofp i64 %i.if to double
  %i.ik = sitofp i64 %i.ii to double
  %i.il = sitofp i64 %i.ig to double
  %i.im = insertelement <2 x double> poison, double %i.ij, i64 0
  %i.in = shufflevector <2 x double> %i.im, <2 x double> poison, <2 x i32> zeroinitializer
  %i.io = fmul nnan <2 x double> %i.in, <double 1.000000e+00, double 1.000000e+02>
  %i.ip = insertelement <2 x double> poison, double %i.il, i64 0
  %i.iq = insertelement <2 x double> %i.ip, double %i.ik, i64 1
  %i.ir = fdiv <2 x double> %i.io, %i.iq          ; 2 uses
  %i.is = extractelement <2 x double> %i.ir, i64 0
  %i.it = select i1 %.not1808, double 0.000000e+00, double %i.is
  %i.iu = extractelement <2 x double> %i.ir, i64 1
  %i.iv = select i1 %.not1809, double 0.000000e+00, double %i.iu
  tail call void (ptr, ptr, ...) @_ZN7CaDiCaL8Internal7messageEPKcz(ptr noundef nonnull align 8 dereferenceable(7288) %1, ptr noundef nonnull @.str.17, double noundef %i.it, double noundef %i.iv)
  %i.iw = getelementptr inbounds nuw i8, ptr %1, i64 4144
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !200
  %i.iy = load i64, ptr %i.fh, align 8, !tbaa !186 ; 2 uses
  %.not1810 = icmp eq i64 %i.iy, 0
  %i.iz = load i64, ptr %i.ie, align 8, !tbaa !198 ; 2 uses
  %.not1811 = icmp eq i64 %i.iz, 0
  %i.ja = sitofp i64 %i.ix to double
  %i.jb = sitofp i64 %i.iz to double
  %i.jc = sitofp i64 %i.iy to double
  %i.jd = insertelement <2 x double> poison, double %i.ja, i64 0
  %i.je = shufflevector <2 x double> %i.jd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jf = fmul nnan <2 x double> %i.je, <double 1.000000e+00, double 1.000000e+02>
  %i.jg = insertelement <2 x double> poison, double %i.jc, i64 0
  %i.jh = insertelement <2 x double> %i.jg, double %i.jb, i64 1
  %i.ji = fdiv <2 x double> %i.jf, %i.jh          ; 2 uses
  %i.jj = extractelement <2 x double> %i.ji, i64 0
  %i.jk = select i1 %.not1810, double 0.000000e+00, double %i.jj
  %i.jl = extractelement <2 x double> %i.ji, i64 1
  %i.jm = select i1 %.not1811, double 0.000000e+00, double %i.jl
  tail call void (ptr, ptr, ...) @_ZN7CaDiCaL8Internal7messageEPKcz(ptr noundef nonnull align 8 dereferenceable(7288) %1, ptr noundef nonnull @.str.18, double noundef %i.jk, double noundef %i.jm)
  %i.jn = getelementptr inbounds nuw i8, ptr %1, i64 4120
  %i.jo = load i64, ptr %i.jn, align 8, !tbaa !201
  %i.jp = load i64, ptr %i.fh, align 8, !tbaa !186 ; 2 uses
  %.not1812 = icmp eq i64 %i.jp, 0
  %i.jq = load i64, ptr %i.ie, align 8, !tbaa !198 ; 2 uses
  %.not1813 = icmp eq i64 %i.jq, 0
  %i.jr = sitofp i64 %i.jo to double
  %i.js = sitofp i64 %i.jq to double
  %i.jt = sitofp i64 %i.jp to double
  %i.ju = insertelement <2 x double> poison, double %i.jr, i64 0
  %i.jv = shufflevector <2 x double> %i.ju, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jw = fmul nnan <2 x double> %i.jv, <double 1.000000e+00, double 1.000000e+02>
  %i.jx = insertelement <2 x double> poison, double %i.jt, i64 0
  %i.jy = insertelement <2 x double> %i.jx, double %i.js, i64 1
  %i.jz = fdiv <2 x double> %i.jw, %i.jy          ; 2 uses
  %i.ka = extractelement <2 x double> %i.jz, i64 0
  %i.kb = select i1 %.not1812, double 0.000000e+00, double %i.ka
  %i.kc = extractelement <2 x double> %i.jz, i64 1
  %i.kd = select i1 %.not1813, double 0.000000e+00, double %i.kc
  tail call void (ptr, ptr, ...) @_ZN7CaDiCaL8Internal7messageEPKcz(ptr noundef nonnull align 8 dereferenceable(7288) %1, ptr noundef nonnull @.str.19, double noundef %i.kb, double noundef %i.kd)
  %i.ke = getelementptr inbounds nuw i8, ptr %1, i64 4168
  %i.kf = load i64, ptr %i.ke, align 8, !tbaa !202 ; 2 uses
  %i.kg = sitofp i64 %i.kf to double
  %i.kh = load i64, ptr %i.fx, align 8, !tbaa !193 ; 2 uses
  %i.ki = sitofp i64 %i.kh to double
  %.not1814 = icmp eq i64 %i.kh, 0
  %i.kj = fdiv double %i.kg, %i.ki
  %i.kk = select i1 %.not1814, double 0.000000e+00, double %i.kj
  tail call void (ptr, ptr, ...) @_ZN7CaDiCaL8Internal7messageEPKcz(ptr noundef nonnull align 8 dereferenceable(7288) %1, ptr noundef nonnull @.str.20, i64 noundef %i.kf, double noundef %i.kk)
  %i.kl = getelementptr inbounds nuw i8, ptr %1, i64 4296 ; 3 uses
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !187 ; 2 uses
  %i.kn = sitofp i64 %i.km to double
  %i.ko = load i64, ptr %i.fk, align 8, !tbaa !176 ; 2 uses
  %i.kp = sitofp i64 %i.ko to double
  %i.kq = fmul nnan double %i.kn, 1.000000e+02
  %.not1815 = icmp eq i64 %i.ko, 0
  %i.kr = fdiv double %i.kq, %i.kp
  %i.ks = select i1 %.not1815, double 0.000000e+00, double %i.kr
  tail call void (ptr, ptr, ...) @_ZN7CaDiCaL8Internal7messageEPKcz(ptr noundef nonnull align 8 dereferenceable(7288) %1, ptr noundef nonnull @.str.21, i64 noundef %i.km, double noundef %i.ks)
  %i.kt = getelementptr inbounds nuw i8, ptr %1, i64 4272
  %i.ku = load i64, ptr %i.kt, align 8, !tbaa !203 ; 3 uses
  %i.kv = load i64, ptr %i.ey, align 8, !tbaa !178
  %i.kw = sitofp i64 %i.kv to double
  %i.kx = sitofp i64 %i.ku to double
  %.not1816 = icmp eq i64 %i.ku, 0
  %i.ky = fdiv double %i.kw, %i.kx
  %i.kz = select i1 %.not1816, double 0.000000e+00, double %i.ky
  tail call void (ptr, ptr, ...) @_ZN7CaDiCaL8Internal7messageEPKcz(ptr noundef nonnull align 8 dereferenceable(7288) %1, ptr noundef nonnull @.str.22, i64 noundef %i.ku, double noundef %i.kz)
  %i.la = getelementptr inbounds nuw i8, ptr %1, i64 4280
  %i.lb = load i64, ptr %i.la, align 8, !tbaa !204 ; 2 uses
  %i.lc = sitofp i64 %i.lb to double
  %i.ld = load i64, ptr %i.kl, align 8, !tbaa !187 ; 2 uses
  %i.le = sitofp i64 %i.ld to double
  %i.lf = fmul nnan double %i.lc, 1.000000e+02
  %.not1817 = icmp eq i64 %i.ld, 0
  %i.lg = fdiv double %i.lf, %i.le
  %i.lh = select i1 %.not1817, double 0.000000e+00, double %i.lg
  tail call void (ptr, ptr, ...) @_ZN7CaDiCaL8Internal7messageEPKcz(ptr noundef nonnull align 8 dereferenceable(7288) %1, ptr noundef nonnull @.str.23, i64 noundef %i.lb, double noundef %i.lh)
  %i.li = getelementptr inbounds nuw i8, ptr %1, i64 4288
  %i.lj = load i64, ptr %i.li, align 8, !tbaa !205 ; 2 uses
  %i.lk = sitofp i64 %i.lj to double
  %i.ll = load i64, ptr %i.kl, align 8, !tbaa !187 ; 2 uses
  %i.lm = sitofp i64 %i.ll to double
  %i.ln = fmul nnan double %i.lk, 1.000000e+02
  %.not1818 = icmp eq i64 %i.ll, 0
  %i.lo = fdiv double %i.ln, %i.lm
  %i.lp = select i1 %.not1818, double 0.000000e+00, double %i.lo
  tail call void (ptr, ptr, ...) @_ZN7CaDiCaL8Internal7messageEPKcz(ptr noundef nonnull align 8 dereferenceable(7288) %1, ptr noundef nonnull @.str.24, i64 noundef %i.lj, double noundef %i.lp)
  %i.lq = getelementptr inbounds nuw i8, ptr %1, i64 3936 ; 2 uses
  %i.lr = load i64, ptr %i.lq, align 8, !tbaa !188 ; 2 uses
  %i.ls = sitofp i64 %i.lr to double
  %i.lt = fdiv double %i.ls, %i.j
  %i.lu = select i1 %i.dm, double %i.lt, double 0.000000e+00
  tail call void (ptr, ptr, ...) @_ZN7CaDiCaL8Internal7messageEPKcz(ptr noundef nonnull align 8 dereferenceable(7288) %1, ptr noundef nonnull @.str.25, i64 noundef %i.lr, double noundef %i.lu)
  %i.lv = getelementptr inbounds nuw i8, ptr %1, i64 4648
  %i.lw = load i64, ptr %i.lv, align 8, !tbaa !206 ; 2 uses
  %i.lx = sitofp i64 %i.lw to double
  %i.ly = load i64, ptr %i.lq, align 8, !tbaa !188 ; 2 uses
  %i.lz = sitofp i64 %i.ly to double
  %.not1819 = icmp eq i64 %i.ly, 0
  %i.ma = fdiv double %i.lx, %i.lz
  %i.mb = select i1 %.not1819, double 0.000000e+00, double %i.ma
  tail call void (ptr, ptr, ...) @_ZN7CaDiCaL8Internal7messageEPKcz(ptr noundef nonnull align 8 dereferenceable(7288) %1, ptr noundef nonnull @.str.26, i64 noundef %i.lw, double noundef %i.mb)
  %i.mc = getelementptr inbounds nuw i8, ptr %1, i64 5464 ; 4 uses
  %i.md = load i64, ptr %i.mc, align 8, !tbaa !189 ; 2 uses
  %i.me = sitofp i64 %i.md to double
  %i.mf = getelementptr inbounds nuw i8, ptr %1, i64 3920
  %i.mg = load i64, ptr %i.mf, align 8, !tbaa !182 ; 2 uses
  %i.mh = sitofp i64 %i.mg to double
  %i.mi = fmul nnan double %i.me, 1.000000e+02
  %.not1820 = icmp eq i64 %i.mg, 0
  %i.mj = fdiv double %i.mi, %i.mh
  %i.mk = select i1 %.not1820, double 0.000000e+00, double %i.mj
  tail call void (ptr, ptr, ...) @_ZN7CaDiCaL8Internal7messageEPKcz(ptr noundef nonnull align 8 dereferenceable(7288) %1, ptr noundef nonnull @.str.27, i64 noundef %i.md, double noundef %i.mk)
  %i.ml = getelementptr inbounds nuw i8, ptr %1, i64 4888 ; 2 uses
  %i.mm = load i64, ptr %i.ml, align 8, !tbaa !207 ; 3 uses
  %i.mn = load i64, ptr %i.ey, align 8, !tbaa !178
  %i.mo = sitofp i64 %i.mn to double
  %i.mp = sitofp i64 %i.mm to double
  %.not1821 = icmp eq i64 %i.mm, 0
  %i.mq = fdiv double %i.mo, %i.mp
  %i.mr = select i1 %.not1821, double 0.000000e+00, double %i.mq
  tail call void (ptr, ptr, ...) @_ZN7CaDiCaL8Internal7messageEPKcz(ptr noundef nonnull align 8 dereferenceable(7288) %1, ptr noundef nonnull @.str.28, i64 noundef %i.mm, double noundef %i.mr)
  %i.ms = getelementptr inbounds nuw i8, ptr %1, i64 4880
  %i.mt = load i64, ptr %i.ms, align 8, !tbaa !208 ; 2 uses
  %i.mu = sitofp i64 %i.mt to double
  %i.mv = load i64, ptr %i.ml, align 8, !tbaa !207 ; 2 uses
  %i.mw = sitofp i64 %i.mv to double
  %.not1822 = icmp eq i64 %i.mv, 0
  %i.mx = fdiv double %i.mu, %i.mw
  %i.my = select i1 %.not1822, double 0.000000e+00, double %i.mx
  tail call void (ptr, ptr, ...) @_ZN7CaDiCaL8Internal7messageEPKcz(ptr noundef nonnull align 8 dereferenceable(7288) %1, ptr noundef nonnull @.str.29, i64 noundef %i.mt, double noundef %i.my)
  %i.mz = getelementptr inbounds nuw i8, ptr %1, i64 4904 ; 2 uses
  %i.na = load i64, ptr %i.mz, align 8, !tbaa !209 ; 3 uses
  %i.nb = load i64, ptr %i.mc, align 8, !tbaa !189
  %i.nc = sitofp i64 %i.nb to double
  %i.nd = sitofp i64 %i.na to double
  %i.ne = fmul nnan double %i.nc, 1.000000e+02
  %.not1823 = icmp eq i64 %i.na, 0
  %i.nf = fdiv double %i.ne, %i.nd
  %i.ng = select i1 %.not1823, double 0.000000e+00, double %i.nf
  tail call void (ptr, ptr, ...) @_ZN7CaDiCaL8Internal7messageEPKcz(ptr noundef nonnull align 8 dereferenceable(7288) %1, ptr noundef nonnull @.str.30, i64 noundef %i.na, double noundef %i.ng)
  %i.nh = getelementptr inbounds nuw i8, ptr %1, i64 4920 ; 5 uses
  %i.ni = load i64, ptr %i.nh, align 8, !tbaa !210 ; 2 uses
  %i.nj = sitofp i64 %i.ni to double
  %i.nk = load i64, ptr %i.mz, align 8, !tbaa !209 ; 2 uses
  %i.nl = sitofp i64 %i.nk to double
  %i.nm = fmul nnan double %i.nj, 1.000000e+02
  %.not1824 = icmp eq i64 %i.nk, 0
  %i.nn = fdiv double %i.nm, %i.nl
  %i.no = select i1 %.not1824, double 0.000000e+00, double %i.nn
  tail call void (ptr, ptr, ...) @_ZN7CaDiCaL8Internal7messageEPKcz(ptr noundef nonnull align 8 dereferenceable(7288) %1, ptr noundef nonnull @.str.31, i64 noundef %i.ni, double noundef %i.no)
  %i.np = getelementptr inbounds nuw i8, ptr %1, i64 4928
  %i.nq = load i64, ptr %i.np, align 8, !tbaa !211 ; 2 uses
  %i.nr = sitofp i64 %i.nq to double
  %i.ns = load i64, ptr %i.nh, align 8, !tbaa !210 ; 2 uses
  %i.nt = sitofp i64 %i.ns to double
  %i.nu = fmul nnan double %i.nr, 1.000000e+02
  %.not1825 = icmp eq i64 %i.ns, 0
  %i.nv = fdiv double %i.nu, %i.nt
  %i.nw = select i1 %.not1825, double 0.000000e+00, double %i.nv
  tail call void (ptr, ptr, ...) @_ZN7CaDiCaL8Internal7messageEPKcz(ptr noundef nonnull align 8 dereferenceable(7288) %1, ptr noundef nonnull @.str.32, i64 noundef %i.nq, double noundef %i.nw)
  %i.nx = getelementptr inbounds nuw i8, ptr %1, i64 4936
  %i.ny = load i64, ptr %i.nx, align 8, !tbaa !212 ; 2 uses
  %i.nz = sitofp i64 %i.ny to double
  %i.oa = load i64, ptr %i.nh, align 8, !tbaa !210 ; 2 uses
  %i.ob = sitofp i64 %i.oa to double
  %i.oc = fmul nnan double %i.nz, 1.000000e+02
  %.not1826 = icmp eq i64 %i.oa, 0
  %i.od = fdiv double %i.oc, %i.ob
  %i.oe = select i1 %.not1826, double 0.000000e+00, double %i.od
  tail call void (ptr, ptr, ...) @_ZN7CaDiCaL8Internal7messageEPKcz(ptr noundef nonnull align 8 dereferenceable(7288) %1, ptr noundef nonnull @.str.33, i64 noundef %i.ny, double noundef %i.oe)
  %i.of = getelementptr inbounds nuw i8, ptr %1, i64 4944
  %i.og = load i64, ptr %i.of, align 8, !tbaa !213 ; 2 uses
  %i.oh = sitofp i64 %i.og to double
  %i.oi = load i64, ptr %i.nh, align 8, !tbaa !210 ; 2 uses
  %i.oj = sitofp i64 %i.oi to double
  %i.ok = fmul nnan double %i.oh, 1.000000e+02
  %.not1827 = icmp eq i64 %i.oi, 0
  %i.ol = fdiv double %i.ok, %i.oj
  %i.om = select i1 %.not1827, double 0.000000e+00, double %i.ol
  tail call void (ptr, ptr, ...) @_ZN7CaDiCaL8Internal7messageEPKcz(ptr noundef nonnull align 8 dereferenceable(7288) %1, ptr noundef nonnull @.str.34, i64 noundef %i.og, double noundef %i.om)
  %i.on = getelementptr inbounds nuw i8, ptr %1, i64 4952
  %i.oo = load i64, ptr %i.on, align 8, !tbaa !214 ; 2 uses
  %i.op = sitofp i64 %i.oo to double
  %i.oq = load i64, ptr %i.nh, align 8, !tbaa !210 ; 2 uses
  %i.or = sitofp i64 %i.oq to double
  %i.os = fmul nnan double %i.op, 1.000000e+02
  %.not1828 = icmp eq i64 %i.oq, 0
  %i.ot = fdiv double %i.os, %i.or
  %i.ou = select i1 %.not1828, double 0.000000e+00, double %i.ot
  tail call void (ptr, ptr, ...) @_ZN7CaDiCaL8Internal7messageEPKcz(ptr noundef nonnull align 8 dereferenceable(7288) %1, ptr noundef nonnull @.str.35, i64 noundef %i.oo, double noundef %i.ou)
  %i.ov = getelementptr inbounds nuw i8, ptr %1, i64 4912
  %i.ow = load i64, ptr %i.ov, align 8, !tbaa !215 ; 2 uses
  %i.ox = sitofp i64 %i.ow to double
  %i.oy = load i64, ptr %i.mc, align 8, !tbaa !189 ; 2 uses
  %i.oz = sitofp i64 %i.oy to double
  %i.pa = fmul nnan double %i.ox, 1.000000e+02
  %.not1829 = icmp eq i64 %i.oy, 0
  %i.pb = fdiv double %i.pa, %i.oz
  %i.pc = select i1 %.not1829, double 0.000000e+00, double %i.pb
  tail call void (ptr, ptr, ...) @_ZN7CaDiCaL8Internal7messageEPKcz(ptr noundef nonnull align 8 dereferenceable(7288) %1, ptr noundef nonnull @.str.36, i64 noundef %i.ow, double noundef %i.pc)
  %i.pd = getelementptr inbounds nuw i8, ptr %1, i64 4864 ; 2 uses
  %i.pe = load i64, ptr %i.pd, align 8, !tbaa !216 ; 2 uses
  %i.pf = sitofp i64 %i.pe to double
  %i.pg = load i64, ptr %i.mc, align 8, !tbaa !189 ; 2 uses
  %i.ph = sitofp i64 %i.pg to double
  %.not1830 = icmp eq i64 %i.pg, 0
  %i.pi = fdiv double %i.pf, %i.ph
  %i.pj = select i1 %.not1830, double 0.000000e+00, double %i.pi
  tail call void (ptr, ptr, ...) @_ZN7CaDiCaL8Internal7messageEPKcz(ptr noundef nonnull align 8 dereferenceable(7288) %1, ptr noundef nonnull @.str.37, i64 noundef %i.pe, double noundef %i.pj)
  %i.pk = getelementptr inbounds nuw i8, ptr %1, i64 4872
  %i.pl = load i64, ptr %i.pk, align 8, !tbaa !217 ; 2 uses
  %i.pm = sitofp i64 %i.pl to double
  %i.pn = load i64, ptr %i.pd, align 8, !tbaa !216 ; 2 uses
  %i.po = sitofp i64 %i.pn to double
  %i.pp = fmul nnan double %i.pm, 1.000000e+02
  %.not1831 = icmp eq i64 %i.pn, 0
  %i.pq = fdiv double %i.pp, %i.po
  %i.pr = select i1 %.not1831, double 0.000000e+00, double %i.pq
  tail call void (ptr, ptr, ...) @_ZN7CaDiCaL8Internal7messageEPKcz(ptr noundef nonnull align 8 dereferenceable(7288) %1, ptr noundef nonnull @.str.38, i64 noundef %i.pl, double noundef %i.pr)
  %i.ps = getelementptr inbounds nuw i8, ptr %1, i64 4000 ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %1, i64 4008 ; 4 uses
  %i.pu = load i64, ptr %i.pt, align 8, !tbaa !218 ; 2 uses
  %i.pv = sitofp i64 %i.pu to double
  %i.pw = load i64, ptr %i.ps, align 8, !tbaa !190 ; 2 uses
  %i.px = sitofp i64 %i.pw to double
  %i.py = fmul nnan double %i.pv, 1.000000e+02
  %.not1832 = icmp eq i64 %i.pw, 0
  %i.pz = fdiv double %i.py, %i.px
  %i.qa = select i1 %.not1832, double 0.000000e+00, double %i.pz
  tail call void (ptr, ptr, ...) @_ZN7CaDiCaL8Internal7messageEPKcz(ptr noundef nonnull align 8 dereferenceable(7288) %1, ptr noundef nonnull @.str.39, i64 noundef %i.pu, double noundef %i.qa)
  %i.qb = getelementptr inbounds nuw i8, ptr %1, i64 4016
  %i.qc = load i64, ptr %i.qb, align 8, !tbaa !219 ; 2 uses
end_hunk_0
