inline.NumInlined: 437
inline.NumDeleted: 149
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN11b3SolveTask3runEi:bb.a
  %i.di = icmp eq i64 %index.next248, %n.vec243
  br i1 %i.di, label %middle.block249, label %vector.body244, !llvm.loop !96

middle.block249:                                  ; preds = %vector.body244
  %cmp.n250 = icmp eq i64 %n.vec243, %wide.trip.count.i.i.i108
  br i1 %cmp.n250, label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i102, label %scalar.ph240.preheader

scalar.ph240.preheader:                           ; preds = %.lr.ph.i.i.i107, %middle.block249
  %indvars.iv.i.i.i109.ph = phi i64 [ 0, %.lr.ph.i.i.i107 ], [ %n.vec243, %middle.block249 ] ; 3 uses
  %xtraiter292 = and i64 %wide.trip.count.i.i.i108, 3 ; 2 uses
  %lcmp.mod293.not = icmp eq i64 %xtraiter292, 0
  br i1 %lcmp.mod293.not, label %scalar.ph240.prol.loopexit, label %scalar.ph240.prol

scalar.ph240.prol:                                ; preds = %scalar.ph240.preheader, %scalar.ph240.prol
  %indvars.iv.i.i.i109.prol = phi i64 [ %indvars.iv.next.i.i.i110.prol, %scalar.ph240.prol ], [ %indvars.iv.i.i.i109.ph, %scalar.ph240.preheader ] ; 3 uses
  %prol.iter294 = phi i64 [ %prol.iter294.next, %scalar.ph240.prol ], [ 0, %scalar.ph240.preheader ]
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv.i.i.i109.prol
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %.pre198, i64 %indvars.iv.i.i.i109.prol
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !44
  store i32 %i.dl, ptr %i.dj, align 4, !tbaa !44
  %indvars.iv.next.i.i.i110.prol = add nuw nsw i64 %indvars.iv.i.i.i109.prol, 1 ; 2 uses
  %prol.iter294.next = add i64 %prol.iter294, 1   ; 2 uses
  %prol.iter294.cmp.not = icmp eq i64 %prol.iter294.next, %xtraiter292
  br i1 %prol.iter294.cmp.not, label %scalar.ph240.prol.loopexit, label %scalar.ph240.prol, !llvm.loop !97

scalar.ph240.prol.loopexit:                       ; preds = %scalar.ph240.prol, %scalar.ph240.preheader
  %indvars.iv.i.i.i109.unr = phi i64 [ %indvars.iv.i.i.i109.ph, %scalar.ph240.preheader ], [ %indvars.iv.next.i.i.i110.prol, %scalar.ph240.prol ]
  %i.dm = sub nsw i64 %indvars.iv.i.i.i109.ph, %wide.trip.count.i.i.i108
  %i.dn = icmp ugt i64 %i.dm, -4
  br i1 %i.dn, label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i102, label %scalar.ph240

scalar.ph240:                                     ; preds = %scalar.ph240.prol.loopexit, %scalar.ph240
  %indvars.iv.i.i.i109 = phi i64 [ %indvars.iv.next.i.i.i110.3, %scalar.ph240 ], [ %indvars.iv.i.i.i109.unr, %scalar.ph240.prol.loopexit ] ; 6 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv.i.i.i109
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %.pre198, i64 %indvars.iv.i.i.i109
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !44
  store i32 %i.dq, ptr %i.do, align 4, !tbaa !44
  %indvars.iv.next.i.i.i110 = add nuw nsw i64 %indvars.iv.i.i.i109, 1 ; 2 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv.next.i.i.i110
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %.pre198, i64 %indvars.iv.next.i.i.i110
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !44
  store i32 %i.dt, ptr %i.dr, align 4, !tbaa !44
  %indvars.iv.next.i.i.i110.1 = add nuw nsw i64 %indvars.iv.i.i.i109, 2 ; 2 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv.next.i.i.i110.1
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %.pre198, i64 %indvars.iv.next.i.i.i110.1
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !44
  store i32 %i.dw, ptr %i.du, align 4, !tbaa !44
  %indvars.iv.next.i.i.i110.2 = add nuw nsw i64 %indvars.iv.i.i.i109, 3 ; 2 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv.next.i.i.i110.2
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %.pre198, i64 %indvars.iv.next.i.i.i110.2
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !44
  store i32 %i.dz, ptr %i.dx, align 4, !tbaa !44
  %indvars.iv.next.i.i.i110.3 = add nuw nsw i64 %indvars.iv.i.i.i109, 4 ; 2 uses
  %exitcond.not.i.i.i111.3 = icmp eq i64 %indvars.iv.next.i.i.i110.3, %wide.trip.count.i.i.i108
  br i1 %exitcond.not.i.i.i111.3, label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i102, label %scalar.ph240, !llvm.loop !98

.split7.i.i112:                                   ; preds = %.noexc113, %bb.p
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5, i32 noundef 301)
          to label %.noexc114 unwind label %bb.r

.noexc114:                                        ; preds = %.split7.i.i112
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.6)
          to label %.noexc115 unwind label %bb.r

.noexc115:                                        ; preds = %.noexc114
  store i32 0, ptr %i.d, align 4, !tbaa !77
  %.pre197 = load ptr, ptr %i.c, align 8, !tbaa !76
  br label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i102

_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i102: ; preds = %scalar.ph240.prol.loopexit, %scalar.ph240, %middle.block249, %.noexc115, %.split.i.i101
  %i.ea = phi ptr [ %.pre197, %.noexc115 ], [ %.pre198, %.split.i.i101 ], [ %.pre198, %middle.block249 ], [ %.pre198, %scalar.ph240 ], [ %.pre198, %scalar.ph240.prol.loopexit ] ; 2 uses
  %.0.i12.i.i103 = phi ptr [ null, %.noexc115 ], [ %i.cz, %.split.i.i101 ], [ %i.cz, %middle.block249 ], [ %i.cz, %scalar.ph240 ], [ %i.cz, %scalar.ph240.prol.loopexit ] ; 2 uses
  %.0.i.i104 = phi i32 [ 0, %.noexc115 ], [ %i.cv, %.split.i.i101 ], [ %i.cv, %middle.block249 ], [ %i.cv, %scalar.ph240 ], [ %i.cv, %scalar.ph240.prol.loopexit ]
  %.not.i10.i.i105 = icmp ne ptr %i.ea, null
  %i.eb = load i8, ptr %i.b, align 8, !range !45
  %i.ec = trunc nuw i8 %i.eb to i1
  %or.cond163 = select i1 %.not.i10.i.i105, i1 %i.ec, i1 false
  br i1 %or.cond163, label %bb.q, label %_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i106

bb.q:                                             ; preds = %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i102
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.ea)
          to label %_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i106 unwind label %bb.r

_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i106: ; preds = %bb.q, %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i102
  store i8 1, ptr %i.b, align 8, !tbaa !72
  store ptr %.0.i12.i.i103, ptr %i.c, align 8, !tbaa !76
  store i32 %.0.i.i104, ptr %i.e, align 8, !tbaa !78
  br label %.lr.ph.i93

.lr.ph.i93:                                       ; preds = %..lr.ph.i93_crit_edge, %_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i106
  %i.ed = phi ptr [ %.pre199, %..lr.ph.i93_crit_edge ], [ %.0.i12.i.i103, %_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i106 ]
  %i.ee = sext i32 %i.cu to i64                   ; 2 uses
  %wide.trip.count.i94 = sext i32 %i.cv to i64
  %i.ef = shl nsw i64 %i.ee, 2
  %scevgep185 = getelementptr i8, ptr %i.ed, i64 %i.ef
  %i.eg = sub nsw i64 %wide.trip.count.i94, %i.ee
  %i.eh = shl nsw i64 %i.eg, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep185, i8 0, i64 %i.eh, i1 false), !tbaa !44
  store i32 %i.cv, ptr %i.d, align 4, !tbaa !77
  br label %bb.s

