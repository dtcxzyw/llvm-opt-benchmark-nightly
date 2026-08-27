Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RDFLiveness?download=true
inline.NumInlined: 5812
inline.NumDeleted: 2664
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4llvm3rdf8Liveness14computePhiInfoEv:bb.a

bb.jf:                                            ; preds = %bb.jd
  %i.bre = getelementptr inbounds nuw i8, ptr %i.bra, i64 1
  store ptr %i.bre, ptr %i.bqz, align 8, !tbaa !23
  store i8 60, ptr %i.bra, align 1, !tbaa !29
  br label %_ZN4llvm11raw_ostreamlsEc.exit488

_ZN4llvm11raw_ostreamlsEc.exit488:                ; preds = %bb.je, %bb.jf
  %.0.i487 = phi ptr [ %i.brd, %bb.je ], [ %i.bqy, %bb.jf ]
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #20
  %i.brf = load ptr, ptr %0, align 8, !tbaa !174, !nonnull !19, !align !34
  store ptr %36, ptr %37, align 8, !tbaa !675
  store ptr %i.brf, ptr %i.bpe, align 8, !tbaa !166
  %i.brg = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm3rdflsERNS_11raw_ostreamERKNS0_5PrintINS0_11RegisterRefEEE(ptr noundef nonnull align 8 dereferenceable(48) %.0.i487, ptr noundef nonnull align 8 dereferenceable(16) %37) #20 ; 3 uses
  %i.brh = getelementptr inbounds nuw i8, ptr %i.brg, i64 32 ; 2 uses
  %i.bri = load ptr, ptr %i.brh, align 8, !tbaa !23 ; 3 uses
  %i.brj = getelementptr inbounds nuw i8, ptr %i.brg, i64 24
  %i.brk = load ptr, ptr %i.brj, align 8, !tbaa !28
  %.not.i489 = icmp ult ptr %i.bri, %i.brk
  br i1 %.not.i489, label %bb.jh, label %bb.jg

bb.jg:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit488
  %i.brl = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.brg, i8 noundef zeroext 62) #20 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit491

bb.jh:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit488
  %i.brm = getelementptr inbounds nuw i8, ptr %i.bri, i64 1
  store ptr %i.brm, ptr %i.brh, align 8, !tbaa !23
  store i8 62, ptr %i.bri, align 1, !tbaa !29
  br label %_ZN4llvm11raw_ostreamlsEc.exit491

_ZN4llvm11raw_ostreamlsEc.exit491:                ; preds = %bb.jg, %bb.jh
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #20
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit494

bb.ji:                                            ; preds = %_ZNK4llvm3rdf8CodeNode10members_ifIPFbNS0_8NodeAddrIPNS0_8NodeBaseEEEEEENS_11SmallVectorIS6_Lj4EEET_RKNS0_13DataFlowGraphE.exit484
  %i.brn = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm4dbgsEv() #20 ; 3 uses
  %i.bro = getelementptr inbounds nuw i8, ptr %i.brn, i64 24
  %i.brp = load ptr, ptr %i.bro, align 8, !tbaa !28
  %i.brq = getelementptr inbounds nuw i8, ptr %i.brn, i64 32 ; 3 uses
  %i.brr = load ptr, ptr %i.brq, align 8, !tbaa !23 ; 2 uses
  %i.brs = ptrtoint ptr %i.brp to i64
  %i.brt = ptrtoint ptr %i.brr to i64
  %i.bru = sub i64 %i.brs, %i.brt
  %i.brv = icmp ult i64 %i.bru, 7
  br i1 %i.brv, label %bb.jj, label %bb.jk

bb.jj:                                            ; preds = %bb.ji
  %i.brw = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.brn, ptr noundef nonnull @.str.8, i64 noundef 7) #20 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit494

bb.jk:                                            ; preds = %bb.ji
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.brr, ptr noundef nonnull align 1 dereferenceable(7) @.str.8, i64 7, i1 false)
  %i.brx = load ptr, ptr %i.brq, align 8, !tbaa !23
  %i.bry = getelementptr inbounds nuw i8, ptr %i.brx, i64 7
  store ptr %i.bry, ptr %i.brq, align 8, !tbaa !23
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit494

_ZN4llvm11raw_ostreamlsEPKc.exit494:              ; preds = %bb.jk, %bb.jj, %_ZN4llvm11raw_ostreamlsEc.exit491
  %i.brz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm4dbgsEv() #20 ; 4 uses
  %i.bsa = getelementptr inbounds nuw i8, ptr %i.brz, i64 24
  %i.bsb = load ptr, ptr %i.bsa, align 8, !tbaa !28
  %i.bsc = getelementptr inbounds nuw i8, ptr %i.brz, i64 32 ; 3 uses
  %i.bsd = load ptr, ptr %i.bsc, align 8, !tbaa !23 ; 2 uses
  %i.bse = ptrtoint ptr %i.bsb to i64
  %i.bsf = ptrtoint ptr %i.bsd to i64
  %i.bsg = sub i64 %i.bse, %i.bsf
  %i.bsh = icmp ult i64 %i.bsg, 4
  br i1 %i.bsh, label %bb.jl, label %bb.jm

bb.jl:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit494
  %i.bsi = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.brz, ptr noundef nonnull @.str.9, i64 noundef 4) #20
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit497

bb.jm:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit494
  store i32 540945696, ptr %i.bsd, align 1
  %i.bsj = load ptr, ptr %i.bsc, align 8, !tbaa !23
  %i.bsk = getelementptr inbounds nuw i8, ptr %i.bsj, i64 4
  store ptr %i.bsk, ptr %i.bsc, align 8, !tbaa !23
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit497

_ZN4llvm11raw_ostreamlsEPKc.exit497:              ; preds = %bb.jl, %bb.jm
  %.0.i.i496 = phi ptr [ %i.bsi, %bb.jl ], [ %i.brz, %bb.jm ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #20
  %i.bsl = load ptr, ptr %0, align 8, !tbaa !174, !nonnull !19, !align !34
  store ptr %i.boy, ptr %38, align 8, !tbaa !677
  store ptr %i.bsl, ptr %i.bpf, align 8, !tbaa !166
  %i.bsm = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm3rdflsERNS_11raw_ostreamERKNS0_5PrintINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS8_ESt8equal_toIS8_ESaIS8_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSE_EEEEEE(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i496, ptr noundef nonnull align 8 dereferenceable(16) %38) ; 0 uses
  %i.bsn = getelementptr inbounds nuw i8, ptr %.0.i.i496, i64 32 ; 2 uses
  %i.bso = load ptr, ptr %i.bsn, align 8, !tbaa !23 ; 3 uses
  %i.bsp = getelementptr inbounds nuw i8, ptr %.0.i.i496, i64 24
  %i.bsq = load ptr, ptr %i.bsp, align 8, !tbaa !28
  %.not.i498 = icmp ult ptr %i.bso, %i.bsq
  br i1 %.not.i498, label %bb.jo, label %bb.jn

bb.jn:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit497
  %i.bsr = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i496, i8 noundef zeroext 10) #20 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit500

bb.jo:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit497
  %i.bss = getelementptr inbounds nuw i8, ptr %i.bso, i64 1
  store ptr %i.bss, ptr %i.bsn, align 8, !tbaa !23
  store i8 10, ptr %i.bso, align 1, !tbaa !29
  br label %_ZN4llvm11raw_ostreamlsEc.exit500

_ZN4llvm11raw_ostreamlsEc.exit500:                ; preds = %bb.jn, %bb.jo
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #20
  %i.bst = load ptr, ptr %35, align 8, !tbaa !21  ; 2 uses
  %i.bsu = icmp eq ptr %i.bst, %i.bpa
  br i1 %i.bsu, label %_ZN4llvm11SmallVectorINS_3rdf8NodeAddrIPNS1_8NodeBaseEEELj4EED2Ev.exit501, label %bb.jp

bb.jp:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit500
  call void @free(ptr noundef %i.bst) #20
  br label %_ZN4llvm11SmallVectorINS_3rdf8NodeAddrIPNS1_8NodeBaseEEELj4EED2Ev.exit501

_ZN4llvm11SmallVectorINS_3rdf8NodeAddrIPNS1_8NodeBaseEEELj4EED2Ev.exit501: ; preds = %_ZN4llvm11raw_ostreamlsEc.exit500, %bb.jp
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #20
  call void @_ZN4llvm8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSA_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.boy) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #20
  %i.bsv = add i64 %.pn1670, 32
  %i.bsw = ashr exact i64 %i.bsv, 5               ; 3 uses
  %.not.i.i502 = icmp ult i64 %i.bsw, %i.boi
  br i1 %.not.i.i502, label %bb.jq, label %.loopexit

bb.jq:                                            ; preds = %_ZN4llvm11SmallVectorINS_3rdf8NodeAddrIPNS1_8NodeBaseEEELj4EED2Ev.exit501
  %i.bsx = lshr i64 %i.bsw, 5                     ; 3 uses
  %i.bsy = getelementptr inbounds nuw [4 x i8], ptr %i.bod, i64 %i.bsx
  %i.bsz = load i32, ptr %i.bsy, align 4, !tbaa !45
  %i.bta = trunc nuw i64 %i.bsw to i32
  %i.btb = and i32 %i.bta, 31
  %i.btc = shl nsw i32 -1, %i.btb
  %i.btd = and i32 %i.bsz, %i.btc                 ; 2 uses
  %i.bte = icmp eq i32 %i.btd, 0
  br i1 %i.bte, label %.lr.ph.i.i508.preheader, label %_ZN4llvm16DenseMapIteratorIjNS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEESD_NSF_IjSH_EELb0EEppEv.exit

.lr.ph.i.i508.preheader:                          ; preds = %bb.jq
  %i.btf = add nuw nsw i64 %i.bsx, 1              ; 2 uses
  %i.btg = icmp eq i64 %i.btf, %i.bph
  br i1 %i.btg, label %.loopexit, label %.lr.ph1755

.lr.ph.i.i508:                                    ; preds = %.lr.ph1755
  %i.bth = add i64 %i.btj, 1                      ; 2 uses
  %i.bti = icmp eq i64 %i.bth, %i.bph
  br i1 %i.bti, label %.loopexit, label %.lr.ph1755, !llvm.loop !669

.lr.ph1755:                                       ; preds = %.lr.ph.i.i508.preheader, %.lr.ph.i.i508
  %i.btj = phi i64 [ %i.bth, %.lr.ph.i.i508 ], [ %i.btf, %.lr.ph.i.i508.preheader ] ; 3 uses
  %i.btk = getelementptr inbounds nuw [4 x i8], ptr %i.bod, i64 %i.btj
  %i.btl = load i32, ptr %i.btk, align 4, !tbaa !45 ; 2 uses
  %i.btm = icmp eq i32 %i.btl, 0
  br i1 %i.btm, label %.lr.ph.i.i508, label %_ZN4llvm16DenseMapIteratorIjNS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEESD_NSF_IjSH_EELb0EEppEv.exit, !llvm.loop !669

_ZN4llvm16DenseMapIteratorIjNS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEESD_NSF_IjSH_EELb0EEppEv.exit: ; preds = %.lr.ph1755, %bb.jq
  %.012.lcssa.i.i505 = phi i64 [ %i.bsx, %bb.jq ], [ %i.btj, %.lr.ph1755 ]
  %.0.lcssa.i.i506 = phi i32 [ %i.btd, %bb.jq ], [ %i.btl, %.lr.ph1755 ]
  %i.btn = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i506, i1 true)
  %.idx.i.i507 = shl i64 %.012.lcssa.i.i505, 10
  %i.bto = shl nuw nsw i32 %i.btn, 5
  %.idx1669 = zext nneg i32 %i.bto to i64
  %i.btp = or disjoint i64 %.idx.i.i507, %.idx1669 ; 2 uses
  %.not1072 = icmp eq i64 %i.btp, %.idx1668
  br i1 %.not1072, label %.loopexit, label %bb.ix

.loopexit:                                        ; preds = %.lr.ph.i.i.i465, %_ZN4llvm11SmallVectorINS_3rdf8NodeAddrIPNS1_8NodeBaseEEELj4EED2Ev.exit501, %_ZN4llvm16DenseMapIteratorIjNS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEESD_NSF_IjSH_EELb0EEppEv.exit, %.lr.ph.i.i508.preheader, %.lr.ph.i.i508, %.lr.ph.i.i.i465.preheader, %_ZN4llvm11raw_ostreamlsEPKc.exit459, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEESD_NSF_IjSH_EEEEjSH_SD_SI_E5beginEv.exit, %._crit_edge1299
  call void @_ZNSt10_HashtableIN4llvm3rdf12RegisterAggrESt4pairIKS2_St13unordered_mapINS1_11RegisterRefES6_St4hashIS6_ENS1_18RegisterRefEqualToESaIS3_IKS6_S6_EEEESaISE_ENSt8__detail10_Select1stESt8equal_toIS2_ES7_IS2_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(56) %27) #20
  %i.btq = load ptr, ptr %27, align 8, !tbaa !607 ; 2 uses
  %i.btr = icmp eq ptr %i.btq, %i.arv
  br i1 %i.btr, label %_ZNSt13unordered_mapIN4llvm3rdf12RegisterAggrES_INS1_11RegisterRefES3_St4hashIS3_ENS1_18RegisterRefEqualToESaISt4pairIKS3_S3_EEES4_IS2_ESt8equal_toIS2_ESaIS7_IKS2_SB_EEED2Ev.exit, label %bb.jr

bb.jr:                                            ; preds = %.loopexit
  %i.bts = load i64, ptr %i.arw, align 8, !tbaa !609
  %i.btt = shl i64 %i.bts, 3
  call void @_ZdlPvm(ptr noundef %i.btq, i64 noundef %i.btt) #23
  br label %_ZNSt13unordered_mapIN4llvm3rdf12RegisterAggrES_INS1_11RegisterRefES3_St4hashIS3_ENS1_18RegisterRefEqualToESaISt4pairIKS3_S3_EEES4_IS2_ESt8equal_toIS2_ESaIS7_IKS2_SB_EEED2Ev.exit

_ZNSt13unordered_mapIN4llvm3rdf12RegisterAggrES_INS1_11RegisterRefES3_St4hashIS3_ENS1_18RegisterRefEqualToESaISt4pairIKS3_S3_EEES4_IS2_ESt8equal_toIS2_ESaIS7_IKS2_SB_EEED2Ev.exit: ; preds = %.loopexit, %bb.jr
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #20
  %i.btu = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 2 uses
  %i.btv = load i32, ptr %i.btu, align 4, !tbaa !591 ; 2 uses
  %i.btw = icmp eq i32 %i.btv, 0
  br i1 %i.btw, label %_ZN4llvm8DenseMapIjNS_3rdf12RegisterAggrENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %_ZNSt13unordered_mapIN4llvm3rdf12RegisterAggrES_INS1_11RegisterRefES3_St4hashIS3_ENS1_18RegisterRefEqualToESaISt4pairIKS3_S3_EEES4_IS2_ESt8equal_toIS2_ESaIS7_IKS2_SB_EEED2Ev.exit
  %i.btx = load ptr, ptr %7, align 8, !tbaa !578
  %i.bty = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.btz = load ptr, ptr %i.bty, align 8, !tbaa !590
  %i.bua = zext i32 %i.btv to i64
  %i.bub = add nuw nsw i64 %i.bua, 31
  %i.buc = lshr i64 %i.bub, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i511, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i511 ] ; 3 uses
  %i.bud = getelementptr inbounds nuw [4 x i8], ptr %i.btz, i64 %indvars.iv.i.i
  %i.bue = load i32, ptr %i.bud, align 4, !tbaa !45 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.bue, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i511, label %.lr.ph.i.i510

.lr.ph.i.i510:                                    ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.buf = shl i32 %indvars.iv.tr.i.i, 5
  br label %bb.js

bb.js:                                            ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_3rdf12RegisterAggrENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i510
  %.0.i3.i.i = phi i32 [ %i.bue, %.lr.ph.i.i510 ], [ %i.bup, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_3rdf12RegisterAggrENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.bug = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.buh = or disjoint i32 %i.bug, %i.buf
  %i.bui = zext i32 %i.buh to i64
  %i.buj = getelementptr inbounds nuw [88 x i8], ptr %i.btx, i64 %i.bui ; 2 uses
  %i.buk = getelementptr inbounds nuw i8, ptr %i.buj, i64 8
  %i.bul = load ptr, ptr %i.buk, align 8, !tbaa !21 ; 2 uses
  %i.bum = getelementptr inbounds nuw i8, ptr %i.buj, i64 24
  %i.bun = icmp eq ptr %i.bul, %i.bum
  br i1 %i.bun, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_3rdf12RegisterAggrENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.jt

bb.jt:                                            ; preds = %bb.js
  call void @free(ptr noundef %i.bul) #20
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_3rdf12RegisterAggrENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_3rdf12RegisterAggrENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.jt, %bb.js
  %i.buo = add i32 %.0.i3.i.i, -1
  %i.bup = and i32 %i.buo, %.0.i3.i.i             ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.bup, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i511, label %bb.js, !llvm.loop !678

._crit_edge.i.i511:                               ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_3rdf12RegisterAggrENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i512 = icmp eq i64 %indvars.iv.next.i.i, %i.buc
  br i1 %.not.i.i.i512, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_3rdf12RegisterAggrENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !679

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_3rdf12RegisterAggrENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i511
  %.pr.i = load i32, ptr %i.btu, align 4, !tbaa !591 ; 2 uses
  %i.buq = icmp eq i32 %.pr.i, 0
  br i1 %i.buq, label %_ZN4llvm8DenseMapIjNS_3rdf12RegisterAggrENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEED2Ev.exit, label %bb.ju

bb.ju:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_3rdf12RegisterAggrENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E10destroyAllEv.exit.i
  %i.bur = load ptr, ptr %7, align 8, !tbaa !578
  %i.bus = zext i32 %.pr.i to i64                 ; 2 uses
  %i.but = mul nuw nsw i64 %i.bus, 88
  %i.buu = add nuw nsw i64 %i.bus, 31
  %i.buv = lshr i64 %i.buu, 3
  %i.buw = and i64 %i.buv, 1073741820
  %i.bux = add nuw nsw i64 %i.buw, %i.but
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bur, i64 noundef %i.bux, i64 noundef 8) #20
  br label %_ZN4llvm8DenseMapIjNS_3rdf12RegisterAggrENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEED2Ev.exit

_ZN4llvm8DenseMapIjNS_3rdf12RegisterAggrENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEED2Ev.exit: ; preds = %_ZNSt13unordered_mapIN4llvm3rdf12RegisterAggrES_INS1_11RegisterRefES3_St4hashIS3_ENS1_18RegisterRefEqualToESaISt4pairIKS3_S3_EEES4_IS2_ESt8equal_toIS2_ESaIS7_IKS2_SB_EEED2Ev.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_3rdf12RegisterAggrENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E10destroyAllEv.exit.i, %bb.ju
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %.not.i.i.i513 = icmp eq ptr %.sroa.0981.2.lcssa, null
  br i1 %.not.i.i.i513, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.jv

bb.jv:                                            ; preds = %_ZN4llvm8DenseMapIjNS_3rdf12RegisterAggrENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEED2Ev.exit
  %i.buy = ptrtoint ptr %.sroa.17.2.lcssa to i64
  %i.buz = sub i64 %i.buy, %.lcssa1131
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0981.2.lcssa, i64 noundef %i.buz) #23
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %_ZN4llvm8DenseMapIjNS_3rdf12RegisterAggrENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEED2Ev.exit, %bb.jv
  %i.bva = load ptr, ptr %i.af, align 8, !tbaa !208
  call void @_ZNSt8_Rb_treeIjSt4pairIKjSt3mapIjN4llvm3rdf12RegisterAggrESt4lessIjESaIS0_IS1_S5_EEEESt10_Select1stISB_ES7_SaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef %i.bva)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.bvb = load ptr, ptr %4, align 8, !tbaa !21   ; 2 uses
  %i.bvc = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bvd = icmp eq ptr %i.bvb, %i.bvc
  br i1 %i.bvd, label %_ZN4llvm11SmallVectorINS_3rdf8NodeAddrIPNS1_8NodeBaseEEELj4EED2Ev.exit514, label %bb.jw

bb.jw:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  call void @free(ptr noundef %i.bvb) #20
  br label %_ZN4llvm11SmallVectorINS_3rdf8NodeAddrIPNS1_8NodeBaseEEELj4EED2Ev.exit514

_ZN4llvm11SmallVectorINS_3rdf8NodeAddrIPNS1_8NodeBaseEEELj4EED2Ev.exit514: ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %bb.jw
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.bve = load ptr, ptr %3, align 8, !tbaa !21   ; 2 uses
  %i.bvf = icmp eq ptr %i.bve, %i.r
  br i1 %i.bvf, label %_ZN4llvm11SmallVectorINS_3rdf8NodeAddrIPNS1_8NodeBaseEEELj4EED2Ev.exit515, label %bb.jx

bb.jx:                                            ; preds = %_ZN4llvm11SmallVectorINS_3rdf8NodeAddrIPNS1_8NodeBaseEEELj4EED2Ev.exit514
  call void @free(ptr noundef %i.bve) #20
  br label %_ZN4llvm11SmallVectorINS_3rdf8NodeAddrIPNS1_8NodeBaseEEELj4EED2Ev.exit515

_ZN4llvm11SmallVectorINS_3rdf8NodeAddrIPNS1_8NodeBaseEEELj4EED2Ev.exit515: ; preds = %_ZN4llvm11SmallVectorINS_3rdf8NodeAddrIPNS1_8NodeBaseEEELj4EED2Ev.exit514, %bb.jx
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void
}

declare { i32, i64 } @_ZNK4llvm3rdf12RegisterAggr13intersectWithENS0_11RegisterRefE(ptr noundef nonnull align 8 dereferenceable(80), i32, i64) local_unnamed_addr #4

declare { i32, i64 } @_ZNK4llvm3rdf12RegisterAggr7clearInENS0_11RegisterRefE(ptr noundef nonnull align 8 dereferenceable(80), i32, i64) local_unnamed_addr #4

declare { i32, i64 } @_ZNK4llvm3rdf20PhysicalRegisterInfo5mapToENS0_11RegisterRefEj(ptr noundef nonnull align 8 dereferenceable(216), i32, i64, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm3rdf8Liveness7emptifyERNS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS6_ESt8equal_toIS6_ESaIS6_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSC_EEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !43   ; 3 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !35
  %.not18.i = icmp eq i32 %i.d, 0
  br i1 %.not18.i, label %"_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E9remove_ifIZNS_3rdf8Liveness7emptifyERSH_E3$_0EEbT_.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = zext i32 %i.d to i64                     ; 2 uses
  br label %.outer

.outer:                                           ; preds = %.thread, %.lr.ph.i
  %indvars.iv.i.ph = phi i64 [ %indvars.iv.next.i2, %.thread ], [ 0, %.lr.ph.i ]
  %.01619.i.ph = phi i1 [ true, %.thread ], [ false, %.lr.ph.i ]
  br label %bb.b

._crit_edge.i:                                    ; preds = %bb.f
  br i1 %.01619.i.ph, label %._crit_edge.i.thread, label %"_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E9remove_ifIZNS_3rdf8Liveness7emptifyERSH_E3$_0EEbT_.exit"

bb.b:                                             ; preds = %.outer, %bb.f
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.f ], [ %indvars.iv.i.ph, %.outer ] ; 5 uses
  %i.h = lshr i64 %indvars.iv.i, 5                ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !45
  %i.k = trunc nuw i64 %indvars.iv.i to i32
  %i.l = and i32 %i.k, 31                         ; 2 uses
  %i.m = lshr i32 %i.j, %i.l
  %i.n = trunc i32 %i.m to i1
  br i1 %i.n, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw [64 x i8], ptr %i.e, i64 %indvars.iv.i ; 5 uses
  %i.p = getelementptr i8, ptr %i.o, i64 32
  %.val.i = load i64, ptr %i.p, align 8, !tbaa !542
  %i.q = icmp eq i64 %.val.i, 0
  br i1 %i.q, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.h ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !164  ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt10_HashtableISt4pairIjN4llvm11LaneBitmaskEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i ], [ %i.u, %bb.d ] ; 2 uses
  %i.v = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !168 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i, i64 noundef 32) #23
  %.not.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10_HashtableISt4pairIjN4llvm11LaneBitmaskEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !576

_ZNSt10_HashtableISt4pairIjN4llvm11LaneBitmaskEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.d
  %i.w = load ptr, ptr %i.s, align 8, !tbaa !539
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !540
  %i.z = shl i64 %i.y, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.w, i8 0, i64 %i.z, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  %i.aa = load ptr, ptr %i.s, align 8, !tbaa !539 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %.thread, label %bb.e

bb.e:                                             ; preds = %_ZNSt10_HashtableISt4pairIjN4llvm11LaneBitmaskEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i
  %i.ad = load i64, ptr %i.x, align 8, !tbaa !540
  %i.ae = shl i64 %i.ad, 3
  tail call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #23
  br label %.thread

bb.f:                                             ; preds = %bb.c, %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next.i, %i.g
  br i1 %.not.i, label %._crit_edge.i, label %bb.b, !llvm.loop !680

.thread:                                          ; preds = %_ZNSt10_HashtableISt4pairIjN4llvm11LaneBitmaskEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i, %bb.e
  %i.af = shl nuw i32 1, %i.l
  %i.ag = xor i32 %i.af, -1
  %i.ah = load i32, ptr %i.r, align 4, !tbaa !45
  %i.ai = and i32 %i.ah, %i.ag
  store i32 %i.ai, ptr %i.r, align 4, !tbaa !45
  %i.aj = load i32, ptr %i.f, align 8, !tbaa !44
  %i.ak = add i32 %i.aj, -1
  store i32 %i.ak, ptr %i.f, align 8, !tbaa !44
  %indvars.iv.next.i2 = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i3 = icmp eq i64 %indvars.iv.next.i2, %i.g
  br i1 %.not.i3, label %._crit_edge.i.thread, label %.outer, !llvm.loop !680

._crit_edge.i.thread:                             ; preds = %.thread, %._crit_edge.i
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %i.d)
  br label %"_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E9remove_ifIZNS_3rdf8Liveness7emptifyERSH_E3$_0EEbT_.exit"

"_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E9remove_ifIZNS_3rdf8Liveness7emptifyERSH_E3$_0EEbT_.exit": ; preds = %bb.a, %._crit_edge.i, %._crit_edge.i.thread
  ret void
}

declare noundef nonnull align 8 dereferenceable(80) ptr @_ZN4llvm3rdf12RegisterAggr6insertERKS1_(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm4dbgsEv() local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm3rdflsERNS_11raw_ostreamERKNS0_5PrintINS0_12RegisterAggrEEE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK4llvm3rdf12RegisterAggr10hasAliasOfENS0_11RegisterRefE(ptr noundef nonnull align 8 dereferenceable(80), i32, i64) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSA_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !43   ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSA_EEE17deallocateBucketsEv.exit, label %.lr.ph7.preheader.i

.lr.ph7.preheader.i:                              ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !35
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !42
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %._crit_edge.i, %.lr.ph7.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph7.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !45   ; 2 uses
  %.not11.i2.i = icmp eq i32 %i.k, 0
  br i1 %.not11.i2.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph7.i
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i32
  %i.l = shl i32 %indvars.iv.tr.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i3.i = phi i32 [ %i.k, %.lr.ph.i ], [ %i.ae, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i, i1 true)
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [64 x i8], ptr %i.d, i64 %i.o ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !164  ; 2 uses
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not5.i.i.i.i.i.i, label %_ZNSt10_HashtableISt4pairIjN4llvm11LaneBitmaskEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i
  %.06.i.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.i ], [ %i.s, %bb.b ] ; 2 uses
  %i.t = load ptr, ptr %.06.i.i.i.i.i.i, align 8, !tbaa !168 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i.i, i64 noundef 32) #23
  %.not.i.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt10_HashtableISt4pairIjN4llvm11LaneBitmaskEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !576

_ZNSt10_HashtableISt4pairIjN4llvm11LaneBitmaskEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.b
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !539
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !540
  %i.x = shl i64 %i.w, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.u, i8 0, i64 %i.x, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !539  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt10_HashtableISt4pairIjN4llvm11LaneBitmaskEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i
  %i.ab = load i64, ptr %i.v, align 8, !tbaa !540
  %i.ac = shl i64 %i.ab, 3
  tail call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #23
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %bb.c, %_ZNSt10_HashtableISt4pairIjN4llvm11LaneBitmaskEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i
  %i.ad = add i32 %.0.i3.i, -1
  %i.ae = and i32 %i.ad, %.0.i3.i                 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.b, !llvm.loop !681

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph7.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.i
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E10destroyAllEv.exit, label %.lr.ph7.i, !llvm.loop !682

