Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_filter?download=true
inline.NumInlined: 117
inline.NumDeleted: 78
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_Z10gmx_filteriPPc:bb.a
  %i.dm = sext i32 %i.dl to i64                   ; 2 uses
  %i.dn = getelementptr inbounds [36 x i8], ptr %i.bz, i64 %i.dm
  %i.do = load float, ptr %i.dn, align 4, !tbaa !61
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.dm
  store float %i.do, ptr %i.dp, align 4, !tbaa !53
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %indvars.iv
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !9
  %i.dt = sext i32 %i.ds to i64                   ; 2 uses
  %i.du = getelementptr inbounds [36 x i8], ptr %i.bz, i64 %i.dt
  %i.dv = load float, ptr %i.du, align 4, !tbaa !61
  %i.dw = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.dt
  store float %i.dv, ptr %i.dw, align 4, !tbaa !53
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %indvars.iv
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 28
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !9
  %i.ea = sext i32 %i.dz to i64                   ; 2 uses
  %i.eb = getelementptr inbounds [36 x i8], ptr %i.bz, i64 %i.ea
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !61
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.ea
  store float %i.ec, ptr %i.ed, align 4, !tbaa !53
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit._crit_edge.loopexit.unr-lcssa, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit, !llvm.loop !65

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit._crit_edge.loopexit.unr-lcssa: ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit._crit_edge, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.epil.preheader

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.epil.preheader: ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.7, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod888 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod888)
  br label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.epil

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.epil:     ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.epil, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.epil.preheader ], [ %indvars.iv.next.epil, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.epil.preheader ], [ %epil.iter.next, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.epil ]
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %indvars.iv.epil
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !9
  %i.eg = sext i32 %i.ef to i64                   ; 2 uses
  %i.eh = getelementptr inbounds [36 x i8], ptr %i.bz, i64 %i.eg
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !61
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.eg
  store float %i.ei, ptr %i.ej, align 4, !tbaa !53
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit._crit_edge, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.epil, !llvm.loop !67

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit._crit_edge: ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit._crit_edge.loopexit.unr-lcssa, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.epil, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.preheader
  %i.ek = load ptr, ptr %i.f, align 8, !tbaa !51
  %i.el = invoke noundef float @_Z8calc_xcmPA3_KfiPKiPK6t_atomPfb(ptr noundef %i.ek, i32 noundef %i.bw, ptr noundef %.pre, ptr noundef %i.bz, ptr noundef nonnull %i.m, i1 noundef zeroext false)
          to label %.preheader362 unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

.preheader362:                                    ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit._crit_edge
  %i.em = load i32, ptr %i.br, align 8, !tbaa !32 ; 3 uses
  %i.en = icmp sgt i32 %i.em, 0
  br i1 %i.en, label %.lr.ph369, label %.loopexit363

