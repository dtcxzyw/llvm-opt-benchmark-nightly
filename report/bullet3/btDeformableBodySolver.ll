Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btDeformableBodySolver?download=true
inline.NumInlined: 1163
inline.NumDeleted: 279
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 114
loop-unroll.NumUnrolled: 123
begin_hunk_0_@_ZN11btSparseSdfILi3EE8EvaluateERK9btVector3PK16btCollisionShapeRS1_f:bb.a
  store i32 %i.ej, ptr %i.eh, align 4, !tbaa !463
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !464
  %.not137 = icmp slt i32 %i.ei, %i.el
  br i1 %.not137, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.critedge
  %i.em = icmp sgt i32 %i.db, 0
  br i1 %i.em, label %.lr.ph14.i, label %_ZN11btSparseSdfILi3EE5ResetEv.exit

.lr.ph14.i:                                       ; preds = %bb.g
  %wide.trip.count.i = zext nneg i32 %i.db to i64
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.i, %.lr.ph14.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph14.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 2 uses
  %i.en = load ptr, ptr %i.dd, align 8, !tbaa !457
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %indvars.iv.i ; 2 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !458 ; 2 uses
  store ptr null, ptr %i.eo, align 8, !tbaa !458
  %.not10.i = icmp eq ptr %i.ep, null
  br i1 %.not10.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.i
  %.011.i = phi ptr [ %i.er, %.lr.ph.i ], [ %i.ep, %bb.h ] ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.011.i, i64 288
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !462 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.011.i, i64 noundef 296) #29
  %.not.i = icmp eq ptr %i.er, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !454

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.h
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN11btSparseSdfILi3EE5ResetEv.exit, label %bb.h, !llvm.loop !455

_ZN11btSparseSdfILi3EE5ResetEv.exit:              ; preds = %._crit_edge.i, %bb.g
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.et = load float, ptr %i.es, align 4, !tbaa !465
  store float %i.et, ptr %i.a, align 8, !tbaa !302
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.eu, align 8, !tbaa !466
  store i32 0, ptr %i.eh, align 4, !tbaa !463
  store i32 1, ptr %i.ef, align 4, !tbaa !460
  store i32 1, ptr %i.di, align 8, !tbaa !459
  br label %bb.i

