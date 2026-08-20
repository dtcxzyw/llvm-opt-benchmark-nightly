inline.NumInlined: 383
inline.NumDeleted: 124
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN36btCompoundCompoundCollisionAlgorithm16processCollisionEPK24btCollisionObjectWrapperS2_RK16btDispatcherInfoP16btManifoldResult:bb.a
  br label %bb.aa

.lr.ph256:                                        ; preds = %bb.o
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 24
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph256, %bb.x
  %i.be = phi i32 [ %i.ay, %.lr.ph256 ], [ %i.cs, %bb.x ]
  %indvars.iv267 = phi i64 [ 0, %.lr.ph256 ], [ %indvars.iv.next268, %bb.x ] ; 2 uses
  %i.bf = load ptr, ptr %i.ba, align 8, !tbaa !17
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %indvars.iv267
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !56 ; 3 uses
  %.not114 = icmp eq ptr %i.bi, null
  br i1 %.not114, label %bb.x, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !9
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8
  invoke void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, ptr noundef nonnull align 8 dereferenceable(25) %7)
          to label %.preheader246 unwind label %bb.t

.preheader246:                                    ; preds = %bb.q
  %i.bm = load i32, ptr %i.aq, align 4, !tbaa !65 ; 3 uses
  %i.bn = icmp sgt i32 %i.bm, 0
  br i1 %i.bn, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.v, %.preheader246
  %.lcssa251 = phi i32 [ %i.bm, %.preheader246 ], [ %i.co, %bb.v ] ; 2 uses
  %i.bo = icmp slt i32 %.lcssa251, 0
  br i1 %i.bo, label %bb.r, label %.loopexit

bb.r:                                             ; preds = %._crit_edge
  %i.bp = load i32, ptr %i.ar, align 8, !tbaa !66
  %i.bq = icmp slt i32 %i.bp, 0
  %.pre276 = load ptr, ptr %i.ap, align 8, !tbaa !64 ; 3 uses
  br i1 %i.bq, label %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i, label %.lr.ph.i120

_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i: ; preds = %bb.r
  %.not.i5.i.i = icmp ne ptr %.pre276, null
  %i.br = load i8, ptr %i.ao, align 8, !range !55
  %i.bs = trunc nuw i8 %i.br to i1
  %or.cond226 = select i1 %.not.i5.i.i, i1 %i.bs, i1 false
  br i1 %or.cond226, label %bb.s, label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i

bb.s:                                             ; preds = %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %.pre276)
          to label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i unwind label %bb.w

_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i: ; preds = %bb.s, %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i
  store i8 1, ptr %i.ao, align 8, !tbaa !63
  store ptr null, ptr %i.ap, align 8, !tbaa !64
  store i32 0, ptr %i.ar, align 8, !tbaa !66
  br label %.lr.ph.i120

.lr.ph.i120:                                      ; preds = %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i, %bb.r
  %i.bt = phi ptr [ null, %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i ], [ %.pre276, %bb.r ]
  %i.bu = sext i32 %.lcssa251 to i64              ; 2 uses
  %i.bv = shl nsw i64 %i.bu, 3
  %scevgep = getelementptr i8, ptr %i.bt, i64 %i.bv
  %i.bw = mul nsw i64 %i.bu, -8
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep, i8 0, i64 %i.bw, i1 false), !tbaa !67
  br label %.loopexit

.loopexit247:                                     ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

.loopexit.split-lp:                               ; preds = %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.t:                                             ; preds = %bb.q
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.u:                                             ; preds = %.sink.split.i
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

.lr.ph:                                           ; preds = %.preheader246, %bb.v
  %i.bz = phi i32 [ %i.co, %bb.v ], [ %i.bm, %.preheader246 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.v ], [ 0, %.preheader246 ] ; 2 uses
  %i.ca = load ptr, ptr %i.ap, align 8, !tbaa !64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !67 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 856
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !68
  %.not115 = icmp eq i32 %i.ce, 0
  br i1 %.not115, label %bb.v, label %.sink.split.i

.sink.split.i:                                    ; preds = %.lr.ph
  store ptr %i.cc, ptr %i.bb, align 8, !tbaa !71
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 840
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !74
  %i.ch = load ptr, ptr %i.bc, align 8, !tbaa !75
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !76 ; 3 uses
  %.not1.i = icmp eq ptr %i.cg, %i.cj             ; 2 uses
  %i.ck = load ptr, ptr %i.bd, align 8, !tbaa !77
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !76 ; 2 uses
  %. = select i1 %.not1.i, ptr %i.cm, ptr %i.cj
  %.306 = select i1 %.not1.i, ptr %i.cj, ptr %i.cm
  %.sink.i = getelementptr inbounds nuw i8, ptr %.306, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %., i64 8
  invoke void @_ZN20btPersistentManifold20refreshContactPointsERK11btTransformS2_(ptr noundef nonnull align 8 dereferenceable(880) %i.cc, ptr noundef nonnull align 4 dereferenceable(64) %.sink.i, ptr noundef nonnull align 4 dereferenceable(64) %i.cn)
          to label %_ZN16btManifoldResult20refreshContactPointsEv.exit unwind label %bb.u

