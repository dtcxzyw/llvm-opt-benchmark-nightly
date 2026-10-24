Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/fast_newton?download=true
inline.NumInlined: 1453
inline.NumDeleted: 467
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZNK6casadi10FastNewton5solveEPv:bb.a
  %.020.i43.ph = phi i64 [ 0, %.lr.ph.i42.preheader ], [ %n.vec112, %middle.block120 ] ; 4 uses
  %.01019.i44.ph = phi ptr [ %i.fd, %.lr.ph.i42.preheader ], [ %i.fi, %middle.block120 ] ; 2 uses
  %.01218.i45.ph = phi ptr [ %i.ew, %.lr.ph.i42.preheader ], [ %i.fj, %middle.block120 ] ; 2 uses
  %i.fo = sub nsw i64 %i.ev, %.020.i43.ph
  %xtraiter136 = and i64 %i.fo, 7                 ; 2 uses
  %lcmp.mod137.not = icmp eq i64 %xtraiter136, 0
  br i1 %lcmp.mod137.not, label %.lr.ph.i42.prol.loopexit, label %.lr.ph.i42.prol

.lr.ph.i42.prol:                                  ; preds = %.lr.ph.i42.preheader128, %.lr.ph.i42.prol
  %.020.i43.prol = phi i64 [ %i.fs, %.lr.ph.i42.prol ], [ %.020.i43.ph, %.lr.ph.i42.preheader128 ]
  %.01019.i44.prol = phi ptr [ %i.fr, %.lr.ph.i42.prol ], [ %.01019.i44.ph, %.lr.ph.i42.preheader128 ] ; 2 uses
  %.01218.i45.prol = phi ptr [ %i.fp, %.lr.ph.i42.prol ], [ %.01218.i45.ph, %.lr.ph.i42.preheader128 ] ; 2 uses
  %prol.iter138 = phi i64 [ %prol.iter138.next, %.lr.ph.i42.prol ], [ 0, %.lr.ph.i42.preheader128 ]
  %i.fp = getelementptr inbounds nuw i8, ptr %.01218.i45.prol, i64 8 ; 2 uses
  %i.fq = load double, ptr %.01218.i45.prol, align 8, !tbaa !119
  %i.fr = getelementptr inbounds nuw i8, ptr %.01019.i44.prol, i64 8 ; 2 uses
  store double %i.fq, ptr %.01019.i44.prol, align 8, !tbaa !119
  %i.fs = add nuw nsw i64 %.020.i43.prol, 1       ; 2 uses
  %prol.iter138.next = add i64 %prol.iter138, 1   ; 2 uses
  %prol.iter138.cmp.not = icmp eq i64 %prol.iter138.next, %xtraiter136
  br i1 %prol.iter138.cmp.not, label %.lr.ph.i42.prol.loopexit, label %.lr.ph.i42.prol, !llvm.loop !244

.lr.ph.i42.prol.loopexit:                         ; preds = %.lr.ph.i42.prol, %.lr.ph.i42.preheader128
  %.020.i43.unr = phi i64 [ %.020.i43.ph, %.lr.ph.i42.preheader128 ], [ %i.fs, %.lr.ph.i42.prol ]
  %.01019.i44.unr = phi ptr [ %.01019.i44.ph, %.lr.ph.i42.preheader128 ], [ %i.fr, %.lr.ph.i42.prol ]
  %.01218.i45.unr = phi ptr [ %.01218.i45.ph, %.lr.ph.i42.preheader128 ], [ %i.fp, %.lr.ph.i42.prol ]
  %i.ft = sub nsw i64 %.020.i43.ph, %i.ev
  %i.fu = icmp ugt i64 %i.ft, -8
  br i1 %i.fu, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit49, label %.lr.ph.i42

.preheader.i47:                                   ; preds = %bb.d
  br i1 %i.ff, label %.lr.ph23.preheader.i48, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit49

.lr.ph23.preheader.i48:                           ; preds = %.preheader.i47
  %i.fv = shl nuw i64 %i.ev, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.fd, i8 0, i64 %i.fv, i1 false), !tbaa !119
  br label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit49

