Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/tetgen?download=true
inline.NumInlined: 6986
inline.NumDeleted: 169
loop-unroll.NumCompletelyUnrolled: 436
loop-unroll.NumRuntimeUnrolled: 114
loop-unroll.NumUnrolled: 553
begin_hunk_0_@_ZN10tetgenmesh11mergefacetsEv:bb.a
  %i.kv = fadd double %i.kq, -5.000000e+00
  %i.kw = insertelement <2 x double> poison, double %i.ku, i64 0
  %i.kx = insertelement <2 x double> %i.kw, double %i.kv, i64 1
  %i.ky = fdiv <2 x double> %i.kx, splat (double 1.800000e+02)
  %i.kz = insertelement <2 x double> poison, double %i.kr, i64 0
  %i.la = shufflevector <2 x double> %i.kz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lb = fmul <2 x double> %i.ky, %i.la          ; 2 uses
  %i.lc = extractelement <2 x double> %i.lb, i64 0
  %i.ld = tail call double @cos(double noundef %i.lc) #40 ; 3 uses
  %i.le = extractelement <2 x double> %i.lb, i64 1
  %i.lf = tail call double @cos(double noundef %i.le) #40 ; 7 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !249 ; 9 uses
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !194 ; 3 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lh, i64 32 ; 2 uses
  store ptr %i.li, ptr %i.lj, align 8, !tbaa !201
  %i.lk = getelementptr inbounds nuw i8, ptr %i.li, i64 8
  %i.ll = ptrtoint ptr %i.lk to i64               ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lh, i64 48
  %i.ln = load i32, ptr %i.lm, align 8, !tbaa !190
  %i.lo = sext i32 %i.ln to i64                   ; 4 uses
  %i.lp = add i64 %i.lo, %i.ll
  %i.lq = urem i64 %i.ll, %i.lo
  %i.lr = sub i64 %i.lp, %i.lq
  %i.ls = inttoptr i64 %i.lr to ptr               ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lh, i64 40 ; 2 uses
  store ptr %i.ls, ptr %i.lt, align 8, !tbaa !202
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lh, i64 60
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !193 ; 3 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lh, i64 84 ; 2 uses
  store i32 %i.lv, ptr %i.lw, align 4, !tbaa !203
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lh, i64 16
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !196
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lh, i64 52
  br label %bb.z

bb.z:                                             ; preds = %bb.ac, %._crit_edge
  %i.ma = phi ptr [ %i.mm, %bb.ac ], [ %i.li, %._crit_edge ] ; 2 uses
  %i.mb = phi i32 [ %i.mu, %bb.ac ], [ %i.lv, %._crit_edge ] ; 2 uses
  %i.mc = phi ptr [ %i.mt, %bb.ac ], [ %i.ls, %._crit_edge ] ; 2 uses
  %i.md = icmp eq ptr %i.mc, %i.ly
  br i1 %i.md, label %._crit_edge242, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.me = icmp eq i32 %i.mb, 0
  br i1 %i.me, label %bb.ab, label %_ZN10tetgenmesh10memorypool8traverseEv.exit.i71

bb.ab:                                            ; preds = %bb.aa
  %i.mf = load ptr, ptr %i.ma, align 8, !tbaa !109 ; 3 uses
  store ptr %i.mf, ptr %i.lj, align 8, !tbaa !201
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 8
  %i.mh = ptrtoint ptr %i.mg to i64               ; 2 uses
  %i.mi = add i64 %i.mh, %i.lo
  %i.mj = urem i64 %i.mh, %i.lo
  %i.mk = sub i64 %i.mi, %i.mj
  %i.ml = inttoptr i64 %i.mk to ptr
  br label %_ZN10tetgenmesh10memorypool8traverseEv.exit.i71

_ZN10tetgenmesh10memorypool8traverseEv.exit.i71:  ; preds = %bb.ab, %bb.aa
  %i.mm = phi ptr [ %i.mf, %bb.ab ], [ %i.ma, %bb.aa ]
  %i.mn = phi i32 [ %i.lv, %bb.ab ], [ %i.mb, %bb.aa ]
  %i.mo = phi ptr [ %i.ml, %bb.ab ], [ %i.mc, %bb.aa ] ; 4 uses
  %i.mp = ptrtoint ptr %i.mo to i64
  %i.mq = load i32, ptr %i.lz, align 4, !tbaa !192
  %i.mr = sext i32 %i.mq to i64
  %i.ms = add i64 %i.mr, %i.mp
  %i.mt = inttoptr i64 %i.ms to ptr               ; 2 uses
  store ptr %i.mt, ptr %i.lt, align 8, !tbaa !202
  %i.mu = add nsw i32 %i.mn, -1                   ; 2 uses
  store i32 %i.mu, ptr %i.lw, align 4, !tbaa !203
  %i.mv = icmp eq ptr %i.mo, null
  br i1 %i.mv, label %._crit_edge242, label %bb.ac

bb.ac:                                            ; preds = %_ZN10tetgenmesh10memorypool8traverseEv.exit.i71
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mo, i64 24
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !218
  %i.my = icmp eq ptr %i.mx, null
  br i1 %i.my, label %bb.z, label %.preheader222.lr.ph, !llvm.loop !7

.preheader222.lr.ph:                              ; preds = %bb.ac
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 2752
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 2776 ; 2 uses
  br label %.preheader222

