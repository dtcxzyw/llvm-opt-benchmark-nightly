Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_tcaf?download=true
inline.NumInlined: 210
inline.NumDeleted: 87
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_Z8gmx_tcafiPPc:bb.a
  %i.lq = fadd float %.0144310, %i.lb
  %indvars.iv.next371 = or disjoint i64 %indvars.iv370, 1
  %i.lr = add nsw i64 %indvars.iv.next371, %i.kv  ; 3 uses
  %i.ls = getelementptr inbounds [36 x i8], ptr %i.kf, i64 %i.lr
  %i.lt = load float, ptr %i.ls, align 4, !tbaa !89 ; 4 uses
  %i.lu = getelementptr inbounds [12 x i8], ptr %i.kh, i64 %i.lr ; 2 uses
  %i.lv = load float, ptr %i.lu, align 4, !tbaa !82
  %i.lw = call float @llvm.fmuladd.f32(float %i.lt, float %i.lv, float %i.le) ; 3 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lu, i64 4
  %i.ly = load <2 x float>, ptr %i.lx, align 4, !tbaa !82
  %i.lz = insertelement <2 x float> poison, float %i.lt, i64 0
  %i.ma = shufflevector <2 x float> %i.lz, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.mb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ma, <2 x float> %i.ly, <2 x float> %i.lj) ; 3 uses
  %i.mc = getelementptr inbounds [12 x i8], ptr %i.ki, i64 %i.lr ; 2 uses
  %i.md = load <2 x float>, ptr %i.mc, align 4, !tbaa !82
  %i.me = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ma, <2 x float> %i.md, <2 x float> %i.lm) ; 3 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.mc, i64 8
  %i.mg = load float, ptr %i.mf, align 4, !tbaa !82
  %i.mh = call float @llvm.fmuladd.f32(float %i.lt, float %i.mg, float %i.lp) ; 3 uses
  %i.mi = fadd float %i.lq, %i.lt                 ; 3 uses
  %indvars.iv.next371.1 = add nuw nsw i64 %indvars.iv370, 2 ; 2 uses
  %niter669.next.1 = add i64 %niter669, 2         ; 2 uses
  %niter669.ncmp.1 = icmp eq i64 %niter669.next.1, %unroll_iter668
  br i1 %niter669.ncmp.1, label %._crit_edge313.loopexit.unr-lcssa, label %.lr.ph312, !llvm.loop !31

.thread:                                          ; preds = %bb.bk
  %i.mj = getelementptr inbounds [36 x i8], ptr %i.kf, i64 %i.ko
  %i.mk = load float, ptr %i.mj, align 4, !tbaa !89 ; 2 uses
  %i.ml = getelementptr inbounds [12 x i8], ptr %i.kh, i64 %i.ko ; 2 uses
  %i.mm = load float, ptr %i.ml, align 4, !tbaa !82
  %i.mn = fmul float %i.mk, %i.mm
  %i.mo = getelementptr inbounds nuw i8, ptr %i.ml, i64 4
  %i.mp = load <2 x float>, ptr %i.mo, align 4, !tbaa !82
  %i.mq = insertelement <2 x float> poison, float %i.mk, i64 0
  %i.mr = shufflevector <2 x float> %i.mq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ms = fmul <2 x float> %i.mr, %i.mp
  %i.mt = getelementptr inbounds [12 x i8], ptr %i.ki, i64 %i.ko ; 3 uses
  %i.mu = load float, ptr %i.mt, align 4, !tbaa !82
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mt, i64 4
  %i.mw = load float, ptr %i.mv, align 4, !tbaa !82
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mt, i64 8
  %i.my = load float, ptr %i.mx, align 4, !tbaa !82
  br label %.lr.ph324.preheader

._crit_edge313.loopexit.unr-lcssa:                ; preds = %.lr.ph312
  %lcmp.mod661.not = icmp eq i64 %xtraiter657, 0
  br i1 %lcmp.mod661.not, label %._crit_edge313, label %.lr.ph312.epil.preheader

.lr.ph312.epil.preheader:                         ; preds = %._crit_edge313.loopexit.unr-lcssa, %.lr.ph312.preheader
  %indvars.iv370.epil.init = phi i64 [ 0, %.lr.ph312.preheader ], [ %indvars.iv.next371.1, %._crit_edge313.loopexit.unr-lcssa ]
  %.0144310.epil.init = phi float [ 0.000000e+00, %.lr.ph312.preheader ], [ %i.mi, %._crit_edge313.loopexit.unr-lcssa ]
  %.sroa.19.2307.epil.init = phi float [ 0.000000e+00, %.lr.ph312.preheader ], [ %i.mh, %._crit_edge313.loopexit.unr-lcssa ]
  %.sroa.0233.0306.epil.init = phi float [ 0.000000e+00, %.lr.ph312.preheader ], [ %i.lw, %._crit_edge313.loopexit.unr-lcssa ]
  %.epil.init = phi <2 x float> [ zeroinitializer, %.lr.ph312.preheader ], [ %i.mb, %._crit_edge313.loopexit.unr-lcssa ]
  %.epil.init660 = phi <2 x float> [ zeroinitializer, %.lr.ph312.preheader ], [ %i.me, %._crit_edge313.loopexit.unr-lcssa ]
  %lcmp.mod667 = trunc i32 %i.kt to i1
  call void @llvm.assume(i1 %lcmp.mod667)
  %i.mz = add nsw i64 %indvars.iv370.epil.init, %i.kv ; 3 uses
  %i.na = getelementptr inbounds [36 x i8], ptr %i.kf, i64 %i.mz
  %i.nb = load float, ptr %i.na, align 4, !tbaa !89 ; 4 uses
  %i.nc = getelementptr inbounds [12 x i8], ptr %i.kh, i64 %i.mz ; 2 uses
  %i.nd = load float, ptr %i.nc, align 4, !tbaa !82
  %i.ne = call float @llvm.fmuladd.f32(float %i.nb, float %i.nd, float %.sroa.0233.0306.epil.init)
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nc, i64 4
  %i.ng = load <2 x float>, ptr %i.nf, align 4, !tbaa !82
  %i.nh = insertelement <2 x float> poison, float %i.nb, i64 0
  %i.ni = shufflevector <2 x float> %i.nh, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.nj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ni, <2 x float> %i.ng, <2 x float> %.epil.init)
  %i.nk = getelementptr inbounds [12 x i8], ptr %i.ki, i64 %i.mz ; 2 uses
  %i.nl = load <2 x float>, ptr %i.nk, align 4, !tbaa !82
  %i.nm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ni, <2 x float> %i.nl, <2 x float> %.epil.init660)
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nk, i64 8
  %i.no = load float, ptr %i.nn, align 4, !tbaa !82
  %i.np = call float @llvm.fmuladd.f32(float %i.nb, float %i.no, float %.sroa.19.2307.epil.init)
  %i.nq = fadd float %.0144310.epil.init, %i.nb
  br label %._crit_edge313

._crit_edge313:                                   ; preds = %.lr.ph312.epil.preheader, %._crit_edge313.loopexit.unr-lcssa, %.preheader
  %.sroa.0233.0.lcssa = phi float [ 0.000000e+00, %.preheader ], [ %i.lw, %._crit_edge313.loopexit.unr-lcssa ], [ %i.ne, %.lr.ph312.epil.preheader ]
  %.sroa.19.2.lcssa = phi float [ 0.000000e+00, %.preheader ], [ %i.mh, %._crit_edge313.loopexit.unr-lcssa ], [ %i.np, %.lr.ph312.epil.preheader ]
  %.0144.lcssa = phi float [ 0.000000e+00, %.preheader ], [ %i.mi, %._crit_edge313.loopexit.unr-lcssa ], [ %i.nq, %.lr.ph312.epil.preheader ]
  %i.nr = phi <2 x float> [ zeroinitializer, %.preheader ], [ %i.mb, %._crit_edge313.loopexit.unr-lcssa ], [ %i.nj, %.lr.ph312.epil.preheader ]
  %i.ns = phi <2 x float> [ zeroinitializer, %.preheader ], [ %i.me, %._crit_edge313.loopexit.unr-lcssa ], [ %i.nm, %.lr.ph312.epil.preheader ] ; 2 uses
  %i.nt = fdiv float 1.000000e+00, %.0144.lcssa   ; 3 uses
  %i.nu = extractelement <2 x float> %i.ns, i64 0
  %i.nv = fmul float %i.nu, %i.nt
  %i.nw = extractelement <2 x float> %i.ns, i64 1
  %i.nx = fmul float %i.nw, %i.nt
  %i.ny = fmul float %.sroa.19.2.lcssa, %i.nt
  br label %.lr.ph324.preheader

