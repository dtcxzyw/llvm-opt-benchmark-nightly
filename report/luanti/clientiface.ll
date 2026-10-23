Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/clientiface?download=true
inline.NumInlined: 1283
inline.NumDeleted: 622
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN12RemoteClient13GetNextBlocksEP17ServerEnvironmentP13EmergeManagerfRSt6vectorI27PrioritySortedBlockTransferSaIS5_EE:.noexc.i
  %i.hk = getelementptr inbounds nuw i8, ptr %i.dk, i64 960
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !302
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 692
  %i.hn = load i16, ptr %i.hm, align 4, !tbaa !303 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.dk, i64 1148
  %i.hp = load i16, ptr %i.ho, align 4, !tbaa !304
  %i.hq = add i16 %i.hp, 1                        ; 2 uses
  %i.hr = icmp sgt i16 %i.hn, -1
  br i1 %i.hr, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.hs = sext i16 %i.hq to i32
  %i.ht = uitofp nneg i16 %i.hn to float
  %i.hu = fmul nnan nsz float %i.ht, 6.250000e-02
  %i.hv = call nsz noundef float @llvm.ceil.f32(float %i.hu)
  %i.hw = fptoui float %i.hv to i32
  %.sroa.speculated363 = call i32 @llvm.umin.i32(i32 %i.hw, i32 %i.hs)
  %i.hx = trunc i32 %.sroa.speculated363 to i16
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.0 = phi i16 [ %i.hx, %bb.ac ], [ %i.hq, %bb.ab ] ; 4 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.dk, i64 1144
  %i.hz = load float, ptr %i.hy, align 8, !tbaa !305 ; 4 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 322 ; 2 uses
  %i.ib = load i16, ptr %i.ia, align 2, !tbaa !90
  %i.ic = extractelement <2 x i16> %i.fo, i64 0
  %i.id = icmp eq i16 %i.ib, %i.ic
  br i1 %i.id, label %bb.ae, label %_ZNK4core8vector3dIsEneERKS1_.exit.thread

bb.ae:                                            ; preds = %bb.ad
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.if = load i16, ptr %i.ie, align 4, !tbaa !91
  %i.ig = extractelement <2 x i16> %i.fo, i64 1
  %i.ih = icmp eq i16 %i.if, %i.ig
  br i1 %i.ih, label %_ZNK4core8vector3dIsEneERKS1_.exit, label %_ZNK4core8vector3dIsEneERKS1_.exit.thread

_ZNK4core8vector3dIsEneERKS1_.exit:               ; preds = %bb.ae
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 326
  %i.ij = load i16, ptr %i.ii, align 2, !tbaa !92
  %.not477 = icmp eq i16 %i.ij, %.sroa.8.0.extract.trunc
  br i1 %.not477, label %bb.af, label %_ZNK4core8vector3dIsEneERKS1_.exit.thread

_ZNK4core8vector3dIsEneERKS1_.exit.thread:        ; preds = %bb.ad, %bb.ae, %_ZNK4core8vector3dIsEneERKS1_.exit
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i16 0, ptr %i.ik, align 8, !tbaa !98
  store <2 x i16> %i.fo, ptr %i.ia, align 2, !tbaa !97
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 326
  store i16 %.sroa.8.0.extract.trunc, ptr %.sroa.8.0..sroa_idx, align 2, !tbaa !97
  store float 0.000000e+00, ptr %i.q, align 8, !tbaa !99
  br label %bb.af

bb.af:                                            ; preds = %_ZNK4core8vector3dIsEneERKS1_.exit.thread, %_ZNK4core8vector3dIsEneERKS1_.exit
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %.sroa.0384.0.vec.extract394 = extractelement <2 x float> %.sroa.0384.0, i64 0 ; 2 uses
  %i.im = load float, ptr %i.il, align 8, !tbaa !306
  %.sroa.0384.4.vec.extract405 = extractelement <2 x float> %.sroa.0384.0, i64 1 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.io = load float, ptr %i.in, align 4, !tbaa !300
  %i.ip = fmul nsz float %.sroa.0384.4.vec.extract405, %i.io
  %i.iq = call nsz float @llvm.fmuladd.f32(float %.sroa.0384.0.vec.extract394, float %i.im, float %i.ip)
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.is = load float, ptr %i.ir, align 8, !tbaa !307
  %i.it = call nsz noundef float @llvm.fmuladd.f32(float %.sroa.19.0, float %i.is, float %i.iq)
  %i.iu = fmul nsz float %i.hz, 1.000000e-01
  %i.iv = call nsz noundef float @llvm.cos.f32(float %i.iu)
  %i.iw = fcmp nsz olt float %i.it, %i.iv
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  br i1 %i.iw, label %bb.ag, label %._crit_edge529

._crit_edge529:                                   ; preds = %bb.af
  %.pre531 = load i16, ptr %i.ix, align 8, !tbaa !98
  br label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i16 0, ptr %i.ix, align 8, !tbaa !98
  store <2 x float> %.sroa.0384.0, ptr %i.il, align 8, !tbaa !125
  store float %.sroa.19.0, ptr %i.ir, align 8, !tbaa !125
  store float 0.000000e+00, ptr %i.q, align 8, !tbaa !99
  br label %bb.ah

bb.ah:                                            ; preds = %._crit_edge529, %bb.ag
  %i.iy = phi i16 [ %.pre531, %._crit_edge529 ], [ 0, %bb.ag ] ; 5 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.ja = call nsz noundef float @_ZNK9PlayerSAO10getZoomFOVEv(ptr noundef nonnull align 8 dereferenceable(1226) %i.dk)
  %i.jb = fcmp nsz olt float %i.ja, 1.000000e-03
  br i1 %i.jb, label %_Z8rangelimIfffET_RKS0_RKT0_RKT1_.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.jc = call nsz noundef float @_ZNK9PlayerSAO10getZoomFOVEv(ptr noundef nonnull align 8 dereferenceable(1226) %i.dk)
  %i.jd = fmul nsz float %i.jc, f0x3C8EFA35       ; 2 uses
  %i.je = fcmp nsz olt float %i.hz, %i.jd
  %.sroa.speculated356 = select i1 %i.je, float %i.jd, float %i.hz
  br label %_Z8rangelimIfffET_RKS0_RKT0_RKT1_.exit