.preheader222:                                    ; preds = %_ZN10tetgenmesh17shellfacetraverseEPNS_10memorypoolE.exit77, %.preheader222.lr.ph
  %i.nb = phi ptr [ %i.lh, %.preheader222.lr.ph ], [ %i.wz, %_ZN10tetgenmesh17shellfacetraverseEPNS_10memorypoolE.exit77 ] ; 4 uses
  %storemerge241 = phi ptr [ %i.mo, %.preheader222.lr.ph ], [ %i.xy, %_ZN10tetgenmesh17shellfacetraverseEPNS_10memorypoolE.exit77 ] ; 15 uses
  %.sroa.10.0240 = phi i32 [ 0, %.preheader222.lr.ph ], [ %.sroa.10.1226, %_ZN10tetgenmesh17shellfacetraverseEPNS_10memorypoolE.exit77 ] ; 4 uses
  %i.nc = ashr i32 %.sroa.10.0240, 1
  %i.nd = sext i32 %i.nc to i64
  %i.ne = getelementptr [8 x i8], ptr %storemerge241, i64 %i.nd
  %i.nf = getelementptr i8, ptr %i.ne, i64 48
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !218 ; 2 uses
  %.not49 = icmp eq ptr %i.ng, null
  %.phi.trans.insert277 = sext i32 %.sroa.10.0240 to i64 ; 4 uses
  %.phi.trans.insert278 = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10snextpivotE, i64 %.phi.trans.insert277
  %.pre279 = load i32, ptr %.phi.trans.insert278, align 4, !tbaa !57 ; 4 uses
  %.pre288 = ashr i32 %.pre279, 1
  %.pre290 = sext i32 %.pre288 to i64             ; 2 uses
  br i1 %.not49, label %.preheader222._crit_edge, label %bb.ad

bb.ad:                                            ; preds = %.preheader222
  %i.nh = getelementptr [8 x i8], ptr %storemerge241, i64 %.pre290
  %i.ni = getelementptr i8, ptr %i.nh, i64 48
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !218 ; 2 uses
  %.not50 = icmp eq ptr %i.nj, null
  br i1 %.not50, label %.preheader222._crit_edge, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.ad
  %i.nk = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9sorgpivotE, i64 %.phi.trans.insert277
  %i.nl = load i32, ptr %i.nk, align 4, !tbaa !57
  %i.nm = sext i32 %i.nl to i64
  %i.nn = getelementptr inbounds [8 x i8], ptr %storemerge241, i64 %i.nm
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !218 ; 2 uses
  %i.np = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10sdestpivotE, i64 %.phi.trans.insert277
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !57
  %i.nr = sext i32 %i.nq to i64
  %i.ns = getelementptr inbounds [8 x i8], ptr %storemerge241, i64 %i.nr
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !218
  %i.nu = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10sapexpivotE, i64 %.phi.trans.insert277
  %i.nv = load i32, ptr %i.nu, align 4, !tbaa !57
  %i.nw = sext i32 %i.nv to i64
  %i.nx = getelementptr inbounds [8 x i8], ptr %storemerge241, i64 %i.nw
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !218 ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.no, i64 16
  %i.oa = load double, ptr %i.nz, align 8, !tbaa !56
  %i.ob = getelementptr inbounds nuw i8, ptr %i.ny, i64 16
  %i.oc = load double, ptr %i.ob, align 8, !tbaa !56
  %i.od = load <2 x double>, ptr %i.no, align 8, !tbaa !56 ; 2 uses
  %i.oe = load <3 x double>, ptr %i.nt, align 8, !tbaa !56 ; 3 uses
  %i.of = load <2 x double>, ptr %i.ny, align 8, !tbaa !56 ; 2 uses
  %i.og = shufflevector <2 x double> %i.od, <2 x double> %i.of, <2 x i32> <i32 0, i32 2>
  %i.oh = shufflevector <3 x double> %i.oe, <3 x double> poison, <2 x i32> zeroinitializer
  %i.oi = fsub <2 x double> %i.og, %i.oh          ; 4 uses
  %i.oj = shufflevector <2 x double> %i.od, <2 x double> %i.of, <2 x i32> <i32 1, i32 3>
  %i.ok = shufflevector <3 x double> %i.oe, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ol = fsub <2 x double> %i.oj, %i.ok          ; 4 uses
  %i.om = insertelement <2 x double> poison, double %i.oa, i64 0
  %i.on = insertelement <2 x double> %i.om, double %i.oc, i64 1
  %i.oo = shufflevector <3 x double> %i.oe, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.op = fsub <2 x double> %i.on, %i.oo          ; 4 uses
  %i.oq = extractelement <2 x double> %i.oi, i64 0
  %i.or = extractelement <2 x double> %i.oi, i64 1
  %i.os = extractelement <2 x double> %i.op, i64 0
  %i.ot = extractelement <2 x double> %i.op, i64 1
  %i.ou = fmul <2 x double> %i.ol, %i.ol
  %i.ov = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oi, <2 x double> %i.oi, <2 x double> %i.ou)
  %i.ow = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.op, <2 x double> %i.op, <2 x double> %i.ov)
  %i.ox = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.ow) ; 2 uses
  %i.oy = shufflevector <2 x double> %i.ol, <2 x double> %i.ox, <2 x i32> <i32 0, i32 2>
  %i.oz = shufflevector <2 x double> %i.ol, <2 x double> %i.ox, <2 x i32> <i32 1, i32 3>
  %i.pa = fmul <2 x double> %i.oy, %i.oz          ; 2 uses
  %i.pb = extractelement <2 x double> %i.pa, i64 0
  %i.pc = tail call double @llvm.fmuladd.f64(double %i.oq, double %i.or, double %i.pb)
  %i.pd = tail call noundef double @llvm.fmuladd.f64(double %i.os, double %i.ot, double %i.pc)
  %i.pe = extractelement <2 x double> %i.pa, i64 1
  %i.pf = fdiv double %i.pd, %i.pe
  %i.pg = fcmp ogt double %i.pf, %i.ld
  br i1 %i.pg, label %bb.ae, label %.preheader222._crit_edge