.lr.ph.i42:                                       ; preds = %.lr.ph.i42.prol.loopexit, %.lr.ph.i42
  %.020.i43 = phi i64 [ %i.gu, %.lr.ph.i42 ], [ %.020.i43.unr, %.lr.ph.i42.prol.loopexit ]
  %.01019.i44 = phi ptr [ %i.gt, %.lr.ph.i42 ], [ %.01019.i44.unr, %.lr.ph.i42.prol.loopexit ] ; 9 uses
  %.01218.i45 = phi ptr [ %i.gr, %.lr.ph.i42 ], [ %.01218.i45.unr, %.lr.ph.i42.prol.loopexit ] ; 9 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.01218.i45, i64 8
  %i.fx = load double, ptr %.01218.i45, align 8, !tbaa !119
  %i.fy = getelementptr inbounds nuw i8, ptr %.01019.i44, i64 8
  store double %i.fx, ptr %.01019.i44, align 8, !tbaa !119
  %i.fz = getelementptr inbounds nuw i8, ptr %.01218.i45, i64 16
  %i.ga = load double, ptr %i.fw, align 8, !tbaa !119
  %i.gb = getelementptr inbounds nuw i8, ptr %.01019.i44, i64 16
  store double %i.ga, ptr %i.fy, align 8, !tbaa !119
  %i.gc = getelementptr inbounds nuw i8, ptr %.01218.i45, i64 24
  %i.gd = load double, ptr %i.fz, align 8, !tbaa !119
  %i.ge = getelementptr inbounds nuw i8, ptr %.01019.i44, i64 24
  store double %i.gd, ptr %i.gb, align 8, !tbaa !119
  %i.gf = getelementptr inbounds nuw i8, ptr %.01218.i45, i64 32
  %i.gg = load double, ptr %i.gc, align 8, !tbaa !119
  %i.gh = getelementptr inbounds nuw i8, ptr %.01019.i44, i64 32
  store double %i.gg, ptr %i.ge, align 8, !tbaa !119
  %i.gi = getelementptr inbounds nuw i8, ptr %.01218.i45, i64 40
  %i.gj = load double, ptr %i.gf, align 8, !tbaa !119
  %i.gk = getelementptr inbounds nuw i8, ptr %.01019.i44, i64 40
  store double %i.gj, ptr %i.gh, align 8, !tbaa !119
  %i.gl = getelementptr inbounds nuw i8, ptr %.01218.i45, i64 48
  %i.gm = load double, ptr %i.gi, align 8, !tbaa !119
  %i.gn = getelementptr inbounds nuw i8, ptr %.01019.i44, i64 48
  store double %i.gm, ptr %i.gk, align 8, !tbaa !119
  %i.go = getelementptr inbounds nuw i8, ptr %.01218.i45, i64 56
  %i.gp = load double, ptr %i.gl, align 8, !tbaa !119
  %i.gq = getelementptr inbounds nuw i8, ptr %.01019.i44, i64 56
  store double %i.gp, ptr %i.gn, align 8, !tbaa !119
  %i.gr = getelementptr inbounds nuw i8, ptr %.01218.i45, i64 64
  %i.gs = load double, ptr %i.go, align 8, !tbaa !119
  %i.gt = getelementptr inbounds nuw i8, ptr %.01019.i44, i64 64
  store double %i.gs, ptr %i.gq, align 8, !tbaa !119
  %i.gu = add nuw nsw i64 %.020.i43, 8            ; 2 uses
  %exitcond.not.i46.7 = icmp eq i64 %i.gu, %i.ev
  br i1 %exitcond.not.i46.7, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit49, label %.lr.ph.i42, !llvm.loop !245

_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit49:     ; preds = %.lr.ph.i42.prol.loopexit, %.lr.ph.i42, %middle.block120, %._crit_edge55, %.preheader16.i41, %.preheader.i47, %.lr.ph23.preheader.i48
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !166 ; 2 uses
  %i.gx = icmp sgt i32 %i.gw, 0
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.gz = zext i1 %i.gx to i8
  store i8 %i.gz, ptr %i.gy, align 8, !tbaa !252
  %i.ha = icmp eq i32 %i.gw, 0
  br i1 %i.ha, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit49
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 180
  store i32 2, ptr %i.hb, align 4, !tbaa !253
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit49
  ret i32 0
}

