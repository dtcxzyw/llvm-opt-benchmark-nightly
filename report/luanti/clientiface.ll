inline.NumInlined: 1283
inline.NumDeleted: 622
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN12RemoteClient13GetNextBlocksEP17ServerEnvironmentP13EmergeManagerfRSt6vectorI27PrioritySortedBlockTransferSaIS5_EE:.noexc.i
._crit_edge543:                                   ; preds = %bb.af
  %.pre545 = load i16, ptr %i.ix, align 8, !tbaa !97
  br label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i16 0, ptr %i.ix, align 8, !tbaa !97
  store <2 x float> %.sroa.0384.0, ptr %i.il, align 8
  store float %.sroa.19.0, ptr %i.ir, align 8, !tbaa !125
  store float 0.000000e+00, ptr %i.q, align 8, !tbaa !98
  br label %bb.ah

bb.ah:                                            ; preds = %._crit_edge543, %bb.ag
  %i.iy = phi i16 [ %.pre545, %._crit_edge543 ], [ 0, %bb.ag ] ; 5 uses
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
  %i.jh = load i16, ptr %i.jg, align 4, !tbaa !69
  %i.ji = call noundef signext i16 @_Z10adjustDistsf(i16 noundef signext %i.jh, float noundef %i.jf)
  %.sroa.speculated351 = call i16 @llvm.smin.i16(i16 %.0, i16 %i.ji) ; 3 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 350
  %i.jk = load i16, ptr %i.jj, align 2, !tbaa !70
  %i.jl = call noundef signext i16 @_Z10adjustDistsf(i16 noundef signext %i.jk, float noundef %i.jf)
  %.sroa.speculated346 = call i16 @llvm.smin.i16(i16 %.0, i16 %i.jl)
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.jn = load i16, ptr %i.jm, align 8, !tbaa !71
  %i.jo = call noundef signext i16 @_Z10adjustDistsf(i16 noundef signext %i.jn, float noundef %i.jf)
  %.sroa.speculated341 = call i16 @llvm.smin.i16(i16 %.0, i16 %i.jo) ; 2 uses
  %i.jp = sext i16 %.sroa.speculated351 to i32
  %i.jq = sitofp i16 %.sroa.speculated351 to float
  %i.jr = fmul nnan nsz float %i.jq, 1.000000e+01
  %i.js = fmul nnan nsz float %i.jr, 1.600000e+01 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 354
  %i.ju = load i16, ptr %i.jt, align 2, !tbaa !72
  %i.jv = call noundef signext i16 @_Z10adjustDistsf(i16 noundef signext %i.ju, float noundef %i.jf)
  %.sroa.speculated = call i16 @llvm.smin.i16(i16 %.0, i16 %i.jv)
  %i.jw = sext i16 %i.iy to i32                   ; 2 uses
  %i.jx = sext i16 %.sroa.speculated341 to i32
  %i.jy = shl nsw i32 %i.jx, 1
  %i.jz = icmp sgt i32 %i.jy, %i.jw
  %i.ka = select i1 %i.jz, i32 2, i32 0
  %i.kb = add nsw i32 %i.ka, %i.jw
  %spec.select492 = call i32 @llvm.smin.i32(i32 %i.kb, i32 %i.jp)
  %spec.select = trunc nsw i32 %spec.select492 to i16 ; 2 uses
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
  %i.ko = fcmp nsz ogt float %i.fr, 0.000000e+00
  %i.kp = extractelement <2 x float> %i.fq, i64 0
  %i.kq = fadd nsz float %i.kp, %i.kn
  %i.kr = fdiv nsz float %i.kq, 1.000000e+01
  %i.ks = fptosi float %i.kr to i16
  %i.kt = insertelement <2 x i1> %i.kl, i1 %i.ko, i64 0
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
  %.sroa.0.0.insert.ext.i267 = zext i16 %i.ks to i48
  %.sroa.0.0.insert.insert.i268 = or disjoint i48 %.sroa.2.0.insert.insert.i266, %.sroa.0.0.insert.ext.i267
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #29
  store i16 %i.iy, ptr %i.k, align 2, !tbaa !96
  %.not212525 = icmp sgt i16 %i.iy, %spec.select
  br i1 %.not212525, label %.loopexit504.thread, label %.lr.ph530

.lr.ph530:                                        ; preds = %_Z8rangelimIfffET_RKS0_RKT0_RKT1_.exit
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