bb.ae:                                            ; preds = %.preheader.preheader
  %i.ph = ptrtoint ptr %i.ng to i64
  %i.pi = and i64 %i.ph, -8
  %i.pj = inttoptr i64 %i.pi to ptr               ; 2 uses
  %i.pk = ptrtoint ptr %i.nj to i64
  %i.pl = and i64 %i.pk, -8
  %i.pm = inttoptr i64 %i.pl to ptr               ; 3 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pj, i64 48
  %i.po = load ptr, ptr %i.pn, align 8, !tbaa !218 ; 2 uses
  %.not51 = icmp eq ptr %i.po, null
  br i1 %.not51, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.pp = load double, ptr %i.po, align 8, !tbaa !56
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %.041 = phi double [ %i.pp, %bb.af ], [ 1.000000e+00, %bb.ae ] ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pm, i64 48
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !218 ; 2 uses
  %.not52 = icmp eq ptr %i.pr, null
  br i1 %.not52, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ps = load double, ptr %i.pr, align 8, !tbaa !56
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  %.040 = phi double [ %i.ps, %bb.ah ], [ 1.000000e+00, %bb.ag ] ; 2 uses
  %i.pt = fcmp olt double %.041, %i.lf
  br i1 %i.pt, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ax, %bb.aq, %bb.ai
  %.sroa.10.1237.lcssa = phi i32 [ %.sroa.10.0240, %bb.ai ], [ %.pre279, %bb.aq ], [ %.pre283, %bb.ax ]
  %.040.lcssa = phi double [ %.040, %bb.ai ], [ %.040.1, %bb.aq ], [ %.040.2, %bb.ax ] ; 2 uses
  %.041.lcssa = phi double [ %.041, %bb.ai ], [ %.041.1, %bb.aq ], [ %.041.2, %bb.ax ]
  %.lcssa246 = phi ptr [ %i.pj, %bb.ai ], [ %i.tu, %bb.aq ], [ %i.wn, %bb.ax ]
  %.lcssa = phi ptr [ %i.pm, %bb.ai ], [ %i.tx, %bb.aq ], [ %i.wq, %bb.ax ]
  %i.pu = fcmp uge double %.040.lcssa, %i.lf
  %i.pv = fcmp olt double %.041.lcssa, %.040.lcssa
  %or.cond = or i1 %i.pu, %i.pv
  %spec.select = select i1 %or.cond, ptr %.lcssa246, ptr %.lcssa
  br label %.loopexit223

bb.ak:                                            ; preds = %bb.ai
  %i.pw = fcmp olt double %.040, %i.lf
  br i1 %i.pw, label %.loopexit223, label %.preheader222._crit_edge

