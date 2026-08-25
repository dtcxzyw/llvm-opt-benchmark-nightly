Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AMDGPULateCodeGenPrepare?download=true
inline.NumInlined: 2136
inline.NumDeleted: 1321
begin_hunk_0_@_ZN12_GLOBAL__N_124AMDGPULateCodeGenPrepare3runEv:bb.a
  %i.bto = load ptr, ptr %i.dv, align 8, !tbaa !362, !noalias !612 ; 5 uses
  %i.btp = load ptr, ptr %i.dw, align 8, !tbaa !363, !noalias !612 ; 5 uses
  %i.btq = load i32, ptr %i.dx, align 4, !tbaa !361, !noalias !612 ; 2 uses
  %i.btr = icmp ne i32 %i.btq, 0
  call void @llvm.assume(i1 %i.btr)
  %i.bts = add i32 %i.btq, -1                     ; 2 uses
  %i.btt = ptrtoint ptr %i.bsc to i64
  %i.btu = mul i64 %i.btt, -4658895280553007687   ; 2 uses
  %i.btv = lshr i64 %i.btu, 31
  %i.btw = xor i64 %i.btv, %i.btu
  %i.btx = trunc i64 %i.btw to i32
  %i.bty = and i32 %i.bts, %i.btx                 ; 3 uses
  %i.btz = zext i32 %i.bty to i64                 ; 2 uses
  %i.bua = getelementptr inbounds nuw [32 x i8], ptr %i.bto, i64 %i.btz ; 2 uses
  %i.bub = lshr i64 %i.btz, 5
  %i.buc = getelementptr inbounds nuw [4 x i8], ptr %i.btp, i64 %i.bub
  %i.bud = load i32, ptr %i.buc, align 4, !tbaa !364
  %i.bue = and i32 %i.bty, 31
  %i.buf = lshr i32 %i.bud, %i.bue
  %i.bug = trunc i32 %i.buf to i1
  br i1 %i.bug, label %.lr.ph.i661.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS1_IPKNS_5ValueEPS4_NS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEENS8_IS3_vEENSB_IS3_SD_EEEES3_SD_SE_SF_E22findBucketForInsertionIS3_EEPSF_RKT_SJ_.exit.i550.i, !prof !480

.lr.ph.i661.i:                                    ; preds = %bb.ht, %bb.hu
  %i.buh = phi ptr [ %i.bun, %bb.hu ], [ %i.bua, %bb.ht ] ; 2 uses
  %.01624.i662.i = phi i32 [ %i.bul, %bb.hu ], [ %i.bty, %bb.ht ]
  %i.bui = load ptr, ptr %i.buh, align 8, !tbaa !545
  %i.buj = icmp eq ptr %i.bsc, %i.bui
  br i1 %i.buj, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS1_IPKNS_5ValueEPS4_NS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEENS8_IS3_vEENSB_IS3_SD_EEEES3_SD_SE_SF_E22findBucketForInsertionIS3_EEPSF_RKT_SJ_.exit.i550.i, label %bb.hu, !prof !436

bb.hu:                                            ; preds = %.lr.ph.i661.i
  %i.buk = add nuw i32 %.01624.i662.i, 1
  %i.bul = and i32 %i.buk, %i.bts                 ; 3 uses
  %i.bum = zext i32 %i.bul to i64                 ; 2 uses
  %i.bun = getelementptr inbounds nuw [32 x i8], ptr %i.bto, i64 %i.bum ; 2 uses
  %i.buo = lshr i64 %i.bum, 5
  %i.bup = getelementptr inbounds nuw [4 x i8], ptr %i.btp, i64 %i.buo
  %i.buq = load i32, ptr %i.bup, align 4, !tbaa !364
  %i.bur = and i32 %i.bul, 31
  %i.bus = lshr i32 %i.buq, %i.bur
  %i.but = trunc i32 %i.bus to i1
  br i1 %i.but, label %.lr.ph.i661.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS1_IPKNS_5ValueEPS4_NS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEENS8_IS3_vEENSB_IS3_SD_EEEES3_SD_SE_SF_E22findBucketForInsertionIS3_EEPSF_RKT_SJ_.exit.i550.i, !prof !482, !llvm.loop !595

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS1_IPKNS_5ValueEPS4_NS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEENS8_IS3_vEENSB_IS3_SD_EEEES3_SD_SE_SF_E22findBucketForInsertionIS3_EEPSF_RKT_SJ_.exit.i550.i: ; preds = %bb.hu, %.lr.ph.i661.i, %bb.ht, %.loopexit.i544.i
  %i.buu = phi ptr [ %i.bsd, %.loopexit.i544.i ], [ %i.bto, %bb.ht ], [ %i.bto, %.lr.ph.i661.i ], [ %i.bto, %bb.hu ]
  %i.buv = phi ptr [ %i.bse, %.loopexit.i544.i ], [ %i.btp, %bb.ht ], [ %i.btp, %.lr.ph.i661.i ], [ %i.btp, %bb.hu ]
  %i.buw = phi ptr [ %.lcssa28.sink.i.ph.i545.i, %.loopexit.i544.i ], [ %i.bua, %bb.ht ], [ %i.bun, %bb.hu ], [ %i.buh, %.lr.ph.i661.i ] ; 4 uses
  %i.bux = ptrtoint ptr %i.buw to i64
  %i.buy = ptrtoint ptr %i.buu to i64
  %i.buz = sub i64 %i.bux, %i.buy
  %i.bva = ashr exact i64 %i.buz, 5               ; 2 uses
  %i.bvb = trunc i64 %i.bva to i32
  %i.bvc = and i32 %i.bvb, 31
  %i.bvd = shl nuw i32 1, %i.bvc
  %i.bve = lshr i64 %i.bva, 5
  %i.bvf = getelementptr inbounds nuw [4 x i8], ptr %i.buv, i64 %i.bve ; 2 uses
  %i.bvg = load i32, ptr %i.bvf, align 4, !tbaa !364
  %i.bvh = or i32 %i.bvd, %i.bvg
  store i32 %i.bvh, ptr %i.bvf, align 4, !tbaa !364
  %i.bvi = load i32, ptr %i.dy, align 8, !tbaa !596
  %i.bvj = add i32 %i.bvi, 1
  store i32 %i.bvj, ptr %i.dy, align 8, !tbaa !596
  store ptr %i.bsc, ptr %i.buw, align 8, !tbaa !545
  %i.bvk = getelementptr inbounds nuw i8, ptr %i.buw, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bvk, i8 0, i64 24, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS1_IPKNS_5ValueEPS4_NS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEENS8_IS3_vEENSB_IS3_SD_EEEES3_SD_SE_SF_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPSF_bEOT_DpOT0_.exit557.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS1_IPKNS_5ValueEPS4_NS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEENS8_IS3_vEENSB_IS3_SD_EEEES3_SD_SE_SF_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPSF_bEOT_DpOT0_.exit557.loopexit.i: ; preds = %.lr.ph.i.i555.i
  %.phi.trans.insert1056.i = getelementptr inbounds nuw i8, ptr %i.bsw, i64 8
  %.pre1057.i = load ptr, ptr %.phi.trans.insert1056.i, align 8, !tbaa !366, !noalias !617
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS1_IPKNS_5ValueEPS4_NS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEENS8_IS3_vEENSB_IS3_SD_EEEES3_SD_SE_SF_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPSF_bEOT_DpOT0_.exit557.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS1_IPKNS_5ValueEPS4_NS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEENS8_IS3_vEENSB_IS3_SD_EEEES3_SD_SE_SF_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPSF_bEOT_DpOT0_.exit557.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS1_IPKNS_5ValueEPS4_NS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEENS8_IS3_vEENSB_IS3_SD_EEEES3_SD_SE_SF_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPSF_bEOT_DpOT0_.exit557.loopexit.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS1_IPKNS_5ValueEPS4_NS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEENS8_IS3_vEENSB_IS3_SD_EEEES3_SD_SE_SF_E22findBucketForInsertionIS3_EEPSF_RKT_SJ_.exit.i550.i
  %i.bvl = phi ptr [ null, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS1_IPKNS_5ValueEPS4_NS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEENS8_IS3_vEENSB_IS3_SD_EEEES3_SD_SE_SF_E22findBucketForInsertionIS3_EEPSF_RKT_SJ_.exit.i550.i ], [ %.pre1057.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS1_IPKNS_5ValueEPS4_NS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEENS8_IS3_vEENSB_IS3_SD_EEEES3_SD_SE_SF_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPSF_bEOT_DpOT0_.exit557.loopexit.i ] ; 3 uses
  %.sroa.0.0.i551.i = phi ptr [ %i.buw, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS1_IPKNS_5ValueEPS4_NS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEENS8_IS3_vEENSB_IS3_SD_EEEES3_SD_SE_SF_E22findBucketForInsertionIS3_EEPSF_RKT_SJ_.exit.i550.i ], [ %i.bsw, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS1_IPKNS_5ValueEPS4_NS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEENS8_IS3_vEENSB_IS3_SD_EEEES3_SD_SE_SF_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPSF_bEOT_DpOT0_.exit557.loopexit.i ] ; 4 uses
  %i.bvm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i551.i, i64 8 ; 2 uses
  %i.bvn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i551.i, i64 16 ; 2 uses
  %i.bvo = load ptr, ptr %i.bvn, align 8, !tbaa !479, !noalias !617 ; 3 uses
  %i.bvp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i551.i, i64 28 ; 2 uses
  %i.bvq = load i32, ptr %i.bvp, align 4, !tbaa !365, !noalias !617 ; 4 uses
  %i.bvr = icmp eq i32 %i.bvq, 0
  br i1 %i.bvr, label %.loopexit.i558.i, label %bb.hv

