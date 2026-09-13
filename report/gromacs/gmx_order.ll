Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_order?download=true
inline.NumInlined: 430
inline.NumDeleted: 150
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_Z9gmx_orderiPPc:bb.a
.split214.us.i.i:                                 ; preds = %.noexc82, %middle.block655, %vec.epilog.middle.block669, %.noexc75
  %.sroa.25.0.i.i = phi ptr [ %i.ip, %.noexc75 ], [ %i.jm, %middle.block655 ], [ %i.jm, %vec.epilog.middle.block669 ], [ %i.jm, %.noexc82 ] ; 2 uses
  %.sroa.17.0.i.i = phi ptr [ %i.in, %.noexc75 ], [ %i.jc, %middle.block655 ], [ %i.jc, %vec.epilog.middle.block669 ], [ %i.jc, %.noexc82 ] ; 2 uses
  %.sroa.9.0.i.i = phi ptr [ %i.il, %.noexc75 ], [ %i.is, %middle.block655 ], [ %i.is, %vec.epilog.middle.block669 ], [ %i.is, %.noexc82 ] ; 2 uses
  %.sroa.23.0.i.i = phi ptr [ %i.io, %.noexc75 ], [ %i.jl, %middle.block655 ], [ %i.jl, %vec.epilog.middle.block669 ], [ %i.jl, %.noexc82 ] ; 2 uses
  %.sroa.15.0.i.i = phi ptr [ %i.im, %.noexc75 ], [ %i.jb, %middle.block655 ], [ %i.jb, %vec.epilog.middle.block669 ], [ %i.jb, %.noexc82 ] ; 2 uses
  %.sroa.8.0.i.i = phi ptr [ %i.ik, %.noexc75 ], [ %i.ir, %middle.block655 ], [ %i.ir, %vec.epilog.middle.block669 ], [ %i.ir, %.noexc82 ] ; 2 uses
  %i.jv = sext i32 %i.hw to i64                   ; 2 uses
  %i.jw = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.55, i32 noundef 128, i64 noundef range(i64 -2147483648, 2147483648) %i.jv, i64 noundef 4)
          to label %.noexc83 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc83:                                         ; preds = %.split214.us.i.i
  %i.jx = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.55, i32 noundef 129, i64 noundef range(i64 -2147483648, 2147483648) %i.jv, i64 noundef 4)
          to label %.noexc84 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc84:                                         ; preds = %.noexc83
  invoke void @_Z7set_pbcP5t_pbc7PbcTypePA3_Kf(ptr noundef nonnull %24, i32 noundef %i.hu, ptr noundef nonnull %i.ah)
          to label %.noexc85 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc85:                                         ; preds = %.noexc84
  invoke void @_Z15gmx_rmpbc_applyP9gmx_rmpbciPA3_KfPA3_f(ptr noundef %i.hb, i32 noundef %i.es, ptr noundef nonnull %i.ah, ptr noundef %i.hv)
          to label %.noexc86 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc86:                                         ; preds = %.noexc85
  %i.jy = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.55, i32 noundef 137, i64 noundef 2001, i64 noundef 4)
          to label %.noexc87 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 7 uses

.noexc87:                                         ; preds = %.noexc86
  %i.jz = icmp sgt i32 %i.hw, 0
  br i1 %i.jz, label %.lr.ph223.i.i, label %._crit_edge.i.i

.lr.ph223.i.i:                                    ; preds = %.noexc87
  %invariant.gep.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %.030231
  %wide.trip.count266.i.i = zext nneg i32 %i.hw to i64 ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.loopexit.2.i.i, %.lr.ph223.i.i
  %indvars.iv263.i.i = phi i64 [ 0, %.lr.ph223.i.i ], [ %indvars.iv.next264.i.i, %.loopexit.2.i.i ] ; 14 uses
  %i.ka = phi <2 x float> [ zeroinitializer, %.lr.ph223.i.i ], [ %i.st, %.loopexit.2.i.i ]
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %indvars.iv263.i.i
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !11
  %i.kd = sext i32 %i.kc to i64
  %i.ke = getelementptr inbounds [12 x i8], ptr %i.hv, i64 %i.kd ; 13 uses
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %indvars.iv263.i.i ; 6 uses
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.8.0.i.i, i64 %indvars.iv263.i.i ; 8 uses
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.15.0.i.i, i64 %indvars.iv263.i.i ; 8 uses
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %.sroa.23.0.i.i, i64 %indvars.iv263.i.i ; 8 uses
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.25.0.i.i, i64 %indvars.iv263.i.i ; 7 uses
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.17.0.i.i, i64 %indvars.iv263.i.i ; 9 uses
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.9.0.i.i, i64 %indvars.iv263.i.i ; 7 uses
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %indvars.iv263.i.i ; 5 uses
  br label %bb.aq

bb.aq:                                            ; preds = %bb.az, %.lr.ph.i.i
  %indvars.iv236.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next237.i.i, %bb.az ] ; 7 uses
  %i.kn = icmp eq i64 %indvars.iv263.i.i, %indvars.iv236.i.i
  br i1 %i.kn, label %bb.az, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %indvars.iv236.i.i
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !11
  %i.kq = sext i32 %i.kp to i64
  %i.kr = getelementptr inbounds [12 x i8], ptr %i.hv, i64 %i.kq
  invoke void @_Z6pbc_dxPK5t_pbcPKfS3_Pf(ptr noundef nonnull %24, ptr noundef %i.ke, ptr noundef %i.kr, ptr noundef nonnull %i.t)
          to label %.noexc88 unwind label %.loopexit

.noexc88:                                         ; preds = %bb.ar
  %i.ks = load float, ptr %i.t, align 4, !tbaa !51 ; 2 uses
  %i.kt = load float, ptr %i.he, align 4, !tbaa !51 ; 2 uses
  %i.ku = fmul float %i.kt, %i.kt
  %i.kv = call float @llvm.fmuladd.f32(float %i.ks, float %i.ks, float %i.ku)
  %i.kw = load float, ptr %i.hf, align 4, !tbaa !51 ; 2 uses
  %i.kx = call noundef float @llvm.fmuladd.f32(float %i.kw, float %i.kw, float %i.kv) ; 8 uses
  %i.ky = load float, ptr %i.kf, align 4, !tbaa !51
  %i.kz = fcmp olt float %i.kx, %i.ky
  br i1 %i.kz, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.noexc88
  %i.la = load float, ptr %i.kh, align 4, !tbaa !51
  store float %i.la, ptr %i.ki, align 4, !tbaa !51
  %i.lb = load i32, ptr %i.kk, align 4, !tbaa !11
  store i32 %i.lb, ptr %i.kj, align 4, !tbaa !11
  %i.lc = load float, ptr %i.kg, align 4, !tbaa !51
  store float %i.lc, ptr %i.kh, align 4, !tbaa !51
  %i.ld = load i32, ptr %i.kl, align 4, !tbaa !11
  store i32 %i.ld, ptr %i.kk, align 4, !tbaa !11
  %i.le = load float, ptr %i.kf, align 4, !tbaa !51
  store float %i.le, ptr %i.kg, align 4, !tbaa !51
  %i.lf = load i32, ptr %i.km, align 4, !tbaa !11
  store i32 %i.lf, ptr %i.kl, align 4, !tbaa !11
  store float %i.kx, ptr %i.kf, align 4, !tbaa !51
  %i.lg = trunc nuw nsw i64 %indvars.iv236.i.i to i32
  store i32 %i.lg, ptr %i.km, align 4, !tbaa !11
  br label %bb.az

