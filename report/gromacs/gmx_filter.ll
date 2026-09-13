Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_filter?download=true
inline.NumInlined: 117
inline.NumDeleted: 78
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_Z10gmx_filteriPPc:bb.a
  %i.da = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %i.cx
  store float %i.cz, ptr %i.da, align 4, !tbaa !104
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %indvars.iv
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !70
  %i.de = sext i32 %i.dd to i64                   ; 2 uses
  %i.df = getelementptr inbounds [36 x i8], ptr %i.by, i64 %i.de
  %i.dg = load float, ptr %i.df, align 4, !tbaa !115
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %i.de
  store float %i.dg, ptr %i.dh, align 4, !tbaa !104
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %indvars.iv
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 20
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !70
  %i.dl = sext i32 %i.dk to i64                   ; 2 uses
  %i.dm = getelementptr inbounds [36 x i8], ptr %i.by, i64 %i.dl
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !115
  %i.do = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %i.dl
  store float %i.dn, ptr %i.do, align 4, !tbaa !104
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %indvars.iv
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !70
  %i.ds = sext i32 %i.dr to i64                   ; 2 uses
  %i.dt = getelementptr inbounds [36 x i8], ptr %i.by, i64 %i.ds
  %i.du = load float, ptr %i.dt, align 4, !tbaa !115
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %i.ds
  store float %i.du, ptr %i.dv, align 4, !tbaa !104
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %indvars.iv
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 28
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !70
  %i.dz = sext i32 %i.dy to i64                   ; 2 uses
  %i.ea = getelementptr inbounds [36 x i8], ptr %i.by, i64 %i.dz
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !115
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %i.dz
  store float %i.eb, ptr %i.ec, align 4, !tbaa !104
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit._crit_edge.loopexit.unr-lcssa, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit, !llvm.loop !19

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit._crit_edge.loopexit.unr-lcssa: ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit._crit_edge, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.epil.preheader

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.epil.preheader: ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.7, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod891 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod891)
  br label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.epil

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.epil:     ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.epil, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.epil.preheader ], [ %indvars.iv.next.epil, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.epil.preheader ], [ %epil.iter.next, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.epil ]
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %indvars.iv.epil
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !70
  %i.ef = sext i32 %i.ee to i64                   ; 2 uses
  %i.eg = getelementptr inbounds [36 x i8], ptr %i.by, i64 %i.ef
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !115
  %i.ei = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %i.ef
  store float %i.eh, ptr %i.ei, align 4, !tbaa !104
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit._crit_edge, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.epil, !llvm.loop !20

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit._crit_edge: ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit._crit_edge.loopexit.unr-lcssa, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.epil, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.preheader
  %i.ej = load ptr, ptr %i.f, align 8, !tbaa !103
  %i.ek = invoke noundef float @_Z8calc_xcmPA3_KfiPKiPK6t_atomPfb(ptr noundef %i.ej, i32 noundef %i.bv, ptr noundef %.pre, ptr noundef %i.by, ptr noundef nonnull %i.m, i1 noundef zeroext false)
          to label %.preheader364 unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

.preheader364:                                    ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit._crit_edge
  %i.el = load i32, ptr %i.bq, align 8, !tbaa !101 ; 3 uses
  %i.em = icmp sgt i32 %i.el, 0
  br i1 %i.em, label %.lr.ph371, label %.loopexit365