bb.hv:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS1_IPKNS_5ValueEPS4_NS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEENS8_IS3_vEENSB_IS3_SD_EEEES3_SD_SE_SF_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPSF_bEOT_DpOT0_.exit557.i
  %i.bvs = add i32 %i.bvq, -1                     ; 2 uses
  %i.bvt = and i32 %i.bvs, %i.brg                 ; 3 uses
  %i.bvu = zext i32 %i.bvt to i64                 ; 2 uses
  %i.bvv = getelementptr inbounds nuw [16 x i8], ptr %i.bvl, i64 %i.bvu ; 2 uses
  %i.bvw = lshr i64 %i.bvu, 5
  %i.bvx = getelementptr inbounds nuw [4 x i8], ptr %i.bvo, i64 %i.bvw
  %i.bvy = load i32, ptr %i.bvx, align 4, !tbaa !364
  %i.bvz = and i32 %i.bvt, 31
  %i.bwa = lshr i32 %i.bvy, %i.bvz
  %i.bwb = trunc i32 %i.bwa to i1
  br i1 %i.bwb, label %.lr.ph.i.i569.i, label %.loopexit.i558.i, !prof !480

.lr.ph.i.i569.i:                                  ; preds = %bb.hv, %bb.hw
  %i.bwc = phi ptr [ %i.bwi, %bb.hw ], [ %i.bvv, %bb.hv ] ; 2 uses
  %.01624.i.i570.i = phi i32 [ %i.bwg, %bb.hw ], [ %i.bvt, %bb.hv ]
  %i.bwd = load ptr, ptr %i.bwc, align 8, !tbaa !481
  %i.bwe = icmp eq ptr %i.bnd, %i.bwd
  br i1 %i.bwe, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_.exit.loopexit.i, label %bb.hw, !prof !436

bb.hw:                                            ; preds = %.lr.ph.i.i569.i
  %i.bwf = add nuw i32 %.01624.i.i570.i, 1
  %i.bwg = and i32 %i.bwf, %i.bvs                 ; 3 uses
  %i.bwh = zext i32 %i.bwg to i64                 ; 2 uses
  %i.bwi = getelementptr inbounds nuw [16 x i8], ptr %i.bvl, i64 %i.bwh ; 2 uses
  %i.bwj = lshr i64 %i.bwh, 5
  %i.bwk = getelementptr inbounds nuw [4 x i8], ptr %i.bvo, i64 %i.bwj
  %i.bwl = load i32, ptr %i.bwk, align 4, !tbaa !364
  %i.bwm = and i32 %i.bwg, 31
  %i.bwn = lshr i32 %i.bwl, %i.bwm
  %i.bwo = trunc i32 %i.bwn to i1
  br i1 %i.bwo, label %.lr.ph.i.i569.i, label %.loopexit.i558.i, !prof !482, !llvm.loop !506

.loopexit.i558.i:                                 ; preds = %bb.hw, %bb.hv, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS1_IPKNS_5ValueEPS4_NS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEENS8_IS3_vEENSB_IS3_SD_EEEES3_SD_SE_SF_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPSF_bEOT_DpOT0_.exit557.i
  %.lcssa28.sink.i.ph.i559.i = phi ptr [ %i.bvv, %bb.hv ], [ null, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS1_IPKNS_5ValueEPS4_NS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEENS8_IS3_vEENSB_IS3_SD_EEEES3_SD_SE_SF_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPSF_bEOT_DpOT0_.exit557.i ], [ %i.bwi, %bb.hw ]
  %i.bwp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i551.i, i64 24 ; 3 uses
  %i.bwq = load i32, ptr %i.bwp, align 8, !tbaa !507
  %i.bwr = shl i32 %i.bwq, 2
  %i.bws = add i32 %i.bwr, 4
  %i.bwt = mul i32 %i.bvq, 3
  %.not.i.i560.i = icmp ult i32 %i.bws, %i.bwt
  br i1 %.not.i.i560.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit.i564.i, label %bb.hx, !prof !436

bb.hx:                                            ; preds = %.loopexit.i558.i
  %i.bwu = shl i32 %i.bvq, 1
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %i.bvm, i32 noundef %i.bwu)
  %i.bwv = load ptr, ptr %i.bvm, align 8, !tbaa !366, !noalias !622 ; 5 uses
  %i.bww = load ptr, ptr %i.bvn, align 8, !tbaa !479, !noalias !622 ; 5 uses
  %i.bwx = load i32, ptr %i.bvp, align 4, !tbaa !365, !noalias !622 ; 2 uses
  %i.bwy = icmp ne i32 %i.bwx, 0
  call void @llvm.assume(i1 %i.bwy)
  %i.bwz = add i32 %i.bwx, -1                     ; 2 uses
  %i.bxa = and i32 %i.bwz, %i.brg                 ; 3 uses
  %i.bxb = zext i32 %i.bxa to i64                 ; 2 uses
  %i.bxc = getelementptr inbounds nuw [16 x i8], ptr %i.bwv, i64 %i.bxb ; 2 uses
  %i.bxd = lshr i64 %i.bxb, 5
  %i.bxe = getelementptr inbounds nuw [4 x i8], ptr %i.bww, i64 %i.bxd
  %i.bxf = load i32, ptr %i.bxe, align 4, !tbaa !364
  %i.bxg = and i32 %i.bxa, 31
  %i.bxh = lshr i32 %i.bxf, %i.bxg
  %i.bxi = trunc i32 %i.bxh to i1
  br i1 %i.bxi, label %.lr.ph.i667.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit.i564.i, !prof !480

.lr.ph.i667.i:                                    ; preds = %bb.hx, %bb.hy
  %i.bxj = phi ptr [ %i.bxp, %bb.hy ], [ %i.bxc, %bb.hx ] ; 2 uses
  %.01624.i668.i = phi i32 [ %i.bxn, %bb.hy ], [ %i.bxa, %bb.hx ]
  %i.bxk = load ptr, ptr %i.bxj, align 8, !tbaa !481
  %i.bxl = icmp eq ptr %i.bnd, %i.bxk
  br i1 %i.bxl, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit.i564.i, label %bb.hy, !prof !436

bb.hy:                                            ; preds = %.lr.ph.i667.i
  %i.bxm = add nuw i32 %.01624.i668.i, 1
  %i.bxn = and i32 %i.bxm, %i.bwz                 ; 3 uses
  %i.bxo = zext i32 %i.bxn to i64                 ; 2 uses
  %i.bxp = getelementptr inbounds nuw [16 x i8], ptr %i.bwv, i64 %i.bxo ; 2 uses
  %i.bxq = lshr i64 %i.bxo, 5
  %i.bxr = getelementptr inbounds nuw [4 x i8], ptr %i.bww, i64 %i.bxq
  %i.bxs = load i32, ptr %i.bxr, align 4, !tbaa !364
  %i.bxt = and i32 %i.bxn, 31
  %i.bxu = lshr i32 %i.bxs, %i.bxt
  %i.bxv = trunc i32 %i.bxu to i1
  br i1 %i.bxv, label %.lr.ph.i667.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit.i564.i, !prof !482, !llvm.loop !506

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit.i564.i: ; preds = %bb.hy, %.lr.ph.i667.i, %bb.hx, %.loopexit.i558.i
  %i.bxw = phi ptr [ %i.bvl, %.loopexit.i558.i ], [ %i.bwv, %bb.hx ], [ %i.bwv, %.lr.ph.i667.i ], [ %i.bwv, %bb.hy ]
  %i.bxx = phi ptr [ %i.bvo, %.loopexit.i558.i ], [ %i.bww, %bb.hx ], [ %i.bww, %.lr.ph.i667.i ], [ %i.bww, %bb.hy ]
  %i.bxy = phi ptr [ %.lcssa28.sink.i.ph.i559.i, %.loopexit.i558.i ], [ %i.bxc, %bb.hx ], [ %i.bxp, %bb.hy ], [ %i.bxj, %.lr.ph.i667.i ] ; 3 uses
  %i.bxz = ptrtoint ptr %i.bxy to i64
  %i.bya = ptrtoint ptr %i.bxw to i64
  %i.byb = sub i64 %i.bxz, %i.bya
  %i.byc = ashr exact i64 %i.byb, 4               ; 2 uses
  %i.byd = trunc i64 %i.byc to i32
  %i.bye = and i32 %i.byd, 31
  %i.byf = shl nuw i32 1, %i.bye
  %i.byg = lshr i64 %i.byc, 5
  %i.byh = getelementptr inbounds nuw [4 x i8], ptr %i.bxx, i64 %i.byg ; 2 uses
  %i.byi = load i32, ptr %i.byh, align 4, !tbaa !364
  %i.byj = or i32 %i.byf, %i.byi
  store i32 %i.byj, ptr %i.byh, align 4, !tbaa !364
  %i.byk = load i32, ptr %i.bwp, align 8, !tbaa !507
  %i.byl = add i32 %i.byk, 1
  store i32 %i.byl, ptr %i.bwp, align 8, !tbaa !507
  store ptr %i.bnd, ptr %i.bxy, align 8, !tbaa !481
  %i.bym = getelementptr inbounds nuw i8, ptr %i.bxy, i64 8
  store ptr null, ptr %i.bym, align 8, !tbaa !481
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_.exit.loopexit.i: ; preds = %.lr.ph.i.i569.i
  %.phi.trans.insert1058.i = getelementptr inbounds nuw i8, ptr %i.bwc, i64 8
  %.pre1059.i = load ptr, ptr %.phi.trans.insert1058.i, align 8, !tbaa !481
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_.exit.i