bb.r:                                             ; preds = %bb.q, %.noexc114, %.split7.i.i112, %_ZN20b3AlignedObjectArrayIiE8allocateEi.exit.i.i100
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.s:                                             ; preds = %.lr.ph.i93, %bb.n
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bc, i64 68
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !99 ; 6 uses
  %i.el = fcmp une float %i.ek, 0.000000e+00
  br i1 %i.el, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.em = load ptr, ptr %i.c, align 8, !tbaa !76
  %i.en = getelementptr inbounds [4 x i8], ptr %i.em, i64 %i.bb ; 2 uses
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !44
  %i.ep = add nsw i32 %i.eo, 1
  store i32 %i.ep, ptr %i.en, align 4, !tbaa !44
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.eq = getelementptr inbounds nuw i8, ptr %i.be, i64 68
  %i.er = load float, ptr %i.eq, align 4, !tbaa !99 ; 6 uses
  %i.es = fcmp une float %i.er, 0.000000e+00
  br i1 %i.es, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.et = load ptr, ptr %i.c, align 8, !tbaa !76
  %i.eu = getelementptr inbounds [4 x i8], ptr %i.et, i64 %i.bd ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !44
  %i.ew = add nsw i32 %i.ev, 1
  store i32 %i.ew, ptr %i.eu, align 4, !tbaa !44
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ex = load i8, ptr %i.l, align 4, !tbaa !71, !range !45, !noundef !83
  %i.ey = trunc nuw i8 %i.ex to i1
  br i1 %i.ey, label %.preheader, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.ez = load ptr, ptr %i.k, align 8, !tbaa !82, !nonnull !83, !align !84
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !59
  %i.fc = getelementptr inbounds [176 x i8], ptr %i.fb, i64 %i.aq ; 6 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.bc, i64 48 ; 3 uses
  %i.ff = load ptr, ptr %i.m, align 8, !tbaa !100, !nonnull !83, !align !84
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !24 ; 2 uses
  %i.fi = getelementptr inbounds [96 x i8], ptr %i.fh, i64 %i.bb ; 7 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.be, i64 32 ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.be, i64 48 ; 3 uses
  %i.fl = getelementptr inbounds [96 x i8], ptr %i.fh, i64 %i.bd ; 7 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fc, i64 96
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %i.fo = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.fq = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fs = getelementptr inbounds nuw i8, ptr %i.bc, i64 36
  %i.ft = getelementptr inbounds nuw i8, ptr %i.bc, i64 40 ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.bc, i64 52
  %i.fv = getelementptr inbounds nuw i8, ptr %i.bc, i64 56 ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.be, i64 36
  %i.fx = getelementptr inbounds nuw i8, ptr %i.be, i64 40 ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.be, i64 52
  %i.fz = getelementptr inbounds nuw i8, ptr %i.be, i64 56 ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fc, i64 112
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fc, i64 128
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fi, i64 24
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fi, i64 32
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fi, i64 36
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fi, i64 40
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fl, i64 24
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fl, i64 32
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fl, i64 36
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fl, i64 40
  %i.go = insertelement <2 x float> poison, float %i.er, i64 0
  %i.gp = shufflevector <2 x float> %i.go, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gq = insertelement <2 x float> poison, float %i.ek, i64 0
  %i.gr = shufflevector <2 x float> %i.gq, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.y

