Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btSoftBodyHelpers?download=true
inline.NumInlined: 1764
inline.NumDeleted: 610
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_ZN17btSoftBodyHelpers4DrawEP10btSoftBodyP12btIDebugDrawi:bb.a
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %indvars.iv.next
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cc, ptr noundef nonnull align 8 dereferenceable(16) %i.cb, i64 16, i1 false), !tbaa.struct !46
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !251

bb.e:                                             ; preds = %bb.d
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %lcmp.mod1478 = trunc i32 %i.bf to i1
  call void @llvm.assume(i1 %lcmp.mod1478)
  %i.ce = load ptr, ptr %i.f, align 8, !tbaa !266
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv1405
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !268
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 48
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !274
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv.epil.init
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !45
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %indvars.iv.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cm, ptr noundef nonnull align 8 dereferenceable(16) %i.cl, i64 16, i1 false), !tbaa.struct !46
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.lr.ph.epil.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #25
  store i8 1, ptr %i.l, align 8, !tbaa !40
  store ptr null, ptr %i.m, align 8, !tbaa !41
  store i32 0, ptr %i.n, align 4, !tbaa !42
  store i32 0, ptr %i.o, align 8, !tbaa !43
  store i8 1, ptr %i.p, align 8, !tbaa !51
  store ptr null, ptr %i.q, align 8, !tbaa !52
  store i32 0, ptr %i.r, align 4, !tbaa !53
  store i32 0, ptr %i.s, align 8, !tbaa !54
  store i8 1, ptr %i.t, align 8, !tbaa !275
  store ptr null, ptr %i.u, align 8, !tbaa !58
  store i32 0, ptr %i.v, align 4, !tbaa !276
  store i32 0, ptr %i.w, align 8, !tbaa !277
  store i8 1, ptr %i.x, align 8, !tbaa !51
  store ptr null, ptr %i.y, align 8, !tbaa !52
  store i32 0, ptr %i.z, align 4, !tbaa !53
  store i32 0, ptr %i.aa, align 8, !tbaa !54
  %i.cn = invoke noundef float @_ZN20btConvexHullComputer7computeEPKvbiiff(ptr noundef nonnull align 8 dereferenceable(128) %44, ptr noundef nonnull %i.bj, i1 noundef zeroext false, i32 noundef 16, i32 noundef %i.bf, float noundef 0.000000e+00, float noundef 0.000000e+00)
          to label %_ZN20btConvexHullComputer7computeEPKfiiff.exit.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN20btConvexHullComputer7computeEPKfiiff.exit.preheader: ; preds = %._crit_edge
  %i.co = load i32, ptr %i.z, align 4, !tbaa !53  ; 2 uses
  %i.cp = icmp sgt i32 %i.co, 0
  br i1 %i.cp, label %.lr.ph1364, label %.loopexit1469

.loopexit1469:                                    ; preds = %_ZN20btConvexHullComputer7computeEPKfiiff.exit, %_ZN20btConvexHullComputer7computeEPKfiiff.exit.preheader
  call void @_ZN20btConvexHullComputerD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %44) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #25
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.bj)
          to label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %.loopexit1469
  %i.cq = landingpad { ptr, i32 }
          catch ptr null
  %i.cr = extractvalue { ptr, i32 } %i.cq, 0
  call void @__clang_call_terminate(ptr %i.cr) #26
  unreachable

_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit:   ; preds = %.loopexit1469
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #25
  %.pre1443 = load i32, ptr %i.c, align 4, !tbaa !265
  br label %bb.i

.lr.ph1364:                                       ; preds = %_ZN20btConvexHullComputer7computeEPKfiiff.exit.preheader, %_ZN20btConvexHullComputer7computeEPKfiiff.exit
  %i.cs = phi i32 [ %i.ee, %_ZN20btConvexHullComputer7computeEPKfiiff.exit ], [ %i.co, %_ZN20btConvexHullComputer7computeEPKfiiff.exit.preheader ]
  %indvars.iv1402 = phi i64 [ %indvars.iv.next1403, %_ZN20btConvexHullComputer7computeEPKfiiff.exit ], [ 0, %_ZN20btConvexHullComputer7computeEPKfiiff.exit.preheader ] ; 2 uses
  %i.ct = load ptr, ptr %i.y, align 8, !tbaa !52
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv1402
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !59
  %i.cw = load ptr, ptr %i.u, align 8, !tbaa !58
  %i.cx = sext i32 %i.cv to i64
  %i.cy = getelementptr inbounds [12 x i8], ptr %i.cw, i64 %i.cx ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !279
  %i.db = sext i32 %i.da to i64
  %.idx = mul nsw i64 %i.db, 12                   ; 2 uses
  %i.dc = getelementptr inbounds i8, ptr %i.cy, i64 %.idx ; 3 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !280
  %i.de = sext i32 %i.dd to i64
  %.idx1399 = mul nsw i64 %i.de, 12               ; 2 uses
  %i.df = sub nsw i64 0, %.idx1399
  %.not2241356 = icmp eq i64 %.idx, %i.df
  br i1 %.not2241356, label %_ZN20btConvexHullComputer7computeEPKfiiff.exit, label %.lr.ph1361.preheader

.lr.ph1361.preheader:                             ; preds = %.lr.ph1364
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !281
  %i.di = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !281
  %i.dk = getelementptr inbounds i8, ptr %i.dc, i64 %.idx1399
  br label %.lr.ph1361

.lr.ph1361:                                       ; preds = %.lr.ph1361.preheader, %bb.g
  %.01991359 = phi i32 [ %i.dm, %bb.g ], [ %i.dh, %.lr.ph1361.preheader ] ; 2 uses
  %.02001358 = phi i32 [ %.01991359, %bb.g ], [ %i.dj, %.lr.ph1361.preheader ]
  %.02011357 = phi ptr [ %i.ed, %bb.g ], [ %i.dk, %.lr.ph1361.preheader ] ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.02011357, i64 8
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !281 ; 2 uses
  %i.dn = load ptr, ptr %i.m, align 8, !tbaa !41  ; 3 uses
  %i.do = sext i32 %.02001358 to i64
  %i.dp = getelementptr inbounds [16 x i8], ptr %i.dn, i64 %i.do
  %i.dq = sext i32 %.01991359 to i64
  %i.dr = getelementptr inbounds [16 x i8], ptr %i.dn, i64 %i.dq
  %i.ds = sext i32 %i.dm to i64
  %i.dt = getelementptr inbounds [16 x i8], ptr %i.dn, i64 %i.ds
  %i.du = load ptr, ptr %1, align 8, !tbaa !61
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 72
  %i.dw = load ptr, ptr %i.dv, align 8
  invoke void %i.dw(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.dp, ptr noundef nonnull align 4 dereferenceable(16) %i.dr, ptr noundef nonnull align 4 dereferenceable(16) %i.dt, ptr noundef nonnull align 4 dereferenceable(16) %42, float noundef 1.000000e+00)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %.lr.ph1361
  %i.dx = getelementptr inbounds nuw i8, ptr %.02011357, i64 4
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !279
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds [12 x i8], ptr %.02011357, i64 %i.dz ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !280
  %i.ec = sext i32 %i.eb to i64
  %i.ed = getelementptr inbounds [12 x i8], ptr %i.ea, i64 %i.ec ; 2 uses
  %.not224 = icmp eq ptr %i.ed, %i.cy
  br i1 %.not224, label %_ZN20btConvexHullComputer7computeEPKfiiff.exit.loopexit, label %.lr.ph1361

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph1361, %._crit_edge
  %lpad.loopexit.split-lp1477 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN20btConvexHullComputerD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %44) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #25
  br label %bb.h

_ZN20btConvexHullComputer7computeEPKfiiff.exit.loopexit: ; preds = %bb.g
  %.pre = load i32, ptr %i.z, align 4, !tbaa !53
  br label %_ZN20btConvexHullComputer7computeEPKfiiff.exit

_ZN20btConvexHullComputer7computeEPKfiiff.exit:   ; preds = %_ZN20btConvexHullComputer7computeEPKfiiff.exit.loopexit, %.lr.ph1364
  %i.ee = phi i32 [ %.pre, %_ZN20btConvexHullComputer7computeEPKfiiff.exit.loopexit ], [ %i.cs, %.lr.ph1364 ] ; 2 uses
  %indvars.iv.next1403 = add nuw nsw i64 %indvars.iv1402, 1 ; 2 uses
  %i.ef = sext i32 %i.ee to i64
  %i.eg = icmp slt i64 %indvars.iv.next1403, %i.ef
  br i1 %i.eg, label %.lr.ph1364, label %.loopexit1469, !llvm.loop !252

common.resume:                                    ; preds = %bb.cy, %bb.cr, %bb.ck, %bb.cd, %bb.bv, %bb.bo, %bb.bh, %bb.ba, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.h ], [ %i.aep, %bb.ba ], [ %i.agt, %bb.bh ], [ %i.aiv, %bb.bo ], [ %i.ajm, %bb.bv ], [ %i.alp, %bb.cd ], [ %i.amf, %bb.ck ], [ %i.amt, %bb.cr ], [ %i.aop, %bb.cy ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.e
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp1477, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.cd, %bb.e ]
  call void @_ZN20btAlignedObjectArrayI9btVector3ED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %43) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #25
  br label %common.resume

bb.i:                                             ; preds = %bb.c, %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit
  %i.eh = phi i32 [ %i.ab, %bb.c ], [ %.pre1443, %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit ] ; 2 uses
  %indvars.iv.next1406 = add nuw nsw i64 %indvars.iv1405, 1 ; 2 uses
  %i.ei = sext i32 %i.eh to i64
  %i.ej = icmp slt i64 %indvars.iv.next1406, %i.ei
  br i1 %i.ej, label %bb.c, label %.loopexit1354, !llvm.loop !253

bb.j:                                             ; preds = %bb.a
  %i.ek = and i32 %2, 1
  %.not211 = icmp eq i32 %i.ek, 0
  br i1 %.not211, label %.loopexit1351, label %.preheader1350

.preheader1350:                                   ; preds = %bb.j
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 932 ; 2 uses
  %i.em = load i32, ptr %i.el, align 4, !tbaa !64 ; 2 uses
  %i.en = icmp sgt i32 %i.em, 0
  br i1 %i.en, label %.lr.ph1369, label %.loopexit1351