.lr.ph324.preheader:                              ; preds = %.thread, %._crit_edge313
  %.sroa.0233.1259 = phi float [ %.sroa.0233.0.lcssa, %._crit_edge313 ], [ %i.mn, %.thread ] ; 4 uses
  %.sroa.19.4 = phi float [ %i.ny, %._crit_edge313 ], [ %i.my, %.thread ]
  %.sroa.11.4 = phi float [ %i.nx, %._crit_edge313 ], [ %i.mw, %.thread ]
  %.sroa.0.4 = phi float [ %i.nv, %._crit_edge313 ], [ %i.mu, %.thread ]
  %i.nz = phi <2 x float> [ %i.nr, %._crit_edge313 ], [ %i.ms, %.thread ] ; 2 uses
  %i.oa = extractelement <2 x float> %i.nz, i64 0 ; 4 uses
  %i.ob = extractelement <2 x float> %i.nz, i64 1 ; 4 uses
  br label %.lr.ph324

.lr.ph324:                                        ; preds = %.lr.ph324.preheader, %.lr.ph324
  %indvars.iv377 = phi i64 [ 0, %.lr.ph324.preheader ], [ %indvars.iv.next378, %.lr.ph324 ] ; 2 uses
  %indvars.iv375 = phi i64 [ 0, %.lr.ph324.preheader ], [ %indvars.iv.next376, %.lr.ph324 ] ; 4 uses
  %i.oc = getelementptr inbounds nuw [12 x i8], ptr %i.q, i64 %indvars.iv375 ; 3 uses
  %i.od = load float, ptr %i.oc, align 4, !tbaa !82
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oc, i64 4
  %i.of = load float, ptr %i.oe, align 4, !tbaa !82
  %i.og = fmul float %.sroa.11.4, %i.of
  %i.oh = call float @llvm.fmuladd.f32(float %i.od, float %.sroa.0.4, float %i.og)
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oc, i64 8
  %i.oj = load float, ptr %i.oi, align 4, !tbaa !82
  %i.ok = call noundef float @llvm.fmuladd.f32(float %i.oj, float %.sroa.19.4, float %i.oh) ; 2 uses
  %i.ol = call noundef float @sinf(float noundef %i.ok) #15 ; 2 uses
  %i.om = call noundef float @cosf(float noundef %i.ok) #15 ; 2 uses
  %i.on = getelementptr inbounds nuw [12 x i8], ptr @_ZL2v1, i64 %indvars.iv375 ; 4 uses
  %i.oo = load float, ptr %i.on, align 4, !tbaa !82
  %i.op = getelementptr inbounds nuw i8, ptr %i.on, i64 4 ; 2 uses
  %i.oq = load float, ptr %i.op, align 4, !tbaa !82
  %i.or = fmul float %i.oa, %i.oq
  %i.os = call float @llvm.fmuladd.f32(float %i.oo, float %.sroa.0233.1259, float %i.or)
  %i.ot = getelementptr inbounds nuw i8, ptr %i.on, i64 8 ; 2 uses
  %i.ou = load float, ptr %i.ot, align 4, !tbaa !82
  %i.ov = call noundef float @llvm.fmuladd.f32(float %i.ou, float %i.ob, float %i.os)
  %i.ow = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %indvars.iv377 ; 4 uses
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !98
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.ox, i64 %indvars.iv390 ; 2 uses
  %i.oz = load float, ptr %i.oy, align 4, !tbaa !82
  %i.pa = call float @llvm.fmuladd.f32(float %i.ol, float %i.ov, float %i.oz)
  store float %i.pa, ptr %i.oy, align 4, !tbaa !82
  %i.pb = load float, ptr %i.on, align 4, !tbaa !82
  %i.pc = load float, ptr %i.op, align 4, !tbaa !82
  %i.pd = fmul float %i.oa, %i.pc
  %i.pe = call float @llvm.fmuladd.f32(float %i.pb, float %.sroa.0233.1259, float %i.pd)
  %i.pf = load float, ptr %i.ot, align 4, !tbaa !82
  %i.pg = call noundef float @llvm.fmuladd.f32(float %i.pf, float %i.ob, float %i.pe)
  %i.ph = getelementptr inbounds nuw i8, ptr %i.ow, i64 8
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !98
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %i.pi, i64 %indvars.iv390 ; 2 uses
  %i.pk = load float, ptr %i.pj, align 4, !tbaa !82
  %i.pl = call float @llvm.fmuladd.f32(float %i.om, float %i.pg, float %i.pk)
  store float %i.pl, ptr %i.pj, align 4, !tbaa !82
  %i.pm = getelementptr inbounds nuw [12 x i8], ptr @_ZL2v2, i64 %indvars.iv375 ; 4 uses
  %i.pn = load float, ptr %i.pm, align 4, !tbaa !82
  %i.po = getelementptr inbounds nuw i8, ptr %i.pm, i64 4 ; 2 uses
  %i.pp = load float, ptr %i.po, align 4, !tbaa !82
  %i.pq = fmul float %i.oa, %i.pp
  %i.pr = call float @llvm.fmuladd.f32(float %i.pn, float %.sroa.0233.1259, float %i.pq)
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pm, i64 8 ; 2 uses
  %i.pt = load float, ptr %i.ps, align 4, !tbaa !82
  %i.pu = call noundef float @llvm.fmuladd.f32(float %i.pt, float %i.ob, float %i.pr)
  %i.pv = getelementptr inbounds nuw i8, ptr %i.ow, i64 16
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !98
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %i.pw, i64 %indvars.iv390 ; 2 uses
  %i.py = load float, ptr %i.px, align 4, !tbaa !82
  %i.pz = call float @llvm.fmuladd.f32(float %i.ol, float %i.pu, float %i.py)
  store float %i.pz, ptr %i.px, align 4, !tbaa !82
  %i.qa = load float, ptr %i.pm, align 4, !tbaa !82
  %i.qb = load float, ptr %i.po, align 4, !tbaa !82
  %i.qc = fmul float %i.oa, %i.qb
  %i.qd = call float @llvm.fmuladd.f32(float %i.qa, float %.sroa.0233.1259, float %i.qc)
  %i.qe = load float, ptr %i.ps, align 4, !tbaa !82
  %i.qf = call noundef float @llvm.fmuladd.f32(float %i.qe, float %i.ob, float %i.qd)
  %i.qg = getelementptr inbounds nuw i8, ptr %i.ow, i64 24
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !98
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.qh, i64 %indvars.iv390 ; 2 uses
  %i.qj = load float, ptr %i.qi, align 4, !tbaa !82
  %i.qk = call float @llvm.fmuladd.f32(float %i.om, float %i.qf, float %i.qj)
  store float %i.qk, ptr %i.qi, align 4, !tbaa !82
  %indvars.iv.next378 = add nuw nsw i64 %indvars.iv377, 4
  %indvars.iv.next376 = add nuw nsw i64 %indvars.iv375, 1 ; 2 uses
  %exitcond384.not = icmp eq i64 %indvars.iv.next376, %wide.trip.count383
  br i1 %exitcond384.not, label %._crit_edge325, label %.lr.ph324, !llvm.loop !32

._crit_edge325:                                   ; preds = %.lr.ph324
  %indvars.iv.next386 = add nuw nsw i64 %indvars.iv385, 1 ; 2 uses
  %exitcond389.not = icmp eq i64 %indvars.iv.next386, %wide.trip.count388
  br i1 %exitcond389.not, label %._crit_edge328, label %bb.bk, !llvm.loop !33

._crit_edge328:                                   ; preds = %._crit_edge325, %.preheader278
  %i.ql = load float, ptr %i.gt, align 4, !tbaa !97
  %i.qm = load ptr, ptr %i.r, align 8, !tbaa !92
  %i.qn = load ptr, ptr %i.p, align 8, !tbaa !103
  %i.qo = invoke noundef zeroext i1 @_Z15read_next_framePK16gmx_output_env_tP11t_trxstatusP10t_trxframe(ptr noundef %i.qm, ptr noundef %i.qn, ptr noundef nonnull %19)
          to label %bb.bl unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.bl:                                            ; preds = %._crit_edge328
  %indvars.iv.next391 = add nuw nsw i64 %indvars.iv390, 1 ; 2 uses
  br i1 %i.qo, label %bb.bg, label %bb.bm, !llvm.loop !34