_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E10destroyAllEv.exit: ; preds = %._crit_edge.i
  %.pr = load i32, ptr %i.a, align 4, !tbaa !43   ; 2 uses
  %i.af = icmp eq i32 %.pr, 0
  br i1 %i.af, label %_ZN4llvm8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSA_EEE17deallocateBucketsEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E10destroyAllEv.exit
  %i.ag = load ptr, ptr %0, align 8, !tbaa !35
  %i.ah = zext i32 %.pr to i64                    ; 2 uses
  %i.ai = shl nuw nsw i64 %i.ah, 6
  %i.aj = add nuw nsw i64 %i.ah, 31
  %i.ak = lshr i64 %i.aj, 3
  %i.al = and i64 %i.ak, 1073741820
  %i.am = add nuw nsw i64 %i.al, %i.ai
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ag, i64 noundef %i.am, i64 noundef 8) #20
  br label %_ZN4llvm8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSA_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSA_EEE17deallocateBucketsEv.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E10destroyAllEv.exit, %bb.d
  ret void
}

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm3rdflsERNS_11raw_ostreamERKNS0_5PrintINS0_11RegisterRefEEE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm3rdf8Liveness14computeLiveInsEv(ptr noundef nonnull align 8 dereferenceable(472) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %1 = alloca %"struct.llvm::rdf::RegisterAggr::ref_iterator", align 8 ; 9 uses
  %2 = alloca %"struct.llvm::rdf::RegisterAggr::ref_iterator", align 8 ; 8 uses
  %3 = alloca %"struct.std::_Rb_tree<unsigned int, std::pair<const unsigned int, llvm::LaneBitmask>, std::_Select1st<std::pair<const unsigned int, llvm::LaneBitmask>>, std::less<unsigned int>>::_Alloc_node", align 8 ; 4 uses
  %4 = alloca %"struct.std::_Rb_tree<unsigned int, std::pair<const unsigned int, llvm::LaneBitmask>, std::_Select1st<std::pair<const unsigned int, llvm::LaneBitmask>>, std::less<unsigned int>>::_Alloc_node", align 8 ; 4 uses
  %5 = alloca %"struct.llvm::rdf::RegisterAggr::ref_iterator", align 8 ; 10 uses
  %6 = alloca %"struct.llvm::rdf::RegisterAggr::ref_iterator", align 8 ; 10 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %7 = alloca %"struct.std::_Rb_tree<llvm::MachineBasicBlock *, llvm::MachineBasicBlock *, std::_Identity<llvm::MachineBasicBlock *>, std::less<llvm::MachineBasicBlock *>>::_Alloc_node", align 8 ; 4 uses
  %8 = alloca %"class.std::tuple.562", align 8    ; 4 uses
  %9 = alloca %"class.std::tuple.557", align 1    ; 3 uses
  %10 = alloca %"class.llvm::SmallVector.84", align 8 ; 7 uses
  %11 = alloca %"class.llvm::SmallVector.84", align 8 ; 7 uses
  %12 = alloca %"class.llvm::SmallVector.84", align 8 ; 7 uses
  %13 = alloca %"class.std::map.109", align 8     ; 9 uses
  %14 = alloca %"class.llvm::SetVector.385", align 8 ; 18 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %15 = alloca %"struct.std::pair.401", align 8   ; 13 uses
  %16 = alloca %"class.llvm::SmallVector.84", align 8 ; 8 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %17 = alloca %"class.llvm::SmallVector.84", align 8 ; 10 uses
  %18 = alloca %"struct.llvm::rdf::Print", align 8 ; 5 uses
  %19 = alloca %"class.llvm::SmallVector.84", align 8 ; 10 uses
  %20 = alloca %"class.std::set", align 8         ; 7 uses
  %21 = alloca %"class.llvm::SmallVector.84", align 8 ; 10 uses
  %22 = alloca %"class.llvm::SmallVector.84", align 8 ; 7 uses
  %23 = alloca %"struct.llvm::rdf::RegisterAggr", align 8 ; 13 uses
  %24 = alloca %"class.llvm::SmallVector.84", align 8 ; 7 uses
  %25 = alloca %"struct.llvm::rdf::Print", align 8 ; 5 uses
  %26 = alloca %"class.llvm::DenseMap", align 8   ; 5 uses
  %27 = alloca %"class.llvm::Printable", align 8  ; 8 uses
  %28 = alloca %"struct.llvm::rdf::RegisterRef", align 8 ; 4 uses
  %29 = alloca %"struct.llvm::rdf::Print.303", align 8 ; 5 uses
  %30 = alloca %"class.llvm::iterator_range.418", align 8 ; 16 uses
  %31 = alloca %"struct.llvm::rdf::RegisterAggr::ref_iterator", align 8 ; 12 uses
  %32 = alloca %"struct.llvm::rdf::RegisterAggr::ref_iterator", align 8 ; 12 uses
  %33 = alloca %"struct.llvm::rdf::RegisterRef", align 8 ; 4 uses
  %34 = alloca %"struct.llvm::rdf::Print.303", align 8 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 8 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !683  ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjPNS_17MachineBasicBlockENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E5clearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = shl i32 %i.h, 2
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.l = load i32, ptr %i.k, align 4, !tbaa !684  ; 3 uses
  %i.m = icmp ult i32 %i.j, %i.l
  %i.n = icmp ugt i32 %i.l, 64
  %or.cond.i = and i1 %i.m, %i.n
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjPNS_17MachineBasicBlockENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E16shrink_and_clearEv(ptr noundef nonnull align 1 dereferenceable(1) %i.f)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjPNS_17MachineBasicBlockENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E5clearEv.exit

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !685
  %i.q = zext i32 %i.l to i64
  %i.r = add nuw nsw i64 %i.q, 31
  %i.s = lshr i64 %i.r, 3
  %i.t = and i64 %i.s, 1073741820
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %i.t, i1 false)
  store i32 0, ptr %i.g, align 8, !tbaa !683
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjPNS_17MachineBasicBlockENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E5clearEv.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIjPNS_17MachineBasicBlockENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E5clearEv.exit: ; preds = %bb.a, %bb.c, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.u = load ptr, ptr %0, align 8, !tbaa !174, !nonnull !19, !align !34 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 352
  %.sroa.0.0.copyload.i = load ptr, ptr %i.v, align 8, !tbaa !485
  call void @_ZNK4llvm3rdf8CodeNode7membersERKNS0_13DataFlowGraphE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.84") align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(808) %i.u) #20
  %i.w = load ptr, ptr %10, align 8, !tbaa !21    ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !169  ; 2 uses
  %i.z = zext i32 %i.y to i64
  %.idx = shl nuw nsw i64 %i.z, 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx
  %.not949 = icmp eq i32 %i.y, 0
  br i1 %.not949, label %._crit_edge952, label %.lr.ph951

.lr.ph951:                                        ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjPNS_17MachineBasicBlockENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E5clearEv.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 300 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %11, i64 16
  br label %bb.f

._crit_edge952.loopexit:                          ; preds = %_ZN4llvm11SmallVectorINS_3rdf8NodeAddrIPNS1_8NodeBaseEEELj4EED2Ev.exit185
  %.pre1119 = load ptr, ptr %10, align 8, !tbaa !21
  br label %._crit_edge952

._crit_edge952:                                   ; preds = %._crit_edge952.loopexit, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjPNS_17MachineBasicBlockENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E5clearEv.exit
  %i.ah = phi ptr [ %.pre1119, %._crit_edge952.loopexit ], [ %i.w, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjPNS_17MachineBasicBlockENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E5clearEv.exit ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZN4llvm11SmallVectorINS_3rdf8NodeAddrIPNS1_8NodeBaseEEELj4EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge952
  call void @free(ptr noundef %i.ah) #20
  br label %_ZN4llvm11SmallVectorINS_3rdf8NodeAddrIPNS1_8NodeBaseEEELj4EED2Ev.exit

_ZN4llvm11SmallVectorINS_3rdf8NodeAddrIPNS1_8NodeBaseEEELj4EED2Ev.exit: ; preds = %._crit_edge952, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  %i.ak = load ptr, ptr %0, align 8, !tbaa !174, !nonnull !19, !align !34
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !686, !nonnull !19, !align !34 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  %i.an = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 8 uses
  store i32 0, ptr %i.an, align 8, !tbaa !207
  %i.ao = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  store ptr null, ptr %i.ao, align 8, !tbaa !208
  %i.ap = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  store ptr %i.an, ptr %i.ap, align 8, !tbaa !209
  %i.aq = getelementptr inbounds nuw i8, ptr %13, i64 32
  store ptr %i.an, ptr %i.aq, align 8, !tbaa !210
  %i.ar = getelementptr inbounds nuw i8, ptr %13, i64 40
  store i64 0, ptr %i.ar, align 8, !tbaa !211
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 304 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 296 ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN4llvm3rdf8Liveness14computeLiveInsEv:bb.a
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_3rdf8NodeAddrIPNS1_8NodeBaseEEELb1EE9push_backES5_.exit.i265

_ZN4llvm23SmallVectorTemplateBaseINS_3rdf8NodeAddrIPNS1_8NodeBaseEEELb1EE9push_backES5_.exit.i265: ; preds = %bb.dk, %bb.dj, %.lr.ph.i262
  %i.asp = getelementptr inbounds nuw i8, ptr %.sroa.011.023.i263, i64 4
  %i.asq = load i32, ptr %i.asp, align 4, !tbaa !371 ; 2 uses
  %i.asr = call noundef ptr @_ZNK4llvm3rdf13DataFlowGraph3ptrEj(ptr noundef nonnull align 8 dereferenceable(808) %i.asc, i32 noundef %i.asq) #20 ; 2 uses
  %.not.i266 = icmp eq ptr %i.asr, %i.aoz
  br i1 %.not.i266, label %_ZNK4llvm3rdf8CodeNode10members_ifIPFbNS0_8NodeAddrIPNS0_8NodeBaseEEEEEENS_11SmallVectorIS6_Lj4EEET_RKNS0_13DataFlowGraphE.exit269, label %.lr.ph.i262, !llvm.loop !403

_ZNK4llvm3rdf8CodeNode10members_ifIPFbNS0_8NodeAddrIPNS0_8NodeBaseEEEEEENS_11SmallVectorIS6_Lj4EEET_RKNS0_13DataFlowGraphE.exit269: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_3rdf8NodeAddrIPNS1_8NodeBaseEEELb1EE9push_backES5_.exit.i265, %bb.dh
  %i.ass = load ptr, ptr %21, align 8, !tbaa !21  ; 3 uses
  %i.ast = load i32, ptr %i.ang, align 8, !tbaa !169 ; 2 uses
  %i.asu = zext i32 %i.ast to i64
  %.idx1061 = shl nuw nsw i64 %i.asu, 4
  %i.asv = getelementptr inbounds nuw i8, ptr %i.ass, i64 %.idx1061
  %.not1791006 = icmp eq i32 %i.ast, 0
  br i1 %.not1791006, label %._crit_edge1009, label %.lr.ph1008

.lr.ph1008:                                       ; preds = %_ZNK4llvm3rdf8CodeNode10members_ifIPFbNS0_8NodeAddrIPNS0_8NodeBaseEEEEEENS_11SmallVectorIS6_Lj4EEET_RKNS0_13DataFlowGraphE.exit269
  %i.asw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i521, i64 16
  %i.asx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i521, i64 28
  br label %bb.dm

._crit_edge1009.loopexit:                         ; preds = %_ZNSt3setIjSt4lessIjESaIjEE6insertERKj.exit
  %.pre1133 = load ptr, ptr %21, align 8, !tbaa !21
  br label %._crit_edge1009

._crit_edge1009:                                  ; preds = %._crit_edge1009.loopexit, %_ZNK4llvm3rdf8CodeNode10members_ifIPFbNS0_8NodeAddrIPNS0_8NodeBaseEEEEEENS_11SmallVectorIS6_Lj4EEET_RKNS0_13DataFlowGraphE.exit269
  %i.asy = phi ptr [ %.pre1133, %._crit_edge1009.loopexit ], [ %i.ass, %_ZNK4llvm3rdf8CodeNode10members_ifIPFbNS0_8NodeAddrIPNS0_8NodeBaseEEEEEENS_11SmallVectorIS6_Lj4EEET_RKNS0_13DataFlowGraphE.exit269 ] ; 2 uses
  %i.asz = icmp eq ptr %i.asy, %i.anf
  br i1 %i.asz, label %_ZN4llvm11SmallVectorINS_3rdf8NodeAddrIPNS1_8NodeBaseEEELj4EED2Ev.exit270, label %bb.dl

bb.dl:                                            ; preds = %._crit_edge1009
  call void @free(ptr noundef %i.asy) #20
  br label %_ZN4llvm11SmallVectorINS_3rdf8NodeAddrIPNS1_8NodeBaseEEELj4EED2Ev.exit270

_ZN4llvm11SmallVectorINS_3rdf8NodeAddrIPNS1_8NodeBaseEEELj4EED2Ev.exit270: ; preds = %._crit_edge1009, %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  %i.ata = load ptr, ptr %i.anc, align 8, !tbaa !208
  call void @_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE8_M_eraseEPSt13_Rb_tree_nodeIjE(ptr noundef nonnull align 8 dereferenceable(48) %20, ptr noundef %i.ata)
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  br label %bb.fk

bb.dm:                                            ; preds = %.lr.ph1008, %_ZNSt3setIjSt4lessIjESaIjEE6insertERKj.exit
  %.01721007 = phi ptr [ %i.ass, %.lr.ph1008 ], [ %i.bhb, %_ZNSt3setIjSt4lessIjESaIjEE6insertERKj.exit ] ; 3 uses
  %.sroa.0747.0.copyload = load ptr, ptr %.01721007, align 8, !tbaa !198 ; 4 uses
  %.sroa.4748.0..0172.sroa_idx = getelementptr inbounds nuw i8, ptr %.01721007, i64 8
  %.sroa.4748.0.copyload = load i32, ptr %.sroa.4748.0..0172.sroa_idx, align 8, !tbaa !45 ; 6 uses
  %.02022.i.i.i271 = load ptr, ptr %i.anc, align 8, !tbaa !264 ; 2 uses
  %.not23.i.i.i272 = icmp eq ptr %.02022.i.i.i271, null
  br i1 %.not23.i.i.i272, label %._crit_edge.thread.i.i.i288, label %.lr.ph.i.i.i273

.lr.ph.i.i.i273:                                  ; preds = %bb.dm, %.lr.ph.i.i.i273
  %.02024.i.i.i274 = phi ptr [ %.020.i.i.i277, %.lr.ph.i.i.i273 ], [ %.02022.i.i.i271, %bb.dm ] ; 4 uses
  %i.atb = getelementptr inbounds nuw i8, ptr %.02024.i.i.i274, i64 32
  %i.atc = load i32, ptr %i.atb, align 4, !tbaa !45 ; 2 uses
  %i.atd = icmp ult i32 %.sroa.4748.0.copyload, %i.atc ; 2 uses
  %.in.v.i.i.i275 = select i1 %i.atd, i64 16, i64 24
  %.in.i.i.i276 = getelementptr inbounds nuw i8, ptr %.02024.i.i.i274, i64 %.in.v.i.i.i275
  %.020.i.i.i277 = load ptr, ptr %.in.i.i.i276, align 8, !tbaa !264 ; 2 uses
  %.not.i.i.i278 = icmp eq ptr %.020.i.i.i277, null
  br i1 %.not.i.i.i278, label %._crit_edge.i.i.i279, label %.lr.ph.i.i.i273, !llvm.loop !399

._crit_edge.i.i.i279:                             ; preds = %.lr.ph.i.i.i273
  br i1 %i.atd, label %._crit_edge.thread.i.i.i288, label %bb.do

._crit_edge.thread.i.i.i288:                      ; preds = %._crit_edge.i.i.i279, %bb.dm
  %.019.lcssa29.i.i.i289 = phi ptr [ %.02024.i.i.i274, %._crit_edge.i.i.i279 ], [ %i.anb, %bb.dm ] ; 4 uses
  %i.ate = load ptr, ptr %i.and, align 8, !tbaa !209
  %i.atf = icmp eq ptr %.019.lcssa29.i.i.i289, %i.ate
  br i1 %i.atf, label %select.unfold.i.i286, label %bb.dn

bb.dn:                                            ; preds = %._crit_edge.thread.i.i.i288
  %i.atg = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i289) #24
  %.phi.trans.insert.i.i290 = getelementptr inbounds nuw i8, ptr %i.atg, i64 32
  %.pre.i.i291 = load i32, ptr %.phi.trans.insert.i.i290, align 4, !tbaa !45
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %._crit_edge.i.i.i279
  %i.ath = phi i32 [ %.pre.i.i291, %bb.dn ], [ %i.atc, %._crit_edge.i.i.i279 ]
  %.019.lcssa28.i.i.i280 = phi ptr [ %.019.lcssa29.i.i.i289, %bb.dn ], [ %.02024.i.i.i274, %._crit_edge.i.i.i279 ]
  %i.ati = icmp ult i32 %i.ath, %.sroa.4748.0.copyload
  br i1 %i.ati, label %select.unfold.i.i286, label %_ZNSt3setIjSt4lessIjESaIjEE6insertERKj.exit

select.unfold.i.i286:                             ; preds = %bb.do, %._crit_edge.thread.i.i.i288
  %.sroa.4.0.i.ph.i.i287 = phi ptr [ %.019.lcssa29.i.i.i289, %._crit_edge.thread.i.i.i288 ], [ %.019.lcssa28.i.i.i280, %bb.do ] ; 3 uses
  %i.atj = icmp eq ptr %.sroa.4.0.i.ph.i.i287, %i.anb
  br i1 %i.atj, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %select.unfold.i.i286
  %i.atk = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i287, i64 32
  %i.atl = load i32, ptr %i.atk, align 4, !tbaa !45
  %i.atm = icmp ult i32 %.sroa.4748.0.copyload, %i.atl
  br label %bb.dq

bb.dq:                                            ; preds = %select.unfold.i.i286, %bb.dp
  %i.atn = phi i1 [ %i.atm, %bb.dp ], [ true, %select.unfold.i.i286 ]
  %i.ato = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #22 ; 2 uses
  %i.atp = getelementptr inbounds nuw i8, ptr %i.ato, i64 32
  store i32 %.sroa.4748.0.copyload, ptr %i.atp, align 4, !tbaa !45
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.atn, ptr noundef nonnull %i.ato, ptr noundef nonnull %.sroa.4.0.i.ph.i.i287, ptr noundef nonnull align 8 dereferenceable(32) %i.anb) #20
  %i.atq = load i64, ptr %i.ane, align 8, !tbaa !211
  %i.atr = add i64 %i.atq, 1
  store i64 %i.atr, ptr %i.ane, align 8, !tbaa !211
  %i.ats = getelementptr inbounds nuw i8, ptr %.sroa.0747.0.copyload, i64 8
  %i.att = load i32, ptr %i.ats, align 8, !tbaa !29
  %i.atu = icmp eq i32 %i.att, 0
  br i1 %i.atu, label %_ZNSt3setIjSt4lessIjESaIjEE6insertERKj.exit, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.atv = load ptr, ptr %0, align 8, !tbaa !174, !nonnull !19, !align !34
  %i.atw = getelementptr inbounds nuw i8, ptr %.sroa.0747.0.copyload, i64 16
  %i.atx = load i32, ptr %i.atw, align 8, !tbaa !29
  %i.aty = call noundef ptr @_ZNK4llvm3rdf13DataFlowGraph3ptrEj(ptr noundef nonnull align 8 dereferenceable(808) %i.atv, i32 noundef %i.atx) #20
  %i.atz = getelementptr inbounds nuw i8, ptr %i.aty, i64 8
  %i.aua = load ptr, ptr %i.atz, align 8, !tbaa !29 ; 3 uses
  %i.aub = load ptr, ptr %i.anj, align 8, !tbaa !208 ; 2 uses
  %.not10.i.i.i.i295 = icmp eq ptr %i.aub, null
  br i1 %.not10.i.i.i.i295, label %.critedge.i304, label %.lr.ph.i.i.i.i296

.lr.ph.i.i.i.i296:                                ; preds = %bb.dr, %.lr.ph.i.i.i.i296
  %.012.i.i.i.i297 = phi ptr [ %.1.i.i.i.i302, %.lr.ph.i.i.i.i296 ], [ %i.aub, %bb.dr ] ; 3 uses
  %.0811.i.i.i.i298 = phi ptr [ %.19.i.i.i.i299, %.lr.ph.i.i.i.i296 ], [ %i.ank, %bb.dr ]
  %i.auc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i297, i64 32
  %i.aud = load ptr, ptr %i.auc, align 8, !tbaa !262
  %i.aue = icmp ult ptr %i.aud, %i.aua            ; 2 uses
  %.19.i.i.i.i299 = select i1 %i.aue, ptr %.0811.i.i.i.i298, ptr %.012.i.i.i.i297 ; 6 uses
  %.1.in.v.i.i.i.i300 = select i1 %i.aue, i64 24, i64 16
  %.1.in.i.i.i.i301 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i297, i64 %.1.in.v.i.i.i.i300
  %.1.i.i.i.i302 = load ptr, ptr %.1.in.i.i.i.i301, align 8, !tbaa !264 ; 2 uses
  %.not.i.i.i.i303 = icmp eq ptr %.1.i.i.i.i302, null
  br i1 %.not.i.i.i.i303, label %_ZNSt3mapIPN4llvm17MachineBasicBlockENS0_8DenseMapIjSt13unordered_setISt4pairIjNS0_11LaneBitmaskEESt4hashIS7_ESt8equal_toIS7_ESaIS7_EENS0_12DenseMapInfoIjvEENS0_6detail12DenseMapPairIjSD_EEEESt4lessIS2_ESaIS5_IKS2_SJ_EEE11lower_boundERSM_.exit.i, label %.lr.ph.i.i.i.i296, !llvm.loop !862

_ZNSt3mapIPN4llvm17MachineBasicBlockENS0_8DenseMapIjSt13unordered_setISt4pairIjNS0_11LaneBitmaskEESt4hashIS7_ESt8equal_toIS7_ESaIS7_EENS0_12DenseMapInfoIjvEENS0_6detail12DenseMapPairIjSD_EEEESt4lessIS2_ESaIS5_IKS2_SJ_EEE11lower_boundERSM_.exit.i: ; preds = %.lr.ph.i.i.i.i296
  %i.auf = icmp eq ptr %.19.i.i.i.i299, %i.ank
  br i1 %i.auf, label %.critedge.i304, label %bb.ds

bb.ds:                                            ; preds = %_ZNSt3mapIPN4llvm17MachineBasicBlockENS0_8DenseMapIjSt13unordered_setISt4pairIjNS0_11LaneBitmaskEESt4hashIS7_ESt8equal_toIS7_ESaIS7_EENS0_12DenseMapInfoIjvEENS0_6detail12DenseMapPairIjSD_EEEESt4lessIS2_ESaIS5_IKS2_SJ_EEE11lower_boundERSM_.exit.i
  %i.aug = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i299, i64 32
  %i.auh = load ptr, ptr %i.aug, align 8, !tbaa !843
  %i.aui = icmp ult ptr %i.aua, %i.auh
  br i1 %i.aui, label %.critedge.i304, label %_ZNSt3mapIPN4llvm17MachineBasicBlockENS0_8DenseMapIjSt13unordered_setISt4pairIjNS0_11LaneBitmaskEESt4hashIS7_ESt8equal_toIS7_ESaIS7_EENS0_12DenseMapInfoIjvEENS0_6detail12DenseMapPairIjSD_EEEESt4lessIS2_ESaIS5_IKS2_SJ_EEEixEOS2_.exit

.critedge.i304:                                   ; preds = %bb.ds, %_ZNSt3mapIPN4llvm17MachineBasicBlockENS0_8DenseMapIjSt13unordered_setISt4pairIjNS0_11LaneBitmaskEESt4hashIS7_ESt8equal_toIS7_ESaIS7_EENS0_12DenseMapInfoIjvEENS0_6detail12DenseMapPairIjSD_EEEESt4lessIS2_ESaIS5_IKS2_SJ_EEE11lower_boundERSM_.exit.i, %bb.dr
  %.08.lcssa.i.i.i14.i = phi ptr [ %.19.i.i.i.i299, %bb.ds ], [ %.19.i.i.i.i299, %_ZNSt3mapIPN4llvm17MachineBasicBlockENS0_8DenseMapIjSt13unordered_setISt4pairIjNS0_11LaneBitmaskEESt4hashIS7_ESt8equal_toIS7_ESaIS7_EENS0_12DenseMapInfoIjvEENS0_6detail12DenseMapPairIjSD_EEEESt4lessIS2_ESaIS5_IKS2_SJ_EEE11lower_boundERSM_.exit.i ], [ %i.ank, %bb.dr ]
  %i.auj = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #22 ; 7 uses
  %i.auk = getelementptr inbounds nuw i8, ptr %i.auj, i64 32 ; 3 uses
  store ptr %i.aua, ptr %i.auk, align 8, !tbaa !843
  %i.aul = getelementptr inbounds nuw i8, ptr %i.auj, i64 40 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aul, i8 0, i64 24, i1 false)
  %i.aum = call { ptr, ptr } @_ZNSt8_Rb_treeIPN4llvm17MachineBasicBlockESt4pairIKS2_NS0_8DenseMapIjSt13unordered_setIS3_IjNS0_11LaneBitmaskEESt4hashIS8_ESt8equal_toIS8_ESaIS8_EENS0_12DenseMapInfoIjvEENS0_6detail12DenseMapPairIjSE_EEEEESt10_Select1stISL_ESt4lessIS2_ESaISL_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISL_ERS4_(ptr noundef nonnull align 8 dereferenceable(48) %i.ani, ptr %.08.lcssa.i.i.i14.i, ptr noundef nonnull align 8 dereferenceable(8) %i.auk) ; 2 uses
  %i.aun = extractvalue { ptr, ptr } %i.aum, 0    ; 2 uses
  %i.auo = extractvalue { ptr, ptr } %i.aum, 1    ; 4 uses
  %.not.i.i305 = icmp eq ptr %i.auo, null
  br i1 %.not.i.i305, label %bb.dv, label %bb.dt

bb.dt:                                            ; preds = %.critedge.i304
  %.not.i.i.i4.i = icmp ne ptr %i.aun, null
  %i.aup = icmp eq ptr %i.auo, %i.ank
  %or.cond.i.i.i.i = select i1 %.not.i.i.i4.i, i1 true, i1 %i.aup
  br i1 %or.cond.i.i.i.i, label %.thread.i.i, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.auq = load ptr, ptr %i.auk, align 8, !tbaa !262
  %i.aur = getelementptr inbounds nuw i8, ptr %i.auo, i64 32
  %i.aus = load ptr, ptr %i.aur, align 8, !tbaa !262
  %i.aut = icmp ult ptr %i.auq, %i.aus
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.du, %bb.dt
  %i.auu = phi i1 [ %i.aut, %bb.du ], [ true, %bb.dt ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.auu, ptr noundef nonnull %i.auj, ptr noundef nonnull %i.auo, ptr noundef nonnull align 8 dereferenceable(32) %i.ank) #20
  %i.auv = load i64, ptr %i.anl, align 8, !tbaa !211
  %i.auw = add i64 %i.auv, 1
  store i64 %i.auw, ptr %i.anl, align 8, !tbaa !211
  br label %_ZNSt3mapIPN4llvm17MachineBasicBlockENS0_8DenseMapIjSt13unordered_setISt4pairIjNS0_11LaneBitmaskEESt4hashIS7_ESt8equal_toIS7_ESaIS7_EENS0_12DenseMapInfoIjvEENS0_6detail12DenseMapPairIjSD_EEEESt4lessIS2_ESaIS5_IKS2_SJ_EEEixEOS2_.exit