_ZN16btManifoldResult20refreshContactPointsEv.exit: ; preds = %.sink.split.i
  store ptr null, ptr %i.bb, align 8, !tbaa !71
  %.pre = load i32, ptr %i.aq, align 4, !tbaa !65
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph, %_ZN16btManifoldResult20refreshContactPointsEv.exit
  %i.co = phi i32 [ %i.bz, %.lr.ph ], [ %.pre, %_ZN16btManifoldResult20refreshContactPointsEv.exit ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cp = sext i32 %i.co to i64
  %i.cq = icmp slt i64 %indvars.iv.next, %i.cp
  br i1 %i.cq, label %.lr.ph, label %._crit_edge, !llvm.loop !78

.loopexit:                                        ; preds = %.lr.ph.i120, %._crit_edge
  store i32 0, ptr %i.aq, align 4, !tbaa !65
  %.pre277 = load i32, ptr %i.ax, align 4, !tbaa !18
  br label %bb.x

bb.w:                                             ; preds = %bb.s
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.x:                                             ; preds = %bb.p, %.loopexit
  %i.cs = phi i32 [ %i.be, %bb.p ], [ %.pre277, %.loopexit ] ; 2 uses
  %indvars.iv.next268 = add nuw nsw i64 %indvars.iv267, 1 ; 2 uses
  %i.ct = sext i32 %i.cs to i64
  %i.cu = icmp slt i64 %indvars.iv.next268, %i.ct
  br i1 %i.cu, label %bb.p, label %._crit_edge257, !llvm.loop !79

._crit_edge257:                                   ; preds = %bb.x
  %.pre278 = load ptr, ptr %i.ap, align 8, !tbaa !64 ; 2 uses
  %.pre279 = load i8, ptr %i.ao, align 8, !range !55
  %i.cv = trunc nuw i8 %.pre279 to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  %.not.i.i.i127 = icmp ne ptr %.pre278, null
  %or.cond.i.i128 = select i1 %.not.i.i.i127, i1 %i.cv, i1 false
  br i1 %or.cond.i.i128, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %._crit_edge257
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %.pre278)
          to label %bb.aa unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cw = landingpad { ptr, i32 }
          catch ptr null
  %i.cx = extractvalue { ptr, i32 } %i.cw, 0
  call void @__clang_call_terminate(ptr %i.cx) #16
  unreachable

bb.aa:                                            ; preds = %._crit_edge257.thread, %._crit_edge257, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !58
  %i.da = load ptr, ptr %i.av, align 8, !tbaa !20
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !80
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV30btCompoundCompoundLeafCallback, i64 16), ptr %9, align 8, !tbaa !9
  %i.dd = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 0, ptr %i.dd, align 8, !tbaa !81
  %i.de = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %1, ptr %i.de, align 8, !tbaa !86
  %i.df = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %2, ptr %i.df, align 8, !tbaa !87
  %i.dg = getelementptr inbounds nuw i8, ptr %9, i64 32
  store ptr %i.cz, ptr %i.dg, align 8, !tbaa !88
  %i.dh = getelementptr inbounds nuw i8, ptr %9, i64 40
  store ptr %3, ptr %i.dh, align 8, !tbaa !89
  %i.di = getelementptr inbounds nuw i8, ptr %9, i64 48
  store ptr %4, ptr %i.di, align 8, !tbaa !90
  %i.dj = getelementptr inbounds nuw i8, ptr %9, i64 56
  store ptr %i.da, ptr %i.dj, align 8, !tbaa !91
  %i.dk = getelementptr inbounds nuw i8, ptr %9, i64 64
  store ptr %i.dc, ptr %i.dk, align 8, !tbaa !92
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !93, !nonnull !94, !align !95 ; 8 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 40
  %i.ds = load float, ptr %i.dp, align 4, !tbaa !96, !noalias !97 ; 3 uses
  %i.dt = load float, ptr %i.dq, align 4, !tbaa !96, !noalias !97 ; 3 uses
  %i.du = load float, ptr %i.dr, align 4, !tbaa !96, !noalias !97 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dm, i64 48
  %i.dw = load <2 x float>, ptr %i.dv, align 4, !tbaa !96, !noalias !102
  %i.dx = fneg <2 x float> %i.dw                  ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dm, i64 56
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !96, !noalias !102
  %i.ea = fneg float %i.dz                        ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !93, !nonnull !94, !align !95 ; 8 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 36
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 40
  %i.eg = load <2 x float>, ptr %i.dm, align 4, !tbaa !96, !noalias !97 ; 5 uses
  %i.eh = load <2 x float>, ptr %i.dn, align 4, !tbaa !96, !noalias !97 ; 5 uses
  %i.ei = load <2 x float>, ptr %i.do, align 4, !tbaa !96, !noalias !97 ; 5 uses
  %i.ej = extractelement <2 x float> %i.ei, i64 0 ; 3 uses
  %i.ek = extractelement <2 x float> %i.ei, i64 1
  %i.el = shufflevector <2 x float> %i.eh, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 0>
  %i.em = insertelement <4 x float> %i.el, float %i.dt, i64 0
  %i.en = shufflevector <2 x float> %i.dx, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.eo = shufflevector <2 x float> %i.eg, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 0>
  %i.ep = insertelement <4 x float> %i.eo, float %i.ds, i64 0
  %i.eq = shufflevector <2 x float> %i.dx, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.er = load <3 x float>, ptr %i.ec, align 4, !tbaa !96, !noalias !103 ; 4 uses
  %i.es = shufflevector <3 x float> %i.er, <3 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 2>
  %i.et = load <3 x float>, ptr %i.ed, align 4, !tbaa !96, !noalias !103 ; 4 uses
  %i.eu = shufflevector <3 x float> %i.et, <3 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 2>
  %i.ev = shufflevector <3 x float> %i.et, <3 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 2, i32 poison>
  %i.ew = shufflevector <4 x float> %i.en, <4 x float> %i.ev, <4 x i32> <i32 0, i32 0, i32 0, i32 6>
  %i.ex = fmul <4 x float> %i.em, %i.ew
  %i.ey = shufflevector <3 x float> %i.er, <3 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 2, i32 poison>
  %i.ez = shufflevector <4 x float> %i.eq, <4 x float> %i.ey, <4 x i32> <i32 0, i32 0, i32 0, i32 6>
  %i.fa = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ep, <4 x float> %i.ez, <4 x float> %i.ex) ; 3 uses
  %i.fb = extractelement <4 x float> %i.fa, i64 1
  %i.fc = call noundef float @llvm.fmuladd.f32(float %i.ej, float %i.ea, float %i.fb)
  %i.fd = extractelement <4 x float> %i.fa, i64 3
  %i.fe = shufflevector <2 x float> %i.eh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ff = insertelement <2 x float> %i.fe, float %i.dt, i64 1
  %i.fg = shufflevector <2 x float> %i.ff, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.fh = fmul <4 x float> %i.fg, %i.eu
  %i.fi = shufflevector <2 x float> %i.eg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.fj = insertelement <2 x float> %i.fi, float %i.ds, i64 1
  %i.fk = shufflevector <2 x float> %i.fj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.fl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.es, <4 x float> %i.fk, <4 x float> %i.fh) ; 3 uses
  %i.fm = extractelement <4 x float> %i.fl, i64 0
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ec, i64 48
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !96, !noalias !108 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ec, i64 52
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !96, !noalias !108 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ec, i64 56
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !96, !noalias !108 ; 2 uses
  %i.ft = load <2 x float>, ptr %i.ee, align 4, !tbaa !96, !noalias !103 ; 2 uses
  %i.fu = load float, ptr %i.ef, align 4, !tbaa !96, !noalias !103 ; 2 uses
  %i.fv = call noundef float @llvm.fmuladd.f32(float %i.fu, float %i.ej, float %i.fd) ; 2 uses
  %i.fw = insertelement <2 x float> poison, float %i.fq, i64 0
  %i.fx = shufflevector <2 x float> %i.ft, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.fy = insertelement <3 x float> %i.fx, float %i.fo, i64 2
  %i.fz = shufflevector <3 x float> %i.fy, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.ga = shufflevector <2 x float> %i.eg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gb = insertelement <4 x float> poison, float %i.du, i64 0
  %i.gc = shufflevector <4 x float> %i.gb, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.gd = shufflevector <4 x float> %i.ga, <4 x float> %i.gc, <4 x i32> <i32 4, i32 5, i32 0, i32 1>
  %i.ge = shufflevector <2 x float> %i.eh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gf = shufflevector <2 x float> %i.fw, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.gg = fmul <4 x float> %i.ge, %i.gf
  %i.gh = shufflevector <4 x float> %i.fl, <4 x float> %i.gg, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.gi = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fz, <4 x float> %i.gd, <4 x float> %i.gh) ; 4 uses
  %i.gj = extractelement <4 x float> %i.gi, i64 2
  %i.gk = call noundef float @llvm.fmuladd.f32(float %i.fs, float %i.ej, float %i.gj)
  %i.gl = fmul float %i.dt, %i.fq
  %17 = shufflevector <2 x float> %i.ei, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %18 = insertelement <2 x float> %17, float %i.du, i64 1 ; 2 uses
  %19 = insertelement <2 x float> poison, float %i.ea, i64 0
  %20 = shufflevector <2 x float> %19, <2 x float> poison, <2 x i32> zeroinitializer
  %21 = shufflevector <4 x float> %i.fa, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  %22 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %18, <2 x float> %20, <2 x float> %21)
  %i.gm = call noundef float @llvm.fmuladd.f32(float %i.fu, float %i.ek, float %i.fm) ; 2 uses
  %i.gn = call float @llvm.fmuladd.f32(float %i.fo, float %i.ds, float %i.gl)
  %23 = insertelement <2 x float> poison, float %i.fs, i64 0
  %24 = shufflevector <2 x float> %23, <2 x float> poison, <2 x i32> zeroinitializer
  %25 = shufflevector <4 x float> %i.gi, <4 x float> poison, <2 x i32> <i32 3, i32 1> ; 2 uses
  %26 = insertelement <2 x float> %25, float %i.gn, i64 1
  %27 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %24, <2 x float> %18, <2 x float> %26)
  %i.go = fadd float %i.fc, %i.gk
  %28 = fadd <2 x float> %22, %27
  %i.gp = load ptr, ptr %i.f, align 8, !tbaa !109 ; 2 uses
  %i.gq = load ptr, ptr %i.h, align 8, !tbaa !109 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.gs = load float, ptr %i.gr, align 8, !tbaa !115 ; 3 uses
  %i.gt = icmp ne ptr %i.gp, null
  %i.gu = icmp ne ptr %i.gq, null
  %or.cond.i = and i1 %i.gt, %i.gu
  br i1 %or.cond.i, label %bb.ab, label %bb.az

