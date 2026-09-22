Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/calc_verletbuf?download=true
inline.NumInlined: 1121
inline.NumDeleted: 571
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_Z30minCellSizeForAtomDisplacementRK10gmx_mtop_tRK10t_inputrecN3gmx8ArrayRefIKNS5_17RangePartitioningEEEf12ChanceTarget:bb.a
._crit_edge.i.i:                                  ; preds = %bb.ai, %._crit_edge.i.i.unr-lcssa
  %spec.select.i.i.lcssa = phi i32 [ %spec.select.i.i.3, %._crit_edge.i.i.unr-lcssa ], [ %spec.select.i.i.epil, %bb.ai ] ; 4 uses
  %.lcssa305 = phi float [ %i.ru, %._crit_edge.i.i.unr-lcssa ], [ %i.qq, %bb.ai ] ; 6 uses
  %i.qr = icmp eq i32 %spec.select.i.i.lcssa, 2
  br i1 %i.qr, label %.critedge.i.i, label %bb.an

bb.aj:                                            ; preds = %bb.ah
  %i.qs = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.ak:                                            ; preds = %bb.ak, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ %i.qf, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.3, %bb.ak ] ; 6 uses
  %.087163.i.i = phi i32 [ 0, %.lr.ph.i.i.new ], [ %spec.select.i.i.3, %bb.ak ]
  %.089162.i.i = phi float [ 0.000000e+00, %.lr.ph.i.i.new ], [ %i.ru, %bb.ak ]
  %niter340 = phi i32 [ 0, %.lr.ph.i.i.new ], [ %niter340.next.3, %bb.ak ]
  %i.qt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0130.0.i.i, i64 %indvars.iv.i.i
  %i.qu = load i32, ptr %i.qt, align 4, !tbaa !350
  %i.qv = icmp sgt i32 %i.qu, 0
  %i.qw = zext i1 %i.qv to i32
  %spec.select.i.i = add nuw nsw i32 %.087163.i.i, %i.qw
  %i.qx = getelementptr inbounds [36 x i8], ptr %i.qe, i64 %indvars.iv.i.i
  %i.qy = load float, ptr %i.qx, align 4, !tbaa !222
  %i.qz = fadd float %.089162.i.i, %i.qy
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ra = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0130.0.i.i, i64 %indvars.iv.next.i.i
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !350
  %i.rc = icmp sgt i32 %i.rb, 0
  %i.rd = zext i1 %i.rc to i32
  %spec.select.i.i.1 = add nuw nsw i32 %spec.select.i.i, %i.rd
  %i.re = getelementptr inbounds [36 x i8], ptr %i.qe, i64 %indvars.iv.next.i.i
  %i.rf = load float, ptr %i.re, align 4, !tbaa !222
  %i.rg = fadd float %i.qz, %i.rf
  %indvars.iv.next.i.i.1 = add nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.rh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0130.0.i.i, i64 %indvars.iv.next.i.i.1
  %i.ri = load i32, ptr %i.rh, align 4, !tbaa !350
  %i.rj = icmp sgt i32 %i.ri, 0
  %i.rk = zext i1 %i.rj to i32
  %spec.select.i.i.2 = add nuw nsw i32 %spec.select.i.i.1, %i.rk
  %i.rl = getelementptr inbounds [36 x i8], ptr %i.qe, i64 %indvars.iv.next.i.i.1
  %i.rm = load float, ptr %i.rl, align 4, !tbaa !222
  %i.rn = fadd float %i.rg, %i.rm
  %indvars.iv.next.i.i.2 = add nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.ro = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0130.0.i.i, i64 %indvars.iv.next.i.i.2
  %i.rp = load i32, ptr %i.ro, align 4, !tbaa !350
  %i.rq = icmp sgt i32 %i.rp, 0
  %i.rr = zext i1 %i.rq to i32
  %spec.select.i.i.3 = add nuw nsw i32 %spec.select.i.i.2, %i.rr ; 3 uses
  %i.rs = getelementptr inbounds [36 x i8], ptr %i.qe, i64 %indvars.iv.next.i.i.2
  %i.rt = load float, ptr %i.rs, align 4, !tbaa !222
  %i.ru = fadd float %i.rn, %i.rt                 ; 3 uses
  %indvars.iv.next.i.i.3 = add nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %niter340.next.3 = add i32 %niter340, 4         ; 2 uses
  %niter340.ncmp.3 = icmp eq i32 %niter340.next.3, %unroll_iter339
  br i1 %niter340.ncmp.3, label %._crit_edge.i.i.unr-lcssa, label %bb.ak