_Z8rangelimIfffET_RKS0_RKT0_RKT1_.exit:           ; preds = %bb.ah, %bb.ai
  %i.jf = phi nsz float [ %.sroa.speculated356, %bb.ai ], [ 0.000000e+00, %bb.ah ] ; 4 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.jh = load i16, ptr %i.jg, align 4, !tbaa !73
  %i.ji = call noundef signext i16 @_Z10adjustDistsf(i16 noundef signext %i.jh, float noundef %i.jf)
  %.sroa.speculated351 = call i16 @llvm.smin.i16(i16 %.0, i16 %i.ji) ; 3 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 350
  %i.jk = load i16, ptr %i.jj, align 2, !tbaa !74
  %i.jl = call noundef signext i16 @_Z10adjustDistsf(i16 noundef signext %i.jk, float noundef %i.jf)
  %.sroa.speculated346 = call i16 @llvm.smin.i16(i16 %.0, i16 %i.jl)
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.jn = load i16, ptr %i.jm, align 8, !tbaa !75
  %i.jo = call noundef signext i16 @_Z10adjustDistsf(i16 noundef signext %i.jn, float noundef %i.jf)
  %.sroa.speculated341 = call i16 @llvm.smin.i16(i16 %.0, i16 %i.jo) ; 2 uses
  %i.jp = sext i16 %.sroa.speculated351 to i32
  %i.jq = sitofp i16 %.sroa.speculated351 to float
  %i.jr = fmul nnan nsz float %i.jq, 1.000000e+01
  %i.js = fmul nnan nsz float %i.jr, 1.600000e+01 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 354
  %i.ju = load i16, ptr %i.jt, align 2, !tbaa !76
  %i.jv = call noundef signext i16 @_Z10adjustDistsf(i16 noundef signext %i.ju, float noundef %i.jf)
  %.sroa.speculated = call i16 @llvm.smin.i16(i16 %.0, i16 %i.jv)
  %i.jw = sext i16 %i.iy to i32                   ; 2 uses
  %i.jx = sext i16 %.sroa.speculated341 to i32
  %i.jy = shl nsw i32 %i.jx, 1
  %i.jz = icmp sgt i32 %i.jy, %i.jw
  %i.ka = select i1 %i.jz, i32 2, i32 0
  %i.kb = add nsw i32 %i.ka, %i.jw
  %spec.select478 = call i32 @llvm.smin.i32(i32 %i.kb, i32 %i.jp)
  %spec.select = trunc nsw i32 %spec.select478 to i16 ; 2 uses
  %i.kc = fmul nsz float %.sroa.0424.4.vec.extract, %.sroa.0384.4.vec.extract405
  %i.kd = call nsz float @llvm.fmuladd.f32(float %.sroa.0384.0.vec.extract394, float %.sroa.0424.0.vec.extract, float %i.kc)
  %i.ke = call nsz noundef float @llvm.fmuladd.f32(float %.sroa.19.0, float %.sroa.14.0, float %i.kd) ; 3 uses
  %i.kf = fcmp nsz olt float %i.ke, 0.000000e+00
  %i.kg = fcmp nsz ogt float %i.ke, 3.000000e+02
  %..i259 = select nsz i1 %i.kg, float 3.000000e+02, float %i.ke
  %i.kh = fdiv nsz float %..i259, 3.000000e+02
  %i.ki = fadd nsz float %i.kh, 1.000000e+00
  %i.kj = select i1 %i.kf, float 1.000000e+00, float %i.ki
  %i.kk = fdiv nsz float %i.hz, %i.kj
  %i.kl = fcmp nsz ogt <2 x float> %i.fq, zeroinitializer ; 2 uses
  %i.km = extractelement <2 x i1> %i.kl, i64 0
  %i.kn = select nsz i1 %i.km, float 5.000000e+00, float -5.000000e+00
  %i.ko = extractelement <2 x float> %i.fq, i64 0
  %i.kp = fadd nsz float %i.ko, %i.kn
  %i.kq = fdiv nsz float %i.kp, 1.000000e+01
  %i.kr = fptosi float %i.kq to i16
  %i.ks = fcmp nsz ogt float %i.fr, 0.000000e+00
  %i.kt = insertelement <2 x i1> %i.kl, i1 %i.ks, i64 0
  %i.ku = select <2 x i1> %i.kt, <2 x float> splat (float 5.000000e+00), <2 x float> splat (float -5.000000e+00)
  %i.kv = insertelement <2 x float> %i.fq, float %i.fr, i64 0
  %i.kw = fadd nsz <2 x float> %i.kv, %i.ku
  %i.kx = fdiv nsz <2 x float> %i.kw, splat (float 1.000000e+01)
  %i.ky = fptosi <2 x float> %i.kx to <2 x i16>   ; 2 uses
  %i.kz = extractelement <2 x i16> %i.ky, i64 0
  %i.la = zext i16 %i.kz to i48
  %.sroa.3.0.insert.shift.i263 = shl nuw i48 %i.la, 32
  %i.lb = extractelement <2 x i16> %i.ky, i64 1
  %i.lc = zext i16 %i.lb to i48
  %.sroa.2.0.insert.shift.i265 = shl nuw nsw i48 %i.lc, 16
  %.sroa.2.0.insert.insert.i266 = or disjoint i48 %.sroa.2.0.insert.shift.i265, %.sroa.3.0.insert.shift.i263
  %.sroa.0.0.insert.ext.i267 = zext i16 %i.kr to i48
  %.sroa.0.0.insert.insert.i268 = or disjoint i48 %.sroa.2.0.insert.insert.i266, %.sroa.0.0.insert.ext.i267
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #29
  store i16 %i.iy, ptr %i.k, align 2, !tbaa !97
  %.not212511 = icmp sgt i16 %i.iy, %spec.select
  br i1 %.not212511, label %.loopexit490.thread, label %.lr.ph516

