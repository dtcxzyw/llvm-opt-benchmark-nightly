Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/tjbench?download=true
inline.NumInlined: 11
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@decomp:bb.a
bb.cu:                                            ; preds = %bb.ct
  %i.md = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) @tjErrorStr, ptr noundef nonnull dereferenceable(1) %i.lz, i64 noundef 200) #23
  %.not649.us.us.us = icmp eq i32 %i.md, 0
  br i1 %.not649.us.us.us, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %.b605.us.us.us = load i1, ptr @tjErrorCode, align 4
  %i.me = load i32, ptr @tjErrorLine, align 4
  %i.mf = icmp eq i32 %i.me, 288
  %or.cond63.not.us.us.us = select i1 %.b605.us.us.us, i1 %i.mf, i1 false
  br i1 %or.cond63.not.us.us.us, label %.thread731.us.us.us, label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %i.mg = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @tjErrorStr, ptr noundef nonnull dereferenceable(1) %i.lz, i64 noundef 200) #22 ; 0 uses
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @tjErrorStr, i64 199), align 1, !tbaa !16
  store i1 true, ptr @tjErrorCode, align 4
  store i32 288, ptr @tjErrorLine, align 4, !tbaa !9
  %i.mh = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.114, i32 noundef 288, ptr noundef nonnull %i.lz) ; 0 uses
  br label %.thread731.us.us.us

.thread731.us.us.us:                              ; preds = %bb.cw, %bb.cv, %.thread727.us.us.us
  br i1 %i.ix, label %bb.cx, label %.thread735.us.us.us

bb.cx:                                            ; preds = %.thread731.us.us.us
  %i.mi = tail call double @getTime() #22
  %i.mj = fsub double %i.mi, %i.lt
  %i.mk = fadd double %.2503820.us.us.us, %i.mj
  br label %.thread735.us.us.us

.thread735.us.us.us:                              ; preds = %bb.cx, %.thread731.us.us.us, %bb.cn, %bb.cm, %bb.cj, %bb.ci, %bb.ch, %bb.ce, %bb.cd, %bb.cc, %bb.bz
  %.6507.ph.us.us.us = phi double [ %.2503820.us.us.us, %bb.bz ], [ %.2503820.us.us.us, %bb.ci ], [ %.2503820.us.us.us, %bb.ce ], [ %.2503820.us.us.us, %bb.cn ], [ %.2503820.us.us.us, %bb.cj ], [ %i.mk, %bb.cx ], [ %.2503820.us.us.us, %.thread731.us.us.us ], [ %.2503820.us.us.us, %bb.cm ], [ %.2503820.us.us.us, %bb.ch ], [ %.2503820.us.us.us, %bb.cc ], [ %.2503820.us.us.us, %bb.cd ] ; 5 uses
  %i.ml = add nsw i32 %.0543819.us.us.us, %8      ; 2 uses
  %indvars.iv.next907 = add nsw i64 %indvars.iv906, 1 ; 2 uses
  %i.mm = load i32, ptr @sampleSize, align 4, !tbaa !9 ; 2 uses
  %i.mn = mul nsw i32 %i.is, %i.mm
  %i.mo = sext i32 %i.mn to i64
  %i.mp = getelementptr inbounds i8, ptr %.0497821.us.us.us, i64 %i.mo
  %i.mq = icmp slt i32 %i.ml, %3
  br i1 %i.mq, label %bb.bw, label %._crit_edge.us.us.us, !llvm.loop !77

._crit_edge.us.us.us:                             ; preds = %.thread735.us.us.us
  %i.mr = add nsw i32 %.0542825.us.us.us, %9      ; 2 uses
  %i.ms = zext nneg i32 %i.mm to i64
  %i.mt = mul i64 %i.iv, %i.ms
  %i.mu = getelementptr inbounds nuw i8, ptr %.0498827.us.us.us, i64 %i.mt
  %i.mv = icmp slt i32 %i.mr, %4
  br i1 %i.mv, label %.preheader.us.us.us, label %._crit_edge829.split.us.us.us, !llvm.loop !78

