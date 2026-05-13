inline.NumInlined: 490
inline.NumDeleted: 157
begin_hunk_0_@_ZNSt5dequeIN4absl12crc_internal12CrcCordState9PrefixCrcESaIS3_EE13_M_insert_auxISt15_Deque_iteratorIS3_RKS3_PS8_EEEvS7_IS3_RS3_PS3_ET_SF_m:bb.a
_ZSt9__advanceISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERKS4_PS5_ElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.ad, %bb.ag
  %.sroa.0248.0 = phi ptr [ %i.gd, %bb.ad ], [ %i.gm, %bb.ag ] ; 3 uses
  %.sroa.9252.2 = phi ptr [ %i.fq, %bb.ad ], [ %i.gi, %bb.ag ]
  %.sroa.16255.2 = phi ptr [ %i.fs, %bb.ad ], [ %i.gj, %bb.ag ]
  %.sroa.23258.2 = phi ptr [ %i.fu, %bb.ad ], [ %i.gh, %bb.ag ]
  %i.gn = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.go = icmp eq ptr %i.gn, %storemerge.i.i
  br i1 %i.go, label %_ZSt22__uninitialized_move_aISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS4_PS4_ES7_SaIS4_EET0_T_SA_S9_RT1_.exit.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZSt9__advanceISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERKS4_PS5_ElEvRT_T0_St26random_access_iterator_tag.exit
  %i.gp = load ptr, ptr %i.d, align 8
  %i.gq = load ptr, ptr %i.u, align 8
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_EppEv.exit.i.i.i.i.i.i
  %.sroa.04.0.i.i.i.i.i = phi ptr [ %.sroa.04.1.i.i.i.i.i, %_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_EppEv.exit.i.i.i.i.i.i ], [ %i.gn, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.7.0.i.i.i.i.i = phi ptr [ %.sroa.7.1.i.i.i.i.i, %_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_EppEv.exit.i.i.i.i.i.i ], [ %i.gq, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.10.0.i.i.i.i.i = phi ptr [ %.sroa.10.1.i.i.i.i.i, %_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_EppEv.exit.i.i.i.i.i.i ], [ %i.gp, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.gr = phi ptr [ %i.hg, %_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_EppEv.exit.i.i.i.i.i.i ], [ %storemerge.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.gs = phi ptr [ %i.hf, %_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_EppEv.exit.i.i.i.i.i.i ], [ %.sroa.11337.0, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.gt = phi ptr [ %i.he, %_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_EppEv.exit.i.i.i.i.i.i ], [ %.sroa.15.0, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gr, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.0.i.i.i.i.i, i64 16, i1 false), !noalias !157
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i.i.i.i, i64 16 ; 2 uses
  %i.gv = icmp eq ptr %i.gu, %.sroa.7.0.i.i.i.i.i
  br i1 %i.gv, label %bb.ah, label %_ZNSt13move_iteratorISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS4_PS4_EEppEv.exit.i.i.i.i.i.i

bb.ah:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i, i64 8 ; 2 uses
  %i.gx = load ptr, ptr %i.gw, align 8, !noalias !157 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 512
  br label %_ZNSt13move_iteratorISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS4_PS4_EEppEv.exit.i.i.i.i.i.i

_ZNSt13move_iteratorISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS4_PS4_EEppEv.exit.i.i.i.i.i.i: ; preds = %bb.ah, %.lr.ph.i.i.i.i.i.i
  %.sroa.04.1.i.i.i.i.i = phi ptr [ %i.gx, %bb.ah ], [ %i.gu, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %.sroa.7.1.i.i.i.i.i = phi ptr [ %i.gy, %bb.ah ], [ %.sroa.7.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %.sroa.10.1.i.i.i.i.i = phi ptr [ %i.gw, %bb.ah ], [ %.sroa.10.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gr, i64 16 ; 2 uses
  %i.ha = icmp eq ptr %i.gz, %i.gs
  br i1 %i.ha, label %bb.ai, label %_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_EppEv.exit.i.i.i.i.i.i

bb.ai:                                            ; preds = %_ZNSt13move_iteratorISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS4_PS4_EEppEv.exit.i.i.i.i.i.i
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gt, i64 8 ; 2 uses
  %i.hc = load ptr, ptr %i.hb, align 8, !noalias !157 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 512
  br label %_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_EppEv.exit.i.i.i.i.i.i

_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_EppEv.exit.i.i.i.i.i.i: ; preds = %bb.ai, %_ZNSt13move_iteratorISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS4_PS4_EEppEv.exit.i.i.i.i.i.i
  %i.he = phi ptr [ %i.gt, %_ZNSt13move_iteratorISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS4_PS4_EEppEv.exit.i.i.i.i.i.i ], [ %i.hb, %bb.ai ] ; 2 uses
  %i.hf = phi ptr [ %i.gs, %_ZNSt13move_iteratorISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS4_PS4_EEppEv.exit.i.i.i.i.i.i ], [ %i.hd, %bb.ai ] ; 2 uses
  %i.hg = phi ptr [ %i.gz, %_ZNSt13move_iteratorISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS4_PS4_EEppEv.exit.i.i.i.i.i.i ], [ %i.hc, %bb.ai ] ; 2 uses
  %i.hh = icmp eq ptr %.sroa.04.1.i.i.i.i.i, %storemerge.i.i
  br i1 %i.hh, label %_ZSt22__uninitialized_move_aISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS4_PS4_ES7_SaIS4_EET0_T_SA_S9_RT1_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !135

_ZSt22__uninitialized_move_aISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS4_PS4_ES7_SaIS4_EET0_T_SA_S9_RT1_.exit.i: ; preds = %_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_EppEv.exit.i.i.i.i.i.i, %_ZSt9__advanceISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERKS4_PS5_ElEvRT_T0_St26random_access_iterator_tag.exit
  %.lcssa4.i.i.i.i.i.i = phi ptr [ %.sroa.15.0, %_ZSt9__advanceISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERKS4_PS5_ElEvRT_T0_St26random_access_iterator_tag.exit ], [ %i.he, %_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_EppEv.exit.i.i.i.i.i.i ]
  %.lcssa2.i.i.i.i.i.i = phi ptr [ %.sroa.11337.0, %_ZSt9__advanceISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERKS4_PS5_ElEvRT_T0_St26random_access_iterator_tag.exit ], [ %i.hf, %_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_EppEv.exit.i.i.i.i.i.i ]
  %.lcssa.i.i.i.i.i.i = phi ptr [ %storemerge.i.i.i.i, %_ZSt9__advanceISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERKS4_PS5_ElEvRT_T0_St26random_access_iterator_tag.exit ], [ %i.hg, %_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_EppEv.exit.i.i.i.i.i.i ]
  %i.hi = icmp eq ptr %i.fo, %.sroa.0248.0
  br i1 %i.hi, label %_ZSt25__uninitialized_move_copyISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS4_PS4_ES0_IS4_RKS4_PS8_ES7_SaIS4_EET1_T_SE_T0_SF_SD_RT2_.exit, label %.lr.ph.i.i.i.i.i23

.lr.ph.i.i.i.i.i23:                               ; preds = %_ZSt22__uninitialized_move_aISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS4_PS4_ES7_SaIS4_EET0_T_SA_S9_RT1_.exit.i, %_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_EppEv.exit.i.i.i.i.i30
  %.sroa.04.0.i.i.i.i24 = phi ptr [ %.sroa.04.1.i.i.i.i27, %_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_EppEv.exit.i.i.i.i.i30 ], [ %i.fo, %_ZSt22__uninitialized_move_aISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS4_PS4_ES7_SaIS4_EET0_T_SA_S9_RT1_.exit.i ] ; 2 uses
  %.sroa.7.0.i.i.i.i25 = phi ptr [ %.sroa.7.1.i.i.i.i28, %_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_EppEv.exit.i.i.i.i.i30 ], [ %i.fs, %_ZSt22__uninitialized_move_aISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS4_PS4_ES7_SaIS4_EET0_T_SA_S9_RT1_.exit.i ] ; 2 uses
  %.sroa.10.0.i.i.i.i26 = phi ptr [ %.sroa.10.1.i.i.i.i29, %_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_EppEv.exit.i.i.i.i.i30 ], [ %i.fu, %_ZSt22__uninitialized_move_aISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS4_PS4_ES7_SaIS4_EET0_T_SA_S9_RT1_.exit.i ] ; 2 uses
  %i.hj = phi ptr [ %i.hy, %_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_EppEv.exit.i.i.i.i.i30 ], [ %.lcssa.i.i.i.i.i.i, %_ZSt22__uninitialized_move_aISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS4_PS4_ES7_SaIS4_EET0_T_SA_S9_RT1_.exit.i ] ; 2 uses
  %i.hk = phi ptr [ %i.hx, %_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_EppEv.exit.i.i.i.i.i30 ], [ %.lcssa2.i.i.i.i.i.i, %_ZSt22__uninitialized_move_aISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS4_PS4_ES7_SaIS4_EET0_T_SA_S9_RT1_.exit.i ] ; 2 uses
  %i.hl = phi ptr [ %i.hw, %_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_EppEv.exit.i.i.i.i.i30 ], [ %.lcssa4.i.i.i.i.i.i, %_ZSt22__uninitialized_move_aISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS4_PS4_ES7_SaIS4_EET0_T_SA_S9_RT1_.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hj, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.0.i.i.i.i24, i64 16, i1 false), !noalias !170
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i.i.i24, i64 16 ; 2 uses
  %i.hn = icmp eq ptr %i.hm, %.sroa.7.0.i.i.i.i25
  br i1 %i.hn, label %bb.aj, label %_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERKS3_PS4_EppEv.exit.i.i.i.i.i

bb.aj:                                            ; preds = %.lr.ph.i.i.i.i.i23
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i26, i64 8 ; 2 uses
  %i.hp = load ptr, ptr %i.ho, align 8, !noalias !170 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 512
  br label %_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERKS3_PS4_EppEv.exit.i.i.i.i.i

_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERKS3_PS4_EppEv.exit.i.i.i.i.i: ; preds = %bb.aj, %.lr.ph.i.i.i.i.i23
  %.sroa.04.1.i.i.i.i27 = phi ptr [ %i.hp, %bb.aj ], [ %i.hm, %.lr.ph.i.i.i.i.i23 ] ; 2 uses
  %.sroa.7.1.i.i.i.i28 = phi ptr [ %i.hq, %bb.aj ], [ %.sroa.7.0.i.i.i.i25, %.lr.ph.i.i.i.i.i23 ]
  %.sroa.10.1.i.i.i.i29 = phi ptr [ %i.ho, %bb.aj ], [ %.sroa.10.0.i.i.i.i26, %.lr.ph.i.i.i.i.i23 ]
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hj, i64 16 ; 2 uses
  %i.hs = icmp eq ptr %i.hr, %i.hk
  br i1 %i.hs, label %bb.ak, label %_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_EppEv.exit.i.i.i.i.i30

bb.ak:                                            ; preds = %_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERKS3_PS4_EppEv.exit.i.i.i.i.i
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hl, i64 8 ; 2 uses
  %i.hu = load ptr, ptr %i.ht, align 8, !noalias !170 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 512
  br label %_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_EppEv.exit.i.i.i.i.i30

_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_EppEv.exit.i.i.i.i.i30: ; preds = %bb.ak, %_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERKS3_PS4_EppEv.exit.i.i.i.i.i
  %i.hw = phi ptr [ %i.hl, %_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERKS3_PS4_EppEv.exit.i.i.i.i.i ], [ %i.ht, %bb.ak ]
  %i.hx = phi ptr [ %i.hk, %_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERKS3_PS4_EppEv.exit.i.i.i.i.i ], [ %i.hv, %bb.ak ]
  %i.hy = phi ptr [ %i.hr, %_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERKS3_PS4_EppEv.exit.i.i.i.i.i ], [ %i.hu, %bb.ak ]
  %i.hz = icmp eq ptr %.sroa.04.1.i.i.i.i27, %.sroa.0248.0
  br i1 %i.hz, label %_ZSt25__uninitialized_move_copyISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS4_PS4_ES0_IS4_RKS4_PS8_ES7_SaIS4_EET1_T_SE_T0_SF_SD_RT2_.exit, label %.lr.ph.i.i.i.i.i23, !llvm.loop !81

_ZSt25__uninitialized_move_copyISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS4_PS4_ES0_IS4_RKS4_PS8_ES7_SaIS4_EET1_T_SE_T0_SF_SD_RT2_.exit: ; preds = %_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_EppEv.exit.i.i.i.i.i30, %_ZSt22__uninitialized_move_aISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS4_PS4_ES7_SaIS4_EET0_T_SA_S9_RT1_.exit.i
  store ptr %storemerge.i.i.i.i, ptr %i.a, align 8
  store ptr %.sroa.7333.0, ptr %i.aw, align 8
  store ptr %.sroa.11337.0, ptr %i.u, align 8
  store ptr %.sroa.15.0, ptr %i.d, align 8
  %i.ia = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %20), !noalias !179
  call void @llvm.lifetime.start.p0(ptr nonnull %17), !noalias !182
  call void @llvm.lifetime.start.p0(ptr nonnull %18), !noalias !182
  call void @llvm.lifetime.start.p0(ptr nonnull %19), !noalias !182
  store ptr %.sroa.0248.0, ptr %17, align 8, !noalias !185
  %i.ib = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %.sroa.9252.2, ptr %i.ib, align 8, !noalias !185
  %i.ic = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr %.sroa.16255.2, ptr %i.ic, align 8, !noalias !185
  %i.id = getelementptr inbounds nuw i8, ptr %17, i64 24
  store ptr %.sroa.23258.2, ptr %i.id, align 8, !noalias !185
  %i.ie = load <2 x ptr>, ptr %3, align 8
  store <2 x ptr> %i.ie, ptr %18, align 16, !noalias !185
  %i.if = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.ig = load <2 x ptr>, ptr %i.ia, align 8
  store <2 x ptr> %i.ig, ptr %i.if, align 16, !noalias !185
  store ptr %i.bg, ptr %19, align 8, !noalias !185
  %i.ih = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %i.bf, ptr %i.ih, align 8, !noalias !185
  %i.ii = getelementptr inbounds nuw i8, ptr %19, i64 16
  store ptr %i.be, ptr %i.ii, align 8, !noalias !185
  %i.ij = getelementptr inbounds nuw i8, ptr %19, i64 24
  store ptr %i.bd, ptr %i.ij, align 8, !noalias !185
  call void @_ZSt15__copy_move_ditILb0EN4absl12crc_internal12CrcCordState9PrefixCrcERKS3_PS4_St15_Deque_iteratorIS3_RS3_PS3_EET3_S7_IT0_T1_T2_ESF_SB_(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %20, ptr noundef nonnull dead_on_return %17, ptr noundef nonnull dead_on_return %18, ptr noundef nonnull dead_on_return %19), !noalias !182
  call void @llvm.lifetime.end.p0(ptr nonnull %17), !noalias !182
  call void @llvm.lifetime.end.p0(ptr nonnull %18), !noalias !182
  call void @llvm.lifetime.end.p0(ptr nonnull %19), !noalias !182
  call void @llvm.lifetime.end.p0(ptr nonnull %20), !noalias !179
  br label %bb.bq

bb.al:                                            ; preds = %bb.a
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.il = load ptr, ptr %i.ik, align 8, !noalias !188 ; 2 uses
  %i.im = ptrtoint ptr %i.il to i64
  %i.in = sub i64 %i.im, %i.ao
  %i.io = ashr exact i64 %i.in, 4
  %i.ip = add nsw i64 %i.io, -1                   ; 2 uses
  %i.iq = icmp ugt i64 %4, %i.ip
  br i1 %i.iq, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ir = sub nuw i64 %4, %i.ip
  tail call void @_ZNSt5dequeIN4absl12crc_internal12CrcCordState9PrefixCrcESaIS3_EE23_M_new_elements_at_backEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %i.ir), !noalias !188
  %.pre.i36 = load ptr, ptr %i.ac, align 8, !noalias !191 ; 2 uses
  %.pre6.i37 = load ptr, ptr %i.ik, align 8, !noalias !191
  %.pre7.i38 = ptrtoint ptr %.pre.i36 to i64
  %.pre = load ptr, ptr %i.am, align 8, !noalias !191 ; 2 uses
  %.pre354 = load ptr, ptr %i.ad, align 8, !noalias !191
  %.pre357 = ptrtoint ptr %.pre to i64            ; 2 uses
  %.pre358 = sub i64 %.pre7.i38, %.pre357
  %.pre360 = ashr exact i64 %.pre358, 4
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.pre-phi361 = phi i64 [ %.pre360, %bb.am ], [ %i.ar, %bb.al ]
  %.pre-phi = phi i64 [ %.pre357, %bb.am ], [ %i.ap, %bb.al ]
  %i.is = phi ptr [ %.pre354, %bb.am ], [ %i.ae, %bb.al ] ; 5 uses
  %i.it = phi ptr [ %.pre, %bb.am ], [ %i.an, %bb.al ] ; 3 uses
  %i.iu = phi ptr [ %.pre6.i37, %bb.am ], [ %i.il, %bb.al ] ; 3 uses
  %i.iv = phi ptr [ %.pre.i36, %bb.am ], [ %i.al, %bb.al ] ; 4 uses
  %i.iw = add nsw i64 %.pre-phi361, %4            ; 5 uses
  %i.ix = icmp sgt i64 %i.iw, -1
  br i1 %i.ix, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an
  %i.iy = icmp samesign ult i64 %i.iw, 32
  br i1 %i.iy, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.iz = getelementptr inbounds [16 x i8], ptr %i.iv, i64 %4
  br label %_ZNSt5dequeIN4absl12crc_internal12CrcCordState9PrefixCrcESaIS3_EE27_M_reserve_elements_at_backEm.exit

bb.aq:                                            ; preds = %bb.ao
  %i.ja = lshr i64 %i.iw, 5
  br label %bb.as

bb.ar:                                            ; preds = %bb.an
  %i.jb = ashr i64 %i.iw, 5
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.jc = phi i64 [ %i.ja, %bb.aq ], [ %i.jb, %bb.ar ] ; 2 uses
  %i.jd = getelementptr inbounds [8 x i8], ptr %i.is, i64 %i.jc ; 2 uses
  %i.je = load ptr, ptr %i.jd, align 8, !noalias !191 ; 3 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 512
  %i.jg = shl nsw i64 %i.jc, 5
  %i.jh = sub nsw i64 %i.iw, %i.jg
  %i.ji = getelementptr inbounds [16 x i8], ptr %i.je, i64 %i.jh
  br label %_ZNSt5dequeIN4absl12crc_internal12CrcCordState9PrefixCrcESaIS3_EE27_M_reserve_elements_at_backEm.exit

_ZNSt5dequeIN4absl12crc_internal12CrcCordState9PrefixCrcESaIS3_EE27_M_reserve_elements_at_backEm.exit: ; preds = %bb.ap, %bb.as
  %.sroa.5200.0 = phi ptr [ %i.it, %bb.ap ], [ %i.je, %bb.as ] ; 2 uses
  %.sroa.7.0 = phi ptr [ %i.iu, %bb.ap ], [ %i.jf, %bb.as ] ; 2 uses
  %.sroa.9205.0 = phi ptr [ %i.is, %bb.ap ], [ %i.jd, %bb.as ] ; 2 uses
  %storemerge.i.i.i35 = phi ptr [ %i.iz, %bb.ap ], [ %i.ji, %bb.as ] ; 2 uses
  %i.jj = sub i64 %i.as, %i.t                     ; 5 uses
  %i.jk = sub nsw i64 0, %i.jj
  %i.jl = ptrtoint ptr %i.iv to i64
  %i.jm = sub i64 %i.jl, %.pre-phi
  %i.jn = ashr exact i64 %i.jm, 4
  %i.jo = sub nsw i64 %i.jn, %i.jj                ; 5 uses
  %i.jp = icmp sgt i64 %i.jo, -1
  br i1 %i.jp, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %_ZNSt5dequeIN4absl12crc_internal12CrcCordState9PrefixCrcESaIS3_EE27_M_reserve_elements_at_backEm.exit
  %i.jq = icmp samesign ult i64 %i.jo, 32
  br i1 %i.jq, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.jr = getelementptr inbounds [16 x i8], ptr %i.iv, i64 %i.jk
  br label %_ZStmiRKSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_El.exit40

bb.av:                                            ; preds = %bb.at
  %i.js = lshr i64 %i.jo, 5
  br label %bb.ax

bb.aw:                                            ; preds = %_ZNSt5dequeIN4absl12crc_internal12CrcCordState9PrefixCrcESaIS3_EE27_M_reserve_elements_at_backEm.exit
  %i.jt = ashr i64 %i.jo, 5
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.ju = phi i64 [ %i.js, %bb.av ], [ %i.jt, %bb.aw ] ; 2 uses
  %i.jv = getelementptr inbounds [8 x i8], ptr %i.is, i64 %i.ju ; 2 uses
  %i.jw = load ptr, ptr %i.jv, align 8, !noalias !194 ; 3 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 512
  %i.jy = shl nsw i64 %i.ju, 5
  %i.jz = sub nsw i64 %i.jo, %i.jy
  %i.ka = getelementptr inbounds [16 x i8], ptr %i.jw, i64 %i.jz
  br label %_ZStmiRKSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_El.exit40

_ZStmiRKSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_El.exit40: ; preds = %bb.au, %bb.ax
  %.sroa.4192.0 = phi ptr [ %i.it, %bb.au ], [ %i.jw, %bb.ax ]
  %.sroa.6193.0 = phi ptr [ %i.iu, %bb.au ], [ %i.jx, %bb.ax ] ; 2 uses
  %.sroa.8.0 = phi ptr [ %i.is, %bb.au ], [ %i.jv, %bb.ax ] ; 2 uses
  %storemerge.i.i.i39 = phi ptr [ %i.jr, %bb.au ], [ %i.ka, %bb.ax ] ; 3 uses
  store ptr %storemerge.i.i.i39, ptr %1, align 8
  store ptr %.sroa.4192.0, ptr %i.n, align 8
  %.sroa.6193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %.sroa.6193.0, ptr %.sroa.6193.0..sroa_idx, align 8
  store ptr %.sroa.8.0, ptr %i.b, align 8
  %i.kb = icmp sgt i64 %i.jj, %4
  br i1 %i.kb, label %bb.ay, label %bb.bg

bb.ay:                                            ; preds = %_ZStmiRKSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_El.exit40
  %i.kc = load ptr, ptr %i.ac, align 8, !noalias !197 ; 5 uses
  %i.kd = load ptr, ptr %i.am, align 8, !noalias !197 ; 2 uses
  %i.ke = load ptr, ptr %i.ik, align 8, !noalias !197 ; 2 uses
  %i.kf = load ptr, ptr %i.ad, align 8, !noalias !197 ; 3 uses
  %i.kg = sub nsw i64 0, %4
  %i.kh = ptrtoint ptr %i.kc to i64
  %i.ki = ptrtoint ptr %i.kd to i64
  %i.kj = sub i64 %i.kh, %i.ki
  %i.kk = ashr exact i64 %i.kj, 4
  %i.kl = sub nsw i64 %i.kk, %4                   ; 5 uses
  %i.km = icmp sgt i64 %i.kl, -1
  br i1 %i.km, label %bb.az, label %bb.bc

bb.az:                                            ; preds = %bb.ay
  %i.kn = icmp samesign ult i64 %i.kl, 32
  br i1 %i.kn, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.ko = getelementptr inbounds [16 x i8], ptr %i.kc, i64 %i.kg
  br label %_ZStmiRKSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_El.exit42

bb.bb:                                            ; preds = %bb.az
  %i.kp = lshr i64 %i.kl, 5
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ay
  %i.kq = ashr i64 %i.kl, 5
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.kr = phi i64 [ %i.kp, %bb.bb ], [ %i.kq, %bb.bc ] ; 2 uses
  %i.ks = getelementptr inbounds [8 x i8], ptr %i.kf, i64 %i.kr ; 2 uses
  %i.kt = load ptr, ptr %i.ks, align 8, !noalias !197 ; 3 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 512
  %i.kv = shl nsw i64 %i.kr, 5
  %i.kw = sub nsw i64 %i.kl, %i.kv
  %i.kx = getelementptr inbounds [16 x i8], ptr %i.kt, i64 %i.kw
  br label %_ZStmiRKSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_El.exit42

_ZStmiRKSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_El.exit42: ; preds = %bb.ba, %bb.bd
  %.sroa.5186.0 = phi ptr [ %i.kd, %bb.ba ], [ %i.kt, %bb.bd ]
  %.sroa.9188.0 = phi ptr [ %i.ke, %bb.ba ], [ %i.ku, %bb.bd ] ; 2 uses
  %.sroa.13.0 = phi ptr [ %i.kf, %bb.ba ], [ %i.ks, %bb.bd ] ; 2 uses
  %storemerge.i.i.i41 = phi ptr [ %i.ko, %bb.ba ], [ %i.kx, %bb.bd ] ; 3 uses
  %i.ky = icmp eq ptr %storemerge.i.i.i41, %i.kc
  br i1 %i.ky, label %_ZSt22__uninitialized_move_aISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS4_PS4_ES7_SaIS4_EET0_T_SA_S9_RT1_.exit56, label %.lr.ph.i.i.i.i.i43

.lr.ph.i.i.i.i.i43:                               ; preds = %_ZStmiRKSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_El.exit42, %_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_EppEv.exit.i.i.i.i.i51
  %.sroa.04.0.i.i.i.i44 = phi ptr [ %.sroa.04.1.i.i.i.i48, %_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_EppEv.exit.i.i.i.i.i51 ], [ %storemerge.i.i.i41, %_ZStmiRKSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_El.exit42 ] ; 2 uses
  %.sroa.7.0.i.i.i.i45 = phi ptr [ %.sroa.7.1.i.i.i.i49, %_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_EppEv.exit.i.i.i.i.i51 ], [ %.sroa.9188.0, %_ZStmiRKSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_El.exit42 ] ; 2 uses
  %.sroa.10.0.i.i.i.i46 = phi ptr [ %.sroa.10.1.i.i.i.i50, %_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_EppEv.exit.i.i.i.i.i51 ], [ %.sroa.13.0, %_ZStmiRKSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_El.exit42 ] ; 2 uses
  %i.kz = phi ptr [ %i.lo, %_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_EppEv.exit.i.i.i.i.i51 ], [ %i.kc, %_ZStmiRKSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_El.exit42 ] ; 2 uses
  %i.la = phi ptr [ %i.ln, %_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_EppEv.exit.i.i.i.i.i51 ], [ %i.ke, %_ZStmiRKSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_El.exit42 ] ; 2 uses
  %i.lb = phi ptr [ %i.lm, %_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_EppEv.exit.i.i.i.i.i51 ], [ %i.kf, %_ZStmiRKSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_El.exit42 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kz, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.0.i.i.i.i44, i64 16, i1 false), !noalias !200
  %i.lc = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i.i.i44, i64 16 ; 2 uses
  %i.ld = icmp eq ptr %i.lc, %.sroa.7.0.i.i.i.i45
  br i1 %i.ld, label %bb.be, label %_ZNSt13move_iteratorISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS4_PS4_EEppEv.exit.i.i.i.i.i47

bb.be:                                            ; preds = %.lr.ph.i.i.i.i.i43
  %i.le = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i46, i64 8 ; 2 uses
  %i.lf = load ptr, ptr %i.le, align 8, !noalias !200 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 512
  br label %_ZNSt13move_iteratorISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS4_PS4_EEppEv.exit.i.i.i.i.i47

_ZNSt13move_iteratorISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS4_PS4_EEppEv.exit.i.i.i.i.i47: ; preds = %bb.be, %.lr.ph.i.i.i.i.i43
  %.sroa.04.1.i.i.i.i48 = phi ptr [ %i.lf, %bb.be ], [ %i.lc, %.lr.ph.i.i.i.i.i43 ] ; 2 uses
  %.sroa.7.1.i.i.i.i49 = phi ptr [ %i.lg, %bb.be ], [ %.sroa.7.0.i.i.i.i45, %.lr.ph.i.i.i.i.i43 ]
  %.sroa.10.1.i.i.i.i50 = phi ptr [ %i.le, %bb.be ], [ %.sroa.10.0.i.i.i.i46, %.lr.ph.i.i.i.i.i43 ]
  %i.lh = getelementptr inbounds nuw i8, ptr %i.kz, i64 16 ; 2 uses
  %i.li = icmp eq ptr %i.lh, %i.la
  br i1 %i.li, label %bb.bf, label %_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_EppEv.exit.i.i.i.i.i51

bb.bf:                                            ; preds = %_ZNSt13move_iteratorISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS4_PS4_EEppEv.exit.i.i.i.i.i47
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lb, i64 8 ; 2 uses
  %i.lk = load ptr, ptr %i.lj, align 8, !noalias !200 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 512
  br label %_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_EppEv.exit.i.i.i.i.i51

_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_EppEv.exit.i.i.i.i.i51: ; preds = %bb.bf, %_ZNSt13move_iteratorISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS4_PS4_EEppEv.exit.i.i.i.i.i47
  %i.lm = phi ptr [ %i.lb, %_ZNSt13move_iteratorISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS4_PS4_EEppEv.exit.i.i.i.i.i47 ], [ %i.lj, %bb.bf ]
  %i.ln = phi ptr [ %i.la, %_ZNSt13move_iteratorISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS4_PS4_EEppEv.exit.i.i.i.i.i47 ], [ %i.ll, %bb.bf ]
  %i.lo = phi ptr [ %i.lh, %_ZNSt13move_iteratorISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS4_PS4_EEppEv.exit.i.i.i.i.i47 ], [ %i.lk, %bb.bf ]
  %i.lp = icmp eq ptr %.sroa.04.1.i.i.i.i48, %i.kc
  br i1 %i.lp, label %_ZSt22__uninitialized_move_aISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS4_PS4_ES7_SaIS4_EET0_T_SA_S9_RT1_.exit56, label %.lr.ph.i.i.i.i.i43, !llvm.loop !135

_ZSt22__uninitialized_move_aISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS4_PS4_ES7_SaIS4_EET0_T_SA_S9_RT1_.exit56: ; preds = %_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_EppEv.exit.i.i.i.i.i51, %_ZStmiRKSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_El.exit42
  store ptr %storemerge.i.i.i35, ptr %i.ac, align 8
  store ptr %.sroa.5200.0, ptr %i.am, align 8
  store ptr %.sroa.7.0, ptr %i.ik, align 8
  store ptr %.sroa.9205.0, ptr %i.ad, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %16), !noalias !211
  call void @llvm.lifetime.start.p0(ptr nonnull %13), !noalias !214
  call void @llvm.lifetime.start.p0(ptr nonnull %14), !noalias !214
  call void @llvm.lifetime.start.p0(ptr nonnull %15), !noalias !214
  %i.lq = load <2 x ptr>, ptr %1, align 8
  store <2 x ptr> %i.lq, ptr %13, align 16, !noalias !217
  %i.lr = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.ls = load <2 x ptr>, ptr %.sroa.6193.0..sroa_idx, align 8
  store <2 x ptr> %i.ls, ptr %i.lr, align 16, !noalias !217
  store ptr %storemerge.i.i.i41, ptr %14, align 8, !noalias !217
  %i.lt = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %.sroa.5186.0, ptr %i.lt, align 8, !noalias !217
  %i.lu = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %.sroa.9188.0, ptr %i.lu, align 8, !noalias !217
  %i.lv = getelementptr inbounds nuw i8, ptr %14, i64 24
  store ptr %.sroa.13.0, ptr %i.lv, align 8, !noalias !217
  store ptr %i.iv, ptr %15, align 8, !noalias !217
  %i.lw = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %i.it, ptr %i.lw, align 8, !noalias !217
  %i.lx = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %i.iu, ptr %i.lx, align 8, !noalias !217
  %i.ly = getelementptr inbounds nuw i8, ptr %15, i64 24
  store ptr %i.is, ptr %i.ly, align 8, !noalias !217
  call void @_ZSt24__copy_move_backward_ditILb1EN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_St15_Deque_iteratorIS3_S4_S5_EET3_S6_IT0_T1_T2_ESC_S8_(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %16, ptr noundef nonnull dead_on_return %13, ptr noundef nonnull dead_on_return %14, ptr noundef nonnull dead_on_return %15), !noalias !214
  call void @llvm.lifetime.end.p0(ptr nonnull %13), !noalias !214
  call void @llvm.lifetime.end.p0(ptr nonnull %14), !noalias !214
  call void @llvm.lifetime.end.p0(ptr nonnull %15), !noalias !214
  call void @llvm.lifetime.end.p0(ptr nonnull %16), !noalias !211
  %i.lz = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ma = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %12), !noalias !220
  call void @llvm.lifetime.start.p0(ptr nonnull %9), !noalias !223
  call void @llvm.lifetime.start.p0(ptr nonnull %10), !noalias !223
  call void @llvm.lifetime.start.p0(ptr nonnull %11), !noalias !223
  %i.mb = load <2 x ptr>, ptr %2, align 8
  store <2 x ptr> %i.mb, ptr %9, align 16, !noalias !226
  %i.mc = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.md = load <2 x ptr>, ptr %i.lz, align 8
  store <2 x ptr> %i.md, ptr %i.mc, align 16, !noalias !226
  %i.me = load <2 x ptr>, ptr %3, align 8
  store <2 x ptr> %i.me, ptr %10, align 16, !noalias !226
  %i.mf = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.mg = load <2 x ptr>, ptr %i.ma, align 8
  store <2 x ptr> %i.mg, ptr %i.mf, align 16, !noalias !226
  %i.mh = load <2 x ptr>, ptr %1, align 8
  store <2 x ptr> %i.mh, ptr %11, align 16, !noalias !226
  %i.mi = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.mj = load <2 x ptr>, ptr %.sroa.6193.0..sroa_idx, align 8
  store <2 x ptr> %i.mj, ptr %i.mi, align 16, !noalias !226
  call void @_ZSt15__copy_move_ditILb0EN4absl12crc_internal12CrcCordState9PrefixCrcERKS3_PS4_St15_Deque_iteratorIS3_RS3_PS3_EET3_S7_IT0_T1_T2_ESF_SB_(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %12, ptr noundef nonnull dead_on_return %9, ptr noundef nonnull dead_on_return %10, ptr noundef nonnull dead_on_return %11), !noalias !223
  call void @llvm.lifetime.end.p0(ptr nonnull %9), !noalias !223
  call void @llvm.lifetime.end.p0(ptr nonnull %10), !noalias !223
  call void @llvm.lifetime.end.p0(ptr nonnull %11), !noalias !223
  call void @llvm.lifetime.end.p0(ptr nonnull %12), !noalias !220
  br label %bb.bq

bb.bg:                                            ; preds = %_ZStmiRKSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_El.exit40
  %i.mk = load ptr, ptr %2, align 8               ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.mm = load ptr, ptr %i.ml, align 8            ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
end_hunk_0