bb.dv:                                            ; preds = %.critedge.i304
  %i.aux = getelementptr inbounds nuw i8, ptr %i.auj, i64 60 ; 2 uses
  %i.auy = load i32, ptr %i.aux, align 4, !tbaa !43 ; 2 uses
  %i.auz = icmp eq i32 %i.auy, 0
  br i1 %i.auz, label %_ZN4llvm8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSA_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.dv
  %i.ava = load ptr, ptr %i.aul, align 8, !tbaa !35
  %i.avb = getelementptr inbounds nuw i8, ptr %i.auj, i64 48
  %i.avc = load ptr, ptr %i.avb, align 8, !tbaa !42
  %i.avd = zext i32 %i.auy to i64
  %i.ave = add nuw nsw i64 %i.avd, 31
  %i.avf = lshr i64 %i.ave, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i532, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i532 ] ; 3 uses
  %i.avg = getelementptr inbounds nuw [4 x i8], ptr %i.avc, i64 %indvars.iv.i.i
  %i.avh = load i32, ptr %i.avg, align 4, !tbaa !45 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.avh, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i532, label %.lr.ph.i.i529

.lr.ph.i.i529:                                    ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.avi = shl i32 %indvars.iv.tr.i.i, 5
  br label %bb.dw

bb.dw:                                            ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i529
  %.0.i3.i.i = phi i32 [ %i.avh, %.lr.ph.i.i529 ], [ %i.awb, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.avj = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.avk = or disjoint i32 %i.avj, %i.avi
  %i.avl = zext i32 %i.avk to i64
  %i.avm = getelementptr inbounds nuw [64 x i8], ptr %i.ava, i64 %i.avl ; 4 uses
  %i.avn = getelementptr inbounds nuw i8, ptr %i.avm, i64 8 ; 2 uses
  %i.avo = getelementptr inbounds nuw i8, ptr %i.avm, i64 24 ; 2 uses
  %i.avp = load ptr, ptr %i.avo, align 8, !tbaa !164 ; 2 uses
  %.not5.i.i.i.i.i.i.i = icmp eq ptr %i.avp, null
  br i1 %.not5.i.i.i.i.i.i.i, label %_ZNSt10_HashtableISt4pairIjN4llvm11LaneBitmaskEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.dw, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.avq, %.lr.ph.i.i.i.i.i.i.i ], [ %i.avp, %bb.dw ] ; 2 uses
  %i.avq = load ptr, ptr %.06.i.i.i.i.i.i.i, align 8, !tbaa !168 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i.i.i, i64 noundef 32) #23
  %.not.i.i.i.i.i.i.i530 = icmp eq ptr %i.avq, null
  br i1 %.not.i.i.i.i.i.i.i530, label %_ZNSt10_HashtableISt4pairIjN4llvm11LaneBitmaskEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !576

_ZNSt10_HashtableISt4pairIjN4llvm11LaneBitmaskEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.dw
  %i.avr = load ptr, ptr %i.avn, align 8, !tbaa !539
  %i.avs = getelementptr inbounds nuw i8, ptr %i.avm, i64 16 ; 2 uses
  %i.avt = load i64, ptr %i.avs, align 8, !tbaa !540
  %i.avu = shl i64 %i.avt, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.avr, i8 0, i64 %i.avu, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.avo, i8 0, i64 16, i1 false)
  %i.avv = load ptr, ptr %i.avn, align 8, !tbaa !539 ; 2 uses
  %i.avw = getelementptr inbounds nuw i8, ptr %i.avm, i64 56
  %i.avx = icmp eq ptr %i.avv, %i.avw
  br i1 %i.avx, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.dx

bb.dx:                                            ; preds = %_ZNSt10_HashtableISt4pairIjN4llvm11LaneBitmaskEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i
  %i.avy = load i64, ptr %i.avs, align 8, !tbaa !540
  %i.avz = shl i64 %i.avy, 3
  call void @_ZdlPvm(ptr noundef %i.avv, i64 noundef %i.avz) #23
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.dx, %_ZNSt10_HashtableISt4pairIjN4llvm11LaneBitmaskEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i
  %i.awa = add i32 %.0.i3.i.i, -1
  %i.awb = and i32 %i.awa, %.0.i3.i.i             ; 2 uses
  %.not11.i.i.i531 = icmp eq i32 %i.awb, 0
  br i1 %.not11.i.i.i531, label %._crit_edge.i.i532, label %bb.dw, !llvm.loop !681

._crit_edge.i.i532:                               ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i533 = icmp eq i64 %indvars.iv.next.i.i, %i.avf
  br i1 %.not.i.i.i533, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !682

_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i532
  %.pr.i = load i32, ptr %i.aux, align 4, !tbaa !43 ; 2 uses
  %i.awc = icmp eq i32 %.pr.i, 0
  br i1 %i.awc, label %_ZN4llvm8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSA_EEED2Ev.exit, label %bb.dy

bb.dy:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E10destroyAllEv.exit.i
  %i.awd = load ptr, ptr %i.aul, align 8, !tbaa !35
  %i.awe = zext i32 %.pr.i to i64                 ; 2 uses
  %i.awf = shl nuw nsw i64 %i.awe, 6
  %i.awg = add nuw nsw i64 %i.awe, 31
  %i.awh = lshr i64 %i.awg, 3
  %i.awi = and i64 %i.awh, 1073741820
  %i.awj = add nuw nsw i64 %i.awi, %i.awf
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.awd, i64 noundef %i.awj, i64 noundef 8) #20
  br label %_ZN4llvm8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSA_EEED2Ev.exit

_ZN4llvm8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSA_EEED2Ev.exit: ; preds = %bb.dv, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E10destroyAllEv.exit.i, %bb.dy
  call void @_ZdlPvm(ptr noundef nonnull %i.auj, i64 noundef 64) #23
  br label %_ZNSt3mapIPN4llvm17MachineBasicBlockENS0_8DenseMapIjSt13unordered_setISt4pairIjNS0_11LaneBitmaskEESt4hashIS7_ESt8equal_toIS7_ESaIS7_EENS0_12DenseMapInfoIjvEENS0_6detail12DenseMapPairIjSD_EEEESt4lessIS2_ESaIS5_IKS2_SJ_EEEixEOS2_.exit

_ZNSt3mapIPN4llvm17MachineBasicBlockENS0_8DenseMapIjSt13unordered_setISt4pairIjNS0_11LaneBitmaskEESt4hashIS7_ESt8equal_toIS7_ESaIS7_EENS0_12DenseMapInfoIjvEENS0_6detail12DenseMapPairIjSD_EEEESt4lessIS2_ESaIS5_IKS2_SJ_EEEixEOS2_.exit: ; preds = %bb.ds, %.thread.i.i, %_ZN4llvm8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSA_EEED2Ev.exit
  %.sroa.09.0.i = phi ptr [ %.19.i.i.i.i299, %bb.ds ], [ %i.auj, %.thread.i.i ], [ %i.aun, %_ZN4llvm8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSA_EEED2Ev.exit ] ; 4 uses
  %i.awk = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i, i64 40 ; 3 uses
  %i.awl = load ptr, ptr %i.ary, align 8, !tbaa !35, !noalias !863
  %i.awm = load ptr, ptr %i.asw, align 8, !tbaa !42, !noalias !863 ; 4 uses
  %i.awn = load i32, ptr %i.asx, align 4, !tbaa !43, !noalias !863 ; 2 uses
  %i.awo = load i32, ptr %i.arz, align 8, !tbaa !44, !noalias !863
  %i.awp = icmp eq i32 %i.awo, 0
  %i.awq = zext i32 %i.awn to i64                 ; 4 uses
  %.idx1351 = shl nuw nsw i64 %i.awq, 6           ; 2 uses
  %.not.i.not.i.i306 = icmp eq i32 %i.awn, 0
  %or.cond865 = select i1 %i.awp, i1 true, i1 %.not.i.not.i.i306
  br i1 %or.cond865, label %._crit_edge1000, label %bb.dz

bb.dz:                                            ; preds = %_ZNSt3mapIPN4llvm17MachineBasicBlockENS0_8DenseMapIjSt13unordered_setISt4pairIjNS0_11LaneBitmaskEESt4hashIS7_ESt8equal_toIS7_ESaIS7_EENS0_12DenseMapInfoIjvEENS0_6detail12DenseMapPairIjSD_EEEESt4lessIS2_ESaIS5_IKS2_SJ_EEEixEOS2_.exit
  %i.awr = add nuw nsw i64 %i.awq, 31
  %i.aws = lshr i64 %i.awr, 5                     ; 2 uses
  %i.awt = load i32, ptr %i.awm, align 4, !tbaa !45, !noalias !866 ; 2 uses
  %i.awu = icmp eq i32 %i.awt, 0
  br i1 %i.awu, label %.lr.ph.i.i.i312.preheader, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E5beginEv.exit315

.lr.ph.i.i.i312.preheader:                        ; preds = %bb.dz
  %i.awv = icmp eq i64 %i.aws, 1
  br i1 %i.awv, label %._crit_edge1000, label %.lr.ph1412

.lr.ph.i.i.i312:                                  ; preds = %.lr.ph1412
  %i.aww = add nuw nsw i64 %i.awy, 1              ; 2 uses
  %i.awx = icmp eq i64 %i.aww, %i.aws
  br i1 %i.awx, label %._crit_edge1000, label %.lr.ph1412, !llvm.loop !527

.lr.ph1412:                                       ; preds = %.lr.ph.i.i.i312.preheader, %.lr.ph.i.i.i312
  %i.awy = phi i64 [ %i.aww, %.lr.ph.i.i.i312 ], [ 1, %.lr.ph.i.i.i312.preheader ] ; 3 uses
  %i.awz = getelementptr inbounds nuw [4 x i8], ptr %i.awm, i64 %i.awy
  %i.axa = load i32, ptr %i.awz, align 4, !tbaa !45, !noalias !866 ; 2 uses
  %i.axb = icmp eq i32 %i.axa, 0
  br i1 %i.axb, label %.lr.ph.i.i.i312, label %._crit_edge.i.loopexit.i.i314, !llvm.loop !527

._crit_edge.i.loopexit.i.i314:                    ; preds = %.lr.ph1412
  %i.axc = shl i64 %i.awy, 11
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E5beginEv.exit315

_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E5beginEv.exit315: ; preds = %bb.dz, %._crit_edge.i.loopexit.i.i314
  %.012.lcssa.i.i.i308 = phi i64 [ 0, %bb.dz ], [ %i.axc, %._crit_edge.i.loopexit.i.i314 ]
  %.0.lcssa.i.i.i309 = phi i32 [ %i.awt, %bb.dz ], [ %i.axa, %._crit_edge.i.loopexit.i.i314 ]
  %i.axd = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i309, i1 true)
  %i.axe = shl nuw nsw i32 %i.axd, 6
  %.idx1350 = zext nneg i32 %i.axe to i64
  %i.axf = or disjoint i64 %.012.lcssa.i.i.i308, %.idx1350 ; 2 uses
  %.not870997 = icmp eq i64 %i.axf, %.idx1351
  br i1 %.not870997, label %._crit_edge1000, label %.lr.ph999

.lr.ph999:                                        ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E5beginEv.exit315
  %i.axg = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i, i64 48 ; 2 uses
  %i.axh = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i, i64 60 ; 2 uses
  %i.axi = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i, i64 56 ; 3 uses
  %i.axj = add nuw nsw i64 %i.awq, 31
  %i.axk = lshr i64 %i.axj, 5                     ; 2 uses
  br label %bb.ea

._crit_edge1000:                                  ; preds = %.lr.ph.i.i.i312, %._crit_edge996, %_ZN4llvm16DenseMapIteratorIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSA_EELb0EEppEv.exit324, %.lr.ph.i.i322.preheader, %.lr.ph.i.i322, %.lr.ph.i.i.i312.preheader, %_ZNSt3mapIPN4llvm17MachineBasicBlockENS0_8DenseMapIjSt13unordered_setISt4pairIjNS0_11LaneBitmaskEESt4hashIS7_ESt8equal_toIS7_ESaIS7_EENS0_12DenseMapInfoIjvEENS0_6detail12DenseMapPairIjSD_EEEESt4lessIS2_ESaIS5_IKS2_SJ_EEEixEOS2_.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E5beginEv.exit315
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #20
  %i.axl = load ptr, ptr %0, align 8, !tbaa !174, !nonnull !19, !align !34
  call void @_ZNK4llvm3rdf13DataFlowGraph14getRelatedRefsENS0_8NodeAddrIPNS0_9InstrNodeEEENS2_IPNS0_7RefNodeEEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.84") align 8 %24, ptr noundef nonnull align 8 dereferenceable(808) %i.axl, ptr nonnull %i.aoz, i32 %i.apb, ptr %.sroa.0747.0.copyload, i32 %.sroa.4748.0.copyload) #20
  %i.axm = load ptr, ptr %24, align 8, !tbaa !21  ; 3 uses
  %i.axn = load i32, ptr %i.anv, align 8, !tbaa !169 ; 2 uses
  %i.axo = zext i32 %i.axn to i64
  %.idx1063 = shl nuw nsw i64 %i.axo, 4
  %i.axp = getelementptr inbounds nuw i8, ptr %i.axm, i64 %.idx1063
  %.not1801001 = icmp eq i32 %i.axn, 0
  br i1 %.not1801001, label %._crit_edge1005, label %.lr.ph1004

bb.ea:                                            ; preds = %.lr.ph999, %_ZN4llvm16DenseMapIteratorIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSA_EELb0EEppEv.exit324
  %.pn1353 = phi i64 [ %i.axf, %.lr.ph999 ], [ %i.ayl, %_ZN4llvm16DenseMapIteratorIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSA_EELb0EEppEv.exit324 ] ; 2 uses
  %.sroa.0737.0998 = getelementptr i8, ptr %i.awl, i64 %.pn1353 ; 2 uses
  %i.axq = getelementptr inbounds nuw i8, ptr %.sroa.0737.0998, i64 24
  %.sroa.0730.0991 = load ptr, ptr %i.axq, align 8, !tbaa !168 ; 2 uses
  %.not871992 = icmp eq ptr %.sroa.0730.0991, null
  br i1 %.not871992, label %._crit_edge996, label %.lr.ph995

._crit_edge996:                                   ; preds = %_ZN4llvm11SmallVectorINS_3rdf8NodeAddrIPNS1_8NodeBaseEEELj4EED2Ev.exit325, %bb.ea
  %i.axr = add i64 %.pn1353, 64
  %i.axs = ashr exact i64 %i.axr, 6               ; 3 uses
  %.not.i.i316 = icmp ult i64 %i.axs, %i.awq
  br i1 %.not.i.i316, label %bb.eb, label %._crit_edge1000

bb.eb:                                            ; preds = %._crit_edge996
  %i.axt = lshr i64 %i.axs, 5                     ; 3 uses
  %i.axu = getelementptr inbounds nuw [4 x i8], ptr %i.awm, i64 %i.axt
  %i.axv = load i32, ptr %i.axu, align 4, !tbaa !45
  %i.axw = trunc nuw i64 %i.axs to i32
  %i.axx = and i32 %i.axw, 31
  %i.axy = shl nsw i32 -1, %i.axx
  %i.axz = and i32 %i.axv, %i.axy                 ; 2 uses
  %i.aya = icmp eq i32 %i.axz, 0
  br i1 %i.aya, label %.lr.ph.i.i322.preheader, label %_ZN4llvm16DenseMapIteratorIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSA_EELb0EEppEv.exit324

.lr.ph.i.i322.preheader:                          ; preds = %bb.eb
  %i.ayb = add nuw nsw i64 %i.axt, 1              ; 2 uses
  %i.ayc = icmp eq i64 %i.ayb, %i.axk
  br i1 %i.ayc, label %._crit_edge1000, label %.lr.ph1413

.lr.ph.i.i322:                                    ; preds = %.lr.ph1413
  %i.ayd = add i64 %i.ayf, 1                      ; 2 uses
  %i.aye = icmp eq i64 %i.ayd, %i.axk
  br i1 %i.aye, label %._crit_edge1000, label %.lr.ph1413, !llvm.loop !527

.lr.ph1413:                                       ; preds = %.lr.ph.i.i322.preheader, %.lr.ph.i.i322
  %i.ayf = phi i64 [ %i.ayd, %.lr.ph.i.i322 ], [ %i.ayb, %.lr.ph.i.i322.preheader ] ; 3 uses
  %i.ayg = getelementptr inbounds nuw [4 x i8], ptr %i.awm, i64 %i.ayf
  %i.ayh = load i32, ptr %i.ayg, align 4, !tbaa !45 ; 2 uses
  %i.ayi = icmp eq i32 %i.ayh, 0
  br i1 %i.ayi, label %.lr.ph.i.i322, label %_ZN4llvm16DenseMapIteratorIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSA_EELb0EEppEv.exit324, !llvm.loop !527

_ZN4llvm16DenseMapIteratorIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSA_EELb0EEppEv.exit324: ; preds = %.lr.ph1413, %bb.eb
  %.012.lcssa.i.i319 = phi i64 [ %i.axt, %bb.eb ], [ %i.ayf, %.lr.ph1413 ]
  %.0.lcssa.i.i320 = phi i32 [ %i.axz, %bb.eb ], [ %i.ayh, %.lr.ph1413 ]
  %i.ayj = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i320, i1 true)
  %.idx.i.i321 = shl i64 %.012.lcssa.i.i319, 11
  %i.ayk = shl nuw nsw i32 %i.ayj, 6
  %.idx1352 = zext nneg i32 %i.ayk to i64
  %i.ayl = or disjoint i64 %.idx.i.i321, %.idx1352 ; 2 uses
  %.not870 = icmp eq i64 %i.ayl, %.idx1351
  br i1 %.not870, label %._crit_edge1000, label %bb.ea

.lr.ph995:                                        ; preds = %bb.ea, %_ZN4llvm11SmallVectorINS_3rdf8NodeAddrIPNS1_8NodeBaseEEELj4EED2Ev.exit325
  %.sroa.0730.0993 = phi ptr [ %.sroa.0730.0, %_ZN4llvm11SmallVectorINS_3rdf8NodeAddrIPNS1_8NodeBaseEEELj4EED2Ev.exit325 ], [ %.sroa.0730.0991, %bb.ea ] ; 2 uses
  %.sroa.349.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0730.0993, i64 16
  %.sroa.349.0.copyload = load i64, ptr %.sroa.349.0..sroa_idx, align 8
  %i.aym = load i32, ptr %.sroa.0737.0998, align 8, !tbaa !51 ; 7 uses
  %i.ayn = add i32 %i.aym, -1
end_hunk_1
begin_hunk_2_@_ZN4llvm3rdf8Liveness10resetKillsEPNS_17MachineBasicBlockE:bb.a
  br i1 %.not177199, label %.loopexit, label %_ZN4llvm16MCSubRegIteratorppEv.exit91.lr.ph

_ZN4llvm16MCSubRegIteratorppEv.exit91.lr.ph:      ; preds = %.loopexit180
  %i.ig = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !1034, !noalias !1067
  %i.ii = zext nneg i32 %i.hh to i64
  %i.ij = getelementptr inbounds nuw [24 x i8], ptr %i.ih, i64 %i.ii
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 4
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !1035, !noalias !1067
  %i.im = zext i32 %i.il to i64
  %i.in = getelementptr inbounds nuw [2 x i8], ptr %i.if, i64 %i.im
  %i.io = load ptr, ptr %3, align 8, !tbaa !21
  br label %_ZN4llvm16MCSubRegIteratorppEv.exit91

_ZN4llvm16MCSubRegIteratorppEv.exit91:            ; preds = %_ZN4llvm16MCSubRegIteratorppEv.exit91.lr.ph, %_ZN4llvm16MCSubRegIteratorppEv.exit91
  %.sroa.097.0201 = phi i32 [ %i.hh, %_ZN4llvm16MCSubRegIteratorppEv.exit91.lr.ph ], [ %i.jb, %_ZN4llvm16MCSubRegIteratorppEv.exit91 ] ; 3 uses
  %.sroa.598.0200 = phi ptr [ %i.in, %_ZN4llvm16MCSubRegIteratorppEv.exit91.lr.ph ], [ %i.iy, %_ZN4llvm16MCSubRegIteratorppEv.exit91 ] ; 2 uses
  %i.ip = and i32 %.sroa.097.0201, 63
  %i.iq = zext nneg i32 %i.ip to i64
  %i.ir = shl nuw i64 1, %i.iq
  %i.is = lshr i32 %.sroa.097.0201, 6
  %i.it = and i32 %i.is, 1023
  %i.iu = zext nneg i32 %i.it to i64
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %i.iu ; 2 uses
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !167
  %i.ix = or i64 %i.ir, %i.iw
  store i64 %i.ix, ptr %i.iv, align 8, !tbaa !167
  %i.iy = getelementptr inbounds nuw i8, ptr %.sroa.598.0200, i64 2
  %i.iz = load i16, ptr %.sroa.598.0200, align 2, !tbaa !1037 ; 2 uses
  %i.ja = zext i16 %i.iz to i32
  %i.jb = add i32 %.sroa.097.0201, %i.ja
  %.not.i.i90 = icmp eq i16 %i.iz, 0
  br i1 %.not.i.i90, label %.loopexit, label %_ZN4llvm16MCSubRegIteratorppEv.exit91

.loopexit:                                        ; preds = %_ZN4llvm16MCSubRegIteratorppEv.exit91, %.loopexit180, %bb.t, %.lr.ph204
  %i.jc = getelementptr inbounds nuw i8, ptr %.sroa.0116.0203, i64 32 ; 2 uses
  %.not1.i.i92 = icmp eq ptr %i.jc, %i.fp
  br i1 %.not1.i.i92, label %.loopexit182, label %.lr.ph.i.i93

.lr.ph.i.i93:                                     ; preds = %.loopexit, %bb.x
  %.sroa.0116.1 = phi ptr [ %i.jg, %bb.x ], [ %i.jc, %.loopexit ] ; 4 uses
  %i.jd = load i32, ptr %.sroa.0116.1, align 8
  %i.je = and i32 %i.jd, 16777471
  %i.jf = icmp eq i32 %i.je, 0
  br i1 %i.jf, label %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandEPFbRKS1_ESt26bidirectional_iterator_tagEppEv.exit95, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.i93
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.0116.1, i64 32 ; 2 uses
  %.not.i.i94 = icmp eq ptr %i.jg, %i.fp
  br i1 %.not.i.i94, label %.loopexit182, label %.lr.ph.i.i93, !llvm.loop !1056

_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandEPFbRKS1_ESt26bidirectional_iterator_tagEppEv.exit95: ; preds = %.lr.ph.i.i93
  %.not173 = icmp eq ptr %.sroa.0116.1, %i.fp
  br i1 %.not173, label %.loopexit182, label %.lr.ph204

.loopexit182:                                     ; preds = %bb.p, %.loopexit, %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandEPFbRKS1_ESt26bidirectional_iterator_tagEppEv.exit95, %bb.x, %_ZN4llvm12MachineInstr8all_usesEv.exit, %.lr.ph207
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.0163.0206, align 8
  %i.jh = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -8
  %i.ji = inttoptr i64 %i.jh to ptr               ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ji) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ji, align 8
  %i.jj = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i96 = icmp eq i64 %i.jj, 0
  br i1 %.not.i.i.i.i96, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i: ; preds = %.loopexit182
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ji, i64 44
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !311
  %i.jm = and i32 %i.jl, 4
  %.not45.i.i.i.i = icmp eq i32 %i.jm, 0
  br i1 %.not45.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i
  %.sroa.0.06.i.i.i.i = phi ptr [ %i.jo, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i ], [ %i.ji, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i ]
  %.0.copyload.i.i.i.i.i.i1.i.i.i.i = load i64, ptr %.sroa.0.06.i.i.i.i, align 8
  %i.jn = and i64 %.0.copyload.i.i.i.i.i.i1.i.i.i.i, -8
  %i.jo = inttoptr i64 %i.jn to ptr               ; 3 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 44
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !311
  %i.jr = and i32 %i.jq, 4
  %.not4.i.i.i.i = icmp eq i32 %i.jr, 0
  br i1 %.not4.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i, !llvm.loop !1047

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i, %.loopexit182, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i
  %.sroa.0.1.i.i.i.i = phi ptr [ %i.ji, %.loopexit182 ], [ %i.ji, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i ], [ %i.jo, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i ] ; 2 uses
  %.not171 = icmp eq ptr %.sroa.0.1.i.i.i.i, %i.cg
  br i1 %.not171, label %._crit_edge208, label %.lr.ph207
}

declare void @_ZN4llvm12MachineInstr13clearKillInfoEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define dso_local noundef ptr @_ZNK4llvm3rdf8Liveness15getBlockWithRefEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(472) %0, i32 noundef %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !688, !noalias !1070 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !685, !noalias !1070 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.f = load i32, ptr %i.e, align 4, !tbaa !684, !noalias !1070 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = mul i32 %1, 37
  %.017.i.i.i = and i32 %i.h, %i.i                ; 3 uses
  %i.j = zext i32 %.017.i.i.i to i64              ; 2 uses
  %i.k = lshr i64 %i.j, 5
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !45, !noalias !1079
  %i.n = and i32 %.017.i.i.i, 31
  %i.o = lshr i32 %i.m, %i.n
  %i.p = trunc i32 %i.o to i1
  br i1 %i.p, label %.lr.ph.i.i.i, label %.loopexit.i.i, !prof !247

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.q = add nuw i32 %.018.i.i.i, 1
  %.0.i.i.i = and i32 %i.q, %i.h                  ; 3 uses
  %i.r = zext i32 %.0.i.i.i to i64                ; 2 uses
  %i.s = lshr i64 %i.r, 5
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !45, !noalias !1079
  %i.v = and i32 %.0.i.i.i, 31
  %i.w = lshr i32 %i.u, %i.v
  %i.x = trunc i32 %i.w to i1
  br i1 %i.x, label %.lr.ph.i.i.i, label %.loopexit.i.i, !prof !248

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.c
  %i.y = phi i64 [ %i.r, %bb.c ], [ %i.j, %bb.b ]
  %.018.i.i.i = phi i32 [ %.0.i.i.i, %bb.c ], [ %.017.i.i.i, %bb.b ]
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.y ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !45, !noalias !1079
  %i.ab = icmp eq i32 %1, %i.aa
  br i1 %i.ab, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjPNS_17MachineBasicBlockENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E4findERKj.exit.loopexit, label %bb.c, !prof !197

.loopexit.i.i:                                    ; preds = %bb.c, %bb.b, %bb.a
  %i.ac = zext i32 %i.f to i64                    ; 2 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.ac
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjPNS_17MachineBasicBlockENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E4findERKj.exit

_ZNK4llvm12DenseMapBaseINS_8DenseMapIjPNS_17MachineBasicBlockENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E4findERKj.exit.loopexit: ; preds = %.lr.ph.i.i.i
  %.pre = zext i32 %i.f to i64
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjPNS_17MachineBasicBlockENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E4findERKj.exit

_ZNK4llvm12DenseMapBaseINS_8DenseMapIjPNS_17MachineBasicBlockENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E4findERKj.exit: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjPNS_17MachineBasicBlockENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E4findERKj.exit.loopexit, %.loopexit.i.i
  %.pre-phi = phi i64 [ %.pre, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjPNS_17MachineBasicBlockENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E4findERKj.exit.loopexit ], [ %i.ac, %.loopexit.i.i ]
  %.lcssa.sink.i.i = phi ptr [ %i.z, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjPNS_17MachineBasicBlockENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E4findERKj.exit.loopexit ], [ %i.ad, %.loopexit.i.i ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.pre-phi
  %i.af = icmp ne ptr %.lcssa.sink.i.i, %i.ae
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !968
  ret ptr %i.ah
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E5clearEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = shl i32 %i.b, 2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !43   ; 4 uses
  %i.g = icmp ult i32 %i.d, %i.f
  br i1 %i.g, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ugt i32 %i.f, 64
  br i1 %i.h, label %bb.d, label %.lr.ph7.preheader.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E16shrink_and_clearEv(ptr noundef nonnull align 1 dereferenceable(1) %0)
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  %i.i = icmp eq i32 %i.f, 0
  br i1 %i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E10destroyAllEv.exit, label %.lr.ph7.preheader.i

.lr.ph7.preheader.i:                              ; preds = %bb.c, %bb.e
  %i.j = load ptr, ptr %0, align 8, !tbaa !35
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !42
  %i.m = zext i32 %i.f to i64
  %i.n = add nuw nsw i64 %i.m, 31
  %i.o = lshr i64 %i.n, 5
  br label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %._crit_edge.i, %.lr.ph7.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph7.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.q = load i32, ptr %i.p, align 4, !tbaa !45   ; 2 uses
  %.not11.i2.i = icmp eq i32 %i.q, 0
  br i1 %.not11.i2.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph7.i
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i32
  %i.r = shl i32 %indvars.iv.tr.i, 5
  br label %bb.f

bb.f:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i3.i = phi i32 [ %i.q, %.lr.ph.i ], [ %i.ak, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.s = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i, i1 true)
  %i.t = or disjoint i32 %i.s, %i.r
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [64 x i8], ptr %i.j, i64 %i.u ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 24 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !164  ; 2 uses
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not5.i.i.i.i.i.i, label %_ZNSt10_HashtableISt4pairIjN4llvm11LaneBitmaskEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i
  %.06.i.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i.i ], [ %i.y, %bb.f ] ; 2 uses
  %i.z = load ptr, ptr %.06.i.i.i.i.i.i, align 8, !tbaa !168 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i.i, i64 noundef 32) #23
  %.not.i.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt10_HashtableISt4pairIjN4llvm11LaneBitmaskEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !576