bb.bm:                                            ; preds = %bb.bl
  %i.qp = trunc nuw nsw i64 %indvars.iv390 to i32 ; 2 uses
  %i.qq = trunc nuw i64 %indvars.iv.next391 to i32 ; 2 uses
  %i.qr = load ptr, ptr %i.p, align 8, !tbaa !103
  invoke void @_Z9close_trxP11t_trxstatus(ptr noundef %i.qr)
          to label %bb.bn unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bn:                                            ; preds = %bb.bm
  %i.qs = fsub float %i.ql, %i.gu
  %i.qt = uitofp nneg i32 %i.qp to float
  %i.qu = fdiv float %i.qs, %i.qt                 ; 12 uses
  %i.qv = uitofp nneg i32 %i.qq to float
  %i.qw = fdiv float %.0143.lcssa, %i.qv
  %i.qx = fpext float %i.qw to double
  %i.qy = fmul double %i.qx, f0x3A6071F778ED6AAF
  %i.qz = fdiv double %i.qy, f0x3A53CE9A36F23C11
  %i.ra = fpext float %i.il to double
  %i.rb = fmul double %i.qz, %i.ra
  %i.rc = fptrunc double %i.rb to float
  %i.rd = load ptr, ptr @stdout, align 8, !tbaa !105
  %i.re = fpext float %i.rc to double             ; 3 uses
  %i.rf = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.rd, ptr noundef nonnull @.str.62, double noundef %i.re) #15 ; 0 uses
  %i.rg = load float, ptr @_ZZ8gmx_tcafiPPcE2wt, align 4, !tbaa !82 ; 2 uses
  %i.rh = invoke noundef ptr @_Z11opt2fn_nullPKciPK8t_filenm(ptr noundef nonnull @.str.42, i32 noundef 9, ptr noundef nonnull %20)
          to label %bb.bo unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.bo:                                            ; preds = %bb.bn
  %i.ri = invoke noundef ptr @_Z6opt2fnPKciPK8t_filenm(ptr noundef nonnull @.str.44, i32 noundef 9, ptr noundef nonnull %20)
          to label %bb.bp unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.bp:                                            ; preds = %bb.bo
  %i.rj = invoke noundef ptr @_Z6opt2fnPKciPK8t_filenm(ptr noundef nonnull @.str.46, i32 noundef 9, ptr noundef nonnull %20)
          to label %bb.bq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bq:                                            ; preds = %bb.bp
  %i.rk = invoke noundef ptr @_Z6opt2fnPKciPK8t_filenm(ptr noundef nonnull @.str.48, i32 noundef 9, ptr noundef nonnull %20)
          to label %bb.br unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.br:                                            ; preds = %bb.bq
  %i.rl = invoke noundef ptr @_Z11opt2fn_nullPKciPK8t_filenm(ptr noundef nonnull @.str.50, i32 noundef 9, ptr noundef nonnull %20)
          to label %bb.bs unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bs:                                            ; preds = %bb.br
  %i.rm = invoke noundef ptr @_Z6opt2fnPKciPK8t_filenm(ptr noundef nonnull @.str.52, i32 noundef 9, ptr noundef nonnull %20)
          to label %bb.bt unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bt:                                            ; preds = %bb.bs
  %i.rn = load ptr, ptr %i.r, align 8, !tbaa !92  ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.rh, ptr %i.b, align 8, !tbaa !12
  store ptr %i.rj, ptr %i.c, align 8, !tbaa !12
  store ptr %i.rk, ptr %i.d, align 8, !tbaa !12
  store ptr %i.rl, ptr %i.e, align 8, !tbaa !12
  store ptr %i.rm, ptr %i.f, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #15
  %.not.i = icmp eq ptr %i.rh, null
  br i1 %.not.i, label %.lr.ph401.i, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i8 noundef zeroext 2)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %._crit_edge.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.ro = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.ro, ptr %3, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ro, ptr noundef nonnull align 1 dereferenceable(9) @.str.65, i64 9, i1 false)
  %i.rp = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 9, ptr %i.rp, align 8, !tbaa !20
  %i.rq = getelementptr inbounds nuw i8, ptr %3, i64 25
  store i8 0, ptr %i.rq, align 1, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.rr = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.rr, ptr %4, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.rr, ptr noundef nonnull align 1 dereferenceable(10) @.str.66, i64 10, i1 false)
  %i.rs = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 10, ptr %i.rs, align 8, !tbaa !20
  %i.rt = getelementptr inbounds nuw i8, ptr %4, i64 26
  store i8 0, ptr %i.rt, align 2, !tbaa !18
  %i.ru = invoke noundef ptr @_Z8xvgropenRKNSt10filesystem7__cxx114pathEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_PK16gmx_output_env_t(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull @.str.64, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.rn)
          to label %bb.bu unwind label %bb.bx     ; 4 uses

bb.bu:                                            ; preds = %.noexc
  %i.rv = load ptr, ptr %4, align 8, !tbaa !17    ; 2 uses
  %i.rw = icmp eq ptr %i.rv, %i.rr
  br i1 %i.rw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i170

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i170: ; preds = %bb.bu
  %i.rx = load i64, ptr %i.rr, align 8, !tbaa !18
  %i.ry = add i64 %i.rx, 1
  call void @_ZdlPvm(ptr noundef %i.rv, i64 noundef %i.ry) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i170
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  %i.rz = load ptr, ptr %3, align 8, !tbaa !17    ; 2 uses
  %i.sa = icmp eq ptr %i.rz, %i.ro
  br i1 %i.sa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i256.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i256.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.sb = load i64, ptr %i.ro, align 8, !tbaa !18
  %i.sc = add i64 %i.sb, 1
  call void @_ZdlPvm(ptr noundef %i.rz, i64 noundef %i.sc) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i256.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %i.sd = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.se = load ptr, ptr %i.sd, align 8, !tbaa !14 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.se, null
  br i1 %.not.i.i.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i, label %bb.bv

bb.bv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258.i
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.sd, ptr noundef nonnull %i.se) #15
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i: ; preds = %bb.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258.i
  %i.sf = load ptr, ptr %2, align 8, !tbaa !17    ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.sh = icmp eq ptr %i.sf, %i.sg
  br i1 %i.sh, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i
  %i.si = load i64, ptr %i.sg, align 8, !tbaa !18
  %i.sj = add i64 %i.si, 1
  call void @_ZdlPvm(ptr noundef %i.sf, i64 noundef %i.sj) #16
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i

_ZNSt10filesystem7__cxx114pathD2Ev.exit.i:        ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  %smax.i = call i32 @llvm.smax.i32(i32 %i.cn, i32 1)
  %wide.trip.count.i = zext nneg i32 %smax.i to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge.i, %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i
  %indvars.iv435.i = phi i64 [ 0, %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i ], [ %indvars.iv.next436.i, %._crit_edge.i ] ; 4 uses
  %i.sk = trunc nuw nsw i64 %indvars.iv435.i to i32
  %i.sl = uitofp nneg i32 %i.sk to float
  %i.sm = fmul float %i.qu, %i.sl
  %i.sn = fpext float %i.sm to double
  %i.so = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ru, ptr noundef nonnull @.str.67, double noundef %i.sn) #15 ; 0 uses
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bw, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.bw ] ; 2 uses
  %i.sp = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %indvars.iv.i
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !98
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr %i.sq, i64 %indvars.iv435.i
  %i.ss = load float, ptr %i.sr, align 4, !tbaa !82
  %i.st = fpext float %i.ss to double
  %i.su = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ru, ptr noundef nonnull @.str.68, double noundef %i.st) #15 ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.bw, !llvm.loop !35

bb.bx:                                            ; preds = %.noexc
  %i.sv = landingpad { ptr, i32 }
          cleanup
  %i.sw = load ptr, ptr %4, align 8, !tbaa !17    ; 2 uses
  %i.sx = icmp eq ptr %i.sw, %i.rr
  br i1 %i.sx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit261.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i259.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i259.i: ; preds = %bb.bx
  %i.sy = load i64, ptr %i.rr, align 8, !tbaa !18
  %i.sz = add i64 %i.sy, 1
  call void @_ZdlPvm(ptr noundef %i.sw, i64 noundef %i.sz) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit261.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit261.i: ; preds = %bb.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i259.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  %i.ta = load ptr, ptr %3, align 8, !tbaa !17    ; 2 uses
  %i.tb = icmp eq ptr %i.ta, %i.ro
  br i1 %i.tb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i262.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i262.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit261.i
  %i.tc = load i64, ptr %i.ro, align 8, !tbaa !18
  %i.td = add i64 %i.tc, 1
  call void @_ZdlPvm(ptr noundef %i.ta, i64 noundef %i.td) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit261.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i262.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %bb.cw

._crit_edge.i:                                    ; preds = %bb.bw
  %fputc251.i = call i32 @fputc(i32 10, ptr %i.ru) ; 0 uses
  %indvars.iv.next436.i = add nuw nsw i64 %indvars.iv435.i, 1
  %exitcond439.not.i = icmp eq i64 %indvars.iv435.i, %indvars.iv390
  br i1 %exitcond439.not.i, label %._crit_edge398.i, label %.lr.ph.i, !llvm.loop !36

._crit_edge398.i:                                 ; preds = %._crit_edge.i
  invoke void @_Z9xvgrcloseP8_IO_FILE(ptr noundef %i.ru)
          to label %.noexc172 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc172:                                        ; preds = %._crit_edge398.i
  %i.te = load ptr, ptr %i.b, align 8, !tbaa !12
  invoke void @_Z7do_viewPK16gmx_output_env_tPKcS3_(ptr noundef %i.rn, ptr noundef %i.te, ptr noundef nonnull @.str.70)
          to label %.lr.ph401.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph401.i:                                      ; preds = %.noexc172, %bb.bt
  %i.tf = add nuw nsw i32 %i.qp, 2
  %i.tg = lshr i32 %i.tf, 1                       ; 2 uses
  %i.th = fmul float %i.rg, 5.000000e+00
  %i.ti = fdiv float %i.th, %i.qu
  %i.tj = call float @llvm.rint.f32(float %i.ti)
  %i.tk = fptosi float %i.tj to i32               ; 2 uses
  %i.tl = icmp sgt i32 %i.tg, %i.tk
  %i.tm = add nsw i32 %i.tk, 1
  %spec.select392.i = select i1 %i.tl, i32 %i.tm, i32 %i.tg ; 13 uses
  %i.tn = sext i32 %i.cm to i64
  %i.to = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.55, i32 noundef 146, i64 noundef range(i64 -2147483648, 2147483648) %i.tn, i64 noundef 8)
          to label %.noexc174 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc174:                                        ; preds = %.lr.ph401.i
  %i.tp = sext i32 %spec.select392.i to i64       ; 3 uses
  %wide.trip.count444.i = zext nneg i32 %smax362 to i64 ; 4 uses
  br label %bb.by