bb.al:                                            ; preds = %.critedge.i.i
  %indvars.iv.next207.i.i.a = add nsw i64 %indvars.iv206.i.i, 1 ; 2 uses
  %i.rv = trunc nsw i64 %indvars.iv.next207.i.i.a to i32
  %.not144.i.i = icmp eq i32 %i.qd, %i.rv
  br i1 %.not144.i.i, label %.loopexit.i.i, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %._crit_edge.i.i, %bb.al
  %indvars.iv206.i.i = phi i64 [ %indvars.iv.next207.i.i.a, %bb.al ], [ %i.qf, %._crit_edge.i.i ] ; 4 uses
  %i.rw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0130.0.i.i, i64 %indvars.iv206.i.i
  %i.rx = load i32, ptr %i.rw, align 4, !tbaa !350
  %i.ry = icmp slt i32 %i.rx, 1
  br i1 %i.ry, label %bb.al, label %bb.am

bb.am:                                            ; preds = %.critedge.i.i
  %i.rz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0130.0.i.i, i64 %indvars.iv206.i.i
  %i.sa = getelementptr inbounds [36 x i8], ptr %i.qe, i64 %indvars.iv206.i.i
  %i.sb = load float, ptr %i.sa, align 4, !tbaa !222
  %i.sc = fdiv float %i.sb, %.lcssa305
  %i.sd = fpext float %i.sc to double
  %i.se = fadd double %i.sd, -5.000000e-01
  %i.sf = tail call noundef double @llvm.fabs.f64(double %i.se)
  %i.sg = getelementptr inbounds nuw i8, ptr %i.rz, i64 4
  %i.sh = load float, ptr %i.sg, align 4, !tbaa !351
  %i.si = fpext float %i.sh to double
  %i.sj = fmul double %i.sf, %i.si
  %i.sk = fptrunc double %i.sj to float
  br label %.loopexit.i.i

bb.an:                                            ; preds = %._crit_edge.i.i
  %i.sl = icmp samesign ugt i32 %spec.select.i.i.lcssa, 2
  br i1 %i.sl, label %.lr.ph178.i.i, label %.thread.i.i

.lr.ph178.i.i:                                    ; preds = %bb.an
  %i.sm = add nsw i32 %spec.select.i.i.lcssa, -1  ; 5 uses
  %i.sn = uitofp nneg i32 %spec.select.i.i.lcssa to float ; 5 uses
  %xtraiter341 = and i32 %i.qg, 3                 ; 2 uses
  %lcmp.mod342.not = icmp eq i32 %xtraiter341, 0
  br i1 %lcmp.mod342.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph178.i.i, %bb.ap
  %indvars.iv203.i.i.prol = phi i64 [ %indvars.iv.next204.i.i.prol, %bb.ap ], [ %i.qf, %.lr.ph178.i.i ] ; 2 uses
  %.1176.i.i.prol = phi float [ %.2.i.i.prol, %bb.ap ], [ 0.000000e+00, %.lr.ph178.i.i ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %bb.ap ], [ 0, %.lr.ph178.i.i ]
  %i.so = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0130.0.i.i, i64 %indvars.iv203.i.i.prol ; 2 uses
  %i.sp = load i32, ptr %i.so, align 4, !tbaa !350
  %i.sq = icmp eq i32 %i.sp, %i.sm
  br i1 %i.sq, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.prol.preheader
  %i.sr = getelementptr inbounds nuw i8, ptr %i.so, i64 4
  %i.ss = load float, ptr %i.sr, align 4, !tbaa !351
  %i.st = fdiv float %i.ss, %i.sn                 ; 2 uses
  %i.su = fcmp olt float %.1176.i.i.prol, %i.st
  %.sroa.speculated.i.i.prol = select i1 %i.su, float %i.st, float %.1176.i.i.prol
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %.prol.preheader
  %.2.i.i.prol = phi float [ %.sroa.speculated.i.i.prol, %bb.ao ], [ %.1176.i.i.prol, %.prol.preheader ] ; 3 uses
  %indvars.iv.next204.i.i.prol = add nsw i64 %indvars.iv203.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter341
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !341

.prol.loopexit:                                   ; preds = %bb.ap, %.lr.ph178.i.i
  %.2.i.i.lcssa.unr = phi float [ poison, %.lr.ph178.i.i ], [ %.2.i.i.prol, %bb.ap ]
  %indvars.iv203.i.i.unr = phi i64 [ %i.qf, %.lr.ph178.i.i ], [ %indvars.iv.next204.i.i.prol, %bb.ap ]
  %.1176.i.i.unr = phi float [ 0.000000e+00, %.lr.ph178.i.i ], [ %.2.i.i.prol, %bb.ap ]
  %i.sv = icmp ult i32 %i.qi, 3
  br i1 %i.sv, label %.loopexit.i.i, label %.lr.ph178.i.i.new