.lr.ph1369:                                       ; preds = %.preheader1350
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.ep = getelementptr inbounds nuw i8, ptr %45, i64 8
  %i.eq = getelementptr inbounds nuw i8, ptr %46, i64 8
  %i.er = getelementptr inbounds nuw i8, ptr %48, i64 8
  %i.es = getelementptr inbounds nuw i8, ptr %49, i64 8
  %i.et = getelementptr inbounds nuw i8, ptr %51, i64 8
  %i.eu = getelementptr inbounds nuw i8, ptr %52, i64 8
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph1369, %bb.m
  %i.ev = phi i32 [ %i.em, %.lr.ph1369 ], [ %i.gg, %bb.m ]
  %indvars.iv1408 = phi i64 [ 0, %.lr.ph1369 ], [ %indvars.iv.next1409, %bb.m ] ; 2 uses
  %i.ew = load ptr, ptr %i.eo, align 8, !tbaa !65
  %i.ex = getelementptr inbounds nuw [256 x i8], ptr %i.ew, i64 %indvars.iv1408 ; 4 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !282
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 20
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !284
  %i.fc = and i32 %i.fb, 1
  %i.fd = icmp eq i32 %i.fc, 0
  br i1 %i.fd, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #25
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ex, i64 16 ; 6 uses
  %103 = load float, ptr %i.fe, align 8, !tbaa !19
  %104 = fadd float %103, -1.000000e-01
  %105 = getelementptr inbounds nuw i8, ptr %i.ex, i64 20 ; 2 uses
  %106 = load float, ptr %105, align 4, !tbaa !19
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ex, i64 24 ; 6 uses
  %i.fg = load float, ptr %i.ff, align 8, !tbaa !19
  %.sroa.0.0.vec.insert.i238 = insertelement <2 x float> poison, float %104, i64 0
  %.sroa.0.4.vec.insert.i239 = insertelement <2 x float> %.sroa.0.0.vec.insert.i238, float %106, i64 1
  %.sroa.3.12.vec.insert.i240 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fg, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i239, ptr %45, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i240, ptr %i.ep, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #25
  %i.fh = load <2 x float>, ptr %i.fe, align 8, !tbaa !19
  %i.fi = fadd <2 x float> %i.fh, <float 1.000000e-01, float 0.000000e+00>
  %i.fj = load float, ptr %i.ff, align 8, !tbaa !19
  %i.fk = fadd float %i.fj, 0.000000e+00
  %.sroa.3.12.vec.insert.i245 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fk, i64 0
  store <2 x float> %i.fi, ptr %46, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i245, ptr %i.eq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #25
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %47, align 16, !tbaa !19
  %i.fl = load ptr, ptr %1, align 8, !tbaa !61
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 32
  %i.fn = load ptr, ptr %i.fm, align 8
  call void %i.fn(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %45, ptr noundef nonnull align 4 dereferenceable(16) %46, ptr noundef nonnull align 4 dereferenceable(16) %47)
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #25
  %107 = load float, ptr %i.fe, align 8, !tbaa !19
  %108 = load float, ptr %105, align 4, !tbaa !19
  %109 = fadd float %108, -1.000000e-01
  %i.fo = load float, ptr %i.ff, align 8, !tbaa !19
  %.sroa.0.0.vec.insert.i248 = insertelement <2 x float> poison, float %107, i64 0
  %.sroa.0.4.vec.insert.i249 = insertelement <2 x float> %.sroa.0.0.vec.insert.i248, float %109, i64 1
  %.sroa.3.12.vec.insert.i250 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fo, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i249, ptr %48, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i250, ptr %i.er, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #25
  %i.fp = load <2 x float>, ptr %i.fe, align 8, !tbaa !19
  %i.fq = fadd <2 x float> %i.fp, <float 0.000000e+00, float 1.000000e-01>
  %i.fr = load float, ptr %i.ff, align 8, !tbaa !19
  %i.fs = fadd float %i.fr, 0.000000e+00
  %.sroa.3.12.vec.insert.i255 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fs, i64 0
  store <2 x float> %i.fq, ptr %49, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i255, ptr %i.es, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #25
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %50, align 16, !tbaa !19
  %i.ft = load ptr, ptr %1, align 8, !tbaa !61
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 32
  %i.fv = load ptr, ptr %i.fu, align 8
  call void %i.fv(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %48, ptr noundef nonnull align 4 dereferenceable(16) %49, ptr noundef nonnull align 4 dereferenceable(16) %50)
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #25
  %i.fw = load <2 x float>, ptr %i.fe, align 8, !tbaa !19
  %i.fx = load float, ptr %i.ff, align 8, !tbaa !19
  %i.fy = fadd float %i.fx, -1.000000e-01
  %.sroa.3.12.vec.insert.i260 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fy, i64 0
  store <2 x float> %i.fw, ptr %51, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i260, ptr %i.et, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #25
  %i.fz = load <2 x float>, ptr %i.fe, align 8, !tbaa !19
  %i.ga = fadd <2 x float> %i.fz, zeroinitializer
  %i.gb = load float, ptr %i.ff, align 8, !tbaa !19
  %i.gc = fadd float %i.gb, 1.000000e-01
  %.sroa.3.12.vec.insert.i265 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gc, i64 0
  store <2 x float> %i.ga, ptr %52, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i265, ptr %i.eu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #25
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %53, align 16, !tbaa !19
  %i.gd = load ptr, ptr %1, align 8, !tbaa !61
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 32
  %i.gf = load ptr, ptr %i.ge, align 8
  call void %i.gf(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %51, ptr noundef nonnull align 4 dereferenceable(16) %52, ptr noundef nonnull align 4 dereferenceable(16) %53)
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #25
  %.pre1444 = load i32, ptr %i.el, align 4, !tbaa !64
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.gg = phi i32 [ %i.ev, %bb.k ], [ %.pre1444, %bb.l ] ; 2 uses
  %indvars.iv.next1409 = add nuw nsw i64 %indvars.iv1408, 1 ; 2 uses
  %i.gh = sext i32 %i.gg to i64
  %i.gi = icmp slt i64 %indvars.iv.next1409, %i.gh
  br i1 %i.gi, label %bb.k, label %.loopexit1351, !llvm.loop !254

.loopexit1351:                                    ; preds = %bb.m, %.preheader1350, %bb.j
  %i.gj = and i32 %2, 2
  %.not212 = icmp eq i32 %i.gj, 0
  br i1 %.not212, label %.loopexit1349, label %.preheader1348

.preheader1348:                                   ; preds = %.loopexit1351
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 996 ; 2 uses
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !72 ; 2 uses
  %i.gm = icmp sgt i32 %i.gl, 0
  br i1 %i.gm, label %.lr.ph1371, label %.loopexit1349

.lr.ph1371:                                       ; preds = %.preheader1348
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 1008
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph1371, %bb.p
  %i.go = phi i32 [ %i.gl, %.lr.ph1371 ], [ %i.hg, %bb.p ]
  %indvars.iv1411 = phi i64 [ 0, %.lr.ph1371 ], [ %indvars.iv.next1412, %bb.p ] ; 2 uses
  %i.gp = load ptr, ptr %i.gn, align 8, !tbaa !73
  %i.gq = getelementptr inbounds nuw [72 x i8], ptr %i.gp, i64 %indvars.iv1411 ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !282
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 20
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !284
  %i.gv = and i32 %i.gu, 1
  %i.gw = icmp eq i32 %i.gv, 0
  br i1 %i.gw, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gq, i64 32
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !45
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gq, i64 40
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !45
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  %i.hd = load ptr, ptr %1, align 8, !tbaa !61
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 32
  %i.hf = load ptr, ptr %i.he, align 8
  call void %i.hf(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.gz, ptr noundef nonnull align 4 dereferenceable(16) %i.hc, ptr noundef nonnull align 4 dereferenceable(16) %39)
  %.pre1445 = load i32, ptr %i.gk, align 4, !tbaa !72
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.hg = phi i32 [ %i.go, %bb.n ], [ %.pre1445, %bb.o ] ; 2 uses
  %indvars.iv.next1412 = add nuw nsw i64 %indvars.iv1411, 1 ; 2 uses
  %i.hh = sext i32 %i.hg to i64
  %i.hi = icmp slt i64 %indvars.iv.next1412, %i.hh
  br i1 %i.hi, label %bb.n, label %.loopexit1349, !llvm.loop !255

.loopexit1349:                                    ; preds = %bb.p, %.preheader1348, %.loopexit1351
  %i.hj = and i32 %2, 16
  %.not213 = icmp eq i32 %i.hj, 0
  br i1 %.not213, label %.loopexit1347, label %.preheader1346

.preheader1346:                                   ; preds = %.loopexit1349
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 932 ; 2 uses
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !64 ; 2 uses
  %i.hm = icmp sgt i32 %i.hl, 0
  br i1 %i.hm, label %.lr.ph1373, label %.loopexit1347

.lr.ph1373:                                       ; preds = %.preheader1346
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.ho = getelementptr inbounds nuw i8, ptr %54, i64 8
  %i.hp = getelementptr inbounds nuw i8, ptr %55, i64 8
  %i.hq = getelementptr inbounds nuw i8, ptr %56, i64 8
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph1373, %bb.s
  %i.hr = phi i32 [ %i.hl, %.lr.ph1373 ], [ %i.ja, %bb.s ]
  %indvars.iv1414 = phi i64 [ 0, %.lr.ph1373 ], [ %indvars.iv.next1415, %bb.s ] ; 2 uses
  %i.hs = load ptr, ptr %i.hn, align 8, !tbaa !65
  %i.ht = getelementptr inbounds nuw [256 x i8], ptr %i.hs, i64 %indvars.iv1414 ; 5 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !282
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 20
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !284
  %i.hy = and i32 %i.hx, 1
  %i.hz = icmp eq i32 %i.hy, 0
  br i1 %i.hz, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ia = getelementptr inbounds nuw i8, ptr %i.ht, i64 96
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ht, i64 104
  %i.ic = load float, ptr %i.ib, align 8, !tbaa !19
  %i.id = fmul float %i.ic, 5.000000e-01          ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ht, i64 16 ; 4 uses
  %i.if = load <2 x float>, ptr %i.ia, align 8, !tbaa !19
  %i.ig = fmul <2 x float> %i.if, splat (float 5.000000e-01) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #25
  %i.ih = load <2 x float>, ptr %i.ie, align 8, !tbaa !19
  %i.ii = fadd <2 x float> %i.ig, %i.ih
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ht, i64 24 ; 2 uses
  %i.ik = load float, ptr %i.ij, align 8, !tbaa !19
  %i.il = fadd float %i.id, %i.ik
  %.sroa.3.12.vec.insert.i275 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.il, i64 0
  store <2 x float> %i.ii, ptr %54, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i275, ptr %i.ho, align 8
  %i.im = load ptr, ptr %1, align 8, !tbaa !61
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 32
  %i.io = load ptr, ptr %i.in, align 8
  call void %i.io(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.ie, ptr noundef nonnull align 4 dereferenceable(16) %54, ptr noundef nonnull align 4 dereferenceable(16) %40)
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #25
  %i.ip = load <2 x float>, ptr %i.ie, align 8, !tbaa !19
  %i.iq = fsub <2 x float> %i.ip, %i.ig
  %i.ir = load float, ptr %i.ij, align 8, !tbaa !19
  %i.is = fsub float %i.ir, %i.id
  %.sroa.3.12.vec.insert.i280 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.is, i64 0
  store <2 x float> %i.iq, ptr %55, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i280, ptr %i.hp, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #25
  %i.it = load <2 x float>, ptr %40, align 16, !tbaa !19
  %i.iu = fmul <2 x float> %i.it, splat (float 5.000000e-01)
  %i.iv = load float, ptr %i.a, align 8, !tbaa !19
  %i.iw = fmul float %i.iv, 5.000000e-01
  %.sroa.3.12.vec.insert.i285 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.iw, i64 0
  store <2 x float> %i.iu, ptr %56, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i285, ptr %i.hq, align 8
  %i.ix = load ptr, ptr %1, align 8, !tbaa !61
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 32
  %i.iz = load ptr, ptr %i.iy, align 8
  call void %i.iz(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.ie, ptr noundef nonnull align 4 dereferenceable(16) %55, ptr noundef nonnull align 4 dereferenceable(16) %56)
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #25
  %.pre1446 = load i32, ptr %i.hk, align 4, !tbaa !64
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.ja = phi i32 [ %i.hr, %bb.q ], [ %.pre1446, %bb.r ] ; 2 uses
  %indvars.iv.next1415 = add nuw nsw i64 %indvars.iv1414, 1 ; 2 uses
  %i.jb = sext i32 %i.ja to i64
  %i.jc = icmp slt i64 %indvars.iv.next1415, %i.jb
  br i1 %i.jc, label %bb.q, label %.loopexit1347, !llvm.loop !256