.critedge.i:                                      ; preds = %bb.hl, %bb.hq, %bb.hp, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS1_IPKNS_5ValueEPS4_NS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEENS8_IS3_vEENSB_IS3_SD_EEEES3_SD_SE_SF_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPSF_bEOT_DpOT0_.exit.i, %bb.hk, %bb.hj
  %i.byn = load ptr, ptr %i.bln, align 8, !tbaa !418
  %i.byo = call { ptr, i64 } @_ZNK4llvm10BasicBlock16getFirstNonPHIItEv(ptr noundef nonnull align 8 dereferenceable(80) %i.byn) #17 ; 2 uses
  %.fca.0.extract1.i496.i = extractvalue { ptr, i64 } %i.byo, 0 ; 4 uses
  %.fca.1.extract2.i497.i = extractvalue { ptr, i64 } %i.byo, 1
  %.not.i.i498.i = icmp eq ptr %.fca.0.extract1.i496.i, null
  %51 = trunc i64 %.fca.1.extract2.i497.i to i16
  %52 = and i16 %51, -256
  %53 = or disjoint i16 %52, 1
  %.sroa.2.0.extract.trunc.i = select i1 %.not.i.i498.i, i16 1, i16 %53
  %i.byp = load ptr, ptr %.sroa.0716.0973.i, align 8, !tbaa !378 ; 6 uses
  %i.byq = load i8, ptr %i.byp, align 8, !tbaa !376 ; 2 uses
  %i.byr = icmp ult i8 %i.byq, 30
  %i.bys = icmp eq i8 %i.byq, 87
  %or.cond862.i = or i1 %i.byr, %i.bys
  br i1 %or.cond862.i, label %bb.ia, label %bb.hz

bb.hz:                                            ; preds = %.critedge.i
  %i.byt = load ptr, ptr %i.bln, align 8, !tbaa !418
  %i.byu = getelementptr inbounds nuw i8, ptr %i.byp, i64 40
  %i.byv = load ptr, ptr %i.byu, align 8, !tbaa !418
  %i.byw = icmp eq ptr %i.byt, %i.byv
  br i1 %i.byw, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_.exit.i, label %bb.ia

bb.ia:                                            ; preds = %bb.hz, %.critedge.i
  %i.byx = getelementptr inbounds nuw i8, ptr %i.byp, i64 8
  %i.byy = load ptr, ptr %i.byx, align 8, !tbaa !382 ; 10 uses
  %i.byz = load ptr, ptr %i.o, align 8, !tbaa !366, !noalias !627
  %i.bza = load ptr, ptr %i.ce, align 8, !tbaa !479, !noalias !627 ; 2 uses
  %i.bzb = load i32, ptr %i.cf, align 4, !tbaa !365, !noalias !627 ; 3 uses
  %i.bzc = icmp eq i32 %i.bzb, 0
  br i1 %i.bzc, label %.loopexit.i571.i, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  %i.bzd = add i32 %i.bzb, -1                     ; 2 uses
  %i.bze = ptrtoint ptr %i.byp to i64
  %i.bzf = mul i64 %i.bze, -4658895280553007687   ; 2 uses
  %i.bzg = lshr i64 %i.bzf, 31
  %i.bzh = xor i64 %i.bzg, %i.bzf
  %i.bzi = trunc i64 %i.bzh to i32
  %i.bzj = and i32 %i.bzd, %i.bzi                 ; 3 uses
  %i.bzk = zext i32 %i.bzj to i64                 ; 2 uses
  %i.bzl = lshr i64 %i.bzk, 5
  %i.bzm = getelementptr inbounds nuw [4 x i8], ptr %i.bza, i64 %i.bzl
  %i.bzn = load i32, ptr %i.bzm, align 4, !tbaa !364
  %i.bzo = and i32 %i.bzj, 31
  %i.bzp = lshr i32 %i.bzn, %i.bzo
  %i.bzq = trunc i32 %i.bzp to i1
  br i1 %i.bzq, label %.lr.ph.i.i582.i, label %.loopexit.i571.i, !prof !480

.lr.ph.i.i582.i:                                  ; preds = %bb.ib, %bb.ic
  %.pn.i = phi i64 [ %i.bzw, %bb.ic ], [ %i.bzk, %bb.ib ]
  %.01624.i.i583.i = phi i32 [ %i.bzv, %bb.ic ], [ %i.bzj, %bb.ib ]
  %i.bzr = getelementptr inbounds nuw [16 x i8], ptr %i.byz, i64 %.pn.i ; 2 uses
  %i.bzs = load ptr, ptr %i.bzr, align 8, !tbaa !481
  %i.bzt = icmp eq ptr %i.byp, %i.bzs
  br i1 %i.bzt, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E24lookupOrInsertIntoBucketIS4_JEEESt4pairIPSA_bEOT_DpOT0_.exit584.loopexit.i, label %bb.ic, !prof !436

bb.ic:                                            ; preds = %.lr.ph.i.i582.i
  %i.bzu = add nuw i32 %.01624.i.i583.i, 1
  %i.bzv = and i32 %i.bzu, %i.bzd                 ; 3 uses
  %i.bzw = zext i32 %i.bzv to i64                 ; 2 uses
  %i.bzx = lshr i64 %i.bzw, 5
  %i.bzy = getelementptr inbounds nuw [4 x i8], ptr %i.bza, i64 %i.bzx
  %i.bzz = load i32, ptr %i.bzy, align 4, !tbaa !364
  %i.caa = and i32 %i.bzv, 31
  %i.cab = lshr i32 %i.bzz, %i.caa
  %i.cac = trunc i32 %i.cab to i1
  br i1 %i.cac, label %.lr.ph.i.i582.i, label %.loopexit.i571.i, !prof !482, !llvm.loop !506

.loopexit.i571.i:                                 ; preds = %bb.ia, %bb.ib, %bb.ic
  %i.cad = shl i32 %i.bzb, 1
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %i.o, i32 noundef %i.cad)
  unreachable

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E24lookupOrInsertIntoBucketIS4_JEEESt4pairIPSA_bEOT_DpOT0_.exit584.loopexit.i: ; preds = %.lr.ph.i.i582.i
  %.phi.trans.insert1060.i = getelementptr inbounds nuw i8, ptr %i.bzr, i64 8
  %.pre1061.i = load ptr, ptr %.phi.trans.insert1060.i, align 8, !tbaa !481 ; 11 uses
  %i.cae = load ptr, ptr %i.bln, align 8, !tbaa !418 ; 3 uses
  %i.caf = load ptr, ptr %i.i, align 8, !tbaa !484, !nonnull !19, !align !26
  %i.cag = getelementptr inbounds nuw i8, ptr %.pre1061.i, i64 8 ; 5 uses
  %i.cah = load ptr, ptr %i.cag, align 8, !tbaa !382
  %i.cai = call { i64, i8 } @_ZNK4llvm10DataLayout17getTypeSizeInBitsEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.caf, ptr noundef %i.cah) ; 2 uses
  %.fca.0.extract7.i.i = extractvalue { i64, i8 } %i.cai, 0 ; 2 uses
  %.fca.1.extract8.i.i = extractvalue { i64, i8 } %i.cai, 1 ; 2 uses
  %i.caj = load ptr, ptr %i.i, align 8, !tbaa !484, !nonnull !19, !align !26
  %i.cak = call { i64, i8 } @_ZNK4llvm10DataLayout17getTypeSizeInBitsEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.caj, ptr noundef %i.byy) ; 2 uses
  %.fca.0.extract.i501.i = extractvalue { i64, i8 } %i.cak, 0 ; 2 uses
  %.fca.1.extract.i502.i = extractvalue { i64, i8 } %i.cak, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dz, i8 0, i64 16, i1 false)
  %i.cal = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm10BasicBlock10getContextEv(ptr noundef nonnull align 8 dereferenceable(80) %i.cae) #17
  store ptr null, ptr %25, align 8, !tbaa !395
  store ptr %i.cal, ptr %i.ec, align 8, !tbaa !398
  store ptr %i.ea, ptr %i.ed, align 8, !tbaa !399
  store ptr %i.eb, ptr %i.ee, align 8, !tbaa !401
  store ptr null, ptr %i.ef, align 8, !tbaa !403
  store i32 0, ptr %i.eg, align 8, !tbaa !414
  store i8 0, ptr %i.eh, align 4, !tbaa !415
  store i8 2, ptr %i.ei, align 1, !tbaa !416
  store i8 7, ptr %i.ej, align 2, !tbaa !417
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm14ConstantFolderE, i64 16), ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm24IRBuilderDefaultInserterE, i64 16)>, ptr %i.ea, align 8, !tbaa !8
  store ptr %i.cae, ptr %i.ek, align 8, !tbaa !420
  store ptr %.fca.0.extract1.i496.i, ptr %i.el, align 8
  store i16 %.sroa.2.0.extract.trunc.i, ptr %.sroa.45.0..sroa_idx.i.i.i503.i, align 8
  %i.cam = getelementptr inbounds nuw i8, ptr %i.cae, i64 48
  %.not.i.i.i505.i = icmp eq ptr %.fca.0.extract1.i496.i, %i.cam
  br i1 %.not.i.i.i505.i, label %_ZN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEC2EPNS_10BasicBlockENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ES4_EELb0ELb0EEEPNS_6MDNodeENS_8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEEE.exit.i506.i, label %bb.id

bb.id:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E24lookupOrInsertIntoBucketIS4_JEEESt4pairIPSA_bEOT_DpOT0_.exit584.loopexit.i
  %i.can = getelementptr inbounds i8, ptr %.fca.0.extract1.i496.i, i64 -24
  %i.cao = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %i.can) #17
  %i.cap = load i64, ptr %i.cao, align 8, !tbaa !421
  store i64 %i.cap, ptr %25, align 8, !tbaa !421
  br label %_ZN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEC2EPNS_10BasicBlockENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ES4_EELb0ELb0EEEPNS_6MDNodeENS_8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEEE.exit.i506.i

_ZN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEC2EPNS_10BasicBlockENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ES4_EELb0ELb0EEEPNS_6MDNodeENS_8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEEE.exit.i506.i: ; preds = %bb.id, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E24lookupOrInsertIntoBucketIS4_JEEESt4pairIPSA_bEOT_DpOT0_.exit584.loopexit.i
  %i.caq = icmp eq i64 %.fca.0.extract7.i.i, %.fca.0.extract.i501.i
  %i.car = icmp eq i8 %.fca.1.extract8.i.i, %.fca.1.extract.i502.i
  %i.cas = select i1 %i.caq, i1 %i.car, i1 false
  br i1 %i.cas, label %bb.ie, label %bb.ik

