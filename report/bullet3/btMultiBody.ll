inline.NumInlined: 2252
inline.NumDeleted: 260
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_ZNK11btMultiBody30calcAccelerationDeltasMultiDofEPKfPfR20btAlignedObjectArrayIfERS3_I9btVector3E:bb.a
  %i.acf = fmul float %i.abr, %i.abw
  %i.acg = tail call float @llvm.fmuladd.f32(float %i.abq, float %i.abu, float %i.acf)
  %i.ach = tail call noundef float @llvm.fmuladd.f32(float %i.abs, float %i.aca, float %i.acg)
  %i.aci = getelementptr inbounds nuw i8, ptr %2, i64 12
  store float %i.acb, ptr %i.aci, align 4, !tbaa !9
  %i.acj = getelementptr inbounds nuw i8, ptr %2, i64 16
  store float %i.ace, ptr %i.acj, align 4, !tbaa !9
  %i.ack = getelementptr inbounds nuw i8, ptr %2, i64 20
  store float %i.ach, ptr %i.ack, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %._crit_edge414.rtcont

._crit_edge414.rtcont:                            ; preds = %._crit_edge414.rtscalar, %._crit_edge414.rtvec
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11btMultiBody24predictPositionsMultiDofEf(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(640) %0, float noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.b = load i32, ptr %i.a, align 4, !tbaa !39   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !130  ; 3 uses
  %.not.i = icmp eq ptr %i.d, null                ; 2 uses
  br i1 %.not.i, label %_ZNK11btMultiBody15isBaseKinematicEv.exit.thread, label %_ZNK11btMultiBody15isBaseKinematicEv.exit

_ZNK11btMultiBody15isBaseKinematicEv.exit:        ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  %i.f = load i32, ptr %i.e, align 8, !tbaa !131  ; 2 uses
  %i.g = and i32 %i.f, 2
  %.not161 = icmp eq i32 %i.g, 0
  br i1 %.not161, label %_ZNK11btMultiBody15isBaseKinematicEv.exit.thread, label %.split

_ZNK11btMultiBody15isBaseKinematicEv.exit.thread: ; preds = %bb.a, %_ZNK11btMultiBody15isBaseKinematicEv.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !42   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.l = load <2 x float>, ptr %i.j, align 8, !tbaa !9 ; 3 uses
  store <2 x float> %i.l, ptr %i.k, align 8, !tbaa !9
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load float, ptr %i.m, align 8, !tbaa !9  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  store float %i.n, ptr %i.o, align 8, !tbaa !9
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.q = load float, ptr %i.p, align 4, !tbaa !9
  %i.r = extractelement <2 x float> %i.l, i64 0
  %i.s = tail call float @llvm.fmuladd.f32(float %1, float %i.q, float %i.r)
  store float %i.s, ptr %i.k, align 8, !tbaa !9
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.u = load float, ptr %i.t, align 4, !tbaa !9
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.w = extractelement <2 x float> %i.l, i64 1
  %i.x = tail call float @llvm.fmuladd.f32(float %1, float %i.u, float %i.w)
  store float %i.x, ptr %i.v, align 4, !tbaa !9
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  %i.z = load float, ptr %i.y, align 4, !tbaa !9
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ab = tail call float @llvm.fmuladd.f32(float %1, float %i.z, float %i.n)
  store float %i.ab, ptr %i.aa, align 8, !tbaa !9
  br i1 %.not.i, label %_ZNK11btMultiBody15isBaseKinematicEv.exit105.preheader, label %_ZNK11btMultiBody15isBaseKinematicEv.exit.thread..split_crit_edge

_ZNK11btMultiBody15isBaseKinematicEv.exit.thread..split_crit_edge: ; preds = %_ZNK11btMultiBody15isBaseKinematicEv.exit.thread
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !131
  br label %.split

.split:                                           ; preds = %_ZNK11btMultiBody15isBaseKinematicEv.exit.thread..split_crit_edge, %_ZNK11btMultiBody15isBaseKinematicEv.exit
  %i.ac = phi i32 [ %.pre, %_ZNK11btMultiBody15isBaseKinematicEv.exit.thread..split_crit_edge ], [ %i.f, %_ZNK11btMultiBody15isBaseKinematicEv.exit ]
  %i.ad = and i32 %i.ac, 2
  %.not162 = icmp eq i32 %i.ad, 0
  br i1 %.not162, label %.split._ZNK11btMultiBody15isBaseKinematicEv.exit105.preheader_crit_edge, label %bb.d

.split._ZNK11btMultiBody15isBaseKinematicEv.exit105.preheader_crit_edge: ; preds = %.split
  %.phi.trans.insert183 = getelementptr inbounds nuw i8, ptr %0, i64 288
  %.pre184 = load ptr, ptr %.phi.trans.insert183, align 8, !tbaa !42
  br label %_ZNK11btMultiBody15isBaseKinematicEv.exit105.preheader

_ZNK11btMultiBody15isBaseKinematicEv.exit105.preheader: ; preds = %.split._ZNK11btMultiBody15isBaseKinematicEv.exit105.preheader_crit_edge, %_ZNK11btMultiBody15isBaseKinematicEv.exit.thread
  %i.ae = phi ptr [ %.pre184, %.split._ZNK11btMultiBody15isBaseKinematicEv.exit105.preheader_crit_edge ], [ %i.i, %_ZNK11btMultiBody15isBaseKinematicEv.exit.thread ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !9 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 84
  store float %i.aj, ptr %i.ak, align 4, !tbaa !9
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.am = load <3 x float>, ptr %i.af, align 8, !tbaa !9 ; 4 uses
  %i.an = shufflevector <3 x float> %i.am, <3 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 2>
  %i.ao = load float, ptr %i.af, align 8, !tbaa !9
  store float %i.ao, ptr %i.ag, align 8, !tbaa !9
  %i.ap = shufflevector <3 x float> %i.am, <3 x float> poison, <2 x i32> <i32 1, i32 2>
  store <2 x float> %i.ap, ptr %i.ah, align 4, !tbaa !9
  %i.aq = load float, ptr %i.ae, align 4, !tbaa !9 ; 4 uses
  %i.ar = load <2 x float>, ptr %i.al, align 4, !tbaa !9 ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.ar, %i.ar
  %i.as = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.at = tail call float @llvm.fmuladd.f32(float %i.aq, float %i.aq, float %i.as)
  %i.au = extractelement <2 x float> %i.ar, i64 1 ; 2 uses
  %i.av = tail call noundef float @llvm.fmuladd.f32(float %i.au, float %i.au, float %i.at)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.av) ; 2 uses
  %i.aw = fmul float %1, %sqrt.i.i
  %i.ax = fcmp ogt float %i.aw, f0x3F490FDB
  %i.ay = fdiv float f0x3F490FDB, %1
  %.0.i = select i1 %i.ax, float %i.ay, float %sqrt.i.i ; 6 uses
  %i.az = fcmp olt float %.0.i, 1.000000e-03
  br i1 %i.az, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNK11btMultiBody15isBaseKinematicEv.exit105.preheader
  %i.ba = fmul float %1, %1
  %i.bb = fmul float %1, %i.ba
  %i.bc = fmul float %i.bb, f0x3CAAAAAB
  %i.bd = fmul float %i.bc, %.0.i
  %i.be = fneg float %.0.i
  %i.bf = fmul float %i.bd, %i.be
  %i.bg = tail call float @llvm.fmuladd.f32(float %1, float 5.000000e-01, float %i.bf)
  br label %"_ZZN11btMultiBody24predictPositionsMultiDofEfEN3$_0clERK9btVector3R12btQuaternionbf.exit"

bb.c:                                             ; preds = %_ZNK11btMultiBody15isBaseKinematicEv.exit105.preheader
  %i.bh = fmul float %.0.i, 5.000000e-01
  %i.bi = fmul float %1, %i.bh
  %i.bj = tail call noundef float @sinf(float noundef %i.bi) #26
  %i.bk = fdiv float %i.bj, %.0.i
  br label %"_ZZN11btMultiBody24predictPositionsMultiDofEfEN3$_0clERK9btVector3R12btQuaternionbf.exit"

"_ZZN11btMultiBody24predictPositionsMultiDofEfEN3$_0clERK9btVector3R12btQuaternionbf.exit": ; preds = %bb.b, %bb.c
  %.sink39.i = phi float [ %i.bk, %bb.c ], [ %i.bg, %bb.b ] ; 2 uses
  %i.bl = shufflevector <2 x float> %i.ar, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bm = insertelement <4 x float> %i.bl, float %i.aq, i64 2
  %i.bn = shufflevector <4 x float> %i.bm, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.bo = insertelement <4 x float> poison, float %.sink39.i, i64 0
  %i.bp = shufflevector <4 x float> %i.bo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bq = fmul <4 x float> %i.bn, %i.bp           ; 4 uses
  %i.br = extractelement <4 x float> %i.bq, i64 0
  %i.bs = fneg float %i.br                        ; 2 uses
  %i.bt = fmul float %1, %.0.i
  %i.bu = fmul float %i.bt, 5.000000e-01
  %i.bv = tail call noundef float @cosf(float noundef %i.bu) #26
  %i.bw = insertelement <2 x float> poison, float %i.aq, i64 0
  %i.bx = insertelement <2 x float> %i.bw, float %i.bv, i64 1 ; 2 uses
  %i.by = insertelement <2 x float> <float poison, float 1.000000e+00>, float %.sink39.i, i64 0
  %i.bz = fmul <2 x float> %i.bx, %i.by
  %i.ca = shufflevector <2 x float> %i.bz, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 0>
  %i.cb = fneg <4 x float> %i.bq
  %i.cc = shufflevector <4 x float> %i.cb, <4 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.cd = shufflevector <3 x float> %i.am, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.ce = fmul <4 x float> %i.cd, %i.ca
  %i.cf = insertelement <4 x float> poison, float %i.aj, i64 0
  %i.cg = shufflevector <4 x float> %i.cf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ch = shufflevector <2 x float> %i.cc, <2 x float> %i.bx, <4 x i32> <i32 1, i32 poison, i32 0, i32 3>
  %i.ci = insertelement <4 x float> %i.ch, float %i.bs, i64 1
  %i.cj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cg, <4 x float> %i.ci, <4 x float> %i.ce)
  %i.ck = shufflevector <3 x float> %i.am, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %i.cl = insertelement <4 x float> poison, float %i.bs, i64 2
  %i.cm = shufflevector <4 x float> %i.cl, <4 x float> %i.bq, <4 x i32> <i32 poison, i32 poison, i32 2, i32 4>
  %i.cn = shufflevector <2 x float> %i.cc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.co = shufflevector <4 x float> %i.cn, <4 x float> %i.cm, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ck, <4 x float> %i.co, <4 x float> %i.cj)
  %i.cq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.an, <4 x float> %i.bq, <4 x float> %i.cp) ; 6 uses
  %foldExtExtBinop188 = fmul <4 x float> %i.cq, %i.cq
  %i.cr = extractelement <4 x float> %foldExtExtBinop188, i64 1
  %i.cs = extractelement <4 x float> %i.cq, i64 0 ; 2 uses
  %i.ct = tail call float @llvm.fmuladd.f32(float %i.cs, float %i.cs, float %i.cr)
  %i.cu = extractelement <4 x float> %i.cq, i64 2 ; 2 uses
  %i.cv = tail call float @llvm.fmuladd.f32(float %i.cu, float %i.cu, float %i.ct)
  %i.cw = extractelement <4 x float> %i.cq, i64 3 ; 2 uses
  %i.cx = tail call noundef float @llvm.fmuladd.f32(float %i.cw, float %i.cw, float %i.cv)
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.cx)
  %i.cy = fdiv float 1.000000e+00, %sqrt.i.i.i
  %i.cz = insertelement <4 x float> poison, float %i.cy, i64 0
  %i.da = shufflevector <4 x float> %i.cz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.db = fmul <4 x float> %i.cq, %i.da
  store <4 x float> %i.db, ptr %i.ag, align 8, !tbaa !9
  br label %bb.d