.lr.ph178.i.i.new:                                ; preds = %.prol.loopexit, %bb.ax
  %indvars.iv203.i.i = phi i64 [ %indvars.iv.next204.i.i.3, %bb.ax ], [ %indvars.iv203.i.i.unr, %.prol.loopexit ] ; 5 uses
  %.1176.i.i = phi float [ %.2.i.i.3, %bb.ax ], [ %.1176.i.i.unr, %.prol.loopexit ] ; 3 uses
  %i.sw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0130.0.i.i, i64 %indvars.iv203.i.i ; 2 uses
  %i.sx = load i32, ptr %i.sw, align 4, !tbaa !350
  %i.sy = icmp eq i32 %i.sx, %i.sm
  br i1 %i.sy, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.lr.ph178.i.i.new
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sw, i64 4
  %i.ta = load float, ptr %i.sz, align 4, !tbaa !351
  %i.tb = fdiv float %i.ta, %i.sn                 ; 2 uses
  %i.tc = fcmp olt float %.1176.i.i, %i.tb
  %.sroa.speculated.i.i = select i1 %i.tc, float %i.tb, float %.1176.i.i
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.lr.ph178.i.i.new
  %.2.i.i = phi float [ %.sroa.speculated.i.i, %bb.aq ], [ %.1176.i.i, %.lr.ph178.i.i.new ] ; 3 uses
  %i.td = getelementptr [8 x i8], ptr %.sroa.0130.0.i.i, i64 %indvars.iv203.i.i ; 2 uses
  %i.te = getelementptr i8, ptr %i.td, i64 8
  %i.tf = load i32, ptr %i.te, align 4, !tbaa !350
  %i.tg = icmp eq i32 %i.tf, %i.sm
  br i1 %i.tg, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.th = getelementptr i8, ptr %i.td, i64 12
  %i.ti = load float, ptr %i.th, align 4, !tbaa !351
  %i.tj = fdiv float %i.ti, %i.sn                 ; 2 uses
  %i.tk = fcmp olt float %.2.i.i, %i.tj
  %.sroa.speculated.i.i.1 = select i1 %i.tk, float %i.tj, float %.2.i.i
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.2.i.i.1 = phi float [ %.sroa.speculated.i.i.1, %bb.as ], [ %.2.i.i, %bb.ar ] ; 3 uses
  %i.tl = getelementptr [8 x i8], ptr %.sroa.0130.0.i.i, i64 %indvars.iv203.i.i ; 2 uses
  %i.tm = getelementptr i8, ptr %i.tl, i64 16
  %i.tn = load i32, ptr %i.tm, align 4, !tbaa !350
  %i.to = icmp eq i32 %i.tn, %i.sm
  br i1 %i.to, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.tp = getelementptr i8, ptr %i.tl, i64 20
  %i.tq = load float, ptr %i.tp, align 4, !tbaa !351
  %i.tr = fdiv float %i.tq, %i.sn                 ; 2 uses
  %i.ts = fcmp olt float %.2.i.i.1, %i.tr
  %.sroa.speculated.i.i.2 = select i1 %i.ts, float %i.tr, float %.2.i.i.1
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.2.i.i.2 = phi float [ %.sroa.speculated.i.i.2, %bb.au ], [ %.2.i.i.1, %bb.at ] ; 3 uses
  %i.tt = getelementptr [8 x i8], ptr %.sroa.0130.0.i.i, i64 %indvars.iv203.i.i ; 2 uses
  %i.tu = getelementptr i8, ptr %i.tt, i64 24
  %i.tv = load i32, ptr %i.tu, align 4, !tbaa !350
  %i.tw = icmp eq i32 %i.tv, %i.sm
  br i1 %i.tw, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.tx = getelementptr i8, ptr %i.tt, i64 28
  %i.ty = load float, ptr %i.tx, align 4, !tbaa !351
  %i.tz = fdiv float %i.ty, %i.sn                 ; 2 uses
  %i.ua = fcmp olt float %.2.i.i.2, %i.tz
  %.sroa.speculated.i.i.3 = select i1 %i.ua, float %i.tz, float %.2.i.i.2
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.2.i.i.3 = phi float [ %.sroa.speculated.i.i.3, %bb.aw ], [ %.2.i.i.2, %bb.av ] ; 2 uses
  %indvars.iv.next204.i.i.3 = add nsw i64 %indvars.iv203.i.i, 4 ; 2 uses
  %i.ub = trunc nsw i64 %indvars.iv.next204.i.i.3 to i32
  %.not143.i.i.3 = icmp eq i32 %i.qd, %i.ub
  br i1 %.not143.i.i.3, label %.loopexit.i.i, label %.lr.ph178.i.i.new