.loopexit223:                                     ; preds = %bb.ak, %bb.ar, %bb.ay, %bb.aj
  %.sroa.10.1237252 = phi i32 [ %.sroa.10.1237.lcssa, %bb.aj ], [ %.sroa.10.0240, %bb.ak ], [ %.pre279, %bb.ar ], [ %.pre283, %bb.ay ]
  %.sroa.099.1.ph = phi ptr [ %spec.select, %bb.aj ], [ %i.pm, %bb.ak ], [ %i.tx, %bb.ar ], [ %i.wq, %bb.ay ] ; 4 uses
  %i.px = load ptr, ptr %.sroa.099.1.ph, align 8, !tbaa !218
  %i.py = ptrtoint ptr %i.px to i64               ; 3 uses
  %i.pz = trunc i64 %i.py to i32
  %i.qa = and i32 %i.pz, 7                        ; 2 uses
  %i.qb = and i64 %i.py, -8
  %i.qc = inttoptr i64 %i.qb to ptr               ; 4 uses
  %i.qd = lshr i32 %i.qa, 1
  %i.qe = zext nneg i32 %i.qd to i64
  %i.qf = getelementptr inbounds nuw [8 x i8], ptr %i.qc, i64 %i.qe ; 2 uses
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !218
  %i.qh = ptrtoint ptr %i.qg to i64               ; 2 uses
  %i.qi = and i64 %i.qh, -8
  %i.qj = inttoptr i64 %i.qi to ptr
  %i.qk = getelementptr i8, ptr %i.qf, i64 48
  store ptr null, ptr %i.qk, align 8, !tbaa !218
  %i.ql = lshr i64 %i.qh, 1
  %i.qm = and i64 %i.ql, 3
  %i.qn = getelementptr [8 x i8], ptr %i.qj, i64 %i.qm
  %i.qo = getelementptr i8, ptr %i.qn, i64 48
  store ptr null, ptr %i.qo, align 8, !tbaa !218
  %i.qp = load ptr, ptr %i.j, align 8, !tbaa !250 ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %.sroa.099.1.ph, i64 24
  store ptr null, ptr %i.qq, align 8, !tbaa !218
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qp, i64 24 ; 2 uses
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !198
  store ptr %i.qs, ptr %.sroa.099.1.ph, align 8, !tbaa !109
  store ptr %.sroa.099.1.ph, ptr %i.qr, align 8, !tbaa !198
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qp, i64 64 ; 2 uses
  %i.qu = load i64, ptr %i.qt, align 8, !tbaa !200
  %i.qv = add nsw i64 %i.qu, -1
  store i64 %i.qv, ptr %i.qt, align 8, !tbaa !200
  %i.qw = load ptr, ptr %i.mz, align 8, !tbaa !261
  %i.qx = tail call noundef ptr @_ZN10tetgenmesh10memorypool5allocEv(ptr noundef nonnull align 8 dereferenceable(88) %i.qw) ; 6 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 16
  store ptr %i.qc, ptr %i.qy, align 8, !tbaa !222
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qx, i64 24
  store i32 %i.qa, ptr %i.qz, align 8, !tbaa !223
  %i.ra = and i64 %i.py, 7                        ; 2 uses
  %i.rb = getelementptr inbounds nuw [4 x i8], ptr @_ZN10tetgenmesh9sorgpivotE, i64 %i.ra
  %i.rc = load i32, ptr %i.rb, align 4, !tbaa !57
  %i.rd = sext i32 %i.rc to i64
  %i.re = getelementptr inbounds [8 x i8], ptr %i.qc, i64 %i.rd
  %i.rf = load ptr, ptr %i.re, align 8, !tbaa !218
  %i.rg = getelementptr inbounds nuw i8, ptr %i.qx, i64 88
  store ptr %i.rf, ptr %i.rg, align 8, !tbaa !286
  %i.rh = getelementptr inbounds nuw [4 x i8], ptr @_ZN10tetgenmesh10sdestpivotE, i64 %i.ra
  %i.ri = load i32, ptr %i.rh, align 4, !tbaa !57
  %i.rj = sext i32 %i.ri to i64
  %i.rk = getelementptr inbounds [8 x i8], ptr %i.qc, i64 %i.rj
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !218
  %i.rm = getelementptr inbounds nuw i8, ptr %i.qx, i64 96
  store ptr %i.rl, ptr %i.rm, align 8, !tbaa !287
  %i.rn = load ptr, ptr %i.na, align 8, !tbaa !288
  %i.ro = getelementptr inbounds nuw i8, ptr %i.qx, i64 128
  store ptr %i.rn, ptr %i.ro, align 8, !tbaa !271
  store ptr %i.qx, ptr %i.na, align 8, !tbaa !288
  %.pre287 = load ptr, ptr %i.lg, align 8, !tbaa !249
  br label %.loopexit

.preheader222._crit_edge:                         ; preds = %.preheader222, %bb.ak, %bb.ad, %.preheader.preheader
  %i.rp = getelementptr [8 x i8], ptr %storemerge241, i64 %.pre290
  %i.rq = getelementptr i8, ptr %i.rp, i64 48
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !218 ; 2 uses
  %.not49.1 = icmp eq ptr %i.rr, null
  %.phi.trans.insert281 = sext i32 %.pre279 to i64 ; 4 uses
  %.phi.trans.insert282 = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10snextpivotE, i64 %.phi.trans.insert281
  %.pre283 = load i32, ptr %.phi.trans.insert282, align 4, !tbaa !57 ; 4 uses
  %.pre293 = ashr i32 %.pre283, 1
  %.pre295 = sext i32 %.pre293 to i64             ; 2 uses
  br i1 %.not49.1, label %._crit_edge280, label %bb.al

bb.al:                                            ; preds = %.preheader222._crit_edge
  %i.rs = getelementptr [8 x i8], ptr %storemerge241, i64 %.pre295
  %i.rt = getelementptr i8, ptr %i.rs, i64 48
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !218 ; 2 uses
  %.not50.1 = icmp eq ptr %i.ru, null
  br i1 %.not50.1, label %._crit_edge280, label %.preheader.preheader.1