.lr.ph369:                                        ; preds = %.preheader362
  %i.eo = load ptr, ptr %i.f, align 8, !tbaa !51  ; 8 uses
  %wide.trip.count433 = zext nneg i32 %i.em to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.em, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph369
  %i.ep = mul nuw nsw i64 %wide.trip.count433, 12
  %scevgep = getelementptr i8, ptr %i.eo, i64 %i.ep
  %scevgep705 = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %bound0 = icmp ult ptr %i.eo, %scevgep705
  %bound1 = icmp ult ptr %i.m, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count433, 2147483640 ; 3 uses
  %i.eq = load float, ptr %i.m, align 8, !tbaa !53, !alias.scope !69
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.eq, i64 0
  %i.er = load float, ptr %i.bl, align 4, !tbaa !53, !alias.scope !69
  %broadcast.splatinsert708 = insertelement <8 x float> poison, float %i.er, i64 0
  %i.es = load float, ptr %i.bm, align 8, !tbaa !53, !alias.scope !69
  %broadcast.splatinsert710 = insertelement <8 x float> poison, float %i.es, i64 0
  %i.et = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> %broadcast.splatinsert708, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>
  %i.eu = shufflevector <8 x float> %broadcast.splatinsert710, <8 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ev = getelementptr inbounds nuw [12 x i8], ptr %i.eo, i64 %index ; 2 uses
  %wide.vec = load <24 x float>, ptr %i.ev, align 4, !tbaa !53, !alias.scope !72, !noalias !69 ; 2 uses
  %i.ew = shufflevector <24 x float> %wide.vec, <24 x float> poison, <16 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21, i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %i.ex = fsub <16 x float> %i.ew, %i.et
  %i.ey = shufflevector <24 x float> %wide.vec, <24 x float> poison, <16 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ez = fsub <16 x float> %i.ey, %i.eu
  %interleaved.vec = shufflevector <16 x float> %i.ex, <16 x float> %i.ez, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec, ptr %i.ev, align 4, !tbaa !53, !alias.scope !72, !noalias !69
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fa = icmp eq i64 %index.next, %n.vec
  br i1 %i.fa, label %middle.block, label %vector.body, !llvm.loop !74

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count433
  br i1 %cmp.n, label %.loopexit363, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph369, %middle.block
  %indvars.iv430.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph369 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter889 = and i64 %wide.trip.count433, 3   ; 2 uses
  %lcmp.mod890.not = icmp eq i64 %xtraiter889, 0
  br i1 %lcmp.mod890.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv430.prol = phi i64 [ %indvars.iv.next431.prol, %scalar.ph.prol ], [ %indvars.iv430.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.fb = getelementptr inbounds nuw [12 x i8], ptr %i.eo, i64 %indvars.iv430.prol ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8 ; 2 uses
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !53
  %i.fe = load float, ptr %i.bm, align 8, !tbaa !53
  %i.ff = fsub float %i.fd, %i.fe
  %i.fg = load <2 x float>, ptr %i.fb, align 4, !tbaa !53
  %i.fh = load <2 x float>, ptr %i.m, align 8, !tbaa !53
  %i.fi = fsub <2 x float> %i.fg, %i.fh
  store <2 x float> %i.fi, ptr %i.fb, align 4, !tbaa !53
  store float %i.ff, ptr %i.fc, align 4, !tbaa !53
  %indvars.iv.next431.prol = add nuw nsw i64 %indvars.iv430.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter889
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !77

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv430.unr = phi i64 [ %indvars.iv430.ph, %scalar.ph.preheader ], [ %indvars.iv.next431.prol, %scalar.ph.prol ]
  %i.fj = sub nsw i64 %indvars.iv430.ph, %wide.trip.count433
  %i.fk = icmp ugt i64 %i.fj, -4
  br i1 %i.fk, label %.loopexit363, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv430 = phi i64 [ %indvars.iv.next431.3, %scalar.ph ], [ %indvars.iv430.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.fl = getelementptr inbounds nuw [12 x i8], ptr %i.eo, i64 %indvars.iv430 ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8 ; 2 uses
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !53
  %i.fo = load float, ptr %i.bm, align 8, !tbaa !53
  %i.fp = fsub float %i.fn, %i.fo
  %i.fq = load <2 x float>, ptr %i.fl, align 4, !tbaa !53
  %i.fr = load <2 x float>, ptr %i.m, align 8, !tbaa !53
  %i.fs = fsub <2 x float> %i.fq, %i.fr
  store <2 x float> %i.fs, ptr %i.fl, align 4, !tbaa !53
  store float %i.fp, ptr %i.fm, align 4, !tbaa !53
  %i.ft = getelementptr inbounds nuw [12 x i8], ptr %i.eo, i64 %indvars.iv430 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 12 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 20 ; 2 uses
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !53
  %i.fx = load float, ptr %i.bm, align 8, !tbaa !53
  %i.fy = fsub float %i.fw, %i.fx
  %i.fz = load <2 x float>, ptr %i.fu, align 4, !tbaa !53
  %i.ga = load <2 x float>, ptr %i.m, align 8, !tbaa !53
  %i.gb = fsub <2 x float> %i.fz, %i.ga
  store <2 x float> %i.gb, ptr %i.fu, align 4, !tbaa !53
  store float %i.fy, ptr %i.fv, align 4, !tbaa !53
  %i.gc = getelementptr inbounds nuw [12 x i8], ptr %i.eo, i64 %indvars.iv430 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 24 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 32 ; 2 uses
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !53
  %i.gg = load float, ptr %i.bm, align 8, !tbaa !53
  %i.gh = fsub float %i.gf, %i.gg
  %i.gi = load <2 x float>, ptr %i.gd, align 4, !tbaa !53
  %i.gj = load <2 x float>, ptr %i.m, align 8, !tbaa !53
  %i.gk = fsub <2 x float> %i.gi, %i.gj
  store <2 x float> %i.gk, ptr %i.gd, align 4, !tbaa !53
  store float %i.gh, ptr %i.ge, align 4, !tbaa !53
  %i.gl = getelementptr inbounds nuw [12 x i8], ptr %i.eo, i64 %indvars.iv430 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 36 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 44 ; 2 uses
  %i.go = load float, ptr %i.gn, align 4, !tbaa !53
  %i.gp = load float, ptr %i.bm, align 8, !tbaa !53
  %i.gq = fsub float %i.go, %i.gp
  %i.gr = load <2 x float>, ptr %i.gm, align 4, !tbaa !53
  %i.gs = load <2 x float>, ptr %i.m, align 8, !tbaa !53
  %i.gt = fsub <2 x float> %i.gr, %i.gs
  store <2 x float> %i.gt, ptr %i.gm, align 4, !tbaa !53
  store float %i.gq, ptr %i.gn, align 4, !tbaa !53
  %indvars.iv.next431.3 = add nuw nsw i64 %indvars.iv430, 4 ; 2 uses
  %exitcond434.not.3 = icmp eq i64 %indvars.iv.next431.3, %wide.trip.count433
  br i1 %exitcond434.not.3, label %.loopexit363, label %scalar.ph, !llvm.loop !78

.loopexit363:                                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader362, %bb.t
  %.0 = phi ptr [ null, %bb.t ], [ %i.bv, %.preheader362 ], [ %i.bv, %middle.block ], [ %i.bv, %scalar.ph ], [ %i.bv, %scalar.ph.prol.loopexit ]
  %i.gu = load i32, ptr @_ZZ10gmx_filteriPPcE2nf, align 4, !tbaa !9 ; 4 uses
  %i.gv = shl nsw i32 %i.gu, 1                    ; 4 uses
  %i.gw = sitofp i32 %i.gv to float
  %i.gx = add nsw i32 %i.gv, -1                   ; 5 uses
  %i.gy = sext i32 %i.gx to i64                   ; 4 uses
  %i.gz = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.34, i32 noundef 180, i64 noundef range(i64 -2147483648, 2147483648) %i.gy, i64 noundef 4)
          to label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit268.preheader unwind label %.loopexit.split-lp.loopexit.split-lp ; 10 uses

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit268.preheader: ; preds = %.loopexit363
  %i.ha = icmp sgt i32 %i.gu, 0                   ; 2 uses
  br i1 %i.ha, label %.lr.ph372, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit268._crit_edge

.lr.ph372:                                        ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit268.preheader
  %9 = load i32, ptr @_ZZ10gmx_filteriPPcE2nf, align 4, !tbaa !9 ; 5 uses
  %i.hb = fpext float %i.gw to double             ; 5 uses
  %smax = call i32 @llvm.smax.i32(i32 %i.gx, i32 1)
  %wide.trip.count438 = zext nneg i32 %smax to i64 ; 2 uses
  %xtraiter891 = and i64 %wide.trip.count438, 3
  %i.hc = icmp slt i32 %i.gu, 3
  br i1 %i.hc, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit268.epil.preheader, label %.lr.ph372.new

.lr.ph372.new:                                    ; preds = %.lr.ph372
  %unroll_iter896 = and i64 %wide.trip.count438, 2147483644
  %invariant.op926 = sub i32 1, %9
  %invariant.op927 = sub i32 1, %9
  %invariant.op928 = sub i32 1, %9
  %invariant.op929 = sub i32 1, %9
  br label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit268

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit268:       ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit268, %.lr.ph372.new
  %indvars.iv435 = phi i64 [ 0, %.lr.ph372.new ], [ %indvars.iv.next436.3, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit268 ] ; 6 uses
  %.0218371 = phi float [ 0.000000e+00, %.lr.ph372.new ], [ %i.im, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit268 ]
  %niter897 = phi i64 [ 0, %.lr.ph372.new ], [ %niter897.next.3, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit268 ]
  %i.hd = trunc nuw nsw i64 %indvars.iv435 to i32
  %.reass.reass.reass = add i32 %i.hd, %invariant.op926
  %i.he = sitofp i32 %.reass.reass.reass to double
  %i.hf = fmul nnan double %i.he, f0x401921FB54442D18
  %i.hg = fdiv double %i.hf, %i.hb
  %i.hh = call double @cos(double noundef %i.hg) #13
  %i.hi = fadd double %i.hh, 1.000000e+00
  %i.hj = fptrunc double %i.hi to float           ; 2 uses
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %indvars.iv435
  store float %i.hj, ptr %i.hk, align 4, !tbaa !53
  %i.hl = fadd float %.0218371, %i.hj
  %indvars.iv.next436.1.a = or disjoint i64 %indvars.iv435, 1 ; 2 uses
  %i.hm = trunc nuw nsw i64 %indvars.iv.next436.1.a to i32
  %.reass.reass.1.reass = add i32 %i.hm, %invariant.op927
  %i.hn = sitofp i32 %.reass.reass.1.reass to double
  %i.ho = fmul nnan double %i.hn, f0x401921FB54442D18
  %i.hp = fdiv double %i.ho, %i.hb
  %i.hq = call double @cos(double noundef %i.hp) #13
  %i.hr = fadd double %i.hq, 1.000000e+00
  %i.hs = fptrunc double %i.hr to float           ; 2 uses
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %indvars.iv.next436.1.a
  store float %i.hs, ptr %i.ht, align 4, !tbaa !53
  %i.hu = fadd float %i.hl, %i.hs
  %indvars.iv.next436.2.a = or disjoint i64 %indvars.iv435, 2 ; 2 uses
  %i.hv = trunc nuw nsw i64 %indvars.iv.next436.2.a to i32
  %.reass.reass.2.reass = add i32 %i.hv, %invariant.op928
  %i.hw = sitofp i32 %.reass.reass.2.reass to double
  %i.hx = fmul nnan double %i.hw, f0x401921FB54442D18
  %i.hy = fdiv double %i.hx, %i.hb
  %i.hz = call double @cos(double noundef %i.hy) #13
  %i.ia = fadd double %i.hz, 1.000000e+00
  %i.ib = fptrunc double %i.ia to float           ; 2 uses
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %indvars.iv.next436.2.a
  store float %i.ib, ptr %i.ic, align 4, !tbaa !53
  %i.id = fadd float %i.hu, %i.ib
  %indvars.iv.next436.2 = or disjoint i64 %indvars.iv435, 3 ; 2 uses
  %i.ie = trunc nuw nsw i64 %indvars.iv.next436.2 to i32
  %.reass.reass.3.reass = add i32 %i.ie, %invariant.op929
  %i.if = sitofp i32 %.reass.reass.3.reass to double
  %i.ig = fmul nnan double %i.if, f0x401921FB54442D18
  %i.ih = fdiv double %i.ig, %i.hb
  %i.ii = call double @cos(double noundef %i.ih) #13
  %i.ij = fadd double %i.ii, 1.000000e+00
  %i.ik = fptrunc double %i.ij to float           ; 2 uses
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %indvars.iv.next436.2
  store float %i.ik, ptr %i.il, align 4, !tbaa !53
  %i.im = fadd float %i.id, %i.ik                 ; 2 uses
  %indvars.iv.next436.3 = add nuw nsw i64 %indvars.iv435, 4 ; 2 uses
  %niter897.next.3 = add i64 %niter897, 4         ; 2 uses
  %niter897.ncmp.3 = icmp eq i64 %niter897.next.3, %unroll_iter896
  br i1 %niter897.ncmp.3, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit268.epil.preheader, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit268, !llvm.loop !79

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit268._crit_edge: ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit268.preheader
  %i.in = load ptr, ptr @stdout, align 8, !tbaa !57
  %i.io = call i64 @fwrite(ptr nonnull @.str.36, i64 15, i64 1, ptr %i.in) ; 0 uses
  br label %._crit_edge

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit268.epil.preheader: ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit268, %.lr.ph372
  %indvars.iv435.epil.init = phi i64 [ 0, %.lr.ph372 ], [ %indvars.iv.next436.3, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit268 ]
  %.0218371.epil.init = phi float [ 0.000000e+00, %.lr.ph372 ], [ %i.im, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit268 ]
  %invariant.op = sub i32 1, %9
  br label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit268.epil

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit268.epil:  ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit268.epil, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit268.epil.preheader
  %indvars.iv435.epil = phi i64 [ %indvars.iv435.epil.init, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit268.epil.preheader ], [ %indvars.iv.next436.epil, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit268.epil ] ; 3 uses
  %.0218371.epil = phi float [ %.0218371.epil.init, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit268.epil.preheader ], [ %i.ix, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit268.epil ]
  %epil.iter892 = phi i64 [ 0, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit268.epil.preheader ], [ %epil.iter892.next, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit268.epil ]
  %i.ip = trunc nuw nsw i64 %indvars.iv435.epil to i32
  %.reass.reass.epil.reass = add i32 %i.ip, %invariant.op
  %i.iq = sitofp i32 %.reass.reass.epil.reass to double
  %i.ir = fmul nnan double %i.iq, f0x401921FB54442D18
  %i.is = fdiv double %i.ir, %i.hb
  %i.it = call double @cos(double noundef %i.is) #13
  %i.iu = fadd double %i.it, 1.000000e+00
  %i.iv = fptrunc double %i.iu to float           ; 2 uses
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %indvars.iv435.epil
  store float %i.iv, ptr %i.iw, align 4, !tbaa !53
  %i.ix = fadd float %.0218371.epil, %i.iv        ; 2 uses
  %indvars.iv.next436.epil = add nuw nsw i64 %indvars.iv435.epil, 1
  %epil.iter892.next = add i64 %epil.iter892, 1   ; 2 uses
  %epil.iter892.cmp.not = icmp eq i64 %epil.iter892.next, %xtraiter891
  br i1 %epil.iter892.cmp.not, label %.lr.ph375.preheader, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit268.epil, !llvm.loop !80

.lr.ph375.preheader:                              ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit268.epil
  %i.iy = load ptr, ptr @stdout, align 8, !tbaa !57
  %i.iz = call i64 @fwrite(ptr nonnull @.str.36, i64 15, i64 1, ptr %i.iy) ; 0 uses
  %smax443 = call i32 @llvm.smax.i32(i32 %i.gx, i32 1)
  %wide.trip.count444 = zext nneg i32 %smax443 to i64
  br label %.lr.ph375

.lr.ph375:                                        ; preds = %.lr.ph375.preheader, %.lr.ph375
  %indvars.iv440 = phi i64 [ 0, %.lr.ph375.preheader ], [ %indvars.iv.next441, %.lr.ph375 ] ; 2 uses
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %indvars.iv440 ; 2 uses
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !53
  %i.jc = fdiv float %i.jb, %i.ix                 ; 2 uses
  store float %i.jc, ptr %i.ja, align 4, !tbaa !53
  %i.jd = load ptr, ptr @stdout, align 8, !tbaa !57
  %i.je = fpext float %i.jc to double
  %i.jf = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jd, ptr noundef nonnull @.str.37, double noundef %i.je) #13 ; 0 uses
  %indvars.iv.next441 = add nuw nsw i64 %indvars.iv440, 1 ; 2 uses
  %exitcond445.not = icmp eq i64 %indvars.iv.next441, %wide.trip.count444
  br i1 %exitcond445.not, label %._crit_edge, label %.lr.ph375, !llvm.loop !81

