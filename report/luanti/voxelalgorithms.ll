Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/voxelalgorithms?download=true
inline.NumInlined: 679
inline.NumDeleted: 245
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN7voxalgo21update_lighting_nodesEP3MapRKSt6vectorISt4pairIN4core8vector3dIsEE7MapNodeESaIS8_EERSt3mapIS6_P8MapBlockSt4lessIS6_ESaIS3_IKS6_SF_EEE:bb.a
bb.bi:                                            ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i261
  %i.pn = load ptr, ptr %i.r, align 8, !tbaa !80
  %i.po = ptrtoint ptr %i.pn to i64
  %i.pp = sub i64 %i.po, %i.ow
  call void @_ZdlPvm(ptr noundef nonnull %i.ou, i64 noundef %i.pp) #22
  br label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIsEES8_RP8MapBlockRhEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i264

_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIsEES8_RP8MapBlockRhEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i264: ; preds = %bb.bi, %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i261
  store ptr %i.pf, ptr %i.p, align 8, !tbaa !84
  store ptr %i.pm, ptr %i.q, align 8, !tbaa !25
  %i.pq = getelementptr inbounds nuw [24 x i8], ptr %i.pf, i64 %i.pd
  store ptr %i.pq, ptr %i.r, align 8, !tbaa !80
  br label %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit265

_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit265: ; preds = %bb.bf, %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIsEES8_RP8MapBlockRhEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i264
  %.0173 = add i16 %.0173515, -1                  ; 2 uses
  %.sroa.8384.0.insert.ext389 = zext i16 %.0173 to i48
  %.sroa.8384.0.insert.shift390 = shl nuw nsw i48 %.sroa.8384.0.insert.ext389, 16
  %.sroa.0377.0.insert.insert383.reass = or disjoint i48 %.sroa.8384.0.insert.shift390, %invariant.op508 ; 2 uses
  %i.pr = call i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %0, i48 %.sroa.0377.0.insert.insert383.reass, ptr noundef nonnull %i.a)
  %i.ps = load i8, ptr %i.a, align 1, !tbaa !138, !range !71, !noundef !72
  %i.pt = trunc nuw i8 %i.ps to i1
  br i1 %i.pt, label %bb.bd, label %.critedge, !llvm.loop !151

bb.bj:                                            ; preds = %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit
  %i.pu = icmp ugt i8 %.3171478, %i.co
  %i.pv = icmp eq i8 %.3171478, 15
  %or.cond6 = and i1 %i.ad, %i.pv
  %or.cond533 = select i1 %i.pu, i1 %or.cond6, i1 false
  br i1 %or.cond533, label %.preheader488, label %.critedge

.preheader488:                                    ; preds = %bb.bj
  %invariant.op = or disjoint i48 %.sroa.11.0.insert.shift456, %.sroa.0442.0.insert.ext445 ; 2 uses
  %.0174501 = add i16 %.sroa.8448.0.copyload, -1  ; 2 uses
  %.sroa.6347.0.insert.ext348502 = zext i16 %.0174501 to i48
  %.sroa.6347.0.insert.shift349503 = shl nuw nsw i48 %.sroa.6347.0.insert.ext348502, 16
  %.sroa.0343.0.insert.insert346.reass504 = or disjoint i48 %.sroa.6347.0.insert.shift349503, %invariant.op
  %i.pw = call i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %0, i48 %.sroa.0343.0.insert.insert346.reass504, ptr noundef nonnull %i.a)
  %i.px = load i8, ptr %i.a, align 1, !tbaa !138, !range !71, !noundef !72
  %i.py = trunc nuw i8 %i.px to i1
  br i1 %i.py, label %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit270.lr.ph, label %.critedge

_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit270.lr.ph: ; preds = %.preheader488
  %.mask = and i32 %i.bj, 65535
  %.sroa.8.0.insert.ext333 = zext nneg i32 %.mask to i48
  %.sroa.8.0.insert.shift334 = shl nuw i48 %.sroa.8.0.insert.ext333, 32
  %.mask484 = and i32 %i.ax, 65535
  %.sroa.0325.0.insert.ext326 = zext nneg i32 %.mask484 to i48
  %invariant.op506 = or disjoint i48 %.sroa.8.0.insert.shift334, %.sroa.0325.0.insert.ext326
  %invariant.op638 = or disjoint i48 %.sroa.0406.0.insert.ext413, %.sroa.10429.0.insert.shift439
  br label %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit270

_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit270: ; preds = %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit270.lr.ph, %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit289
  %i.pz = phi i32 [ %i.pw, %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit270.lr.ph ], [ %i.rw, %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit289 ] ; 2 uses
  %.0174505 = phi i16 [ %.0174501, %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit270.lr.ph ], [ %.0174, %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit289 ] ; 4 uses
  %.sroa.5341.0.extract.shift = lshr i32 %i.pz, 16
  %.sroa.5341.0.extract.trunc = trunc i32 %.sroa.5341.0.extract.shift to i8
  %i.qa = and i32 %i.pz, 65535
  %i.qb = zext nneg i32 %i.qa to i64
  %i.qc = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.qb
  %.sroa.0.0.copyload.i.i266 = load i8, ptr %i.qc, align 1, !tbaa !24 ; 3 uses
  %i.qd = and i8 %.sroa.0.0.copyload.i.i266, 16
  %.not.i.i267 = icmp eq i8 %i.qd, 0
  %i.qe = and i8 %.sroa.5341.0.extract.trunc, 15
  %i.qf = and i8 %.sroa.0.0.copyload.i.i266, 15   ; 2 uses
  %i.qg = call i8 @llvm.umax.i8(i8 %i.qf, i8 %i.qe)
  %i.qh = select i1 %.not.i.i267, i8 %i.qf, i8 %i.qg
  %i.qi = icmp eq i8 %i.qh, 15
  %i.qj = and i8 %.sroa.0.0.copyload.i.i266, 64
  %.not186 = icmp eq i8 %i.qj, 0
  %or.cond195 = or i1 %.not186, %i.qi
  br i1 %or.cond195, label %.critedge, label %bb.bk

bb.bk:                                            ; preds = %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit270
  %i.qk = sext i16 %.0174505 to i32               ; 2 uses
  %i.ql = add nsw i32 %i.qk, -15
  %i.qm = icmp slt i16 %.0174505, 0
  %i.qn = select i1 %i.qm, i32 %i.ql, i32 %i.qk
  %i.qo = sdiv i32 %i.qn, 16
  %i.qp = and i16 %.0174505, 15
  %i.qq = shl nsw i32 %i.qo, 16
  %.sroa.6.0.insert.shift330 = zext i32 %i.qq to i48
  %.sroa.0325.0.insert.insert328.reass = or disjoint i48 %invariant.op506, %.sroa.6.0.insert.shift330 ; 3 uses
  %i.qr = call noundef ptr @_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144) %0, i48 %.sroa.0325.0.insert.insert328.reass) ; 2 uses
  %.sroa.5338.0.insert.ext = zext nneg i16 %i.qp to i48
  %.sroa.5338.0.insert.shift = shl nuw nsw i48 %.sroa.5338.0.insert.ext, 16
  %.sroa.0337.0.insert.insert.reass.reass.reass = or disjoint i48 %.sroa.5338.0.insert.shift, %invariant.op638 ; 2 uses
  %i.qs = load ptr, ptr %i.n, align 8, !tbaa !25  ; 8 uses
  %i.qt = load ptr, ptr %i.o, align 8, !tbaa !80
  %.not.i.i276 = icmp eq ptr %i.qs, %i.qt
  br i1 %.not.i.i276, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  store ptr %i.qr, ptr %i.qs, align 8, !tbaa !81
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qs, i64 8
  store i48 %.sroa.0337.0.insert.insert.reass.reass.reass, ptr %i.qu, align 8
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qs, i64 14
  store i48 %.sroa.0325.0.insert.insert328.reass, ptr %i.qv, align 2
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qs, i64 20
  store i8 4, ptr %i.qw, align 4, !tbaa !83
  %i.qx = load ptr, ptr %i.n, align 8, !tbaa !25
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 24
  store ptr %i.qy, ptr %i.n, align 8, !tbaa !25
  br label %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit289

bb.bm:                                            ; preds = %bb.bk
  %i.qz = load ptr, ptr %i.m, align 8, !tbaa !84  ; 5 uses
  %i.ra = ptrtoint ptr %i.qs to i64
  %i.rb = ptrtoint ptr %i.qz to i64               ; 2 uses
  %i.rc = sub i64 %i.ra, %i.rb                    ; 3 uses
  %i.rd = icmp eq i64 %i.rc, 9223372036854775800
  br i1 %i.rd, label %bb.bn, label %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i277

bb.bn:                                            ; preds = %bb.bm
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #20
  unreachable