bb.ie:                                            ; preds = %_ZN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEC2EPNS_10BasicBlockENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ES4_EELb0ELb0EEEPNS_6MDNodeENS_8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEEE.exit.i506.i
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #17
  %i.cat = call { ptr, i64 } @_ZNK4llvm5Value7getNameEv(ptr noundef nonnull align 8 dereferenceable(24) %.pre1061.i) #17 ; 2 uses
  %i.cau = extractvalue { ptr, i64 } %i.cat, 0
  %i.cav = extractvalue { ptr, i64 } %i.cat, 1
  store i8 5, ptr %i.ex, align 8, !tbaa !423, !alias.scope !632
  store i8 3, ptr %i.ey, align 1, !tbaa !426, !alias.scope !632
  store ptr %i.cau, ptr %26, align 8, !tbaa !392, !alias.scope !632
  store i64 %i.cav, ptr %i.ez, align 8, !tbaa !392, !alias.scope !632
  store ptr @.str.5, ptr %i.fa, align 8, !tbaa !392, !alias.scope !632
  %i.caw = load ptr, ptr %i.cag, align 8, !tbaa !382
  %i.cax = icmp eq ptr %i.caw, %i.byy
  br i1 %i.cax, label %_ZN4llvm13IRBuilderBase10CreateCastENS_11Instruction7CastOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineEPNS_6MDNodeENS_9FMFSourceE.exit608.i, label %bb.if

bb.if:                                            ; preds = %bb.ie
  %i.cay = load ptr, ptr %i.ed, align 8, !tbaa !429, !nonnull !19, !align !26 ; 2 uses
  %i.caz = load ptr, ptr %i.cay, align 8, !tbaa !8
  %i.cba = getelementptr inbounds nuw i8, ptr %i.caz, i64 120
  %i.cbb = load ptr, ptr %i.cba, align 8
  %i.cbc = call noundef ptr %i.cbb(ptr noundef nonnull align 8 dereferenceable(8) %i.cay, i32 noundef 51, ptr noundef nonnull %.pre1061.i, ptr noundef %i.byy) #17, !inline_history !635 ; 2 uses
  %.not.not.i600.i = icmp eq ptr %i.cbc, null
  br i1 %.not.not.i600.i, label %bb.ig, label %_ZN4llvm13IRBuilderBase10CreateCastENS_11Instruction7CastOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineEPNS_6MDNodeENS_9FMFSourceE.exit608.i

bb.ig:                                            ; preds = %bb.if
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #17
  store i16 257, ptr %i.fb, align 8
  %i.cbd = call noundef ptr @_ZN4llvm8CastInst6CreateENS_11Instruction7CastOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineENS_14InsertPositionE(i32 noundef 51, ptr noundef nonnull %.pre1061.i, ptr noundef %i.byy, ptr noundef nonnull align 8 dereferenceable(34) %19, ptr null, i64 0) #17 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #17
  %i.cbe = call noundef zeroext i1 @_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(72) %i.cbd)
  br i1 %i.cbe, label %bb.ih, label %bb.ij

bb.ih:                                            ; preds = %bb.ig
  %.sroa.0.0.copyload.i605.i = load i32, ptr %i.eg, align 8, !tbaa !364
  %i.cbf = load ptr, ptr %i.ef, align 8           ; 2 uses
  %.not9.i.i606.i = icmp eq ptr %i.cbf, null
  br i1 %.not9.i.i606.i, label %_ZNK4llvm13IRBuilderBase10setFPAttrsEPNS_11InstructionEPNS_6MDNodeENS_13FastMathFlagsE.exit.i607.i, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  call void @_ZN4llvm11Instruction11setMetadataEjPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(72) %i.cbd, i32 noundef 3, ptr noundef nonnull %i.cbf) #17
  br label %_ZNK4llvm13IRBuilderBase10setFPAttrsEPNS_11InstructionEPNS_6MDNodeENS_13FastMathFlagsE.exit.i607.i

_ZNK4llvm13IRBuilderBase10setFPAttrsEPNS_11InstructionEPNS_6MDNodeENS_13FastMathFlagsE.exit.i607.i: ; preds = %bb.ii, %bb.ih
  call void @_ZN4llvm11Instruction16setFastMathFlagsENS_13FastMathFlagsE(ptr noundef nonnull align 8 dereferenceable(72) %i.cbd, i32 %.sroa.0.0.copyload.i605.i) #17
  br label %bb.ij

bb.ij:                                            ; preds = %_ZNK4llvm13IRBuilderBase10setFPAttrsEPNS_11InstructionEPNS_6MDNodeENS_13FastMathFlagsE.exit.i607.i, %bb.ig
  %i.cbg = load ptr, ptr %i.ee, align 8, !tbaa !427, !nonnull !19, !align !26 ; 2 uses
  %.sroa.0.0.copyload.i.i602.i = load ptr, ptr %i.el, align 8
  %.sroa.2.0.copyload.i.i604.i = load i64, ptr %.sroa.45.0..sroa_idx.i.i.i503.i, align 8
  %i.cbh = load ptr, ptr %i.cbg, align 8, !tbaa !8
  %i.cbi = getelementptr inbounds nuw i8, ptr %i.cbh, i64 16
  %i.cbj = load ptr, ptr %i.cbi, align 8
  call void %i.cbj(ptr noundef nonnull align 8 dereferenceable(8) %i.cbg, ptr noundef nonnull %i.cbd, ptr noundef nonnull align 8 dereferenceable(34) %26, ptr %.sroa.0.0.copyload.i.i602.i, i64 %.sroa.2.0.copyload.i.i604.i) #17, !inline_history !636
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %25, ptr noundef nonnull %i.cbd) #17
  br label %_ZN4llvm13IRBuilderBase10CreateCastENS_11Instruction7CastOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineEPNS_6MDNodeENS_9FMFSourceE.exit608.i

_ZN4llvm13IRBuilderBase10CreateCastENS_11Instruction7CastOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineEPNS_6MDNodeENS_9FMFSourceE.exit608.i: ; preds = %bb.ij, %bb.if, %bb.ie
  %.1.i601.i = phi ptr [ %i.cbc, %bb.if ], [ %i.cbd, %bb.ij ], [ %.pre1061.i, %bb.ie ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #17
  br label %_ZN12_GLOBAL__N_116LiveRegOptimizer18convertFromOptTypeEPN4llvm4TypeEPNS1_11InstructionERNS1_21ilist_iterator_w_bitsINS1_12ilist_detail12node_optionsIS4_Lb0ELb0EvLb1ENS1_10BasicBlockEEELb0ELb0EEEPS9_.exit.i

bb.ik:                                            ; preds = %_ZN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEC2EPNS_10BasicBlockENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ES4_EELb0ELb0EEEPNS_6MDNodeENS_8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEEE.exit.i506.i
  %i.cbk = load ptr, ptr %i.cag, align 8, !tbaa !382
  %i.cbl = getelementptr inbounds nuw i8, ptr %i.cbk, i64 8
  %i.cbm = load i32, ptr %i.cbl, align 8
  %i.cbn = and i32 %i.cbm, 254
  %spec.select.i.i507.i = icmp eq i32 %i.cbn, 18
  br i1 %spec.select.i.i507.i, label %bb.iu, label %bb.il

bb.il:                                            ; preds = %bb.ik
  %i.cbo = trunc nuw i8 %.fca.1.extract.i502.i to i1
  br i1 %i.cbo, label %bb.im, label %_ZNK4llvm8TypeSizecvmEv.exit.i508.i

bb.im:                                            ; preds = %bb.il
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.3) #19
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit.i508.i:              ; preds = %bb.il
  %i.cbp = load ptr, ptr %49, align 8, !tbaa !485, !nonnull !19, !align !26
  %i.cbq = load ptr, ptr %i.cbp, align 8, !tbaa !81, !nonnull !19, !align !26
  %i.cbr = trunc i64 %.fca.0.extract.i501.i to i32
  %i.cbs = call noundef ptr @_ZN4llvm11IntegerType3getERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8) %i.cbq, i32 noundef %i.cbr) #17 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #17
  store i16 257, ptr %i.em, align 8
  %i.cbt = load ptr, ptr %i.cag, align 8, !tbaa !382
  %i.cbu = icmp eq ptr %i.cbt, %i.cbs
  br i1 %i.cbu, label %_ZN4llvm13IRBuilderBase11CreateTruncEPNS_5ValueEPNS_4TypeERKNS_5TwineEbb.exit.i.i, label %bb.in

bb.in:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i508.i
  %i.cbv = load ptr, ptr %i.ed, align 8, !tbaa !429, !nonnull !19, !align !26 ; 2 uses
  %i.cbw = load ptr, ptr %i.cbv, align 8, !tbaa !8
  %i.cbx = getelementptr inbounds nuw i8, ptr %i.cbw, i64 120
  %i.cby = load ptr, ptr %i.cbx, align 8
  %i.cbz = call noundef ptr %i.cby(ptr noundef nonnull align 8 dereferenceable(8) %i.cbv, i32 noundef 39, ptr noundef nonnull %.pre1061.i, ptr noundef %i.cbs) #17, !inline_history !637 ; 2 uses
  %.not.not.i.i.i = icmp eq ptr %i.cbz, null
  br i1 %.not.not.i.i.i, label %bb.io, label %_ZN4llvm13IRBuilderBase11CreateTruncEPNS_5ValueEPNS_4TypeERKNS_5TwineEbb.exit.i.i