.thread.i.i:                                      ; preds = %bb.an, %.preheader150.i.i
  %.089.lcssa227231.i.i = phi float [ %.lcssa305, %bb.an ], [ 0.000000e+00, %.preheader150.i.i ] ; 4 uses
  %i.uc = sub nsw i32 %i.qd, %i.qb
  %8 = icmp slt i32 %i.uc, 2
  br i1 %8, label %.loopexit.i.i, label %.lr.ph173.i.i

.lr.ph173.i.i:                                    ; preds = %.thread.i.i
  %i.ud = load ptr, ptr %i.pu, align 8, !tbaa !236 ; 3 uses
  %i.ue = load ptr, ptr %i.pv, align 8, !tbaa !236 ; 2 uses
  %i.uf = icmp eq ptr %i.ud, %i.ue
  %i.ug = ptrtoint ptr %i.ue to i64
  %i.uh = ptrtoint ptr %i.ud to i64
  %i.ui = sub i64 %i.ug, %i.uh
  %i.uj = lshr exact i64 %i.ui, 2
  %i.uk = trunc i64 %i.uj to i32                  ; 2 uses
  %i.ul = load i32, ptr getelementptr inbounds nuw (i8, ptr @interaction_function, i64 2064), align 8
  %invariant.op.i.i = add i32 %i.ul, 1
  br i1 %i.uf, label %bb.bb, label %.lr.ph173.split.i.i

.lr.ph173.split.i.i:                              ; preds = %.lr.ph173.i.i
  %i.um = icmp sgt i32 %i.uk, 0
  br i1 %i.um, label %.preheader.us.preheader.i.i, label %.loopexit.i.i

.preheader.us.preheader.i.i:                      ; preds = %.lr.ph173.split.i.i
  %i.un = sext i32 %i.qb to i64
  br label %.preheader.us.i.i

.preheader.us.i.i:                                ; preds = %._crit_edge168.us.i.i, %.preheader.us.preheader.i.i
  %indvars.iv200.i.i = phi i64 [ %i.un, %.preheader.us.preheader.i.i ], [ %indvars.iv.next201.i.i, %._crit_edge168.us.i.i ] ; 3 uses
  %.3171.us.i.i = phi float [ 0.000000e+00, %.preheader.us.preheader.i.i ], [ %.5.us.i.i, %._crit_edge168.us.i.i ]
  %i.uo = trunc nsw i64 %indvars.iv200.i.i to i32
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ba, %.preheader.us.i.i
  %.076166.us.i.i = phi i32 [ 0, %.preheader.us.i.i ], [ %.reass.us.i.i, %bb.ba ] ; 2 uses
  %.4165.us.i.i = phi float [ %.3171.us.i.i, %.preheader.us.i.i ], [ %.5.us.i.i, %bb.ba ]
  %i.up = sext i32 %.076166.us.i.i to i64
  %i.uq = getelementptr [4 x i8], ptr %i.ud, i64 %i.up ; 2 uses
  %i.ur = getelementptr i8, ptr %i.uq, i64 4
  %i.us = load i32, ptr %i.ur, align 4, !tbaa !28
  %i.ut = icmp eq i32 %i.us, %i.uo
  br i1 %i.ut, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.uu = load i32, ptr %i.uq, align 4, !tbaa !28
  %i.uv = sext i32 %i.uu to i64
  %i.uw = load ptr, ptr %i.dx, align 8, !tbaa !231
  %i.ux = getelementptr inbounds nuw [48 x i8], ptr %i.uw, i64 %i.uv ; 2 uses
  %i.uy = load float, ptr %i.ux, align 4, !tbaa !18 ; 2 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %i.ux, i64 4
  %i.va = load float, ptr %i.uz, align 4, !tbaa !18 ; 2 uses
  %i.vb = fmul float %i.va, 2.500000e-01
  %i.vc = fneg float %i.va
  %i.vd = fmul float %i.vb, %i.vc
  %i.ve = tail call float @llvm.fmuladd.f32(float %i.uy, float %i.uy, float %i.vd)
  %i.vf = tail call noundef float @sqrtf(float noundef %i.ve) #26
  %i.vg = load ptr, ptr %i.pt, align 8, !tbaa !217
  %i.vh = getelementptr inbounds [36 x i8], ptr %i.vg, i64 %indvars.iv200.i.i
  %i.vi = load float, ptr %i.vh, align 4, !tbaa !222
  %i.vj = fdiv float %i.vi, %.089.lcssa227231.i.i
  %i.vk = fadd float %i.vj, f0xBEAAAAAB
  %i.vl = tail call noundef float @llvm.fabs.f32(float %i.vk)
  %i.vm = fmul float %i.vf, %i.vl
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.5.us.i.i = phi float [ %i.vm, %bb.az ], [ %.4165.us.i.i, %bb.ay ] ; 3 uses
  %.reass.us.i.i = add i32 %invariant.op.i.i, %.076166.us.i.i ; 2 uses
  %i.vn = icmp slt i32 %.reass.us.i.i, %i.uk
  br i1 %i.vn, label %bb.ay, label %._crit_edge168.us.i.i, !llvm.loop !342