bb.at:                                            ; preds = %.noexc88
  %i.lh = load float, ptr %i.kg, align 4, !tbaa !51
  %i.li = fcmp olt float %i.kx, %i.lh
  %i.lj = load float, ptr %i.kh, align 4, !tbaa !51 ; 3 uses
  br i1 %i.li, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store float %i.lj, ptr %i.ki, align 4, !tbaa !51
  %i.lk = load i32, ptr %i.kk, align 4, !tbaa !11
  store i32 %i.lk, ptr %i.kj, align 4, !tbaa !11
  %i.ll = load float, ptr %i.kg, align 4, !tbaa !51
  store float %i.ll, ptr %i.kh, align 4, !tbaa !51
  %i.lm = load i32, ptr %i.kl, align 4, !tbaa !11
  store i32 %i.lm, ptr %i.kk, align 4, !tbaa !11
  store float %i.kx, ptr %i.kg, align 4, !tbaa !51
  %i.ln = trunc nuw nsw i64 %indvars.iv236.i.i to i32
  store i32 %i.ln, ptr %i.kl, align 4, !tbaa !11
  br label %bb.az

bb.av:                                            ; preds = %bb.at
  %i.lo = fcmp olt float %i.kx, %i.lj
  br i1 %i.lo, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  store float %i.lj, ptr %i.ki, align 4, !tbaa !51
  %i.lp = load i32, ptr %i.kk, align 4, !tbaa !11
  store i32 %i.lp, ptr %i.kj, align 4, !tbaa !11
  store float %i.kx, ptr %i.kh, align 4, !tbaa !51
  %i.lq = trunc nuw nsw i64 %indvars.iv236.i.i to i32
  store i32 %i.lq, ptr %i.kk, align 4, !tbaa !11
  br label %bb.az

bb.ax:                                            ; preds = %bb.av
  %i.lr = load float, ptr %i.ki, align 4, !tbaa !51
  %i.ls = fcmp olt float %i.kx, %i.lr
  br i1 %i.ls, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  store float %i.kx, ptr %i.ki, align 4, !tbaa !51
  %i.lt = trunc nuw nsw i64 %indvars.iv236.i.i to i32
  store i32 %i.lt, ptr %i.kj, align 4, !tbaa !11
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %bb.aw, %bb.au, %bb.as, %bb.aq
  %indvars.iv.next237.i.i = add nuw nsw i64 %indvars.iv236.i.i, 1 ; 2 uses
  %exitcond240.not.i.i = icmp eq i64 %indvars.iv.next237.i.i, %wide.trip.count266.i.i
  br i1 %exitcond240.not.i.i, label %.lr.ph219.i.i, label %bb.aq, !llvm.loop !83

.lr.ph219.1.i.i:                                  ; preds = %bb.bi, %.noexc100
  %i.lu = load i32, ptr %i.kk, align 4, !tbaa !11
  %i.lv = sext i32 %i.lu to i64
  %i.lw = getelementptr inbounds [4 x i8], ptr %i.hx, i64 %i.lv
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !11
  %i.ly = sext i32 %i.lx to i64
  %i.lz = getelementptr inbounds [12 x i8], ptr %i.hv, i64 %i.ly
  invoke void @_Z6pbc_dxPK5t_pbcPKfS3_Pf(ptr noundef nonnull %24, ptr noundef %i.ke, ptr noundef %i.lz, ptr noundef nonnull %i.v)
          to label %.noexc89 unwind label %.loopexit.split-lp.loopexit

.noexc89:                                         ; preds = %.lr.ph219.1.i.i
  %i.ma = load i32, ptr %i.kl, align 4, !tbaa !11
  %i.mb = sext i32 %i.ma to i64
  %i.mc = getelementptr inbounds [4 x i8], ptr %i.hx, i64 %i.mb
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !11
  %i.me = sext i32 %i.md to i64
  %i.mf = getelementptr inbounds [12 x i8], ptr %i.hv, i64 %i.me
  invoke void @_Z6pbc_dxPK5t_pbcPKfS3_Pf(ptr noundef nonnull %24, ptr noundef %i.ke, ptr noundef %i.mf, ptr noundef nonnull %i.u)
          to label %.noexc90 unwind label %.loopexit.split-lp.loopexit

.noexc90:                                         ; preds = %.noexc89
  %i.mg = load float, ptr %i.hh, align 8, !tbaa !51
  %i.mh = load float, ptr %i.hj, align 8, !tbaa !51
  %i.mi = load <2 x float>, ptr %i.v, align 8, !tbaa !51 ; 2 uses
  %i.mj = load float, ptr %i.hg, align 4, !tbaa !51
  %i.mk = load <2 x float>, ptr %i.u, align 8, !tbaa !51 ; 2 uses
  %i.ml = load float, ptr %i.hi, align 4, !tbaa !51
  %i.mm = shufflevector <2 x float> %i.mi, <2 x float> %i.mk, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.mn = fmul <2 x float> %i.mm, %i.mm
  %i.mo = shufflevector <2 x float> %i.mi, <2 x float> %i.mk, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.mp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mo, <2 x float> %i.mo, <2 x float> %i.mn)
  %i.mq = insertelement <2 x float> poison, float %i.mg, i64 0
  %i.mr = insertelement <2 x float> %i.mq, float %i.mh, i64 1 ; 3 uses
  %i.ms = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mr, <2 x float> %i.mr, <2 x float> %i.mp)
  %i.mt = call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.ms)
  %i.mu = fdiv <2 x float> splat (float 1.000000e+00), %i.mt ; 3 uses
  %i.mv = shufflevector <2 x float> %i.mu, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.mw = extractelement <2 x float> %i.mu, i64 0
  %i.mx = fmul float %i.mj, %i.mw
  %i.my = extractelement <2 x float> %i.mu, i64 1
  %i.mz = fmul float %i.ml, %i.my
  %i.na = shufflevector <2 x float> %i.mo, <2 x float> %i.mr, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.nb = fmul <4 x float> %i.na, %i.mv           ; 4 uses
  %i.nc = fmul float %i.mx, %i.mz
  %i.nd = extractelement <4 x float> %i.nb, i64 0
  %i.ne = extractelement <4 x float> %i.nb, i64 2
  %i.nf = call float @llvm.fmuladd.f32(float %i.nd, float %i.ne, float %i.nc)
  %i.ng = extractelement <4 x float> %i.nb, i64 1
  %i.nh = extractelement <4 x float> %i.nb, i64 3
  %i.ni = call noundef float @llvm.fmuladd.f32(float %i.ng, float %i.nh, float %i.nf)
  %i.nj = fadd float %i.ni, f0x3EAAAAAB           ; 2 uses
  %i.nk = fmul float %i.nj, %i.nj                 ; 2 uses
  %i.nl = load float, ptr %i.tw, align 4, !tbaa !51
  %i.nm = fadd float %i.nl, %i.nk
  store float %i.nm, ptr %i.tw, align 4, !tbaa !51
  %i.nn = fmul float %i.nk, 2.001000e+03
  %i.no = fptosi float %i.nn to i32               ; 2 uses
  %49 = icmp slt i32 %i.no, 2001
  br i1 %49, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %.noexc90
  %50 = sext i32 %i.no to i64
  %i.np = getelementptr inbounds [4 x i8], ptr %i.jy, i64 %50 ; 2 uses
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !11
  %i.nr = add nsw i32 %i.nq, 1
  store i32 %i.nr, ptr %i.np, align 4, !tbaa !11
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %.noexc90
  %i.ns = load i32, ptr %i.kj, align 4, !tbaa !11
  %i.nt = sext i32 %i.ns to i64
  %i.nu = getelementptr inbounds [4 x i8], ptr %i.hx, i64 %i.nt
  %i.nv = load i32, ptr %i.nu, align 4, !tbaa !11
  %i.nw = sext i32 %i.nv to i64
  %i.nx = getelementptr inbounds [12 x i8], ptr %i.hv, i64 %i.nw
  invoke void @_Z6pbc_dxPK5t_pbcPKfS3_Pf(ptr noundef nonnull %24, ptr noundef %i.ke, ptr noundef %i.nx, ptr noundef nonnull %i.v)
          to label %.noexc91 unwind label %.loopexit.split-lp.loopexit