.preheader.preheader.1:                           ; preds = %bb.al
  %i.rv = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9sorgpivotE, i64 %.phi.trans.insert281
  %i.rw = load i32, ptr %i.rv, align 4, !tbaa !57
  %i.rx = sext i32 %i.rw to i64
  %i.ry = getelementptr inbounds [8 x i8], ptr %storemerge241, i64 %i.rx
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !218 ; 2 uses
  %i.sa = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10sdestpivotE, i64 %.phi.trans.insert281
  %i.sb = load i32, ptr %i.sa, align 4, !tbaa !57
  %i.sc = sext i32 %i.sb to i64
  %i.sd = getelementptr inbounds [8 x i8], ptr %storemerge241, i64 %i.sc
  %i.se = load ptr, ptr %i.sd, align 8, !tbaa !218
  %i.sf = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10sapexpivotE, i64 %.phi.trans.insert281
  %i.sg = load i32, ptr %i.sf, align 4, !tbaa !57
  %i.sh = sext i32 %i.sg to i64
  %i.si = getelementptr inbounds [8 x i8], ptr %storemerge241, i64 %i.sh
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !218 ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.rz, i64 16
  %i.sl = load double, ptr %i.sk, align 8, !tbaa !56
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sj, i64 16
  %i.sn = load double, ptr %i.sm, align 8, !tbaa !56
  %i.so = load <2 x double>, ptr %i.rz, align 8, !tbaa !56 ; 2 uses
  %i.sp = load <3 x double>, ptr %i.se, align 8, !tbaa !56 ; 3 uses
  %i.sq = load <2 x double>, ptr %i.sj, align 8, !tbaa !56 ; 2 uses
  %i.sr = shufflevector <2 x double> %i.so, <2 x double> %i.sq, <2 x i32> <i32 0, i32 2>
  %i.ss = shufflevector <3 x double> %i.sp, <3 x double> poison, <2 x i32> zeroinitializer
  %i.st = fsub <2 x double> %i.sr, %i.ss          ; 4 uses
  %i.su = shufflevector <2 x double> %i.so, <2 x double> %i.sq, <2 x i32> <i32 1, i32 3>
  %i.sv = shufflevector <3 x double> %i.sp, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.sw = fsub <2 x double> %i.su, %i.sv          ; 4 uses
  %i.sx = insertelement <2 x double> poison, double %i.sl, i64 0
  %i.sy = insertelement <2 x double> %i.sx, double %i.sn, i64 1
  %i.sz = shufflevector <3 x double> %i.sp, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.ta = fsub <2 x double> %i.sy, %i.sz          ; 4 uses
  %i.tb = extractelement <2 x double> %i.st, i64 0
  %i.tc = extractelement <2 x double> %i.st, i64 1
  %i.td = extractelement <2 x double> %i.ta, i64 0
  %i.te = extractelement <2 x double> %i.ta, i64 1
  %i.tf = fmul <2 x double> %i.sw, %i.sw
  %i.tg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.st, <2 x double> %i.st, <2 x double> %i.tf)
  %i.th = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ta, <2 x double> %i.ta, <2 x double> %i.tg)
  %i.ti = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.th) ; 2 uses
  %i.tj = shufflevector <2 x double> %i.sw, <2 x double> %i.ti, <2 x i32> <i32 0, i32 2>
  %i.tk = shufflevector <2 x double> %i.sw, <2 x double> %i.ti, <2 x i32> <i32 1, i32 3>
  %i.tl = fmul <2 x double> %i.tj, %i.tk          ; 2 uses
  %i.tm = extractelement <2 x double> %i.tl, i64 0
  %i.tn = tail call double @llvm.fmuladd.f64(double %i.tb, double %i.tc, double %i.tm)
  %i.to = tail call noundef double @llvm.fmuladd.f64(double %i.td, double %i.te, double %i.tn)
  %i.tp = extractelement <2 x double> %i.tl, i64 1
  %i.tq = fdiv double %i.to, %i.tp
  %i.tr = fcmp ogt double %i.tq, %i.ld
  br i1 %i.tr, label %bb.am, label %._crit_edge280

bb.am:                                            ; preds = %.preheader.preheader.1
  %i.ts = ptrtoint ptr %i.rr to i64
  %i.tt = and i64 %i.ts, -8
  %i.tu = inttoptr i64 %i.tt to ptr               ; 2 uses
  %i.tv = ptrtoint ptr %i.ru to i64
  %i.tw = and i64 %i.tv, -8
  %i.tx = inttoptr i64 %i.tw to ptr               ; 3 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tu, i64 48
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !218 ; 2 uses
  %.not51.1 = icmp eq ptr %i.tz, null
  br i1 %.not51.1, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ua = load double, ptr %i.tz, align 8, !tbaa !56
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.041.1 = phi double [ %i.ua, %bb.an ], [ 1.000000e+00, %bb.am ] ; 2 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %i.tx, i64 48
  %i.uc = load ptr, ptr %i.ub, align 8, !tbaa !218 ; 2 uses
  %.not52.1 = icmp eq ptr %i.uc, null
  br i1 %.not52.1, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ud = load double, ptr %i.uc, align 8, !tbaa !56
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.040.1 = phi double [ %i.ud, %bb.ap ], [ 1.000000e+00, %bb.ao ] ; 2 uses
  %i.ue = fcmp olt double %.041.1, %i.lf
  br i1 %i.ue, label %bb.aj, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.uf = fcmp olt double %.040.1, %i.lf
  br i1 %i.uf, label %.loopexit223, label %._crit_edge280

._crit_edge280:                                   ; preds = %.preheader222._crit_edge, %bb.ar, %.preheader.preheader.1, %bb.al
  %i.ug = getelementptr [8 x i8], ptr %storemerge241, i64 %.pre295
  %i.uh = getelementptr i8, ptr %i.ug, i64 48
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !218 ; 2 uses
  %.not49.2 = icmp eq ptr %i.ui, null
  %.phi.trans.insert284 = sext i32 %.pre283 to i64 ; 4 uses
  %.phi.trans.insert285 = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10snextpivotE, i64 %.phi.trans.insert284
  %.pre286 = load i32, ptr %.phi.trans.insert285, align 4, !tbaa !57 ; 5 uses
  br i1 %.not49.2, label %.loopexit, label %bb.as