.lr.ph516:                                        ; preds = %_Z8rangelimIfffET_RKS0_RKT0_RKT1_.exit
  %i.ld = getelementptr inbounds nuw i8, ptr %7, i64 2 ; 7 uses
  %i.le = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 7 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 356
  %invariant.op = add <2 x i16> %i.fo, splat (i16 -1938)
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph516, %._crit_edge
  %.0176515 = phi i32 [ %i.hj, %.lr.ph516 ], [ %.1177.lcssa, %._crit_edge ] ; 2 uses
  %.0183514 = phi i32 [ -1, %.lr.ph516 ], [ %.1184.lcssa, %._crit_edge ] ; 2 uses
  %.0190513 = phi i32 [ -1, %.lr.ph516 ], [ %.1191.lcssa, %._crit_edge ] ; 2 uses
  %i.lq = phi i16 [ %i.iy, %.lr.ph516 ], [ %i.tq, %._crit_edge ] ; 12 uses
  %i.lr = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN17FacePositionCache16getFacePositionsEt(i16 noundef zeroext %i.lq) ; 2 uses
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !168 ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lr, i64 8 ; 2 uses
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !168 ; 2 uses
  %.not479496 = icmp eq ptr %i.ls, %i.lu
  br i1 %.not479496, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.aj
  %i.lv = sext i16 %i.lq to i32
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.cd
  %i.lw = phi ptr [ %i.tk, %bb.cd ], [ %i.lu, %.lr.ph.preheader ]
  %i.lx = phi i16 [ %i.tl, %bb.cd ], [ %i.lq, %.lr.ph.preheader ] ; 17 uses
  %i.ly = phi i16 [ %i.tm, %bb.cd ], [ %i.lq, %.lr.ph.preheader ] ; 15 uses
  %i.lz = phi i16 [ %i.tn, %bb.cd ], [ %i.lq, %.lr.ph.preheader ] ; 15 uses
  %i.ma = phi i16 [ %i.to, %bb.cd ], [ %i.lq, %.lr.ph.preheader ] ; 11 uses
  %.1177504 = phi i32 [ %.5459, %bb.cd ], [ %.0176515, %.lr.ph.preheader ] ; 15 uses
  %.1184499 = phi i32 [ %.6189458, %bb.cd ], [ %.0183514, %.lr.ph.preheader ] ; 16 uses
  %.1191498 = phi i32 [ %.6196457, %bb.cd ], [ %.0190513, %.lr.ph.preheader ] ; 16 uses
  %.sroa.0332.0497 = phi ptr [ %i.tp, %bb.cd ], [ %i.ls, %.lr.ph.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  %i.mb = load <2 x i16>, ptr %.sroa.0332.0497, align 2, !tbaa !97 ; 2 uses
  %i.mc = add <2 x i16> %i.mb, %i.fo
  %i.md = getelementptr inbounds nuw i8, ptr %.sroa.0332.0497, i64 4
  %i.me = load i16, ptr %i.md, align 2, !tbaa !92
  %i.mf = add i16 %i.me, %.sroa.8.0.extract.trunc ; 2 uses
  %.sroa.3.0.insert.ext.i269 = zext i16 %i.mf to i48
  %.sroa.3.0.insert.shift.i270 = shl nuw i48 %.sroa.3.0.insert.ext.i269, 32
  %.v = shufflevector <2 x i16> %i.mc, <2 x i16> <i16 0, i16 poison>, <3 x i32> <i32 0, i32 1, i32 2>
  %i.mg = bitcast <3 x i16> %.v to i48
  %.sroa.0.0.insert.insert.i275 = or disjoint i48 %.sroa.3.0.insert.shift.i270, %i.mg ; 2 uses
  store i48 %.sroa.0.0.insert.insert.i275, ptr %7, align 8
  %i.mh = icmp slt i16 %i.ma, 2
  br i1 %i.mh, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.lr.ph
  %i.mi = load i16, ptr %i.do, align 4, !tbaa !71
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %.lr.ph
  %.0199 = phi i16 [ %i.mi, %bb.ak ], [ %.0175, %.lr.ph ]
  %.reass = add <2 x i16> %i.mb, %invariant.op
  %i.mj = icmp ult <2 x i16> %.reass, splat (i16 -3875)
  %i.mk = bitcast <2 x i1> %i.mj to i2
  %i.ml = icmp ne i2 %i.mk, 0
  %i.mm = sext i16 %i.mf to i32
  %i.mn = add nsw i32 %i.mm, -1938
  %i.mo = icmp ult i32 %i.mn, -3875
  %i.mp = select i1 %i.ml, i1 true, i1 %i.mo
  br i1 %i.mp, label %.thread452, label %bb.am

.thread452:                                       ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.cd

bb.am:                                            ; preds = %bb.al
  %i.mq = icmp sle i16 %i.ma, %.sroa.speculated   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #29
  %i.mr = call noundef zeroext i1 @_Z14isBlockInSightN4core8vector3dIsEENS0_IfEES2_ffPf(i48 %.sroa.0.0.insert.insert.i275, <2 x float> %i.fq, float %i.fr, <2 x float> %.sroa.0384.0, float %.sroa.19.0, float noundef %i.kk, float noundef %i.js, ptr noundef nonnull %i.l)
  br i1 %i.mr, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  br i1 %i.em, label %bb.ao, label %.thread460

bb.ao:                                            ; preds = %bb.an
  %.sroa.028.0.copyload = load i48, ptr %7, align 8, !tbaa !97
  %i.ms = call noundef zeroext i1 @_Z14isBlockInSightN4core8vector3dIsEENS0_IfEES2_ffPf(i48 %.sroa.028.0.copyload, <2 x float> %i.fq, float %i.fr, <2 x float> %.sroa.0419.0, float %.sroa.8423.0, float noundef 1.000000e-01, float noundef %i.js, ptr noundef null)
  br i1 %i.ms, label %bb.ap, label %.thread460

bb.ap:                                            ; preds = %bb.ao, %bb.am
  %i.mt = call noundef nonnull align 8 dereferenceable(144) ptr @_ZN17ServerEnvironment6getMapEv(ptr noundef nonnull align 8 dereferenceable(3560) %1)
  %.sroa.013.0.copyload = load i48, ptr %7, align 8, !tbaa !97
  %i.mu = call noundef ptr @_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144) %i.mt, i48 %.sroa.013.0.copyload) ; 6 uses
  %.not213 = icmp eq ptr %i.mu, null              ; 2 uses
  br i1 %.not213, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 32
  store float 0.000000e+00, ptr %i.mv, align 8, !tbaa !339
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.mw = zext i16 %.0199 to i32
  %.not214 = icmp ult i32 %.1177504, %i.mw
  br i1 %.not214, label %bb.as, label %.thread465

bb.as:                                            ; preds = %bb.ar
  %i.mx = load i64, ptr %i.dm, align 8, !tbaa !89
  %.not.not.i.i = icmp eq i64 %i.mx, 0
  br i1 %.not.not.i.i, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %bb.as
  %.sroa.06.012.i.i = load ptr, ptr %i.lg, align 8, !tbaa !87 ; 2 uses
  %.not13.i.i = icmp eq ptr %.sroa.06.012.i.i, null
  br i1 %.not13.i.i, label %.loopexit487, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.at
  %i.my = load i16, ptr %7, align 8, !tbaa !90
  %i.mz = load i16, ptr %i.ld, align 2
  %i.na = load i16, ptr %i.le, align 4
  br label %bb.au

bb.au:                                            ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i, %.lr.ph.i.i
  %.sroa.06.014.i.i = phi ptr [ %.sroa.06.012.i.i, %.lr.ph.i.i ], [ %.sroa.06.0.i.i, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i ] ; 4 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %.sroa.06.014.i.i, i64 8
  %i.nc = load i16, ptr %i.nb, align 2, !tbaa !90
  %i.nd = icmp eq i16 %i.my, %i.nc
  br i1 %i.nd, label %bb.av, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i

bb.av:                                            ; preds = %bb.au
  %i.ne = getelementptr inbounds nuw i8, ptr %.sroa.06.014.i.i, i64 10
  %i.nf = load i16, ptr %i.ne, align 2, !tbaa !91
  %i.ng = icmp eq i16 %i.mz, %i.nf
  br i1 %i.ng, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i: ; preds = %bb.av
  %i.nh = getelementptr inbounds nuw i8, ptr %.sroa.06.014.i.i, i64 12
  %i.ni = load i16, ptr %i.nh, align 2, !tbaa !92
  %i.nj = icmp eq i16 %i.na, %i.ni
  br i1 %i.nj, label %.thread460, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i, %bb.av, %bb.au
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.014.i.i, align 8, !tbaa !87 ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i, label %.loopexit487, label %bb.au, !llvm.loop !1

bb.aw:                                            ; preds = %bb.as
  %i.nk = load i16, ptr %7, align 8, !tbaa !90    ; 2 uses
  %i.nl = sext i16 %i.nk to i64                   ; 2 uses
  %i.nm = load i16, ptr %i.ld, align 2, !tbaa !91 ; 2 uses
  %i.nn = sext i16 %i.nm to i64                   ; 2 uses
  %i.no = load i16, ptr %i.le, align 4, !tbaa !92 ; 2 uses
  %i.np = sext i16 %i.no to i64
  %i.nq = call i64 @llvm.fshl.i64(i64 %i.nl, i64 %i.nl, i64 40)
  %i.nr = call i64 @llvm.fshl.i64(i64 %i.nn, i64 %i.nn, i64 16)
  %i.ns = xor i64 %i.nr, %i.nq
  %i.nt = xor i64 %i.ns, %i.np                    ; 2 uses
  %i.nu = load i64, ptr %i.lf, align 8, !tbaa !65 ; 2 uses
  %i.nv = urem i64 %i.nt, %i.nu                   ; 2 uses
  %i.nw = load ptr, ptr %i.dl, align 8, !tbaa !64
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %i.nw, i64 %i.nv
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !93 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ny, null
  br i1 %.not.i.i.i.i, label %.loopexit487, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !87 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.nz, i64 16
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !95
  br label %bb.ay