._crit_edge829.split.us.us.us:                    ; preds = %._crit_edge.us.us.us
  %i.mw = tail call double @getTime() #22
  %i.mx = fsub double %i.mw, %i.iy
  %i.my = fadd double %.0510.us.us, %i.mx         ; 5 uses
  br i1 %i.ix, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %._crit_edge829.split.us.us.us
  %i.mz = load double, ptr @warmup, align 8, !tbaa !15
  %i.na = fcmp ult double %i.my, %i.mz
  br i1 %i.na, label %.preheader.lr.ph.us.us, label %.preheader.lr.ph.us.us.outer.backedge

bb.cz:                                            ; preds = %._crit_edge829.split.us.us.us
  %i.nb = add nuw nsw i32 %.0539.us.us.ph, 1      ; 2 uses
  %i.nc = load double, ptr @benchTime, align 8, !tbaa !15
  %i.nd = fcmp ult double %i.my, %i.nc
  br i1 %i.nd, label %.preheader.lr.ph.us.us.outer.backedge, label %.split865.us

.preheader.lr.ph.us.us.outer.backedge:            ; preds = %bb.cy, %bb.cz
  %.0539.us.us.ph.be = phi i32 [ %i.nb, %bb.cz ], [ 0, %bb.cy ]
  %.0510.us.us.ph.be = phi double [ %i.my, %bb.cz ], [ 0.000000e+00, %bb.cy ]
  %.0501.us.us.ph.be = phi double [ %.6507.ph.us.us.us, %bb.cz ], [ 0.000000e+00, %bb.cy ]
  br label %.preheader.lr.ph.us.us.outer

.preheader.lr.ph.us:                              ; preds = %.preheader.lr.ph.us.outer, %bb.da
  %.0510.us = phi double [ %i.nh, %bb.da ], [ %.0510.us.ph, %.preheader.lr.ph.us.outer ]
  %i.ne = tail call double @getTime() #22
  %i.nf = tail call double @getTime() #22
  %i.ng = fsub double %i.nf, %i.ne
  %i.nh = fadd double %.0510.us, %i.ng            ; 5 uses
  br i1 %i.nk, label %bb.db, label %bb.da

bb.da:                                            ; preds = %.preheader.lr.ph.us
  %i.ni = load double, ptr @warmup, align 8, !tbaa !15
  %i.nj = fcmp ult double %i.nh, %i.ni
  br i1 %i.nj, label %.preheader.lr.ph.us, label %.preheader.lr.ph.us.outer.backedge

.preheader.lr.ph.us.outer:                        ; preds = %.split.us849, %.preheader.lr.ph.us.outer.backedge
  %.0539.us.ph = phi i32 [ %.0539.us.ph.be, %.preheader.lr.ph.us.outer.backedge ], [ -1, %.split.us849 ] ; 2 uses
  %.0510.us.ph = phi double [ %.0510.us.ph.be, %.preheader.lr.ph.us.outer.backedge ], [ 0.000000e+00, %.split.us849 ]
  %i.nk = icmp sgt i32 %.0539.us.ph, -1
  br label %.preheader.lr.ph.us

bb.db:                                            ; preds = %.preheader.lr.ph.us
  %i.nl = add nuw nsw i32 %.0539.us.ph, 1         ; 2 uses
  %i.nm = load double, ptr @benchTime, align 8, !tbaa !15
  %i.nn = fcmp ult double %i.nh, %i.nm
  br i1 %i.nn, label %.preheader.lr.ph.us.outer.backedge, label %.split865.us

.preheader.lr.ph.us.outer.backedge:               ; preds = %bb.da, %bb.db
  %.0539.us.ph.be = phi i32 [ %i.nl, %bb.db ], [ 0, %bb.da ]
  %.0510.us.ph.be = phi double [ %i.nh, %bb.db ], [ 0.000000e+00, %bb.da ]
  br label %.preheader.lr.ph.us.outer

.split:                                           ; preds = %.split.outer, %bb.dd
  %.0510 = phi double [ %i.nr, %bb.dd ], [ %.0510.ph, %.split.outer ]
  %i.no = tail call double @getTime() #22
  %i.np = tail call double @getTime() #22
  %i.nq = fsub double %i.np, %i.no
  %i.nr = fadd double %.0510, %i.nq               ; 5 uses
  br i1 %i.of, label %bb.dc, label %bb.dd