bb.aj:                                            ; preds = %.lr.ph530, %._crit_edge
  %.0176529 = phi i32 [ %i.hj, %.lr.ph530 ], [ %.1177.lcssa, %._crit_edge ] ; 2 uses
  %.0183528 = phi i32 [ -1, %.lr.ph530 ], [ %.1184.lcssa, %._crit_edge ] ; 2 uses
  %.0190527 = phi i32 [ -1, %.lr.ph530 ], [ %.1191.lcssa, %._crit_edge ] ; 2 uses
  %i.lq = phi i16 [ %i.iy, %.lr.ph530 ], [ %i.ts, %._crit_edge ] ; 12 uses
  %i.lr = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN17FacePositionCache16getFacePositionsEt(i16 noundef zeroext %i.lq) ; 2 uses
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !248 ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lr, i64 8 ; 2 uses
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !248 ; 2 uses
  %.not493510 = icmp eq ptr %i.ls, %i.lu
  br i1 %.not493510, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.aj
  %i.lv = sext i16 %i.lq to i32
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.cd
  %i.lw = phi ptr [ %i.tm, %bb.cd ], [ %i.lu, %.lr.ph.preheader ]
  %i.lx = phi i16 [ %i.tn, %bb.cd ], [ %i.lq, %.lr.ph.preheader ] ; 17 uses
  %i.ly = phi i16 [ %i.to, %bb.cd ], [ %i.lq, %.lr.ph.preheader ] ; 15 uses
  %i.lz = phi i16 [ %i.tp, %bb.cd ], [ %i.lq, %.lr.ph.preheader ] ; 17 uses
  %i.ma = phi i16 [ %i.tq, %bb.cd ], [ %i.lq, %.lr.ph.preheader ] ; 11 uses
  %.1177518 = phi i32 [ %.5459, %bb.cd ], [ %.0176529, %.lr.ph.preheader ] ; 15 uses
  %.1184513 = phi i32 [ %.6189458, %bb.cd ], [ %.0183528, %.lr.ph.preheader ] ; 16 uses
  %.1191512 = phi i32 [ %.6196457, %bb.cd ], [ %.0190527, %.lr.ph.preheader ] ; 16 uses
  %.sroa.0332.0511 = phi ptr [ %i.tr, %bb.cd ], [ %i.ls, %.lr.ph.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  %i.mb = load <2 x i16>, ptr %.sroa.0332.0511, align 2, !tbaa !96 ; 2 uses
  %i.mc = add <2 x i16> %i.mb, %i.fo
  %i.md = getelementptr inbounds nuw i8, ptr %.sroa.0332.0511, i64 4
  %i.me = load i16, ptr %i.md, align 2, !tbaa !89
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
  %i.mi = load i16, ptr %i.do, align 4, !tbaa !67
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %.lr.ph
  %.0199 = phi i16 [ %i.mi, %bb.ak ], [ %.0175, %.lr.ph ]
  %.reass = add <2 x i16> %i.mb, %invariant.op
  %i.mj = icmp ult <2 x i16> %.reass, splat (i16 -3875)
  %i.mk = bitcast <2 x i1> %i.mj to i2
  %or.cond11.i = icmp ne i2 %i.mk, 0
  %i.ml = sext i16 %i.mf to i32
  %i.mm = add nsw i32 %i.ml, -1938
  %i.mn = icmp ult i32 %i.mm, -3875
  %i.mo = select i1 %or.cond11.i, i1 true, i1 %i.mn
  br i1 %i.mo, label %.thread452, label %bb.am

.thread452:                                       ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.cd

bb.am:                                            ; preds = %bb.al
  %i.mp = icmp sle i16 %i.ma, %.sroa.speculated   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #29
  %i.mq = call noundef zeroext i1 @_Z14isBlockInSightN4core8vector3dIsEENS0_IfEES2_ffPf(i48 %.sroa.0.0.insert.insert.i275, <2 x float> %i.fq, float %i.fr, <2 x float> %.sroa.0384.0, float %.sroa.19.0, float noundef %i.kk, float noundef %i.js, ptr noundef nonnull %i.l)
  br i1 %i.mq, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  br i1 %i.em, label %bb.ao, label %.thread460

bb.ao:                                            ; preds = %bb.an
  %.sroa.028.0.copyload = load i48, ptr %7, align 8
  %i.mr = call noundef zeroext i1 @_Z14isBlockInSightN4core8vector3dIsEENS0_IfEES2_ffPf(i48 %.sroa.028.0.copyload, <2 x float> %i.fq, float %i.fr, <2 x float> %.sroa.0419.0, float %.sroa.8423.0, float noundef 1.000000e-01, float noundef %i.js, ptr noundef null)
  br i1 %i.mr, label %bb.ap, label %.thread460

bb.ap:                                            ; preds = %bb.ao, %bb.am
  %i.ms = call noundef nonnull align 8 dereferenceable(144) ptr @_ZN17ServerEnvironment6getMapEv(ptr noundef nonnull align 8 dereferenceable(3560) %1)
  %.sroa.013.0.copyload = load i48, ptr %7, align 8
  %i.mt = call noundef ptr @_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144) %i.ms, i48 %.sroa.013.0.copyload) ; 6 uses
  %.not213 = icmp eq ptr %i.mt, null              ; 2 uses
  br i1 %.not213, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 32
  store float 0.000000e+00, ptr %i.mu, align 8, !tbaa !250
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.mv = zext i16 %.0199 to i32
  %.not214 = icmp ult i32 %.1177518, %i.mv
  br i1 %.not214, label %bb.as, label %8

bb.as:                                            ; preds = %bb.ar
  %i.mw = load i64, ptr %i.dm, align 8, !tbaa !86
  %.not.not.i.i = icmp eq i64 %i.mw, 0
  br i1 %.not.not.i.i, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %bb.as
  %.sroa.06.012.i.i = load ptr, ptr %i.lg, align 8, !tbaa !83 ; 2 uses
  %.not13.i.i = icmp eq ptr %.sroa.06.012.i.i, null
  br i1 %.not13.i.i, label %.loopexit501, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.at
  %i.mx = load i16, ptr %7, align 8, !tbaa !87
  %i.my = load i16, ptr %i.ld, align 2
  %i.mz = load i16, ptr %i.le, align 4
  br label %bb.au

bb.au:                                            ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i, %.lr.ph.i.i
  %.sroa.06.014.i.i = phi ptr [ %.sroa.06.012.i.i, %.lr.ph.i.i ], [ %.sroa.06.0.i.i, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i ] ; 4 uses
  %i.na = getelementptr inbounds nuw i8, ptr %.sroa.06.014.i.i, i64 8
  %i.nb = load i16, ptr %i.na, align 2, !tbaa !87
  %i.nc = icmp eq i16 %i.mx, %i.nb
  br i1 %i.nc, label %bb.av, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i

bb.av:                                            ; preds = %bb.au
  %i.nd = getelementptr inbounds nuw i8, ptr %.sroa.06.014.i.i, i64 10
  %i.ne = load i16, ptr %i.nd, align 2, !tbaa !88
  %i.nf = icmp eq i16 %i.my, %i.ne
  br i1 %i.nf, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i: ; preds = %bb.av
  %i.ng = getelementptr inbounds nuw i8, ptr %.sroa.06.014.i.i, i64 12
  %i.nh = load i16, ptr %i.ng, align 2, !tbaa !89
  %i.ni = icmp eq i16 %i.mz, %i.nh
  br i1 %i.ni, label %.thread460, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i, %bb.av, %bb.au
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.014.i.i, align 8, !tbaa !83 ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i, label %.loopexit501, label %bb.au, !llvm.loop !90

bb.aw:                                            ; preds = %bb.as
  %i.nj = load i16, ptr %7, align 8, !tbaa !87    ; 2 uses
  %i.nk = sext i16 %i.nj to i64                   ; 2 uses
  %i.nl = load i16, ptr %i.ld, align 2, !tbaa !88 ; 2 uses
  %i.nm = sext i16 %i.nl to i64                   ; 2 uses
  %i.nn = load i16, ptr %i.le, align 4, !tbaa !89 ; 2 uses
  %i.no = sext i16 %i.nn to i64
  %i.np = call i64 @llvm.fshl.i64(i64 %i.nk, i64 %i.nk, i64 40)
  %i.nq = call i64 @llvm.fshl.i64(i64 %i.nm, i64 %i.nm, i64 16)
  %i.nr = xor i64 %i.nq, %i.np
  %i.ns = xor i64 %i.nr, %i.no                    ; 2 uses
  %i.nt = load i64, ptr %i.lf, align 8, !tbaa !61 ; 2 uses
  %i.nu = urem i64 %i.ns, %i.nt                   ; 2 uses
  %i.nv = load ptr, ptr %i.dl, align 8, !tbaa !60
  %i.nw = getelementptr inbounds nuw [8 x i8], ptr %i.nv, i64 %i.nu
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !91 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.nx, null
  br i1 %.not.i.i.i.i, label %.loopexit501, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !83 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ny, i64 16
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !92
  br label %bb.ay

