inline.NumInlined: 21
inline.NumDeleted: 13
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@fdp_xLayout:bb.a
  %i.bb = fcmp ugt double %i.ak, %i.ba
  br i1 %i.bb, label %overlap.exit.i.i, label %bb.q

WD2.exit10.thread.i.i.i:                          ; preds = %bb.p
  %i.bc = load double, ptr @X_marg, align 16, !tbaa !45 ; 2 uses
  %i.bd = fmul double %i.as, %i.bc
  %i.be = fmul double %i.bd, 5.000000e-01
  %i.bf = fmul double %i.au, %i.bc
  %i.bg = fmul double %i.bf, 5.000000e-01
  %i.bh = fadd double %i.be, %i.bg
  %i.bi = fcmp ugt double %i.ak, %i.bh
  br i1 %i.bi, label %overlap.exit.i.i, label %bb.r

bb.q:                                             ; preds = %WD2.exit10.i.i.i
  %i.bj = fsub double %i.am, %i.ao
  %i.bk = call double @llvm.fabs.f64(double %i.bj)
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.val.i.i, i64 56
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !46
  %i.bn = fmul double %i.bm, 5.000000e-01
  %i.bo = load double, ptr getelementptr inbounds nuw (i8, ptr @X_marg, i64 8), align 8, !tbaa !47 ; 2 uses
  %i.bp = fadd double %i.bn, %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 56
  %i.br = load double, ptr %i.bq, align 8, !tbaa !46
  %i.bs = fmul double %i.br, 5.000000e-01
  %i.bt = fadd double %i.bo, %i.bs
  br label %HT2.exit11.i.i.i

bb.r:                                             ; preds = %WD2.exit10.thread.i.i.i
  %i.bu = fsub double %i.am, %i.ao
  %i.bv = call double @llvm.fabs.f64(double %i.bu)
  %i.bw = getelementptr inbounds nuw i8, ptr %.012.val.i.i, i64 56
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !46
  %i.by = load double, ptr getelementptr inbounds nuw (i8, ptr @X_marg, i64 8), align 8, !tbaa !47 ; 2 uses
  %i.bz = fmul double %i.bx, %i.by
  %i.ca = fmul double %i.bz, 5.000000e-01
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 56
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !46
  %i.cd = fmul double %i.by, %i.cc
  %i.ce = fmul double %i.cd, 5.000000e-01
  br label %HT2.exit11.i.i.i

HT2.exit11.i.i.i:                                 ; preds = %bb.r, %bb.q
  %i.cf = phi double [ %i.bp, %bb.q ], [ %i.ca, %bb.r ]
  %i.cg = phi double [ %i.bk, %bb.q ], [ %i.bv, %bb.r ]
  %i.ch = phi double [ %i.bt, %bb.q ], [ %i.ce, %bb.r ]
  %i.ci = fadd double %i.cf, %i.ch
  %i.cj = fcmp ole double %i.cg, %i.ci
  %i.ck = zext i1 %i.cj to i32
  br label %overlap.exit.i.i

overlap.exit.i.i:                                 ; preds = %HT2.exit11.i.i.i, %WD2.exit10.thread.i.i.i, %WD2.exit10.i.i.i
  %i.cl = phi i32 [ 0, %WD2.exit10.i.i.i ], [ %i.ck, %HT2.exit11.i.i.i ], [ 0, %WD2.exit10.thread.i.i.i ]
  %i.cm = add nsw i32 %i.cl, %.116.i.i            ; 2 uses
  %i.cn = call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.017.i.i) #12 ; 2 uses
  %.not14.i.i = icmp eq ptr %i.cn, null
  br i1 %.not14.i.i, label %._crit_edge.i.i, label %bb.p, !llvm.loop !48

cntOverlaps.exit.i:                               ; preds = %._crit_edge.i.i
  %i.co = icmp eq i32 %.1.lcssa.i.i, 0
  br i1 %i.co, label %x_layout.exit.thread, label %.lr.ph68.i