bb.i:                                             ; preds = %_ZN11btSparseSdfILi3EE5ResetEv.exit, %.critedge
  %i.ev = tail call noalias noundef nonnull dereferenceable(296) ptr @_Znwm(i64 noundef 296) #28 ; 10 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(296) %i.ev, i8 0, i64 288, i1 false)
  %i.ew = load ptr, ptr %i.dg, align 8, !tbaa !458
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 288
  store ptr %i.ew, ptr %i.ex, align 16, !tbaa !462
  store ptr %i.ev, ptr %i.dg, align 8, !tbaa !458
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 280
  store ptr %2, ptr %i.ey, align 8, !tbaa !301
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ev, i64 272
  store i32 %i.cz, ptr %i.ez, align 16, !tbaa !461
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ev, i64 256
  store i32 %i.x, ptr %i.fa, align 16, !tbaa !54
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ev, i64 260
  store i32 %i.z, ptr %i.fb, align 4, !tbaa !54
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ev, i64 264
  store i32 %i.aq, ptr %i.fc, align 8, !tbaa !54
  tail call void @_ZN11btSparseSdfILi3EE9BuildCellERNS0_4CellE(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef nonnull align 8 dereferenceable(296) %i.ev)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.i
  %.1 = phi ptr [ %i.ev, %bb.i ], [ %.0152, %bb.e ] ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !466
  %i.ff = getelementptr inbounds nuw i8, ptr %.1, i64 268
  store i32 %i.fe, ptr %i.ff, align 4, !tbaa !467
  %i.fg = extractelement <2 x i32> %i.v, i64 0
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr inbounds [64 x i8], ptr %.1, i64 %i.fh ; 2 uses
  %i.fj = extractelement <2 x i32> %i.v, i64 1
  %i.fk = sext i32 %i.fj to i64                   ; 2 uses
  %i.fl = getelementptr inbounds [16 x i8], ptr %i.fi, i64 %i.fk ; 2 uses
  %i.fm = sext i32 %i.an to i64                   ; 4 uses
  %i.fn = getelementptr inbounds [4 x i8], ptr %i.fl, i64 %i.fm
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !62 ; 3 uses
  %i.fp = add <2 x i64> %i.ab, splat (i64 4294967296) ; 2 uses
  %i.fq = extractelement <2 x i64> %i.fp, i64 0
  %i.fr = ashr exact i64 %i.fq, 26
  %i.fs = getelementptr inbounds i8, ptr %.1, i64 %i.fr ; 2 uses
  %i.ft = getelementptr inbounds [16 x i8], ptr %i.fs, i64 %i.fk ; 2 uses
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.ft, i64 %i.fm
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !62 ; 2 uses
  %i.fw = extractelement <2 x i64> %i.fp, i64 1
  %i.fx = ashr exact i64 %i.fw, 32                ; 2 uses
  %i.fy = getelementptr inbounds [16 x i8], ptr %i.fs, i64 %i.fx ; 2 uses
  %i.fz = getelementptr inbounds [4 x i8], ptr %i.fy, i64 %i.fm
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !62
  %i.gb = getelementptr inbounds [16 x i8], ptr %i.fi, i64 %i.fx ; 2 uses
  %i.gc = getelementptr inbounds [4 x i8], ptr %i.gb, i64 %i.fm
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !62 ; 2 uses
  %i.ge = add i64 %.sroa.5.0.insert.shift.i145, 4294967296
  %i.gf = ashr exact i64 %i.ge, 32                ; 4 uses
  %i.gg = getelementptr inbounds [4 x i8], ptr %i.fl, i64 %i.gf
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !62 ; 2 uses
  %i.gi = getelementptr inbounds [4 x i8], ptr %i.ft, i64 %i.gf
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !62 ; 2 uses
  %i.gk = getelementptr inbounds [4 x i8], ptr %i.fy, i64 %i.gf
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !62
  %i.gm = getelementptr inbounds [4 x i8], ptr %i.gb, i64 %i.gf
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !62
  %i.go = insertelement <2 x float> poison, float %i.gd, i64 0 ; 2 uses
  %i.gp = insertelement <2 x float> %i.go, float %i.fv, i64 1 ; 2 uses
  %i.gq = insertelement <2 x float> poison, float %i.fo, i64 0
  %i.gr = shufflevector <2 x float> %i.gq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gs = fsub <2 x float> %i.gp, %i.gr           ; 3 uses
  %i.gt = insertelement <2 x float> poison, float %i.ga, i64 0 ; 2 uses
  %i.gu = shufflevector <2 x float> %i.gt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gv = shufflevector <2 x float> %i.gp, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gw = fsub <2 x float> %i.gu, %i.gv           ; 2 uses
  %i.gx = insertelement <2 x float> poison, float %i.gn, i64 0 ; 3 uses
  %i.gy = insertelement <2 x float> %i.gx, float %i.gj, i64 1 ; 2 uses
  %i.gz = insertelement <2 x float> poison, float %i.gh, i64 0 ; 2 uses
  %i.ha = shufflevector <2 x float> %i.gz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hb = fsub <2 x float> %i.gy, %i.ha           ; 3 uses
  %i.hc = insertelement <2 x float> poison, float %i.gl, i64 0 ; 2 uses
  %i.hd = shufflevector <2 x float> %i.hc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.he = fsub <2 x float> %i.hd, %i.gy           ; 2 uses
  %i.hf = shufflevector <2 x float> %i.he, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.hg = fsub <2 x float> %i.gw, %i.gs
  %i.hh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hg, <2 x float> %i.y, <2 x float> %i.gs) ; 2 uses
  %i.hi = fsub <2 x float> %i.hf, %i.hb
  %i.hj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hi, <2 x float> %i.y, <2 x float> %i.hb)
  %i.hk = fsub <2 x float> %i.hj, %i.hh
  %i.hl = insertelement <2 x float> poison, float %i.ap, i64 0
  %i.hm = shufflevector <2 x float> %i.hl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hk, <2 x float> %i.hm, <2 x float> %i.hh) ; 4 uses
  %i.ho = insertelement <2 x float> %i.gx, float %i.gh, i64 1
  %i.hp = insertelement <2 x float> %i.go, float %i.fo, i64 1
  %i.hq = fsub <2 x float> %i.ho, %i.hp           ; 2 uses
  %i.hr = insertelement <2 x float> %i.hc, float %i.gj, i64 1
  %i.hs = insertelement <2 x float> %i.gt, float %i.fv, i64 1
  %i.ht = fsub <2 x float> %i.hr, %i.hs
  %i.hu = fsub <2 x float> %i.ht, %i.hq
  %i.hv = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.hw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hu, <2 x float> %i.hv, <2 x float> %i.hq) ; 2 uses
  %i.hx = extractelement <2 x float> %i.hw, i64 0
  %i.hy = extractelement <2 x float> %i.hw, i64 1 ; 2 uses
  %i.hz = fsub float %i.hx, %i.hy
  %i.ia = extractelement <2 x float> %i.y, i64 1
  %i.ib = tail call noundef float @llvm.fmuladd.f32(float %i.hz, float %i.ia, float %i.hy) ; 3 uses
  %foldExtExtBinop165 = fmul <2 x float> %i.hn, %i.hn
  %i.ic = extractelement <2 x float> %foldExtExtBinop165, i64 0
  %i.id = extractelement <2 x float> %i.hn, i64 1 ; 2 uses
  %i.ie = tail call float @llvm.fmuladd.f32(float %i.id, float %i.id, float %i.ic)
  %i.if = tail call noundef float @llvm.fmuladd.f32(float %i.ib, float %i.ib, float %i.ie) ; 2 uses
  %i.ig = fcmp ult float %i.if, f0x28800000
  br i1 %i.ig, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.loopexit
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.if)
  %i.ih = fdiv float 1.000000e+00, %sqrt.i        ; 2 uses
  %i.ii = insertelement <2 x float> poison, float %i.ih, i64 0
  %i.ij = shufflevector <2 x float> %i.ii, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ik = fmul <2 x float> %i.hn, %i.ij
  %i.il = fmul float %i.ib, %i.ih
  %i.im = shufflevector <2 x float> %i.ik, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br label %_ZN9btVector313safeNormalizeEv.exit