_ZNSt10_HashtableISt4pairIjN4llvm11LaneBitmaskEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.f
  %i.aa = load ptr, ptr %i.w, align 8, !tbaa !539
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !540
  %i.ad = shl i64 %i.ac, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aa, i8 0, i64 %i.ad, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  %i.ae = load ptr, ptr %i.w, align 8, !tbaa !539 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt10_HashtableISt4pairIjN4llvm11LaneBitmaskEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i
  %i.ah = load i64, ptr %i.ab, align 8, !tbaa !540
  %i.ai = shl i64 %i.ah, 3
  tail call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #23
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %bb.g, %_ZNSt10_HashtableISt4pairIjN4llvm11LaneBitmaskEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i
  %i.aj = add i32 %.0.i3.i, -1
  %i.ak = and i32 %i.aj, %.0.i3.i                 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.f, !llvm.loop !681

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph7.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.o
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E10destroyAllEv.exit.loopexit, label %.lr.ph7.i, !llvm.loop !682

_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E10destroyAllEv.exit.loopexit: ; preds = %._crit_edge.i
  %.pre = load i32, ptr %i.e, align 4, !tbaa !43
  %i.al = zext i32 %.pre to i64
  %i.am = add nuw nsw i64 %i.al, 31
  %i.an = lshr i64 %i.am, 3
  %i.ao = and i64 %i.an, 1073741820
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E10destroyAllEv.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E10destroyAllEv.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E10destroyAllEv.exit.loopexit, %bb.e
  %i.ap = phi i64 [ %i.ao, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E10destroyAllEv.exit.loopexit ], [ 0, %bb.e ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !42
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ar, i8 0, i64 %i.ap, i1 false)
  store i32 0, ptr %i.a, align 8, !tbaa !44
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E10destroyAllEv.exit, %bb.d
  ret void
}

declare { ptr, i32 } @_ZNK4llvm3rdf8FuncNode9findBlockEPKNS_17MachineBasicBlockERKNS0_13DataFlowGraphE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef nonnull align 8 dereferenceable(808)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE17properlyDominatesEPKS1_S4_(ptr noundef nonnull align 8 dereferenceable(204), ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48), i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef) local_unnamed_addr #4

declare noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !169
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 4) #20
  %i.f = load ptr, ptr %0, align 8, !tbaa !21
  %i.g = load i32, ptr %i.a, align 8, !tbaa !169
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.h
  store i32 %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !169
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !169
  ret void
}

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #8

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.96", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !300
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #20 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !287
  store ptr %i.y, ptr %i.q, align 8, !tbaa !299
  store i32 0, ptr %i.p, align 16, !tbaa !305
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !1080
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1081
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !1080
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !1080
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !1080
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !45 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !45
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !45
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !45
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !45
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #20
  br label %_ZN4llvm8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit

_ZN4llvm8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !287    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !299
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !300  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !299  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !287
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !300
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i15 = icmp eq i64 %i.n, 0
  br i1 %.not.i15, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, label %.lr.ph18

.lr.ph18:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !45   ; 2 uses
  %.not11.i13 = icmp eq i32 %i.p, 0
  br i1 %.not11.i13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph18
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit
  %.0.i14 = phi i32 [ %i.p, %.lr.ph ], [ %i.bb, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i14, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !302  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !45
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.015.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.015.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !45
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit, !llvm.loop !1082

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa14.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa12.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa14.i ; 2 uses
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa12.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !302
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !45
  store i32 %i.aw, ptr %i.au, align 8, !tbaa !45
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = load i32, ptr %i.as, align 4, !tbaa !45
  %i.az = or i32 %i.ay, %i.ax
  store i32 %i.az, ptr %i.as, align 4, !tbaa !45
  %i.ba = add i32 %.0.i14, -1
  %i.bb = and i32 %i.ba, %.0.i14                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bb, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1083

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit, %.lr.ph18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph18, !llvm.loop !1084

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !300
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bc = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !305
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.be, ptr %i.bf, align 8, !tbaa !305
  %i.bg = icmp eq i32 %i.bc, 0
  br i1 %i.bg, label %_ZN4llvm8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit
  %i.bh = zext i32 %i.bc to i64                   ; 2 uses
  %i.bi = shl nuw nsw i64 %i.bh, 4
  %i.bj = add nuw nsw i64 %i.bh, 31
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = and i64 %i.bk, 1073741820
  %i.bm = add nuw nsw i64 %i.bl, %i.bi
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bm, i64 noundef 8) #20
  store i32 0, ptr %i.d, align 4, !tbaa !300
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE4killEv.exit

_ZN4llvm8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #12

declare void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIPN4llvm17MachineBasicBlockESt4pairIKS2_NS0_11SmallVectorIjLj32EEEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeIPN4llvm17MachineBasicBlockESt4pairIKS2_NS0_11SmallVectorIjLj32EEEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeIPN4llvm17MachineBasicBlockESt4pairIKS2_NS0_11SmallVectorIjLj32EEEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !397
  tail call void @_ZNSt8_Rb_treeIPN4llvm17MachineBasicBlockESt4pairIKS2_NS0_11SmallVectorIjLj32EEEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !395  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !21   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 56
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8_Rb_treeIPN4llvm17MachineBasicBlockESt4pairIKS2_NS0_11SmallVectorIjLj32EEEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void @free(ptr noundef %i.f) #20
  br label %_ZNSt8_Rb_treeIPN4llvm17MachineBasicBlockESt4pairIKS2_NS0_11SmallVectorIjLj32EEEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit

_ZNSt8_Rb_treeIPN4llvm17MachineBasicBlockESt4pairIKS2_NS0_11SmallVectorIjLj32EEEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit: ; preds = %.lr.ph, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 184) #23
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1085

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeIPN4llvm17MachineBasicBlockESt4pairIKS2_NS0_11SmallVectorIjLj32EEEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIjSt4pairIKjN4llvm3rdf8NodeAddrIPNS3_9InstrNodeEEEESt10_Select1stIS8_ESt4lessIjESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !397
  tail call void @_ZNSt8_Rb_treeIjSt4pairIKjN4llvm3rdf8NodeAddrIPNS3_9InstrNodeEEEESt10_Select1stIS8_ESt4lessIjESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !395  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 56) #23
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1086

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE8_M_eraseEPSt13_Rb_tree_nodeIjE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !397
  tail call void @_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE8_M_eraseEPSt13_Rb_tree_nodeIjE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !395  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 40) #23
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1087

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE7_M_copyILb0ENS5_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIjESA_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #22 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i32, ptr %i.a, align 4, !tbaa !45
  store i32 %i.d, ptr %i.c, align 4, !tbaa !45
  %i.e = load i32, ptr %1, align 8, !tbaa !1088
  store i32 %i.e, ptr %i.b, align 8, !tbaa !1088
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.g, align 8, !tbaa !480
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !397  ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef ptr @_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE7_M_copyILb0ENS5_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIjESA_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.i, ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.j, ptr %i.k, align 8, !tbaa !397
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0.in30 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.031 = load ptr, ptr %.0.in30, align 8, !tbaa !395 ; 2 uses
  %.not2832 = icmp eq ptr %.031, null
  br i1 %.not2832, label %._crit_edge, label %.lr.ph
end_hunk_2
begin_hunk_3_@_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPS7_bEOT_DpOT0_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa30.sink.i.ph, ptr %i.a, align 8, !tbaa !1110
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !250
  %i.ag = shl i32 %i.af, 2
  %i.ah = add i32 %i.ag, 4
  %i.ai = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.ah, %i.ai
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E22findBucketForInsertionIjEEPS7_RKT_SB_.exit, label %bb.d, !prof !197

bb.d:                                             ; preds = %.loopexit
  %i.aj = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.aj)
  %i.ak = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E15LookupBucketForIjEEbRKT_RPS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1110
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !244
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !230
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E22findBucketForInsertionIjEEPS7_RKT_SB_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E22findBucketForInsertionIjEEPS7_RKT_SB_.exit: ; preds = %.loopexit, %bb.d
  %i.al = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.am = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.an = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa30.sink.i.ph, %.loopexit ] ; 3 uses
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 2                 ; 2 uses
  %i.as = trunc i64 %i.ar to i32
  %i.at = and i32 %i.as, 31
  %i.au = shl nuw i32 1, %i.at
  %i.av = lshr i64 %i.ar, 5
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.av ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !45
  %i.ay = or i32 %i.au, %i.ax
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !45
  %i.az = load i32, ptr %i.ae, align 8, !tbaa !250
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr %i.ae, align 8, !tbaa !250
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bb = load i32, ptr %1, align 4, !tbaa !45
  store i32 %i.bb, ptr %i.an, align 4, !tbaa !45
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E15LookupBucketForIjEEbRKT_RPS7_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E15LookupBucketForIjEEbRKT_RPS7_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E22findBucketForInsertionIjEEPS7_RKT_SB_.exit
  %.sroa.0.0 = phi ptr [ %i.an, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E22findBucketForInsertionIjEEPS7_RKT_SB_.exit ], [ %i.ab, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E22findBucketForInsertionIjEEPS7_RKT_SB_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E15LookupBucketForIjEEbRKT_RPS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !230, !noalias !1111 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !244, !noalias !1111 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !245, !noalias !1111 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load i32, ptr %1, align 4, !tbaa !45     ; 2 uses
  %i.i = mul i32 %i.h, 37
  %.024 = and i32 %i.i, %i.g                      ; 3 uses
  %i.j = zext i32 %.024 to i64                    ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.j ; 2 uses
  %i.l = lshr i64 %i.j, 5
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !45
  %i.o = and i32 %.024, 31
  %i.p = lshr i32 %i.n, %i.o
  %i.q = trunc i32 %i.p to i1
  br i1 %i.q, label %.lr.ph, label %.thread, !prof !247

bb.c:                                             ; preds = %.lr.ph
  %i.r = add nuw i32 %.025, 1
  %.0 = and i32 %i.r, %i.g                        ; 3 uses
  %i.s = zext i32 %.0 to i64                      ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.s ; 2 uses
  %i.u = lshr i64 %i.s, 5
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !45
  %i.x = and i32 %.0, 31
  %i.y = lshr i32 %i.w, %i.x
  %i.z = trunc i32 %i.y to i1
  br i1 %i.z, label %.lr.ph, label %.thread, !prof !248, !llvm.loop !249

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.aa = phi ptr [ %i.t, %bb.c ], [ %i.k, %bb.b ] ; 2 uses
  %.025 = phi i32 [ %.0, %bb.c ], [ %.024, %bb.b ]
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !45
  %i.ac = icmp eq i32 %i.h, %i.ab                 ; 3 uses
  br i1 %i.ac, label %.thread, label %bb.c, !prof !197

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ], [ %i.t, %bb.c ], [ %i.aa, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !1110
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.89", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !245
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 3 uses
  %i.s = add nuw nsw i64 %i.r, 31                 ; 2 uses
  %i.t = lshr i64 %i.s, 5
  %i.u = add nuw nsw i64 %i.t, %i.r
  %i.v = shl nuw nsw i64 %i.u, 2
  %i.w = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.v, i64 noundef 4) #20 ; 2 uses
  %i.x = shl nuw nsw i64 %i.r, 2
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.x ; 2 uses
  store ptr %i.w, ptr %2, align 16, !tbaa !230
  store ptr %i.y, ptr %i.q, align 8, !tbaa !244
  store i32 0, ptr %i.p, align 16, !tbaa !250
  %i.z = lshr i64 %i.s, 3
  %i.aa = and i64 %i.z, 1073741820
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.aa, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E8moveFromERS8_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.ab = load <2 x ptr>, ptr %0, align 8, !tbaa !1080
  %i.ac = load ptr, ptr %0, align 8, !tbaa !1110
  %i.ad = load <2 x ptr>, ptr %2, align 16, !tbaa !1080
  store <2 x ptr> %i.ad, ptr %0, align 8, !tbaa !1080
  store <2 x ptr> %i.ab, ptr %2, align 16, !tbaa !1080
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !45 ; 2 uses
  %i.ah = load <2 x i32>, ptr %i.ae, align 8, !tbaa !45
  %i.ai = load <2 x i32>, ptr %i.p, align 16, !tbaa !45
  store <2 x i32> %i.ai, ptr %i.ae, align 8, !tbaa !45
  store <2 x i32> %i.ah, ptr %i.p, align 16, !tbaa !45
  %i.aj = icmp eq i32 %i.ag, 0
  br i1 %i.aj, label %_ZN4llvm8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ak = zext i32 %i.ag to i64                   ; 2 uses
  %i.al = add nuw nsw i64 %i.ak, 31
  %i.am = lshr i64 %i.al, 5
  %i.an = add nuw nsw i64 %i.am, %i.ak
  %i.ao = shl nuw nsw i64 %i.an, 2
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ac, i64 noundef %i.ao, i64 noundef 4) #20
  br label %_ZN4llvm8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEED2Ev.exit

_ZN4llvm8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E8moveFromERS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !230    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !244
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !245  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !244  ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !230
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !245
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i17 = icmp eq i64 %i.n, 0
  br i1 %.not.i17, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS5_12DenseSetPairIjEEEEjS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !45   ; 2 uses
  %.not11.i15 = icmp eq i32 %i.p, 0
  br i1 %.not11.i15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph20
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E8moveFromERS8_ENKUljE_clEj.exit
  %.0.i16 = phi i32 [ %i.p, %.lr.ph ], [ %i.al, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E8moveFromERS8_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i16, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !45   ; 2 uses
  %i.w = mul i32 %i.v, 37
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.w, %bb.b ], [ %i.ae, %bb.c ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.x = zext i32 %.0.i7 to i64                   ; 2 uses
  %i.y = lshr i64 %i.x, 5                         ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !45
  %i.ab = and i32 %.0.i7, 31                      ; 2 uses
  %i.ac = lshr i32 %i.aa, %i.ab
  %i.ad = trunc i32 %i.ac to i1
  %i.ae = add i32 %.0.i7, 1
  br i1 %i.ad, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E8moveFromERS8_ENKUljE_clEj.exit, !llvm.loop !1116

_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E8moveFromERS8_ENKUljE_clEj.exit: ; preds = %bb.c
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.x
  store i32 %i.v, ptr %i.ag, align 4, !tbaa !45
  %i.ah = shl nuw i32 1, %i.ab
  %i.ai = load i32, ptr %i.af, align 4, !tbaa !45
  %i.aj = or i32 %i.ai, %i.ah
  store i32 %i.aj, ptr %i.af, align 4, !tbaa !45
  %i.ak = add i32 %.0.i16, -1
  %i.al = and i32 %i.ak, %.0.i16                  ; 2 uses
  %.not11.i = icmp eq i32 %i.al, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1117

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E8moveFromERS8_ENKUljE_clEj.exit, %.lr.ph20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS5_12DenseSetPairIjEEEEjS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph20, !llvm.loop !1118

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS5_12DenseSetPairIjEEEEjS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !245
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS5_12DenseSetPairIjEEEEjS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS5_12DenseSetPairIjEEEEjS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS5_12DenseSetPairIjEEEEjS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.am = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS5_12DenseSetPairIjEEEEjS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !250
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ao, ptr %i.ap, align 8, !tbaa !250
  %i.aq = icmp eq i32 %i.am, 0
  br i1 %i.aq, label %_ZN4llvm8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS5_12DenseSetPairIjEEEEjS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit
  %i.ar = zext i32 %i.am to i64                   ; 2 uses
  %i.as = add nuw nsw i64 %i.ar, 31
  %i.at = lshr i64 %i.as, 5
  %i.au = add nuw nsw i64 %i.at, %i.ar
  %i.av = shl nuw nsw i64 %i.au, 2
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.av, i64 noundef 4) #20
  store i32 0, ptr %i.d, align 4, !tbaa !245
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE4killEv.exit

_ZN4llvm8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS5_12DenseSetPairIjEEEEjS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm8SmallSetIjLj32ESt4lessIjEE10insertImplIRKjEESt4pairINS_16SmallSetIteratorIjLj32ES2_EEbEOT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.137") align 8 %0, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !211
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 3 uses
  %.02022.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !264 ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.f = load i32, ptr %2, align 4, !tbaa !45     ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %.02024.i.i.i = phi ptr [ %.02022.i.i.i, %.lr.ph.i.i.i ], [ %.020.i.i.i, %bb.c ] ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.h = load i32, ptr %i.g, align 4, !tbaa !45   ; 2 uses
  %i.i = icmp ult i32 %i.f, %i.h                  ; 2 uses
  %.in.v.i.i.i = select i1 %i.i, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !264 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %bb.c, !llvm.loop !399

._crit_edge.i.i.i:                                ; preds = %bb.c
  br i1 %i.i, label %._crit_edge.thread.i.i.i, label %bb.e

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %bb.b
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.e, %bb.b ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !209
  %i.l = icmp eq ptr %.019.lcssa29.i.i.i, %i.k
  br i1 %i.l, label %select.unfold.i.i, label %bb.d

bb.d:                                             ; preds = %._crit_edge.thread.i.i.i
  %i.m = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #24 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !45
  %.pre18.i.i = load i32, ptr %2, align 4, !tbaa !45
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i
  %i.n = phi i32 [ %.pre18.i.i, %bb.d ], [ %i.f, %._crit_edge.i.i.i ]
  %i.o = phi i32 [ %.pre.i.i, %bb.d ], [ %i.h, %._crit_edge.i.i.i ]
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.d ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %.sroa.05.0.i.i.i = phi ptr [ %i.m, %bb.d ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.p = icmp ult i32 %i.o, %i.n
  br i1 %i.p, label %select.unfold.i.i, label %_ZNSt3setIjSt4lessIjESaIjEE6insertERKj.exit

select.unfold.i.i:                                ; preds = %bb.e, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.e ] ; 3 uses
  %i.q = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.e
  br i1 %i.q, label %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE10_M_insert_IRKjNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIjEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %select.unfold.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.s = load i32, ptr %2, align 4, !tbaa !45
  %i.t = load i32, ptr %i.r, align 4, !tbaa !45
  %i.u = icmp ult i32 %i.s, %i.t
  br label %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE10_M_insert_IRKjNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIjEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE10_M_insert_IRKjNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIjEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i: ; preds = %bb.f, %select.unfold.i.i
  %i.v = phi i1 [ %i.u, %bb.f ], [ true, %select.unfold.i.i ]
  %i.w = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #22 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load i32, ptr %2, align 4, !tbaa !45
  store i32 %i.y, ptr %i.x, align 4, !tbaa !45
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.v, ptr noundef nonnull %i.w, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.e) #20
  %i.z = load i64, ptr %i.a, align 8, !tbaa !211
  %i.aa = add i64 %i.z, 1
  store i64 %i.aa, ptr %i.a, align 8, !tbaa !211
  br label %_ZNSt3setIjSt4lessIjESaIjEE6insertERKj.exit

bb.g:                                             ; preds = %bb.a
  %i.ab = load ptr, ptr %1, align 8, !tbaa !21    ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !169 ; 4 uses
  %i.ae = zext i32 %i.ad to i64                   ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.ae, 2
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx.i ; 2 uses
  %.not11.i = icmp eq i32 %i.ad, 0
  %.pre = load i32, ptr %2, align 4, !tbaa !45    ; 3 uses
  br i1 %.not11.i, label %.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %bb.h
  %.0812.i = phi ptr [ %i.ai, %bb.h ], [ %i.ab, %bb.g ] ; 3 uses
  %i.ag = load i32, ptr %.0812.i, align 4, !tbaa !45
  %i.ah = icmp eq i32 %i.ag, %.pre
  br i1 %i.ah, label %_ZNK4llvm8SmallSetIjLj32ESt4lessIjEE5vfindERKj.exit, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.0812.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.ai, %i.af
  br i1 %.not.i, label %_ZNK4llvm8SmallSetIjLj32ESt4lessIjEE5vfindERKj.exit, label %.lr.ph.i, !llvm.loop !369

_ZNK4llvm8SmallSetIjLj32ESt4lessIjEE5vfindERKj.exit: ; preds = %.lr.ph.i, %bb.h
  %.1.i = phi ptr [ %.0812.i, %.lr.ph.i ], [ %i.af, %bb.h ] ; 4 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ae
  %.not = icmp eq ptr %.1.i, %i.aj
  br i1 %.not, label %bb.i, label %_ZNSt3setIjSt4lessIjESaIjEE6insertERKj.exit

bb.i:                                             ; preds = %_ZNK4llvm8SmallSetIjLj32ESt4lessIjEE5vfindERKj.exit
  %i.ak = icmp ult i32 %i.ad, 32
  br i1 %i.ak, label %.thread, label %bb.l

.thread:                                          ; preds = %bb.g, %bb.i
  %i.al = phi ptr [ %.1.i, %bb.i ], [ %i.ab, %bb.g ]
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.an = load i32, ptr %i.am, align 4, !tbaa !170
  %.not.i18 = icmp ult i32 %i.ad, %i.an
  br i1 %.not.i18, label %bb.k, label %bb.j, !prof !197

bb.j:                                             ; preds = %.thread
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %.pre)
  %.pre67 = load i32, ptr %i.ac, align 8, !tbaa !169
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit

bb.k:                                             ; preds = %.thread
  store i32 %.pre, ptr %i.al, align 1
  %i.ao = load i32, ptr %i.ac, align 8, !tbaa !169
  %i.ap = add i32 %i.ao, 1                        ; 2 uses
  store i32 %i.ap, ptr %i.ac, align 8, !tbaa !169
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit
end_hunk_3
begin_hunk_4_@_ZN4llvm15SmallVectorImplINS_3rdf8NodeAddrIPNS1_8NodeBaseEEEEaSEOS6_:bb.a
bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  switch i32 %i.n, label %bb.g [
    i32 0, label %_ZSt4moveIPN4llvm3rdf8NodeAddrIPNS1_8NodeBaseEEES6_ET0_T_S8_S7_.exit
    i32 1, label %bb.h
  ], !prof !1301

bb.g:                                             ; preds = %bb.f
  %.idx = shl nuw nsw i64 %i.o, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.s, ptr align 8 %i.b, i64 %.idx, i1 false)
  br label %_ZSt4moveIPN4llvm3rdf8NodeAddrIPNS1_8NodeBaseEEES6_ET0_T_S8_S7_.exit

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.s, ptr noundef nonnull align 8 dereferenceable(12) %i.b, i64 12, i1 false), !tbaa.struct !376
  br label %_ZSt4moveIPN4llvm3rdf8NodeAddrIPNS1_8NodeBaseEEES6_ET0_T_S8_S7_.exit

_ZSt4moveIPN4llvm3rdf8NodeAddrIPNS1_8NodeBaseEEES6_ET0_T_S8_S7_.exit: ; preds = %bb.f, %bb.h, %bb.g
  store i32 %i.n, ptr %i.p, align 8, !tbaa !169
  store i32 0, ptr %i.m, align 8, !tbaa !169
  br label %bb.p

bb.i:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !170
  %i.v = icmp ult i32 %i.u, %i.n
  br i1 %i.v, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.p, align 8, !tbaa !169
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.w, i64 noundef %i.o, i64 noundef 16) #20
  br label %_ZSt4moveIPN4llvm3rdf8NodeAddrIPNS1_8NodeBaseEEES6_ET0_T_S8_S7_.exit34

bb.k:                                             ; preds = %bb.i
  %.not32 = icmp eq i32 %i.q, 0
  br i1 %.not32, label %_ZSt4moveIPN4llvm3rdf8NodeAddrIPNS1_8NodeBaseEEES6_ET0_T_S8_S7_.exit34, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %.not37 = icmp eq i32 %i.q, 1
  br i1 %.not37, label %bb.n, label %bb.m, !prof !550

bb.m:                                             ; preds = %bb.l
  %.idx36 = shl nuw nsw i64 %i.r, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.x, ptr align 8 %i.b, i64 %.idx36, i1 false)
  br label %_ZSt4moveIPN4llvm3rdf8NodeAddrIPNS1_8NodeBaseEEES6_ET0_T_S8_S7_.exit34

bb.n:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.x, ptr noundef nonnull align 8 dereferenceable(12) %i.b, i64 12, i1 false), !tbaa.struct !376
  br label %_ZSt4moveIPN4llvm3rdf8NodeAddrIPNS1_8NodeBaseEEES6_ET0_T_S8_S7_.exit34

_ZSt4moveIPN4llvm3rdf8NodeAddrIPNS1_8NodeBaseEEES6_ET0_T_S8_S7_.exit34: ; preds = %bb.n, %bb.m, %bb.k, %bb.j
  %.026 = phi i64 [ 0, %bb.j ], [ 0, %bb.k ], [ %i.r, %bb.m ], [ 1, %bb.n ] ; 4 uses
  %i.y = load i32, ptr %i.m, align 8, !tbaa !169
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %.not.i.i = icmp samesign eq i64 %.026, %i.z
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_3rdf8NodeAddrIPNS1_8NodeBaseEEELb1EE18uninitialized_moveIPS5_S8_EEvT_S9_T0_.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt4moveIPN4llvm3rdf8NodeAddrIPNS1_8NodeBaseEEES6_ET0_T_S8_S7_.exit34
  %i.aa = load ptr, ptr %1, align 8, !tbaa !21
  %.idx39 = shl nuw nsw i64 %.026, 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.idx39
  %i.ac = load ptr, ptr %0, align 8, !tbaa !21
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %.026
  %i.ae = sub nsw i64 %i.z, %.026
  %gepdiff = shl nsw i64 %i.ae, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ad, ptr align 8 %i.ab, i64 %gepdiff, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_3rdf8NodeAddrIPNS1_8NodeBaseEEELb1EE18uninitialized_moveIPS5_S8_EEvT_S9_T0_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_3rdf8NodeAddrIPNS1_8NodeBaseEEELb1EE18uninitialized_moveIPS5_S8_EEvT_S9_T0_.exit: ; preds = %_ZSt4moveIPN4llvm3rdf8NodeAddrIPNS1_8NodeBaseEEES6_ET0_T_S8_S7_.exit34, %bb.o
  store i32 %i.n, ptr %i.p, align 8, !tbaa !169
  store i32 0, ptr %i.m, align 8, !tbaa !169
  br label %bb.p

bb.p:                                             ; preds = %_ZSt4moveIPN4llvm3rdf8NodeAddrIPNS1_8NodeBaseEEES6_ET0_T_S8_S7_.exit, %_ZN4llvm23SmallVectorTemplateBaseINS_3rdf8NodeAddrIPNS1_8NodeBaseEEELb1EE18uninitialized_moveIPS5_S8_EEvT_S9_T0_.exit, %bb.a, %_ZN4llvm15SmallVectorImplINS_3rdf8NodeAddrIPNS1_8NodeBaseEEEE12assignRemoteEOS6_.exit
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEESD_NSF_IjSH_EEEEjSH_SD_SI_E16shrink_and_clearEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !482  ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZNK4llvm8DenseMapIjNS0_IjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSA_EEEESC_NSE_IjSG_EEE18planShrinkAndClearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add i32 %i.b, -1
  %i.d = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.c, i1 false)
  %i.e = sub nuw nsw i32 33, %i.d
  %i.f = shl nuw i32 1, %i.e
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.f, i32 64)
  br label %_ZNK4llvm8DenseMapIjNS0_IjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSA_EEEESC_NSE_IjSG_EEE18planShrinkAndClearEv.exit