.split841.us:                                     ; preds = %bb.cp
  %i.ns = select i1 %i.ln, ptr @.str.116, ptr @.str.117
  %i.nt = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.115, ptr noundef nonnull %i.ns, i32 noundef 284, ptr noundef %i.lk) ; 0 uses
  br label %.thread722

.split845.us:                                     ; preds = %bb.ct
  %i.nu = select i1 %i.mc, ptr @.str.116, ptr @.str.117
  %i.nv = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.115, ptr noundef nonnull %i.nu, i32 noundef 288, ptr noundef %i.lz) ; 0 uses
  br label %.thread722

.split837.us:                                     ; preds = %bb.ck
  %i.nw = select i1 %i.kw, ptr @.str.116, ptr @.str.117
  %i.nx = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.115, ptr noundef nonnull %i.nw, i32 noundef 294, ptr noundef %i.kt) ; 0 uses
  br label %.thread722

.split833.us:                                     ; preds = %bb.cf
  %i.ny = select i1 %i.kf, ptr @.str.116, ptr @.str.117
  %i.nz = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.115, ptr noundef nonnull %i.ny, i32 noundef 298, ptr noundef %i.kc) ; 0 uses
  br label %.thread722

.split.us:                                        ; preds = %bb.ca
  %i.oa = select i1 %i.jt, ptr @.str.116, ptr @.str.117
  %i.ob = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.115, ptr noundef nonnull %i.oa, i32 noundef 302, ptr noundef %i.jq) ; 0 uses
  br label %.thread722

bb.dc:                                            ; preds = %.split
  %i.oc = add nuw nsw i32 %.0539.ph, 1            ; 2 uses
  %i.od = load double, ptr @benchTime, align 8, !tbaa !15
  %i.oe = fcmp ult double %i.nr, %i.od
  br i1 %i.oe, label %.split.outer.backedge, label %.split865.us

.split.outer.backedge:                            ; preds = %bb.dd, %bb.dc
  %.0539.ph.be = phi i32 [ %i.oc, %bb.dc ], [ 0, %bb.dd ]
  %.0510.ph.be = phi double [ %i.nr, %bb.dc ], [ 0.000000e+00, %bb.dd ]
  br label %.split.outer

.split.outer:                                     ; preds = %bb.bv, %.split.outer.backedge
  %.0539.ph = phi i32 [ %.0539.ph.be, %.split.outer.backedge ], [ -1, %bb.bv ] ; 2 uses
  %.0510.ph = phi double [ %.0510.ph.be, %.split.outer.backedge ], [ 0.000000e+00, %bb.bv ]
  %i.of = icmp sgt i32 %.0539.ph, -1
  br label %.split

bb.dd:                                            ; preds = %.split
  %i.og = load double, ptr @warmup, align 8, !tbaa !15
  %i.oh = fcmp ult double %i.nr, %i.og
  br i1 %i.oh, label %.split, label %.split.outer.backedge

.split865.us:                                     ; preds = %bb.dc, %bb.db, %bb.cz
  %.us-phi866 = phi i32 [ %i.nl, %bb.db ], [ %i.nb, %bb.cz ], [ %i.oc, %bb.dc ] ; 2 uses
  %.us-phi867 = phi double [ %i.nh, %bb.db ], [ %i.my, %bb.cz ], [ %i.nr, %bb.dc ] ; 2 uses
  %.us-phi868 = phi double [ 0.000000e+00, %bb.db ], [ %.6507.ph.us.us.us, %bb.cz ], [ 0.000000e+00, %bb.dc ] ; 4 uses
  %.b596 = load i1, ptr @doYUV, align 4           ; 2 uses
  %i.oi = fsub double %.us-phi867, %.us-phi868
  %.3513 = select i1 %.b596, double %i.oi, double %.us-phi867 ; 3 uses
  %i.oj = load i32, ptr @quiet, align 4, !tbaa !9
  %.not651 = icmp eq i32 %i.oj, 0
  br i1 %.not651, label %bb.di, label %bb.de