.lr.ph68.i:                                       ; preds = %cntOverlaps.exit.i
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !49 ; 3 uses
  %.sroa.442.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.442.0.copyload.i = load double, ptr %.sroa.442.0..sroa_idx.i, align 8, !tbaa !14 ; 7 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload.i = load double, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !14 ; 46 uses
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.9.0.copyload.i = load double, ptr %.sroa.9.0..sroa_idx.i, align 8, !tbaa !14 ; 4 uses
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.10.0.copyload.i = load i32, ptr %.sroa.10.0..sroa_idx.i, align 8, !tbaa !49 ; 3 uses
  %i.cp = fcmp ogt double %.sroa.9.0.copyload.i, 0.000000e+00 ; 3 uses
  %i.cq = fcmp oeq double %.sroa.442.0.copyload.i, 0.000000e+00 ; 2 uses
  %i.cr = sitofp i32 %i.s to double               ; 2 uses
  %i.cs = sitofp i32 %i.t to double
  %i.ct = icmp sgt i32 %.sroa.10.0.copyload.i, 0
  br i1 %i.ct, label %.lr.ph68.i.split.us.preheader, label %.lr.ph68.i.split

.lr.ph68.i.split.us.preheader:                    ; preds = %.lr.ph68.i
  %i.cu = add nsw i32 %i.s, -1
  %i.cv = mul nsw i32 %i.cu, %i.s
  %i.cw = sitofp i32 %i.cv to double
  %i.cx = sitofp i32 %.sroa.0.0.copyload.i to double
  %i.cy = insertelement <2 x double> <double 2.000000e+00, double poison>, double %i.cx, i64 1 ; 2 uses
  %i.cz = insertelement <2 x double> %i.cy, double %i.cw, i64 0
  br label %.lr.ph68.i.split.us

.lr.ph68.i.split.us:                              ; preds = %.lr.ph68.i.split.us.preheader, %.thread.i.loopexit.us
  %.03266.i.us = phi i32 [ %i.nu, %.thread.i.loopexit.us ], [ 0, %.lr.ph68.i.split.us.preheader ]
  %.sroa.5.065.i.us = phi double [ %i.nt, %.thread.i.loopexit.us ], [ %.sroa.5.0.copyload.i, %.lr.ph68.i.split.us.preheader ] ; 5 uses
  store double %.sroa.5.065.i.us, ptr @xParams.2, align 8, !tbaa !50
  store i32 %.sroa.0.0.copyload.i, ptr @xParams.0, align 8, !tbaa !52
  store double %.sroa.442.0.copyload.i, ptr @xParams.1, align 8, !tbaa !53
  store i32 %.sroa.10.0.copyload.i, ptr @xParams.4, align 8, !tbaa !54
  br i1 %i.cp, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph68.i.split.us
  store double %.sroa.9.0.copyload.i, ptr @xParams.3, align 8, !tbaa !55
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph68.i.split.us
  br i1 %i.cq, label %bb.u, label %xinit_params.exit.i.us

bb.u:                                             ; preds = %bb.t
  %i.da = call double @sqrt(double noundef %i.cr) #12
  %i.db = fmul double %.sroa.5.065.i.us, %i.da
  %i.dc = fdiv double %i.db, 5.000000e+00         ; 2 uses
  store double %i.dc, ptr @xParams.1, align 8, !tbaa !53
  br label %xinit_params.exit.i.us

xinit_params.exit.i.us:                           ; preds = %bb.u, %bb.t
  %i.dd = phi double [ %i.dc, %bb.u ], [ %.sroa.442.0.copyload.i, %bb.t ]
  %i.de = fmul double %.sroa.5.065.i.us, %.sroa.5.065.i.us
  %i.df = load double, ptr @xParams.3, align 8, !tbaa !55
  %i.dg = fmul double %i.de, %i.df                ; 2 uses
  %i.dh = fmul double %i.dg, %i.cs
  %i.di = insertelement <2 x double> poison, double %i.dh, i64 0
  %i.dj = insertelement <2 x double> %i.di, double %i.dd, i64 1
  %i.dk = fmul <2 x double> %i.dj, %i.cy
  %i.dl = fdiv <2 x double> %i.dk, %i.cz          ; 2 uses
  %i.dm = extractelement <2 x double> %i.dl, i64 1 ; 2 uses
  %i.dn = fcmp ugt double %i.dm, 0.000000e+00
  br i1 %i.dn, label %.lr.ph.us.preheader, label %.thread.i.loopexit.us

.lr.ph.us.preheader:                              ; preds = %xinit_params.exit.i.us
  %i.do = extractelement <2 x double> %i.dl, i64 0 ; 2 uses
  br label %.lr.ph.us