._crit_edge:                                      ; preds = %.lr.ph375, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit268._crit_edge
  %i.jg = load ptr, ptr @stdout, align 8, !tbaa !57
  %fputc = call i32 @fputc(i32 10, ptr %i.jg)     ; 0 uses
  %i.jh = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.34, i32 noundef 195, i64 noundef range(i64 -2147483648, 2147483648) %i.gy, i64 noundef 4)
          to label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit269 unwind label %.loopexit.split-lp.loopexit.split-lp ; 9 uses

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit269:       ; preds = %._crit_edge
  %i.ji = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.34, i32 noundef 196, i64 noundef range(i64 -2147483648, 2147483647) %i.gy, i64 noundef 8)
          to label %_ZL13gmx_snew_implIPA3_fEvPKcS3_iRPT_m.exit unwind label %.loopexit.split-lp.loopexit.split-lp ; 12 uses

_ZL13gmx_snew_implIPA3_fEvPKcS3_iRPT_m.exit:      ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit269
  %i.jj = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.34, i32 noundef 197, i64 noundef range(i64 -2147483648, 2147483647) %i.gy, i64 noundef 36)
          to label %_ZL13gmx_snew_implIA3_A3_fEvPKcS3_iRPT_m.exit unwind label %.loopexit.split-lp.loopexit.split-lp ; 9 uses