_ZNK4llvm8DenseMapIjNS0_IjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSA_EEEESC_NSE_IjSG_EEE18planShrinkAndClearEv.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ 0, %bb.a ], [ %.sroa.speculated.i, %bb.b ] ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !483
  %.not = icmp eq i32 %.0.i, %i.h                 ; 2 uses
  %spec.select10.i = select i1 %.not, i32 0, i32 %.0.i
  %.sroa.39.0.insert.ext.i = zext i32 %spec.select10.i to i64 ; 2 uses
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEESD_NSF_IjSH_EEEEjSH_SD_SI_E10destroyAllEv(ptr noundef nonnull align 1 dereferenceable(1) %0)
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZNK4llvm8DenseMapIjNS0_IjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSA_EEEESC_NSE_IjSG_EEE18planShrinkAndClearEv.exit
  store i32 0, ptr %i.a, align 8, !tbaa !482
  %i.i = load i32, ptr %i.g, align 4, !tbaa !483  ; 2 uses
  %.not.i3 = icmp eq i32 %i.i, 0
  br i1 %.not.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEESD_NSF_IjSH_EEEEjSH_SD_SI_E9initEmptyEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !484
  %i.l = zext i32 %i.i to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 3
  %i.o = and i64 %i.n, 1073741820
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.k, i8 0, i64 %i.o, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEESD_NSF_IjSH_EEEEjSH_SD_SI_E9initEmptyEv.exit

bb.e:                                             ; preds = %_ZNK4llvm8DenseMapIjNS0_IjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSA_EEEESC_NSE_IjSG_EEE18planShrinkAndClearEv.exit
  %i.p = load i32, ptr %i.g, align 4, !tbaa !483  ; 2 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %_ZN4llvm8DenseMapIjNS0_IjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSA_EEEESC_NSE_IjSG_EEE17deallocateBucketsEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %0, align 8, !tbaa !641
  %i.s = zext i32 %i.p to i64                     ; 2 uses
  %i.t = shl nuw nsw i64 %i.s, 5
  %i.u = add nuw nsw i64 %i.s, 31
  %i.v = lshr i64 %i.u, 3
  %i.w = and i64 %i.v, 1073741820
  %i.x = add nuw nsw i64 %i.w, %i.t
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.r, i64 noundef %i.x, i64 noundef 8) #20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIjNS0_IjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSA_EEEESC_NSE_IjSG_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapIjNS0_IjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSA_EEEESC_NSE_IjSG_EEE17deallocateBucketsEv.exit: ; preds = %bb.e, %bb.f
  store i32 %.0.i, ptr %i.g, align 4, !tbaa !483
  %.not.i4 = icmp eq i32 %.0.i, 0
  br i1 %.not.i4, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm8DenseMapIjNS0_IjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSA_EEEESC_NSE_IjSG_EEE17deallocateBucketsEv.exit
  %i.y = shl nuw nsw i64 %.sroa.39.0.insert.ext.i, 5
  %i.z = add nuw nsw i64 %.sroa.39.0.insert.ext.i, 31
  %i.aa = lshr i64 %i.z, 3
  %i.ab = and i64 %i.aa, 1073741820
  %i.ac = add nuw nsw i64 %i.ab, %i.y
  %i.ad = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.ac, i64 noundef 8) #20 ; 2 uses
  %i.ae = load i32, ptr %i.g, align 4, !tbaa !483 ; 2 uses
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = shl nuw nsw i64 %i.af, 5
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ag ; 2 uses
  store ptr %i.ad, ptr %0, align 8, !tbaa !641
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !484
  store i32 0, ptr %i.a, align 8, !tbaa !482
  %.not.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEESD_NSF_IjSH_EEEEjSH_SD_SI_E9initEmptyEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = add nuw nsw i64 %i.af, 31
  %i.ak = lshr i64 %i.aj, 3
  %i.al = and i64 %i.ak, 1073741820
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ah, i8 0, i64 %i.al, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEESD_NSF_IjSH_EEEEjSH_SD_SI_E9initEmptyEv.exit

bb.i:                                             ; preds = %_ZN4llvm8DenseMapIjNS0_IjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSA_EEEESC_NSE_IjSG_EEE17deallocateBucketsEv.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEESD_NSF_IjSH_EEEEjSH_SD_SI_E9initEmptyEv.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEESD_NSF_IjSH_EEEEjSH_SD_SI_E9initEmptyEv.exit: ; preds = %bb.i, %bb.h, %bb.g, %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEESD_NSF_IjSH_EEEEjSH_SD_SI_E10destroyAllEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !483  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS4_IjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS8_ESt8equal_toIS8_ESaIS8_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSE_EEEESG_NSI_IjSK_EEEEjSK_SG_SL_E10destroyAllEvEUljE_EEvPKjjT_.exit, label %.lr.ph7.preheader

.lr.ph7.preheader:                                ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !641
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !484
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph7

.lr.ph7:                                          ; preds = %.lr.ph7.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph7.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.k = load i32, ptr %i.j, align 4, !tbaa !45   ; 2 uses
  %.not11.i2 = icmp eq i32 %i.k, 0
  br i1 %.not11.i2, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph7
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.l = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4llvm8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSA_EEED2Ev.exit
  %.0.i3 = phi i32 [ %i.k, %.lr.ph ], [ %i.bf, %_ZN4llvm8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSA_EEED2Ev.exit ] ; 3 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3, i1 true)
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %i.o ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 28 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !43   ; 2 uses
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %_ZN4llvm8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSA_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.b
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !35
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !42
  %i.x = zext i32 %i.s to i64
  %i.y = add nuw nsw i64 %i.x, 31
  %i.z = lshr i64 %i.y, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.i.i
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !45 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.ac = shl i32 %indvars.iv.tr.i.i, 5
  br label %bb.c

bb.c:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.ab, %.lr.ph.i.i ], [ %i.av, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ad = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.ae = or disjoint i32 %i.ad, %i.ac
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [64 x i8], ptr %i.u, i64 %i.af ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 24 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !164 ; 2 uses
  %.not5.i.i.i.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not5.i.i.i.i.i.i.i, label %_ZNSt10_HashtableISt4pairIjN4llvm11LaneBitmaskEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i.i ], [ %i.aj, %bb.c ] ; 2 uses
  %i.ak = load ptr, ptr %.06.i.i.i.i.i.i.i, align 8, !tbaa !168 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i.i.i, i64 noundef 32) #23
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt10_HashtableISt4pairIjN4llvm11LaneBitmaskEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !576

_ZNSt10_HashtableISt4pairIjN4llvm11LaneBitmaskEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.c
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !539
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !540
  %i.ao = shl i64 %i.an, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.al, i8 0, i64 %i.ao, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false)
  %i.ap = load ptr, ptr %i.ah, align 8, !tbaa !539 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt10_HashtableISt4pairIjN4llvm11LaneBitmaskEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i
  %i.as = load i64, ptr %i.am, align 8, !tbaa !540
  %i.at = shl i64 %i.as, 3
  tail call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #23
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.d, %_ZNSt10_HashtableISt4pairIjN4llvm11LaneBitmaskEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i
  %i.au = add i32 %.0.i3.i.i, -1
  %i.av = and i32 %i.au, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.av, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.c, !llvm.loop !681

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.z
  br i1 %.not.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !682

_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.r, align 4, !tbaa !43 ; 2 uses
  %i.aw = icmp eq i32 %.pr.i, 0
  br i1 %i.aw, label %_ZN4llvm8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSA_EEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E10destroyAllEv.exit.i
  %i.ax = load ptr, ptr %i.q, align 8, !tbaa !35
  %i.ay = zext i32 %.pr.i to i64                  ; 2 uses
  %i.az = shl nuw nsw i64 %i.ay, 6
  %i.ba = add nuw nsw i64 %i.ay, 31
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = and i64 %i.bb, 1073741820
  %i.bd = add nuw nsw i64 %i.bc, %i.az
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ax, i64 noundef %i.bd, i64 noundef 8) #20
  br label %_ZN4llvm8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSA_EEED2Ev.exit

_ZN4llvm8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSA_EEED2Ev.exit: ; preds = %bb.b, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E10destroyAllEv.exit.i, %bb.e
  %i.be = add i32 %.0.i3, -1
  %i.bf = and i32 %i.be, %.0.i3                   ; 2 uses
  %.not11.i = icmp eq i32 %i.bf, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1302

._crit_edge:                                      ; preds = %_ZN4llvm8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSA_EEED2Ev.exit, %.lr.ph7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.i
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS4_IjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS8_ESt8equal_toIS8_ESaIS8_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSE_EEEESG_NSI_IjSK_EEEEjSK_SG_SL_E10destroyAllEvEUljE_EEvPKjjT_.exit, label %.lr.ph7, !llvm.loop !1303

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS4_IjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS8_ESt8equal_toIS8_ESaIS8_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSE_EEEESG_NSI_IjSK_EEEEjSK_SG_SL_E10destroyAllEvEUljE_EEvPKjjT_.exit: ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #12

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEESD_NSF_IjSH_EEEEjSH_SD_SI_E24lookupOrInsertIntoBucketIRKjJEEES3_IPSI_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !641, !noalias !1304 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !484, !noalias !1304 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !483, !noalias !1304 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load i32, ptr %1, align 4, !tbaa !45     ; 2 uses
  %i.j = mul i32 %i.i, 37
  %.024.i = and i32 %i.j, %i.h                    ; 3 uses
  %i.k = zext i32 %.024.i to i64                  ; 2 uses
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.k ; 2 uses
  %i.m = lshr i64 %i.k, 5
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !45
  %i.p = and i32 %.024.i, 31
  %i.q = lshr i32 %i.o, %i.p
  %i.r = trunc i32 %i.q to i1
  br i1 %i.r, label %.lr.ph.i, label %.loopexit, !prof !247

bb.c:                                             ; preds = %.lr.ph.i
  %i.s = add nuw i32 %.025.i, 1
  %.0.i = and i32 %i.s, %i.h                      ; 3 uses
  %i.t = zext i32 %.0.i to i64                    ; 2 uses
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.t ; 2 uses
  %i.v = lshr i64 %i.t, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !45
  %i.y = and i32 %.0.i, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph.i, label %.loopexit, !prof !248, !llvm.loop !647

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.ab = phi ptr [ %i.u, %bb.c ], [ %i.l, %bb.b ] ; 2 uses
  %.025.i = phi i32 [ %.0.i, %bb.c ], [ %.024.i, %bb.b ]
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !45
  %i.ad = icmp eq i32 %i.i, %i.ac
  br i1 %i.ad, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEESD_NSF_IjSH_EEEEjSH_SD_SI_E15LookupBucketForIjEEbRKT_RPSI_.exit, label %bb.c, !prof !197

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa30.sink.i.ph = phi ptr [ %i.l, %bb.b ], [ null, %bb.a ], [ %i.u, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa30.sink.i.ph, ptr %i.a, align 8, !tbaa !1309
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !482
  %i.ag = shl i32 %i.af, 2
  %i.ah = add i32 %i.ag, 4
  %i.ai = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.ah, %i.ai
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEESD_NSF_IjSH_EEEEjSH_SD_SI_E22findBucketForInsertionIjEEPSI_RKT_SM_.exit, label %bb.d, !prof !197

bb.d:                                             ; preds = %.loopexit
  %i.aj = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEESD_NSF_IjSH_EEEEjSH_SD_SI_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.aj)
  %i.ak = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEESD_NSF_IjSH_EEEEjSH_SD_SI_E15LookupBucketForIjEEbRKT_RPSI_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1309
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !484
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !641
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEESD_NSF_IjSH_EEEEjSH_SD_SI_E22findBucketForInsertionIjEEPSI_RKT_SM_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEESD_NSF_IjSH_EEEEjSH_SD_SI_E22findBucketForInsertionIjEEPSI_RKT_SM_.exit: ; preds = %.loopexit, %bb.d
  %i.al = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.am = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.an = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa30.sink.i.ph, %.loopexit ] ; 4 uses
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 5                 ; 2 uses
  %i.as = trunc i64 %i.ar to i32
  %i.at = and i32 %i.as, 31
  %i.au = shl nuw i32 1, %i.at
  %i.av = lshr i64 %i.ar, 5
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.av ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !45
  %i.ay = or i32 %i.au, %i.ax
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !45
  %i.az = load i32, ptr %i.ae, align 8, !tbaa !482
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr %i.ae, align 8, !tbaa !482
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bb = load i32, ptr %1, align 4, !tbaa !45
  store i32 %i.bb, ptr %i.an, align 4, !tbaa !45
  %i.bc = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i8 0, i64 24, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEESD_NSF_IjSH_EEEEjSH_SD_SI_E15LookupBucketForIjEEbRKT_RPSI_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEESD_NSF_IjSH_EEEEjSH_SD_SI_E15LookupBucketForIjEEbRKT_RPSI_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEESD_NSF_IjSH_EEEEjSH_SD_SI_E22findBucketForInsertionIjEEPSI_RKT_SM_.exit
  %.sroa.0.0 = phi ptr [ %i.an, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEESD_NSF_IjSH_EEEEjSH_SD_SI_E22findBucketForInsertionIjEEPSI_RKT_SM_.exit ], [ %i.ab, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEESD_NSF_IjSH_EEEEjSH_SD_SI_E22findBucketForInsertionIjEEPSI_RKT_SM_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEESD_NSF_IjSH_EEEEjSH_SD_SI_E15LookupBucketForIjEEbRKT_RPSI_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !641, !noalias !1310 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !484, !noalias !1310 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !483, !noalias !1310 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load i32, ptr %1, align 4, !tbaa !45     ; 2 uses
  %i.i = mul i32 %i.h, 37
  %.024 = and i32 %i.i, %i.g                      ; 3 uses
  %i.j = zext i32 %.024 to i64                    ; 2 uses
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.j ; 2 uses
  %i.l = lshr i64 %i.j, 5
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !45
  %i.o = and i32 %.024, 31
  %i.p = lshr i32 %i.n, %i.o
  %i.q = trunc i32 %i.p to i1
  br i1 %i.q, label %.lr.ph, label %.thread, !prof !247

bb.c:                                             ; preds = %.lr.ph
  %i.r = add nuw i32 %.025, 1
  %.0 = and i32 %i.r, %i.g                        ; 3 uses
  %i.s = zext i32 %.0 to i64                      ; 2 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.s ; 2 uses
  %i.u = lshr i64 %i.s, 5
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !45
  %i.x = and i32 %.0, 31
  %i.y = lshr i32 %i.w, %i.x
  %i.z = trunc i32 %i.y to i1
  br i1 %i.z, label %.lr.ph, label %.thread, !prof !248, !llvm.loop !647

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.aa = phi ptr [ %i.t, %bb.c ], [ %i.k, %bb.b ] ; 2 uses
  %.025 = phi i32 [ %.0, %bb.c ], [ %.024, %bb.b ]
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !45
  %i.ac = icmp eq i32 %i.h, %i.ab                 ; 3 uses
  br i1 %i.ac, label %.thread, label %bb.c, !prof !197

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ], [ %i.t, %bb.c ], [ %i.aa, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !1309
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEESD_NSF_IjSH_EEEEjSH_SD_SI_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.107", align 16 ; 11 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !483
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 5                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #20 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !641
  store ptr %i.y, ptr %i.q, align 8, !tbaa !484
  store i32 0, ptr %i.p, align 16, !tbaa !482
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEESD_NSF_IjSH_EEEEjSH_SD_SI_E8moveFromERSJ_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !1080
  %i.aa = load <2 x ptr>, ptr %2, align 16, !tbaa !1080
  store <2 x ptr> %i.aa, ptr %0, align 8, !tbaa !1080
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !1080
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ac = load <2 x i32>, ptr %i.ab, align 8, !tbaa !45
  %i.ad = load <2 x i32>, ptr %i.p, align 16, !tbaa !45
  store <2 x i32> %i.ad, ptr %i.ab, align 8, !tbaa !45
  store <2 x i32> %i.ac, ptr %i.p, align 16, !tbaa !45
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEESD_NSF_IjSH_EEEEjSH_SD_SI_E10destroyAllEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.ae = load i32, ptr %i.o, align 4, !tbaa !483 ; 2 uses
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %_ZN4llvm8DenseMapIjNS0_IjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSA_EEEESC_NSE_IjSG_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ag = load ptr, ptr %2, align 16, !tbaa !641
  %i.ah = zext i32 %i.ae to i64                   ; 2 uses
  %i.ai = shl nuw nsw i64 %i.ah, 5
  %i.aj = add nuw nsw i64 %i.ah, 31
  %i.ak = lshr i64 %i.aj, 3
  %i.al = and i64 %i.ak, 1073741820
  %i.am = add nuw nsw i64 %i.al, %i.ai
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ag, i64 noundef %i.am, i64 noundef 8) #20
  br label %_ZN4llvm8DenseMapIjNS0_IjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSA_EEEESC_NSE_IjSG_EEED2Ev.exit

_ZN4llvm8DenseMapIjNS0_IjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSA_EEEESC_NSE_IjSG_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEESD_NSF_IjSH_EEEEjSH_SD_SI_E8moveFromERSJ_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !641
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !484
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !483  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !484  ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !641
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !483
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i20 = icmp eq i64 %i.n, 0
  br i1 %.not.i20, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS4_IjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS8_ESt8equal_toIS8_ESaIS8_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSE_EEEESG_NSI_IjSK_EEEEjSK_SG_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit, label %.lr.ph23

.lr.ph23:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !45   ; 2 uses
  %.not11.i18 = icmp eq i32 %i.p, 0
  br i1 %.not11.i18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph23
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEESD_NSF_IjSH_EEEEjSH_SD_SI_E8moveFromERSJ_ENKUljE_clEj.exit
  %.0.i19 = phi i32 [ %i.p, %.lr.ph ], [ %i.aw, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEESD_NSF_IjSH_EEEEjSH_SD_SI_E8moveFromERSJ_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i19, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.t ; 5 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !45   ; 2 uses
  %i.w = mul i32 %i.v, 37
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.w, %bb.b ], [ %i.ae, %bb.c ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.x = zext i32 %.0.i7 to i64                   ; 2 uses
  %i.y = lshr i64 %i.x, 5                         ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !45
  %i.ab = and i32 %.0.i7, 31                      ; 2 uses
  %i.ac = lshr i32 %i.aa, %i.ab
  %i.ad = trunc i32 %i.ac to i1
  %i.ae = add i32 %.0.i7, 1
  br i1 %i.ad, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEESD_NSF_IjSH_EEEEjSH_SD_SI_E8moveFromERSJ_ENKUljE_clEj.exit, !llvm.loop !1315

_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEESD_NSF_IjSH_EEEEjSH_SD_SI_E8moveFromERSJ_ENKUljE_clEj.exit: ; preds = %bb.c
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y ; 2 uses
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.x ; 4 uses
  store i32 %i.v, ptr %i.ag, align 4, !tbaa !45
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ak = load <2 x ptr>, ptr %i.ai, align 8, !tbaa !1080
  store <2 x ptr> %i.ak, ptr %i.ah, align 8, !tbaa !1080
  store ptr null, ptr %i.ai, align 8, !tbaa !1316
  store ptr null, ptr %i.aj, align 8, !tbaa !165
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !45
  store i32 %i.an, ptr %i.al, align 8, !tbaa !45
  store i32 0, ptr %i.am, align 8, !tbaa !45
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 28 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.u, i64 28 ; 2 uses
  %i.aq = load i32, ptr %i.ao, align 4, !tbaa !45
  %i.ar = load i32, ptr %i.ap, align 4, !tbaa !45
  store i32 %i.ar, ptr %i.ao, align 4, !tbaa !45
  store i32 %i.aq, ptr %i.ap, align 4, !tbaa !45
  %i.as = shl nuw i32 1, %i.ab
  %i.at = load i32, ptr %i.af, align 4, !tbaa !45
  %i.au = or i32 %i.at, %i.as
  store i32 %i.au, ptr %i.af, align 4, !tbaa !45
  %i.av = add i32 %.0.i19, -1
  %i.aw = and i32 %i.av, %.0.i19                  ; 2 uses
  %.not11.i = icmp eq i32 %i.aw, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1317

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEESD_NSF_IjSH_EEEEjSH_SD_SI_E8moveFromERSJ_ENKUljE_clEj.exit, %.lr.ph23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS4_IjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS8_ESt8equal_toIS8_ESaIS8_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSE_EEEESG_NSI_IjSK_EEEEjSK_SG_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph23, !llvm.loop !1318

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS4_IjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS8_ESt8equal_toIS8_ESaIS8_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSE_EEEESG_NSI_IjSK_EEEEjSK_SG_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !483
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS4_IjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS8_ESt8equal_toIS8_ESaIS8_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSE_EEEESG_NSI_IjSK_EEEEjSK_SG_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS4_IjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS8_ESt8equal_toIS8_ESaIS8_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSE_EEEESG_NSI_IjSK_EEEEjSK_SG_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS4_IjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS8_ESt8equal_toIS8_ESaIS8_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSE_EEEESG_NSI_IjSK_EEEEjSK_SG_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ax = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS4_IjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS8_ESt8equal_toIS8_ESaIS8_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSE_EEEESG_NSI_IjSK_EEEEjSK_SG_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !482
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.az, ptr %i.ba, align 8, !tbaa !482
  %i.bb = icmp eq i32 %i.ax, 0
  br i1 %i.bb, label %_ZN4llvm8DenseMapIjNS0_IjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSA_EEEESC_NSE_IjSG_EEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS4_IjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS8_ESt8equal_toIS8_ESaIS8_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSE_EEEESG_NSI_IjSK_EEEEjSK_SG_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit
  %i.bc = load ptr, ptr %1, align 8, !tbaa !641
  %i.bd = zext i32 %i.ax to i64                   ; 2 uses
  %i.be = shl nuw nsw i64 %i.bd, 5
  %i.bf = add nuw nsw i64 %i.bd, 31
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = and i64 %i.bg, 1073741820
  %i.bi = add nuw nsw i64 %i.bh, %i.be
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bc, i64 noundef %i.bi, i64 noundef 8) #20
  store i32 0, ptr %i.d, align 4, !tbaa !483
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIjNS0_IjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSA_EEEESC_NSE_IjSG_EEE4killEv.exit

_ZN4llvm8DenseMapIjNS0_IjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSA_EEEESC_NSE_IjSG_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS4_IjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS8_ESt8equal_toIS8_ESaIS8_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSE_EEEESG_NSI_IjSK_EEEEjSK_SG_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_3rdf12RegisterAggrENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E24lookupOrInsertIntoBucketIjJS3_EEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(80) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !578, !noalias !1319 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !590, !noalias !1319 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !591, !noalias !1319 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load i32, ptr %1, align 4, !tbaa !45     ; 2 uses
  %i.j = mul i32 %i.i, 37
  %.024.i = and i32 %i.j, %i.h                    ; 3 uses
  %i.k = zext i32 %.024.i to i64                  ; 2 uses
  %i.l = getelementptr inbounds nuw [88 x i8], ptr %i.b, i64 %i.k ; 2 uses
  %i.m = lshr i64 %i.k, 5
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !45
  %i.p = and i32 %.024.i, 31
  %i.q = lshr i32 %i.o, %i.p
  %i.r = trunc i32 %i.q to i1
  br i1 %i.r, label %.lr.ph.i, label %.loopexit, !prof !247

bb.c:                                             ; preds = %.lr.ph.i
  %i.s = add nuw i32 %.025.i, 1
  %.0.i = and i32 %i.s, %i.h                      ; 3 uses
  %i.t = zext i32 %.0.i to i64                    ; 2 uses
  %i.u = getelementptr inbounds nuw [88 x i8], ptr %i.b, i64 %i.t ; 2 uses
  %i.v = lshr i64 %i.t, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !45
  %i.y = and i32 %.0.i, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph.i, label %.loopexit, !prof !248, !llvm.loop !1324

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.ab = phi ptr [ %i.u, %bb.c ], [ %i.l, %bb.b ] ; 2 uses
  %.025.i = phi i32 [ %.0.i, %bb.c ], [ %.024.i, %bb.b ]
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !45
  %i.ad = icmp eq i32 %i.i, %i.ac
  br i1 %i.ad, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_3rdf12RegisterAggrENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E15LookupBucketForIjEEbRKT_RPS8_.exit, label %bb.c, !prof !197

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa30.sink.i.ph = phi ptr [ %i.l, %bb.b ], [ null, %bb.a ], [ %i.u, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa30.sink.i.ph, ptr %i.a, align 8, !tbaa !1325
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !1326
  %i.ag = shl i32 %i.af, 2
  %i.ah = add i32 %i.ag, 4
  %i.ai = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.ah, %i.ai
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_3rdf12RegisterAggrENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E22findBucketForInsertionIjEEPS8_RKT_SC_.exit, label %bb.d, !prof !197

bb.d:                                             ; preds = %.loopexit
  %i.aj = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_3rdf12RegisterAggrENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.aj)
  %i.ak = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_3rdf12RegisterAggrENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E15LookupBucketForIjEEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1325
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !590
  %.pre16 = load ptr, ptr %0, align 8, !tbaa !578
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_3rdf12RegisterAggrENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E22findBucketForInsertionIjEEPS8_RKT_SC_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_3rdf12RegisterAggrENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E22findBucketForInsertionIjEEPS8_RKT_SC_.exit: ; preds = %.loopexit, %bb.d
  %i.al = phi ptr [ %.pre16, %bb.d ], [ %i.b, %.loopexit ]
  %i.am = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.an = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa30.sink.i.ph, %.loopexit ] ; 9 uses
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = sdiv exact i64 %i.aq, 88                ; 2 uses
  %i.as = trunc i64 %i.ar to i32
  %i.at = and i32 %i.as, 31
  %i.au = shl nuw i32 1, %i.at
  %i.av = lshr i64 %i.ar, 5
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.av ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !45
  %i.ay = or i32 %i.au, %i.ax
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !45
  %i.az = load i32, ptr %i.ae, align 8, !tbaa !1326
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr %i.ae, align 8, !tbaa !1326
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bb = load i32, ptr %1, align 4, !tbaa !45
  store i32 %i.bb, ptr %i.an, align 4, !tbaa !45
  %i.bc = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.an, i64 24 ; 3 uses
  store ptr %i.bd, ptr %i.bc, align 8, !tbaa !21
  %i.be = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  store i32 0, ptr %i.be, align 8, !tbaa !169
  %i.bf = getelementptr inbounds nuw i8, ptr %i.an, i64 20
  store i32 6, ptr %i.bf, align 4, !tbaa !170
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !169 ; 5 uses
  %.not.i.i.i.i = icmp eq i32 %i.bh, 0
  %i.bi = icmp eq ptr %i.bc, %2
  %or.cond.i.i.i = or i1 %i.bi, %.not.i.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN4llvm3rdf12RegisterAggrC2ERKS1_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_3rdf12RegisterAggrENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E22findBucketForInsertionIjEEPS8_RKT_SC_.exit
  %i.bj = icmp ugt i32 %i.bh, 6
  br i1 %i.bj, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i:       ; preds = %bb.e
  %i.bk = zext i32 %i.bh to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %i.bc, ptr noundef nonnull %i.bd, i64 noundef %i.bk, i64 noundef 8) #20
  %.pre.i.i.i = load i32, ptr %i.bg, align 8, !tbaa !169 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %.pre.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %.sink.split.i.i.i.i, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i: ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.bc, align 8, !tbaa !21
  br label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i: ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i, %bb.e
  %i.bl = phi ptr [ %.pre.i.i, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i ], [ %i.bd, %bb.e ]
  %i.bm = phi i32 [ %.pre.i.i.i, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i ], [ %i.bh, %bb.e ]
  %i.bn = zext i32 %i.bm to i64
  %i.bo = load ptr, ptr %2, align 8, !tbaa !21
  %gepdiff.i.i.i.i = shl nuw nsw i64 %i.bn, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bl, ptr align 8 %i.bo, i64 %gepdiff.i.i.i.i, i1 false)
  br label %.sink.split.i.i.i.i

.sink.split.i.i.i.i:                              ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i
  store i32 %i.bh, ptr %i.be, align 8, !tbaa !169
  br label %_ZN4llvm3rdf12RegisterAggrC2ERKS1_.exit

