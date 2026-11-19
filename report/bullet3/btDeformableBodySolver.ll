Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btDeformableBodySolver?download=true
inline.NumInlined: 1163
inline.NumDeleted: 279
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 114
loop-unroll.NumUnrolled: 123
begin_hunk_0_@_ZN22btDeformableBodySolver26solveDeformableConstraintsEf:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 596
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 8 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  br label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 7 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !109
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  invoke void @_ZN34btDeformableBackwardEulerObjective15computeResidualEfR20btAlignedObjectArrayI9btVector3E(ptr noundef nonnull align 8 dereferenceable(504) %i.aa, float noundef %1, ptr noundef nonnull align 8 dereferenceable(25) %i.ab)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.c:                                             ; preds = %bb.b
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !109
  invoke void @_ZN34btDeformableBackwardEulerObjective20applyDynamicFrictionER20btAlignedObjectArrayI9btVector3E(ptr noundef nonnull align 8 dereferenceable(504) %i.ac, ptr noundef nonnull align 8 dereferenceable(25) %i.ab)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !108, !range !52, !noundef !58
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ah = load ptr, ptr %i.z, align 8, !tbaa !109
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.aj = invoke noundef i32 @_ZN19btConjugateGradientI34btDeformableBackwardEulerObjectiveE5solveERS0_R20btAlignedObjectArrayI9btVector3ERKS5_b(ptr noundef nonnull align 8 dereferenceable(144) %i.ai, ptr noundef nonnull align 8 dereferenceable(504) %i.ah, ptr noundef nonnull align 8 dereferenceable(25) %i.ag, ptr noundef nonnull align 8 dereferenceable(25) %i.ab, i1 noundef zeroext false)
          to label %.loopexit.sink.split unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store i8 1, ptr %i.ak, align 8, !tbaa !48
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr null, ptr %i.al, align 8, !tbaa !49
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.am, align 4, !tbaa !50
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %i.an, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store i8 1, ptr %i.ao, align 8, !tbaa !48
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr null, ptr %i.ap, align 8, !tbaa !49
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %i.aq, align 4, !tbaa !50
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 0, ptr %i.ar, align 8, !tbaa !51
  %i.as = load ptr, ptr %i.z, align 8, !tbaa !109
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  invoke void @_ZN34btDeformableBackwardEulerObjective24addLagrangeMultiplierRHSERK20btAlignedObjectArrayI9btVector3ES4_RS2_(ptr noundef nonnull align 8 dereferenceable(504) %i.as, ptr noundef nonnull align 8 dereferenceable(25) %i.ab, ptr noundef nonnull align 8 dereferenceable(25) %i.at, ptr noundef nonnull align 8 dereferenceable(25) %3)
          to label %bb.g unwind label %bb.p

bb.g:                                             ; preds = %bb.f
  %i.au = load ptr, ptr %i.z, align 8, !tbaa !109
  invoke void @_ZN34btDeformableBackwardEulerObjective21addLagrangeMultiplierERK20btAlignedObjectArrayI9btVector3ERS2_(ptr noundef nonnull align 8 dereferenceable(504) %i.au, ptr noundef nonnull align 8 dereferenceable(25) %i.at, ptr noundef nonnull align 8 dereferenceable(25) %4)
          to label %bb.h unwind label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.av = load ptr, ptr %i.z, align 8, !tbaa !109
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !152 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !64
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  invoke void %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, i1 noundef zeroext true)
          to label %bb.i unwind label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.bb = load i8, ptr %i.ad, align 8, !tbaa !108, !range !52, !noundef !58
  %i.bc = trunc nuw i8 %i.bb to i1
  %i.bd = load ptr, ptr %i.z, align 8, !tbaa !109 ; 2 uses
  br i1 %i.bc, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.bf = invoke noundef i32 @_ZN19btConjugateGradientI34btDeformableBackwardEulerObjectiveE5solveERS0_R20btAlignedObjectArrayI9btVector3ERKS5_b(ptr noundef nonnull align 8 dereferenceable(144) %i.be, ptr noundef nonnull align 8 dereferenceable(504) %i.bd, ptr noundef nonnull align 8 dereferenceable(25) %4, ptr noundef nonnull align 8 dereferenceable(25) %3, i1 noundef zeroext false)
          to label %_ZN22btDeformableBodySolver11computeStepER20btAlignedObjectArrayI9btVector3ERKS2_.exit77 unwind label %bb.p ; 0 uses