.lr.ph371:                                        ; preds = %.preheader364
  %i.en = load ptr, ptr %i.f, align 8, !tbaa !103 ; 8 uses
  %wide.trip.count435 = zext nneg i32 %i.el to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.el, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph371
  %i.eo = mul nuw nsw i64 %wide.trip.count435, 12
  %scevgep = getelementptr i8, ptr %i.en, i64 %i.eo
  %scevgep708 = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %bound0 = icmp ult ptr %i.en, %scevgep708
  %bound1 = icmp ult ptr %i.m, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count435, 2147483640 ; 3 uses
  %i.ep = load float, ptr %i.m, align 8, !tbaa !104, !alias.scope !118
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.ep, i64 0
  %i.eq = load float, ptr %i.bl, align 4, !tbaa !104, !alias.scope !118
  %broadcast.splatinsert711 = insertelement <8 x float> poison, float %i.eq, i64 0
  %i.er = load float, ptr %i.bm, align 8, !tbaa !104, !alias.scope !118
  %broadcast.splatinsert713 = insertelement <8 x float> poison, float %i.er, i64 0
  %i.es = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> %broadcast.splatinsert711, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>
  %i.et = shufflevector <8 x float> %broadcast.splatinsert713, <8 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.eu = getelementptr inbounds nuw [12 x i8], ptr %i.en, i64 %index ; 2 uses
  %wide.vec = load <24 x float>, ptr %i.eu, align 4, !tbaa !104, !alias.scope !119, !noalias !118 ; 2 uses
  %i.ev = shufflevector <24 x float> %wide.vec, <24 x float> poison, <16 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21, i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %i.ew = fsub <16 x float> %i.ev, %i.es
  %i.ex = shufflevector <24 x float> %wide.vec, <24 x float> poison, <16 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ey = fsub <16 x float> %i.ex, %i.et
  %interleaved.vec = shufflevector <16 x float> %i.ew, <16 x float> %i.ey, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec, ptr %i.eu, align 4, !tbaa !104, !alias.scope !119, !noalias !118
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ez = icmp eq i64 %index.next, %n.vec
  br i1 %i.ez, label %middle.block, label %vector.body, !llvm.loop !24

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count435
  br i1 %cmp.n, label %.loopexit365, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph371, %middle.block
  %indvars.iv432.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph371 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter892 = and i64 %wide.trip.count435, 3   ; 2 uses
  %lcmp.mod893.not = icmp eq i64 %xtraiter892, 0
  br i1 %lcmp.mod893.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv432.prol = phi i64 [ %indvars.iv.next433.prol, %scalar.ph.prol ], [ %indvars.iv432.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.fa = getelementptr inbounds nuw [12 x i8], ptr %i.en, i64 %indvars.iv432.prol ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8 ; 2 uses
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !104
  %i.fd = load float, ptr %i.bm, align 8, !tbaa !104
  %i.fe = fsub float %i.fc, %i.fd
  %i.ff = load <2 x float>, ptr %i.fa, align 4, !tbaa !104
  %i.fg = load <2 x float>, ptr %i.m, align 8, !tbaa !104
  %i.fh = fsub <2 x float> %i.ff, %i.fg
  store <2 x float> %i.fh, ptr %i.fa, align 4, !tbaa !104
  store float %i.fe, ptr %i.fb, align 4, !tbaa !104
  %indvars.iv.next433.prol = add nuw nsw i64 %indvars.iv432.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter892
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !25

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv432.unr = phi i64 [ %indvars.iv432.ph, %scalar.ph.preheader ], [ %indvars.iv.next433.prol, %scalar.ph.prol ]
  %i.fi = sub nsw i64 %indvars.iv432.ph, %wide.trip.count435
  %i.fj = icmp ugt i64 %i.fi, -4
  br i1 %i.fj, label %.loopexit365, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv432 = phi i64 [ %indvars.iv.next433.3, %scalar.ph ], [ %indvars.iv432.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.fk = getelementptr inbounds nuw [12 x i8], ptr %i.en, i64 %indvars.iv432 ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8 ; 2 uses
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !104
  %i.fn = load float, ptr %i.bm, align 8, !tbaa !104
  %i.fo = fsub float %i.fm, %i.fn
  %i.fp = load <2 x float>, ptr %i.fk, align 4, !tbaa !104
  %i.fq = load <2 x float>, ptr %i.m, align 8, !tbaa !104
  %i.fr = fsub <2 x float> %i.fp, %i.fq
  store <2 x float> %i.fr, ptr %i.fk, align 4, !tbaa !104
  store float %i.fo, ptr %i.fl, align 4, !tbaa !104
  %i.fs = getelementptr inbounds nuw [12 x i8], ptr %i.en, i64 %indvars.iv432 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 12 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 20 ; 2 uses
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !104
  %i.fw = load float, ptr %i.bm, align 8, !tbaa !104
  %i.fx = fsub float %i.fv, %i.fw
  %i.fy = load <2 x float>, ptr %i.ft, align 4, !tbaa !104
  %i.fz = load <2 x float>, ptr %i.m, align 8, !tbaa !104
  %i.ga = fsub <2 x float> %i.fy, %i.fz
  store <2 x float> %i.ga, ptr %i.ft, align 4, !tbaa !104
  store float %i.fx, ptr %i.fu, align 4, !tbaa !104
  %i.gb = getelementptr inbounds nuw [12 x i8], ptr %i.en, i64 %indvars.iv432 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 24 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 32 ; 2 uses
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !104
  %i.gf = load float, ptr %i.bm, align 8, !tbaa !104
  %i.gg = fsub float %i.ge, %i.gf
  %i.gh = load <2 x float>, ptr %i.gc, align 4, !tbaa !104
  %i.gi = load <2 x float>, ptr %i.m, align 8, !tbaa !104
  %i.gj = fsub <2 x float> %i.gh, %i.gi
  store <2 x float> %i.gj, ptr %i.gc, align 4, !tbaa !104
  store float %i.gg, ptr %i.gd, align 4, !tbaa !104
  %i.gk = getelementptr inbounds nuw [12 x i8], ptr %i.en, i64 %indvars.iv432 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 36 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gk, i64 44 ; 2 uses
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !104
  %i.go = load float, ptr %i.bm, align 8, !tbaa !104
  %i.gp = fsub float %i.gn, %i.go
  %i.gq = load <2 x float>, ptr %i.gl, align 4, !tbaa !104
  %i.gr = load <2 x float>, ptr %i.m, align 8, !tbaa !104
  %i.gs = fsub <2 x float> %i.gq, %i.gr
  store <2 x float> %i.gs, ptr %i.gl, align 4, !tbaa !104
  store float %i.gp, ptr %i.gm, align 4, !tbaa !104
  %indvars.iv.next433.3 = add nuw nsw i64 %indvars.iv432, 4 ; 2 uses
  %exitcond436.not.3 = icmp eq i64 %indvars.iv.next433.3, %wide.trip.count435
  br i1 %exitcond436.not.3, label %.loopexit365, label %scalar.ph, !llvm.loop !26

.loopexit365:                                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader364, %bb.t
  %.0 = phi ptr [ null, %bb.t ], [ %i.bu, %.preheader364 ], [ %i.bu, %middle.block ], [ %i.bu, %scalar.ph ], [ %i.bu, %scalar.ph.prol.loopexit ]
  %i.gt = load i32, ptr @_ZZ10gmx_filteriPPcE2nf, align 4, !tbaa !70 ; 3 uses
  %i.gu = shl nsw i32 %i.gt, 1                    ; 5 uses
  %i.gv = sitofp i32 %i.gu to float
  %i.gw = add nsw i32 %i.gu, -1                   ; 5 uses
  %i.gx = sext i32 %i.gw to i64                   ; 4 uses
  %i.gy = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.34, i32 noundef 180, i64 noundef range(i64 -2147483648, 2147483648) %i.gx, i64 noundef 4)
          to label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit270.preheader unwind label %.loopexit.split-lp.loopexit.split-lp ; 10 uses

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit270.preheader: ; preds = %.loopexit365
  %i.gz = icmp sgt i32 %i.gt, 0                   ; 2 uses
  br i1 %i.gz, label %.lr.ph374, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit270._crit_edge

.lr.ph374:                                        ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit270.preheader
  %i.ha = load i32, ptr @_ZZ10gmx_filteriPPcE2nf, align 4, !tbaa !70 ; 5 uses
  %i.hb = fpext float %i.gv to double             ; 5 uses
  %wide.trip.count440 = zext nneg i32 %i.gw to i64 ; 2 uses
  %9 = add nsw i32 %i.gu, -2
  %xtraiter894 = and i64 %wide.trip.count440, 3
  %10 = icmp ult i32 %9, 3
  br i1 %10, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit270.epil.preheader, label %.lr.ph374.new

.lr.ph374.new:                                    ; preds = %.lr.ph374
  %unroll_iter899 = and i64 %wide.trip.count440, 2147483644
  %invariant.op929 = sub i32 1, %i.ha
  %invariant.op930 = sub i32 1, %i.ha
  %invariant.op931 = sub i32 1, %i.ha
  %invariant.op932 = sub i32 1, %i.ha
  br label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit270

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit270:       ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit270, %.lr.ph374.new
  %indvars.iv437 = phi i64 [ 0, %.lr.ph374.new ], [ %indvars.iv.next438.3, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit270 ] ; 6 uses
  %.0218373 = phi float [ 0.000000e+00, %.lr.ph374.new ], [ %i.il, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit270 ]
  %niter900 = phi i64 [ 0, %.lr.ph374.new ], [ %niter900.next.3, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit270 ]
  %i.hc = trunc nuw nsw i64 %indvars.iv437 to i32
  %.reass.reass.reass = add i32 %i.hc, %invariant.op929
  %i.hd = sitofp i32 %.reass.reass.reass to double
  %i.he = fmul nnan double %i.hd, f0x401921FB54442D18
  %i.hf = fdiv double %i.he, %i.hb
  %i.hg = call double @cos(double noundef %i.hf) #13
  %i.hh = fadd double %i.hg, 1.000000e+00
  %i.hi = fptrunc double %i.hh to float           ; 2 uses
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %indvars.iv437
  store float %i.hi, ptr %i.hj, align 4, !tbaa !104
  %i.hk = fadd float %.0218373, %i.hi
  %indvars.iv.next438 = or disjoint i64 %indvars.iv437, 1 ; 2 uses
  %i.hl = trunc nuw nsw i64 %indvars.iv.next438 to i32
  %.reass.reass.1.reass = add i32 %i.hl, %invariant.op930
  %i.hm = sitofp i32 %.reass.reass.1.reass to double
  %i.hn = fmul nnan double %i.hm, f0x401921FB54442D18
  %i.ho = fdiv double %i.hn, %i.hb
  %i.hp = call double @cos(double noundef %i.ho) #13
  %i.hq = fadd double %i.hp, 1.000000e+00
  %i.hr = fptrunc double %i.hq to float           ; 2 uses
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %indvars.iv.next438
  store float %i.hr, ptr %i.hs, align 4, !tbaa !104
  %i.ht = fadd float %i.hk, %i.hr
  %indvars.iv.next438.1 = or disjoint i64 %indvars.iv437, 2 ; 2 uses
  %i.hu = trunc nuw nsw i64 %indvars.iv.next438.1 to i32
  %.reass.reass.2.reass = add i32 %i.hu, %invariant.op931
  %i.hv = sitofp i32 %.reass.reass.2.reass to double
  %i.hw = fmul nnan double %i.hv, f0x401921FB54442D18
  %i.hx = fdiv double %i.hw, %i.hb
  %i.hy = call double @cos(double noundef %i.hx) #13
  %i.hz = fadd double %i.hy, 1.000000e+00
  %i.ia = fptrunc double %i.hz to float           ; 2 uses
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %indvars.iv.next438.1
  store float %i.ia, ptr %i.ib, align 4, !tbaa !104
  %i.ic = fadd float %i.ht, %i.ia
  %indvars.iv.next438.2 = or disjoint i64 %indvars.iv437, 3 ; 2 uses
  %i.id = trunc nuw nsw i64 %indvars.iv.next438.2 to i32
  %.reass.reass.3.reass = add i32 %i.id, %invariant.op932
  %i.ie = sitofp i32 %.reass.reass.3.reass to double
  %i.if = fmul nnan double %i.ie, f0x401921FB54442D18
  %i.ig = fdiv double %i.if, %i.hb
  %i.ih = call double @cos(double noundef %i.ig) #13
  %i.ii = fadd double %i.ih, 1.000000e+00
  %i.ij = fptrunc double %i.ii to float           ; 2 uses
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %indvars.iv.next438.2
  store float %i.ij, ptr %i.ik, align 4, !tbaa !104
  %i.il = fadd float %i.ic, %i.ij                 ; 2 uses
  %indvars.iv.next438.3 = add nuw nsw i64 %indvars.iv437, 4 ; 2 uses
  %niter900.next.3 = add i64 %niter900, 4         ; 2 uses
  %niter900.ncmp.3 = icmp eq i64 %niter900.next.3, %unroll_iter899
  br i1 %niter900.ncmp.3, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit270.epil.preheader, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit270, !llvm.loop !27

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit270._crit_edge: ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit270.preheader
  %i.im = load ptr, ptr @stdout, align 8, !tbaa !109
  %fwrite252 = call i64 @fwrite(ptr nonnull @.str.36, i64 15, i64 1, ptr %i.im) ; 0 uses
  br label %._crit_edge

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit270.epil.preheader: ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit270, %.lr.ph374
  %indvars.iv437.epil.init = phi i64 [ 0, %.lr.ph374 ], [ %indvars.iv.next438.3, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit270 ]
  %.0218373.epil.init = phi float [ 0.000000e+00, %.lr.ph374 ], [ %i.il, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit270 ]
  %invariant.op = sub i32 1, %i.ha
  br label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit270.epil

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit270.epil:  ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit270.epil, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit270.epil.preheader
  %indvars.iv437.epil = phi i64 [ %indvars.iv437.epil.init, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit270.epil.preheader ], [ %indvars.iv.next438.epil, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit270.epil ] ; 3 uses
  %.0218373.epil = phi float [ %.0218373.epil.init, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit270.epil.preheader ], [ %i.iv, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit270.epil ]
  %epil.iter895 = phi i64 [ 0, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit270.epil.preheader ], [ %epil.iter895.next, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit270.epil ]
  %i.in = trunc nuw nsw i64 %indvars.iv437.epil to i32
  %.reass.reass.epil.reass = add i32 %i.in, %invariant.op
  %i.io = sitofp i32 %.reass.reass.epil.reass to double
  %i.ip = fmul nnan double %i.io, f0x401921FB54442D18
  %i.iq = fdiv double %i.ip, %i.hb
  %i.ir = call double @cos(double noundef %i.iq) #13
  %i.is = fadd double %i.ir, 1.000000e+00
  %i.it = fptrunc double %i.is to float           ; 2 uses
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %indvars.iv437.epil
  store float %i.it, ptr %i.iu, align 4, !tbaa !104
  %i.iv = fadd float %.0218373.epil, %i.it        ; 2 uses
  %indvars.iv.next438.epil = add nuw nsw i64 %indvars.iv437.epil, 1
  %epil.iter895.next = add i64 %epil.iter895, 1   ; 2 uses
  %epil.iter895.cmp.not = icmp eq i64 %epil.iter895.next, %xtraiter894
  br i1 %epil.iter895.cmp.not, label %.lr.ph377.preheader, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit270.epil, !llvm.loop !28

.lr.ph377.preheader:                              ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit270.epil
  %i.iw = load ptr, ptr @stdout, align 8, !tbaa !109
  %fwrite252687 = call i64 @fwrite(ptr nonnull @.str.36, i64 15, i64 1, ptr %i.iw) ; 0 uses
  %wide.trip.count446 = zext nneg i32 %i.gw to i64
  br label %.lr.ph377

.lr.ph377:                                        ; preds = %.lr.ph377.preheader, %.lr.ph377
  %indvars.iv442 = phi i64 [ 0, %.lr.ph377.preheader ], [ %indvars.iv.next443, %.lr.ph377 ] ; 2 uses
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %indvars.iv442 ; 2 uses
  %i.iy = load float, ptr %i.ix, align 4, !tbaa !104
  %i.iz = fdiv float %i.iy, %i.iv                 ; 2 uses
  store float %i.iz, ptr %i.ix, align 4, !tbaa !104
  %i.ja = load ptr, ptr @stdout, align 8, !tbaa !109
  %i.jb = fpext float %i.iz to double
  %i.jc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ja, ptr noundef nonnull @.str.37, double noundef %i.jb) #13 ; 0 uses
  %indvars.iv.next443 = add nuw nsw i64 %indvars.iv442, 1 ; 2 uses
  %exitcond447.not = icmp eq i64 %indvars.iv.next443, %wide.trip.count446
  br i1 %exitcond447.not, label %._crit_edge, label %.lr.ph377, !llvm.loop !29