_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i277: ; preds = %bb.bm
  %i.re = sdiv exact i64 %i.rc, 24                ; 3 uses
  %.sroa.speculated.i.i.i.i278 = call i64 @llvm.umax.i64(i64 %i.re, i64 1)
  %i.rf = add nsw i64 %.sroa.speculated.i.i.i.i278, %i.re ; 2 uses
  %i.rg = icmp ult i64 %i.rf, %i.re
  %i.rh = call i64 @llvm.umin.i64(i64 %i.rf, i64 384307168202282325)
  %i.ri = select i1 %i.rg, i64 384307168202282325, i64 %i.rh ; 3 uses
  %.not.i.i.i.i279 = icmp ne i64 %i.ri, 0
  call void @llvm.assume(i1 %.not.i.i.i.i279)
  %i.rj = mul nuw nsw i64 %i.ri, 24
  %i.rk = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rj) #21 ; 5 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 %i.rc ; 4 uses
  store ptr %i.qr, ptr %i.rl, align 8, !tbaa !81
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 8
  store i48 %.sroa.0337.0.insert.insert.reass.reass.reass, ptr %i.rm, align 8
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rl, i64 14
  store i48 %.sroa.0325.0.insert.insert328.reass, ptr %i.rn, align 2
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rl, i64 20
  store i8 4, ptr %i.ro, align 4, !tbaa !83
  %.not10.i.i.i.i.i.i280 = icmp eq ptr %i.qz, %i.qs
  br i1 %.not10.i.i.i.i.i.i280, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i285, label %.lr.ph.i.i.i.i.i.i281

.lr.ph.i.i.i.i.i.i281:                            ; preds = %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i277, %.lr.ph.i.i.i.i.i.i281
  %.012.i.i.i.i.i.i282 = phi ptr [ %i.rq, %.lr.ph.i.i.i.i.i.i281 ], [ %i.rk, %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i277 ] ; 2 uses
  %.0911.i.i.i.i.i.i283 = phi ptr [ %i.rp, %.lr.ph.i.i.i.i.i.i281 ], [ %i.qz, %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i277 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i282, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i283, i64 24, i1 false), !tbaa.struct !85, !alias.scope !152
  %i.rp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i283, i64 24 ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i282, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i284 = icmp eq ptr %i.rp, %i.qs
  br i1 %.not.i.i.i.i.i.i284, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i285, label %.lr.ph.i.i.i.i.i.i281, !llvm.loop !91

_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i285: ; preds = %.lr.ph.i.i.i.i.i.i281, %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i277
  %.0.lcssa.i.i.i.i.i.i286 = phi ptr [ %i.rk, %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i277 ], [ %i.rq, %.lr.ph.i.i.i.i.i.i281 ]
  %i.rr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i286, i64 24
  %.not.i36.i.i.i287 = icmp eq ptr %i.qz, null
  br i1 %.not.i36.i.i.i287, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIsEES8_RP8MapBlockRhEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i288, label %bb.bo

bb.bo:                                            ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i285
  %i.rs = load ptr, ptr %i.o, align 8, !tbaa !80
  %i.rt = ptrtoint ptr %i.rs to i64
  %i.ru = sub i64 %i.rt, %i.rb
  call void @_ZdlPvm(ptr noundef nonnull %i.qz, i64 noundef %i.ru) #22
  br label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIsEES8_RP8MapBlockRhEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i288

_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIsEES8_RP8MapBlockRhEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i288: ; preds = %bb.bo, %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i285
  store ptr %i.rk, ptr %i.m, align 8, !tbaa !84
  store ptr %i.rr, ptr %i.n, align 8, !tbaa !25
  %i.rv = getelementptr inbounds nuw [24 x i8], ptr %i.rk, i64 %i.ri
  store ptr %i.rv, ptr %i.o, align 8, !tbaa !80
  br label %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit289

_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit289: ; preds = %bb.bl, %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIsEES8_RP8MapBlockRhEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i288
  %.0174 = add i16 %.0174505, -1                  ; 2 uses
  %.sroa.6347.0.insert.ext348 = zext i16 %.0174 to i48
  %.sroa.6347.0.insert.shift349 = shl nuw nsw i48 %.sroa.6347.0.insert.ext348, 16
  %.sroa.0343.0.insert.insert346.reass = or disjoint i48 %.sroa.6347.0.insert.shift349, %invariant.op
  %i.rw = call i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %0, i48 %.sroa.0343.0.insert.insert346.reass, ptr noundef nonnull %i.a)
  %i.rx = load i8, ptr %i.a, align 1, !tbaa !138, !range !71, !noundef !72
  %i.ry = trunc nuw i8 %i.rx to i1
  br i1 %i.ry, label %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit270, label %.critedge, !llvm.loop !156

.critedge:                                        ; preds = %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit289, %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit270, %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit242, %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit242.thread, %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit265, %.preheader488, %.preheader, %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit237, %bb.bj, %bb.j
  %i.rz = getelementptr inbounds nuw i8, ptr %.sroa.0462.0522, i64 12 ; 2 uses
  %i.sa = load ptr, ptr %i.h, align 8, !tbaa !133
  %i.sb = icmp ult ptr %i.rz, %i.sa
  br i1 %i.sb, label %bb.j, label %._crit_edge526, !llvm.loop !157

bb.bp:                                            ; preds = %._crit_edge530
  call void @_ZN7voxalgo12spread_lightEP3MapPK14NodeDefManager9LightBankRNS_10LightQueueERSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessISB_ESaISt4pairIKSB_SD_EEE(ptr noundef nonnull %0, ptr noundef %i.c, i32 noundef %i.s, ptr noundef nonnull align 8 dereferenceable(385) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %2)
  %.0.add = add nuw nsw i64 %.0.idx532, 4         ; 2 uses
  %.not = icmp eq i64 %.0.add, 8
  br i1 %.not, label %bb.f, label %bb.g

bb.bq:                                            ; preds = %._crit_edge526, %._crit_edge530
  %indvars.iv = phi i64 [ 0, %._crit_edge526 ], [ %indvars.iv.next, %._crit_edge530 ] ; 4 uses
  %i.sc = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %indvars.iv ; 2 uses
  %i.sd = load ptr, ptr %i.sc, align 8, !tbaa !17 ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.sc, i64 8 ; 2 uses
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !17
  %i.sg = icmp ult ptr %i.sd, %i.sf
  br i1 %i.sg, label %.lr.ph529, label %._crit_edge530

.lr.ph529:                                        ; preds = %bb.bq
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.sh = shl i32 %indvars.iv.tr, 4
  %i.si = trunc nuw nsw i64 %indvars.iv to i32
  br label %bb.br

._crit_edge530:                                   ; preds = %_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit315, %bb.bq
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %bb.bp, label %bb.bq, !llvm.loop !158

bb.br:                                            ; preds = %.lr.ph529, %_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit315
  %.sroa.0319.0527 = phi ptr [ %i.sd, %.lr.ph529 ], [ %i.ud, %_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit315 ] ; 3 uses
  %i.sj = load ptr, ptr %.sroa.0319.0527, align 8, !tbaa !81 ; 10 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %.sroa.0319.0527, i64 8
  %.sroa.010.0.copyload = load i48, ptr %i.sk, align 8 ; 6 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sj, i64 16 ; 2 uses
  %i.sm = load ptr, ptr %i.sl, align 8, !tbaa !27
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sj, i64 36
  %i.so = load i8, ptr %i.sn, align 4, !tbaa !70, !range !71, !noundef !72
  %i.sp = trunc nuw i8 %i.so to i1
  br i1 %i.sp, label %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit299, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %.sroa.3.0.extract.shift.i290 = lshr i48 %.sroa.010.0.copyload, 32
  %.sroa.3.0.extract.trunc.i291 = zext nneg i48 %.sroa.3.0.extract.shift.i290 to i64
  %.sroa.2.0.extract.shift.i292 = lshr i48 %.sroa.010.0.copyload, 16
  %.sroa.2.0.extract.trunc.i293 = zext nneg i48 %.sroa.2.0.extract.shift.i292 to i64
  %.sroa.0.0.extract.trunc.i294 = zext i48 %.sroa.010.0.copyload to i64
  %sext.i295 = shl nuw i64 %.sroa.3.0.extract.trunc.i291, 48
  %i.sq = ashr exact i64 %sext.i295, 40
  %sext2.i296 = shl i64 %.sroa.2.0.extract.trunc.i293, 48
  %i.sr = ashr exact i64 %sext2.i296, 44
  %sext3.i297 = shl i64 %.sroa.0.0.extract.trunc.i294, 48
  %i.ss = ashr exact i64 %sext3.i297, 48
  %i.st = add nsw i64 %i.sr, %i.ss
  %i.su = add nsw i64 %i.st, %i.sq
  %i.sv = and i64 %i.su, 4294967295
  br label %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit299