bb.y:                                             ; preds = %bb.aa, %bb.x
  %indvars.iv.i118 = phi i64 [ 0, %bb.x ], [ %indvars.iv.next.i119, %bb.aa ] ; 6 uses
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %indvars.iv.i118
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !101 ; 2 uses
  %i.gu = fcmp oeq float %i.gt, 0.000000e+00
  br i1 %i.gu, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gv = getelementptr inbounds nuw [16 x i8], ptr %i.fn, i64 %indvars.iv.i118
  %i.gw = load float, ptr %i.fo, align 8, !tbaa !52
  %i.gx = load float, ptr %i.be, align 16, !tbaa !52
  %i.gy = load float, ptr %i.fr, align 8, !tbaa !52 ; 5 uses
  %4 = fneg float %i.gy                           ; 3 uses
  %i.gz = load float, ptr %i.ft, align 8, !tbaa !52
  %i.ha = load float, ptr %i.fv, align 8, !tbaa !52
  %i.hb = load float, ptr %i.fx, align 8, !tbaa !52
  %i.hc = load float, ptr %i.fz, align 8, !tbaa !52
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %indvars.iv.i118
  %i.he = load float, ptr %i.hd, align 4, !tbaa !101
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %indvars.iv.i118 ; 2 uses
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !101 ; 2 uses
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i118
  %i.hi = load float, ptr %i.hh, align 4, !tbaa !101 ; 2 uses
  %5 = fmul float %i.ek, %i.gy
  %i.hj = fmul float %i.er, %4
  %i.hk = load <2 x float>, ptr %i.fc, align 16, !tbaa !52 ; 6 uses
  %i.hl = fneg <2 x float> %i.hk                  ; 6 uses
  %6 = extractelement <2 x float> %i.hk, i64 1
  %i.hm = extractelement <2 x float> %i.hl, i64 0
  %i.hn = extractelement <2 x float> %i.hk, i64 0
  %i.ho = extractelement <2 x float> %i.hl, i64 1
  %i.hp = load <2 x float>, ptr %i.bc, align 16, !tbaa !52
  %i.hq = load <3 x float>, ptr %i.gv, align 16, !tbaa !52 ; 3 uses
  %7 = shufflevector <3 x float> %i.hq, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.hr = extractelement <3 x float> %i.hq, i64 0
  %i.hs = fsub float %i.hr, %i.gx                 ; 2 uses
  %8 = load <2 x float>, ptr %i.fp, align 4, !tbaa !52
  %9 = load float, ptr %i.fq, align 8, !tbaa !52
  %i.ht = insertelement <4 x float> poison, float %i.gw, i64 2
  %10 = shufflevector <2 x float> %8, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %11 = shufflevector <4 x float> %i.ht, <4 x float> %10, <4 x i32> <i32 poison, i32 poison, i32 2, i32 4>
  %i.hu = shufflevector <2 x float> %i.hp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.hv = shufflevector <4 x float> %i.hu, <4 x float> %11, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.hw = fsub <4 x float> %7, %i.hv              ; 3 uses
  %12 = extractelement <3 x float> %i.hq, i64 2
  %13 = fsub float %12, %9                        ; 2 uses
  %i.hx = fmul float %i.hs, %i.gy
  %i.hy = insertelement <4 x float> %i.hw, float %13, i64 3
  %14 = shufflevector <2 x float> %i.hk, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 1>
  %15 = insertelement <4 x float> poison, float %i.gy, i64 0
  %i.hz = insertelement <4 x float> %14, float %i.gy, i64 0
  %16 = fmul <4 x float> %i.hy, %i.hz
  %i.ia = shufflevector <4 x float> %16, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3>
  %17 = shufflevector <2 x float> %i.hl, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 poison>
  %18 = insertelement <4 x float> poison, float %4, i64 0
  %19 = shufflevector <4 x float> %18, <4 x float> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 0>
  %20 = shufflevector <4 x float> %17, <4 x float> %19, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.ib = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hw, <4 x float> %20, <4 x float> %i.ia) ; 6 uses
  %i.ic = extractelement <4 x float> %i.ib, i64 1
  %i.id = fneg float %i.ic                        ; 3 uses
  %i.ie = extractelement <4 x float> %i.ib, i64 2
  %i.if = fneg float %i.ie                        ; 3 uses
  %i.ig = extractelement <4 x float> %i.ib, i64 0
  %21 = fneg float %i.ig                          ; 3 uses
  %22 = tail call float @llvm.fmuladd.f32(float %13, float %i.hm, float %i.hx) ; 3 uses
  %23 = extractelement <4 x float> %i.hw, i64 3
  %i.ih = fmul float %23, %i.hn
  %i.ii = tail call float @llvm.fmuladd.f32(float %i.hs, float %i.ho, float %i.ih) ; 3 uses
  %i.ij = load <2 x float>, ptr %i.fd, align 16, !tbaa !52
  %i.ik = load float, ptr %i.fs, align 4, !tbaa !52
  %i.il = load <2 x float>, ptr %i.fe, align 16, !tbaa !52
  %i.im = load float, ptr %i.fu, align 4, !tbaa !52
  %i.in = load <2 x float>, ptr %i.fj, align 16, !tbaa !52
  %i.io = load float, ptr %i.fw, align 4, !tbaa !52
  %i.ip = load <2 x float>, ptr %i.fk, align 16, !tbaa !52
  %i.iq = load float, ptr %i.fy, align 4, !tbaa !52
  %i.ir = fmul float %22, %i.iq
  %i.is = insertelement <2 x float> poison, float %i.im, i64 0
  %i.it = insertelement <2 x float> %i.is, float %i.io, i64 1
  %i.iu = insertelement <2 x float> %i.hl, float %i.if, i64 0
  %i.iv = fmul <2 x float> %i.it, %i.iu
  %i.iw = fmul float %6, %i.ik
  %i.ix = shufflevector <2 x float> %i.hk, <2 x float> %i.hl, <4 x i32> <i32 0, i32 poison, i32 2, i32 poison>
  %i.iy = insertelement <4 x float> %i.ix, float %i.id, i64 1
  %24 = shufflevector <4 x float> %i.iy, <4 x float> %i.ib, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.iz = shufflevector <2 x float> %i.ij, <2 x float> %i.il, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.ja = shufflevector <2 x float> %i.in, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.jb = shufflevector <4 x float> %i.iz, <4 x float> %i.ja, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.jc = shufflevector <2 x float> %i.ip, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.jd = shufflevector <4 x float> %i.jb, <4 x float> %i.jc, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.je = insertelement <4 x float> poison, float %i.iw, i64 0
  %i.jf = shufflevector <2 x float> %i.iv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.jg = shufflevector <4 x float> %i.je, <4 x float> %i.jf, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.jh = insertelement <4 x float> %i.jg, float %i.ir, i64 3
  %i.ji = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %24, <4 x float> %i.jd, <4 x float> %i.jh)
  %i.jj = insertelement <4 x float> %15, float %21, i64 1
  %i.jk = insertelement <4 x float> %i.jj, float %4, i64 2
  %i.jl = insertelement <4 x float> %i.jk, float %i.ii, i64 3
  %i.jm = insertelement <4 x float> poison, float %i.gz, i64 0
  %i.jn = insertelement <4 x float> %i.jm, float %i.ha, i64 1
  %i.jo = insertelement <4 x float> %i.jn, float %i.hb, i64 2
  %i.jp = insertelement <4 x float> %i.jo, float %i.hc, i64 3
  %i.jq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jl, <4 x float> %i.jp, <4 x float> %i.ji) ; 4 uses
  %shift = shufflevector <4 x float> %i.jq, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <4 x float> %i.jq, %shift
  %shift272 = shufflevector <4 x float> %i.jq, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop273 = fadd <4 x float> %foldExtExtBinop, %shift272
  %shift275 = shufflevector <4 x float> %i.jq, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop276 = fadd <4 x float> %foldExtExtBinop273, %shift275
  %i.jr = extractelement <4 x float> %foldExtExtBinop276, i64 0
  %i.js = fadd float %i.he, %i.jr
  %i.jt = fmul float %i.gt, %i.js
  %i.ju = fadd float %i.hg, %i.jt                 ; 2 uses
  %i.jv = fcmp ogt float %i.ju, %i.hi
  %.sroa.speculated113.i = select i1 %i.jv, float %i.ju, float %i.hi ; 2 uses
  %i.jw = fcmp olt float %.sroa.speculated113.i, f0x7F7FFFFF
  %.sroa.speculated.i = select i1 %i.jw, float %.sroa.speculated113.i, float f0x7F7FFFFF ; 2 uses
  %i.jx = fsub float %.sroa.speculated.i, %i.hg   ; 5 uses
  store float %.sroa.speculated.i, ptr %i.hf, align 4, !tbaa !101
  %i.jy = fmul float %5, %i.jx
  %i.jz = fmul <2 x float> %i.gp, %i.hl
  %i.ka = insertelement <2 x float> poison, float %i.jx, i64 0
  %i.kb = shufflevector <2 x float> %i.ka, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.kc = fmul <2 x float> %i.jz, %i.kb
  %i.kd = fmul float %i.hj, %i.jx
  %i.ke = load float, ptr %i.gc, align 8, !tbaa !52
  %i.kf = load float, ptr %i.ge, align 8, !tbaa !52
  %i.kg = load float, ptr %i.gf, align 16, !tbaa !52
  %i.kh = load float, ptr %i.gg, align 4, !tbaa !52
  %i.ki = fmul float %i.kh, %i.if
  %i.kj = tail call float @llvm.fmuladd.f32(float %i.kg, float %i.id, float %i.ki)
  %i.kk = load float, ptr %i.gh, align 8, !tbaa !52
  %i.kl = tail call noundef float @llvm.fmuladd.f32(float %i.kk, float %21, float %i.kj)
  %i.km = fmul float %i.jx, %i.kl
  %i.kn = load float, ptr %i.gi, align 8, !tbaa !52
  %i.ko = load float, ptr %i.gk, align 8, !tbaa !52
  %i.kp = load float, ptr %i.gl, align 16, !tbaa !52
  %i.kq = load float, ptr %i.gm, align 4, !tbaa !52
  %i.kr = fmul float %22, %i.kq
  %25 = extractelement <4 x float> %i.ib, i64 3
  %i.ks = tail call float @llvm.fmuladd.f32(float %i.kp, float %25, float %i.kr)
  %i.kt = load float, ptr %i.gn, align 8, !tbaa !52
  %i.ku = tail call noundef float @llvm.fmuladd.f32(float %i.kt, float %i.ii, float %i.ks)
  %i.kv = fmul float %i.jx, %i.ku
  %i.kw = load float, ptr %i.ft, align 8, !tbaa !52
  %i.kx = fadd float %i.jy, %i.kw
  %i.ky = load float, ptr %i.fv, align 8, !tbaa !52
  %i.kz = fadd float %i.km, %i.ky
  %i.la = load <2 x float>, ptr %i.fl, align 16, !tbaa !52 ; 2 uses
  %i.lb = load <2 x float>, ptr %i.gj, align 16, !tbaa !52 ; 2 uses
  %26 = insertelement <2 x float> poison, float %22, i64 0
  %27 = shufflevector <2 x float> %26, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lc = shufflevector <2 x float> %i.la, <2 x float> %i.lb, <2 x i32> <i32 1, i32 3>
  %i.ld = fmul <2 x float> %27, %i.lc
  %i.le = shufflevector <2 x float> %i.la, <2 x float> %i.lb, <2 x i32> <i32 0, i32 2>
  %28 = shufflevector <4 x float> %i.ib, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.lf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.le, <2 x float> %28, <2 x float> %i.ld)
  %i.lg = insertelement <2 x float> poison, float %i.kn, i64 0
  %i.lh = insertelement <2 x float> %i.lg, float %i.ko, i64 1
  %i.li = insertelement <2 x float> poison, float %i.ii, i64 0
  %i.lj = shufflevector <2 x float> %i.li, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lh, <2 x float> %i.lj, <2 x float> %i.lf)
  %i.ll = fmul <2 x float> %i.kb, %i.lk
  %i.lm = fmul <2 x float> %i.gr, %i.hk
  %i.ln = fmul <2 x float> %i.lm, %i.kb
  %i.lo = load <2 x float>, ptr %i.fd, align 16, !tbaa !52
  %i.lp = fadd <2 x float> %i.ln, %i.lo
  %i.lq = load <2 x float>, ptr %i.fi, align 16, !tbaa !52 ; 2 uses
  %i.lr = load <2 x float>, ptr %i.gd, align 16, !tbaa !52 ; 2 uses
  %i.ls = shufflevector <2 x float> %i.lq, <2 x float> %i.lr, <2 x i32> <i32 1, i32 3>
  %i.lt = insertelement <2 x float> poison, float %i.if, i64 0
  %i.lu = shufflevector <2 x float> %i.lt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lv = fmul <2 x float> %i.ls, %i.lu
  %i.lw = shufflevector <2 x float> %i.lq, <2 x float> %i.lr, <2 x i32> <i32 0, i32 2>
  %i.lx = insertelement <2 x float> poison, float %i.id, i64 0
  %i.ly = shufflevector <2 x float> %i.lx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lw, <2 x float> %i.ly, <2 x float> %i.lv)
  %i.ma = insertelement <2 x float> poison, float %i.ke, i64 0
  %i.mb = insertelement <2 x float> %i.ma, float %i.kf, i64 1
  %i.mc = insertelement <2 x float> poison, float %21, i64 0
  %i.md = shufflevector <2 x float> %i.mc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.me = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mb, <2 x float> %i.md, <2 x float> %i.lz)
  %i.mf = fmul <2 x float> %i.me, %i.kb
  %i.mg = load <2 x float>, ptr %i.fe, align 16, !tbaa !52
  %i.mh = fadd <2 x float> %i.mf, %i.mg
  store <2 x float> %i.lp, ptr %i.fd, align 16, !tbaa !52
  store float %i.kx, ptr %i.ft, align 8, !tbaa !52
  store <2 x float> %i.mh, ptr %i.fe, align 16, !tbaa !52
  store float %i.kz, ptr %i.fv, align 8, !tbaa !52
  %i.mi = load <2 x float>, ptr %i.fj, align 16, !tbaa !52
  %i.mj = fadd <2 x float> %i.kc, %i.mi
  store <2 x float> %i.mj, ptr %i.fj, align 16, !tbaa !52
  %i.mk = load float, ptr %i.fx, align 8, !tbaa !52
  %i.ml = fadd float %i.kd, %i.mk
  store float %i.ml, ptr %i.fx, align 8, !tbaa !52
  %i.mm = load <2 x float>, ptr %i.fk, align 16, !tbaa !52
  %i.mn = fadd <2 x float> %i.ll, %i.mm
  store <2 x float> %i.mn, ptr %i.fk, align 16, !tbaa !52
  %i.mo = load float, ptr %i.fz, align 8, !tbaa !52
  %i.mp = fadd float %i.kv, %i.mo
  store float %i.mp, ptr %i.fz, align 8, !tbaa !52
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %indvars.iv.next.i119 = add nuw nsw i64 %indvars.iv.i118, 1 ; 2 uses
  %exitcond.not.i120 = icmp eq i64 %indvars.iv.next.i119, 4
  br i1 %exitcond.not.i120, label %_ZL14b3SolveContactR20b3ContactConstraint4RK9b3Vector3RS1_S4_fRK11b3Matrix3x3S3_S4_S4_fS7_PfS8_.exit, label %bb.y, !llvm.loop !102