._crit_edge:                                      ; preds = %.lr.ph377, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit270._crit_edge
  %i.jd = load ptr, ptr @stdout, align 8, !tbaa !109
  %fputc = call i32 @fputc(i32 10, ptr %i.jd)     ; 0 uses
  %i.je = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.34, i32 noundef 195, i64 noundef range(i64 -2147483648, 2147483648) %i.gx, i64 noundef 4)
          to label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit271 unwind label %.loopexit.split-lp.loopexit.split-lp ; 9 uses

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit271:       ; preds = %._crit_edge
  %i.jf = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.34, i32 noundef 196, i64 noundef range(i64 -2147483648, 2147483647) %i.gx, i64 noundef 8)
          to label %_ZL13gmx_snew_implIPA3_fEvPKcS3_iRPT_m.exit unwind label %.loopexit.split-lp.loopexit.split-lp ; 12 uses

_ZL13gmx_snew_implIPA3_fEvPKcS3_iRPT_m.exit:      ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit271
  %i.jg = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.34, i32 noundef 197, i64 noundef range(i64 -2147483648, 2147483647) %i.gx, i64 noundef 36)
          to label %_ZL13gmx_snew_implIA3_A3_fEvPKcS3_iRPT_m.exit unwind label %.loopexit.split-lp.loopexit.split-lp ; 9 uses