bb.ab:                                            ; preds = %bb.aa
  %i.gv = shufflevector <2 x float> %i.ft, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gw = shufflevector <3 x float> %i.er, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gx = shufflevector <3 x float> %i.et, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gy = fmul <2 x float> %i.eh, %i.gx
  %i.gz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gw, <2 x float> %i.eg, <2 x float> %i.gy)
  %i.ha = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gv, <2 x float> %i.ei, <2 x float> %i.gz) ; 3 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ec, i64 32
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !96, !noalias !103 ; 2 uses
  %i.hd = extractelement <4 x float> %i.fl, i64 1
  %i.he = call noundef float @llvm.fmuladd.f32(float %i.hc, float %i.du, float %i.hd) ; 2 uses
  %i.hf = insertelement <2 x float> poison, float %i.hc, i64 0
  %i.hg = shufflevector <2 x float> %i.hf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hh = shufflevector <3 x float> %i.er, <3 x float> poison, <2 x i32> zeroinitializer
  %i.hi = shufflevector <3 x float> %i.et, <3 x float> poison, <2 x i32> zeroinitializer
  %i.hj = fmul <2 x float> %i.eh, %i.hi
  %i.hk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hh, <2 x float> %i.eg, <2 x float> %i.hj)
  %i.hl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hg, <2 x float> %i.ei, <2 x float> %i.hk) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.hm = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  store i8 0, ptr %i.hm, align 8, !tbaa !116
  store ptr %6, ptr %i.hn, align 8, !tbaa !117
  store i32 128, ptr %i.ho, align 4, !tbaa !118
  store i32 128, ptr %i.hp, align 8, !tbaa !119
  store ptr %i.gp, ptr %6, align 16, !tbaa !120
  %.sroa.474.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.gq, ptr %.sroa.474.0..sroa_idx.i, align 8, !tbaa !120
  %i.hq = extractelement <2 x float> %i.hl, i64 0
  %i.hr = call noundef float @llvm.fabs.f32(float %i.hq)
  %i.hs = extractelement <2 x float> %i.ha, i64 0
  %i.ht = call noundef float @llvm.fabs.f32(float %i.hs)
  %i.hu = call noundef float @llvm.fabs.f32(float %i.fv)
  %i.hv = extractelement <2 x float> %i.hl, i64 1
  %i.hw = call noundef float @llvm.fabs.f32(float %i.hv)
  %i.hx = extractelement <2 x float> %i.ha, i64 1
  %i.hy = call noundef float @llvm.fabs.f32(float %i.hx)
  %i.hz = call noundef float @llvm.fabs.f32(float %i.he)
  %i.ia = extractelement <4 x float> %i.gi, i64 0
  %i.ib = call noundef float @llvm.fabs.f32(float %i.ia)
  %i.ic = insertelement <2 x float> %25, float %i.gm, i64 0
  %i.id = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ic)
  %i.ie = insertelement <4 x float> poison, float %i.he, i64 2
  %i.if = insertelement <4 x float> %i.ie, float %i.hr, i64 3
  %i.ig = shufflevector <2 x float> %i.hl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ih = shufflevector <4 x float> %i.ig, <4 x float> %i.if, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ii = shufflevector <2 x float> %i.ha, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ij = shufflevector <4 x float> %i.gi, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 poison> ; 2 uses
  %i.ik = insertelement <2 x float> poison, float %i.gs, i64 0
  %i.il = shufflevector <2 x float> %i.ik, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.im = insertelement <4 x float> %i.ij, float %i.ht, i64 3
  %i.in = shufflevector <4 x float> %i.ii, <4 x float> %i.im, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.io = insertelement <4 x float> %i.ij, float %i.hu, i64 1
  %i.ip = insertelement <4 x float> %i.io, float %i.hw, i64 2
  %i.iq = insertelement <4 x float> %i.ip, float %i.hz, i64 3
  br label %bb.ac