bb.as:                                            ; preds = %._crit_edge280
  %i.uj = ashr i32 %.pre286, 1
  %i.uk = sext i32 %i.uj to i64
  %i.ul = getelementptr [8 x i8], ptr %storemerge241, i64 %i.uk
  %i.um = getelementptr i8, ptr %i.ul, i64 48
  %i.un = load ptr, ptr %i.um, align 8, !tbaa !218 ; 2 uses
  %.not50.2 = icmp eq ptr %i.un, null
  br i1 %.not50.2, label %.loopexit, label %.preheader.preheader.2

.preheader.preheader.2:                           ; preds = %bb.as
  %i.uo = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9sorgpivotE, i64 %.phi.trans.insert284
  %i.up = load i32, ptr %i.uo, align 4, !tbaa !57
  %i.uq = sext i32 %i.up to i64
  %i.ur = getelementptr inbounds [8 x i8], ptr %storemerge241, i64 %i.uq
end_hunk_0
begin_hunk_1_@_ZN10tetgenmesh13repairencsegsEPdii:bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.go, i8 0, i64 16, i1 false)
  %i.jl = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  store ptr %i.gr, ptr %i.jl, align 8, !tbaa !195
  store ptr %.pre-phi119, ptr %i.hg, align 8, !tbaa !196
  %i.jm = getelementptr inbounds nuw i8, ptr %i.gn, i64 80
  store i32 %i.jk, ptr %i.jm, align 8, !tbaa !197
  %i.jn = getelementptr inbounds nuw i8, ptr %i.gn, i64 24
  store ptr null, ptr %i.jn, align 8, !tbaa !198
  br label %bb.ah

bb.ah:                                            ; preds = %._crit_edge94, %bb.w
  %i.jo = load ptr, ptr %i.h, align 8, !tbaa !404
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 64
  %i.jq = load i64, ptr %i.jp, align 8, !tbaa !200
  %i.jr = icmp sgt i64 %i.jq, 0
  br i1 %i.jr, label %bb.ai, label %bb.ap

bb.ai:                                            ; preds = %bb.ah
  %i.js = load i64, ptr %i.i, align 8, !tbaa !345
  %i.jt = icmp eq i64 %i.js, 0
  br i1 %i.jt, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.ju = load ptr, ptr %i.c, align 8, !tbaa !216
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 156
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !183
  %.not52 = icmp eq i32 %i.jw, 0
  br i1 %.not52, label %bb.ao, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.147) ; 0 uses
  br label %bb.ao

