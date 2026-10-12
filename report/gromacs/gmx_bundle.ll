Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_bundle?download=true
inline.NumInlined: 331
inline.NumDeleted: 135
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_Z10gmx_bundleiPPc:bb.a
          to label %bb.dx unwind label %bb.eh     ; 0 uses

bb.dx:                                            ; preds = %bb.dw
  %i.sc = getelementptr inbounds nuw i8, ptr %38, i64 32 ; 2 uses
  %i.sd = load ptr, ptr %i.sc, align 8, !tbaa !17 ; 2 uses
  %.not.i.i.i396 = icmp eq ptr %i.sd, null
  br i1 %.not.i.i.i396, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i397, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.sc, ptr noundef nonnull %i.sd) #17
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i397

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i397: ; preds = %bb.dy, %bb.dx
  %i.se = load ptr, ptr %38, align 8, !tbaa !20   ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 2 uses
  %i.sg = icmp eq ptr %i.se, %i.sf
  br i1 %i.sg, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit400, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i398

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i398: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i397
  %i.sh = load i64, ptr %i.sf, align 8, !tbaa !21
  %i.si = add i64 %i.sh, 1
  call void @_ZdlPvm(ptr noundef %i.se, i64 noundef %i.si) #18
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit400

_ZNSt10filesystem7__cxx114pathD2Ev.exit400:       ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i397, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i398
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #17
  %i.sj = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.sk = load i32, ptr %i.d, align 4, !tbaa !90
  %i.sl = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.sm = load i32, ptr %i.sl, align 8, !tbaa !95
  %i.sn = invoke noundef ptr @_Z14gmx_rmpbc_initPK6t_idef7PbcTypei(ptr noundef nonnull %i.sj, i32 noundef %i.sk, i32 noundef %i.sm)
          to label %.preheader unwind label %.loopexit.split-lp ; 2 uses

.preheader:                                       ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit400
  %i.so = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.sp = getelementptr inbounds nuw i8, ptr %4, i64 2352
  %i.sq = uitofp nneg i32 %i.df to double
  %i.sr = fdiv double 1.000000e+00, %i.sq
  %i.ss = fptrunc double %i.sr to float           ; 3 uses
  %i.st = mul nuw nsw i64 %i.dr, 12               ; 3 uses
  %i.su = shl nuw nsw i64 %i.dr, 2                ; 3 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %5, i64 28
  %.not201 = icmp eq ptr %.0132, null             ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.sx = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.sy = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.sz = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.ta = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.tb = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.tc = getelementptr inbounds nuw i8, ptr %2, i64 72
  %wide.trip.count = zext nneg i32 %i.df to i64
  %i.td = mul nuw nsw i64 %i.dr, 12               ; 4 uses
  %scevgep = getelementptr i8, ptr %i.ec, i64 %i.td
  %scevgep602 = getelementptr i8, ptr %i.ef, i64 %i.td ; 2 uses
  %i.te = shl nuw nsw i64 %i.dr, 2
  %scevgep603 = getelementptr i8, ptr %i.ei, i64 %i.te ; 3 uses
  %scevgep604 = getelementptr i8, ptr %i.ds, i64 %i.td ; 2 uses
  %scevgep605 = getelementptr i8, ptr %i.dv, i64 %i.td ; 3 uses
  %i.tf = insertelement <4 x ptr> poison, ptr %i.ec, i64 0
  %i.tg = shufflevector <4 x ptr> %i.tf, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.th = insertelement <4 x ptr> poison, ptr %scevgep602, i64 0
  %i.ti = insertelement <4 x ptr> %i.th, ptr %scevgep603, i64 1
  %i.tj = insertelement <4 x ptr> %i.ti, ptr %scevgep604, i64 2
  %i.tk = insertelement <4 x ptr> %i.tj, ptr %scevgep605, i64 3
  %i.tl = insertelement <4 x ptr> poison, ptr %i.ef, i64 0
  %i.tm = insertelement <4 x ptr> %i.tl, ptr %i.ei, i64 1 ; 2 uses
  %i.tn = insertelement <4 x ptr> %i.tm, ptr %i.ds, i64 2
  %i.to = insertelement <4 x ptr> %i.tn, ptr %i.dv, i64 3
  %i.tp = insertelement <4 x ptr> poison, ptr %scevgep, i64 0
  %i.tq = shufflevector <4 x ptr> %i.tp, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.tr = shufflevector <4 x ptr> %i.tm, <4 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ts = insertelement <4 x ptr> poison, ptr %scevgep603, i64 0 ; 2 uses
  %i.tt = insertelement <4 x ptr> %i.ts, ptr %scevgep604, i64 1
  %i.tu = insertelement <4 x ptr> %i.tt, ptr %scevgep605, i64 2
  %i.tv = shufflevector <4 x ptr> %i.tu, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.tw = insertelement <4 x ptr> poison, ptr %i.ei, i64 0
  %i.tx = insertelement <4 x ptr> %i.tw, ptr %i.ds, i64 1
  %i.ty = insertelement <4 x ptr> %i.tx, ptr %i.dv, i64 2
  %i.tz = shufflevector <4 x ptr> %i.ty, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.ua = shufflevector <4 x ptr> %i.ts, <4 x ptr> poison, <2 x i32> <i32 poison, i32 0>
  %i.ub = insertelement <2 x ptr> %i.ua, ptr %scevgep602, i64 0
  %i.uc = shufflevector <2 x ptr> %i.ub, <2 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ud = add nsw i64 %i.dr, -1                   ; 5 uses
  %i.ue = insertelement <2 x float> poison, float %i.ss, i64 0
  %i.uf = shufflevector <2 x float> %i.ue, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %xtraiter = and i64 %i.dr, 1
  %i.ug = icmp eq i64 %i.ud, 0
  %unroll_iter = and i64 %i.dr, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod732 = trunc i32 %i.df to i1
  %i.uh = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.ui = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %xtraiter.1 = and i64 %i.dr, 1
  %i.uj = icmp eq i64 %i.ud, 0
  %unroll_iter.1 = and i64 %i.dr, 2147483646
  %lcmp.mod.1.not = icmp eq i64 %xtraiter.1, 0
  %lcmp.mod732.1 = trunc i32 %i.df to i1
  %i.uk = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ul = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %xtraiter.2 = and i64 %i.dr, 1
  %i.um = icmp eq i64 %i.ud, 0
  %unroll_iter.2 = and i64 %i.dr, 2147483646
  %lcmp.mod.2.not = icmp eq i64 %xtraiter.2, 0
  %lcmp.mod732.2 = trunc i32 %i.df to i1
  %min.iters.check695 = icmp ult i32 %i.df, 8
  %n.vec697 = and i64 %i.dr, 2147483640           ; 3 uses
  %cmp.n713 = icmp eq i64 %n.vec697, %i.dr
  %min.iters.check695.1 = icmp ult i32 %i.df, 8
  %n.vec697.1 = and i64 %i.dr, 2147483640         ; 3 uses
  %cmp.n713.1 = icmp eq i64 %n.vec697.1, %i.dr
  %min.iters.check695.2 = icmp ult i32 %i.df, 8
  %n.vec697.2 = and i64 %i.dr, 2147483640         ; 3 uses
  %cmp.n713.2 = icmp eq i64 %n.vec697.2, %i.dr
  %min.iters.check674 = icmp ult i32 %i.df, 9
  %i.un = and i64 %i.dr, 7                        ; 2 uses
  %i.uo = icmp eq i64 %i.un, 0
  %i.up = select i1 %i.uo, i64 8, i64 %i.un
  %n.vec676 = sub nsw i64 %i.dr, %i.up            ; 2 uses
  %min.iters.check674.1 = icmp ult i32 %i.df, 9
  %i.uq = and i64 %i.dr, 7                        ; 2 uses
  %i.ur = icmp eq i64 %i.uq, 0
  %i.us = select i1 %i.ur, i64 8, i64 %i.uq
  %n.vec676.1 = sub nsw i64 %i.dr, %i.us          ; 2 uses
  %min.iters.check674.2 = icmp ult i32 %i.df, 9
  %i.ut = and i64 %i.dr, 7                        ; 2 uses
  %i.uu = icmp eq i64 %i.ut, 0
  %i.uv = select i1 %i.uu, i64 8, i64 %i.ut
  %n.vec676.2 = sub nsw i64 %i.dr, %i.uv          ; 2 uses
  %min.iters.check658 = icmp ult i32 %i.df, 8
  %n.vec660 = and i64 %i.dr, 2147483640           ; 3 uses
  %cmp.n671 = icmp eq i64 %n.vec660, %i.dr
  %min.iters.check658.1 = icmp ult i32 %i.df, 8
  %n.vec660.1 = and i64 %i.dr, 2147483640         ; 3 uses
  %cmp.n671.1 = icmp eq i64 %n.vec660.1, %i.dr
  %min.iters.check658.2 = icmp ult i32 %i.df, 8
  %n.vec660.2 = and i64 %i.dr, 2147483640         ; 3 uses
  %cmp.n671.2 = icmp eq i64 %n.vec660.2, %i.dr
  %min.iters.check = icmp ult i32 %i.df, 8
  %i.uw = icmp ult <4 x ptr> %i.tg, %i.tk
  %i.ux = icmp ult <4 x ptr> %i.to, %i.tq
  %i.uy = and <4 x i1> %i.uw, %i.ux
  %i.uz = icmp ult <4 x ptr> %i.tr, %i.tv
  %i.va = icmp ult <4 x ptr> %i.tz, %i.uc
  %i.vb = and <4 x i1> %i.uz, %i.va
  %bound0633 = icmp ult ptr %i.ei, %scevgep605
  %bound1634 = icmp ult ptr %i.dv, %scevgep603
  %found.conflict635 = and i1 %bound0633, %bound1634
  %rdx.op = or <4 x i1> %i.uy, %i.vb
  %i.vc = bitcast <4 x i1> %rdx.op to i4
  %i.vd = icmp ne i4 %i.vc, 0
  %op.rdx = or i1 %i.vd, %found.conflict635
  %n.vec = and i64 %i.dr, 2147483640              ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.dr
  %xtraiter734 = and i64 %i.dr, 1
  %i.ve = icmp eq i64 %i.ud, 0
  %unroll_iter737 = and i64 %i.dr, 2147483646
  %lcmp.mod735.not = icmp eq i64 %xtraiter734, 0
  %lcmp.mod736 = trunc i32 %i.df to i1
  %xtraiter739 = and i64 %i.dr, 1
  %i.vf = icmp eq i64 %i.ud, 0
  %unroll_iter742 = and i64 %i.dr, 2147483646
  %lcmp.mod740.not = icmp eq i64 %xtraiter739, 0
  %lcmp.mod741 = trunc i32 %i.df to i1
  br label %bb.dz