_ZN4llvm3rdf12RegisterAggrC2ERKS1_.exit:          ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_3rdf12RegisterAggrENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E22findBucketForInsertionIjEEPS8_RKT_SC_.exit, %.sink.split.i.i.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !228
  store i32 %i.br, ptr %i.bp, align 8, !tbaa !228
  %i.bs = getelementptr inbounds nuw i8, ptr %i.an, i64 80
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !360, !nonnull !19, !align !34
  store ptr %i.bu, ptr %i.bs, align 8, !tbaa !229
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_3rdf12RegisterAggrENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E15LookupBucketForIjEEbRKT_RPS8_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_3rdf12RegisterAggrENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E15LookupBucketForIjEEbRKT_RPS8_.exit: ; preds = %.lr.ph.i, %_ZN4llvm3rdf12RegisterAggrC2ERKS1_.exit
  %.sroa.0.0 = phi ptr [ %i.an, %_ZN4llvm3rdf12RegisterAggrC2ERKS1_.exit ], [ %i.ab, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm3rdf12RegisterAggrC2ERKS1_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_3rdf12RegisterAggrENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E15LookupBucketForIjEEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !578, !noalias !1327 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !590, !noalias !1327 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !591, !noalias !1327 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load i32, ptr %1, align 4, !tbaa !45     ; 2 uses
  %i.i = mul i32 %i.h, 37
  %.024 = and i32 %i.i, %i.g                      ; 3 uses
  %i.j = zext i32 %.024 to i64                    ; 2 uses
  %i.k = getelementptr inbounds nuw [88 x i8], ptr %i.a, i64 %i.j ; 2 uses
  %i.l = lshr i64 %i.j, 5
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !45
  %i.o = and i32 %.024, 31
  %i.p = lshr i32 %i.n, %i.o
  %i.q = trunc i32 %i.p to i1
  br i1 %i.q, label %.lr.ph, label %.thread, !prof !247

bb.c:                                             ; preds = %.lr.ph
  %i.r = add nuw i32 %.025, 1
  %.0 = and i32 %i.r, %i.g                        ; 3 uses
  %i.s = zext i32 %.0 to i64                      ; 2 uses
  %i.t = getelementptr inbounds nuw [88 x i8], ptr %i.a, i64 %i.s ; 2 uses
  %i.u = lshr i64 %i.s, 5
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !45
  %i.x = and i32 %.0, 31
  %i.y = lshr i32 %i.w, %i.x
  %i.z = trunc i32 %i.y to i1
  br i1 %i.z, label %.lr.ph, label %.thread, !prof !248, !llvm.loop !1324

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.aa = phi ptr [ %i.t, %bb.c ], [ %i.k, %bb.b ] ; 2 uses
  %.025 = phi i32 [ %.0, %bb.c ], [ %.024, %bb.b ]
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !45
  %i.ac = icmp eq i32 %i.h, %i.ab                 ; 3 uses
  br i1 %i.ac, label %.thread, label %bb.c, !prof !197

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ], [ %i.t, %bb.c ], [ %i.aa, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !1325
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_3rdf12RegisterAggrENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.224", align 16 ; 10 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !591
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 88                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #20 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !578
  store ptr %i.y, ptr %i.q, align 8, !tbaa !590
  store i32 0, ptr %i.p, align 16, !tbaa !1326
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_3rdf12RegisterAggrENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !1325   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !165 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !1080
  store ptr %i.z, ptr %2, align 16, !tbaa !1325
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !1080
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !165
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !45 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.ad, align 8, !tbaa !45
  %i.ah = load <2 x i32>, ptr %i.p, align 16, !tbaa !45
  store <2 x i32> %i.ah, ptr %i.ad, align 8, !tbaa !45
  store <2 x i32> %i.ag, ptr %i.p, align 16, !tbaa !45
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %_ZN4llvm8DenseMapIjNS_3rdf12RegisterAggrENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !45 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.ao = shl i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_3rdf12RegisterAggrENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.ay, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_3rdf12RegisterAggrENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [88 x i8], ptr %i.z, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !21 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_3rdf12RegisterAggrENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @free(ptr noundef %i.au) #20
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_3rdf12RegisterAggrENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_3rdf12RegisterAggrENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.c, %bb.b
  %i.ax = add i32 %.0.i3.i.i, -1
  %i.ay = and i32 %i.ax, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.ay, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !678

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_3rdf12RegisterAggrENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_3rdf12RegisterAggrENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !679

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_3rdf12RegisterAggrENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.o, align 4, !tbaa !591 ; 2 uses
  %i.az = icmp eq i32 %.pr.i, 0
  br i1 %i.az, label %_ZN4llvm8DenseMapIjNS_3rdf12RegisterAggrENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_3rdf12RegisterAggrENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E10destroyAllEv.exit.i
  %i.ba = load ptr, ptr %2, align 16, !tbaa !578
  %i.bb = zext i32 %.pr.i to i64                  ; 2 uses
  %i.bc = mul nuw nsw i64 %i.bb, 88
  %i.bd = add nuw nsw i64 %i.bb, 31
  %i.be = lshr i64 %i.bd, 3
  %i.bf = and i64 %i.be, 1073741820
  %i.bg = add nuw nsw i64 %i.bf, %i.bc
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ba, i64 noundef %i.bg, i64 noundef 8) #20
  br label %_ZN4llvm8DenseMapIjNS_3rdf12RegisterAggrENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEED2Ev.exit

_ZN4llvm8DenseMapIjNS_3rdf12RegisterAggrENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_3rdf12RegisterAggrENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E10destroyAllEv.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_3rdf12RegisterAggrENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !578
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !590
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !591  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !590  ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !578
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !591
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_3rdf12RegisterAggrENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !45   ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_3rdf12RegisterAggrENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.bi, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_3rdf12RegisterAggrENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [88 x i8], ptr %i.a, i64 %i.t ; 7 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !45   ; 2 uses
  %i.w = mul i32 %i.v, 37
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.w, %bb.b ], [ %i.ae, %bb.c ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.x = zext i32 %.0.i7 to i64                   ; 2 uses
  %i.y = lshr i64 %i.x, 5                         ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !45
  %i.ab = and i32 %.0.i7, 31                      ; 2 uses
  %i.ac = lshr i32 %i.aa, %i.ab
  %i.ad = trunc i32 %i.ac to i1
  %i.ae = add i32 %.0.i7, 1
  br i1 %i.ad, label %bb.c, label %bb.d, !llvm.loop !1332

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y ; 2 uses
  %i.ag = getelementptr inbounds nuw [88 x i8], ptr %i.h, i64 %i.x ; 8 uses
  store i32 %i.v, ptr %i.ag, align 4, !tbaa !45
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 24 ; 3 uses
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !21
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  store i32 0, ptr %i.ak, align 8, !tbaa !169
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 20
  store i32 6, ptr %i.al, align 4, !tbaa !170
  %i.am = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !169 ; 5 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.an, 0
  %i.ao = icmp eq ptr %i.ag, %i.u
  %or.cond.i.i.i.i = or i1 %i.ao, %.not.i.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %_ZN4llvm3rdf12RegisterAggrC2ERKS1_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ap = icmp ugt i32 %i.an, 6
  br i1 %i.ap, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i.i, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i.i

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i.i:     ; preds = %bb.e
  %i.aq = zext i32 %i.an to i64
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %i.ah, ptr noundef nonnull %i.aj, i64 noundef %i.aq, i64 noundef 8) #20
  %.pre.i.i.i.i = load i32, ptr %i.am, align 8, !tbaa !169 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %.pre.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i: ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.ah, align 8, !tbaa !21
  br label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i.i

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i.i: ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i, %bb.e
  %i.ar = phi ptr [ %.pre.i.i.i, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i ], [ %i.aj, %bb.e ]
  %i.as = phi i32 [ %.pre.i.i.i.i, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i ], [ %i.an, %bb.e ]
  %i.at = zext i32 %i.as to i64
  %i.au = load ptr, ptr %i.ai, align 8, !tbaa !21
  %gepdiff.i.i.i.i.i = shl nuw nsw i64 %i.at, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ar, ptr align 8 %i.au, i64 %gepdiff.i.i.i.i.i, i1 false)
  br label %.sink.split.i.i.i.i.i

.sink.split.i.i.i.i.i:                            ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i.i, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i.i
  store i32 %i.an, ptr %i.ak, align 8, !tbaa !169
  br label %_ZN4llvm3rdf12RegisterAggrC2ERKS1_.exit.i

_ZN4llvm3rdf12RegisterAggrC2ERKS1_.exit.i:        ; preds = %.sink.split.i.i.i.i.i, %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  %i.aw = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !228
  store i32 %i.ax, ptr %i.av, align 8, !tbaa !228
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ag, i64 80
  %i.az = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !360, !nonnull !19, !align !34
  store ptr %i.ba, ptr %i.ay, align 8, !tbaa !229
  %i.bb = shl nuw i32 1, %i.ab
  %i.bc = load i32, ptr %i.af, align 4, !tbaa !45
  %i.bd = or i32 %i.bc, %i.bb
  store i32 %i.bd, ptr %i.af, align 4, !tbaa !45
  %i.be = load ptr, ptr %i.ai, align 8, !tbaa !21 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_3rdf12RegisterAggrENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm3rdf12RegisterAggrC2ERKS1_.exit.i
  tail call void @free(ptr noundef %i.be) #20
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_3rdf12RegisterAggrENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_3rdf12RegisterAggrENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit: ; preds = %_ZN4llvm3rdf12RegisterAggrC2ERKS1_.exit.i, %bb.f
  %i.bh = add i32 %.0.i15, -1
  %i.bi = and i32 %i.bh, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bi, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1333

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_3rdf12RegisterAggrENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_3rdf12RegisterAggrENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !1334

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_3rdf12RegisterAggrENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !591
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_3rdf12RegisterAggrENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_3rdf12RegisterAggrENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_3rdf12RegisterAggrENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bj = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_3rdf12RegisterAggrENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !1326
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bl, ptr %i.bm, align 8, !tbaa !1326
  %i.bn = icmp eq i32 %i.bj, 0
  br i1 %i.bn, label %_ZN4llvm8DenseMapIjNS_3rdf12RegisterAggrENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEE4killEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_3rdf12RegisterAggrENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit
  %i.bo = load ptr, ptr %1, align 8, !tbaa !578
  %i.bp = zext i32 %i.bj to i64                   ; 2 uses
  %i.bq = mul nuw nsw i64 %i.bp, 88
  %i.br = add nuw nsw i64 %i.bp, 31
  %i.bs = lshr i64 %i.br, 3
  %i.bt = and i64 %i.bs, 1073741820
  %i.bu = add nuw nsw i64 %i.bt, %i.bq
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bo, i64 noundef %i.bu, i64 noundef 8) #20
  store i32 0, ptr %i.d, align 4, !tbaa !591
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIjNS_3rdf12RegisterAggrENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEE4killEv.exit

_ZN4llvm8DenseMapIjNS_3rdf12RegisterAggrENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_3rdf12RegisterAggrENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E24lookupOrInsertIntoBucketIRKjJEEES3_IPSG_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !35, !noalias !1335 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !42, !noalias !1335 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !43, !noalias !1335 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load i32, ptr %1, align 4, !tbaa !45     ; 2 uses
  %i.j = mul i32 %i.i, 37
  %.024.i = and i32 %i.j, %i.h                    ; 3 uses
  %i.k = zext i32 %.024.i to i64                  ; 2 uses
  %i.l = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %i.k ; 2 uses
  %i.m = lshr i64 %i.k, 5
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !45
  %i.p = and i32 %.024.i, 31
  %i.q = lshr i32 %i.o, %i.p
  %i.r = trunc i32 %i.q to i1
  br i1 %i.r, label %.lr.ph.i, label %.loopexit, !prof !247

bb.c:                                             ; preds = %.lr.ph.i
  %i.s = add nuw i32 %.025.i, 1
  %.0.i = and i32 %i.s, %i.h                      ; 3 uses
  %i.t = zext i32 %.0.i to i64                    ; 2 uses
  %i.u = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %i.t ; 2 uses
  %i.v = lshr i64 %i.t, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !45
  %i.y = and i32 %.0.i, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph.i, label %.loopexit, !prof !248, !llvm.loop !533

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.ab = phi ptr [ %i.u, %bb.c ], [ %i.l, %bb.b ] ; 2 uses
  %.025.i = phi i32 [ %.0.i, %bb.c ], [ %.024.i, %bb.b ]
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !45
  %i.ad = icmp eq i32 %i.i, %i.ac
  br i1 %i.ad, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E15LookupBucketForIjEEbRKT_RPSG_.exit, label %bb.c, !prof !197

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa30.sink.i.ph = phi ptr [ %i.l, %bb.b ], [ null, %bb.a ], [ %i.u, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa30.sink.i.ph, ptr %i.a, align 8, !tbaa !1316
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !44
  %i.ag = shl i32 %i.af, 2
  %i.ah = add i32 %i.ag, 4
  %i.ai = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.ah, %i.ai
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E22findBucketForInsertionIjEEPSG_RKT_SK_.exit, label %bb.d, !prof !197

bb.d:                                             ; preds = %.loopexit
  %i.aj = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.aj)
  %i.ak = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E15LookupBucketForIjEEbRKT_RPSG_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1316
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !42
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !35
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E22findBucketForInsertionIjEEPSG_RKT_SK_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E22findBucketForInsertionIjEEPSG_RKT_SK_.exit: ; preds = %.loopexit, %bb.d
  %i.al = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.am = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.an = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa30.sink.i.ph, %.loopexit ] ; 10 uses
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 6                 ; 2 uses
  %i.as = trunc i64 %i.ar to i32
  %i.at = and i32 %i.as, 31
  %i.au = shl nuw i32 1, %i.at
  %i.av = lshr i64 %i.ar, 5
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.av ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !45
  %i.ay = or i32 %i.au, %i.ax
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !45
  %i.az = load i32, ptr %i.ae, align 8, !tbaa !44
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr %i.ae, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bb = load i32, ptr %1, align 4, !tbaa !45
  store i32 %i.bb, ptr %i.an, align 4, !tbaa !45
  %i.bc = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  store i64 0, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  store ptr %i.be, ptr %i.bc, align 8, !tbaa !539
  %i.bf = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i64 1, ptr %i.bf, align 8, !tbaa !540
  %i.bg = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.bh = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bh, align 8, !tbaa !541
  %i.bi = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i8 0, i64 16, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E15LookupBucketForIjEEbRKT_RPSG_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E15LookupBucketForIjEEbRKT_RPSG_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E22findBucketForInsertionIjEEPSG_RKT_SK_.exit
  %.sroa.0.0 = phi ptr [ %i.an, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E22findBucketForInsertionIjEEPSG_RKT_SK_.exit ], [ %i.ab, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E22findBucketForInsertionIjEEPSG_RKT_SK_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E15LookupBucketForIjEEbRKT_RPSG_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !35, !noalias !1340 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !42, !noalias !1340 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !43, !noalias !1340 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load i32, ptr %1, align 4, !tbaa !45     ; 2 uses
  %i.i = mul i32 %i.h, 37
  %.024 = and i32 %i.i, %i.g                      ; 3 uses
  %i.j = zext i32 %.024 to i64                    ; 2 uses
  %i.k = getelementptr inbounds nuw [64 x i8], ptr %i.a, i64 %i.j ; 2 uses
  %i.l = lshr i64 %i.j, 5
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !45
  %i.o = and i32 %.024, 31
  %i.p = lshr i32 %i.n, %i.o
  %i.q = trunc i32 %i.p to i1
  br i1 %i.q, label %.lr.ph, label %.thread, !prof !247

bb.c:                                             ; preds = %.lr.ph
  %i.r = add nuw i32 %.025, 1
  %.0 = and i32 %i.r, %i.g                        ; 3 uses
  %i.s = zext i32 %.0 to i64                      ; 2 uses
  %i.t = getelementptr inbounds nuw [64 x i8], ptr %i.a, i64 %i.s ; 2 uses
  %i.u = lshr i64 %i.s, 5
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !45
  %i.x = and i32 %.0, 31
  %i.y = lshr i32 %i.w, %i.x
  %i.z = trunc i32 %i.y to i1
  br i1 %i.z, label %.lr.ph, label %.thread, !prof !248, !llvm.loop !533

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.aa = phi ptr [ %i.t, %bb.c ], [ %i.k, %bb.b ] ; 2 uses
  %.025 = phi i32 [ %.0, %bb.c ], [ %.024, %bb.b ]
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !45
  %i.ac = icmp eq i32 %i.h, %i.ab                 ; 3 uses
  br i1 %i.ac, label %.thread, label %bb.c, !prof !197

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ], [ %i.t, %bb.c ], [ %i.aa, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !1316
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap", align 16   ; 10 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !43
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 6                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #20 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !35
  store ptr %i.y, ptr %i.q, align 8, !tbaa !42
  store i32 0, ptr %i.p, align 16, !tbaa !44
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E8moveFromERSH_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !1080
  %i.aa = load <2 x ptr>, ptr %2, align 16, !tbaa !1080
  store <2 x ptr> %i.aa, ptr %0, align 8, !tbaa !1080
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !1080
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ac = load <2 x i32>, ptr %i.ab, align 8, !tbaa !45
  %i.ad = load <2 x i32>, ptr %i.p, align 16, !tbaa !45
  store <2 x i32> %i.ad, ptr %i.ab, align 8, !tbaa !45
  store <2 x i32> %i.ac, ptr %i.p, align 16, !tbaa !45
  call void @_ZN4llvm8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSA_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E8moveFromERSH_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !35
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !42
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !43   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !42   ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !35
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !43
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i20 = icmp eq i64 %i.n, 0
  br i1 %.not.i20, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS8_ESt8equal_toIS8_ESaIS8_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSE_EEEEjSE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit, label %.lr.ph23

.lr.ph23:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !45   ; 2 uses
  %.not11.i18 = icmp eq i32 %i.p, 0
  br i1 %.not11.i18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph23
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E8moveFromERSH_ENKUljE_clEj.exit
  %.0.i19 = phi i32 [ %i.p, %.lr.ph ], [ %i.bk, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E8moveFromERSH_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i19, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [64 x i8], ptr %i.a, i64 %i.t ; 8 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !45   ; 2 uses
  %i.w = mul i32 %i.v, 37
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.w, %bb.b ], [ %i.ae, %bb.c ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.x = zext i32 %.0.i7 to i64                   ; 2 uses
  %i.y = lshr i64 %i.x, 5                         ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !45
  %i.ab = and i32 %.0.i7, 31                      ; 2 uses
  %i.ac = lshr i32 %i.aa, %i.ab
  %i.ad = trunc i32 %i.ac to i1
  %i.ae = add i32 %.0.i7, 1
  br i1 %i.ad, label %bb.c, label %bb.d, !llvm.loop !1345

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y ; 2 uses
  %i.ag = getelementptr inbounds nuw [64 x i8], ptr %i.h, i64 %i.x ; 7 uses
  store i32 %i.v, ptr %i.ag, align 4, !tbaa !45
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !539 ; 2 uses
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !539
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !540 ; 2 uses
  store i64 %i.am, ptr %i.ak, align 8, !tbaa !540
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 24 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !164 ; 3 uses
  store ptr %i.ap, ptr %i.an, align 8, !tbaa !168
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !542
  store i64 %i.as, ptr %i.aq, align 8, !tbaa !542
  %i.at = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %i.au, i64 16, i1 false), !tbaa.struct !573
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 56 ; 4 uses
  store ptr null, ptr %i.av, align 8, !tbaa !551
  %i.aw = load ptr, ptr %i.ai, align 8, !tbaa !539
  %i.ax = getelementptr inbounds nuw i8, ptr %i.u, i64 56 ; 5 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr %i.av, ptr %i.ah, align 8, !tbaa !539
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !551
  store ptr %i.az, ptr %i.av, align 8, !tbaa !551
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ba = phi ptr [ %i.av, %bb.e ], [ %i.aj, %bb.d ]
  %.not.i.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E8moveFromERSH_ENKUljE_clEj.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !547
  %i.bd = urem i64 %i.bc, %i.am
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bd
  store ptr %i.an, ptr %i.be, align 8, !tbaa !543
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E8moveFromERSH_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E8moveFromERSH_ENKUljE_clEj.exit: ; preds = %bb.g, %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  store i64 0, ptr %i.bf, align 8, !tbaa !1346
  store i64 1, ptr %i.al, align 8, !tbaa !540
  store ptr null, ptr %i.ax, align 8, !tbaa !551
  store ptr %i.ax, ptr %i.ai, align 8, !tbaa !539
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i8 0, i64 16, i1 false)
  %i.bg = shl nuw i32 1, %i.ab
  %i.bh = load i32, ptr %i.af, align 4, !tbaa !45
  %i.bi = or i32 %i.bh, %i.bg
  store i32 %i.bi, ptr %i.af, align 4, !tbaa !45
  store i64 0, ptr %i.ax, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i8 0, i64 16, i1 false)
  %i.bj = add i32 %.0.i19, -1
  %i.bk = and i32 %i.bj, %.0.i19                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bk, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1347

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E8moveFromERSH_ENKUljE_clEj.exit, %.lr.ph23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS8_ESt8equal_toIS8_ESaIS8_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSE_EEEEjSE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph23, !llvm.loop !1348

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS8_ESt8equal_toIS8_ESaIS8_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSE_EEEEjSE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !43
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS8_ESt8equal_toIS8_ESaIS8_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSE_EEEEjSE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS8_ESt8equal_toIS8_ESaIS8_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSE_EEEEjSE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS8_ESt8equal_toIS8_ESaIS8_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSE_EEEEjSE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bl = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS8_ESt8equal_toIS8_ESaIS8_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSE_EEEEjSE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !44
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bn, ptr %i.bo, align 8, !tbaa !44
  %i.bp = icmp eq i32 %i.bl, 0
  br i1 %i.bp, label %_ZN4llvm8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSA_EEE4killEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS8_ESt8equal_toIS8_ESaIS8_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSE_EEEEjSE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit
  %i.bq = load ptr, ptr %1, align 8, !tbaa !35
  %i.br = zext i32 %i.bl to i64                   ; 2 uses
  %i.bs = shl nuw nsw i64 %i.br, 6
  %i.bt = add nuw nsw i64 %i.br, 31
  %i.bu = lshr i64 %i.bt, 3
  %i.bv = and i64 %i.bu, 1073741820
  %i.bw = add nuw nsw i64 %i.bv, %i.bs
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bq, i64 noundef %i.bw, i64 noundef 8) #20
  store i32 0, ptr %i.d, align 4, !tbaa !43
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSA_EEE4killEv.exit