bb.de:                                            ; preds = %.split865.us
  %i.ok = mul nsw i32 %4, %3
  %i.ol = sitofp i32 %i.ok to double
  %i.om = fdiv nnan double %i.ol, 1.000000e+06
  %i.on = uitofp nneg i32 %.us-phi866 to double
  %i.oo = fmul double %i.om, %i.on                ; 2 uses
  %i.op = fdiv double %i.oo, %.3513
  %i.oq = call fastcc ptr @sigfig(double noundef %i.op, ptr noundef %i.a, i32 noundef 1024) ; 0 uses
  %i.or = load i32, ptr @quiet, align 4, !tbaa !9
  %i.os = icmp eq i32 %i.or, 2
  %i.ot = select i1 %i.os, ptr @str.132, ptr @.str.281
  %i.ou = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.320, ptr noundef nonnull %i.a, ptr noundef nonnull %i.ot) ; 0 uses
  %.b595 = load i1, ptr @doYUV, align 4
  br i1 %.b595, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.ov = fdiv double %i.oo, %.us-phi868
  %i.ow = call fastcc ptr @sigfig(double noundef %i.ov, ptr noundef %i.a, i32 noundef 1024) ; 0 uses
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) %i.a) ; 0 uses
  br label %bb.dk

bb.dg:                                            ; preds = %bb.de
  %i.ox = load i32, ptr @quiet, align 4, !tbaa !9
  %.not652 = icmp eq i32 %i.ox, 2
  br i1 %.not652, label %bb.dk, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  br label %bb.dk

bb.di:                                            ; preds = %.split865.us
  %i.oy = select i1 %.b596, ptr @.str.323, ptr @.str.324
  %i.oz = mul nsw i32 %4, %3
  %10 = uitofp nneg i32 %.us-phi866 to double     ; 3 uses
  %11 = sitofp i32 %i.oz to double
  %i.pa = insertelement <2 x double> poison, double %10, i64 0
  %i.pb = insertelement <2 x double> %i.pa, double %11, i64 1
  %i.pc = insertelement <2 x double> <double poison, double 1.000000e+06>, double %.3513, i64 0
  %i.pd = fdiv <2 x double> %i.pb, %i.pc          ; 2 uses
  %i.pe = extractelement <2 x double> %i.pd, i64 0
  %i.pf = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.322, ptr noundef nonnull %i.oy, double noundef %i.pe) ; 0 uses
  %i.pg = extractelement <2 x double> %i.pd, i64 1
  %i.ph = fmul double %i.pg, %10                  ; 2 uses
  %i.pi = fdiv double %i.ph, %.3513
  %i.pj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.285, double noundef %i.pi) ; 0 uses
  %.b593 = load i1, ptr @doYUV, align 4
  br i1 %.b593, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.pk = fdiv double %10, %.us-phi868
  %i.pl = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.325, double noundef %i.pk) ; 0 uses
  %i.pm = fdiv double %i.ph, %.us-phi868
  %i.pn = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.285, double noundef %i.pm) ; 0 uses
  br label %bb.dk

bb.dk:                                            ; preds = %bb.di, %bb.dj, %bb.df, %bb.dh, %bb.dg
  %.b588 = load i1, ptr @doWrite, align 4
  br i1 %.b588, label %.thread722, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.po = load i32, ptr @sf, align 8, !tbaa !21   ; 2 uses
  %i.pp = icmp ne i32 %i.po, 1
  %i.pq = load i32, ptr getelementptr inbounds nuw (i8, ptr @sf, i64 4), align 4 ; 2 uses
  %i.pr = icmp ne i32 %i.pq, 1
  %or.cond77 = select i1 %i.pp, i1 true, i1 %i.pr
  br i1 %or.cond77, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %i.ps = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 24, ptr noundef nonnull @.str.326, i32 noundef %i.po, i32 noundef %i.pq) #22 ; 0 uses
  br label %bb.dq

bb.dn:                                            ; preds = %bb.dl
  %.not653 = icmp eq i32 %8, %3
  %.not654 = icmp eq i32 %9, %4
  %or.cond675 = and i1 %.not653, %.not654
  br i1 %or.cond675, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.pt = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 24, ptr noundef nonnull @.str.327, i32 noundef %8, i32 noundef %9) #22 ; 0 uses
  br label %bb.dq