_ZL13gmx_snew_implIA3_A3_fEvPKcS3_iRPT_m.exit:    ; preds = %_ZL13gmx_snew_implIPA3_fEvPKcS3_iRPT_m.exit
  %i.jh = load ptr, ptr %i.o, align 8, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #13
  %i.ji = invoke noundef ptr @_Z6opt2fnPKciPK8t_filenm(ptr noundef nonnull @.str.27, i32 noundef 5, ptr noundef nonnull %4)
          to label %bb.x unwind label %bb.ab

bb.x:                                             ; preds = %_ZL13gmx_snew_implIA3_A3_fEvPKcS3_iRPT_m.exit
  store ptr %i.ji, ptr %i.q, align 8, !tbaa !12
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.q, i8 noundef zeroext 2)
          to label %bb.y unwind label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.jj = add nsw i32 %i.gu, -2                   ; 3 uses
  %i.jk = sext i32 %i.jj to i64                   ; 3 uses
  %i.jl = getelementptr inbounds [4 x i8], ptr %i.je, i64 %i.jk ; 2 uses
  %i.jm = getelementptr inbounds [8 x i8], ptr %i.jf, i64 %i.jk ; 3 uses
  %i.jn = getelementptr inbounds [36 x i8], ptr %i.jg, i64 %i.jk ; 18 uses
  %i.jo = invoke noundef i32 @_Z12read_first_xPK16gmx_output_env_tPP11t_trxstatusRKNSt10filesystem7__cxx114pathEPfPPA3_fSC_(ptr noundef %i.jh, ptr noundef nonnull %i.l, ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef %i.jl, ptr noundef %i.jm, ptr noundef %i.jn)
          to label %bb.z unwind label %bb.ac      ; 15 uses