bb.ac:                                            ; preds = %_ZL11MyIntersectRK12btDbvtAabbMmS1_RK11btTransformf.exit.thread.i, %bb.ab
  %i.ir = phi ptr [ %6, %bb.ab ], [ %i.oe, %_ZL11MyIntersectRK12btDbvtAabbMmS1_RK11btTransformf.exit.thread.i ] ; 8 uses
  %i.is = phi ptr [ %6, %bb.ab ], [ %i.of, %_ZL11MyIntersectRK12btDbvtAabbMmS1_RK11btTransformf.exit.thread.i ] ; 8 uses
  %i.it = phi ptr [ %6, %bb.ab ], [ %i.og, %_ZL11MyIntersectRK12btDbvtAabbMmS1_RK11btTransformf.exit.thread.i ] ; 8 uses
  %i.iu = phi i8 [ 0, %bb.ab ], [ %i.oh, %_ZL11MyIntersectRK12btDbvtAabbMmS1_RK11btTransformf.exit.thread.i ] ; 9 uses
  %i.iv = phi i32 [ 128, %bb.ab ], [ %i.oi, %_ZL11MyIntersectRK12btDbvtAabbMmS1_RK11btTransformf.exit.thread.i ] ; 9 uses
  %.pre.i.i = phi i32 [ 128, %bb.ab ], [ %i.oj, %_ZL11MyIntersectRK12btDbvtAabbMmS1_RK11btTransformf.exit.thread.i ] ; 12 uses
  %i.iw = phi ptr [ %6, %bb.ab ], [ %i.ok, %_ZL11MyIntersectRK12btDbvtAabbMmS1_RK11btTransformf.exit.thread.i ] ; 13 uses
  %.046.i = phi i32 [ 1, %bb.ab ], [ %.147.i, %_ZL11MyIntersectRK12btDbvtAabbMmS1_RK11btTransformf.exit.thread.i ] ; 7 uses
  %.044.i = phi i32 [ 124, %bb.ab ], [ %.2.i, %_ZL11MyIntersectRK12btDbvtAabbMmS1_RK11btTransformf.exit.thread.i ] ; 8 uses
  %i.ix = add nsw i32 %.046.i, -1                 ; 9 uses
  %i.iy = sext i32 %i.ix to i64                   ; 4 uses
  %i.iz = getelementptr inbounds [16 x i8], ptr %i.iw, i64 %i.iy ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.iz, align 8, !tbaa !120 ; 11 uses
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %.sroa.15.0.copyload.i = load ptr, ptr %.sroa.15.0..sroa_idx.i, align 8, !tbaa !120 ; 12 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.sroa.15.0.copyload.i, i64 16
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.15.0.copyload.i, i64 20
  %i.jc = getelementptr inbounds nuw i8, ptr %.sroa.15.0.copyload.i, i64 4
  %i.jd = getelementptr inbounds nuw i8, ptr %.sroa.15.0.copyload.i, i64 24
  %i.je = load float, ptr %i.jd, align 4, !tbaa !96 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.sroa.15.0.copyload.i, i64 8
  %i.jg = load float, ptr %i.jf, align 4, !tbaa !96 ; 2 uses
  %i.jh = fsub float %i.je, %i.jg
  %i.ji = fmul float %i.jh, 5.000000e-01
  %29 = fadd float %i.ji, 0.000000e+00            ; 2 uses
  %i.jj = fadd float %i.je, %i.jg
  %30 = fmul float %i.jj, 5.000000e-01            ; 3 uses
  %i.jk = load <2 x float>, ptr %i.ja, align 4, !tbaa !96 ; 3 uses
  %i.jl = load float, ptr %i.jb, align 4, !tbaa !96
  %i.jm = load <2 x float>, ptr %.sroa.15.0.copyload.i, align 4, !tbaa !96 ; 3 uses
  %i.jn = load float, ptr %i.jc, align 4, !tbaa !96
  %foldExtExtBinop = fsub <2 x float> %i.jk, %i.jm
  %i.jo = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.jp = fsub float %i.jl, %i.jn
  %i.jq = fmul float %i.jo, 5.000000e-01
  %i.jr = fmul float %i.jp, 5.000000e-01
  %i.js = insertelement <2 x float> %i.jk, float %i.jq, i64 1
  %i.jt = insertelement <2 x float> %i.jm, float 0.000000e+00, i64 1
  %i.ju = fadd <2 x float> %i.js, %i.jt           ; 2 uses
  %i.jv = shufflevector <2 x float> %i.jk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.jw = insertelement <2 x float> %i.jv, float %i.jr, i64 1
  %i.jx = shufflevector <2 x float> %i.jm, <2 x float> <float poison, float 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.jy = fadd <2 x float> %i.jw, %i.jx           ; 2 uses
  %i.jz = fmul <2 x float> %i.ju, <float 5.000000e-01, float 1.000000e+00>
  %i.ka = shufflevector <2 x float> %i.jz, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.kb = fmul <2 x float> %i.jy, <float 5.000000e-01, float 1.000000e+00>
  %i.kc = shufflevector <2 x float> %i.kb, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.kd = fmul <4 x float> %i.in, %i.kc
  %i.ke = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ka, <4 x float> %i.ih, <4 x float> %i.kd) ; 3 uses
  %i.kf = extractelement <4 x float> %i.ke, i64 0
  %31 = call noundef float @llvm.fmuladd.f32(float %30, float %i.fv, float %i.kf)
  %i.kg = extractelement <4 x float> %i.ke, i64 1
  %32 = call noundef float @llvm.fmuladd.f32(float %30, float %i.gm, float %i.kg)
  %i.kh = fadd float %i.go, %31                   ; 2 uses
  %33 = extractelement <2 x float> %i.jy, i64 1   ; 2 uses
  %34 = fmul float %i.hy, %33
  %35 = fmul float %i.ib, %33
  %36 = shufflevector <2 x float> %i.ju, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>
  %37 = insertelement <4 x float> %36, float %30, i64 0
  %38 = insertelement <4 x float> %37, float %29, i64 1
  %i.ki = shufflevector <4 x float> %i.ke, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.kj = insertelement <4 x float> %i.ki, float %34, i64 2
  %i.kk = insertelement <4 x float> %i.kj, float %35, i64 3
  %i.kl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %38, <4 x float> %i.iq, <4 x float> %i.kk) ; 3 uses
  %39 = shufflevector <4 x float> %i.kl, <4 x float> poison, <2 x i32> <i32 poison, i32 0>
  %40 = insertelement <2 x float> %39, float %32, i64 0
  %41 = fadd <2 x float> %28, %40                 ; 2 uses
  %i.km = insertelement <2 x float> poison, float %29, i64 0
  %i.kn = shufflevector <2 x float> %i.km, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ko = shufflevector <4 x float> %i.kl, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.kp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kn, <2 x float> %i.id, <2 x float> %i.ko) ; 2 uses
  %i.kq = fsub <2 x float> %41, %i.kp
  %i.kr = extractelement <4 x float> %i.kl, i64 1 ; 2 uses
  %i.ks = fadd float %i.kr, %i.kh
  %42 = fadd <2 x float> %i.kp, %41
  %i.kt = fsub <2 x float> %i.kq, %i.il           ; 2 uses
  %i.ku = fadd float %i.gs, %i.ks
  %43 = fadd <2 x float> %i.il, %42               ; 2 uses
  %i.kv = load float, ptr %.sroa.0.0.copyload.i, align 4, !tbaa !96
  %i.kw = fcmp ugt float %i.kv, %i.ku
  br i1 %i.kw, label %_ZL11MyIntersectRK12btDbvtAabbMmS1_RK11btTransformf.exit.thread.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.kx = fsub float %i.kh, %i.kr
  %i.ky = fsub float %i.kx, %i.gs
  %i.kz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16
  %i.la = load float, ptr %i.kz, align 4, !tbaa !96
  %i.lb = fcmp ult float %i.la, %i.ky
  br i1 %i.lb, label %_ZL11MyIntersectRK12btDbvtAabbMmS1_RK11btTransformf.exit.thread.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.lc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 4
  %i.ld = load float, ptr %i.lc, align 4, !tbaa !96
  %44 = extractelement <2 x float> %43, i64 0
  %i.le = fcmp ugt float %i.ld, %44
  br i1 %i.le, label %_ZL11MyIntersectRK12btDbvtAabbMmS1_RK11btTransformf.exit.thread.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.lf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 20
  %i.lg = load float, ptr %i.lf, align 4, !tbaa !96
  %i.lh = extractelement <2 x float> %i.kt, i64 0
  %i.li = fcmp ult float %i.lg, %i.lh
  br i1 %i.li, label %_ZL11MyIntersectRK12btDbvtAabbMmS1_RK11btTransformf.exit.thread.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.lj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8
  %i.lk = load float, ptr %i.lj, align 4, !tbaa !96
  %45 = extractelement <2 x float> %43, i64 1
  %i.ll = fcmp ugt float %i.lk, %45
  br i1 %i.ll, label %_ZL11MyIntersectRK12btDbvtAabbMmS1_RK11btTransformf.exit.thread.i, label %_ZL11MyIntersectRK12btDbvtAabbMmS1_RK11btTransformf.exit.i

