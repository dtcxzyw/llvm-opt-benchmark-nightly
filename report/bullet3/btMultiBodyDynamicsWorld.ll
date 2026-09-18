Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btMultiBodyDynamicsWorld?download=true
inline.NumInlined: 901
inline.NumDeleted: 283
loop-unroll.NumRuntimeUnrolled: 47
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_ZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfo:bb.a
  %indvars.iv.next639.3 = add nuw nsw i64 %indvars.iv638, 4 ; 2 uses
  %exitcond642.not.3 = icmp eq i64 %indvars.iv.next639.3, %wide.trip.count641
  br i1 %exitcond642.not.3, label %._crit_edge590, label %scalar.ph757, !llvm.loop !329

._crit_edge594:                                   ; preds = %bb.ce, %._crit_edge590
  %i.ath = load i8, ptr %i.hm, align 4, !tbaa !180, !range !30, !noundef !31
  %i.ati = trunc nuw i8 %i.ath to i1
  %i.atj = load i8, ptr %i.hn, align 1, !tbaa !181, !range !30, !noundef !31
  %i.atk = trunc nuw i8 %i.atj to i1
  invoke void @_ZN11btMultiBody52computeAccelerationsArticulatedBodyAlgorithmMultiDofEfR20btAlignedObjectArrayIfERS0_I9btVector3ERS0_I11btMatrix3x3Ebbb(ptr noundef nonnull align 8 dereferenceable(640) %i.ib, float noundef 0.000000e+00, ptr noundef nonnull align 8 dereferenceable(25) %i.gw, ptr noundef nonnull align 8 dereferenceable(25) %i.hb, ptr noundef nonnull align 8 dereferenceable(25) %i.hg, i1 noundef zeroext false, i1 noundef zeroext %i.ati, i1 noundef zeroext %i.atk)
          to label %bb.cf unwind label %bb.cb

bb.cc:                                            ; preds = %bb.cd
  %i.atl = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.cd:                                            ; preds = %.lr.ph593, %bb.ce
  %indvars.iv643 = phi i64 [ 0, %.lr.ph593 ], [ %indvars.iv.next644, %bb.ce ] ; 2 uses
  %i.atm = load ptr, ptr %i.ast, align 8, !tbaa !62
  %i.atn = getelementptr inbounds nuw [688 x i8], ptr %i.atm, i64 %indvars.iv643
  invoke void @_ZN15btMultibodyLink19updateCacheMultiDofEPf(ptr noundef nonnull align 8 dereferenceable(688) %i.atn, ptr noundef null)
          to label %bb.ce unwind label %bb.cc

bb.ce:                                            ; preds = %bb.cd
  %indvars.iv.next644 = add nuw nsw i64 %indvars.iv643, 1 ; 2 uses
  %i.ato = load i32, ptr %i.ih, align 4, !tbaa !61
  %i.atp = sext i32 %i.ato to i64
  %i.atq = icmp slt i64 %indvars.iv.next644, %i.atp
  br i1 %i.atq, label %bb.cd, label %._crit_edge594, !llvm.loop !330

bb.cf:                                            ; preds = %._crit_edge594
  %.not.i.i.i499.not = icmp eq ptr %i.aob, null
  br i1 %.not.i.i.i499.not, label %_ZN20btAlignedObjectArrayIfED2Ev.exit, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.aob)
          to label %_ZN20btAlignedObjectArrayIfED2Ev.exit unwind label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.atr = landingpad { ptr, i32 }
          catch ptr null
  %i.ats = extractvalue { ptr, i32 } %i.atr, 0
  call void @__clang_call_terminate(ptr %i.ats) #20
  unreachable

_ZN20btAlignedObjectArrayIfED2Ev.exit:            ; preds = %bb.cf, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %.not.i.i.i500.not = icmp eq ptr %i.aoa, null
  br i1 %.not.i.i.i500.not, label %bb.ck, label %bb.ci

bb.ci:                                            ; preds = %_ZN20btAlignedObjectArrayIfED2Ev.exit
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.aoa)
          to label %bb.ck unwind label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.att = landingpad { ptr, i32 }
          catch ptr null
  %i.atu = extractvalue { ptr, i32 } %i.att, 0
  call void @__clang_call_terminate(ptr %i.atu) #20
  unreachable

bb.ck:                                            ; preds = %bb.ci, %_ZN20btAlignedObjectArrayIfED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %.sroa.10521.2)
          to label %_ZN20btAlignedObjectArrayIfED2Ev.exit505 unwind label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.atv = landingpad { ptr, i32 }
          catch ptr null
  %i.atw = extractvalue { ptr, i32 } %i.atv, 0
  call void @__clang_call_terminate(ptr %i.atw) #20
  unreachable

bb.cm:                                            ; preds = %bb.cc, %bb.cb, %bb.bz
  %.pn = phi { ptr, i32 } [ %i.atl, %bb.cc ], [ %i.asu, %bb.cb ], [ %i.apo, %bb.bz ]
  call void @_ZN20btAlignedObjectArrayIfED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.by
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn, %bb.cm ], [ %i.apn, %bb.by ]
  call void @_ZN20btAlignedObjectArrayIfED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %.thread536

.thread536:                                       ; preds = %bb.cn, %bb.bx
  %.pn244.pn.pn = phi { ptr, i32 } [ %i.apm, %bb.bx ], [ %.pn.pn.pn, %bb.cn ]
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %.sroa.10521.2)
          to label %_ZN20btAlignedObjectArrayIfED2Ev.exit508 unwind label %bb.co