bb.d:                                             ; preds = %.split, %"_ZZN11btMultiBody24predictPositionsMultiDofEfEN3$_0clERK9btVector3R12btQuaternionbf.exit"
  %i.dc = icmp sgt i32 %i.b, 0
  br i1 %i.dc, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.df = fdiv float f0x3F490FDB, %1
  %i.dg = fmul float %1, %1
  %i.dh = fmul float %1, %i.dg
  %i.di = fmul float %i.dh, f0x3CAAAAAB
  %wide.trip.count = zext nneg i32 %i.b to i64
  %i.dj = insertelement <2 x float> poison, float %1, i64 0
  %i.dk = shufflevector <2 x float> %i.dj, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.e

._crit_edge:                                      ; preds = %.loopexit, %bb.d
  ret void

bb.e:                                             ; preds = %.lr.ph, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %i.dl = load ptr, ptr %i.dd, align 8, !tbaa !38
  %i.dm = getelementptr inbounds nuw [688 x i8], ptr %i.dl, i64 %indvars.iv ; 30 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 492 ; 9 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 544
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !151 ; 2 uses
  %.not = icmp eq ptr %i.dp, null
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 224
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !131
  %i.ds = and i32 %i.dr, 3
  %.not163 = icmp eq i32 %i.ds, 0
  br i1 %.not163, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dm, i64 564
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !85
  switch i32 %i.du, label %.loopexit [
    i32 1, label %bb.h
    i32 0, label %bb.h
    i32 2, label %.preheader165
    i32 3, label %.preheader166
  ]