declare noundef i32 @_ZNK6casadi8FunctionclEPPKdPPdPxS4_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN6casadi13casadi_newtonIdEEiPKNS_17casadi_newton_memIT_EE(ptr noundef %0) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !261 ; 2 uses
  %i.c = fcmp ogt double %i.b, 0.000000e+00
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !tbaa !126    ; 5 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph.i.preheader, label %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !129  ; 2 uses
  %xtraiter = and i64 %i.d, 1
  %i.h = icmp eq i64 %i.d, 1
  br i1 %i.h, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.d, 9223372036854775806
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.09.i = phi double [ 0.000000e+00, %.lr.ph.i.preheader.new ], [ %i.p, %.lr.ph.i ]
  %.067.i = phi ptr [ %i.g, %.lr.ph.i.preheader.new ], [ %i.m, %.lr.ph.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.i = getelementptr inbounds nuw i8, ptr %.067.i, i64 8
  %i.j = load double, ptr %.067.i, align 8, !tbaa !119
  %i.k = tail call nsz double @llvm.fabs.f64(double %i.j)
  %i.l = tail call nsz double @llvm.maxnum.f64(double %.09.i, double %i.k)
  %i.m = getelementptr inbounds nuw i8, ptr %.067.i, i64 16 ; 2 uses
  %i.n = load double, ptr %i.i, align 8, !tbaa !119
  %i.o = tail call nsz double @llvm.fabs.f64(double %i.n)
  %i.p = tail call nsz double @llvm.maxnum.f64(double %i.l, double %i.o) ; 3 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !254

_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.09.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.i.preheader ], [ %i.p, %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit.loopexit.unr-lcssa ]
  %.067.i.epil.init = phi ptr [ %i.g, %.lr.ph.i.preheader ], [ %i.m, %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit.loopexit.unr-lcssa ]
  %lcmp.mod59 = trunc i64 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod59)
  %i.q = load double, ptr %.067.i.epil.init, align 8, !tbaa !119
  %i.r = tail call nsz double @llvm.fabs.f64(double %i.q)
  %i.s = tail call nsz double @llvm.maxnum.f64(double %.09.i.epil.init, double %i.r)
  br label %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit

_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit:     ; preds = %.lr.ph.i.epil.preheader, %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit.loopexit.unr-lcssa, %bb.b
  %.0.lcssa.i = phi double [ 0.000000e+00, %bb.b ], [ %i.p, %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit.loopexit.unr-lcssa ], [ %i.s, %.lr.ph.i.epil.preheader ]
  %i.t = fcmp ugt double %.0.lcssa.i, %i.b
  br i1 %i.t, label %bb.c, label %bb.f

bb.c:                                             ; preds = %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit, %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !131
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !130
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !137
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !132
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !138
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !133
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !139
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !140
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !135
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !136
  tail call void @_ZN6casadi9casadi_qrIdEEvPKxPKT_PS3_S2_S6_S2_S6_S6_S2_S2_(ptr noundef %i.v, ptr noundef %i.x, ptr noundef %i.z, ptr noundef %i.ab, ptr noundef %i.ad, ptr noundef %i.af, ptr noundef %i.ah, ptr noundef %i.aj, ptr noundef %i.al, ptr noundef %i.an)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !129
  %i.aq = load ptr, ptr %i.aa, align 8, !tbaa !132
  %i.ar = load ptr, ptr %i.ac, align 8, !tbaa !138
  %i.as = load ptr, ptr %i.ae, align 8, !tbaa !133
  %i.at = load ptr, ptr %i.ag, align 8, !tbaa !139
  %i.au = load ptr, ptr %i.ai, align 8, !tbaa !140
  %i.av = load ptr, ptr %i.ak, align 8, !tbaa !135
  %i.aw = load ptr, ptr %i.am, align 8, !tbaa !136
  %i.ax = load ptr, ptr %i.y, align 8, !tbaa !137
  tail call void @_ZN6casadi15casadi_qr_solveIdEEvPT_xxPKxPKS1_S4_S6_S6_S4_S4_S2_(ptr noundef %i.ap, i64 noundef 1, i64 noundef 0, ptr noundef %i.aq, ptr noundef %i.ar, ptr noundef %i.as, ptr noundef %i.at, ptr noundef %i.au, ptr noundef %i.av, ptr noundef %i.aw, ptr noundef %i.ax)
  %i.ay = load i64, ptr %0, align 8, !tbaa !126   ; 12 uses
  %i.az = load ptr, ptr %i.ao, align 8, !tbaa !129 ; 9 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !128 ; 7 uses
  %i.bc = icmp ne ptr %i.az, null
  %i.bd = icmp ne ptr %i.bb, null
  %or.cond.i = and i1 %i.bc, %i.bd
  %i.be = icmp sgt i64 %i.ay, 0                   ; 2 uses
  %or.cond15.i = and i1 %i.be, %or.cond.i
  br i1 %or.cond15.i, label %.lr.ph.i30.preheader, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit.a

