Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btConvexConvexAlgorithm?download=true
inline.NumInlined: 595
inline.NumDeleted: 165
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN23btConvexConvexAlgorithm16processCollisionEPK24btCollisionObjectWrapperS2_RK16btDispatcherInfoP16btManifoldResult:bb.a
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  br label %bb.by

bb.bo:                                            ; preds = %bb.bi
  %i.qs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  br label %bb.by

bb.bp:                                            ; preds = %bb.bj
  %i.qt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #21
  br label %bb.by

bb.bq:                                            ; preds = %.lr.ph530, %bb.bq
  %indvars.iv538 = phi i64 [ 0, %.lr.ph530 ], [ %indvars.iv.next539, %bb.bq ] ; 2 uses
  %.0187527 = phi float [ 1.000000e+30, %.lr.ph530 ], [ %.1, %bb.bq ] ; 2 uses
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %i.qj, i64 %indvars.iv538
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !84
  %i.qw = sext i32 %i.qv to i64
  %i.qx = getelementptr inbounds [16 x i8], ptr %i.ks, i64 %i.qw ; 3 uses
  %i.qy = load float, ptr %i.qx, align 4, !tbaa !54
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qx, i64 4
  %i.ra = load float, ptr %i.qz, align 4, !tbaa !54
  %i.rb = fmul float %i.ql, %i.ra
  %i.rc = call float @llvm.fmuladd.f32(float %i.qy, float %i.qk, float %i.rb)
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qx, i64 8
  %i.re = load float, ptr %i.rd, align 4, !tbaa !54
  %i.rf = call noundef float @llvm.fmuladd.f32(float %i.re, float %i.qg, float %i.rc) ; 2 uses
  %i.rg = fcmp ogt float %.0187527, %i.rf
  %.1 = select i1 %i.rg, float %i.rf, float %.0187527 ; 2 uses
  %indvars.iv.next539 = add nuw nsw i64 %indvars.iv538, 1 ; 2 uses
  %exitcond542.not = icmp eq i64 %indvars.iv.next539, %wide.trip.count541
  br i1 %exitcond542.not, label %._crit_edge531, label %bb.bq, !llvm.loop !104

bb.br:                                            ; preds = %._crit_edge531
  call void @_ZN6btFaceD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %20) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  %i.rh = getelementptr inbounds nuw i8, ptr %18, i64 72 ; 3 uses
  invoke void @_ZN20btAlignedObjectArrayI9btVector3E9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(25) %i.rh, ptr noundef nonnull align 4 dereferenceable(16) %17)
          to label %bb.bs unwind label %bb.bc

bb.bs:                                            ; preds = %bb.br
  invoke void @_ZN20btAlignedObjectArrayI9btVector3E9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(25) %i.rh, ptr noundef nonnull align 4 dereferenceable(16) %i.ls)
          to label %bb.bt unwind label %bb.bc

bb.bt:                                            ; preds = %bb.bs
  invoke void @_ZN20btAlignedObjectArrayI9btVector3E9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(25) %i.rh, ptr noundef nonnull align 4 dereferenceable(16) %i.lw)
          to label %bb.bu unwind label %bb.bc

bb.bu:                                            ; preds = %bb.bt
  invoke void @_ZN18btConvexPolyhedron11initialize2Ev(ptr noundef nonnull align 8 dereferenceable(172) %18)
          to label %bb.bv unwind label %bb.bc

bb.bv:                                            ; preds = %bb.bu
  %i.ri = load ptr, ptr %i.y, align 8, !tbaa !13
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 192
  %i.rk = load ptr, ptr %i.rj, align 8
  invoke void %i.rk(ptr noundef nonnull align 8 dereferenceable(80) %i.y, ptr noundef nonnull align 8 dereferenceable(172) %18)
          to label %bb.bw unwind label %bb.bc

