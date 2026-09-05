Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/voxelalgorithms?download=true
inline.NumInlined: 679
inline.NumDeleted: 245
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN7voxalgo24propagate_block_sunlightEP3MapPK14NodeDefManagerPNS_23SunlightPropagationDataEPNS_10LightQueueES8_:bb.a
  br i1 %i.db, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dc = load i32, ptr %i.k, align 4, !tbaa !82
  %i.dd = or i32 %i.dc, 16
  store i32 %i.dd, ptr %i.k, align 4, !tbaa !82
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.de = load ptr, ptr %i.n, align 8, !tbaa !85  ; 2 uses
  %i.df = load ptr, ptr %i.o, align 8, !tbaa !86
  %.not.i.i.i.i.i99 = icmp eq ptr %i.df, %i.de
  br i1 %.not.i.i.i.i.i99, label %_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit101, label %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i.i.i.i100

_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i.i.i.i100: ; preds = %bb.q
  store ptr %i.de, ptr %i.o, align 8, !tbaa !86
  br label %_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit101

_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit101: ; preds = %bb.q, %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i.i.i.i100
  %.sroa.0.0.copyload = load i48, ptr %i.a, align 8 ; 2 uses
  %i.dg = load ptr, ptr %i.q, align 8, !tbaa !33  ; 8 uses
  %i.dh = load ptr, ptr %i.r, align 8, !tbaa !87
  %.not.i.i102 = icmp eq ptr %i.dg, %i.dh
  br i1 %.not.i.i102, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit101
  store ptr %i.b, ptr %i.dg, align 8, !tbaa !89
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store i48 %.sroa.0121.0.insert.insert127.reass, ptr %i.di, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 14
  store i48 %.sroa.0.0.copyload, ptr %i.dj, align 2
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 20
  store i8 4, ptr %i.dk, align 4, !tbaa !90
  %i.dl = load ptr, ptr %i.q, align 8, !tbaa !33
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  store ptr %i.dm, ptr %i.q, align 8, !tbaa !33
  br label %bb.v

bb.s:                                             ; preds = %_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit101
  %i.dn = load ptr, ptr %i.p, align 8, !tbaa !91  ; 5 uses
  %i.do = ptrtoint ptr %i.dg to i64
  %i.dp = ptrtoint ptr %i.dn to i64               ; 2 uses
  %i.dq = sub i64 %i.do, %i.dp                    ; 3 uses
  %i.dr = icmp eq i64 %i.dq, 9223372036854775800
  br i1 %i.dr, label %bb.t, label %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i103

bb.t:                                             ; preds = %bb.s
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #20
  unreachable

_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i103: ; preds = %bb.s
  %i.ds = sdiv exact i64 %i.dq, 24                ; 3 uses
  %.sroa.speculated.i.i.i.i104 = tail call i64 @llvm.umax.i64(i64 %i.ds, i64 1)
  %i.dt = add nsw i64 %.sroa.speculated.i.i.i.i104, %i.ds ; 2 uses
  %i.du = icmp ult i64 %i.dt, %i.ds
  %i.dv = tail call i64 @llvm.umin.i64(i64 %i.dt, i64 384307168202282325)
  %i.dw = select i1 %i.du, i64 384307168202282325, i64 %i.dv ; 3 uses
  %.not.i.i.i.i105 = icmp ne i64 %i.dw, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i105)
  %i.dx = mul nuw nsw i64 %i.dw, 24
  %i.dy = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dx) #21 ; 5 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.dq ; 4 uses
  store ptr %i.b, ptr %i.dz, align 8, !tbaa !89
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  store i48 %.sroa.0121.0.insert.insert127.reass, ptr %i.ea, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 14
  store i48 %.sroa.0.0.copyload, ptr %i.eb, align 2
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 20
  store i8 4, ptr %i.ec, align 4, !tbaa !90
  %.not10.i.i.i.i.i.i106 = icmp eq ptr %i.dn, %i.dg
  br i1 %.not10.i.i.i.i.i.i106, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i111, label %.lr.ph.i.i.i.i.i.i107

.lr.ph.i.i.i.i.i.i107:                            ; preds = %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i103, %.lr.ph.i.i.i.i.i.i107
  %.012.i.i.i.i.i.i108 = phi ptr [ %i.ee, %.lr.ph.i.i.i.i.i.i107 ], [ %i.dy, %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i103 ] ; 2 uses
  %.0911.i.i.i.i.i.i109 = phi ptr [ %i.ed, %.lr.ph.i.i.i.i.i.i107 ], [ %i.dn, %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i103 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i108, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i109, i64 24, i1 false), !tbaa.struct !93, !alias.scope !240
  %i.ed = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i109, i64 24 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i108, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i110 = icmp eq ptr %i.ed, %i.dg
  br i1 %.not.i.i.i.i.i.i110, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i111, label %.lr.ph.i.i.i.i.i.i107, !llvm.loop !1

_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i111: ; preds = %.lr.ph.i.i.i.i.i.i107, %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i103
  %.0.lcssa.i.i.i.i.i.i112 = phi ptr [ %i.dy, %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i103 ], [ %i.ee, %.lr.ph.i.i.i.i.i.i107 ]
  %i.ef = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i112, i64 24
  %.not.i36.i.i.i113 = icmp eq ptr %i.dn, null
  br i1 %.not.i36.i.i.i113, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIsEES8_RP8MapBlockRhEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i114, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i111
  %i.eg = load ptr, ptr %i.r, align 8, !tbaa !87
  %i.eh = ptrtoint ptr %i.eg to i64
  %i.ei = sub i64 %i.eh, %i.dp
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dn, i64 noundef %i.ei) #22
  br label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIsEES8_RP8MapBlockRhEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i114

_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIsEES8_RP8MapBlockRhEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i114: ; preds = %bb.u, %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i111
  store ptr %i.dy, ptr %i.p, align 8, !tbaa !91
  store ptr %i.ef, ptr %i.q, align 8, !tbaa !33
  %i.ej = getelementptr inbounds nuw [24 x i8], ptr %i.dy, i64 %i.dw
  store ptr %i.ej, ptr %i.r, align 8, !tbaa !87
  br label %bb.v

bb.v:                                             ; preds = %bb.r, %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIsEES8_RP8MapBlockRhEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i114
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not243 = icmp eq i64 %indvars.iv, 0
  br i1 %.not243, label %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit, label %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit84, !llvm.loop !237

_ZNK7MapNode11getLightRawE9LightBank20ContentLightingFlags.exit88.thread: ; preds = %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit84, %_ZNK7MapNode11getLightRawE9LightBank20ContentLightingFlags.exit, %_ZNK7MapNode11getLightRawE9LightBank20ContentLightingFlags.exit.thread
  %.5.ph = phi i1 [ %.1213, %_ZNK7MapNode11getLightRawE9LightBank20ContentLightingFlags.exit ], [ %.1213, %_ZNK7MapNode11getLightRawE9LightBank20ContentLightingFlags.exit.thread ], [ %.3210, %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit84 ]
  %i.ek = load ptr, ptr %i.d, align 8, !tbaa !145
  %i.el = getelementptr inbounds i8, ptr %i.ek, i64 -6
  %i.em = load ptr, ptr %2, align 8, !tbaa !144
  %i.en = getelementptr inbounds nuw [6 x i8], ptr %i.em, i64 %.063214
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(5) %i.en, ptr noundef nonnull align 2 dereferenceable(5) %i.el, i64 5, i1 false), !tbaa.struct !146
  %i.eo = load ptr, ptr %i.d, align 8, !tbaa !143
  %i.ep = getelementptr inbounds i8, ptr %i.eo, i64 -6
  store ptr %i.ep, ptr %i.d, align 8, !tbaa !143
  %i.eq = add i64 %.063214, -1
  br label %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit

_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit: ; preds = %bb.v, %bb.m, %_ZNK7MapNode11getLightRawE9LightBank20ContentLightingFlags.exit88.thread
  %.5195 = phi i1 [ %.5.ph, %_ZNK7MapNode11getLightRawE9LightBank20ContentLightingFlags.exit88.thread ], [ true, %bb.m ], [ true, %bb.v ] ; 2 uses
  %.164 = phi i64 [ %i.eq, %_ZNK7MapNode11getLightRawE9LightBank20ContentLightingFlags.exit88.thread ], [ %.063214, %bb.m ], [ %.063214, %bb.v ]
  %i.er = add i64 %.164, 1                        ; 2 uses
  %i.es = load ptr, ptr %i.d, align 8, !tbaa !143
  %i.et = load ptr, ptr %2, align 8, !tbaa !144   ; 2 uses
  %i.eu = ptrtoint ptr %i.es to i64
  %i.ev = ptrtoint ptr %i.et to i64
  %i.ew = sub i64 %i.eu, %i.ev
  %i.ex = sdiv exact i64 %i.ew, 6
  %i.ey = icmp ult i64 %i.er, %i.ex
  br i1 %i.ey, label %bb.c, label %_ZNSt6vectorIN7voxalgo23SunlightPropagationUnitESaIS1_EE5clearEv.exit, !llvm.loop !238

_ZNSt6vectorIN7voxalgo23SunlightPropagationUnitESaIS1_EE5clearEv.exit: ; preds = %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit, %.preheader201, %_ZSt8_DestroyIPN7voxalgo23SunlightPropagationUnitES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.b
  %.0 = phi i1 [ false, %_ZSt8_DestroyIPN7voxalgo23SunlightPropagationUnitES1_EvT_S3_RSaIT0_E.exit.i.i ], [ false, %bb.b ], [ false, %.preheader201 ], [ %.5195, %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7voxalgo24finish_bulk_light_updateEP3MapN4core8vector3dIsEES4_PNS_10LightQueueES6_PSt3mapIS4_P8MapBlockSt4lessIS4_ESaISt4pairIKS4_S9_EEE(ptr noundef %0, i48 %1, i48 %2, ptr nofree noundef nonnull captures(none) %3, ptr nofree noundef nonnull captures(none) %4, ptr noundef nonnull %5) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
.preheader120:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118  ; 6 uses
  tail call void @_ZN7voxalgo14unspread_lightEP3MapPK14NodeDefManager9LightBankRNS_10LightQueueES7_RSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessISB_ESaISt4pairIKSB_SD_EEE(ptr noundef nonnull %0, ptr noundef %i.b, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(385) %3, ptr noundef nonnull align 8 dereferenceable(385) %4, ptr noundef nonnull align 8 dereferenceable(48) %5)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 392
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 392 ; 4 uses
  tail call void @_ZN7voxalgo14unspread_lightEP3MapPK14NodeDefManager9LightBankRNS_10LightQueueES7_RSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessISB_ESaISt4pairIKSB_SD_EEE(ptr noundef nonnull %0, ptr noundef %i.b, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(385) %i.c, ptr noundef nonnull align 8 dereferenceable(385) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %5)
  %.sroa.062.0.extract.trunc = trunc i48 %1 to i16 ; 2 uses
  %.sroa.263.0.extract.shift = lshr i48 %1, 16
  %.sroa.263.0.extract.trunc = trunc i48 %.sroa.263.0.extract.shift to i16 ; 2 uses
  %.sroa.364.0.extract.shift = lshr i48 %1, 32
  %.sroa.364.0.extract.trunc = trunc nuw i48 %.sroa.364.0.extract.shift to i16 ; 2 uses
  %.sroa.061.0.extract.trunc = trunc i48 %2 to i16 ; 2 uses
  %.sroa.2.0.extract.shift = lshr i48 %2, 16
  %.sroa.2.0.extract.trunc = trunc i48 %.sroa.2.0.extract.shift to i16 ; 2 uses
  %.not132 = icmp sgt i16 %.sroa.062.0.extract.trunc, %.sroa.061.0.extract.trunc
  br i1 %.not132, label %.preheader, label %.preheader119.lr.ph

.preheader119.lr.ph:                              ; preds = %.preheader120
  %.not71129 = icmp sgt i16 %.sroa.263.0.extract.trunc, %.sroa.2.0.extract.trunc
  %i.e = ashr i48 %2, 32
  %i.f = trunc nsw i48 %i.e to i32                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 312
  %i.h = sext i16 %.sroa.364.0.extract.trunc to i32
  %.not73126 = icmp sgt i32 %i.h, %i.f
  %or.cond = select i1 %.not71129, i1 true, i1 %.not73126
  br i1 %or.cond, label %.preheader, label %.preheader119

.preheader119:                                    ; preds = %.preheader119.lr.ph, %._crit_edge131.split
  %storemerge133 = phi i16 [ %i.de, %._crit_edge131.split ], [ %.sroa.062.0.extract.trunc, %.preheader119.lr.ph ] ; 2 uses
  %.sroa.0102.0.insert.ext103 = zext i16 %storemerge133 to i48
  br label %.preheader118

.preheader:                                       ; preds = %._crit_edge131.split, %.preheader119.lr.ph, %.preheader120
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 312 ; 2 uses
  br label %bb.w

.preheader118:                                    ; preds = %.preheader119, %._crit_edge
  %storemerge70130 = phi i16 [ %.sroa.263.0.extract.trunc, %.preheader119 ], [ %i.dd, %._crit_edge ] ; 2 uses
  %.sroa.7106.0.insert.ext107 = zext i16 %storemerge70130 to i48
  %.sroa.7106.0.insert.shift108 = shl nuw nsw i48 %.sroa.7106.0.insert.ext107, 16
  %invariant.op128 = or disjoint i48 %.sroa.7106.0.insert.shift108, %.sroa.0102.0.insert.ext103
  br label %bb.a

bb.a:                                             ; preds = %.preheader118, %.loopexit
  %storemerge72127 = phi i16 [ %.sroa.364.0.extract.trunc, %.preheader118 ], [ %i.db, %.loopexit ] ; 2 uses
  %.sroa.10.0.insert.ext111 = zext i16 %storemerge72127 to i48
  %.sroa.10.0.insert.shift112 = shl nuw i48 %.sroa.10.0.insert.ext111, 32
  %.sroa.0102.0.insert.insert105.reass = or disjoint i48 %.sroa.10.0.insert.shift112, %invariant.op128 ; 5 uses
  %i.j = tail call noundef ptr @_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144) %0, i48 %.sroa.0102.0.insert.insert105.reass) ; 7 uses
  %.not74 = icmp eq ptr %i.j, null
  br i1 %.not74, label %.loopexit, label %.preheader117

