Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/b3PgsJacobiSolver?download=true
inline.NumInlined: 892
inline.NumDeleted: 188
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN17b3PgsJacobiSolver17averageVelocitiesEv:bb.a
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 132
  %i.fg = load float, ptr %i.ff, align 4
  %i.fh = fcmp oeq float %i.fg, 0.000000e+00
  %or.cond.i = select i1 %i.fe, i1 %i.fh, i1 false
  br i1 %or.cond.i, label %_ZNK9b3Vector36isZeroEv.exit, label %_ZNK9b3Vector36isZeroEv.exit.thread

_ZNK9b3Vector36isZeroEv.exit:                     ; preds = %bb.w
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fb, i64 136
  %i.fj = load float, ptr %i.fi, align 8, !tbaa !19
  %i.fk = fcmp oeq float %i.fj, 0.000000e+00
  br i1 %i.fk, label %bb.x, label %_ZNK9b3Vector36isZeroEv.exit.thread

_ZNK9b3Vector36isZeroEv.exit.thread:              ; preds = %bb.w, %_ZNK9b3Vector36isZeroEv.exit
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fb, i64 208
  %i.fm = load i32, ptr %i.fl, align 16, !tbaa !19
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fb, i64 64
  %i.fo = load ptr, ptr %i.er, align 8, !tbaa !57
  %i.fp = sext i32 %i.fm to i64                   ; 2 uses
  %i.fq = getelementptr inbounds [16 x i8], ptr %i.fo, i64 %i.fp ; 4 uses
  %i.fr = load float, ptr %i.fn, align 16, !tbaa !19
  %i.fs = load float, ptr %i.fq, align 16, !tbaa !19
  %i.ft = fadd float %i.fr, %i.fs
  store float %i.ft, ptr %i.fq, align 16, !tbaa !19
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fb, i64 68
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !19
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fq, i64 4 ; 2 uses
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !19
  %i.fy = fadd float %i.fv, %i.fx
  store float %i.fy, ptr %i.fw, align 4, !tbaa !19
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fb, i64 72
  %i.ga = load float, ptr %i.fz, align 8, !tbaa !19
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fq, i64 8 ; 2 uses
  %i.gc = load float, ptr %i.gb, align 8, !tbaa !19
  %i.gd = fadd float %i.ga, %i.gc
  store float %i.gd, ptr %i.gb, align 8, !tbaa !19
  %i.ge = load ptr, ptr %i.eq, align 8, !tbaa !29
  %i.gf = getelementptr inbounds nuw [240 x i8], ptr %i.ge, i64 %indvars.iv ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 80
  %i.gh = load ptr, ptr %i.es, align 8, !tbaa !57
  %i.gi = getelementptr inbounds [16 x i8], ptr %i.gh, i64 %i.fp ; 4 uses
  %i.gj = load float, ptr %i.gg, align 16, !tbaa !19
  %i.gk = load float, ptr %i.gi, align 16, !tbaa !19
  %i.gl = fadd float %i.gj, %i.gk
  store float %i.gl, ptr %i.gi, align 16, !tbaa !19
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gf, i64 84
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !19
  %i.go = getelementptr inbounds nuw i8, ptr %i.gi, i64 4 ; 2 uses
  %i.gp = load float, ptr %i.go, align 4, !tbaa !19
  %i.gq = fadd float %i.gn, %i.gp
  store float %i.gq, ptr %i.go, align 4, !tbaa !19
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gf, i64 88
  %i.gs = load float, ptr %i.gr, align 8, !tbaa !19
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gi, i64 8 ; 2 uses
  %i.gu = load float, ptr %i.gt, align 8, !tbaa !19
  %i.gv = fadd float %i.gs, %i.gu
  store float %i.gv, ptr %i.gt, align 8, !tbaa !19
  %.pre = load i32, ptr %i.en, align 4, !tbaa !30
  br label %bb.x