bb.z:                                             ; preds = %bb.y
  %i.jp = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !14 ; 2 uses
  %.not.i.i.i272 = icmp eq ptr %i.jq, null
  br i1 %.not.i.i.i272, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i273, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.jp, ptr noundef nonnull %i.jq) #13
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i273

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i273: ; preds = %bb.aa, %bb.z
  %i.jr = load ptr, ptr %6, align 8, !tbaa !17    ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.jt = icmp eq ptr %i.jr, %i.js
  br i1 %i.jt, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit276, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i274

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i274: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i273
  %i.ju = load i64, ptr %i.js, align 8, !tbaa !18
  %i.jv = add i64 %i.ju, 1
  call void @_ZdlPvm(ptr noundef %i.jr, i64 noundef %i.jv) #14
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit276

_ZNSt10filesystem7__cxx114pathD2Ev.exit276:       ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i273, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i274
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  %i.jw = sext i32 %i.jo to i64                   ; 3 uses
  %i.jx = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.34, i32 noundef 200, i64 noundef range(i64 -2147483648, 2147483648) %i.jw, i64 noundef 4)
          to label %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit.preheader unwind label %.loopexit.split-lp.loopexit.split-lp ; 5 uses

_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit.preheader: ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit276
  %i.jy = icmp sgt i32 %i.jo, 0                   ; 7 uses
  br i1 %i.jy, label %iter.check, label %.preheader360