.lr.ph.i.us:                                      ; preds = %adjust.exit.thread50.i.us
  %i.dp = load double, ptr @xParams.1, align 8, !tbaa !53
  %i.dq = load i32, ptr @xParams.0, align 8, !tbaa !52 ; 2 uses
  %i.dr = sub nsw i32 %i.dq, %i.nq
  %i.ds = sitofp i32 %i.dr to double
  %i.dt = fmul double %i.dp, %i.ds
  %i.du = sitofp i32 %i.dq to double
  %i.dv = fdiv double %i.dt, %i.du                ; 2 uses
  %i.dw = fcmp ugt double %i.dv, 0.000000e+00
  br i1 %i.dw, label %.lr.ph.us, label %.thread.i.loopexit.us, !llvm.loop !56

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %.lr.ph.i.us
  %i.dx = phi double [ %i.dv, %.lr.ph.i.us ], [ %i.dm, %.lr.ph.us.preheader ] ; 3 uses
  %.02960.i34.us = phi i32 [ %i.nq, %.lr.ph.i.us ], [ 0, %.lr.ph.us.preheader ]
  %i.dy = call ptr @agfstnode(ptr noundef %0) #12 ; 2 uses
  %.not75.i.i.us = icmp eq ptr %i.dy, null
  br i1 %.not75.i.i.us, label %._crit_edge.i40.i.us, label %.lr.ph.i38.i.us

.lr.ph.i38.i.us:                                  ; preds = %.lr.ph.us, %.lr.ph.i38.i.us
  %.05976.i.i.us = phi ptr [ %i.ee, %.lr.ph.i38.i.us ], [ %i.dy, %.lr.ph.us ] ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.05976.i.i.us, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !24
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 152
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !57
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ed, i8 0, i64 16, i1 false)
  %i.ee = call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.05976.i.i.us) #12 ; 2 uses
  %.not.i39.i.us = icmp eq ptr %i.ee, null
  br i1 %.not.i39.i.us, label %._crit_edge.i40.i.us, label %.lr.ph.i38.i.us, !llvm.loop !58

._crit_edge.i40.i.us:                             ; preds = %.lr.ph.i38.i.us, %.lr.ph.us
  %i.ef = call ptr @agfstnode(ptr noundef %0) #12 ; 2 uses
  %.not6588.i.i.us = icmp eq ptr %i.ef, null
  br i1 %.not6588.i.i.us, label %x_layout.exit.thread, label %.lr.ph92.i.i.us

.lr.ph92.i.i.us:                                  ; preds = %._crit_edge.i40.i.us, %._crit_edge87.i.i.us
  %.05890.i.i.us = phi i32 [ %.1.lcssa.i41.i.us, %._crit_edge87.i.i.us ], [ 0, %._crit_edge.i40.i.us ] ; 2 uses
  %.06089.i.i.us = phi ptr [ %i.me, %._crit_edge87.i.i.us ], [ %i.ef, %._crit_edge.i40.i.us ] ; 5 uses
  %i.eg = call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.06089.i.i.us) #12 ; 2 uses
  %.not6777.i.i.us = icmp eq ptr %i.eg, null
  br i1 %.not6777.i.i.us, label %._crit_edge82.i.i.us, label %.lr.ph81.i.i.us

.lr.ph81.i.i.us:                                  ; preds = %.lr.ph92.i.i.us
  %i.eh = getelementptr inbounds nuw i8, ptr %.06089.i.i.us, i64 16 ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %applyRep.exit.i.i.us, %.lr.ph81.i.i.us
  %.179.i.i.us = phi i32 [ %.05890.i.i.us, %.lr.ph81.i.i.us ], [ %i.if, %applyRep.exit.i.i.us ]
  %.06378.i.i.us = phi ptr [ %i.eg, %.lr.ph81.i.i.us ], [ %i.ig, %applyRep.exit.i.i.us ] ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.06378.i.i.us, i64 16 ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !24 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 176
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !29 ; 2 uses
  %i.em = load ptr, ptr %i.eh, align 8, !tbaa !24 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 176
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !29 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.er = load double, ptr %i.ep, align 8, !tbaa !14
  %i.es = load <2 x double>, ptr %i.el, align 8, !tbaa !14
  %i.et = load double, ptr %i.eq, align 8, !tbaa !14
  %i.eu = load <2 x double>, ptr %i.eo, align 8, !tbaa !14
  %i.ev = fsub <2 x double> %i.es, %i.eu          ; 3 uses
  %i.ew = extractelement <2 x double> %i.ev, i64 1
  %i.ex = extractelement <2 x double> %i.ev, i64 0 ; 2 uses
  %i.ey = call double @hypot(double noundef %i.ex, double noundef %i.ew) #12 ; 2 uses
  %i.ez = fcmp ule double %i.ey, 0.000000e+00
  br i1 %i.ez, label %.lr.ph.i.i.i.i.us, label %._crit_edge.i.i.i.i.us