bb.k:                                             ; preds = %bb.i
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.bh = invoke noundef i32 @_ZN19btConjugateResidualI34btDeformableBackwardEulerObjectiveE5solveERS0_R20btAlignedObjectArrayI9btVector3ERKS5_b(ptr noundef nonnull align 8 dereferenceable(212) %i.bg, ptr noundef nonnull align 8 dereferenceable(504) %i.bd, ptr noundef nonnull align 8 dereferenceable(25) %4, ptr noundef nonnull align 8 dereferenceable(25) %3, i1 noundef zeroext false)
          to label %_ZN22btDeformableBodySolver11computeStepER20btAlignedObjectArrayI9btVector3ERKS2_.exit77 unwind label %bb.p ; 0 uses

_ZN22btDeformableBodySolver11computeStepER20btAlignedObjectArrayI9btVector3ERKS2_.exit77: ; preds = %bb.k, %bb.j
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !50
  %i.bk = icmp sgt i32 %i.bj, 0
  br i1 %i.bk, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN22btDeformableBodySolver11computeStepER20btAlignedObjectArrayI9btVector3ERKS2_.exit77
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.q

._crit_edge:                                      ; preds = %bb.q, %_ZN22btDeformableBodySolver11computeStepER20btAlignedObjectArrayI9btVector3ERKS2_.exit77
  %i.bm = load ptr, ptr %i.ap, align 8, !tbaa !49 ; 2 uses
  %.not.i.i.i = icmp ne ptr %i.bm, null
  %i.bn = load i8, ptr %i.ao, align 8, !range !52
  %i.bo = trunc nuw i8 %i.bn to i1
  %or.cond.i.i = select i1 %.not.i.i.i, i1 %i.bo, i1 false
  br i1 %or.cond.i.i, label %bb.l, label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit

bb.l:                                             ; preds = %._crit_edge
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.bm)
          to label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  call void @__clang_call_terminate(ptr %i.bq) #26
  unreachable

_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit:   ; preds = %._crit_edge, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.br = load ptr, ptr %i.al, align 8, !tbaa !49 ; 2 uses
  %.not.i.i.i78 = icmp ne ptr %i.br, null
  %i.bs = load i8, ptr %i.ak, align 8, !range !52
  %i.bt = trunc nuw i8 %i.bs to i1
  %or.cond.i.i79 = select i1 %.not.i.i.i78, i1 %i.bt, i1 false
  br i1 %or.cond.i.i79, label %bb.n, label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit80

bb.n:                                             ; preds = %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.br)
          to label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit80 unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  call void @__clang_call_terminate(ptr %i.bv) #26
  unreachable

_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit80: ; preds = %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %.loopexit.sink.split

bb.p:                                             ; preds = %bb.k, %bb.j, %bb.h, %bb.g, %bb.f
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN20btAlignedObjectArrayI9btVector3ED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @_ZN20btAlignedObjectArrayI9btVector3ED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %.lr.ph, %bb.q
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.q ] ; 3 uses
  %i.bx = load ptr, ptr %i.ap, align 8, !tbaa !49
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %i.bx, i64 %indvars.iv
  %i.bz = load ptr, ptr %i.bl, align 8, !tbaa !49
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.bz, i64 %indvars.iv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ca, ptr noundef nonnull align 4 dereferenceable(16) %i.by, i64 16, i1 false), !tbaa.struct !60
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cb = load i32, ptr %i.bi, align 4, !tbaa !50
  %i.cc = sext i32 %i.cb to i64
  %i.cd = icmp slt i64 %indvars.iv.next, %i.cc
  br i1 %i.cd, label %bb.q, label %._crit_edge, !llvm.loop !351

bb.r:                                             ; preds = %.lr.ph160, %.critedge
  %.053159 = phi i32 [ 0, %.lr.ph160 ], [ %i.lz, %.critedge ] ; 2 uses
  invoke void @_ZN22btDeformableBodySolver11updateStateEv(ptr noundef nonnull align 8 dereferenceable(609) %0)
          to label %.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader:                                       ; preds = %bb.r
  %i.ce = load i32, ptr %i.g, align 4, !tbaa !101 ; 2 uses
  %i.cf = icmp sgt i32 %i.ce, 0
  br i1 %i.cf, label %.lr.ph155, label %._crit_edge156