iter.check:                                       ; preds = %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit.preheader
  %wide.trip.count451 = zext nneg i32 %i.jo to i64 ; 6 uses
  %min.iters.check716 = icmp ult i32 %i.jo, 8
  br i1 %min.iters.check716, label %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit.preheader889, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check717 = icmp ult i32 %i.jo, 32
  br i1 %min.iters.check717, label %vec.epilog.ph, label %vector.ph718

vector.ph718:                                     ; preds = %vector.main.loop.iter.check
  %i.jz = and i64 %wide.trip.count451, 24
  %n.vec719 = and i64 %wide.trip.count451, 2147483616 ; 4 uses
  br label %vector.body720

vector.body720:                                   ; preds = %vector.body720, %vector.ph718
  %index721 = phi i64 [ 0, %vector.ph718 ], [ %index.next722, %vector.body720 ] ; 2 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph718 ], [ %vec.ind.next, %vector.body720 ] ; 5 uses
  %step.add = add <8 x i32> %vec.ind, splat (i32 8)
  %step.add.2 = add <8 x i32> %vec.ind, splat (i32 16)
  %step.add.3 = add <8 x i32> %vec.ind, splat (i32 24)
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %index721 ; 4 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 32
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ka, i64 64
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ka, i64 96
  store <8 x i32> %vec.ind, ptr %i.ka, align 4, !tbaa !70
  store <8 x i32> %step.add, ptr %i.kb, align 4, !tbaa !70
  store <8 x i32> %step.add.2, ptr %i.kc, align 4, !tbaa !70
  store <8 x i32> %step.add.3, ptr %i.kd, align 4, !tbaa !70
  %index.next722 = add nuw i64 %index721, 32      ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 32)
  %i.ke = icmp eq i64 %index.next722, %n.vec719
  br i1 %i.ke, label %middle.block723, label %vector.body720, !llvm.loop !30