.loopexit1347:                                    ; preds = %bb.s, %.preheader1346, %.loopexit1349
  %i.jd = and i32 %2, 32
  %.not214 = icmp eq i32 %i.jd, 0
  br i1 %.not214, label %.loopexit1345, label %bb.t

bb.t:                                             ; preds = %.loopexit1347
  %i.je = load atomic i8, ptr @_ZGVZN17btSoftBodyHelpers4DrawEP10btSoftBodyP12btIDebugDrawiE4axis acquire, align 8
  %i.jf = icmp eq i8 %i.je, 0
  br i1 %i.jf, label %bb.u, label %bb.w, !prof !74

bb.u:                                             ; preds = %bb.t
  %i.jg = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN17btSoftBodyHelpers4DrawEP10btSoftBodyP12btIDebugDrawiE4axis) #25
  %.not215 = icmp eq i32 %i.jg, 0
  br i1 %.not215, label %bb.w, label %bb.v
end_hunk_0
begin_hunk_1_@_ZN17btSoftBodyHelpers4DrawEP10btSoftBodyP12btIDebugDrawi:bb.a
  %i.sm = fmul <2 x float> %i.sl, splat (float 8.000000e-01)
  %i.sn = fadd <2 x float> %i.sh, %i.sm           ; 3 uses
  store <2 x float> %i.sn, ptr %70, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #25
  %i.so = fsub <2 x float> %i.sc, %i.sh
  %i.sp = fmul <2 x float> %i.so, splat (float 8.000000e-01)
  %i.sq = fadd <2 x float> %i.sh, %i.sp           ; 3 uses
  store <2 x float> %i.sq, ptr %71, align 8
  %i.sr = load ptr, ptr %1, align 8, !tbaa !61
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 72
  %i.st = load ptr, ptr %i.ss, align 8
  %i.su = insertelement <4 x float> poison, float %.sroa.11.0.copyload, i64 0
  %i.sv = insertelement <4 x float> %i.su, float %.sroa.24.16.copyload, i64 1
  %i.sw = insertelement <4 x float> %i.sv, float %.sroa.37.32.copyload, i64 2
  %i.sx = insertelement <4 x float> %i.sw, float %.sroa.50.48.copyload, i64 3
  %i.sy = insertelement <4 x float> poison, float %i.rz, i64 0
  %i.sz = shufflevector <4 x float> %i.sy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ta = fsub <4 x float> %i.sx, %i.sz
  %i.tb = fmul <4 x float> %i.ta, splat (float 8.000000e-01) ; 4 uses
  %i.tc = extractelement <4 x float> %i.tb, i64 0
  %i.td = fadd float %i.rz, %i.tc
  %.sroa.3.12.vec.insert.i474 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.td, i64 0 ; 3 uses
  store <2 x float> %.sroa.3.12.vec.insert.i474, ptr %i.qp, align 8
  %i.te = extractelement <4 x float> %i.tb, i64 1
  %i.tf = fadd float %i.rz, %i.te
  %.sroa.3.12.vec.insert.i489 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.tf, i64 0 ; 3 uses
  store <2 x float> %.sroa.3.12.vec.insert.i489, ptr %i.qq, align 8
  %i.tg = extractelement <4 x float> %i.tb, i64 2
  %i.th = fadd float %i.rz, %i.tg
  %.sroa.3.12.vec.insert.i504 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.th, i64 0 ; 3 uses
  store <2 x float> %.sroa.3.12.vec.insert.i504, ptr %i.qr, align 8
  call void %i.st(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %69, ptr noundef nonnull align 4 dereferenceable(16) %70, ptr noundef nonnull align 4 dereferenceable(16) %71, ptr noundef nonnull align 4 dereferenceable(16) %68, float noundef 1.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #25
  store <2 x float> %i.sk, ptr %72, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i474, ptr %i.qs, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #25
  store <2 x float> %i.sn, ptr %73, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i489, ptr %i.qt, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #25
  %i.ti = fsub <2 x float> %i.sd, %i.sh
  %i.tj = fmul <2 x float> %i.ti, splat (float 8.000000e-01)
  %i.tk = fadd <2 x float> %i.sh, %i.tj           ; 3 uses
  %i.tl = extractelement <4 x float> %i.tb, i64 3
  %i.tm = fadd float %i.rz, %i.tl
  %.sroa.3.12.vec.insert.i549 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.tm, i64 0 ; 3 uses
  store <2 x float> %i.tk, ptr %74, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i549, ptr %i.qu, align 8
  %i.tn = load ptr, ptr %1, align 8, !tbaa !61
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 72
  %i.tp = load ptr, ptr %i.to, align 8
  call void %i.tp(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %72, ptr noundef nonnull align 4 dereferenceable(16) %73, ptr noundef nonnull align 4 dereferenceable(16) %74, ptr noundef nonnull align 4 dereferenceable(16) %68, float noundef 1.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #25
  store <2 x float> %i.sn, ptr %75, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i489, ptr %i.qv, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #25
  store <2 x float> %i.sq, ptr %76, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i504, ptr %i.qw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #25
  store <2 x float> %i.tk, ptr %77, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i549, ptr %i.qx, align 8
  %i.tq = load ptr, ptr %1, align 8, !tbaa !61
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 72
  %i.ts = load ptr, ptr %i.tr, align 8
  call void %i.ts(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %75, ptr noundef nonnull align 4 dereferenceable(16) %76, ptr noundef nonnull align 4 dereferenceable(16) %77, ptr noundef nonnull align 4 dereferenceable(16) %68, float noundef 1.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #25
  store <2 x float> %i.sq, ptr %78, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i504, ptr %i.qy, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #25
  store <2 x float> %i.sk, ptr %79, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i474, ptr %i.qz, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #25
  store <2 x float> %i.tk, ptr %80, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i549, ptr %i.ra, align 8
  %i.tt = load ptr, ptr %1, align 8, !tbaa !61
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 72
  %i.tv = load ptr, ptr %i.tu, align 8
  call void %i.tv(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %78, ptr noundef nonnull align 4 dereferenceable(16) %79, ptr noundef nonnull align 4 dereferenceable(16) %80, ptr noundef nonnull align 4 dereferenceable(16) %68, float noundef 1.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #25
  %.pre1448 = load i32, ptr %i.ql, align 4, !tbaa !86
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %i.tw = phi i32 [ %i.rb, %bb.ae ], [ %.pre1448, %bb.af ] ; 2 uses
  %indvars.iv.next1424 = add nuw nsw i64 %indvars.iv1423, 1 ; 2 uses
  %i.tx = sext i32 %i.tw to i64
  %i.ty = icmp slt i64 %indvars.iv.next1424, %i.tx
  br i1 %i.ty, label %bb.ae, label %._crit_edge1384, !llvm.loop !259

.loopexit1354:                                    ; preds = %bb.i, %bb.b, %bb.ac, %._crit_edge1384
  %i.tz = and i32 %2, 64
  %.not218 = icmp eq i32 %i.tz, 0
  br i1 %.not218, label %.loopexit1343, label %.preheader1344

.preheader1344:                                   ; preds = %.loopexit1354
  %i.ua = getelementptr inbounds nuw i8, ptr %0, i64 1188 ; 2 uses
  %i.ub = load i32, ptr %i.ua, align 4, !tbaa !297
  %i.uc = icmp sgt i32 %i.ub, 0
  br i1 %i.uc, label %.lr.ph1386, label %.preheader1342

.lr.ph1386:                                       ; preds = %.preheader1344
  %i.ud = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.ue = getelementptr inbounds nuw i8, ptr %81, i64 8 ; 4 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.ug = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.uh = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.ui = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.uj = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.uk = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.ul = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.um = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.un = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.uo = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.up = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.uq = getelementptr inbounds nuw i8, ptr %32, i64 8
  br label %bb.ah

.preheader1342:                                   ; preds = %bb.ah, %.preheader1344
  %i.ur = getelementptr inbounds nuw i8, ptr %0, i64 932 ; 2 uses
  %i.us = load i32, ptr %i.ur, align 4, !tbaa !64 ; 2 uses
  %i.ut = icmp sgt i32 %i.us, 0
  br i1 %i.ut, label %.lr.ph1388, label %.loopexit1343

.lr.ph1388:                                       ; preds = %.preheader1342
  %i.uu = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.uv = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.uw = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.ux = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.uy = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.uz = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.va = getelementptr inbounds nuw i8, ptr %26, i64 8
  br label %bb.ai

bb.ah:                                            ; preds = %.lr.ph1386, %bb.ah
  %indvars.iv1426 = phi i64 [ 0, %.lr.ph1386 ], [ %indvars.iv.next1427, %bb.ah ] ; 2 uses
  %i.vb = load ptr, ptr %i.ud, align 8, !tbaa !298
  %i.vc = getelementptr inbounds nuw [104 x i8], ptr %i.vb, i64 %indvars.iv1426 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #25
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 24
  %i.ve = load ptr, ptr %i.vd, align 8, !tbaa !301 ; 9 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 8
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vc, i64 8
  %i.vh = getelementptr inbounds nuw i8, ptr %i.ve, i64 24
  %i.vi = getelementptr inbounds nuw i8, ptr %i.ve, i64 40
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vc, i64 12
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vc, i64 16
  %i.vl = getelementptr inbounds nuw i8, ptr %i.ve, i64 16
  %i.vm = load float, ptr %i.vl, align 4, !tbaa !19
  %i.vn = getelementptr inbounds nuw i8, ptr %i.ve, i64 32
  %i.vo = load float, ptr %i.vn, align 4, !tbaa !19
  %i.vp = load float, ptr %i.vi, align 4, !tbaa !19
  %i.vq = getelementptr inbounds nuw i8, ptr %i.ve, i64 44
  %i.vr = load float, ptr %i.vq, align 4, !tbaa !19
  %i.vs = getelementptr inbounds nuw i8, ptr %i.ve, i64 48
  %i.vt = load float, ptr %i.vs, align 4, !tbaa !19
  %i.vu = getelementptr inbounds nuw i8, ptr %i.ve, i64 56
  %i.vv = load float, ptr %i.vg, align 8, !tbaa !19 ; 2 uses
  %i.vw = load float, ptr %i.vj, align 4, !tbaa !19 ; 2 uses
  %i.vx = load <2 x float>, ptr %i.vf, align 4, !tbaa !19 ; 2 uses
  %i.vy = load float, ptr %i.vk, align 8, !tbaa !19 ; 2 uses
  %i.vz = load <2 x float>, ptr %i.vh, align 4, !tbaa !19 ; 2 uses
  %i.wa = insertelement <2 x float> poison, float %i.vw, i64 0
  %i.wb = shufflevector <2 x float> %i.wa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wc = shufflevector <2 x float> %i.vx, <2 x float> %i.vz, <2 x i32> <i32 1, i32 3>
  %i.wd = fmul <2 x float> %i.wb, %i.wc
  %i.we = insertelement <2 x float> poison, float %i.vv, i64 0
  %i.wf = shufflevector <2 x float> %i.we, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wg = shufflevector <2 x float> %i.vx, <2 x float> %i.vz, <2 x i32> <i32 0, i32 2>
  %i.wh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wf, <2 x float> %i.wg, <2 x float> %i.wd)
  %i.wi = insertelement <2 x float> poison, float %i.vy, i64 0
  %i.wj = shufflevector <2 x float> %i.wi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wk = insertelement <2 x float> poison, float %i.vm, i64 0
  %i.wl = insertelement <2 x float> %i.wk, float %i.vo, i64 1
  %i.wm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wj, <2 x float> %i.wl, <2 x float> %i.wh)
  %i.wn = fmul float %i.vw, %i.vr
  %i.wo = call float @llvm.fmuladd.f32(float %i.vv, float %i.vp, float %i.wn)
  %i.wp = call noundef float @llvm.fmuladd.f32(float %i.vy, float %i.vt, float %i.wo)
  %i.wq = load <2 x float>, ptr %i.vu, align 4, !tbaa !19
  %i.wr = fadd <2 x float> %i.wm, %i.wq
  %i.ws = getelementptr inbounds nuw i8, ptr %i.ve, i64 64
  %i.wt = load float, ptr %i.ws, align 4, !tbaa !19
  %i.wu = fadd float %i.wp, %i.wt
  %.sroa.3.12.vec.insert.i4.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.wu, i64 0
  store <2 x float> %i.wr, ptr %81, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i, ptr %i.ue, align 8
  %i.wv = load ptr, ptr %i.vc, align 8, !tbaa !302 ; 2 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %82) #25
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %82, align 16, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #25
  %110 = getelementptr inbounds nuw i8, ptr %i.wv, i64 24 ; 3 uses
  %111 = load float, ptr %110, align 4, !tbaa !19 ; 2 uses
  %.sroa.3.12.vec.insert.i.i644 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %111, i64 0
  store <2 x float> %.sroa.3.12.vec.insert.i.i644, ptr %i.uf, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #25
  %112 = load <2 x float>, ptr %i.ww, align 4, !tbaa !19 ; 3 uses
  %113 = extractelement <2 x float> %112, i64 0
  %114 = fadd float %113, -2.500000e-01
  %115 = insertelement <2 x float> %112, float %114, i64 0
  store <2 x float> %115, ptr %33, align 8
  %i.wx = fadd <2 x float> %112, <float 2.500000e-01, float 0.000000e+00>
  %i.wy = fadd float %111, 0.000000e+00
  %.sroa.3.12.vec.insert.i14.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.wy, i64 0
  store <2 x float> %i.wx, ptr %34, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i14.i, ptr %i.ug, align 8
  %i.wz = load ptr, ptr %1, align 8, !tbaa !61
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wz, i64 32
  %i.xb = load ptr, ptr %i.xa, align 8
  call void %i.xb(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %33, ptr noundef nonnull align 4 dereferenceable(16) %34, ptr noundef nonnull align 4 dereferenceable(16) %82), !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #25
  %116 = load float, ptr %110, align 4, !tbaa !19 ; 2 uses
  %.sroa.3.12.vec.insert.i19.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %116, i64 0
  store <2 x float> %.sroa.3.12.vec.insert.i19.i, ptr %i.uh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #25
  %117 = load <2 x float>, ptr %i.ww, align 4, !tbaa !19 ; 3 uses
  %118 = extractelement <2 x float> %117, i64 1
  %119 = fadd float %118, -2.500000e-01
  %.sroa.0.4.vec.insert.i18.i = insertelement <2 x float> %117, float %119, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i18.i, ptr %35, align 8
  %i.xc = fadd <2 x float> %117, <float 0.000000e+00, float 2.500000e-01>
  %i.xd = fadd float %116, 0.000000e+00
  %.sroa.3.12.vec.insert.i24.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.xd, i64 0
  store <2 x float> %i.xc, ptr %36, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i24.i, ptr %i.ui, align 8
  %i.xe = load ptr, ptr %1, align 8, !tbaa !61
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 32
  %i.xg = load ptr, ptr %i.xf, align 8
  call void %i.xg(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %35, ptr noundef nonnull align 4 dereferenceable(16) %36, ptr noundef nonnull align 4 dereferenceable(16) %82), !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #25
  %i.xh = load <2 x float>, ptr %i.ww, align 4, !tbaa !19 ; 2 uses
  %i.xi = load float, ptr %110, align 4, !tbaa !19 ; 2 uses
  %i.xj = fadd float %i.xi, -2.500000e-01
  %.sroa.3.12.vec.insert.i29.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.xj, i64 0
  store <2 x float> %i.xh, ptr %37, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i29.i, ptr %i.uj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #25
  %i.xk = fadd <2 x float> %i.xh, zeroinitializer
  %i.xl = fadd float %i.xi, 2.500000e-01
  %.sroa.3.12.vec.insert.i34.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.xl, i64 0
  store <2 x float> %i.xk, ptr %38, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i34.i, ptr %i.uk, align 8
  %i.xm = load ptr, ptr %1, align 8, !tbaa !61
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xm, i64 32
  %i.xo = load ptr, ptr %i.xn, align 8
  call void %i.xo(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %37, ptr noundef nonnull align 4 dereferenceable(16) %38, ptr noundef nonnull align 4 dereferenceable(16) %82), !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %83) #25
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %83, align 16, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #25
  %120 = load float, ptr %i.ue, align 8, !tbaa !19 ; 2 uses
  %.sroa.3.12.vec.insert.i.i647 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %120, i64 0
  store <2 x float> %.sroa.3.12.vec.insert.i.i647, ptr %i.ul, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #25
  %121 = load <2 x float>, ptr %81, align 8, !tbaa !19 ; 3 uses
  %122 = extractelement <2 x float> %121, i64 0
  %123 = fadd float %122, -2.500000e-01
  %124 = insertelement <2 x float> %121, float %123, i64 0
  store <2 x float> %124, ptr %27, align 8
  %i.xp = fadd <2 x float> %121, <float 2.500000e-01, float 0.000000e+00>
  %i.xq = fadd float %120, 0.000000e+00
  %.sroa.3.12.vec.insert.i14.i650 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.xq, i64 0
  store <2 x float> %i.xp, ptr %28, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i14.i650, ptr %i.um, align 8
  %i.xr = load ptr, ptr %1, align 8, !tbaa !61
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xr, i64 32
  %i.xt = load ptr, ptr %i.xs, align 8
  call void %i.xt(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %27, ptr noundef nonnull align 4 dereferenceable(16) %28, ptr noundef nonnull align 4 dereferenceable(16) %83), !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #25
  %125 = load float, ptr %i.ue, align 8, !tbaa !19 ; 2 uses
  %.sroa.3.12.vec.insert.i19.i653 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %125, i64 0
  store <2 x float> %.sroa.3.12.vec.insert.i19.i653, ptr %i.un, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #25
  %126 = load <2 x float>, ptr %81, align 8, !tbaa !19 ; 3 uses
  %127 = extractelement <2 x float> %126, i64 1
  %128 = fadd float %127, -2.500000e-01
  %.sroa.0.4.vec.insert.i18.i652 = insertelement <2 x float> %126, float %128, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i18.i652, ptr %29, align 8
  %i.xu = fadd <2 x float> %126, <float 0.000000e+00, float 2.500000e-01>
  %i.xv = fadd float %125, 0.000000e+00
  %.sroa.3.12.vec.insert.i24.i656 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.xv, i64 0
  store <2 x float> %i.xu, ptr %30, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i24.i656, ptr %i.uo, align 8
  %i.xw = load ptr, ptr %1, align 8, !tbaa !61
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xw, i64 32
  %i.xy = load ptr, ptr %i.xx, align 8
  call void %i.xy(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %29, ptr noundef nonnull align 4 dereferenceable(16) %30, ptr noundef nonnull align 4 dereferenceable(16) %83), !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #25
  %i.xz = load <2 x float>, ptr %81, align 8, !tbaa !19 ; 2 uses
  %i.ya = load float, ptr %i.ue, align 8, !tbaa !19 ; 2 uses
  %i.yb = fadd float %i.ya, -2.500000e-01
  %.sroa.3.12.vec.insert.i29.i659 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.yb, i64 0
  store <2 x float> %i.xz, ptr %31, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i29.i659, ptr %i.up, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #25
  %i.yc = fadd <2 x float> %i.xz, zeroinitializer
  %i.yd = fadd float %i.ya, 2.500000e-01
  %.sroa.3.12.vec.insert.i34.i662 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.yd, i64 0
  store <2 x float> %i.yc, ptr %32, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i34.i662, ptr %i.uq, align 8
  %i.ye = load ptr, ptr %1, align 8, !tbaa !61
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 32
  %i.yg = load ptr, ptr %i.yf, align 8
  call void %i.yg(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %31, ptr noundef nonnull align 4 dereferenceable(16) %32, ptr noundef nonnull align 4 dereferenceable(16) %83), !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #25
  %i.yh = load ptr, ptr %i.vc, align 8, !tbaa !302
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yh, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %84) #25
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %84, align 16, !tbaa !19
  %i.yj = load ptr, ptr %1, align 8, !tbaa !61
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yj, i64 32
  %i.yl = load ptr, ptr %i.yk, align 8
  call void %i.yl(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.yi, ptr noundef nonnull align 4 dereferenceable(16) %81, ptr noundef nonnull align 4 dereferenceable(16) %84)
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #25
  %indvars.iv.next1427 = add nuw nsw i64 %indvars.iv1426, 1 ; 2 uses
  %i.ym = load i32, ptr %i.ua, align 4, !tbaa !297
  %i.yn = sext i32 %i.ym to i64
  %i.yo = icmp slt i64 %indvars.iv.next1427, %i.yn
  br i1 %i.yo, label %bb.ah, label %.preheader1342, !llvm.loop !260