bb.ay:                                            ; preds = %bb.bb, %bb.ax
  %i.oa = phi i64 [ %.pre.i.i.i.i, %bb.ax ], [ %i.oo, %bb.bb ]
  %i.ob = phi ptr [ %i.nz, %bb.ax ], [ %i.om, %bb.bb ] ; 4 uses
  %i.oc = icmp eq i64 %i.nt, %i.oa
  br i1 %i.oc, label %bb.az, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i.i

bb.az:                                            ; preds = %bb.ay
  %i.od = getelementptr inbounds nuw i8, ptr %i.ob, i64 8
  %i.oe = load i16, ptr %i.od, align 2, !tbaa !90
  %i.of = icmp eq i16 %i.nk, %i.oe
  br i1 %i.of, label %bb.ba, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i.i

bb.ba:                                            ; preds = %bb.az
  %i.og = getelementptr inbounds nuw i8, ptr %i.ob, i64 10
  %i.oh = load i16, ptr %i.og, align 2, !tbaa !91
  %i.oi = icmp eq i16 %i.nm, %i.oh
  br i1 %i.oi, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i.i: ; preds = %bb.ba
  %i.oj = getelementptr inbounds nuw i8, ptr %i.ob, i64 12
  %i.ok = load i16, ptr %i.oj, align 2, !tbaa !92
  %i.ol = icmp eq i16 %i.no, %i.ok
  br i1 %i.ol, label %.thread460, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i.i, %bb.ba, %bb.az, %bb.ay
  %i.om = load ptr, ptr %i.ob, align 8, !tbaa !87 ; 3 uses
  %.not18.i.i.i.i = icmp eq ptr %i.om, null
  br i1 %.not18.i.i.i.i, label %.loopexit487, label %bb.bb

bb.bb:                                            ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i.i
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 16
  %i.oo = load i64, ptr %i.on, align 8, !tbaa !95 ; 2 uses
  %i.op = urem i64 %i.oo, %i.nu
  %.not19.i.i.i.i = icmp eq i64 %i.op, %i.nv
  br i1 %.not19.i.i.i.i, label %bb.ay, label %.loopexit487, !llvm.loop !2

.loopexit487:                                     ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i.i, %bb.bb, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i, %bb.aw, %bb.at
  %i.oq = load i64, ptr %i.lh, align 8, !tbaa !89
  %.not.not.i.i276 = icmp eq i64 %i.oq, 0
  br i1 %.not.not.i.i276, label %bb.bc, label %bb.bf

bb.bc:                                            ; preds = %.loopexit487
  %.sroa.06.012.i.i285 = load ptr, ptr %i.lk, align 8, !tbaa !87 ; 2 uses
  %.not13.i.i286 = icmp eq ptr %.sroa.06.012.i.i285, null
  br i1 %.not13.i.i286, label %.loopexit483, label %.lr.ph.i.i287

.lr.ph.i.i287:                                    ; preds = %bb.bc
  %i.or = load i16, ptr %7, align 8, !tbaa !90
  %i.os = load i16, ptr %i.ld, align 2
  %i.ot = load i16, ptr %i.le, align 4
  br label %bb.bd

bb.bd:                                            ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i289, %.lr.ph.i.i287
  %.sroa.06.014.i.i288 = phi ptr [ %.sroa.06.012.i.i285, %.lr.ph.i.i287 ], [ %.sroa.06.0.i.i290, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i289 ] ; 4 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %.sroa.06.014.i.i288, i64 8
  %i.ov = load i16, ptr %i.ou, align 2, !tbaa !90
  %i.ow = icmp eq i16 %i.or, %i.ov
  br i1 %i.ow, label %bb.be, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i289

bb.be:                                            ; preds = %bb.bd
  %i.ox = getelementptr inbounds nuw i8, ptr %.sroa.06.014.i.i288, i64 10
  %i.oy = load i16, ptr %i.ox, align 2, !tbaa !91
  %i.oz = icmp eq i16 %i.os, %i.oy
  br i1 %i.oz, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i292, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i289

_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i292: ; preds = %bb.be
  %i.pa = getelementptr inbounds nuw i8, ptr %.sroa.06.014.i.i288, i64 12
  %i.pb = load i16, ptr %i.pa, align 2, !tbaa !92
  %i.pc = icmp eq i16 %i.ot, %i.pb
  br i1 %i.pc, label %.thread460, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i289

_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i289: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i292, %bb.be, %bb.bd
  %.sroa.06.0.i.i290 = load ptr, ptr %.sroa.06.014.i.i288, align 8, !tbaa !87 ; 2 uses
  %.not.i.i291 = icmp eq ptr %.sroa.06.0.i.i290, null
  br i1 %.not.i.i291, label %.loopexit483, label %bb.bd, !llvm.loop !1

bb.bf:                                            ; preds = %.loopexit487
  %i.pd = load i16, ptr %7, align 8, !tbaa !90    ; 2 uses
  %i.pe = sext i16 %i.pd to i64                   ; 2 uses
  %i.pf = load i16, ptr %i.ld, align 2, !tbaa !91 ; 2 uses
  %i.pg = sext i16 %i.pf to i64                   ; 2 uses
  %i.ph = load i16, ptr %i.le, align 4, !tbaa !92 ; 2 uses
  %i.pi = sext i16 %i.ph to i64
  %i.pj = call i64 @llvm.fshl.i64(i64 %i.pe, i64 %i.pe, i64 40)
  %i.pk = call i64 @llvm.fshl.i64(i64 %i.pg, i64 %i.pg, i64 16)
  %i.pl = xor i64 %i.pk, %i.pj
  %i.pm = xor i64 %i.pl, %i.pi                    ; 2 uses
  %i.pn = load i64, ptr %i.lj, align 8, !tbaa !65 ; 2 uses
  %i.po = urem i64 %i.pm, %i.pn                   ; 2 uses
  %i.pp = load ptr, ptr %i.li, align 8, !tbaa !64
  %i.pq = getelementptr inbounds nuw [8 x i8], ptr %i.pp, i64 %i.po
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !93 ; 2 uses
  %.not.i.i.i.i277 = icmp eq ptr %i.pr, null
  br i1 %.not.i.i.i.i277, label %.loopexit483, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !87 ; 2 uses
  %.phi.trans.insert.i.i.i.i278 = getelementptr inbounds nuw i8, ptr %i.ps, i64 16
  %.pre.i.i.i.i279 = load i64, ptr %.phi.trans.insert.i.i.i.i278, align 8, !tbaa !95
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bk, %bb.bg
  %i.pt = phi i64 [ %.pre.i.i.i.i279, %bb.bg ], [ %i.qh, %bb.bk ]
  %i.pu = phi ptr [ %i.ps, %bb.bg ], [ %i.qf, %bb.bk ] ; 4 uses
  %i.pv = icmp eq i64 %i.pm, %i.pt
  br i1 %i.pv, label %bb.bi, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i.i280

bb.bi:                                            ; preds = %bb.bh
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pu, i64 8
  %i.px = load i16, ptr %i.pw, align 2, !tbaa !90
  %i.py = icmp eq i16 %i.pd, %i.px
  br i1 %i.py, label %bb.bj, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i.i280

bb.bj:                                            ; preds = %bb.bi
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pu, i64 10
  %i.qa = load i16, ptr %i.pz, align 2, !tbaa !91
  %i.qb = icmp eq i16 %i.pf, %i.qa
  br i1 %i.qb, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i.i284, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i.i280