_ZL14b3SolveContactR20b3ContactConstraint4RK9b3Vector3RS1_S4_fRK11b3Matrix3x3S3_S4_S4_fS7_PfS8_.exit: ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %_ZL15b3SolveFrictionR20b3ContactConstraint4RK9b3Vector3RS1_S4_fRK11b3Matrix3x3S3_S4_S4_fS7_PfS8_.exit

.preheader:                                       ; preds = %bb.w
  %i.mq = load ptr, ptr %i.k, align 8, !tbaa !82, !nonnull !83, !align !84
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 16
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !59
  %i.mt = getelementptr inbounds [176 x i8], ptr %i.ms, i64 %i.aq ; 10 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 128
  %i.mv = load float, ptr %i.mu, align 4, !tbaa !101
  %i.mw = fadd float %i.mv, 0.000000e+00
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mt, i64 132
  %i.my = load float, ptr %i.mx, align 4, !tbaa !101
  %i.mz = fadd float %i.mw, %i.my
  %i.na = getelementptr inbounds nuw i8, ptr %i.mt, i64 136
  %i.nb = load float, ptr %i.na, align 4, !tbaa !101
  %i.nc = fadd float %i.mz, %i.nb
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mt, i64 140
  %i.ne = load float, ptr %i.nd, align 4, !tbaa !101
  %i.nf = fadd float %i.nc, %i.ne
  %i.ng = fmul float %i.nf, f0x3F333333           ; 3 uses
  %i.nh = fneg float %i.ng                        ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.bc, i64 32 ; 3 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.bc, i64 48 ; 5 uses
  %i.nk = load ptr, ptr %i.m, align 8, !tbaa !100, !nonnull !83, !align !84
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 16
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !24 ; 2 uses
  %i.nn = getelementptr inbounds [96 x i8], ptr %i.nm, i64 %i.bb ; 7 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.be, i64 32 ; 3 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.be, i64 48 ; 5 uses
  %i.nq = getelementptr inbounds [96 x i8], ptr %i.nm, i64 %i.bd ; 7 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.mt, i64 144 ; 2 uses
  %i.ns = load float, ptr %i.nr, align 16, !tbaa !101
  %i.nt = fcmp oeq float %i.ns, 0.000000e+00
  br i1 %i.nt, label %_ZL15b3SolveFrictionR20b3ContactConstraint4RK9b3Vector3RS1_S4_fRK11b3Matrix3x3S3_S4_S4_fS7_PfS8_.exit, label %bb.ab

bb.ab:                                            ; preds = %.preheader
  %i.nu = getelementptr inbounds nuw i8, ptr %i.mt, i64 80 ; 2 uses
  %i.nv = load <2 x float>, ptr %i.mt, align 16, !tbaa !52 ; 4 uses
  %i.nw = extractelement <2 x float> %i.nv, i64 0 ; 4 uses
  %i.nx = fneg float %i.nw                        ; 4 uses
  %i.ny = extractelement <2 x float> %i.nv, i64 1 ; 6 uses
  %i.nz = fneg float %i.ny                        ; 3 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.mt, i64 8
  %i.ob = load float, ptr %i.oa, align 8, !tbaa !52 ; 8 uses
  %i.oc = fneg float %i.ob                        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.od = tail call float @llvm.fabs.f32(float %i.ob)
  %i.oe = fcmp ogt float %i.od, f0x3F3504F3
  br i1 %i.oe, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.of = fmul nnan float %i.ob, %i.ob
  %i.og = tail call float @llvm.fmuladd.f32(float %i.ny, float %i.ny, float %i.of) ; 2 uses
  %sqrt.i.i = tail call float @llvm.sqrt.f32(float %i.og)
  %i.oh = fdiv float 1.000000e+00, %sqrt.i.i      ; 3 uses
  %i.oi = fmul float %i.ob, %i.oh                 ; 2 uses
  %i.oj = fmul float %i.oh, %i.nz                 ; 2 uses
  %i.ok = fmul float %i.og, %i.oh
  %i.ol = fmul float %i.nw, %i.oj
  %i.om = fmul float %i.oi, %i.nx
  br label %_Z13b3PlaneSpace1I9b3Vector3EvRKT_RS1_S4_.exit.i

bb.ad:                                            ; preds = %bb.ab
  %i.on = fmul float %i.ny, %i.ny
  %i.oo = tail call float @llvm.fmuladd.f32(float %i.nw, float %i.nw, float %i.on) ; 2 uses
  %sqrt43.i.i = tail call float @llvm.sqrt.f32(float %i.oo)
  %i.op = fdiv float 1.000000e+00, %sqrt43.i.i    ; 3 uses
  %i.oq = fmul float %i.ny, %i.op                 ; 2 uses
  %i.or = fmul float %i.op, %i.nx                 ; 2 uses
  %i.os = fmul float %i.ob, %i.or
  %i.ot = fmul float %i.oq, %i.oc
  %i.ou = fmul float %i.oo, %i.op
  br label %_Z13b3PlaneSpace1I9b3Vector3EvRKT_RS1_S4_.exit.i