bb.dz:                                            ; preds = %.preheader, %bb.et
  invoke void @_Z15gmx_rmpbc_trxfrP9gmx_rmpbcP10t_trxframe(ptr noundef %i.sn, ptr noundef nonnull %5)
          to label %bb.ea unwind label %.loopexit

bb.ea:                                            ; preds = %bb.dz
  %i.vg = load ptr, ptr %i.so, align 8, !tbaa !96 ; 3 uses
  %i.vh = load ptr, ptr %i.sp, align 8, !tbaa !104 ; 3 uses
  %i.vi = load i8, ptr @_ZZ10gmx_bundleiPPcE2bZ, align 1, !tbaa !105, !range !106, !noundef !107
  %i.vj = trunc nuw i8 %i.vi to i1
  %i.vk = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.50, i32 noundef 109, i64 noundef range(i64 -2147483648, 2147483648) %i.dr, i64 noundef 4)
          to label %.preheader.i unwind label %.loopexit ; 16 uses

.preheader.i:                                     ; preds = %bb.ea
  call void @llvm.memset.p0.i64(ptr align 4 %i.ds, i8 0, i64 %i.st, i1 false), !tbaa !108
  call void @llvm.memset.p0.i64(ptr align 4 %i.vk, i8 0, i64 %i.su, i1 false), !tbaa !108
  %i.vl = load i32, ptr %i.j, align 4, !tbaa !53  ; 3 uses
  %i.vm = sdiv i32 %i.vl, %i.df
  %i.vn = icmp sgt i32 %i.vl, 0
  br i1 %i.vn, label %.lr.ph146.i, label %._crit_edge147.i.preheader

.lr.ph146.i:                                      ; preds = %.preheader.i
  %i.vo = load ptr, ptr %i.k, align 16, !tbaa !109
  %wide.trip.count.i = zext nneg i32 %i.vl to i64
  br label %bb.eb