bb.by:                                            ; preds = %.noexc175, %.noexc174
  %indvars.iv440.i = phi i64 [ 0, %.noexc174 ], [ %indvars.iv.next441.i, %.noexc175 ] ; 2 uses
  %i.tq = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.55, i32 noundef 149, i64 noundef range(i64 -2147483647, 2147483648) %i.tp, i64 noundef 4)
          to label %.noexc175 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc175:                                        ; preds = %bb.by
  %i.tr = getelementptr inbounds nuw [8 x i8], ptr %i.to, i64 %indvars.iv440.i
  store ptr %i.tq, ptr %i.tr, align 8, !tbaa !98
  %indvars.iv.next441.i = add nuw nsw i64 %indvars.iv440.i, 1 ; 2 uses
  %exitcond445.not.i = icmp eq i64 %indvars.iv.next441.i, %wide.trip.count444.i
  br i1 %exitcond445.not.i, label %._crit_edge402.i, label %bb.by, !llvm.loop !37

._crit_edge402.i:                                 ; preds = %.noexc175
  %i.ts = load ptr, ptr %i.e, align 8, !tbaa !12
  %.not226.i = icmp eq ptr %i.ts, null
  br i1 %.not226.i, label %.loopexit394.i, label %bb.bz

bb.bz:                                            ; preds = %._crit_edge402.i
  %i.tt = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.55, i32 noundef 153, i64 noundef range(i64 -2147483648, 2147483648) %i.ck, i64 noundef 8)
          to label %.noexc176 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc176:                                        ; preds = %bb.bz, %.noexc177
  %indvars.iv446.i = phi i64 [ %indvars.iv.next447.i, %.noexc177 ], [ 0, %bb.bz ] ; 2 uses
  %i.tu = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.55, i32 noundef 156, i64 noundef range(i64 -2147483647, 2147483648) %i.tp, i64 noundef 4)
          to label %.noexc177 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc177:                                        ; preds = %.noexc176
  %i.tv = getelementptr inbounds nuw [8 x i8], ptr %i.tt, i64 %indvars.iv446.i
  store ptr %i.tu, ptr %i.tv, align 8, !tbaa !98
  %indvars.iv.next447.i = add nuw nsw i64 %indvars.iv446.i, 1 ; 2 uses
  %exitcond450.not.i = icmp eq i64 %indvars.iv.next447.i, %i.ck
  br i1 %exitcond450.not.i, label %.loopexit394.i, label %.noexc176, !llvm.loop !38

.loopexit394.i:                                   ; preds = %.noexc177, %._crit_edge402.i
  %.0.i = phi ptr [ null, %._crit_edge402.i ], [ %i.tt, %.noexc177 ] ; 5 uses
  %i.tw = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.55, i32 noundef 159, i64 noundef range(i64 -2147483647, 2147483648) %i.tp, i64 noundef 4)
          to label %.noexc178 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc178:                                        ; preds = %.loopexit394.i
  %i.tx = icmp sgt i32 %spec.select392.i, 0       ; 4 uses
  br i1 %i.tx, label %.lr.ph406.i, label %._crit_edge.i.i265.i

.lr.ph406.i:                                      ; preds = %.noexc178
  %i.ty = fpext float %i.qu to double
  %i.tz = fpext float %i.rg to double
  %wide.trip.count454.i = zext nneg i32 %spec.select392.i to i64
  br label %bb.ca

bb.ca:                                            ; preds = %bb.ca, %.lr.ph406.i
  %indvars.iv451.i = phi i64 [ 0, %.lr.ph406.i ], [ %indvars.iv.next452.i, %bb.ca ] ; 3 uses
  %i.ua = trunc nuw nsw i64 %indvars.iv451.i to i32
  %i.ub = uitofp nneg i32 %i.ua to double
  %i.uc = fmul nnan double %i.ub, 5.000000e-01
  %i.ud = fmul double %i.uc, %i.ty
  %i.ue = fdiv double %i.ud, %i.tz
  %i.uf = call double @exp(double noundef %i.ue) #15
  %i.ug = fptrunc double %i.uf to float
  %i.uh = getelementptr inbounds nuw [4 x i8], ptr %i.tw, i64 %indvars.iv451.i
  store float %i.ug, ptr %i.uh, align 4, !tbaa !82
  %indvars.iv.next452.i = add nuw nsw i64 %indvars.iv451.i, 1 ; 2 uses
  %exitcond455.not.i = icmp eq i64 %indvars.iv.next452.i, %wide.trip.count454.i
  br i1 %exitcond455.not.i, label %._crit_edge.i.i265.i, label %bb.ca, !llvm.loop !39

._crit_edge.i.i265.i:                             ; preds = %bb.ca, %.noexc178
  invoke void @_Z15low_do_autocorrPKcPK16gmx_output_env_tS0_iiiPPffmibbbffi(ptr noundef %i.ri, ptr noundef %i.rn, ptr noundef nonnull @.str.75, i32 noundef range(i32 -2147483647, -2147483648) %i.qq, i32 noundef %i.cn, i32 noundef %spec.select392.i, ptr noundef %i.er, float noundef %i.qu, i64 noundef 1, i32 noundef 1, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false, float noundef 0.000000e+00, float noundef 0.000000e+00, i32 noundef 0)
          to label %.noexc179 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc179:                                        ; preds = %._crit_edge.i.i265.i
  invoke void @_Z7do_viewPK16gmx_output_env_tPKcS3_(ptr noundef %i.rn, ptr noundef %i.ri, ptr noundef nonnull @.str.70)
          to label %.noexc180 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc180:                                        ; preds = %.noexc179
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i8 noundef zeroext 2)
          to label %.noexc181 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc181:                                        ; preds = %.noexc180
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.ui = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.ui, ptr %6, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ui, ptr noundef nonnull align 1 dereferenceable(9) @.str.65, i64 9, i1 false)
  %i.uj = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 9, ptr %i.uj, align 8, !tbaa !20
  %i.uk = getelementptr inbounds nuw i8, ptr %6, i64 25
  store i8 0, ptr %i.uk, align 1, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.ul = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.ul, ptr %7, align 8, !tbaa !19
  store i32 1178682196, ptr %i.ul, align 8
  %i.um = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 4, ptr %i.um, align 8, !tbaa !20
  %i.un = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i8 0, ptr %i.un, align 4, !tbaa !18
  %i.uo = invoke noundef ptr @_Z8xvgropenRKNSt10filesystem7__cxx114pathEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_PK16gmx_output_env_t(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull @.str.75, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %i.rn)
          to label %bb.cb unwind label %bb.cd     ; 5 uses

bb.cb:                                            ; preds = %.noexc181
  %i.up = load ptr, ptr %7, align 8, !tbaa !17    ; 2 uses
  %i.uq = icmp eq ptr %i.up, %i.ul
  br i1 %i.uq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273.i: ; preds = %bb.cb
  %i.ur = load i64, ptr %i.ul, align 8, !tbaa !18
  %i.us = add i64 %i.ur, 1
  call void @_ZdlPvm(ptr noundef %i.up, i64 noundef %i.us) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275.i: ; preds = %bb.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  %i.ut = load ptr, ptr %6, align 8, !tbaa !17    ; 2 uses
  %i.uu = icmp eq ptr %i.ut, %i.ui
  br i1 %i.uu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i276.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i276.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275.i
  %i.uv = load i64, ptr %i.ui, align 8, !tbaa !18
  %i.uw = add i64 %i.uv, 1
  call void @_ZdlPvm(ptr noundef %i.ut, i64 noundef %i.uw) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i276.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %i.ux = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.uy = load ptr, ptr %i.ux, align 8, !tbaa !14 ; 2 uses
  %.not.i.i.i279.i = icmp eq ptr %i.uy, null
  br i1 %.not.i.i.i279.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i280.i, label %bb.cc

bb.cc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278.i
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.ux, ptr noundef nonnull %i.uy) #15
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i280.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i280.i: ; preds = %bb.cc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278.i
  %i.uz = load ptr, ptr %5, align 8, !tbaa !17    ; 2 uses
  %i.va = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.vb = icmp eq ptr %i.uz, %i.va
  br i1 %i.vb, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit283.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i281.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i281.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i280.i
  %i.vc = load i64, ptr %i.va, align 8, !tbaa !18
  %i.vd = add i64 %i.vc, 1
  call void @_ZdlPvm(ptr noundef %i.uz, i64 noundef %i.vd) #16
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit283.i

_ZNSt10filesystem7__cxx114pathD2Ev.exit283.i:     ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i280.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i281.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br i1 %i.tx, label %.lr.ph414.i, label %._crit_edge415.i