_ZL13gmx_snew_implIA3_A3_fEvPKcS3_iRPT_m.exit:    ; preds = %_ZL13gmx_snew_implIPA3_fEvPKcS3_iRPT_m.exit
  %i.jk = load ptr, ptr %i.o, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #13
  %i.jl = invoke noundef ptr @_Z6opt2fnPKciPK8t_filenm(ptr noundef nonnull @.str.27, i32 noundef 5, ptr noundef nonnull %4)
          to label %bb.x unwind label %bb.ab

bb.x:                                             ; preds = %_ZL13gmx_snew_implIA3_A3_fEvPKcS3_iRPT_m.exit
  store ptr %i.jl, ptr %i.q, align 8, !tbaa !25
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.q, i8 noundef zeroext 2)
          to label %bb.y unwind label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.jm = add nsw i32 %i.gv, -2                   ; 3 uses
  %i.jn = sext i32 %i.jm to i64                   ; 3 uses
  %i.jo = getelementptr inbounds [4 x i8], ptr %i.jh, i64 %i.jn ; 2 uses
  %i.jp = getelementptr inbounds [8 x i8], ptr %i.ji, i64 %i.jn ; 3 uses
  %i.jq = getelementptr inbounds [36 x i8], ptr %i.jj, i64 %i.jn ; 18 uses
  %i.jr = invoke noundef i32 @_Z12read_first_xPK16gmx_output_env_tPP11t_trxstatusRKNSt10filesystem7__cxx114pathEPfPPA3_fSC_(ptr noundef %i.jk, ptr noundef nonnull %i.l, ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef %i.jo, ptr noundef %i.jp, ptr noundef %i.jq)
          to label %bb.z unwind label %bb.ac      ; 15 uses