.lr.ph.i.i.i.i.us:                                ; preds = %bb.v, %.lr.ph.i.i.i.i.us
  %i.fa = call i32 @rand() #12
  %i.fb = call i32 @rand() #12
  %3 = insertelement <2 x i32> poison, i32 %i.fa, i64 0
  %i.fc = insertelement <2 x i32> %3, i32 %i.fb, i64 1
  %4 = srem <2 x i32> %i.fc, splat (i32 10)
  %i.fd = sub nsw <2 x i32> splat (i32 5), %4
  %i.fe = sitofp <2 x i32> %i.fd to <2 x double>  ; 3 uses
  %i.ff = extractelement <2 x double> %i.fe, i64 1
  %i.fg = extractelement <2 x double> %i.fe, i64 0
  %i.fh = call double @hypot(double noundef %i.fg, double noundef %i.ff) #12 ; 2 uses
  %i.fi = fcmp ule double %i.fh, 0.000000e+00
  br i1 %i.fi, label %.lr.ph.i.i.i.i.us, label %._crit_edge.i.loopexit.i.i.i.us, !llvm.loop !59

._crit_edge.i.loopexit.i.i.i.us:                  ; preds = %.lr.ph.i.i.i.i.us
  %.val.i.pre.i.i.i.us = load ptr, ptr %i.eh, align 8, !tbaa !24 ; 2 uses
  %.val27.i.pre.i.i.i.us = load ptr, ptr %i.ei, align 8, !tbaa !24 ; 2 uses
  %.phi.trans.insert.i.i.i.us = getelementptr inbounds nuw i8, ptr %.val27.i.pre.i.i.i.us, i64 176
  %.pre.i.i.i.us = load ptr, ptr %.phi.trans.insert.i.i.i.us, align 8, !tbaa !29 ; 2 uses
  %.pre18.i.i.i.us = load double, ptr %.pre.i.i.i.us, align 8, !tbaa !14
  %.phi.trans.insert19.i.i.i.us = getelementptr inbounds nuw i8, ptr %.val.i.pre.i.i.i.us, i64 176
  %.pre20.i.i.i.us = load ptr, ptr %.phi.trans.insert19.i.i.i.us, align 8, !tbaa !29 ; 2 uses
  %.pre21.i.i.i.us = load double, ptr %.pre20.i.i.i.us, align 8, !tbaa !14
  %.phi.trans.insert22.i.i.i.us = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.us, i64 8
  %.pre23.i.i.i.us = load double, ptr %.phi.trans.insert22.i.i.i.us, align 8, !tbaa !14
  %.phi.trans.insert24.i.i.i.us = getelementptr inbounds nuw i8, ptr %.pre20.i.i.i.us, i64 8
  %.pre25.i.i.i.us = load double, ptr %.phi.trans.insert24.i.i.i.us, align 8, !tbaa !14
  %.pre26.i.i.i.us = fsub double %.pre18.i.i.i.us, %.pre21.i.i.i.us
  br label %._crit_edge.i.i.i.i.us