.noexc91:                                         ; preds = %bb.bb
  %i.ny = load i32, ptr %i.kl, align 4, !tbaa !11
  %i.nz = sext i32 %i.ny to i64
  %i.oa = getelementptr inbounds [4 x i8], ptr %i.hx, i64 %i.nz
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !11
  %i.oc = sext i32 %i.ob to i64
  %i.od = getelementptr inbounds [12 x i8], ptr %i.hv, i64 %i.oc
  invoke void @_Z6pbc_dxPK5t_pbcPKfS3_Pf(ptr noundef nonnull %24, ptr noundef %i.ke, ptr noundef %i.od, ptr noundef nonnull %i.u)
          to label %.noexc92 unwind label %.loopexit.split-lp.loopexit

.noexc92:                                         ; preds = %.noexc91
  %i.oe = load float, ptr %i.hh, align 8, !tbaa !51
  %i.of = load float, ptr %i.hj, align 8, !tbaa !51
  %i.og = load <2 x float>, ptr %i.v, align 8, !tbaa !51 ; 2 uses
  %i.oh = load float, ptr %i.hg, align 4, !tbaa !51
  %i.oi = load <2 x float>, ptr %i.u, align 8, !tbaa !51 ; 2 uses
  %i.oj = load float, ptr %i.hi, align 4, !tbaa !51
  %i.ok = shufflevector <2 x float> %i.og, <2 x float> %i.oi, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ol = fmul <2 x float> %i.ok, %i.ok
  %i.om = shufflevector <2 x float> %i.og, <2 x float> %i.oi, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.on = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.om, <2 x float> %i.om, <2 x float> %i.ol)
  %i.oo = insertelement <2 x float> poison, float %i.oe, i64 0
  %i.op = insertelement <2 x float> %i.oo, float %i.of, i64 1 ; 3 uses
  %i.oq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.op, <2 x float> %i.op, <2 x float> %i.on)
  %i.or = call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.oq)
  %i.os = fdiv <2 x float> splat (float 1.000000e+00), %i.or ; 3 uses
  %i.ot = shufflevector <2 x float> %i.os, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ou = extractelement <2 x float> %i.os, i64 0
  %i.ov = fmul float %i.oh, %i.ou
  %i.ow = extractelement <2 x float> %i.os, i64 1
  %i.ox = fmul float %i.oj, %i.ow
  %i.oy = shufflevector <2 x float> %i.om, <2 x float> %i.op, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.oz = fmul <4 x float> %i.oy, %i.ot           ; 4 uses
  %i.pa = fmul float %i.ov, %i.ox
  %i.pb = extractelement <4 x float> %i.oz, i64 0
  %i.pc = extractelement <4 x float> %i.oz, i64 2
  %i.pd = call float @llvm.fmuladd.f32(float %i.pb, float %i.pc, float %i.pa)
  %i.pe = extractelement <4 x float> %i.oz, i64 1
  %i.pf = extractelement <4 x float> %i.oz, i64 3
  %i.pg = call noundef float @llvm.fmuladd.f32(float %i.pe, float %i.pf, float %i.pd)
  %i.ph = fadd float %i.pg, f0x3EAAAAAB           ; 2 uses
  %i.pi = fmul float %i.ph, %i.ph                 ; 2 uses
  %i.pj = load float, ptr %i.tw, align 4, !tbaa !51
  %i.pk = fadd float %i.pj, %i.pi
  store float %i.pk, ptr %i.tw, align 4, !tbaa !51
  %i.pl = fmul float %i.pi, 2.001000e+03
  %i.pm = fptosi float %i.pl to i32               ; 2 uses
  %51 = icmp slt i32 %i.pm, 2001
  br i1 %51, label %bb.bc, label %.lr.ph219.2.i.i

bb.bc:                                            ; preds = %.noexc92
  %52 = sext i32 %i.pm to i64
  %i.pn = getelementptr inbounds [4 x i8], ptr %i.jy, i64 %52 ; 2 uses
  %i.po = load i32, ptr %i.pn, align 4, !tbaa !11
  %i.pp = add nsw i32 %i.po, 1
  store i32 %i.pp, ptr %i.pn, align 4, !tbaa !11
  br label %.lr.ph219.2.i.i

.lr.ph219.2.i.i:                                  ; preds = %bb.bc, %.noexc92
  %i.pq = load i32, ptr %i.kj, align 4, !tbaa !11
  %i.pr = sext i32 %i.pq to i64
  %i.ps = getelementptr inbounds [4 x i8], ptr %i.hx, i64 %i.pr
  %i.pt = load i32, ptr %i.ps, align 4, !tbaa !11
  %i.pu = sext i32 %i.pt to i64
  %i.pv = getelementptr inbounds [12 x i8], ptr %i.hv, i64 %i.pu
  invoke void @_Z6pbc_dxPK5t_pbcPKfS3_Pf(ptr noundef nonnull %24, ptr noundef %i.ke, ptr noundef %i.pv, ptr noundef nonnull %i.v)
          to label %.noexc93 unwind label %.loopexit.split-lp.loopexit

.noexc93:                                         ; preds = %.lr.ph219.2.i.i
  %i.pw = load i32, ptr %i.kk, align 4, !tbaa !11
  %i.px = sext i32 %i.pw to i64
  %i.py = getelementptr inbounds [4 x i8], ptr %i.hx, i64 %i.px
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !11
  %i.qa = sext i32 %i.pz to i64
  %i.qb = getelementptr inbounds [12 x i8], ptr %i.hv, i64 %i.qa
  invoke void @_Z6pbc_dxPK5t_pbcPKfS3_Pf(ptr noundef nonnull %24, ptr noundef %i.ke, ptr noundef %i.qb, ptr noundef nonnull %i.u)
          to label %.noexc94 unwind label %.loopexit.split-lp.loopexit