.lr.ph414.i:                                      ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit283.i
  %wide.trip.count486.i = zext nneg i32 %spec.select392.i to i64
  br label %.preheader393.lr.ph.i

.preheader393.lr.ph.i:                            ; preds = %._crit_edge412.i, %.lr.ph414.i
  %indvars.iv483.i = phi i64 [ 0, %.lr.ph414.i ], [ %indvars.iv.next484.i, %._crit_edge412.i ] ; 9 uses
  %i.ve = trunc nuw nsw i64 %indvars.iv483.i to i32
  %i.vf = uitofp nneg i32 %i.ve to float
  %i.vg = fmul float %i.qu, %i.vf
  %i.vh = fpext float %i.vg to double
  %i.vi = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.uo, ptr noundef nonnull @.str.67, double noundef %i.vh) #15 ; 0 uses
  %i.vj = icmp eq i64 %indvars.iv483.i, 0
  br i1 %i.vj, label %.preheader393.us.i, label %.preheader393.i

.preheader393.us.i:                               ; preds = %.preheader393.lr.ph.i, %.loopexit.us.i
  %indvars.iv478.i = phi i64 [ %indvars.iv.next479.i, %.loopexit.us.i ], [ 0, %.preheader393.lr.ph.i ] ; 3 uses
  %.0204411.us.i = phi i32 [ %spec.select.us.i, %.loopexit.us.i ], [ 0, %.preheader393.lr.ph.i ] ; 3 uses
  %i.vk = getelementptr inbounds nuw [8 x i8], ptr %i.to, i64 %indvars.iv478.i
  %i.vl = load ptr, ptr %i.vk, align 8, !tbaa !98 ; 5 uses
  %.promoted.us.i = load float, ptr %i.vl, align 4, !tbaa !82
  %.idx260 = shl nuw nsw i64 %indvars.iv478.i, 5
  %i.vm = getelementptr inbounds nuw i8, ptr %i.er, i64 %.idx260 ; 4 uses
  %i.vn = load ptr, ptr %i.vm, align 8, !tbaa !98 ; 2 uses
  %i.vo = load float, ptr %i.vn, align 4, !tbaa !82
  %i.vp = fadd float %.promoted.us.i, %i.vo       ; 2 uses
  store float %i.vp, ptr %i.vl, align 4, !tbaa !82
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vm, i64 8
  %i.vr = load ptr, ptr %i.vq, align 8, !tbaa !98 ; 2 uses
  %i.vs = load float, ptr %i.vr, align 4, !tbaa !82
  %i.vt = fadd float %i.vp, %i.vs                 ; 2 uses
  store float %i.vt, ptr %i.vl, align 4, !tbaa !82
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vm, i64 16
  %i.vv = load ptr, ptr %i.vu, align 8, !tbaa !98 ; 2 uses
  %i.vw = load float, ptr %i.vv, align 4, !tbaa !82
  %i.vx = fadd float %i.vt, %i.vw                 ; 2 uses
  store float %i.vx, ptr %i.vl, align 4, !tbaa !82
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vm, i64 24
  %i.vz = load ptr, ptr %i.vy, align 8, !tbaa !98 ; 2 uses
  %i.wa = load float, ptr %i.vz, align 4, !tbaa !82
  %i.wb = fadd float %i.vx, %i.wa
  store float %i.wb, ptr %i.vl, align 4, !tbaa !82
  %i.wc = load ptr, ptr %i.e, align 8, !tbaa !12
  %.not249.us.i = icmp eq ptr %i.wc, null
  br i1 %.not249.us.i, label %.loopexit.us.i, label %.preheader.us.i

end_hunk_0
begin_hunk_1_@_Z8gmx_tcafiPPc:bb.a
  %i.abb = getelementptr inbounds nuw i8, ptr %12, i64 28
  store i8 0, ptr %i.abb, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15
  %i.abc = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  store ptr %i.abc, ptr %13, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 35, ptr %i.a, align 8, !tbaa !21
  %i.abd = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc321.i unwind label %bb.cn ; 3 uses

.noexc321.i:                                      ; preds = %.noexc186
  store ptr %i.abd, ptr %13, align 8, !tbaa !17
  %i.abe = load i64, ptr %i.a, align 8, !tbaa !21 ; 3 uses
  store i64 %i.abe, ptr %i.abc, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(35) %i.abd, ptr noundef nonnull align 1 dereferenceable(35) @.str.84, i64 35, i1 false)
  %i.abf = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.abe, ptr %i.abf, align 8, !tbaa !20
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abd, i64 %i.abe
  store i8 0, ptr %i.abg, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.abh = invoke noundef ptr @_Z8xvgropenRKNSt10filesystem7__cxx114pathEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_PK16gmx_output_env_t(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull @.str.82, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef %i.rn)
          to label %bb.cj unwind label %bb.co     ; 10 uses

bb.cj:                                            ; preds = %.noexc321.i
  %i.abi = load ptr, ptr %13, align 8, !tbaa !17  ; 2 uses
  %i.abj = icmp eq ptr %i.abi, %i.abc
  br i1 %i.abj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323.i: ; preds = %bb.cj
  %i.abk = load i64, ptr %i.abc, align 8, !tbaa !18
  %i.abl = add i64 %i.abk, 1
  call void @_ZdlPvm(ptr noundef %i.abi, i64 noundef %i.abl) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325.i: ; preds = %bb.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  %i.abm = load ptr, ptr %12, align 8, !tbaa !17  ; 2 uses
  %i.abn = icmp eq ptr %i.abm, %i.aaz
  br i1 %i.abn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325.i
  %i.abo = load i64, ptr %i.aaz, align 8, !tbaa !18
  %i.abp = add i64 %i.abo, 1
  call void @_ZdlPvm(ptr noundef %i.abm, i64 noundef %i.abp) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  %i.abq = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  %i.abr = load ptr, ptr %i.abq, align 8, !tbaa !14 ; 2 uses
  %.not.i.i.i329.i = icmp eq ptr %i.abr, null
  br i1 %.not.i.i.i329.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i330.i, label %bb.ck

bb.ck:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328.i
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.abq, ptr noundef nonnull %i.abr) #15
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i330.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i330.i: ; preds = %bb.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328.i
  %i.abs = load ptr, ptr %11, align 8, !tbaa !17  ; 2 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.abu = icmp eq ptr %i.abs, %i.abt
  br i1 %i.abu, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit333.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i331.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i331.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i330.i
  %i.abv = load i64, ptr %i.abt, align 8, !tbaa !18
  %i.abw = add i64 %i.abv, 1
  call void @_ZdlPvm(ptr noundef %i.abs, i64 noundef %i.abw) #16
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit333.i

_ZNSt10filesystem7__cxx114pathD2Ev.exit333.i:     ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i330.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i331.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  %i.abx = invoke noundef zeroext i1 @_Z31output_env_get_print_xvgr_codesPK16gmx_output_env_t(ptr noundef %i.rn)
          to label %.noexc187 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc187:                                        ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit333.i
  br i1 %i.abx, label %bb.cl, label %._crit_edge.i.i340.i

bb.cl:                                            ; preds = %.noexc187
  %fwrite.i = call i64 @fwrite(ptr nonnull @.str.85, i64 17, i64 1, ptr %i.abh) ; 0 uses
  %fwrite237.i = call i64 @fwrite(ptr nonnull @.str.86, i64 23, i64 1, ptr %i.abh) ; 0 uses
  %fwrite238.i = call i64 @fwrite(ptr nonnull @.str.87, i64 20, i64 1, ptr %i.abh) ; 0 uses
  %i.aby = load ptr, ptr %i.e, align 8, !tbaa !12
  %.not239.i = icmp eq ptr %i.aby, null
  br i1 %.not239.i, label %._crit_edge.i.i340.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %fwrite240.i = call i64 @fwrite(ptr nonnull @.str.88, i64 17, i64 1, ptr %i.abh) ; 0 uses
  %fwrite241.i = call i64 @fwrite(ptr nonnull @.str.89, i64 23, i64 1, ptr %i.abh) ; 0 uses
  br label %._crit_edge.i.i340.i

bb.cn:                                            ; preds = %.noexc186
  %i.abz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336.i

bb.co:                                            ; preds = %.noexc321.i
  %i.aca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.acb = load ptr, ptr %13, align 8, !tbaa !17  ; 2 uses
  %i.acc = icmp eq ptr %i.acb, %i.abc
  br i1 %i.acc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i334.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i334.i: ; preds = %bb.co
  %i.acd = load i64, ptr %i.abc, align 8, !tbaa !18
  %i.ace = add i64 %i.acd, 1
  call void @_ZdlPvm(ptr noundef %i.acb, i64 noundef %i.ace) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336.i: ; preds = %bb.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i334.i, %bb.cn
  %.pn234.i = phi { ptr, i32 } [ %i.abz, %bb.cn ], [ %i.aca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i334.i ], [ %i.aca, %bb.co ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  %i.acf = load ptr, ptr %12, align 8, !tbaa !17  ; 2 uses
  %i.acg = icmp eq ptr %i.acf, %i.aaz
  br i1 %i.acg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit339.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i337.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i337.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336.i
  %i.ach = load i64, ptr %i.aaz, align 8, !tbaa !18
  %i.aci = add i64 %i.ach, 1
  call void @_ZdlPvm(ptr noundef %i.acf, i64 noundef %i.aci) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit339.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit339.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i337.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %11) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  br label %bb.cw