._crit_edge.i.i.i.i.us:                           ; preds = %._crit_edge.i.loopexit.i.i.i.us, %bb.v
  %.pre-phi.i.i.i.us = phi double [ %.pre26.i.i.i.us, %._crit_edge.i.loopexit.i.i.i.us ], [ %i.ex, %bb.v ]
  %i.fj = phi double [ %.pre25.i.i.i.us, %._crit_edge.i.loopexit.i.i.i.us ], [ %i.et, %bb.v ] ; 2 uses
  %i.fk = phi double [ %.pre23.i.i.i.us, %._crit_edge.i.loopexit.i.i.i.us ], [ %i.er, %bb.v ] ; 2 uses
  %.val27.i.i.i.i.us = phi ptr [ %.val27.i.pre.i.i.i.us, %._crit_edge.i.loopexit.i.i.i.us ], [ %i.ej, %bb.v ] ; 4 uses
  %.val.i.i.i.i.us = phi ptr [ %.val.i.pre.i.i.i.us, %._crit_edge.i.loopexit.i.i.i.us ], [ %i.em, %bb.v ] ; 4 uses
  %.026.lcssa.i.i.i.i.us = phi double [ %i.fh, %._crit_edge.i.loopexit.i.i.i.us ], [ %i.ey, %bb.v ] ; 5 uses
  %i.fl = phi <2 x double> [ %i.fe, %._crit_edge.i.loopexit.i.i.i.us ], [ %i.ev, %bb.v ] ; 2 uses
  %i.fm = call double @llvm.fabs.f64(double %.pre-phi.i.i.i.us) ; 2 uses
  %i.fn = load i8, ptr getelementptr inbounds nuw (i8, ptr @X_marg, i64 16), align 16, !tbaa !18, !range !20, !noundef !21
  %i.fo = trunc nuw i8 %i.fn to i1
  %i.fp = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.us, i64 48
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !44 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.val27.i.i.i.i.us, i64 48
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !44 ; 2 uses
  br i1 %i.fo, label %WD2.exit10.i.i.i.i.i.us, label %WD2.exit10.thread.i.i.i.i.i.us

WD2.exit10.thread.i.i.i.i.i.us:                   ; preds = %._crit_edge.i.i.i.i.us
  %i.ft = load double, ptr @X_marg, align 16, !tbaa !45 ; 2 uses
  %i.fu = fmul double %i.fq, %i.ft
  %i.fv = fmul double %i.fu, 5.000000e-01
  %i.fw = fmul double %i.fs, %i.ft
  %i.fx = fmul double %i.fw, 5.000000e-01
  %i.fy = fadd double %i.fv, %i.fx
  %i.fz = fcmp ugt double %i.fm, %i.fy
  br i1 %i.fz, label %overlap.exit.thread.i.i.i.i.us, label %bb.w

bb.w:                                             ; preds = %WD2.exit10.thread.i.i.i.i.i.us
  %i.ga = fsub double %i.fk, %i.fj
  %i.gb = call double @llvm.fabs.f64(double %i.ga)
  %i.gc = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.us, i64 56
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !46
  %i.ge = load double, ptr getelementptr inbounds nuw (i8, ptr @X_marg, i64 8), align 8, !tbaa !47 ; 2 uses
  %i.gf = fmul double %i.gd, %i.ge
  %i.gg = fmul double %i.gf, 5.000000e-01
  %i.gh = getelementptr inbounds nuw i8, ptr %.val27.i.i.i.i.us, i64 56
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !46
  %i.gj = fmul double %i.ge, %i.gi
  %i.gk = fmul double %i.gj, 5.000000e-01
  br label %overlap.exit.i.i.i.i.us

WD2.exit10.i.i.i.i.i.us:                          ; preds = %._crit_edge.i.i.i.i.us
  %i.gl = fmul double %i.fq, 5.000000e-01
  %i.gm = load double, ptr @X_marg, align 16, !tbaa !45 ; 2 uses
  %i.gn = fadd double %i.gl, %i.gm
  %i.go = fmul double %i.fs, 5.000000e-01
  %i.gp = fadd double %i.go, %i.gm
  %i.gq = fadd double %i.gn, %i.gp
  %i.gr = fcmp ugt double %i.fm, %i.gq
  br i1 %i.gr, label %overlap.exit.thread.i.i.i.i.us, label %bb.x

bb.x:                                             ; preds = %WD2.exit10.i.i.i.i.i.us
  %i.gs = fsub double %i.fk, %i.fj
  %i.gt = call double @llvm.fabs.f64(double %i.gs)
  %i.gu = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.us, i64 56
  %i.gv = load double, ptr %i.gu, align 8, !tbaa !46
  %i.gw = fmul double %i.gv, 5.000000e-01
  %i.gx = load double, ptr getelementptr inbounds nuw (i8, ptr @X_marg, i64 8), align 8, !tbaa !47 ; 2 uses
  %i.gy = fadd double %i.gw, %i.gx
  %i.gz = getelementptr inbounds nuw i8, ptr %.val27.i.i.i.i.us, i64 56
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !46
  %i.hb = fmul double %i.ha, 5.000000e-01
  %i.hc = fadd double %i.gx, %i.hb
  br label %overlap.exit.i.i.i.i.us