.preheader117:                                    ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 36
  br label %.preheader116

.preheader116:                                    ; preds = %.preheader117, %bb.m
  %indvars.iv149 = phi i64 [ 0, %.preheader117 ], [ %indvars.iv.next150, %bb.m ] ; 3 uses
  %i.m = trunc nuw nsw i64 %indvars.iv149 to i48
  %.sroa.11.0.insert.shift = shl nuw nsw i48 %i.m, 32
  %i.n = shl nuw nsw i64 %indvars.iv149, 8
  br label %.preheader115

.preheader115:                                    ; preds = %.preheader116, %bb.l
  %indvars.iv145 = phi i64 [ 0, %.preheader116 ], [ %indvars.iv.next146, %bb.l ] ; 3 uses
  %i.o = trunc nuw nsw i64 %indvars.iv145 to i48
  %invariant.op = or disjoint i48 %.sroa.11.0.insert.shift, %i.o
  %i.p = add nuw nsw i64 %i.n, %indvars.iv145
  br label %_ZN8MapBlock14getNodeNoCheckEsss.exit

_ZN8MapBlock14getNodeNoCheckEsss.exit:            ; preds = %.preheader115, %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit.1
  %indvars.iv = phi i64 [ 0, %.preheader115 ], [ %indvars.iv.next, %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit.1 ] ; 3 uses
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !76
  %i.r = load i8, ptr %i.l, align 4, !tbaa !77, !range !78, !noundef !79
  %i.s = trunc nuw i8 %i.r to i1
  %i.t = shl nuw nsw i64 %indvars.iv, 4
  %i.u = add nuw nsw i64 %i.p, %i.t
  %i.v = select i1 %i.s, i64 0, i64 %i.u
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.v
  %.sroa.0.0.copyload.i = load i32, ptr %i.w, align 4 ; 2 uses
  %.sroa.4.0.extract.shift = lshr i32 %.sroa.0.0.copyload.i, 16
  %.sroa.4.0.extract.trunc = trunc i32 %.sroa.4.0.extract.shift to i8 ; 2 uses
  %i.x = and i32 %.sroa.0.0.copyload.i, 65535
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.y
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.z, align 1, !tbaa !31 ; 2 uses
  %i.aa = and i8 %.sroa.0.0.copyload.i.i, 16
  %.not78 = icmp eq i8 %i.aa, 0                   ; 2 uses
  %i.ab = lshr i8 %.sroa.4.0.extract.trunc, 4
  %i.ac = and i8 %.sroa.0.0.copyload.i.i, 15      ; 4 uses
  %i.ad = trunc nuw nsw i64 %indvars.iv to i48
  %.sroa.799.0.insert.shift = shl nuw nsw i48 %i.ad, 16
  %.sroa.097.0.insert.insert.reass = or disjoint i48 %.sroa.799.0.insert.shift, %invariant.op ; 4 uses
  br i1 %.not78, label %bb.b, label %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit

_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit: ; preds = %_ZN8MapBlock14getNodeNoCheckEsss.exit
  %i.ae = and i8 %.sroa.4.0.extract.trunc, 15
  %i.af = tail call noundef i8 @llvm.umax.i8(i8 %i.ac, i8 %i.ae)
  br label %bb.b

bb.b:                                             ; preds = %_ZN8MapBlock14getNodeNoCheckEsss.exit, %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit
  %i.ag = phi i8 [ %i.af, %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit ], [ %i.ac, %_ZN8MapBlock14getNodeNoCheckEsss.exit ] ; 2 uses
  %i.ah = icmp samesign ugt i8 %i.ag, 1
  br i1 %i.ah, label %bb.c, label %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit

bb.c:                                             ; preds = %bb.b
  %i.ai = zext nneg i8 %i.ag to i64
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %i.ai ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 4 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !33 ; 8 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !87
  %.not.i.i79 = icmp eq ptr %i.al, %i.an
  br i1 %.not.i.i79, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.j, ptr %i.al, align 8, !tbaa !89
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i48 %.sroa.097.0.insert.insert.reass, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 14
  store i48 %.sroa.0102.0.insert.insert105.reass, ptr %i.ap, align 2
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 20
  store i8 6, ptr %i.aq, align 4, !tbaa !90
  %i.ar = load ptr, ptr %i.ak, align 8, !tbaa !33
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store ptr %i.as, ptr %i.ak, align 8, !tbaa !33
  br label %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit

bb.e:                                             ; preds = %bb.c
  %i.at = load ptr, ptr %i.aj, align 8, !tbaa !91 ; 5 uses
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
  store ptr %i.j, ptr %i.bf, align 8, !tbaa !89
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store i48 %.sroa.097.0.insert.insert.reass, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 14
  store i48 %.sroa.0102.0.insert.insert105.reass, ptr %i.bh, align 2
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 20
  store i8 6, ptr %i.bi, align 4, !tbaa !90
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.at, %i.al
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i.i ], [ %i.be, %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i.i ], [ %i.at, %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !93, !alias.scope !252
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bj, %i.al
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.be, %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.bk, %.lr.ph.i.i.i.i.i.i ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 24
  %.not.i36.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i36.i.i.i, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIsEES8_RP8MapBlockRhEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i
  %i.bm = load ptr, ptr %i.am, align 8, !tbaa !87
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = sub i64 %i.bn, %i.av
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.bo) #22
  br label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIsEES8_RP8MapBlockRhEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIsEES8_RP8MapBlockRhEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i
  store ptr %i.be, ptr %i.aj, align 8, !tbaa !91
  store ptr %i.bl, ptr %i.ak, align 8, !tbaa !33
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %i.be, i64 %i.bc
  store ptr %i.bp, ptr %i.am, align 8, !tbaa !87
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
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !33 ; 8 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 16 ; 3 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !87
  %.not.i.i79.1 = icmp eq ptr %i.bw, %i.by
  br i1 %.not.i.i79.1, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.j, ptr %i.bw, align 8, !tbaa !89
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store i48 %.sroa.097.0.insert.insert.reass, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 14
  store i48 %.sroa.0102.0.insert.insert105.reass, ptr %i.ca, align 2
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 20
  store i8 6, ptr %i.cb, align 4, !tbaa !90
  %i.cc = load ptr, ptr %i.bv, align 8, !tbaa !33
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  store ptr %i.cd, ptr %i.bv, align 8, !tbaa !33
  br label %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit.1

bb.j:                                             ; preds = %bb.h
  %i.ce = load ptr, ptr %i.bu, align 8, !tbaa !91 ; 5 uses
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
  store ptr %i.j, ptr %i.cq, align 8, !tbaa !89
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store i48 %.sroa.097.0.insert.insert.reass, ptr %i.cr, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 14
  store i48 %.sroa.0102.0.insert.insert105.reass, ptr %i.cs, align 2
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 20
  store i8 6, ptr %i.ct, align 4, !tbaa !90
  %.not10.i.i.i.i.i.i.1 = icmp eq ptr %i.ce, %i.bw
  br i1 %.not10.i.i.i.i.i.i.1, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i.1, label %.lr.ph.i.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.i.1:                             ; preds = %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.1, %.lr.ph.i.i.i.i.i.i.1
  %.012.i.i.i.i.i.i.1 = phi ptr [ %i.cv, %.lr.ph.i.i.i.i.i.i.1 ], [ %i.cp, %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.1 ] ; 2 uses
  %.0911.i.i.i.i.i.i.1 = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i.i.1 ], [ %i.ce, %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.1 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i.1, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i.1, i64 24, i1 false), !tbaa.struct !93, !alias.scope !252
  %i.cu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.1, i64 24 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.1, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.1 = icmp eq ptr %i.cu, %i.bw
  br i1 %.not.i.i.i.i.i.i.1, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i.1, label %.lr.ph.i.i.i.i.i.i.1, !llvm.loop !1

_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i.1: ; preds = %.lr.ph.i.i.i.i.i.i.1, %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.1
end_hunk_0
begin_hunk_1_@_ZN7voxalgo20blit_back_with_lightEP3MapP8MMVManipPSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS7_ESaISt4pairIKS7_S9_EEE:bb.a
  %i.id = extractelement <16 x i32> %i.gs, i64 9
  %i.ie = and i32 %i.id, 65535
  %i.if = zext nneg i32 %i.ie to i64
  %i.ig = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.if
  %.sroa.0.0.copyload.i.i.i.9 = load i8, ptr %i.ig, align 1, !tbaa !31
  %i.ih = extractelement <16 x i32> %i.gs, i64 10
  %i.ii = and i32 %i.ih, 65535
  %i.ij = zext nneg i32 %i.ii to i64
  %i.ik = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.ij
  %.sroa.0.0.copyload.i.i.i.10 = load i8, ptr %i.ik, align 1, !tbaa !31
  %i.il = extractelement <16 x i32> %i.gs, i64 11
  %i.im = and i32 %i.il, 65535
  %i.in = zext nneg i32 %i.im to i64
  %i.io = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.in
  %.sroa.0.0.copyload.i.i.i.11 = load i8, ptr %i.io, align 1, !tbaa !31
  %i.ip = extractelement <16 x i32> %i.gs, i64 12
  %i.iq = and i32 %i.ip, 65535
  %i.ir = zext nneg i32 %i.iq to i64
  %i.is = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.ir
  %.sroa.0.0.copyload.i.i.i.12 = load i8, ptr %i.is, align 1, !tbaa !31
  %i.it = extractelement <16 x i32> %i.gs, i64 13
  %i.iu = and i32 %i.it, 65535
  %i.iv = zext nneg i32 %i.iu to i64
  %i.iw = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.iv
  %.sroa.0.0.copyload.i.i.i.13 = load i8, ptr %i.iw, align 1, !tbaa !31
  %i.ix = extractelement <16 x i32> %i.gs, i64 14
  %i.iy = and i32 %i.ix, 65535
  %i.iz = zext nneg i32 %i.iy to i64
  %i.ja = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.iz
  %.sroa.0.0.copyload.i.i.i.14 = load i8, ptr %i.ja, align 1, !tbaa !31
  %i.jb = lshr <16 x i32> %i.gs, splat (i32 16)
  %i.jc = trunc <16 x i32> %i.jb to <16 x i8>
  %i.jd = extractelement <16 x i32> %i.gs, i64 15
  %i.je = and i32 %i.jd, 65535
  %i.jf = zext nneg i32 %i.je to i64
  %i.jg = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.jf
  %.sroa.0.0.copyload.i.i.i.15 = load i8, ptr %i.jg, align 1, !tbaa !31
  %i.jh = insertelement <16 x i8> poison, i8 %.sroa.0.0.copyload.i.i.i, i64 0
  %i.ji = insertelement <16 x i8> %i.jh, i8 %.sroa.0.0.copyload.i.i.i.1, i64 1
  %i.jj = insertelement <16 x i8> %i.ji, i8 %.sroa.0.0.copyload.i.i.i.2, i64 2
  %i.jk = insertelement <16 x i8> %i.jj, i8 %.sroa.0.0.copyload.i.i.i.3, i64 3
  %i.jl = insertelement <16 x i8> %i.jk, i8 %.sroa.0.0.copyload.i.i.i.4, i64 4
  %i.jm = insertelement <16 x i8> %i.jl, i8 %.sroa.0.0.copyload.i.i.i.5, i64 5
  %i.jn = insertelement <16 x i8> %i.jm, i8 %.sroa.0.0.copyload.i.i.i.6, i64 6
  %i.jo = insertelement <16 x i8> %i.jn, i8 %.sroa.0.0.copyload.i.i.i.7, i64 7
  %i.jp = insertelement <16 x i8> %i.jo, i8 %.sroa.0.0.copyload.i.i.i.8, i64 8
  %i.jq = insertelement <16 x i8> %i.jp, i8 %.sroa.0.0.copyload.i.i.i.9, i64 9
  %i.jr = insertelement <16 x i8> %i.jq, i8 %.sroa.0.0.copyload.i.i.i.10, i64 10
  %i.js = insertelement <16 x i8> %i.jr, i8 %.sroa.0.0.copyload.i.i.i.11, i64 11
  %i.jt = insertelement <16 x i8> %i.js, i8 %.sroa.0.0.copyload.i.i.i.12, i64 12
  %i.ju = insertelement <16 x i8> %i.jt, i8 %.sroa.0.0.copyload.i.i.i.13, i64 13
  %i.jv = insertelement <16 x i8> %i.ju, i8 %.sroa.0.0.copyload.i.i.i.14, i64 14
  %i.jw = insertelement <16 x i8> %i.jv, i8 %.sroa.0.0.copyload.i.i.i.15, i64 15 ; 2 uses
  %i.jx = and <16 x i8> %i.jw, splat (i8 16)
  %i.jy = icmp eq <16 x i8> %i.jx, zeroinitializer
  %i.jz = and <16 x i8> %i.jc, splat (i8 15)
  %i.ka = and <16 x i8> %i.jw, splat (i8 15)      ; 2 uses
  %i.kb = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %i.ka, <16 x i8> %i.jz)
  %i.kc = select <16 x i1> %i.jy, <16 x i8> %i.ka, <16 x i8> %i.kb
  %i.kd = icmp eq <16 x i8> %i.kc, splat (i8 15)
  %i.ke = zext <16 x i1> %i.kd to <16 x i8>
  store <16 x i8> %i.ke, ptr %i.gq, align 16, !tbaa !123
  %indvars.iv.next50.i = add nuw nsw i64 %indvars.iv49.i, 1 ; 2 uses
  %exitcond52.not.i = icmp eq i64 %indvars.iv.next50.i, 16
  br i1 %exitcond52.not.i, label %_ZN7voxalgo23is_sunlight_above_blockEP3MapN4core8vector3dIsEEPK14NodeDefManagerPA16_b.exit, label %.preheader40.i, !llvm.loop !6