bb.bw:                                            ; preds = %bb.bv
  call void @_ZN18btConvexPolyhedronD1Ev(ptr noundef nonnull align 8 dead_on_return(172) dereferenceable(172) %18) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  %i.rl = load ptr, ptr %i.hx, align 8, !tbaa !127
  %i.rm = load ptr, ptr %i.hz, align 8, !tbaa !127
  %i.rn = load ptr, ptr %i.gk, align 8, !tbaa !114, !nonnull !37, !align !115
  %i.ro = load ptr, ptr %i.gs, align 8, !tbaa !114, !nonnull !37, !align !115
  %i.rp = invoke noundef zeroext i1 @_ZN27btPolyhedralContactClipping18findSeparatingAxisERK18btConvexPolyhedronS2_RK11btTransformS5_R9btVector3RN36btDiscreteCollisionDetectorInterface6ResultE(ptr noundef nonnull align 8 dereferenceable(172) %i.rl, ptr noundef nonnull align 8 dereferenceable(172) %i.rm, ptr noundef nonnull align 4 dereferenceable(64) %i.rn, ptr noundef nonnull align 4 dereferenceable(64) %i.ro, ptr noundef nonnull align 4 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.cc unwind label %bb.cb

bb.bx:                                            ; preds = %._crit_edge531
  %i.rq = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bp, %bb.bo, %bb.bn
  %.pn240.pn = phi { ptr, i32 } [ %i.qr, %bb.bn ], [ %i.qt, %bb.bp ], [ %i.qs, %bb.bo ], [ %i.rq, %bb.bx ]
  call void @_ZN6btFaceD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %20) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bm, %bb.bc
  %.pn244 = phi { ptr, i32 } [ %i.pg, %bb.bc ], [ %.pn240.pn, %bb.by ], [ %.pn.pn, %bb.bm ]
  call void @_ZN18btConvexPolyhedronD1Ev(ptr noundef nonnull align 8 dead_on_return(172) dereferenceable(172) %18) #21
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.bb
  %.pn244.pn = phi { ptr, i32 } [ %.pn244, %bb.bz ], [ %i.pf, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  br label %bb.cj

bb.cb:                                            ; preds = %bb.ch, %bb.ce, %bb.bw
  %i.rr = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.cc:                                            ; preds = %bb.bw
  br i1 %i.rp, label %bb.cd, label %bb.cg

bb.cd:                                            ; preds = %bb.cc
  %i.rs = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #21
  invoke void @_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_(ptr noundef nonnull align 8 dereferenceable(25) %i.rs, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(16) %21)
          to label %bb.ce unwind label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  %i.rt = load ptr, ptr %i.hx, align 8, !tbaa !127
  %i.ru = load ptr, ptr %i.gk, align 8, !tbaa !114, !nonnull !37, !align !115
  %i.rv = fsub float -1.000000e+30, %i.lm
  invoke void @_ZN27btPolyhedralContactClipping19clipFaceAgainstHullERK9btVector3RK18btConvexPolyhedronRK11btTransformR20btAlignedObjectArrayIS0_ESB_ffRN36btDiscreteCollisionDetectorInterface6ResultE(ptr noundef nonnull align 4 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(172) %i.rt, ptr noundef nonnull align 4 dereferenceable(64) %i.ru, ptr noundef nonnull align 8 dereferenceable(25) %12, ptr noundef nonnull align 8 dereferenceable(25) %i.rs, float noundef %i.rv, float noundef %i.lm, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.cg unwind label %bb.cb

bb.cf:                                            ; preds = %bb.cd
  %i.rw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  br label %bb.cj

bb.cg:                                            ; preds = %bb.ce, %bb.cc
  %i.rx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ry = load i8, ptr %i.rx, align 8, !tbaa !31, !range !36, !noundef !37
  %i.rz = trunc nuw i8 %i.ry to i1
  br i1 %i.rz, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  invoke void @_ZN16btManifoldResult20refreshContactPointsEv(ptr noundef nonnull align 8 dereferenceable(52) %4)
          to label %bb.ci unwind label %bb.cb

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  call void @_ZN20btAlignedObjectArrayI9btVector3ED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  br label %.critedge

bb.cj:                                            ; preds = %bb.cf, %bb.cb, %bb.ca
  %.pn248 = phi { ptr, i32 } [ %i.rr, %bb.cb ], [ %i.rw, %bb.cf ], [ %.pn244.pn, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  br label %bb.ck

bb.ck:                                            ; preds = %bb.ba, %bb.cj, %bb.az, %bb.ay, %bb.ax
  %.pn248.pn.pn = phi { ptr, i32 } [ %i.pb, %bb.ax ], [ %i.pd, %bb.az ], [ %i.pc, %bb.ay ], [ %.pn248, %bb.cj ], [ %i.pe, %bb.ba ]
  call void @_ZN20btAlignedObjectArrayI9btVector3ED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  br label %bb.cm

bb.cl:                                            ; preds = %bb.s, %.thread523, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %bb.cn

bb.cm:                                            ; preds = %bb.ck, %bb.ag
  %.pn253.pn.pn.pn = phi { ptr, i32 } [ %.pn253, %bb.ag ], [ %.pn248.pn.pn, %bb.ck ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  resume { ptr, i32 } %.pn253.pn.pn.pn

bb.cn:                                            ; preds = %bb.cl, %bb.o, %.thread521
  %i.sa = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.sb = load ptr, ptr %i.sa, align 8, !tbaa !130
  call void @_ZN17btGjkPairDetector16getClosestPointsERKN36btDiscreteCollisionDetectorInterface17ClosestPointInputERNS0_6ResultEP12btIDebugDrawb(ptr noundef nonnull align 8 dereferenceable(100) %9, ptr noundef nonnull align 4 dereferenceable(132) %7, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %i.sb, i1 noundef zeroext false)
  %i.sc = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 3 uses
  %i.sd = load i32, ptr %i.sc, align 4, !tbaa !34
  %.not261 = icmp eq i32 %i.sd, 0
  br i1 %.not261, label %bb.cw, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.se = load ptr, ptr %i.u, align 8, !tbaa !48
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 856
  %i.sg = load i32, ptr %i.sf, align 8, !tbaa !57
  %i.sh = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.si = load i32, ptr %i.sh, align 8, !tbaa !35
  %i.sj = icmp slt i32 %i.sg, %i.si
  br i1 %i.sj, label %bb.cp, label %bb.cw

bb.cp:                                            ; preds = %bb.co
  %i.sk = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.sl = getelementptr inbounds nuw i8, ptr %9, i64 12
  %i.sm = load float, ptr %i.sk, align 8, !tbaa !54 ; 3 uses
  %i.sn = load <2 x float>, ptr %i.sl, align 4, !tbaa !54 ; 4 uses
  %foldExtExtBinop595 = fmul <2 x float> %i.sn, %i.sn
  %i.so = extractelement <2 x float> %foldExtExtBinop595, i64 0
  %i.sp = call float @llvm.fmuladd.f32(float %i.sm, float %i.sm, float %i.so)
  %i.sq = extractelement <2 x float> %i.sn, i64 1 ; 2 uses
  %i.sr = call noundef float @llvm.fmuladd.f32(float %i.sq, float %i.sq, float %i.sp) ; 2 uses
  %i.ss = fcmp ogt float %i.sr, f0x34000000
  br i1 %i.ss, label %bb.cq, label %bb.cw

bb.cq:                                            ; preds = %bb.cp
  %i.st = fdiv float 1.000000e+00, %i.sr          ; 2 uses
  %i.su = insertelement <2 x float> poison, float %i.st, i64 0
  %i.sv = shufflevector <2 x float> %i.su, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sw = fmul <2 x float> %i.sn, %i.sv           ; 8 uses
  %i.sx = fmul float %i.sm, %i.st                 ; 5 uses
  %i.sy = extractelement <2 x float> %i.sw, i64 1 ; 4 uses
  %i.sz = call noundef float @llvm.fabs.f32(float %i.sy)
  %i.ta = fcmp ogt float %i.sz, f0x3F3504F3
  br i1 %i.ta, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.tb = fmul nnan float %i.sy, %i.sy
  %i.tc = extractelement <2 x float> %i.sw, i64 0 ; 3 uses
  %i.td = call float @llvm.fmuladd.f32(float %i.tc, float %i.tc, float %i.tb)
  %sqrt.i = call float @llvm.sqrt.f32(float %i.td)
  %i.te = fdiv float 1.000000e+00, %sqrt.i        ; 2 uses
  %i.tf = fneg float %i.sy
  %i.tg = fmul float %i.te, %i.tf
  %i.th = fmul float %i.tc, %i.te
  br label %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit

bb.cs:                                            ; preds = %bb.cq
  %i.ti = extractelement <2 x float> %i.sw, i64 0
  %foldExtExtBinop597 = fmul <2 x float> %i.sw, %i.sw
  %i.tj = extractelement <2 x float> %foldExtExtBinop597, i64 0
  %i.tk = call float @llvm.fmuladd.f32(float %i.sx, float %i.sx, float %i.tj)
  %sqrt43.i = call float @llvm.sqrt.f32(float %i.tk)
  %i.tl = fdiv float 1.000000e+00, %sqrt43.i      ; 2 uses
  %i.tm = fneg float %i.ti
  %i.tn = fmul float %i.tl, %i.tm
  %i.to = fmul float %i.sx, %i.tl
  br label %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit

_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit:   ; preds = %bb.cs, %bb.cr
  %.sroa.13476.0 = phi float [ %i.th, %bb.cr ], [ 0.000000e+00, %bb.cs ] ; 2 uses
  %.sroa.8473.0 = phi float [ %i.tg, %bb.cr ], [ %i.to, %bb.cs ] ; 2 uses
  %.sroa.0470.0 = phi float [ 0.000000e+00, %bb.cr ], [ %i.tn, %bb.cs ]
  %i.tp = load ptr, ptr %i.w, align 8, !tbaa !13
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 32
  %i.tr = load ptr, ptr %i.tq, align 8
  %i.ts = call noundef float %i.tr(ptr noundef nonnull align 8 dereferenceable(32) %i.w) ; 2 uses
  %i.tt = load ptr, ptr %i.y, align 8, !tbaa !13
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 32
  %i.tv = load ptr, ptr %i.tu, align 8
  %i.tw = call noundef float %i.tv(ptr noundef nonnull align 8 dereferenceable(32) %i.y) ; 2 uses
  %i.tx = fcmp olt float %i.ts, %i.tw             ; 7 uses
  %i.ty = load float, ptr @gContactBreakingThreshold, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  %i.tz = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.ua = getelementptr inbounds nuw i8, ptr %22, i64 32
  %i.ub = getelementptr inbounds nuw i8, ptr %22, i64 48
  %.582 = select i1 %i.tx, ptr %7, ptr %i.gu
  %.583 = select i1 %i.tx, ptr %i.gn, ptr %i.gw
  %.584 = select i1 %i.tx, ptr %i.gp, ptr %i.gy
  %.585 = select i1 %i.tx, ptr %i.gr, ptr %i.ha
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %22, ptr noundef nonnull align 16 dereferenceable(64) %.582, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.tz, ptr noundef nonnull align 16 dereferenceable(16) %.583, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ua, ptr noundef nonnull align 16 dereferenceable(16) %.584, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ub, ptr noundef nonnull align 16 dereferenceable(16) %.585, i64 16, i1 false)
  %i.uc = load i32, ptr %i.sc, align 4, !tbaa !34 ; 2 uses
  %i.ud = icmp sgt i32 %i.uc, 0
  br i1 %i.ud, label %.lr.ph535, label %._crit_edge536.split

.lr.ph535:                                        ; preds = %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit
  %storemerge.v = select i1 %i.tx, float %i.ts, float %i.tw
  %storemerge = fdiv float %i.ty, %storemerge.v   ; 2 uses
  %i.ue = fcmp ogt float %storemerge, f0x3EC90FDB
  %storemerge262 = select i1 %i.ue, float f0x3EC90FDB, float %storemerge
  %i.uf = shufflevector <2 x float> %i.sw, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ug = insertelement <2 x float> %i.uf, float %.sroa.8473.0, i64 0 ; 2 uses
  %i.uh = fmul <2 x float> %i.ug, %i.ug
  %i.ui = fmul float %storemerge262, 5.000000e-01 ; 2 uses
  %i.uj = insertelement <2 x float> poison, float %.sroa.0470.0, i64 0
  %i.uk = insertelement <2 x float> %i.uj, float %i.sx, i64 1 ; 3 uses
  %i.ul = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.uk, <2 x float> %i.uk, <2 x float> %i.uh)
  %i.um = insertelement <2 x float> %i.sw, float %.sroa.13476.0, i64 0 ; 2 uses
  %i.un = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.um, <2 x float> %i.um, <2 x float> %i.ul) ; 2 uses
  %i.uo = extractelement <2 x float> %i.un, i64 0
  %i.up = fcmp ogt float %i.uo, f0x34000000
  %i.uq = call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.un)
  %i.ur = getelementptr inbounds nuw i8, ptr %23, i64 48
  %i.us = getelementptr inbounds nuw i8, ptr %23, i64 56
  %i.ut = getelementptr inbounds nuw i8, ptr %23, i64 64
  %i.uu = getelementptr inbounds nuw i8, ptr %23, i64 80
  %i.uv = getelementptr inbounds nuw i8, ptr %23, i64 96
  %i.uw = getelementptr inbounds nuw i8, ptr %23, i64 112
  %i.ux = getelementptr inbounds nuw i8, ptr %23, i64 128
  %i.uy = getelementptr inbounds nuw i8, ptr %23, i64 144
  %i.uz = getelementptr inbounds nuw i8, ptr %23, i64 160
  %i.va = getelementptr inbounds nuw i8, ptr %23, i64 176
  %i.vb = getelementptr inbounds nuw i8, ptr %23, i64 192
  %i.vc = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.vd = getelementptr inbounds nuw i8, ptr %23, i64 208
  %i.ve = getelementptr inbounds nuw i8, ptr %22, i64 32
  %i.vf = getelementptr inbounds nuw i8, ptr %23, i64 224
  %i.vg = getelementptr inbounds nuw i8, ptr %23, i64 240
  %i.vh = getelementptr inbounds nuw i8, ptr %22, i64 48
  %i.vi = zext i1 %i.tx to i8
  %i.vj = getelementptr inbounds nuw i8, ptr %23, i64 256
  %i.vk = getelementptr inbounds nuw i8, ptr %23, i64 264
  br i1 %i.up, label %.lr.ph535.split.preheader, label %._crit_edge536.split