_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit299: ; preds = %bb.br, %bb.bs
  %i.sw = phi i64 [ %i.sv, %bb.bs ], [ 0, %bb.br ]
  %i.sx = getelementptr inbounds nuw [4 x i8], ptr %i.sm, i64 %i.sw
  %.sroa.0.0.copyload.i.i298 = load i32, ptr %i.sx, align 4 ; 3 uses
  %.sroa.5.0.extract.shift = lshr i32 %.sroa.0.0.copyload.i.i298, 16 ; 3 uses
  %.sroa.0.0.extract.trunc.mask = and i32 %.sroa.0.0.copyload.i.i298, 65535
  %i.sy = zext nneg i32 %.sroa.0.0.extract.trunc.mask to i64
  %i.sz = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.sy
  %.sroa.0.0.copyload.i.i300 = load i8, ptr %i.sz, align 1, !tbaa !24
  %i.ta = and i8 %.sroa.0.0.copyload.i.i300, 16
  %.not.i301 = icmp eq i8 %i.ta, 0
  br i1 %.not.i301, label %_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit304, label %bb.bt

bb.bt:                                            ; preds = %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit299
  br i1 %i.as, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.tb = and i32 %.sroa.5.0.extract.shift, 240
  %i.tc = or i32 %i.tb, %i.si
  br label %_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit304

bb.bv:                                            ; preds = %bb.bt
  %i.td = and i32 %.sroa.5.0.extract.shift, 15
  %i.te = or disjoint i32 %i.td, %i.sh
  br label %_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit304

_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit304: ; preds = %bb.bu, %bb.bv, %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit299
  %.sroa.5.0 = phi i32 [ %.sroa.5.0.extract.shift, %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit299 ], [ %i.te, %bb.bv ], [ %i.tc, %bb.bu ]
  %.sroa.5.0.insert.ext = shl i32 %.sroa.5.0, 16
  %.sroa.5.0.insert.shift = and i32 %.sroa.5.0.insert.ext, 16711680
  %i.tf = and i32 %.sroa.0.0.copyload.i.i298, -16711681
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.5.0.insert.shift, %i.tf
  %.sroa.02.0.extract.trunc.i305 = zext i48 %.sroa.010.0.copyload to i64
  %.sroa.2.0.extract.shift.i306 = lshr i48 %.sroa.010.0.copyload, 16
  %.sroa.2.0.extract.trunc.i307 = zext nneg i48 %.sroa.2.0.extract.shift.i306 to i64
  %.sroa.3.0.extract.shift.i308 = lshr i48 %.sroa.010.0.copyload, 32
  %.sroa.3.0.extract.trunc.i309 = zext nneg i48 %.sroa.3.0.extract.shift.i308 to i64
  call void @_ZN8MapBlock19expandNodesIfNeededEv(ptr noundef nonnull align 8 dereferenceable(328) %i.sj)
  %i.tg = load ptr, ptr %i.sl, align 8, !tbaa !27
  %sext.i310 = shl nuw i64 %.sroa.3.0.extract.trunc.i309, 48
  %i.th = ashr exact i64 %sext.i310, 40
  %sext3.i311 = shl i64 %.sroa.2.0.extract.trunc.i307, 48
  %i.ti = ashr exact i64 %sext3.i311, 44
  %sext4.i312 = shl i64 %.sroa.02.0.extract.trunc.i305, 48
  %i.tj = ashr exact i64 %sext4.i312, 48
  %i.tk = add nsw i64 %i.ti, %i.tj
  %i.tl = add nsw i64 %i.tk, %i.th
  %i.tm = and i64 %i.tl, 4294967295
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %i.tg, i64 %i.tm
  store i32 %.sroa.0.0.insert.insert, ptr %i.tn, align 4
  %i.to = getelementptr inbounds nuw i8, ptr %i.sj, i64 66 ; 2 uses
  %i.tp = load i16, ptr %i.to, align 2, !tbaa !74 ; 2 uses
  %i.tq = icmp ult i16 %i.tp, 4
  br i1 %i.tq, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit304
  store i16 4, ptr %i.to, align 2, !tbaa !74
  %i.tr = getelementptr inbounds nuw i8, ptr %i.sj, i64 68
  store i32 16, ptr %i.tr, align 4, !tbaa !75
  %i.ts = getelementptr inbounds nuw i8, ptr %i.sj, i64 72
  %i.tt = load i32, ptr %i.ts, align 8, !tbaa !76
  %i.tu = getelementptr inbounds nuw i8, ptr %i.sj, i64 76
  store i32 %i.tt, ptr %i.tu, align 4, !tbaa !77
  br label %bb.bz

bb.bx:                                            ; preds = %_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit304
  %i.tv = icmp eq i16 %i.tp, 4
  br i1 %i.tv, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.tw = getelementptr inbounds nuw i8, ptr %i.sj, i64 68 ; 2 uses
  %i.tx = load i32, ptr %i.tw, align 4, !tbaa !75
  %i.ty = or i32 %i.tx, 16
  store i32 %i.ty, ptr %i.tw, align 4, !tbaa !75
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx, %bb.bw
  %i.tz = getelementptr inbounds nuw i8, ptr %i.sj, i64 40
  %i.ua = load ptr, ptr %i.tz, align 8, !tbaa !78 ; 2 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %i.sj, i64 48 ; 2 uses
  %i.uc = load ptr, ptr %i.ub, align 8, !tbaa !79
  %.not.i.i.i.i.i313 = icmp eq ptr %i.uc, %i.ua
  br i1 %.not.i.i.i.i.i313, label %_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit315, label %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i.i.i.i314

_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i.i.i.i314: ; preds = %bb.bz
  store ptr %i.ua, ptr %i.ub, align 8, !tbaa !79
  br label %_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit315

_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit315: ; preds = %bb.bz, %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i.i.i.i314
  %i.ud = getelementptr inbounds nuw i8, ptr %.sroa.0319.0527, i64 24 ; 2 uses
  %i.ue = load ptr, ptr %i.se, align 8, !tbaa !17
  %i.uf = icmp ult ptr %i.ud, %i.ue
  br i1 %i.uf, label %bb.br, label %._crit_edge530, !llvm.loop !159
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7voxalgo10LightQueueC2Em(ptr noundef nonnull align 8 dereferenceable(385) %0, i64 noundef %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(384) %0, i8 0, i64 384, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 384
  store i8 15, ptr %i.a, align 8, !tbaa !14
  %i.b = icmp ugt i64 %1, 384307168202282325
  %i.c = mul nuw nsw i64 %1, 24
  br i1 %i.b, label %bb.c, label %.split

bb.b:                                             ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit
  ret void

.split:                                           ; preds = %bb.a, %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit
  %.0.idx11 = phi i64 [ %.0.add, %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit ], [ 0, %bb.a ] ; 2 uses
  %.0.ptr12 = getelementptr inbounds nuw i8, ptr %0, i64 %.0.idx11 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0.ptr12, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !80
  %i.f = load ptr, ptr %.0.ptr12, align 8, !tbaa !84
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 24
  %i.k = icmp ult i64 %i.j, %1
  br i1 %i.k, label %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit

bb.c:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #20
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.c
  unreachable

_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE11_M_allocateEm.exit.i: ; preds = %.split
  %i.l = getelementptr inbounds nuw i8, ptr %.0.ptr12, i64 8 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !25
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = sub i64 %i.n, %i.h
  %i.p = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #21
          to label %.noexc10 unwind label %.loopexit ; 4 uses

.noexc10:                                         ; preds = %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE11_M_allocateEm.exit.i
  %i.q = load ptr, ptr %.0.ptr12, align 8, !tbaa !84 ; 5 uses
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !25   ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.q, %i.r
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc10, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i ], [ %i.p, %.noexc10 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i ], [ %i.q, %.noexc10 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i, i64 24, i1 false), !tbaa.struct !85, !alias.scope !160
  %i.s = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 24
  %.not.i.i.i.i = icmp eq ptr %i.s, %i.r
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !91

_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i, %.noexc10
  %.not.i8.i = icmp eq ptr %i.q, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !80
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.q to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.x) #22
  br label %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE13_M_deallocateEPS1_m.exit.i
end_hunk_0
begin_hunk_1_@_ZN7voxalgo28update_block_border_lightingEP3MapP8MapBlockRSt3mapIN4core8vector3dIsEES3_St4lessIS7_ESaISt4pairIKS7_S3_EEE:_ZN7voxalgo10LightQueueC2Em.exit
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.jg = getelementptr inbounds nuw i8, ptr %i.je, i64 32
  %i.jh = load i16, ptr %i.ja, align 8, !tbaa !9  ; 2 uses
  %i.ji = load i16, ptr %i.jg, align 2, !tbaa !9  ; 2 uses
  %i.jj = icmp slt i16 %i.jh, %i.ji
  br i1 %i.jj, label %.thread.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.jk = icmp eq i16 %i.jh, %i.ji
  br i1 %i.jk, label %bb.ap, label %.thread.i