overlap.exit.i.i.i.i.us:                          ; preds = %bb.x, %bb.w
  %i.hd = phi double [ %i.gy, %bb.x ], [ %i.gg, %bb.w ]
  %i.he = phi double [ %i.gt, %bb.x ], [ %i.gb, %bb.w ]
  %i.hf = phi double [ %i.hc, %bb.x ], [ %i.gk, %bb.w ]
  %i.hg = fadd double %i.hd, %i.hf
  %i.hh = fcmp ole double %i.he, %i.hg
  %.fr.i.i.i.i.us = freeze i1 %i.hh
  %i.hi = fmul nnan double %.026.lcssa.i.i.i.i.us, %.026.lcssa.i.i.i.i.us ; 2 uses
  %i.hj = fdiv double %i.dg, %i.hi
  br i1 %.fr.i.i.i.i.us, label %applyRep.exit.i.i.us, label %bb.y

bb.y:                                             ; preds = %overlap.exit.i.i.i.i.us
  %i.hk = fdiv double %i.do, %i.hi
  br label %applyRep.exit.i.i.us

overlap.exit.thread.i.i.i.i.us:                   ; preds = %WD2.exit10.i.i.i.i.i.us, %WD2.exit10.thread.i.i.i.i.i.us
  %i.hl = fmul nnan double %.026.lcssa.i.i.i.i.us, %.026.lcssa.i.i.i.i.us
  %i.hm = fdiv double %i.do, %i.hl
  br label %applyRep.exit.i.i.us

applyRep.exit.i.i.us:                             ; preds = %overlap.exit.thread.i.i.i.i.us, %bb.y, %overlap.exit.i.i.i.i.us
  %.shrunk.i.i.i.i.us = phi i32 [ 1, %overlap.exit.i.i.i.i.us ], [ 0, %overlap.exit.thread.i.i.i.i.us ], [ 0, %bb.y ]
  %i.hn = phi double [ %i.hj, %overlap.exit.i.i.i.i.us ], [ %i.hm, %overlap.exit.thread.i.i.i.i.us ], [ %i.hk, %bb.y ]
  %i.ho = load ptr, ptr @fdp_parms, align 8, !tbaa !60
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 48
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !62
  %i.hr = fcmp ogt double %.026.lcssa.i.i.i.i.us, %i.hq
  %.1.i.i.i.i.us = select i1 %i.hr, double 0.000000e+00, double %i.hn
  %i.hs = getelementptr inbounds nuw i8, ptr %.val27.i.i.i.i.us, i64 152
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !57
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 16 ; 2 uses
  %i.hv = load <2 x double>, ptr %i.hu, align 8, !tbaa !14
  %i.hw = insertelement <2 x double> poison, double %.1.i.i.i.i.us, i64 0
  %i.hx = shufflevector <2 x double> %i.hw, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fl, <2 x double> %i.hx, <2 x double> %i.hv)
  store <2 x double> %i.hy, ptr %i.hu, align 8, !tbaa !14
  %i.hz = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.us, i64 152
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !57
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 16 ; 2 uses
  %i.ic = fneg <2 x double> %i.fl
  %i.id = load <2 x double>, ptr %i.ib, align 8, !tbaa !14
  %i.ie = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ic, <2 x double> %i.hx, <2 x double> %i.id)
  store <2 x double> %i.ie, ptr %i.ib, align 8, !tbaa !14
  %i.if = add nsw i32 %.shrunk.i.i.i.i.us, %.179.i.i.us ; 2 uses
  %i.ig = call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.06378.i.i.us) #12 ; 2 uses
  %.not67.i.i.us = icmp eq ptr %i.ig, null
  br i1 %.not67.i.i.us, label %._crit_edge82.i.i.us, label %bb.v, !llvm.loop !64

._crit_edge82.i.i.us:                             ; preds = %applyRep.exit.i.i.us, %.lr.ph92.i.i.us
  %.1.lcssa.i41.i.us = phi i32 [ %.05890.i.i.us, %.lr.ph92.i.i.us ], [ %i.if, %applyRep.exit.i.i.us ] ; 2 uses
  %i.ih = call ptr @agfstout(ptr noundef %0, ptr noundef nonnull %.06089.i.i.us) #12 ; 2 uses
  %.not6883.i.i.us = icmp eq ptr %i.ih, null
  br i1 %.not6883.i.i.us, label %._crit_edge87.i.i.us, label %.lr.ph86.i.i.us