bb.ay:                                            ; preds = %bb.bb, %bb.ax
  %i.nz = phi i64 [ %.pre.i.i.i.i, %bb.ax ], [ %i.on, %bb.bb ]
  %i.oa = phi ptr [ %i.ny, %bb.ax ], [ %i.ol, %bb.bb ] ; 4 uses
  %i.ob = icmp eq i64 %i.ns, %i.nz
  br i1 %i.ob, label %bb.az, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i.i

bb.az:                                            ; preds = %bb.ay
  %i.oc = getelementptr inbounds nuw i8, ptr %i.oa, i64 8
  %i.od = load i16, ptr %i.oc, align 2, !tbaa !87
  %i.oe = icmp eq i16 %i.nj, %i.od
  br i1 %i.oe, label %bb.ba, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i.i

bb.ba:                                            ; preds = %bb.az
  %i.of = getelementptr inbounds nuw i8, ptr %i.oa, i64 10
  %i.og = load i16, ptr %i.of, align 2, !tbaa !88
  %i.oh = icmp eq i16 %i.nl, %i.og
  br i1 %i.oh, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i.i: ; preds = %bb.ba
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oa, i64 12
  %i.oj = load i16, ptr %i.oi, align 2, !tbaa !89
  %i.ok = icmp eq i16 %i.nn, %i.oj
  br i1 %i.ok, label %.thread460, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i.i, %bb.ba, %bb.az, %bb.ay
  %i.ol = load ptr, ptr %i.oa, align 8, !tbaa !83 ; 3 uses
  %.not18.i.i.i.i = icmp eq ptr %i.ol, null
  br i1 %.not18.i.i.i.i, label %.loopexit501, label %bb.bb

bb.bb:                                            ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i.i
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 16
  %i.on = load i64, ptr %i.om, align 8, !tbaa !92 ; 2 uses
  %i.oo = urem i64 %i.on, %i.nt
  %.not19.i.i.i.i = icmp eq i64 %i.oo, %i.nu
  br i1 %.not19.i.i.i.i, label %bb.ay, label %.loopexit501, !llvm.loop !94

.loopexit501:                                     ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i.i, %bb.bb, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i, %bb.aw, %bb.at
  %i.op = load i64, ptr %i.lh, align 8, !tbaa !86
  %.not.not.i.i276 = icmp eq i64 %i.op, 0
  br i1 %.not.not.i.i276, label %bb.bc, label %bb.bf

bb.bc:                                            ; preds = %.loopexit501
  %.sroa.06.012.i.i285 = load ptr, ptr %i.lk, align 8, !tbaa !83 ; 2 uses
  %.not13.i.i286 = icmp eq ptr %.sroa.06.012.i.i285, null
  br i1 %.not13.i.i286, label %.loopexit497, label %.lr.ph.i.i287

.lr.ph.i.i287:                                    ; preds = %bb.bc
  %i.oq = load i16, ptr %7, align 8, !tbaa !87
  %i.or = load i16, ptr %i.ld, align 2
  %i.os = load i16, ptr %i.le, align 4
  br label %bb.bd

bb.bd:                                            ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i289, %.lr.ph.i.i287
  %.sroa.06.014.i.i288 = phi ptr [ %.sroa.06.012.i.i285, %.lr.ph.i.i287 ], [ %.sroa.06.0.i.i290, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i289 ] ; 4 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %.sroa.06.014.i.i288, i64 8
  %i.ou = load i16, ptr %i.ot, align 2, !tbaa !87
  %i.ov = icmp eq i16 %i.oq, %i.ou
  br i1 %i.ov, label %bb.be, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i289

bb.be:                                            ; preds = %bb.bd
  %i.ow = getelementptr inbounds nuw i8, ptr %.sroa.06.014.i.i288, i64 10
  %i.ox = load i16, ptr %i.ow, align 2, !tbaa !88
  %i.oy = icmp eq i16 %i.or, %i.ox
  br i1 %i.oy, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i292, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i289

_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i292: ; preds = %bb.be
  %i.oz = getelementptr inbounds nuw i8, ptr %.sroa.06.014.i.i288, i64 12
  %i.pa = load i16, ptr %i.oz, align 2, !tbaa !89
  %i.pb = icmp eq i16 %i.os, %i.pa
  br i1 %i.pb, label %.thread460, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i289

_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i289: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i292, %bb.be, %bb.bd
  %.sroa.06.0.i.i290 = load ptr, ptr %.sroa.06.014.i.i288, align 8, !tbaa !83 ; 2 uses
  %.not.i.i291 = icmp eq ptr %.sroa.06.0.i.i290, null
  br i1 %.not.i.i291, label %.loopexit497, label %bb.bd, !llvm.loop !90