_ZN4llvm8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSA_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS8_ESt8equal_toIS8_ESaIS8_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSE_EEEEjSE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10_HashtableISt4pairIjN4llvm11LaneBitmaskEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !550

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !551
  br label %_ZNSt10_HashtableISt4pairIjN4llvm11LaneBitmaskEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIjN4llvm11LaneBitmaskEELb1EEEEE19_M_allocate_bucketsEm.exit.i, !prof !550

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #21
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #21
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIjN4llvm11LaneBitmaskEELb1EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #22 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableISt4pairIjN4llvm11LaneBitmaskEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableISt4pairIjN4llvm11LaneBitmaskEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIjN4llvm11LaneBitmaskEELb1EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIjN4llvm11LaneBitmaskEELb1EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !164  ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !164
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableISt4pairIjN4llvm11LaneBitmaskEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.j
  %.031 = phi i64 [ %.1, %bb.j ], [ 0, %_ZNSt10_HashtableISt4pairIjN4llvm11LaneBitmaskEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.j ], [ %i.h, %_ZNSt10_HashtableISt4pairIjN4llvm11LaneBitmaskEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8, !tbaa !168 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !547
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !543  ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !164
  store ptr %i.o, ptr %.02530, align 8, !tbaa !168
  store ptr %.02530, ptr %i.g, align 8, !tbaa !164
  store ptr %i.g, ptr %i.m, align 8, !tbaa !543
  %i.p = load ptr, ptr %.02530, align 8, !tbaa !168
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.q, align 8, !tbaa !543
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !168
  store ptr %i.r, ptr %.02530, align 8, !tbaa !168
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !543
  store ptr %.02530, ptr %i.s, align 8, !tbaa !168
  br label %bb.j
end_hunk_4
begin_hunk_5_@_ZNSt8_Rb_treeIjSt4pairIKjN4llvm3rdf12RegisterAggrEESt10_Select1stIS5_ESt4lessIjESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS1_:bb.a
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !264 ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !1349

._crit_edge.i:                                    ; preds = %bb.e
  br i1 %i.o, label %._crit_edge.thread.i, label %bb.g

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.d
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.a, %bb.d ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !209
  %i.r = icmp eq ptr %.019.lcssa29.i, %i.q
  br i1 %i.r, label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm3rdf12RegisterAggrEESt10_Select1stIS5_ESt4lessIjESaIS5_EE24_M_get_insert_unique_posERS1_.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread.i
  %i.s = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #24 ; 2 uses
  %.phi.trans.insert80 = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.pre81 = load i32, ptr %.phi.trans.insert80, align 4, !tbaa !45
  %.pre82 = load i32, ptr %2, align 4, !tbaa !45
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %i.t = phi i32 [ %.pre82, %bb.f ], [ %i.l, %._crit_edge.i ]
  %i.u = phi i32 [ %.pre81, %bb.f ], [ %i.n, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.s, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %i.v = icmp ult i32 %i.u, %i.t                  ; 2 uses
  %spec.select.i = select i1 %i.v, ptr null, ptr %.sroa.05.0.i
  %spec.select21.i = select i1 %i.v, ptr %.019.lcssa28.i, ptr null
  br label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm3rdf12RegisterAggrEESt10_Select1stIS5_ESt4lessIjESaIS5_EE24_M_get_insert_unique_posERS1_.exit

bb.h:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = load i32, ptr %2, align 4, !tbaa !45     ; 8 uses
  %i.y = load i32, ptr %i.w, align 4, !tbaa !45   ; 2 uses
  %i.z = icmp ult i32 %i.x, %i.y
  br i1 %i.z, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !264 ; 4 uses
  %i.ac = icmp eq ptr %i.ab, %1
  br i1 %i.ac, label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm3rdf12RegisterAggrEESt10_Select1stIS5_ESt4lessIjESaIS5_EE24_M_get_insert_unique_posERS1_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #24 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !45
  %i.ag = icmp ult i32 %i.af, %i.x
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !397
  %i.aj = icmp eq ptr %i.ai, null                 ; 2 uses
  %spec.select = select i1 %i.aj, ptr null, ptr %1
  %spec.select71 = select i1 %i.aj, ptr %i.ad, ptr %1
  br label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm3rdf12RegisterAggrEESt10_Select1stIS5_ESt4lessIjESaIS5_EE24_M_get_insert_unique_posERS1_.exit

bb.l:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i10 = load ptr, ptr %i.ak, align 8, !tbaa !264 ; 2 uses
  %.not23.i11 = icmp eq ptr %.02022.i10, null
  br i1 %.not23.i11, label %._crit_edge.thread.i27, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.l, %.lr.ph.i12
  %.02024.i13 = phi ptr [ %.020.i16, %.lr.ph.i12 ], [ %.02022.i10, %bb.l ] ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 32
  %i.am = load i32, ptr %i.al, align 4, !tbaa !45 ; 2 uses
  %i.an = icmp ult i32 %i.x, %i.am                ; 2 uses
  %.in.v.i14 = select i1 %i.an, i64 16, i64 24
  %.in.i15 = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 %.in.v.i14
  %.020.i16 = load ptr, ptr %.in.i15, align 8, !tbaa !264 ; 2 uses
  %.not.i17 = icmp eq ptr %.020.i16, null
  br i1 %.not.i17, label %._crit_edge.i18, label %.lr.ph.i12, !llvm.loop !1349

._crit_edge.i18:                                  ; preds = %.lr.ph.i12
  br i1 %i.an, label %._crit_edge.thread.i27, label %bb.n

._crit_edge.thread.i27:                           ; preds = %._crit_edge.i18, %bb.l
  %.019.lcssa29.i28 = phi ptr [ %.02024.i13, %._crit_edge.i18 ], [ %i.a, %bb.l ] ; 4 uses
  %i.ao = icmp eq ptr %.019.lcssa29.i28, %i.ab
  br i1 %i.ao, label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm3rdf12RegisterAggrEESt10_Select1stIS5_ESt4lessIjESaIS5_EE24_M_get_insert_unique_posERS1_.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i27
  %i.ap = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i28) #24 ; 2 uses
  %.phi.trans.insert78 = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.pre79 = load i32, ptr %.phi.trans.insert78, align 4, !tbaa !45
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i18
  %i.aq = phi i32 [ %.pre79, %bb.m ], [ %i.am, %._crit_edge.i18 ]
  %.019.lcssa28.i19 = phi ptr [ %.019.lcssa29.i28, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %.sroa.05.0.i20 = phi ptr [ %i.ap, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %i.ar = icmp ult i32 %i.aq, %i.x                ; 2 uses
  %spec.select.i21 = select i1 %i.ar, ptr null, ptr %.sroa.05.0.i20
  %spec.select21.i22 = select i1 %i.ar, ptr %.019.lcssa28.i19, ptr null
  br label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm3rdf12RegisterAggrEESt10_Select1stIS5_ESt4lessIjESaIS5_EE24_M_get_insert_unique_posERS1_.exit

bb.o:                                             ; preds = %bb.h
  %i.as = icmp ult i32 %i.y, %i.x
  br i1 %i.as, label %bb.p, label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm3rdf12RegisterAggrEESt10_Select1stIS5_ESt4lessIjESaIS5_EE24_M_get_insert_unique_posERS1_.exit

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !264 ; 2 uses
  %i.av = icmp eq ptr %i.au, %1
  br i1 %i.av, label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm3rdf12RegisterAggrEESt10_Select1stIS5_ESt4lessIjESaIS5_EE24_M_get_insert_unique_posERS1_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #24 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !45
  %i.az = icmp ult i32 %i.x, %i.ay
  br i1 %i.az, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !397
  %i.bc = icmp eq ptr %i.bb, null                 ; 2 uses
  %spec.select72 = select i1 %i.bc, ptr null, ptr %i.aw
  %spec.select73 = select i1 %i.bc, ptr %1, ptr %i.aw
  br label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm3rdf12RegisterAggrEESt10_Select1stIS5_ESt4lessIjESaIS5_EE24_M_get_insert_unique_posERS1_.exit

bb.s:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i30 = load ptr, ptr %i.bd, align 8, !tbaa !264 ; 2 uses
  %.not23.i31 = icmp eq ptr %.02022.i30, null
  br i1 %.not23.i31, label %._crit_edge.thread.i47, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %bb.s, %.lr.ph.i32
  %.02024.i33 = phi ptr [ %.020.i36, %.lr.ph.i32 ], [ %.02022.i30, %bb.s ] ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 32
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !45 ; 2 uses
  %i.bg = icmp ult i32 %i.x, %i.bf                ; 2 uses
  %.in.v.i34 = select i1 %i.bg, i64 16, i64 24
  %.in.i35 = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 %.in.v.i34
  %.020.i36 = load ptr, ptr %.in.i35, align 8, !tbaa !264 ; 2 uses
  %.not.i37 = icmp eq ptr %.020.i36, null
  br i1 %.not.i37, label %._crit_edge.i38, label %.lr.ph.i32, !llvm.loop !1349

._crit_edge.i38:                                  ; preds = %.lr.ph.i32
  br i1 %i.bg, label %._crit_edge.thread.i47, label %bb.u

._crit_edge.thread.i47:                           ; preds = %._crit_edge.i38, %bb.s
  %.019.lcssa29.i48 = phi ptr [ %.02024.i33, %._crit_edge.i38 ], [ %i.a, %bb.s ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !209
  %i.bj = icmp eq ptr %.019.lcssa29.i48, %i.bi
  br i1 %i.bj, label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm3rdf12RegisterAggrEESt10_Select1stIS5_ESt4lessIjESaIS5_EE24_M_get_insert_unique_posERS1_.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i47
  %i.bk = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i48) #24 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !45
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i38
  %i.bl = phi i32 [ %.pre, %bb.t ], [ %i.bf, %._crit_edge.i38 ]
  %.019.lcssa28.i39 = phi ptr [ %.019.lcssa29.i48, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %.sroa.05.0.i40 = phi ptr [ %i.bk, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %i.bm = icmp ult i32 %i.bl, %i.x                ; 2 uses
  %spec.select.i41 = select i1 %i.bm, ptr null, ptr %.sroa.05.0.i40
  %spec.select21.i42 = select i1 %i.bm, ptr %.019.lcssa28.i39, ptr null
  br label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm3rdf12RegisterAggrEESt10_Select1stIS5_ESt4lessIjESaIS5_EE24_M_get_insert_unique_posERS1_.exit

_ZNSt8_Rb_treeIjSt4pairIKjN4llvm3rdf12RegisterAggrEESt10_Select1stIS5_ESt4lessIjESaIS5_EE24_M_get_insert_unique_posERS1_.exit: ; preds = %bb.u, %._crit_edge.thread.i47, %bb.n, %._crit_edge.thread.i27, %bb.g, %._crit_edge.thread.i, %bb.r, %bb.k, %bb.o, %bb.p, %bb.i, %bb.c
  %.sroa.070.2 = phi ptr [ null, %bb.p ], [ %spec.select, %bb.k ], [ null, %bb.c ], [ %spec.select72, %bb.r ], [ null, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ %1, %bb.o ], [ null, %._crit_edge.thread.i27 ], [ %spec.select.i, %bb.g ], [ %spec.select.i21, %bb.n ], [ %spec.select.i41, %bb.u ], [ null, %._crit_edge.thread.i47 ]
  %.sroa.12.2 = phi ptr [ %i.au, %bb.p ], [ %spec.select71, %bb.k ], [ %i.f, %bb.c ], [ %spec.select73, %bb.r ], [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ null, %bb.o ], [ %.019.lcssa29.i28, %._crit_edge.thread.i27 ], [ %spec.select21.i, %bb.g ], [ %spec.select21.i22, %bb.n ], [ %spec.select21.i42, %bb.u ], [ %.019.lcssa29.i48, %._crit_edge.thread.i47 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.070.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E8copyFromERKSH_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !43   ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSA_EEE17deallocateBucketsEv.exit, label %.lr.ph7.preheader.i

.lr.ph7.preheader.i:                              ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !35
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !42
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %._crit_edge.i, %.lr.ph7.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph7.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !45   ; 2 uses
  %.not11.i2.i = icmp eq i32 %i.k, 0
  br i1 %.not11.i2.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph7.i
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i32
  %i.l = shl i32 %indvars.iv.tr.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i3.i = phi i32 [ %i.k, %.lr.ph.i ], [ %i.ae, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i, i1 true)
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [64 x i8], ptr %i.d, i64 %i.o ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !164  ; 2 uses
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not5.i.i.i.i.i.i, label %_ZNSt10_HashtableISt4pairIjN4llvm11LaneBitmaskEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i
  %.06.i.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.i ], [ %i.s, %bb.b ] ; 2 uses
  %i.t = load ptr, ptr %.06.i.i.i.i.i.i, align 8, !tbaa !168 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i.i, i64 noundef 32) #23
  %.not.i.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt10_HashtableISt4pairIjN4llvm11LaneBitmaskEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !576

_ZNSt10_HashtableISt4pairIjN4llvm11LaneBitmaskEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.b
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !539
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !540
  %i.x = shl i64 %i.w, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.u, i8 0, i64 %i.x, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !539  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt10_HashtableISt4pairIjN4llvm11LaneBitmaskEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i
  %i.ab = load i64, ptr %i.v, align 8, !tbaa !540
  %i.ac = shl i64 %i.ab, 3
  tail call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #23
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %bb.c, %_ZNSt10_HashtableISt4pairIjN4llvm11LaneBitmaskEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i
  %i.ad = add i32 %.0.i3.i, -1
  %i.ae = and i32 %i.ad, %.0.i3.i                 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.b, !llvm.loop !681

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph7.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.i
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E10destroyAllEv.exit, label %.lr.ph7.i, !llvm.loop !682

_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E10destroyAllEv.exit: ; preds = %._crit_edge.i
  %.pr = load i32, ptr %i.a, align 4, !tbaa !43   ; 2 uses
  %i.af = icmp eq i32 %.pr, 0
  br i1 %i.af, label %_ZN4llvm8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSA_EEE17deallocateBucketsEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E10destroyAllEv.exit
  %i.ag = load ptr, ptr %0, align 8, !tbaa !35
  %i.ah = zext i32 %.pr to i64                    ; 2 uses
  %i.ai = shl nuw nsw i64 %i.ah, 6
  %i.aj = add nuw nsw i64 %i.ah, 31
  %i.ak = lshr i64 %i.aj, 3
  %i.al = and i64 %i.ak, 1073741820
  %i.am = add nuw nsw i64 %i.al, %i.ai
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ag, i64 noundef %i.am, i64 noundef 8) #20
  store i32 0, ptr %i.a, align 4, !tbaa !43
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSA_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSA_EEE17deallocateBucketsEv.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E10destroyAllEv.exit, %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 0, ptr %i.an, align 8, !tbaa !44
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !43 ; 3 uses
  store i32 %i.ap, ptr %i.a, align 4, !tbaa !43
  %.not = icmp eq i32 %i.ap, 0
  br i1 %.not, label %_ZN4llvm8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSA_EEE15allocateBucketsEj.exit, label %bb.e

_ZN4llvm8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSA_EEE15allocateBucketsEj.exit: ; preds = %_ZN4llvm8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSA_EEE17deallocateBucketsEv.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS8_ESt8equal_toIS8_ESaIS8_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSE_EEEEjSE_SG_SJ_E8copyFromERKSK_EUljE_EEvPKjjT_.exit

bb.e:                                             ; preds = %_ZN4llvm8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSA_EEE17deallocateBucketsEv.exit
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  %i.ar = shl nuw nsw i64 %i.aq, 6
  %i.as = add nuw nsw i64 %i.aq, 31
  %i.at = lshr i64 %i.as, 3
  %i.au = and i64 %i.at, 1073741820
  %i.av = add nuw nsw i64 %i.au, %i.ar
  %i.aw = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.av, i64 noundef 8) #20 ; 3 uses
  %i.ax = load i32, ptr %i.a, align 4, !tbaa !43
  %i.ay = zext i32 %i.ax to i64                   ; 2 uses
  %i.az = shl nuw nsw i64 %i.ay, 6
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.az ; 3 uses
  store ptr %i.aw, ptr %0, align 8, !tbaa !35
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !42
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !44
  store i32 %i.bd, ptr %i.an, align 8, !tbaa !44
  %i.be = load ptr, ptr %1, align 8, !tbaa !35
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !42
  %i.bh = add nuw nsw i64 %i.ay, 31
  %i.bi = lshr i64 %i.bh, 5                       ; 3 uses
  %i.bj = shl nuw nsw i64 %i.bi, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ba, ptr align 4 %i.bg, i64 %i.bj, i1 false)
  %.not.i19 = icmp eq i64 %i.bi, 0
  br i1 %.not.i19, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS8_ESt8equal_toIS8_ESaIS8_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSE_EEEEjSE_SG_SJ_E8copyFromERKSK_EUljE_EEvPKjjT_.exit, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.e, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.e ] ; 3 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !45 ; 2 uses
  %.not11.i17 = icmp eq i32 %i.bl, 0
  br i1 %.not11.i17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph22
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.bm = shl i32 %indvars.iv.tr, 5
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_ZNSt10_HashtableISt4pairIjN4llvm11LaneBitmaskEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_assignIRKSG_NS5_10_AllocNodeISaINS5_10_Hash_nodeIS3_Lb1EEEEEEEEvOT_RKT0_.exit
  %.0.i18 = phi i32 [ %i.bl, %.lr.ph ], [ %i.dh, %_ZNSt10_HashtableISt4pairIjN4llvm11LaneBitmaskEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_assignIRKSG_NS5_10_AllocNodeISaINS5_10_Hash_nodeIS3_Lb1EEEEEEEEvOT_RKT0_.exit ] ; 3 uses
  %i.bn = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.bo = or disjoint i32 %i.bn, %i.bm
  %i.bp = zext i32 %i.bo to i64                   ; 2 uses
  %i.bq = getelementptr inbounds nuw [64 x i8], ptr %i.aw, i64 %i.bp ; 7 uses
  %i.br = getelementptr inbounds nuw [64 x i8], ptr %i.be, i64 %i.bp ; 5 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !45
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !45
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 4 uses
  store ptr null, ptr %i.bt, align 8, !tbaa !539
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !540 ; 5 uses
  store i64 %i.bw, ptr %i.bu, align 8, !tbaa !540
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bq, i64 24 ; 3 uses
  store ptr null, ptr %i.bx, align 8, !tbaa !168
  %i.by = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %i.bz = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !542
  store i64 %i.ca, ptr %i.by, align 8, !tbaa !542
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %i.cc = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cb, ptr noundef nonnull align 8 dereferenceable(16) %i.cc, i64 16, i1 false), !tbaa.struct !573
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bq, i64 56 ; 2 uses
  store ptr null, ptr %i.cd, align 8, !tbaa !551
  %i.ce = icmp eq i64 %i.bw, 1
  br i1 %i.ce, label %bb.k, label %bb.g, !prof !550

bb.g:                                             ; preds = %bb.f
  %i.cf = icmp ugt i64 %i.bw, 1152921504606846975
  br i1 %i.cf, label %bb.h, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIjN4llvm11LaneBitmaskEELb1EEEEE19_M_allocate_bucketsEm.exit.i.i, !prof !550

bb.h:                                             ; preds = %bb.g
  %i.cg = icmp ugt i64 %i.bw, 2305843009213693951
  br i1 %i.cg, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #21
  unreachable

bb.j:                                             ; preds = %bb.h
  tail call void @_ZSt17__throw_bad_allocv() #21
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIjN4llvm11LaneBitmaskEELb1EEEEE19_M_allocate_bucketsEm.exit.i.i: ; preds = %bb.g
  %i.ch = shl nuw nsw i64 %i.bw, 3                ; 2 uses
  %i.ci = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ch) #22 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ci, i8 0, i64 %i.ch, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIjN4llvm11LaneBitmaskEELb1EEEEE19_M_allocate_bucketsEm.exit.i.i
  %.0.i.i = phi ptr [ %i.ci, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIjN4llvm11LaneBitmaskEELb1EEEEE19_M_allocate_bucketsEm.exit.i.i ], [ %i.cd, %bb.f ]
  store ptr %.0.i.i, ptr %i.bt, align 8, !tbaa !539
  %i.cj = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !164 ; 4 uses
  %.not23.i = icmp eq ptr %i.ck, null
  br i1 %.not23.i, label %_ZNSt10_HashtableISt4pairIjN4llvm11LaneBitmaskEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_assignIRKSG_NS5_10_AllocNodeISaINS5_10_Hash_nodeIS3_Lb1EEEEEEEEvOT_RKT0_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #22 ; 5 uses
  store ptr null, ptr %i.cm, align 8, !tbaa !168
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, ptr noundef nonnull align 8 dereferenceable(16) %i.cl, i64 16, i1 false)
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !547 ; 2 uses
  store i64 %i.cq, ptr %i.co, align 8, !tbaa !547
  store ptr %i.cm, ptr %i.bx, align 8, !tbaa !164
  %i.cr = load ptr, ptr %i.bt, align 8, !tbaa !539
  %i.cs = load i64, ptr %i.bu, align 8, !tbaa !540
  %i.ct = urem i64 %i.cq, %i.cs
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.ct
  store ptr %i.bx, ptr %i.cu, align 8, !tbaa !543
  %.02226.i = load ptr, ptr %i.ck, align 8, !tbaa !168 ; 2 uses
  %.not2427.i = icmp eq ptr %.02226.i, null
  br i1 %.not2427.i, label %_ZNSt10_HashtableISt4pairIjN4llvm11LaneBitmaskEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_assignIRKSG_NS5_10_AllocNodeISaINS5_10_Hash_nodeIS3_Lb1EEEEEEEEvOT_RKT0_.exit, label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %bb.l, %bb.n
  %.02229.i = phi ptr [ %.022.i, %bb.n ], [ %.02226.i, %bb.l ] ; 3 uses
  %.028.i = phi ptr [ %i.cw, %bb.n ], [ %i.cm, %bb.l ] ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.02229.i, i64 8
  %i.cw = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #22 ; 5 uses
  store ptr null, ptr %i.cw, align 8, !tbaa !168
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cx, ptr noundef nonnull align 8 dereferenceable(16) %i.cv, i64 16, i1 false)
  store ptr %i.cw, ptr %.028.i, align 8, !tbaa !168
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.cz = getelementptr inbounds nuw i8, ptr %.02229.i, i64 24
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !547 ; 2 uses
  store i64 %i.da, ptr %i.cy, align 8, !tbaa !547
  %i.db = load i64, ptr %i.bu, align 8, !tbaa !540
  %i.dc = urem i64 %i.da, %i.db
  %i.dd = load ptr, ptr %i.bt, align 8, !tbaa !539
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.dc ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !543
  %.not25.i = icmp eq ptr %i.df, null
  br i1 %.not25.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph.i10
  store ptr %.028.i, ptr %i.de, align 8, !tbaa !543
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph.i10
  %.022.i = load ptr, ptr %.02229.i, align 8, !tbaa !168 ; 2 uses
  %.not24.i = icmp eq ptr %.022.i, null
  br i1 %.not24.i, label %_ZNSt10_HashtableISt4pairIjN4llvm11LaneBitmaskEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_assignIRKSG_NS5_10_AllocNodeISaINS5_10_Hash_nodeIS3_Lb1EEEEEEEEvOT_RKT0_.exit, label %.lr.ph.i10, !llvm.loop !575

_ZNSt10_HashtableISt4pairIjN4llvm11LaneBitmaskEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_assignIRKSG_NS5_10_AllocNodeISaINS5_10_Hash_nodeIS3_Lb1EEEEEEEEvOT_RKT0_.exit: ; preds = %bb.n, %bb.k, %bb.l
  %i.dg = add i32 %.0.i18, -1
  %i.dh = and i32 %i.dg, %.0.i18                  ; 2 uses
  %.not11.i = icmp eq i32 %i.dh, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.f, !llvm.loop !1350

._crit_edge:                                      ; preds = %_ZNSt10_HashtableISt4pairIjN4llvm11LaneBitmaskEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_assignIRKSG_NS5_10_AllocNodeISaINS5_10_Hash_nodeIS3_Lb1EEEEEEEEvOT_RKT0_.exit, %.lr.ph22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.bi
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS8_ESt8equal_toIS8_ESaIS8_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSE_EEEEjSE_SG_SJ_E8copyFromERKSK_EUljE_EEvPKjjT_.exit, label %.lr.ph22, !llvm.loop !1351

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS8_ESt8equal_toIS8_ESaIS8_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSE_EEEEjSE_SG_SJ_E8copyFromERKSK_EUljE_EEvPKjjT_.exit: ; preds = %._crit_edge, %bb.e, %_ZN4llvm8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSA_EEE15allocateBucketsEj.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZNSt8__detail12_Insert_baseIN4llvm3rdf12RegisterAggrESt4pairIKS3_St13unordered_mapINS2_11RegisterRefES7_St4hashIS7_ENS2_18RegisterRefEqualToESaIS4_IKS7_S7_EEEESaISF_ENS_10_Select1stESt8equal_toIS3_ES8_IS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEEE11try_emplaceIRS5_JiS9_SA_EEES4_INS_14_Node_iteratorISF_Lb0ELb1EEEbENS_20_Node_const_iteratorISF_Lb0ELb1EEEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %6 = alloca %"class.std::tuple.620", align 8    ; 4 uses
  %7 = alloca %"class.std::tuple.623", align 8    ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !228
  %i.c = load ptr, ptr %2, align 8, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !169
  %i.f = zext i32 %i.e to i64
  %i.g = mul i32 %i.b, 37
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.f, 3
  %i.h = tail call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef %i.c, i64 noundef %.idx.i.i.i.i.i.i.i.i) #20
  %i.i = zext i32 %i.g to i64
  %i.j = shl nuw i64 %i.i, 32
  %i.k = and i64 %i.h, 4294967295
  %i.l = or disjoint i64 %i.k, %i.j
  %i.m = xor i64 %i.l, 3981806797
  %i.n = mul i64 %i.m, -4658895280553007687       ; 2 uses
  %i.o = lshr i64 %i.n, 31
  %i.p = xor i64 %i.o, %i.n
  %i.q = and i64 %i.p, 4294967295                 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !609  ; 3 uses
  %i.t = urem i64 %i.q, %i.s                      ; 4 uses
  %i.u = load ptr, ptr %0, align 8, !tbaa !607
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.t
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !543  ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !168  ; 3 uses
  %i.y = load i32, ptr %i.a, align 8              ; 2 uses
  %i.z = load i32, ptr %i.d, align 8
  %.fr.i.i = freeze i32 %i.z                      ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %.fr.i.i, 0
  %i.aa = zext i32 %.fr.i.i to i64
  %.idx.i.i.i.i.i.i.i.i20 = shl nuw nsw i64 %i.aa, 3
  %i.ab = load ptr, ptr %2, align 8
  %.phi.trans.insert24.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 152
  %.pre25.i.i = load i64, ptr %.phi.trans.insert24.i.i, align 8, !tbaa !547 ; 2 uses
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i.i.i, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %bb.b, %bb.d
  %i.ac = phi i64 [ %i.ai, %bb.d ], [ %.pre25.i.i, %bb.b ]
  %.0.us.i.i = phi ptr [ %i.ag, %bb.d ], [ %i.x, %bb.b ] ; 3 uses
  %i.ad = icmp eq i64 %i.q, %i.ac
  br i1 %i.ad, label %bb.c, label %_ZNKSt8__detail15_Hashtable_baseIN4llvm3rdf12RegisterAggrESt4pairIKS3_St13unordered_mapINS2_11RegisterRefES7_St4hashIS7_ENS2_18RegisterRefEqualToESaIS4_IKS7_S7_EEEENS_10_Select1stESt8equal_toIS3_ES8_IS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISF_Lb1EEE.exit.thread.us.i.i

bb.c:                                             ; preds = %.split.us.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.us.i.i, i64 72
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !228
  %.not.i.i.i.i.i.i.us.i.i = icmp eq i32 %i.y, %i.af
  br i1 %.not.i.i.i.i.i.i.us.i.i, label %_ZNKSt10_HashtableIN4llvm3rdf12RegisterAggrESt4pairIKS2_St13unordered_mapINS1_11RegisterRefES6_St4hashIS6_ENS1_18RegisterRefEqualToESaIS3_IKS6_S6_EEEESaISE_ENSt8__detail10_Select1stESt8equal_toIS2_ES7_IS2_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS4_m.exit, label %_ZNKSt8__detail15_Hashtable_baseIN4llvm3rdf12RegisterAggrESt4pairIKS3_St13unordered_mapINS2_11RegisterRefES7_St4hashIS7_ENS2_18RegisterRefEqualToESaIS4_IKS7_S7_EEEENS_10_Select1stESt8equal_toIS3_ES8_IS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISF_Lb1EEE.exit.thread.us.i.i

_ZNKSt8__detail15_Hashtable_baseIN4llvm3rdf12RegisterAggrESt4pairIKS3_St13unordered_mapINS2_11RegisterRefES7_St4hashIS7_ENS2_18RegisterRefEqualToESaIS4_IKS7_S7_EEEENS_10_Select1stESt8equal_toIS3_ES8_IS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISF_Lb1EEE.exit.thread.us.i.i: ; preds = %bb.c, %.split.us.i.i
  %i.ag = load ptr, ptr %.0.us.i.i, align 8, !tbaa !168 ; 3 uses
  %.not18.us.i.i = icmp eq ptr %i.ag, null
  br i1 %.not18.us.i.i, label %.critedge, label %bb.d

bb.d:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4llvm3rdf12RegisterAggrESt4pairIKS3_St13unordered_mapINS2_11RegisterRefES7_St4hashIS7_ENS2_18RegisterRefEqualToESaIS4_IKS7_S7_EEEENS_10_Select1stESt8equal_toIS3_ES8_IS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISF_Lb1EEE.exit.thread.us.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 152
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !547 ; 2 uses
  %i.aj = urem i64 %i.ai, %i.s
  %.not19.us.i.i = icmp eq i64 %i.aj, %i.t
  br i1 %.not19.us.i.i, label %.split.us.i.i, label %.critedge, !llvm.loop !1352

.split.i.i:                                       ; preds = %bb.b, %bb.f
  %i.ak = phi i64 [ %i.as, %bb.f ], [ %.pre25.i.i, %bb.b ]
  %.0.i.i = phi ptr [ %i.aq, %bb.f ], [ %i.x, %bb.b ] ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.am = icmp eq i64 %i.q, %i.ak
end_hunk_5
begin_hunk_6_@_ZNSt10_HashtableIN4llvm3rdf12RegisterAggrESt4pairIKS2_St13unordered_mapINS1_11RegisterRefES6_St4hashIS6_ENS1_18RegisterRefEqualToESaIS3_IKS6_S6_EEEESaISE_ENSt8__detail10_Select1stESt8equal_toIS2_ES7_IS2_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE:bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.z, align 8, !tbaa !609
  store ptr %.0.i, ptr %0, align 8, !tbaa !607
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjPNS_17MachineBasicBlockENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E16shrink_and_clearEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !683  ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZNK4llvm8DenseMapIjPNS_17MachineBasicBlockENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEE18planShrinkAndClearEv.exit.thread, label %_ZNK4llvm8DenseMapIjPNS_17MachineBasicBlockENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEE18planShrinkAndClearEv.exit

_ZNK4llvm8DenseMapIjPNS_17MachineBasicBlockENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEE18planShrinkAndClearEv.exit: ; preds = %bb.a
  %i.c = add i32 %i.b, -1
  %i.d = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.c, i1 false)
  %i.e = sub nuw nsw i32 33, %i.d
  %i.f = shl nuw i32 1, %i.e
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.f, i32 64) ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !684  ; 3 uses
  %.not = icmp eq i32 %.sroa.speculated.i, %i.h
  br i1 %.not, label %bb.b, label %bb.c

_ZNK4llvm8DenseMapIjPNS_17MachineBasicBlockENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEE18planShrinkAndClearEv.exit.thread: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !684  ; 2 uses
  %.not8 = icmp eq i32 %i.j, 0
  br i1 %.not8, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjPNS_17MachineBasicBlockENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E9initEmptyEv.exit, label %.thread16

bb.b:                                             ; preds = %_ZNK4llvm8DenseMapIjPNS_17MachineBasicBlockENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEE18planShrinkAndClearEv.exit
  store i32 0, ptr %i.a, align 8, !tbaa !683
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !685
  %i.m = zext i32 %.sroa.speculated.i to i64
  %i.n = add nuw nsw i64 %i.m, 31
  %i.o = lshr i64 %i.n, 3
  %i.p = and i64 %i.o, 1073741820
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.l, i8 0, i64 %i.p, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjPNS_17MachineBasicBlockENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E9initEmptyEv.exit

bb.c:                                             ; preds = %_ZNK4llvm8DenseMapIjPNS_17MachineBasicBlockENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEE18planShrinkAndClearEv.exit
  %.sroa.39.0.insert.ext.i = zext i32 %.sroa.speculated.i to i64 ; 2 uses
  %i.q = icmp eq i32 %i.h, 0
  br i1 %i.q, label %_ZN4llvm8DenseMapIjPNS_17MachineBasicBlockENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEE17deallocateBucketsEv.exit, label %.thread16

.thread16:                                        ; preds = %_ZNK4llvm8DenseMapIjPNS_17MachineBasicBlockENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEE18planShrinkAndClearEv.exit.thread, %bb.c
  %i.r = phi ptr [ %i.g, %bb.c ], [ %i.i, %_ZNK4llvm8DenseMapIjPNS_17MachineBasicBlockENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEE18planShrinkAndClearEv.exit.thread ] ; 2 uses
  %i.s = phi i32 [ %i.h, %bb.c ], [ %i.j, %_ZNK4llvm8DenseMapIjPNS_17MachineBasicBlockENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEE18planShrinkAndClearEv.exit.thread ]
  %spec.select10.i1221 = phi i32 [ %.sroa.speculated.i, %bb.c ], [ 0, %_ZNK4llvm8DenseMapIjPNS_17MachineBasicBlockENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEE18planShrinkAndClearEv.exit.thread ]
  %.sroa.39.0.insert.ext.i1319 = phi i64 [ %.sroa.39.0.insert.ext.i, %bb.c ], [ 0, %_ZNK4llvm8DenseMapIjPNS_17MachineBasicBlockENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEE18planShrinkAndClearEv.exit.thread ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !688
  %i.u = zext i32 %i.s to i64                     ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 4
  %i.w = add nuw nsw i64 %i.u, 31
  %i.x = lshr i64 %i.w, 3
  %i.y = and i64 %i.x, 1073741820
  %i.z = add nuw nsw i64 %i.y, %i.v
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.t, i64 noundef %i.z, i64 noundef 8) #20
  store i32 0, ptr %i.r, align 4, !tbaa !684
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIjPNS_17MachineBasicBlockENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapIjPNS_17MachineBasicBlockENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEE17deallocateBucketsEv.exit: ; preds = %bb.c, %.thread16
  %i.aa = phi ptr [ %i.g, %bb.c ], [ %i.r, %.thread16 ] ; 2 uses
  %spec.select10.i1222 = phi i32 [ %.sroa.speculated.i, %bb.c ], [ %spec.select10.i1221, %.thread16 ] ; 2 uses
  %.sroa.39.0.insert.ext.i1320 = phi i64 [ %.sroa.39.0.insert.ext.i, %bb.c ], [ %.sroa.39.0.insert.ext.i1319, %.thread16 ] ; 2 uses
  store i32 %spec.select10.i1222, ptr %i.aa, align 4, !tbaa !684
  %.not.i4 = icmp eq i32 %spec.select10.i1222, 0
  br i1 %.not.i4, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8DenseMapIjPNS_17MachineBasicBlockENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEE17deallocateBucketsEv.exit
  %i.ab = shl nuw nsw i64 %.sroa.39.0.insert.ext.i1320, 4
  %i.ac = add nuw nsw i64 %.sroa.39.0.insert.ext.i1320, 31
  %i.ad = lshr i64 %i.ac, 3
  %i.ae = and i64 %i.ad, 1073741820
  %i.af = add nuw nsw i64 %i.ae, %i.ab
  %i.ag = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.af, i64 noundef 8) #20 ; 2 uses
  %i.ah = load i32, ptr %i.aa, align 4, !tbaa !684 ; 2 uses
  %i.ai = zext i32 %i.ah to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.aj ; 2 uses
  store ptr %i.ag, ptr %0, align 8, !tbaa !688
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !685
  store i32 0, ptr %i.a, align 8, !tbaa !683
  %.not.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjPNS_17MachineBasicBlockENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E9initEmptyEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = add nuw nsw i64 %i.ai, 31
  %i.an = lshr i64 %i.am, 3
  %i.ao = and i64 %i.an, 1073741820
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ak, i8 0, i64 %i.ao, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjPNS_17MachineBasicBlockENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E9initEmptyEv.exit