_ZN7voxalgo23is_sunlight_above_blockEP3MapN4core8vector3dIsEEPK14NodeDefManagerPA16_b.exit.sink.split: ; preds = %.noexc233, %bb.j, %.preheader41.i.split.us
  %.sink = phi i8 [ %i.gk, %.preheader41.i.split.us ], [ %i.gp, %bb.j ], [ 0, %.noexc233 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 %.sink, i64 256, i1 false), !tbaa !123
  br label %_ZN7voxalgo23is_sunlight_above_blockEP3MapN4core8vector3dIsEEPK14NodeDefManagerPA16_b.exit

_ZN7voxalgo23is_sunlight_above_blockEP3MapN4core8vector3dIsEEPK14NodeDefManagerPA16_b.exit: ; preds = %.preheader40.i, %_ZN7voxalgo23is_sunlight_above_blockEP3MapN4core8vector3dIsEEPK14NodeDefManagerPA16_b.exit.sink.split
  %i.kf = shl i16 %.0121373, 4
  %.sroa.7.0.insert.ext = zext i16 %i.kf to i32
  %i.kg = load i32, ptr %i.e, align 4, !tbaa !126 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  store i32 127, ptr %3, align 4
  %i.kh = load i16, ptr %i.er, align 8, !tbaa !130
  %i.ki = load i16, ptr %i.es, align 4, !tbaa !131
  %i.kj = sext i16 %i.ki to i32
  %i.kk = load i32, ptr %i.g, align 8, !tbaa !132
  %i.kl = sext i16 %i.kh to i32
  %i.km = load i16, ptr %i.et, align 2, !tbaa !133
  %i.kn = sext i16 %i.km to i32
  %invariant.op.i = sub nsw i32 %i.kl, %i.kn
  %i.ko = load i16, ptr %i.d, align 8, !tbaa !134
  %i.kp = sext i16 %i.ko to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.split354.us, %_ZN7voxalgo23is_sunlight_above_blockEP3MapN4core8vector3dIsEEPK14NodeDefManagerPA16_b.exit
  %indvars.iv57.i = phi i64 [ 0, %_ZN7voxalgo23is_sunlight_above_blockEP3MapN4core8vector3dIsEEPK14NodeDefManagerPA16_b.exit ], [ %indvars.iv.next58.i, %.split354.us ] ; 3 uses
  %i.kq = trunc nuw nsw i64 %indvars.iv57.i to i32
  %.sroa.7.0.insert.shift333 = add i32 %i.kq, %.sroa.7.0.insert.ext
  %.sroa.2.0.extract.shift63.i = shl i32 %.sroa.7.0.insert.shift333, 16
  %i.kr = ashr exact i32 %.sroa.2.0.extract.shift63.i, 16
  %i.ks = sub nsw i32 %i.kr, %i.kj
  %i.kt = mul nsw i32 %i.ks, %i.kk                ; 2 uses
  %.reass.i = add i32 %invariant.op.i, %i.kt
  %i.ku = mul i32 %.reass.i, %i.kg                ; 2 uses
  %i.kv = mul i32 %i.kt, %i.kg                    ; 2 uses
  %i.kw = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %indvars.iv57.i
  %.not49.i = icmp slt i32 %i.ku, %i.kv
  br i1 %.not49.i, label %.split354.us, label %.preheader.i.split

.preheader.i.split:                               ; preds = %.preheader.i
  %i.kx = load ptr, ptr %i.eu, align 8, !tbaa !135
  br label %.lr.ph.i

.split354.us:                                     ; preds = %._crit_edge.i.loopexit, %.preheader.i
  %indvars.iv.next58.i = add nuw nsw i64 %indvars.iv57.i, 1 ; 2 uses
  %exitcond60.not.i = icmp eq i64 %indvars.iv.next58.i, 16
  br i1 %exitcond60.not.i, label %bb.p, label %.preheader.i, !llvm.loop !3

.lr.ph.i:                                         ; preds = %._crit_edge.i.loopexit, %.preheader.i.split
  %indvars.iv.i234 = phi i64 [ 0, %.preheader.i.split ], [ %indvars.iv.next.i238, %._crit_edge.i.loopexit ] ; 3 uses
  %i.ky = trunc nuw nsw i64 %indvars.iv.i234 to i32
  %i.kz = add i32 %i.ky, %.sroa.0325.0.insert.ext
  %sext.i = shl i32 %i.kz, 16
  %i.la = ashr exact i32 %sext.i, 16
  %i.lb = sub nsw i32 %i.la, %i.kp                ; 2 uses
  %i.lc = add nsw i32 %i.lb, %i.kv
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kw, i64 %indvars.iv.i234 ; 2 uses
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !123, !range !78, !noundef !79
  %i.lf = add nsw i32 %i.lb, %i.ku
  br label %bb.k

._crit_edge.i.loopexit:                           ; preds = %_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit47.i
  store i8 %.2.i, ptr %i.ld, align 1, !tbaa !123
  %indvars.iv.next.i238 = add nuw nsw i64 %indvars.iv.i234, 1 ; 2 uses
  %exitcond.not.i239 = icmp eq i64 %indvars.iv.next.i238, 16
  br i1 %exitcond.not.i239, label %.split354.us, label %.lr.ph.i, !llvm.loop !4

bb.k:                                             ; preds = %_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit47.i, %.lr.ph.i
  %.04151.i = phi i32 [ %i.lf, %.lr.ph.i ], [ %i.lw, %_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit47.i ] ; 2 uses
  %.04250.i = phi i8 [ %i.le, %.lr.ph.i ], [ %.2.i, %_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit47.i ] ; 3 uses
  %i.lg = sext i32 %.04151.i to i64               ; 2 uses
  %i.lh = getelementptr inbounds i8, ptr %i.kx, i64 %i.lg
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !31
  %i.lj = and i8 %i.li, 1
  %.not44.i = icmp eq i8 %i.lj, 0
  br i1 %.not44.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.lk = load ptr, ptr %i.ev, align 8, !tbaa !136
  %i.ll = getelementptr inbounds [4 x i8], ptr %i.lk, i64 %i.lg
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.040.i = phi ptr [ %i.ll, %bb.l ], [ %3, %bb.k ] ; 2 uses
  %i.lm = load i16, ptr %.040.i, align 4, !tbaa !122 ; 2 uses
  %i.ln = icmp eq i16 %i.lm, 127
  br i1 %i.ln, label %_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit47.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.lo = zext i16 %i.lm to i64
  %i.lp = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.lo
  %.sroa.0.0.copyload.i.i.i235 = load i8, ptr %i.lp, align 1, !tbaa !31 ; 2 uses
  %i.lq = trunc nuw i8 %.04250.i to i1
  %i.lr = and i8 %.sroa.0.0.copyload.i.i.i235, 64
  %.not45.i = icmp eq i8 %i.lr, 0
  %or.cond.i236 = and i1 %.not45.i, %i.lq
  %.1.i = select i1 %or.cond.i236, i8 0, i8 %.04250.i ; 3 uses
  %i.ls = and i8 %.sroa.0.0.copyload.i.i.i235, 16
  %.not.i.i = icmp eq i8 %i.ls, 0
  br i1 %.not.i.i, label %_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit47.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.lt = trunc nuw i8 %.1.i to i1
  %i.lu = select i1 %i.lt, i8 15, i8 0
  %i.lv = getelementptr inbounds nuw i8, ptr %.040.i, i64 2
  store i8 %i.lu, ptr %i.lv, align 2, !tbaa !137
  br label %_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit47.i

_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit47.i: ; preds = %bb.o, %bb.n, %bb.m
  %.2.i = phi i8 [ %.04250.i, %bb.m ], [ %.1.i, %bb.o ], [ %.1.i, %bb.n ] ; 2 uses
  %i.lw = sub nsw i32 %.04151.i, %i.kg            ; 2 uses
  %.not.i237 = icmp slt i32 %i.lw, %i.lc
  br i1 %.not.i237, label %._crit_edge.i.loopexit, label %bb.k, !llvm.loop !5

bb.p:                                             ; preds = %.split354.us
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  store i16 %.0120377, ptr %i.ex, align 8, !tbaa !92
  store i16 %i.ew, ptr %.sroa.4.0..sroa_idx, align 2, !tbaa !92
  store i16 %.0121373, ptr %.sroa.5324.0..sroa_idx, align 4, !tbaa !92
  %.promoted.pre = load ptr, ptr %i.ey, align 8, !tbaa !143
  %.promoted360.pre = load ptr, ptr %i.ez, align 8, !tbaa !148
  %.promoted366.pre = load ptr, ptr %6, align 8
  br label %.preheader341

.preheader347:                                    ; preds = %bb.s
  %i.lx = icmp eq ptr %i.nb, %i.nd
  br i1 %i.lx, label %._crit_edge, label %.lr.ph

.preheader341:                                    ; preds = %bb.p, %bb.s
  %.promoted366 = phi ptr [ %.promoted366.pre, %bb.p ], [ %i.nb, %bb.s ]
  %.promoted360 = phi ptr [ %.promoted360.pre, %bb.p ], [ %i.nc, %bb.s ]
  %.promoted = phi ptr [ %.promoted.pre, %bb.p ], [ %i.nd, %bb.s ]
  %indvars.iv429 = phi i64 [ 0, %bb.p ], [ %indvars.iv.next430, %bb.s ] ; 3 uses
  %i.ly = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %indvars.iv429
  %i.lz = trunc nuw nsw i64 %indvars.iv429 to i32
  %.sroa.6318.0.insert.shift = shl nuw nsw i32 %i.lz, 16 ; 2 uses
  br label %bb.t

bb.q:                                             ; preds = %bb.i, %bb.g
  %i.ma = landingpad { ptr, i32 }
          cleanup
  br label %.body278thread-pre-split

bb.r:                                             ; preds = %.critedge.i, %bb.z, %.lr.ph
  %i.mb = landingpad { ptr, i32 }
          cleanup
  br label %.body278thread-pre-split

bb.s:                                             ; preds = %_ZNSt6vectorIN7voxalgo23SunlightPropagationUnitESaIS1_EE12emplace_backIJN4core8vector2dIsEERbEEERS1_DpOT_.exit
  store ptr %i.nd, ptr %i.ey, align 8
  store ptr %i.nc, ptr %i.ez, align 8
  store ptr %i.nb, ptr %6, align 8
  %indvars.iv.next430 = add nuw nsw i64 %indvars.iv429, 1 ; 2 uses
  %exitcond432.not = icmp eq i64 %indvars.iv.next430, 16
  br i1 %exitcond432.not, label %.preheader347, label %.preheader341, !llvm.loop !266

bb.t:                                             ; preds = %.preheader341, %_ZNSt6vectorIN7voxalgo23SunlightPropagationUnitESaIS1_EE12emplace_backIJN4core8vector2dIsEERbEEERS1_DpOT_.exit
  %indvars.iv = phi i64 [ 0, %.preheader341 ], [ %indvars.iv.next, %_ZNSt6vectorIN7voxalgo23SunlightPropagationUnitESaIS1_EE12emplace_backIJN4core8vector2dIsEERbEEERS1_DpOT_.exit ] ; 4 uses
  %i.mc = phi ptr [ %.promoted, %.preheader341 ], [ %i.nd, %_ZNSt6vectorIN7voxalgo23SunlightPropagationUnitESaIS1_EE12emplace_backIJN4core8vector2dIsEERbEEERS1_DpOT_.exit ] ; 7 uses
  %i.md = phi ptr [ %.promoted360, %.preheader341 ], [ %i.nc, %_ZNSt6vectorIN7voxalgo23SunlightPropagationUnitESaIS1_EE12emplace_backIJN4core8vector2dIsEERbEEERS1_DpOT_.exit ] ; 4 uses
  %i.me = phi ptr [ %.promoted366, %.preheader341 ], [ %i.nb, %_ZNSt6vectorIN7voxalgo23SunlightPropagationUnitESaIS1_EE12emplace_backIJN4core8vector2dIsEERbEEERS1_DpOT_.exit ] ; 8 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.ly, i64 %indvars.iv ; 2 uses
  %.not.i240 = icmp eq ptr %i.mc, %i.md
  br i1 %.not.i240, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.mg = trunc nuw nsw i64 %indvars.iv to i32
  %.sroa.0314.0.insert.insert = or disjoint i32 %.sroa.6318.0.insert.shift, %i.mg
  %i.mh = load i8, ptr %i.mf, align 1, !tbaa !123, !range !78, !noundef !79
  store i32 %.sroa.0314.0.insert.insert, ptr %i.mc, align 2
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mc, i64 4
  store i8 %i.mh, ptr %i.mi, align 2, !tbaa !150
  br label %_ZNSt6vectorIN7voxalgo23SunlightPropagationUnitESaIS1_EE12emplace_backIJN4core8vector2dIsEERbEEERS1_DpOT_.exit