_Z13b3PlaneSpace1I9b3Vector3EvRKT_RS1_S4_.exit.i: ; preds = %bb.ad, %bb.ac
  %.sink257.i = phi float [ 0.000000e+00, %bb.ac ], [ %i.oq, %bb.ad ]
  %.sink256.i = phi float [ %i.oi, %bb.ac ], [ %i.or, %bb.ad ]
  %.sink255.i = phi float [ %i.oj, %bb.ac ], [ 0.000000e+00, %bb.ad ]
  %.sink254.i = phi float [ %i.ok, %bb.ac ], [ %i.os, %bb.ad ]
  %.sink.i = phi float [ %i.ol, %bb.ac ], [ %i.ot, %bb.ad ]
  %.sink.i.i = phi float [ %i.om, %bb.ac ], [ %i.ou, %bb.ad ]
  store float %.sink257.i, ptr %2, align 16, !tbaa !101
  store float %.sink256.i, ptr %i.o, align 4, !tbaa !101
  store float %.sink255.i, ptr %i.n, align 8, !tbaa !101
  store float %.sink254.i, ptr %indvars.iv.i122.sroa.gep158, align 16, !tbaa !101
  store float %.sink.i, ptr %i.p, align 4, !tbaa !101
  store float %.sink.i.i, ptr %i.q, align 8, !tbaa !101
  %i.ov = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.ow = getelementptr inbounds nuw i8, ptr %i.mt, i64 88
  %i.ox = load <2 x float>, ptr %i.bc, align 16, !tbaa !52
  %i.oy = load <3 x float>, ptr %i.nu, align 16, !tbaa !52 ; 3 uses
  %i.oz = shufflevector <3 x float> %i.oy, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.pa = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.pb = load float, ptr %i.pa, align 8, !tbaa !52
  %i.pc = load float, ptr %i.be, align 16, !tbaa !52
  %i.pd = extractelement <3 x float> %i.oy, i64 0
  %i.pe = fsub float %i.pd, %i.pc                 ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.pg = load float, ptr %i.pf, align 4, !tbaa !52
  %i.ph = extractelement <3 x float> %i.oy, i64 1
  %i.pi = fsub float %i.ph, %i.pg                 ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %i.pk = load float, ptr %i.pj, align 8, !tbaa !52
  %i.pl = insertelement <4 x float> poison, float %i.pb, i64 2
  %i.pm = insertelement <4 x float> %i.pl, float %i.pk, i64 3
  %i.pn = shufflevector <2 x float> %i.ox, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.po = shufflevector <4 x float> %i.pn, <4 x float> %i.pm, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.pp = fsub <4 x float> %i.oz, %i.po           ; 3 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.bc, i64 36
  %i.pr = getelementptr inbounds nuw i8, ptr %i.bc, i64 40 ; 3 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.bc, i64 52
  %i.pt = getelementptr inbounds nuw i8, ptr %i.bc, i64 56 ; 5 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.be, i64 36
  %i.pv = getelementptr inbounds nuw i8, ptr %i.be, i64 40 ; 3 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.be, i64 52
  %i.px = getelementptr inbounds nuw i8, ptr %i.be, i64 56 ; 5 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.mt, i64 152
  %i.pz = getelementptr inbounds nuw i8, ptr %i.nn, i64 8
  %i.qa = getelementptr inbounds nuw i8, ptr %i.nn, i64 16
  %i.qb = getelementptr inbounds nuw i8, ptr %i.nn, i64 24
  %i.qc = getelementptr inbounds nuw i8, ptr %i.nn, i64 32
  %i.qd = getelementptr inbounds nuw i8, ptr %i.nn, i64 36
  %i.qe = getelementptr inbounds nuw i8, ptr %i.nn, i64 40
  %i.qf = getelementptr inbounds nuw i8, ptr %i.nq, i64 8
  %i.qg = getelementptr inbounds nuw i8, ptr %i.nq, i64 16
  %i.qh = getelementptr inbounds nuw i8, ptr %i.nq, i64 24
  %i.qi = getelementptr inbounds nuw i8, ptr %i.nq, i64 32
  %i.qj = getelementptr inbounds nuw i8, ptr %i.nq, i64 36
  %i.qk = getelementptr inbounds nuw i8, ptr %i.nq, i64 40
  %.pre.i121 = load float, ptr %i.np, align 16, !tbaa !52
  %.pre258.i = load float, ptr %i.pw, align 4, !tbaa !52
  %.pre259.i = load float, ptr %i.px, align 8, !tbaa !52
  %.pre200 = load float, ptr %i.no, align 16, !tbaa !52
  %.pre201 = load float, ptr %i.pu, align 4, !tbaa !52
  %.pre202 = load float, ptr %i.pv, align 8, !tbaa !52
  %i.ql = insertelement <2 x float> poison, float %i.er, i64 0
  %i.qm = shufflevector <2 x float> %i.ql, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qn = insertelement <2 x float> poison, float %i.ek, i64 0
  %i.qo = shufflevector <2 x float> %i.qn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qp = insertelement <4 x float> %i.pp, float %i.pe, i64 3
  %i.qq = extractelement <4 x float> %i.pp, i64 3
  %i.qr = shufflevector <4 x float> %i.qp, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3>
  br label %bb.af

bb.ae:                                            ; preds = %bb.af
  %i.qs = load float, ptr %i.bc, align 16, !tbaa !52
  %i.qt = load float, ptr %i.ov, align 4, !tbaa !52
  %i.qu = load float, ptr %i.pj, align 8, !tbaa !52
  %i.qv = load float, ptr %i.pa, align 8, !tbaa !52
  %i.qw = load float, ptr %i.ow, align 8, !tbaa !52
  %i.qx = load <2 x float>, ptr %i.be, align 16, !tbaa !52 ; 2 uses
  %i.qy = load <2 x float>, ptr %i.nu, align 16, !tbaa !52 ; 2 uses
  %i.qz = shufflevector <2 x float> %i.qx, <2 x float> %i.qy, <2 x i32> <i32 0, i32 2>
  %i.ra = insertelement <2 x float> poison, float %i.qs, i64 0
  %i.rb = shufflevector <2 x float> %i.ra, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rc = fsub <2 x float> %i.qz, %i.rb           ; 3 uses
  %i.rd = shufflevector <2 x float> %i.qx, <2 x float> %i.qy, <2 x i32> <i32 1, i32 3>
  %i.re = insertelement <2 x float> poison, float %i.qt, i64 0
  %i.rf = shufflevector <2 x float> %i.re, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rg = fsub <2 x float> %i.rd, %i.rf           ; 3 uses
  %i.rh = insertelement <2 x float> poison, float %i.qu, i64 0
  %i.ri = insertelement <2 x float> %i.rh, float %i.qw, i64 1
  %i.rj = insertelement <2 x float> poison, float %i.qv, i64 0
  %i.rk = shufflevector <2 x float> %i.rj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rl = fsub <2 x float> %i.ri, %i.rk           ; 3 uses
  %i.rm = fmul <2 x float> %i.rg, %i.rg
  %i.rn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.rc, <2 x float> %i.rc, <2 x float> %i.rm)
  %i.ro = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.rl, <2 x float> %i.rl, <2 x float> %i.rn)
  %i.rp = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.ro)
  %i.rq = fdiv <2 x float> splat (float 1.000000e+00), %i.rp ; 2 uses
  %i.rr = fmul <2 x float> %i.rg, %i.rq           ; 2 uses
  %i.rs = shufflevector <2 x float> %i.rc, <2 x float> %i.rl, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.rt = shufflevector <2 x float> %i.rq, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ru = fmul <4 x float> %i.rs, %i.rt           ; 4 uses
  %shift278 = shufflevector <2 x float> %i.rr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop279 = fmul <2 x float> %i.rr, %shift278
  %i.rv = extractelement <2 x float> %foldExtExtBinop279, i64 0
  %i.rw = extractelement <4 x float> %i.ru, i64 0
  %i.rx = extractelement <4 x float> %i.ru, i64 2
  %i.ry = tail call float @llvm.fmuladd.f32(float %i.rw, float %i.rx, float %i.rv)
  %i.rz = extractelement <4 x float> %i.ru, i64 1
  %i.sa = extractelement <4 x float> %i.ru, i64 3
  %i.sb = tail call noundef float @llvm.fmuladd.f32(float %i.rz, float %i.sa, float %i.ry)
  %i.sc = fcmp ogt float %i.sb, f0x3F733333
  %i.sd = fcmp oeq float %i.ek, 0.000000e+00
  %or.cond.i = or i1 %i.sd, %i.sc
  %i.se = fcmp oeq float %i.er, 0.000000e+00
  %or.cond3.i = or i1 %i.se, %or.cond.i
  br i1 %or.cond3.i, label %bb.ag, label %bb.ah