bb.al:                                            ; preds = %bb.ai
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 68912
  %i.jy = load i64, ptr %i.jx, align 8, !tbaa !407 ; 2 uses
  %i.jz = icmp sgt i64 %i.jy, 0
  br i1 %i.jz, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.ka = load ptr, ptr %i.c, align 8, !tbaa !216
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 156
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !183
  %.not51 = icmp eq i32 %i.kc, 0
  br i1 %.not51, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.kd = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.487, i64 noundef %i.jy) ; 0 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.al, %bb.an, %bb.am, %bb.aj, %bb.ak
  %i.ke = load ptr, ptr %i.h, align 8, !tbaa !404 ; 8 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kf, i8 0, i64 16, i1 false)
  %i.kg = load ptr, ptr %i.ke, align 8, !tbaa !194 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  store ptr %i.kg, ptr %i.kh, align 8, !tbaa !195
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  %i.kj = ptrtoint ptr %i.ki to i64               ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ke, i64 48
  %i.kl = load i32, ptr %i.kk, align 8, !tbaa !190
  %i.km = sext i32 %i.kl to i64                   ; 2 uses
  %i.kn = add i64 %i.km, %i.kj
  %i.ko = urem i64 %i.kj, %i.km
  %i.kp = sub i64 %i.kn, %i.ko
  %i.kq = inttoptr i64 %i.kp to ptr
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ke, i64 16
  store ptr %i.kq, ptr %i.kr, align 8, !tbaa !196
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ke, i64 60
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !193
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ke, i64 80
  store i32 %i.kt, ptr %i.ku, align 8, !tbaa !197
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ke, i64 24
  store ptr null, ptr %i.kv, align 8, !tbaa !198
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr null, ptr %i.kw, align 8, !tbaa !406
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.ah
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN10tetgenmesh13check_subfaceEPNS_4faceEPddS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(69984) %0, ptr nofree noundef captures(none) initializes((8, 12)) %1, ptr nofree readnone captures(none) %2, double noundef %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #24 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !222    ; 8 uses
  %i.c = load i32, ptr @_ZN10tetgenmesh9sorgpivotE, align 16, !tbaa !57
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !218  ; 2 uses
  %i.g = load i32, ptr @_ZN10tetgenmesh10sdestpivotE, align 16, !tbaa !57
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !218  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load double, ptr %i.k, align 8, !tbaa !56
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.n = load double, ptr %i.m, align 8, !tbaa !56
  %i.o = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh9sorgpivotE, i64 4), align 4, !tbaa !57
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !218  ; 2 uses
  %i.s = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh10sdestpivotE, i64 4), align 4, !tbaa !57
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !218  ; 2 uses
  %i.w = load <2 x double>, ptr %i.j, align 8, !tbaa !56 ; 2 uses
  %i.x = load <2 x double>, ptr %i.f, align 8, !tbaa !56 ; 2 uses
  %i.y = load <2 x double>, ptr %i.v, align 8, !tbaa !56 ; 2 uses
  %i.z = load <2 x double>, ptr %i.r, align 8, !tbaa !56 ; 2 uses
  %i.aa = shufflevector <2 x double> %i.w, <2 x double> %i.y, <2 x i32> <i32 0, i32 2>
  %i.ab = shufflevector <2 x double> %i.x, <2 x double> %i.z, <2 x i32> <i32 0, i32 2>
  %i.ac = fsub <2 x double> %i.aa, %i.ab          ; 2 uses
  %i.ad = shufflevector <2 x double> %i.w, <2 x double> %i.y, <2 x i32> <i32 1, i32 3>
  %i.ae = shufflevector <2 x double> %i.x, <2 x double> %i.z, <2 x i32> <i32 1, i32 3>
  %i.af = fsub <2 x double> %i.ad, %i.ae          ; 2 uses
  %i.ag = fmul <2 x double> %i.af, %i.af
  %i.ah = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ac, <2 x double> %i.ac, <2 x double> %i.ag)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !56
  %i.ak = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.al = load double, ptr %i.ak, align 8, !tbaa !56
  %i.am = insertelement <2 x double> poison, double %i.l, i64 0
  %i.an = insertelement <2 x double> %i.am, double %i.aj, i64 1
  %i.ao = insertelement <2 x double> poison, double %i.n, i64 0
  %i.ap = insertelement <2 x double> %i.ao, double %i.al, i64 1
  %i.aq = fsub <2 x double> %i.an, %i.ap          ; 2 uses
  %i.ar = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aq, <2 x double> %i.aq, <2 x double> %i.ah)
  %i.as = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.ar) ; 2 uses
  %i.at = extractelement <2 x double> %i.as, i64 0 ; 2 uses
  %i.au = fcmp olt double %i.at, 1.000000e+30
  %.133 = select i1 %i.au, double %i.at, double 1.000000e+30 ; 2 uses
  %i.av = extractelement <2 x double> %i.as, i64 1 ; 2 uses
  %i.aw = fcmp olt double %i.av, %.133            ; 2 uses
  %.133.1 = select i1 %i.aw, double %i.av, double %.133 ; 2 uses
  %.1.1 = zext i1 %i.aw to i32
  store i32 2, ptr %i.a, align 8, !tbaa !223
  %i.ax = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh9sorgpivotE, i64 8), align 8, !tbaa !57
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !218 ; 3 uses
  %i.bb = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh10sdestpivotE, i64 8), align 8, !tbaa !57
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.bc
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !218 ; 3 uses
  %i.bf = load double, ptr %i.be, align 8, !tbaa !56
  %i.bg = load double, ptr %i.ba, align 8, !tbaa !56
  %i.bh = fsub double %i.bf, %i.bg                ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !56
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !56
  %i.bm = fsub double %i.bj, %i.bl                ; 2 uses
  %i.bn = fmul double %i.bm, %i.bm
  %i.bo = tail call double @llvm.fmuladd.f64(double %i.bh, double %i.bh, double %i.bn)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !56
  %i.br = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bs = load double, ptr %i.br, align 8, !tbaa !56
  %i.bt = fsub double %i.bq, %i.bs                ; 2 uses
  %i.bu = tail call double @llvm.fmuladd.f64(double %i.bt, double %i.bt, double %i.bo)
  %sqrt.i.2 = tail call noundef double @llvm.sqrt.f64(double %i.bu) ; 2 uses
  %i.bv = fcmp olt double %sqrt.i.2, %.133.1      ; 2 uses
  %.133.2 = select i1 %i.bv, double %sqrt.i.2, double %.133.1 ; 3 uses
  %.1.2 = select i1 %i.bv, i32 2, i32 %.1.1       ; 2 uses
  store i32 %.1.2, ptr %i.a, align 8, !tbaa !223
  %i.bw = fdiv double %3, %.133.2                 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !216
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 312
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !127
  %i.cb = fcmp ogt double %i.bw, %i.ca            ; 2 uses
  br i1 %i.cb, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.cc = zext nneg i32 %.1.2 to i64              ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr @_ZN10tetgenmesh9sorgpivotE, i64 %i.cc
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !57
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.cf
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !218
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr @_ZN10tetgenmesh10sdestpivotE, i64 %i.cc
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !57
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ck
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !218
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 68668
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !247
  %i.cp = sext i32 %i.co to i64                   ; 2 uses
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.ch, i64 %i.cp
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !56 ; 3 uses
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %i.cp
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !56 ; 3 uses
  %i.cu = fcmp ogt double %i.cr, 0.000000e+00
  %i.cv = fcmp ogt double %i.cr, %.133.2
  %or.cond = and i1 %i.cu, %i.cv
  %.2 = select i1 %or.cond, double %i.cr, double %.133.2 ; 2 uses
  %i.cw = fcmp ogt double %i.ct, 0.000000e+00
  %i.cx = fcmp ogt double %i.ct, %.2
  %or.cond39 = and i1 %i.cw, %i.cx
  %.3 = select i1 %or.cond39, double %i.ct, double %.2
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 24
  store double %.3, ptr %i.cy, align 8, !tbaa !56
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 32
  store double %i.bw, ptr %i.cz, align 8, !tbaa !56
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 40
  store double 0.000000e+00, ptr %i.da, align 8, !tbaa !56
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.cb
}