bb.v:                                             ; preds = %bb.t
  %i.mj = ptrtoint ptr %i.mc to i64
  %i.mk = ptrtoint ptr %i.me to i64
  %i.ml = sub i64 %i.mj, %i.mk                    ; 4 uses
  %i.mm = icmp eq i64 %i.ml, 9223372036854775806
  br i1 %i.mm, label %bb.w, label %_ZNKSt6vectorIN7voxalgo23SunlightPropagationUnitESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.w:                                             ; preds = %bb.v
  store ptr %i.md, ptr %i.ez, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #20
          to label %.noexc249 unwind label %.loopexit.split-lp343

.noexc249:                                        ; preds = %bb.w
  unreachable

_ZNKSt6vectorIN7voxalgo23SunlightPropagationUnitESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.v
  %i.mn = sdiv exact i64 %i.ml, 6                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.mn, i64 1)
  %i.mo = add nsw i64 %.sroa.speculated.i.i.i, %i.mn ; 2 uses
  %i.mp = icmp ult i64 %i.mo, %i.mn
  %i.mq = tail call i64 @llvm.umin.i64(i64 %i.mo, i64 1537228672809129301)
  %i.mr = select i1 %i.mp, i64 1537228672809129301, i64 %i.mq ; 3 uses
  %.not.i.i.i242 = icmp ne i64 %i.mr, 0
  tail call void @llvm.assume(i1 %.not.i.i.i242)
  %i.ms = mul nuw nsw i64 %i.mr, 6
  %i.mt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ms) #21
          to label %.noexc250 unwind label %.loopexit342 ; 5 uses

.noexc250:                                        ; preds = %_ZNKSt6vectorIN7voxalgo23SunlightPropagationUnitESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 %i.ml ; 2 uses
  %i.mv = trunc nuw nsw i64 %indvars.iv to i32
  %.sroa.0314.0.insert.insert317 = or disjoint i32 %.sroa.6318.0.insert.shift, %i.mv
  %i.mw = load i8, ptr %i.mf, align 1, !tbaa !123, !range !78, !noundef !79
  store i32 %.sroa.0314.0.insert.insert317, ptr %i.mu, align 2
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mu, i64 4
  store i8 %i.mw, ptr %i.mx, align 2, !tbaa !150
  %.not10.i.i.i.i.i244 = icmp eq ptr %i.me, %i.mc
  br i1 %.not10.i.i.i.i.i244, label %_ZNSt6vectorIN7voxalgo23SunlightPropagationUnitESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i245

.lr.ph.i.i.i.i.i245:                              ; preds = %.noexc250, %.lr.ph.i.i.i.i.i245
  %.012.i.i.i.i.i246 = phi ptr [ %i.mz, %.lr.ph.i.i.i.i.i245 ], [ %i.mt, %.noexc250 ] ; 2 uses
  %.0911.i.i.i.i.i247 = phi ptr [ %i.my, %.lr.ph.i.i.i.i.i245 ], [ %i.me, %.noexc250 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.012.i.i.i.i.i246, ptr noundef nonnull align 2 dereferenceable(6) %.0911.i.i.i.i.i247, i64 6, i1 false), !tbaa.struct !146, !alias.scope !288
  %i.my = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i247, i64 6 ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i246, i64 6 ; 2 uses
  %.not.i.i.i.i.i248 = icmp eq ptr %i.my, %i.mc
  br i1 %.not.i.i.i.i.i248, label %_ZNSt6vectorIN7voxalgo23SunlightPropagationUnitESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i245, !llvm.loop !7

_ZNSt6vectorIN7voxalgo23SunlightPropagationUnitESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i245, %.noexc250
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.mt, %.noexc250 ], [ %i.mz, %.lr.ph.i.i.i.i.i245 ]
  %.not.i34.i.i = icmp eq ptr %i.me, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorIN7voxalgo23SunlightPropagationUnitESaIS1_EE17_M_realloc_insertIJN4core8vector2dIsEERbEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIN7voxalgo23SunlightPropagationUnitESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.me, i64 noundef %i.ml) #22
  br label %_ZNSt6vectorIN7voxalgo23SunlightPropagationUnitESaIS1_EE17_M_realloc_insertIJN4core8vector2dIsEERbEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN7voxalgo23SunlightPropagationUnitESaIS1_EE17_M_realloc_insertIJN4core8vector2dIsEERbEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.x, %_ZNSt6vectorIN7voxalgo23SunlightPropagationUnitESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  %i.na = getelementptr inbounds nuw [6 x i8], ptr %i.mt, i64 %i.mr
  br label %_ZNSt6vectorIN7voxalgo23SunlightPropagationUnitESaIS1_EE12emplace_backIJN4core8vector2dIsEERbEEERS1_DpOT_.exit

_ZNSt6vectorIN7voxalgo23SunlightPropagationUnitESaIS1_EE12emplace_backIJN4core8vector2dIsEERbEEERS1_DpOT_.exit: ; preds = %_ZNSt6vectorIN7voxalgo23SunlightPropagationUnitESaIS1_EE17_M_realloc_insertIJN4core8vector2dIsEERbEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.u
  %i.nb = phi ptr [ %i.mt, %_ZNSt6vectorIN7voxalgo23SunlightPropagationUnitESaIS1_EE17_M_realloc_insertIJN4core8vector2dIsEERbEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.me, %bb.u ] ; 5 uses
  %i.nc = phi ptr [ %i.na, %_ZNSt6vectorIN7voxalgo23SunlightPropagationUnitESaIS1_EE17_M_realloc_insertIJN4core8vector2dIsEERbEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.md, %bb.u ] ; 3 uses
  %.0.lcssa.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorIN7voxalgo23SunlightPropagationUnitESaIS1_EE17_M_realloc_insertIJN4core8vector2dIsEERbEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.mc, %bb.u ]
  %i.nd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn, i64 6 ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %bb.s, label %bb.t, !llvm.loop !270

.loopexit342:                                     ; preds = %_ZNKSt6vectorIN7voxalgo23SunlightPropagationUnitESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit344 = landingpad { ptr, i32 }
          cleanup
  store ptr %i.md, ptr %i.ez, align 8
  br label %.body278

.loopexit.split-lp343:                            ; preds = %bb.w
  %lpad.loopexit.split-lp345 = landingpad { ptr, i32 }
          cleanup
  br label %.body278

.lr.ph:                                           ; preds = %.preheader347, %bb.ar
  %i.ne = invoke noundef zeroext i1 @_ZN7voxalgo24propagate_block_sunlightEP3MapPK14NodeDefManagerPNS_23SunlightPropagationDataEPNS_10LightQueueES8_(ptr noundef nonnull %0, ptr noundef %i.c, ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %5)
          to label %bb.y unwind label %bb.r

bb.y:                                             ; preds = %.lr.ph
  br i1 %i.ne, label %bb.z, label %bb.ar

bb.z:                                             ; preds = %bb.y
  %.sroa.043.0.copyload = load i48, ptr %i.ex, align 8 ; 4 uses
  %i.nf = trunc i48 %.sroa.043.0.copyload to i16  ; 4 uses
  %i.ng = lshr i48 %.sroa.043.0.copyload, 16
  %i.nh = trunc i48 %i.ng to i16                  ; 4 uses
  %i.ni = lshr i48 %.sroa.043.0.copyload, 32
  %i.nj = trunc nuw i48 %i.ni to i16              ; 2 uses
  %i.nk = invoke noundef ptr @_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144) %0, i48 %.sroa.043.0.copyload)
          to label %bb.aa unwind label %bb.r

bb.aa:                                            ; preds = %bb.z
  %i.nl = load ptr, ptr %i.fa, align 8, !tbaa !94 ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.nl, null
  br i1 %.not12.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.aa, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i ], [ %i.nl, %bb.aa ] ; 7 uses
  %.0813.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i ], [ %i.fb, %bb.aa ]
  %i.nm = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 32
  %i.nn = load i16, ptr %i.nm, align 2, !tbaa !19 ; 2 uses
  %i.no = icmp slt i16 %i.nn, %i.nf
  br i1 %i.no, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.i.i.i
  %i.np = icmp eq i16 %i.nn, %i.nf
  br i1 %i.np, label %bb.ac, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.nq = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 34
  %i.nr = load i16, ptr %i.nq, align 2, !tbaa !20 ; 2 uses
  %i.ns = icmp slt i16 %i.nr, %i.nh
  br i1 %i.ns, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.nt = icmp eq i16 %i.nr, %i.nh
  br i1 %i.nt, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i: ; preds = %bb.ad
  %i.nu = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 36
  %i.nv = load i16, ptr %i.nu, align 2, !tbaa !21
  %i.nw = icmp slt i16 %i.nv, %i.nj
  br i1 %i.nw, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i, %bb.ac, %.lr.ph.i.i.i.i
  br label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i, %bb.ad, %bb.ab
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i ], [ 16, %bb.ad ], [ 16, %bb.ab ], [ 16, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0813.i.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i ], [ %.014.i.i.i.i, %bb.ad ], [ %.014.i.i.i.i, %bb.ab ], [ %.014.i.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i ] ; 12 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.nx, align 8, !tbaa !95 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !2

_ZNSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i
  %i.ny = icmp eq ptr %.19.i.i.i.i, %i.fb
  br i1 %i.ny, label %.critedge.i, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i
  %i.nz = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.oa = load i16, ptr %i.nz, align 2, !tbaa !19 ; 2 uses
  %i.ob = icmp sgt i16 %i.oa, %i.nf
  br i1 %i.ob, label %.critedge.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.oc = icmp eq i16 %i.oa, %i.nf
  br i1 %i.oc, label %bb.ag, label %bb.aq

bb.ag:                                            ; preds = %bb.af
  %i.od = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 34
  %i.oe = load i16, ptr %i.od, align 2, !tbaa !20 ; 2 uses
  %i.of = icmp sgt i16 %i.oe, %i.nh
  br i1 %i.of, label %.critedge.i, label %bb.ah

end_hunk_1
begin_hunk_2_@_ZN7voxalgo20blit_back_with_lightEP3MapP8MMVManipPSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS7_ESaISt4pairIKS7_S9_EEE:bb.a
_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.1: ; preds = %bb.bm
  %i.vh = sdiv exact i64 %i.vf, 24                ; 3 uses
  %.sroa.speculated.i.i.i.i.1 = tail call i64 @llvm.umax.i64(i64 %i.vh, i64 1)
  %i.vi = add nsw i64 %.sroa.speculated.i.i.i.i.1, %i.vh ; 2 uses
  %i.vj = icmp ult i64 %i.vi, %i.vh
  %i.vk = tail call i64 @llvm.umin.i64(i64 %i.vi, i64 384307168202282325)
  %i.vl = select i1 %i.vj, i64 384307168202282325, i64 %i.vk ; 3 uses
  %.not.i.i.i.i269.1 = icmp ne i64 %i.vl, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i269.1)
  %i.vm = mul nuw nsw i64 %i.vl, 24
  %i.vn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vm) #21
          to label %.noexc271.1 unwind label %.loopexit337 ; 5 uses

.noexc271.1:                                      ; preds = %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.1
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vn, i64 %i.vf ; 4 uses
  store ptr %i.pt, ptr %i.vo, align 8, !tbaa !89
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vo, i64 8
  store i48 %.sroa.0287.0.insert.insert291.reass, ptr %i.vp, align 8
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vo, i64 14
  store i48 %.sroa.0302.0.insert.insert305.reass, ptr %i.vq, align 2
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vo, i64 20
  store i8 6, ptr %i.vr, align 4, !tbaa !90
  %.not10.i.i.i.i.i.i.1 = icmp eq ptr %i.vc, %i.uu
  br i1 %.not10.i.i.i.i.i.i.1, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i.1, label %.lr.ph.i.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.i.1:                             ; preds = %.noexc271.1, %.lr.ph.i.i.i.i.i.i.1
  %.012.i.i.i.i.i.i.1 = phi ptr [ %i.vt, %.lr.ph.i.i.i.i.i.i.1 ], [ %i.vn, %.noexc271.1 ] ; 2 uses
  %.0911.i.i.i.i.i.i.1 = phi ptr [ %i.vs, %.lr.ph.i.i.i.i.i.i.1 ], [ %i.vc, %.noexc271.1 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i.1, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i.1, i64 24, i1 false), !tbaa.struct !93, !alias.scope !289
  %i.vs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.1, i64 24 ; 2 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.1, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.1 = icmp eq ptr %i.vs, %i.uu
  br i1 %.not.i.i.i.i.i.i.1, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i.1, label %.lr.ph.i.i.i.i.i.i.1, !llvm.loop !1

_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i.1: ; preds = %.lr.ph.i.i.i.i.i.i.1, %.noexc271.1
  %.0.lcssa.i.i.i.i.i.i.1 = phi ptr [ %i.vn, %.noexc271.1 ], [ %i.vt, %.lr.ph.i.i.i.i.i.i.1 ]
  %i.vu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.1, i64 24
  %.not.i36.i.i.i.1 = icmp eq ptr %i.vc, null
  br i1 %.not.i36.i.i.i.1, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIsEES8_RP8MapBlockRhEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.1, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i.1
  %i.vv = load ptr, ptr %i.uv, align 8, !tbaa !87
  %i.vw = ptrtoint ptr %i.vv to i64
  %i.vx = sub i64 %i.vw, %i.ve
  tail call void @_ZdlPvm(ptr noundef nonnull %i.vc, i64 noundef %i.vx) #22
  br label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIsEES8_RP8MapBlockRhEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.1