bb.ai:                                            ; preds = %.lr.ph1388, %bb.ak
  %i.yp = phi i32 [ %i.us, %.lr.ph1388 ], [ %i.zv, %bb.ak ]
  %indvars.iv1429 = phi i64 [ 0, %.lr.ph1388 ], [ %indvars.iv.next1430, %bb.ak ] ; 2 uses
  %i.yq = load ptr, ptr %i.uu, align 8, !tbaa !65
  %i.yr = getelementptr inbounds nuw [256 x i8], ptr %i.yq, i64 %indvars.iv1429 ; 4 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yr, i64 8
  %i.yt = load ptr, ptr %i.ys, align 8, !tbaa !282
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 20
  %i.yv = load i32, ptr %i.yu, align 4, !tbaa !284
  %i.yw = and i32 %i.yv, 1
  %i.yx = icmp eq i32 %i.yw, 0
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yr, i64 112
  %i.yz = load float, ptr %i.yy, align 8
  %i.za = fcmp ugt float %i.yz, 0.000000e+00
  %or.cond = select i1 %i.yx, i1 true, i1 %i.za
  br i1 %or.cond, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yr, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %85) #25
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %85, align 16, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #25
  %129 = getelementptr inbounds nuw i8, ptr %i.yr, i64 24 ; 3 uses
  %130 = load float, ptr %129, align 8, !tbaa !19 ; 2 uses
  %.sroa.3.12.vec.insert.i.i665 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %130, i64 0
  %131 = load <2 x float>, ptr %i.zb, align 8, !tbaa !19 ; 3 uses
  %132 = extractelement <2 x float> %131, i64 0
  %133 = fadd float %132, -2.500000e-01
  %.sroa.3.12.vec.insert.i.i665.a = insertelement <2 x float> %131, float %133, i64 0
  store <2 x float> %.sroa.3.12.vec.insert.i.i665.a, ptr %21, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i665, ptr %i.uv, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #25
  %i.zc = fadd <2 x float> %131, <float 2.500000e-01, float 0.000000e+00>
  %i.zd = fadd float %130, 0.000000e+00
  %.sroa.3.12.vec.insert.i14.i668 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.zd, i64 0
  store <2 x float> %i.zc, ptr %22, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i14.i668, ptr %i.uw, align 8
  %i.ze = load ptr, ptr %1, align 8, !tbaa !61
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 32
  %i.zg = load ptr, ptr %i.zf, align 8
  call void %i.zg(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %21, ptr noundef nonnull align 4 dereferenceable(16) %22, ptr noundef nonnull align 4 dereferenceable(16) %85), !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #25
  %134 = load float, ptr %129, align 8, !tbaa !19 ; 2 uses
  %.sroa.3.12.vec.insert.i19.i671 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %134, i64 0
  %i.zh = load <2 x float>, ptr %i.zb, align 8, !tbaa !19 ; 3 uses
  %135 = extractelement <2 x float> %i.zh, i64 1
  %136 = fadd float %135, -2.500000e-01
  %.sroa.3.12.vec.insert.i19.i671.a = insertelement <2 x float> %i.zh, float %136, i64 1
  store <2 x float> %.sroa.3.12.vec.insert.i19.i671.a, ptr %23, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i19.i671, ptr %i.ux, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #25
  %i.zi = fadd <2 x float> %i.zh, <float 0.000000e+00, float 2.500000e-01>
  %i.zj = fadd float %134, 0.000000e+00
  %.sroa.3.12.vec.insert.i24.i674 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.zj, i64 0
  store <2 x float> %i.zi, ptr %24, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i24.i674, ptr %i.uy, align 8
  %i.zk = load ptr, ptr %1, align 8, !tbaa !61
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zk, i64 32
  %i.zm = load ptr, ptr %i.zl, align 8
  call void %i.zm(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %23, ptr noundef nonnull align 4 dereferenceable(16) %24, ptr noundef nonnull align 4 dereferenceable(16) %85), !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #25
  %i.zn = load <2 x float>, ptr %i.zb, align 8, !tbaa !19 ; 2 uses
  %i.zo = load float, ptr %129, align 8, !tbaa !19 ; 2 uses
  %i.zp = fadd float %i.zo, -2.500000e-01
  %.sroa.3.12.vec.insert.i29.i677 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.zp, i64 0
  store <2 x float> %i.zn, ptr %25, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i29.i677, ptr %i.uz, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #25
  %i.zq = fadd <2 x float> %i.zn, zeroinitializer
  %i.zr = fadd float %i.zo, 2.500000e-01
  %.sroa.3.12.vec.insert.i34.i680 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.zr, i64 0
  store <2 x float> %i.zq, ptr %26, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i34.i680, ptr %i.va, align 8
  %i.zs = load ptr, ptr %1, align 8, !tbaa !61
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zs, i64 32
  %i.zu = load ptr, ptr %i.zt, align 8
  call void %i.zu(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %25, ptr noundef nonnull align 4 dereferenceable(16) %26, ptr noundef nonnull align 4 dereferenceable(16) %85), !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #25
  %.pre1449 = load i32, ptr %i.ur, align 4, !tbaa !64
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.zv = phi i32 [ %.pre1449, %bb.aj ], [ %i.yp, %bb.ai ] ; 2 uses
  %indvars.iv.next1430 = add nuw nsw i64 %indvars.iv1429, 1 ; 2 uses
  %i.zw = sext i32 %i.zv to i64
  %i.zx = icmp slt i64 %indvars.iv.next1430, %i.zw
  br i1 %i.zx, label %bb.ai, label %.loopexit1343, !llvm.loop !261