._crit_edge.i.i340.i:                             ; preds = %bb.cm, %bb.cl, %.noexc187
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #15
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i8 noundef zeroext 2)
          to label %.noexc188 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc188:                                        ; preds = %._crit_edge.i.i340.i
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #15
  %i.acj = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  store ptr %i.acj, ptr %15, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.acj, ptr noundef nonnull align 1 dereferenceable(9) @.str.65, i64 9, i1 false)
  %i.ack = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 9, ptr %i.ack, align 8, !tbaa !20
  %i.acl = getelementptr inbounds nuw i8, ptr %15, i64 25
  store i8 0, ptr %i.acl, align 1, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #15
  %i.acm = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 6 uses
  store ptr %i.acm, ptr %16, align 8, !tbaa !19
  %i.acn = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 0, ptr %i.acn, align 8, !tbaa !20
  store i8 0, ptr %i.acm, align 8, !tbaa !18
  %i.aco = invoke noundef ptr @_Z8xvgropenRKNSt10filesystem7__cxx114pathEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_PK16gmx_output_env_t(ptr noundef nonnull align 8 dereferenceable(40) %14, ptr noundef nonnull @.str.90, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef %i.rn)
          to label %bb.cp unwind label %bb.cs     ; 3 uses

bb.cp:                                            ; preds = %.noexc188
  %i.acp = load ptr, ptr %16, align 8, !tbaa !17  ; 2 uses
  %i.acq = icmp eq ptr %i.acp, %i.acm
  br i1 %i.acq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i348.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i348.i: ; preds = %bb.cp
  %i.acr = load i64, ptr %i.acm, align 8, !tbaa !18
  %i.acs = add i64 %i.acr, 1
  call void @_ZdlPvm(ptr noundef %i.acp, i64 noundef %i.acs) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350.i: ; preds = %bb.cp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i348.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #15
  %i.act = load ptr, ptr %15, align 8, !tbaa !17  ; 2 uses
  %i.acu = icmp eq ptr %i.act, %i.acj
  br i1 %i.acu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit353.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i351.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i351.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350.i
  %i.acv = load i64, ptr %i.acj, align 8, !tbaa !18
  %i.acw = add i64 %i.acv, 1
  call void @_ZdlPvm(ptr noundef %i.act, i64 noundef %i.acw) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit353.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit353.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i351.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15
  %i.acx = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 2 uses
  %i.acy = load ptr, ptr %i.acx, align 8, !tbaa !14 ; 2 uses
  %.not.i.i.i354.i = icmp eq ptr %i.acy, null
  br i1 %.not.i.i.i354.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i355.i, label %bb.cq

bb.cq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit353.i
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.acx, ptr noundef nonnull %i.acy) #15
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i355.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i355.i: ; preds = %bb.cq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit353.i
  %i.acz = load ptr, ptr %14, align 8, !tbaa !17  ; 2 uses
  %i.ada = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.adb = icmp eq ptr %i.acz, %i.ada
  br i1 %i.adb, label %.lr.ph426.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i356.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i356.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i355.i
  %i.adc = load i64, ptr %i.ada, align 8, !tbaa !18
  %i.add = add i64 %i.adc, 1
  call void @_ZdlPvm(ptr noundef %i.acz, i64 noundef %i.add) #16
  br label %.lr.ph426.i

.lr.ph426.i:                                      ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i355.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i356.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  %i.ade = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.adf = sitofp i32 %spec.select392.i to float
  %i.adg = fmul float %i.qu, %i.adf
  br label %bb.cr

bb.cr:                                            ; preds = %.noexc192, %.lr.ph426.i
  %indvars.iv499.i = phi i64 [ 0, %.lr.ph426.i ], [ %indvars.iv.next500.i, %.noexc192 ] ; 3 uses
  %i.adh = getelementptr inbounds nuw [8 x i8], ptr %i.to, i64 %indvars.iv499.i
  %i.adi = load ptr, ptr %i.adh, align 8, !tbaa !98 ; 2 uses
  store float 1.000000e+00, ptr %i.adi, align 4, !tbaa !82
  store <2 x double> splat (double 1.000000e+00), ptr %i.g, align 16, !tbaa !107
  %i.adj = invoke noundef zeroext i1 @_Z10bDebugModev()
          to label %.noexc189 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc189:                                        ; preds = %bb.cr
  %i.adk = invoke noundef float @_Z8do_lmfitiPKfPffS0_ffPK16gmx_output_env_tbiPdiPKc(i32 noundef %spec.select392.i, ptr noundef nonnull %i.adi, ptr noundef %i.tw, float noundef %i.qu, ptr noundef null, float noundef 0.000000e+00, float noundef %i.adg, ptr noundef %i.rn, i1 noundef zeroext %i.adj, i32 noundef 7, ptr noundef nonnull %i.g, i32 noundef 0, ptr noundef null)
          to label %.noexc190 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

.noexc190:                                        ; preds = %.noexc189
  %i.adl = load double, ptr %i.ade, align 8, !tbaa !107
  %i.adm = fmul double %i.adl, 1.000000e+03
  %i.adn = fmul double %i.adm, %i.re
  %i.ado = load double, ptr %i.g, align 16, !tbaa !107 ; 2 uses
  %i.adp = fmul double %i.ado, 4.000000e+00
  %i.adq = fmul double %i.adp, f0x3D719799812DEA11
  %i.adr = getelementptr inbounds nuw [12 x i8], ptr %i.q, i64 %indvars.iv499.i ; 3 uses
  %i.ads = load float, ptr %i.adr, align 4, !tbaa !82 ; 2 uses
  %i.adt = getelementptr inbounds nuw i8, ptr %i.adr, i64 4
  %i.adu = load float, ptr %i.adt, align 4, !tbaa !82 ; 2 uses
  %i.adv = fmul float %i.adu, %i.adu
  %i.adw = call float @llvm.fmuladd.f32(float %i.ads, float %i.ads, float %i.adv)
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adr, i64 8
  %i.ady = load float, ptr %i.adx, align 4, !tbaa !82 ; 2 uses
  %i.adz = call noundef float @llvm.fmuladd.f32(float %i.ady, float %i.ady, float %i.adw) ; 2 uses
  %i.aea = fpext float %i.adz to double
  %i.aeb = fmul double %i.adq, %i.aea
  %i.aec = fdiv double %i.aeb, 1.000000e-18
  %i.aed = fdiv double %i.adn, %i.aec
  %i.aee = fptrunc double %i.aed to float
  %i.aef = load ptr, ptr @stdout, align 8, !tbaa !105
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.adz)
  %i.aeg = fpext float %sqrt.i.i to double        ; 2 uses
  %i.aeh = fpext float %i.aee to double           ; 2 uses
  %i.aei = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aef, ptr noundef nonnull @.str.91, double noundef %i.aeg, double noundef %i.ado, double noundef %i.aeh) #15 ; 0 uses
  %i.aej = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.abh, ptr noundef nonnull @.str.92, double noundef %i.aeg, double noundef %i.aeh) #15 ; 0 uses
  br i1 %i.tx, label %.lr.ph423.i, label %._crit_edge424.i

.lr.ph423.i:                                      ; preds = %.noexc190, %.noexc191
  %.4219421.i = phi i32 [ %i.aep, %.noexc191 ], [ 0, %.noexc190 ] ; 2 uses
  %i.aek = uitofp nneg i32 %.4219421.i to float
  %i.ael = fmul float %i.qu, %i.aek
  %i.aem = fpext float %i.ael to double           ; 2 uses
  %i.aen = invoke noundef double @_Z12fit_functioniPKdd(i32 noundef 7, ptr noundef nonnull %i.g, double noundef %i.aem)
          to label %.noexc191 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc191:                                        ; preds = %.lr.ph423.i
  %i.aeo = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aco, ptr noundef nonnull @.str.78, double noundef %i.aem, double noundef %i.aen) #15 ; 0 uses
  %i.aep = add nuw nsw i32 %.4219421.i, 1         ; 2 uses
  %exitcond498.not.i = icmp eq i32 %i.aep, %spec.select392.i
  br i1 %exitcond498.not.i, label %._crit_edge424.i, label %.lr.ph423.i, !llvm.loop !44

bb.cs:                                            ; preds = %.noexc188
  %i.aeq = landingpad { ptr, i32 }
          cleanup
  %i.aer = load ptr, ptr %16, align 8, !tbaa !17  ; 2 uses
  %i.aes = icmp eq ptr %i.aer, %i.acm
  br i1 %i.aes, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i360.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i360.i: ; preds = %bb.cs
  %i.aet = load i64, ptr %i.acm, align 8, !tbaa !18
  %i.aeu = add i64 %i.aet, 1
  call void @_ZdlPvm(ptr noundef %i.aer, i64 noundef %i.aeu) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362.i: ; preds = %bb.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i360.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #15
  %i.aev = load ptr, ptr %15, align 8, !tbaa !17  ; 2 uses
  %i.aew = icmp eq ptr %i.aev, %i.acj
  br i1 %i.aew, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit365.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i363.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i363.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362.i
  %i.aex = load i64, ptr %i.acj, align 8, !tbaa !18
  %i.aey = add i64 %i.aex, 1
  call void @_ZdlPvm(ptr noundef %i.aev, i64 noundef %i.aey) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit365.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit365.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i363.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %14) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  br label %bb.cw