bb.co:                                            ; preds = %.thread536
  %i.atx = landingpad { ptr, i32 }
          catch ptr null
  %i.aty = extractvalue { ptr, i32 } %i.atx, 0
  call void @__clang_call_terminate(ptr %i.aty) #20
  unreachable

_ZN20btAlignedObjectArrayIfED2Ev.exit505:         ; preds = %bb.ck, %bb.bj, %._crit_edge575
  %indvars.iv.next647 = add nuw nsw i64 %indvars.iv646, 1 ; 2 uses
  %i.atz = load i32, ptr %i.a, align 4, !tbaa !20
  %i.aua = sext i32 %i.atz to i64
  %i.aub = icmp slt i64 %indvars.iv.next647, %i.aua
  br i1 %i.aub, label %bb.aj, label %._crit_edge597, !llvm.loop !331

_ZN20btAlignedObjectArrayIfED2Ev.exit508:         ; preds = %.thread531, %.thread536, %bb.bn, %bb.bm, %bb.bl, %bb.bk
  %.pn251 = phi { ptr, i32 } [ %i.qs, %.thread531 ], [ %i.mo, %bb.bk ], [ %i.mq, %bb.bm ], [ %.pn244.pn.pn, %.thread536 ], [ %i.mp, %bb.bl ], [ %i.mr, %bb.bn ]
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #18
  br label %bb.cp

bb.cp:                                            ; preds = %_ZN20btAlignedObjectArrayIfED2Ev.exit508, %bb.ai
  %.pn251.pn = phi { ptr, i32 } [ %.pn251, %_ZN20btAlignedObjectArrayIfED2Ev.exit508 ], [ %i.hy, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.cq

bb.cq:                                            ; preds = %bb.m, %bb.w, %bb.ah, %bb.cp, %bb.ag, %bb.y, %bb.x, %bb.l, %bb.k
  %.pn251.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bz, %bb.k ], [ %i.ca, %bb.l ], [ %i.cb, %bb.m ], [ %i.fn, %bb.w ], [ %i.fo, %bb.x ], [ %i.hw, %bb.ag ], [ %i.fp, %bb.y ], [ %.pn251.pn, %bb.cp ], [ %i.hx, %bb.ah ]
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  resume { ptr, i32 } %.pn251.pn.pn.pn.pn.pn
}