bb.z:                                             ; preds = %bb.y
  %i.js = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !26 ; 2 uses
  %.not.i.i.i270 = icmp eq ptr %i.jt, null
  br i1 %.not.i.i.i270, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i271, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.js, ptr noundef nonnull %i.jt) #13
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i271

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i271: ; preds = %bb.aa, %bb.z
  %i.ju = load ptr, ptr %6, align 8, !tbaa !28    ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.jw = icmp eq ptr %i.ju, %i.jv
  br i1 %i.jw, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit274, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i272

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i272: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i271
  %i.jx = load i64, ptr %i.jv, align 8, !tbaa !31
  %i.jy = add i64 %i.jx, 1
  call void @_ZdlPvm(ptr noundef %i.ju, i64 noundef %i.jy) #14
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit274

_ZNSt10filesystem7__cxx114pathD2Ev.exit274:       ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i271, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i272
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  %i.jz = sext i32 %i.jr to i64                   ; 3 uses
  %i.ka = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.34, i32 noundef 200, i64 noundef range(i64 -2147483648, 2147483648) %i.jz, i64 noundef 4)
          to label %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit.preheader unwind label %.loopexit.split-lp.loopexit.split-lp ; 5 uses

_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit.preheader: ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit274
  %i.kb = icmp sgt i32 %i.jr, 0                   ; 7 uses
  br i1 %i.kb, label %iter.check, label %.preheader358