_ZL11MyIntersectRK12btDbvtAabbMmS1_RK11btTransformf.exit.i: ; preds = %bb.ag
  %i.lm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 24
  %i.ln = load float, ptr %i.lm, align 4, !tbaa !96
  %i.lo = extractelement <2 x float> %i.kt, i64 1
  %i.lp = fcmp ult float %i.ln, %i.lo
  br i1 %i.lp, label %_ZL11MyIntersectRK12btDbvtAabbMmS1_RK11btTransformf.exit.thread.i, label %bb.ah

bb.ah:                                            ; preds = %_ZL11MyIntersectRK12btDbvtAabbMmS1_RK11btTransformf.exit.i
  %i.lq = icmp sgt i32 %i.ix, %.044.i
  br i1 %i.lq, label %bb.ai, label %bb.ao

bb.ai:                                            ; preds = %bb.ah
  %i.lr = shl nsw i32 %.pre.i.i, 1                ; 8 uses
  %i.ls = icmp sgt i32 %i.lr, %.pre.i.i
  %i.lt = icmp slt i32 %i.iv, %i.lr
  %or.cond86.i = select i1 %i.ls, i1 %i.lt, i1 false
  br i1 %or.cond86.i, label %bb.aj, label %.loopexit.i

bb.aj:                                            ; preds = %bb.ai
  %i.lu = zext nneg i32 %i.lr to i64
  %i.lv = shl nuw nsw i64 %i.lu, 4
  %i.lw = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.lv, i32 noundef 16)
          to label %.noexc54.i unwind label %bb.an ; 8 uses