declare void @_ZN11btMultiBody21stepPositionsMultiDofEfPfS0_(ptr noundef nonnull align 8 dereferenceable(640), float noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN15btMultibodyLink19updateCacheMultiDofEPf(ptr noundef nonnull align 8 dereferenceable(688) %0, ptr noundef %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.b = select i1 %.not, ptr %i.a, ptr %1        ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 564
  %i.f = load i32, ptr %i.e, align 4, !tbaa !185
  switch i32 %i.f, label %bb.g [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.h = load float, ptr %i.b, align 4, !tbaa !177
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.j = fmul float %i.h, -5.000000e-01           ; 2 uses
  %i.k = tail call noundef float @sinf(float noundef %i.j) #18
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.s = load <2 x float>, ptr %i.g, align 8, !tbaa !177 ; 2 uses
  %i.t = load <2 x float>, ptr %i.i, align 4, !tbaa !177 ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.t, %i.t
  %i.u = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.v = extractelement <2 x float> %i.s, i64 0   ; 2 uses
  %i.w = tail call float @llvm.fmuladd.f32(float %i.v, float %i.v, float %i.u)
  %i.x = extractelement <2 x float> %i.t, i64 1   ; 2 uses
  %i.y = tail call noundef float @llvm.fmuladd.f32(float %i.x, float %i.x, float %i.w)
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.y)
  %i.z = fdiv float %i.k, %sqrt.i.i.i
  %i.aa = insertelement <2 x float> poison, float %i.z, i64 0
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ac = fmul <2 x float> %i.t, %i.ab            ; 3 uses
  %i.ad = fmul <2 x float> %i.s, %i.ab            ; 4 uses
  %i.ae = tail call noundef float @cosf(float noundef %i.j) #18 ; 2 uses
  %i.af = load float, ptr %i.m, align 4, !tbaa !177 ; 2 uses
  %i.ag = load <2 x float>, ptr %i.l, align 8, !tbaa !177 ; 5 uses
  %i.ah = load <2 x float>, ptr %i.n, align 4, !tbaa !177 ; 4 uses
  %i.ai = insertelement <2 x float> poison, float %i.af, i64 0
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ak = shufflevector <2 x float> %i.ac, <2 x float> %i.ad, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.al = fmul <2 x float> %i.aj, %i.ak
  %i.am = fmul <2 x float> %i.aj, %i.ac
  %i.an = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.ao = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ap = shufflevector <2 x float> %i.ah, <2 x float> %i.ag, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.aq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ao, <2 x float> %i.ap, <2 x float> %i.al)
  %i.ar = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ao, <2 x float> %i.ah, <2 x float> %i.am)
  %i.as = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ad, <2 x float> %i.ah, <2 x float> %i.aq)
  %i.at = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ak, <2 x float> %i.ag, <2 x float> %i.ar)
  %i.au = fneg <2 x float> %i.ac                  ; 3 uses
  %i.av = fneg <2 x float> %i.ad
  %i.aw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.au, <2 x float> %i.ag, <2 x float> %i.as) ; 5 uses
  %i.ax = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.av, <2 x float> %i.ap, <2 x float> %i.at) ; 3 uses
  %i.ay = extractelement <2 x float> %i.ag, i64 0
  %i.az = fneg float %i.ay
  %i.ba = extractelement <2 x float> %i.ad, i64 0
  %i.bb = fmul float %i.ba, %i.az
  %i.bc = shufflevector <2 x float> %i.aw, <2 x float> %i.ax, <2 x i32> <i32 1, i32 2>
  %i.bd = load <2 x float>, ptr %i.q, align 4, !tbaa !177 ; 5 uses
  %i.be = load <2 x float>, ptr %i.p, align 8, !tbaa !177 ; 3 uses
  %i.bf = fneg <2 x float> %i.aw                  ; 5 uses
  %i.bg = extractelement <2 x float> %i.ax, i64 0 ; 3 uses
  %i.bh = extractelement <2 x float> %i.bd, i64 0
  %i.bi = fneg float %i.bh
  %i.bj = fmul float %i.bg, %i.bi
  %2 = extractelement <2 x float> %i.bf, i64 1    ; 2 uses
  %i.bk = extractelement <2 x float> %i.be, i64 0 ; 2 uses
  %3 = tail call float @llvm.fmuladd.f32(float %2, float %i.bk, float %i.bj)
  %i.bl = extractelement <2 x float> %i.au, i64 0
  %4 = extractelement <2 x float> %i.ag, i64 1
  %i.bm = extractelement <2 x float> %i.bf, i64 0 ; 2 uses
  %i.bn = extractelement <2 x float> %i.bd, i64 1 ; 2 uses
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.bm, float %i.bn, float %3) ; 2 uses
  %i.bp = extractelement <2 x float> %i.au, i64 1
  %i.bq = extractelement <2 x float> %i.ah, i64 1
  store <2 x float> %i.bc, ptr %i.c, align 8
  %5 = shufflevector <2 x float> %i.bd, <2 x float> %i.be, <2 x i32> <i32 1, i32 2>
  %6 = fmul <2 x float> %i.ax, %5
  %shift = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop165 = fmul <2 x float> %i.bd, %shift
  %7 = extractelement <2 x float> %foldExtExtBinop165, i64 0
  %8 = fneg float %i.bg                           ; 3 uses
  %9 = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.af, float %i.bb)
  %10 = tail call float @llvm.fmuladd.f32(float %i.bl, float %4, float %9)
  %11 = tail call float @llvm.fmuladd.f32(float %i.bp, float %i.bq, float %10) ; 4 uses
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> %i.aw, float %11, i64 1
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.414.0..sroa_idx, align 8
  %i.br = insertelement <2 x float> poison, float %11, i64 0
  %i.bs = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bs, <2 x float> %i.be, <2 x float> %6)
  %i.bu = tail call float @llvm.fmuladd.f32(float %11, float %i.bn, float %7)
  %i.bv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bf, <2 x float> %i.bd, <2 x float> %i.bt) ; 5 uses
  %i.bw = tail call float @llvm.fmuladd.f32(float %8, float %i.bk, float %i.bu) ; 3 uses
  %i.bx = extractelement <2 x float> %i.bv, i64 0
  %i.by = fmul float %11, %i.bx
  %i.bz = tail call float @llvm.fmuladd.f32(float %i.bo, float %2, float %i.by)
  %i.ca = extractelement <2 x float> %i.bv, i64 1
  %i.cb = tail call float @llvm.fmuladd.f32(float %i.ca, float %i.bm, float %i.bz)
  %i.cc = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.bg, float %i.cb)
  %12 = insertelement <2 x float> %i.bv, float %i.bw, i64 0
  %13 = fmul <2 x float> %i.bs, %12
  %14 = insertelement <2 x float> poison, float %i.bo, i64 0
  %15 = shufflevector <2 x float> %14, <2 x float> poison, <2 x i32> zeroinitializer
  %16 = insertelement <2 x float> %i.bf, float %8, i64 1
  %17 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %15, <2 x float> %16, <2 x float> %13)
  %18 = shufflevector <2 x float> %i.bv, <2 x float> %i.bf, <2 x i32> <i32 0, i32 3>
  %i.cd = insertelement <2 x float> poison, float %8, i64 0
  %i.ce = insertelement <2 x float> %i.cd, float %i.bw, i64 1
  %19 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %18, <2 x float> %i.ce, <2 x float> %17)
  %20 = shufflevector <2 x float> %19, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bv, <2 x float> %i.aw, <2 x float> %20)
  %i.cg = load float, ptr %i.o, align 8, !tbaa !177
  %i.ch = fadd float %i.cg, %i.cc
  %i.ci = load <2 x float>, ptr %i.r, align 4, !tbaa !177
  %i.cj = fadd <2 x float> %i.ci, %i.cf
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !177 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 340
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.cr = load float, ptr %i.ck, align 8, !tbaa !177
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.cu = load float, ptr %i.ct, align 8, !tbaa !177
  %i.cv = load float, ptr %i.b, align 4, !tbaa !177 ; 2 uses
  %i.cw = fmul float %i.cu, %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.cy = load float, ptr %i.cp, align 8, !tbaa !177 ; 2 uses
  %i.cz = load <2 x float>, ptr %i.cq, align 4, !tbaa !177 ; 4 uses
  %i.da = load <2 x float>, ptr %i.cl, align 8, !tbaa !177 ; 3 uses
  %i.db = load float, ptr %i.co, align 4, !tbaa !177 ; 4 uses
  %i.dc = load float, ptr %i.c, align 8, !tbaa !177 ; 3 uses
  %i.dd = shufflevector <2 x float> %i.da, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.de = insertelement <2 x float> %i.dd, float %i.db, i64 0
  %i.df = shufflevector <2 x float> %i.cz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dg = insertelement <2 x float> %i.df, float %i.cy, i64 1
  %i.dh = fmul <2 x float> %i.de, %i.dg
  %i.di = extractelement <2 x float> %i.cz, i64 0 ; 2 uses
  %i.dj = fmul float %i.di, %i.dc
  %i.dk = insertelement <2 x float> poison, float %i.cy, i64 0
  %i.dl = insertelement <2 x float> %i.dk, float %i.dc, i64 1 ; 2 uses
  %i.dm = fneg <2 x float> %i.dl                  ; 4 uses
  %i.dn = insertelement <2 x float> poison, float %i.cn, i64 0
  %i.do = shufflevector <2 x float> %i.dn, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.do, <2 x float> %i.da, <2 x float> %i.dh)
  %i.dq = extractelement <2 x float> %i.cz, i64 1 ; 2 uses
  %i.dr = tail call float @llvm.fmuladd.f32(float %i.cn, float %i.dq, float %i.dj)
  %i.ds = insertelement <2 x float> poison, float %i.dc, i64 0
  %i.dt = insertelement <2 x float> %i.ds, float %i.db, i64 1
  %i.du = fneg <2 x float> %i.dt                  ; 3 uses
  %i.dv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dm, <2 x float> %i.cz, <2 x float> %i.dp) ; 5 uses
  %i.dw = extractelement <2 x float> %i.da, i64 0 ; 2 uses
  %i.dx = extractelement <2 x float> %i.du, i64 1
  %i.dy = tail call float @llvm.fmuladd.f32(float %i.dx, float %i.dw, float %i.dr) ; 3 uses
  %i.dz = fneg float %i.di
  %i.ea = fmul float %i.db, %i.dz
  %i.eb = extractelement <2 x float> %i.dm, i64 1 ; 2 uses
  %i.ec = tail call float @llvm.fmuladd.f32(float %i.eb, float %i.dw, float %i.ea)
  %i.ed = extractelement <2 x float> %i.dm, i64 0 ; 2 uses
  %i.ee = tail call float @llvm.fmuladd.f32(float %i.ed, float %i.dq, float %i.ec) ; 2 uses
  %i.ef = extractelement <2 x float> %i.dv, i64 0
  %i.eg = fmul float %i.cn, %i.ef
  %i.eh = tail call float @llvm.fmuladd.f32(float %i.ee, float %i.eb, float %i.eg)
  %i.ei = extractelement <2 x float> %i.dv, i64 1
  %i.ej = tail call float @llvm.fmuladd.f32(float %i.ei, float %i.ed, float %i.eh)
  %i.ek = tail call float @llvm.fmuladd.f32(float %i.dy, float %i.db, float %i.ej)
  %i.el = shufflevector <2 x float> %i.dv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.em = insertelement <2 x float> %i.el, float %i.dy, i64 1
  %i.en = fmul <2 x float> %i.do, %i.em
  %i.eo = insertelement <2 x float> poison, float %i.ee, i64 0
  %i.ep = shufflevector <2 x float> %i.eo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eq = shufflevector <2 x float> %i.du, <2 x float> %i.dm, <2 x i32> <i32 1, i32 2>
  %i.er = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ep, <2 x float> %i.eq, <2 x float> %i.en)
  %i.es = insertelement <2 x float> poison, float %i.dy, i64 0
  %i.et = shufflevector <2 x float> %i.es, <2 x float> %i.dv, <2 x i32> <i32 0, i32 2>
  %i.eu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.et, <2 x float> %i.du, <2 x float> %i.er)
  %i.ev = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dv, <2 x float> %i.dl, <2 x float> %i.eu)
  %i.ew = fadd float %i.cr, %i.ek
  %i.ex = load <2 x float>, ptr %i.cs, align 4, !tbaa !177
  %i.ey = fadd <2 x float> %i.ex, %i.ev
  %i.ez = load <2 x float>, ptr %i.cx, align 4, !tbaa !177
  %i.fa = insertelement <2 x float> poison, float %i.cv, i64 0
  %i.fb = shufflevector <2 x float> %i.fa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fc = fmul <2 x float> %i.fb, %i.ez
  %i.fd = fadd float %i.ew, %i.cw
  %i.fe = fadd <2 x float> %i.ey, %i.fc
  br label %.sink.split