iter.check:                                       ; preds = %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit.preheader
  %wide.trip.count449 = zext nneg i32 %i.jr to i64 ; 6 uses
  %min.iters.check713 = icmp ult i32 %i.jr, 4
  br i1 %min.iters.check713, label %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit.preheader886, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check714 = icmp ult i32 %i.jr, 32
  br i1 %min.iters.check714, label %vec.epilog.ph, label %vector.ph715

vector.ph715:                                     ; preds = %vector.main.loop.iter.check
  %i.kc = and i64 %wide.trip.count449, 28
  %n.vec716 = and i64 %wide.trip.count449, 2147483616 ; 4 uses
  br label %vector.body717

vector.body717:                                   ; preds = %vector.body717, %vector.ph715
  %index718 = phi i64 [ 0, %vector.ph715 ], [ %index.next719, %vector.body717 ] ; 2 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph715 ], [ %vec.ind.next, %vector.body717 ] ; 5 uses
  %step.add = add <8 x i32> %vec.ind, splat (i32 8)
  %step.add.2 = add <8 x i32> %vec.ind, splat (i32 16)
  %step.add.3 = add <8 x i32> %vec.ind, splat (i32 24)
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %index718 ; 4 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 32
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kd, i64 64
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kd, i64 96
  store <8 x i32> %vec.ind, ptr %i.kd, align 4, !tbaa !9
  store <8 x i32> %step.add, ptr %i.ke, align 4, !tbaa !9
  store <8 x i32> %step.add.2, ptr %i.kf, align 4, !tbaa !9
  store <8 x i32> %step.add.3, ptr %i.kg, align 4, !tbaa !9
  %index.next719 = add nuw i64 %index718, 32      ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 32)
  %i.kh = icmp eq i64 %index.next719, %n.vec716
  br i1 %i.kh, label %middle.block720, label %vector.body717, !llvm.loop !84