bb.ap:                                            ; preds = %bb.ao
  %i.jl = getelementptr inbounds nuw i8, ptr %i.iz, i64 34
  %i.jm = load i16, ptr %i.jl, align 2, !tbaa !12 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.je, i64 34
  %i.jo = load i16, ptr %i.jn, align 2, !tbaa !12 ; 2 uses
  %i.jp = icmp slt i16 %i.jm, %i.jo
  br i1 %i.jp, label %.thread.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.jq = icmp eq i16 %i.jm, %i.jo
  br i1 %i.jq, label %bb.ar, label %.thread.i

bb.ar:                                            ; preds = %bb.aq
  %i.jr = getelementptr inbounds nuw i8, ptr %i.iz, i64 36
  %i.js = load i16, ptr %i.jr, align 4, !tbaa !13
  %i.jt = getelementptr inbounds nuw i8, ptr %i.je, i64 36
  %i.ju = load i16, ptr %i.jt, align 2, !tbaa !13
  %i.jv = icmp slt i16 %i.js, %i.ju
  br label %.thread.i

.thread.i:                                        ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am
  %i.jw = phi i1 [ false, %bb.ao ], [ true, %bb.am ], [ true, %bb.ap ], [ true, %bb.an ], [ false, %bb.aq ], [ %i.jv, %bb.ar ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.jw, ptr noundef nonnull %i.iz, ptr noundef nonnull %i.je, ptr noundef nonnull align 8 dereferenceable(32) %i.at) #5
  %i.jx = load i64, ptr %i.au, align 8, !tbaa !97
  %i.jy = add i64 %i.jx, 1
  store i64 %i.jy, ptr %i.au, align 8, !tbaa !97
  br label %bb.at

_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P8MapBlockESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE10_Auto_nodeD2Ev.exit.i: ; preds = %.noexc235
  %i.jz = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.iz, i64 noundef 48) #22
  br label %.body

bb.as:                                            ; preds = %bb.al
  tail call void @_ZdlPvm(ptr noundef nonnull %i.iz, i64 noundef 48) #22
  br label %bb.at

bb.at:                                            ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i, %bb.ak, %bb.ai, %bb.as, %.thread.i
  %.sroa.06.0.i = phi ptr [ %.19.i.i.i.i, %bb.ak ], [ %.19.i.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i ], [ %.19.i.i.i.i, %bb.ai ], [ %i.iz, %.thread.i ], [ %i.jd, %bb.as ]
  %i.ka = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40
  store ptr %indvars.iv295.sroa.phi374.sroa.speculated, ptr %i.ka, align 8, !tbaa !22
  %.sroa.0.0.copyload.i215 = load i48, ptr %i.gc, align 2 ; 2 uses
  %i.kb = shl i32 %i.hg, 16
  %.sroa.2.0.insert.shift = zext i32 %i.kb to i48
  %.sroa.0243.0.insert.insert.reass = or disjoint i48 %invariant.op, %.sroa.2.0.insert.shift ; 2 uses
  %i.kc = zext nneg i8 %i.hf to i64
  %i.kd = getelementptr inbounds nuw [24 x i8], ptr %3, i64 %i.kc ; 4 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 8 ; 4 uses
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !25 ; 8 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kd, i64 16 ; 3 uses
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !80
  %.not.i.i216 = icmp eq ptr %i.kf, %i.kh
  br i1 %.not.i.i216, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  store ptr %indvars.iv295.sroa.phi374.sroa.speculated, ptr %i.kf, align 8, !tbaa !81
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  store i48 %.sroa.0243.0.insert.insert.reass, ptr %i.ki, align 8
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kf, i64 14
  store i48 %.sroa.0.0.copyload.i215, ptr %i.kj, align 2
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kf, i64 20
  store i8 6, ptr %i.kk, align 4, !tbaa !83
  %i.kl = load ptr, ptr %i.ke, align 8, !tbaa !25
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 24
  store ptr %i.km, ptr %i.ke, align 8, !tbaa !25
  br label %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit

bb.av:                                            ; preds = %bb.at
  %i.kn = load ptr, ptr %i.kd, align 8, !tbaa !84 ; 5 uses
  %i.ko = ptrtoint ptr %i.kf to i64
  %i.kp = ptrtoint ptr %i.kn to i64               ; 2 uses
  %i.kq = sub i64 %i.ko, %i.kp                    ; 3 uses
  %i.kr = icmp eq i64 %i.kq, 9223372036854775800
  br i1 %i.kr, label %bb.aw, label %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #20
          to label %.noexc218 unwind label %.loopexit.split-lp

.noexc218:                                        ; preds = %bb.aw
  unreachable

_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.av
  %i.ks = sdiv exact i64 %i.kq, 24                ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ks, i64 1)
  %i.kt = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ks ; 2 uses
  %i.ku = icmp ult i64 %i.kt, %i.ks
  %i.kv = tail call i64 @llvm.umin.i64(i64 %i.kt, i64 384307168202282325)
  %i.kw = select i1 %i.ku, i64 384307168202282325, i64 %i.kv ; 3 uses
  %.not.i.i.i.i217 = icmp ne i64 %i.kw, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i217)
  %i.kx = mul nuw nsw i64 %i.kw, 24
  %i.ky = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kx) #21
          to label %.noexc219 unwind label %.loopexit ; 5 uses

.noexc219:                                        ; preds = %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 %i.kq ; 4 uses
  store ptr %indvars.iv295.sroa.phi374.sroa.speculated, ptr %i.kz, align 8, !tbaa !81
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 8
  store i48 %.sroa.0243.0.insert.insert.reass, ptr %i.la, align 8
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kz, i64 14
  store i48 %.sroa.0.0.copyload.i215, ptr %i.lb, align 2
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kz, i64 20
  store i8 6, ptr %i.lc, align 4, !tbaa !83
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.kn, %i.kf
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc219, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.le, %.lr.ph.i.i.i.i.i.i ], [ %i.ky, %.noexc219 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ld, %.lr.ph.i.i.i.i.i.i ], [ %i.kn, %.noexc219 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !85, !alias.scope !169
  %i.ld = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ld, %i.kf
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !91

_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc219
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ky, %.noexc219 ], [ %i.le, %.lr.ph.i.i.i.i.i.i ]
  %i.lf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 24
  %.not.i36.i.i.i = icmp eq ptr %i.kn, null
  br i1 %.not.i36.i.i.i, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIsEES8_RP8MapBlockRhEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i
  %i.lg = load ptr, ptr %i.kg, align 8, !tbaa !80
  %i.lh = ptrtoint ptr %i.lg to i64
  %i.li = sub i64 %i.lh, %i.kp
  tail call void @_ZdlPvm(ptr noundef nonnull %i.kn, i64 noundef %i.li) #22
  br label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIsEES8_RP8MapBlockRhEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIsEES8_RP8MapBlockRhEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.ax, %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i
  store ptr %i.ky, ptr %i.kd, align 8, !tbaa !84
  store ptr %i.lf, ptr %i.ke, align 8, !tbaa !25
  %i.lj = getelementptr inbounds nuw [24 x i8], ptr %i.ky, i64 %i.kw
  store ptr %i.lj, ptr %i.kg, align 8, !tbaa !80
  br label %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit

bb.ay:                                            ; preds = %bb.u
  %i.lk = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit:                                        ; preds = %_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit, %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.aw
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.az:                                            ; preds = %.critedge.i
  %i.ll = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit: ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIsEES8_RP8MapBlockRhEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.au, %bb.v, %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv, %i.gd
  br i1 %exitcond.not, label %._crit_edge, label %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit, !llvm.loop !173