bb.eb:                                            ; preds = %bb.eb, %.lr.ph146.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph146.i ], [ %indvars.iv.next.i, %bb.eb ] ; 3 uses
  %i.vp = getelementptr inbounds nuw [4 x i8], ptr %i.vo, i64 %indvars.iv.i
  %i.vq = load i32, ptr %i.vp, align 4, !tbaa !53
  %i.vr = sext i32 %i.vq to i64                   ; 2 uses
  %i.vs = getelementptr inbounds [36 x i8], ptr %i.vh, i64 %i.vr
  %i.vt = load float, ptr %i.vs, align 4, !tbaa !110 ; 4 uses
  %i.vu = getelementptr inbounds [12 x i8], ptr %i.vg, i64 %i.vr ; 3 uses
  %i.vv = trunc nuw nsw i64 %indvars.iv.i to i32
  %39 = udiv i32 %i.vv, %i.vm
  %40 = zext nneg i32 %39 to i64                  ; 2 uses
  %i.vw = getelementptr inbounds nuw [12 x i8], ptr %i.ds, i64 %40 ; 4 uses
  %i.vx = load float, ptr %i.vu, align 4, !tbaa !108
  %i.vy = load float, ptr %i.vw, align 4, !tbaa !108
  %i.vz = call float @llvm.fmuladd.f32(float %i.vt, float %i.vx, float %i.vy)
  store float %i.vz, ptr %i.vw, align 4, !tbaa !108
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vu, i64 4
  %i.wb = load float, ptr %i.wa, align 4, !tbaa !108
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vw, i64 4 ; 2 uses
  %i.wd = load float, ptr %i.wc, align 4, !tbaa !108
  %i.we = call float @llvm.fmuladd.f32(float %i.vt, float %i.wb, float %i.wd)
  store float %i.we, ptr %i.wc, align 4, !tbaa !108
  %i.wf = getelementptr inbounds nuw i8, ptr %i.vu, i64 8
  %i.wg = load float, ptr %i.wf, align 4, !tbaa !108
  %i.wh = getelementptr inbounds nuw i8, ptr %i.vw, i64 8 ; 2 uses
  %i.wi = load float, ptr %i.wh, align 4, !tbaa !108
  %i.wj = call float @llvm.fmuladd.f32(float %i.vt, float %i.wg, float %i.wi)
  store float %i.wj, ptr %i.wh, align 4, !tbaa !108
  %i.wk = getelementptr inbounds nuw [4 x i8], ptr %i.vk, i64 %40 ; 2 uses
  %i.wl = load float, ptr %i.wk, align 4, !tbaa !108
  %i.wm = fadd float %i.vt, %i.wl
  store float %i.wm, ptr %i.wk, align 4, !tbaa !108
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge147.i.preheader, label %bb.eb, !llvm.loop !34

._crit_edge147.i.preheader:                       ; preds = %bb.eb, %.preheader.i
  br i1 %i.ug, label %._crit_edge147.i.epil.preheader, label %._crit_edge147.i

._crit_edge147.i:                                 ; preds = %._crit_edge147.i.preheader, %._crit_edge147.i
  %indvars.iv177.i = phi i64 [ %indvars.iv.next178.i.1, %._crit_edge147.i ], [ 0, %._crit_edge147.i.preheader ] ; 4 uses
  %i.wn = phi float [ %i.xo, %._crit_edge147.i ], [ 0.000000e+00, %._crit_edge147.i.preheader ]
  %i.wo = phi <2 x float> [ %i.xn, %._crit_edge147.i ], [ zeroinitializer, %._crit_edge147.i.preheader ]
  %niter = phi i64 [ %niter.next.1, %._crit_edge147.i ], [ 0, %._crit_edge147.i.preheader ]
  %i.wp = getelementptr inbounds nuw [4 x i8], ptr %i.vk, i64 %indvars.iv177.i
  %i.wq = load float, ptr %i.wp, align 4, !tbaa !108
  %i.wr = fdiv float 1.000000e+00, %i.wq          ; 2 uses
  %i.ws = getelementptr inbounds nuw [12 x i8], ptr %i.ds, i64 %indvars.iv177.i ; 3 uses
  %i.wt = load <2 x float>, ptr %i.ws, align 4, !tbaa !108
  %i.wu = insertelement <2 x float> poison, float %i.wr, i64 0
  %i.wv = shufflevector <2 x float> %i.wu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ww = fmul <2 x float> %i.wv, %i.wt           ; 2 uses
  store <2 x float> %i.ww, ptr %i.ws, align 4, !tbaa !108
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ws, i64 8 ; 2 uses
  %i.wy = load float, ptr %i.wx, align 4, !tbaa !108
  %i.wz = fmul float %i.wr, %i.wy                 ; 2 uses
  store float %i.wz, ptr %i.wx, align 4, !tbaa !108
  %i.xa = fadd <2 x float> %i.wo, %i.ww
  %i.xb = fadd float %i.wn, %i.wz
  %indvars.iv.next178.i = or disjoint i64 %indvars.iv177.i, 1 ; 2 uses
  %i.xc = getelementptr inbounds nuw [4 x i8], ptr %i.vk, i64 %indvars.iv.next178.i
  %i.xd = load float, ptr %i.xc, align 4, !tbaa !108
  %i.xe = fdiv float 1.000000e+00, %i.xd          ; 2 uses
  %i.xf = getelementptr inbounds nuw [12 x i8], ptr %i.ds, i64 %indvars.iv.next178.i ; 3 uses
  %i.xg = load <2 x float>, ptr %i.xf, align 4, !tbaa !108
  %i.xh = insertelement <2 x float> poison, float %i.xe, i64 0
  %i.xi = shufflevector <2 x float> %i.xh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xj = fmul <2 x float> %i.xi, %i.xg           ; 2 uses
  store <2 x float> %i.xj, ptr %i.xf, align 4, !tbaa !108
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xf, i64 8 ; 2 uses
  %i.xl = load float, ptr %i.xk, align 4, !tbaa !108
  %i.xm = fmul float %i.xe, %i.xl                 ; 2 uses
  store float %i.xm, ptr %i.xk, align 4, !tbaa !108
  %i.xn = fadd <2 x float> %i.xa, %i.xj           ; 3 uses
  %i.xo = fadd float %i.xb, %i.xm                 ; 3 uses
  %indvars.iv.next178.i.1 = add nuw nsw i64 %indvars.iv177.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge151.i.unr-lcssa, label %._crit_edge147.i, !llvm.loop !35

._crit_edge151.i.unr-lcssa:                       ; preds = %._crit_edge147.i
  br i1 %lcmp.mod.not, label %._crit_edge151.i, label %._crit_edge147.i.epil.preheader