bb.dp:                                            ; preds = %bb.dn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(5) %i.b, ptr noundef nonnull align 1 dereferenceable(5) @.str.328, i64 5, i1 false)
  br label %bb.dq

bb.dq:                                            ; preds = %bb.do, %bb.dp, %bb.dm
  %.b = load i1, ptr @decompOnly, align 4
  br i1 %.b, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  %i.pu = load ptr, ptr @ext, align 8, !tbaa !13
  %i.pv = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 1024, ptr noundef nonnull @.str.329, ptr noundef %7, ptr noundef nonnull %i.b, ptr noundef %i.pu) #22 ; 0 uses
  br label %bb.dv

bb.ds:                                            ; preds = %bb.dq
  %i.pw = load i32, ptr @lossless, align 4, !tbaa !9
  %.not655 = icmp eq i32 %i.pw, 0
  br i1 %.not655, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %i.px = sext i32 %5 to i64
  %i.py = getelementptr inbounds [8 x i8], ptr @subName, i64 %i.px
  %i.pz = load ptr, ptr %i.py, align 8, !tbaa !13
  br label %bb.du

bb.du:                                            ; preds = %bb.ds, %bb.dt
  %i.qa = phi ptr [ %i.pz, %bb.dt ], [ @.str.331, %bb.ds ]
  %i.qb = load ptr, ptr @ext, align 8, !tbaa !13
  %i.qc = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 1024, ptr noundef nonnull @.str.330, ptr noundef %7, ptr noundef %i.qa, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, ptr noundef %i.qb) #22 ; 0 uses
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dr
  %i.qd = load i32, ptr @precision, align 4, !tbaa !9 ; 2 uses
  %i.qe = icmp slt i32 %i.qd, 9
  br i1 %i.qe, label %bb.dw, label %bb.ec

bb.dw:                                            ; preds = %bb.dv
  %i.qf = load i32, ptr @pf, align 4, !tbaa !9
  %i.qg = call i32 @tj3SaveImage8(ptr noundef nonnull %i.v, ptr noundef nonnull %i.a, ptr noundef nonnull %.0547, i32 noundef %.0500, i32 noundef 0, i32 noundef %.0499, i32 noundef %i.qf) #22
  %i.qh = icmp eq i32 %i.qg, -1
  br i1 %i.qh, label %bb.dx, label %.thread722

bb.dx:                                            ; preds = %bb.dw
  %i.qi = call i32 @tj3GetErrorCode(ptr noundef nonnull %i.v) #22
  %i.qj = call ptr @tj3GetErrorStr(ptr noundef nonnull %i.v) #22 ; 4 uses
  %i.qk = call i32 @tj3Get(ptr noundef nonnull %i.v, i32 noundef 0) #22
  %i.ql = icmp eq i32 %i.qk, 0
  %i.qm = icmp eq i32 %i.qi, 0                    ; 2 uses
  %or.cond79 = select i1 %i.ql, i1 %i.qm, i1 false
  br i1 %or.cond79, label %bb.dy, label %bb.eb

bb.dy:                                            ; preds = %bb.dx
  %i.qn = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) @tjErrorStr, ptr noundef nonnull dereferenceable(1) %i.qj, i64 noundef 200) #23
  %.not660 = icmp eq i32 %i.qn, 0
  br i1 %.not660, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %.b601 = load i1, ptr @tjErrorCode, align 4
  %i.qo = load i32, ptr @tjErrorLine, align 4
  %i.qp = icmp eq i32 %i.qo, 357
  %or.cond81.not = select i1 %.b601, i1 %i.qp, i1 false
  br i1 %or.cond81.not, label %.thread722, label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dy
  %i.qq = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @tjErrorStr, ptr noundef nonnull dereferenceable(1) %i.qj, i64 noundef 200) #22 ; 0 uses
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @tjErrorStr, i64 199), align 1, !tbaa !16
  store i1 true, ptr @tjErrorCode, align 4
  store i32 357, ptr @tjErrorLine, align 4, !tbaa !9
  %i.qr = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.114, i32 noundef 357, ptr noundef nonnull %i.qj) ; 0 uses
  br label %.thread722