bb.af:                                            ; preds = %bb.af, %_Z13b3PlaneSpace1I9b3Vector3EvRKT_RS1_S4_.exit.i
  %i.sf = phi float [ %.pre202, %_Z13b3PlaneSpace1I9b3Vector3EvRKT_RS1_S4_.exit.i ], [ %i.xq, %bb.af ]
  %i.sg = phi float [ %.pre201, %_Z13b3PlaneSpace1I9b3Vector3EvRKT_RS1_S4_.exit.i ], [ %i.xw, %bb.af ]
  %i.sh = phi float [ %.pre200, %_Z13b3PlaneSpace1I9b3Vector3EvRKT_RS1_S4_.exit.i ], [ %i.xv, %bb.af ]
  %i.si = phi float [ %.pre259.i, %_Z13b3PlaneSpace1I9b3Vector3EvRKT_RS1_S4_.exit.i ], [ %i.xu, %bb.af ]
  %i.sj = phi float [ %.pre258.i, %_Z13b3PlaneSpace1I9b3Vector3EvRKT_RS1_S4_.exit.i ], [ %i.xy, %bb.af ]
  %i.sk = phi float [ %.pre.i121, %_Z13b3PlaneSpace1I9b3Vector3EvRKT_RS1_S4_.exit.i ], [ %i.xx, %bb.af ]
  %i.sl = phi i1 [ true, %_Z13b3PlaneSpace1I9b3Vector3EvRKT_RS1_S4_.exit.i ], [ false, %bb.af ]
  %indvars.iv.i122.sroa.phi156 = phi ptr [ %2, %_Z13b3PlaneSpace1I9b3Vector3EvRKT_RS1_S4_.exit.i ], [ %indvars.iv.i122.sroa.gep158, %bb.af ] ; 2 uses
  %indvars.iv.i122 = phi i64 [ 0, %_Z13b3PlaneSpace1I9b3Vector3EvRKT_RS1_S4_.exit.i ], [ 1, %bb.af ] ; 2 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %indvars.iv.i122.sroa.phi156, i64 8
  %i.sn = load float, ptr %i.sm, align 8, !tbaa !52 ; 5 uses
  %i.so = fneg float %i.sn                        ; 2 uses
  %i.sp = load float, ptr %i.pr, align 8, !tbaa !52
  %i.sq = load float, ptr %i.pt, align 8, !tbaa !52
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr %i.nr, i64 %indvars.iv.i122
  %i.ss = load float, ptr %i.sr, align 4, !tbaa !101
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %i.py, i64 %indvars.iv.i122 ; 2 uses
  %i.su = load float, ptr %i.st, align 4, !tbaa !101 ; 2 uses
  %i.sv = fmul float %i.ek, %i.so
  %i.sw = fmul float %i.er, %i.sn
  %i.sx = load <2 x float>, ptr %indvars.iv.i122.sroa.phi156, align 16, !tbaa !52 ; 6 uses
  %i.sy = extractelement <2 x float> %i.sx, i64 1
  %i.sz = fmul <2 x float> %i.qm, %i.sx
  %i.ta = fneg <2 x float> %i.sx                  ; 5 uses
  %i.tb = extractelement <2 x float> %i.ta, i64 1 ; 2 uses
  %i.tc = extractelement <2 x float> %i.ta, i64 0
  %i.td = shufflevector <2 x float> %i.ta, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.te = insertelement <4 x float> poison, float %i.so, i64 0 ; 2 uses
  %i.tf = shufflevector <4 x float> %i.te, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.tg = shufflevector <4 x float> %i.td, <4 x float> %i.tf, <4 x i32> <i32 1, i32 2, i32 4, i32 7>
  %i.th = fmul <4 x float> %i.qr, %i.tg
  %i.ti = shufflevector <2 x float> %i.sx, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 0>
  %i.tj = insertelement <4 x float> %i.ti, float %i.sn, i64 1
  %i.tk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.pp, <4 x float> %i.tj, <4 x float> %i.th) ; 5 uses
  %i.tl = extractelement <4 x float> %i.tk, i64 2
  %i.tm = fneg float %i.tl                        ; 2 uses
  %i.tn = shufflevector <4 x float> %i.tk, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %29 = extractelement <4 x float> %i.tk, i64 1
  %30 = fneg float %29                            ; 3 uses
  %i.to = extractelement <4 x float> %i.tk, i64 0
  %i.tp = fneg float %i.to                        ; 3 uses
  %i.tq = fmul float %i.qq, %i.tb
  %31 = tail call float @llvm.fmuladd.f32(float %i.pi, float %i.sn, float %i.tq) ; 3 uses
  %i.tr = fmul float %i.pi, %i.tc
  %i.ts = tail call float @llvm.fmuladd.f32(float %i.pe, float %i.sy, float %i.tr) ; 3 uses
  %i.tt = load <2 x float>, ptr %i.ni, align 16, !tbaa !52
  %i.tu = load float, ptr %i.pq, align 4, !tbaa !52
  %i.tv = load <2 x float>, ptr %i.nj, align 16, !tbaa !52
  %i.tw = load float, ptr %i.ps, align 4, !tbaa !52
  %i.tx = extractelement <4 x float> %i.tk, i64 3 ; 2 uses
  %i.ty = fmul float %i.sj, %i.tx
  %i.tz = insertelement <2 x float> %i.sx, float %i.tw, i64 0
  %i.ua = insertelement <2 x float> poison, float %i.tm, i64 0 ; 2 uses
  %i.ub = insertelement <2 x float> %i.ua, float %i.sg, i64 1
  %i.uc = fmul <2 x float> %i.tz, %i.ub
  %i.ud = fmul float %i.tu, %i.tb
  %i.ue = shufflevector <2 x float> %i.ta, <2 x float> %i.sx, <4 x i32> <i32 0, i32 poison, i32 2, i32 poison>
  %i.uf = insertelement <4 x float> %i.ue, float %30, i64 1
  %i.ug = insertelement <4 x float> %i.uf, float %31, i64 3
  %i.uh = shufflevector <2 x float> %i.tt, <2 x float> %i.tv, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.ui = insertelement <4 x float> %i.uh, float %i.sh, i64 2
  %i.uj = insertelement <4 x float> %i.ui, float %i.sk, i64 3
  %i.uk = insertelement <4 x float> poison, float %i.ud, i64 0
  %i.ul = shufflevector <2 x float> %i.uc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.um = shufflevector <4 x float> %i.uk, <4 x float> %i.ul, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.un = insertelement <4 x float> %i.um, float %i.ty, i64 3
  %i.uo = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ug, <4 x float> %i.uj, <4 x float> %i.un)
  %i.up = insertelement <4 x float> %i.te, float %i.tp, i64 1
  %i.uq = insertelement <4 x float> %i.up, float %i.sn, i64 2
  %i.ur = insertelement <4 x float> %i.uq, float %i.ts, i64 3
  %i.us = insertelement <4 x float> poison, float %i.sp, i64 0
  %i.ut = insertelement <4 x float> %i.us, float %i.sq, i64 1
  %i.uu = insertelement <4 x float> %i.ut, float %i.sf, i64 2
  %i.uv = insertelement <4 x float> %i.uu, float %i.si, i64 3
  %i.uw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ur, <4 x float> %i.uv, <4 x float> %i.uo) ; 4 uses
  %shift281 = shufflevector <4 x float> %i.uw, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop282 = fadd <4 x float> %i.uw, %shift281
  %shift284 = shufflevector <4 x float> %i.uw, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop285 = fadd <4 x float> %foldExtExtBinop282, %shift284
  %shift287 = shufflevector <4 x float> %i.uw, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop288 = fadd <4 x float> %shift287, %foldExtExtBinop285
  %i.ux = extractelement <4 x float> %foldExtExtBinop288, i64 0
  %i.uy = fmul float %i.ss, %i.ux
  %i.uz = fadd float %i.su, %i.uy                 ; 2 uses
  %i.va = fcmp ogt float %i.uz, %i.nh
  %.sroa.speculated162.i = select i1 %i.va, float %i.uz, float %i.nh ; 2 uses
  %i.vb = fcmp olt float %.sroa.speculated162.i, %i.ng
  %.sroa.speculated.i123 = select i1 %i.vb, float %.sroa.speculated162.i, float %i.ng ; 2 uses
  %i.vc = fsub float %.sroa.speculated.i123, %i.su ; 5 uses
  store float %.sroa.speculated.i123, ptr %i.st, align 4, !tbaa !101
  %i.vd = fmul <2 x float> %i.qo, %i.ta
  %i.ve = insertelement <2 x float> poison, float %i.vc, i64 0
  %i.vf = shufflevector <2 x float> %i.ve, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.vg = fmul <2 x float> %i.vd, %i.vf
  %i.vh = fmul float %i.sv, %i.vc
  %i.vi = fmul <2 x float> %i.sz, %i.vf
  %i.vj = fmul float %i.sw, %i.vc
  %i.vk = load float, ptr %i.pz, align 8, !tbaa !52
  %i.vl = load float, ptr %i.qb, align 8, !tbaa !52
  %i.vm = load float, ptr %i.qc, align 16, !tbaa !52
  %i.vn = load float, ptr %i.qd, align 4, !tbaa !52
  %i.vo = fmul float %i.vn, %i.tm
  %i.vp = tail call float @llvm.fmuladd.f32(float %i.vm, float %30, float %i.vo)
  %i.vq = load float, ptr %i.qe, align 8, !tbaa !52
  %i.vr = tail call noundef float @llvm.fmuladd.f32(float %i.vq, float %i.tp, float %i.vp)
  %i.vs = fmul float %i.vc, %i.vr
  %i.vt = load float, ptr %i.qf, align 8, !tbaa !52
  %i.vu = load float, ptr %i.qh, align 8, !tbaa !52
  %i.vv = load float, ptr %i.qi, align 16, !tbaa !52
  %i.vw = load float, ptr %i.qj, align 4, !tbaa !52
  %i.vx = fmul float %i.tx, %i.vw
  %i.vy = tail call float @llvm.fmuladd.f32(float %i.vv, float %31, float %i.vx)
  %i.vz = load float, ptr %i.qk, align 8, !tbaa !52
  %i.wa = tail call noundef float @llvm.fmuladd.f32(float %i.vz, float %i.ts, float %i.vy)
  %i.wb = fmul float %i.vc, %i.wa
  %i.wc = load <2 x float>, ptr %i.ni, align 16, !tbaa !52
  %i.wd = fadd <2 x float> %i.vg, %i.wc
  %i.we = load float, ptr %i.pr, align 8, !tbaa !52
  %i.wf = fadd float %i.vh, %i.we
  %i.wg = load float, ptr %i.pt, align 8, !tbaa !52
  %i.wh = fadd float %i.vs, %i.wg
  %i.wi = load <2 x float>, ptr %i.nq, align 16, !tbaa !52 ; 2 uses
  %i.wj = load <2 x float>, ptr %i.qg, align 16, !tbaa !52 ; 2 uses
  %i.wk = shufflevector <2 x float> %i.wi, <2 x float> %i.wj, <2 x i32> <i32 1, i32 3>
  %i.wl = fmul <2 x float> %i.tn, %i.wk
  %i.wm = shufflevector <2 x float> %i.wi, <2 x float> %i.wj, <2 x i32> <i32 0, i32 2>
  %i.wn = insertelement <2 x float> poison, float %31, i64 0
  %i.wo = shufflevector <2 x float> %i.wn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wm, <2 x float> %i.wo, <2 x float> %i.wl)
  %i.wq = insertelement <2 x float> poison, float %i.vt, i64 0
  %i.wr = insertelement <2 x float> %i.wq, float %i.vu, i64 1
  %i.ws = insertelement <2 x float> poison, float %i.ts, i64 0
  %i.wt = shufflevector <2 x float> %i.ws, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wr, <2 x float> %i.wt, <2 x float> %i.wp)
  %i.wv = fmul <2 x float> %i.vf, %i.wu
  %i.ww = load <2 x float>, ptr %i.nn, align 16, !tbaa !52 ; 2 uses
  %i.wx = load <2 x float>, ptr %i.qa, align 16, !tbaa !52 ; 2 uses
  %i.wy = shufflevector <2 x float> %i.ww, <2 x float> %i.wx, <2 x i32> <i32 1, i32 3>
  %i.wz = shufflevector <2 x float> %i.ua, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xa = fmul <2 x float> %i.wy, %i.wz
  %i.xb = shufflevector <2 x float> %i.ww, <2 x float> %i.wx, <2 x i32> <i32 0, i32 2>
  %i.xc = insertelement <2 x float> poison, float %30, i64 0
  %i.xd = shufflevector <2 x float> %i.xc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xe = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xb, <2 x float> %i.xd, <2 x float> %i.xa)
  %i.xf = insertelement <2 x float> poison, float %i.vk, i64 0
  %i.xg = insertelement <2 x float> %i.xf, float %i.vl, i64 1
  %i.xh = insertelement <2 x float> poison, float %i.tp, i64 0
  %i.xi = shufflevector <2 x float> %i.xh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xg, <2 x float> %i.xi, <2 x float> %i.xe)
  %i.xk = fmul <2 x float> %i.xj, %i.vf
  %i.xl = load <2 x float>, ptr %i.nj, align 16, !tbaa !52
  %i.xm = fadd <2 x float> %i.xk, %i.xl
  store <2 x float> %i.wd, ptr %i.ni, align 16, !tbaa !52
  store float %i.wf, ptr %i.pr, align 8, !tbaa !52
  store <2 x float> %i.xm, ptr %i.nj, align 16, !tbaa !52
  store float %i.wh, ptr %i.pt, align 8, !tbaa !52
  %i.xn = load <2 x float>, ptr %i.no, align 16, !tbaa !52
  %i.xo = fadd <2 x float> %i.vi, %i.xn           ; 3 uses
  store <2 x float> %i.xo, ptr %i.no, align 16, !tbaa !52
  %i.xp = load float, ptr %i.pv, align 8, !tbaa !52
  %i.xq = fadd float %i.vj, %i.xp                 ; 2 uses
  store float %i.xq, ptr %i.pv, align 8, !tbaa !52
  %i.xr = load <2 x float>, ptr %i.np, align 16, !tbaa !52
  %i.xs = fadd <2 x float> %i.wv, %i.xr           ; 3 uses
  store <2 x float> %i.xs, ptr %i.np, align 16, !tbaa !52
  %i.xt = load float, ptr %i.px, align 8, !tbaa !52
  %i.xu = fadd float %i.wb, %i.xt                 ; 3 uses
  store float %i.xu, ptr %i.px, align 8, !tbaa !52
  %i.xv = extractelement <2 x float> %i.xo, i64 0
  %i.xw = extractelement <2 x float> %i.xo, i64 1
  %i.xx = extractelement <2 x float> %i.xs, i64 0 ; 2 uses
  %i.xy = extractelement <2 x float> %i.xs, i64 1 ; 2 uses
  br i1 %i.sl, label %bb.af, label %bb.ae, !llvm.loop !103