_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i.i284: ; preds = %bb.bj
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pu, i64 12
  %i.qd = load i16, ptr %i.qc, align 2, !tbaa !92
  %i.qe = icmp eq i16 %i.ph, %i.qd
  br i1 %i.qe, label %.thread460, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i.i280

_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i.i280: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i.i284, %bb.bj, %bb.bi, %bb.bh
  %i.qf = load ptr, ptr %i.pu, align 8, !tbaa !87 ; 3 uses
  %.not18.i.i.i.i281 = icmp eq ptr %i.qf, null
  br i1 %.not18.i.i.i.i281, label %.loopexit483, label %bb.bk

bb.bk:                                            ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i.i280
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 16
  %i.qh = load i64, ptr %i.qg, align 8, !tbaa !95 ; 2 uses
  %i.qi = urem i64 %i.qh, %i.pn
  %.not19.i.i.i.i282 = icmp eq i64 %i.qi, %i.po
  br i1 %.not19.i.i.i.i282, label %bb.bh, label %.loopexit483, !llvm.loop !2

.loopexit483:                                     ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i.i280, %bb.bk, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i289, %bb.bf, %bb.bc
  br i1 %.not213, label %.critedge.thread, label %bb.bl

bb.bl:                                            ; preds = %.loopexit483
  %i.qj = getelementptr inbounds nuw i8, ptr %i.mu, i64 82 ; 2 uses
  %i.qk = load i8, ptr %i.qj, align 2, !tbaa !340, !range !166, !noundef !113 ; 2 uses
  %i.ql = trunc nuw i8 %i.qk to i1
  %or.cond = select i1 %i.ql, i1 true, i1 %i.mq
  br i1 %or.cond, label %bb.bm, label %.thread460

bb.bm:                                            ; preds = %bb.bl
  %.not215 = icmp slt i16 %i.lz, %.sroa.speculated346
  br i1 %.not215, label %.critedge, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.qm = getelementptr inbounds nuw i8, ptr %i.mu, i64 65
  %i.qn = load i8, ptr %i.qm, align 1, !tbaa !341, !range !166, !noundef !113
  %i.qo = trunc nuw i8 %i.qn to i1
  br i1 %i.qo, label %bb.bo, label %_ZN8MapBlock5isAirEv.exit

bb.bo:                                            ; preds = %bb.bn
  call void @_ZN8MapBlock19actuallyUpdateIsAirEv(ptr noundef nonnull align 8 dereferenceable(328) %i.mu)
  br label %_ZN8MapBlock5isAirEv.exit

_ZN8MapBlock5isAirEv.exit:                        ; preds = %bb.bn, %bb.bo
  %i.qp = getelementptr inbounds nuw i8, ptr %i.mu, i64 64
  %i.qq = load i8, ptr %i.qp, align 8, !tbaa !342, !range !166, !noundef !113
  %i.qr = trunc nuw i8 %i.qq to i1
  br i1 %i.qr, label %.thread460, label %_ZN8MapBlock5isAirEv.exit..critedge_crit_edge

_ZN8MapBlock5isAirEv.exit..critedge_crit_edge:    ; preds = %_ZN8MapBlock5isAirEv.exit
  %.pre532 = load i8, ptr %i.qj, align 2, !tbaa !340, !range !166
  br label %.critedge

.critedge:                                        ; preds = %_ZN8MapBlock5isAirEv.exit..critedge_crit_edge, %bb.bm
  %8 = phi i8 [ %.pre532, %_ZN8MapBlock5isAirEv.exit..critedge_crit_edge ], [ %i.qk, %bb.bm ]
  %.not480.not = icmp eq i8 %8, 0
  br i1 %.not480.not, label %.critedge.thread, label %bb.bp

.critedge.thread:                                 ; preds = %.loopexit483, %.critedge
  %9 = phi i16 [ %i.ma, %.loopexit483 ], [ %i.lz, %.critedge ]
  %.sroa.09.0.copyload = load i48, ptr %7, align 8, !tbaa !97
  %i.qs = call noundef zeroext i1 @_ZN13EmergeManager14isBlockInQueueEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(480) %2, i48 %.sroa.09.0.copyload)
  br i1 %i.qs, label %.thread, label %bb.bp

bb.bp:                                            ; preds = %.critedge.thread, %.critedge
  %10 = phi i16 [ %9, %.critedge.thread ], [ %i.lz, %.critedge ] ; 2 uses
  %11 = phi i1 [ true, %.critedge.thread ], [ false, %.critedge ]
  %i.qt = load i64, ptr %i.lm, align 8, !tbaa !89
  %.not.not.i.i294 = icmp eq i64 %i.qt, 0
  br i1 %.not.not.i.i294, label %bb.bq, label %bb.bt

bb.bq:                                            ; preds = %bb.bp
  %.sroa.06.012.i.i303 = load ptr, ptr %i.lo, align 8, !tbaa !87 ; 2 uses
  %.not13.i.i304 = icmp eq ptr %.sroa.06.012.i.i303, null
  br i1 %.not13.i.i304, label %.loopexit, label %.lr.ph.i.i305

.lr.ph.i.i305:                                    ; preds = %bb.bq
  %i.qu = load i16, ptr %7, align 8, !tbaa !90
  %i.qv = load i16, ptr %i.ld, align 2
  %i.qw = load i16, ptr %i.le, align 4
  br label %bb.br

bb.br:                                            ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i307, %.lr.ph.i.i305
  %.sroa.06.014.i.i306 = phi ptr [ %.sroa.06.012.i.i303, %.lr.ph.i.i305 ], [ %.sroa.06.0.i.i308, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i307 ] ; 4 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %.sroa.06.014.i.i306, i64 8
  %i.qy = load i16, ptr %i.qx, align 2, !tbaa !90
  %i.qz = icmp eq i16 %i.qu, %i.qy
  br i1 %i.qz, label %bb.bs, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i307

bb.bs:                                            ; preds = %bb.br
  %i.ra = getelementptr inbounds nuw i8, ptr %.sroa.06.014.i.i306, i64 10
  %i.rb = load i16, ptr %i.ra, align 2, !tbaa !91
  %i.rc = icmp eq i16 %i.qv, %i.rb
  br i1 %i.rc, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i310, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i307

_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i310: ; preds = %bb.bs
  %i.rd = getelementptr inbounds nuw i8, ptr %.sroa.06.014.i.i306, i64 12
  %i.re = load i16, ptr %i.rd, align 2, !tbaa !92
  %i.rf = icmp eq i16 %i.qw, %i.re
  br i1 %i.rf, label %.thread460, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i307

_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i307: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i310, %bb.bs, %bb.br
  %.sroa.06.0.i.i308 = load ptr, ptr %.sroa.06.014.i.i306, align 8, !tbaa !87 ; 2 uses
  %.not.i.i309 = icmp eq ptr %.sroa.06.0.i.i308, null
  br i1 %.not.i.i309, label %.loopexit, label %bb.br, !llvm.loop !1