_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIsEES8_RP8MapBlockRhEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.1: ; preds = %bb.bn, %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i.1
  store ptr %i.vn, ptr %i.us, align 8, !tbaa !91
  store ptr %i.vu, ptr %i.ut, align 8, !tbaa !33
  %i.vy = getelementptr inbounds nuw [24 x i8], ptr %i.vn, i64 %i.vl
  store ptr %i.vy, ptr %i.uv, align 8, !tbaa !87
  br label %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit.1

_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit.1: ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIsEES8_RP8MapBlockRhEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.1, %bb.bl, %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit
  %i.vz = add i16 %storemerge137380, 1            ; 2 uses
  %i.wa = load i16, ptr %i.qf, align 8, !tbaa !159 ; 2 uses
  %.not138 = icmp sgt i16 %i.vz, %i.wa
  br i1 %.not138, label %._crit_edge383.loopexit, label %bb.ay, !llvm.loop !276

._crit_edge383.loopexit:                          ; preds = %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit.1
  %.pre = load i16, ptr %i.qb, align 2, !tbaa !158
  br label %._crit_edge383

._crit_edge383:                                   ; preds = %._crit_edge383.loopexit, %.lr.ph387.split
  %i.wb = phi i16 [ %.pre, %._crit_edge383.loopexit ], [ %i.qt, %.lr.ph387.split ] ; 4 uses
  %i.wc = phi i16 [ %i.wa, %._crit_edge383.loopexit ], [ %i.qu, %.lr.ph387.split ]
  %i.wd = add i16 %storemerge135385, 1            ; 2 uses
  %.not136 = icmp sgt i16 %i.wd, %i.wb
  br i1 %.not136, label %._crit_edge388.loopexit408, label %.lr.ph387.split, !llvm.loop !277

._crit_edge388.loopexit408:                       ; preds = %._crit_edge383
  %.pre441 = load i16, ptr %i.qc, align 2, !tbaa !157
  br label %._crit_edge388

._crit_edge388:                                   ; preds = %.lr.ph387, %._crit_edge388.loopexit408, %.lr.ph392.split
  %i.we = phi i16 [ %.pre441, %._crit_edge388.loopexit408 ], [ %i.qj, %.lr.ph392.split ], [ %i.qj, %.lr.ph387 ] ; 2 uses
  %i.wf = phi i16 [ %i.wb, %._crit_edge388.loopexit408 ], [ %i.qk, %.lr.ph392.split ], [ %i.qk, %.lr.ph387 ]
  %i.wg = phi i16 [ %i.wb, %._crit_edge388.loopexit408 ], [ %i.ql, %.lr.ph392.split ], [ %i.ql, %.lr.ph387 ]
  %i.wh = add i16 %storemerge133390, 1            ; 2 uses
  %.not134 = icmp sgt i16 %i.wh, %i.we
  br i1 %.not134, label %._crit_edge393, label %.lr.ph392.split, !llvm.loop !278

._crit_edge393:                                   ; preds = %._crit_edge388, %.lr.ph392, %bb.ax
  %.0119.add = add nuw nsw i64 %.0119.idx394, 24  ; 2 uses
  %.not132 = icmp eq i64 %.0119.add, 144
  br i1 %.not132, label %.loopexit338, label %bb.ax

.loopexit338:                                     ; preds = %._crit_edge393, %bb.at
  %i.wi = add nsw i16 %storemerge129397, 1
  %exitcond435 = icmp eq i16 %storemerge129397, %.sroa.9.0.extract.trunc
  br i1 %exitcond435, label %._crit_edge399, label %bb.as, !llvm.loop !279

._crit_edge399:                                   ; preds = %.loopexit338
  %i.wj = add nsw i16 %storemerge127402, 1
  %exitcond436 = icmp eq i16 %storemerge127402, %.sroa.7.0.extract.trunc
  br i1 %exitcond436, label %._crit_edge403, label %.preheader, !llvm.loop !280

._crit_edge403:                                   ; preds = %._crit_edge399
  %i.wk = add nsw i16 %storemerge405, 1
  %exitcond437 = icmp eq i16 %storemerge405, %.sroa.071.0.extract.trunc
  br i1 %exitcond437, label %._crit_edge406.split, label %.preheader339, !llvm.loop !281

._crit_edge406.split:                             ; preds = %._crit_edge403, %_ZN7voxalgo10LightQueueC2Em.exit229, %.preheader339.lr.ph
  %i.wl = phi ptr [ null, %_ZN7voxalgo10LightQueueC2Em.exit229 ], [ %i.fe, %.preheader339.lr.ph ], [ %i.fe, %._crit_edge403 ] ; 3 uses
  invoke void @_ZNK8MMVManip11blitBackAllEPSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS3_ESaISt4pairIKS3_S5_EEEb(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef %2, i1 noundef zeroext true)
          to label %bb.bo unwind label %bb.au

bb.bo:                                            ; preds = %._crit_edge406.split
  invoke void @_ZN7voxalgo24finish_bulk_light_updateEP3MapN4core8vector3dIsEES4_PNS_10LightQueueES6_PSt3mapIS4_P8MapBlockSt4lessIS4_ESaISt4pairIKS4_S9_EEE(ptr noundef nonnull %0, i48 %.sroa.0.0.insert.insert.i.i, i48 %.sroa.0.0.insert.insert.i.i165, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %2)
          to label %bb.bp unwind label %bb.au

bb.bp:                                            ; preds = %bb.bo
  %.not.i.i.i.i272 = icmp eq ptr %i.wl, null
  br i1 %.not.i.i.i.i272, label %_ZN7voxalgo23SunlightPropagationDataD2Ev.exit, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.wm = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.wn = load ptr, ptr %i.wm, align 8, !tbaa !148
  %i.wo = ptrtoint ptr %i.wn to i64
  %i.wp = ptrtoint ptr %i.wl to i64
  %i.wq = sub i64 %i.wo, %i.wp
  tail call void @_ZdlPvm(ptr noundef nonnull %i.wl, i64 noundef %i.wq) #22
  br label %_ZN7voxalgo23SunlightPropagationDataD2Ev.exit

_ZN7voxalgo23SunlightPropagationDataD2Ev.exit:    ; preds = %bb.bp, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  %i.wr = getelementptr inbounds nuw i8, ptr %5, i64 392
  call void @_ZNSt5arrayISt6vectorIN7voxalgo13ChangingLightESaIS2_EELm16EED2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(385) %i.wr) #5
  call void @_ZNSt5arrayISt6vectorIN7voxalgo13ChangingLightESaIS2_EELm16EED2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(385) %5) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  %i.ws = getelementptr inbounds nuw i8, ptr %4, i64 392
  call void @_ZNSt5arrayISt6vectorIN7voxalgo13ChangingLightESaIS2_EELm16EED2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(385) %i.ws) #5
  call void @_ZNSt5arrayISt6vectorIN7voxalgo13ChangingLightESaIS2_EELm16EED2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(385) %4) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  br label %_ZNK9VoxelArea14hasEmptyExtentEv.exit.thread

_ZNK9VoxelArea14hasEmptyExtentEv.exit.thread:     ; preds = %bb.a, %_ZNK9VoxelArea14hasEmptyExtentEv.exit, %_ZN7voxalgo23SunlightPropagationDataD2Ev.exit
  ret void

.body278thread-pre-split:                         ; preds = %bb.q, %bb.r, %_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P8MapBlockESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE10_Auto_nodeD2Ev.exit.i, %bb.av, %bb.au, %.loopexit.split-lp, %.loopexit337
  %.pn148.pn.pn.ph = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit337 ], [ %i.pv, %bb.av ], [ %i.pu, %bb.au ], [ %i.mb, %bb.r ], [ %i.ma, %bb.q ], [ %i.pk, %_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P8MapBlockESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE10_Auto_nodeD2Ev.exit.i ]
  %.pr = load ptr, ptr %6, align 8, !tbaa !144
  br label %.body278

.body278:                                         ; preds = %.body278thread-pre-split, %.loopexit342, %.loopexit.split-lp343
  %i.wt = phi ptr [ %.pr, %.body278thread-pre-split ], [ %i.me, %.loopexit342 ], [ %i.me, %.loopexit.split-lp343 ] ; 3 uses
  %.pn148.pn.pn = phi { ptr, i32 } [ %.pn148.pn.pn.ph, %.body278thread-pre-split ], [ %lpad.loopexit344, %.loopexit342 ], [ %lpad.loopexit.split-lp345, %.loopexit.split-lp343 ]
  %.not.i.i.i.i273 = icmp eq ptr %i.wt, null
  br i1 %.not.i.i.i.i273, label %_ZN7voxalgo23SunlightPropagationDataD2Ev.exit274, label %bb.br

bb.br:                                            ; preds = %.body278
  %i.wu = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.wv = load ptr, ptr %i.wu, align 8, !tbaa !148
  %i.ww = ptrtoint ptr %i.wv to i64
  %i.wx = ptrtoint ptr %i.wt to i64
  %i.wy = sub i64 %i.ww, %i.wx
  tail call void @_ZdlPvm(ptr noundef nonnull %i.wt, i64 noundef %i.wy) #22
  br label %_ZN7voxalgo23SunlightPropagationDataD2Ev.exit274

_ZN7voxalgo23SunlightPropagationDataD2Ev.exit274: ; preds = %bb.br, %.body278
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  %i.wz = getelementptr inbounds nuw i8, ptr %5, i64 392
  call void @_ZNSt5arrayISt6vectorIN7voxalgo13ChangingLightESaIS2_EELm16EED2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(385) %i.wz) #5
  br label %.loopexit336

.loopexit336:                                     ; preds = %.loopexit.i216, %_ZN7voxalgo23SunlightPropagationDataD2Ev.exit274, %.body206.thread
  %.pn148.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn148.pn.pn, %_ZN7voxalgo23SunlightPropagationDataD2Ev.exit274 ], [ %lpad.loopexit.i196, %.body206.thread ], [ %lpad.loopexit.i217, %.loopexit.i216 ]
  call void @_ZNSt5arrayISt6vectorIN7voxalgo13ChangingLightESaIS2_EELm16EED2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(385) %5) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  %i.xa = getelementptr inbounds nuw i8, ptr %4, i64 392
  call void @_ZNSt5arrayISt6vectorIN7voxalgo13ChangingLightESaIS2_EELm16EED2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(385) %i.xa) #5
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.i174, %.loopexit336, %.body.thread
  %.pn148.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn148.pn.pn.pn.pn, %.loopexit336 ], [ %lpad.loopexit.i, %.body.thread ], [ %lpad.loopexit.i175, %.loopexit.i174 ]
  call void @_ZNSt5arrayISt6vectorIN7voxalgo13ChangingLightESaIS2_EELm16EED2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(385) %4) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  resume { ptr, i32 } %.pn148.pn.pn.pn.pn.pn
}

declare void @_ZNK8MMVManip11blitBackAllEPSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS3_ESaISt4pairIKS3_S5_EEEb(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7voxalgo18fill_with_sunlightEP8MapBlockPK14NodeDefManagerPA16_b(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 66 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.c
  %indvars.iv43 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next44, %bb.c ] ; 4 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv43
  %3 = shl nuw nsw i64 %indvars.iv43, 8
  %i.k = shl nuw nsw i64 %indvars.iv43, 10
  br label %bb.d

bb.b:                                             ; preds = %bb.c
  ret void

bb.c:                                             ; preds = %bb.e
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1 ; 2 uses
  %exitcond46.not = icmp eq i64 %indvars.iv.next44, 16
  br i1 %exitcond46.not, label %bb.b, label %.preheader, !llvm.loop !290

bb.d:                                             ; preds = %.preheader, %bb.e
  %indvars.iv40 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next41, %bb.e ] ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv40 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !123, !range !78, !noundef !79
  %i.n = add nuw nsw i64 %3, %indvars.iv40
  br label %_ZN8MapBlock14getNodeNoCheckEsss.exit

bb.e:                                             ; preds = %_ZN8MapBlock14setNodeNoCheckEsss7MapNode.exit
  store i8 %.2, ptr %i.l, align 1, !tbaa !123
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next41, 16
  br i1 %exitcond.not, label %bb.c, label %bb.d, !llvm.loop !291

_ZN8MapBlock14getNodeNoCheckEsss.exit:            ; preds = %bb.d, %_ZN8MapBlock14setNodeNoCheckEsss7MapNode.exit
  %indvars.iv = phi i64 [ 15, %bb.d ], [ %indvars.iv.next, %_ZN8MapBlock14setNodeNoCheckEsss7MapNode.exit ] ; 4 uses
  %.03036 = phi i8 [ %i.m, %bb.d ], [ %.2, %_ZN8MapBlock14setNodeNoCheckEsss7MapNode.exit ] ; 3 uses
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !76
  %i.p = load i8, ptr %i.b, align 4, !tbaa !77, !range !78, !noundef !79
  %i.q = trunc nuw i8 %i.p to i1
  %i.r = shl nuw nsw i64 %indvars.iv, 4
  %i.s = add nuw nsw i64 %i.n, %i.r
  %i.t = select i1 %i.q, i64 0, i64 %i.s
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.t
  %.sroa.0.0.copyload.i = load i32, ptr %i.u, align 4 ; 3 uses
  %i.v = and i32 %.sroa.0.0.copyload.i, 65535     ; 2 uses
  %i.w = icmp eq i32 %i.v, 127
  br i1 %i.w, label %_ZN8MapBlock14setNodeNoCheckEsss7MapNode.exit, label %_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit32