bb.eb:                                            ; preds = %bb.dx
  %i.qs = select i1 %i.qm, ptr @.str.116, ptr @.str.117
  %i.qt = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.115, ptr noundef nonnull %i.qs, i32 noundef 357, ptr noundef %i.qj) ; 0 uses
  br label %.thread722

bb.ec:                                            ; preds = %bb.dv
  %i.qu = icmp samesign ult i32 %i.qd, 13
  %i.qv = load i32, ptr @pf, align 4, !tbaa !9    ; 2 uses
  br i1 %i.qu, label %bb.ed, label %bb.ej

bb.ed:                                            ; preds = %bb.ec
  %i.qw = call i32 @tj3SaveImage12(ptr noundef nonnull %i.v, ptr noundef nonnull %i.a, ptr noundef nonnull %.0547, i32 noundef %.0500, i32 noundef 0, i32 noundef %.0499, i32 noundef %i.qv) #22
  %i.qx = icmp eq i32 %i.qw, -1
  br i1 %i.qx, label %bb.ee, label %.thread722

bb.ee:                                            ; preds = %bb.ed
  %i.qy = call i32 @tj3GetErrorCode(ptr noundef nonnull %i.v) #22
  %i.qz = call ptr @tj3GetErrorStr(ptr noundef nonnull %i.v) #22 ; 4 uses
  %i.ra = call i32 @tj3Get(ptr noundef nonnull %i.v, i32 noundef 0) #22
  %i.rb = icmp eq i32 %i.ra, 0
  %i.rc = icmp eq i32 %i.qy, 0                    ; 2 uses
  %or.cond83 = select i1 %i.rb, i1 %i.rc, i1 false
  br i1 %or.cond83, label %bb.ef, label %bb.ei

bb.ef:                                            ; preds = %bb.ee
  %i.rd = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) @tjErrorStr, ptr noundef nonnull dereferenceable(1) %i.qz, i64 noundef 200) #23
  %.not658 = icmp eq i32 %i.rd, 0
  br i1 %.not658, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  %.b600 = load i1, ptr @tjErrorCode, align 4
  %i.re = load i32, ptr @tjErrorLine, align 4
  %i.rf = icmp eq i32 %i.re, 361
  %or.cond85.not = select i1 %.b600, i1 %i.rf, i1 false
  br i1 %or.cond85.not, label %.thread722, label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  %i.rg = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @tjErrorStr, ptr noundef nonnull dereferenceable(1) %i.qz, i64 noundef 200) #22 ; 0 uses
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @tjErrorStr, i64 199), align 1, !tbaa !16
  store i1 true, ptr @tjErrorCode, align 4
  store i32 361, ptr @tjErrorLine, align 4, !tbaa !9
  %i.rh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.114, i32 noundef 361, ptr noundef nonnull %i.qz) ; 0 uses
  br label %.thread722

bb.ei:                                            ; preds = %bb.ee
  %i.ri = select i1 %i.rc, ptr @.str.116, ptr @.str.117
  %i.rj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.115, ptr noundef nonnull %i.ri, i32 noundef 361, ptr noundef %i.qz) ; 0 uses
  br label %.thread722

bb.ej:                                            ; preds = %bb.ec
  %i.rk = call i32 @tj3SaveImage16(ptr noundef nonnull %i.v, ptr noundef nonnull %i.a, ptr noundef nonnull %.0547, i32 noundef %.0500, i32 noundef 0, i32 noundef %.0499, i32 noundef %i.qv) #22
  %i.rl = icmp eq i32 %i.rk, -1
  br i1 %i.rl, label %bb.ek, label %.thread722

bb.ek:                                            ; preds = %bb.ej
  %i.rm = call i32 @tj3GetErrorCode(ptr noundef nonnull %i.v) #22
  %i.rn = call ptr @tj3GetErrorStr(ptr noundef nonnull %i.v) #22 ; 4 uses
  %i.ro = call i32 @tj3Get(ptr noundef nonnull %i.v, i32 noundef 0) #22
  %i.rp = icmp eq i32 %i.ro, 0
  %i.rq = icmp eq i32 %i.rm, 0                    ; 2 uses
  %or.cond87 = select i1 %i.rp, i1 %i.rq, i1 false
  br i1 %or.cond87, label %bb.el, label %bb.eo