bb.bf:                                            ; preds = %.loopexit501
  %i.pc = load i16, ptr %7, align 8, !tbaa !87    ; 2 uses
  %i.pd = sext i16 %i.pc to i64                   ; 2 uses
  %i.pe = load i16, ptr %i.ld, align 2, !tbaa !88 ; 2 uses
  %i.pf = sext i16 %i.pe to i64                   ; 2 uses
  %i.pg = load i16, ptr %i.le, align 4, !tbaa !89 ; 2 uses
  %i.ph = sext i16 %i.pg to i64
  %i.pi = call i64 @llvm.fshl.i64(i64 %i.pd, i64 %i.pd, i64 40)
  %i.pj = call i64 @llvm.fshl.i64(i64 %i.pf, i64 %i.pf, i64 16)
  %i.pk = xor i64 %i.pj, %i.pi
  %i.pl = xor i64 %i.pk, %i.ph                    ; 2 uses
  %i.pm = load i64, ptr %i.lj, align 8, !tbaa !61 ; 2 uses
  %i.pn = urem i64 %i.pl, %i.pm                   ; 2 uses
  %i.po = load ptr, ptr %i.li, align 8, !tbaa !60
  %i.pp = getelementptr inbounds nuw [8 x i8], ptr %i.po, i64 %i.pn
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !91 ; 2 uses
  %.not.i.i.i.i277 = icmp eq ptr %i.pq, null
  br i1 %.not.i.i.i.i277, label %.loopexit497, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !83 ; 2 uses
  %.phi.trans.insert.i.i.i.i278 = getelementptr inbounds nuw i8, ptr %i.pr, i64 16
  %.pre.i.i.i.i279 = load i64, ptr %.phi.trans.insert.i.i.i.i278, align 8, !tbaa !92
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bk, %bb.bg
  %i.ps = phi i64 [ %.pre.i.i.i.i279, %bb.bg ], [ %i.qg, %bb.bk ]
  %i.pt = phi ptr [ %i.pr, %bb.bg ], [ %i.qe, %bb.bk ] ; 4 uses
  %i.pu = icmp eq i64 %i.pl, %i.ps
  br i1 %i.pu, label %bb.bi, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i.i280

bb.bi:                                            ; preds = %bb.bh
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pt, i64 8
  %i.pw = load i16, ptr %i.pv, align 2, !tbaa !87
  %i.px = icmp eq i16 %i.pc, %i.pw
  br i1 %i.px, label %bb.bj, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i.i280

bb.bj:                                            ; preds = %bb.bi
  %i.py = getelementptr inbounds nuw i8, ptr %i.pt, i64 10
  %i.pz = load i16, ptr %i.py, align 2, !tbaa !88
  %i.qa = icmp eq i16 %i.pe, %i.pz
  br i1 %i.qa, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i.i284, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i.i280

_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i.i284: ; preds = %bb.bj
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pt, i64 12
  %i.qc = load i16, ptr %i.qb, align 2, !tbaa !89
  %i.qd = icmp eq i16 %i.pg, %i.qc
  br i1 %i.qd, label %.thread460, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i.i280

_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i.i280: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i.i284, %bb.bj, %bb.bi, %bb.bh
  %i.qe = load ptr, ptr %i.pt, align 8, !tbaa !83 ; 3 uses
  %.not18.i.i.i.i281 = icmp eq ptr %i.qe, null
  br i1 %.not18.i.i.i.i281, label %.loopexit497, label %bb.bk

bb.bk:                                            ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i.i280
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 16
  %i.qg = load i64, ptr %i.qf, align 8, !tbaa !92 ; 2 uses
  %i.qh = urem i64 %i.qg, %i.pm
  %.not19.i.i.i.i282 = icmp eq i64 %i.qh, %i.pn
  br i1 %.not19.i.i.i.i282, label %bb.bh, label %.loopexit497, !llvm.loop !94

.loopexit497:                                     ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i.i280, %bb.bk, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i289, %bb.bf, %bb.bc
  br i1 %.not213, label %.critedge.thread, label %bb.bl

bb.bl:                                            ; preds = %.loopexit497
  %i.qi = getelementptr inbounds nuw i8, ptr %i.mt, i64 82 ; 2 uses
  %i.qj = load i8, ptr %i.qi, align 2, !tbaa !283, !range !241, !noundef !112
  %i.qk = trunc nuw i8 %i.qj to i1                ; 2 uses
  %or.cond = select i1 %i.qk, i1 true, i1 %i.mp
  br i1 %or.cond, label %bb.bm, label %.thread460

bb.bm:                                            ; preds = %bb.bl
  %.not215 = icmp slt i16 %i.lz, %.sroa.speculated346
  br i1 %.not215, label %.critedge, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ql = getelementptr inbounds nuw i8, ptr %i.mt, i64 65
  %i.qm = load i8, ptr %i.ql, align 1, !tbaa !284, !range !241, !noundef !112
  %i.qn = trunc nuw i8 %i.qm to i1
  br i1 %i.qn, label %bb.bo, label %_ZN8MapBlock5isAirEv.exit

bb.bo:                                            ; preds = %bb.bn
  call void @_ZN8MapBlock19actuallyUpdateIsAirEv(ptr noundef nonnull align 8 dereferenceable(328) %i.mt)
  br label %_ZN8MapBlock5isAirEv.exit

_ZN8MapBlock5isAirEv.exit:                        ; preds = %bb.bn, %bb.bo
  %i.qo = getelementptr inbounds nuw i8, ptr %i.mt, i64 64
  %i.qp = load i8, ptr %i.qo, align 8, !tbaa !285, !range !241, !noundef !112
  %i.qq = trunc nuw i8 %i.qp to i1
  br i1 %i.qq, label %.thread460, label %_ZN8MapBlock5isAirEv.exit..critedge_crit_edge

_ZN8MapBlock5isAirEv.exit..critedge_crit_edge:    ; preds = %_ZN8MapBlock5isAirEv.exit
  %.pre546 = load i8, ptr %i.qi, align 2, !tbaa !283, !range !241
  %.pre548 = trunc nuw i8 %.pre546 to i1
  br i1 %.pre548, label %bb.bp, label %.critedge.thread

.critedge:                                        ; preds = %bb.bm
  br i1 %i.qk, label %bb.bp, label %.critedge.thread

.critedge.thread:                                 ; preds = %_ZN8MapBlock5isAirEv.exit..critedge_crit_edge, %.loopexit497, %.critedge
  %i.qr = phi i16 [ %i.ma, %.loopexit497 ], [ %i.lz, %.critedge ], [ %i.lz, %_ZN8MapBlock5isAirEv.exit..critedge_crit_edge ]
  %.sroa.09.0.copyload = load i48, ptr %7, align 8
  %i.qs = call noundef zeroext i1 @_ZN13EmergeManager14isBlockInQueueEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(480) %2, i48 %.sroa.09.0.copyload)
  br i1 %i.qs, label %.thread, label %bb.bp

bb.bp:                                            ; preds = %_ZN8MapBlock5isAirEv.exit..critedge_crit_edge, %.critedge.thread, %.critedge
  %i.qt = phi i16 [ %i.qr, %.critedge.thread ], [ %i.lz, %.critedge ], [ %i.lz, %_ZN8MapBlock5isAirEv.exit..critedge_crit_edge ] ; 2 uses
  %i.qu = phi i1 [ true, %.critedge.thread ], [ false, %.critedge ], [ false, %_ZN8MapBlock5isAirEv.exit..critedge_crit_edge ]
  %i.qv = load i64, ptr %i.lm, align 8, !tbaa !86
  %.not.not.i.i294 = icmp eq i64 %i.qv, 0
  br i1 %.not.not.i.i294, label %bb.bq, label %bb.bt