._crit_edge147.i.epil.preheader:                  ; preds = %._crit_edge151.i.unr-lcssa, %._crit_edge147.i.preheader
  %indvars.iv177.i.epil.init = phi i64 [ 0, %._crit_edge147.i.preheader ], [ %indvars.iv.next178.i.1, %._crit_edge151.i.unr-lcssa ] ; 2 uses
  %.epil.init = phi float [ 0.000000e+00, %._crit_edge147.i.preheader ], [ %i.xo, %._crit_edge151.i.unr-lcssa ]
  %.epil.init729 = phi <2 x float> [ zeroinitializer, %._crit_edge147.i.preheader ], [ %i.xn, %._crit_edge151.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod732)
  %i.xp = getelementptr inbounds nuw [4 x i8], ptr %i.vk, i64 %indvars.iv177.i.epil.init
  %i.xq = load float, ptr %i.xp, align 4, !tbaa !108
  %i.xr = fdiv float 1.000000e+00, %i.xq          ; 2 uses
  %i.xs = getelementptr inbounds nuw [12 x i8], ptr %i.ds, i64 %indvars.iv177.i.epil.init ; 3 uses
  %i.xt = load <2 x float>, ptr %i.xs, align 4, !tbaa !108
  %i.xu = insertelement <2 x float> poison, float %i.xr, i64 0
  %i.xv = shufflevector <2 x float> %i.xu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xw = fmul <2 x float> %i.xv, %i.xt           ; 2 uses
  store <2 x float> %i.xw, ptr %i.xs, align 4, !tbaa !108
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xs, i64 8 ; 2 uses
  %i.xy = load float, ptr %i.xx, align 4, !tbaa !108
  %i.xz = fmul float %i.xr, %i.xy                 ; 2 uses
  store float %i.xz, ptr %i.xx, align 4, !tbaa !108
  %i.ya = fadd <2 x float> %.epil.init729, %i.xw
  %i.yb = fadd float %.epil.init, %i.xz
  br label %._crit_edge151.i

._crit_edge151.i:                                 ; preds = %._crit_edge151.i.unr-lcssa, %._crit_edge147.i.epil.preheader
  %.lcssa727 = phi <2 x float> [ %i.xn, %._crit_edge151.i.unr-lcssa ], [ %i.ya, %._crit_edge147.i.epil.preheader ]
  %.lcssa = phi float [ %i.xo, %._crit_edge151.i.unr-lcssa ], [ %i.yb, %._crit_edge147.i.epil.preheader ]
  %i.yc = fmul <2 x float> %.lcssa727, %i.uf      ; 2 uses
  %i.yd = fmul float %.lcssa, %i.ss               ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.dv, i8 0, i64 %i.st, i1 false), !tbaa !108
  call void @llvm.memset.p0.i64(ptr align 4 %i.vk, i8 0, i64 %i.su, i1 false), !tbaa !108
  %i.ye = load i32, ptr %i.uh, align 4, !tbaa !53 ; 3 uses
  %i.yf = sdiv i32 %i.ye, %i.df
  %i.yg = icmp sgt i32 %i.ye, 0
  br i1 %i.yg, label %.lr.ph146.i.1, label %._crit_edge147.i.preheader.1

.lr.ph146.i.1:                                    ; preds = %._crit_edge151.i
  %i.yh = load ptr, ptr %i.ui, align 8, !tbaa !109
  %wide.trip.count.i.1 = zext nneg i32 %i.ye to i64
  br label %bb.ec

bb.ec:                                            ; preds = %bb.ec, %.lr.ph146.i.1
  %indvars.iv.i.1 = phi i64 [ 0, %.lr.ph146.i.1 ], [ %indvars.iv.next.i.1, %bb.ec ] ; 3 uses
  %i.yi = getelementptr inbounds nuw [4 x i8], ptr %i.yh, i64 %indvars.iv.i.1
  %i.yj = load i32, ptr %i.yi, align 4, !tbaa !53
  %i.yk = sext i32 %i.yj to i64                   ; 2 uses
  %i.yl = getelementptr inbounds [36 x i8], ptr %i.vh, i64 %i.yk
  %i.ym = load float, ptr %i.yl, align 4, !tbaa !110 ; 4 uses
  %i.yn = getelementptr inbounds [12 x i8], ptr %i.vg, i64 %i.yk ; 3 uses
  %i.yo = trunc nuw nsw i64 %indvars.iv.i.1 to i32
  %41 = udiv i32 %i.yo, %i.yf
  %42 = zext nneg i32 %41 to i64                  ; 2 uses
  %i.yp = getelementptr inbounds nuw [12 x i8], ptr %i.dv, i64 %42 ; 4 uses
  %i.yq = load float, ptr %i.yn, align 4, !tbaa !108
  %i.yr = load float, ptr %i.yp, align 4, !tbaa !108
  %i.ys = call float @llvm.fmuladd.f32(float %i.ym, float %i.yq, float %i.yr)
  store float %i.ys, ptr %i.yp, align 4, !tbaa !108
  %i.yt = getelementptr inbounds nuw i8, ptr %i.yn, i64 4
  %i.yu = load float, ptr %i.yt, align 4, !tbaa !108
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yp, i64 4 ; 2 uses
  %i.yw = load float, ptr %i.yv, align 4, !tbaa !108
  %i.yx = call float @llvm.fmuladd.f32(float %i.ym, float %i.yu, float %i.yw)
  store float %i.yx, ptr %i.yv, align 4, !tbaa !108
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yn, i64 8
  %i.yz = load float, ptr %i.yy, align 4, !tbaa !108
  %i.za = getelementptr inbounds nuw i8, ptr %i.yp, i64 8 ; 2 uses
  %i.zb = load float, ptr %i.za, align 4, !tbaa !108
  %i.zc = call float @llvm.fmuladd.f32(float %i.ym, float %i.yz, float %i.zb)
  store float %i.zc, ptr %i.za, align 4, !tbaa !108
  %i.zd = getelementptr inbounds nuw [4 x i8], ptr %i.vk, i64 %42 ; 2 uses
  %i.ze = load float, ptr %i.zd, align 4, !tbaa !108
  %i.zf = fadd float %i.ym, %i.ze
  store float %i.zf, ptr %i.zd, align 4, !tbaa !108
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i.1, 1 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i.1
  br i1 %exitcond.not.i.1, label %._crit_edge147.i.preheader.1, label %bb.ec, !llvm.loop !34

._crit_edge147.i.preheader.1:                     ; preds = %bb.ec, %._crit_edge151.i
  br i1 %i.uj, label %._crit_edge147.i.epil.preheader.1, label %._crit_edge147.i.1