bb.ag:                                            ; preds = %bb.ae
  %i.xz = load float, ptr %i.pt, align 8, !tbaa !52 ; 2 uses
  %i.ya = fmul float %i.xy, %i.nz
  %i.yb = tail call float @llvm.fmuladd.f32(float %i.nx, float %i.xx, float %i.ya)
  %i.yc = tail call noundef float @llvm.fmuladd.f32(float %i.oc, float %i.xu, float %i.yb)
  %i.yd = load <2 x float>, ptr %i.nj, align 16, !tbaa !52 ; 3 uses
  %i.ye = extractelement <2 x float> %i.yd, i64 1
  %i.yf = fmul float %i.ye, %i.nz
  %i.yg = extractelement <2 x float> %i.yd, i64 0
  %i.yh = tail call float @llvm.fmuladd.f32(float %i.nx, float %i.yg, float %i.yf)
  %i.yi = tail call noundef float @llvm.fmuladd.f32(float %i.oc, float %i.xz, float %i.yh)
  %i.yj = fmul float %i.yi, 1.000000e-01          ; 2 uses
  %i.yk = insertelement <2 x float> poison, float %i.yj, i64 0
  %i.yl = shufflevector <2 x float> %i.yk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ym = fmul <2 x float> %i.nv, %i.yl
  %i.yn = fadd <2 x float> %i.yd, %i.ym
  store <2 x float> %i.yn, ptr %i.nj, align 16, !tbaa !52
  %i.yo = fmul float %i.ob, %i.yj
  %i.yp = fadd float %i.xz, %i.yo
  store float %i.yp, ptr %i.pt, align 8, !tbaa !52
  %i.yq = fmul float %i.yc, 1.000000e-01          ; 2 uses
  %i.yr = load <2 x float>, ptr %i.np, align 16, !tbaa !52
  %i.ys = insertelement <2 x float> poison, float %i.yq, i64 0
  %i.yt = shufflevector <2 x float> %i.ys, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yu = fmul <2 x float> %i.nv, %i.yt
  %i.yv = fadd <2 x float> %i.yu, %i.yr
  store <2 x float> %i.yv, ptr %i.np, align 16, !tbaa !52
  %i.yw = load float, ptr %i.px, align 8, !tbaa !52
  %i.yx = fmul float %i.ob, %i.yq
  %i.yy = fadd float %i.yx, %i.yw
  store float %i.yy, ptr %i.px, align 8, !tbaa !52
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %_ZL15b3SolveFrictionR20b3ContactConstraint4RK9b3Vector3RS1_S4_fRK11b3Matrix3x3S3_S4_S4_fS7_PfS8_.exit

_ZL15b3SolveFrictionR20b3ContactConstraint4RK9b3Vector3RS1_S4_fRK11b3Matrix3x3S3_S4_S4_fS7_PfS8_.exit: ; preds = %.preheader, %bb.ah, %_ZL14b3SolveContactR20b3ContactConstraint4RK9b3Vector3RS1_S4_fRK11b3Matrix3x3S3_S4_S4_fS7_PfS8_.exit, %.lr.ph
  %i.yz = icmp sgt i32 %.064173.in, 1
  br i1 %i.yz, label %.lr.ph, label %._crit_edge, !llvm.loop !104