.lr.ph.i30.preheader:                             ; preds = %bb.c
  %min.iters.check = icmp ult i64 %i.ay, 6
  br i1 %min.iters.check, label %.lr.ph.i30.preheader56, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i30.preheader
  %i.bf = shl i64 %i.ay, 3                        ; 2 uses
  %i.bg = getelementptr i8, ptr %i.bb, i64 %i.bf
  %i.bh = getelementptr i8, ptr %i.az, i64 %i.bf
  %bound0 = icmp ult ptr %i.bb, %i.bh
  %bound1 = icmp ult ptr %i.az, %i.bg
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i30.preheader56, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ay, 9223372036854775804     ; 4 uses
  %i.bi = shl i64 %n.vec, 3                       ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bb, i64 %i.bi
  %i.bk = getelementptr i8, ptr %i.az, i64 %i.bi
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bl = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bb, i64 %i.bl ; 3 uses
  %next.gep50 = getelementptr i8, ptr %i.az, i64 %i.bl ; 2 uses
  %i.bm = getelementptr i8, ptr %next.gep50, i64 16
  %wide.load = load <2 x double>, ptr %next.gep50, align 8, !tbaa !119, !alias.scope !262
  %wide.load51 = load <2 x double>, ptr %i.bm, align 8, !tbaa !119, !alias.scope !262
  %i.bn = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load52 = load <2 x double>, ptr %next.gep, align 8, !tbaa !119, !alias.scope !263, !noalias !262
  %wide.load53 = load <2 x double>, ptr %i.bn, align 8, !tbaa !119, !alias.scope !263, !noalias !262
  %i.bo = fsub <2 x double> %wide.load52, %wide.load
  %i.bp = fsub <2 x double> %wide.load53, %wide.load51
  store <2 x double> %i.bo, ptr %next.gep, align 8, !tbaa !119, !alias.scope !263, !noalias !262
  store <2 x double> %i.bp, ptr %i.bn, align 8, !tbaa !119, !alias.scope !263, !noalias !262
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %middle.block, label %vector.body, !llvm.loop !258

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ay, %n.vec
  br i1 %cmp.n, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit.a, label %.lr.ph.i30.preheader56

.lr.ph.i30.preheader56:                           ; preds = %vector.memcheck, %.lr.ph.i30.preheader, %middle.block
  %.014.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i30.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.0813.i.ph = phi ptr [ %i.bb, %vector.memcheck ], [ %i.bb, %.lr.ph.i30.preheader ], [ %i.bj, %middle.block ] ; 2 uses
  %.0912.i.ph = phi ptr [ %i.az, %vector.memcheck ], [ %i.az, %.lr.ph.i30.preheader ], [ %i.bk, %middle.block ] ; 2 uses
  %xtraiter60 = and i64 %i.ay, 3                  ; 2 uses
  %lcmp.mod61.not = icmp eq i64 %xtraiter60, 0
  br i1 %lcmp.mod61.not, label %.lr.ph.i30.prol.loopexit, label %.lr.ph.i30.prol