._crit_edge147.i.1:                               ; preds = %._crit_edge147.i.preheader.1, %._crit_edge147.i.1
  %indvars.iv177.i.1 = phi i64 [ %indvars.iv.next178.i.1.1, %._crit_edge147.i.1 ], [ 0, %._crit_edge147.i.preheader.1 ] ; 4 uses
  %i.zg = phi float [ %i.aah, %._crit_edge147.i.1 ], [ 0.000000e+00, %._crit_edge147.i.preheader.1 ]
  %i.zh = phi <2 x float> [ %i.aag, %._crit_edge147.i.1 ], [ zeroinitializer, %._crit_edge147.i.preheader.1 ]
  %niter.1 = phi i64 [ %niter.next.1.1, %._crit_edge147.i.1 ], [ 0, %._crit_edge147.i.preheader.1 ]
  %i.zi = getelementptr inbounds nuw [4 x i8], ptr %i.vk, i64 %indvars.iv177.i.1
  %i.zj = load float, ptr %i.zi, align 4, !tbaa !108
  %i.zk = fdiv float 1.000000e+00, %i.zj          ; 2 uses
  %i.zl = getelementptr inbounds nuw [12 x i8], ptr %i.dv, i64 %indvars.iv177.i.1 ; 3 uses
  %i.zm = load <2 x float>, ptr %i.zl, align 4, !tbaa !108
  %i.zn = insertelement <2 x float> poison, float %i.zk, i64 0
  %i.zo = shufflevector <2 x float> %i.zn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zp = fmul <2 x float> %i.zo, %i.zm           ; 2 uses
  store <2 x float> %i.zp, ptr %i.zl, align 4, !tbaa !108
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zl, i64 8 ; 2 uses
  %i.zr = load float, ptr %i.zq, align 4, !tbaa !108
  %i.zs = fmul float %i.zk, %i.zr                 ; 2 uses
  store float %i.zs, ptr %i.zq, align 4, !tbaa !108
  %i.zt = fadd <2 x float> %i.zh, %i.zp
  %i.zu = fadd float %i.zg, %i.zs
  %indvars.iv.next178.i.1733 = or disjoint i64 %indvars.iv177.i.1, 1 ; 2 uses
  %i.zv = getelementptr inbounds nuw [4 x i8], ptr %i.vk, i64 %indvars.iv.next178.i.1733
  %i.zw = load float, ptr %i.zv, align 4, !tbaa !108
  %i.zx = fdiv float 1.000000e+00, %i.zw          ; 2 uses
  %i.zy = getelementptr inbounds nuw [12 x i8], ptr %i.dv, i64 %indvars.iv.next178.i.1733 ; 3 uses
  %i.zz = load <2 x float>, ptr %i.zy, align 4, !tbaa !108
  %i.aaa = insertelement <2 x float> poison, float %i.zx, i64 0
  %i.aab = shufflevector <2 x float> %i.aaa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aac = fmul <2 x float> %i.aab, %i.zz         ; 2 uses
  store <2 x float> %i.aac, ptr %i.zy, align 4, !tbaa !108
  %i.aad = getelementptr inbounds nuw i8, ptr %i.zy, i64 8 ; 2 uses
  %i.aae = load float, ptr %i.aad, align 4, !tbaa !108
  %i.aaf = fmul float %i.zx, %i.aae               ; 2 uses
  store float %i.aaf, ptr %i.aad, align 4, !tbaa !108
  %i.aag = fadd <2 x float> %i.zt, %i.aac         ; 3 uses
  %i.aah = fadd float %i.zu, %i.aaf               ; 3 uses
  %indvars.iv.next178.i.1.1 = add nuw nsw i64 %indvars.iv177.i.1, 2 ; 2 uses
  %niter.next.1.1 = add i64 %niter.1, 2           ; 2 uses
  %niter.ncmp.1.1 = icmp eq i64 %niter.next.1.1, %unroll_iter.1
  br i1 %niter.ncmp.1.1, label %._crit_edge151.i.unr-lcssa.1, label %._crit_edge147.i.1, !llvm.loop !35

._crit_edge151.i.unr-lcssa.1:                     ; preds = %._crit_edge147.i.1
  br i1 %lcmp.mod.1.not, label %._crit_edge151.i.1, label %._crit_edge147.i.epil.preheader.1

._crit_edge147.i.epil.preheader.1:                ; preds = %._crit_edge151.i.unr-lcssa.1, %._crit_edge147.i.preheader.1
  %indvars.iv177.i.epil.init.1 = phi i64 [ 0, %._crit_edge147.i.preheader.1 ], [ %indvars.iv.next178.i.1.1, %._crit_edge151.i.unr-lcssa.1 ] ; 2 uses
  %.epil.init.1 = phi float [ 0.000000e+00, %._crit_edge147.i.preheader.1 ], [ %i.aah, %._crit_edge151.i.unr-lcssa.1 ]
  %.epil.init729.1 = phi <2 x float> [ zeroinitializer, %._crit_edge147.i.preheader.1 ], [ %i.aag, %._crit_edge151.i.unr-lcssa.1 ]
  call void @llvm.assume(i1 %lcmp.mod732.1)
  %i.aai = getelementptr inbounds nuw [4 x i8], ptr %i.vk, i64 %indvars.iv177.i.epil.init.1
  %i.aaj = load float, ptr %i.aai, align 4, !tbaa !108
  %i.aak = fdiv float 1.000000e+00, %i.aaj        ; 2 uses
  %i.aal = getelementptr inbounds nuw [12 x i8], ptr %i.dv, i64 %indvars.iv177.i.epil.init.1 ; 3 uses
  %i.aam = load <2 x float>, ptr %i.aal, align 4, !tbaa !108
  %i.aan = insertelement <2 x float> poison, float %i.aak, i64 0
  %i.aao = shufflevector <2 x float> %i.aan, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aap = fmul <2 x float> %i.aao, %i.aam        ; 2 uses
  store <2 x float> %i.aap, ptr %i.aal, align 4, !tbaa !108
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aal, i64 8 ; 2 uses
  %i.aar = load float, ptr %i.aaq, align 4, !tbaa !108
  %i.aas = fmul float %i.aak, %i.aar              ; 2 uses
  store float %i.aas, ptr %i.aaq, align 4, !tbaa !108
  %i.aat = fadd <2 x float> %.epil.init729.1, %i.aap
  %i.aau = fadd float %.epil.init.1, %i.aas
  br label %._crit_edge151.i.1

._crit_edge151.i.1:                               ; preds = %._crit_edge147.i.epil.preheader.1, %._crit_edge151.i.unr-lcssa.1
  %.lcssa727.1 = phi <2 x float> [ %i.aag, %._crit_edge151.i.unr-lcssa.1 ], [ %i.aat, %._crit_edge147.i.epil.preheader.1 ]
  %.lcssa.1 = phi float [ %i.aah, %._crit_edge151.i.unr-lcssa.1 ], [ %i.aau, %._crit_edge147.i.epil.preheader.1 ]
  %i.aav = fmul <2 x float> %.lcssa727.1, %i.uf
  %i.aaw = fmul float %.lcssa.1, %i.ss
  br i1 %exitcond186.not.i.1, label %._crit_edge158.i, label %.preheader.i.2