_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit32: ; preds = %_ZN8MapBlock14getNodeNoCheckEsss.exit
  %i.x = zext nneg i32 %i.v to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.x
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.y, align 1, !tbaa !31 ; 2 uses
  %i.z = trunc nuw i8 %.03036 to i1
  %i.aa = and i8 %.sroa.0.0.copyload.i.i, 64
  %.not = icmp eq i8 %i.aa, 0
  %or.cond = select i1 %i.z, i1 %.not, i1 false
  %.1 = select i1 %or.cond, i8 0, i8 %.03036      ; 3 uses
  %i.ab = trunc nuw i8 %.1 to i1
  %i.ac = select i1 %i.ab, i32 983040, i32 0
  %i.ad = and i8 %.sroa.0.0.copyload.i.i, 16
  %.not.i = icmp eq i8 %i.ad, 0
  %i.ae = and i32 %.sroa.0.0.copyload.i, 16711680
  %.sroa.6.0.insert.ext = select i1 %.not.i, i32 %i.ae, i32 %i.ac
  %i.af = and i32 %.sroa.0.0.copyload.i, -16711681
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.6.0.insert.ext, %i.af
  tail call void @_ZN8MapBlock19expandNodesIfNeededEv(ptr noundef nonnull align 8 dereferenceable(328) %0)
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !76
  %4 = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.k
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv40
  %.idx40 = shl nuw nsw i64 %indvars.iv, 6
  %5 = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.idx40
  store i32 %.sroa.0.0.insert.insert, ptr %5, align 4
  %i.ai = load i16, ptr %i.d, align 2, !tbaa !81  ; 2 uses
  %i.aj = icmp ult i16 %i.ai, 4
  br i1 %i.aj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit32
  store i16 4, ptr %i.d, align 2, !tbaa !81
  store i32 16, ptr %i.e, align 4, !tbaa !82
  %i.ak = load i32, ptr %i.f, align 8, !tbaa !83
  store i32 %i.ak, ptr %i.g, align 4, !tbaa !84
  br label %bb.i

bb.g:                                             ; preds = %_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit32
  %i.al = icmp eq i16 %i.ai, 4
  br i1 %i.al, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.am = load i32, ptr %i.e, align 4, !tbaa !82
  %i.an = or i32 %i.am, 16
  store i32 %i.an, ptr %i.e, align 4, !tbaa !82
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.ao = load ptr, ptr %i.h, align 8, !tbaa !85  ; 2 uses
  %i.ap = load ptr, ptr %i.i, align 8, !tbaa !86
  %.not.i.i.i.i = icmp eq ptr %i.ap, %i.ao
  br i1 %.not.i.i.i.i, label %_ZN8MapBlock14setNodeNoCheckEsss7MapNode.exit, label %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i.i.i:    ; preds = %bb.i
  store ptr %i.ao, ptr %i.i, align 8, !tbaa !86
  br label %_ZN8MapBlock14setNodeNoCheckEsss7MapNode.exit

_ZN8MapBlock14setNodeNoCheckEsss7MapNode.exit:    ; preds = %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i.i.i, %bb.i, %_ZN8MapBlock14getNodeNoCheckEsss.exit
  %.2 = phi i8 [ %.03036, %_ZN8MapBlock14getNodeNoCheckEsss.exit ], [ %.1, %bb.i ], [ %.1, %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i.i.i ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not49 = icmp eq i64 %indvars.iv, 0
  br i1 %.not49, label %bb.e, label %_ZN8MapBlock14getNodeNoCheckEsss.exit, !llvm.loop !292
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7voxalgo18repair_block_lightEP3MapP8MapBlockPSt3mapIN4core8vector3dIsEES3_St4lessIS7_ESaISt4pairIKS7_S3_EEE(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::tuple", align 8        ; 4 uses
  %4 = alloca %"class.std::tuple.128", align 1    ; 3 uses
  %5 = alloca %"class.std::tuple", align 8        ; 4 uses
  %6 = alloca %"class.std::tuple.128", align 1    ; 3 uses
  %7 = alloca [2 x %"struct.voxalgo::LightQueue"], align 16 ; 20 uses
  %8 = alloca [2 x %"struct.voxalgo::LightQueue"], align 16 ; 14 uses
  %i.a = alloca [16 x [16 x i8]], align 16        ; 7 uses
  %9 = alloca %"struct.voxalgo::SunlightPropagationData", align 8 ; 17 uses
  %10 = alloca %"class.core::vector3d", align 8   ; 11 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.bd, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !118  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(385) %7, i8 0, i64 384, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 384
  store i8 15, ptr %i.d, align 16, !tbaa !24
  br label %.split.i

.split.i:                                         ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit.i, %bb.b
  %.0.idx11.i = phi i64 [ %.0.add.i, %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit.i ], [ 0, %bb.b ] ; 2 uses
  %.0.ptr12.i = getelementptr inbounds nuw i8, ptr %7, i64 %.0.idx11.i ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.0.ptr12.i, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !87
  %i.g = load ptr, ptr %.0.ptr12.i, align 8, !tbaa !91
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 24
  %i.l = icmp ult i64 %i.k, 256
  br i1 %i.l, label %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE11_M_allocateEm.exit.i.i, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit.i

_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE11_M_allocateEm.exit.i.i: ; preds = %.split.i
  %i.m = getelementptr inbounds nuw i8, ptr %.0.ptr12.i, i64 8 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !33
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = sub i64 %i.o, %i.i
  %i.q = invoke noalias noundef nonnull dereferenceable(6144) ptr @_Znwm(i64 noundef 6144) #21
          to label %.noexc10.i unwind label %.body.thread ; 4 uses

.noexc10.i:                                       ; preds = %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE11_M_allocateEm.exit.i.i
  %i.r = load ptr, ptr %.0.ptr12.i, align 8, !tbaa !91 ; 5 uses
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !33   ; 2 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.r, %i.s
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc10.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i ], [ %i.q, %.noexc10.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i ], [ %i.r, %.noexc10.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !93, !alias.scope !317
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 24
  %.not.i.i.i.i.i = icmp eq ptr %i.t, %i.s
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc10.i
  %.not.i8.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i8.i.i, label %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE13_M_deallocateEPS1_m.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !87
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.r to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.y) #22
  br label %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE13_M_deallocateEPS1_m.exit.i.i

_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE13_M_deallocateEPS1_m.exit.i.i: ; preds = %bb.c, %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i
  store ptr %i.q, ptr %.0.ptr12.i, align 8, !tbaa !91
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.p
  store ptr %i.z, ptr %i.m, align 8, !tbaa !33
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 6144
  store ptr %i.aa, ptr %i.e, align 8, !tbaa !87
  br label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit.i

_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit.i: ; preds = %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE13_M_deallocateEPS1_m.exit.i.i, %.split.i
  %.0.add.i = add nuw nsw i64 %.0.idx11.i, 24     ; 2 uses
  %.not.i = icmp eq i64 %.0.add.i, 384
  br i1 %.not.i, label %_ZN7voxalgo10LightQueueC2Em.exit, label %.split.i

.body.thread:                                     ; preds = %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE11_M_allocateEm.exit.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

_ZN7voxalgo10LightQueueC2Em.exit:                 ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 392 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(385) %i.ab, i8 0, i64 384, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 776
  store i8 15, ptr %i.ac, align 8, !tbaa !24
  br label %.split.i91

.split.i91:                                       ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit.i94, %_ZN7voxalgo10LightQueueC2Em.exit
  %.0.idx11.i92 = phi i64 [ %.0.add.i95, %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit.i94 ], [ 0, %_ZN7voxalgo10LightQueueC2Em.exit ] ; 2 uses
  %.0.ptr12.i93 = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.0.idx11.i92 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.ptr12.i93, i64 16 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !87
  %i.af = load ptr, ptr %.0.ptr12.i93, align 8, !tbaa !91
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64               ; 2 uses
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = sdiv exact i64 %i.ai, 24
  %i.ak = icmp ult i64 %i.aj, 256
  br i1 %i.ak, label %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE11_M_allocateEm.exit.i.i97, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit.i94

_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE11_M_allocateEm.exit.i.i97: ; preds = %.split.i91
  %i.al = getelementptr inbounds nuw i8, ptr %.0.ptr12.i93, i64 8 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !33
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = sub i64 %i.an, %i.ah
  %i.ap = invoke noalias noundef nonnull dereferenceable(6144) ptr @_Znwm(i64 noundef 6144) #21
          to label %.noexc10.i100 unwind label %.loopexit.i98 ; 4 uses

.noexc10.i100:                                    ; preds = %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE11_M_allocateEm.exit.i.i97
  %i.aq = load ptr, ptr %.0.ptr12.i93, align 8, !tbaa !91 ; 5 uses
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !33 ; 2 uses
  %.not10.i.i.i.i.i101 = icmp eq ptr %i.aq, %i.ar
  br i1 %.not10.i.i.i.i.i101, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i106, label %.lr.ph.i.i.i.i.i102

.lr.ph.i.i.i.i.i102:                              ; preds = %.noexc10.i100, %.lr.ph.i.i.i.i.i102
  %.012.i.i.i.i.i103 = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i102 ], [ %i.ap, %.noexc10.i100 ] ; 2 uses
  %.0911.i.i.i.i.i104 = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i102 ], [ %i.aq, %.noexc10.i100 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i103, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i104, i64 24, i1 false), !tbaa.struct !93, !alias.scope !318
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i104, i64 24 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i103, i64 24
  %.not.i.i.i.i.i105 = icmp eq ptr %i.as, %i.ar
  br i1 %.not.i.i.i.i.i105, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i106, label %.lr.ph.i.i.i.i.i102, !llvm.loop !1

_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i106: ; preds = %.lr.ph.i.i.i.i.i102, %.noexc10.i100
  %.not.i8.i.i107 = icmp eq ptr %i.aq, null
  br i1 %.not.i8.i.i107, label %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE13_M_deallocateEPS1_m.exit.i.i108, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i106
  %i.au = load ptr, ptr %i.ad, align 8, !tbaa !87
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.aq to i64
  %i.ax = sub i64 %i.av, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.ax) #22
  br label %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE13_M_deallocateEPS1_m.exit.i.i108

_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE13_M_deallocateEPS1_m.exit.i.i108: ; preds = %bb.d, %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i106
  store ptr %i.ap, ptr %.0.ptr12.i93, align 8, !tbaa !91
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ao
  store ptr %i.ay, ptr %i.al, align 8, !tbaa !33
  %i.az = getelementptr inbounds nuw i8, ptr %i.ap, i64 6144
  store ptr %i.az, ptr %i.ad, align 8, !tbaa !87
  br label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit.i94

_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit.i94: ; preds = %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE13_M_deallocateEPS1_m.exit.i.i108, %.split.i91
  %.0.add.i95 = add nuw nsw i64 %.0.idx11.i92, 24 ; 2 uses
  %.not.i96 = icmp eq i64 %.0.add.i95, 384
  br i1 %.not.i96, label %_ZN7voxalgo10LightQueueC2Em.exit111, label %.split.i91

.loopexit.i98:                                    ; preds = %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE11_M_allocateEm.exit.i.i97
  %lpad.loopexit.i99 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt5arrayISt6vectorIN7voxalgo13ChangingLightESaIS2_EELm16EED2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(385) %i.ab) #5
end_hunk_2
begin_hunk_3_@_ZN7voxalgo18repair_block_lightEP3MapP8MapBlockPSt3mapIN4core8vector3dIsEES3_St4lessIS7_ESaISt4pairIKS7_S3_EEE:bb.a
  %i.el = invoke noundef ptr %i.ek(ptr noundef nonnull align 8 dereferenceable(144) %0, i48 %.sroa.0.0.insert.insert.i.i, i1 noundef zeroext false)
          to label %.noexc155 unwind label %.loopexit.split-lp229, !inline_history !147 ; 4 uses

.noexc155:                                        ; preds = %bb.o
  %i.em = icmp eq ptr %i.el, null
  br i1 %i.em, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.noexc155
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 82
  %i.eo = load i8, ptr %i.en, align 2, !tbaa !140, !range !78, !noundef !79
  %i.ep = trunc nuw i8 %i.eo to i1
  br i1 %i.ep, label %.preheader41.i, label %bb.q

.preheader41.i:                                   ; preds = %bb.p
  %i.eq = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !76 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.el, i64 36
  %i.et = getelementptr inbounds nuw i8, ptr %i.c, i64 312 ; 17 uses
  %i.eu = load i8, ptr %i.es, align 4, !tbaa !77, !range !78, !noundef !79
  %i.ev = trunc nuw i8 %i.eu to i1
  br i1 %i.ev, label %.preheader41.i.split.us, label %.preheader40.i

.preheader41.i.split.us:                          ; preds = %.preheader41.i
  %.sroa.0.0.copyload.i.i.us.us = load i32, ptr %i.er, align 4 ; 2 uses
  %.sroa.4.0.extract.shift.i.us.us = lshr i32 %.sroa.0.0.copyload.i.i.us.us, 16
  %.sroa.4.0.extract.trunc.i.us.us = trunc i32 %.sroa.4.0.extract.shift.i.us.us to i8
  %i.ew = and i32 %.sroa.0.0.copyload.i.i.us.us, 65535
  %i.ex = zext nneg i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.ex
  %.sroa.0.0.copyload.i.i.i.us.us = load i8, ptr %i.ey, align 1, !tbaa !31 ; 2 uses
  %i.ez = and i8 %.sroa.0.0.copyload.i.i.i.us.us, 16
  %.not.i.i.i.us.us = icmp eq i8 %i.ez, 0
  %i.fa = and i8 %.sroa.4.0.extract.trunc.i.us.us, 15
  %i.fb = and i8 %.sroa.0.0.copyload.i.i.i.us.us, 15 ; 2 uses
  %i.fc = call i8 @llvm.umax.i8(i8 %i.fb, i8 %i.fa)
  %i.fd = select i1 %.not.i.i.i.us.us, i8 %i.fb, i8 %i.fc
  %i.fe = icmp eq i8 %i.fd, 15
  %i.ff = zext i1 %i.fe to i8
  br label %_ZN7voxalgo23is_sunlight_above_blockEP3MapN4core8vector3dIsEEPK14NodeDefManagerPA16_b.exit.sink.split