.preheader166:                                    ; preds = %bb.g
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dm, i64 464
  %i.dw = load <2 x float>, ptr %i.dv, align 8, !tbaa !9
  store <2 x float> %i.dw, ptr %i.dn, align 4, !tbaa !9
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dm, i64 472
  %i.dy = load float, ptr %i.dx, align 8, !tbaa !9
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dm, i64 500
  store float %i.dy, ptr %i.dz, align 4, !tbaa !9
  br label %.loopexit

.preheader165:                                    ; preds = %bb.g
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dm, i64 464
  %i.eb = load <4 x float>, ptr %i.ea, align 8, !tbaa !9
  store <4 x float> %i.eb, ptr %i.dn, align 4, !tbaa !9
  br label %.loopexit

bb.h:                                             ; preds = %bb.g, %bb.g
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dm, i64 464
  %i.ed = load float, ptr %i.ec, align 8, !tbaa !9
  store float %i.ed, ptr %i.dn, align 4, !tbaa !9
  br label %.loopexit

bb.i:                                             ; preds = %bb.f, %bb.e
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dm, i64 328
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !110
  %i.eg = load ptr, ptr %i.de, align 8, !tbaa !42
  %i.eh = sext i32 %i.ef to i64
  %i.ei = getelementptr [4 x i8], ptr %i.eg, i64 %i.eh ; 3 uses
  %i.ej = getelementptr i8, ptr %i.ei, i64 24     ; 4 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dm, i64 564
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !85
  switch i32 %i.el, label %.loopexit [
    i32 1, label %bb.j
    i32 0, label %bb.j
    i32 2, label %.preheader
    i32 3, label %.preheader164
  ]