bb.io:                                            ; preds = %bb.in
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #17
  store i16 257, ptr %i.en, align 8
  %i.cca = call noundef ptr @_ZN4llvm8CastInst6CreateENS_11Instruction7CastOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineENS_14InsertPositionE(i32 noundef 39, ptr noundef nonnull %.pre1061.i, ptr noundef %i.cbs, ptr noundef nonnull align 8 dereferenceable(34) %24, ptr null, i64 0) #17 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #17
  %i.ccb = load ptr, ptr %i.ee, align 8, !tbaa !427, !nonnull !19, !align !26 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i18 = load ptr, ptr %i.el, align 8
  %.sroa.2.0.copyload.i.i.i.i19 = load i64, ptr %.sroa.45.0..sroa_idx.i.i.i503.i, align 8
  %i.ccc = load ptr, ptr %i.ccb, align 8, !tbaa !8
  %i.ccd = getelementptr inbounds nuw i8, ptr %i.ccc, i64 16
  %i.cce = load ptr, ptr %i.ccd, align 8
  call void %i.cce(ptr noundef nonnull align 8 dereferenceable(8) %i.ccb, ptr noundef %i.cca, ptr noundef nonnull align 8 dereferenceable(34) %27, ptr %.sroa.0.0.copyload.i.i.i.i18, i64 %.sroa.2.0.copyload.i.i.i.i19) #17, !inline_history !638
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %25, ptr noundef %i.cca) #17
  br label %_ZN4llvm13IRBuilderBase11CreateTruncEPNS_5ValueEPNS_4TypeERKNS_5TwineEbb.exit.i.i

_ZN4llvm13IRBuilderBase11CreateTruncEPNS_5ValueEPNS_4TypeERKNS_5TwineEbb.exit.i.i: ; preds = %bb.io, %bb.in, %_ZNK4llvm8TypeSizecvmEv.exit.i508.i
  %.1.i.i.i = phi ptr [ %i.cbz, %bb.in ], [ %i.cca, %bb.io ], [ %.pre1061.i, %_ZNK4llvm8TypeSizecvmEv.exit.i508.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #17
  store i16 257, ptr %i.eo, align 8
  %i.ccf = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 8
  %i.ccg = load ptr, ptr %i.ccf, align 8, !tbaa !382
  %i.cch = icmp eq ptr %i.ccg, %i.byy
  br i1 %i.cch, label %_ZN4llvm13IRBuilderBase10CreateCastENS_11Instruction7CastOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineEPNS_6MDNodeENS_9FMFSourceE.exit599.i, label %bb.ip

bb.ip:                                            ; preds = %_ZN4llvm13IRBuilderBase11CreateTruncEPNS_5ValueEPNS_4TypeERKNS_5TwineEbb.exit.i.i
  %i.cci = load ptr, ptr %i.ed, align 8, !tbaa !429, !nonnull !19, !align !26 ; 2 uses
  %i.ccj = load ptr, ptr %i.cci, align 8, !tbaa !8
  %i.cck = getelementptr inbounds nuw i8, ptr %i.ccj, i64 120
  %i.ccl = load ptr, ptr %i.cck, align 8
  %i.ccm = call noundef ptr %i.ccl(ptr noundef nonnull align 8 dereferenceable(8) %i.cci, i32 noundef 51, ptr noundef nonnull %.1.i.i.i, ptr noundef %i.byy) #17, !inline_history !635 ; 2 uses
  %.not.not.i591.i = icmp eq ptr %i.ccm, null
  br i1 %.not.not.i591.i, label %bb.iq, label %_ZN4llvm13IRBuilderBase10CreateCastENS_11Instruction7CastOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineEPNS_6MDNodeENS_9FMFSourceE.exit599.i

bb.iq:                                            ; preds = %bb.ip
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #17
  store i16 257, ptr %i.ep, align 8
  %i.ccn = call noundef ptr @_ZN4llvm8CastInst6CreateENS_11Instruction7CastOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineENS_14InsertPositionE(i32 noundef 51, ptr noundef nonnull %.1.i.i.i, ptr noundef %i.byy, ptr noundef nonnull align 8 dereferenceable(34) %20, ptr null, i64 0) #17 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #17
  %i.cco = call noundef zeroext i1 @_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(72) %i.ccn)
  br i1 %i.cco, label %bb.ir, label %bb.it

bb.ir:                                            ; preds = %bb.iq
  %.sroa.0.0.copyload.i596.i = load i32, ptr %i.eg, align 8, !tbaa !364
  %i.ccp = load ptr, ptr %i.ef, align 8           ; 2 uses
  %.not9.i.i597.i = icmp eq ptr %i.ccp, null
  br i1 %.not9.i.i597.i, label %_ZNK4llvm13IRBuilderBase10setFPAttrsEPNS_11InstructionEPNS_6MDNodeENS_13FastMathFlagsE.exit.i598.i, label %bb.is

bb.is:                                            ; preds = %bb.ir
  call void @_ZN4llvm11Instruction11setMetadataEjPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(72) %i.ccn, i32 noundef 3, ptr noundef nonnull %i.ccp) #17
  br label %_ZNK4llvm13IRBuilderBase10setFPAttrsEPNS_11InstructionEPNS_6MDNodeENS_13FastMathFlagsE.exit.i598.i

_ZNK4llvm13IRBuilderBase10setFPAttrsEPNS_11InstructionEPNS_6MDNodeENS_13FastMathFlagsE.exit.i598.i: ; preds = %bb.is, %bb.ir
  call void @_ZN4llvm11Instruction16setFastMathFlagsENS_13FastMathFlagsE(ptr noundef nonnull align 8 dereferenceable(72) %i.ccn, i32 %.sroa.0.0.copyload.i596.i) #17
  br label %bb.it

bb.it:                                            ; preds = %_ZNK4llvm13IRBuilderBase10setFPAttrsEPNS_11InstructionEPNS_6MDNodeENS_13FastMathFlagsE.exit.i598.i, %bb.iq
  %i.ccq = load ptr, ptr %i.ee, align 8, !tbaa !427, !nonnull !19, !align !26 ; 2 uses
  %.sroa.0.0.copyload.i.i593.i = load ptr, ptr %i.el, align 8
  %.sroa.2.0.copyload.i.i595.i = load i64, ptr %.sroa.45.0..sroa_idx.i.i.i503.i, align 8
  %i.ccr = load ptr, ptr %i.ccq, align 8, !tbaa !8
  %i.ccs = getelementptr inbounds nuw i8, ptr %i.ccr, i64 16
  %i.cct = load ptr, ptr %i.ccs, align 8
  call void %i.cct(ptr noundef nonnull align 8 dereferenceable(8) %i.ccq, ptr noundef nonnull %i.ccn, ptr noundef nonnull align 8 dereferenceable(34) %28, ptr %.sroa.0.0.copyload.i.i593.i, i64 %.sroa.2.0.copyload.i.i595.i) #17, !inline_history !636
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %25, ptr noundef nonnull %i.ccn) #17
  br label %_ZN4llvm13IRBuilderBase10CreateCastENS_11Instruction7CastOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineEPNS_6MDNodeENS_9FMFSourceE.exit599.i

_ZN4llvm13IRBuilderBase10CreateCastENS_11Instruction7CastOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineEPNS_6MDNodeENS_9FMFSourceE.exit599.i: ; preds = %bb.it, %bb.ip, %_ZN4llvm13IRBuilderBase11CreateTruncEPNS_5ValueEPNS_4TypeERKNS_5TwineEbb.exit.i.i
  %.1.i592.i = phi ptr [ %i.ccm, %bb.ip ], [ %i.ccn, %bb.it ], [ %.1.i.i.i, %_ZN4llvm13IRBuilderBase11CreateTruncEPNS_5ValueEPNS_4TypeERKNS_5TwineEbb.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #17
  br label %_ZN12_GLOBAL__N_116LiveRegOptimizer18convertFromOptTypeEPN4llvm4TypeEPNS1_11InstructionERNS1_21ilist_iterator_w_bitsINS1_12ilist_detail12node_optionsIS4_Lb0ELb0EvLb1ENS1_10BasicBlockEEELb0ELb0EEEPS9_.exit.i

bb.iu:                                            ; preds = %bb.ik
  %i.ccu = load ptr, ptr %49, align 8, !tbaa !485, !nonnull !19, !align !26
  %i.ccv = load ptr, ptr %i.ccu, align 8, !tbaa !81, !nonnull !19, !align !26
  %i.ccw = call noundef i32 @_ZNK4llvm4Type19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.byy) #18
  %i.ccx = call noundef ptr @_ZN4llvm4Type9getIntNTyERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8) %i.ccv, i32 noundef %i.ccw) #17
  %i.ccy = trunc nuw i8 %.fca.1.extract8.i.i to i1
  br i1 %i.ccy, label %bb.iv, label %_ZNK4llvm8TypeSizecvmEv.exit28.i.i

bb.iv:                                            ; preds = %bb.iu
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.3) #19
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit28.i.i:               ; preds = %bb.iu
  %i.ccz = call noundef i32 @_ZNK4llvm4Type19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.byy) #18
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_124AMDGPULateCodeGenPrepare3runEv:bb.a
  %i.ckh = lshr i64 %i.ckg, 31
  %i.cki = xor i64 %i.ckh, %i.ckg
  %i.ckj = trunc i64 %i.cki to i32
  %i.ckk = and i32 %i.cke, %i.ckj                 ; 3 uses
  %i.ckl = zext i32 %i.ckk to i64                 ; 2 uses
  %i.ckm = getelementptr inbounds nuw [16 x i8], ptr %i.cka, i64 %i.ckl ; 2 uses
  %i.ckn = lshr i64 %i.ckl, 5
  %i.cko = getelementptr inbounds nuw [4 x i8], ptr %i.ckb, i64 %i.ckn
  %i.ckp = load i32, ptr %i.cko, align 4, !tbaa !364
  %i.ckq = and i32 %i.ckk, 31
  %i.ckr = lshr i32 %i.ckp, %i.ckq
  %i.cks = trunc i32 %i.ckr to i1
  br i1 %i.cks, label %.lr.ph.i685.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit.i629.i, !prof !480