bb.bt:                                            ; preds = %bb.bp
  %i.rg = load i16, ptr %7, align 8, !tbaa !90    ; 2 uses
  %i.rh = sext i16 %i.rg to i64                   ; 2 uses
  %i.ri = load i16, ptr %i.ld, align 2, !tbaa !91 ; 2 uses
  %i.rj = sext i16 %i.ri to i64                   ; 2 uses
  %i.rk = load i16, ptr %i.le, align 4, !tbaa !92 ; 2 uses
  %i.rl = sext i16 %i.rk to i64
  %i.rm = call i64 @llvm.fshl.i64(i64 %i.rh, i64 %i.rh, i64 40)
  %i.rn = call i64 @llvm.fshl.i64(i64 %i.rj, i64 %i.rj, i64 16)
  %i.ro = xor i64 %i.rn, %i.rm
  %i.rp = xor i64 %i.ro, %i.rl                    ; 2 uses
  %i.rq = load i64, ptr %i.ln, align 8, !tbaa !65 ; 2 uses
  %i.rr = urem i64 %i.rp, %i.rq                   ; 2 uses
  %i.rs = load ptr, ptr %i.ll, align 8, !tbaa !64
  %i.rt = getelementptr inbounds nuw [8 x i8], ptr %i.rs, i64 %i.rr
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !93 ; 2 uses
  %.not.i.i.i.i295 = icmp eq ptr %i.ru, null
  br i1 %.not.i.i.i.i295, label %.loopexit, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !87 ; 2 uses
  %.phi.trans.insert.i.i.i.i296 = getelementptr inbounds nuw i8, ptr %i.rv, i64 16
  %.pre.i.i.i.i297 = load i64, ptr %.phi.trans.insert.i.i.i.i296, align 8, !tbaa !95
  br label %bb.bv

bb.bv:                                            ; preds = %bb.by, %bb.bu
  %i.rw = phi i64 [ %.pre.i.i.i.i297, %bb.bu ], [ %i.sk, %bb.by ]
  %i.rx = phi ptr [ %i.rv, %bb.bu ], [ %i.si, %bb.by ] ; 4 uses
  %i.ry = icmp eq i64 %i.rp, %i.rw
  br i1 %i.ry, label %bb.bw, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i.i298

bb.bw:                                            ; preds = %bb.bv
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rx, i64 8
  %i.sa = load i16, ptr %i.rz, align 2, !tbaa !90
  %i.sb = icmp eq i16 %i.rg, %i.sa
  br i1 %i.sb, label %bb.bx, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i.i298

bb.bx:                                            ; preds = %bb.bw
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rx, i64 10
  %i.sd = load i16, ptr %i.sc, align 2, !tbaa !91
  %i.se = icmp eq i16 %i.ri, %i.sd
  br i1 %i.se, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i.i302, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i.i298

_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i.i302: ; preds = %bb.bx
  %i.sf = getelementptr inbounds nuw i8, ptr %i.rx, i64 12
  %i.sg = load i16, ptr %i.sf, align 2, !tbaa !92
  %i.sh = icmp eq i16 %i.rk, %i.sg
  br i1 %i.sh, label %.thread460, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i.i298

_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i.i298: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i.i302, %bb.bx, %bb.bw, %bb.bv
  %i.si = load ptr, ptr %i.rx, align 8, !tbaa !87 ; 3 uses
  %.not18.i.i.i.i299 = icmp eq ptr %i.si, null
  br i1 %.not18.i.i.i.i299, label %.loopexit, label %bb.by

bb.by:                                            ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i.i298
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 16
  %i.sk = load i64, ptr %i.sj, align 8, !tbaa !95 ; 2 uses
  %i.sl = urem i64 %i.sk, %i.rq
  %.not19.i.i.i.i300 = icmp eq i64 %i.sl, %i.rr
  br i1 %.not19.i.i.i.i300, label %bb.bv, label %.loopexit, !llvm.loop !2

.loopexit:                                        ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i.i298, %bb.by, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i307, %bb.bt, %bb.bq
  %i.sm = load i8, ptr %i.lp, align 4, !tbaa !77, !range !166, !noundef !113
  %i.sn = trunc nuw i8 %i.sm to i1
  br i1 %i.sn, label %bb.bz, label %bb.cb

bb.bz:                                            ; preds = %.loopexit
  %i.so = call noundef nonnull align 8 dereferenceable(144) ptr @_ZN17ServerEnvironment6getMapEv(ptr noundef nonnull align 8 dereferenceable(3560) %1)
  %i.sp = load i16, ptr %7, align 8, !tbaa !90
  %i.sq = shl i16 %i.sp, 4
  %i.sr = load i16, ptr %i.ld, align 2, !tbaa !91
  %i.ss = shl i16 %i.sr, 4
  %i.st = load i16, ptr %i.le, align 4, !tbaa !92
  %i.su = shl i16 %i.st, 4
  %.sroa.3.0.insert.ext.i312 = zext i16 %i.su to i48
  %.sroa.3.0.insert.shift.i313 = shl nuw i48 %.sroa.3.0.insert.ext.i312, 32
  %.sroa.2.0.insert.ext.i314 = zext i16 %i.ss to i48
  %.sroa.2.0.insert.shift.i315 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i314, 16
  %.sroa.0.0.insert.ext.i317 = zext i16 %i.sq to i48
  %.sroa.2.0.insert.insert.i316 = or disjoint i48 %.sroa.2.0.insert.shift.i315, %.sroa.0.0.insert.ext.i317
  %.sroa.0.0.insert.insert.i318 = or disjoint i48 %.sroa.2.0.insert.insert.i316, %.sroa.3.0.insert.shift.i313
  %i.sv = icmp sge i16 %i.ly, %.sroa.speculated341
  %i.sw = call noundef zeroext i1 @_ZN3Map15isBlockOccludedEN4core8vector3dIsEES2_b(ptr noundef nonnull align 8 dereferenceable(144) %i.so, i48 %.sroa.0.0.insert.insert.i318, i48 %.sroa.0.0.insert.insert.i268, i1 noundef zeroext %i.sv)
  br i1 %i.sw, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store ptr %i.ll, ptr %5, align 8, !tbaa !171
  %i.sx = call { ptr, i8 } @_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS2_SI_NS4_10_AllocNodeISaINS4_10_Hash_nodeIS2_Lb1EEEEEEEESt4pairINS4_14_Node_iteratorIS2_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %i.ll, ptr noundef nonnull align 2 dereferenceable(6) %7, ptr noundef nonnull align 2 dereferenceable(6) %7, ptr noundef nonnull align 8 dereferenceable(8) %5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %.thread460

bb.cb:                                            ; preds = %.loopexit, %bb.bz
  br i1 %11, label %.thread, label %bb.cc

.thread:                                          ; preds = %.critedge.thread, %bb.cb
  %i.sy = icmp eq i32 %.1184499, -1
  %.2185 = select i1 %i.sy, i32 %i.lv, i32 %.1184499 ; 2 uses
  %i.sz = load i16, ptr %0, align 8, !tbaa !53
  %.sroa.0.0.copyload = load i48, ptr %7, align 8, !tbaa !97
  %i.ta = call noundef zeroext i1 @_ZN13EmergeManager18enqueueBlockEmergeEtN4core8vector3dIsEEbb(ptr noundef nonnull align 8 dereferenceable(480) %2, i16 noundef zeroext %i.sz, i48 %.sroa.0.0.copyload, i1 noundef zeroext %i.mq, i1 noundef zeroext false)
  br i1 %i.ta, label %.thread460, label %.thread465