._crit_edge168.us.i.i:                            ; preds = %bb.ba
  %indvars.iv.next201.i.i = add nsw i64 %indvars.iv200.i.i, 1 ; 2 uses
  %i.vo = trunc nsw i64 %indvars.iv.next201.i.i to i32
  %.not142.us.i.i = icmp eq i32 %i.qd, %i.vo
  br i1 %.not142.us.i.i, label %.loopexit.i.i, label %.preheader.us.i.i

bb.bb:                                            ; preds = %.lr.ph173.i.i
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.60, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZL31chanceOfUpdateGroupCrossingCellRK13gmx_moltype_tRK14gmx_ffparams_tRKN3gmx17RangePartitioningEffENK3$_0clEv", ptr noundef nonnull @.str.10, i32 noundef 1751) #25
          to label %.noexc105.i.i unwind label %bb.bc

.noexc105.i.i:                                    ; preds = %bb.bb
  unreachable

bb.bc:                                            ; preds = %bb.bb
  %i.vp = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

.loopexit.i.i:                                    ; preds = %.prol.loopexit, %bb.ax, %bb.al, %._crit_edge168.us.i.i, %.lr.ph173.split.i.i, %.thread.i.i, %bb.am
  %.089.lcssa226.i.i = phi float [ %.089.lcssa227231.i.i, %.thread.i.i ], [ %.089.lcssa227231.i.i, %._crit_edge168.us.i.i ], [ %.089.lcssa227231.i.i, %.lr.ph173.split.i.i ], [ %.lcssa305, %bb.am ], [ %.lcssa305, %bb.al ], [ %.lcssa305, %bb.ax ], [ %.lcssa305, %.prol.loopexit ]
  %.6.i.i = phi float [ 0.000000e+00, %.thread.i.i ], [ %.5.us.i.i, %._crit_edge168.us.i.i ], [ 0.000000e+00, %.lr.ph173.split.i.i ], [ %i.sk, %bb.am ], [ 0.000000e+00, %bb.al ], [ %.2.i.i.lcssa.unr, %.prol.loopexit ], [ %.2.i.i.3, %bb.ax ]
  %i.vq = fdiv float %.015.i, %.089.lcssa226.i.i  ; 9 uses
  %i.vr = tail call float @llvm.fmuladd.f32(float %.6.i.i, float -2.000000e+00, float %i.ld) ; 8 uses
  %i.vs = fmul float %i.vr, %i.vr                 ; 8 uses
  %i.vt = fmul float %i.vq, 2.000000e+00          ; 3 uses
  %i.vu = fmul float %i.vt, 8.000000e+00
  %i.vv = fmul float %i.vu, 8.000000e+00
  %i.vw = fcmp ogt float %i.vs, %i.vv
  br i1 %i.vw, label %_ZL19energyDriftAtomPairbbffffPK17pot_derivatives_t.exit.i, label %bb.bd

bb.bd:                                            ; preds = %.loopexit.i.i
  %i.vx = fneg float %i.vr
  %i.vy = fmul float %i.vr, %i.vx
  %i.vz = fdiv float %i.vy, %i.vt
  %i.wa = tail call noundef float @expf(float noundef %i.vz) #26
  %i.wb = fpext float %i.wa to double
  %i.wc = fdiv double %i.wb, f0x40040D931FF62705
  %i.wd = fptrunc double %i.wc to float
  %i.we = tail call noundef float @sqrtf(float noundef %i.vt) #26
  %i.wf = fdiv float %i.vr, %i.we
  %i.wg = tail call noundef float @erfcf(float noundef %i.wf) #26
  %i.wh = fmul float %i.wg, 5.000000e-01
  %.pre.i = load ptr, ptr %i.pk, align 8, !tbaa !218
  %.pre73.i = load ptr, ptr %i.lw, align 8, !tbaa !219
  br label %_ZL19energyDriftAtomPairbbffffPK17pot_derivatives_t.exit.i