middle.block723:                                  ; preds = %vector.body720
  %cmp.n724 = icmp eq i64 %n.vec719, %wide.trip.count451
  br i1 %cmp.n724, label %.preheader360, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block723
  %min.epilog.iters.check = icmp eq i64 %i.jz, 0
  br i1 %min.epilog.iters.check, label %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit.preheader889, label %vec.epilog.ph, !prof !124

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec719, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec725 = and i64 %wide.trip.count451, 2147483640 ; 3 uses
  %i.kf = trunc nuw nsw i64 %vec.epilog.resume.val to i32
  %broadcast.splatinsert726 = insertelement <8 x i32> poison, i32 %i.kf, i64 0
  %broadcast.splat727 = shufflevector <8 x i32> %broadcast.splatinsert726, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction = or disjoint <8 x i32> %broadcast.splat727, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index728 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next730, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind729 = phi <8 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next731, %vec.epilog.vector.body ] ; 2 uses
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %index728
  store <8 x i32> %vec.ind729, ptr %i.kg, align 4, !tbaa !70
  %index.next730 = add nuw i64 %index728, 8       ; 2 uses
  %vec.ind.next731 = add <8 x i32> %vec.ind729, splat (i32 8)
  %i.kh = icmp eq i64 %index.next730, %n.vec725
  br i1 %i.kh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !31

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n732 = icmp eq i64 %n.vec725, %wide.trip.count451
  br i1 %cmp.n732, label %.preheader360, label %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit.preheader889