; Function Attrs: mustprogress uwtable
define void @_ZN10tetgenmesh15enqueue_subfaceEPNS_4faceEPdS2_S2_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(69984) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #0 align 2 {
.preheader53:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !403
  %i.c = tail call noundef ptr @_ZN10tetgenmesh10memorypool5allocEv(ptr noundef nonnull align 8 dereferenceable(88) %i.b) ; 20 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %i.c, align 8, !tbaa !306
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 0, ptr %i.e, align 8, !tbaa !307
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store ptr null, ptr %i.f, align 8, !tbaa !308
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  store i32 0, ptr %i.g, align 8, !tbaa !309
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  %i.h = load ptr, ptr %1, align 8, !tbaa !222    ; 4 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !222
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !223  ; 2 uses
  store i32 %i.j, ptr %i.g, align 8, !tbaa !223
  %i.k = sext i32 %i.j to i64                     ; 3 uses
  %i.l = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9sorgpivotE, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !57
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !218
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store ptr %i.p, ptr %i.q, align 8, !tbaa !286
  %i.r = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10sdestpivotE, i64 %i.k
  %i.s = load i32, ptr %i.r, align 4, !tbaa !57
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !218
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  store ptr %i.v, ptr %i.w, align 8, !tbaa !287
  %i.x = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10sapexpivotE, i64 %i.k
  %i.y = load i32, ptr %i.x, align 4, !tbaa !57
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !218
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !310
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  store ptr %2, ptr %i.ad, align 8, !tbaa !330
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.af = load double, ptr %3, align 8, !tbaa !56
  store double %i.af, ptr %i.ae, align 8, !tbaa !56
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !56
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store double %i.ah, ptr %i.ai, align 8, !tbaa !56
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !56
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store double %i.ak, ptr %i.al, align 8, !tbaa !56
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.an = load double, ptr %i.am, align 8, !tbaa !56
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store double %i.an, ptr %i.ao, align 8, !tbaa !56
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !56
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store double %i.aq, ptr %i.ar, align 8, !tbaa !56
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.at = load double, ptr %i.as, align 8, !tbaa !56
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store double %i.at, ptr %i.au, align 8, !tbaa !56
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %.preheader53
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !408
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !271
  store ptr %i.c, ptr %i.av, align 8, !tbaa !408
  br label %bb.k

bb.b:                                             ; preds = %.preheader53
  %i.ay = load double, ptr %i.ap, align 8, !tbaa !56 ; 2 uses
  %i.az = fcmp ogt double %i.ay, 1.000000e+00
  %i.ba = fdiv double 1.000000e+00, %i.ay
  %.049 = select i1 %i.az, double %i.ba, double 1.000000e+00 ; 2 uses
  %i.bb = fcmp olt double %.049, 1.000000e+00
  br i1 %i.bb, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bc = fsub nnan double 1.000000e+00, %.049
  %i.bd = fmul nnan double %i.bc, 6.400000e+01
  %i.be = fptosi double %i.bd to i32
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %i.be, i32 63)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.048 = phi i32 [ %spec.store.select, %bb.c ], [ 0, %bb.b ] ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.bg = sext i32 %.048 to i64                   ; 6 uses
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.bg ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !269
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 1448 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !409 ; 2 uses
  %i.bm = icmp sgt i32 %.048, %i.bl
  br i1 %i.bm, label %bb.f, label %.preheader

bb.f:                                             ; preds = %bb.e
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1192
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.bg
  store i32 %i.bl, ptr %i.bo, align 4, !tbaa !57
  store i32 %.048, ptr %i.bk, align 8, !tbaa !409
  br label %bb.h

.preheader:                                       ; preds = %bb.e, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ %i.bg, %bb.e ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %indvars.iv.next
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !269
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %.preheader, label %bb.g, !llvm.loop !1333

bb.g:                                             ; preds = %.preheader
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 1192 ; 2 uses
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %indvars.iv.next ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !57
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.bg
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !57
  store i32 %.048, ptr %i.bt, align 4, !tbaa !57
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store ptr %i.c, ptr %i.bh, align 8, !tbaa !269
  br label %bb.j

bb.i:                                             ; preds = %bb.d
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.bg
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !269
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 128
  store ptr %i.c, ptr %i.bz, align 8, !tbaa !271
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %i.bg
  store ptr %i.c, ptr %i.cb, align 8, !tbaa !269
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @_ZN10tetgenmesh11top_subfaceEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(69984) %0) local_unnamed_addr #23 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !408  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1448
  %i.d = load i32, ptr %i.c, align 8, !tbaa !409  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1452
  store i32 %i.d, ptr %i.e, align 4, !tbaa !410
  %i.f = icmp slt i32 %i.d, 0
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.h = zext nneg i32 %i.d to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !269
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi ptr [ %i.j, %bb.c ], [ %i.b, %bb.a ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN10tetgenmesh15dequeue_subfaceEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(69984) %0) local_unnamed_addr #25 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !408  ; 3 uses
end_hunk_1