_ZL19energyDriftAtomPairbbffffPK17pot_derivatives_t.exit.i: ; preds = %bb.bd, %.loopexit.i.i
  %i.wi = phi ptr [ %i.py, %.loopexit.i.i ], [ %.pre73.i, %bb.bd ] ; 2 uses
  %i.wj = phi ptr [ %i.pz, %.loopexit.i.i ], [ %.pre.i, %bb.bd ] ; 2 uses
  %.071.i.i = phi float [ 0.000000e+00, %.loopexit.i.i ], [ %i.wh, %bb.bd ] ; 3 uses
  %.070.i.i = phi float [ 0.000000e+00, %.loopexit.i.i ], [ %i.wd, %bb.bd ] ; 3 uses
  %i.wk = tail call noundef float @sqrtf(float noundef %i.vq) #26 ; 3 uses
  %i.wl = fneg float %.071.i.i                    ; 2 uses
  %i.wm = fmul float %i.vr, %i.wl
  %i.wn = tail call float @llvm.fmuladd.f32(float %i.wk, float %.070.i.i, float %i.wm)
  %i.wo = fmul float %i.wn, 0.000000e+00
  %i.wp = fadd float %i.vq, %i.vs
  %i.wq = fmul float %i.vr, %i.wk                 ; 2 uses
  %i.wr = fneg float %.070.i.i                    ; 2 uses
  %i.ws = fmul float %i.wq, %i.wr
  %i.wt = tail call float @llvm.fmuladd.f32(float %i.wp, float %.071.i.i, float %i.ws)
  %i.wu = fmul float %i.lo, %i.wt
  %i.wv = tail call float @llvm.fmuladd.f32(float %i.vq, float 2.000000e+00, float %i.vs)
  %i.ww = fmul float %i.wv, %i.wk
  %i.wx = tail call float @llvm.fmuladd.f32(float %i.vq, float 3.000000e+00, float %i.vs)
  %i.wy = fmul float %i.vr, %i.wx
  %i.wz = fmul float %i.wy, %i.wl
  %i.xa = tail call float @llvm.fmuladd.f32(float %i.ww, float %.070.i.i, float %i.wz)
  %i.xb = fmul float %i.xa, 0.000000e+00
  %i.xc = fmul float %i.vs, 6.000000e+00
  %i.xd = fmul float %i.vq, %i.xc
  %i.xe = tail call float @llvm.fmuladd.f32(float %i.vs, float %i.vs, float %i.xd)
  %i.xf = fmul float %i.vq, 3.000000e+00
  %i.xg = tail call float @llvm.fmuladd.f32(float %i.xf, float %i.vq, float %i.xe)
  %i.xh = tail call float @llvm.fmuladd.f32(float %i.vq, float 5.000000e+00, float %i.vs)
  %i.xi = fmul float %i.xh, %i.wq
  %i.xj = fmul float %i.xi, %i.wr
  %i.xk = tail call float @llvm.fmuladd.f32(float %i.xg, float %.071.i.i, float %i.xj)
  %i.xl = fmul float %i.xk, 0.000000e+00
  %i.xm = fadd float %i.wo, %i.wu
  %i.xn = fadd float %i.xb, %i.xm
  %i.xo = fadd float %i.xl, %i.xn
  %i.xp = fadd float %.0184.i.i, %i.xo            ; 2 uses
  %indvars.iv.next210.i.i = add nuw nsw i64 %indvars.iv209.i.i, 1 ; 2 uses
  %i.xq = ptrtoint ptr %i.wj to i64
  %i.xr = ptrtoint ptr %i.wi to i64
  %i.xs = sub i64 %i.xq, %i.xr
  %i.xt = shl i64 %i.xs, 30
  %sext.i.i = add i64 %i.xt, -4294967296
  %i.xu = ashr i64 %sext.i.i, 32
  %i.xv = icmp slt i64 %indvars.iv.next210.i.i, %i.xu
  br i1 %i.xv, label %bb.ag, label %._crit_edge186.i.i, !llvm.loop !343

bb.be:                                            ; preds = %bb.bc, %bb.aj
  %.pn100.pn.pn.i.i = phi { ptr, i32 } [ %i.qs, %bb.aj ], [ %i.vp, %bb.bc ] ; 2 uses
  %.not.i.i.i106.i.i = icmp eq ptr %.sroa.0130.0.i.i, null
  br i1 %.not.i.i.i106.i.i, label %_ZNSt6vectorI17VerletbufAtomtypeSaIS0_EED2Ev.exit76, label %common.resume.i.sink.split.i