.body:                                            ; preds = %bb.az, %_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P8MapBlockESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE10_Auto_nodeD2Ev.exit.i, %.loopexit, %.loopexit.split-lp, %bb.ay
  %.pn.pn = phi { ptr, i32 } [ %i.lk, %bb.ay ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %i.ll, %bb.az ], [ %i.jz, %_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P8MapBlockESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE10_Auto_nodeD2Ev.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  br label %bb.bn

bb.ba:                                            ; preds = %bb.i, %bb.f, %bb.s
  %indvars.iv.next299 = add nuw nsw i64 %indvars.iv298, 1 ; 3 uses
  %i.lm = trunc nuw nsw i64 %indvars.iv.next299 to i32
  %exitcond301.not = icmp eq i64 %indvars.iv.next299, 6
  br i1 %exitcond301.not, label %bb.c, label %bb.e, !llvm.loop !174

bb.bb:                                            ; preds = %._crit_edge282
  invoke void @_ZN7voxalgo12spread_lightEP3MapPK14NodeDefManager9LightBankRNS_10LightQueueERSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessISB_ESaISt4pairIKSB_SD_EEE(ptr noundef nonnull %0, ptr noundef %i.b, i32 noundef %i.av, ptr noundef nonnull align 8 dereferenceable(385) %4, ptr noundef nonnull align 8 dereferenceable(48) %2)
          to label %_ZN7voxalgo10LightQueueC2Em.exit131 unwind label %bb.d

.preheader:                                       ; preds = %bb.c, %._crit_edge282
  %indvars.iv302 = phi i64 [ %indvars.iv.next303, %._crit_edge282 ], [ 0, %bb.c ] ; 4 uses
  %i.ln = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %indvars.iv302 ; 2 uses
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !17 ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ln, i64 8 ; 2 uses
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !17
  %i.lr = icmp ult ptr %i.lo, %i.lq
  br i1 %i.lr, label %.lr.ph281, label %._crit_edge282

.lr.ph281:                                        ; preds = %.preheader
  %indvars.iv302.tr = trunc nuw i64 %indvars.iv302 to i32
  %i.ls = shl i32 %indvars.iv302.tr, 4
  %i.lt = trunc nuw nsw i64 %indvars.iv302 to i32
  br label %bb.bc

._crit_edge282:                                   ; preds = %_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit, %.preheader
  %indvars.iv.next303 = add nuw nsw i64 %indvars.iv302, 1 ; 2 uses
  %exitcond306.not = icmp eq i64 %indvars.iv.next303, 16
  br i1 %exitcond306.not, label %bb.bb, label %.preheader, !llvm.loop !175

bb.bc:                                            ; preds = %.lr.ph281, %_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit
  %.sroa.0237.0279 = phi ptr [ %i.lo, %.lr.ph281 ], [ %i.no, %_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit ] ; 3 uses
  %i.lu = load ptr, ptr %.sroa.0237.0279, align 8, !tbaa !81 ; 10 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %.sroa.0237.0279, i64 8
  %.sroa.04.0.copyload = load i48, ptr %i.lv, align 8 ; 6 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lu, i64 16 ; 2 uses
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !27
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lu, i64 36
  %i.lz = load i8, ptr %i.ly, align 4, !tbaa !70, !range !71, !noundef !72
  %i.ma = trunc nuw i8 %i.lz to i1
  br i1 %i.ma, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %.sroa.3.0.extract.shift.i = lshr i48 %.sroa.04.0.copyload, 32
  %.sroa.3.0.extract.trunc.i = zext nneg i48 %.sroa.3.0.extract.shift.i to i64
  %.sroa.2.0.extract.shift.i = lshr i48 %.sroa.04.0.copyload, 16
  %.sroa.2.0.extract.trunc.i = zext nneg i48 %.sroa.2.0.extract.shift.i to i64
  %.sroa.0.0.extract.trunc.i = zext i48 %.sroa.04.0.copyload to i64
  %sext.i = shl nuw i64 %.sroa.3.0.extract.trunc.i, 48
  %i.mb = ashr exact i64 %sext.i, 40
  %sext2.i = shl i64 %.sroa.2.0.extract.trunc.i, 48
  %i.mc = ashr exact i64 %sext2.i, 44
  %sext3.i = shl i64 %.sroa.0.0.extract.trunc.i, 48
  %i.md = ashr exact i64 %sext3.i, 48
  %i.me = add nsw i64 %i.mc, %i.md
  %i.mf = add nsw i64 %i.me, %i.mb
  %i.mg = and i64 %i.mf, 4294967295
  br label %bb.be

bb.be:                                            ; preds = %bb.bc, %bb.bd
  %i.mh = phi i64 [ %i.mg, %bb.bd ], [ 0, %bb.bc ]
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.lx, i64 %i.mh
  %.sroa.0.0.copyload.i.i220 = load i32, ptr %i.mi, align 4 ; 3 uses
  %.sroa.6.0.extract.shift = lshr i32 %.sroa.0.0.copyload.i.i220, 16 ; 3 uses
  %.sroa.0.0.extract.trunc.mask = and i32 %.sroa.0.0.copyload.i.i220, 65535
  %i.mj = zext nneg i32 %.sroa.0.0.extract.trunc.mask to i64
  %i.mk = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.mj
  %.sroa.0.0.copyload.i.i221 = load i8, ptr %i.mk, align 1, !tbaa !24
  %i.ml = and i8 %.sroa.0.0.copyload.i.i221, 16
  %.not.i222 = icmp eq i8 %i.ml, 0
  br i1 %.not.i222, label %_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit225, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  br i1 %i.dj, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.mm = and i32 %.sroa.6.0.extract.shift, 240
  %i.mn = or i32 %i.mm, %i.lt
  br label %_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit225

bb.bh:                                            ; preds = %bb.bf
  %i.mo = and i32 %.sroa.6.0.extract.shift, 15
  %i.mp = or disjoint i32 %i.mo, %i.ls
  br label %_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit225

_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit225: ; preds = %bb.bg, %bb.bh, %bb.be
  %.sroa.6.0 = phi i32 [ %.sroa.6.0.extract.shift, %bb.be ], [ %i.mp, %bb.bh ], [ %i.mn, %bb.bg ]
  invoke void @_ZN8MapBlock19expandNodesIfNeededEv(ptr noundef nonnull align 8 dereferenceable(328) %i.lu)
          to label %.noexc232 unwind label %bb.bm

.noexc232:                                        ; preds = %_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit225
  %.sroa.3.0.extract.shift.i228 = lshr i48 %.sroa.04.0.copyload, 32
  %.sroa.3.0.extract.trunc.i229 = zext nneg i48 %.sroa.3.0.extract.shift.i228 to i64
  %.sroa.2.0.extract.shift.i226 = lshr i48 %.sroa.04.0.copyload, 16
  %.sroa.2.0.extract.trunc.i227 = zext nneg i48 %.sroa.2.0.extract.shift.i226 to i64
  %.sroa.02.0.extract.trunc.i = zext i48 %.sroa.04.0.copyload to i64
  %.sroa.6.0.insert.ext = shl i32 %.sroa.6.0, 16
  %.sroa.6.0.insert.shift = and i32 %.sroa.6.0.insert.ext, 16711680
  %i.mq = and i32 %.sroa.0.0.copyload.i.i220, -16711681
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.6.0.insert.shift, %i.mq
  %i.mr = load ptr, ptr %i.lw, align 8, !tbaa !27
  %sext.i230 = shl nuw i64 %.sroa.3.0.extract.trunc.i229, 48
  %i.ms = ashr exact i64 %sext.i230, 40
  %sext3.i231 = shl i64 %.sroa.2.0.extract.trunc.i227, 48
  %i.mt = ashr exact i64 %sext3.i231, 44
  %sext4.i = shl i64 %.sroa.02.0.extract.trunc.i, 48
  %i.mu = ashr exact i64 %sext4.i, 48
  %i.mv = add nsw i64 %i.mt, %i.mu
  %i.mw = add nsw i64 %i.mv, %i.ms
  %i.mx = and i64 %i.mw, 4294967295
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.mr, i64 %i.mx
  store i32 %.sroa.0.0.insert.insert, ptr %i.my, align 4
  %i.mz = getelementptr inbounds nuw i8, ptr %i.lu, i64 66 ; 2 uses
  %i.na = load i16, ptr %i.mz, align 2, !tbaa !74 ; 2 uses
  %i.nb = icmp ult i16 %i.na, 4
  br i1 %i.nb, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %.noexc232
  store i16 4, ptr %i.mz, align 2, !tbaa !74
  %i.nc = getelementptr inbounds nuw i8, ptr %i.lu, i64 68
  store i32 16, ptr %i.nc, align 4, !tbaa !75
  %i.nd = getelementptr inbounds nuw i8, ptr %i.lu, i64 72
  %i.ne = load i32, ptr %i.nd, align 8, !tbaa !76
  %i.nf = getelementptr inbounds nuw i8, ptr %i.lu, i64 76
  store i32 %i.ne, ptr %i.nf, align 4, !tbaa !77
  br label %bb.bl

bb.bj:                                            ; preds = %.noexc232
  %i.ng = icmp eq i16 %i.na, 4
  br i1 %i.ng, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.nh = getelementptr inbounds nuw i8, ptr %i.lu, i64 68 ; 2 uses
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !75
  %i.nj = or i32 %i.ni, 16
  store i32 %i.nj, ptr %i.nh, align 4, !tbaa !75
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj, %bb.bi
  %i.nk = getelementptr inbounds nuw i8, ptr %i.lu, i64 40
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !78 ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.lu, i64 48 ; 2 uses
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !79
  %.not.i.i.i.i.i = icmp eq ptr %i.nn, %i.nl
  br i1 %.not.i.i.i.i.i, label %_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit, label %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i.i.i.i:  ; preds = %bb.bl
  store ptr %i.nl, ptr %i.nm, align 8, !tbaa !79
  br label %_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit

_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit: ; preds = %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i.i.i.i, %bb.bl
  %i.no = getelementptr inbounds nuw i8, ptr %.sroa.0237.0279, i64 24 ; 2 uses
  %i.np = load ptr, ptr %i.lp, align 8, !tbaa !17
  %i.nq = icmp ult ptr %i.no, %i.np
  br i1 %i.nq, label %bb.bc, label %._crit_edge282, !llvm.loop !176

bb.bm:                                            ; preds = %_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit225
  %i.nr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

_ZN7voxalgo10LightQueueC2Em.exit131:              ; preds = %bb.bb
  %.0108.add = add nuw nsw i64 %.0108.idx284, 4   ; 2 uses
  %.not = icmp eq i64 %.0108.add, 8
  br i1 %.not, label %bb.a, label %bb.b

bb.bn:                                            ; preds = %.body, %bb.g, %bb.bm, %bb.d
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dl, %bb.d ], [ %i.nr, %bb.bm ], [ %i.dy, %bb.g ], [ %.pn.pn, %.body ]
  call void @_ZNSt5arrayISt6vectorIN7voxalgo13ChangingLightESaIS2_EELm16EED2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(385) %4) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  call void @_ZNSt5arrayISt6vectorIN7voxalgo13ChangingLightESaIS2_EELm16EED2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(385) %3) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN7voxalgo18fill_with_sunlightEP8MMVManipPK14NodeDefManagerN4core8vector2dIsEEPA16_b(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #8 {
bb.a:
  %4 = alloca %struct.MapNode, align 4            ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.c = load i32, ptr %i.b, align 4, !tbaa !177  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  store i32 127, ptr %4, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i16, ptr %i.d, align 4, !tbaa !179
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i16, ptr %i.f, align 4, !tbaa !183
  %i.h = sext i16 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i32, ptr %i.i, align 4, !tbaa !184
  %i.k = sext i16 %i.e to i32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.m = load i16, ptr %i.l, align 2, !tbaa !185
  %i.n = sext i16 %i.m to i32
  %invariant.op = sub nsw i32 %i.k, %i.n
  %i.o = load i16, ptr %i.a, align 4, !tbaa !186
  %i.p = sext i16 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 312
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.c
  %indvars.iv57 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next58, %bb.c ] ; 3 uses
  %i.t = trunc nuw nsw i64 %indvars.iv57 to i32
  %i.u = shl i32 %i.t, 16
  %.sroa.2.0.extract.shift63 = add i32 %2, %i.u
  %i.v = ashr i32 %.sroa.2.0.extract.shift63, 16
  %i.w = sub nsw i32 %i.v, %i.h
  %i.x = mul nsw i32 %i.w, %i.j                   ; 2 uses
  %.reass = add i32 %i.x, %invariant.op
  %i.y = mul i32 %.reass, %i.c                    ; 2 uses
  %i.z = mul i32 %i.x, %i.c                       ; 2 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv57
  %.not49 = icmp slt i32 %i.y, %i.z
  br label %bb.d