.loopexit1343:                                    ; preds = %bb.ak, %.preheader1342, %.loopexit1354
  %i.zy = and i32 %2, 128
  %.not219 = icmp eq i32 %i.zy, 0
  br i1 %.not219, label %.loopexit1341, label %.preheader1340

.preheader1340:                                   ; preds = %.loopexit1343
  %i.zz = getelementptr inbounds nuw i8, ptr %0, i64 900 ; 2 uses
  %i.aaa = load i32, ptr %i.zz, align 4, !tbaa !303
  %i.aab = icmp sgt i32 %i.aaa, 0
  br i1 %i.aab, label %.lr.ph1396, label %.loopexit1341

.lr.ph1396:                                       ; preds = %.preheader1340
  %i.aac = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.aad = getelementptr inbounds nuw i8, ptr %86, i64 8 ; 4 uses
  br label %bb.al

bb.al:                                            ; preds = %.lr.ph1396, %._crit_edge1392
  %indvars.iv1437 = phi i64 [ 0, %.lr.ph1396 ], [ %indvars.iv.next1438, %._crit_edge1392 ] ; 2 uses
  %i.aae = load ptr, ptr %i.aac, align 8, !tbaa !304
  %i.aaf = getelementptr inbounds nuw [88 x i8], ptr %i.aae, i64 %indvars.iv1437 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %86) #25
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aaf, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %86, ptr noundef nonnull align 8 dereferenceable(16) %i.aag, i64 16, i1 false), !tbaa.struct !46
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aaf, i64 32
  %i.aai = load i32, ptr %i.aah, align 8, !tbaa !306 ; 4 uses
  %i.aaj = icmp sgt i32 %i.aai, 0
  br i1 %i.aaj, label %.lr.ph1391, label %._crit_edge1392

.lr.ph1391:                                       ; preds = %bb.al
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aaf, i64 40 ; 3 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aaf, i64 72 ; 3 uses
  %i.aam = load <2 x float>, ptr %86, align 8     ; 2 uses
  %.promoted1394 = load float, ptr %i.aad, align 8, !tbaa !19 ; 2 uses
  %wide.trip.count1435 = zext nneg i32 %i.aai to i64 ; 2 uses
  %xtraiter1479 = and i64 %wide.trip.count1435, 1
  %i.aan = icmp eq i32 %i.aai, 1
  br i1 %i.aan, label %.epil.preheader, label %.lr.ph1391.new

.lr.ph1391.new:                                   ; preds = %.lr.ph1391
  %unroll_iter1484 = and i64 %wide.trip.count1435, 2147483646
  br label %bb.am

._crit_edge1392.loopexit.unr-lcssa:               ; preds = %bb.am
  %lcmp.mod1482.not = icmp eq i64 %xtraiter1479, 0
  br i1 %lcmp.mod1482.not, label %._crit_edge1392, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge1392.loopexit.unr-lcssa, %.lr.ph1391
  %indvars.iv1432.epil.init = phi i64 [ 0, %.lr.ph1391 ], [ %indvars.iv.next1433.1, %._crit_edge1392.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init = phi float [ %.promoted1394, %.lr.ph1391 ], [ %i.acn, %._crit_edge1392.loopexit.unr-lcssa ]
  %.epil.init1481 = phi <2 x float> [ %i.aam, %.lr.ph1391 ], [ %i.acm, %._crit_edge1392.loopexit.unr-lcssa ]
  %lcmp.mod1483 = trunc i32 %i.aai to i1
  call void @llvm.assume(i1 %lcmp.mod1483)
  %i.aao = getelementptr inbounds nuw [8 x i8], ptr %i.aak, i64 %indvars.iv1432.epil.init
  %i.aap = load ptr, ptr %i.aao, align 8, !tbaa !45 ; 2 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aap, i64 16
  %i.aar = getelementptr inbounds nuw [4 x i8], ptr %i.aal, i64 %indvars.iv1432.epil.init
  %i.aas = load float, ptr %i.aar, align 4, !tbaa !19 ; 2 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aap, i64 24
  %i.aau = load float, ptr %i.aat, align 4, !tbaa !19
  %i.aav = fmul float %i.aas, %i.aau
  %i.aaw = load <2 x float>, ptr %i.aaq, align 4, !tbaa !19
  %i.aax = insertelement <2 x float> poison, float %i.aas, i64 0
  %i.aay = shufflevector <2 x float> %i.aax, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aaz = fmul <2 x float> %i.aay, %i.aaw
  %i.aba = fadd <2 x float> %i.aaz, %.epil.init1481
  store <2 x float> %i.aba, ptr %86, align 8, !tbaa !19
  %i.abb = fadd float %i.aav, %.epil.init
  store float %i.abb, ptr %i.aad, align 8, !tbaa !19
  br label %._crit_edge1392

._crit_edge1392:                                  ; preds = %.epil.preheader, %._crit_edge1392.loopexit.unr-lcssa, %bb.al
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aaf, i64 8
  %i.abd = load ptr, ptr %i.abc, align 8, !tbaa !307
  %i.abe = load ptr, ptr %1, align 8, !tbaa !61
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abe, i64 96
  %i.abg = load ptr, ptr %i.abf, align 8
  call void %i.abg(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %86, ptr noundef %i.abd)
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #25
  %indvars.iv.next1438 = add nuw nsw i64 %indvars.iv1437, 1 ; 2 uses
  %i.abh = load i32, ptr %i.zz, align 4, !tbaa !303
  %i.abi = sext i32 %i.abh to i64
  %i.abj = icmp slt i64 %indvars.iv.next1438, %i.abi
  br i1 %i.abj, label %bb.al, label %.loopexit1341, !llvm.loop !262

bb.am:                                            ; preds = %bb.am, %.lr.ph1391.new
  %indvars.iv1432 = phi i64 [ 0, %.lr.ph1391.new ], [ %indvars.iv.next1433.1, %bb.am ] ; 4 uses
  %i.abk = phi float [ %.promoted1394, %.lr.ph1391.new ], [ %i.acn, %bb.am ]
  %i.abl = phi <2 x float> [ %i.aam, %.lr.ph1391.new ], [ %i.acm, %bb.am ]
  %niter1485 = phi i64 [ 0, %.lr.ph1391.new ], [ %niter1485.next.1, %bb.am ]
  %i.abm = getelementptr inbounds nuw [8 x i8], ptr %i.aak, i64 %indvars.iv1432
  %i.abn = load ptr, ptr %i.abm, align 8, !tbaa !45 ; 2 uses
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abn, i64 16
  %i.abp = getelementptr inbounds nuw [4 x i8], ptr %i.aal, i64 %indvars.iv1432
  %i.abq = load float, ptr %i.abp, align 4, !tbaa !19 ; 2 uses
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abn, i64 24
  %i.abs = load float, ptr %i.abr, align 4, !tbaa !19
  %i.abt = fmul float %i.abq, %i.abs
  %i.abu = load <2 x float>, ptr %i.abo, align 4, !tbaa !19
  %i.abv = insertelement <2 x float> poison, float %i.abq, i64 0
  %i.abw = shufflevector <2 x float> %i.abv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abx = fmul <2 x float> %i.abw, %i.abu
  %i.aby = fadd <2 x float> %i.abx, %i.abl        ; 2 uses
  store <2 x float> %i.aby, ptr %86, align 8, !tbaa !19
  %i.abz = fadd float %i.abt, %i.abk              ; 2 uses
  store float %i.abz, ptr %i.aad, align 8, !tbaa !19
  %indvars.iv.next1433 = or disjoint i64 %indvars.iv1432, 1 ; 2 uses
  %i.aca = getelementptr inbounds nuw [8 x i8], ptr %i.aak, i64 %indvars.iv.next1433
  %i.acb = load ptr, ptr %i.aca, align 8, !tbaa !45 ; 2 uses
  %i.acc = getelementptr inbounds nuw i8, ptr %i.acb, i64 16
  %i.acd = getelementptr inbounds nuw [4 x i8], ptr %i.aal, i64 %indvars.iv.next1433
  %i.ace = load float, ptr %i.acd, align 4, !tbaa !19 ; 2 uses
  %i.acf = getelementptr inbounds nuw i8, ptr %i.acb, i64 24
  %i.acg = load float, ptr %i.acf, align 4, !tbaa !19
  %i.ach = fmul float %i.ace, %i.acg
  %i.aci = load <2 x float>, ptr %i.acc, align 4, !tbaa !19
  %i.acj = insertelement <2 x float> poison, float %i.ace, i64 0
  %i.ack = shufflevector <2 x float> %i.acj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.acl = fmul <2 x float> %i.ack, %i.aci
  %i.acm = fadd <2 x float> %i.acl, %i.aby        ; 3 uses
  store <2 x float> %i.acm, ptr %86, align 8, !tbaa !19
  %i.acn = fadd float %i.ach, %i.abz              ; 3 uses
  store float %i.acn, ptr %i.aad, align 8, !tbaa !19
  %indvars.iv.next1433.1 = add nuw nsw i64 %indvars.iv1432, 2 ; 2 uses
  %niter1485.next.1 = add i64 %niter1485, 2       ; 2 uses
  %niter1485.ncmp.1 = icmp eq i64 %niter1485.next.1, %unroll_iter1484
  br i1 %niter1485.ncmp.1, label %._crit_edge1392.loopexit.unr-lcssa, label %bb.am, !llvm.loop !263

.loopexit1341:                                    ; preds = %._crit_edge1392, %.preheader1340, %.loopexit1343
  %i.aco = and i32 %2, 512
  %.not220 = icmp eq i32 %i.aco, 0
  br i1 %.not220, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.loopexit1341
  %i.acp = getelementptr inbounds nuw i8, ptr %0, i64 1544
  %i.acq = load ptr, ptr %i.acp, align 8, !tbaa !156
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #25
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %19, align 16, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #25
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %20, align 16, !tbaa !19
  call fastcc void @_ZL8drawTreeP12btIDebugDrawPK10btDbvtNodeiRK9btVector3S6_ii(ptr noundef %1, ptr noundef %i.acq, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(16) %19, ptr noundef nonnull align 4 dereferenceable(16) %20, i32 noundef 0, i32 noundef -1)
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.loopexit1341
  %i.acr = and i32 %2, 1024
  %.not221 = icmp eq i32 %i.acr, 0
  br i1 %.not221, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.acs = getelementptr inbounds nuw i8, ptr %0, i64 1608
  %i.act = load ptr, ptr %i.acs, align 8, !tbaa !157
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %17, align 16, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %18, align 16, !tbaa !19
  call fastcc void @_ZL8drawTreeP12btIDebugDrawPK10btDbvtNodeiRK9btVector3S6_ii(ptr noundef %1, ptr noundef %i.act, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(16) %17, ptr noundef nonnull align 4 dereferenceable(16) %18, i32 noundef 0, i32 noundef -1)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.acu = and i32 %2, 2048
  %.not222 = icmp eq i32 %i.acu, 0
  br i1 %.not222, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.acv = getelementptr inbounds nuw i8, ptr %0, i64 1680
  %i.acw = load ptr, ptr %i.acv, align 8, !tbaa !158
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %15, align 16, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %16, align 16, !tbaa !19
end_hunk_1
begin_hunk_2_@_ZN17btSoftBodyHelpers4DrawEP10btSoftBodyP12btIDebugDrawi:bb.a
          to label %bb.be unwind label %bb.bh     ; 4 uses

bb.be:                                            ; preds = %bb.bd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) @_ZZNK10btSoftBody4Body5xformEvE8identity, ptr noundef nonnull align 4 dereferenceable(64) %i.agl, i64 16, i1 false), !tbaa.struct !46
  %i.agm = getelementptr inbounds nuw i8, ptr %i.agl, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, i64 16), ptr noundef nonnull align 4 dereferenceable(16) %i.agm, i64 16, i1 false), !tbaa.struct !46
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agl, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, i64 32), ptr noundef nonnull align 4 dereferenceable(16) %i.agn, i64 16, i1 false), !tbaa.struct !46
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agl, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, i64 48), ptr noundef nonnull align 4 dereferenceable(16) %i.ago, i64 16, i1 false), !tbaa.struct !46
  %i.agp = call ptr @llvm.invariant.start.p0(i64 64, ptr nonnull @_ZZNK10btSoftBody4Body5xformEvE8identity) ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZNK10btSoftBody4Body5xformEvE8identity) #25
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bc, %_ZNK10btSoftBody4Body5xformEv.exit
  %i.agq = getelementptr inbounds nuw i8, ptr %i.ady, i64 48 ; 2 uses
  %i.agr = load ptr, ptr %i.agq, align 8, !tbaa !313 ; 2 uses
  %.not5.i691 = icmp eq ptr %i.agr, null
  br i1 %.not5.i691, label %bb.bi, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agr, i64 8
  br label %_ZNK10btSoftBody4Body5xformEv.exit696