bb.bq:                                            ; preds = %bb.bp
  %.sroa.06.012.i.i303 = load ptr, ptr %i.lo, align 8, !tbaa !83 ; 2 uses
  %.not13.i.i304 = icmp eq ptr %.sroa.06.012.i.i303, null
  br i1 %.not13.i.i304, label %.loopexit, label %.lr.ph.i.i305

.lr.ph.i.i305:                                    ; preds = %bb.bq
  %i.qw = load i16, ptr %7, align 8, !tbaa !87
  %i.qx = load i16, ptr %i.ld, align 2
  %i.qy = load i16, ptr %i.le, align 4
  br label %bb.br

bb.br:                                            ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i307, %.lr.ph.i.i305
  %.sroa.06.014.i.i306 = phi ptr [ %.sroa.06.012.i.i303, %.lr.ph.i.i305 ], [ %.sroa.06.0.i.i308, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i307 ] ; 4 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %.sroa.06.014.i.i306, i64 8
  %i.ra = load i16, ptr %i.qz, align 2, !tbaa !87
  %i.rb = icmp eq i16 %i.qw, %i.ra
  br i1 %i.rb, label %bb.bs, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i307

bb.bs:                                            ; preds = %bb.br
  %i.rc = getelementptr inbounds nuw i8, ptr %.sroa.06.014.i.i306, i64 10
  %i.rd = load i16, ptr %i.rc, align 2, !tbaa !88
  %i.re = icmp eq i16 %i.qx, %i.rd
  br i1 %i.re, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i310, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i307

_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i310: ; preds = %bb.bs
  %i.rf = getelementptr inbounds nuw i8, ptr %.sroa.06.014.i.i306, i64 12
  %i.rg = load i16, ptr %i.rf, align 2, !tbaa !89
  %i.rh = icmp eq i16 %i.qy, %i.rg
  br i1 %i.rh, label %.thread460, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i307

_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i307: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i310, %bb.bs, %bb.br
  %.sroa.06.0.i.i308 = load ptr, ptr %.sroa.06.014.i.i306, align 8, !tbaa !83 ; 2 uses
  %.not.i.i309 = icmp eq ptr %.sroa.06.0.i.i308, null
  br i1 %.not.i.i309, label %.loopexit, label %bb.br, !llvm.loop !90

bb.bt:                                            ; preds = %bb.bp
  %i.ri = load i16, ptr %7, align 8, !tbaa !87    ; 2 uses
  %i.rj = sext i16 %i.ri to i64                   ; 2 uses
  %i.rk = load i16, ptr %i.ld, align 2, !tbaa !88 ; 2 uses
  %i.rl = sext i16 %i.rk to i64                   ; 2 uses
  %i.rm = load i16, ptr %i.le, align 4, !tbaa !89 ; 2 uses
  %i.rn = sext i16 %i.rm to i64
  %i.ro = call i64 @llvm.fshl.i64(i64 %i.rj, i64 %i.rj, i64 40)
  %i.rp = call i64 @llvm.fshl.i64(i64 %i.rl, i64 %i.rl, i64 16)
  %i.rq = xor i64 %i.rp, %i.ro
  %i.rr = xor i64 %i.rq, %i.rn                    ; 2 uses
  %i.rs = load i64, ptr %i.ln, align 8, !tbaa !61 ; 2 uses
  %i.rt = urem i64 %i.rr, %i.rs                   ; 2 uses
  %i.ru = load ptr, ptr %i.ll, align 8, !tbaa !60
  %i.rv = getelementptr inbounds nuw [8 x i8], ptr %i.ru, i64 %i.rt
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !91 ; 2 uses
  %.not.i.i.i.i295 = icmp eq ptr %i.rw, null
  br i1 %.not.i.i.i.i295, label %.loopexit, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.rx = load ptr, ptr %i.rw, align 8, !tbaa !83 ; 2 uses
  %.phi.trans.insert.i.i.i.i296 = getelementptr inbounds nuw i8, ptr %i.rx, i64 16
  %.pre.i.i.i.i297 = load i64, ptr %.phi.trans.insert.i.i.i.i296, align 8, !tbaa !92
  br label %bb.bv

bb.bv:                                            ; preds = %bb.by, %bb.bu
  %i.ry = phi i64 [ %.pre.i.i.i.i297, %bb.bu ], [ %i.sm, %bb.by ]
  %i.rz = phi ptr [ %i.rx, %bb.bu ], [ %i.sk, %bb.by ] ; 4 uses
  %i.sa = icmp eq i64 %i.rr, %i.ry
  br i1 %i.sa, label %bb.bw, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i.i298

bb.bw:                                            ; preds = %bb.bv
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rz, i64 8
  %i.sc = load i16, ptr %i.sb, align 2, !tbaa !87
  %i.sd = icmp eq i16 %i.ri, %i.sc
  br i1 %i.sd, label %bb.bx, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i.i298

bb.bx:                                            ; preds = %bb.bw
  %i.se = getelementptr inbounds nuw i8, ptr %i.rz, i64 10
  %i.sf = load i16, ptr %i.se, align 2, !tbaa !88
  %i.sg = icmp eq i16 %i.rk, %i.sf
  br i1 %i.sg, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i.i302, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i.i298

_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i.i302: ; preds = %bb.bx
  %i.sh = getelementptr inbounds nuw i8, ptr %i.rz, i64 12
  %i.si = load i16, ptr %i.sh, align 2, !tbaa !89
  %i.sj = icmp eq i16 %i.rm, %i.si
  br i1 %i.sj, label %.thread460, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i.i298

_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i.i298: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i.i302, %bb.bx, %bb.bw, %bb.bv
  %i.sk = load ptr, ptr %i.rz, align 8, !tbaa !83 ; 3 uses
  %.not18.i.i.i.i299 = icmp eq ptr %i.sk, null
  br i1 %.not18.i.i.i.i299, label %.loopexit, label %bb.by

bb.by:                                            ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i.i298
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 16
  %i.sm = load i64, ptr %i.sl, align 8, !tbaa !92 ; 2 uses
  %i.sn = urem i64 %i.sm, %i.rs
  %.not19.i.i.i.i300 = icmp eq i64 %i.sn, %i.rt
  br i1 %.not19.i.i.i.i300, label %bb.bv, label %.loopexit, !llvm.loop !94