._crit_edge156:                                   ; preds = %._crit_edge152, %.preheader
  %i.cg = load ptr, ptr %i.k, align 8, !tbaa !109
  invoke void @_ZN34btDeformableBackwardEulerObjective15computeResidualEfR20btAlignedObjectArrayI9btVector3E(ptr noundef nonnull align 8 dereferenceable(504) %i.cg, float noundef %1, ptr noundef nonnull align 8 dereferenceable(25) %i.l)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph155:                                        ; preds = %.preheader, %._crit_edge152
  %i.ch = phi i32 [ %i.cp, %._crit_edge152 ], [ %i.ce, %.preheader ]
  %indvars.iv177 = phi i64 [ %indvars.iv.next178, %._crit_edge152 ], [ 0, %.preheader ] ; 2 uses
  %.050153 = phi i32 [ %.1.lcssa, %._crit_edge152 ], [ 0, %.preheader ] ; 2 uses
  %i.ci = load ptr, ptr %i.h, align 8, !tbaa !100
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv177
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !154 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 932 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !158 ; 2 uses
  %i.cn = icmp sgt i32 %i.cm, 0
  br i1 %i.cn, label %.lr.ph151, label %._crit_edge152

.lr.ph151:                                        ; preds = %.lr.ph155
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 944 ; 2 uses
  %.pre183 = load ptr, ptr %i.co, align 8, !tbaa !159
  br label %bb.s

._crit_edge152.loopexit:                          ; preds = %bb.u
  %.pre185 = load i32, ptr %i.g, align 4, !tbaa !101
  br label %._crit_edge152

._crit_edge152:                                   ; preds = %._crit_edge152.loopexit, %.lr.ph155
  %i.cp = phi i32 [ %i.ch, %.lr.ph155 ], [ %.pre185, %._crit_edge152.loopexit ] ; 2 uses
  %.1.lcssa = phi i32 [ %.050153, %.lr.ph155 ], [ %6, %._crit_edge152.loopexit ]
  %indvars.iv.next178 = add nuw nsw i64 %indvars.iv177, 1 ; 2 uses
  %i.cq = sext i32 %i.cp to i64
  %i.cr = icmp slt i64 %indvars.iv.next178, %i.cq
  br i1 %i.cr, label %.lr.ph155, label %._crit_edge156, !llvm.loop !352

bb.s:                                             ; preds = %.lr.ph151, %bb.u
  %i.cs = phi i32 [ %i.cm, %.lr.ph151 ], [ %i.dk, %bb.u ]
  %i.ct = phi ptr [ %.pre183, %.lr.ph151 ], [ %i.dl, %bb.u ] ; 2 uses
  %indvars.iv172 = phi i64 [ 0, %.lr.ph151 ], [ %indvars.iv.next171, %bb.u ] ; 2 uses
  %.1148 = phi i32 [ %.050153, %.lr.ph151 ], [ %6, %bb.u ] ; 2 uses
  %i.cu = getelementptr inbounds nuw [256 x i8], ptr %i.ct, i64 %indvars.iv172
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 112
  %i.cw = load float, ptr %i.cv, align 8, !tbaa !167 ; 2 uses
  %i.cx = fcmp ogt float %i.cw, 0.000000e+00
  br i1 %i.cx, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cy = fdiv float -1.000000e+00, %i.cw         ; 2 uses
  %i.cz = load ptr, ptr %i.i, align 8, !tbaa !49
  %5 = sext i32 %.1148 to i64                     ; 2 uses
  %i.da = getelementptr inbounds [16 x i8], ptr %i.cz, i64 %5 ; 2 uses
  %i.db = load <2 x float>, ptr %i.da, align 4, !tbaa !62
  %i.dc = insertelement <2 x float> poison, float %i.cy, i64 0
  %i.dd = shufflevector <2 x float> %i.dc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.de = fmul <2 x float> %i.dd, %i.db
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dg = load float, ptr %i.df, align 4, !tbaa !62
  %i.dh = fmul float %i.cy, %i.dg
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dh, i64 0
  %i.di = load ptr, ptr %i.j, align 8, !tbaa !49
  %i.dj = getelementptr inbounds [16 x i8], ptr %i.di, i64 %5 ; 2 uses
  store <2 x float> %i.de, ptr %i.dj, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !59
  %.pre = load ptr, ptr %i.co, align 8, !tbaa !159
  %.pre184 = load i32, ptr %i.cl, align 4, !tbaa !158
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.dk = phi i32 [ %.pre184, %bb.t ], [ %i.cs, %bb.s ] ; 2 uses
  %i.dl = phi ptr [ %.pre, %bb.t ], [ %i.ct, %bb.s ]
  %6 = add nsw i32 %.1148, 1                      ; 2 uses
  %indvars.iv.next171 = add nuw nsw i64 %indvars.iv172, 1 ; 2 uses
  %i.dm = sext i32 %i.dk to i64
  %i.dn = icmp slt i64 %indvars.iv.next171, %i.dm
  br i1 %i.dn, label %bb.s, label %._crit_edge152.loopexit, !llvm.loop !353