.noexc94:                                         ; preds = %.noexc93
  %i.qc = load float, ptr %i.hh, align 8, !tbaa !51
  %i.qd = load float, ptr %i.hj, align 8, !tbaa !51
  %i.qe = load <2 x float>, ptr %i.v, align 8, !tbaa !51 ; 2 uses
  %i.qf = load float, ptr %i.hg, align 4, !tbaa !51
  %i.qg = load <2 x float>, ptr %i.u, align 8, !tbaa !51 ; 2 uses
  %i.qh = load float, ptr %i.hi, align 4, !tbaa !51
  %i.qi = shufflevector <2 x float> %i.qe, <2 x float> %i.qg, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.qj = fmul <2 x float> %i.qi, %i.qi
  %i.qk = shufflevector <2 x float> %i.qe, <2 x float> %i.qg, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.ql = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qk, <2 x float> %i.qk, <2 x float> %i.qj)
  %i.qm = insertelement <2 x float> poison, float %i.qc, i64 0
  %i.qn = insertelement <2 x float> %i.qm, float %i.qd, i64 1 ; 3 uses
  %i.qo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qn, <2 x float> %i.qn, <2 x float> %i.ql)
  %i.qp = call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.qo)
  %i.qq = fdiv <2 x float> splat (float 1.000000e+00), %i.qp ; 3 uses
  %i.qr = shufflevector <2 x float> %i.qq, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.qs = extractelement <2 x float> %i.qq, i64 0
  %i.qt = fmul float %i.qf, %i.qs
  %i.qu = extractelement <2 x float> %i.qq, i64 1
  %i.qv = fmul float %i.qh, %i.qu
  %i.qw = shufflevector <2 x float> %i.qk, <2 x float> %i.qn, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.qx = fmul <4 x float> %i.qw, %i.qr           ; 4 uses
  %i.qy = fmul float %i.qt, %i.qv
  %i.qz = extractelement <4 x float> %i.qx, i64 0
  %i.ra = extractelement <4 x float> %i.qx, i64 2
  %i.rb = call float @llvm.fmuladd.f32(float %i.qz, float %i.ra, float %i.qy)
  %i.rc = extractelement <4 x float> %i.qx, i64 1
  %i.rd = extractelement <4 x float> %i.qx, i64 3
  %i.re = call noundef float @llvm.fmuladd.f32(float %i.rc, float %i.rd, float %i.rb)
  %i.rf = fadd float %i.re, f0x3EAAAAAB           ; 2 uses
  %i.rg = fmul float %i.rf, %i.rf                 ; 2 uses
  %i.rh = load float, ptr %i.tw, align 4, !tbaa !51
  %i.ri = fadd float %i.rh, %i.rg
  %i.rj = fmul float %i.rg, 2.001000e+03
  %i.rk = fptosi float %i.rj to i32               ; 2 uses
  %53 = icmp slt i32 %i.rk, 2001
  br i1 %53, label %bb.bd, label %.loopexit.2.i.i

bb.bd:                                            ; preds = %.noexc94
  %54 = sext i32 %i.rk to i64
  %i.rl = getelementptr inbounds [4 x i8], ptr %i.jy, i64 %54 ; 2 uses
  %i.rm = load i32, ptr %i.rl, align 4, !tbaa !11
  %i.rn = add nsw i32 %i.rm, 1
  store i32 %i.rn, ptr %i.rl, align 4, !tbaa !11
  br label %.loopexit.2.i.i

.loopexit.2.i.i:                                  ; preds = %bb.bd, %.noexc94
  %i.ro = fadd float %i.tp, 0.000000e+00
  %i.rp = fadd float %i.ro, %i.tr
  %i.rq = fadd float %i.rp, %i.tt
  %i.rr = fadd float %i.rq, %i.tv
  %i.rs = fmul float %i.rr, 2.500000e-01          ; 6 uses
  %i.rt = fmul float %i.ri, 3.000000e+00
  %i.ru = fmul float %i.rs, 1.200000e+01
  %i.rv = fmul float %i.rs, %i.ru                 ; 4 uses
  %i.rw = fmul float %i.rt, 3.125000e-02          ; 2 uses
  store float %i.rw, ptr %i.tw, align 4, !tbaa !51
  %.promoted.i.i = load float, ptr %i.tx, align 4, !tbaa !51
  %i.rx = load float, ptr %i.kf, align 4, !tbaa !51
  %i.ry = fsub float %i.rs, %i.rx                 ; 2 uses
  %i.rz = fmul float %i.ry, %i.ry
  %i.sa = fdiv float %i.rz, %i.rv
  %i.sb = fadd float %.promoted.i.i, %i.sa        ; 2 uses
  store float %i.sb, ptr %i.tx, align 4, !tbaa !51
  %i.sc = load float, ptr %i.kg, align 4, !tbaa !51
  %i.sd = fsub float %i.rs, %i.sc                 ; 2 uses
  %i.se = fmul float %i.sd, %i.sd
  %i.sf = fdiv float %i.se, %i.rv
  %i.sg = fadd float %i.sb, %i.sf                 ; 2 uses
  store float %i.sg, ptr %i.tx, align 4, !tbaa !51
  %i.sh = load float, ptr %i.kh, align 4, !tbaa !51
  %i.si = fsub float %i.rs, %i.sh                 ; 2 uses
  %i.sj = fmul float %i.si, %i.si
  %i.sk = fdiv float %i.sj, %i.rv
  %i.sl = fadd float %i.sg, %i.sk                 ; 2 uses
  store float %i.sl, ptr %i.tx, align 4, !tbaa !51
  %i.sm = load float, ptr %i.ki, align 4, !tbaa !51
  %i.sn = fsub float %i.rs, %i.sm                 ; 2 uses
  %i.so = fmul float %i.sn, %i.sn
  %i.sp = fdiv float %i.so, %i.rv
  %i.sq = fadd float %i.sl, %i.sp                 ; 2 uses
  store float %i.sq, ptr %i.tx, align 4, !tbaa !51
  %i.sr = insertelement <2 x float> poison, float %i.rw, i64 0
  %i.ss = insertelement <2 x float> %i.sr, float %i.sq, i64 1
  %i.st = fadd <2 x float> %i.ka, %i.ss           ; 2 uses
  %gep.i.i = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv263.i.i
  %i.su = load float, ptr %gep.i.i, align 4, !tbaa !51
  %i.sv = load float, ptr %i.hk, align 4, !tbaa !51
  %i.sw = fdiv float %i.su, %i.sv
  %i.sx = fadd float %i.sw, 1.000000e+00
  %i.sy = fmul float %i.sx, %i.hl
  %i.sz = call noundef float @llvm.round.f32(float %i.sy)
  %i.ta = fptosi float %i.sz to i32
  %i.tb = srem i32 %i.ta, %i.dx
  %i.tc = load float, ptr %i.tw, align 4, !tbaa !51
  %i.td = sext i32 %i.tb to i64                   ; 3 uses
  %i.te = getelementptr inbounds [4 x i8], ptr %i.ek, i64 %i.td ; 2 uses
  %i.tf = load float, ptr %i.te, align 4, !tbaa !51
  %i.tg = fadd float %i.tc, %i.tf
  store float %i.tg, ptr %i.te, align 4, !tbaa !51
  %i.th = load float, ptr %i.tx, align 4, !tbaa !51
  %i.ti = getelementptr inbounds [4 x i8], ptr %i.el, i64 %i.td ; 2 uses
  %i.tj = load float, ptr %i.ti, align 4, !tbaa !51
  %i.tk = fadd float %i.th, %i.tj
  store float %i.tk, ptr %i.ti, align 4, !tbaa !51
  %i.tl = getelementptr inbounds [4 x i8], ptr %i.ia, i64 %i.td ; 2 uses
  %i.tm = load float, ptr %i.tl, align 4, !tbaa !51
  %i.tn = fadd float %i.tm, 1.000000e+00
  store float %i.tn, ptr %i.tl, align 4, !tbaa !51
  %indvars.iv.next264.i.i = add nuw nsw i64 %indvars.iv263.i.i, 1 ; 2 uses
  %exitcond267.not.i.i = icmp eq i64 %indvars.iv.next264.i.i, %wide.trip.count266.i.i
  br i1 %exitcond267.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !84