bb.x:                                             ; preds = %_ZNK9b3Vector36isZeroEv.exit, %_ZNK9b3Vector36isZeroEv.exit.thread
  %i.gw = phi i32 [ %i.ez, %_ZNK9b3Vector36isZeroEv.exit ], [ %.pre, %_ZNK9b3Vector36isZeroEv.exit.thread ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gx = sext i32 %i.gw to i64
  %i.gy = icmp slt i64 %indvars.iv.next, %i.gx
  br i1 %i.gy, label %bb.w, label %.preheader, !llvm.loop !214

._crit_edge:                                      ; preds = %bb.aa, %.loopexit, %.preheader
  invoke void @b3LeaveProfileZone()
          to label %_ZN13b3ProfileZoneD2Ev.exit unwind label %bb.y

bb.y:                                             ; preds = %._crit_edge
  %i.gz = landingpad { ptr, i32 }
          catch ptr null
  %i.ha = extractvalue { ptr, i32 } %i.gz, 0
  tail call void @__clang_call_terminate(ptr %i.ha) #23
  unreachable

_ZN13b3ProfileZoneD2Ev.exit:                      ; preds = %._crit_edge
  ret void

bb.z:                                             ; preds = %.lr.ph100, %bb.aa
  %i.hb = phi i32 [ %i.gw, %.lr.ph100 ], [ %i.ip, %bb.aa ]
  %indvars.iv102 = phi i64 [ 0, %.lr.ph100 ], [ %indvars.iv.next103, %bb.aa ] ; 3 uses
  %i.hc = load ptr, ptr %i.eu, align 8, !tbaa !29
  %i.hd = getelementptr inbounds nuw [240 x i8], ptr %i.hc, i64 %indvars.iv102 ; 6 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 208
  %i.hf = load i32, ptr %i.he, align 16, !tbaa !19
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hd, i64 128
  %i.hh = load float, ptr %i.hg, align 16, !tbaa !19
  %i.hi = fcmp oeq float %i.hh, 0.000000e+00
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hd, i64 132
  %i.hk = load float, ptr %i.hj, align 4
  %i.hl = fcmp oeq float %i.hk, 0.000000e+00
  %or.cond.i80 = select i1 %i.hi, i1 %i.hl, i1 false
  br i1 %or.cond.i80, label %_ZNK9b3Vector36isZeroEv.exit81, label %_ZNK9b3Vector36isZeroEv.exit81.thread

_ZNK9b3Vector36isZeroEv.exit81:                   ; preds = %bb.z
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hd, i64 136
  %i.hn = load float, ptr %i.hm, align 8, !tbaa !19
  %i.ho = fcmp oeq float %i.hn, 0.000000e+00
  br i1 %i.ho, label %bb.aa, label %_ZNK9b3Vector36isZeroEv.exit81.thread

_ZNK9b3Vector36isZeroEv.exit81.thread:            ; preds = %bb.z, %_ZNK9b3Vector36isZeroEv.exit81
  %i.hp = load ptr, ptr %i.ev, align 8, !tbaa !43
  %i.hq = sext i32 %i.hf to i64                   ; 3 uses
  %i.hr = getelementptr inbounds [4 x i8], ptr %i.hp, i64 %i.hq
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !90
  %i.ht = sitofp i32 %i.hs to float
  %i.hu = fdiv float 1.000000e+00, %i.ht          ; 3 uses
  %i.hv = load ptr, ptr %i.ew, align 8, !tbaa !57
  %i.hw = getelementptr inbounds [16 x i8], ptr %i.hv, i64 %i.hq ; 2 uses
  %i.hx = load <2 x float>, ptr %i.hw, align 16, !tbaa !19
  %i.hy = insertelement <2 x float> poison, float %i.hu, i64 0
  %i.hz = shufflevector <2 x float> %i.hy, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ia = fmul <2 x float> %i.hx, %i.hz
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  %i.ic = load float, ptr %i.ib, align 8, !tbaa !19
  %i.id = fmul float %i.hu, %i.ic
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.id, i64 0
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hd, i64 64
  store <2 x float> %i.ia, ptr %i.ie, align 16
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hd, i64 72
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.52.0..sroa_idx, align 8, !tbaa !19
  %i.if = load ptr, ptr %i.ex, align 8, !tbaa !57
  %i.ig = getelementptr inbounds [16 x i8], ptr %i.if, i64 %i.hq ; 2 uses
  %i.ih = load <2 x float>, ptr %i.ig, align 16, !tbaa !19
  %i.ii = fmul <2 x float> %i.hz, %i.ih
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.ik = load float, ptr %i.ij, align 8, !tbaa !19
  %i.il = fmul float %i.hu, %i.ik
  %.sroa.3.12.vec.insert.i.i84 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.il, i64 0
  %i.im = load ptr, ptr %i.eu, align 8, !tbaa !29
  %i.in = getelementptr inbounds nuw [240 x i8], ptr %i.im, i64 %indvars.iv102 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 80
  store <2 x float> %i.ii, ptr %i.io, align 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.in, i64 88
  store <2 x float> %.sroa.3.12.vec.insert.i.i84, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !19
  %.pre105 = load i32, ptr %i.en, align 4, !tbaa !30
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNK9b3Vector36isZeroEv.exit81.thread, %_ZNK9b3Vector36isZeroEv.exit81
  %i.ip = phi i32 [ %.pre105, %_ZNK9b3Vector36isZeroEv.exit81.thread ], [ %i.hb, %_ZNK9b3Vector36isZeroEv.exit81 ] ; 2 uses
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1 ; 2 uses
  %i.iq = sext i32 %i.ip to i64
  %i.ir = icmp slt i64 %indvars.iv.next103, %i.iq
  br i1 %i.ir, label %bb.z, label %._crit_edge, !llvm.loop !215

bb.ab:                                            ; preds = %bb.v
  %i.is = landingpad { ptr, i32 }
          catch ptr null
  %i.it = extractvalue { ptr, i32 } %i.is, 0
  tail call void @__clang_call_terminate(ptr %i.it) #23
  unreachable

_ZN13b3ProfileZoneD2Ev.exit87:                    ; preds = %bb.v
  resume { ptr, i32 } %i.ey
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN17b3PgsJacobiSolver45solveGroupCacheFriendlySplitImpulseIterationsEPP17b3TypedConstraintiRK19b3ContactSolverInfo(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(448) %0, ptr nofree readnone captures(none) %1, i32 %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(84) %3) unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !68
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.d = load i32, ptr %i.c, align 4, !tbaa !70
  %i.e = and i32 %i.d, 256
  %.not24 = icmp eq i32 %i.e, 0
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !69   ; 3 uses
  %i.h = icmp sgt i32 %i.g, 0                     ; 2 uses
  br i1 %.not24, label %.preheader, label %.preheader25

.preheader25:                                     ; preds = %bb.b
  br i1 %i.h, label %.lr.ph29, label %.loopexit

.lr.ph29:                                         ; preds = %.preheader25
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i32, ptr %i.i, align 4, !tbaa !37   ; 2 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph29.split, label %.loopexit

.preheader:                                       ; preds = %bb.b
  br i1 %i.h, label %.lr.ph35, label %.loopexit

.lr.ph35:                                         ; preds = %.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load i32, ptr %i.o, align 4, !tbaa !37   ; 2 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph35.split, label %.loopexit

.lr.ph29.split:                                   ; preds = %.lr.ph29, %._crit_edge
  %i.u = phi i32 [ %4, %._crit_edge ], [ %i.g, %.lr.ph29 ]
  %i.v = phi i32 [ %i.am, %._crit_edge ], [ %i.m, %.lr.ph29 ] ; 3 uses
  %.028 = phi i32 [ %i.an, %._crit_edge ], [ 0, %.lr.ph29 ]
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph29.split
  %wide.trip.count = zext nneg i32 %i.v to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !43
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv
  %i.z = load i32, ptr %i.y, align 4, !tbaa !90
  %i.aa = load ptr, ptr %i.k, align 8, !tbaa !36
  %i.ab = sext i32 %i.z to i64
  %i.ac = getelementptr inbounds [160 x i8], ptr %i.aa, i64 %i.ab ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  %i.ae = load i32, ptr %i.ad, align 16, !tbaa !85
  %i.af = load ptr, ptr %i.l, align 8, !tbaa !29  ; 2 uses
  %i.ag = sext i32 %i.ae to i64
  %i.ah = getelementptr inbounds [240 x i8], ptr %i.af, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 148
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !86
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [240 x i8], ptr %i.af, i64 %i.ak
  tail call void @_ZN17b3PgsJacobiSolver43resolveSplitPenetrationImpulseCacheFriendlyER12b3SolverBodyS1_RK18b3SolverConstraint(ptr noundef nonnull align 8 dereferenceable(448) %0, ptr noundef nonnull align 16 dereferenceable(228) %i.ah, ptr noundef nonnull align 16 dereferenceable(228) %i.al, ptr noundef nonnull align 16 dereferenceable(160) %i.ac)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !216

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load i32, ptr %i.i, align 4, !tbaa !37
  %.pre.a = load i32, ptr %i.f, align 4, !tbaa !69
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph29.split
  %4 = phi i32 [ %.pre.a, %._crit_edge.loopexit ], [ %i.u, %.lr.ph29.split ] ; 2 uses
  %i.am = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.v, %.lr.ph29.split ]
  %i.an = add nuw nsw i32 %.028, 1                ; 2 uses
  %i.ao = icmp slt i32 %i.an, %4
  br i1 %i.ao, label %.lr.ph29.split, label %.loopexit, !llvm.loop !217