bb.el:                                            ; preds = %bb.ek
  %i.rr = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) @tjErrorStr, ptr noundef nonnull dereferenceable(1) %i.rn, i64 noundef 200) #23
  %.not656 = icmp eq i32 %i.rr, 0
  br i1 %.not656, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el
  %.b599 = load i1, ptr @tjErrorCode, align 4
  %i.rs = load i32, ptr @tjErrorLine, align 4
  %i.rt = icmp eq i32 %i.rs, 365
  %or.cond89.not = select i1 %.b599, i1 %i.rt, i1 false
  br i1 %or.cond89.not, label %.thread722, label %bb.en

bb.en:                                            ; preds = %bb.em, %bb.el
  %i.ru = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @tjErrorStr, ptr noundef nonnull dereferenceable(1) %i.rn, i64 noundef 200) #22 ; 0 uses
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @tjErrorStr, i64 199), align 1, !tbaa !16
  store i1 true, ptr @tjErrorCode, align 4
  store i32 365, ptr @tjErrorLine, align 4, !tbaa !9
  %i.rv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.114, i32 noundef 365, ptr noundef nonnull %i.rn) ; 0 uses
  br label %.thread722

bb.eo:                                            ; preds = %bb.ek
  %i.rw = select i1 %i.rq, ptr @.str.116, ptr @.str.117
  %i.rx = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.115, ptr noundef nonnull %i.rw, i32 noundef 365, ptr noundef %i.rn) ; 0 uses
  br label %.thread722

.thread778:                                       ; preds = %bb.f, %bb.bm, %bb.l, %bb.q, %bb.bk, %bb.bf, %bb.ba, %bb.av, %bb.ap, %bb.ak, %bb.af, %bb.aa, %bb.v
  tail call void @tj3Destroy(ptr noundef %i.v) #22
  br label %bb.eq

.thread722:                                       ; preds = %.split841.us, %.split833.us, %.split837.us, %.split.us, %.split845.us, %bb.bt, %bb.br, %bb.eo, %bb.en, %bb.em, %bb.ei, %bb.eh, %bb.eg, %bb.eb, %bb.ea, %bb.dz, %bb.dw, %bb.ej, %bb.ed, %bb.dk
  %.41 = phi i32 [ -1, %bb.eo ], [ 0, %bb.en ], [ 0, %bb.em ], [ -1, %bb.eb ], [ 0, %bb.dw ], [ 0, %bb.dz ], [ 0, %bb.ea ], [ 0, %bb.ed ], [ 0, %bb.eg ], [ 0, %bb.eh ], [ 0, %bb.ej ], [ 0, %bb.dk ], [ -1, %bb.bt ], [ -1, %bb.ei ], [ -1, %bb.br ], [ -1, %.split845.us ], [ -1, %.split.us ], [ -1, %.split837.us ], [ -1, %.split833.us ], [ -1, %.split841.us ] ; 2 uses
  %.2496 = phi ptr [ %.1495, %bb.eo ], [ %.1495, %bb.en ], [ %.1495, %bb.em ], [ %.1495, %bb.eb ], [ %.1495, %bb.dw ], [ %.1495, %bb.dz ], [ %.1495, %bb.ea ], [ %.1495, %bb.ed ], [ %.1495, %bb.eg ], [ %.1495, %bb.eh ], [ %.1495, %bb.ej ], [ %.1495, %bb.dk ], [ null, %bb.bt ], [ %.1495, %bb.ei ], [ null, %bb.br ], [ %.1495, %.split845.us ], [ %.1495, %.split.us ], [ %.1495, %.split837.us ], [ %.1495, %.split833.us ], [ %.1495, %.split841.us ] ; 2 uses
  call void @tj3Destroy(ptr noundef nonnull %i.v) #22
  br i1 %.not786, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %.thread722
end_hunk_0