bb.v:                                             ; preds = %._crit_edge156
  %i.do = load ptr, ptr %i.k, align 8, !tbaa !109
  %i.dp = invoke noundef float @_ZNK34btDeformableBackwardEulerObjective11computeNormERK20btAlignedObjectArrayI9btVector3E(ptr noundef nonnull align 8 dereferenceable(504) %i.do, ptr noundef nonnull align 8 dereferenceable(25) %i.l)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %bb.v
  %i.dq = load float, ptr %i.m, align 8, !tbaa !106
  %i.dr = fcmp olt float %i.dp, %i.dq
  %i.ds = icmp ne i32 %.053159, 0
  %or.cond = and i1 %i.ds, %i.dr
  br i1 %or.cond, label %.loopexit.sink.split, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dt = load ptr, ptr %i.k, align 8, !tbaa !109
  invoke void @_ZN34btDeformableBackwardEulerObjective20applyDynamicFrictionER20btAlignedObjectArrayI9btVector3E(ptr noundef nonnull align 8 dereferenceable(504) %i.dt, ptr noundef nonnull align 8 dereferenceable(25) %i.l)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.y:                                             ; preds = %bb.x
  %i.du = load i8, ptr %i.n, align 4, !tbaa !107, !range !52, !noundef !58
  %i.dv = trunc nuw i8 %i.du to i1
  br i1 %i.dv, label %bb.z, label %bb.au

bb.z:                                             ; preds = %bb.y
  %i.dw = invoke noundef float @_ZN22btDeformableBodySolver18computeDescentStepER20btAlignedObjectArrayI9btVector3ERKS2_b(ptr noundef nonnull align 8 dereferenceable(609) %0, ptr noundef nonnull align 8 dereferenceable(25) %i.o, ptr noundef nonnull align 8 dereferenceable(25) %i.l, i1 noundef zeroext false)
          to label %bb.aa unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aa:                                            ; preds = %bb.z
  %i.dx = load ptr, ptr %i.k, align 8, !tbaa !109
  %i.dy = invoke noundef float @_ZN34btDeformableBackwardEulerObjective11totalEnergyEf(ptr noundef nonnull align 8 dereferenceable(504) %i.dx, float noundef %1)
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ab:                                            ; preds = %bb.aa
  %i.dz = load i32, ptr %i.g, align 4, !tbaa !101 ; 2 uses
  %i.ea = icmp sgt i32 %i.dz, 0
  br i1 %i.ea, label %.lr.ph20.i, label %_ZN22btDeformableBodySolver13kineticEnergyEv.exit