bb.q:                                             ; preds = %bb.p, %.noexc155
  %i.fg = invoke noundef ptr @_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144) %0, i48 %.sroa.041.0.copyload)
          to label %.noexc156 unwind label %.loopexit.split-lp229 ; 2 uses

.noexc156:                                        ; preds = %bb.q
  %i.fh = icmp eq ptr %i.fg, null
  br i1 %i.fh, label %_ZN7voxalgo23is_sunlight_above_blockEP3MapN4core8vector3dIsEEPK14NodeDefManagerPA16_b.exit.sink.split, label %bb.r

bb.r:                                             ; preds = %.noexc156
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 83
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !101, !range !78, !noundef !79
  %i.fk = xor i8 %i.fj, 1
  br label %_ZN7voxalgo23is_sunlight_above_blockEP3MapN4core8vector3dIsEEPK14NodeDefManagerPA16_b.exit.sink.split

.preheader40.i:                                   ; preds = %.preheader41.i, %.preheader40.i
  %indvars.iv49.i = phi i64 [ %indvars.iv.next50.i, %.preheader40.i ], [ 0, %.preheader41.i ] ; 3 uses
  %i.fl = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %indvars.iv49.i
  %.idx = shl nuw nsw i64 %indvars.iv49.i, 10
  %i.fm = getelementptr inbounds nuw i8, ptr %i.er, i64 %.idx
  %i.fn = load <16 x i32>, ptr %i.fm, align 4     ; 17 uses
  %i.fo = extractelement <16 x i32> %i.fn, i64 0
  %i.fp = and i32 %i.fo, 65535
  %i.fq = zext nneg i32 %i.fp to i64
  %i.fr = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.fq
  %.sroa.0.0.copyload.i.i.i = load i8, ptr %i.fr, align 1, !tbaa !31
  %i.fs = extractelement <16 x i32> %i.fn, i64 1
  %i.ft = and i32 %i.fs, 65535
  %i.fu = zext nneg i32 %i.ft to i64
  %i.fv = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.fu
  %.sroa.0.0.copyload.i.i.i.1 = load i8, ptr %i.fv, align 1, !tbaa !31
  %i.fw = extractelement <16 x i32> %i.fn, i64 2
  %i.fx = and i32 %i.fw, 65535
  %i.fy = zext nneg i32 %i.fx to i64
  %i.fz = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.fy
  %.sroa.0.0.copyload.i.i.i.2 = load i8, ptr %i.fz, align 1, !tbaa !31
  %i.ga = extractelement <16 x i32> %i.fn, i64 3
  %i.gb = and i32 %i.ga, 65535
  %i.gc = zext nneg i32 %i.gb to i64
  %i.gd = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.gc
  %.sroa.0.0.copyload.i.i.i.3 = load i8, ptr %i.gd, align 1, !tbaa !31
  %i.ge = extractelement <16 x i32> %i.fn, i64 4
  %i.gf = and i32 %i.ge, 65535
  %i.gg = zext nneg i32 %i.gf to i64
  %i.gh = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.gg
  %.sroa.0.0.copyload.i.i.i.4 = load i8, ptr %i.gh, align 1, !tbaa !31
  %i.gi = extractelement <16 x i32> %i.fn, i64 5
  %i.gj = and i32 %i.gi, 65535
  %i.gk = zext nneg i32 %i.gj to i64
  %i.gl = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.gk
  %.sroa.0.0.copyload.i.i.i.5 = load i8, ptr %i.gl, align 1, !tbaa !31
  %i.gm = extractelement <16 x i32> %i.fn, i64 6
  %i.gn = and i32 %i.gm, 65535
  %i.go = zext nneg i32 %i.gn to i64
  %i.gp = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.go
  %.sroa.0.0.copyload.i.i.i.6 = load i8, ptr %i.gp, align 1, !tbaa !31
  %i.gq = extractelement <16 x i32> %i.fn, i64 7
  %i.gr = and i32 %i.gq, 65535
  %i.gs = zext nneg i32 %i.gr to i64
  %i.gt = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.gs
  %.sroa.0.0.copyload.i.i.i.7 = load i8, ptr %i.gt, align 1, !tbaa !31
  %i.gu = extractelement <16 x i32> %i.fn, i64 8
  %i.gv = and i32 %i.gu, 65535
  %i.gw = zext nneg i32 %i.gv to i64
  %i.gx = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.gw
  %.sroa.0.0.copyload.i.i.i.8 = load i8, ptr %i.gx, align 1, !tbaa !31
  %i.gy = extractelement <16 x i32> %i.fn, i64 9
  %i.gz = and i32 %i.gy, 65535
  %i.ha = zext nneg i32 %i.gz to i64
  %i.hb = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.ha
  %.sroa.0.0.copyload.i.i.i.9 = load i8, ptr %i.hb, align 1, !tbaa !31
  %i.hc = extractelement <16 x i32> %i.fn, i64 10
  %i.hd = and i32 %i.hc, 65535
  %i.he = zext nneg i32 %i.hd to i64
  %i.hf = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.he
  %.sroa.0.0.copyload.i.i.i.10 = load i8, ptr %i.hf, align 1, !tbaa !31
  %i.hg = extractelement <16 x i32> %i.fn, i64 11
  %i.hh = and i32 %i.hg, 65535
  %i.hi = zext nneg i32 %i.hh to i64
  %i.hj = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.hi
  %.sroa.0.0.copyload.i.i.i.11 = load i8, ptr %i.hj, align 1, !tbaa !31
  %i.hk = extractelement <16 x i32> %i.fn, i64 12
  %i.hl = and i32 %i.hk, 65535
  %i.hm = zext nneg i32 %i.hl to i64
  %i.hn = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.hm
  %.sroa.0.0.copyload.i.i.i.12 = load i8, ptr %i.hn, align 1, !tbaa !31
  %i.ho = extractelement <16 x i32> %i.fn, i64 13
  %i.hp = and i32 %i.ho, 65535
  %i.hq = zext nneg i32 %i.hp to i64
  %i.hr = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.hq
  %.sroa.0.0.copyload.i.i.i.13 = load i8, ptr %i.hr, align 1, !tbaa !31
  %i.hs = extractelement <16 x i32> %i.fn, i64 14
  %i.ht = and i32 %i.hs, 65535
  %i.hu = zext nneg i32 %i.ht to i64
  %i.hv = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.hu
  %.sroa.0.0.copyload.i.i.i.14 = load i8, ptr %i.hv, align 1, !tbaa !31
  %i.hw = lshr <16 x i32> %i.fn, splat (i32 16)
  %i.hx = trunc <16 x i32> %i.hw to <16 x i8>
  %i.hy = extractelement <16 x i32> %i.fn, i64 15
  %i.hz = and i32 %i.hy, 65535
  %i.ia = zext nneg i32 %i.hz to i64
  %i.ib = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.ia
  %.sroa.0.0.copyload.i.i.i.15 = load i8, ptr %i.ib, align 1, !tbaa !31
  %i.ic = insertelement <16 x i8> poison, i8 %.sroa.0.0.copyload.i.i.i, i64 0
  %i.id = insertelement <16 x i8> %i.ic, i8 %.sroa.0.0.copyload.i.i.i.1, i64 1
  %i.ie = insertelement <16 x i8> %i.id, i8 %.sroa.0.0.copyload.i.i.i.2, i64 2
  %i.if = insertelement <16 x i8> %i.ie, i8 %.sroa.0.0.copyload.i.i.i.3, i64 3
  %i.ig = insertelement <16 x i8> %i.if, i8 %.sroa.0.0.copyload.i.i.i.4, i64 4
  %i.ih = insertelement <16 x i8> %i.ig, i8 %.sroa.0.0.copyload.i.i.i.5, i64 5
  %i.ii = insertelement <16 x i8> %i.ih, i8 %.sroa.0.0.copyload.i.i.i.6, i64 6
  %i.ij = insertelement <16 x i8> %i.ii, i8 %.sroa.0.0.copyload.i.i.i.7, i64 7
  %i.ik = insertelement <16 x i8> %i.ij, i8 %.sroa.0.0.copyload.i.i.i.8, i64 8
  %i.il = insertelement <16 x i8> %i.ik, i8 %.sroa.0.0.copyload.i.i.i.9, i64 9
  %i.im = insertelement <16 x i8> %i.il, i8 %.sroa.0.0.copyload.i.i.i.10, i64 10
  %i.in = insertelement <16 x i8> %i.im, i8 %.sroa.0.0.copyload.i.i.i.11, i64 11
  %i.io = insertelement <16 x i8> %i.in, i8 %.sroa.0.0.copyload.i.i.i.12, i64 12
  %i.ip = insertelement <16 x i8> %i.io, i8 %.sroa.0.0.copyload.i.i.i.13, i64 13
  %i.iq = insertelement <16 x i8> %i.ip, i8 %.sroa.0.0.copyload.i.i.i.14, i64 14
  %i.ir = insertelement <16 x i8> %i.iq, i8 %.sroa.0.0.copyload.i.i.i.15, i64 15 ; 2 uses
  %i.is = and <16 x i8> %i.ir, splat (i8 16)
  %i.it = icmp eq <16 x i8> %i.is, zeroinitializer
  %i.iu = and <16 x i8> %i.hx, splat (i8 15)
  %i.iv = and <16 x i8> %i.ir, splat (i8 15)      ; 2 uses
  %i.iw = call <16 x i8> @llvm.umax.v16i8(<16 x i8> %i.iv, <16 x i8> %i.iu)
  %i.ix = select <16 x i1> %i.it, <16 x i8> %i.iv, <16 x i8> %i.iw
  %i.iy = icmp eq <16 x i8> %i.ix, splat (i8 15)
  %i.iz = zext <16 x i1> %i.iy to <16 x i8>
  store <16 x i8> %i.iz, ptr %i.fl, align 16, !tbaa !123
  %indvars.iv.next50.i = add nuw nsw i64 %indvars.iv49.i, 1 ; 2 uses
  %exitcond52.not.i = icmp eq i64 %indvars.iv.next50.i, 16
  br i1 %exitcond52.not.i, label %_ZN7voxalgo23is_sunlight_above_blockEP3MapN4core8vector3dIsEEPK14NodeDefManagerPA16_b.exit, label %.preheader40.i, !llvm.loop !6

_ZN7voxalgo23is_sunlight_above_blockEP3MapN4core8vector3dIsEEPK14NodeDefManagerPA16_b.exit.sink.split: ; preds = %.noexc156, %bb.r, %.preheader41.i.split.us
  %.sink = phi i8 [ %i.ff, %.preheader41.i.split.us ], [ %i.fk, %bb.r ], [ 0, %.noexc156 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 %.sink, i64 256, i1 false), !tbaa !123
  br label %_ZN7voxalgo23is_sunlight_above_blockEP3MapN4core8vector3dIsEEPK14NodeDefManagerPA16_b.exit

_ZN7voxalgo23is_sunlight_above_blockEP3MapN4core8vector3dIsEEPK14NodeDefManagerPA16_b.exit: ; preds = %.preheader40.i, %_ZN7voxalgo23is_sunlight_above_blockEP3MapN4core8vector3dIsEEPK14NodeDefManagerPA16_b.exit.sink.split
  invoke void @_ZN7voxalgo18fill_with_sunlightEP8MapBlockPK14NodeDefManagerPA16_b(ptr noundef nonnull %1, ptr noundef %i.c, ptr noundef nonnull %i.a)
          to label %bb.s unwind label %.loopexit.split-lp229

bb.s:                                             ; preds = %_ZN7voxalgo23is_sunlight_above_blockEP3MapN4core8vector3dIsEEPK14NodeDefManagerPA16_b.exit
  %i.ja = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.jb = load i16, ptr %i.ja, align 4, !tbaa !21
  %i.jc = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 26 ; 3 uses
  %i.jd = load <2 x i16>, ptr %10, align 8, !tbaa !92
  %i.je = add <2 x i16> %i.jd, <i16 0, i16 -1>
  store <2 x i16> %i.je, ptr %i.jc, align 8, !tbaa !92
  %.sroa.5220.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 28 ; 2 uses
  store i16 %i.jb, ptr %.sroa.5220.0..sroa_idx, align 4, !tbaa !92
  %i.jf = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %.pre.pre = load ptr, ptr %i.jf, align 8, !tbaa !143
  br label %.preheader233

.preheader233:                                    ; preds = %bb.s, %bb.t
  %.pre = phi ptr [ %.pre.pre, %bb.s ], [ %i.kq, %bb.t ]
  %indvars.iv267 = phi i64 [ 0, %bb.s ], [ %indvars.iv.next268, %bb.t ] ; 3 uses
  %i.jh = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %indvars.iv267
  %i.ji = trunc nuw nsw i64 %indvars.iv267 to i32
  %.sroa.6214.0.insert.shift = shl nuw nsw i32 %i.ji, 16 ; 2 uses
  br label %bb.u

.preheader227:                                    ; preds = %bb.t
  %i.jj = load ptr, ptr %9, align 8, !tbaa !145
  %i.jk = icmp eq ptr %i.jj, %i.kq
  br i1 %i.jk, label %.preheader, label %.lr.ph