bb.cc:                                            ; preds = %bb.cb
  %i.tb = icmp eq i32 %.1191498, -1
  %i.tc = sext i16 %i.lx to i32
  %.2192 = select i1 %i.tb, i32 %i.tc, i32 %.1191498
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #29
  %i.td = load float, ptr %i.l, align 4, !tbaa !125
  store float %i.td, ptr %i.m, align 4, !tbaa !125
  %i.te = call noundef nonnull align 4 dereferenceable(12) ptr @_ZNSt6vectorI27PrioritySortedBlockTransferSaIS0_EE12emplace_backIJfRN4core8vector3dIsEERtEEERS0_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.m, ptr noundef nonnull align 2 dereferenceable(6) %7, ptr noundef nonnull align 2 dereferenceable(2) %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #29
  %i.tf = add nuw nsw i32 %.1177504, 1
  br label %.thread460

.thread460:                                       ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i.i, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i.i284, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i292, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i.i302, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i310, %bb.an, %bb.ao, %bb.ca, %bb.bl, %_ZN8MapBlock5isAirEv.exit, %bb.cc, %.thread
  %i.tg = phi i16 [ %i.lx, %bb.an ], [ %i.lx, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i.i302 ], [ %i.lq, %.thread ], [ %i.lx, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i292 ], [ %i.lx, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i ], [ %i.lx, %bb.cc ], [ %i.lx, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i.i284 ], [ %i.lx, %_ZN8MapBlock5isAirEv.exit ], [ %i.lx, %bb.bl ], [ %i.lx, %bb.ca ], [ %i.lx, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i310 ], [ %i.lx, %bb.ao ], [ %i.lx, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i.i ]
  %i.th = phi i16 [ %i.ly, %bb.an ], [ %i.ly, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i.i302 ], [ %i.lq, %.thread ], [ %i.ly, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i292 ], [ %i.ly, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i ], [ %i.lx, %bb.cc ], [ %i.ly, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i.i284 ], [ %i.ly, %_ZN8MapBlock5isAirEv.exit ], [ %i.ly, %bb.bl ], [ %i.ly, %bb.ca ], [ %i.ly, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i310 ], [ %i.ly, %bb.ao ], [ %i.ly, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i.i ]
  %i.ti = phi i16 [ %i.lz, %bb.an ], [ %i.lz, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i.i302 ], [ %i.lq, %.thread ], [ %i.lz, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i292 ], [ %i.lz, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i ], [ %i.lx, %bb.cc ], [ %i.lz, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i.i284 ], [ %i.lz, %_ZN8MapBlock5isAirEv.exit ], [ %i.lz, %bb.bl ], [ %i.ly, %bb.ca ], [ %i.lz, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i310 ], [ %i.lz, %bb.ao ], [ %i.lz, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i.i ]
  %i.tj = phi i16 [ %i.ma, %bb.an ], [ %10, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i.i302 ], [ %i.lq, %.thread ], [ %i.ma, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i292 ], [ %i.ma, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i ], [ %i.lx, %bb.cc ], [ %i.ma, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i.i284 ], [ %i.lz, %_ZN8MapBlock5isAirEv.exit ], [ %i.ma, %bb.bl ], [ %i.ly, %bb.ca ], [ %10, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i310 ], [ %i.ma, %bb.ao ], [ %i.ma, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i.i ]
  %.5195.ph = phi i32 [ %.1191498, %bb.an ], [ %.1191498, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i.i302 ], [ %.1191498, %.thread ], [ %.1191498, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i292 ], [ %.1191498, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i ], [ %.2192, %bb.cc ], [ %.1191498, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i.i284 ], [ %.1191498, %_ZN8MapBlock5isAirEv.exit ], [ %.1191498, %bb.bl ], [ %.1191498, %bb.ca ], [ %.1191498, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i310 ], [ %.1191498, %bb.ao ], [ %.1191498, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i.i ]
  %.5188.ph = phi i32 [ %.1184499, %bb.an ], [ %.1184499, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i.i302 ], [ %.2185, %.thread ], [ %.1184499, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i292 ], [ %.1184499, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i ], [ %.1184499, %bb.cc ], [ %.1184499, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i.i284 ], [ %.1184499, %_ZN8MapBlock5isAirEv.exit ], [ %.1184499, %bb.bl ], [ %.1184499, %bb.ca ], [ %.1184499, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i310 ], [ %.1184499, %bb.ao ], [ %.1184499, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i.i ]
  %.4180.ph = phi i32 [ %.1177504, %bb.an ], [ %.1177504, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i.i302 ], [ %.1177504, %.thread ], [ %.1177504, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i292 ], [ %.1177504, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i ], [ %i.tf, %bb.cc ], [ %.1177504, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i.i284 ], [ %.1177504, %_ZN8MapBlock5isAirEv.exit ], [ %.1177504, %bb.bl ], [ %.1177504, %bb.ca ], [ %.1177504, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i310 ], [ %.1177504, %bb.ao ], [ %.1177504, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  %.pre533 = load ptr, ptr %i.lt, align 8, !tbaa !168
  br label %bb.cd

.thread465:                                       ; preds = %bb.ar, %.thread
  %.5188 = phi i32 [ %.2185, %.thread ], [ %.1184499, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %.loopexit490

bb.cd:                                            ; preds = %.thread460, %.thread452
  %i.tk = phi ptr [ %i.lw, %.thread452 ], [ %.pre533, %.thread460 ] ; 2 uses
  %i.tl = phi i16 [ %i.lx, %.thread452 ], [ %i.tg, %.thread460 ]
  %i.tm = phi i16 [ %i.ly, %.thread452 ], [ %i.th, %.thread460 ]
  %i.tn = phi i16 [ %i.lz, %.thread452 ], [ %i.ti, %.thread460 ]
  %i.to = phi i16 [ %i.ma, %.thread452 ], [ %i.tj, %.thread460 ]
  %.5459 = phi i32 [ %.1177504, %.thread452 ], [ %.4180.ph, %.thread460 ] ; 2 uses
  %.6189458 = phi i32 [ %.1184499, %.thread452 ], [ %.5188.ph, %.thread460 ] ; 2 uses
  %.6196457 = phi i32 [ %.1191498, %.thread452 ], [ %.5195.ph, %.thread460 ] ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %.sroa.0332.0497, i64 6 ; 2 uses
  %.not479 = icmp eq ptr %i.tp, %i.tk
  br i1 %.not479, label %._crit_edge, label %.lr.ph, !llvm.loop !227

._crit_edge:                                      ; preds = %bb.cd, %bb.aj
  %.1191.lcssa = phi i32 [ %.0190513, %bb.aj ], [ %.6196457, %bb.cd ] ; 2 uses
  %.1184.lcssa = phi i32 [ %.0183514, %bb.aj ], [ %.6189458, %bb.cd ] ; 2 uses
  %.1177.lcssa = phi i32 [ %.0176515, %bb.aj ], [ %.5459, %bb.cd ]
  %i.tq = add i16 %i.lq, 1                        ; 4 uses
  store i16 %i.tq, ptr %i.k, align 2, !tbaa !97
  %.not212 = icmp sgt i16 %i.tq, %spec.select
  br i1 %.not212, label %.loopexit490, label %bb.aj, !llvm.loop !228

.loopexit490:                                     ; preds = %._crit_edge, %.thread465
  %i.tr = phi i16 [ %i.lq, %.thread465 ], [ %i.tq, %._crit_edge ]
  %.8198 = phi i32 [ %.1191498, %.thread465 ], [ %.1191.lcssa, %._crit_edge ]
  %.8 = phi i32 [ %.5188, %.thread465 ], [ %.1184.lcssa, %._crit_edge ] ; 2 uses
  %.not216 = icmp eq i32 %.8, -1
  br i1 %.not216, label %.loopexit490.thread, label %.thread471

.loopexit490.thread:                              ; preds = %_Z8rangelimIfffET_RKS0_RKT0_RKT1_.exit, %.loopexit490
  %.8198573 = phi i32 [ %.8198, %.loopexit490 ], [ -1, %_Z8rangelimIfffET_RKS0_RKT0_RKT1_.exit ] ; 2 uses
  %i.ts = phi i16 [ %i.tr, %.loopexit490 ], [ %i.iy, %_Z8rangelimIfffET_RKS0_RKT0_RKT1_.exit ] ; 2 uses
  %i.tt = icmp sgt i16 %i.ts, %.sroa.speculated351
  br i1 %i.tt, label %bb.ce, label %bb.cj

bb.ce:                                            ; preds = %.loopexit490.thread
  store float 2.000000e+00, ptr %i.n, align 4, !tbaa !96
  %.not.i319 = icmp eq ptr @_ZTH10infostream, null
  br i1 %.not.i319, label %_ZTW10infostream.exit320, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  call void @_ZTH10infostream()
  br label %_ZTW10infostream.exit320

_ZTW10infostream.exit320:                         ; preds = %bb.ce, %bb.cf
  %i.tu = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @infostream) ; 2 uses
  %i.tv = load ptr, ptr %i.tu, align 8, !tbaa !112, !nonnull !113, !align !114 ; 2 uses
  %i.tw = load ptr, ptr %i.tv, align 8, !tbaa !116
  %i.tx = load ptr, ptr %i.tw, align 8
  %i.ty = call noundef zeroext i1 %i.tx(ptr noundef nonnull align 8 dereferenceable(8) %i.tv), !inline_history !224
  %.v.i321 = select i1 %i.ty, i64 976, i64 984
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tu, i64 %.v.i321 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @.str.20, ptr %i.e, align 8, !tbaa !19
  %i.ua = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.tz, ptr noundef nonnull align 8 dereferenceable(8) %i.e) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ub = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.uc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.tz, ptr noundef nonnull align 8 dereferenceable(32) %i.ub)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @.str.21, ptr %i.d, align 8, !tbaa !19
  %i.ud = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.uc, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ue = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxylsIRtEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ud, ptr noundef nonnull align 2 dereferenceable(2) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @.str.24, ptr %i.c, align 8, !tbaa !19
  %i.uf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ue, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ug = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxylsIRsEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.uf, ptr noundef nonnull align 2 dereferenceable(2) %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @.str.25, ptr %i.b, align 8, !tbaa !19
  %i.uh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ug, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ui = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxylsIRfEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.uh, ptr noundef nonnull align 4 dereferenceable(4) %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.26, ptr %i.a, align 8, !tbaa !19
  %i.uj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ui, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.uk = load ptr, ptr %i.uj, align 8, !tbaa !117 ; 5 uses
  %.not.i322 = icmp eq ptr %i.uk, null
  br i1 %.not.i322, label %_ZN11StreamProxylsEPFRSoS0_E.exit324, label %bb.cg