bb.bh:                                            ; preds = %bb.bd
  %i.agt = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZNK10btSoftBody4Body5xformEvE8identity) #25
  br label %common.resume

bb.bi:                                            ; preds = %bb.bf
  %i.agu = load ptr, ptr %i.agh, align 8, !tbaa !314 ; 2 uses
  %.not6.i693 = icmp eq ptr %i.agu, null
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agu, i64 96
  %spec.select.i694 = select i1 %.not6.i693, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, ptr %i.agv
  br label %_ZNK10btSoftBody4Body5xformEv.exit696

_ZNK10btSoftBody4Body5xformEv.exit696:            ; preds = %bb.bg, %bb.bi
  %.0.i692 = phi ptr [ %i.ags, %bb.bg ], [ %spec.select.i694, %bb.bi ] ; 9 uses
  %i.agw = getelementptr inbounds nuw i8, ptr %i.ady, i64 72
  %i.agx = getelementptr inbounds nuw i8, ptr %.0.i692, i64 16
  %i.agy = getelementptr inbounds nuw i8, ptr %.0.i692, i64 32
  %i.agz = getelementptr inbounds nuw i8, ptr %i.ady, i64 76
  %i.aha = getelementptr inbounds nuw i8, ptr %i.ady, i64 80
  %i.ahb = getelementptr inbounds nuw i8, ptr %.0.i692, i64 8
  %i.ahc = load float, ptr %i.ahb, align 4, !tbaa !19
  %i.ahd = getelementptr inbounds nuw i8, ptr %.0.i692, i64 24
  %i.ahe = load float, ptr %i.ahd, align 4, !tbaa !19
  %i.ahf = load float, ptr %i.agy, align 4, !tbaa !19
  %i.ahg = getelementptr inbounds nuw i8, ptr %.0.i692, i64 36
  %i.ahh = load float, ptr %i.ahg, align 4, !tbaa !19
  %i.ahi = getelementptr inbounds nuw i8, ptr %.0.i692, i64 40
  %i.ahj = load float, ptr %i.ahi, align 4, !tbaa !19
  %i.ahk = getelementptr inbounds nuw i8, ptr %.0.i692, i64 48
  %i.ahl = load float, ptr %i.agw, align 8, !tbaa !19 ; 2 uses
  %i.ahm = load float, ptr %i.agz, align 4, !tbaa !19 ; 2 uses
  %i.ahn = load <2 x float>, ptr %.0.i692, align 4, !tbaa !19 ; 2 uses
  %i.aho = load float, ptr %i.aha, align 8, !tbaa !19 ; 2 uses
  %i.ahp = load <2 x float>, ptr %i.agx, align 4, !tbaa !19 ; 2 uses
  %i.ahq = insertelement <2 x float> poison, float %i.ahm, i64 0
  %i.ahr = shufflevector <2 x float> %i.ahq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ahs = shufflevector <2 x float> %i.ahn, <2 x float> %i.ahp, <2 x i32> <i32 1, i32 3>
  %i.aht = fmul <2 x float> %i.ahr, %i.ahs
  %i.ahu = insertelement <2 x float> poison, float %i.ahl, i64 0
  %i.ahv = shufflevector <2 x float> %i.ahu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ahw = shufflevector <2 x float> %i.ahn, <2 x float> %i.ahp, <2 x i32> <i32 0, i32 2>
  %i.ahx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ahv, <2 x float> %i.ahw, <2 x float> %i.aht)
  %i.ahy = insertelement <2 x float> poison, float %i.aho, i64 0
  %i.ahz = shufflevector <2 x float> %i.ahy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aia = insertelement <2 x float> poison, float %i.ahc, i64 0
  %i.aib = insertelement <2 x float> %i.aia, float %i.ahe, i64 1
  %i.aic = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ahz, <2 x float> %i.aib, <2 x float> %i.ahx)
  %i.aid = fmul float %i.ahm, %i.ahh
  %i.aie = call float @llvm.fmuladd.f32(float %i.ahl, float %i.ahf, float %i.aid)
  %i.aif = call noundef float @llvm.fmuladd.f32(float %i.aho, float %i.ahj, float %i.aie)
  %i.aig = load <2 x float>, ptr %i.ahk, align 4, !tbaa !19
  %i.aih = fadd <2 x float> %i.aic, %i.aig
  %i.aii = getelementptr inbounds nuw i8, ptr %.0.i692, i64 56
  %i.aij = load float, ptr %i.aii, align 4, !tbaa !19
  %i.aik = fadd float %i.aif, %i.aij
  %.sroa.3.12.vec.insert.i4.i.i699 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.aik, i64 0
  store <2 x float> %i.aih, ptr %88, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i699, ptr %i.adj, align 8
  %i.ail = load atomic i8, ptr @_ZGVZNK10btSoftBody4Body5xformEvE8identity acquire, align 8
  %i.aim = icmp eq i8 %i.ail, 0
  br i1 %i.aim, label %bb.bj, label %bb.bm, !prof !74

bb.bj:                                            ; preds = %_ZNK10btSoftBody4Body5xformEv.exit696
  %i.ain = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK10btSoftBody4Body5xformEvE8identity) #25
  %.not.i706 = icmp eq i32 %i.ain, 0
  br i1 %.not.i706, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.aio = invoke noundef nonnull align 4 dereferenceable(64) ptr @_ZN11btTransform11getIdentityEv()
          to label %bb.bl unwind label %bb.bo     ; 4 uses

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) @_ZZNK10btSoftBody4Body5xformEvE8identity, ptr noundef nonnull align 4 dereferenceable(64) %i.aio, i64 16, i1 false), !tbaa.struct !46
  %i.aip = getelementptr inbounds nuw i8, ptr %i.aio, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, i64 16), ptr noundef nonnull align 4 dereferenceable(16) %i.aip, i64 16, i1 false), !tbaa.struct !46
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.aio, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, i64 32), ptr noundef nonnull align 4 dereferenceable(16) %i.aiq, i64 16, i1 false), !tbaa.struct !46
  %i.air = getelementptr inbounds nuw i8, ptr %i.aio, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, i64 48), ptr noundef nonnull align 4 dereferenceable(16) %i.air, i64 16, i1 false), !tbaa.struct !46
  %i.ais = call ptr @llvm.invariant.start.p0(i64 64, ptr nonnull @_ZZNK10btSoftBody4Body5xformEvE8identity) ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZNK10btSoftBody4Body5xformEvE8identity) #25
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bj, %_ZNK10btSoftBody4Body5xformEv.exit696
  %i.ait = load ptr, ptr %i.aem, align 8, !tbaa !313 ; 2 uses
  %.not5.i702 = icmp eq ptr %i.ait, null
  br i1 %.not5.i702, label %bb.bp, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.ait, i64 8
  br label %_ZNK10btSoftBody4Body5xformEv.exit707