.lr.ph35.split:                                   ; preds = %.lr.ph35, %._crit_edge33
  %i.ap = phi i32 [ %5, %._crit_edge33 ], [ %i.g, %.lr.ph35 ]
  %i.aq = phi i32 [ %i.bh, %._crit_edge33 ], [ %i.s, %.lr.ph35 ] ; 3 uses
  %.134 = phi i32 [ %i.bi, %._crit_edge33 ], [ 0, %.lr.ph35 ]
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.lr.ph32.preheader, label %._crit_edge33

.lr.ph32.preheader:                               ; preds = %.lr.ph35.split
  %wide.trip.count43 = zext nneg i32 %i.aq to i64
  br label %.lr.ph32

.lr.ph32:                                         ; preds = %.lr.ph32.preheader, %.lr.ph32
  %indvars.iv40 = phi i64 [ 0, %.lr.ph32.preheader ], [ %indvars.iv.next41, %.lr.ph32 ] ; 2 uses
  %i.as = load ptr, ptr %i.p, align 8, !tbaa !43
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv40
  %i.au = load i32, ptr %i.at, align 4, !tbaa !90
  %i.av = load ptr, ptr %i.q, align 8, !tbaa !36
  %i.aw = sext i32 %i.au to i64
  %i.ax = getelementptr inbounds [160 x i8], ptr %i.av, i64 %i.aw ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 144
  %i.az = load i32, ptr %i.ay, align 16, !tbaa !85
  %i.ba = load ptr, ptr %i.r, align 8, !tbaa !29  ; 2 uses
  %i.bb = sext i32 %i.az to i64
  %i.bc = getelementptr inbounds [240 x i8], ptr %i.ba, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 148
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !86
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [240 x i8], ptr %i.ba, i64 %i.bf
  tail call void @_ZN17b3PgsJacobiSolver43resolveSplitPenetrationImpulseCacheFriendlyER12b3SolverBodyS1_RK18b3SolverConstraint(ptr noundef nonnull align 8 dereferenceable(448) %0, ptr noundef nonnull align 16 dereferenceable(228) %i.bc, ptr noundef nonnull align 16 dereferenceable(228) %i.bg, ptr noundef nonnull align 16 dereferenceable(160) %i.ax)
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1 ; 2 uses
  %exitcond44.not = icmp eq i64 %indvars.iv.next41, %wide.trip.count43
  br i1 %exitcond44.not, label %._crit_edge33.loopexit, label %.lr.ph32, !llvm.loop !218