.lr.ph.i685.i:                                    ; preds = %bb.jk, %bb.jl
  %i.ckt = phi ptr [ %i.ckz, %bb.jl ], [ %i.ckm, %bb.jk ] ; 2 uses
  %.01624.i686.i = phi i32 [ %i.ckx, %bb.jl ], [ %i.ckk, %bb.jk ]
  %i.cku = load ptr, ptr %i.ckt, align 8, !tbaa !481
  %i.ckv = icmp eq ptr %i.cio, %i.cku
  br i1 %i.ckv, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit.i629.i, label %bb.jl, !prof !436

bb.jl:                                            ; preds = %.lr.ph.i685.i
  %i.ckw = add nuw i32 %.01624.i686.i, 1
  %i.ckx = and i32 %i.ckw, %i.cke                 ; 3 uses
  %i.cky = zext i32 %i.ckx to i64                 ; 2 uses
  %i.ckz = getelementptr inbounds nuw [16 x i8], ptr %i.cka, i64 %i.cky ; 2 uses
  %i.cla = lshr i64 %i.cky, 5
  %i.clb = getelementptr inbounds nuw [4 x i8], ptr %i.ckb, i64 %i.cla
  %i.clc = load i32, ptr %i.clb, align 4, !tbaa !364
  %i.cld = and i32 %i.ckx, 31
  %i.cle = lshr i32 %i.clc, %i.cld
  %i.clf = trunc i32 %i.cle to i1
  br i1 %i.clf, label %.lr.ph.i685.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit.i629.i, !prof !482, !llvm.loop !506

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit.i629.i: ; preds = %bb.jl, %.lr.ph.i685.i, %bb.jk, %.loopexit.i623.i
  %i.clg = phi ptr [ %i.cip, %.loopexit.i623.i ], [ %i.cka, %bb.jk ], [ %i.cka, %.lr.ph.i685.i ], [ %i.cka, %bb.jl ]
  %i.clh = phi ptr [ %i.ciq, %.loopexit.i623.i ], [ %i.ckb, %bb.jk ], [ %i.ckb, %.lr.ph.i685.i ], [ %i.ckb, %bb.jl ]
  %i.cli = phi ptr [ %.lcssa28.sink.i.ph.i624.i, %.loopexit.i623.i ], [ %i.ckm, %bb.jk ], [ %i.ckz, %bb.jl ], [ %i.ckt, %.lr.ph.i685.i ] ; 4 uses
  %i.clj = ptrtoint ptr %i.cli to i64
  %i.clk = ptrtoint ptr %i.clg to i64
  %i.cll = sub i64 %i.clj, %i.clk
  %i.clm = ashr exact i64 %i.cll, 4               ; 2 uses
  %i.cln = trunc i64 %i.clm to i32
  %i.clo = and i32 %i.cln, 31
  %i.clp = shl nuw i32 1, %i.clo
  %i.clq = lshr i64 %i.clm, 5
  %i.clr = getelementptr inbounds nuw [4 x i8], ptr %i.clh, i64 %i.clq ; 2 uses
  %i.cls = load i32, ptr %i.clr, align 4, !tbaa !364
  %i.clt = or i32 %i.clp, %i.cls
  store i32 %i.clt, ptr %i.clr, align 4, !tbaa !364
  %i.clu = load i32, ptr %i.di, align 8, !tbaa !507
  %i.clv = add i32 %i.clu, 1
  store i32 %i.clv, ptr %i.di, align 8, !tbaa !507
  store ptr %i.cio, ptr %i.cli, align 8, !tbaa !481
  %i.clw = getelementptr inbounds nuw i8, ptr %i.cli, i64 8
  store ptr null, ptr %i.clw, align 8, !tbaa !481
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E24lookupOrInsertIntoBucketIS4_JEEESt4pairIPSA_bEOT_DpOT0_.exit636.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E24lookupOrInsertIntoBucketIS4_JEEESt4pairIPSA_bEOT_DpOT0_.exit636.i: ; preds = %.lr.ph.i.i634.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit.i629.i
  %.sroa.0.0.i630.i = phi ptr [ %i.cli, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit.i629.i ], [ %i.cji, %.lr.ph.i.i634.i ]
  %i.clx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i630.i, i64 8 ; 3 uses
  %i.cly = load ptr, ptr %i.cin, align 8, !tbaa !366, !noalias !665 ; 3 uses
  %i.clz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i616.i, i64 16 ; 2 uses
  %i.cma = load ptr, ptr %i.clz, align 8, !tbaa !479, !noalias !665 ; 3 uses
  %i.cmb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i616.i, i64 28 ; 2 uses
  %i.cmc = load i32, ptr %i.cmb, align 4, !tbaa !365, !noalias !665 ; 4 uses
  %i.cmd = icmp eq i32 %i.cmc, 0
  br i1 %i.cmd, label %.loopexit.i637.i, label %bb.jm

bb.jm:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E24lookupOrInsertIntoBucketIS4_JEEESt4pairIPSA_bEOT_DpOT0_.exit636.i
  %i.cme = add i32 %i.cmc, -1                     ; 2 uses
  %i.cmf = load ptr, ptr %i.clx, align 8, !tbaa !481 ; 2 uses
  %i.cmg = ptrtoint ptr %i.cmf to i64
  %i.cmh = mul i64 %i.cmg, -4658895280553007687   ; 2 uses
  %i.cmi = lshr i64 %i.cmh, 31
  %i.cmj = xor i64 %i.cmi, %i.cmh
  %i.cmk = trunc i64 %i.cmj to i32
  %i.cml = and i32 %i.cme, %i.cmk                 ; 3 uses
  %i.cmm = zext i32 %i.cml to i64                 ; 2 uses
  %i.cmn = getelementptr inbounds nuw [16 x i8], ptr %i.cly, i64 %i.cmm ; 2 uses
  %i.cmo = lshr i64 %i.cmm, 5
  %i.cmp = getelementptr inbounds nuw [4 x i8], ptr %i.cma, i64 %i.cmo
  %i.cmq = load i32, ptr %i.cmp, align 4, !tbaa !364
  %i.cmr = and i32 %i.cml, 31
  %i.cms = lshr i32 %i.cmq, %i.cmr
  %i.cmt = trunc i32 %i.cms to i1
  br i1 %i.cmt, label %.lr.ph.i.i648.i, label %.loopexit.i637.i, !prof !480

.lr.ph.i.i648.i:                                  ; preds = %bb.jm, %bb.jn
  %i.cmu = phi ptr [ %i.cna, %bb.jn ], [ %i.cmn, %bb.jm ] ; 2 uses
  %.01624.i.i649.i = phi i32 [ %i.cmy, %bb.jn ], [ %i.cml, %bb.jm ]
  %i.cmv = load ptr, ptr %i.cmu, align 8, !tbaa !481
  %i.cmw = icmp eq ptr %i.cmf, %i.cmv
  br i1 %i.cmw, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_.exit650.i, label %bb.jn, !prof !436

bb.jn:                                            ; preds = %.lr.ph.i.i648.i
  %i.cmx = add nuw i32 %.01624.i.i649.i, 1
  %i.cmy = and i32 %i.cmx, %i.cme                 ; 3 uses
  %i.cmz = zext i32 %i.cmy to i64                 ; 2 uses
  %i.cna = getelementptr inbounds nuw [16 x i8], ptr %i.cly, i64 %i.cmz ; 2 uses
  %i.cnb = lshr i64 %i.cmz, 5
  %i.cnc = getelementptr inbounds nuw [4 x i8], ptr %i.cma, i64 %i.cnb
  %i.cnd = load i32, ptr %i.cnc, align 4, !tbaa !364
  %i.cne = and i32 %i.cmy, 31
  %i.cnf = lshr i32 %i.cnd, %i.cne
  %i.cng = trunc i32 %i.cnf to i1
  br i1 %i.cng, label %.lr.ph.i.i648.i, label %.loopexit.i637.i, !prof !482, !llvm.loop !506

.loopexit.i637.i:                                 ; preds = %bb.jn, %bb.jm, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E24lookupOrInsertIntoBucketIS4_JEEESt4pairIPSA_bEOT_DpOT0_.exit636.i
  %.lcssa28.sink.i.ph.i638.i = phi ptr [ %i.cmn, %bb.jm ], [ null, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E24lookupOrInsertIntoBucketIS4_JEEESt4pairIPSA_bEOT_DpOT0_.exit636.i ], [ %i.cna, %bb.jn ]
  %i.cnh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i616.i, i64 24 ; 3 uses
  %i.cni = load i32, ptr %i.cnh, align 8, !tbaa !507
  %i.cnj = shl i32 %i.cni, 2
  %i.cnk = add i32 %i.cnj, 4
  %i.cnl = mul i32 %i.cmc, 3
  %.not.i.i639.i = icmp ult i32 %i.cnk, %i.cnl
  br i1 %.not.i.i639.i, label %.loopexit.i637._ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit.i643_crit_edge.i, label %bb.jo, !prof !436

.loopexit.i637._ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit.i643_crit_edge.i: ; preds = %.loopexit.i637.i
  %.pre1062.i = load ptr, ptr %i.clx, align 8, !tbaa !481
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit.i643.i