bb.k:                                             ; preds = %.loopexit
  %i.in = getelementptr inbounds nuw i8, ptr %3, i64 12
  store float 0.000000e+00, ptr %i.in, align 4, !tbaa !62
  br label %_ZN9btVector313safeNormalizeEv.exit

_ZN9btVector313safeNormalizeEv.exit:              ; preds = %bb.j, %bb.k
  %.sink.i = phi float [ 0.000000e+00, %bb.k ], [ %i.il, %bb.j ]
  %i.io = phi <2 x float> [ <float 1.000000e+00, float 0.000000e+00>, %bb.k ], [ %i.im, %bb.j ]
  %i.ip = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <2 x float> %i.io, ptr %3, align 4, !tbaa !62
  store float %.sink.i, ptr %i.ip, align 4, !tbaa !62
  %i.iq = shufflevector <2 x float> %i.hb, <2 x float> %i.gs, <2 x i32> <i32 1, i32 3>
  %i.ir = insertelement <2 x float> %i.gz, float %i.fo, i64 1
  %i.is = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.iq, <2 x float> %i.hv, <2 x float> %i.ir) ; 2 uses
  %i.it = shufflevector <2 x float> %i.he, <2 x float> %i.gw, <2 x i32> <i32 0, i32 3>
  %i.iu = insertelement <2 x float> %i.gx, float %i.gd, i64 1
  %i.iv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.it, <2 x float> %i.hv, <2 x float> %i.iu)
  %i.iw = fsub <2 x float> %i.iv, %i.is
  %i.ix = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.iy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.iw, <2 x float> %i.ix, <2 x float> %i.is) ; 2 uses
  %i.iz = extractelement <2 x float> %i.iy, i64 0
  %i.ja = extractelement <2 x float> %i.iy, i64 1 ; 2 uses
  %i.jb = fsub float %i.iz, %i.ja
  %i.jc = tail call noundef float @llvm.fmuladd.f32(float %i.jb, float %i.ap, float %i.ja)
  %i.jd = fsub float %i.jc, %4
  ret float %i.jd
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZL12findJacobianPK23btMultiBodyLinkColliderR23btMultiBodyJacobianDataRK9btVector3S6_(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(204) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3) unnamed_addr #3 {
bb.a:
  %4 = alloca %class.btVector3, align 4           ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !289
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 628
  %i.d = load i32, ptr %i.c, align 4, !tbaa !298  ; 3 uses
  %i.e = add nsw i32 %i.d, 6                      ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !259  ; 3 uses
  %i.h = icmp sgt i32 %i.e, %i.g
  br i1 %i.h, label %bb.b, label %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !284
  %i.k = icmp slt i32 %i.j, %i.e
  br i1 %i.k, label %bb.c, label %..lr.ph.i_crit_edge