bb.bo:                                            ; preds = %bb.bk
  %i.aiv = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZNK10btSoftBody4Body5xformEvE8identity) #25
  br label %common.resume

bb.bp:                                            ; preds = %bb.bm
  %i.aiw = load ptr, ptr %i.aed, align 8, !tbaa !314 ; 2 uses
  %.not6.i704 = icmp eq ptr %i.aiw, null
  %i.aix = getelementptr inbounds nuw i8, ptr %i.aiw, i64 96
  %spec.select.i705 = select i1 %.not6.i704, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, ptr %i.aix
  br label %_ZNK10btSoftBody4Body5xformEv.exit707

_ZNK10btSoftBody4Body5xformEv.exit707:            ; preds = %bb.bn, %bb.bp
  %.0.i703 = phi ptr [ %i.aiu, %bb.bn ], [ %spec.select.i705, %bb.bp ]
  %i.aiy = getelementptr inbounds nuw i8, ptr %.0.i703, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %89) #25
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %89, align 16, !tbaa !19
  %i.aiz = load ptr, ptr %1, align 8, !tbaa !61
  %i.aja = getelementptr inbounds nuw i8, ptr %i.aiz, i64 32
  %i.ajb = load ptr, ptr %i.aja, align 8
  call void %i.ajb(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.aiy, ptr noundef nonnull align 4 dereferenceable(16) %87, ptr noundef nonnull align 4 dereferenceable(16) %89)
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #25
  %i.ajc = load atomic i8, ptr @_ZGVZNK10btSoftBody4Body5xformEvE8identity acquire, align 8
  %i.ajd = icmp eq i8 %i.ajc, 0
  br i1 %i.ajd, label %bb.bq, label %bb.bt, !prof !74

bb.bq:                                            ; preds = %_ZNK10btSoftBody4Body5xformEv.exit707
  %i.aje = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK10btSoftBody4Body5xformEvE8identity) #25
  %.not.i712 = icmp eq i32 %i.aje, 0
  br i1 %.not.i712, label %bb.bt, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ajf = invoke noundef nonnull align 4 dereferenceable(64) ptr @_ZN11btTransform11getIdentityEv()
          to label %bb.bs unwind label %bb.bv     ; 4 uses

bb.bs:                                            ; preds = %bb.br
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) @_ZZNK10btSoftBody4Body5xformEvE8identity, ptr noundef nonnull align 4 dereferenceable(64) %i.ajf, i64 16, i1 false), !tbaa.struct !46
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.ajf, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, i64 16), ptr noundef nonnull align 4 dereferenceable(16) %i.ajg, i64 16, i1 false), !tbaa.struct !46
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.ajf, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, i64 32), ptr noundef nonnull align 4 dereferenceable(16) %i.ajh, i64 16, i1 false), !tbaa.struct !46
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ajf, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, i64 48), ptr noundef nonnull align 4 dereferenceable(16) %i.aji, i64 16, i1 false), !tbaa.struct !46
  %i.ajj = call ptr @llvm.invariant.start.p0(i64 64, ptr nonnull @_ZZNK10btSoftBody4Body5xformEvE8identity) ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZNK10btSoftBody4Body5xformEvE8identity) #25
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.bq, %_ZNK10btSoftBody4Body5xformEv.exit707
  %i.ajk = load ptr, ptr %i.agq, align 8, !tbaa !313 ; 2 uses
  %.not5.i708 = icmp eq ptr %i.ajk, null
  br i1 %.not5.i708, label %bb.bw, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.ajk, i64 8
  br label %_ZNK10btSoftBody4Body5xformEv.exit713

bb.bv:                                            ; preds = %bb.br
  %i.ajm = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZNK10btSoftBody4Body5xformEvE8identity) #25
  br label %common.resume

bb.bw:                                            ; preds = %bb.bt
  %i.ajn = load ptr, ptr %i.agh, align 8, !tbaa !314 ; 2 uses
  %.not6.i710 = icmp eq ptr %i.ajn, null
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.ajn, i64 96
  %spec.select.i711 = select i1 %.not6.i710, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, ptr %i.ajo
  br label %_ZNK10btSoftBody4Body5xformEv.exit713

_ZNK10btSoftBody4Body5xformEv.exit713:            ; preds = %bb.bu, %bb.bw
  %.0.i709 = phi ptr [ %i.ajl, %bb.bu ], [ %spec.select.i711, %bb.bw ]
  %i.ajp = getelementptr inbounds nuw i8, ptr %.0.i709, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %90) #25
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %90, align 16, !tbaa !19
  %i.ajq = load ptr, ptr %1, align 8, !tbaa !61
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.ajq, i64 32
  %i.ajs = load ptr, ptr %i.ajr, align 8
  call void %i.ajs(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.ajp, ptr noundef nonnull align 4 dereferenceable(16) %88, ptr noundef nonnull align 4 dereferenceable(16) %90)
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %91) #25
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %91, align 16, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %137 = load float, ptr %i.adi, align 8, !tbaa !19 ; 2 uses
  %.sroa.3.12.vec.insert.i.i716 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %137, i64 0
  store <2 x float> %.sroa.3.12.vec.insert.i.i716, ptr %i.adk, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %138 = load <2 x float>, ptr %87, align 8, !tbaa !19 ; 3 uses
  %139 = extractelement <2 x float> %138, i64 0
  %140 = fadd float %139, -2.500000e-01
  %141 = insertelement <2 x float> %138, float %140, i64 0
  store <2 x float> %141, ptr %9, align 8
  %i.ajt = fadd <2 x float> %138, <float 2.500000e-01, float 0.000000e+00>
  %i.aju = fadd float %137, 0.000000e+00
  %.sroa.3.12.vec.insert.i14.i719 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.aju, i64 0
  store <2 x float> %i.ajt, ptr %10, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i14.i719, ptr %i.adl, align 8
  %i.ajv = load ptr, ptr %1, align 8, !tbaa !61
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.ajv, i64 32
  %i.ajx = load ptr, ptr %i.ajw, align 8
  call void %i.ajx(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %9, ptr noundef nonnull align 4 dereferenceable(16) %10, ptr noundef nonnull align 4 dereferenceable(16) %91), !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %142 = load float, ptr %i.adi, align 8, !tbaa !19 ; 2 uses
  %.sroa.3.12.vec.insert.i19.i722 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %142, i64 0
  store <2 x float> %.sroa.3.12.vec.insert.i19.i722, ptr %i.adm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %143 = load <2 x float>, ptr %87, align 8, !tbaa !19 ; 3 uses
  %144 = extractelement <2 x float> %143, i64 1
  %145 = fadd float %144, -2.500000e-01
  %.sroa.0.4.vec.insert.i18.i721 = insertelement <2 x float> %143, float %145, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i18.i721, ptr %11, align 8
  %i.ajy = fadd <2 x float> %143, <float 0.000000e+00, float 2.500000e-01>
  %i.ajz = fadd float %142, 0.000000e+00
  %.sroa.3.12.vec.insert.i24.i725 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ajz, i64 0
  store <2 x float> %i.ajy, ptr %12, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i24.i725, ptr %i.adn, align 8
  %i.aka = load ptr, ptr %1, align 8, !tbaa !61
  %i.akb = getelementptr inbounds nuw i8, ptr %i.aka, i64 32
  %i.akc = load ptr, ptr %i.akb, align 8
  call void %i.akc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %11, ptr noundef nonnull align 4 dereferenceable(16) %12, ptr noundef nonnull align 4 dereferenceable(16) %91), !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  %i.akd = load <2 x float>, ptr %87, align 8, !tbaa !19 ; 2 uses
  %i.ake = load float, ptr %i.adi, align 8, !tbaa !19 ; 2 uses
  %i.akf = fadd float %i.ake, -2.500000e-01
  %.sroa.3.12.vec.insert.i29.i728 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.akf, i64 0
  store <2 x float> %i.akd, ptr %13, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i29.i728, ptr %i.ado, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  %i.akg = fadd <2 x float> %i.akd, zeroinitializer
  %i.akh = fadd float %i.ake, 2.500000e-01
  %.sroa.3.12.vec.insert.i34.i731 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.akh, i64 0
  store <2 x float> %i.akg, ptr %14, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i34.i731, ptr %i.adp, align 8
  %i.aki = load ptr, ptr %1, align 8, !tbaa !61
  %i.akj = getelementptr inbounds nuw i8, ptr %i.aki, i64 32
  %i.akk = load ptr, ptr %i.akj, align 8
  call void %i.akk(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %13, ptr noundef nonnull align 4 dereferenceable(16) %14, ptr noundef nonnull align 4 dereferenceable(16) %91), !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %92) #25
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %92, align 16, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %146 = load float, ptr %i.adj, align 8, !tbaa !19 ; 2 uses
  %.sroa.3.12.vec.insert.i.i734 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %146, i64 0
  store <2 x float> %.sroa.3.12.vec.insert.i.i734, ptr %i.adq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %147 = load <2 x float>, ptr %88, align 8, !tbaa !19 ; 3 uses
  %148 = extractelement <2 x float> %147, i64 0
  %149 = fadd float %148, -2.500000e-01
  %150 = insertelement <2 x float> %147, float %149, i64 0
  store <2 x float> %150, ptr %3, align 8
  %i.akl = fadd <2 x float> %147, <float 2.500000e-01, float 0.000000e+00>
  %i.akm = fadd float %146, 0.000000e+00
  %.sroa.3.12.vec.insert.i14.i737 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.akm, i64 0
  store <2 x float> %i.akl, ptr %4, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i14.i737, ptr %i.adr, align 8
  %i.akn = load ptr, ptr %1, align 8, !tbaa !61
  %i.ako = getelementptr inbounds nuw i8, ptr %i.akn, i64 32
  %i.akp = load ptr, ptr %i.ako, align 8
  call void %i.akp(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %92), !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %151 = load float, ptr %i.adj, align 8, !tbaa !19 ; 2 uses
  %.sroa.3.12.vec.insert.i19.i740 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %151, i64 0
  store <2 x float> %.sroa.3.12.vec.insert.i19.i740, ptr %i.ads, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %152 = load <2 x float>, ptr %88, align 8, !tbaa !19 ; 3 uses
  %153 = extractelement <2 x float> %152, i64 1
  %154 = fadd float %153, -2.500000e-01
  %.sroa.0.4.vec.insert.i18.i739 = insertelement <2 x float> %152, float %154, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i18.i739, ptr %5, align 8
  %i.akq = fadd <2 x float> %152, <float 0.000000e+00, float 2.500000e-01>
  %i.akr = fadd float %151, 0.000000e+00
  %.sroa.3.12.vec.insert.i24.i743 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.akr, i64 0
  store <2 x float> %i.akq, ptr %6, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i24.i743, ptr %i.adt, align 8
  %i.aks = load ptr, ptr %1, align 8, !tbaa !61
  %i.akt = getelementptr inbounds nuw i8, ptr %i.aks, i64 32
  %i.aku = load ptr, ptr %i.akt, align 8
  call void %i.aku(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %92), !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.akv = load <2 x float>, ptr %88, align 8, !tbaa !19 ; 2 uses
  %i.akw = load float, ptr %i.adj, align 8, !tbaa !19 ; 2 uses
  %i.akx = fadd float %i.akw, -2.500000e-01
  %.sroa.3.12.vec.insert.i29.i746 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.akx, i64 0
  store <2 x float> %i.akv, ptr %7, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i29.i746, ptr %i.adu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.aky = fadd <2 x float> %i.akv, zeroinitializer
  %i.akz = fadd float %i.akw, 2.500000e-01
  %.sroa.3.12.vec.insert.i34.i749 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.akz, i64 0
  store <2 x float> %i.aky, ptr %8, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i34.i749, ptr %i.adv, align 8
  %i.ala = load ptr, ptr %1, align 8, !tbaa !61
  %i.alb = getelementptr inbounds nuw i8, ptr %i.ala, i64 32
  %i.alc = load ptr, ptr %i.alb, align 8
  call void %i.alc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) %92), !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #25
  br label %bb.da