bb.cg:                                            ; preds = %_ZTW10infostream.exit320
  %i.ul = load ptr, ptr %i.uk, align 8, !tbaa !116
  %i.um = getelementptr i8, ptr %i.ul, i64 -24
  %i.un = load i64, ptr %i.um, align 8
  %i.uo = getelementptr inbounds i8, ptr %i.uk, i64 %i.un
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 32
  %i.uq = load i32, ptr %i.up, align 8, !tbaa !124
  %i.ur = icmp eq i32 %i.uq, 0
  br i1 %i.ur, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.uk)
  %.pre.i323 = load ptr, ptr %i.uj, align 8, !tbaa !117
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.us = phi ptr [ %.pre.i323, %bb.ch ], [ %i.uk, %bb.cg ]
  %i.ut = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.us), !inline_history !229 ; 0 uses
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit324

_ZN11StreamProxylsEPFRSoS0_E.exit324:             ; preds = %_ZTW10infostream.exit320, %bb.ci
  store float 0.000000e+00, ptr %i.q, align 8, !tbaa !99
  br label %.thread471

bb.cj:                                            ; preds = %.loopexit490.thread
  %i.uu = sext i16 %i.ts to i32
  %.not217 = icmp eq i32 %.8198573, -1
  %..8198 = select i1 %.not217, i32 %i.uu, i32 %.8198573 ; 2 uses
  %.not218 = icmp eq i32 %..8198, -1
  br i1 %.not218, label %bb.cl, label %.thread471

.thread471:                                       ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit324, %.loopexit490, %bb.cj
  %.0181474 = phi i32 [ %..8198, %bb.cj ], [ 0, %_ZN11StreamProxylsEPFRSoS0_E.exit324 ], [ %.8, %.loopexit490 ] ; 2 uses
  %i.uv = load i16, ptr %i.iz, align 8, !tbaa !98
  %i.uw = sext i16 %i.uv to i32
  %.not219 = icmp eq i32 %.0181474, %i.uw
  br i1 %.not219, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %.thread471
  %i.ux = trunc nsw i32 %.0181474 to i16
  store i16 %i.ux, ptr %i.iz, align 8, !tbaa !98
  %i.uy = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.uz = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.va = load ptr, ptr %i.uz, align 8, !tbaa !86 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.va, null
  br i1 %.not5.i.i.i, label %_ZNSt13unordered_setIN4core8vector3dIsEESt4hashIS2_ESt8equal_toIS2_ESaIS2_EE5clearEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ck, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.vb, %.lr.ph.i.i.i ], [ %i.va, %bb.ck ] ; 2 uses
  %i.vb = load ptr, ptr %.06.i.i.i, align 8, !tbaa !87 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 24) #30
  %.not.i.i.i = icmp eq ptr %i.vb, null
  br i1 %.not.i.i.i, label %_ZNSt13unordered_setIN4core8vector3dIsEESt4hashIS2_ESt8equal_toIS2_ESaIS2_EE5clearEv.exit, label %.lr.ph.i.i.i, !llvm.loop !0

_ZNSt13unordered_setIN4core8vector3dIsEESt4hashIS2_ESt8equal_toIS2_ESaIS2_EE5clearEv.exit: ; preds = %.lr.ph.i.i.i, %bb.ck
  %i.vc = load ptr, ptr %i.uy, align 8, !tbaa !64
  %i.vd = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ve = load i64, ptr %i.vd, align 8, !tbaa !65
  %i.vf = shl i64 %i.ve, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.vc, i8 0, i64 %i.vf, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.uz, i8 0, i64 16, i1 false)
  br label %bb.cl

bb.cl:                                            ; preds = %_ZNSt13unordered_setIN4core8vector3dIsEESt4hashIS2_ESt8equal_toIS2_ESaIS2_EE5clearEv.exit, %.thread471, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #29
  br label %bb.cm

bb.cm:                                            ; preds = %bb.u, %bb.w, %bb.v, %bb.cl, %bb.t
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !117    ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !116
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !124
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre = load ptr, ptr %0, align 8, !tbaa !117
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = phi ptr [ %.pre, %bb.c ], [ %i.a, %bb.b ]
  %i.j = load ptr, ptr %1, align 8, !tbaa !70
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !57
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef %i.j, i64 noundef %i.l) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret ptr %0
}

end_hunk_0