.loopexit228:                                     ; preds = %.lr.ph, %bb.aa, %.critedge.i180
  %lpad.loopexit230 = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

.loopexit.split-lp229:                            ; preds = %_ZN7voxalgo23is_sunlight_above_blockEP3MapN4core8vector3dIsEEPK14NodeDefManagerPA16_b.exit, %bb.am, %.critedge.i, %bb.o, %bb.q
  %lpad.loopexit.split-lp231 = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.t:                                             ; preds = %_ZNSt6vectorIN7voxalgo23SunlightPropagationUnitESaIS1_EE12emplace_backIJN4core8vector2dIsEERbEEERS1_DpOT_.exit
  %indvars.iv.next268 = add nuw nsw i64 %indvars.iv267, 1 ; 2 uses
  %exitcond270.not = icmp eq i64 %indvars.iv.next268, 16
  br i1 %exitcond270.not, label %.preheader227, label %.preheader233, !llvm.loop !305

bb.u:                                             ; preds = %.preheader233, %_ZNSt6vectorIN7voxalgo23SunlightPropagationUnitESaIS1_EE12emplace_backIJN4core8vector2dIsEERbEEERS1_DpOT_.exit
  %i.jl = phi ptr [ %.pre, %.preheader233 ], [ %i.kq, %_ZNSt6vectorIN7voxalgo23SunlightPropagationUnitESaIS1_EE12emplace_backIJN4core8vector2dIsEERbEEERS1_DpOT_.exit ] ; 6 uses
  %indvars.iv = phi i64 [ 0, %.preheader233 ], [ %indvars.iv.next, %_ZNSt6vectorIN7voxalgo23SunlightPropagationUnitESaIS1_EE12emplace_backIJN4core8vector2dIsEERbEEERS1_DpOT_.exit ] ; 4 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jh, i64 %indvars.iv ; 2 uses
  %i.jn = load ptr, ptr %i.jg, align 8, !tbaa !148
  %.not.i157 = icmp eq ptr %i.jl, %i.jn
  br i1 %.not.i157, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.jo = trunc nuw nsw i64 %indvars.iv to i32
  %.sroa.0210.0.insert.insert = or disjoint i32 %.sroa.6214.0.insert.shift, %i.jo
  %i.jp = load i8, ptr %i.jm, align 1, !tbaa !123, !range !78, !noundef !79
  store i32 %.sroa.0210.0.insert.insert, ptr %i.jl, align 2
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jl, i64 4
  store i8 %i.jp, ptr %i.jq, align 2, !tbaa !150
  %i.jr = load ptr, ptr %i.jf, align 8, !tbaa !143
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 6 ; 2 uses
  store ptr %i.js, ptr %i.jf, align 8, !tbaa !143
  br label %_ZNSt6vectorIN7voxalgo23SunlightPropagationUnitESaIS1_EE12emplace_backIJN4core8vector2dIsEERbEEERS1_DpOT_.exit

bb.w:                                             ; preds = %bb.u
  %i.jt = load ptr, ptr %9, align 8, !tbaa !144   ; 5 uses
  %i.ju = ptrtoint ptr %i.jl to i64
  %i.jv = ptrtoint ptr %i.jt to i64               ; 2 uses
  %i.jw = sub i64 %i.ju, %i.jv                    ; 3 uses
  %i.jx = icmp eq i64 %i.jw, 9223372036854775806
  br i1 %i.jx, label %bb.x, label %_ZNKSt6vectorIN7voxalgo23SunlightPropagationUnitESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.x:                                             ; preds = %bb.w
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #20
          to label %.noexc166 unwind label %.loopexit.split-lp235

.noexc166:                                        ; preds = %bb.x
  unreachable

_ZNKSt6vectorIN7voxalgo23SunlightPropagationUnitESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.w
  %i.jy = sdiv exact i64 %i.jw, 6                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.jy, i64 1)
  %i.jz = add nsw i64 %.sroa.speculated.i.i.i, %i.jy ; 2 uses
  %i.ka = icmp ult i64 %i.jz, %i.jy
  %i.kb = call i64 @llvm.umin.i64(i64 %i.jz, i64 1537228672809129301)
  %i.kc = select i1 %i.ka, i64 1537228672809129301, i64 %i.kb ; 3 uses
  %.not.i.i.i159 = icmp ne i64 %i.kc, 0
  call void @llvm.assume(i1 %.not.i.i.i159)
  %i.kd = mul nuw nsw i64 %i.kc, 6
  %i.ke = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kd) #21
          to label %.noexc167 unwind label %.loopexit234 ; 5 uses

.noexc167:                                        ; preds = %_ZNKSt6vectorIN7voxalgo23SunlightPropagationUnitESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 %i.jw ; 2 uses
  %i.kg = trunc nuw nsw i64 %indvars.iv to i32
  %.sroa.0210.0.insert.insert213 = or disjoint i32 %.sroa.6214.0.insert.shift, %i.kg
  %i.kh = load i8, ptr %i.jm, align 1, !tbaa !123, !range !78, !noundef !79
  store i32 %.sroa.0210.0.insert.insert213, ptr %i.kf, align 2
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kf, i64 4
  store i8 %i.kh, ptr %i.ki, align 2, !tbaa !150
  %.not10.i.i.i.i.i161 = icmp eq ptr %i.jt, %i.jl
  br i1 %.not10.i.i.i.i.i161, label %_ZNSt6vectorIN7voxalgo23SunlightPropagationUnitESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i162

.lr.ph.i.i.i.i.i162:                              ; preds = %.noexc167, %.lr.ph.i.i.i.i.i162
  %.012.i.i.i.i.i163 = phi ptr [ %i.kk, %.lr.ph.i.i.i.i.i162 ], [ %i.ke, %.noexc167 ] ; 2 uses
  %.0911.i.i.i.i.i164 = phi ptr [ %i.kj, %.lr.ph.i.i.i.i.i162 ], [ %i.jt, %.noexc167 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.012.i.i.i.i.i163, ptr noundef nonnull align 2 dereferenceable(6) %.0911.i.i.i.i.i164, i64 6, i1 false), !tbaa.struct !146, !alias.scope !321
  %i.kj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i164, i64 6 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i163, i64 6 ; 2 uses
  %.not.i.i.i.i.i165 = icmp eq ptr %i.kj, %i.jl
  br i1 %.not.i.i.i.i.i165, label %_ZNSt6vectorIN7voxalgo23SunlightPropagationUnitESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i162, !llvm.loop !7

_ZNSt6vectorIN7voxalgo23SunlightPropagationUnitESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i162, %.noexc167
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ke, %.noexc167 ], [ %i.kk, %.lr.ph.i.i.i.i.i162 ]
  %i.kl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 6 ; 2 uses
  %.not.i34.i.i = icmp eq ptr %i.jt, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorIN7voxalgo23SunlightPropagationUnitESaIS1_EE17_M_realloc_insertIJN4core8vector2dIsEERbEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIN7voxalgo23SunlightPropagationUnitESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  %i.km = load ptr, ptr %i.jg, align 8, !tbaa !148
  %i.kn = ptrtoint ptr %i.km to i64
  %i.ko = sub i64 %i.kn, %i.jv
  call void @_ZdlPvm(ptr noundef nonnull %i.jt, i64 noundef %i.ko) #22
  br label %_ZNSt6vectorIN7voxalgo23SunlightPropagationUnitESaIS1_EE17_M_realloc_insertIJN4core8vector2dIsEERbEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN7voxalgo23SunlightPropagationUnitESaIS1_EE17_M_realloc_insertIJN4core8vector2dIsEERbEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.y, %_ZNSt6vectorIN7voxalgo23SunlightPropagationUnitESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  store ptr %i.ke, ptr %9, align 8, !tbaa !144
  store ptr %i.kl, ptr %i.jf, align 8, !tbaa !143
  %i.kp = getelementptr inbounds nuw [6 x i8], ptr %i.ke, i64 %i.kc
  store ptr %i.kp, ptr %i.jg, align 8, !tbaa !148
  br label %_ZNSt6vectorIN7voxalgo23SunlightPropagationUnitESaIS1_EE12emplace_backIJN4core8vector2dIsEERbEEERS1_DpOT_.exit

_ZNSt6vectorIN7voxalgo23SunlightPropagationUnitESaIS1_EE12emplace_backIJN4core8vector2dIsEERbEEERS1_DpOT_.exit: ; preds = %_ZNSt6vectorIN7voxalgo23SunlightPropagationUnitESaIS1_EE17_M_realloc_insertIJN4core8vector2dIsEERbEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.v
  %i.kq = phi ptr [ %i.kl, %_ZNSt6vectorIN7voxalgo23SunlightPropagationUnitESaIS1_EE17_M_realloc_insertIJN4core8vector2dIsEERbEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.js, %bb.v ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %bb.t, label %bb.u, !llvm.loop !309

.loopexit234:                                     ; preds = %_ZNKSt6vectorIN7voxalgo23SunlightPropagationUnitESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit236 = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

.loopexit.split-lp235:                            ; preds = %bb.x
  %lpad.loopexit.split-lp237 = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

.preheader:                                       ; preds = %bb.al, %.preheader227
  %i.kr = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ks = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.kt = getelementptr inbounds nuw i8, ptr %i.c, i64 312
  %i.ku = getelementptr inbounds nuw i8, ptr %7, i64 360 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %7, i64 368 ; 4 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %7, i64 376 ; 3 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %7, i64 752 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %7, i64 760 ; 4 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %7, i64 768 ; 3 uses
  br label %bb.an

.lr.ph:                                           ; preds = %.preheader227, %bb.al
  %i.la = invoke noundef zeroext i1 @_ZN7voxalgo24propagate_block_sunlightEP3MapPK14NodeDefManagerPNS_23SunlightPropagationDataEPNS_10LightQueueES8_(ptr noundef nonnull %0, ptr noundef %i.c, ptr noundef nonnull %9, ptr noundef nonnull %7, ptr noundef nonnull %8)
          to label %bb.z unwind label %.loopexit228

bb.z:                                             ; preds = %.lr.ph
  br i1 %i.la, label %bb.aa, label %bb.al

bb.aa:                                            ; preds = %bb.z
  %.sroa.031.0.copyload = load i48, ptr %i.jc, align 8
  %i.lb = invoke noundef ptr @_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144) %0, i48 %.sroa.031.0.copyload)
          to label %bb.ab unwind label %.loopexit228

bb.ab:                                            ; preds = %bb.aa
  %i.lc = load ptr, ptr %i.cy, align 8, !tbaa !94 ; 2 uses
  %.not12.i.i.i.i168 = icmp eq ptr %i.lc, null
  br i1 %.not12.i.i.i.i168, label %.critedge.i180, label %.lr.ph.i.i.i.i169

.lr.ph.i.i.i.i169:                                ; preds = %bb.ab
  %i.ld = load i16, ptr %i.jc, align 8, !tbaa !19 ; 4 uses
  %i.le = load i16, ptr %.sroa.4.0..sroa_idx, align 2 ; 4 uses
  %i.lf = load i16, ptr %.sroa.5220.0..sroa_idx, align 4 ; 2 uses
  br label %bb.ac

bb.ac:                                            ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i172, %.lr.ph.i.i.i.i169
  %.014.i.i.i.i170 = phi ptr [ %i.lc, %.lr.ph.i.i.i.i169 ], [ %.1.i.i.i.i175, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i172 ] ; 7 uses
  %.0813.i.i.i.i171 = phi ptr [ %i.da, %.lr.ph.i.i.i.i169 ], [ %.19.i.i.i.i174, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i172 ]
  %i.lg = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i170, i64 32
  %i.lh = load i16, ptr %i.lg, align 2, !tbaa !19 ; 2 uses
  %i.li = icmp slt i16 %i.lh, %i.ld
  br i1 %i.li, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i183, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.lj = icmp eq i16 %i.lh, %i.ld
  br i1 %i.lj, label %bb.ae, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i172

bb.ae:                                            ; preds = %bb.ad
  %i.lk = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i170, i64 34
  %i.ll = load i16, ptr %i.lk, align 2, !tbaa !20 ; 2 uses
  %i.lm = icmp slt i16 %i.ll, %i.le
  br i1 %i.lm, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i183, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ln = icmp eq i16 %i.ll, %i.le
  br i1 %i.ln, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i182, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i172

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i182: ; preds = %bb.af
  %i.lo = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i170, i64 36
  %i.lp = load i16, ptr %i.lo, align 2, !tbaa !21
  %i.lq = icmp slt i16 %i.lp, %i.lf
  br i1 %i.lq, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i183, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i172

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i183: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i182, %bb.ae, %bb.ac
  br label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i172

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i172: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i183, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i182, %bb.af, %bb.ad
  %.sink.i.i.i.i173 = phi i64 [ 24, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i183 ], [ 16, %bb.af ], [ 16, %bb.ad ], [ 16, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i182 ]
  %.19.i.i.i.i174 = phi ptr [ %.0813.i.i.i.i171, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i183 ], [ %.014.i.i.i.i170, %bb.af ], [ %.014.i.i.i.i170, %bb.ad ], [ %.014.i.i.i.i170, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i182 ] ; 12 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i170, i64 %.sink.i.i.i.i173
  %.1.i.i.i.i175 = load ptr, ptr %i.lr, align 8, !tbaa !95 ; 2 uses
  %.not.i.i.i.i176 = icmp eq ptr %.1.i.i.i.i175, null
  br i1 %.not.i.i.i.i176, label %_ZNSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i177, label %bb.ac, !llvm.loop !2

end_hunk_3