.preheader164:                                    ; preds = %bb.i
  %i.em = getelementptr inbounds nuw i8, ptr %i.dm, i64 464
  %i.en = load <2 x float>, ptr %i.em, align 8, !tbaa !9 ; 3 uses
  store <2 x float> %i.en, ptr %i.dn, align 4, !tbaa !9
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dm, i64 472
  %i.ep = load float, ptr %i.eo, align 8, !tbaa !9 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dm, i64 500
  store float %i.ep, ptr %i.eq, align 4, !tbaa !9
  %i.er = load float, ptr %i.ej, align 4, !tbaa !9
  %i.es = extractelement <2 x float> %i.en, i64 0
  %i.et = tail call float @llvm.fmuladd.f32(float %1, float %i.er, float %i.es) ; 2 uses
  store float %i.et, ptr %i.dn, align 4, !tbaa !9
  %i.eu = getelementptr i8, ptr %i.ei, i64 28
  %i.ev = getelementptr i8, ptr %i.dm, i64 184
  %2 = load float, ptr %i.eu, align 4, !tbaa !9   ; 3 uses
  %i.ew = getelementptr i8, ptr %i.dm, i64 188
  %i.ex = getelementptr i8, ptr %i.dm, i64 192
  %i.ey = load float, ptr %i.ex, align 8, !tbaa !9 ; 2 uses
  %i.ez = fmul float %2, %i.ey
  %3 = getelementptr i8, ptr %i.ei, i64 32
  %i.fa = getelementptr i8, ptr %i.dm, i64 216
  %i.fb = load float, ptr %3, align 4, !tbaa !9   ; 3 uses
  %4 = getelementptr i8, ptr %i.dm, i64 220
  %5 = getelementptr i8, ptr %i.dm, i64 224
  %6 = load float, ptr %5, align 8, !tbaa !9      ; 2 uses
  %7 = fmul float %i.fb, %6
  %8 = fadd float %i.ez, %7                       ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.dm, i64 136
  %9 = load float, ptr %i.fc, align 8, !tbaa !9   ; 3 uses
  %10 = getelementptr inbounds nuw i8, ptr %i.dm, i64 140
  %11 = load float, ptr %10, align 4, !tbaa !9    ; 3 uses
  %i.fd = fmul float %11, %11
  %12 = tail call float @llvm.fmuladd.f32(float %9, float %9, float %i.fd)
  %13 = getelementptr inbounds nuw i8, ptr %i.dm, i64 144
  %14 = load float, ptr %13, align 8, !tbaa !9    ; 3 uses
  %15 = tail call noundef float @llvm.fmuladd.f32(float %14, float %14, float %12)
  %sqrt.i.i.i120 = tail call noundef float @llvm.sqrt.f32(float %15)
  %16 = fmul float %i.et, 5.000000e-01            ; 2 uses
  %17 = tail call noundef float @sinf(float noundef %16) #26
  %18 = fdiv float %17, %sqrt.i.i.i120            ; 3 uses
  %19 = fmul float %9, %18                        ; 3 uses
  %20 = fmul float %11, %18                       ; 4 uses
  %21 = fmul float %14, %18                       ; 3 uses
  %22 = tail call noundef float @cosf(float noundef %16) #26 ; 6 uses
  %23 = fmul float %8, %20
  %24 = fneg float %21                            ; 4 uses
  %25 = fneg float %19                            ; 4 uses
  %26 = fneg float %20                            ; 3 uses
  %27 = getelementptr inbounds nuw i8, ptr %i.dm, i64 496
  %28 = load <2 x float>, ptr %i.ev, align 8, !tbaa !9 ; 3 uses
  %29 = load float, ptr %i.ew, align 4, !tbaa !9
  %i.fe = extractelement <2 x float> %28, i64 0
  %30 = fmul float %i.fe, %2
  %31 = fmul float %2, %29
  %32 = load <2 x float>, ptr %i.fa, align 8, !tbaa !9 ; 3 uses
  %33 = load float, ptr %4, align 4, !tbaa !9
  %34 = extractelement <2 x float> %32, i64 0
  %35 = fmul float %34, %i.fb
  %36 = fmul float %i.fb, %33
  %37 = fadd float %30, %35                       ; 4 uses
  %38 = fadd float %31, %36                       ; 4 uses
  %39 = tail call float @llvm.fmuladd.f32(float %22, float %37, float %23)
  %40 = tail call float @llvm.fmuladd.f32(float %24, float %38, float %39) ; 3 uses
  %41 = fmul float %37, %21
  %42 = tail call float @llvm.fmuladd.f32(float %22, float %38, float %41)
  %43 = tail call float @llvm.fmuladd.f32(float %25, float %8, float %42) ; 3 uses
  %44 = fmul float %38, %19
  %i.ff = tail call float @llvm.fmuladd.f32(float %22, float %8, float %44)
  %45 = tail call float @llvm.fmuladd.f32(float %26, float %37, float %i.ff) ; 3 uses
  %46 = fneg float %38
  %47 = fmul float %20, %46
  %i.fg = tail call float @llvm.fmuladd.f32(float %25, float %37, float %47)
  %48 = tail call float @llvm.fmuladd.f32(float %24, float %8, float %i.fg) ; 3 uses
  %i.fh = fmul float %22, %40
  %i.fi = tail call float @llvm.fmuladd.f32(float %48, float %25, float %i.fh)
  %i.fj = tail call float @llvm.fmuladd.f32(float %43, float %24, float %i.fi)
  %i.fk = tail call float @llvm.fmuladd.f32(float %45, float %20, float %i.fj)
  %i.fl = fmul float %22, %43
  %i.fm = tail call float @llvm.fmuladd.f32(float %48, float %26, float %i.fl)
  %i.fn = tail call float @llvm.fmuladd.f32(float %45, float %25, float %i.fm)
  %i.fo = tail call float @llvm.fmuladd.f32(float %40, float %21, float %i.fn)
  %i.fp = fmul float %22, %45
  %i.fq = tail call float @llvm.fmuladd.f32(float %48, float %24, float %i.fp)
  %i.fr = tail call float @llvm.fmuladd.f32(float %40, float %26, float %i.fq)
  %i.fs = tail call float @llvm.fmuladd.f32(float %43, float %19, float %i.fr)
  %i.ft = shufflevector <2 x float> %28, <2 x float> %32, <2 x i32> <i32 1, i32 3>
  %i.fu = insertelement <2 x float> poison, float %i.fo, i64 0
  %i.fv = shufflevector <2 x float> %i.fu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fw = fmul <2 x float> %i.ft, %i.fv
  %i.fx = shufflevector <2 x float> %28, <2 x float> %32, <2 x i32> <i32 0, i32 2>
  %i.fy = insertelement <2 x float> poison, float %i.fk, i64 0
  %i.fz = shufflevector <2 x float> %i.fy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ga = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fx, <2 x float> %i.fz, <2 x float> %i.fw)
  %49 = insertelement <2 x float> poison, float %i.ey, i64 0
  %50 = insertelement <2 x float> %49, float %6, i64 1
  %i.gb = insertelement <2 x float> poison, float %i.fs, i64 0
  %i.gc = shufflevector <2 x float> %i.gb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %50, <2 x float> %i.gc, <2 x float> %i.ga)
  %i.ge = shufflevector <2 x float> %i.en, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gf = insertelement <2 x float> %i.ge, float %i.ep, i64 1
  %i.gg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gd, <2 x float> %i.dk, <2 x float> %i.gf)
  store <2 x float> %i.gg, ptr %27, align 8, !tbaa !9
  br label %.loopexit