..lr.ph.i_crit_edge:                              ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !283
  br label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = sext i32 %i.e to i64
  %i.m = shl nsw i64 %i.l, 2
  %i.n = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.m, i32 noundef 16)
  %.pre.i = load i32, ptr %i.f, align 4, !tbaa !259
  br label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i: ; preds = %bb.d, %bb.c
  %i.o = phi i32 [ %.pre.i, %bb.d ], [ %i.g, %bb.c ] ; 3 uses
  %.0.i.i.i = phi ptr [ %i.n, %bb.d ], [ null, %bb.c ] ; 9 uses
  %i.p = icmp sgt i32 %i.o, 0
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !283  ; 9 uses
  br i1 %i.p, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i
  %i.s = ptrtoaddr ptr %i.r to i64
  %.0.i.i.i45 = ptrtoaddr ptr %.0.i.i.i to i64
  %wide.trip.count.i.i.i = zext nneg i32 %i.o to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.o, 8
  %i.t = sub i64 %i.s, %.0.i.i.i45
  %diff.check = icmp ugt i64 %i.t, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %index ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %wide.load = load <4 x float>, ptr %i.v, align 4, !tbaa !62
  %wide.load46 = load <4 x float>, ptr %i.w, align 4, !tbaa !62
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store <4 x float> %wide.load, ptr %i.u, align 4, !tbaa !62
  store <4 x float> %wide.load46, ptr %i.x, align 4, !tbaa !62
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !468

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.i.i.i.prol
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !62
  store float %i.ab, ptr %i.z, align 4, !tbaa !62
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !469

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.ac = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.ad = icmp ugt i64 %i.ac, -4
  br i1 %i.ad, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.i.i.i
  %i.ag = load float, ptr %i.af, align 4, !tbaa !62
  store float %i.ag, ptr %i.ae, align 4, !tbaa !62
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.next.i.i.i
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !62
  store float %i.aj, ptr %i.ah, align 4, !tbaa !62
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.next.i.i.i.1
  %i.am = load float, ptr %i.al, align 4, !tbaa !62
  store float %i.am, ptr %i.ak, align 4, !tbaa !62
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.next.i.i.i.2
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !62
  store float %i.ap, ptr %i.an, align 4, !tbaa !62
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i, label %scalar.ph, !llvm.loop !470

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i
  %.not.i5.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !258, !range !52, !noundef !58
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.e, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i

bb.e:                                             ; preds = %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.r)
  br label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i: ; preds = %bb.e, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i8 1, ptr %i.at, align 8, !tbaa !258
  store ptr %.0.i.i.i, ptr %i.q, align 8, !tbaa !283
  store i32 %i.e, ptr %i.i, align 8, !tbaa !284
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %..lr.ph.i_crit_edge, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i
  %i.au = phi ptr [ %.pre, %..lr.ph.i_crit_edge ], [ %.0.i.i.i, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i ]
  %i.av = sext i32 %i.g to i64                    ; 2 uses
  %5 = shl nsw i64 %i.av, 2
  %scevgep = getelementptr i8, ptr %i.au, i64 %5
  %6 = sext i32 %i.d to i64
  %7 = add nsw i64 %6, 6
  %i.aw = sub nsw i64 %7, %i.av
  %i.ax = shl nuw nsw i64 %i.aw, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.ax, i1 false), !tbaa !62
  br label %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit

_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit:    ; preds = %.lr.ph.i, %bb.a
  store i32 %i.e, ptr %i.f, align 4, !tbaa !259
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 3 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !259 ; 3 uses
  %i.ba = icmp sgt i32 %i.e, %i.az
  br i1 %i.ba, label %bb.f, label %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit37