._crit_edge424.i:                                 ; preds = %.noexc191, %.noexc190
  %i.aez = invoke noundef zeroext i1 @_Z31output_env_get_print_xvgr_codesPK16gmx_output_env_t(ptr noundef %i.rn)
          to label %.noexc192 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc192:                                        ; preds = %._crit_edge424.i
  %i.afa = select i1 %i.aez, ptr @.str.80, ptr @.str.81
  %i.afb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aco, ptr noundef nonnull @.str.79, ptr noundef nonnull %i.afa) #15 ; 0 uses
  %indvars.iv.next500.i = add nuw nsw i64 %indvars.iv499.i, 1 ; 2 uses
  %exitcond504.not.i = icmp eq i64 %indvars.iv.next500.i, %wide.trip.count444.i
  br i1 %exitcond504.not.i, label %._crit_edge427.i, label %bb.cr, !llvm.loop !45

._crit_edge427.i:                                 ; preds = %.noexc192
  invoke void @_Z9xvgrcloseP8_IO_FILE(ptr noundef %i.aco)
          to label %.noexc193 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc193:                                        ; preds = %._crit_edge427.i
  %i.afc = load ptr, ptr %i.d, align 8, !tbaa !12
  invoke void @_Z7do_viewPK16gmx_output_env_tPKcS3_(ptr noundef %i.rn, ptr noundef %i.afc, ptr noundef nonnull @.str.70)
          to label %.noexc194 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc194:                                        ; preds = %.noexc193
  %i.afd = load ptr, ptr %i.e, align 8, !tbaa !12
  %.not246.i = icmp eq ptr %i.afd, null
  br i1 %.not246.i, label %.noexc202, label %bb.ct

bb.ct:                                            ; preds = %.noexc194
  %i.afe = load ptr, ptr @stdout, align 8, !tbaa !105
  %fwrite247.i = call i64 @fwrite(ptr nonnull @.str.93, i64 25, i64 1, ptr %i.afe) ; 0 uses
  %i.aff = invoke noundef zeroext i1 @_Z31output_env_get_print_xvgr_codesPK16gmx_output_env_t(ptr noundef %i.rn)
          to label %.noexc195 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc195:                                        ; preds = %bb.ct
  %i.afg = select i1 %i.aff, ptr @.str.80, ptr @.str.81
  %i.afh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.abh, ptr noundef nonnull @.str.79, ptr noundef nonnull %i.afg) #15 ; 0 uses
  %28 = uitofp nneg i32 %spec.select392.i to float
  %29 = fmul float %i.qu, %28
  br label %bb.cu

bb.cu:                                            ; preds = %.noexc199, %.noexc195
  %indvars.iv506.i = phi i64 [ 0, %.noexc195 ], [ %indvars.iv.next507.i, %.noexc199 ] ; 3 uses
  %i.afi = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %indvars.iv506.i
  %i.afj = load ptr, ptr %i.afi, align 8, !tbaa !98 ; 2 uses
  store float 1.000000e+00, ptr %i.afj, align 4, !tbaa !82
  store <2 x double> splat (double 1.000000e+00), ptr %i.g, align 16, !tbaa !107
  %i.afk = invoke noundef zeroext i1 @_Z10bDebugModev()
          to label %.noexc196 unwind label %.loopexit.split-lp.loopexit

.noexc196:                                        ; preds = %bb.cu
  %i.afl = invoke noundef float @_Z8do_lmfitiPKfPffS0_ffPK16gmx_output_env_tbiPdiPKc(i32 noundef %spec.select392.i, ptr noundef nonnull %i.afj, ptr noundef %i.tw, float noundef %i.qu, ptr noundef null, float noundef 0.000000e+00, float noundef %29, ptr noundef %i.rn, i1 noundef zeroext %i.afk, i32 noundef 7, ptr noundef nonnull %i.g, i32 noundef 0, ptr noundef null)
          to label %.noexc197 unwind label %.loopexit.split-lp.loopexit ; 0 uses

.noexc197:                                        ; preds = %.noexc196
  %i.afm = load double, ptr %i.ade, align 8, !tbaa !107 ; 2 uses
  %i.afn = fmul double %i.afm, 1.000000e+03
  %i.afo = fmul double %i.afn, %i.re
  %i.afp = load double, ptr %i.g, align 16, !tbaa !107 ; 2 uses
  %i.afq = fmul double %i.afp, 4.000000e+00
  %i.afr = fmul double %i.afq, f0x3D719799812DEA11
  %i.afs = getelementptr inbounds nuw [4 x i8], ptr @_ZL6kset_c, i64 %indvars.iv506.i
  %i.aft = load i32, ptr %i.afs, align 4, !tbaa !49
  %i.afu = sext i32 %i.aft to i64
  %i.afv = getelementptr inbounds [12 x i8], ptr %i.q, i64 %i.afu ; 3 uses
  %i.afw = load float, ptr %i.afv, align 4, !tbaa !82 ; 2 uses
  %i.afx = getelementptr inbounds nuw i8, ptr %i.afv, i64 4
  %i.afy = load float, ptr %i.afx, align 4, !tbaa !82 ; 2 uses
  %i.afz = fmul float %i.afy, %i.afy
  %i.aga = call float @llvm.fmuladd.f32(float %i.afw, float %i.afw, float %i.afz)
  %i.agb = getelementptr inbounds nuw i8, ptr %i.afv, i64 8
  %i.agc = load float, ptr %i.agb, align 4, !tbaa !82 ; 2 uses
  %i.agd = call noundef float @llvm.fmuladd.f32(float %i.agc, float %i.agc, float %i.aga) ; 2 uses
  %i.age = fpext float %i.agd to double
  %i.agf = fmul double %i.afr, %i.age
  %i.agg = fdiv double %i.agf, 1.000000e-18
  %i.agh = fdiv double %i.afo, %i.agg
  %i.agi = fptrunc double %i.agh to float
  %i.agj = load ptr, ptr @stdout, align 8, !tbaa !105
  %sqrt.i366.i = call noundef float @llvm.sqrt.f32(float %i.agd)
  %i.agk = fpext float %sqrt.i366.i to double     ; 2 uses
  %i.agl = fpext float %i.agi to double           ; 2 uses
  %i.agm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.agj, ptr noundef nonnull @.str.94, double noundef %i.agk, double noundef %i.afp, double noundef %i.afm, double noundef %i.agl) #15 ; 0 uses
  %i.agn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.abh, ptr noundef nonnull @.str.92, double noundef %i.agk, double noundef %i.agl) #15 ; 0 uses
  br i1 %i.tx, label %.lr.ph430.i, label %._crit_edge431.i

.lr.ph430.i:                                      ; preds = %.noexc197, %.noexc198
  %.5220428.i = phi i32 [ %i.agt, %.noexc198 ], [ 0, %.noexc197 ] ; 2 uses
  %i.ago = uitofp nneg i32 %.5220428.i to float
  %i.agp = fmul float %i.qu, %i.ago
  %i.agq = fpext float %i.agp to double           ; 2 uses
  %i.agr = invoke noundef double @_Z12fit_functioniPKdd(i32 noundef 7, ptr noundef nonnull %i.g, double noundef %i.agq)
          to label %.noexc198 unwind label %.loopexit

.noexc198:                                        ; preds = %.lr.ph430.i
  %i.ags = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.0221.i, ptr noundef nonnull @.str.78, double noundef %i.agq, double noundef %i.agr) #15 ; 0 uses
  %i.agt = add nuw nsw i32 %.5220428.i, 1         ; 2 uses
  %exitcond505.not.i = icmp eq i32 %i.agt, %spec.select392.i
  br i1 %exitcond505.not.i, label %._crit_edge431.i, label %.lr.ph430.i, !llvm.loop !46

._crit_edge431.i:                                 ; preds = %.noexc198, %.noexc197
  %i.agu = invoke noundef zeroext i1 @_Z31output_env_get_print_xvgr_codesPK16gmx_output_env_t(ptr noundef %i.rn)
          to label %.noexc199 unwind label %.loopexit.split-lp.loopexit

.noexc199:                                        ; preds = %._crit_edge431.i
  %i.agv = select i1 %i.agu, ptr @.str.80, ptr @.str.81
  %i.agw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.0221.i, ptr noundef nonnull @.str.79, ptr noundef nonnull %i.agv) #15 ; 0 uses
  %indvars.iv.next507.i = add nuw nsw i64 %indvars.iv506.i, 1 ; 2 uses
  %exitcond510.not.i = icmp eq i64 %indvars.iv.next507.i, %i.ck
  br i1 %exitcond510.not.i, label %bb.cv, label %bb.cu, !llvm.loop !47