_ZL31chanceOfUpdateGroupCrossingCellRK13gmx_moltype_tRK14gmx_ffparams_tRKN3gmx17RangePartitioningEff.exit.i: ; preds = %bb.af, %._crit_edge186.i.i
  %i.xw = tail call float @llvm.fmuladd.f32(float %i.lv, float %.0.lcssa.i.i, float %.050.i) ; 2 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %.sroa.015.049.i, i64 56 ; 2 uses
  %.not.i69 = icmp eq ptr %i.xx, %i.lm
  br i1 %.not.i69, label %_ZL31chanceOfUpdateGroupCrossingCellRK10gmx_mtop_tN3gmx8ArrayRefIKNS2_17RangePartitioningEEEff.exit.loopexit, label %bb.s

_ZL31chanceOfUpdateGroupCrossingCellRK10gmx_mtop_tN3gmx8ArrayRefIKNS2_17RangePartitioningEEEff.exit.loopexit: ; preds = %_ZL31chanceOfUpdateGroupCrossingCellRK13gmx_moltype_tRK14gmx_ffparams_tRKN3gmx17RangePartitioningEff.exit.i
  %.pre = load i32, ptr %i.ac, align 8, !tbaa !345
  br label %_ZL31chanceOfUpdateGroupCrossingCellRK10gmx_mtop_tN3gmx8ArrayRefIKNS2_17RangePartitioningEEEff.exit

_ZL31chanceOfUpdateGroupCrossingCellRK10gmx_mtop_tN3gmx8ArrayRefIKNS2_17RangePartitioningEEEff.exit: ; preds = %_ZL31chanceOfUpdateGroupCrossingCellRK10gmx_mtop_tN3gmx8ArrayRefIKNS2_17RangePartitioningEEEff.exit.loopexit, %bb.r
  %i.xy = phi i32 [ %i.kz, %bb.r ], [ %.pre, %_ZL31chanceOfUpdateGroupCrossingCellRK10gmx_mtop_tN3gmx8ArrayRefIKNS2_17RangePartitioningEEEff.exit.loopexit ] ; 2 uses
  %.0 = phi float [ 0.000000e+00, %bb.r ], [ %i.xw, %_ZL31chanceOfUpdateGroupCrossingCellRK10gmx_mtop_tN3gmx8ArrayRefIKNS2_17RangePartitioningEEEff.exit.loopexit ]
  %i.xz = sitofp i32 %i.xy to float
  %i.ya = fmul float %.055, %i.xz
  %i.yb = fcmp ogt float %.0, %i.ya               ; 2 uses
  %..048 = select i1 %i.yb, i32 %i.lb, i32 %.048130 ; 2 uses
  %.047. = select i1 %i.yb, i32 %.047131, i32 %i.lb ; 2 uses
  %i.yc = sub nsw i32 %.047., %..048
  %i.yd = icmp sgt i32 %i.yc, 1
  br i1 %i.yd, label %.lr.ph.split, label %_ZNSt6vectorI17VerletbufAtomtypeSaIS0_EED2Ev.exit, !llvm.loop !334

_ZNSt6vectorI17VerletbufAtomtypeSaIS0_EED2Ev.exit.loopexit: ; preds = %_ZL24chanceOfAtomCrossingCellN3gmx8ArrayRefIK17VerletbufAtomtypeEEff.exit.us.us.us
  %i.ye = sitofp i32 %i.ee to float
  %i.yf = fmul nnan float %i.ye, 1.000000e-03
  br label %_ZNSt6vectorI17VerletbufAtomtypeSaIS0_EED2Ev.exit

_ZNSt6vectorI17VerletbufAtomtypeSaIS0_EED2Ev.exit.loopexit209: ; preds = %_ZL24chanceOfAtomCrossingCellN3gmx8ArrayRefIK17VerletbufAtomtypeEEff.exit.us.us
  %i.yg = sitofp i32 %i.eg to float
  %i.yh = fmul nnan float %i.yg, 1.000000e-03
  br label %_ZNSt6vectorI17VerletbufAtomtypeSaIS0_EED2Ev.exit