.preheader.i.2:                                   ; preds = %._crit_edge151.i.1
  call void @llvm.memset.p0.i64(ptr align 4 %i.dz, i8 0, i64 %i.st, i1 false), !tbaa !108
  call void @llvm.memset.p0.i64(ptr align 4 %i.vk, i8 0, i64 %i.su, i1 false), !tbaa !108
  %i.aax = load i32, ptr %i.uk, align 4, !tbaa !53 ; 3 uses
  %i.aay = sdiv i32 %i.aax, %i.df
  %i.aaz = icmp sgt i32 %i.aax, 0
  br i1 %i.aaz, label %.lr.ph146.i.2, label %._crit_edge147.i.preheader.2

.lr.ph146.i.2:                                    ; preds = %.preheader.i.2
  %i.aba = load ptr, ptr %i.ul, align 16, !tbaa !109
  %wide.trip.count.i.2 = zext nneg i32 %i.aax to i64
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ed, %.lr.ph146.i.2
  %indvars.iv.i.2 = phi i64 [ 0, %.lr.ph146.i.2 ], [ %indvars.iv.next.i.2, %bb.ed ] ; 3 uses
  %i.abb = getelementptr inbounds nuw [4 x i8], ptr %i.aba, i64 %indvars.iv.i.2
  %i.abc = load i32, ptr %i.abb, align 4, !tbaa !53
  %i.abd = sext i32 %i.abc to i64                 ; 2 uses
  %i.abe = getelementptr inbounds [36 x i8], ptr %i.vh, i64 %i.abd
  %i.abf = load float, ptr %i.abe, align 4, !tbaa !110 ; 4 uses
  %i.abg = getelementptr inbounds [12 x i8], ptr %i.vg, i64 %i.abd ; 3 uses
  %i.abh = trunc nuw nsw i64 %indvars.iv.i.2 to i32
  %43 = udiv i32 %i.abh, %i.aay
  %44 = zext nneg i32 %43 to i64                  ; 2 uses
  %i.abi = getelementptr inbounds nuw [12 x i8], ptr %i.dz, i64 %44 ; 4 uses
  %i.abj = load float, ptr %i.abg, align 4, !tbaa !108
  %i.abk = load float, ptr %i.abi, align 4, !tbaa !108
  %i.abl = call float @llvm.fmuladd.f32(float %i.abf, float %i.abj, float %i.abk)
  store float %i.abl, ptr %i.abi, align 4, !tbaa !108
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abg, i64 4
  %i.abn = load float, ptr %i.abm, align 4, !tbaa !108
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abi, i64 4 ; 2 uses
  %i.abp = load float, ptr %i.abo, align 4, !tbaa !108
  %i.abq = call float @llvm.fmuladd.f32(float %i.abf, float %i.abn, float %i.abp)
  store float %i.abq, ptr %i.abo, align 4, !tbaa !108
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abg, i64 8
  %i.abs = load float, ptr %i.abr, align 4, !tbaa !108
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abi, i64 8 ; 2 uses
  %i.abu = load float, ptr %i.abt, align 4, !tbaa !108
  %i.abv = call float @llvm.fmuladd.f32(float %i.abf, float %i.abs, float %i.abu)
  store float %i.abv, ptr %i.abt, align 4, !tbaa !108
  %i.abw = getelementptr inbounds nuw [4 x i8], ptr %i.vk, i64 %44 ; 2 uses
  %i.abx = load float, ptr %i.abw, align 4, !tbaa !108
  %i.aby = fadd float %i.abf, %i.abx
  store float %i.aby, ptr %i.abw, align 4, !tbaa !108
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i.2, 1 ; 2 uses
  %exitcond.not.i.2 = icmp eq i64 %indvars.iv.next.i.2, %wide.trip.count.i.2
  br i1 %exitcond.not.i.2, label %._crit_edge147.i.preheader.2, label %bb.ed, !llvm.loop !34

._crit_edge147.i.preheader.2:                     ; preds = %bb.ed, %.preheader.i.2
  br i1 %i.um, label %._crit_edge147.i.epil.preheader.2, label %._crit_edge147.i.2

._crit_edge147.i.2:                               ; preds = %._crit_edge147.i.preheader.2, %._crit_edge147.i.2
  %indvars.iv177.i.2 = phi i64 [ %indvars.iv.next178.i.1.2, %._crit_edge147.i.2 ], [ 0, %._crit_edge147.i.preheader.2 ] ; 4 uses
  %i.abz = phi float [ %i.ada, %._crit_edge147.i.2 ], [ 0.000000e+00, %._crit_edge147.i.preheader.2 ]
  %i.aca = phi <2 x float> [ %i.acz, %._crit_edge147.i.2 ], [ zeroinitializer, %._crit_edge147.i.preheader.2 ]
  %niter.2 = phi i64 [ %niter.next.1.2, %._crit_edge147.i.2 ], [ 0, %._crit_edge147.i.preheader.2 ]
  %i.acb = getelementptr inbounds nuw [4 x i8], ptr %i.vk, i64 %indvars.iv177.i.2
  %i.acc = load float, ptr %i.acb, align 4, !tbaa !108
  %i.acd = fdiv float 1.000000e+00, %i.acc        ; 2 uses
  %i.ace = getelementptr inbounds nuw [12 x i8], ptr %i.dz, i64 %indvars.iv177.i.2 ; 3 uses
  %i.acf = load <2 x float>, ptr %i.ace, align 4, !tbaa !108
  %i.acg = insertelement <2 x float> poison, float %i.acd, i64 0
  %i.ach = shufflevector <2 x float> %i.acg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aci = fmul <2 x float> %i.ach, %i.acf        ; 2 uses
  store <2 x float> %i.aci, ptr %i.ace, align 4, !tbaa !108
  %i.acj = getelementptr inbounds nuw i8, ptr %i.ace, i64 8 ; 2 uses
  %i.ack = load float, ptr %i.acj, align 4, !tbaa !108
  %i.acl = fmul float %i.acd, %i.ack              ; 2 uses
  store float %i.acl, ptr %i.acj, align 4, !tbaa !108
  %i.acm = fadd <2 x float> %i.aca, %i.aci
  %i.acn = fadd float %i.abz, %i.acl
  %indvars.iv.next178.i.2 = or disjoint i64 %indvars.iv177.i.2, 1 ; 2 uses
  %i.aco = getelementptr inbounds nuw [4 x i8], ptr %i.vk, i64 %indvars.iv.next178.i.2
  %i.acp = load float, ptr %i.aco, align 4, !tbaa !108
  %i.acq = fdiv float 1.000000e+00, %i.acp        ; 2 uses
  %i.acr = getelementptr inbounds nuw [12 x i8], ptr %i.dz, i64 %indvars.iv.next178.i.2 ; 3 uses
  %i.acs = load <2 x float>, ptr %i.acr, align 4, !tbaa !108
  %i.act = insertelement <2 x float> poison, float %i.acq, i64 0
  %i.acu = shufflevector <2 x float> %i.act, <2 x float> poison, <2 x i32> zeroinitializer
  %i.acv = fmul <2 x float> %i.acu, %i.acs        ; 2 uses
  store <2 x float> %i.acv, ptr %i.acr, align 4, !tbaa !108
  %i.acw = getelementptr inbounds nuw i8, ptr %i.acr, i64 8 ; 2 uses
  %i.acx = load float, ptr %i.acw, align 4, !tbaa !108
  %i.acy = fmul float %i.acq, %i.acx              ; 2 uses
  store float %i.acy, ptr %i.acw, align 4, !tbaa !108
  %i.acz = fadd <2 x float> %i.acm, %i.acv
  %i.ada = fadd float %i.acn, %i.acy
  %indvars.iv.next178.i.1.2 = add nuw nsw i64 %indvars.iv177.i.2, 2 ; 2 uses
  %niter.next.1.2 = add i64 %niter.2, 2           ; 2 uses
  %niter.ncmp.1.2 = icmp eq i64 %niter.next.1.2, %unroll_iter.2
  br i1 %niter.ncmp.1.2, label %._crit_edge151.i.unr-lcssa.2, label %._crit_edge147.i.2, !llvm.loop !35