.preheader:                                       ; preds = %bb.i
  %i.gh = getelementptr inbounds nuw i8, ptr %i.dm, i64 464 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.dm, i64 468
  %i.gj = getelementptr inbounds nuw i8, ptr %i.dm, i64 496
  %i.gk = getelementptr inbounds nuw i8, ptr %i.dm, i64 500
  %i.gl = getelementptr inbounds nuw i8, ptr %i.dm, i64 504
  %i.gm = load <3 x float>, ptr %i.gh, align 8, !tbaa !9 ; 6 uses
  %i.gn = shufflevector <3 x float> %i.gm, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.go = extractelement <3 x float> %i.gm, i64 2 ; 2 uses
  %i.gp = load <4 x float>, ptr %i.gh, align 8, !tbaa !9 ; 4 uses
  %i.gq = load float, ptr %i.gi, align 4, !tbaa !9 ; 2 uses
  %i.gr = extractelement <3 x float> %i.gm, i64 0
  store float %i.gr, ptr %i.dn, align 4, !tbaa !9
  store float %i.gq, ptr %i.gj, align 8, !tbaa !9
  store float %i.go, ptr %i.gk, align 4, !tbaa !9
  %i.gs = extractelement <4 x float> %i.gp, i64 3
  store float %i.gs, ptr %i.gl, align 8, !tbaa !9
  %i.gt = load <3 x float>, ptr %i.ej, align 4, !tbaa !9 ; 5 uses
  %i.gu = shufflevector <3 x float> %i.gt, <3 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 2>
  %i.gv = load float, ptr %i.ej, align 4, !tbaa !9
  %i.gw = shufflevector <3 x float> %i.gt, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.gx = shufflevector <3 x float> %i.gm, <3 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 2>
  %i.gy = fmul <4 x float> %i.gw, %i.gx
  %i.gz = shufflevector <4 x float> %i.gp, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3> ; 2 uses
  %i.ha = shufflevector <3 x float> %i.gt, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %i.hb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gz, <4 x float> %i.ha, <4 x float> %i.gy)
  %i.hc = fneg float %i.go
  %i.hd = fneg <4 x float> %i.gn                  ; 5 uses
  %i.he = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hd, <4 x float> %i.gu, <4 x float> %i.hb) ; 3 uses
  %i.hf = extractelement <3 x float> %i.gt, i64 1
  %i.hg = fneg float %i.hf
  %i.hh = fmul float %i.gq, %i.hg
  %i.hi = extractelement <4 x float> %i.hd, i64 0
  %i.hj = tail call float @llvm.fmuladd.f32(float %i.hi, float %i.gv, float %i.hh)
  %i.hk = extractelement <3 x float> %i.gt, i64 2
  %i.hl = tail call float @llvm.fmuladd.f32(float %i.hc, float %i.hk, float %i.hj)
  %i.hm = shufflevector <4 x float> %i.he, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %i.hn = fmul <4 x float> %i.gz, %i.hm
  %i.ho = insertelement <4 x float> poison, float %i.hl, i64 0
  %i.hp = shufflevector <4 x float> %i.ho, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hq = shufflevector <4 x float> %i.hd, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 2>
  %i.hr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hp, <4 x float> %i.hq, <4 x float> %i.hn)
  %i.hs = shufflevector <4 x float> %i.he, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 2>
  %i.ht = shufflevector <4 x float> %i.hd, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %i.hu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hs, <4 x float> %i.ht, <4 x float> %i.hr)
  %i.hv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.he, <4 x float> %i.gn, <4 x float> %i.hu) ; 5 uses
  %foldExtExtBinop190 = fmul <4 x float> %i.hv, %i.hv
  %i.hw = extractelement <4 x float> %foldExtExtBinop190, i64 2
  %i.hx = extractelement <4 x float> %i.hv, i64 1 ; 2 uses
  %i.hy = tail call float @llvm.fmuladd.f32(float %i.hx, float %i.hx, float %i.hw)
  %i.hz = extractelement <4 x float> %i.hv, i64 0 ; 2 uses
  %i.ia = tail call noundef float @llvm.fmuladd.f32(float %i.hz, float %i.hz, float %i.hy)
  %sqrt.i.i109 = tail call noundef float @llvm.sqrt.f32(float %i.ia) ; 2 uses
  %i.ib = fmul float %1, %sqrt.i.i109
  %i.ic = fcmp ogt float %i.ib, f0x3F490FDB
  %.0.i110 = select i1 %i.ic, float %i.df, float %sqrt.i.i109 ; 6 uses
  %i.id = fcmp olt float %.0.i110, 1.000000e-03
  br i1 %i.id, label %bb.k, label %bb.l