._crit_edge33.loopexit:                           ; preds = %.lr.ph32
  %.pre47 = load i32, ptr %i.o, align 4, !tbaa !37
  %.pre45 = load i32, ptr %i.f, align 4, !tbaa !69
  br label %._crit_edge33

._crit_edge33:                                    ; preds = %._crit_edge33.loopexit, %.lr.ph35.split
  %5 = phi i32 [ %.pre45, %._crit_edge33.loopexit ], [ %i.ap, %.lr.ph35.split ] ; 2 uses
  %i.bh = phi i32 [ %.pre47, %._crit_edge33.loopexit ], [ %i.aq, %.lr.ph35.split ]
  %i.bi = add nuw nsw i32 %.134, 1                ; 2 uses
  %i.bj = icmp slt i32 %i.bi, %5
  br i1 %i.bj, label %.lr.ph35.split, label %.loopexit, !llvm.loop !219

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge33, %.lr.ph35, %.lr.ph29, %.preheader25, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef float @_ZN17b3PgsJacobiSolver33solveGroupCacheFriendlyIterationsEPP17b3TypedConstraintiRK19b3ContactSolverInfo(ptr noundef nonnull align 8 dereferenceable(448) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(84) %3) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @b3EnterProfileZone(ptr noundef nonnull @.str.2)
  %i.a = load ptr, ptr %0, align 8, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  invoke void %i.c(ptr noundef nonnull align 8 dereferenceable(448) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(84) %3)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 428
  %i.e = load i32, ptr %i.d, align 4, !tbaa !102
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.g = load i32, ptr %i.f, align 4, !tbaa !69
  %. = tail call i32 @llvm.smax.i32(i32 %i.e, i32 %i.g) ; 2 uses
  %i.h = icmp sgt i32 %., 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 424
  br label %bb.d