.lr.ph219.i.i:                                    ; preds = %bb.az
  %i.to = load float, ptr %i.kf, align 4, !tbaa !51
  %i.tp = call noundef float @sqrtf(float noundef %i.to) #17 ; 2 uses
  store float %i.tp, ptr %i.kf, align 4, !tbaa !51
  %i.tq = load float, ptr %i.kg, align 4, !tbaa !51
  %i.tr = call noundef float @sqrtf(float noundef %i.tq) #17 ; 2 uses
  store float %i.tr, ptr %i.kg, align 4, !tbaa !51
  %i.ts = load float, ptr %i.kh, align 4, !tbaa !51
  %i.tt = call noundef float @sqrtf(float noundef %i.ts) #17 ; 2 uses
  store float %i.tt, ptr %i.kh, align 4, !tbaa !51
  %i.tu = load float, ptr %i.ki, align 4, !tbaa !51
  %i.tv = call noundef float @sqrtf(float noundef %i.tu) #17 ; 2 uses
  store float %i.tv, ptr %i.ki, align 4, !tbaa !51
  %i.tw = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %indvars.iv263.i.i ; 14 uses
  store float 0.000000e+00, ptr %i.tw, align 4, !tbaa !51
  %i.tx = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %indvars.iv263.i.i ; 7 uses
  store float 0.000000e+00, ptr %i.tx, align 4, !tbaa !51
  %i.ty = load i32, ptr %i.kl, align 4, !tbaa !11
  %i.tz = sext i32 %i.ty to i64
  %i.ua = getelementptr inbounds [4 x i8], ptr %i.hx, i64 %i.tz
  %i.ub = load i32, ptr %i.ua, align 4, !tbaa !11
  %i.uc = sext i32 %i.ub to i64
  %i.ud = getelementptr inbounds [12 x i8], ptr %i.hv, i64 %i.uc
  invoke void @_Z6pbc_dxPK5t_pbcPKfS3_Pf(ptr noundef nonnull %24, ptr noundef %i.ke, ptr noundef %i.ud, ptr noundef nonnull %i.v)
          to label %.noexc95 unwind label %.loopexit.split-lp.loopexit

.noexc95:                                         ; preds = %.lr.ph219.i.i
  %i.ue = load i32, ptr %i.km, align 4, !tbaa !11
  %i.uf = sext i32 %i.ue to i64
  %i.ug = getelementptr inbounds [4 x i8], ptr %i.hx, i64 %i.uf
  %i.uh = load i32, ptr %i.ug, align 4, !tbaa !11
  %i.ui = sext i32 %i.uh to i64
  %i.uj = getelementptr inbounds [12 x i8], ptr %i.hv, i64 %i.ui
  invoke void @_Z6pbc_dxPK5t_pbcPKfS3_Pf(ptr noundef nonnull %24, ptr noundef %i.ke, ptr noundef %i.uj, ptr noundef nonnull %i.u)
          to label %.noexc96 unwind label %.loopexit.split-lp.loopexit

.noexc96:                                         ; preds = %.noexc95
  %i.uk = load float, ptr %i.hh, align 8, !tbaa !51
  %i.ul = load float, ptr %i.hj, align 8, !tbaa !51
  %i.um = load <2 x float>, ptr %i.v, align 8, !tbaa !51 ; 2 uses
  %i.un = load float, ptr %i.hg, align 4, !tbaa !51
  %i.uo = load <2 x float>, ptr %i.u, align 8, !tbaa !51 ; 2 uses
  %i.up = load float, ptr %i.hi, align 4, !tbaa !51
  %i.uq = shufflevector <2 x float> %i.um, <2 x float> %i.uo, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ur = fmul <2 x float> %i.uq, %i.uq
  %i.us = shufflevector <2 x float> %i.um, <2 x float> %i.uo, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.ut = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.us, <2 x float> %i.us, <2 x float> %i.ur)
  %i.uu = insertelement <2 x float> poison, float %i.uk, i64 0
  %i.uv = insertelement <2 x float> %i.uu, float %i.ul, i64 1 ; 3 uses
  %i.uw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.uv, <2 x float> %i.uv, <2 x float> %i.ut)
  %i.ux = call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.uw)
  %i.uy = fdiv <2 x float> splat (float 1.000000e+00), %i.ux ; 3 uses
  %i.uz = shufflevector <2 x float> %i.uy, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.va = extractelement <2 x float> %i.uy, i64 0
  %i.vb = fmul float %i.un, %i.va
  %i.vc = extractelement <2 x float> %i.uy, i64 1
  %i.vd = fmul float %i.up, %i.vc
  %i.ve = shufflevector <2 x float> %i.us, <2 x float> %i.uv, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.vf = fmul <4 x float> %i.ve, %i.uz           ; 4 uses
  %i.vg = fmul float %i.vb, %i.vd
  %i.vh = extractelement <4 x float> %i.vf, i64 0
  %i.vi = extractelement <4 x float> %i.vf, i64 2
  %i.vj = call float @llvm.fmuladd.f32(float %i.vh, float %i.vi, float %i.vg)
  %i.vk = extractelement <4 x float> %i.vf, i64 1
  %i.vl = extractelement <4 x float> %i.vf, i64 3
  %i.vm = call noundef float @llvm.fmuladd.f32(float %i.vk, float %i.vl, float %i.vj)
  %i.vn = fadd float %i.vm, f0x3EAAAAAB           ; 2 uses
  %i.vo = fmul float %i.vn, %i.vn                 ; 2 uses
  %i.vp = load float, ptr %i.tw, align 4, !tbaa !51
  %i.vq = fadd float %i.vp, %i.vo
  store float %i.vq, ptr %i.tw, align 4, !tbaa !51
  %i.vr = fmul float %i.vo, 2.001000e+03
  %i.vs = fptosi float %i.vr to i32               ; 2 uses
  %55 = icmp slt i32 %i.vs, 2001
  br i1 %55, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %.noexc96
  %56 = sext i32 %i.vs to i64
  %i.vt = getelementptr inbounds [4 x i8], ptr %i.jy, i64 %56 ; 2 uses
  %i.vu = load i32, ptr %i.vt, align 4, !tbaa !11
  %i.vv = add nsw i32 %i.vu, 1
  store i32 %i.vv, ptr %i.vt, align 4, !tbaa !11
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %.noexc96
  %i.vw = load i32, ptr %i.kk, align 4, !tbaa !11
  %i.vx = sext i32 %i.vw to i64
  %i.vy = getelementptr inbounds [4 x i8], ptr %i.hx, i64 %i.vx
  %i.vz = load i32, ptr %i.vy, align 4, !tbaa !11
  %i.wa = sext i32 %i.vz to i64
  %i.wb = getelementptr inbounds [12 x i8], ptr %i.hv, i64 %i.wa
  invoke void @_Z6pbc_dxPK5t_pbcPKfS3_Pf(ptr noundef nonnull %24, ptr noundef %i.ke, ptr noundef %i.wb, ptr noundef nonnull %i.v)
          to label %.noexc97 unwind label %.loopexit.split-lp.loopexit

.noexc97:                                         ; preds = %bb.bf
  %i.wc = load i32, ptr %i.km, align 4, !tbaa !11
  %i.wd = sext i32 %i.wc to i64
  %i.we = getelementptr inbounds [4 x i8], ptr %i.hx, i64 %i.wd
  %i.wf = load i32, ptr %i.we, align 4, !tbaa !11
  %i.wg = sext i32 %i.wf to i64
  %i.wh = getelementptr inbounds [12 x i8], ptr %i.hv, i64 %i.wg
  invoke void @_Z6pbc_dxPK5t_pbcPKfS3_Pf(ptr noundef nonnull %24, ptr noundef %i.ke, ptr noundef %i.wh, ptr noundef nonnull %i.u)
          to label %.noexc98 unwind label %.loopexit.split-lp.loopexit