.loopexit:                                        ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i.i298, %bb.by, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i307, %bb.bt, %bb.bq
  %i.so = load i8, ptr %i.lp, align 4, !tbaa !73, !range !241, !noundef !112
  %i.sp = trunc nuw i8 %i.so to i1
  br i1 %i.sp, label %bb.bz, label %bb.cb

bb.bz:                                            ; preds = %.loopexit
  %i.sq = call noundef nonnull align 8 dereferenceable(144) ptr @_ZN17ServerEnvironment6getMapEv(ptr noundef nonnull align 8 dereferenceable(3560) %1)
  %i.sr = load i16, ptr %7, align 8, !tbaa !87
  %i.ss = shl i16 %i.sr, 4
  %i.st = load i16, ptr %i.ld, align 2, !tbaa !88
  %i.su = shl i16 %i.st, 4
  %i.sv = load i16, ptr %i.le, align 4, !tbaa !89
  %i.sw = shl i16 %i.sv, 4
  %.sroa.3.0.insert.ext.i312 = zext i16 %i.sw to i48
  %.sroa.3.0.insert.shift.i313 = shl nuw i48 %.sroa.3.0.insert.ext.i312, 32
  %.sroa.2.0.insert.ext.i314 = zext i16 %i.su to i48
  %.sroa.2.0.insert.shift.i315 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i314, 16
  %.sroa.0.0.insert.ext.i317 = zext i16 %i.ss to i48
  %.sroa.2.0.insert.insert.i316 = or disjoint i48 %.sroa.2.0.insert.shift.i315, %.sroa.0.0.insert.ext.i317
  %.sroa.0.0.insert.insert.i318 = or disjoint i48 %.sroa.2.0.insert.insert.i316, %.sroa.3.0.insert.shift.i313
  %i.sx = icmp sge i16 %i.ly, %.sroa.speculated341
  %i.sy = call noundef zeroext i1 @_ZN3Map15isBlockOccludedEN4core8vector3dIsEES2_b(ptr noundef nonnull align 8 dereferenceable(144) %i.sq, i48 %.sroa.0.0.insert.insert.i318, i48 %.sroa.0.0.insert.insert.i268, i1 noundef zeroext %i.sx)
  br i1 %i.sy, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store ptr %i.ll, ptr %5, align 8, !tbaa !286
  %i.sz = call { ptr, i8 } @_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS2_SI_NS4_10_AllocNodeISaINS4_10_Hash_nodeIS2_Lb1EEEEEEEESt4pairINS4_14_Node_iteratorIS2_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %i.ll, ptr noundef nonnull align 2 dereferenceable(6) %7, ptr noundef nonnull align 2 dereferenceable(6) %7, ptr noundef nonnull align 8 dereferenceable(8) %5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %.thread460

bb.cb:                                            ; preds = %.loopexit, %bb.bz
  br i1 %i.qu, label %.thread, label %bb.cc

.thread:                                          ; preds = %.critedge.thread, %bb.cb
  %i.ta = icmp eq i32 %.1184513, -1
  %.2185 = select i1 %i.ta, i32 %i.lv, i32 %.1184513 ; 2 uses
  %i.tb = load i16, ptr %0, align 8, !tbaa !12
  %.sroa.0.0.copyload = load i48, ptr %7, align 8
  %i.tc = call noundef zeroext i1 @_ZN13EmergeManager18enqueueBlockEmergeEtN4core8vector3dIsEEbb(ptr noundef nonnull align 8 dereferenceable(480) %2, i16 noundef zeroext %i.tb, i48 %.sroa.0.0.copyload, i1 noundef zeroext %i.mp, i1 noundef zeroext false)
  br i1 %i.tc, label %.thread460, label %8

bb.cc:                                            ; preds = %bb.cb
  %i.td = icmp eq i32 %.1191512, -1
  %i.te = sext i16 %i.lx to i32
  %.2192 = select i1 %i.td, i32 %i.te, i32 %.1191512
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #29
  %i.tf = load float, ptr %i.l, align 4, !tbaa !125
  store float %i.tf, ptr %i.m, align 4, !tbaa !125
  %i.tg = call noundef nonnull align 4 dereferenceable(12) ptr @_ZNSt6vectorI27PrioritySortedBlockTransferSaIS0_EE12emplace_backIJfRN4core8vector3dIsEERtEEERS0_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.m, ptr noundef nonnull align 2 dereferenceable(6) %7, ptr noundef nonnull align 2 dereferenceable(2) %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #29
  %i.th = add nuw nsw i32 %.1177518, 1
  br label %.thread460