.lr.ph535.split.preheader:                        ; preds = %.lr.ph535
  %i.vl = insertelement <2 x float> %i.uk, float %.sroa.8473.0, i64 1
  br label %.lr.ph535.split

.lr.ph535.split:                                  ; preds = %.lr.ph535.split.preheader, %bb.cv
  %i.vm = phi i32 [ %i.aic, %bb.cv ], [ %i.uc, %.lr.ph535.split.preheader ]
  %.0185533 = phi i32 [ %i.aib, %bb.cv ], [ 0, %.lr.ph535.split.preheader ] ; 2 uses
  %i.vn = call noundef float @sinf(float noundef %i.ui) #21
  %i.vo = call noundef float @cosf(float noundef %i.ui) #21 ; 7 uses
  %i.vp = uitofp nneg i32 %.0185533 to float
  %i.vq = sitofp i32 %i.vm to float
  %i.vr = fdiv nnan float f0x40C90FDB, %i.vq
  %i.vs = fmul float %i.vr, %i.vp
  %i.vt = fmul float %i.vs, 5.000000e-01          ; 2 uses
  %i.vu = call noundef float @sinf(float noundef %i.vt) #21
  %i.vv = insertelement <2 x float> poison, float %i.vn, i64 0
  %i.vw = insertelement <2 x float> %i.vv, float %i.vu, i64 1
  %i.vx = fdiv <2 x float> %i.vw, %i.uq           ; 4 uses
  %i.vy = shufflevector <2 x float> %i.vx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vz = fmul <2 x float> %i.vl, %i.vy           ; 8 uses
  %i.wa = extractelement <2 x float> %i.vx, i64 0
  %i.wb = fmul float %.sroa.13476.0, %i.wa        ; 8 uses
  %i.wc = extractelement <2 x float> %i.vx, i64 1
  %i.wd = fmul float %i.sx, %i.wc                 ; 9 uses
  %i.we = shufflevector <2 x float> %i.vx, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.wf = fmul <2 x float> %i.sw, %i.we           ; 14 uses
  %i.wg = call noundef float @cosf(float noundef %i.vt) #21 ; 10 uses
  br i1 %i.tx, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %.lr.ph535.split
  %i.wh = fneg float %i.wd                        ; 3 uses
  %i.wi = extractelement <2 x float> %i.wf, i64 0 ; 2 uses
  %i.wj = fneg float %i.wi                        ; 2 uses
  %i.wk = extractelement <2 x float> %i.wf, i64 1 ; 2 uses
  %i.wl = fneg float %i.wk                        ; 2 uses
  %i.wm = fmul float %i.vo, %i.wj
  %i.wn = extractelement <2 x float> %i.vz, i64 1 ; 3 uses
  %i.wo = call float @llvm.fmuladd.f32(float %i.wg, float %i.wn, float %i.wm)
  %i.wp = extractelement <2 x float> %i.vz, i64 0 ; 3 uses
  %i.wq = call float @llvm.fmuladd.f32(float %i.wl, float %i.wp, float %i.wo)
  %i.wr = fmul float %i.wp, %i.wd
  %i.ws = call float @llvm.fmuladd.f32(float %i.wg, float %i.vo, float %i.wr)
  %i.wt = call float @llvm.fmuladd.f32(float %i.wi, float %i.wn, float %i.ws)
  %i.wu = call float @llvm.fmuladd.f32(float %i.wk, float %i.wb, float %i.wt)
  %i.wv = call float @llvm.fmuladd.f32(float %i.wd, float %i.wb, float %i.wq) ; 2 uses
  %i.ww = fmul float %i.vo, %i.wl
  %i.wx = fmul float %i.vo, %i.wh
  %i.wy = call float @llvm.fmuladd.f32(float %i.wg, float %i.wp, float %i.wx)
  %i.wz = fneg float %i.wv
  %i.xa = call float @llvm.fmuladd.f32(float %i.wg, float %i.wb, float %i.ww)
  %i.xb = call float @llvm.fmuladd.f32(float %i.wj, float %i.wb, float %i.wy)
  %i.xc = call float @llvm.fmuladd.f32(float %i.wh, float %i.wn, float %i.xa)
  %i.xd = insertelement <2 x float> poison, float %i.xc, i64 0
  %i.xe = insertelement <2 x float> %i.xd, float %i.xb, i64 1
  %i.xf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wf, <2 x float> %i.vz, <2 x float> %i.xe) ; 4 uses
  %i.xg = fneg <2 x float> %i.xf                  ; 2 uses
  %i.xh = insertelement <2 x float> poison, float %i.wg, i64 0 ; 2 uses
  %i.xi = shufflevector <2 x float> %i.xh, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.xj = fmul <2 x float> %i.xi, %i.xf
  %i.xk = insertelement <2 x float> poison, float %i.wu, i64 0
  %i.xl = shufflevector <2 x float> %i.xk, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.xm = shufflevector <2 x float> %i.wf, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.xn = insertelement <2 x float> %i.xm, float %i.wd, i64 1
  %i.xo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xl, <2 x float> %i.xn, <2 x float> %i.xj)
  %i.xp = shufflevector <2 x float> %i.xf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.xq = insertelement <2 x float> %i.xp, float %i.wv, i64 1 ; 2 uses
  %i.xr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xq, <2 x float> %i.wf, <2 x float> %i.xo)
  %i.xs = shufflevector <2 x float> %i.xg, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.xt = insertelement <2 x float> %i.xs, float %i.wz, i64 0 ; 2 uses
  %i.xu = insertelement <2 x float> poison, float %i.wd, i64 0
  %i.xv = shufflevector <2 x float> %i.xu, <2 x float> %i.wf, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.xw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xt, <2 x float> %i.xv, <2 x float> %i.xr) ; 3 uses
  %i.xx = insertelement <2 x float> %i.xi, float %i.wh, i64 0
  %i.xy = fmul <2 x float> %i.xx, %i.xq
  %i.xz = shufflevector <2 x float> %i.xh, <2 x float> %i.wf, <2 x i32> <i32 0, i32 2>
  %i.ya = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xl, <2 x float> %i.xz, <2 x float> %i.xy)
  %i.yb = shufflevector <2 x float> %i.xt, <2 x float> %i.xf, <2 x i32> <i32 0, i32 2>
  %i.yc = shufflevector <2 x float> %i.xv, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.yd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.yb, <2 x float> %i.yc, <2 x float> %i.ya)
  %i.ye = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xg, <2 x float> %i.xm, <2 x float> %i.yd) ; 3 uses
  %i.yf = extractelement <2 x float> %i.ye, i64 1 ; 4 uses
  %i.yg = fmul float %i.yf, %i.yf
  %i.yh = extractelement <2 x float> %i.xw, i64 1 ; 5 uses
  %i.yi = call float @llvm.fmuladd.f32(float %i.yh, float %i.yh, float %i.yg)
  %i.yj = extractelement <2 x float> %i.xw, i64 0 ; 3 uses
  %i.yk = call float @llvm.fmuladd.f32(float %i.yj, float %i.yj, float %i.yi)
  %i.yl = extractelement <2 x float> %i.ye, i64 0 ; 4 uses
  %i.ym = call noundef float @llvm.fmuladd.f32(float %i.yl, float %i.yl, float %i.yk)
  %i.yn = fdiv float 2.000000e+00, %i.ym          ; 2 uses
  %i.yo = fmul float %i.yf, %i.yn                 ; 3 uses
  %i.yp = insertelement <2 x float> poison, float %i.yn, i64 0
  %i.yq = shufflevector <2 x float> %i.xw, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.yr = shufflevector <2 x float> %i.yp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ys = fmul <2 x float> %i.yq, %i.yr           ; 3 uses
  %i.yt = fmul float %i.yl, %i.yo                 ; 2 uses
  %i.yu = extractelement <2 x float> %i.ys, i64 1 ; 3 uses
  %i.yv = fmul float %i.yl, %i.yu                 ; 2 uses
  %i.yw = extractelement <2 x float> %i.ys, i64 0
  %i.yx = fmul float %i.yh, %i.yw                 ; 2 uses
  %i.yy = fmul float %i.yh, %i.yo                 ; 2 uses
  %i.yz = fmul float %i.yh, %i.yu                 ; 2 uses
  %i.za = fmul float %i.yf, %i.yo                 ; 2 uses
  %i.zb = fmul <2 x float> %i.ye, %i.ys           ; 4 uses
  %i.zc = fmul float %i.yj, %i.yu                 ; 2 uses
  %i.zd = load ptr, ptr %i.gk, align 8, !tbaa !114, !nonnull !37, !align !115 ; 9 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %i.zd, i64 16
  %i.zf = getelementptr inbounds nuw i8, ptr %i.zd, i64 32
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zd, i64 4
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zd, i64 20
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zd, i64 36
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zd, i64 8
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zd, i64 24
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zd, i64 40
  %.scalar = fadd float %i.za, %i.zc
  %i.zm = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.scalar, i64 0
  %i.zn = shufflevector <2 x float> %i.zm, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.zo = fsub <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float -0.000000e+00>, %i.zn
  %.scalar599 = fsub float %i.yy, %i.yv
  %i.zp = insertelement <2 x float> <float poison, float 1.000000e+00>, float %.scalar599, i64 0
  %i.zq = shufflevector <2 x float> %i.zp, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %.scalar600 = fadd float %i.yz, %i.yt
  %i.zr = insertelement <2 x float> <float poison, float -0.000000e+00>, float %.scalar600, i64 0
  %i.zs = shufflevector <2 x float> %i.zr, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.zt = load <2 x float>, ptr %i.zd, align 4, !tbaa !54, !noalias !131 ; 2 uses
  %i.zu = load <2 x float>, ptr %i.ze, align 4, !tbaa !54, !noalias !131 ; 2 uses
  %i.zv = load <2 x float>, ptr %i.zf, align 4, !tbaa !54, !noalias !131 ; 2 uses
  %i.zw = shufflevector <2 x float> %i.zu, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.zx = insertelement <4 x float> %i.zw, float 0.000000e+00, i64 3
  %i.zy = shufflevector <2 x float> %i.zt, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.zz = insertelement <4 x float> %i.zy, float 0.000000e+00, i64 3
  %i.aaa = shufflevector <2 x float> %i.zv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aab = insertelement <4 x float> %i.aaa, float 0.000000e+00, i64 3
  %i.aac = fadd float %i.yy, %i.yv
  %i.aad = fadd float %i.yx, %i.zc
  %i.aae = fsub float 1.000000e+00, %i.aad
  %shift = shufflevector <2 x float> %i.zb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop601 = fsub <2 x float> %shift, %i.zb
  %i.aaf = shufflevector <2 x float> %foldExtExtBinop601, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.aag = load <2 x float>, ptr %i.zh, align 4, !tbaa !54, !noalias !131 ; 2 uses
  %i.aah = load float, ptr %i.zk, align 4, !tbaa !54, !noalias !131
  %i.aai = load <2 x float>, ptr %i.zg, align 4, !tbaa !54, !noalias !131 ; 2 uses
  %i.aaj = load float, ptr %i.zj, align 4, !tbaa !54, !noalias !131
  %i.aak = load <2 x float>, ptr %i.zi, align 4, !tbaa !54, !noalias !131 ; 2 uses
  %i.aal = load float, ptr %i.zl, align 4, !tbaa !54, !noalias !131
  %i.aam = shufflevector <2 x float> %i.aag, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.aan = shufflevector <4 x float> %i.zx, <4 x float> %i.aam, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.aao = fmul <4 x float> %i.aan, %i.zq
  %i.aap = shufflevector <2 x float> %i.aai, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.aaq = shufflevector <4 x float> %i.zz, <4 x float> %i.aap, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.aar = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aaq, <4 x float> %i.zo, <4 x float> %i.aao)
  %i.aas = shufflevector <2 x float> %i.aak, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.aat = shufflevector <4 x float> %i.aab, <4 x float> %i.aas, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.aau = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aat, <4 x float> %i.zs, <4 x float> %i.aar)
  %i.aav = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.aae, i64 0
  %i.aaw = shufflevector <4 x float> %i.aav, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.aax = shufflevector <2 x float> %i.zu, <2 x float> %i.aag, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.aay = insertelement <4 x float> %i.aax, float 1.000000e+00, i64 3 ; 2 uses
  %i.aaz = fmul <4 x float> %i.aaw, %i.aay
  %i.aba = shufflevector <2 x float> %i.zt, <2 x float> %i.aai, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.abb = insertelement <4 x float> %i.aba, float 0.000000e+00, i64 3 ; 2 uses
  %i.abc = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.aac, i64 0
  %i.abd = shufflevector <4 x float> %i.abc, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.abe = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.abb, <4 x float> %i.abd, <4 x float> %i.aaz)
  %i.abf = shufflevector <2 x float> %i.zv, <2 x float> %i.aak, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.abg = insertelement <4 x float> %i.abf, float 0.000000e+00, i64 3 ; 2 uses
  %i.abh = insertelement <4 x float> %i.aaf, float -0.000000e+00, i64 1
  %i.abi = shufflevector <4 x float> %i.abh, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.abj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.abg, <4 x float> %i.abi, <4 x float> %i.abe)
  store <4 x float> %i.aau, ptr %7, align 16
  store <4 x float> %i.abj, ptr %i.gn, align 16
  %.scalar603 = fsub float %i.yz, %i.yt
  %i.abk = insertelement <2 x float> <float poison, float -0.000000e+00>, float %.scalar603, i64 0
  %i.abl = shufflevector <2 x float> %i.abk, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.abm = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.zb, <4 x i32> <i32 3, i32 3, i32 3, i32 1>
  %i.abn = shufflevector <2 x float> <float poison, float -0.000000e+00>, <2 x float> %i.zb, <4 x i32> <i32 2, i32 2, i32 2, i32 1>
  %i.abo = fadd <4 x float> %i.abm, %i.abn
  %.scalar604 = fadd float %i.yx, %i.za
  %i.abp = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.scalar604, i64 0
  %i.abq = shufflevector <2 x float> %i.abp, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.abr = fsub <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float -0.000000e+00>, %i.abq
  %i.abs = insertelement <4 x float> %i.aay, float %i.aah, i64 2
  %i.abt = fmul <4 x float> %i.abo, %i.abs
  %i.abu = insertelement <4 x float> %i.abb, float %i.aaj, i64 2
  %i.abv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.abu, <4 x float> %i.abl, <4 x float> %i.abt)
  %i.abw = insertelement <4 x float> %i.abg, float %i.aal, i64 2
  %i.abx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.abw, <4 x float> %i.abr, <4 x float> %i.abv)
  store <4 x float> %i.abx, ptr %i.gp, align 16
  %i.aby = load ptr, ptr %i.gs, align 8, !tbaa !114, !nonnull !37, !align !115 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.gu, ptr noundef nonnull align 4 dereferenceable(64) %i.aby, i64 16, i1 false), !tbaa.struct !69
  %i.abz = getelementptr inbounds nuw i8, ptr %i.aby, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.gw, ptr noundef nonnull align 4 dereferenceable(16) %i.abz, i64 16, i1 false), !tbaa.struct !69
  %i.aca = getelementptr inbounds nuw i8, ptr %i.aby, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.gy, ptr noundef nonnull align 4 dereferenceable(16) %i.aca, i64 16, i1 false), !tbaa.struct !69
  %i.acb = getelementptr inbounds nuw i8, ptr %i.aby, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ha, ptr noundef nonnull align 4 dereferenceable(16) %i.acb, i64 16, i1 false), !tbaa.struct !69
  br label %bb.cv

bb.cu:                                            ; preds = %.lr.ph535.split
  %i.acc = load ptr, ptr %i.gk, align 8, !tbaa !114, !nonnull !37, !align !115 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %7, ptr noundef nonnull align 4 dereferenceable(64) %i.acc, i64 16, i1 false), !tbaa.struct !69
  %i.acd = getelementptr inbounds nuw i8, ptr %i.acc, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.gn, ptr noundef nonnull align 4 dereferenceable(16) %i.acd, i64 16, i1 false), !tbaa.struct !69
end_hunk_0