bb.d:                                             ; preds = %bb.a
  %i.ff = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.fg = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !177
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.fo = load float, ptr %i.fl, align 8, !tbaa !177
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.fq = fneg float %i.fh                        ; 2 uses
  %i.fr = load <2 x float>, ptr %i.b, align 4, !tbaa !177 ; 4 uses
  %i.fs = load <2 x float>, ptr %i.ff, align 4, !tbaa !177 ; 3 uses
  %i.ft = load float, ptr %i.fj, align 4, !tbaa !177 ; 2 uses
  %i.fu = load <2 x float>, ptr %i.fi, align 8, !tbaa !177 ; 5 uses
  %i.fv = load <2 x float>, ptr %i.fk, align 4, !tbaa !177 ; 4 uses
  %i.fw = shufflevector <2 x float> %i.fs, <2 x float> %i.fr, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.fx = insertelement <2 x float> poison, float %i.ft, i64 0
  %i.fy = shufflevector <2 x float> %i.fx, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fz = fmul <2 x float> %i.fw, %i.fy
  %i.ga = fmul <2 x float> %i.fs, %i.fy
  %i.gb = insertelement <2 x float> poison, float %i.fq, i64 0
  %i.gc = shufflevector <2 x float> %i.gb, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gd = shufflevector <2 x float> %i.fv, <2 x float> %i.fu, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ge = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gc, <2 x float> %i.gd, <2 x float> %i.fz)
  %i.gf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gc, <2 x float> %i.fv, <2 x float> %i.ga)
  %i.gg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fr, <2 x float> %i.fv, <2 x float> %i.ge)
  %i.gh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fw, <2 x float> %i.fu, <2 x float> %i.gf)
  %i.gi = fneg <2 x float> %i.fs                  ; 3 uses
  %i.gj = fneg <2 x float> %i.fr
  %i.gk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gi, <2 x float> %i.fu, <2 x float> %i.gg) ; 5 uses
  %i.gl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gj, <2 x float> %i.gd, <2 x float> %i.gh) ; 3 uses
  %i.gm = extractelement <2 x float> %i.fu, i64 0
  %i.gn = fneg float %i.gm
  %i.go = extractelement <2 x float> %i.fr, i64 0
  %i.gp = fmul float %i.go, %i.gn
  %i.gq = shufflevector <2 x float> %i.gk, <2 x float> %i.gl, <2 x i32> <i32 1, i32 2>
  %i.gr = load <2 x float>, ptr %i.fn, align 4, !tbaa !177 ; 5 uses
  %i.gs = load <2 x float>, ptr %i.fm, align 8, !tbaa !177 ; 3 uses
  %i.gt = fneg <2 x float> %i.gk                  ; 5 uses
  %i.gu = extractelement <2 x float> %i.gl, i64 0 ; 3 uses
  %i.gv = extractelement <2 x float> %i.gr, i64 0
  %i.gw = fneg float %i.gv
  %i.gx = fmul float %i.gu, %i.gw
  %21 = extractelement <2 x float> %i.gt, i64 1   ; 2 uses
  %i.gy = extractelement <2 x float> %i.gs, i64 0 ; 2 uses
  %22 = tail call float @llvm.fmuladd.f32(float %21, float %i.gy, float %i.gx)
  %i.gz = extractelement <2 x float> %i.gi, i64 0
  %23 = extractelement <2 x float> %i.fu, i64 1
  %i.ha = extractelement <2 x float> %i.gt, i64 0 ; 2 uses
  %i.hb = extractelement <2 x float> %i.gr, i64 1 ; 2 uses
  %i.hc = tail call float @llvm.fmuladd.f32(float %i.ha, float %i.hb, float %22) ; 2 uses
  %i.hd = extractelement <2 x float> %i.gi, i64 1
  %i.he = extractelement <2 x float> %i.fv, i64 1
  store <2 x float> %i.gq, ptr %i.c, align 8
  %24 = shufflevector <2 x float> %i.gr, <2 x float> %i.gs, <2 x i32> <i32 1, i32 2>
  %25 = fmul <2 x float> %i.gl, %24
  %shift167 = shufflevector <2 x float> %i.gk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop168 = fmul <2 x float> %i.gr, %shift167
  %26 = extractelement <2 x float> %foldExtExtBinop168, i64 0
  %27 = fneg float %i.gu                          ; 3 uses
  %28 = tail call float @llvm.fmuladd.f32(float %i.fq, float %i.ft, float %i.gp)
  %29 = tail call float @llvm.fmuladd.f32(float %i.gz, float %23, float %28)
  %30 = tail call float @llvm.fmuladd.f32(float %i.hd, float %i.he, float %29) ; 4 uses
  %.sroa.3.12.vec.insert.i65 = insertelement <2 x float> %i.gk, float %30, i64 1
  store <2 x float> %.sroa.3.12.vec.insert.i65, ptr %.sroa.48.0..sroa_idx, align 8
  %i.hf = insertelement <2 x float> poison, float %30, i64 0
  %i.hg = shufflevector <2 x float> %i.hf, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hg, <2 x float> %i.gs, <2 x float> %25)
  %i.hi = tail call float @llvm.fmuladd.f32(float %30, float %i.hb, float %26)
  %i.hj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gt, <2 x float> %i.gr, <2 x float> %i.hh) ; 5 uses
  %i.hk = tail call float @llvm.fmuladd.f32(float %27, float %i.gy, float %i.hi) ; 3 uses
  %i.hl = extractelement <2 x float> %i.hj, i64 0
  %i.hm = fmul float %30, %i.hl
  %i.hn = tail call float @llvm.fmuladd.f32(float %i.hc, float %21, float %i.hm)
  %i.ho = extractelement <2 x float> %i.hj, i64 1
  %i.hp = tail call float @llvm.fmuladd.f32(float %i.ho, float %i.ha, float %i.hn)
  %i.hq = tail call float @llvm.fmuladd.f32(float %i.hk, float %i.gu, float %i.hp)
  %31 = insertelement <2 x float> %i.hj, float %i.hk, i64 0
  %32 = fmul <2 x float> %i.hg, %31
  %33 = insertelement <2 x float> poison, float %i.hc, i64 0
  %34 = shufflevector <2 x float> %33, <2 x float> poison, <2 x i32> zeroinitializer
  %35 = insertelement <2 x float> %i.gt, float %27, i64 1
  %36 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %34, <2 x float> %35, <2 x float> %32)
  %37 = shufflevector <2 x float> %i.hj, <2 x float> %i.gt, <2 x i32> <i32 0, i32 3>
  %i.hr = insertelement <2 x float> poison, float %27, i64 0
  %i.hs = insertelement <2 x float> %i.hr, float %i.hk, i64 1
  %38 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %37, <2 x float> %i.hs, <2 x float> %36)
  %39 = shufflevector <2 x float> %38, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ht = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hj, <2 x float> %i.gk, <2 x float> %39)
  %i.hu = fadd float %i.fo, %i.hq
  %i.hv = load <2 x float>, ptr %i.fp, align 4, !tbaa !177
  %i.hw = fadd <2 x float> %i.hv, %i.ht
  br label %.sink.split