.noexc98:                                         ; preds = %.noexc97
  %i.wi = load float, ptr %i.hh, align 8, !tbaa !51
  %i.wj = load float, ptr %i.hj, align 8, !tbaa !51
  %i.wk = load <2 x float>, ptr %i.v, align 8, !tbaa !51 ; 2 uses
  %i.wl = load float, ptr %i.hg, align 4, !tbaa !51
  %i.wm = load <2 x float>, ptr %i.u, align 8, !tbaa !51 ; 2 uses
  %i.wn = load float, ptr %i.hi, align 4, !tbaa !51
  %i.wo = shufflevector <2 x float> %i.wk, <2 x float> %i.wm, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.wp = fmul <2 x float> %i.wo, %i.wo
  %i.wq = shufflevector <2 x float> %i.wk, <2 x float> %i.wm, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.wr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wq, <2 x float> %i.wq, <2 x float> %i.wp)
  %i.ws = insertelement <2 x float> poison, float %i.wi, i64 0
  %i.wt = insertelement <2 x float> %i.ws, float %i.wj, i64 1 ; 3 uses
  %i.wu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wt, <2 x float> %i.wt, <2 x float> %i.wr)
  %i.wv = call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.wu)
  %i.ww = fdiv <2 x float> splat (float 1.000000e+00), %i.wv ; 3 uses
  %i.wx = shufflevector <2 x float> %i.ww, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.wy = extractelement <2 x float> %i.ww, i64 0
  %i.wz = fmul float %i.wl, %i.wy
  %i.xa = extractelement <2 x float> %i.ww, i64 1
  %i.xb = fmul float %i.wn, %i.xa
  %i.xc = shufflevector <2 x float> %i.wq, <2 x float> %i.wt, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.xd = fmul <4 x float> %i.xc, %i.wx           ; 4 uses
  %i.xe = fmul float %i.wz, %i.xb
  %i.xf = extractelement <4 x float> %i.xd, i64 0
  %i.xg = extractelement <4 x float> %i.xd, i64 2
  %i.xh = call float @llvm.fmuladd.f32(float %i.xf, float %i.xg, float %i.xe)
  %i.xi = extractelement <4 x float> %i.xd, i64 1
  %i.xj = extractelement <4 x float> %i.xd, i64 3
  %i.xk = call noundef float @llvm.fmuladd.f32(float %i.xi, float %i.xj, float %i.xh)
  %i.xl = fadd float %i.xk, f0x3EAAAAAB           ; 2 uses
  %i.xm = fmul float %i.xl, %i.xl                 ; 2 uses
  %i.xn = load float, ptr %i.tw, align 4, !tbaa !51
  %i.xo = fadd float %i.xn, %i.xm
  store float %i.xo, ptr %i.tw, align 4, !tbaa !51
  %i.xp = fmul float %i.xm, 2.001000e+03
  %i.xq = fptosi float %i.xp to i32               ; 2 uses
  %57 = icmp slt i32 %i.xq, 2001
  br i1 %57, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %.noexc98
  %58 = sext i32 %i.xq to i64
  %i.xr = getelementptr inbounds [4 x i8], ptr %i.jy, i64 %58 ; 2 uses
  %i.xs = load i32, ptr %i.xr, align 4, !tbaa !11
  %i.xt = add nsw i32 %i.xs, 1
  store i32 %i.xt, ptr %i.xr, align 4, !tbaa !11
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %.noexc98
  %i.xu = load i32, ptr %i.kj, align 4, !tbaa !11
  %i.xv = sext i32 %i.xu to i64
  %i.xw = getelementptr inbounds [4 x i8], ptr %i.hx, i64 %i.xv
  %i.xx = load i32, ptr %i.xw, align 4, !tbaa !11
  %i.xy = sext i32 %i.xx to i64
  %i.xz = getelementptr inbounds [12 x i8], ptr %i.hv, i64 %i.xy
  invoke void @_Z6pbc_dxPK5t_pbcPKfS3_Pf(ptr noundef nonnull %24, ptr noundef %i.ke, ptr noundef %i.xz, ptr noundef nonnull %i.v)
          to label %.noexc99 unwind label %.loopexit.split-lp.loopexit

.noexc99:                                         ; preds = %bb.bh
  %i.ya = load i32, ptr %i.km, align 4, !tbaa !11
  %i.yb = sext i32 %i.ya to i64
  %i.yc = getelementptr inbounds [4 x i8], ptr %i.hx, i64 %i.yb
  %i.yd = load i32, ptr %i.yc, align 4, !tbaa !11
  %i.ye = sext i32 %i.yd to i64
  %i.yf = getelementptr inbounds [12 x i8], ptr %i.hv, i64 %i.ye
  invoke void @_Z6pbc_dxPK5t_pbcPKfS3_Pf(ptr noundef nonnull %24, ptr noundef %i.ke, ptr noundef %i.yf, ptr noundef nonnull %i.u)
          to label %.noexc100 unwind label %.loopexit.split-lp.loopexit

.noexc100:                                        ; preds = %.noexc99
  %i.yg = load float, ptr %i.hh, align 8, !tbaa !51
  %i.yh = load float, ptr %i.hj, align 8, !tbaa !51
  %i.yi = load <2 x float>, ptr %i.v, align 8, !tbaa !51 ; 2 uses
  %i.yj = load float, ptr %i.hg, align 4, !tbaa !51
  %i.yk = load <2 x float>, ptr %i.u, align 8, !tbaa !51 ; 2 uses
  %i.yl = load float, ptr %i.hi, align 4, !tbaa !51
  %i.ym = shufflevector <2 x float> %i.yi, <2 x float> %i.yk, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.yn = fmul <2 x float> %i.ym, %i.ym
  %i.yo = shufflevector <2 x float> %i.yi, <2 x float> %i.yk, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.yp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.yo, <2 x float> %i.yo, <2 x float> %i.yn)
  %i.yq = insertelement <2 x float> poison, float %i.yg, i64 0
  %i.yr = insertelement <2 x float> %i.yq, float %i.yh, i64 1 ; 3 uses
  %i.ys = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.yr, <2 x float> %i.yr, <2 x float> %i.yp)
  %i.yt = call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.ys)
  %i.yu = fdiv <2 x float> splat (float 1.000000e+00), %i.yt ; 3 uses
  %i.yv = shufflevector <2 x float> %i.yu, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.yw = extractelement <2 x float> %i.yu, i64 0
  %i.yx = fmul float %i.yj, %i.yw
  %i.yy = extractelement <2 x float> %i.yu, i64 1
  %i.yz = fmul float %i.yl, %i.yy
  %i.za = shufflevector <2 x float> %i.yo, <2 x float> %i.yr, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.zb = fmul <4 x float> %i.za, %i.yv           ; 4 uses
  %i.zc = fmul float %i.yx, %i.yz
  %i.zd = extractelement <4 x float> %i.zb, i64 0
  %i.ze = extractelement <4 x float> %i.zb, i64 2
  %i.zf = call float @llvm.fmuladd.f32(float %i.zd, float %i.ze, float %i.zc)
  %i.zg = extractelement <4 x float> %i.zb, i64 1
  %i.zh = extractelement <4 x float> %i.zb, i64 3
  %i.zi = call noundef float @llvm.fmuladd.f32(float %i.zg, float %i.zh, float %i.zf)
  %i.zj = fadd float %i.zi, f0x3EAAAAAB           ; 2 uses
  %i.zk = fmul float %i.zj, %i.zj                 ; 2 uses
  %i.zl = load float, ptr %i.tw, align 4, !tbaa !51
  %i.zm = fadd float %i.zl, %i.zk
  store float %i.zm, ptr %i.tw, align 4, !tbaa !51
  %i.zn = fmul float %i.zk, 2.001000e+03
  %i.zo = fptosi float %i.zn to i32               ; 2 uses
  %59 = icmp slt i32 %i.zo, 2001
  br i1 %59, label %bb.bi, label %.lr.ph219.1.i.i