._crit_edge:                                      ; preds = %bb.h, %bb.b
  invoke void @b3LeaveProfileZone()
          to label %_ZN13b3ProfileZoneD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #23
  unreachable

_ZN13b3ProfileZoneD2Ev.exit:                      ; preds = %._crit_edge
  ret float 0.000000e+00

bb.d:                                             ; preds = %.lr.ph, %bb.h
  %.020 = phi i32 [ 0, %.lr.ph ], [ %i.q, %bb.h ] ; 2 uses
  %i.l = invoke noundef float @_ZN17b3PgsJacobiSolver20solveSingleIterationEiPP17b3TypedConstraintiRK19b3ContactSolverInfo(ptr noundef nonnull align 8 dereferenceable(448) %0, i32 noundef %.020, ptr poison, i32 poison, ptr noundef nonnull align 4 dereferenceable(84) %3)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.m = load i8, ptr %i.i, align 8, !tbaa !62, !range !65, !noundef !89
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN17b3PgsJacobiSolver17averageVelocitiesEv(ptr noundef nonnull align 8 dereferenceable(448) %0)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.f, %bb.d, %bb.a
  %lpad.loopexit.split-lp22 = landingpad { ptr, i32 }
          cleanup
  invoke void @b3LeaveProfileZone()
          to label %_ZN13b3ProfileZoneD2Ev.exit19 unwind label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #23
  unreachable

_ZN13b3ProfileZoneD2Ev.exit19:                    ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp22

bb.h:                                             ; preds = %bb.e, %bb.f
  %i.q = add nuw nsw i32 %.020, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.q, %.
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !221
}

; Function Attrs: mustprogress uwtable
define dso_local noundef float @_ZN17b3PgsJacobiSolver29solveGroupCacheFriendlyFinishEP15b3RigidBodyDataP13b3InertiaDataiRK19b3ContactSolverInfo(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(448) %0, ptr nofree noundef captures(none) %1, ptr nofree readnone captures(none) %2, i32 %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(84) %4) unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.b3Quaternion, align 16       ; 5 uses
  tail call void @b3EnterProfileZone(ptr noundef nonnull @.str.4)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !37   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.d = load i32, ptr %i.c, align 4, !tbaa !70   ; 2 uses
  %i.e = and i32 %i.d, 4
  %.not = icmp ne i32 %i.e, 0
  %i.f = icmp sgt i32 %i.b, 0
  %or.cond = select i1 %.not, i1 %i.f, i1 false
  br i1 %or.cond, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !36   ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !36   ; 6 uses
  %i.k = and i32 %i.d, 16
  %.not95 = icmp eq i32 %i.k, 0
  %wide.trip.count239 = zext nneg i32 %i.b to i64 ; 4 uses
  br i1 %.not95, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %xtraiter = and i64 %wide.trip.count239, 1
  %i.l = icmp eq i32 %i.b, 1
  br i1 %i.l, label %.lr.ph.split.epil.preheader, label %.lr.ph.split.preheader.new