bb.f:                                             ; preds = %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !284
  %i.bd = icmp slt i32 %i.bc, %i.e
  br i1 %i.bd, label %bb.g, label %..lr.ph.i18_crit_edge

..lr.ph.i18_crit_edge:                            ; preds = %bb.f
  %.phi.trans.insert39 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.pre40 = load ptr, ptr %.phi.trans.insert39, align 8, !tbaa !283
  br label %.lr.ph.i18

bb.g:                                             ; preds = %bb.f
  %.not.i.i.i24 = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i24, label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i26, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.be = sext i32 %i.e to i64
  %i.bf = shl nsw i64 %i.be, 2
  %i.bg = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.bf, i32 noundef 16)
  %.pre.i25 = load i32, ptr %i.ay, align 4, !tbaa !259
  br label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i26

_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i26: ; preds = %bb.h, %bb.g
  %i.bh = phi i32 [ %.pre.i25, %bb.h ], [ %i.az, %bb.g ] ; 3 uses
  %.0.i.i.i27 = phi ptr [ %i.bg, %bb.h ], [ null, %bb.g ] ; 9 uses
  %i.bi = icmp sgt i32 %i.bh, 0
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !283 ; 9 uses
  br i1 %i.bi, label %.lr.ph.i.i.i32, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i28

.lr.ph.i.i.i32:                                   ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i26
  %i.bl = ptrtoaddr ptr %i.bk to i64
  %.0.i.i.i2748 = ptrtoaddr ptr %.0.i.i.i27 to i64
  %wide.trip.count.i.i.i33 = zext nneg i32 %i.bh to i64 ; 5 uses
  %min.iters.check51 = icmp ult i32 %i.bh, 8
  %i.bm = sub i64 %i.bl, %.0.i.i.i2748
  %diff.check49 = icmp ugt i64 %i.bm, -32
  %or.cond62 = select i1 %min.iters.check51, i1 true, i1 %diff.check49
  br i1 %or.cond62, label %scalar.ph50.preheader, label %vector.ph52

vector.ph52:                                      ; preds = %.lr.ph.i.i.i32
  %n.vec53 = and i64 %wide.trip.count.i.i.i33, 2147483640 ; 3 uses
  br label %vector.body54

vector.body54:                                    ; preds = %vector.body54, %vector.ph52
  %index55 = phi i64 [ 0, %vector.ph52 ], [ %index.next58, %vector.body54 ] ; 3 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i27, i64 %index55 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %index55 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %wide.load56 = load <4 x float>, ptr %i.bo, align 4, !tbaa !62
  %wide.load57 = load <4 x float>, ptr %i.bp, align 4, !tbaa !62
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store <4 x float> %wide.load56, ptr %i.bn, align 4, !tbaa !62
  store <4 x float> %wide.load57, ptr %i.bq, align 4, !tbaa !62
  %index.next58 = add nuw i64 %index55, 8         ; 2 uses
  %i.br = icmp eq i64 %index.next58, %n.vec53
  br i1 %i.br, label %middle.block59, label %vector.body54, !llvm.loop !471

middle.block59:                                   ; preds = %vector.body54
  %cmp.n60 = icmp eq i64 %n.vec53, %wide.trip.count.i.i.i33
  br i1 %cmp.n60, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i30, label %scalar.ph50.preheader

scalar.ph50.preheader:                            ; preds = %.lr.ph.i.i.i32, %middle.block59
  %indvars.iv.i.i.i34.ph = phi i64 [ 0, %.lr.ph.i.i.i32 ], [ %n.vec53, %middle.block59 ] ; 3 uses
  %xtraiter63 = and i64 %wide.trip.count.i.i.i33, 3 ; 2 uses
  %lcmp.mod64.not = icmp eq i64 %xtraiter63, 0
  br i1 %lcmp.mod64.not, label %scalar.ph50.prol.loopexit, label %scalar.ph50.prol