bb.ai:                                            ; preds = %._crit_edge
  %i.za = load i32, ptr %i.s, align 8, !tbaa !105
  %i.zb = sext i32 %i.za to i64
  %i.zc = getelementptr inbounds [32 x i8], ptr %i.aj, i64 %i.zb ; 7 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zc, i64 4 ; 4 uses
  %i.ze = load i32, ptr %i.zd, align 4, !tbaa !77 ; 2 uses
  %i.zf = load i32, ptr %i.d, align 4, !tbaa !77  ; 11 uses
  %i.zg = icmp slt i32 %i.ze, %i.zf
  br i1 %i.zg, label %bb.aj, label %bb.ao

bb.aj:                                            ; preds = %bb.ai
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zc, i64 8 ; 2 uses
  %i.zi = load i32, ptr %i.zh, align 8, !tbaa !78
  %i.zj = icmp slt i32 %i.zi, %i.zf
  br i1 %i.zj, label %bb.ak, label %..lr.ph.i124_crit_edge

..lr.ph.i124_crit_edge:                           ; preds = %bb.aj
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.zc, i64 16
  %.pre203 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !76
  br label %.lr.ph.i124

bb.ak:                                            ; preds = %bb.aj
  %.not.i.i.i130 = icmp eq i32 %i.zf, 0
  br i1 %.not.i.i.i130, label %.split7.i.i143, label %_ZN20b3AlignedObjectArrayIiE8allocateEi.exit.i.i131

_ZN20b3AlignedObjectArrayIiE8allocateEi.exit.i.i131: ; preds = %bb.ak
  %i.zk = sext i32 %i.zf to i64
  %i.zl = shl nsw i64 %i.zk, 2
  %i.zm = invoke noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.zl, i32 noundef 16)
          to label %.noexc144 unwind label %bb.an ; 12 uses

.noexc144:                                        ; preds = %_ZN20b3AlignedObjectArrayIiE8allocateEi.exit.i.i131
  %i.zn = ptrtoaddr ptr %i.zm to i64
  %i.zo = icmp eq ptr %i.zm, null
  br i1 %i.zo, label %.split7.i.i143, label %.split.i.i132

.split.i.i132:                                    ; preds = %.noexc144
  %i.zp = load i32, ptr %i.zd, align 4, !tbaa !77 ; 3 uses
  %i.zq = icmp sgt i32 %i.zp, 0
  br i1 %i.zq, label %.lr.ph.i.i.i138, label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i133

.lr.ph.i.i.i138:                                  ; preds = %.split.i.i132
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zc, i64 16
  %i.zs = load ptr, ptr %i.zr, align 8, !tbaa !76 ; 7 uses
  %wide.trip.count.i.i.i139 = zext nneg i32 %i.zp to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.zp, 8
  %i.zt = ptrtoaddr ptr %i.zs to i64
  %i.zu = sub i64 %i.zt, %i.zn
  %diff.check = icmp ugt i64 %i.zu, -32
  %or.cond270 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond270, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i138
  %n.vec = and i64 %wide.trip.count.i.i.i139, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.zv = getelementptr inbounds nuw [4 x i8], ptr %i.zm, i64 %index ; 2 uses
  %i.zw = getelementptr inbounds nuw [4 x i8], ptr %i.zs, i64 %index ; 2 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zw, i64 16
  %wide.load = load <4 x i32>, ptr %i.zw, align 4, !tbaa !44
  %wide.load236 = load <4 x i32>, ptr %i.zx, align 4, !tbaa !44
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zv, i64 16
  store <4 x i32> %wide.load, ptr %i.zv, align 4, !tbaa !44
  store <4 x i32> %wide.load236, ptr %i.zy, align 4, !tbaa !44
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.zz = icmp eq i64 %index.next, %n.vec
  br i1 %i.zz, label %middle.block, label %vector.body, !llvm.loop !106

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i139
  br i1 %cmp.n, label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i133, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i138, %middle.block
  %indvars.iv.i.i.i140.ph = phi i64 [ 0, %.lr.ph.i.i.i138 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter295 = and i64 %wide.trip.count.i.i.i139, 3 ; 2 uses
  %lcmp.mod296.not = icmp eq i64 %xtraiter295, 0
  br i1 %lcmp.mod296.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i140.prol = phi i64 [ %indvars.iv.next.i.i.i141.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i140.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter297 = phi i64 [ %prol.iter297.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.aaa = getelementptr inbounds nuw [4 x i8], ptr %i.zm, i64 %indvars.iv.i.i.i140.prol
  %i.aab = getelementptr inbounds nuw [4 x i8], ptr %i.zs, i64 %indvars.iv.i.i.i140.prol
  %i.aac = load i32, ptr %i.aab, align 4, !tbaa !44
  store i32 %i.aac, ptr %i.aaa, align 4, !tbaa !44
  %indvars.iv.next.i.i.i141.prol = add nuw nsw i64 %indvars.iv.i.i.i140.prol, 1 ; 2 uses
  %prol.iter297.next = add i64 %prol.iter297, 1   ; 2 uses
  %prol.iter297.cmp.not = icmp eq i64 %prol.iter297.next, %xtraiter295
  br i1 %prol.iter297.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !107

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i140.unr = phi i64 [ %indvars.iv.i.i.i140.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i141.prol, %scalar.ph.prol ]
  %i.aad = sub nsw i64 %indvars.iv.i.i.i140.ph, %wide.trip.count.i.i.i139
  %i.aae = icmp ugt i64 %i.aad, -4
  br i1 %i.aae, label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i133, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i140 = phi i64 [ %indvars.iv.next.i.i.i141.3, %scalar.ph ], [ %indvars.iv.i.i.i140.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.aaf = getelementptr inbounds nuw [4 x i8], ptr %i.zm, i64 %indvars.iv.i.i.i140
  %i.aag = getelementptr inbounds nuw [4 x i8], ptr %i.zs, i64 %indvars.iv.i.i.i140
  %i.aah = load i32, ptr %i.aag, align 4, !tbaa !44
  store i32 %i.aah, ptr %i.aaf, align 4, !tbaa !44
  %indvars.iv.next.i.i.i141 = add nuw nsw i64 %indvars.iv.i.i.i140, 1 ; 2 uses
  %i.aai = getelementptr inbounds nuw [4 x i8], ptr %i.zm, i64 %indvars.iv.next.i.i.i141
  %i.aaj = getelementptr inbounds nuw [4 x i8], ptr %i.zs, i64 %indvars.iv.next.i.i.i141
  %i.aak = load i32, ptr %i.aaj, align 4, !tbaa !44
  store i32 %i.aak, ptr %i.aai, align 4, !tbaa !44
  %indvars.iv.next.i.i.i141.1 = add nuw nsw i64 %indvars.iv.i.i.i140, 2 ; 2 uses
  %i.aal = getelementptr inbounds nuw [4 x i8], ptr %i.zm, i64 %indvars.iv.next.i.i.i141.1
  %i.aam = getelementptr inbounds nuw [4 x i8], ptr %i.zs, i64 %indvars.iv.next.i.i.i141.1
  %i.aan = load i32, ptr %i.aam, align 4, !tbaa !44
  store i32 %i.aan, ptr %i.aal, align 4, !tbaa !44
  %indvars.iv.next.i.i.i141.2 = add nuw nsw i64 %indvars.iv.i.i.i140, 3 ; 2 uses
  %i.aao = getelementptr inbounds nuw [4 x i8], ptr %i.zm, i64 %indvars.iv.next.i.i.i141.2
  %i.aap = getelementptr inbounds nuw [4 x i8], ptr %i.zs, i64 %indvars.iv.next.i.i.i141.2
  %i.aaq = load i32, ptr %i.aap, align 4, !tbaa !44
  store i32 %i.aaq, ptr %i.aao, align 4, !tbaa !44
  %indvars.iv.next.i.i.i141.3 = add nuw nsw i64 %indvars.iv.i.i.i140, 4 ; 2 uses
  %exitcond.not.i.i.i142.3 = icmp eq i64 %indvars.iv.next.i.i.i141.3, %wide.trip.count.i.i.i139
  br i1 %exitcond.not.i.i.i142.3, label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i133, label %scalar.ph, !llvm.loop !108

.split7.i.i143:                                   ; preds = %.noexc144, %bb.ak
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5, i32 noundef 301)
          to label %.noexc145 unwind label %bb.an

end_hunk_0