bb.cv:                                            ; preds = %.noexc199
  %i.agx = invoke noundef zeroext i1 @_Z31output_env_get_print_xvgr_codesPK16gmx_output_env_t(ptr noundef %i.rn)
          to label %.noexc200 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc200:                                        ; preds = %bb.cv
  %i.agy = select i1 %i.agx, ptr @.str.80, ptr @.str.81
  %i.agz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.abh, ptr noundef nonnull @.str.79, ptr noundef nonnull %i.agy) #15 ; 0 uses
  invoke void @_Z9xvgrcloseP8_IO_FILE(ptr noundef %.0221.i)
          to label %.noexc201 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc201:                                        ; preds = %.noexc200
  %i.aha = load ptr, ptr %i.e, align 8, !tbaa !12
  invoke void @_Z7do_viewPK16gmx_output_env_tPKcS3_(ptr noundef %i.rn, ptr noundef %i.aha, ptr noundef nonnull @.str.70)
          to label %.noexc202 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc202:                                        ; preds = %.noexc201, %.noexc194
  invoke void @_Z9xvgrcloseP8_IO_FILE(ptr noundef %i.abh)
          to label %.noexc203 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc203:                                        ; preds = %.noexc202
  %i.ahb = load ptr, ptr %i.f, align 8, !tbaa !12
  invoke void @_Z7do_viewPK16gmx_output_env_tPKcS3_(ptr noundef %i.rn, ptr noundef %i.ahb, ptr noundef nonnull @.str.70)
          to label %_ZL12process_tcafifiPPfPA3_fffPKcS4_S4_S4_S4_S4_PK16gmx_output_env_t.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit365.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit339.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264.i
  %.pn242.pn.pn.i = phi { ptr, i32 } [ %i.aeq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit365.i ], [ %.pn234.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit339.i ], [ %i.aal, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314.i ], [ %i.xt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289.i ], [ %i.sv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #15
  br label %.body

_ZL12process_tcafifiPPfPA3_fffPKcS4_S4_S4_S4_S4_PK16gmx_output_env_t.exit: ; preds = %.noexc203
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_ZL14gmx_sfree_implI7t_pargsEvPKcS2_iPT_.exit

_ZL14gmx_sfree_implI7t_pargsEvPKcS2_iPT_.exit:    ; preds = %bb.d, %_ZL12process_tcafifiPPfPA3_fffPKcS4_S4_S4_S4_S4_PK16gmx_output_env_t.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #15
  %i.ahc = getelementptr inbounds nuw i8, ptr %20, i64 480 ; 2 uses
  %i.ahd = load ptr, ptr %i.ahc, align 16, !tbaa !108 ; 3 uses
  %i.ahe = getelementptr inbounds nuw i8, ptr %20, i64 488
  %i.ahf = load ptr, ptr %i.ahe, align 8, !tbaa !109 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.ahd, %i.ahf
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit, %bb.cw, %bb.bb, %bb.be, %bb.aq, %bb.aj, %bb.ac, %bb.v, %bb.s, %bb.e
  %.pn161.pn = phi { ptr, i32 } [ %.pn161, %bb.ac ], [ %.pn159, %bb.aj ], [ %.pn157, %bb.aq ], [ %i.bo, %bb.e ], [ %.pn, %bb.s ], [ %.pn149, %bb.v ], [ %.pn151, %bb.bb ], [ %.pn153, %bb.be ], [ %.pn242.pn.pn.i, %bb.cw ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit261, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit264, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit266, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit269, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit272, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit275, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit281, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit284, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #15
  %i.ahg = getelementptr inbounds nuw i8, ptr %20, i64 480 ; 2 uses
  %i.ahh = load ptr, ptr %i.ahg, align 16, !tbaa !108 ; 3 uses
  %i.ahi = getelementptr inbounds nuw i8, ptr %20, i64 488
  %i.ahj = load ptr, ptr %i.ahi, align 8, !tbaa !109 ; 2 uses
  %.not4.i.i.i.i206 = icmp eq ptr %i.ahh, %i.ahj
  br i1 %.not4.i.i.i.i206, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i214, label %.lr.ph.i.i.i.i207

.lr.ph.i.i.i.i:                                   ; preds = %_ZL14gmx_sfree_implI7t_pargsEvPKcS2_iPT_.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ahp, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.ahd, %_ZL14gmx_sfree_implI7t_pargsEvPKcS2_iPT_.exit ] ; 3 uses
  %i.ahk = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !17 ; 2 uses
  %i.ahl = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.ahm = icmp eq ptr %i.ahk, %i.ahl
  br i1 %i.ahm, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ahn = load i64, ptr %i.ahl, align 8, !tbaa !18
  %i.aho = add i64 %i.ahn, 1
  call void @_ZdlPvm(ptr noundef %i.ahk, i64 noundef %i.aho) #16
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ahp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i205 = icmp eq ptr %i.ahp, %i.ahf
  br i1 %.not.i.i.i.i205, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !48

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.ahc, align 16, !tbaa !108
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZL14gmx_sfree_implI7t_pargsEvPKcS2_iPT_.exit
  %i.ahq = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.ahd, %_ZL14gmx_sfree_implI7t_pargsEvPKcS2_iPT_.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.ahq, null
  br i1 %.not.i.i1.i.i, label %_ZN8t_filenmD2Ev.exit, label %bb.cx

bb.cx:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.ahr = getelementptr inbounds nuw i8, ptr %20, i64 496
  %i.ahs = load ptr, ptr %i.ahr, align 16, !tbaa !110
  %i.aht = ptrtoint ptr %i.ahs to i64
  %i.ahu = ptrtoint ptr %i.ahq to i64
  %i.ahv = sub i64 %i.aht, %i.ahu
  call void @_ZdlPvm(ptr noundef nonnull %i.ahq, i64 noundef %i.ahv) #16
  br label %_ZN8t_filenmD2Ev.exit

_ZN8t_filenmD2Ev.exit:                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.cx
  %i.ahw = getelementptr inbounds nuw i8, ptr %20, i64 424 ; 2 uses
  %i.ahx = load ptr, ptr %i.ahw, align 8, !tbaa !108 ; 3 uses
  %i.ahy = getelementptr inbounds nuw i8, ptr %20, i64 432
  %i.ahz = load ptr, ptr %i.ahy, align 16, !tbaa !109 ; 2 uses
  %.not4.i.i.i.i.1 = icmp eq ptr %i.ahx, %i.ahz
  br i1 %.not4.i.i.i.i.1, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.1, label %.lr.ph.i.i.i.i.1

.lr.ph.i.i.i.i.1:                                 ; preds = %_ZN8t_filenmD2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.1
  %.05.i.i.i.i.1 = phi ptr [ %i.aif, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.1 ], [ %i.ahx, %_ZN8t_filenmD2Ev.exit ] ; 3 uses
  %i.aia = load ptr, ptr %.05.i.i.i.i.1, align 8, !tbaa !17 ; 2 uses
  %i.aib = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.1, i64 16 ; 2 uses
  %i.aic = icmp eq ptr %i.aia, %i.aib
  br i1 %i.aic, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.1: ; preds = %.lr.ph.i.i.i.i.1
  %i.aid = load i64, ptr %i.aib, align 8, !tbaa !18
  %i.aie = add i64 %i.aid, 1
  call void @_ZdlPvm(ptr noundef %i.aia, i64 noundef %i.aie) #16
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.1

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.1: ; preds = %.lr.ph.i.i.i.i.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.1
  %i.aif = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.1, i64 32 ; 2 uses
  %.not.i.i.i.i205.1 = icmp eq ptr %i.aif, %i.ahz
  br i1 %.not.i.i.i.i205.1, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.1, label %.lr.ph.i.i.i.i.1, !llvm.loop !48

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.1: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.1
  %.pr.i.i.1 = load ptr, ptr %i.ahw, align 8, !tbaa !108
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.1: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.1, %_ZN8t_filenmD2Ev.exit
  %i.aig = phi ptr [ %.pr.i.i.1, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.1 ], [ %i.ahx, %_ZN8t_filenmD2Ev.exit ] ; 3 uses
  %.not.i.i1.i.i.1 = icmp eq ptr %i.aig, null
  br i1 %.not.i.i1.i.i.1, label %_ZN8t_filenmD2Ev.exit.1, label %bb.cy

bb.cy:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.1
  %i.aih = getelementptr inbounds nuw i8, ptr %20, i64 440
  %i.aii = load ptr, ptr %i.aih, align 8, !tbaa !110
  %i.aij = ptrtoint ptr %i.aii to i64
  %i.aik = ptrtoint ptr %i.aig to i64
  %i.ail = sub i64 %i.aij, %i.aik
  call void @_ZdlPvm(ptr noundef nonnull %i.aig, i64 noundef %i.ail) #16
  br label %_ZN8t_filenmD2Ev.exit.1

_ZN8t_filenmD2Ev.exit.1:                          ; preds = %bb.cy, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.1
  %i.aim = getelementptr inbounds nuw i8, ptr %20, i64 368 ; 2 uses
  %i.ain = load ptr, ptr %i.aim, align 16, !tbaa !108 ; 3 uses
  %i.aio = getelementptr inbounds nuw i8, ptr %20, i64 376
end_hunk_1