.thread460:                                       ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i.i, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i.i284, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i292, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i.i302, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i310, %bb.an, %bb.ao, %bb.ca, %bb.bl, %_ZN8MapBlock5isAirEv.exit, %bb.cc, %.thread
  %i.ti = phi i16 [ %i.lx, %bb.an ], [ %i.lx, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i.i302 ], [ %i.lq, %.thread ], [ %i.lx, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i292 ], [ %i.lx, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i ], [ %i.lx, %bb.cc ], [ %i.lx, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i.i284 ], [ %i.lx, %_ZN8MapBlock5isAirEv.exit ], [ %i.lx, %bb.bl ], [ %i.lx, %bb.ca ], [ %i.lx, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i310 ], [ %i.lx, %bb.ao ], [ %i.lx, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i.i ]
  %i.tj = phi i16 [ %i.ly, %bb.an ], [ %i.ly, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i.i302 ], [ %i.lq, %.thread ], [ %i.ly, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i292 ], [ %i.ly, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i ], [ %i.lx, %bb.cc ], [ %i.ly, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i.i284 ], [ %i.ly, %_ZN8MapBlock5isAirEv.exit ], [ %i.ly, %bb.bl ], [ %i.ly, %bb.ca ], [ %i.ly, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i310 ], [ %i.ly, %bb.ao ], [ %i.ly, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i.i ]
  %i.tk = phi i16 [ %i.lz, %bb.an ], [ %i.lz, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i.i302 ], [ %i.lq, %.thread ], [ %i.lz, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i292 ], [ %i.lz, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i ], [ %i.lx, %bb.cc ], [ %i.lz, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i.i284 ], [ %i.lz, %_ZN8MapBlock5isAirEv.exit ], [ %i.lz, %bb.bl ], [ %i.ly, %bb.ca ], [ %i.lz, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i310 ], [ %i.lz, %bb.ao ], [ %i.lz, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i.i ]
  %i.tl = phi i16 [ %i.ma, %bb.an ], [ %i.qt, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i.i302 ], [ %i.lq, %.thread ], [ %i.ma, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i292 ], [ %i.ma, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i ], [ %i.lx, %bb.cc ], [ %i.ma, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i.i284 ], [ %i.lz, %_ZN8MapBlock5isAirEv.exit ], [ %i.ma, %bb.bl ], [ %i.ly, %bb.ca ], [ %i.qt, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i310 ], [ %i.ma, %bb.ao ], [ %i.ma, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i.i ]
  %.5195.ph = phi i32 [ %.1191512, %bb.an ], [ %.1191512, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i.i302 ], [ %.1191512, %.thread ], [ %.1191512, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i292 ], [ %.1191512, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i ], [ %.2192, %bb.cc ], [ %.1191512, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i.i284 ], [ %.1191512, %_ZN8MapBlock5isAirEv.exit ], [ %.1191512, %bb.bl ], [ %.1191512, %bb.ca ], [ %.1191512, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i310 ], [ %.1191512, %bb.ao ], [ %.1191512, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i.i ]
  %.5188.ph = phi i32 [ %.1184513, %bb.an ], [ %.1184513, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i.i302 ], [ %.2185, %.thread ], [ %.1184513, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i292 ], [ %.1184513, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i ], [ %.1184513, %bb.cc ], [ %.1184513, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i.i284 ], [ %.1184513, %_ZN8MapBlock5isAirEv.exit ], [ %.1184513, %bb.bl ], [ %.1184513, %bb.ca ], [ %.1184513, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i310 ], [ %.1184513, %bb.ao ], [ %.1184513, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i.i ]
  %.4180.ph = phi i32 [ %.1177518, %bb.an ], [ %.1177518, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i.i302 ], [ %.1177518, %.thread ], [ %.1177518, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i292 ], [ %.1177518, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i ], [ %i.th, %bb.cc ], [ %.1177518, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i.i284 ], [ %.1177518, %_ZN8MapBlock5isAirEv.exit ], [ %.1177518, %bb.bl ], [ %.1177518, %bb.ca ], [ %.1177518, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i310 ], [ %.1177518, %bb.ao ], [ %.1177518, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  %.pre547 = load ptr, ptr %i.lt, align 8, !tbaa !248
  br label %bb.cd

bb.cd:                                            ; preds = %.thread460, %.thread452
  %i.tm = phi ptr [ %i.lw, %.thread452 ], [ %.pre547, %.thread460 ] ; 2 uses
  %i.tn = phi i16 [ %i.lx, %.thread452 ], [ %i.ti, %.thread460 ]
  %i.to = phi i16 [ %i.ly, %.thread452 ], [ %i.tj, %.thread460 ]
  %i.tp = phi i16 [ %i.lz, %.thread452 ], [ %i.tk, %.thread460 ]
  %i.tq = phi i16 [ %i.ma, %.thread452 ], [ %i.tl, %.thread460 ]
  %.5459 = phi i32 [ %.1177518, %.thread452 ], [ %.4180.ph, %.thread460 ] ; 2 uses
  %.6189458 = phi i32 [ %.1184513, %.thread452 ], [ %.5188.ph, %.thread460 ] ; 2 uses
  %.6196457 = phi i32 [ %.1191512, %.thread452 ], [ %.5195.ph, %.thread460 ] ; 2 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %.sroa.0332.0511, i64 6 ; 2 uses
  %.not493 = icmp eq ptr %i.tr, %i.tm
  br i1 %.not493, label %._crit_edge, label %.lr.ph, !llvm.loop !288

8:                                                ; preds = %.thread, %bb.ar
  %.5188 = phi i32 [ %.2185, %.thread ], [ %.1184513, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %.loopexit504

._crit_edge:                                      ; preds = %bb.cd, %bb.aj
  %.1191.lcssa = phi i32 [ %.0190527, %bb.aj ], [ %.6196457, %bb.cd ] ; 2 uses
  %.1184.lcssa = phi i32 [ %.0183528, %bb.aj ], [ %.6189458, %bb.cd ] ; 2 uses
  %.1177.lcssa = phi i32 [ %.0176529, %bb.aj ], [ %.5459, %bb.cd ]
  %i.ts = add i16 %i.lq, 1                        ; 4 uses
  store i16 %i.ts, ptr %i.k, align 2, !tbaa !96
  %.not212 = icmp sgt i16 %i.ts, %spec.select
  br i1 %.not212, label %.loopexit504, label %bb.aj, !llvm.loop !289

.loopexit504:                                     ; preds = %._crit_edge, %8
  %i.tt = phi i16 [ %i.lq, %8 ], [ %i.ts, %._crit_edge ]
  %.8198 = phi i32 [ %.1191512, %8 ], [ %.1191.lcssa, %._crit_edge ]
  %.8 = phi i32 [ %.5188, %8 ], [ %.1184.lcssa, %._crit_edge ] ; 2 uses
  %.not216 = icmp eq i32 %.8, -1
  br i1 %.not216, label %.loopexit504.thread, label %.thread485

.loopexit504.thread:                              ; preds = %_Z8rangelimIfffET_RKS0_RKT0_RKT1_.exit, %.loopexit504
  %.8198587 = phi i32 [ %.8198, %.loopexit504 ], [ -1, %_Z8rangelimIfffET_RKS0_RKT0_RKT1_.exit ] ; 2 uses
  %i.tu = phi i16 [ %i.tt, %.loopexit504 ], [ %i.iy, %_Z8rangelimIfffET_RKS0_RKT0_RKT1_.exit ] ; 2 uses
  %i.tv = icmp sgt i16 %i.tu, %.sroa.speculated351
  br i1 %i.tv, label %bb.ce, label %bb.cj

bb.ce:                                            ; preds = %.loopexit504.thread
  store float 2.000000e+00, ptr %i.n, align 4, !tbaa !95
  %.not.i319 = icmp eq ptr @_ZTH10infostream, null
  br i1 %.not.i319, label %_ZTW10infostream.exit320, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  call void @_ZTH10infostream()
  br label %_ZTW10infostream.exit320

_ZTW10infostream.exit320:                         ; preds = %bb.ce, %bb.cf
  %i.tw = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @infostream) ; 2 uses
  %i.tx = load ptr, ptr %i.tw, align 8, !tbaa !99, !nonnull !112, !align !113 ; 2 uses
  %i.ty = load ptr, ptr %i.tx, align 8, !tbaa !114
  %i.tz = load ptr, ptr %i.ty, align 8
  %i.ua = call noundef zeroext i1 %i.tz(ptr noundef nonnull align 8 dereferenceable(8) %i.tx), !inline_history !116
  %.v.i321 = select i1 %i.ua, i64 976, i64 984
  %i.ub = getelementptr inbounds nuw i8, ptr %i.tw, i64 %.v.i321 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @.str.20, ptr %i.e, align 8, !tbaa !9
  %i.uc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ub, ptr noundef nonnull align 8 dereferenceable(8) %i.e) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ud = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.ue = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ub, ptr noundef nonnull align 8 dereferenceable(32) %i.ud)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @.str.21, ptr %i.d, align 8, !tbaa !9
  %i.uf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ue, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ug = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxylsIRtEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.uf, ptr noundef nonnull align 2 dereferenceable(2) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @.str.24, ptr %i.c, align 8, !tbaa !9
  %i.uh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ug, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ui = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxylsIRsEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.uh, ptr noundef nonnull align 2 dereferenceable(2) %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @.str.25, ptr %i.b, align 8, !tbaa !9
  %i.uj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ui, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.uk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxylsIRfEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.uj, ptr noundef nonnull align 4 dereferenceable(4) %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.26, ptr %i.a, align 8, !tbaa !9
  %i.ul = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.uk, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.um = load ptr, ptr %i.ul, align 8, !tbaa !117 ; 5 uses
  %.not.i322 = icmp eq ptr %i.um, null
  br i1 %.not.i322, label %_ZN11StreamProxylsEPFRSoS0_E.exit324, label %bb.cg