.lr.ph.split.preheader.new:                       ; preds = %.lr.ph.split.preheader
  %unroll_iter = and i64 %wide.trip.count239, 2147483646
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %xtraiter260 = and i64 %wide.trip.count239, 1
  %i.m = icmp eq i32 %i.b, 1
  br i1 %i.m, label %.lr.ph.split.us.epil.preheader, label %.lr.ph.split.us.preheader.new

.lr.ph.split.us.preheader.new:                    ; preds = %.lr.ph.split.us.preheader
  %unroll_iter263 = and i64 %wide.trip.count239, 2147483646
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us, %.lr.ph.split.us.preheader.new
  %indvars.iv236 = phi i64 [ 0, %.lr.ph.split.us.preheader.new ], [ %indvars.iv.next237.1, %.lr.ph.split.us ] ; 3 uses
  %niter264 = phi i64 [ 0, %.lr.ph.split.us.preheader.new ], [ %niter264.next.1, %.lr.ph.split.us ]
  %i.n = getelementptr inbounds nuw [160 x i8], ptr %i.h, i64 %indvars.iv236 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 128
  %i.p = load ptr, ptr %i.o, align 16, !tbaa !19  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 84
  %i.r = load float, ptr %i.q, align 4, !tbaa !73
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  store float %i.r, ptr %i.s, align 16, !tbaa !16
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 140
  %i.u = load i32, ptr %i.t, align 4, !tbaa !93
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds [160 x i8], ptr %i.j, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 84
  %i.y = load float, ptr %i.x, align 4, !tbaa !73
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 96
  store float %i.y, ptr %i.z, align 16, !tbaa !97
  %i.aa = getelementptr inbounds nuw [160 x i8], ptr %i.h, i64 %indvars.iv236 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 288
  %i.ac = load ptr, ptr %i.ab, align 16, !tbaa !19 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 244
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !73
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  store float %i.ae, ptr %i.af, align 16, !tbaa !16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 300
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !93
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [160 x i8], ptr %i.j, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 84
  %i.al = load float, ptr %i.ak, align 4, !tbaa !73
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 96
  store float %i.al, ptr %i.am, align 16, !tbaa !97
  %indvars.iv.next237.1 = add nuw nsw i64 %indvars.iv236, 2 ; 2 uses
  %niter264.next.1 = add i64 %niter264, 2         ; 2 uses
  %niter264.ncmp.1 = icmp eq i64 %niter264.next.1, %unroll_iter263
  br i1 %niter264.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph.split.us, !llvm.loop !222

.lr.ph.split:                                     ; preds = %.lr.ph.split, %.lr.ph.split.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader.new ], [ %indvars.iv.next.1, %.lr.ph.split ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.split.preheader.new ], [ %niter.next.1, %.lr.ph.split ]
  %i.an = getelementptr inbounds nuw [160 x i8], ptr %i.h, i64 %indvars.iv ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 128
  %i.ap = load ptr, ptr %i.ao, align 16, !tbaa !19 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 84
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !73
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  store float %i.ar, ptr %i.as, align 16, !tbaa !16
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 140
  %i.au = load i32, ptr %i.at, align 4, !tbaa !93
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr [160 x i8], ptr %i.j, i64 %i.av ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 84
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !73
  %i.az = getelementptr inbounds nuw i8, ptr %i.ap, i64 96
  store float %i.ay, ptr %i.az, align 16, !tbaa !97
  %i.ba = getelementptr i8, ptr %i.aw, i64 244
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !73
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ap, i64 100
  store float %i.bb, ptr %i.bc, align 4, !tbaa !98
  %i.bd = getelementptr inbounds nuw [160 x i8], ptr %i.h, i64 %indvars.iv ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 288
  %i.bf = load ptr, ptr %i.be, align 16, !tbaa !19 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 244
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !73
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  store float %i.bh, ptr %i.bi, align 16, !tbaa !16
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 300
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !93
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr [160 x i8], ptr %i.j, i64 %i.bl ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 84
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !73
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bf, i64 96
  store float %i.bo, ptr %i.bp, align 16, !tbaa !97
  %i.bq = getelementptr i8, ptr %i.bm, i64 244
  %i.br = load float, ptr %i.bq, align 4, !tbaa !73
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bf, i64 100
  store float %i.br, ptr %i.bs, align 4, !tbaa !98
end_hunk_0