.noexc54.i:                                       ; preds = %bb.aj
  %wide.trip.count.i.i.i.i = zext nneg i32 %.pre.i.i to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i.i, 1
  %i.lx = icmp eq i32 %.pre.i.i, 1
  br i1 %i.lx, label %.epil.preheader, label %.noexc54.i.new

.noexc54.i.new:                                   ; preds = %.noexc54.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i.i, 2147483646
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %.noexc54.i.new
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.noexc54.i.new ], [ %indvars.iv.next.i.i.i.i.1, %bb.ak ] ; 4 uses
  %niter = phi i64 [ 0, %.noexc54.i.new ], [ %niter.next.1, %bb.ak ]
  %i.ly = getelementptr inbounds nuw [16 x i8], ptr %i.lw, i64 %indvars.iv.i.i.i.i
  %i.lz = getelementptr inbounds nuw [16 x i8], ptr %i.iw, i64 %indvars.iv.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ly, ptr noundef nonnull align 8 dereferenceable(16) %i.lz, i64 16, i1 false), !tbaa.struct !121
  %indvars.iv.next.i.i.i.i = or disjoint i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.ma = getelementptr inbounds nuw [16 x i8], ptr %i.lw, i64 %indvars.iv.next.i.i.i.i
  %i.mb = getelementptr inbounds nuw [16 x i8], ptr %i.iw, i64 %indvars.iv.next.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ma, ptr noundef nonnull align 8 dereferenceable(16) %i.mb, i64 16, i1 false), !tbaa.struct !121
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20btAlignedObjectArrayIN6btDbvt6sStkNNEE4copyEiiPS1_.exit.i.i.i.loopexit.unr-lcssa, label %bb.ak, !llvm.loop !122

_ZNK20btAlignedObjectArrayIN6btDbvt6sStkNNEE4copyEiiPS1_.exit.i.i.i.loopexit.unr-lcssa: ; preds = %bb.ak
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20btAlignedObjectArrayIN6btDbvt6sStkNNEE4copyEiiPS1_.exit.i.i.i.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20btAlignedObjectArrayIN6btDbvt6sStkNNEE4copyEiiPS1_.exit.i.i.i.loopexit.unr-lcssa, %.noexc54.i
  %indvars.iv.i.i.i.i.epil.init = phi i64 [ 0, %.noexc54.i ], [ %indvars.iv.next.i.i.i.i.1, %_ZNK20btAlignedObjectArrayIN6btDbvt6sStkNNEE4copyEiiPS1_.exit.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod312 = trunc i32 %.pre.i.i to i1
  call void @llvm.assume(i1 %lcmp.mod312)
  %i.mc = getelementptr inbounds nuw [16 x i8], ptr %i.lw, i64 %indvars.iv.i.i.i.i.epil.init
  %i.md = getelementptr inbounds nuw [16 x i8], ptr %i.iw, i64 %indvars.iv.i.i.i.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mc, ptr noundef nonnull align 8 dereferenceable(16) %i.md, i64 16, i1 false), !tbaa.struct !121
  br label %_ZNK20btAlignedObjectArrayIN6btDbvt6sStkNNEE4copyEiiPS1_.exit.i.i.i.loopexit

_ZNK20btAlignedObjectArrayIN6btDbvt6sStkNNEE4copyEiiPS1_.exit.i.i.i.loopexit: ; preds = %_ZNK20btAlignedObjectArrayIN6btDbvt6sStkNNEE4copyEiiPS1_.exit.i.i.i.loopexit.unr-lcssa, %.epil.preheader
  %i.me = trunc nuw i8 %i.iu to i1
  br i1 %i.me, label %bb.al, label %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE10deallocateEv.exit.i.i.i

bb.al:                                            ; preds = %_ZNK20btAlignedObjectArrayIN6btDbvt6sStkNNEE4copyEiiPS1_.exit.i.i.i.loopexit
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.iw)
          to label %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE10deallocateEv.exit.i.i.i unwind label %bb.an

_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE10deallocateEv.exit.i.i.i: ; preds = %bb.al, %_ZNK20btAlignedObjectArrayIN6btDbvt6sStkNNEE4copyEiiPS1_.exit.i.i.i.loopexit
  store i8 1, ptr %i.hm, align 8, !tbaa !116
  store ptr %i.lw, ptr %i.hn, align 8, !tbaa !117
  store i32 %i.lr, ptr %i.hp, align 8, !tbaa !119
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE10deallocateEv.exit.i.i.i, %bb.ai
  %i.mf = phi ptr [ %i.ir, %bb.ai ], [ %i.lw, %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE10deallocateEv.exit.i.i.i ]
  %i.mg = phi ptr [ %i.is, %bb.ai ], [ %i.lw, %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE10deallocateEv.exit.i.i.i ]
  %i.mh = phi ptr [ %i.it, %bb.ai ], [ %i.lw, %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE10deallocateEv.exit.i.i.i ]
  %i.mi = phi i8 [ %i.iu, %bb.ai ], [ 1, %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE10deallocateEv.exit.i.i.i ]
  %i.mj = phi i32 [ %i.iv, %bb.ai ], [ %i.lr, %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE10deallocateEv.exit.i.i.i ]
  %i.mk = phi ptr [ %i.iw, %bb.ai ], [ %i.lw, %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE10deallocateEv.exit.i.i.i ]
  store i32 %i.lr, ptr %i.ho, align 4, !tbaa !118
  %i.ml = add nsw i32 %i.lr, -4
  br label %bb.ao