middle.block720:                                  ; preds = %vector.body717
  %cmp.n721 = icmp eq i64 %n.vec716, %wide.trip.count449
  br i1 %cmp.n721, label %.preheader358, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block720
  %min.epilog.iters.check = icmp eq i64 %i.kc, 0
  br i1 %min.epilog.iters.check, label %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit.preheader886, label %vec.epilog.ph, !prof !85

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec716, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec722 = and i64 %wide.trip.count449, 2147483644 ; 3 uses
  %i.ki = trunc nuw nsw i64 %vec.epilog.resume.val to i32
  %broadcast.splatinsert723 = insertelement <4 x i32> poison, i32 %i.ki, i64 0
  %broadcast.splat724 = shufflevector <4 x i32> %broadcast.splatinsert723, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i32> %broadcast.splat724, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index725 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next727, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind726 = phi <4 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next728, %vec.epilog.vector.body ] ; 2 uses
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %index725
  store <4 x i32> %vec.ind726, ptr %i.kj, align 4, !tbaa !9
  %index.next727 = add nuw i64 %index725, 4       ; 2 uses
  %vec.ind.next728 = add <4 x i32> %vec.ind726, splat (i32 4)
  %i.kk = icmp eq i64 %index.next727, %n.vec722
  br i1 %i.kk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !86

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n729 = icmp eq i64 %n.vec722, %wide.trip.count449
  br i1 %cmp.n729, label %.preheader358, label %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit.preheader886

_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit.preheader886: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv446.ph = phi i64 [ 0, %iter.check ], [ %n.vec716, %vec.epilog.iter.check ], [ %n.vec722, %vec.epilog.middle.block ]
  br label %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit

.preheader358:                                    ; preds = %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit, %middle.block720, %vec.epilog.middle.block, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit.preheader
  %i.kl = icmp sgt i32 %i.gu, 1                   ; 2 uses
  br i1 %i.kl, label %.lr.ph379.preheader, label %._crit_edge380

.lr.ph379.preheader:                              ; preds = %.preheader358
  %smax454 = call i32 @llvm.smax.i32(i32 %i.jm, i32 1)
  %wide.trip.count455 = zext nneg i32 %smax454 to i64
  br label %.lr.ph379

_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit:          ; preds = %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit.preheader886, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit
  %indvars.iv446 = phi i64 [ %indvars.iv.next447, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit ], [ %indvars.iv446.ph, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit.preheader886 ] ; 3 uses
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %indvars.iv446
  %i.kn = trunc nuw nsw i64 %indvars.iv446 to i32
  store i32 %i.kn, ptr %i.km, align 4, !tbaa !9
  %indvars.iv.next447 = add nuw nsw i64 %indvars.iv446, 1 ; 2 uses
  %exitcond450.not = icmp eq i64 %indvars.iv.next447, %wide.trip.count449
  br i1 %exitcond450.not, label %.preheader358, label %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit, !llvm.loop !87

bb.ab:                                            ; preds = %bb.x, %_ZL13gmx_snew_implIA3_A3_fEvPKcS3_iRPT_m.exit
  %i.ko = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ac:                                            ; preds = %bb.y
  %i.kp = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %6) #13
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.pn252 = phi { ptr, i32 } [ %i.kp, %bb.ac ], [ %i.ko, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %.loopexit.split-lp

.lr.ph379:                                        ; preds = %.lr.ph379.preheader, %bb.ae
  %indvars.iv451 = phi i64 [ 0, %.lr.ph379.preheader ], [ %indvars.iv.next452, %bb.ae ] ; 2 uses
  %i.kq = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.34, i32 noundef 208, i64 noundef range(i64 -2147483648, 2147483648) %i.jz, i64 noundef 12)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit

end_hunk_0