bb.b:                                             ; preds = %bb.c
end_hunk_1
begin_hunk_2_@_ZN7voxalgo24finish_bulk_light_updateEP3MapN4core8vector3dIsEES4_PNS_10LightQueueES6_PSt3mapIS4_P8MapBlockSt4lessIS4_ESaISt4pairIKS4_S9_EEE:.preheader120
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store ptr %i.as, ptr %i.ak, align 8, !tbaa !25
  br label %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit

bb.e:                                             ; preds = %bb.c
  %i.at = load ptr, ptr %i.aj, align 8, !tbaa !84 ; 5 uses
  %i.au = ptrtoint ptr %i.al to i64
  %i.av = ptrtoint ptr %i.at to i64               ; 2 uses
  %i.aw = sub i64 %i.au, %i.av                    ; 3 uses
  %i.ax = icmp eq i64 %i.aw, 9223372036854775800
  br i1 %i.ax, label %bb.f, label %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.j, %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #20
  unreachable

_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.ay = sdiv exact i64 %i.aw, 24                ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ay, i64 1)
  %i.az = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ay ; 2 uses
  %i.ba = icmp ult i64 %i.az, %i.ay
  %i.bb = tail call i64 @llvm.umin.i64(i64 %i.az, i64 384307168202282325)
  %i.bc = select i1 %i.ba, i64 384307168202282325, i64 %i.bb ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bc, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bd = mul nuw nsw i64 %i.bc, 24
  %i.be = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #21 ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.aw ; 4 uses
  store ptr %i.j, ptr %i.bf, align 8, !tbaa !81
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store i48 %.sroa.097.0.insert.insert.reass, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 14
  store i48 %.sroa.0102.0.insert.insert105.reass, ptr %i.bh, align 2
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 20
  store i8 6, ptr %i.bi, align 4, !tbaa !83
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.at, %i.al
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i.i ], [ %i.be, %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i.i ], [ %i.at, %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !85, !alias.scope !215
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bj, %i.al
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !91

_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.be, %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.bk, %.lr.ph.i.i.i.i.i.i ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 24
  %.not.i36.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i36.i.i.i, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIsEES8_RP8MapBlockRhEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i
  %i.bm = load ptr, ptr %i.am, align 8, !tbaa !80
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = sub i64 %i.bn, %i.av
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.bo) #22
  br label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIsEES8_RP8MapBlockRhEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIsEES8_RP8MapBlockRhEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i
  store ptr %i.be, ptr %i.aj, align 8, !tbaa !84
  store ptr %i.bl, ptr %i.ak, align 8, !tbaa !25
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %i.be, i64 %i.bc
  store ptr %i.bp, ptr %i.am, align 8, !tbaa !80
  br label %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit

_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit: ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIsEES8_RP8MapBlockRhEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.d, %bb.b
  %i.bq = tail call i8 @llvm.umax.i8(i8 %i.ac, i8 %i.ab)
  %i.br = select i1 %.not78, i8 %i.ac, i8 %i.bq   ; 2 uses
  %i.bs = icmp samesign ugt i8 %i.br, 1
  br i1 %i.bs, label %bb.h, label %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit.1

bb.h:                                             ; preds = %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit
  %i.bt = zext nneg i8 %i.br to i64
  %i.bu = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.bt ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 4 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !25 ; 8 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 16 ; 3 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !80
  %.not.i.i79.1 = icmp eq ptr %i.bw, %i.by
  br i1 %.not.i.i79.1, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.j, ptr %i.bw, align 8, !tbaa !81
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store i48 %.sroa.097.0.insert.insert.reass, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 14
  store i48 %.sroa.0102.0.insert.insert105.reass, ptr %i.ca, align 2
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 20
  store i8 6, ptr %i.cb, align 4, !tbaa !83
  %i.cc = load ptr, ptr %i.bv, align 8, !tbaa !25
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  store ptr %i.cd, ptr %i.bv, align 8, !tbaa !25
  br label %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit.1

bb.j:                                             ; preds = %bb.h
  %i.ce = load ptr, ptr %i.bu, align 8, !tbaa !84 ; 5 uses
  %i.cf = ptrtoint ptr %i.bw to i64
  %i.cg = ptrtoint ptr %i.ce to i64               ; 2 uses
  %i.ch = sub i64 %i.cf, %i.cg                    ; 3 uses
  %i.ci = icmp eq i64 %i.ch, 9223372036854775800
  br i1 %i.ci, label %bb.f, label %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.1

_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.1: ; preds = %bb.j
  %i.cj = sdiv exact i64 %i.ch, 24                ; 3 uses
  %.sroa.speculated.i.i.i.i.1 = tail call i64 @llvm.umax.i64(i64 %i.cj, i64 1)
  %i.ck = add nsw i64 %.sroa.speculated.i.i.i.i.1, %i.cj ; 2 uses
  %i.cl = icmp ult i64 %i.ck, %i.cj
  %i.cm = tail call i64 @llvm.umin.i64(i64 %i.ck, i64 384307168202282325)
  %i.cn = select i1 %i.cl, i64 384307168202282325, i64 %i.cm ; 3 uses
  %.not.i.i.i.i.1 = icmp ne i64 %i.cn, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.1)
  %i.co = mul nuw nsw i64 %i.cn, 24
  %i.cp = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.co) #21 ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.ch ; 4 uses
  store ptr %i.j, ptr %i.cq, align 8, !tbaa !81
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store i48 %.sroa.097.0.insert.insert.reass, ptr %i.cr, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 14
  store i48 %.sroa.0102.0.insert.insert105.reass, ptr %i.cs, align 2
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 20
  store i8 6, ptr %i.ct, align 4, !tbaa !83
  %.not10.i.i.i.i.i.i.1 = icmp eq ptr %i.ce, %i.bw
  br i1 %.not10.i.i.i.i.i.i.1, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i.1, label %.lr.ph.i.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.i.1:                             ; preds = %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.1, %.lr.ph.i.i.i.i.i.i.1
  %.012.i.i.i.i.i.i.1 = phi ptr [ %i.cv, %.lr.ph.i.i.i.i.i.i.1 ], [ %i.cp, %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.1 ] ; 2 uses
  %.0911.i.i.i.i.i.i.1 = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i.i.1 ], [ %i.ce, %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.1 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i.1, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i.1, i64 24, i1 false), !tbaa.struct !85, !alias.scope !215
  %i.cu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.1, i64 24 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.1, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.1 = icmp eq ptr %i.cu, %i.bw
  br i1 %.not.i.i.i.i.i.i.1, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i.1, label %.lr.ph.i.i.i.i.i.i.1, !llvm.loop !91