.lr.ph.i30.prol:                                  ; preds = %.lr.ph.i30.preheader56, %.lr.ph.i30.prol
  %.014.i.prol = phi i64 [ %i.bw, %.lr.ph.i30.prol ], [ %.014.i.ph, %.lr.ph.i30.preheader56 ]
  %.0813.i.prol = phi ptr [ %i.bt, %.lr.ph.i30.prol ], [ %.0813.i.ph, %.lr.ph.i30.preheader56 ] ; 3 uses
  %.0912.i.prol = phi ptr [ %i.br, %.lr.ph.i30.prol ], [ %.0912.i.ph, %.lr.ph.i30.preheader56 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i30.prol ], [ 0, %.lr.ph.i30.preheader56 ]
  %i.br = getelementptr inbounds nuw i8, ptr %.0912.i.prol, i64 8 ; 2 uses
  %i.bs = load double, ptr %.0912.i.prol, align 8, !tbaa !119
  %i.bt = getelementptr inbounds nuw i8, ptr %.0813.i.prol, i64 8 ; 2 uses
  %i.bu = load double, ptr %.0813.i.prol, align 8, !tbaa !119
  %i.bv = fsub double %i.bu, %i.bs
  store double %i.bv, ptr %.0813.i.prol, align 8, !tbaa !119
  %i.bw = add nuw nsw i64 %.014.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter60
  br i1 %prol.iter.cmp.not, label %.lr.ph.i30.prol.loopexit, label %.lr.ph.i30.prol, !llvm.loop !259

.lr.ph.i30.prol.loopexit:                         ; preds = %.lr.ph.i30.prol, %.lr.ph.i30.preheader56
  %.014.i.unr = phi i64 [ %.014.i.ph, %.lr.ph.i30.preheader56 ], [ %i.bw, %.lr.ph.i30.prol ]
  %.0813.i.unr = phi ptr [ %.0813.i.ph, %.lr.ph.i30.preheader56 ], [ %i.bt, %.lr.ph.i30.prol ]
  %.0912.i.unr = phi ptr [ %.0912.i.ph, %.lr.ph.i30.preheader56 ], [ %i.br, %.lr.ph.i30.prol ]
  %i.bx = sub nsw i64 %.014.i.ph, %i.ay
  %i.by = icmp ugt i64 %i.bx, -4
  br i1 %i.by, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit.a, label %.lr.ph.i30

.lr.ph.i30:                                       ; preds = %.lr.ph.i30.prol.loopexit, %.lr.ph.i30
  %.014.i = phi i64 [ %i.ct, %.lr.ph.i30 ], [ %.014.i.unr, %.lr.ph.i30.prol.loopexit ]
  %.0813.i = phi ptr [ %i.cq, %.lr.ph.i30 ], [ %.0813.i.unr, %.lr.ph.i30.prol.loopexit ] ; 6 uses
  %.0912.i = phi ptr [ %i.co, %.lr.ph.i30 ], [ %.0912.i.unr, %.lr.ph.i30.prol.loopexit ] ; 5 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.0912.i, i64 8
  %i.ca = load double, ptr %.0912.i, align 8, !tbaa !119
  %i.cb = getelementptr inbounds nuw i8, ptr %.0813.i, i64 8 ; 2 uses
  %i.cc = load double, ptr %.0813.i, align 8, !tbaa !119
  %i.cd = fsub double %i.cc, %i.ca
  store double %i.cd, ptr %.0813.i, align 8, !tbaa !119
  %i.ce = getelementptr inbounds nuw i8, ptr %.0912.i, i64 16
  %i.cf = load double, ptr %i.bz, align 8, !tbaa !119
  %i.cg = getelementptr inbounds nuw i8, ptr %.0813.i, i64 16 ; 2 uses
  %i.ch = load double, ptr %i.cb, align 8, !tbaa !119
  %i.ci = fsub double %i.ch, %i.cf
  store double %i.ci, ptr %i.cb, align 8, !tbaa !119
  %i.cj = getelementptr inbounds nuw i8, ptr %.0912.i, i64 24
  %i.ck = load double, ptr %i.ce, align 8, !tbaa !119
  %i.cl = getelementptr inbounds nuw i8, ptr %.0813.i, i64 24 ; 2 uses
  %i.cm = load double, ptr %i.cg, align 8, !tbaa !119
  %i.cn = fsub double %i.cm, %i.ck
  store double %i.cn, ptr %i.cg, align 8, !tbaa !119
  %i.co = getelementptr inbounds nuw i8, ptr %.0912.i, i64 32
  %i.cp = load double, ptr %i.cj, align 8, !tbaa !119
  %i.cq = getelementptr inbounds nuw i8, ptr %.0813.i, i64 32
  %i.cr = load double, ptr %i.cl, align 8, !tbaa !119
  %i.cs = fsub double %i.cr, %i.cp
  store double %i.cs, ptr %i.cl, align 8, !tbaa !119
  %i.ct = add nuw nsw i64 %.014.i, 4              ; 2 uses
  %exitcond.not.i31.3 = icmp eq i64 %i.ct, %i.ay
  br i1 %exitcond.not.i31.3, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit.a, label %.lr.ph.i30, !llvm.loop !260