bb.bi:                                            ; preds = %.noexc100
  %60 = sext i32 %i.zo to i64
  %i.zp = getelementptr inbounds [4 x i8], ptr %i.jy, i64 %60 ; 2 uses
  %i.zq = load i32, ptr %i.zp, align 4, !tbaa !11
  %i.zr = add nsw i32 %i.zq, 1
  store i32 %i.zr, ptr %i.zp, align 4, !tbaa !11
  br label %.lr.ph219.1.i.i

._crit_edge.i.i:                                  ; preds = %.loopexit.2.i.i, %.noexc87
  %i.zs = phi <2 x float> [ zeroinitializer, %.noexc87 ], [ %i.st, %.loopexit.2.i.i ]
  %i.zt = sitofp i32 %i.hw to float
  %i.zu = insertelement <2 x float> poison, float %i.zt, i64 0
  %i.zv = shufflevector <2 x float> %i.zu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zw = fdiv <2 x float> %i.zs, %i.zv
  br i1 %i.hm, label %.lr.ph226.i.i.preheader, label %_ZL23find_nearest_neighbours7PbcTypeiPA3_fS1_iPKiPfS4_iiS4_S4_P9gmx_rmpbc.exit.i

.lr.ph226.i.i.preheader:                          ; preds = %._crit_edge.i.i
  br i1 %min.iters.check634, label %.lr.ph226.i.i.preheader767, label %vector.memcheck621

vector.memcheck621:                               ; preds = %.lr.ph226.i.i.preheader
  %scevgep622 = getelementptr i8, ptr %i.ia, i64 %i.hn ; 2 uses
  %bound0626 = icmp ult ptr %i.ek, %scevgep622
  %bound1627 = icmp ult ptr %i.ia, %scevgep588
  %found.conflict628 = and i1 %bound0626, %bound1627
  %conflict.rdx629 = or i1 %found.conflict625, %found.conflict628
  %bound0630 = icmp ult ptr %i.el, %scevgep622
  %bound1631 = icmp ult ptr %i.ia, %scevgep589
  %found.conflict632 = and i1 %bound0630, %bound1631
  %conflict.rdx633 = or i1 %conflict.rdx629, %found.conflict632
  br i1 %conflict.rdx633, label %.lr.ph226.i.i.preheader767, label %vector.body637

vector.body637:                                   ; preds = %vector.memcheck621, %vector.body637
  %index638 = phi i64 [ %index.next642, %vector.body637 ], [ 0, %vector.memcheck621 ] ; 4 uses
  %i.zx = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %index638
  %wide.load639 = load <8 x float>, ptr %i.zx, align 4, !tbaa !51, !alias.scope !142 ; 3 uses
  %i.zy = fcmp ogt <8 x float> %wide.load639, zeroinitializer ; 4 uses
  %i.zz = getelementptr [4 x i8], ptr %i.ek, i64 %index638 ; 2 uses
  %wide.masked.load = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.zz, <8 x i1> %i.zy, <8 x float> poison), !tbaa !51, !alias.scope !143, !noalias !144
  %i.aaa = fdiv <8 x float> %wide.masked.load, %wide.load639
  call void @llvm.masked.store.v8f32.p0(<8 x float> %i.aaa, ptr align 4 %i.zz, <8 x i1> %i.zy), !tbaa !51, !alias.scope !143, !noalias !144
  %i.aab = getelementptr [4 x i8], ptr %i.el, i64 %index638 ; 2 uses
  %wide.masked.load641 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.aab, <8 x i1> %i.zy, <8 x float> poison), !tbaa !51, !alias.scope !145, !noalias !142
  %i.aac = fdiv <8 x float> %wide.masked.load641, %wide.load639
  call void @llvm.masked.store.v8f32.p0(<8 x float> %i.aac, ptr align 4 %i.aab, <8 x i1> %i.zy), !tbaa !51, !alias.scope !145, !noalias !142
  %index.next642 = add nuw i64 %index638, 8       ; 2 uses
  %i.aad = icmp eq i64 %index.next642, %n.vec636
  br i1 %i.aad, label %middle.block643, label %vector.body637, !llvm.loop !89

middle.block643:                                  ; preds = %vector.body637
  br i1 %cmp.n644, label %_ZL23find_nearest_neighbours7PbcTypeiPA3_fS1_iPKiPfS4_iiS4_S4_P9gmx_rmpbc.exit.i, label %.lr.ph226.i.i.preheader767

.lr.ph226.i.i.preheader767:                       ; preds = %vector.memcheck621, %.lr.ph226.i.i.preheader, %middle.block643
  %indvars.iv268.i.i.ph = phi i64 [ 0, %vector.memcheck621 ], [ 0, %.lr.ph226.i.i.preheader ], [ %n.vec636, %middle.block643 ] ; 6 uses
  br i1 %lcmp.mod834.not, label %.lr.ph226.i.i.prol.loopexit, label %.lr.ph226.i.i.prol

.lr.ph226.i.i.prol:                               ; preds = %.lr.ph226.i.i.preheader767
  %i.aae = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %indvars.iv268.i.i.ph ; 2 uses
  %i.aaf = load float, ptr %i.aae, align 4, !tbaa !51 ; 2 uses
  %i.aag = fcmp ogt float %i.aaf, 0.000000e+00
  br i1 %i.aag, label %bb.bj, label %.lr.ph226.i.i.prol.loopexit.unr-lcssa

bb.bj:                                            ; preds = %.lr.ph226.i.i.prol
  %i.aah = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %indvars.iv268.i.i.ph ; 2 uses
  %i.aai = load float, ptr %i.aah, align 4, !tbaa !51
  %i.aaj = fdiv float %i.aai, %i.aaf
  store float %i.aaj, ptr %i.aah, align 4, !tbaa !51
  %i.aak = load float, ptr %i.aae, align 4, !tbaa !51
  %i.aal = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %indvars.iv268.i.i.ph ; 2 uses
  %i.aam = load float, ptr %i.aal, align 4, !tbaa !51
  %i.aan = fdiv float %i.aam, %i.aak
  store float %i.aan, ptr %i.aal, align 4, !tbaa !51
  br label %.lr.ph226.i.i.prol.loopexit.unr-lcssa

.lr.ph226.i.i.prol.loopexit.unr-lcssa:            ; preds = %bb.bj, %.lr.ph226.i.i.prol
  %indvars.iv.next269.i.i.prol = or disjoint i64 %indvars.iv268.i.i.ph, 1
  br label %.lr.ph226.i.i.prol.loopexit