.lr.ph20.i:                                       ; preds = %bb.ab
  %i.eb = load ptr, ptr %i.h, align 8, !tbaa !100
  %wide.trip.count27.i = zext nneg i32 %i.dz to i64
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge.i, %.lr.ph20.i
  %indvars.iv24.i = phi i64 [ 0, %.lr.ph20.i ], [ %indvars.iv.next25.i, %._crit_edge.i ] ; 2 uses
  %.01417.i = phi float [ 0.000000e+00, %.lr.ph20.i ], [ %.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv24.i
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !154 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 932
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !158 ; 2 uses
  %i.eg = icmp sgt i32 %i.ef, 0
  br i1 %i.eg, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.ac
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ed, i64 944
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !159
  %wide.trip.count.i = zext nneg i32 %i.ef to i64
  br label %bb.ad

._crit_edge.i:                                    ; preds = %bb.af, %bb.ac
  %.1.lcssa.i = phi float [ %.01417.i, %bb.ac ], [ %.2.i, %bb.af ] ; 2 uses
  %indvars.iv.next25.i = add nuw nsw i64 %indvars.iv24.i, 1 ; 2 uses
  %exitcond28.not.i = icmp eq i64 %indvars.iv.next25.i, %wide.trip.count27.i
  br i1 %exitcond28.not.i, label %_ZN22btDeformableBodySolver13kineticEnergyEv.exit, label %bb.ac, !llvm.loop !5

bb.ad:                                            ; preds = %bb.af, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.af ] ; 2 uses
  %.115.i = phi float [ %.01417.i, %.lr.ph.i ], [ %.2.i, %bb.af ] ; 2 uses
  %i.ej = getelementptr inbounds nuw [256 x i8], ptr %i.ei, i64 %indvars.iv.i ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 112
  %i.el = load float, ptr %i.ek, align 8, !tbaa !167 ; 2 uses
  %i.em = fcmp ogt float %i.el, 0.000000e+00
  br i1 %i.em, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.en = getelementptr inbounds nuw i8, ptr %i.ej, i64 136
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !168
  %i.ep = load ptr, ptr %i.i, align 8, !tbaa !49
  %i.eq = sext i32 %i.eo to i64
  %i.er = getelementptr inbounds [16 x i8], ptr %i.ep, i64 %i.eq ; 3 uses
  %i.es = load float, ptr %i.er, align 4, !tbaa !62 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %i.eu = load float, ptr %i.et, align 4, !tbaa !62 ; 2 uses
  %i.ev = fmul float %i.eu, %i.eu
  %i.ew = call float @llvm.fmuladd.f32(float %i.es, float %i.es, float %i.ev)
  %i.ex = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !62 ; 2 uses
  %i.ez = call noundef float @llvm.fmuladd.f32(float %i.ey, float %i.ey, float %i.ew)
  %i.fa = fpext float %i.ez to double
  %i.fb = fmul double %i.fa, 5.000000e-01
  %i.fc = fpext float %i.el to double
  %i.fd = fdiv double %i.fb, %i.fc
  %i.fe = fpext float %.115.i to double
  %i.ff = fadd double %i.fd, %i.fe
  %i.fg = fptrunc double %i.ff to float
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.2.i = phi float [ %i.fg, %bb.ae ], [ %.115.i, %bb.ad ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.ad, !llvm.loop !6

_ZN22btDeformableBodySolver13kineticEnergyEv.exit: ; preds = %._crit_edge.i, %bb.ab
  %.014.lcssa.i = phi float [ 0.000000e+00, %bb.ab ], [ %.1.lcssa.i, %._crit_edge.i ]
  %i.fh = fadd float %i.dy, %.014.lcssa.i
  %i.fi = load i32, ptr %i.u, align 4, !tbaa !50  ; 7 uses
  %i.fj = load i32, ptr %i.v, align 4, !tbaa !50  ; 2 uses
  %i.fk = icmp sgt i32 %i.fi, %i.fj
  br i1 %i.fk, label %bb.ag, label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit.i

bb.ag:                                            ; preds = %_ZN22btDeformableBodySolver13kineticEnergyEv.exit
  %i.fl = load i32, ptr %i.w, align 8, !tbaa !51
  %i.fm = icmp slt i32 %i.fl, %i.fi
  br i1 %i.fm, label %bb.ah, label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit.i

bb.ah:                                            ; preds = %bb.ag
  %.not.i.i.i.i = icmp eq i32 %i.fi, 0
  br i1 %.not.i.i.i.i, label %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fn = sext i32 %i.fi to i64
  %i.fo = shl nsw i64 %i.fn, 4
  %i.fp = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.fo, i32 noundef 16)
          to label %.noexc85 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc85:                                         ; preds = %bb.ai
  %.pre.i.i = load i32, ptr %i.v, align 4, !tbaa !50
  br label %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i.i