scalar.ph50.prol:                                 ; preds = %scalar.ph50.preheader, %scalar.ph50.prol
  %indvars.iv.i.i.i34.prol = phi i64 [ %indvars.iv.next.i.i.i35.prol, %scalar.ph50.prol ], [ %indvars.iv.i.i.i34.ph, %scalar.ph50.preheader ] ; 3 uses
  %prol.iter65 = phi i64 [ %prol.iter65.next, %scalar.ph50.prol ], [ 0, %scalar.ph50.preheader ]
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i27, i64 %indvars.iv.i.i.i34.prol
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv.i.i.i34.prol
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !62
  store float %i.bu, ptr %i.bs, align 4, !tbaa !62
  %indvars.iv.next.i.i.i35.prol = add nuw nsw i64 %indvars.iv.i.i.i34.prol, 1 ; 2 uses
  %prol.iter65.next = add i64 %prol.iter65, 1     ; 2 uses
  %prol.iter65.cmp.not = icmp eq i64 %prol.iter65.next, %xtraiter63
  br i1 %prol.iter65.cmp.not, label %scalar.ph50.prol.loopexit, label %scalar.ph50.prol, !llvm.loop !472

scalar.ph50.prol.loopexit:                        ; preds = %scalar.ph50.prol, %scalar.ph50.preheader
  %indvars.iv.i.i.i34.unr = phi i64 [ %indvars.iv.i.i.i34.ph, %scalar.ph50.preheader ], [ %indvars.iv.next.i.i.i35.prol, %scalar.ph50.prol ]
  %i.bv = sub nsw i64 %indvars.iv.i.i.i34.ph, %wide.trip.count.i.i.i33
  %i.bw = icmp ugt i64 %i.bv, -4
  br i1 %i.bw, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i30, label %scalar.ph50

scalar.ph50:                                      ; preds = %scalar.ph50.prol.loopexit, %scalar.ph50
  %indvars.iv.i.i.i34 = phi i64 [ %indvars.iv.next.i.i.i35.3, %scalar.ph50 ], [ %indvars.iv.i.i.i34.unr, %scalar.ph50.prol.loopexit ] ; 6 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i27, i64 %indvars.iv.i.i.i34
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv.i.i.i34
  %i.bz = load float, ptr %i.by, align 4, !tbaa !62
  store float %i.bz, ptr %i.bx, align 4, !tbaa !62
  %indvars.iv.next.i.i.i35 = add nuw nsw i64 %indvars.iv.i.i.i34, 1 ; 2 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i27, i64 %indvars.iv.next.i.i.i35
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv.next.i.i.i35
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !62
  store float %i.cc, ptr %i.ca, align 4, !tbaa !62
  %indvars.iv.next.i.i.i35.1 = add nuw nsw i64 %indvars.iv.i.i.i34, 2 ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i27, i64 %indvars.iv.next.i.i.i35.1
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv.next.i.i.i35.1
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !62
  store float %i.cf, ptr %i.cd, align 4, !tbaa !62
  %indvars.iv.next.i.i.i35.2 = add nuw nsw i64 %indvars.iv.i.i.i34, 3 ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i27, i64 %indvars.iv.next.i.i.i35.2
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv.next.i.i.i35.2
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !62
  store float %i.ci, ptr %i.cg, align 4, !tbaa !62
  %indvars.iv.next.i.i.i35.3 = add nuw nsw i64 %indvars.iv.i.i.i34, 4 ; 2 uses
  %exitcond.not.i.i.i36.3 = icmp eq i64 %indvars.iv.next.i.i.i35.3, %wide.trip.count.i.i.i33
  br i1 %exitcond.not.i.i.i36.3, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i30, label %scalar.ph50, !llvm.loop !473

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i28: ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i26
  %.not.i5.i.i29 = icmp eq ptr %i.bk, null
  br i1 %.not.i5.i.i29, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i31, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i30

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i30: ; preds = %scalar.ph50.prol.loopexit, %scalar.ph50, %middle.block59, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i28
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ck = load i8, ptr %i.cj, align 8, !tbaa !258, !range !52, !noundef !58
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %bb.i, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i31

bb.i:                                             ; preds = %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i30
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.bk)
  br label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i31

_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i31: ; preds = %bb.i, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i30, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i28
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 1, ptr %i.cm, align 8, !tbaa !258
  store ptr %.0.i.i.i27, ptr %i.bj, align 8, !tbaa !283
  store i32 %i.e, ptr %i.bb, align 8, !tbaa !284
  br label %.lr.ph.i18