_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit.preheader889: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv448.ph = phi i64 [ 0, %iter.check ], [ %n.vec719, %vec.epilog.iter.check ], [ %n.vec725, %vec.epilog.middle.block ]
  br label %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit

.preheader360:                                    ; preds = %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit, %middle.block723, %vec.epilog.middle.block, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit.preheader
  %i.ki = icmp sgt i32 %i.gt, 1                   ; 2 uses
  br i1 %i.ki, label %.lr.ph381.preheader, label %._crit_edge382

.lr.ph381.preheader:                              ; preds = %.preheader360
  %smax456 = call i32 @llvm.smax.i32(i32 %i.jj, i32 1)
  %wide.trip.count457 = zext nneg i32 %smax456 to i64
  br label %.lr.ph381

_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit:          ; preds = %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit.preheader889, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit
  %indvars.iv448 = phi i64 [ %indvars.iv.next449, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit ], [ %indvars.iv448.ph, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit.preheader889 ] ; 3 uses
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %indvars.iv448
  %i.kk = trunc nuw nsw i64 %indvars.iv448 to i32
  store i32 %i.kk, ptr %i.kj, align 4, !tbaa !70
  %indvars.iv.next449 = add nuw nsw i64 %indvars.iv448, 1 ; 2 uses
  %exitcond452.not = icmp eq i64 %indvars.iv.next449, %wide.trip.count451
  br i1 %exitcond452.not, label %.preheader360, label %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit, !llvm.loop !32

bb.ab:                                            ; preds = %bb.x, %_ZL13gmx_snew_implIA3_A3_fEvPKcS3_iRPT_m.exit
  %i.kl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ac:                                            ; preds = %bb.y
  %i.km = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %6) #13
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.pn254 = phi { ptr, i32 } [ %i.km, %bb.ac ], [ %i.kl, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %.loopexit.split-lp

.lr.ph381:                                        ; preds = %.lr.ph381.preheader, %bb.ae
  %indvars.iv453 = phi i64 [ 0, %.lr.ph381.preheader ], [ %indvars.iv.next454, %bb.ae ] ; 2 uses
  %i.kn = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.34, i32 noundef 208, i64 noundef range(i64 -2147483648, 2147483648) %i.jw, i64 noundef 12)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit

bb.ae:                                            ; preds = %.lr.ph381
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %indvars.iv453
  store ptr %i.kn, ptr %i.ko, align 8, !tbaa !103
  %indvars.iv.next454 = add nuw nsw i64 %indvars.iv453, 1 ; 2 uses
  %exitcond458.not = icmp eq i64 %indvars.iv.next454, %wide.trip.count457
  br i1 %exitcond458.not, label %._crit_edge382, label %.lr.ph381, !llvm.loop !33

._crit_edge382:                                   ; preds = %bb.ae, %.preheader360
  %i.kp = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.34, i32 noundef 210, i64 noundef range(i64 -2147483648, 2147483648) %i.jw, i64 noundef 12)
end_hunk_0