bb.j:                                             ; preds = %bb.i, %bb.i
  %i.ie = getelementptr inbounds nuw i8, ptr %i.dm, i64 464
  %i.if = load float, ptr %i.ie, align 8, !tbaa !9 ; 2 uses
  store float %i.if, ptr %i.dn, align 4, !tbaa !9
  %i.ig = load float, ptr %i.ej, align 4, !tbaa !9
  %i.ih = tail call float @llvm.fmuladd.f32(float %1, float %i.ig, float %i.if)
  store float %i.ih, ptr %i.dn, align 4, !tbaa !9
  br label %.loopexit

bb.k:                                             ; preds = %.preheader
  %i.ii = fmul float %i.di, %.0.i110
  %i.ij = fneg float %.0.i110
  %i.ik = fmul float %i.ii, %i.ij
  %i.il = tail call float @llvm.fmuladd.f32(float %1, float 5.000000e-01, float %i.ik)
  br label %"_ZZN11btMultiBody24predictPositionsMultiDofEfEN3$_0clERK9btVector3R12btQuaternionbf.exit113"

bb.l:                                             ; preds = %.preheader
  %i.im = fmul float %.0.i110, 5.000000e-01
  %i.in = fmul float %1, %i.im
  %i.io = tail call noundef float @sinf(float noundef %i.in) #26
  %i.ip = fdiv float %i.io, %.0.i110
  br label %"_ZZN11btMultiBody24predictPositionsMultiDofEfEN3$_0clERK9btVector3R12btQuaternionbf.exit113"