_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit.a:  ; preds = %.lr.ph.i30.prol.loopexit, %.lr.ph.i30, %middle.block, %bb.c
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !264 ; 2 uses
  %i.cw = fcmp ogt double %i.cv, 0.000000e+00
  br i1 %i.cw, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit.a
  br i1 %i.be, label %.lr.ph.i33.preheader, label %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit38

.lr.ph.i33.preheader:                             ; preds = %bb.d
  %xtraiter62 = and i64 %i.ay, 1
  %i.cx = icmp eq i64 %i.ay, 1
  br i1 %i.cx, label %.lr.ph.i33.epil.preheader, label %.lr.ph.i33.preheader.new

.lr.ph.i33.preheader.new:                         ; preds = %.lr.ph.i33.preheader
  %unroll_iter66 = and i64 %i.ay, 9223372036854775806
  br label %.lr.ph.i33

.lr.ph.i33:                                       ; preds = %.lr.ph.i33, %.lr.ph.i33.preheader.new
  %.09.i34 = phi double [ 0.000000e+00, %.lr.ph.i33.preheader.new ], [ %i.df, %.lr.ph.i33 ]
  %.067.i36 = phi ptr [ %i.az, %.lr.ph.i33.preheader.new ], [ %i.dc, %.lr.ph.i33 ] ; 3 uses
  %niter67 = phi i64 [ 0, %.lr.ph.i33.preheader.new ], [ %niter67.next.1, %.lr.ph.i33 ]
  %i.cy = getelementptr inbounds nuw i8, ptr %.067.i36, i64 8
  %i.cz = load double, ptr %.067.i36, align 8, !tbaa !119
  %i.da = tail call nsz double @llvm.fabs.f64(double %i.cz)
  %i.db = tail call nsz double @llvm.maxnum.f64(double %.09.i34, double %i.da)
  %i.dc = getelementptr inbounds nuw i8, ptr %.067.i36, i64 16 ; 2 uses
  %i.dd = load double, ptr %i.cy, align 8, !tbaa !119
  %i.de = tail call nsz double @llvm.fabs.f64(double %i.dd)
  %i.df = tail call nsz double @llvm.maxnum.f64(double %i.db, double %i.de) ; 3 uses
  %niter67.next.1 = add nuw nsw i64 %niter67, 2   ; 2 uses
  %niter67.ncmp.1 = icmp eq i64 %niter67.next.1, %unroll_iter66
  br i1 %niter67.ncmp.1, label %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit38.loopexit.unr-lcssa, label %.lr.ph.i33, !llvm.loop !254

_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit38.loopexit.unr-lcssa: ; preds = %.lr.ph.i33
  %lcmp.mod63.not = icmp eq i64 %xtraiter62, 0
  br i1 %lcmp.mod63.not, label %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit38, label %.lr.ph.i33.epil.preheader