._crit_edge151.i.unr-lcssa.2:                     ; preds = %._crit_edge147.i.2
  br i1 %lcmp.mod.2.not, label %._crit_edge158.i, label %._crit_edge147.i.epil.preheader.2

._crit_edge147.i.epil.preheader.2:                ; preds = %._crit_edge151.i.unr-lcssa.2, %._crit_edge147.i.preheader.2
  %indvars.iv177.i.epil.init.2 = phi i64 [ 0, %._crit_edge147.i.preheader.2 ], [ %indvars.iv.next178.i.1.2, %._crit_edge151.i.unr-lcssa.2 ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod732.2)
  %i.adb = getelementptr inbounds nuw [4 x i8], ptr %i.vk, i64 %indvars.iv177.i.epil.init.2
  %i.adc = load float, ptr %i.adb, align 4, !tbaa !108
  %i.add = fdiv float 1.000000e+00, %i.adc        ; 2 uses
  %i.ade = getelementptr inbounds nuw [12 x i8], ptr %i.dz, i64 %indvars.iv177.i.epil.init.2 ; 3 uses
  %i.adf = load <2 x float>, ptr %i.ade, align 4, !tbaa !108
  %i.adg = insertelement <2 x float> poison, float %i.add, i64 0
  %i.adh = shufflevector <2 x float> %i.adg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.adi = fmul <2 x float> %i.adh, %i.adf
  store <2 x float> %i.adi, ptr %i.ade, align 4, !tbaa !108
  %i.adj = getelementptr inbounds nuw i8, ptr %i.ade, i64 8 ; 2 uses
  %i.adk = load float, ptr %i.adj, align 4, !tbaa !108
  %i.adl = fmul float %i.add, %i.adk
  store float %i.adl, ptr %i.adj, align 4, !tbaa !108
  br label %._crit_edge158.i

._crit_edge158.i:                                 ; preds = %._crit_edge151.i.unr-lcssa.2, %._crit_edge147.i.epil.preheader.2, %._crit_edge151.i.1
  %i.adm = fadd <2 x float> %i.yc, %i.aav
  %i.adn = fadd float %i.yd, %i.aaw
  %i.ado = fmul <2 x float> %i.adm, splat (float 5.000000e-01) ; 10 uses
  %i.adp = fmul float %i.adn, 5.000000e-01        ; 7 uses
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.50, i32 noundef 139, ptr noundef nonnull %i.vk)
          to label %.lr.ph161.us.i unwind label %.loopexit

.lr.ph161.us.i:                                   ; preds = %._crit_edge158.i
  %i.adq = fsub float %i.yd, %i.adp               ; 5 uses
  %i.adr = fsub <2 x float> %i.yc, %i.ado         ; 2 uses
  br i1 %min.iters.check695, label %scalar.ph694.preheader, label %vector.ph696

vector.ph696:                                     ; preds = %.lr.ph161.us.i
  %broadcast.splat699 = shufflevector <2 x float> %i.ado, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat701 = shufflevector <2 x float> %i.ado, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert702 = insertelement <8 x float> poison, float %i.adp, i64 0
  %i.ads = shufflevector <8 x float> %broadcast.splatinsert702, <8 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  br label %vector.body704

vector.body704:                                   ; preds = %vector.body704, %vector.ph696
  %index705 = phi i64 [ 0, %vector.ph696 ], [ %index.next711, %vector.body704 ] ; 2 uses
  %i.adt = getelementptr inbounds nuw [12 x i8], ptr %i.ds, i64 %index705 ; 2 uses
  %wide.vec706 = load <24 x float>, ptr %i.adt, align 4, !tbaa !108 ; 3 uses
  %strided.vec707 = shufflevector <24 x float> %wide.vec706, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec708 = shufflevector <24 x float> %wide.vec706, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %i.adu = fsub <8 x float> %strided.vec707, %broadcast.splat699
  %i.adv = fsub <8 x float> %strided.vec708, %broadcast.splat701
  %i.adw = shufflevector <8 x float> %i.adu, <8 x float> %i.adv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.adx = shufflevector <24 x float> %wide.vec706, <24 x float> poison, <16 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ady = fsub <16 x float> %i.adx, %i.ads
  %interleaved.vec710 = shufflevector <16 x float> %i.adw, <16 x float> %i.ady, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec710, ptr %i.adt, align 4, !tbaa !108
  %index.next711 = add nuw i64 %index705, 8       ; 2 uses
  %i.adz = icmp eq i64 %index.next711, %n.vec697
  br i1 %i.adz, label %middle.block712, label %vector.body704, !llvm.loop !36

middle.block712:                                  ; preds = %vector.body704
  br i1 %cmp.n713, label %.lr.ph161.us.i.1, label %scalar.ph694.preheader

scalar.ph694.preheader:                           ; preds = %.lr.ph161.us.i, %middle.block712
  %indvars.iv192.i.ph = phi i64 [ 0, %.lr.ph161.us.i ], [ %n.vec697, %middle.block712 ]
  br label %scalar.ph694