_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i.1: ; preds = %.lr.ph.i.i.i.i.i.i.1, %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.1
  %.0.lcssa.i.i.i.i.i.i.1 = phi ptr [ %i.cp, %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.1 ], [ %i.cv, %.lr.ph.i.i.i.i.i.i.1 ]
  %i.cw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.1, i64 24
  %.not.i36.i.i.i.1 = icmp eq ptr %i.ce, null
  br i1 %.not.i36.i.i.i.1, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIsEES8_RP8MapBlockRhEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.1, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i.1
  %i.cx = load ptr, ptr %i.bx, align 8, !tbaa !80
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = sub i64 %i.cy, %i.cg
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef %i.cz) #22
  br label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIsEES8_RP8MapBlockRhEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.1

_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIsEES8_RP8MapBlockRhEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.1: ; preds = %bb.k, %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i.1
  store ptr %i.cp, ptr %i.bu, align 8, !tbaa !84
  store ptr %i.cw, ptr %i.bv, align 8, !tbaa !25
  %i.da = getelementptr inbounds nuw [24 x i8], ptr %i.cp, i64 %i.cn
  store ptr %i.da, ptr %i.bx, align 8, !tbaa !80
  br label %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit.1

_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit.1: ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIsEES8_RP8MapBlockRhEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.1, %bb.i, %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %bb.l, label %_ZN8MapBlock14getNodeNoCheckEsss.exit, !llvm.loop !219

bb.l:                                             ; preds = %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit.1
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 1 ; 2 uses
  %exitcond148.not = icmp eq i64 %indvars.iv.next146, 16
  br i1 %exitcond148.not, label %bb.m, label %.preheader115, !llvm.loop !220

bb.m:                                             ; preds = %bb.l
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv149, 1 ; 2 uses
  %exitcond152.not = icmp eq i64 %indvars.iv.next150, 16
  br i1 %exitcond152.not, label %.loopexit, label %.preheader116, !llvm.loop !221

.loopexit:                                        ; preds = %bb.m, %bb.a
  %i.db = add i16 %storemerge72127, 1             ; 2 uses
  %i.dc = sext i16 %i.db to i32
  %.not73 = icmp sgt i32 %i.dc, %i.f
  br i1 %.not73, label %._crit_edge, label %bb.a, !llvm.loop !222

._crit_edge:                                      ; preds = %.loopexit
  %i.dd = add i16 %storemerge70130, 1             ; 2 uses
  %.not71 = icmp sgt i16 %i.dd, %.sroa.2.0.extract.trunc
  br i1 %.not71, label %._crit_edge131.split, label %.preheader118, !llvm.loop !223

._crit_edge131.split:                             ; preds = %._crit_edge
  %i.de = add i16 %storemerge133, 1               ; 2 uses
  %.not = icmp sgt i16 %i.de, %.sroa.061.0.extract.trunc
  br i1 %.not, label %.preheader, label %.preheader119, !llvm.loop !224

bb.n:                                             ; preds = %._crit_edge139
  tail call void @_ZN7voxalgo12spread_lightEP3MapPK14NodeDefManager9LightBankRNS_10LightQueueERSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessISB_ESaISt4pairIKSB_SD_EEE(ptr noundef nonnull %0, ptr noundef %i.b, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(385) %4, ptr noundef nonnull align 8 dereferenceable(48) %5)
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge139.1, %bb.n
  %indvars.iv153.1 = phi i64 [ 0, %bb.n ], [ %indvars.iv.next154.1, %._crit_edge139.1 ] ; 3 uses
  %i.df = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %indvars.iv153.1 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !17 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !17
  %i.dj = icmp ult ptr %i.dg, %i.di
  br i1 %i.dj, label %.lr.ph.1, label %._crit_edge139.1

.lr.ph.1:                                         ; preds = %bb.o
  %indvars.iv153.1.tr = trunc nuw i64 %indvars.iv153.1 to i32
  %i.dk = shl i32 %indvars.iv153.1.tr, 4
  br label %bb.p

bb.p:                                             ; preds = %_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit.1, %.lr.ph.1
  %.sroa.089.0137.1 = phi ptr [ %i.dg, %.lr.ph.1 ], [ %i.fd, %_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit.1 ] ; 3 uses
  %i.dl = load ptr, ptr %.sroa.089.0137.1, align 8, !tbaa !81 ; 10 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.089.0137.1, i64 8
  %.sroa.04.0.copyload.1 = load i48, ptr %i.dm, align 8 ; 6 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 16 ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !27
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 36
  %i.dq = load i8, ptr %i.dp, align 4, !tbaa !70, !range !71, !noundef !72
  %i.dr = trunc nuw i8 %i.dq to i1
  br i1 %i.dr, label %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit.1, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.sroa.3.0.extract.shift.i.1 = lshr i48 %.sroa.04.0.copyload.1, 32
  %.sroa.3.0.extract.trunc.i.1 = zext nneg i48 %.sroa.3.0.extract.shift.i.1 to i64
  %.sroa.2.0.extract.shift.i.1 = lshr i48 %.sroa.04.0.copyload.1, 16
  %.sroa.2.0.extract.trunc.i.1 = zext nneg i48 %.sroa.2.0.extract.shift.i.1 to i64
  %.sroa.0.0.extract.trunc.i.1 = zext i48 %.sroa.04.0.copyload.1 to i64
  %sext.i.1 = shl nuw i64 %.sroa.3.0.extract.trunc.i.1, 48
  %i.ds = ashr exact i64 %sext.i.1, 40
  %sext2.i.1 = shl i64 %.sroa.2.0.extract.trunc.i.1, 48
  %i.dt = ashr exact i64 %sext2.i.1, 44
  %sext3.i.1 = shl i64 %.sroa.0.0.extract.trunc.i.1, 48
  %i.du = ashr exact i64 %sext3.i.1, 48
  %i.dv = add nsw i64 %i.dt, %i.du
  %i.dw = add nsw i64 %i.dv, %i.ds
  %i.dx = and i64 %i.dw, 4294967295
  br label %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit.1

_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit.1: ; preds = %bb.q, %bb.p
  %i.dy = phi i64 [ %i.dx, %bb.q ], [ 0, %bb.p ]
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.dy
  %.sroa.0.0.copyload.i.i80.1 = load i32, ptr %i.dz, align 4 ; 3 uses
  %.sroa.5.0.extract.shift.1 = lshr i32 %.sroa.0.0.copyload.i.i80.1, 16 ; 2 uses
  %.sroa.0.0.extract.trunc.mask.1 = and i32 %.sroa.0.0.copyload.i.i80.1, 65535
  %i.ea = zext nneg i32 %.sroa.0.0.extract.trunc.mask.1 to i64
  %i.eb = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ea
  %.sroa.0.0.copyload.i.i81.1 = load i8, ptr %i.eb, align 1, !tbaa !24
  %i.ec = and i8 %.sroa.0.0.copyload.i.i81.1, 16
  %.not.i.1 = icmp eq i8 %i.ec, 0
  %i.ed = and i32 %.sroa.5.0.extract.shift.1, 15
  %i.ee = or disjoint i32 %i.ed, %i.dk
  %.sroa.5.0.1 = select i1 %.not.i.1, i32 %.sroa.5.0.extract.shift.1, i32 %i.ee
  %.sroa.5.0.insert.ext.1 = shl i32 %.sroa.5.0.1, 16
  %.sroa.5.0.insert.shift.1 = and i32 %.sroa.5.0.insert.ext.1, 16711680
  %i.ef = and i32 %.sroa.0.0.copyload.i.i80.1, -16711681
  %.sroa.0.0.insert.insert.1 = or disjoint i32 %.sroa.5.0.insert.shift.1, %i.ef
  %.sroa.02.0.extract.trunc.i.1 = zext i48 %.sroa.04.0.copyload.1 to i64
  %.sroa.2.0.extract.shift.i82.1 = lshr i48 %.sroa.04.0.copyload.1, 16
  %.sroa.2.0.extract.trunc.i83.1 = zext nneg i48 %.sroa.2.0.extract.shift.i82.1 to i64
  %.sroa.3.0.extract.shift.i84.1 = lshr i48 %.sroa.04.0.copyload.1, 32
  %.sroa.3.0.extract.trunc.i85.1 = zext nneg i48 %.sroa.3.0.extract.shift.i84.1 to i64
  tail call void @_ZN8MapBlock19expandNodesIfNeededEv(ptr noundef nonnull align 8 dereferenceable(328) %i.dl)
  %i.eg = load ptr, ptr %i.dn, align 8, !tbaa !27
  %sext.i86.1 = shl nuw i64 %.sroa.3.0.extract.trunc.i85.1, 48
  %i.eh = ashr exact i64 %sext.i86.1, 40
  %sext3.i87.1 = shl i64 %.sroa.2.0.extract.trunc.i83.1, 48
  %i.ei = ashr exact i64 %sext3.i87.1, 44
  %sext4.i.1 = shl i64 %.sroa.02.0.extract.trunc.i.1, 48
  %i.ej = ashr exact i64 %sext4.i.1, 48
  %i.ek = add nsw i64 %i.ei, %i.ej
  %i.el = add nsw i64 %i.ek, %i.eh
  %i.em = and i64 %i.el, 4294967295
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %i.em
  store i32 %.sroa.0.0.insert.insert.1, ptr %i.en, align 4
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dl, i64 66 ; 2 uses
  %i.ep = load i16, ptr %i.eo, align 2, !tbaa !74 ; 2 uses
  %i.eq = icmp ult i16 %i.ep, 4
  br i1 %i.eq, label %bb.t, label %bb.r