.lr.ph.i18:                                       ; preds = %..lr.ph.i18_crit_edge, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i31
  %i.cn = phi ptr [ %.pre40, %..lr.ph.i18_crit_edge ], [ %.0.i.i.i27, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i31 ]
  %i.co = sext i32 %i.az to i64                   ; 2 uses
  %8 = shl nsw i64 %i.co, 2
  %scevgep38 = getelementptr i8, ptr %i.cn, i64 %8
  %9 = sext i32 %i.d to i64
  %10 = add nsw i64 %9, 6
  %i.cp = sub nsw i64 %10, %i.co
  %i.cq = shl nuw nsw i64 %i.cp, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep38, i8 0, i64 %i.cq, i1 false), !tbaa !62
  br label %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit37

_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit37:  ; preds = %.lr.ph.i18, %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit
  store i32 %i.e, ptr %i.ay, align 4, !tbaa !259
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !283
  %i.ct = load ptr, ptr %i.a, align 8, !tbaa !289
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !474
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 160
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @_ZNK11btMultiBody30fillConstraintJacobianMultiDofEiRK9btVector3S2_S2_PfR20btAlignedObjectArrayIfERS4_IS0_ERS4_I11btMatrix3x3E(ptr noundef nonnull align 8 dereferenceable(640) %i.ct, i32 noundef %i.cv, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull %i.cs, ptr noundef nonnull align 8 dereferenceable(25) %i.cw, ptr noundef nonnull align 8 dereferenceable(25) %i.cx, ptr noundef nonnull align 8 dereferenceable(25) %i.cy)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.cz = load ptr, ptr %i.a, align 8, !tbaa !289
  %i.da = load ptr, ptr %i.cr, align 8, !tbaa !283
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !283
  call void @_ZNK11btMultiBody30calcAccelerationDeltasMultiDofEPKfPfR20btAlignedObjectArrayIfERS3_I9btVector3E(ptr noundef nonnull align 8 dereferenceable(640) %i.cz, ptr noundef nonnull %i.da, ptr noundef nonnull %i.dc, ptr noundef nonnull align 8 dereferenceable(25) %i.cw, ptr noundef nonnull align 8 dereferenceable(25) %i.cx)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(204) ptr @_ZN23btMultiBodyJacobianDataaSERKS_(ptr noundef nonnull align 8 dereferenceable(204) %0, ptr noundef nonnull align 8 dereferenceable(204) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !259  ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !259  ; 3 uses
  %i.e = icmp sgt i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %._ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit_crit_edge.i.i

._ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit_crit_edge.i.i: ; preds = %bb.a
  %.phi.trans.insert9.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre10.i.i = load ptr, ptr %.phi.trans.insert9.i.i, align 8, !tbaa !283
  br label %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !284
  %i.h = icmp slt i32 %i.g, %i.b
  br i1 %i.h, label %bb.c, label %..lr.ph.i_crit_edge.i.i

..lr.ph.i_crit_edge.i.i:                          ; preds = %bb.b
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !283
  br label %.lr.ph.i.i.i

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i.i.i, label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = sext i32 %i.b to i64
  %i.j = shl nsw i64 %i.i, 2
  %i.k = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.j, i32 noundef 16)
  %.pre.i.i.i = load i32, ptr %i.c, align 4, !tbaa !259
  br label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i.i