bb.bx:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %93) #25
  %i.ald = getelementptr inbounds nuw i8, ptr %i.ady, i64 8 ; 2 uses
  %i.ale = load atomic i8, ptr @_ZGVZNK10btSoftBody4Body5xformEvE8identity acquire, align 8
  %i.alf = icmp eq i8 %i.ale, 0
  br i1 %i.alf, label %bb.by, label %bb.cb, !prof !74

bb.by:                                            ; preds = %bb.bx
  %i.alg = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK10btSoftBody4Body5xformEvE8identity) #25
  %.not.i754 = icmp eq i32 %i.alg, 0
  br i1 %.not.i754, label %bb.cb, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.alh = invoke noundef nonnull align 4 dereferenceable(64) ptr @_ZN11btTransform11getIdentityEv()
          to label %bb.ca unwind label %bb.cd     ; 4 uses

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) @_ZZNK10btSoftBody4Body5xformEvE8identity, ptr noundef nonnull align 4 dereferenceable(64) %i.alh, i64 16, i1 false), !tbaa.struct !46
  %i.ali = getelementptr inbounds nuw i8, ptr %i.alh, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, i64 16), ptr noundef nonnull align 4 dereferenceable(16) %i.ali, i64 16, i1 false), !tbaa.struct !46
  %i.alj = getelementptr inbounds nuw i8, ptr %i.alh, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, i64 32), ptr noundef nonnull align 4 dereferenceable(16) %i.alj, i64 16, i1 false), !tbaa.struct !46
  %i.alk = getelementptr inbounds nuw i8, ptr %i.alh, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, i64 48), ptr noundef nonnull align 4 dereferenceable(16) %i.alk, i64 16, i1 false), !tbaa.struct !46
  %i.all = call ptr @llvm.invariant.start.p0(i64 64, ptr nonnull @_ZZNK10btSoftBody4Body5xformEvE8identity) ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZNK10btSoftBody4Body5xformEvE8identity) #25
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.by, %bb.bx
  %i.alm = getelementptr inbounds nuw i8, ptr %i.ady, i64 24 ; 2 uses
  %i.aln = load ptr, ptr %i.alm, align 8, !tbaa !313 ; 2 uses
  %.not5.i750 = icmp eq ptr %i.aln, null
  br i1 %.not5.i750, label %bb.ce, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.alo = getelementptr inbounds nuw i8, ptr %i.aln, i64 8
  br label %_ZNK10btSoftBody4Body5xformEv.exit755

bb.cd:                                            ; preds = %bb.bz
  %i.alp = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZNK10btSoftBody4Body5xformEvE8identity) #25
  br label %common.resume

bb.ce:                                            ; preds = %bb.cb
  %i.alq = load ptr, ptr %i.ald, align 8, !tbaa !314 ; 2 uses
  %.not6.i752 = icmp eq ptr %i.alq, null
  %i.alr = getelementptr inbounds nuw i8, ptr %i.alq, i64 96
  %spec.select.i753 = select i1 %.not6.i752, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, ptr %i.alr
  br label %_ZNK10btSoftBody4Body5xformEv.exit755

_ZNK10btSoftBody4Body5xformEv.exit755:            ; preds = %bb.cc, %bb.ce
  %.0.i751 = phi ptr [ %i.alo, %bb.cc ], [ %spec.select.i753, %bb.ce ]
  %i.als = getelementptr inbounds nuw i8, ptr %.0.i751, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %93, ptr noundef nonnull align 4 dereferenceable(16) %i.als, i64 16, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.start.p0(ptr nonnull %94) #25
  %i.alt = getelementptr inbounds nuw i8, ptr %i.ady, i64 32 ; 2 uses
  %i.alu = load atomic i8, ptr @_ZGVZNK10btSoftBody4Body5xformEvE8identity acquire, align 8
  %i.alv = icmp eq i8 %i.alu, 0
  br i1 %i.alv, label %bb.cf, label %bb.ci, !prof !74

bb.cf:                                            ; preds = %_ZNK10btSoftBody4Body5xformEv.exit755
  %i.alw = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK10btSoftBody4Body5xformEvE8identity) #25
  %.not.i760 = icmp eq i32 %i.alw, 0
  br i1 %.not.i760, label %bb.ci, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.alx = invoke noundef nonnull align 4 dereferenceable(64) ptr @_ZN11btTransform11getIdentityEv()
          to label %bb.ch unwind label %bb.ck     ; 4 uses

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) @_ZZNK10btSoftBody4Body5xformEvE8identity, ptr noundef nonnull align 4 dereferenceable(64) %i.alx, i64 16, i1 false), !tbaa.struct !46
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alx, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, i64 16), ptr noundef nonnull align 4 dereferenceable(16) %i.aly, i64 16, i1 false), !tbaa.struct !46
  %i.alz = getelementptr inbounds nuw i8, ptr %i.alx, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, i64 32), ptr noundef nonnull align 4 dereferenceable(16) %i.alz, i64 16, i1 false), !tbaa.struct !46
  %i.ama = getelementptr inbounds nuw i8, ptr %i.alx, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, i64 48), ptr noundef nonnull align 4 dereferenceable(16) %i.ama, i64 16, i1 false), !tbaa.struct !46
  %i.amb = call ptr @llvm.invariant.start.p0(i64 64, ptr nonnull @_ZZNK10btSoftBody4Body5xformEvE8identity) ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZNK10btSoftBody4Body5xformEvE8identity) #25
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cf, %_ZNK10btSoftBody4Body5xformEv.exit755
  %i.amc = getelementptr inbounds nuw i8, ptr %i.ady, i64 48 ; 2 uses
  %i.amd = load ptr, ptr %i.amc, align 8, !tbaa !313 ; 2 uses
  %.not5.i756 = icmp eq ptr %i.amd, null
  br i1 %.not5.i756, label %bb.cl, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ame = getelementptr inbounds nuw i8, ptr %i.amd, i64 8
  br label %_ZNK10btSoftBody4Body5xformEv.exit761

bb.ck:                                            ; preds = %bb.cg
  %i.amf = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZNK10btSoftBody4Body5xformEvE8identity) #25
  br label %common.resume

bb.cl:                                            ; preds = %bb.ci
  %i.amg = load ptr, ptr %i.alt, align 8, !tbaa !314 ; 2 uses
  %.not6.i758 = icmp eq ptr %i.amg, null
  %i.amh = getelementptr inbounds nuw i8, ptr %i.amg, i64 96
  %spec.select.i759 = select i1 %.not6.i758, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, ptr %i.amh
  br label %_ZNK10btSoftBody4Body5xformEv.exit761

_ZNK10btSoftBody4Body5xformEv.exit761:            ; preds = %bb.cj, %bb.cl
  %.0.i757 = phi ptr [ %i.ame, %bb.cj ], [ %spec.select.i759, %bb.cl ]
  %i.ami = getelementptr inbounds nuw i8, ptr %.0.i757, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %94, ptr noundef nonnull align 4 dereferenceable(16) %i.ami, i64 16, i1 false), !tbaa.struct !46
  %i.amj = load atomic i8, ptr @_ZGVZNK10btSoftBody4Body5xformEvE8identity acquire, align 8
  %i.amk = icmp eq i8 %i.amj, 0
  br i1 %i.amk, label %bb.cm, label %bb.cp, !prof !74

bb.cm:                                            ; preds = %_ZNK10btSoftBody4Body5xformEv.exit761
  %i.aml = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK10btSoftBody4Body5xformEvE8identity) #25
  %.not.i766 = icmp eq i32 %i.aml, 0
  br i1 %.not.i766, label %bb.cp, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.amm = invoke noundef nonnull align 4 dereferenceable(64) ptr @_ZN11btTransform11getIdentityEv()
          to label %bb.co unwind label %bb.cr     ; 4 uses

bb.co:                                            ; preds = %bb.cn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) @_ZZNK10btSoftBody4Body5xformEvE8identity, ptr noundef nonnull align 4 dereferenceable(64) %i.amm, i64 16, i1 false), !tbaa.struct !46
  %i.amn = getelementptr inbounds nuw i8, ptr %i.amm, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, i64 16), ptr noundef nonnull align 4 dereferenceable(16) %i.amn, i64 16, i1 false), !tbaa.struct !46
  %i.amo = getelementptr inbounds nuw i8, ptr %i.amm, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, i64 32), ptr noundef nonnull align 4 dereferenceable(16) %i.amo, i64 16, i1 false), !tbaa.struct !46
  %i.amp = getelementptr inbounds nuw i8, ptr %i.amm, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, i64 48), ptr noundef nonnull align 4 dereferenceable(16) %i.amp, i64 16, i1 false), !tbaa.struct !46
  %i.amq = call ptr @llvm.invariant.start.p0(i64 64, ptr nonnull @_ZZNK10btSoftBody4Body5xformEvE8identity) ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZNK10btSoftBody4Body5xformEvE8identity) #25
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cm, %_ZNK10btSoftBody4Body5xformEv.exit761
  %i.amr = load ptr, ptr %i.alm, align 8, !tbaa !313 ; 2 uses
  %.not5.i762 = icmp eq ptr %i.amr, null
  br i1 %.not5.i762, label %bb.cs, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.ams = getelementptr inbounds nuw i8, ptr %i.amr, i64 8
  br label %_ZNK10btSoftBody4Body5xformEv.exit767

bb.cr:                                            ; preds = %bb.cn
  %i.amt = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZNK10btSoftBody4Body5xformEvE8identity) #25
  br label %common.resume

bb.cs:                                            ; preds = %bb.cp
  %i.amu = load ptr, ptr %i.ald, align 8, !tbaa !314 ; 2 uses
  %.not6.i764 = icmp eq ptr %i.amu, null
  %i.amv = getelementptr inbounds nuw i8, ptr %i.amu, i64 96
  %spec.select.i765 = select i1 %.not6.i764, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, ptr %i.amv
  br label %_ZNK10btSoftBody4Body5xformEv.exit767

_ZNK10btSoftBody4Body5xformEv.exit767:            ; preds = %bb.cq, %bb.cs
  %.0.i763 = phi ptr [ %i.ams, %bb.cq ], [ %spec.select.i765, %bb.cs ] ; 7 uses
  %i.amw = getelementptr inbounds nuw i8, ptr %i.ady, i64 56
  %i.amx = getelementptr inbounds nuw i8, ptr %i.ady, i64 60
  %i.amy = getelementptr inbounds nuw i8, ptr %.0.i763, i64 8
  %i.amz = load float, ptr %i.amy, align 4, !tbaa !19
  %i.ana = getelementptr inbounds nuw i8, ptr %i.ady, i64 64
  %i.anb = getelementptr inbounds nuw i8, ptr %.0.i763, i64 16
  %i.anc = load float, ptr %i.amw, align 8, !tbaa !19 ; 2 uses
  %i.and = load <2 x float>, ptr %.0.i763, align 4, !tbaa !19 ; 2 uses
  %i.ane = load float, ptr %i.amx, align 4, !tbaa !19 ; 2 uses
end_hunk_2