bb.am:                                            ; preds = %bb.au
  %i.mm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.an:                                            ; preds = %bb.al, %bb.aj
  %i.mn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ao:                                            ; preds = %.loopexit.i, %bb.ah
  %i.mo = phi ptr [ %i.mf, %.loopexit.i ], [ %i.ir, %bb.ah ] ; 9 uses
  %i.mp = phi ptr [ %i.mg, %.loopexit.i ], [ %i.is, %bb.ah ] ; 7 uses
  %i.mq = phi ptr [ %i.mh, %.loopexit.i ], [ %i.it, %bb.ah ] ; 5 uses
  %i.mr = phi i8 [ %i.mi, %.loopexit.i ], [ %i.iu, %bb.ah ] ; 4 uses
  %i.ms = phi i32 [ %i.mj, %.loopexit.i ], [ %i.iv, %bb.ah ] ; 4 uses
  %i.mt = phi i32 [ %i.lr, %.loopexit.i ], [ %.pre.i.i, %bb.ah ] ; 4 uses
  %i.mu = phi ptr [ %i.mk, %.loopexit.i ], [ %i.iw, %bb.ah ]
  %.145.i = phi i32 [ %i.ml, %.loopexit.i ], [ %.044.i, %bb.ah ] ; 4 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 48 ; 4 uses
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !56
  %.not77.i = icmp eq ptr %i.mw, null
  %i.mx = getelementptr inbounds nuw i8, ptr %.sroa.15.0.copyload.i, i64 48 ; 4 uses
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !56
  %.not78.i = icmp eq ptr %i.my, null             ; 2 uses
  br i1 %.not77.i, label %bb.as, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.mz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 40 ; 2 uses
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !56 ; 2 uses
  br i1 %.not78.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.nb = getelementptr inbounds nuw i8, ptr %.sroa.15.0.copyload.i, i64 40 ; 2 uses
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !56
  %i.nd = getelementptr inbounds [16 x i8], ptr %i.mq, i64 %i.iy ; 2 uses
  store ptr %i.na, ptr %i.nd, align 8, !tbaa !120
  %.sroa.472.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.nd, i64 8
  store ptr %i.nc, ptr %.sroa.472.0..sroa_idx.i, align 8, !tbaa !120
  %i.ne = load ptr, ptr %i.mv, align 8, !tbaa !56
  %i.nf = load ptr, ptr %i.nb, align 8, !tbaa !56
  %i.ng = sext i32 %.046.i to i64
  %i.nh = getelementptr [16 x i8], ptr %i.mq, i64 %i.ng ; 6 uses
  store ptr %i.ne, ptr %i.nh, align 8, !tbaa !120
  %.sroa.470.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.nh, i64 8
  store ptr %i.nf, ptr %.sroa.470.0..sroa_idx.i, align 8, !tbaa !120
  %i.ni = load ptr, ptr %i.mz, align 8, !tbaa !56
  %i.nj = load ptr, ptr %i.mx, align 8, !tbaa !56
  %i.nk = getelementptr i8, ptr %i.nh, i64 16
  store ptr %i.ni, ptr %i.nk, align 8, !tbaa !120
  %.sroa.468.0..sroa_idx.i = getelementptr i8, ptr %i.nh, i64 24
  store ptr %i.nj, ptr %.sroa.468.0..sroa_idx.i, align 8, !tbaa !120
  %i.nl = load ptr, ptr %i.mv, align 8, !tbaa !56
  %i.nm = load ptr, ptr %i.mx, align 8, !tbaa !56
  %i.nn = add nsw i32 %.046.i, 3
  %i.no = getelementptr i8, ptr %i.nh, i64 32
  store ptr %i.nl, ptr %i.no, align 8, !tbaa !120
  %.sroa.466.0..sroa_idx.i = getelementptr i8, ptr %i.nh, i64 40
  store ptr %i.nm, ptr %.sroa.466.0..sroa_idx.i, align 8, !tbaa !120
  br label %_ZL11MyIntersectRK12btDbvtAabbMmS1_RK11btTransformf.exit.thread.i

bb.ar:                                            ; preds = %bb.ap
  %i.np = getelementptr inbounds [16 x i8], ptr %i.mp, i64 %i.iy ; 2 uses
  store ptr %i.na, ptr %i.np, align 8, !tbaa !120
  %.sroa.464.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.np, i64 8
  store ptr %.sroa.15.0.copyload.i, ptr %.sroa.464.0..sroa_idx.i, align 8, !tbaa !120
  %i.nq = load ptr, ptr %i.mv, align 8, !tbaa !56
  %i.nr = add nsw i32 %.046.i, 1
  %i.ns = sext i32 %.046.i to i64
  %i.nt = getelementptr inbounds [16 x i8], ptr %i.mp, i64 %i.ns ; 2 uses
  store ptr %i.nq, ptr %i.nt, align 8, !tbaa !120
  %.sroa.462.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.nt, i64 8
  store ptr %.sroa.15.0.copyload.i, ptr %.sroa.462.0..sroa_idx.i, align 8, !tbaa !120
  br label %_ZL11MyIntersectRK12btDbvtAabbMmS1_RK11btTransformf.exit.thread.i

bb.as:                                            ; preds = %bb.ao
  br i1 %.not78.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.nu = getelementptr inbounds nuw i8, ptr %.sroa.15.0.copyload.i, i64 40
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !56
  %i.nw = getelementptr inbounds [16 x i8], ptr %i.mo, i64 %i.iy ; 2 uses
  store ptr %.sroa.0.0.copyload.i, ptr %i.nw, align 8, !tbaa !120
  %.sroa.460.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.nw, i64 8
  store ptr %i.nv, ptr %.sroa.460.0..sroa_idx.i, align 8, !tbaa !120
  %i.nx = load ptr, ptr %i.mx, align 8, !tbaa !56
  %i.ny = add nsw i32 %.046.i, 1
  %i.nz = sext i32 %.046.i to i64
  %i.oa = getelementptr inbounds [16 x i8], ptr %i.mo, i64 %i.nz ; 2 uses
  store ptr %.sroa.0.0.copyload.i, ptr %i.oa, align 8, !tbaa !120
  %.sroa.4.0..sroa_idx.i131 = getelementptr inbounds nuw i8, ptr %i.oa, i64 8
  store ptr %i.nx, ptr %.sroa.4.0..sroa_idx.i131, align 8, !tbaa !120
  br label %_ZL11MyIntersectRK12btDbvtAabbMmS1_RK11btTransformf.exit.thread.i