.lr.ph.i33.epil.preheader:                        ; preds = %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit38.loopexit.unr-lcssa, %.lr.ph.i33.preheader
  %.09.i34.epil.init = phi double [ 0.000000e+00, %.lr.ph.i33.preheader ], [ %i.df, %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit38.loopexit.unr-lcssa ]
  %.067.i36.epil.init = phi ptr [ %i.az, %.lr.ph.i33.preheader ], [ %i.dc, %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit38.loopexit.unr-lcssa ]
  %lcmp.mod65 = trunc i64 %i.ay to i1
  tail call void @llvm.assume(i1 %lcmp.mod65)
  %i.dg = load double, ptr %.067.i36.epil.init, align 8, !tbaa !119
  %i.dh = tail call nsz double @llvm.fabs.f64(double %i.dg)
  %i.di = tail call nsz double @llvm.maxnum.f64(double %.09.i34.epil.init, double %i.dh)
  br label %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit38

_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit38:   ; preds = %.lr.ph.i33.epil.preheader, %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit38.loopexit.unr-lcssa, %bb.d
  %.0.lcssa.i32 = phi double [ 0.000000e+00, %bb.d ], [ %i.df, %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit38.loopexit.unr-lcssa ], [ %i.di, %.lr.ph.i33.epil.preheader ]
  %i.dj = fcmp ugt double %.0.lcssa.i32, %i.cv
  br i1 %i.dj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit38, %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit.a
  br label %bb.f

bb.f:                                             ; preds = %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit38, %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit, %bb.e
  %.0 = phi i32 [ 0, %bb.e ], [ 1, %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit ], [ 2, %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit38 ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6casadi10FastNewton12codegen_bodyERNS_13CodeGeneratorE(ptr noundef nonnull align 8 dereferenceable(1704) %0, ptr noundef nonnull align 8 dereferenceable(3289) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::vector", align 8       ; 13 uses
  %3 = alloca [1 x %"class.std::__cxx11::basic_string"], align 8 ; 13 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.e = alloca i64, align 8                      ; 25 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %41 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %43 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %44 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %46 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %47 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %48 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %49 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %50 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %51 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %52 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %53 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %54 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %55 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %56 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %57 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %58 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %59 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %60 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %61 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %62 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %63 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %64 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %65 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %66 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %67 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %68 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %69 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %70 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %71 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.f, ptr %3, align 8, !tbaa !13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.f, ptr noundef nonnull align 1 dereferenceable(11) @.str.20, i64 11, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 11, ptr %i.g, align 8, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 27
  store i8 0, ptr %i.h, align 1, !tbaa !18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.i = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #27
          to label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i unwind label %bb.a ; 3 uses

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i: ; preds = %._crit_edge.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.i, ptr %2, align 8, !tbaa !22
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !25
  %i.m = invoke noundef ptr @_ZSt16__do_uninit_copyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET0_T_SA_S9_(ptr noundef nonnull %3, ptr noundef nonnull %i.j, ptr noundef nonnull %i.i)
          to label %bb.c unwind label %bb.a

bb.a:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i, %._crit_edge.i.i
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = load ptr, ptr %2, align 8, !tbaa !22     ; 3 uses
  %.not.i.i5.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i5.i, label %.body, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !25
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #26
  br label %.body

bb.c:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.m, ptr %i.u, align 8, !tbaa !23
  invoke void @_ZN6casadi13CodeGenerator13add_auxiliaryENS0_9AuxiliaryERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(3289) %1, i32 noundef 48, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.d unwind label %bb.ci

bb.d:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %2, align 8, !tbaa !22     ; 3 uses
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !23   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.v, %i.w
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ac, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.v, %bb.d ] ; 3 uses
  %i.x = load ptr, ptr %.05.i.i.i, align 8, !tbaa !17 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !18
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ac, %i.w
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %2, align 8, !tbaa !22
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.d
  %i.ad = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.v, %bb.d ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.ae = load ptr, ptr %i.l, align 8, !tbaa !25
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ad to i64
  %i.ah = sub i64 %i.af, %i.ag
  call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ah) #26
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.e
  %i.ai = load ptr, ptr %3, align 8, !tbaa !17    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !18
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.an, ptr %4, align 8, !tbaa !13
  store i8 109, ptr %i.an, align 8, !tbaa !18
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 1, ptr %i.ao, align 8, !tbaa !19
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 0, ptr %i.ap, align 1, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.aq, ptr %5, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  store i64 24, ptr %i.d, align 8, !tbaa !15
  %i.ar = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc239 unwind label %bb.cj ; 2 uses
end_hunk_0