_ZNSt6vectorI17VerletbufAtomtypeSaIS0_EED2Ev.exit: ; preds = %_ZL31chanceOfUpdateGroupCrossingCellRK10gmx_mtop_tN3gmx8ArrayRefIKNS2_17RangePartitioningEEEff.exit, %_ZL24chanceOfAtomCrossingCellN3gmx8ArrayRefIK17VerletbufAtomtypeEEff.exit.loopexit.us, %_ZNSt6vectorI17VerletbufAtomtypeSaIS0_EED2Ev.exit.loopexit209, %_ZNSt6vectorI17VerletbufAtomtypeSaIS0_EED2Ev.exit.loopexit, %.loopexit96
  %.046.lcssa = phi float [ 0.000000e+00, %.loopexit96 ], [ %i.el, %_ZL24chanceOfAtomCrossingCellN3gmx8ArrayRefIK17VerletbufAtomtypeEEff.exit.loopexit.us ], [ %i.yh, %_ZNSt6vectorI17VerletbufAtomtypeSaIS0_EED2Ev.exit.loopexit209 ], [ %i.yf, %_ZNSt6vectorI17VerletbufAtomtypeSaIS0_EED2Ev.exit.loopexit ], [ %i.ld, %_ZL31chanceOfUpdateGroupCrossingCellRK10gmx_mtop_tN3gmx8ArrayRefIKNS2_17RangePartitioningEEEff.exit ]
  %i.yi = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.yj = load ptr, ptr %i.yi, align 8, !tbaa !204
  %i.yk = ptrtoint ptr %i.yj to i64
  %i.yl = ptrtoint ptr %i.cr to i64
  %i.ym = sub i64 %i.yk, %i.yl
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cr, i64 noundef %i.ym) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.bf

_ZNSt6vectorI17VerletbufAtomtypeSaIS0_EED2Ev.exit76: ; preds = %.loopexit, %.loopexit.split-lp, %.body.i.i.i, %common.resume.i.sink.split.i, %bb.be
  %.pn.pn = phi { ptr, i32 } [ %common.resume.op.i.ph.i, %common.resume.i.sink.split.i ], [ %.pn100.pn.pn.i.i, %bb.be ], [ %lpad.phi.i.i.i.i, %.body.i.i.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.yn = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.yo = load ptr, ptr %i.yn, align 8, !tbaa !204
  %i.yp = ptrtoint ptr %i.yo to i64
  %i.yq = ptrtoint ptr %i.cr to i64
  %i.yr = sub i64 %i.yp, %i.yq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cr, i64 noundef %i.yr) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  resume { ptr, i32 } %.pn.pn

bb.bf:                                            ; preds = %_ZNSt6vectorI17VerletbufAtomtypeSaIS0_EED2Ev.exit, %bb.c
  %.054 = phi float [ %i.n, %bb.c ], [ %.046.lcssa, %_ZNSt6vectorI17VerletbufAtomtypeSaIS0_EED2Ev.exit ]
  ret float %.054
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #12

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_calc_verletbuf.cpp() #22 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 16), ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 19, ptr %i.a, align 8, !tbaa !15
  %i.b = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.b, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, align 8, !tbaa !17
  %i.c = load i64, ptr %i.a, align 8, !tbaa !15   ; 3 uses
  store i64 %i.c, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 16), align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.b, ptr noundef nonnull align 1 dereferenceable(19) @.str, i64 19, i1 false)
  store i64 %i.c, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 8), align 8, !tbaa !19
  %i.d = load ptr, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.c
  store i8 0, ptr %i.e, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 48), ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 32), align 8, !tbaa !13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 48), ptr noundef nonnull align 1 dereferenceable(9) @.str.1, i64 9, i1 false)
  store i64 9, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 40), align 8, !tbaa !19
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 57), align 1, !tbaa !18
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 80), ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 64), align 8, !tbaa !13
  store i32 1919508848, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 80), align 8
  store i64 4, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 72), align 8, !tbaa !19
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 84), align 4, !tbaa !18
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 112), ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 96), align 8, !tbaa !13
  store i64 7809649004360788324, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 112), align 8
  store i64 8, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 104), align 8, !tbaa !19
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 120), align 8, !tbaa !18
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 144), ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 128), align 8, !tbaa !13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 144), ptr noundef nonnull align 1 dereferenceable(5) @.str.4, i64 5, i1 false)
  store i64 5, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 136), align 8, !tbaa !19
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 149), align 1, !tbaa !18
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 176), ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 160), align 8, !tbaa !13
  store i32 1819047280, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 176), align 8
  store i64 4, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 168), align 8, !tbaa !19
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 180), align 4, !tbaa !18
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 208), ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 192), align 8, !tbaa !13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 208), ptr noundef nonnull align 1 dereferenceable(3) @.str.6, i64 3, i1 false)
  store i64 3, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 200), align 8, !tbaa !19
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 211), align 1, !tbaa !18
  %i.f = call i32 @__cxa_atexit(ptr nonnull @_ZN3gmx16EnumerationArrayINS_14MtsForceGroupsENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELS1_7EED2Ev, ptr nonnull @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, ptr nonnull @__dso_handle) #26 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
end_hunk_0