bb.f:                                             ; preds = %_ZN4llvm8DenseMapIjPNS_17MachineBasicBlockENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEE17deallocateBucketsEv.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjPNS_17MachineBasicBlockENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E9initEmptyEv.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIjPNS_17MachineBasicBlockENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E9initEmptyEv.exit: ; preds = %_ZNK4llvm8DenseMapIjPNS_17MachineBasicBlockENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEE18planShrinkAndClearEv.exit.thread, %bb.f, %bb.e, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjPNS_17MachineBasicBlockENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.105", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !684
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #20 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !688
  store ptr %i.y, ptr %i.q, align 8, !tbaa !685
  store i32 0, ptr %i.p, align 16, !tbaa !683
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjPNS_17MachineBasicBlockENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !1080
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1367
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !1080
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !1080
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !1080
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !45 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !45
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !45
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !45
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !45
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIjPNS_17MachineBasicBlockENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #20
  br label %_ZN4llvm8DenseMapIjPNS_17MachineBasicBlockENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEED2Ev.exit

_ZN4llvm8DenseMapIjPNS_17MachineBasicBlockENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjPNS_17MachineBasicBlockENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !688    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !685
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !684  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !685  ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !688
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !684
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i17 = icmp eq i64 %i.n, 0
  br i1 %.not.i17, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjPNS_17MachineBasicBlockENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !45   ; 2 uses
  %.not11.i15 = icmp eq i32 %i.p, 0
  br i1 %.not11.i15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph20
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjPNS_17MachineBasicBlockENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit
  %.0.i16 = phi i32 [ %i.p, %.lr.ph ], [ %i.ao, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjPNS_17MachineBasicBlockENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i16, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !45   ; 2 uses
  %i.w = mul i32 %i.v, 37
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.w, %bb.b ], [ %i.ae, %bb.c ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.x = zext i32 %.0.i7 to i64                   ; 2 uses
  %i.y = lshr i64 %i.x, 5                         ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !45
  %i.ab = and i32 %.0.i7, 31                      ; 2 uses
  %i.ac = lshr i32 %i.aa, %i.ab
  %i.ad = trunc i32 %i.ac to i1
  %i.ae = add i32 %.0.i7, 1
  br i1 %i.ad, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjPNS_17MachineBasicBlockENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit, !llvm.loop !1368

_ZZN4llvm12DenseMapBaseINS_8DenseMapIjPNS_17MachineBasicBlockENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit: ; preds = %bb.c
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y ; 2 uses
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.x ; 2 uses
  store i32 %i.v, ptr %i.ag, align 4, !tbaa !45
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !262
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !262
  %i.ak = shl nuw i32 1, %i.ab
  %i.al = load i32, ptr %i.af, align 4, !tbaa !45
  %i.am = or i32 %i.al, %i.ak
  store i32 %i.am, ptr %i.af, align 4, !tbaa !45
  %i.an = add i32 %.0.i16, -1
  %i.ao = and i32 %i.an, %.0.i16                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ao, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1369

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjPNS_17MachineBasicBlockENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit, %.lr.ph20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjPNS_17MachineBasicBlockENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph20, !llvm.loop !1370

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjPNS_17MachineBasicBlockENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !684
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjPNS_17MachineBasicBlockENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjPNS_17MachineBasicBlockENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjPNS_17MachineBasicBlockENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ap = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjPNS_17MachineBasicBlockENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !683
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ar, ptr %i.as, align 8, !tbaa !683
  %i.at = icmp eq i32 %i.ap, 0
  br i1 %i.at, label %_ZN4llvm8DenseMapIjPNS_17MachineBasicBlockENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjPNS_17MachineBasicBlockENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit
  %i.au = zext i32 %i.ap to i64                   ; 2 uses
  %i.av = shl nuw nsw i64 %i.au, 4
  %i.aw = add nuw nsw i64 %i.au, 31
  %i.ax = lshr i64 %i.aw, 3
  %i.ay = and i64 %i.ax, 1073741820
  %i.az = add nuw nsw i64 %i.ay, %i.av
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.az, i64 noundef 8) #20
  store i32 0, ptr %i.d, align 4, !tbaa !684
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIjPNS_17MachineBasicBlockENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEE4killEv.exit

_ZN4llvm8DenseMapIjPNS_17MachineBasicBlockENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjPNS_17MachineBasicBlockENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !738, !noalias !1371 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !752, !noalias !1371 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !753, !noalias !1371 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !262    ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.h, %i.n                       ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.p ; 2 uses
  %i.r = lshr i64 %i.p, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !45
  %i.u = and i32 %i.o, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i, label %.loopexit, !prof !247

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !262
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit, label %bb.c, !prof !197

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !45
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !248, !llvm.loop !755

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !1376
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !756
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit, label %bb.d, !prof !197

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1376
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !752
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !738
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 3 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 3                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !45
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !45
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !756
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !756
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !262
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !262
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !738, !noalias !1377 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !752, !noalias !1377 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !753, !noalias !1377 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !262    ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !45
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !247

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !262
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !197

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !45
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !248, !llvm.loop !755

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !1376
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.388", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !753
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #20 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !738
  store ptr %i.y, ptr %i.q, align 8, !tbaa !752
  store i32 0, ptr %i.p, align 16, !tbaa !756
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !1080
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1376
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !1080
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !1080
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !1080
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !45 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !45
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !45
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !45
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !45
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_17MachineBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #20
  br label %_ZN4llvm8DenseMapIPNS_17MachineBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_17MachineBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !738    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !752
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !753  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !752  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !738
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !753
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !45   ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ax, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !262  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !45 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !45 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !1382

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.lcssa13.i
  store ptr %i.v, ptr %i.at, align 8, !tbaa !262
  %i.au = shl nuw i32 1, %.lcssa.i
  %i.av = or i32 %i.au, %.lcssa11.i
  store i32 %i.av, ptr %i.as, align 4, !tbaa !45
  %i.aw = add i32 %.0.i15, -1
  %i.ax = and i32 %i.aw, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ax, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1383

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !1384

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !753
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ay = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !756
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !756
  %i.bc = icmp eq i32 %i.ay, 0
  br i1 %i.bc, label %_ZN4llvm8DenseMapIPNS_17MachineBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bd = zext i32 %i.ay to i64                   ; 2 uses
  %i.be = shl nuw nsw i64 %i.bd, 3
  %i.bf = add nuw nsw i64 %i.bd, 31
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = and i64 %i.bg, 1073741820
  %i.bi = add nuw nsw i64 %i.bh, %i.be
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bi, i64 noundef 8) #20
  store i32 0, ptr %i.d, align 4, !tbaa !753
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_17MachineBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_17MachineBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPNS_17MachineBasicBlockELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !169
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #20
  %i.f = load ptr, ptr %0, align 8, !tbaa !21
  %i.g = load i32, ptr %i.a, align 8, !tbaa !169
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !169
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !169
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeIPN4llvm17MachineBasicBlockESt4pairIKS2_St3setIS2_St4lessIS2_ESaIS2_EEESt10_Select1stISA_ES7_SaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS2_EESJ_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #22 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.c = load i64, ptr %3, align 8, !tbaa !273
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !262
  store ptr %i.e, ptr %i.b, align 8, !tbaa !771
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  store ptr %i.g, ptr %i.h, align 8, !tbaa !209
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %i.g, ptr %i.i, align 8, !tbaa !210
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i64 0, ptr %i.j, align 8, !tbaa !211
  %i.k = tail call { ptr, ptr } @_ZNSt8_Rb_treeIPN4llvm17MachineBasicBlockESt4pairIKS2_St3setIS2_St4lessIS2_ESaIS2_EEESt10_Select1stISA_ES7_SaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 2 uses
  %i.l = extractvalue { ptr, ptr } %i.k, 0        ; 2 uses
  %i.m = extractvalue { ptr, ptr } %i.k, 1        ; 4 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp ne ptr %i.l, null
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.o
  br i1 %or.cond.i.i, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !262
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !262
  %i.s = icmp ult ptr %i.p, %i.r
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.b
  %i.t = phi i1 [ %i.s, %bb.c ], [ true, %bb.b ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.t, ptr noundef nonnull %i.a, ptr noundef nonnull %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.n) #20
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !211
  %i.w = add i64 %i.v, 1
  store i64 %i.w, ptr %i.u, align 8, !tbaa !211
  br label %_ZNSt8_Rb_treeIPN4llvm17MachineBasicBlockESt4pairIKS2_St3setIS2_St4lessIS2_ESaIS2_EEESt10_Select1stISA_ES7_SaISA_EE10_Auto_nodeD2Ev.exit

bb.d:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !208
  tail call void @_ZNSt8_Rb_treeIPN4llvm17MachineBasicBlockES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef %i.y)
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 88) #23
  br label %_ZNSt8_Rb_treeIPN4llvm17MachineBasicBlockESt4pairIKS2_St3setIS2_St4lessIS2_ESaIS2_EEESt10_Select1stISA_ES7_SaISA_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeIPN4llvm17MachineBasicBlockESt4pairIKS2_St3setIS2_St4lessIS2_ESaIS2_EEESt10_Select1stISA_ES7_SaISA_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread, %bb.d
  %.sroa.09.013 = phi ptr [ %i.a, %.thread ], [ %i.l, %bb.d ]
  ret ptr %.sroa.09.013
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, ptr } @_ZNSt8_Rb_treeIPN4llvm17MachineBasicBlockESt4pairIKS2_St3setIS2_St4lessIS2_ESaIS2_EEESt10_Select1stISA_ES7_SaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !211
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !264  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !262
  %i.i = load ptr, ptr %2, align 8, !tbaa !262
  %i.j = icmp ult ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt8_Rb_treeIPN4llvm17MachineBasicBlockESt4pairIKS2_St3setIS2_St4lessIS2_ESaIS2_EEESt10_Select1stISA_ES7_SaISA_EE24_M_get_insert_unique_posERS4_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i = load ptr, ptr %i.k, align 8, !tbaa !264 ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.l = load ptr, ptr %2, align 8, !tbaa !262    ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.02024.i = phi ptr [ %.02022.i, %.lr.ph.i ], [ %.020.i, %bb.e ] ; 5 uses
end_hunk_6
begin_hunk_7_@_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm3rdf11RegisterRefESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_15RegisterRefLessEEEEvT_SE_T0_:bb.a
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.0.018 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not19 = icmp eq ptr %.sroa.0.018, %1
  br i1 %.not19, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = ptrtoint ptr %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %.sroa.0.021 = phi ptr [ %.sroa.0.018, %.lr.ph ], [ %.sroa.0.0, %bb.h ] ; 9 uses
  %.pn20 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.021, %bb.h ] ; 6 uses
  %.sroa.02.0.copyload.i = load i32, ptr %.sroa.0.021, align 8, !tbaa !45
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn20, i64 24 ; 2 uses
  %.sroa.24.0.copyload.i = load i64, ptr %.sroa.24.0..sroa_idx.i, align 8, !tbaa !167
  %.sroa.0.0.copyload.i = load i32, ptr %0, align 8, !tbaa !45
  %.sroa.21.0.copyload.i = load i64, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !167
  %i.c = tail call noundef zeroext i1 @_ZNK4llvm3rdf20PhysicalRegisterInfo4lessENS0_11RegisterRefES2_(ptr noundef nonnull align 8 dereferenceable(216) %2, i32 %.sroa.02.0.copyload.i, i64 %.sroa.24.0.copyload.i, i32 %.sroa.0.0.copyload.i, i64 %.sroa.21.0.copyload.i) #20
  br i1 %i.c, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.021, i64 16, i1 false), !tbaa.struct !884
  %i.d = ptrtoint ptr %.sroa.0.021 to i64
  %i.e = sub i64 %i.d, %i.b                       ; 3 uses
  %i.f = ashr exact i64 %i.e, 4                   ; 2 uses
  %i.g = icmp sgt i64 %i.f, 1
  br i1 %i.g, label %bb.d, label %bb.e, !prof !197

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.pn20, i64 32
  %i.i = sub nsw i64 0, %i.f
  %i.j = getelementptr inbounds [16 x i8], ptr %i.h, i64 %i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.j, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.e, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm3rdf11RegisterRefESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit

bb.e:                                             ; preds = %bb.c
  %i.k = icmp eq i64 %i.e, 16
  br i1 %i.k, label %bb.f, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm3rdf11RegisterRefESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.pn20, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !884
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm3rdf11RegisterRefESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm3rdf11RegisterRefESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit: ; preds = %bb.d, %bb.e, %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !884
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  %i.m = load <2 x i32>, ptr %.sroa.0.021, align 8
  %.sroa.03.0.copyload.i = load i32, ptr %.sroa.0.021, align 8, !tbaa !45 ; 2 uses
  %.sroa.57.0.copyload.i = load i64, ptr %.sroa.24.0..sroa_idx.i, align 8, !tbaa !167 ; 3 uses
  %.sroa.0.0.copyload.i15.i = load i32, ptr %.pn20, align 8, !tbaa !45
  %.sroa.21.0..sroa_idx.i16.i = getelementptr inbounds nuw i8, ptr %.pn20, i64 8
  %.sroa.21.0.copyload.i17.i = load i64, ptr %.sroa.21.0..sroa_idx.i16.i, align 8, !tbaa !167
  %i.n = tail call noundef zeroext i1 @_ZNK4llvm3rdf20PhysicalRegisterInfo4lessENS0_11RegisterRefES2_(ptr noundef nonnull align 8 dereferenceable(216) %2, i32 %.sroa.03.0.copyload.i, i64 %.sroa.57.0.copyload.i, i32 %.sroa.0.0.copyload.i15.i, i64 %.sroa.21.0.copyload.i17.i) #20
  br i1 %i.n, label %.lr.ph.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm3rdf11RegisterRefESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterINS3_15RegisterRefLessEEEEvT_T0_.exit

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.i
  %.sroa.0.019.i = phi ptr [ %.sroa.0.0.i, %.lr.ph.i ], [ %.pn20, %bb.g ] ; 5 uses
  %.sroa.011.018.i = phi ptr [ %.sroa.0.019.i, %.lr.ph.i ], [ %.sroa.0.021, %bb.g ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.011.018.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.019.i, i64 16, i1 false), !tbaa.struct !884
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.0.019.i, i64 -16 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i32, ptr %.sroa.0.0.i, align 8, !tbaa !45
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %.sroa.0.019.i, i64 -8
  %.sroa.21.0.copyload.i.i = load i64, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !167
  %i.o = tail call noundef zeroext i1 @_ZNK4llvm3rdf20PhysicalRegisterInfo4lessENS0_11RegisterRefES2_(ptr noundef nonnull align 8 dereferenceable(216) %2, i32 %.sroa.03.0.copyload.i, i64 %.sroa.57.0.copyload.i, i32 %.sroa.0.0.copyload.i.i, i64 %.sroa.21.0.copyload.i.i) #20
  br i1 %i.o, label %.lr.ph.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm3rdf11RegisterRefESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterINS3_15RegisterRefLessEEEEvT_T0_.exit, !llvm.loop !1394

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm3rdf11RegisterRefESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterINS3_15RegisterRefLessEEEEvT_T0_.exit: ; preds = %.lr.ph.i, %bb.g
  %.sroa.011.0.lcssa.i = phi ptr [ %.sroa.0.021, %bb.g ], [ %.sroa.0.019.i, %.lr.ph.i ] ; 2 uses
  store <2 x i32> %i.m, ptr %.sroa.011.0.lcssa.i, align 8
  %.sroa.57.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %.sroa.011.0.lcssa.i, i64 8
  store i64 %.sroa.57.0.copyload.i, ptr %.sroa.57.0..sroa_idx8.i, align 8, !tbaa !167
  br label %bb.h

bb.h:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm3rdf11RegisterRefESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm3rdf11RegisterRefESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterINS3_15RegisterRefLessEEEEvT_T0_.exit
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.021, i64 16 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %1
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !1398

.loopexit:                                        ; preds = %bb.h, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt8_Rb_treeIjSt4pairIKjN4llvm11LaneBitmaskEESt10_Select1stIS4_ESt4lessIjESaIS4_EE7_M_copyILb0ENSA_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #22 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  %i.d = load i32, ptr %1, align 8, !tbaa !1088
  store i32 %i.d, ptr %i.b, align 8, !tbaa !1088
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.f, align 8, !tbaa !480
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !397  ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef ptr @_ZNSt8_Rb_treeIjSt4pairIKjN4llvm11LaneBitmaskEESt10_Select1stIS4_ESt4lessIjESaIS4_EE7_M_copyILb0ENSA_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.h, ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.i, ptr %i.j, align 8, !tbaa !397
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0.in30 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.031 = load ptr, ptr %.0.in30, align 8, !tbaa !395 ; 2 uses
  %.not2832 = icmp eq ptr %.031, null
  br i1 %.not2832, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.e
  %.034 = phi ptr [ %.0, %bb.e ], [ %.031, %bb.c ] ; 4 uses
  %.02733 = phi ptr [ %i.l, %bb.e ], [ %i.b, %bb.c ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.034, i64 32
  %i.l = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #22 ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 16, i1 false)
  %i.n = load i32, ptr %.034, align 8, !tbaa !1088
  store i32 %i.n, ptr %i.l, align 8, !tbaa !1088
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %.02733, i64 16
  store ptr %i.l, ptr %i.p, align 8, !tbaa !395
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %.02733, ptr %i.q, align 8, !tbaa !480
  %i.r = getelementptr inbounds nuw i8, ptr %.034, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !397  ; 2 uses
  %.not29 = icmp eq ptr %i.s, null
  br i1 %.not29, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.t = tail call noundef ptr @_ZNSt8_Rb_treeIjSt4pairIKjN4llvm11LaneBitmaskEESt10_Select1stIS4_ESt4lessIjESaIS4_EE7_M_copyILb0ENSA_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.s, ptr noundef nonnull %i.l, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.t, ptr %i.u, align 8, !tbaa !397
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %.0.in = getelementptr inbounds nuw i8, ptr %.034, i64 16
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !395 ; 2 uses
  %.not28 = icmp eq ptr %.0, null
  br i1 %.not28, label %._crit_edge, label %.lr.ph, !llvm.loop !1399

._crit_edge:                                      ; preds = %bb.e, %bb.c
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E16shrink_and_clearEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZNK4llvm8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSA_EEE18planShrinkAndClearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add i32 %i.b, -1
  %i.d = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.c, i1 false)
  %i.e = sub nuw nsw i32 33, %i.d
  %i.f = shl nuw i32 1, %i.e
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.f, i32 64)
  br label %_ZNK4llvm8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSA_EEE18planShrinkAndClearEv.exit

_ZNK4llvm8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSA_EEE18planShrinkAndClearEv.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ 0, %bb.a ], [ %.sroa.speculated.i, %bb.b ] ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !43   ; 3 uses
  %.not = icmp eq i32 %.0.i, %i.h                 ; 2 uses
  %spec.select10.i = select i1 %.not, i32 0, i32 %.0.i
  %.sroa.39.0.insert.ext.i = zext i32 %spec.select10.i to i64 ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E10destroyAllEv.exit, label %.lr.ph7.preheader.i

.lr.ph7.preheader.i:                              ; preds = %_ZNK4llvm8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSA_EEE18planShrinkAndClearEv.exit
  %i.j = load ptr, ptr %0, align 8, !tbaa !35
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !42
  %i.m = zext i32 %i.h to i64
  %i.n = add nuw nsw i64 %i.m, 31
  %i.o = lshr i64 %i.n, 5
  br label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %._crit_edge.i, %.lr.ph7.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph7.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.q = load i32, ptr %i.p, align 4, !tbaa !45   ; 2 uses
  %.not11.i2.i = icmp eq i32 %i.q, 0
  br i1 %.not11.i2.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph7.i
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i32
  %i.r = shl i32 %indvars.iv.tr.i, 5
  br label %bb.c

bb.c:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i3.i = phi i32 [ %i.q, %.lr.ph.i ], [ %i.ak, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.s = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i, i1 true)
  %i.t = or disjoint i32 %i.s, %i.r
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [64 x i8], ptr %i.j, i64 %i.u ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 24 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !164  ; 2 uses
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not5.i.i.i.i.i.i, label %_ZNSt10_HashtableISt4pairIjN4llvm11LaneBitmaskEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i
  %.06.i.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i.i ], [ %i.y, %bb.c ] ; 2 uses
  %i.z = load ptr, ptr %.06.i.i.i.i.i.i, align 8, !tbaa !168 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i.i, i64 noundef 32) #23
  %.not.i.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt10_HashtableISt4pairIjN4llvm11LaneBitmaskEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !576

_ZNSt10_HashtableISt4pairIjN4llvm11LaneBitmaskEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.c
  %i.aa = load ptr, ptr %i.w, align 8, !tbaa !539
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !540
  %i.ad = shl i64 %i.ac, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aa, i8 0, i64 %i.ad, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  %i.ae = load ptr, ptr %i.w, align 8, !tbaa !539 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt10_HashtableISt4pairIjN4llvm11LaneBitmaskEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i
  %i.ah = load i64, ptr %i.ab, align 8, !tbaa !540
  %i.ai = shl i64 %i.ah, 3
  tail call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #23
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %bb.d, %_ZNSt10_HashtableISt4pairIjN4llvm11LaneBitmaskEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i
  %i.aj = add i32 %.0.i3.i, -1
  %i.ak = and i32 %i.aj, %.0.i3.i                 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.c, !llvm.loop !681

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph7.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.o
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E10destroyAllEv.exit, label %.lr.ph7.i, !llvm.loop !682

_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E10destroyAllEv.exit: ; preds = %._crit_edge.i, %_ZNK4llvm8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSA_EEE18planShrinkAndClearEv.exit
  br i1 %.not, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E10destroyAllEv.exit
  store i32 0, ptr %i.a, align 8, !tbaa !44
  %i.al = load i32, ptr %i.g, align 4, !tbaa !43  ; 2 uses
  %.not.i3 = icmp eq i32 %i.al, 0
  br i1 %.not.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E9initEmptyEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !42
  %i.ao = zext i32 %i.al to i64
  %i.ap = add nuw nsw i64 %i.ao, 31
  %i.aq = lshr i64 %i.ap, 3
  %i.ar = and i64 %i.aq, 1073741820
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.an, i8 0, i64 %i.ar, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E9initEmptyEv.exit

bb.g:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E10destroyAllEv.exit
  %i.as = load i32, ptr %i.g, align 4, !tbaa !43  ; 2 uses
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %_ZN4llvm8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSA_EEE17deallocateBucketsEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = load ptr, ptr %0, align 8, !tbaa !35
  %i.av = zext i32 %i.as to i64                   ; 2 uses
  %i.aw = shl nuw nsw i64 %i.av, 6
  %i.ax = add nuw nsw i64 %i.av, 31
  %i.ay = lshr i64 %i.ax, 3
  %i.az = and i64 %i.ay, 1073741820
  %i.ba = add nuw nsw i64 %i.az, %i.aw
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.au, i64 noundef %i.ba, i64 noundef 8) #20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSA_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSA_EEE17deallocateBucketsEv.exit: ; preds = %bb.g, %bb.h
  store i32 %.0.i, ptr %i.g, align 4, !tbaa !43
  %.not.i4 = icmp eq i32 %.0.i, 0
  br i1 %.not.i4, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSA_EEE17deallocateBucketsEv.exit
  %i.bb = shl nuw nsw i64 %.sroa.39.0.insert.ext.i, 6
  %i.bc = add nuw nsw i64 %.sroa.39.0.insert.ext.i, 31
  %i.bd = lshr i64 %i.bc, 3
  %i.be = and i64 %i.bd, 1073741820
  %i.bf = add nuw nsw i64 %i.be, %i.bb
  %i.bg = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.bf, i64 noundef 8) #20 ; 2 uses
  %i.bh = load i32, ptr %i.g, align 4, !tbaa !43  ; 2 uses
  %i.bi = zext i32 %i.bh to i64                   ; 2 uses
  %i.bj = shl nuw nsw i64 %i.bi, 6
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bj ; 2 uses
  store ptr %i.bg, ptr %0, align 8, !tbaa !35
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !42
  store i32 0, ptr %i.a, align 8, !tbaa !44
  %.not.i.i5 = icmp eq i32 %i.bh, 0
  br i1 %.not.i.i5, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E9initEmptyEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bm = add nuw nsw i64 %i.bi, 31
  %i.bn = lshr i64 %i.bm, 3
  %i.bo = and i64 %i.bn, 1073741820
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bk, i8 0, i64 %i.bo, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E9initEmptyEv.exit

bb.k:                                             ; preds = %_ZN4llvm8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSA_EEE17deallocateBucketsEv.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E9initEmptyEv.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt13unordered_setISt4pairIjNS_11LaneBitmaskEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E9initEmptyEv.exit: ; preds = %bb.k, %bb.j, %bb.i, %bb.f, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_RDFLiveness.cpp() #15 section ".text.startup" {
bb.a:
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL10MaxRecNest, i32 noundef 0, i32 noundef 0) #20
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL10MaxRecNest, i64 120), align 8, !tbaa !385
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL10MaxRecNest, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL10MaxRecNest, i64 128), align 8, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIjLb0ENS0_6parserIjEEEE, i64 16), ptr @_ZL10MaxRecNest, align 8, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL10MaxRecNest, i64 144), align 8, !tbaa !8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL10MaxRecNest, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL10MaxRecNest, ptr nonnull align 1 dereferenceable(21) @.str, i64 20) #20
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @_ZL10MaxRecNest, i64 120), align 8, !tbaa !385
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL10MaxRecNest, i64 140), align 4, !tbaa !1104
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @_ZL10MaxRecNest, i64 136), align 8, !tbaa !1400
  %i.a = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL10MaxRecNest, i64 10), align 2
  %i.b = and i16 %i.a, -97
  %i.c = or disjoint i16 %i.b, 32
  store i16 %i.c, ptr getelementptr inbounds nuw (i8, ptr @_ZL10MaxRecNest, i64 10), align 2
  store ptr @.str.1, ptr getelementptr inbounds nuw (i8, ptr @_ZL10MaxRecNest, i64 32), align 8, !tbaa !1401
  store i64 23, ptr getelementptr inbounds nuw (i8, ptr @_ZL10MaxRecNest, i64 40), align 8, !tbaa !167
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL10MaxRecNest) #20
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIjLb0ENS0_6parserIjEEED2Ev, ptr nonnull @_ZL10MaxRecNest, ptr nonnull @__dso_handle) #20 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #19

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #20 = { nounwind }
attributes #21 = { noreturn nounwind }
attributes #22 = { builtin nounwind allocsize(0) }
attributes #23 = { builtin nounwind }
attributes #24 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
end_hunk_7