_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i.i: ; preds = %bb.d, %bb.c
  %i.l = phi i32 [ %.pre.i.i.i, %bb.d ], [ %i.d, %bb.c ] ; 3 uses
  %.0.i.i.i.i.i = phi ptr [ %i.k, %bb.d ], [ null, %bb.c ] ; 9 uses
  %i.m = icmp sgt i32 %i.l, 0
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !283  ; 9 uses
  br i1 %i.m, label %.lr.ph.i.i.i.i.i, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i.i
  %i.p = ptrtoaddr ptr %i.o to i64
  %.0.i.i.i.i.i128 = ptrtoaddr ptr %.0.i.i.i.i.i to i64
  %wide.trip.count.i.i.i.i.i = zext nneg i32 %i.l to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.l, 8
  %i.q = sub i64 %i.p, %.0.i.i.i.i.i128
  %diff.check = icmp ugt i64 %i.q, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load = load <4 x float>, ptr %i.s, align 4, !tbaa !62
  %wide.load129 = load <4 x float>, ptr %i.t, align 4, !tbaa !62
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <4 x float> %wide.load, ptr %i.r, align 4, !tbaa !62
  store <4 x float> %wide.load129, ptr %i.u, align 4, !tbaa !62
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !475

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i.i.i
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i.i.i, %middle.block
  %indvars.iv.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i.i.i, 3 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.i.i.i.i.i.prol
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i.i.i.i.i.prol
  %i.y = load float, ptr %i.x, align 4, !tbaa !62
  store float %i.y, ptr %i.w, align 4, !tbaa !62
  %indvars.iv.next.i.i.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !476

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.i.i.prol, %scalar.ph.prol ]
  %i.z = sub nsw i64 %indvars.iv.i.i.i.i.i.ph, %wide.trip.count.i.i.i.i.i
  %i.aa = icmp ugt i64 %i.z, -4
  br i1 %i.aa, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.i.i.i.i.i
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i.i.i.i.i
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !62
  store float %i.ad, ptr %i.ab, align 4, !tbaa !62
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.next.i.i.i.i.i
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next.i.i.i.i.i
  %i.ag = load float, ptr %i.af, align 4, !tbaa !62
  store float %i.ag, ptr %i.ae, align 4, !tbaa !62
  %indvars.iv.next.i.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 2 ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.next.i.i.i.i.i.1
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next.i.i.i.i.i.1
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !62
  store float %i.aj, ptr %i.ah, align 4, !tbaa !62
  %indvars.iv.next.i.i.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 3 ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.next.i.i.i.i.i.2
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next.i.i.i.i.i.2
  %i.am = load float, ptr %i.al, align 4, !tbaa !62
  store float %i.am, ptr %i.ak, align 4, !tbaa !62
  %indvars.iv.next.i.i.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.3, %wide.trip.count.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.3, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i.i, label %scalar.ph, !llvm.loop !477

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i.i: ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i.i
  %.not.i5.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i5.i.i.i.i, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i.i, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i.i

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !258, !range !52, !noundef !58
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.e, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i.i

bb.e:                                             ; preds = %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.o)
  br label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i.i

_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i.i: ; preds = %bb.e, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i.i, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.aq, align 8, !tbaa !258
  store ptr %.0.i.i.i.i.i, ptr %i.n, align 8, !tbaa !283
  store i32 %i.b, ptr %i.f, align 8, !tbaa !284
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i.i, %..lr.ph.i_crit_edge.i.i
  %i.ar = phi ptr [ %.pre.i.i, %..lr.ph.i_crit_edge.i.i ], [ %.0.i.i.i.i.i, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i.i ] ; 2 uses
  %i.as = sext i32 %i.d to i64                    ; 2 uses
  %wide.trip.count.i.i.i = sext i32 %i.b to i64
  %i.at = shl nsw i64 %i.as, 2
  %scevgep.i.i = getelementptr i8, ptr %i.ar, i64 %i.at
  %i.au = sub nsw i64 %wide.trip.count.i.i.i, %i.as
  %i.av = shl nuw nsw i64 %i.au, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i, i8 0, i64 %i.av, i1 false), !tbaa !62
  br label %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit.i.i

_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit.i.i: ; preds = %.lr.ph.i.i.i, %._ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit_crit_edge.i.i
  %i.aw = phi ptr [ %.pre10.i.i, %._ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit_crit_edge.i.i ], [ %i.ar, %.lr.ph.i.i.i ] ; 7 uses
  store i32 %i.b, ptr %i.c, align 4, !tbaa !259
  %i.ax = icmp sgt i32 %i.b, 0
  br i1 %i.ax, label %.lr.ph.i4.i.i, label %_ZN20btAlignedObjectArrayIfEaSERKS0_.exit

.lr.ph.i4.i.i:                                    ; preds = %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit.i.i
  %i.ay = ptrtoaddr ptr %i.aw to i64
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !283 ; 7 uses
  %wide.trip.count.i5.i.i = zext nneg i32 %i.b to i64 ; 5 uses
  %min.iters.check133 = icmp ult i32 %i.b, 8
  %i.bb = ptrtoaddr ptr %i.ba to i64
  %i.bc = sub i64 %i.bb, %i.ay
  %diff.check131 = icmp ugt i64 %i.bc, -32
  %or.cond232 = select i1 %min.iters.check133, i1 true, i1 %diff.check131
end_hunk_0