.lr.ph86.i.i.us:                                  ; preds = %._crit_edge82.i.i.us
  %i.ii = getelementptr i8, ptr %.06089.i.i.us, i64 16
  br label %bb.z

bb.z:                                             ; preds = %applyAttr.exit.i.i.us, %.lr.ph86.i.i.us
  %.06284.i.i.us = phi ptr [ %i.ih, %.lr.ph86.i.i.us ], [ %i.md, %applyAttr.exit.i.i.us ] ; 3 uses
  %i.ij = load i32, ptr %.06284.i.i.us, align 8
  %i.ik = and i32 %i.ij, 3
  %i.il = icmp eq i32 %i.ik, 2
  %i.im = select i1 %i.il, i64 56, i64 -8
  %i.in = getelementptr inbounds i8, ptr %.06284.i.i.us, i64 %i.im
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !65
  %.060.val.i.i.us = load ptr, ptr %i.ii, align 8, !tbaa !24 ; 4 uses
  %i.ip = getelementptr i8, ptr %i.io, i64 16
  %.val.i.i.us = load ptr, ptr %i.ip, align 8, !tbaa !24 ; 7 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.val.i.i.us, i64 176
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !29
  %i.is = getelementptr inbounds nuw i8, ptr %.060.val.i.i.us, i64 176
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !29
  %i.iu = load i8, ptr getelementptr inbounds nuw (i8, ptr @X_marg, i64 16), align 16, !tbaa !18, !range !20, !noundef !21
  %i.iv = trunc nuw i8 %i.iu to i1
  %i.iw = getelementptr inbounds nuw i8, ptr %.060.val.i.i.us, i64 48
  %i.ix = load double, ptr %i.iw, align 8, !tbaa !44 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %.val.i.i.us, i64 48
  %i.iz = load double, ptr %i.iy, align 8, !tbaa !44 ; 2 uses
  %i.ja = load <2 x double>, ptr %i.ir, align 8, !tbaa !14
  %i.jb = load <2 x double>, ptr %i.it, align 8, !tbaa !14
  %i.jc = fsub <2 x double> %i.ja, %i.jb          ; 7 uses
  %i.jd = extractelement <2 x double> %i.jc, i64 0 ; 5 uses
  %i.je = call double @llvm.fabs.f64(double %i.jd) ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.060.val.i.i.us, i64 56 ; 4 uses
  br i1 %i.iv, label %WD2.exit10.i.i.i.i.us, label %WD2.exit10.thread.i.i.i.i.us

WD2.exit10.thread.i.i.i.i.us:                     ; preds = %bb.z
  %i.jg = load double, ptr @X_marg, align 16, !tbaa !45 ; 2 uses
  %i.jh = fmul double %i.ix, %i.jg
  %i.ji = fmul double %i.jh, 5.000000e-01         ; 2 uses
  %i.jj = fmul double %i.iz, %i.jg
  %i.jk = fmul double %i.jj, 5.000000e-01         ; 2 uses
  %i.jl = fadd double %i.ji, %i.jk
  %i.jm = fcmp ugt double %i.je, %i.jl
  br i1 %i.jm, label %overlap.exit.thread.thread4.i.i.i.us, label %overlap.exit.i.thread.i.i.us

overlap.exit.i.thread.i.i.us:                     ; preds = %WD2.exit10.thread.i.i.i.i.us
  %i.jn = extractelement <2 x double> %i.jc, i64 1 ; 2 uses
  %i.jo = call double @llvm.fabs.f64(double %i.jn)
  %i.jp = load double, ptr %i.jf, align 8, !tbaa !46
  %i.jq = load double, ptr getelementptr inbounds nuw (i8, ptr @X_marg, i64 8), align 8, !tbaa !47 ; 2 uses
  %i.jr = fmul double %i.jp, %i.jq
  %i.js = fmul double %i.jr, 5.000000e-01         ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %.val.i.i.us, i64 56
  %i.ju = load double, ptr %i.jt, align 8, !tbaa !46
  %i.jv = fmul double %i.jq, %i.ju
  %i.jw = fmul double %i.jv, 5.000000e-01         ; 2 uses
  %i.jx = fadd double %i.js, %i.jw
  %i.jy = fcmp ugt double %i.jo, %i.jx
  br i1 %i.jy, label %overlap.exit.thread._crit_edge.i.i.i.us, label %applyAttr.exit.i.i.us

end_hunk_0