scalar.ph694:                                     ; preds = %scalar.ph694.preheader, %scalar.ph694
  %indvars.iv192.i = phi i64 [ %indvars.iv.next193.i, %scalar.ph694 ], [ %indvars.iv192.i.ph, %scalar.ph694.preheader ] ; 2 uses
  %i.aea = getelementptr inbounds nuw [12 x i8], ptr %i.ds, i64 %indvars.iv192.i ; 3 uses
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.aea, i64 8 ; 2 uses
  %i.aec = load float, ptr %i.aeb, align 4, !tbaa !108
  %i.aed = fsub float %i.aec, %i.adp
  %i.aee = load <2 x float>, ptr %i.aea, align 4, !tbaa !108
  %i.aef = fsub <2 x float> %i.aee, %i.ado
  store <2 x float> %i.aef, ptr %i.aea, align 4, !tbaa !108
  store float %i.aed, ptr %i.aeb, align 4, !tbaa !108
  %indvars.iv.next193.i = add nuw nsw i64 %indvars.iv192.i, 1 ; 2 uses
  %exitcond196.not.i = icmp eq i64 %indvars.iv.next193.i, %i.dr
  br i1 %exitcond196.not.i, label %.lr.ph161.us.i.1, label %scalar.ph694, !llvm.loop !37

.lr.ph161.us.i.1:                                 ; preds = %middle.block712, %scalar.ph694
  br i1 %min.iters.check695.1, label %scalar.ph694.preheader.1, label %vector.ph696.1

vector.ph696.1:                                   ; preds = %.lr.ph161.us.i.1
  %broadcast.splat699.1 = shufflevector <2 x float> %i.ado, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat701.1 = shufflevector <2 x float> %i.ado, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert702.1 = insertelement <8 x float> poison, float %i.adp, i64 0
  %i.aeg = shufflevector <8 x float> %broadcast.splatinsert702.1, <8 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  br label %vector.body704.1

vector.body704.1:                                 ; preds = %vector.body704.1, %vector.ph696.1
  %index705.1 = phi i64 [ 0, %vector.ph696.1 ], [ %index.next711.1, %vector.body704.1 ] ; 2 uses
  %i.aeh = getelementptr inbounds nuw [12 x i8], ptr %i.dv, i64 %index705.1 ; 2 uses
  %wide.vec706.1 = load <24 x float>, ptr %i.aeh, align 4, !tbaa !108 ; 3 uses
  %strided.vec707.1 = shufflevector <24 x float> %wide.vec706.1, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec708.1 = shufflevector <24 x float> %wide.vec706.1, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %i.aei = fsub <8 x float> %strided.vec707.1, %broadcast.splat699.1
  %i.aej = fsub <8 x float> %strided.vec708.1, %broadcast.splat701.1
  %i.aek = shufflevector <8 x float> %i.aei, <8 x float> %i.aej, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ael = shufflevector <24 x float> %wide.vec706.1, <24 x float> poison, <16 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aem = fsub <16 x float> %i.ael, %i.aeg
  %interleaved.vec710.1 = shufflevector <16 x float> %i.aek, <16 x float> %i.aem, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec710.1, ptr %i.aeh, align 4, !tbaa !108
  %index.next711.1 = add nuw i64 %index705.1, 8   ; 2 uses
  %i.aen = icmp eq i64 %index.next711.1, %n.vec697.1
  br i1 %i.aen, label %middle.block712.1, label %vector.body704.1, !llvm.loop !36

middle.block712.1:                                ; preds = %vector.body704.1
  br i1 %cmp.n713.1, label %._crit_edge162.us.i.1, label %scalar.ph694.preheader.1

scalar.ph694.preheader.1:                         ; preds = %middle.block712.1, %.lr.ph161.us.i.1
  %indvars.iv192.i.ph.1 = phi i64 [ 0, %.lr.ph161.us.i.1 ], [ %n.vec697.1, %middle.block712.1 ]
  br label %scalar.ph694.1

scalar.ph694.1:                                   ; preds = %scalar.ph694.1, %scalar.ph694.preheader.1
  %indvars.iv192.i.1 = phi i64 [ %indvars.iv.next193.i.1, %scalar.ph694.1 ], [ %indvars.iv192.i.ph.1, %scalar.ph694.preheader.1 ] ; 2 uses
  %i.aeo = getelementptr inbounds nuw [12 x i8], ptr %i.dv, i64 %indvars.iv192.i.1 ; 3 uses
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aeo, i64 8 ; 2 uses
  %i.aeq = load float, ptr %i.aep, align 4, !tbaa !108
  %i.aer = fsub float %i.aeq, %i.adp
  %i.aes = load <2 x float>, ptr %i.aeo, align 4, !tbaa !108
  %i.aet = fsub <2 x float> %i.aes, %i.ado
  store <2 x float> %i.aet, ptr %i.aeo, align 4, !tbaa !108
  store float %i.aer, ptr %i.aep, align 4, !tbaa !108
  %indvars.iv.next193.i.1 = add nuw nsw i64 %indvars.iv192.i.1, 1 ; 2 uses
  %exitcond196.not.i.1 = icmp eq i64 %indvars.iv.next193.i.1, %i.dr
  br i1 %exitcond196.not.i.1, label %._crit_edge162.us.i.1, label %scalar.ph694.1, !llvm.loop !37

._crit_edge162.us.i.1:                            ; preds = %scalar.ph694.1, %middle.block712.1
  br i1 %exitcond186.not.i.1, label %._crit_edge166.i, label %.lr.ph161.us.i.2

.lr.ph161.us.i.2:                                 ; preds = %._crit_edge162.us.i.1
  br i1 %min.iters.check695.2, label %scalar.ph694.preheader.2, label %vector.ph696.2

vector.ph696.2:                                   ; preds = %.lr.ph161.us.i.2
  %broadcast.splat699.2 = shufflevector <2 x float> %i.ado, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat701.2 = shufflevector <2 x float> %i.ado, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert702.2 = insertelement <8 x float> poison, float %i.adp, i64 0
  %i.aeu = shufflevector <8 x float> %broadcast.splatinsert702.2, <8 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  br label %vector.body704.2

vector.body704.2:                                 ; preds = %vector.body704.2, %vector.ph696.2
  %index705.2 = phi i64 [ 0, %vector.ph696.2 ], [ %index.next711.2, %vector.body704.2 ] ; 2 uses
  %i.aev = getelementptr inbounds nuw [12 x i8], ptr %i.dz, i64 %index705.2 ; 2 uses
  %wide.vec706.2 = load <24 x float>, ptr %i.aev, align 4, !tbaa !108 ; 3 uses
  %strided.vec707.2 = shufflevector <24 x float> %wide.vec706.2, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec708.2 = shufflevector <24 x float> %wide.vec706.2, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %i.aew = fsub <8 x float> %strided.vec707.2, %broadcast.splat699.2
  %i.aex = fsub <8 x float> %strided.vec708.2, %broadcast.splat701.2
  %i.aey = shufflevector <8 x float> %i.aew, <8 x float> %i.aex, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
end_hunk_0