bb.jo:                                            ; preds = %.loopexit.i637.i
  %i.cnm = shl i32 %i.cmc, 1
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %i.cin, i32 noundef %i.cnm)
  %i.cnn = load ptr, ptr %i.cin, align 8, !tbaa !366, !noalias !670 ; 5 uses
  %i.cno = load ptr, ptr %i.clz, align 8, !tbaa !479, !noalias !670 ; 5 uses
  %i.cnp = load i32, ptr %i.cmb, align 4, !tbaa !365, !noalias !670 ; 2 uses
  %i.cnq = icmp ne i32 %i.cnp, 0
  call void @llvm.assume(i1 %i.cnq)
  %i.cnr = add i32 %i.cnp, -1                     ; 2 uses
  %i.cns = load ptr, ptr %i.clx, align 8, !tbaa !481 ; 5 uses
  %i.cnt = ptrtoint ptr %i.cns to i64
  %i.cnu = mul i64 %i.cnt, -4658895280553007687   ; 2 uses
  %i.cnv = lshr i64 %i.cnu, 31
  %i.cnw = xor i64 %i.cnv, %i.cnu
  %i.cnx = trunc i64 %i.cnw to i32
  %i.cny = and i32 %i.cnr, %i.cnx                 ; 3 uses
  %i.cnz = zext i32 %i.cny to i64                 ; 2 uses
  %i.coa = getelementptr inbounds nuw [16 x i8], ptr %i.cnn, i64 %i.cnz ; 2 uses
  %i.cob = lshr i64 %i.cnz, 5
  %i.coc = getelementptr inbounds nuw [4 x i8], ptr %i.cno, i64 %i.cob
  %i.cod = load i32, ptr %i.coc, align 4, !tbaa !364
  %i.coe = and i32 %i.cny, 31
  %i.cof = lshr i32 %i.cod, %i.coe
  %i.cog = trunc i32 %i.cof to i1
  br i1 %i.cog, label %.lr.ph.i691.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit.i643.i, !prof !480

.lr.ph.i691.i:                                    ; preds = %bb.jo, %bb.jp
  %i.coh = phi ptr [ %i.con, %bb.jp ], [ %i.coa, %bb.jo ] ; 2 uses
  %.01624.i692.i = phi i32 [ %i.col, %bb.jp ], [ %i.cny, %bb.jo ]
  %i.coi = load ptr, ptr %i.coh, align 8, !tbaa !481
  %i.coj = icmp eq ptr %i.cns, %i.coi
  br i1 %i.coj, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit.i643.i, label %bb.jp, !prof !436

bb.jp:                                            ; preds = %.lr.ph.i691.i
  %i.cok = add nuw i32 %.01624.i692.i, 1
  %i.col = and i32 %i.cok, %i.cnr                 ; 3 uses
  %i.com = zext i32 %i.col to i64                 ; 2 uses
  %i.con = getelementptr inbounds nuw [16 x i8], ptr %i.cnn, i64 %i.com ; 2 uses
  %i.coo = lshr i64 %i.com, 5
  %i.cop = getelementptr inbounds nuw [4 x i8], ptr %i.cno, i64 %i.coo
  %i.coq = load i32, ptr %i.cop, align 4, !tbaa !364
  %i.cor = and i32 %i.col, 31
  %i.cos = lshr i32 %i.coq, %i.cor
  %i.cot = trunc i32 %i.cos to i1
  br i1 %i.cot, label %.lr.ph.i691.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit.i643.i, !prof !482, !llvm.loop !506

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit.i643.i: ; preds = %bb.jp, %.lr.ph.i691.i, %bb.jo, %.loopexit.i637._ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit.i643_crit_edge.i
  %i.cou = phi ptr [ %.pre1062.i, %.loopexit.i637._ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit.i643_crit_edge.i ], [ %i.cns, %bb.jo ], [ %i.cns, %.lr.ph.i691.i ], [ %i.cns, %bb.jp ]
  %i.cov = phi ptr [ %i.cly, %.loopexit.i637._ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit.i643_crit_edge.i ], [ %i.cnn, %bb.jo ], [ %i.cnn, %.lr.ph.i691.i ], [ %i.cnn, %bb.jp ]
  %i.cow = phi ptr [ %i.cma, %.loopexit.i637._ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit.i643_crit_edge.i ], [ %i.cno, %bb.jo ], [ %i.cno, %.lr.ph.i691.i ], [ %i.cno, %bb.jp ]
  %i.cox = phi ptr [ %.lcssa28.sink.i.ph.i638.i, %.loopexit.i637._ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit.i643_crit_edge.i ], [ %i.coa, %bb.jo ], [ %i.con, %bb.jp ], [ %i.coh, %.lr.ph.i691.i ] ; 4 uses
  %i.coy = ptrtoint ptr %i.cox to i64
  %i.coz = ptrtoint ptr %i.cov to i64
  %i.cpa = sub i64 %i.coy, %i.coz
  %i.cpb = ashr exact i64 %i.cpa, 4               ; 2 uses
  %i.cpc = trunc i64 %i.cpb to i32
  %i.cpd = and i32 %i.cpc, 31
  %i.cpe = shl nuw i32 1, %i.cpd
  %i.cpf = lshr i64 %i.cpb, 5
  %i.cpg = getelementptr inbounds nuw [4 x i8], ptr %i.cow, i64 %i.cpf ; 2 uses
  %i.cph = load i32, ptr %i.cpg, align 4, !tbaa !364
  %i.cpi = or i32 %i.cpe, %i.cph
  store i32 %i.cpi, ptr %i.cpg, align 4, !tbaa !364
  %i.cpj = load i32, ptr %i.cnh, align 8, !tbaa !507
  %i.cpk = add i32 %i.cpj, 1
  store i32 %i.cpk, ptr %i.cnh, align 8, !tbaa !507
  store ptr %i.cou, ptr %i.cox, align 8, !tbaa !481
  %i.cpl = getelementptr inbounds nuw i8, ptr %i.cox, i64 8
  store ptr null, ptr %i.cpl, align 8, !tbaa !481
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_.exit650.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_.exit650.i: ; preds = %.lr.ph.i.i648.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit.i643.i
  %.sroa.0.0.i644.i = phi ptr [ %i.cox, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit.i643.i ], [ %i.cmu, %.lr.ph.i.i648.i ]
  %i.cpm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i644.i, i64 8
  store ptr %.0.i509.i, ptr %i.cpm, align 8, !tbaa !481
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_.exit650.i, %bb.hz, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_.exit.loopexit.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit.i564.i
  %.1139.i = phi ptr [ %i.byp, %bb.hz ], [ %.0.i509.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_.exit650.i ], [ null, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit.i564.i ], [ %.pre1059.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_.exit.loopexit.i ] ; 4 uses
  %i.cpn = load i32, ptr %i.blc, align 4          ; 2 uses
  %i.cpo = and i32 %i.cpn, 1073741824
  %.not.i.i.i519.i = icmp eq i32 %i.cpo, 0
  br i1 %.not.i.i.i519.i, label %bb.jr, label %bb.jq

bb.jq:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_.exit.i
  %i.cpp = load ptr, ptr %i.blo, align 8, !tbaa !452
  br label %_ZN4llvm4User14getOperandListEv.exit.i.i

bb.jr:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_.exit.i
  %i.cpq = and i32 %i.cpn, 268435455
  %i.cpr = zext nneg i32 %i.cpq to i64
  %i.cps = sub nsw i64 0, %i.cpr
  %i.cpt = getelementptr inbounds [32 x i8], ptr %i.blb, i64 %i.cps
  br label %_ZN4llvm4User14getOperandListEv.exit.i.i

_ZN4llvm4User14getOperandListEv.exit.i.i:         ; preds = %bb.jr, %bb.jq
  %i.cpu = phi ptr [ %i.cpp, %bb.jq ], [ %i.cpt, %bb.jr ]
  %i.cpv = getelementptr inbounds nuw [32 x i8], ptr %i.cpu, i64 %.sroa.7.0972.i ; 5 uses
  %i.cpw = getelementptr inbounds nuw i8, ptr %i.cpv, i64 16 ; 3 uses
  %i.cpx = load ptr, ptr %i.cpw, align 8, !tbaa !546 ; 3 uses
  %.not.i.i.i.i520.i = icmp eq ptr %i.cpx, null
  br i1 %.not.i.i.i.i520.i, label %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i, label %bb.js

bb.js:                                            ; preds = %_ZN4llvm4User14getOperandListEv.exit.i.i
  %i.cpy = getelementptr inbounds nuw i8, ptr %i.cpv, i64 8 ; 2 uses
  %i.cpz = load ptr, ptr %i.cpy, align 8, !tbaa !547 ; 3 uses
  store ptr %i.cpz, ptr %i.cpx, align 8, !tbaa !452
  %.not2.i.i.i.i.i = icmp eq ptr %i.cpz, null
  br i1 %.not2.i.i.i.i.i, label %bb.ju, label %bb.jt

bb.jt:                                            ; preds = %bb.js
  %i.cqa = getelementptr inbounds nuw i8, ptr %i.cpz, i64 16
  store ptr %i.cpx, ptr %i.cqa, align 8, !tbaa !546
  store ptr null, ptr %i.cpy, align 8, !tbaa !547
  br label %bb.ju

bb.ju:                                            ; preds = %bb.jt, %bb.js
  store ptr null, ptr %i.cpw, align 8, !tbaa !546
  br label %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i

_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i:      ; preds = %bb.ju, %_ZN4llvm4User14getOperandListEv.exit.i.i
  store ptr %.1139.i, ptr %i.cpv, align 8, !tbaa !378
  %.not.i.i2.i.i = icmp eq ptr %.1139.i, null
  br i1 %.not.i.i2.i.i, label %_ZN4llvm4User10setOperandEjPNS_5ValueE.exit.i, label %bb.jv

bb.jv:                                            ; preds = %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i
  %i.cqb = load i8, ptr %.1139.i, align 8, !tbaa !376
  %i.cqc = icmp ugt i8 %i.cqb, 10
  br i1 %i.cqc, label %bb.jw, label %_ZN4llvm4User10setOperandEjPNS_5ValueE.exit.i