bb.r:                                             ; preds = %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit.1
  %i.er = icmp eq i16 %i.ep, 4
  br i1 %i.er, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.es = getelementptr inbounds nuw i8, ptr %i.dl, i64 68 ; 2 uses
  %i.et = load i32, ptr %i.es, align 4, !tbaa !75
  %i.eu = or i32 %i.et, 16
  store i32 %i.eu, ptr %i.es, align 4, !tbaa !75
  br label %bb.u

bb.t:                                             ; preds = %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit.1
  store i16 4, ptr %i.eo, align 2, !tbaa !74
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dl, i64 68
  store i32 16, ptr %i.ev, align 4, !tbaa !75
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dl, i64 72
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !76
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dl, i64 76
  store i32 %i.ex, ptr %i.ey, align 4, !tbaa !77
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %i.ez = getelementptr inbounds nuw i8, ptr %i.dl, i64 40
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !78 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dl, i64 48 ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !79
  %.not.i.i.i.i.i.1 = icmp eq ptr %i.fc, %i.fa
  br i1 %.not.i.i.i.i.i.1, label %_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit.1, label %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i.i.i.i.1

_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i.i.i.i.1: ; preds = %bb.u
  store ptr %i.fa, ptr %i.fb, align 8, !tbaa !79
  br label %_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit.1

_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit.1: ; preds = %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i.i.i.i.1, %bb.u
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.089.0137.1, i64 24 ; 2 uses
  %i.fe = load ptr, ptr %i.dh, align 8, !tbaa !17
  %i.ff = icmp ult ptr %i.fd, %i.fe
  br i1 %i.ff, label %bb.p, label %._crit_edge139.1, !llvm.loop !225

._crit_edge139.1:                                 ; preds = %_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit.1, %bb.o
  %indvars.iv.next154.1 = add nuw nsw i64 %indvars.iv153.1, 1 ; 2 uses
  %exitcond156.1 = icmp eq i64 %indvars.iv.next154.1, 16
  br i1 %exitcond156.1, label %bb.v, label %bb.o, !llvm.loop !226

bb.v:                                             ; preds = %._crit_edge139.1
  tail call void @_ZN7voxalgo12spread_lightEP3MapPK14NodeDefManager9LightBankRNS_10LightQueueERSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessISB_ESaISt4pairIKSB_SD_EEE(ptr noundef nonnull %0, ptr noundef %i.b, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(385) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %5)
  ret void

bb.w:                                             ; preds = %.preheader, %._crit_edge139
  %indvars.iv153 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next154, %._crit_edge139 ] ; 3 uses
  %i.fg = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %indvars.iv153 ; 2 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !17 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 8 ; 2 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !17
  %i.fk = icmp ult ptr %i.fh, %i.fj
  br i1 %i.fk, label %.lr.ph, label %._crit_edge139

.lr.ph:                                           ; preds = %bb.w
  %i.fl = trunc nuw nsw i64 %indvars.iv153 to i32
  br label %bb.x

._crit_edge139:                                   ; preds = %_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit, %bb.w
  %indvars.iv.next154 = add nuw nsw i64 %indvars.iv153, 1 ; 2 uses
  %exitcond156 = icmp eq i64 %indvars.iv.next154, 15
  br i1 %exitcond156, label %bb.n, label %bb.w, !llvm.loop !226

bb.x:                                             ; preds = %.lr.ph, %_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit
  %.sroa.089.0137 = phi ptr [ %i.fh, %.lr.ph ], [ %i.he, %_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit ] ; 3 uses
  %i.fm = load ptr, ptr %.sroa.089.0137, align 8, !tbaa !81 ; 10 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.089.0137, i64 8
  %.sroa.04.0.copyload = load i48, ptr %i.fn, align 8 ; 6 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 16 ; 2 uses
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !27
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fm, i64 36
  %i.fr = load i8, ptr %i.fq, align 4, !tbaa !70, !range !71, !noundef !72
  %i.fs = trunc nuw i8 %i.fr to i1
  br i1 %i.fs, label %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.3.0.extract.shift.i = lshr i48 %.sroa.04.0.copyload, 32
  %.sroa.3.0.extract.trunc.i = zext nneg i48 %.sroa.3.0.extract.shift.i to i64
  %.sroa.2.0.extract.shift.i = lshr i48 %.sroa.04.0.copyload, 16
  %.sroa.2.0.extract.trunc.i = zext nneg i48 %.sroa.2.0.extract.shift.i to i64
  %.sroa.0.0.extract.trunc.i = zext i48 %.sroa.04.0.copyload to i64
  %sext.i = shl nuw i64 %.sroa.3.0.extract.trunc.i, 48
  %i.ft = ashr exact i64 %sext.i, 40
  %sext2.i = shl i64 %.sroa.2.0.extract.trunc.i, 48
  %i.fu = ashr exact i64 %sext2.i, 44
  %sext3.i = shl i64 %.sroa.0.0.extract.trunc.i, 48
  %i.fv = ashr exact i64 %sext3.i, 48
  %i.fw = add nsw i64 %i.fu, %i.fv
  %i.fx = add nsw i64 %i.fw, %i.ft
  %i.fy = and i64 %i.fx, 4294967295
  br label %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit

_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit: ; preds = %bb.x, %bb.y
  %i.fz = phi i64 [ %i.fy, %bb.y ], [ 0, %bb.x ]
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %i.fz
  %.sroa.0.0.copyload.i.i80 = load i32, ptr %i.ga, align 4 ; 3 uses
  %.sroa.5.0.extract.shift = lshr i32 %.sroa.0.0.copyload.i.i80, 16 ; 2 uses
  %.sroa.0.0.extract.trunc.mask = and i32 %.sroa.0.0.copyload.i.i80, 65535
  %i.gb = zext nneg i32 %.sroa.0.0.extract.trunc.mask to i64
  %i.gc = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.gb
  %.sroa.0.0.copyload.i.i81 = load i8, ptr %i.gc, align 1, !tbaa !24
  %i.gd = and i8 %.sroa.0.0.copyload.i.i81, 16
  %.not.i = icmp eq i8 %i.gd, 0
  %i.ge = and i32 %.sroa.5.0.extract.shift, 240
  %i.gf = or i32 %i.ge, %i.fl
  %.sroa.5.0 = select i1 %.not.i, i32 %.sroa.5.0.extract.shift, i32 %i.gf
  %.sroa.5.0.insert.ext = shl i32 %.sroa.5.0, 16
  %.sroa.5.0.insert.shift = and i32 %.sroa.5.0.insert.ext, 16711680
  %i.gg = and i32 %.sroa.0.0.copyload.i.i80, -16711681
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.5.0.insert.shift, %i.gg
  %.sroa.02.0.extract.trunc.i = zext i48 %.sroa.04.0.copyload to i64
  %.sroa.2.0.extract.shift.i82 = lshr i48 %.sroa.04.0.copyload, 16
  %.sroa.2.0.extract.trunc.i83 = zext nneg i48 %.sroa.2.0.extract.shift.i82 to i64
  %.sroa.3.0.extract.shift.i84 = lshr i48 %.sroa.04.0.copyload, 32
  %.sroa.3.0.extract.trunc.i85 = zext nneg i48 %.sroa.3.0.extract.shift.i84 to i64
  tail call void @_ZN8MapBlock19expandNodesIfNeededEv(ptr noundef nonnull align 8 dereferenceable(328) %i.fm)
  %i.gh = load ptr, ptr %i.fo, align 8, !tbaa !27
  %sext.i86 = shl nuw i64 %.sroa.3.0.extract.trunc.i85, 48
  %i.gi = ashr exact i64 %sext.i86, 40
  %sext3.i87 = shl i64 %.sroa.2.0.extract.trunc.i83, 48
  %i.gj = ashr exact i64 %sext3.i87, 44
  %sext4.i = shl i64 %.sroa.02.0.extract.trunc.i, 48
  %i.gk = ashr exact i64 %sext4.i, 48
  %i.gl = add nsw i64 %i.gj, %i.gk
end_hunk_2