_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i.i: ; preds = %.noexc85, %bb.ah
  %i.fq = phi i32 [ %.pre.i.i, %.noexc85 ], [ %i.fj, %bb.ah ] ; 4 uses
  %.0.i.i.i.i = phi ptr [ %i.fp, %.noexc85 ], [ null, %bb.ah ] ; 4 uses
  %i.fr = icmp sgt i32 %i.fq, 0
  br i1 %i.fr, label %.lr.ph.i.i.i.i, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i.i
  %wide.trip.count.i.i.i.i = zext nneg i32 %i.fq to i64 ; 2 uses
  %xtraiter221 = and i64 %wide.trip.count.i.i.i.i, 1
  %i.fs = icmp eq i32 %i.fq, 1
  br i1 %i.fs, label %.epil.preheader220, label %.lr.ph.i.i.i.i.new

.lr.ph.i.i.i.i.new:                               ; preds = %.lr.ph.i.i.i.i
  %unroll_iter224 = and i64 %wide.trip.count.i.i.i.i, 2147483646
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %.lr.ph.i.i.i.i.new
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.new ], [ %indvars.iv.next.i.i.i.i.1, %bb.aj ] ; 4 uses
  %niter225 = phi i64 [ 0, %.lr.ph.i.i.i.i.new ], [ %niter225.next.1, %bb.aj ]
  %i.ft = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.i.i.i.i
  %i.fu = load ptr, ptr %i.x, align 8, !tbaa !49
  %i.fv = getelementptr inbounds nuw [16 x i8], ptr %i.fu, i64 %indvars.iv.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ft, ptr noundef nonnull align 4 dereferenceable(16) %i.fv, i64 16, i1 false), !tbaa.struct !60
  %indvars.iv.next.i.i.i.i = or disjoint i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.fw = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.next.i.i.i.i
  %i.fx = load ptr, ptr %i.x, align 8, !tbaa !49
  %i.fy = getelementptr inbounds nuw [16 x i8], ptr %i.fx, i64 %indvars.iv.next.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fw, ptr noundef nonnull align 4 dereferenceable(16) %i.fy, i64 16, i1 false), !tbaa.struct !60
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i, 2 ; 2 uses
  %niter225.next.1 = add i64 %niter225, 2         ; 2 uses
  %niter225.ncmp.1 = icmp eq i64 %niter225.next.1, %unroll_iter224
  br i1 %niter225.ncmp.1, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i.loopexit.unr-lcssa, label %bb.aj, !llvm.loop !3

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i.loopexit.unr-lcssa: ; preds = %bb.aj
  %lcmp.mod222.not = icmp eq i64 %xtraiter221, 0
  br i1 %lcmp.mod222.not, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i, label %.epil.preheader220

.epil.preheader220:                               ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.1, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod223 = trunc i32 %i.fq to i1
  call void @llvm.assume(i1 %lcmp.mod223)
  %i.fz = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.i.i.i.i.epil.init
  %i.ga = load ptr, ptr %i.x, align 8, !tbaa !49
  %i.gb = getelementptr inbounds nuw [16 x i8], ptr %i.ga, i64 %indvars.iv.i.i.i.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fz, ptr noundef nonnull align 4 dereferenceable(16) %i.gb, i64 16, i1 false), !tbaa.struct !60
  br label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i: ; preds = %.epil.preheader220, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i.i
  %i.gc = load ptr, ptr %i.x, align 8, !tbaa !49  ; 2 uses
  %.not.i5.i.i.i = icmp eq ptr %i.gc, null
  br i1 %.not.i5.i.i.i, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i
  %i.gd = load i8, ptr %i.y, align 8, !tbaa !48, !range !52, !noundef !58
  %i.ge = trunc nuw i8 %i.gd to i1
  br i1 %i.ge, label %bb.al, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i.i

bb.al:                                            ; preds = %bb.ak
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.gc)
          to label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i.i: ; preds = %bb.al, %bb.ak, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i
  store i8 1, ptr %i.y, align 8, !tbaa !48
  store ptr %.0.i.i.i.i, ptr %i.x, align 8, !tbaa !49
  store i32 %i.fi, ptr %i.w, align 8, !tbaa !51
  br label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit.i

_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit.i: ; preds = %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i.i, %bb.ag, %_ZN22btDeformableBodySolver13kineticEnergyEv.exit
end_hunk_0