bb.jw:                                            ; preds = %bb.jv
  %i.cqd = getelementptr inbounds nuw i8, ptr %.1139.i, i64 16 ; 3 uses
  %i.cqe = load ptr, ptr %i.cqd, align 8, !tbaa !452 ; 3 uses
  %i.cqf = getelementptr inbounds nuw i8, ptr %i.cpv, i64 8 ; 2 uses
  store ptr %i.cqe, ptr %i.cqf, align 8, !tbaa !547
  %.not.i.i.i.i.i521.i = icmp eq ptr %i.cqe, null
  br i1 %.not.i.i.i.i.i521.i, label %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i, label %bb.jx

bb.jx:                                            ; preds = %bb.jw
  %i.cqg = getelementptr inbounds nuw i8, ptr %i.cqe, i64 16
  store ptr %i.cqf, ptr %i.cqg, align 8, !tbaa !546
  br label %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i

_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i:      ; preds = %bb.jx, %bb.jw
  store ptr %i.cqd, ptr %i.cpw, align 8, !tbaa !546
  store ptr %i.cpv, ptr %i.cqd, align 8, !tbaa !452
  br label %_ZN4llvm4User10setOperandEjPNS_5ValueE.exit.i

_ZN4llvm4User10setOperandEjPNS_5ValueE.exit.i:    ; preds = %bb.hi, %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i, %bb.jv, %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E6lookupES4_.exit485.i, %bb.hh, %.lr.ph975.split.i
  %i.cqh = getelementptr inbounds nuw i8, ptr %.sroa.0716.0973.i, i64 32 ; 2 uses
  %.not881.i = icmp eq ptr %i.cqh, %i.blm
  br i1 %.not881.i, label %._crit_edge976.i, label %.lr.ph975.splitthread-pre-split.i, !llvm.loop !675

_ZN4llvm15SmallPtrSetImplIPNS_11InstructionEE6insertES2_.exit246.i: ; preds = %_ZN4llvm19SmallPtrSetIteratorIPNS_11InstructionEEppEv.exit482.i, %bb.bw, %_ZNK4llvm15SmallPtrSetImplIPNS_11InstructionEE5beginEv.exit393.i
  %.not.i172941.i = phi i1 [ true, %_ZNK4llvm15SmallPtrSetImplIPNS_11InstructionEE5beginEv.exit393.i ], [ %i.no, %bb.bw ], [ true, %_ZN4llvm19SmallPtrSetIteratorIPNS_11InstructionEEppEv.exit482.i ] ; 2 uses
  %i.cqi = load i8, ptr %i.bw, align 8, !tbaa !14, !range !18, !noundef !19
  %i.cqj = trunc nuw i8 %i.cqi to i1
  br i1 %i.cqj, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit522.i, label %bb.jy

bb.jy:                                            ; preds = %_ZN4llvm15SmallPtrSetImplIPNS_11InstructionEE6insertES2_.exit246.i
  %i.cqk = load ptr, ptr %45, align 8, !tbaa !20
  call void @free(ptr noundef %i.cqk) #17
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit522.i

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit522.i:      ; preds = %bb.jy, %_ZN4llvm15SmallPtrSetImplIPNS_11InstructionEE6insertES2_.exit246.i
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #17
  %i.cql = load i8, ptr %i.bs, align 8, !tbaa !14, !range !18, !noundef !19
  %i.cqm = trunc nuw i8 %i.cql to i1
  br i1 %i.cqm, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit523.i, label %bb.jz

bb.jz:                                            ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit522.i
  %i.cqn = load ptr, ptr %44, align 8, !tbaa !20
  call void @free(ptr noundef %i.cqn) #17
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit523.i

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit523.i:      ; preds = %bb.jz, %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit522.i
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #17
  %i.cqo = load i8, ptr %i.bo, align 8, !tbaa !14, !range !18, !noundef !19
  %i.cqp = trunc nuw i8 %i.cqo to i1
  br i1 %i.cqp, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit524.i, label %bb.ka

bb.ka:                                            ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit523.i
  %i.cqq = load ptr, ptr %43, align 8, !tbaa !20
  call void @free(ptr noundef %i.cqq) #17
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit524.i

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit524.i:      ; preds = %bb.ka, %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit523.i
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #17
  %i.cqr = load i8, ptr %i.bk, align 8, !tbaa !14, !range !18, !noundef !19
  %i.cqs = trunc nuw i8 %i.cqr to i1
  br i1 %i.cqs, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit525.i, label %bb.kb

bb.kb:                                            ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit524.i
  %i.cqt = load ptr, ptr %42, align 8, !tbaa !20
  call void @free(ptr noundef %i.cqt) #17
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit525.i

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit525.i:      ; preds = %bb.kb, %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit524.i
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #17
  %i.cqu = load ptr, ptr %41, align 8, !tbaa !21  ; 2 uses
  %i.cqv = icmp eq ptr %i.cqu, %i.be
  br i1 %i.cqv, label %_ZN12_GLOBAL__N_116LiveRegOptimizer16optimizeLiveTypeEPN4llvm11InstructionERNS1_15SmallVectorImplINS1_14WeakTrackingVHEEE.exit, label %bb.kc

bb.kc:                                            ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit525.i
  call void @free(ptr noundef %i.cqu) #17
  br label %_ZN12_GLOBAL__N_116LiveRegOptimizer16optimizeLiveTypeEPN4llvm11InstructionERNS1_15SmallVectorImplINS1_14WeakTrackingVHEEE.exit

_ZN12_GLOBAL__N_116LiveRegOptimizer16optimizeLiveTypeEPN4llvm11InstructionERNS1_15SmallVectorImplINS1_14WeakTrackingVHEEE.exit: ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit525.i, %bb.kc
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #17
  %.not212 = icmp eq ptr %i.hh, %i.he
  br i1 %.not212, label %._crit_edge.loopexit, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN30AMDGPULateCodeGenPrepareLegacy13runOnFunctionERN4llvm8FunctionE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(140) %1) unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.(anonymous namespace)::AMDGPULateCodeGenPrepare", align 8 ; 12 uses
  %i.a = tail call noundef zeroext i1 @_ZNK4llvm12FunctionPass12skipFunctionERKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(140) %1) #17
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !677  ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !681  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !681  ; 2 uses
  %.not1114.i.i.i = icmp ne ptr %i.d, %i.f
  tail call void @llvm.assume(i1 %.not1114.i.i.i)
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !683
  %.not.i3.i.i = icmp eq ptr %i.g, @_ZN4llvm16TargetPassConfig2IDE
  br i1 %.not.i3.i.i, label %_ZNK4llvm4Pass11getAnalysisINS_16TargetPassConfigEEERT_v.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.sroa.08.015.i4.i.i = phi ptr [ %i.h, %.lr.ph.i.i.i ], [ %i.d, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i, i64 16 ; 4 uses
  %.not11.i.i.i = icmp ne ptr %i.h, %i.f
  tail call void @llvm.assume(i1 %.not11.i.i.i)
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !683
  %.not.i.i.i = icmp eq ptr %i.i, @_ZN4llvm16TargetPassConfig2IDE
  br i1 %.not.i.i.i, label %_ZNK4llvm4Pass11getAnalysisINS_16TargetPassConfigEEERT_v.exit, label %.lr.ph.i.i.i

_ZNK4llvm4Pass11getAnalysisINS_16TargetPassConfigEEERT_v.exit: ; preds = %.lr.ph.i.i.i, %bb.b
  %.sroa.08.015.i.lcssa.i.i = phi ptr [ %i.d, %bb.b ], [ %i.h, %.lr.ph.i.i.i ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i.lcssa.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !686  ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef nonnull align 8 dereferenceable(520232) ptr %i.p(ptr noundef nonnull align 8 dereferenceable(1728) %i.m, ptr noundef nonnull align 8 dereferenceable(140) %1) #17, !inline_history !27
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !677  ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !681  ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !681  ; 2 uses
  %.not1114.i.i.i11 = icmp ne ptr %i.s, %i.u
  tail call void @llvm.assume(i1 %.not1114.i.i.i11)
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !683
  %.not.i3.i.i12 = icmp eq ptr %i.v, @_ZN4llvm22AssumptionCacheTracker2IDE
  br i1 %.not.i3.i.i12, label %_ZNK4llvm4Pass11getAnalysisINS_22AssumptionCacheTrackerEEERT_v.exit, label %.lr.ph.i.i.i13

.lr.ph.i.i.i13:                                   ; preds = %_ZNK4llvm4Pass11getAnalysisINS_16TargetPassConfigEEERT_v.exit, %.lr.ph.i.i.i13
  %.sroa.08.015.i4.i.i14 = phi ptr [ %i.w, %.lr.ph.i.i.i13 ], [ %i.s, %_ZNK4llvm4Pass11getAnalysisINS_16TargetPassConfigEEERT_v.exit ]
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i14, i64 16 ; 4 uses
  %.not11.i.i.i15 = icmp ne ptr %i.w, %i.u
  tail call void @llvm.assume(i1 %.not11.i.i.i15)
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !683
  %.not.i.i.i16 = icmp eq ptr %i.x, @_ZN4llvm22AssumptionCacheTracker2IDE
  br i1 %.not.i.i.i16, label %_ZNK4llvm4Pass11getAnalysisINS_22AssumptionCacheTrackerEEERT_v.exit, label %.lr.ph.i.i.i13

_ZNK4llvm4Pass11getAnalysisINS_22AssumptionCacheTrackerEEERT_v.exit: ; preds = %.lr.ph.i.i.i13, %_ZNK4llvm4Pass11getAnalysisINS_16TargetPassConfigEEERT_v.exit
  %.sroa.08.015.i.lcssa.i.i17 = phi ptr [ %i.s, %_ZNK4llvm4Pass11getAnalysisINS_16TargetPassConfigEEERT_v.exit ], [ %i.w, %.lr.ph.i.i.i13 ]
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i.lcssa.i.i17, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef nonnull align 8 dereferenceable(153) ptr @_ZN4llvm22AssumptionCacheTracker18getAssumptionCacheERNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(56) %i.z, ptr noundef nonnull align 8 dereferenceable(140) %1) #17
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !677 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !681 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !681 ; 2 uses
end_hunk_1