bb.e:                                             ; preds = %bb.a
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.hy = load float, ptr %i.b, align 4, !tbaa !177
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.ia = fmul float %i.hy, -5.000000e-01         ; 2 uses
  %i.ib = tail call noundef float @sinf(float noundef %i.ia) #18
  %i.ic = tail call noundef float @cosf(float noundef %i.ia) #18 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.if = load float, ptr %i.ie, align 4, !tbaa !177 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ih = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.ik = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ip = load float, ptr %i.hx, align 8, !tbaa !177 ; 4 uses
  %i.iq = load <2 x float>, ptr %i.hz, align 4, !tbaa !177 ; 6 uses
  %foldExtExtBinop170 = fmul <2 x float> %i.iq, %i.iq
  %i.ir = extractelement <2 x float> %foldExtExtBinop170, i64 0
  %i.is = tail call float @llvm.fmuladd.f32(float %i.ip, float %i.ip, float %i.ir)
  %i.it = extractelement <2 x float> %i.iq, i64 1 ; 2 uses
  %i.iu = tail call noundef float @llvm.fmuladd.f32(float %i.it, float %i.it, float %i.is)
  %sqrt.i.i.i78 = tail call noundef float @llvm.sqrt.f32(float %i.iu) ; 2 uses
  %i.iv = fdiv float %i.ib, %sqrt.i.i.i78
  %i.iw = insertelement <2 x float> poison, float %i.iv, i64 0
  %i.ix = shufflevector <2 x float> %i.iw, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.iy = fmul <2 x float> %i.iq, %i.ix           ; 3 uses
  %i.iz = shufflevector <2 x float> %i.iq, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ja = insertelement <2 x float> %i.iz, float %i.ip, i64 0
  %i.jb = fmul <2 x float> %i.ja, %i.ix           ; 4 uses
  %i.jc = load <2 x float>, ptr %i.id, align 8, !tbaa !177 ; 5 uses
  %i.jd = load <2 x float>, ptr %i.ig, align 4, !tbaa !177 ; 4 uses
  %i.je = insertelement <2 x float> poison, float %i.if, i64 0
  %i.jf = shufflevector <2 x float> %i.je, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jg = shufflevector <2 x float> %i.iy, <2 x float> %i.jb, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.jh = fmul <2 x float> %i.jf, %i.jg
  %i.ji = fmul <2 x float> %i.jf, %i.iy
  %i.jj = insertelement <2 x float> poison, float %i.ic, i64 0
  %i.jk = shufflevector <2 x float> %i.jj, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jl = shufflevector <2 x float> %i.jd, <2 x float> %i.jc, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.jm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jk, <2 x float> %i.jl, <2 x float> %i.jh)
  %i.jn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jk, <2 x float> %i.jd, <2 x float> %i.ji)
  %i.jo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jb, <2 x float> %i.jd, <2 x float> %i.jm)
  %i.jp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jg, <2 x float> %i.jc, <2 x float> %i.jn)
  %i.jq = fneg <2 x float> %i.iy                  ; 3 uses
  %i.jr = fneg <2 x float> %i.jb
  %i.js = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jq, <2 x float> %i.jc, <2 x float> %i.jo) ; 5 uses
  %i.jt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jr, <2 x float> %i.jl, <2 x float> %i.jp) ; 4 uses
  %i.ju = extractelement <2 x float> %i.jc, i64 0
  %i.jv = fneg float %i.ju
  %i.jw = extractelement <2 x float> %i.jb, i64 0
  %i.jx = fmul float %i.jw, %i.jv
  %i.jy = tail call float @llvm.fmuladd.f32(float %i.ic, float %i.if, float %i.jx)
  %i.jz = extractelement <2 x float> %i.jq, i64 0
  %i.ka = extractelement <2 x float> %i.jc, i64 1
  %i.kb = tail call float @llvm.fmuladd.f32(float %i.jz, float %i.ka, float %i.jy)
  %i.kc = extractelement <2 x float> %i.jq, i64 1
  %i.kd = extractelement <2 x float> %i.jd, i64 1
  %i.ke = shufflevector <2 x float> %i.js, <2 x float> %i.jt, <2 x i32> <i32 1, i32 2>
  store <2 x float> %i.ke, ptr %i.c, align 8
  %i.kf = insertelement <2 x float> %i.iz, float %i.ip, i64 1
  %i.kg = fneg <2 x float> %i.js                  ; 4 uses
  %i.kh = extractelement <2 x float> %i.jt, i64 0
  %i.ki = fneg float %i.kh                        ; 3 uses
  %i.kj = tail call float @llvm.fmuladd.f32(float %i.kc, float %i.kd, float %i.kb) ; 3 uses
  %.sroa.3.12.vec.insert.i82 = insertelement <2 x float> %i.js, float %i.kj, i64 1
  store <2 x float> %.sroa.3.12.vec.insert.i82, ptr %.sroa.44.0..sroa_idx, align 8
  %i.kk = load float, ptr %i.b, align 4, !tbaa !177
  %i.kl = fmul float %i.kk, -5.000000e-01         ; 2 uses
  %i.km = tail call noundef float @sinf(float noundef %i.kl) #18
  %i.kn = fdiv float %i.km, %sqrt.i.i.i78
  %i.ko = insertelement <2 x float> poison, float %i.kn, i64 0
  %i.kp = shufflevector <2 x float> %i.ko, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.kq = fmul <2 x float> %i.kf, %i.kp           ; 4 uses
  %i.kr = fmul <2 x float> %i.iq, %i.kp           ; 3 uses
  %i.ks = tail call noundef float @cosf(float noundef %i.kl) #18
  %i.kt = load float, ptr %i.ii, align 8, !tbaa !177
  %i.ku = load <2 x float>, ptr %i.ij, align 4, !tbaa !177
  %i.kv = load float, ptr %i.ih, align 4, !tbaa !177 ; 2 uses
  %i.kw = load float, ptr %i.ik, align 4, !tbaa !177 ; 2 uses
  %i.kx = insertelement <2 x float> poison, float %i.kv, i64 0
  %i.ky = shufflevector <2 x float> %i.kx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kz = fmul <2 x float> %i.ky, %i.ku
  %i.la = load float, ptr %i.il, align 8, !tbaa !177
  %i.lb = load <2 x float>, ptr %i.im, align 4, !tbaa !177
  %i.lc = fmul float %i.la, %i.kw
  %i.ld = insertelement <2 x float> poison, float %i.kw, i64 0
  %i.le = shufflevector <2 x float> %i.ld, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lf = fmul <2 x float> %i.le, %i.lb
  %i.lg = fmul float %i.kt, %i.kv
  %i.lh = fadd <2 x float> %i.kz, %i.lf           ; 6 uses
  %i.li = fadd float %i.lg, %i.lc                 ; 3 uses
  %i.lj = shufflevector <2 x float> %i.lh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.lk = insertelement <2 x float> %i.lj, float %i.li, i64 1
  %i.ll = fmul <2 x float> %i.kr, %i.lk
  %i.lm = fneg <2 x float> %i.kq                  ; 4 uses
  %i.ln = insertelement <2 x float> poison, float %i.ks, i64 0 ; 2 uses
  %i.lo = shufflevector <2 x float> %i.ln, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.lp = insertelement <2 x float> poison, float %i.li, i64 0 ; 2 uses
  %i.lq = shufflevector <2 x float> %i.lp, <2 x float> %i.lh, <2 x i32> <i32 0, i32 2>
  %i.lr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lo, <2 x float> %i.lq, <2 x float> %i.ll)
  %i.ls = shufflevector <2 x float> %i.kq, <2 x float> %i.kr, <2 x i32> <i32 1, i32 2>
  %i.lt = fneg <2 x float> %i.ls                  ; 3 uses
  %i.lu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lm, <2 x float> %i.lh, <2 x float> %i.lr) ; 5 uses
  %i.lv = load <2 x float>, ptr %i.io, align 4, !tbaa !177 ; 5 uses
  %i.lw = load <2 x float>, ptr %i.in, align 8, !tbaa !177 ; 4 uses
  %i.lx = shufflevector <2 x float> %i.kq, <2 x float> %i.lv, <2 x i32> <i32 1, i32 2>
  %i.ly = shufflevector <2 x float> %i.lh, <2 x float> %i.js, <2 x i32> <i32 0, i32 3>
  %i.lz = fmul <2 x float> %i.lx, %i.ly
  %i.ma = insertelement <2 x float> %i.ln, float %i.kj, i64 1 ; 2 uses
  %i.mb = shufflevector <2 x float> %i.lh, <2 x float> %i.lv, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.mc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ma, <2 x float> %i.mb, <2 x float> %i.lz)
  %i.md = shufflevector <2 x float> %i.lt, <2 x float> %i.lw, <2 x i32> <i32 1, i32 2>
  %i.me = insertelement <2 x float> %i.lp, float %i.ki, i64 1
  %i.mf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.md, <2 x float> %i.me, <2 x float> %i.mc) ; 5 uses
  %i.mg = shufflevector <2 x float> %i.lu, <2 x float> %i.mf, <2 x i32> <i32 1, i32 2>
  %i.mh = fmul <2 x float> %i.lo, %i.mg
  %i.mi = shufflevector <2 x float> %i.lh, <2 x float> %i.lv, <2 x i32> <i32 0, i32 2>
  %i.mj = fneg <2 x float> %i.mi
  %i.mk = shufflevector <2 x float> %i.kr, <2 x float> %i.jt, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ml = fmul <2 x float> %i.mk, %i.mj
  %i.mm = shufflevector <2 x float> %i.lm, <2 x float> %i.kg, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.mn = shufflevector <2 x float> %i.lw, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.mo = insertelement <2 x float> %i.mn, float %i.li, i64 0
  %i.mp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mm, <2 x float> %i.mo, <2 x float> %i.ml)
  %i.mq = shufflevector <2 x float> %i.lm, <2 x float> %i.kg, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.mr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mq, <2 x float> %i.mb, <2 x float> %i.mp) ; 3 uses
  %i.ms = shufflevector <2 x float> %i.mr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mt = shufflevector <2 x float> %i.lt, <2 x float> %i.lm, <2 x i32> <i32 1, i32 2>
  %i.mu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ms, <2 x float> %i.mt, <2 x float> %i.mh)
  %i.mv = shufflevector <2 x float> %i.mf, <2 x float> %i.lu, <2 x i32> <i32 0, i32 2>
  %i.mw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mv, <2 x float> %i.lt, <2 x float> %i.mu)
  %i.mx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lu, <2 x float> %i.kq, <2 x float> %i.mw)
  %i.my = shufflevector <2 x float> %i.lv, <2 x float> %i.lw, <2 x i32> <i32 1, i32 2>
  %i.mz = fmul <2 x float> %i.jt, %i.my
  %i.na = insertelement <2 x float> poison, float %i.kj, i64 0
  %i.nb = shufflevector <2 x float> %i.na, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.nc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nb, <2 x float> %i.lw, <2 x float> %i.mz)
  %i.nd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kg, <2 x float> %i.lv, <2 x float> %i.nc) ; 5 uses
  %i.ne = shufflevector <2 x float> %i.lu, <2 x float> %i.nd, <2 x i32> <i32 0, i32 2>
  %i.nf = fmul <2 x float> %i.ma, %i.ne
  %i.ng = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mr, <2 x float> %i.mm, <2 x float> %i.nf)
  %i.nh = shufflevector <2 x float> %i.lu, <2 x float> %i.nd, <2 x i32> <i32 1, i32 3>
  %i.ni = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nh, <2 x float> %i.mq, <2 x float> %i.ng)
  %i.nj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mf, <2 x float> %i.mk, <2 x float> %i.ni)
  %i.nk = shufflevector <2 x float> %i.nd, <2 x float> %i.mf, <2 x i32> <i32 1, i32 3>
  %i.nl = fmul <2 x float> %i.nb, %i.nk
  %i.nm = shufflevector <2 x float> %i.mr, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.nn = shufflevector <2 x float> %i.kg, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.no = insertelement <2 x float> %i.nn, float %i.ki, i64 0
  %i.np = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nm, <2 x float> %i.no, <2 x float> %i.nl)
  %i.nq = shufflevector <2 x float> %i.mf, <2 x float> %i.nd, <2 x i32> <i32 1, i32 2>
  %i.nr = insertelement <2 x float> %i.nn, float %i.ki, i64 1
  %i.ns = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nq, <2 x float> %i.nr, <2 x float> %i.np)
  %i.nt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nd, <2 x float> %i.js, <2 x float> %i.ns)
  %i.nu = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.nj)
  %i.nv = fadd <2 x float> %i.mx, %i.nt
  br label %.sink.split