.lr.ph226.i.i.prol.loopexit:                      ; preds = %.lr.ph226.i.i.prol.loopexit.unr-lcssa, %.lr.ph226.i.i.preheader767
  %indvars.iv268.i.i.unr = phi i64 [ %indvars.iv268.i.i.ph, %.lr.ph226.i.i.preheader767 ], [ %indvars.iv.next269.i.i.prol, %.lr.ph226.i.i.prol.loopexit.unr-lcssa ]
  %i.aao = icmp eq i64 %indvars.iv268.i.i.ph, %i.hs
  br i1 %i.aao, label %_ZL23find_nearest_neighbours7PbcTypeiPA3_fS1_iPKiPfS4_iiS4_S4_P9gmx_rmpbc.exit.i, label %.lr.ph226.i.i

.lr.ph226.i.i:                                    ; preds = %.lr.ph226.i.i.prol.loopexit, %bb.bm
  %indvars.iv268.i.i = phi i64 [ %indvars.iv.next269.i.i.1, %bb.bm ], [ %indvars.iv268.i.i.unr, %.lr.ph226.i.i.prol.loopexit ] ; 5 uses
  %i.aap = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %indvars.iv268.i.i ; 2 uses
  %i.aaq = load float, ptr %i.aap, align 4, !tbaa !51 ; 2 uses
  %i.aar = fcmp ogt float %i.aaq, 0.000000e+00
  br i1 %i.aar, label %bb.bk, label %.lr.ph226.i.i.1

bb.bk:                                            ; preds = %.lr.ph226.i.i
  %i.aas = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %indvars.iv268.i.i ; 2 uses
  %i.aat = load float, ptr %i.aas, align 4, !tbaa !51
  %i.aau = fdiv float %i.aat, %i.aaq
  store float %i.aau, ptr %i.aas, align 4, !tbaa !51
  %i.aav = load float, ptr %i.aap, align 4, !tbaa !51
  %i.aaw = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %indvars.iv268.i.i ; 2 uses
  %i.aax = load float, ptr %i.aaw, align 4, !tbaa !51
  %i.aay = fdiv float %i.aax, %i.aav
  store float %i.aay, ptr %i.aaw, align 4, !tbaa !51
  br label %.lr.ph226.i.i.1

.lr.ph226.i.i.1:                                  ; preds = %bb.bk, %.lr.ph226.i.i
  %indvars.iv.next269.i.i = add nuw nsw i64 %indvars.iv268.i.i, 1 ; 3 uses
  %i.aaz = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %indvars.iv.next269.i.i ; 2 uses
  %i.aba = load float, ptr %i.aaz, align 4, !tbaa !51 ; 2 uses
  %i.abb = fcmp ogt float %i.aba, 0.000000e+00
  br i1 %i.abb, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %.lr.ph226.i.i.1
  %i.abc = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %indvars.iv.next269.i.i ; 2 uses
  %i.abd = load float, ptr %i.abc, align 4, !tbaa !51
  %i.abe = fdiv float %i.abd, %i.aba
  store float %i.abe, ptr %i.abc, align 4, !tbaa !51
  %i.abf = load float, ptr %i.aaz, align 4, !tbaa !51
  %i.abg = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %indvars.iv.next269.i.i ; 2 uses
  %i.abh = load float, ptr %i.abg, align 4, !tbaa !51
  %i.abi = fdiv float %i.abh, %i.abf
  store float %i.abi, ptr %i.abg, align 4, !tbaa !51
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %.lr.ph226.i.i.1
  %indvars.iv.next269.i.i.1 = add nuw nsw i64 %indvars.iv268.i.i, 2 ; 2 uses
  %exitcond272.not.i.i.1 = icmp eq i64 %indvars.iv.next269.i.i.1, %wide.trip.count271.i.i
  br i1 %exitcond272.not.i.i.1, label %_ZL23find_nearest_neighbours7PbcTypeiPA3_fS1_iPKiPfS4_iiS4_S4_P9gmx_rmpbc.exit.i, label %.lr.ph226.i.i, !llvm.loop !90

_ZL23find_nearest_neighbours7PbcTypeiPA3_fS1_iPKiPfS4_iiS4_S4_P9gmx_rmpbc.exit.i: ; preds = %.lr.ph226.i.i.prol.loopexit, %bb.bm, %middle.block643, %._crit_edge.i.i
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.55, i32 noundef 270, ptr noundef %i.ia)
          to label %.noexc101 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc101:                                        ; preds = %_ZL23find_nearest_neighbours7PbcTypeiPA3_fS1_iPKiPfS4_iiS4_S4_P9gmx_rmpbc.exit.i
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.55, i32 noundef 271, ptr noundef %i.jy)
          to label %.noexc102 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc102:                                        ; preds = %.noexc101
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.55, i32 noundef 272, ptr noundef %i.jw)
          to label %.noexc103 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc103:                                        ; preds = %.noexc102
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.55, i32 noundef 273, ptr noundef %i.jx)
          to label %.noexc104 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc104:                                        ; preds = %.noexc103
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.55, i32 noundef 276, ptr noundef %i.ib)
          to label %.noexc105 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc105:                                        ; preds = %.noexc104
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.55, i32 noundef 277, ptr noundef %i.ic)
          to label %.noexc106 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc106:                                        ; preds = %.noexc105
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.55, i32 noundef 276, ptr noundef %.sroa.8.0.i.i)
          to label %.noexc107 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc107:                                        ; preds = %.noexc106
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.55, i32 noundef 277, ptr noundef %.sroa.9.0.i.i)
          to label %.noexc108 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc108:                                        ; preds = %.noexc107
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.55, i32 noundef 276, ptr noundef %.sroa.15.0.i.i)
          to label %.noexc109 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc109:                                        ; preds = %.noexc108
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.55, i32 noundef 277, ptr noundef %.sroa.17.0.i.i)
          to label %.noexc110 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc110:                                        ; preds = %.noexc109
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.55, i32 noundef 276, ptr noundef %.sroa.23.0.i.i)
          to label %.noexc111 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc111:                                        ; preds = %.noexc110
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.55, i32 noundef 277, ptr noundef %.sroa.25.0.i.i)
          to label %.noexc112 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc112:                                        ; preds = %.noexc111
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #17
  br i1 %i.hm, label %iter.check, label %._crit_edge.i

iter.check:                                       ; preds = %.noexc112
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx604
  br i1 %brmerge, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check605, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 5 uses
  %i.abj = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %index ; 2 uses
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abj, i64 32
  %wide.load = load <8 x float>, ptr %i.abj, align 4, !tbaa !51, !alias.scope !146
  %wide.load606 = load <8 x float>, ptr %i.abk, align 4, !tbaa !51, !alias.scope !146
  %i.abl = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %index ; 3 uses
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abl, i64 32 ; 2 uses
  %wide.load607 = load <8 x float>, ptr %i.abl, align 4, !tbaa !51, !alias.scope !147, !noalias !148
  %wide.load608 = load <8 x float>, ptr %i.abm, align 4, !tbaa !51, !alias.scope !147, !noalias !148
  %i.abn = fadd <8 x float> %wide.load, %wide.load607
  %i.abo = fadd <8 x float> %wide.load606, %wide.load608
  store <8 x float> %i.abn, ptr %i.abl, align 4, !tbaa !51, !alias.scope !147, !noalias !148
  store <8 x float> %i.abo, ptr %i.abm, align 4, !tbaa !51, !alias.scope !147, !noalias !148
  %i.abp = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %index ; 2 uses
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abp, i64 32
end_hunk_0