bb.cg:                                            ; preds = %_ZTW10infostream.exit320
  %i.un = load ptr, ptr %i.um, align 8, !tbaa !114
  %i.uo = getelementptr i8, ptr %i.un, i64 -24
  %i.up = load i64, ptr %i.uo, align 8
  %i.uq = getelementptr inbounds i8, ptr %i.um, i64 %i.up
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uq, i64 32
  %i.us = load i32, ptr %i.ur, align 8, !tbaa !118
  %i.ut = icmp eq i32 %i.us, 0
  br i1 %i.ut, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.um)
  %.pre.i323 = load ptr, ptr %i.ul, align 8, !tbaa !117
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.uu = phi ptr [ %.pre.i323, %bb.ch ], [ %i.um, %bb.cg ]
  %i.uv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.uu), !inline_history !290 ; 0 uses
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit324

_ZN11StreamProxylsEPFRSoS0_E.exit324:             ; preds = %_ZTW10infostream.exit320, %bb.ci
  store float 0.000000e+00, ptr %i.q, align 8, !tbaa !98
  br label %.thread485

bb.cj:                                            ; preds = %.loopexit504.thread
  %i.uw = sext i16 %i.tu to i32
  %.not217 = icmp eq i32 %.8198587, -1
  %..8198 = select i1 %.not217, i32 %i.uw, i32 %.8198587 ; 2 uses
  %.not218 = icmp eq i32 %..8198, -1
  br i1 %.not218, label %bb.cl, label %.thread485

.thread485:                                       ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit324, %.loopexit504, %bb.cj
  %.0181488 = phi i32 [ %..8198, %bb.cj ], [ 0, %_ZN11StreamProxylsEPFRSoS0_E.exit324 ], [ %.8, %.loopexit504 ] ; 2 uses
  %i.ux = load i16, ptr %i.iz, align 8, !tbaa !97
  %i.uy = sext i16 %i.ux to i32
  %.not219 = icmp eq i32 %.0181488, %i.uy
  br i1 %.not219, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %.thread485
  %i.uz = trunc nsw i32 %.0181488 to i16
  store i16 %i.uz, ptr %i.iz, align 8, !tbaa !97
  %i.va = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.vb = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !82 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.vc, null
  br i1 %.not5.i.i.i, label %_ZNSt13unordered_setIN4core8vector3dIsEESt4hashIS2_ESt8equal_toIS2_ESaIS2_EE5clearEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ck, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.vd, %.lr.ph.i.i.i ], [ %i.vc, %bb.ck ] ; 2 uses
  %i.vd = load ptr, ptr %.06.i.i.i, align 8, !tbaa !83 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 24) #30
  %.not.i.i.i = icmp eq ptr %i.vd, null
  br i1 %.not.i.i.i, label %_ZNSt13unordered_setIN4core8vector3dIsEESt4hashIS2_ESt8equal_toIS2_ESaIS2_EE5clearEv.exit, label %.lr.ph.i.i.i, !llvm.loop !84

_ZNSt13unordered_setIN4core8vector3dIsEESt4hashIS2_ESt8equal_toIS2_ESaIS2_EE5clearEv.exit: ; preds = %.lr.ph.i.i.i, %bb.ck
  %i.ve = load ptr, ptr %i.va, align 8, !tbaa !60
  %i.vf = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.vg = load i64, ptr %i.vf, align 8, !tbaa !61
  %i.vh = shl i64 %i.vg, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ve, i8 0, i64 %i.vh, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.vb, i8 0, i64 16, i1 false)
  br label %bb.cl

bb.cl:                                            ; preds = %_ZNSt13unordered_setIN4core8vector3dIsEESt4hashIS2_ESt8equal_toIS2_ESaIS2_EE5clearEv.exit, %.thread485, %bb.cj
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !114
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !118
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre = load ptr, ptr %0, align 8, !tbaa !117
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = phi ptr [ %.pre, %bb.c ], [ %i.a, %bb.b ]
  %i.j = load ptr, ptr %1, align 8, !tbaa !66
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !49
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef %i.j, i64 noundef %i.l) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxylsIRtEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 2 dereferenceable(2) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !117    ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !114
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !118
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre = load ptr, ptr %0, align 8, !tbaa !117
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = phi ptr [ %.pre, %bb.c ], [ %i.a, %bb.b ]
  %i.j = load i16, ptr %1, align 2, !tbaa !96
  %i.k = zext i16 %i.j to i64
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef %i.k) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxylsIRfEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !117    ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

end_hunk_0