bb.f:                                             ; preds = %bb.a
  %i.nw = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.nw, i64 16, i1 false)
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ny = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.oa = load float, ptr %i.nz, align 4, !tbaa !177 ; 3 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 340
  %i.oc = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.oe = load float, ptr %i.nx, align 8, !tbaa !177
  %i.of = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.og = load float, ptr %i.oc, align 8, !tbaa !177 ; 2 uses
  %i.oh = load <2 x float>, ptr %i.od, align 4, !tbaa !177 ; 4 uses
  %i.oi = load <2 x float>, ptr %i.ny, align 8, !tbaa !177 ; 3 uses
  %i.oj = load float, ptr %i.ob, align 4, !tbaa !177 ; 4 uses
  %i.ok = load float, ptr %i.c, align 8, !tbaa !177 ; 3 uses
  %i.ol = shufflevector <2 x float> %i.oi, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.om = insertelement <2 x float> %i.ol, float %i.oj, i64 0
  %i.on = shufflevector <2 x float> %i.oh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.oo = insertelement <2 x float> %i.on, float %i.og, i64 1
  %i.op = fmul <2 x float> %i.om, %i.oo
  %i.oq = extractelement <2 x float> %i.oh, i64 0 ; 2 uses
  %i.or = fmul float %i.oq, %i.ok
  %i.os = insertelement <2 x float> poison, float %i.og, i64 0
  %i.ot = insertelement <2 x float> %i.os, float %i.ok, i64 1 ; 2 uses
  %i.ou = fneg <2 x float> %i.ot                  ; 4 uses
  %i.ov = insertelement <2 x float> poison, float %i.oa, i64 0
  %i.ow = shufflevector <2 x float> %i.ov, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ox = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ow, <2 x float> %i.oi, <2 x float> %i.op)
  %i.oy = extractelement <2 x float> %i.oh, i64 1 ; 2 uses
end_hunk_0