bb.au:                                            ; preds = %bb.as
  %i.ob = load ptr, ptr %9, align 8, !tbaa !9
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 16
  %i.od = load ptr, ptr %i.oc, align 8
  invoke void %i.od(ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef nonnull %.sroa.0.0.copyload.i, ptr noundef nonnull %.sroa.15.0.copyload.i)
          to label %_ZL11MyIntersectRK12btDbvtAabbMmS1_RK11btTransformf.exit.thread.i unwind label %bb.am

_ZL11MyIntersectRK12btDbvtAabbMmS1_RK11btTransformf.exit.thread.i: ; preds = %bb.au, %bb.at, %bb.ar, %bb.aq, %_ZL11MyIntersectRK12btDbvtAabbMmS1_RK11btTransformf.exit.i, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac
  %i.oe = phi ptr [ %i.mo, %bb.aq ], [ %i.mo, %bb.ar ], [ %i.mo, %bb.at ], [ %i.mo, %bb.au ], [ %i.ir, %_ZL11MyIntersectRK12btDbvtAabbMmS1_RK11btTransformf.exit.i ], [ %i.ir, %bb.ag ], [ %i.ir, %bb.af ], [ %i.ir, %bb.ae ], [ %i.ir, %bb.ad ], [ %i.ir, %bb.ac ] ; 3 uses
  %i.of = phi ptr [ %i.mp, %bb.aq ], [ %i.mp, %bb.ar ], [ %i.mo, %bb.at ], [ %i.mp, %bb.au ], [ %i.is, %_ZL11MyIntersectRK12btDbvtAabbMmS1_RK11btTransformf.exit.i ], [ %i.is, %bb.ag ], [ %i.is, %bb.af ], [ %i.is, %bb.ae ], [ %i.is, %bb.ad ], [ %i.is, %bb.ac ]
  %i.og = phi ptr [ %i.mq, %bb.aq ], [ %i.mp, %bb.ar ], [ %i.mo, %bb.at ], [ %i.mq, %bb.au ], [ %i.it, %_ZL11MyIntersectRK12btDbvtAabbMmS1_RK11btTransformf.exit.i ], [ %i.it, %bb.ag ], [ %i.it, %bb.af ], [ %i.it, %bb.ae ], [ %i.it, %bb.ad ], [ %i.it, %bb.ac ]
  %i.oh = phi i8 [ %i.mr, %bb.aq ], [ %i.mr, %bb.ar ], [ %i.mr, %bb.at ], [ %i.mr, %bb.au ], [ %i.iu, %_ZL11MyIntersectRK12btDbvtAabbMmS1_RK11btTransformf.exit.i ], [ %i.iu, %bb.ag ], [ %i.iu, %bb.af ], [ %i.iu, %bb.ae ], [ %i.iu, %bb.ad ], [ %i.iu, %bb.ac ] ; 2 uses
  %i.oi = phi i32 [ %i.ms, %bb.aq ], [ %i.ms, %bb.ar ], [ %i.ms, %bb.at ], [ %i.ms, %bb.au ], [ %i.iv, %_ZL11MyIntersectRK12btDbvtAabbMmS1_RK11btTransformf.exit.i ], [ %i.iv, %bb.ag ], [ %i.iv, %bb.af ], [ %i.iv, %bb.ae ], [ %i.iv, %bb.ad ], [ %i.iv, %bb.ac ]
  %i.oj = phi i32 [ %i.mt, %bb.aq ], [ %i.mt, %bb.ar ], [ %i.mt, %bb.at ], [ %i.mt, %bb.au ], [ %.pre.i.i, %_ZL11MyIntersectRK12btDbvtAabbMmS1_RK11btTransformf.exit.i ], [ %.pre.i.i, %bb.ag ], [ %.pre.i.i, %bb.af ], [ %.pre.i.i, %bb.ae ], [ %.pre.i.i, %bb.ad ], [ %.pre.i.i, %bb.ac ]
  %i.ok = phi ptr [ %i.mq, %bb.aq ], [ %i.mp, %bb.ar ], [ %i.mo, %bb.at ], [ %i.mu, %bb.au ], [ %i.iw, %_ZL11MyIntersectRK12btDbvtAabbMmS1_RK11btTransformf.exit.i ], [ %i.iw, %bb.ag ], [ %i.iw, %bb.af ], [ %i.iw, %bb.ae ], [ %i.iw, %bb.ad ], [ %i.iw, %bb.ac ]
  %.147.i = phi i32 [ %i.nn, %bb.aq ], [ %i.nr, %bb.ar ], [ %i.ny, %bb.at ], [ %i.ix, %bb.au ], [ %i.ix, %_ZL11MyIntersectRK12btDbvtAabbMmS1_RK11btTransformf.exit.i ], [ %i.ix, %bb.ag ], [ %i.ix, %bb.af ], [ %i.ix, %bb.ae ], [ %i.ix, %bb.ad ], [ %i.ix, %bb.ac ] ; 2 uses
  %.2.i = phi i32 [ %.145.i, %bb.aq ], [ %.145.i, %bb.ar ], [ %.145.i, %bb.at ], [ %.145.i, %bb.au ], [ %.044.i, %_ZL11MyIntersectRK12btDbvtAabbMmS1_RK11btTransformf.exit.i ], [ %.044.i, %bb.ag ], [ %.044.i, %bb.af ], [ %.044.i, %bb.ae ], [ %.044.i, %bb.ad ], [ %.044.i, %bb.ac ]
end_hunk_0