"_ZZN11btMultiBody24predictPositionsMultiDofEfEN3$_0clERK9btVector3R12btQuaternionbf.exit113": ; preds = %bb.k, %bb.l
  %.sink39.i111 = phi float [ %i.ip, %bb.l ], [ %i.il, %bb.k ]
  %i.iq = insertelement <4 x float> poison, float %.sink39.i111, i64 0
  %i.ir = shufflevector <4 x float> %i.iq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.is = fmul <4 x float> %i.hv, %i.ir           ; 3 uses
  %i.it = fmul float %1, %.0.i110
  %i.iu = fmul float %i.it, 5.000000e-01
  %i.iv = tail call noundef float @cosf(float noundef %i.iu) #26
  %i.iw = fneg <4 x float> %i.is                  ; 2 uses
  %i.ix = shufflevector <4 x float> %i.is, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %i.iy = shufflevector <4 x float> %i.gp, <4 x float> %i.hd, <4 x i32> <i32 3, i32 3, i32 3, i32 4>
  %i.iz = fmul <4 x float> %i.ix, %i.iy
  %i.ja = insertelement <4 x float> poison, float %i.iv, i64 0
  %i.jb = shufflevector <4 x float> %i.ja, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jb, <4 x float> %i.gp, <4 x float> %i.iz)
  %i.jd = shufflevector <4 x float> %i.is, <4 x float> %i.iw, <4 x i32> <i32 2, i32 0, i32 1, i32 6>
  %i.je = shufflevector <3 x float> %i.gm, <3 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 1>
  %i.jf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jd, <4 x float> %i.je, <4 x float> %i.jc)
  %i.jg = shufflevector <3 x float> %i.gm, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 2>
  %i.jh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.iw, <4 x float> %i.jg, <4 x float> %i.jf) ; 6 uses
  %foldExtExtBinop192 = fmul <4 x float> %i.jh, %i.jh
  %i.ji = extractelement <4 x float> %foldExtExtBinop192, i64 1
  %i.jj = extractelement <4 x float> %i.jh, i64 0 ; 2 uses
  %i.jk = tail call float @llvm.fmuladd.f32(float %i.jj, float %i.jj, float %i.ji)
  %i.jl = extractelement <4 x float> %i.jh, i64 2 ; 2 uses
  %i.jm = tail call float @llvm.fmuladd.f32(float %i.jl, float %i.jl, float %i.jk)
  %i.jn = extractelement <4 x float> %i.jh, i64 3 ; 2 uses
  %i.jo = tail call noundef float @llvm.fmuladd.f32(float %i.jn, float %i.jn, float %i.jm)
  %sqrt.i.i.i112 = tail call noundef float @llvm.sqrt.f32(float %i.jo)
  %i.jp = fdiv float 1.000000e+00, %sqrt.i.i.i112
  %i.jq = insertelement <4 x float> poison, float %i.jp, i64 0
  %i.jr = shufflevector <4 x float> %i.jq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.js = fmul <4 x float> %i.jh, %i.jr
  store <4 x float> %i.js, ptr %i.dn, align 4, !tbaa !9
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader166, %.preheader165, %bb.j, %"_ZZN11btMultiBody24predictPositionsMultiDofEfEN3$_0clERK9btVector3R12btQuaternionbf.exit113", %.preheader164, %bb.i, %bb.h, %bb.g
  tail call void @_ZN15btMultibodyLink32updateInterpolationCacheMultiDofEv(ptr noundef nonnull align 8 dereferenceable(688) %i.dm)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !383
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN15btMultibodyLink32updateInterpolationCacheMultiDofEv(ptr noundef nonnull align 8 dereferenceable(688) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 492 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 564
  %i.e = load i32, ptr %i.d, align 4, !tbaa !85
  switch i32 %i.e, label %bb.g [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.g = load float, ptr %i.a, align 4, !tbaa !9
  %i.h = load float, ptr %i.f, align 8, !tbaa !9  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.j = fmul float %i.g, -5.000000e-01           ; 2 uses
  %i.k = tail call noundef float @sinf(float noundef %i.j) #26
  %i.l = tail call noundef float @cosf(float noundef %i.j) #26
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load <2 x float>, ptr %i.i, align 4, !tbaa !9 ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.o, %i.o
  %i.p = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.q = tail call float @llvm.fmuladd.f32(float %i.h, float %i.h, float %i.p)
  %i.r = extractelement <2 x float> %i.o, i64 1   ; 2 uses
  %i.s = tail call noundef float @llvm.fmuladd.f32(float %i.r, float %i.r, float %i.q)
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.s)
  %i.t = fdiv float %i.k, %sqrt.i.i.i             ; 2 uses
  %i.u = insertelement <2 x float> poison, float %i.t, i64 0
  %i.v = shufflevector <2 x float> %i.u, <2 x float> poison, <2 x i32> zeroinitializer
  %i.w = fmul <2 x float> %i.o, %i.v              ; 5 uses
  %i.x = extractelement <2 x float> %i.w, i64 1
  %i.y = fmul float %i.h, %i.t                    ; 4 uses
  %i.z = load <2 x float>, ptr %i.n, align 8, !tbaa !9 ; 6 uses
  %i.aa = fneg <2 x float> %i.w                   ; 2 uses
  %i.ab = load <2 x float>, ptr %i.m, align 8, !tbaa !9 ; 6 uses
  %i.ac = extractelement <2 x float> %i.ab, i64 0
  %i.ad = fneg float %i.ac
  %i.ae = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.af = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ag = insertelement <2 x float> %i.af, float %i.y, i64 0
  %i.ah = fmul <2 x float> %i.ae, %i.ag
  %i.ai = insertelement <2 x float> poison, float %i.l, i64 0
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ak = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aj, <2 x float> %i.ab, <2 x float> %i.ah)
  %i.al = shufflevector <2 x float> %i.z, <2 x float> %i.ab, <2 x i32> <i32 0, i32 2>
  %i.am = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.w, <2 x float> %i.al, <2 x float> %i.ak)
  %i.an = fneg float %i.y
  %i.ao = fneg float %i.x
  %i.ap = insertelement <2 x float> poison, float %i.ao, i64 0
  %i.aq = insertelement <2 x float> %i.ap, float %i.an, i64 1
  %i.ar = shufflevector <2 x float> %i.ab, <2 x float> %i.z, <2 x i32> <i32 1, i32 2>
  %i.as = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aq, <2 x float> %i.ar, <2 x float> %i.am)
  %i.at = fmul float %i.y, %i.ad
  %foldExtExtBinop163 = fmul <2 x float> %i.z, %i.w
  %i.au = shufflevector <2 x float> %foldExtExtBinop163, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.av = insertelement <2 x float> %i.au, float %i.at, i64 1
  %i.aw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aj, <2 x float> %i.z, <2 x float> %i.av)
  %i.ax = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ay = insertelement <2 x float> %i.ax, float %i.y, i64 0
  %i.az = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ba = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ay, <2 x float> %i.az, <2 x float> %i.aw)
  %i.bb = shufflevector <2 x float> %i.ab, <2 x float> %i.z, <2 x i32> <i32 0, i32 2>
  %i.bc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aa, <2 x float> %i.bb, <2 x float> %i.ba)
  store <2 x float> %i.as, ptr %i.b, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 376
  store <2 x float> %i.bc, ptr %.sroa.414.0..sroa_idx, align 8
end_hunk_0
