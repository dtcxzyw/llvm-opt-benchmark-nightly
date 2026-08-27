Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/BinaryFunction?download=true
inline.NumInlined: 14780
inline.NumDeleted: 6683
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZN4llvm4bolt14BinaryFunction5printERNS_11raw_ostreamENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

bb.ij:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit607
  %i.azv = load ptr, ptr %i.an, align 8, !tbaa !538
  %i.azw = load ptr, ptr %i.ap, align 8, !tbaa !542 ; 2 uses
  %i.azx = ptrtoint ptr %i.azv to i64
  %i.azy = ptrtoint ptr %i.azw to i64
  %i.azz = sub i64 %i.azx, %i.azy
  %i.baa = icmp ult i64 %i.azz, 12
  br i1 %i.baa, label %bb.ik, label %bb.il

bb.ik:                                            ; preds = %bb.ij
  %i.bab = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.97, i64 noundef 12) #30 ; 0 uses
  %.pre1317 = load ptr, ptr %i.a, align 8, !tbaa !556
  %.pre1319.pre = load ptr, ptr %i.ap, align 8, !tbaa !542
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit631

bb.il:                                            ; preds = %bb.ij
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.azw, ptr noundef nonnull align 1 dereferenceable(12) @.str.97, i64 12, i1 false)
  %i.bac = load ptr, ptr %i.ap, align 8, !tbaa !542
  %i.bad = getelementptr inbounds nuw i8, ptr %i.bac, i64 12 ; 2 uses
  store ptr %i.bad, ptr %i.ap, align 8, !tbaa !542
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit631

_ZN4llvm11raw_ostreamlsEPKc.exit631:              ; preds = %bb.ik, %bb.il
  %.pre1319 = phi ptr [ %.pre1319.pre, %bb.ik ], [ %i.bad, %bb.il ] ; 3 uses
  %i.bae = phi ptr [ %.pre1317, %bb.ik ], [ %i.azs, %bb.il ] ; 2 uses
  %i.baf = getelementptr inbounds nuw i8, ptr %i.bae, i64 72
  %i.bag = load ptr, ptr %i.baf, align 8, !tbaa !21 ; 3 uses
  %i.bah = getelementptr inbounds nuw i8, ptr %i.bae, i64 80
  %i.bai = load i32, ptr %i.bah, align 8, !tbaa !427 ; 3 uses
  %i.baj = zext i32 %i.bai to i64
  %.idx1264 = shl nuw nsw i64 %i.baj, 3
  %i.bak = getelementptr inbounds nuw i8, ptr %i.bag, i64 %.idx1264
  %.not2681216 = icmp eq i32 %i.bai, 0
  %.pre1321 = load ptr, ptr %i.an, align 8, !tbaa !538 ; 2 uses
  br i1 %.not2681216, label %._crit_edge1219, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit651.peel

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit651.peel: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit631
  %i.bal = load ptr, ptr %i.bag, align 8, !tbaa !556
  %i.bam = getelementptr inbounds nuw i8, ptr %i.bal, i64 112
  %i.ban = load ptr, ptr %i.bam, align 8, !tbaa !564 ; 2 uses
  %i.bao = getelementptr inbounds nuw i8, ptr %i.ban, i64 8
  %i.bap = load i32, ptr %i.bao, align 8
  %i.baq = and i32 %i.bap, 4
  %.not.i.i652.peel = icmp eq i32 %i.baq, 0
  br i1 %.not.i.i652.peel, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit660.peel, label %_ZNK4llvm4bolt16BinaryBasicBlock7getNameEv.exit657.peel

_ZNK4llvm4bolt16BinaryBasicBlock7getNameEv.exit657.peel: ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit651.peel
  %i.bar = ptrtoint ptr %.pre1321 to i64
  %i.bas = ptrtoint ptr %.pre1319 to i64
  %i.bat = sub i64 %i.bar, %i.bas
  %i.bau = getelementptr inbounds i8, ptr %i.ban, i64 -8
  %i.bav = load ptr, ptr %i.bau, align 8, !tbaa !429 ; 2 uses
  %i.baw = getelementptr inbounds nuw i8, ptr %i.bav, i64 24 ; 2 uses
  %i.bax = load i64, ptr %i.bav, align 8, !tbaa !431 ; 5 uses
  %i.bay = icmp ugt i64 %i.bax, %i.bat
  br i1 %i.bay, label %bb.io, label %bb.im

bb.im:                                            ; preds = %_ZNK4llvm4bolt16BinaryBasicBlock7getNameEv.exit657.peel
  %.not.i658.peel = icmp eq i64 %i.bax, 0
  br i1 %.not.i658.peel, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit660.peel, label %bb.in

bb.in:                                            ; preds = %bb.im
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.pre1319, ptr nonnull align 8 %i.baw, i64 %i.bax, i1 false)
  %i.baz = load ptr, ptr %i.ap, align 8, !tbaa !542
  %i.bba = getelementptr inbounds nuw i8, ptr %i.baz, i64 %i.bax
  store ptr %i.bba, ptr %i.ap, align 8, !tbaa !542
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit660.peel

bb.io:                                            ; preds = %_ZNK4llvm4bolt16BinaryBasicBlock7getNameEv.exit657.peel
  %i.bbb = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %i.baw, i64 noundef %i.bax) #30 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit660.peel

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit660.peel: ; preds = %bb.io, %bb.in, %bb.im, %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit651.peel
  %.not268.peel = icmp eq i32 %i.bai, 1
  br i1 %.not268.peel, label %._crit_edge1219.loopexit, label %_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit648.peel.next

_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit648.peel.next: ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit660.peel
  %i.bbc = getelementptr inbounds nuw i8, ptr %i.bag, i64 8
  br label %_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit648

._crit_edge1219.loopexit:                         ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit660, %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit660.peel
  %.pre1318 = load ptr, ptr %i.ap, align 8, !tbaa !542
  %.pre1320 = load ptr, ptr %i.an, align 8, !tbaa !538
  br label %._crit_edge1219

._crit_edge1219:                                  ; preds = %._crit_edge1219.loopexit, %_ZN4llvm11raw_ostreamlsEPKc.exit631
  %i.bbd = phi ptr [ %.pre1320, %._crit_edge1219.loopexit ], [ %.pre1321, %_ZN4llvm11raw_ostreamlsEPKc.exit631 ]
  %i.bbe = phi ptr [ %.pre1318, %._crit_edge1219.loopexit ], [ %.pre1319, %_ZN4llvm11raw_ostreamlsEPKc.exit631 ] ; 3 uses
  %.not.i638 = icmp ult ptr %i.bbe, %i.bbd
  br i1 %.not.i638, label %bb.iq, label %bb.ip

bb.ip:                                            ; preds = %._crit_edge1219
  %i.bbf = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %1, i8 noundef zeroext 10) #30 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit640

bb.iq:                                            ; preds = %._crit_edge1219
  %i.bbg = getelementptr inbounds nuw i8, ptr %i.bbe, i64 1
  store ptr %i.bbg, ptr %i.ap, align 8, !tbaa !542
  store i8 10, ptr %i.bbe, align 1, !tbaa !414
  br label %_ZN4llvm11raw_ostreamlsEc.exit640

_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit648: ; preds = %_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit648.peel.next, %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit660
  %.02441218 = phi ptr [ %i.bcl, %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit660 ], [ %i.bbc, %_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit648.peel.next ] ; 2 uses
  %i.bbh = load ptr, ptr %.02441218, align 8, !tbaa !556
  %i.bbi = load ptr, ptr %i.an, align 8, !tbaa !538
  %i.bbj = load ptr, ptr %i.ap, align 8, !tbaa !542 ; 2 uses
  %i.bbk = ptrtoint ptr %i.bbi to i64
  %i.bbl = ptrtoint ptr %i.bbj to i64
  %i.bbm = sub i64 %i.bbk, %i.bbl
  %i.bbn = icmp ult i64 %i.bbm, 2
  br i1 %i.bbn, label %bb.ir, label %bb.is

bb.ir:                                            ; preds = %_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit648
  %i.bbo = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.70, i64 noundef 2) #30
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit651

bb.is:                                            ; preds = %_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit648
  store i16 8236, ptr %i.bbj, align 1
  %i.bbp = load ptr, ptr %i.ap, align 8, !tbaa !542
  %i.bbq = getelementptr inbounds nuw i8, ptr %i.bbp, i64 2
  store ptr %i.bbq, ptr %i.ap, align 8, !tbaa !542
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit651

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit651:   ; preds = %bb.ir, %bb.is
  %.0.i650 = phi ptr [ %i.bbo, %bb.ir ], [ %1, %bb.is ] ; 3 uses
  %i.bbr = getelementptr inbounds nuw i8, ptr %i.bbh, i64 112
  %i.bbs = load ptr, ptr %i.bbr, align 8, !tbaa !564 ; 2 uses
  %i.bbt = getelementptr inbounds nuw i8, ptr %i.bbs, i64 8
  %i.bbu = load i32, ptr %i.bbt, align 8
  %i.bbv = and i32 %i.bbu, 4
  %.not.i.i652 = icmp eq i32 %i.bbv, 0
  br i1 %.not.i.i652, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit660, label %_ZNK4llvm4bolt16BinaryBasicBlock7getNameEv.exit657

_ZNK4llvm4bolt16BinaryBasicBlock7getNameEv.exit657: ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit651
  %i.bbw = getelementptr inbounds i8, ptr %i.bbs, i64 -8
  %i.bbx = load ptr, ptr %i.bbw, align 8, !tbaa !429 ; 2 uses
  %i.bby = getelementptr inbounds nuw i8, ptr %i.bbx, i64 24 ; 2 uses
  %i.bbz = load i64, ptr %i.bbx, align 8, !tbaa !431 ; 5 uses
  %i.bca = getelementptr inbounds nuw i8, ptr %.0.i650, i64 24
  %i.bcb = load ptr, ptr %i.bca, align 8, !tbaa !538
  %i.bcc = getelementptr inbounds nuw i8, ptr %.0.i650, i64 32 ; 3 uses
  %i.bcd = load ptr, ptr %i.bcc, align 8, !tbaa !542 ; 2 uses
  %i.bce = ptrtoint ptr %i.bcb to i64
  %i.bcf = ptrtoint ptr %i.bcd to i64
  %i.bcg = sub i64 %i.bce, %i.bcf
  %i.bch = icmp ugt i64 %i.bbz, %i.bcg
  br i1 %i.bch, label %bb.it, label %bb.iu

bb.it:                                            ; preds = %_ZNK4llvm4bolt16BinaryBasicBlock7getNameEv.exit657
  %i.bci = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i650, ptr noundef nonnull %i.bby, i64 noundef %i.bbz) #30 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit660

bb.iu:                                            ; preds = %_ZNK4llvm4bolt16BinaryBasicBlock7getNameEv.exit657
  %.not.i658 = icmp eq i64 %i.bbz, 0
  br i1 %.not.i658, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit660, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bcd, ptr nonnull align 8 %i.bby, i64 %i.bbz, i1 false)
  %i.bcj = load ptr, ptr %i.bcc, align 8, !tbaa !542
  %i.bck = getelementptr inbounds nuw i8, ptr %i.bcj, i64 %i.bbz
  store ptr %i.bck, ptr %i.bcc, align 8, !tbaa !542
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit660

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit660:   ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit651, %bb.it, %bb.iu, %bb.iv
  %i.bcl = getelementptr inbounds nuw i8, ptr %.02441218, i64 8 ; 2 uses
  %.not268 = icmp eq ptr %i.bcl, %i.bak
  br i1 %.not268, label %._crit_edge1219.loopexit, label %_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit648, !llvm.loop !795

_ZN4llvm11raw_ostreamlsEc.exit640:                ; preds = %bb.iq, %bb.ip, %_ZN4llvm11raw_ostreamlsEc.exit607
  %i.bcm = load ptr, ptr %i.a, align 8, !tbaa !556 ; 4 uses
  %i.bcn = getelementptr inbounds nuw i8, ptr %i.bcm, i64 144
  %i.bco = load i32, ptr %i.bcn, align 8, !tbaa !775
  %i.bcp = icmp ne i64 %.31230, 0
  %i.bcq = zext i1 %i.bcp to i64                  ; 2 uses
  %i.bcr = sub i64 %.31230, %i.bcq
  %i.bcs = zext i32 %i.bco to i64                 ; 2 uses
  %i.bct = udiv i64 %i.bcr, %i.bcs
  %i.bcu = add i64 %i.bct, %i.bcq
  %i.bcv = mul i64 %i.bcu, %i.bcs                 ; 2 uses
  %i.bcw = load ptr, ptr %i.b, align 8, !tbaa !24, !nonnull !19, !align !152 ; 4 uses
  %i.bcx = load ptr, ptr %i.bcm, align 8, !tbaa !578 ; 2 uses
  %i.bcy = getelementptr inbounds nuw i8, ptr %i.bcm, i64 8
  %i.bcz = load ptr, ptr %i.bcy, align 8, !tbaa !578 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr @.str.43, ptr %8, align 8
  store i64 1, ptr %.sroa.2871.0..sroa_idx, align 8
  %.not14.i = icmp eq ptr %i.bcx, %i.bcz
  br i1 %.not14.i, label %_ZNK4llvm4bolt13BinaryContext17printInstructionsIN9__gnu_cxx17__normal_iteratorIPKNS_6MCInstESt6vectorIS5_SaIS5_EEEEEEmRNS_11raw_ostreamET_SE_mPKNS0_14BinaryFunctionEbbbNS_9StringRefE.exit, label %.lr.ph.i.lr.ph.i

.lr.ph.i.lr.ph.i:                                 ; preds = %_ZN4llvm11raw_ostreamlsEc.exit640
  %i.bda = getelementptr inbounds nuw i8, ptr %i.bcw, i64 1568 ; 4 uses
  %i.bdb = getelementptr inbounds nuw i8, ptr %i.bcw, i64 1512
  %i.bdc = getelementptr inbounds nuw i8, ptr %i.bcw, i64 1544
  br label %.lr.ph.i.i662

.lr.ph.i.i662:                                    ; preds = %_ZNK4llvm4bolt13BinaryContext15computeCodeSizeIN9__gnu_cxx17__normal_iteratorIPKNS_6MCInstESt6vectorIS5_SaIS5_EEEEEEmT_SC_PKNS_13MCCodeEmitterE.exit.i, %.lr.ph.i.lr.ph.i
  %.016.i = phi i64 [ %i.bcv, %.lr.ph.i.lr.ph.i ], [ %i.bei, %_ZNK4llvm4bolt13BinaryContext15computeCodeSizeIN9__gnu_cxx17__normal_iteratorIPKNS_6MCInstESt6vectorIS5_SaIS5_EEEEEEmT_SC_PKNS_13MCCodeEmitterE.exit.i ] ; 2 uses
  %.sroa.010.015.i = phi ptr [ %i.bcx, %.lr.ph.i.lr.ph.i ], [ %34, %_ZNK4llvm4bolt13BinaryContext15computeCodeSizeIN9__gnu_cxx17__normal_iteratorIPKNS_6MCInstESt6vectorIS5_SaIS5_EEEEEEmT_SC_PKNS_13MCCodeEmitterE.exit.i ] ; 7 uses
  call void @_ZNK4llvm4bolt13BinaryContext16printInstructionERNS_11raw_ostreamERKNS_6MCInstEmPKNS0_14BinaryFunctionEbbbNS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(2268) %i.bcw, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.010.015.i, i64 noundef %.016.i, ptr noundef nonnull %0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %8) #30
  %i.bdd = load ptr, ptr %i.bda, align 8, !tbaa !579 ; 2 uses
  %i.bde = load ptr, ptr %i.bdd, align 8, !tbaa !8
  %i.bdf = getelementptr inbounds nuw i8, ptr %i.bde, i64 104
  %i.bdg = load ptr, ptr %i.bdf, align 8
  %i.bdh = call noundef zeroext i1 %i.bdg(ptr noundef nonnull align 8 dereferenceable(536) %i.bdd, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.010.015.i) #30, !inline_history !796
  br i1 %i.bdh, label %_ZNK4llvm4bolt13BinaryContext15computeCodeSizeIN9__gnu_cxx17__normal_iteratorIPKNS_6MCInstESt6vectorIS5_SaIS5_EEEEEEmT_SC_PKNS_13MCCodeEmitterE.exit.i, label %bb.iw

bb.iw:                                            ; preds = %.lr.ph.i.i662
  %i.bdi = load ptr, ptr %i.bda, align 8, !tbaa !579
  %i.bdj = call i64 @_ZNK4llvm4bolt13MCPlusBuilder7getSizeERKNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(536) %i.bdi, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.010.015.i) #30 ; 2 uses
  %i.bdk = and i64 %i.bdj, 4294967296
  %.not22.i.i = icmp eq i64 %i.bdk, 0
  br i1 %.not22.i.i, label %bb.iy, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  %i.bdl = and i64 %i.bdj, 4294967295
  br label %_ZNK4llvm4bolt13BinaryContext15computeCodeSizeIN9__gnu_cxx17__normal_iteratorIPKNS_6MCInstESt6vectorIS5_SaIS5_EEEEEEmT_SC_PKNS_13MCCodeEmitterE.exit.i

bb.iy:                                            ; preds = %bb.iw
  %i.bdm = load ptr, ptr %i.bda, align 8, !tbaa !579 ; 2 uses
  %i.bdn = load ptr, ptr %i.bdm, align 8, !tbaa !8
  %i.bdo = getelementptr inbounds nuw i8, ptr %i.bdn, i64 104
  %i.bdp = load ptr, ptr %i.bdo, align 8
  %i.bdq = call noundef zeroext i1 %i.bdp(ptr noundef nonnull align 8 dereferenceable(536) %i.bdm, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.010.015.i) #30, !inline_history !797
  br i1 %i.bdq, label %_ZNK4llvm4bolt13BinaryContext15computeCodeSizeIN9__gnu_cxx17__normal_iteratorIPKNS_6MCInstESt6vectorIS5_SaIS5_EEEEEEmT_SC_PKNS_13MCCodeEmitterE.exit.i, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  %i.bdr = load ptr, ptr %i.bda, align 8, !tbaa !579 ; 2 uses
  %i.bds = load ptr, ptr %i.bdr, align 8, !tbaa !8
  %i.bdt = getelementptr inbounds nuw i8, ptr %i.bds, i64 856
  %i.bdu = load ptr, ptr %i.bdt, align 8
  %i.bdv = call i64 %i.bdu(ptr noundef nonnull align 8 dereferenceable(536) %i.bdr, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.010.015.i) #30, !inline_history !797 ; 2 uses
  %i.bdw = and i64 %i.bdv, 4294967296
  %.not23.i.i = icmp eq i64 %i.bdw, 0
  br i1 %.not23.i.i, label %bb.jb, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  %i.bdx = and i64 %i.bdv, 4294967295
  br label %_ZNK4llvm4bolt13BinaryContext15computeCodeSizeIN9__gnu_cxx17__normal_iteratorIPKNS_6MCInstESt6vectorIS5_SaIS5_EEEEEEmT_SC_PKNS_13MCCodeEmitterE.exit.i

bb.jb:                                            ; preds = %bb.iz
  %i.bdy = load ptr, ptr %i.bdb, align 8, !tbaa !599 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  store ptr %i.alg, ptr %6, align 8, !tbaa !600
  store i64 0, ptr %i.alh, align 8, !tbaa !602
  store i64 256, ptr %i.ali, align 8, !tbaa !603
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  store ptr %i.alj, ptr %7, align 8, !tbaa !21
  store i32 0, ptr %i.alk, align 8, !tbaa !427
  store i32 4, ptr %i.all, align 4, !tbaa !589
  %i.bdz = load ptr, ptr %i.bdc, align 8, !tbaa !604
  %i.bea = load ptr, ptr %i.bdy, align 8, !tbaa !8
  %i.beb = getelementptr inbounds nuw i8, ptr %i.bea, i64 24
  %i.bec = load ptr, ptr %i.beb, align 8
  call void %i.bec(ptr noundef nonnull align 8 dereferenceable(8) %i.bdy, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.010.015.i, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(320) %i.bdz) #30, !inline_history !797
  %i.bed = load i64, ptr %i.alh, align 8, !tbaa !602
  %i.bee = load ptr, ptr %7, align 8, !tbaa !21   ; 2 uses
  %i.bef = icmp eq ptr %i.bee, %i.alj
  br i1 %i.bef, label %_ZN4llvm11SmallVectorINS_7MCFixupELj4EED2Ev.exit.i.i, label %bb.jc

bb.jc:                                            ; preds = %bb.jb
  call void @free(ptr noundef %i.bee) #30
  br label %_ZN4llvm11SmallVectorINS_7MCFixupELj4EED2Ev.exit.i.i

_ZN4llvm11SmallVectorINS_7MCFixupELj4EED2Ev.exit.i.i: ; preds = %bb.jc, %bb.jb
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %i.beg = load ptr, ptr %6, align 8, !tbaa !600  ; 2 uses
  %i.beh = icmp eq ptr %i.beg, %i.alg
  br i1 %i.beh, label %_ZN4llvm11SmallVectorIcLj256EED2Ev.exit.i.i, label %bb.jd

bb.jd:                                            ; preds = %_ZN4llvm11SmallVectorINS_7MCFixupELj4EED2Ev.exit.i.i
  call void @free(ptr noundef %i.beg) #30
  br label %_ZN4llvm11SmallVectorIcLj256EED2Ev.exit.i.i

_ZN4llvm11SmallVectorIcLj256EED2Ev.exit.i.i:      ; preds = %bb.jd, %_ZN4llvm11SmallVectorINS_7MCFixupELj4EED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %_ZNK4llvm4bolt13BinaryContext15computeCodeSizeIN9__gnu_cxx17__normal_iteratorIPKNS_6MCInstESt6vectorIS5_SaIS5_EEEEEEmT_SC_PKNS_13MCCodeEmitterE.exit.i

_ZNK4llvm4bolt13BinaryContext15computeCodeSizeIN9__gnu_cxx17__normal_iteratorIPKNS_6MCInstESt6vectorIS5_SaIS5_EEEEEEmT_SC_PKNS_13MCCodeEmitterE.exit.i: ; preds = %_ZN4llvm11SmallVectorIcLj256EED2Ev.exit.i.i, %bb.ja, %bb.iy, %bb.ix, %.lr.ph.i.i662
  %.1.i.i = phi i64 [ 0, %.lr.ph.i.i662 ], [ %i.bdl, %bb.ix ], [ %i.bed, %_ZN4llvm11SmallVectorIcLj256EED2Ev.exit.i.i ], [ %i.bdx, %bb.ja ], [ 0, %bb.iy ]
  %34 = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i, i64 128 ; 2 uses
  %i.bei = add i64 %.1.i.i, %.016.i               ; 2 uses
  %.not.i663 = icmp eq ptr %34, %i.bcz
  br i1 %.not.i663, label %_ZNK4llvm4bolt13BinaryContext17printInstructionsIN9__gnu_cxx17__normal_iteratorIPKNS_6MCInstESt6vectorIS5_SaIS5_EEEEEEmRNS_11raw_ostreamET_SE_mPKNS0_14BinaryFunctionEbbbNS_9StringRefE.exit.loopexit, label %.lr.ph.i.i662, !llvm.loop !798

_ZNK4llvm4bolt13BinaryContext17printInstructionsIN9__gnu_cxx17__normal_iteratorIPKNS_6MCInstESt6vectorIS5_SaIS5_EEEEEEmRNS_11raw_ostreamET_SE_mPKNS0_14BinaryFunctionEbbbNS_9StringRefE.exit.loopexit: ; preds = %_ZNK4llvm4bolt13BinaryContext15computeCodeSizeIN9__gnu_cxx17__normal_iteratorIPKNS_6MCInstESt6vectorIS5_SaIS5_EEEEEEmT_SC_PKNS_13MCCodeEmitterE.exit.i
  %.pre1322 = load ptr, ptr %i.a, align 8, !tbaa !556
  br label %_ZNK4llvm4bolt13BinaryContext17printInstructionsIN9__gnu_cxx17__normal_iteratorIPKNS_6MCInstESt6vectorIS5_SaIS5_EEEEEEmRNS_11raw_ostreamET_SE_mPKNS0_14BinaryFunctionEbbbNS_9StringRefE.exit

_ZNK4llvm4bolt13BinaryContext17printInstructionsIN9__gnu_cxx17__normal_iteratorIPKNS_6MCInstESt6vectorIS5_SaIS5_EEEEEEmRNS_11raw_ostreamET_SE_mPKNS0_14BinaryFunctionEbbbNS_9StringRefE.exit: ; preds = %_ZNK4llvm4bolt13BinaryContext17printInstructionsIN9__gnu_cxx17__normal_iteratorIPKNS_6MCInstESt6vectorIS5_SaIS5_EEEEEEmRNS_11raw_ostreamET_SE_mPKNS0_14BinaryFunctionEbbbNS_9StringRefE.exit.loopexit, %_ZN4llvm11raw_ostreamlsEc.exit640
  %i.bej = phi ptr [ %i.bcm, %_ZN4llvm11raw_ostreamlsEc.exit640 ], [ %.pre1322, %_ZNK4llvm4bolt13BinaryContext17printInstructionsIN9__gnu_cxx17__normal_iteratorIPKNS_6MCInstESt6vectorIS5_SaIS5_EEEEEEmRNS_11raw_ostreamET_SE_mPKNS0_14BinaryFunctionEbbbNS_9StringRefE.exit.loopexit ] ; 2 uses
  %.0.lcssa.i = phi i64 [ %i.bcv, %_ZN4llvm11raw_ostreamlsEc.exit640 ], [ %i.bei, %_ZNK4llvm4bolt13BinaryContext17printInstructionsIN9__gnu_cxx17__normal_iteratorIPKNS_6MCInstESt6vectorIS5_SaIS5_EEEEEEmRNS_11raw_ostreamET_SE_mPKNS0_14BinaryFunctionEbbbNS_9StringRefE.exit.loopexit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.bek = getelementptr inbounds nuw i8, ptr %i.bej, i64 48
  %i.bel = load i32, ptr %i.bek, align 8, !tbaa !427
  %.not.i.i664 = icmp eq i32 %i.bel, 0
  br i1 %.not.i.i664, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.je

bb.je:                                            ; preds = %_ZNK4llvm4bolt13BinaryContext17printInstructionsIN9__gnu_cxx17__normal_iteratorIPKNS_6MCInstESt6vectorIS5_SaIS5_EEEEEEmRNS_11raw_ostreamET_SE_mPKNS0_14BinaryFunctionEbbbNS_9StringRefE.exit
  %i.bem = load ptr, ptr %i.an, align 8, !tbaa !538
  %i.ben = load ptr, ptr %i.ap, align 8, !tbaa !542 ; 2 uses
  %i.beo = ptrtoint ptr %i.bem to i64
  %i.bep = ptrtoint ptr %i.ben to i64
  %i.beq = sub i64 %i.beo, %i.bep
  %i.ber = icmp ult i64 %i.beq, 14
  br i1 %i.ber, label %bb.jf, label %bb.jg

bb.jf:                                            ; preds = %bb.je
  %i.bes = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.98, i64 noundef 14) #30 ; 0 uses
  %.pre1323 = load ptr, ptr %i.a, align 8, !tbaa !556
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit667

bb.jg:                                            ; preds = %bb.je
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.ben, ptr noundef nonnull align 1 dereferenceable(14) @.str.98, i64 14, i1 false)
  %i.bet = load ptr, ptr %i.ap, align 8, !tbaa !542
  %i.beu = getelementptr inbounds nuw i8, ptr %i.bet, i64 14
  store ptr %i.beu, ptr %i.ap, align 8, !tbaa !542
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit667

_ZN4llvm11raw_ostreamlsEPKc.exit667:              ; preds = %bb.jf, %bb.jg
  %i.bev = phi ptr [ %.pre1323, %bb.jf ], [ %i.bej, %bb.jg ]
  %i.bew = getelementptr inbounds nuw i8, ptr %i.bev, i64 48
  %i.bex = load i32, ptr %i.bew, align 8, !tbaa !427 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.bex, 0
  br i1 %.not.i.i.i.i, label %._crit_edge1222, label %bb.jh

bb.jh:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit667
  %i.bey = zext i32 %i.bex to i64                 ; 3 uses
  %i.bez = shl nuw nsw i64 %i.bey, 3
  %i.bfa = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bez) #33 ; 20 uses
  %i.bfb = getelementptr inbounds nuw [8 x i8], ptr %i.bfa, i64 %i.bey
  store i64 0, ptr %i.bfa, align 8, !tbaa !408
  %i.bfc = getelementptr i8, ptr %i.bfa, i64 8    ; 3 uses
  %i.bfd = add nsw i64 %i.bey, -1                 ; 2 uses
  %i.bfe = icmp eq i64 %i.bfd, 0
  br i1 %i.bfe, label %.lr.ph.preheader.i, label %_ZNSt6vectorImSaImEEC2EmRKS0_.exit

_ZNSt6vectorImSaImEEC2EmRKS0_.exit:               ; preds = %bb.jh
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.bfd, 3 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.bfc, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !408
  %i.bff = getelementptr inbounds nuw i8, ptr %i.bfc, i64 %.idx.i.i.i.i.i.i.i
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZNSt6vectorImSaImEEC2EmRKS0_.exit, %bb.jh
  %.0.i.i.i.i.i1115 = phi ptr [ %i.bff, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit ], [ %i.bfc, %bb.jh ] ; 9 uses
  %i.bfg = ptrtoaddr ptr %.0.i.i.i.i.i1115 to i64
  %i.bfh = ptrtoaddr ptr %i.bfa to i64
  %i.bfi = add i64 %i.bfg, -8
  %i.bfj = sub i64 %i.bfi, %i.bfh                 ; 2 uses
  %i.bfk = lshr i64 %i.bfj, 3
  %i.bfl = add nuw nsw i64 %i.bfk, 1              ; 2 uses
  %min.iters.check = icmp ult i64 %i.bfj, 24
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.bfl, 4611686018427387900    ; 4 uses
  %i.bfm = shl i64 %n.vec, 3
  %i.bfn = getelementptr i8, ptr %i.bfa, i64 %i.bfm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.bfo = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.bfa, i64 %i.bfo ; 2 uses
  %i.bfp = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %vec.ind, ptr %next.gep, align 8, !tbaa !408
  store <2 x i64> %step.add, ptr %i.bfp, align 8, !tbaa !408
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.bfq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bfq, label %middle.block, label %vector.body, !llvm.loop !799

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bfl, %n.vec
  br i1 %cmp.n, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEiEvT_S7_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  %.sroa.02.06.i.ph = phi ptr [ %i.bfa, %.lr.ph.preheader.i ], [ %i.bfn, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.02.06.i = phi ptr [ %i.bfr, %.lr.ph.i ], [ %.sroa.02.06.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  store i64 %indvars.iv.i, ptr %.sroa.02.06.i, align 8, !tbaa !408
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.bfr = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 8 ; 2 uses
  %.not.i668 = icmp eq ptr %i.bfr, %.0.i.i.i.i.i1115
  br i1 %.not.i668, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEiEvT_S7_T0_.exit, label %.lr.ph.i, !llvm.loop !802

_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEiEvT_S7_T0_.exit: ; preds = %.lr.ph.i, %middle.block
  %.pre1324 = load ptr, ptr %i.a, align 8, !tbaa !556 ; 2 uses
  %.phi.trans.insert1325 = getelementptr inbounds nuw i8, ptr %.pre1324, i64 48
  %.pre1326 = load i32, ptr %.phi.trans.insert1325, align 8, !tbaa !427
  %i.bfs = icmp ugt i32 %.pre1326, 2
  %i.bft = ptrtoint ptr %i.bfb to i64             ; 3 uses
  br i1 %i.bfs, label %bb.ji, label %"_ZN4llvm11stable_sortIRSt6vectorImSaImEEZNS_4bolt14BinaryFunction5printERNS_11raw_ostreamENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_1EEvOT_T0_.exit"

bb.ji:                                            ; preds = %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEiEvT_S7_T0_.exit
  %i.bfu = getelementptr inbounds nuw i8, ptr %.pre1324, i64 152
  %i.bfv = load i64, ptr %i.bfu, align 8, !tbaa !788
  %i.bfw = add i64 %i.bfv, 1
  %.not269 = icmp ult i64 %i.bfw, 2
  br i1 %.not269, label %"_ZN4llvm11stable_sortIRSt6vectorImSaImEEZNS_4bolt14BinaryFunction5printERNS_11raw_ostreamENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_1EEvOT_T0_.exit", label %bb.jj

bb.jj:                                            ; preds = %bb.ji
  %i.bfx = ptrtoint ptr %.0.i.i.i.i.i1115 to i64  ; 2 uses
  %i.bfy = ptrtoint ptr %i.bfa to i64
  %i.bfz = sub i64 %i.bfx, %i.bfy
  %i.bga = ashr exact i64 %i.bfz, 3               ; 2 uses
  %i.bgb = add nsw i64 %i.bga, 1
  %i.bgc = sdiv i64 %i.bgb, 2                     ; 4 uses
  %i.bgd = icmp sgt i64 %i.bga, 0
  br i1 %i.bgd, label %.lr.ph.i.i.i.i.i670, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmEC2ES6_l.exit.i.i.i

.lr.ph.i.i.i.i.i670:                              ; preds = %bb.jj, %select.unfold.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.bgi, %select.unfold.i.i.i.i.i ], [ %i.bgc, %bb.jj ] ; 4 uses
  %i.bge = shl nuw nsw i64 %.010.i.i.i.i.i, 3
  %i.bgf = call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.bge, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #36 ; 2 uses
  %.not.i.i.i.i.i671 = icmp eq ptr %i.bgf, null
  br i1 %.not.i.i.i.i.i671, label %select.unfold.i.i.i.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmEC2ES6_l.exit.i.i.i

select.unfold.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i670
  %i.bgg = icmp eq i64 %.010.i.i.i.i.i, 1
  %i.bgh = add nuw nsw i64 %.010.i.i.i.i.i, 1
  %i.bgi = lshr i64 %i.bgh, 1
  br i1 %i.bgg, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmEC2ES6_l.exit.i.i.i, label %.lr.ph.i.i.i.i.i670, !llvm.loop !803

_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmEC2ES6_l.exit.i.i.i: ; preds = %select.unfold.i.i.i.i.i, %.lr.ph.i.i.i.i.i670, %bb.jj
  %.sroa.4.0.i.i.i = phi i64 [ 0, %bb.jj ], [ 0, %select.unfold.i.i.i.i.i ], [ %.010.i.i.i.i.i, %.lr.ph.i.i.i.i.i670 ] ; 3 uses
  %.sroa.10.0.i.i.i = phi ptr [ null, %bb.jj ], [ null, %select.unfold.i.i.i.i.i ], [ %i.bgf, %.lr.ph.i.i.i.i.i670 ] ; 6 uses
  %i.bgj = icmp eq i64 %i.bgc, %.sroa.4.0.i.i.i
  br i1 %i.bgj, label %bb.jk, label %bb.jl, !prof !575

bb.jk:                                            ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmEC2ES6_l.exit.i.i.i
  %i.bgk = getelementptr inbounds [8 x i8], ptr %i.bfa, i64 %i.bgc ; 4 uses
  call fastcc void @"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN4llvm4bolt14BinaryFunction5printERNS9_11raw_ostreamENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_1EEEvT_SM_T0_T1_"(ptr nonnull %i.bfa, ptr nonnull %i.bgk, ptr noundef %.sroa.10.0.i.i.i, ptr nonnull %i.a)
  call fastcc void @"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN4llvm4bolt14BinaryFunction5printERNS9_11raw_ostreamENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_1EEEvT_SM_T0_T1_"(ptr nonnull %i.bgk, ptr %.0.i.i.i.i.i1115, ptr noundef %.sroa.10.0.i.i.i, ptr nonnull %i.a)
  %i.bgl = ptrtoint ptr %i.bgk to i64
  %i.bgm = sub i64 %i.bfx, %i.bgl
  %i.bgn = ashr exact i64 %i.bgm, 3
  call fastcc void @"_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElS2_NS0_5__ops15_Iter_comp_iterIZN4llvm4bolt14BinaryFunction5printERNS9_11raw_ostreamENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_1EEEvT_SM_SM_T0_SN_T1_T2_"(ptr nonnull %i.bfa, ptr nonnull %i.bgk, ptr %.0.i.i.i.i.i1115, i64 noundef %i.bgc, i64 noundef %i.bgn, ptr noundef %.sroa.10.0.i.i.i, i64 %i.alm)
  br label %bb.jo

bb.jl:                                            ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmEC2ES6_l.exit.i.i.i
  %i.bgo = icmp eq ptr %.sroa.10.0.i.i.i, null
  br i1 %i.bgo, label %bb.jm, label %bb.jn, !prof !582

bb.jm:                                            ; preds = %bb.jl
  call fastcc void @"_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN4llvm4bolt14BinaryFunction5printERNS9_11raw_ostreamENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_1EEEvT_SM_T0_"(ptr nonnull %i.bfa, ptr %.0.i.i.i.i.i1115, ptr nonnull %i.a)
  br label %bb.jo

bb.jn:                                            ; preds = %bb.jl
  call fastcc void @"_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_lNS0_5__ops15_Iter_comp_iterIZN4llvm4bolt14BinaryFunction5printERNS9_11raw_ostreamENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_1EEEvT_SM_T0_T1_T2_"(ptr nonnull %i.bfa, ptr %.0.i.i.i.i.i1115, ptr noundef nonnull %.sroa.10.0.i.i.i, i64 noundef %.sroa.4.0.i.i.i, ptr nonnull %i.a)
  br label %bb.jo

bb.jo:                                            ; preds = %bb.jn, %bb.jm, %bb.jk
  %i.bgp = shl i64 %.sroa.4.0.i.i.i, 3
  call void @_ZdlPvm(ptr noundef %.sroa.10.0.i.i.i, i64 noundef %i.bgp) #30
  br label %"_ZN4llvm11stable_sortIRSt6vectorImSaImEEZNS_4bolt14BinaryFunction5printERNS_11raw_ostreamENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_1EEvOT_T0_.exit"

"_ZN4llvm11stable_sortIRSt6vectorImSaImEEZNS_4bolt14BinaryFunction5printERNS_11raw_ostreamENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_1EEvOT_T0_.exit": ; preds = %bb.ji, %bb.jo, %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEiEvT_S7_T0_.exit
  %i.bgq = ptrtoint ptr %.0.i.i.i.i.i1115 to i64
  %i.bgr = ptrtoint ptr %i.bfa to i64             ; 4 uses
  %i.bgs = sub i64 %i.bgq, %i.bgr
  %i.bgt = ashr exact i64 %i.bgs, 3               ; 2 uses
  %.not1265 = icmp eq ptr %.0.i.i.i.i.i1115, %i.bfa
  br i1 %.not1265, label %._crit_edge1222, label %_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit687.peel

_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit687.peel: ; preds = %"_ZN4llvm11stable_sortIRSt6vectorImSaImEEZNS_4bolt14BinaryFunction5printERNS_11raw_ostreamENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_1EEvOT_T0_.exit"
  %i.bgu = load ptr, ptr %i.a, align 8, !tbaa !556 ; 2 uses
  %i.bgv = getelementptr inbounds nuw i8, ptr %i.bgu, i64 40
  %i.bgw = load i64, ptr %i.bfa, align 8, !tbaa !408 ; 2 uses
  %i.bgx = load ptr, ptr %i.bgv, align 8, !tbaa !21
  %i.bgy = getelementptr inbounds nuw [8 x i8], ptr %i.bgx, i64 %i.bgw
  %i.bgz = load ptr, ptr %i.bgy, align 8, !tbaa !556
  %i.bha = getelementptr inbounds nuw i8, ptr %i.bgu, i64 56
  %i.bhb = load ptr, ptr %i.bha, align 8, !tbaa !21
  %i.bhc = getelementptr inbounds nuw [16 x i8], ptr %i.bhb, i64 %i.bgw ; 4 uses
end_hunk_0
begin_hunk_1_@_ZNK4llvm4bolt14BinaryFunction9dumpGraphERNS_11raw_ostreamE:bb.a
  %i.vi = load ptr, ptr %i.g, align 8, !tbaa !538
  %i.vj = load ptr, ptr %i.i, align 8, !tbaa !542 ; 2 uses
  %i.vk = ptrtoint ptr %i.vi to i64
  %i.vl = ptrtoint ptr %i.vj to i64
  %i.vm = sub i64 %i.vk, %i.vl
  %i.vn = icmp ult i64 %i.vm, 6
  br i1 %i.vn, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.vo = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.213, i64 noundef 6) #30
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit238

bb.db:                                            ; preds = %bb.cz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.vj, ptr noundef nonnull align 1 dereferenceable(6) @.str.213, i64 6, i1 false)
  %i.vp = load ptr, ptr %i.i, align 8, !tbaa !542
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 6
  store ptr %i.vq, ptr %i.i, align 8, !tbaa !542
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit238

_ZN4llvm11raw_ostreamlsEPKc.exit238:              ; preds = %bb.da, %bb.db
  %.0.i.i237 = phi ptr [ %i.vo, %bb.da ], [ %1, %bb.db ]
  %i.vr = load i64, ptr %.074379, align 8, !tbaa !806
  %i.vs = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i237, i64 noundef %i.vr) #30 ; 3 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 24
  %i.vu = load ptr, ptr %i.vt, align 8, !tbaa !538
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vs, i64 32 ; 3 uses
  %i.vw = load ptr, ptr %i.vv, align 8, !tbaa !542 ; 2 uses
  %i.vx = icmp eq ptr %i.vu, %i.vw
  br i1 %i.vx, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit238
  %i.vy = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.vs, ptr noundef nonnull @.str.101, i64 noundef 1) #30 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit235

bb.dd:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit238
  store i8 41, ptr %i.vw, align 1
  %i.vz = load ptr, ptr %i.vv, align 8, !tbaa !542
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 1
  store ptr %i.wa, ptr %i.vv, align 8, !tbaa !542
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit235

_ZN4llvm11raw_ostreamlsEPKc.exit235:              ; preds = %bb.dd, %bb.dc, %bb.cw, %bb.cv, %bb.cx, %bb.cy
  %i.wb = load ptr, ptr %i.g, align 8, !tbaa !538
  %i.wc = load ptr, ptr %i.i, align 8, !tbaa !542 ; 2 uses
  %i.wd = ptrtoint ptr %i.wb to i64
  %i.we = ptrtoint ptr %i.wc to i64
  %i.wf = sub i64 %i.wd, %i.we
  %i.wg = icmp ult i64 %i.wf, 3
  br i1 %i.wg, label %bb.de, label %bb.df

bb.de:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit235
  %i.wh = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.206, i64 noundef 3) #30 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit244

bb.df:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit235
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.wc, ptr noundef nonnull align 1 dereferenceable(3) @.str.206, i64 3, i1 false)
  %i.wi = load ptr, ptr %i.i, align 8, !tbaa !542
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 3
  store ptr %i.wj, ptr %i.i, align 8, !tbaa !542
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit244

_ZN4llvm11raw_ostreamlsEPKc.exit244:              ; preds = %bb.de, %bb.df
  %i.wk = getelementptr inbounds nuw i8, ptr %.074379, i64 16
  %i.wl = load ptr, ptr %17, align 8, !tbaa !399  ; 2 uses
  %i.wm = icmp eq ptr %i.wl, %i.co
  br i1 %i.wm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit244
  %i.wn = load i64, ptr %i.co, align 8, !tbaa !414
  %i.wo = add i64 %i.wn, 1
  call void @_ZdlPvm(ptr noundef %i.wl, i64 noundef %i.wo) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit244, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  %i.wp = getelementptr inbounds nuw i8, ptr %.073380, i64 8 ; 2 uses
  %.not80 = icmp eq ptr %i.wp, %i.pj
  br i1 %.not80, label %._crit_edge382, label %.lr.ph

._crit_edge387:                                   ; preds = %_ZNK4llvm4bolt16BinaryBasicBlock7getNameEv.exit259, %._crit_edge382
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  %i.wq = load ptr, ptr %7, align 8, !tbaa !1958  ; 3 uses
  %i.wr = load ptr, ptr %i.bl, align 8, !tbaa !1901 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.wq, %i.wr
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge387, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.wx, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.wq, %._crit_edge387 ] ; 3 uses
  %i.ws = load ptr, ptr %.05.i.i.i, align 8, !tbaa !399 ; 2 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.wu = icmp eq ptr %i.ws, %i.wt
  br i1 %i.wu, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.wv = load i64, ptr %i.wt, align 8, !tbaa !414
  %i.ww = add i64 %i.wv, 1
  call void @_ZdlPvm(ptr noundef %i.ws, i64 noundef %i.ww) #31
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.wx = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.wx, %i.wr
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1959

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %7, align 8, !tbaa !1958
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i, %._crit_edge387
  %i.wy = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i ], [ %i.wq, %._crit_edge387 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.wy, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.dg

bb.dg:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i
  %i.wz = load ptr, ptr %i.bm, align 8, !tbaa !1903
  %i.xa = ptrtoint ptr %i.wz to i64
  %i.xb = ptrtoint ptr %i.wy to i64
  %i.xc = sub i64 %i.xa, %i.xb
  call void @_ZdlPvm(ptr noundef nonnull %i.wy, i64 noundef %i.xc) #31
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i, %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %i.xd = getelementptr inbounds nuw i8, ptr %.075389, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.xd, %i.bb
  br i1 %.not, label %._crit_edge392, label %bb.j

.lr.ph386:                                        ; preds = %._crit_edge382, %_ZNK4llvm4bolt16BinaryBasicBlock7getNameEv.exit259
  %.064384 = phi ptr [ %i.xv, %_ZNK4llvm4bolt16BinaryBasicBlock7getNameEv.exit259 ], [ %i.pn, %._crit_edge382 ] ; 2 uses
  %i.xe = load ptr, ptr %.064384, align 8, !tbaa !556
  %i.xf = load ptr, ptr %i.ix, align 8, !tbaa !564 ; 2 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 8
  %i.xh = load i32, ptr %i.xg, align 8
  %i.xi = and i32 %i.xh, 4
  %.not.i.i248 = icmp eq i32 %i.xi, 0
  br i1 %.not.i.i248, label %_ZNK4llvm4bolt16BinaryBasicBlock7getNameEv.exit253, label %bb.dh

bb.dh:                                            ; preds = %.lr.ph386
  %i.xj = getelementptr inbounds i8, ptr %i.xf, i64 -8
  %i.xk = load ptr, ptr %i.xj, align 8, !tbaa !429
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xk, i64 24
  br label %_ZNK4llvm4bolt16BinaryBasicBlock7getNameEv.exit253

_ZNK4llvm4bolt16BinaryBasicBlock7getNameEv.exit253: ; preds = %.lr.ph386, %bb.dh
  %.sroa.0.0.i.i249 = phi ptr [ %i.xl, %bb.dh ], [ null, %.lr.ph386 ]
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xe, i64 112
  %i.xn = load ptr, ptr %i.xm, align 8, !tbaa !564 ; 2 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 8
  %i.xp = load i32, ptr %i.xo, align 8
  %i.xq = and i32 %i.xp, 4
  %.not.i.i254 = icmp eq i32 %i.xq, 0
  br i1 %.not.i.i254, label %_ZNK4llvm4bolt16BinaryBasicBlock7getNameEv.exit259, label %bb.di

bb.di:                                            ; preds = %_ZNK4llvm4bolt16BinaryBasicBlock7getNameEv.exit253
  %i.xr = getelementptr inbounds i8, ptr %i.xn, i64 -8
  %i.xs = load ptr, ptr %i.xr, align 8, !tbaa !429
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xs, i64 24
  br label %_ZNK4llvm4bolt16BinaryBasicBlock7getNameEv.exit259

_ZNK4llvm4bolt16BinaryBasicBlock7getNameEv.exit259: ; preds = %_ZNK4llvm4bolt16BinaryBasicBlock7getNameEv.exit253, %bb.di
  %.sroa.0.0.i.i255 = phi ptr [ %i.xt, %bb.di ], [ null, %_ZNK4llvm4bolt16BinaryBasicBlock7getNameEv.exit253 ]
  store ptr @.str.214, ptr %21, align 8, !tbaa !1960, !alias.scope !1965
  store ptr %.sroa.0.0.i.i255, ptr %i.cz, align 8, !tbaa !1932, !alias.scope !1965
  store ptr %.sroa.0.0.i.i249, ptr %i.da, align 8, !tbaa !1933, !alias.scope !1965
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  store ptr %21, ptr %2, align 8, !tbaa !1968
  %i.xu = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsENS_12function_refIFiPcmEEE(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr nonnull @_ZN4llvm12function_refIFiPcmEE11callback_fnIZNS_lsIJPKcS7_EEERNS_11raw_ostreamES9_NS_13format_objectIJDpT_EEEEUlS1_mE_EEilS1_m, i64 %i.db) #30 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.xv = getelementptr inbounds nuw i8, ptr %.064384, i64 8 ; 2 uses
  %.not81 = icmp eq ptr %i.xv, %i.pr
  br i1 %.not81, label %._crit_edge387, label %.lr.ph386
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNK4llvm4bolt13BinaryContext17printInstructionsIN9__gnu_cxx17__normal_iteratorIPNS_6MCInstESt6vectorIS5_SaIS5_EEEEEEmRNS_11raw_ostreamET_SD_mPKNS0_14BinaryFunctionEbbbNS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(2268) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr %2, ptr %3, i64 noundef %4, ptr noundef %5, i1 noundef zeroext %6, i1 noundef zeroext %7, i1 noundef zeroext %8, ptr noundef byval(%"class.llvm::StringRef") align 8 %9) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %10 = alloca %"class.llvm::SmallString.973", align 8 ; 8 uses
  %11 = alloca %"class.llvm::SmallVector.976", align 8 ; 8 uses
  %.not14 = icmp eq ptr %2, %3
  br i1 %.not14, label %._crit_edge, label %.lr.ph.i.lr.ph

.lr.ph.i.lr.ph:                                   ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1568 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1512
  %i.c = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %11, i64 12
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1544
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %_ZNK4llvm4bolt13BinaryContext15computeCodeSizeIN9__gnu_cxx17__normal_iteratorIPNS_6MCInstESt6vectorIS5_SaIS5_EEEEEEmT_SB_PKNS_13MCCodeEmitterE.exit
  %.016 = phi i64 [ %4, %.lr.ph.i.lr.ph ], [ %i.ao, %_ZNK4llvm4bolt13BinaryContext15computeCodeSizeIN9__gnu_cxx17__normal_iteratorIPNS_6MCInstESt6vectorIS5_SaIS5_EEEEEEmT_SB_PKNS_13MCCodeEmitterE.exit ] ; 2 uses
  %.sroa.010.015 = phi ptr [ %2, %.lr.ph.i.lr.ph ], [ %12, %_ZNK4llvm4bolt13BinaryContext15computeCodeSizeIN9__gnu_cxx17__normal_iteratorIPNS_6MCInstESt6vectorIS5_SaIS5_EEEEEEmT_SB_PKNS_13MCCodeEmitterE.exit ] ; 7 uses
  call void @_ZNK4llvm4bolt13BinaryContext16printInstructionERNS_11raw_ostreamERKNS_6MCInstEmPKNS0_14BinaryFunctionEbbbNS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(2268) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.010.015, i64 noundef %.016, ptr noundef %5, i1 noundef zeroext %6, i1 noundef zeroext %7, i1 noundef zeroext %8, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %9) #30
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !579  ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = call noundef zeroext i1 %i.m(ptr noundef nonnull align 8 dereferenceable(536) %i.j, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.010.015) #30, !inline_history !597
  br i1 %i.n, label %_ZNK4llvm4bolt13BinaryContext15computeCodeSizeIN9__gnu_cxx17__normal_iteratorIPNS_6MCInstESt6vectorIS5_SaIS5_EEEEEEmT_SB_PKNS_13MCCodeEmitterE.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !579
  %i.p = call i64 @_ZNK4llvm4bolt13MCPlusBuilder7getSizeERKNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(536) %i.o, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.010.015) #30 ; 2 uses
  %i.q = and i64 %i.p, 4294967296
  %.not22.i = icmp eq i64 %i.q, 0
  br i1 %.not22.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = and i64 %i.p, 4294967295
  br label %_ZNK4llvm4bolt13BinaryContext15computeCodeSizeIN9__gnu_cxx17__normal_iteratorIPNS_6MCInstESt6vectorIS5_SaIS5_EEEEEEmT_SB_PKNS_13MCCodeEmitterE.exit

bb.d:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !579  ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 104
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = call noundef zeroext i1 %i.v(ptr noundef nonnull align 8 dereferenceable(536) %i.s, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.010.015) #30, !inline_history !598
  br i1 %i.w, label %_ZNK4llvm4bolt13BinaryContext15computeCodeSizeIN9__gnu_cxx17__normal_iteratorIPNS_6MCInstESt6vectorIS5_SaIS5_EEEEEEmT_SB_PKNS_13MCCodeEmitterE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !579  ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 856
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = call i64 %i.aa(ptr noundef nonnull align 8 dereferenceable(536) %i.x, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.010.015) #30, !inline_history !598 ; 2 uses
  %i.ac = and i64 %i.ab, 4294967296
  %.not23.i = icmp eq i64 %i.ac, 0
  br i1 %.not23.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = and i64 %i.ab, 4294967295
  br label %_ZNK4llvm4bolt13BinaryContext15computeCodeSizeIN9__gnu_cxx17__normal_iteratorIPNS_6MCInstESt6vectorIS5_SaIS5_EEEEEEmT_SB_PKNS_13MCCodeEmitterE.exit

bb.g:                                             ; preds = %bb.e
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !599 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  store ptr %i.c, ptr %10, align 8, !tbaa !600
  store i64 0, ptr %i.d, align 8, !tbaa !602
  store i64 256, ptr %i.e, align 8, !tbaa !603
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  store ptr %i.f, ptr %11, align 8, !tbaa !21
  store i32 0, ptr %i.g, align 8, !tbaa !427
  store i32 4, ptr %i.h, align 4, !tbaa !589
  %i.af = load ptr, ptr %i.i, align 8, !tbaa !604
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.010.015, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(320) %i.af) #30, !inline_history !598
  %i.aj = load i64, ptr %i.d, align 8, !tbaa !602
  %i.ak = load ptr, ptr %11, align 8, !tbaa !21   ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.f
  br i1 %i.al, label %_ZN4llvm11SmallVectorINS_7MCFixupELj4EED2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @free(ptr noundef %i.ak) #30
  br label %_ZN4llvm11SmallVectorINS_7MCFixupELj4EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_7MCFixupELj4EED2Ev.exit.i: ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  %i.am = load ptr, ptr %10, align 8, !tbaa !600  ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.c
  br i1 %i.an, label %_ZN4llvm11SmallVectorIcLj256EED2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm11SmallVectorINS_7MCFixupELj4EED2Ev.exit.i
  call void @free(ptr noundef %i.am) #30
  br label %_ZN4llvm11SmallVectorIcLj256EED2Ev.exit.i

_ZN4llvm11SmallVectorIcLj256EED2Ev.exit.i:        ; preds = %bb.i, %_ZN4llvm11SmallVectorINS_7MCFixupELj4EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  br label %_ZNK4llvm4bolt13BinaryContext15computeCodeSizeIN9__gnu_cxx17__normal_iteratorIPNS_6MCInstESt6vectorIS5_SaIS5_EEEEEEmT_SB_PKNS_13MCCodeEmitterE.exit

_ZNK4llvm4bolt13BinaryContext15computeCodeSizeIN9__gnu_cxx17__normal_iteratorIPNS_6MCInstESt6vectorIS5_SaIS5_EEEEEEmT_SB_PKNS_13MCCodeEmitterE.exit: ; preds = %_ZN4llvm11SmallVectorIcLj256EED2Ev.exit.i, %bb.f, %bb.d, %bb.c, %.lr.ph.i
  %.1.i = phi i64 [ 0, %.lr.ph.i ], [ %i.r, %bb.c ], [ %i.aj, %_ZN4llvm11SmallVectorIcLj256EED2Ev.exit.i ], [ %i.ad, %bb.f ], [ 0, %bb.d ]
  %12 = getelementptr inbounds nuw i8, ptr %.sroa.010.015, i64 128 ; 2 uses
  %i.ao = add i64 %.1.i, %.016                    ; 2 uses
  %.not = icmp eq ptr %12, %3
  br i1 %.not, label %._crit_edge, label %.lr.ph.i, !llvm.loop !1970

._crit_edge:                                      ; preds = %_ZNK4llvm4bolt13BinaryContext15computeCodeSizeIN9__gnu_cxx17__normal_iteratorIPNS_6MCInstESt6vectorIS5_SaIS5_EEEEEEmT_SB_PKNS_13MCCodeEmitterE.exit, %bb.a
  %.0.lcssa = phi i64 [ %4, %bb.a ], [ %i.ao, %_ZNK4llvm4bolt13BinaryContext15computeCodeSizeIN9__gnu_cxx17__normal_iteratorIPNS_6MCInstESt6vectorIS5_SaIS5_EEEEEEmT_SB_PKNS_13MCCodeEmitterE.exit ]
  ret i64 %.0.lcssa
}

declare noundef zeroext i1 @_ZN4llvm4bolt16BinaryBasicBlock13analyzeBranchERPKNS_8MCSymbolES5_RPNS_6MCInstES8_(ptr noundef nonnull align 8 dereferenceable(192), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare { ptr, i64 } @_ZNK4llvm13MCInstPrinter13getOpcodeNameEj(ptr noundef nonnull align 8 dereferenceable(96), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm4bolt14BinaryFunction9viewGraphEv(ptr noundef nonnull align 8 dereferenceable(1360) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.llvm::SmallString.1149", align 8 ; 13 uses
  %2 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  store ptr %i.b, ptr %1, align 8, !tbaa !600
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  store i64 0, ptr %i.c, align 8, !tbaa !602
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 255, ptr %i.d, align 8, !tbaa !603
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 33
  store i8 1, ptr %i.f, align 1, !tbaa !418
  store ptr @.str.216, ptr %2, align 8, !tbaa !414
  store i8 3, ptr %i.e, align 8, !tbaa !415
  %i.g = call { i32, ptr } @_ZN4llvm3sys2fs19createTemporaryFileERKNS_5TwineENS_9StringRefERNS_15SmallVectorImplIcEENS1_9OpenFlagsE(ptr noundef nonnull align 8 dereferenceable(34) %2, ptr nonnull @.str.217, i64 3, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 0) #30 ; 2 uses
  %i.h = extractvalue { i32, ptr } %i.g, 0        ; 2 uses
  %i.i = extractvalue { i32, ptr } %i.g, 1        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !24, !nonnull !19, !align !152
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1616
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !534, !nonnull !19, !align !152 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !538
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !542  ; 2 uses
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = icmp ult i64 %i.t, 12
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull @.str.218, i64 noundef 12) #30
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.q, ptr noundef nonnull align 1 dereferenceable(12) @.str.218, i64 12, i1 false)
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !542
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store ptr %i.x, ptr %i.p, align 8, !tbaa !542
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ %i.v, %bb.c ], [ %i.m, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.y = load ptr, ptr %i.i, align 8, !tbaa !8, !noalias !1971
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !1971
  call void %i.aa(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.i, i32 noundef %i.h) #30, !inline_history !1974
  %i.ab = load ptr, ptr %3, align 8, !tbaa !399
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !400
  %i.ae = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, ptr noundef %i.ab, i64 noundef %i.ad) #30 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !538
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 32 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !542 ; 2 uses
  %i.aj = ptrtoint ptr %i.ag to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = icmp ult i64 %i.al, 19
  br i1 %i.am, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.an = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ae, ptr noundef nonnull @.str.219, i64 noundef 19) #30 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !542
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit3

bb.f:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.ai, ptr noundef nonnull align 1 dereferenceable(19) @.str.219, i64 19, i1 false)
  %i.ao = load ptr, ptr %i.ah, align 8, !tbaa !542
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 19 ; 2 uses
  store ptr %i.ap, ptr %i.ah, align 8, !tbaa !542
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit3

_ZN4llvm11raw_ostreamlsEPKc.exit3:                ; preds = %bb.e, %bb.f
  %i.aq = phi ptr [ %.pre, %bb.e ], [ %i.ap, %bb.f ] ; 2 uses
  %.0.i.i2 = phi ptr [ %i.an, %bb.e ], [ %i.ae, %bb.f ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i.i2, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !538
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = icmp ult i64 %i.av, 36
  br i1 %i.aw, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit3
  %i.ax = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i2, ptr noundef nonnull @.str.220, i64 noundef 36) #30 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit6

bb.h:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit3
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i.i2, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(36) %i.aq, ptr noundef nonnull align 1 dereferenceable(36) @.str.220, i64 36, i1 false)
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !542
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 36
  store ptr %i.ba, ptr %i.ay, align 8, !tbaa !542
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit6

_ZN4llvm11raw_ostreamlsEPKc.exit6:                ; preds = %bb.g, %bb.h
  %i.bb = load ptr, ptr %3, align 8, !tbaa !399   ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit6
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !414
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.z

.critedge:                                        ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !1975)
  %i.bg = load ptr, ptr %1, align 8, !tbaa !600, !noalias !1975 ; 3 uses
  %i.bh = load i64, ptr %i.c, align 8, !tbaa !602, !noalias !1975 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.bi, ptr %4, align 8, !tbaa !473, !alias.scope !1975
  %i.bj = icmp eq ptr %i.bg, null
  %i.bk = icmp ne i64 %i.bh, 0
  %or.cond.i.i = and i1 %i.bj, %i.bk
  br i1 %or.cond.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.critedge
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.272) #34
  unreachable

bb.j:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30, !noalias !1975
  store i64 %i.bh, ptr %i.a, align 8, !tbaa !408, !noalias !1975
  %i.bl = icmp ugt i64 %i.bh, 15
  br i1 %i.bl, label %bb.k, label %._crit_edge.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.bm = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #30 ; 2 uses
  store ptr %i.bm, ptr %4, align 8, !tbaa !399, !alias.scope !1975
  %i.bn = load i64, ptr %i.a, align 8, !tbaa !408, !noalias !1975
  store i64 %i.bn, ptr %i.bi, align 8, !tbaa !414, !alias.scope !1975
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.k, %bb.j
  %i.bo = phi ptr [ %i.bm, %bb.k ], [ %i.bi, %bb.j ] ; 2 uses
  switch i64 %i.bh, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %_ZNK4llvm11SmallStringILj255EEcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit
  ]

bb.l:                                             ; preds = %._crit_edge.i.i.i
  %i.bp = load i8, ptr %i.bg, align 1, !tbaa !414
  store i8 %i.bp, ptr %i.bo, align 1, !tbaa !414
  br label %_ZNK4llvm11SmallStringILj255EEcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit

bb.m:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bo, ptr align 1 %i.bg, i64 %i.bh, i1 false)
  br label %_ZNK4llvm11SmallStringILj255EEcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit

_ZNK4llvm11SmallStringILj255EEcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit: ; preds = %._crit_edge.i.i.i, %bb.l, %bb.m
  %i.bq = load i64, ptr %i.a, align 8, !tbaa !408, !noalias !1975 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !400, !alias.scope !1975
  %i.bs = load ptr, ptr %4, align 8, !tbaa !399, !alias.scope !1975
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bq
  store i8 0, ptr %i.bt, align 1, !tbaa !414
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30, !noalias !1975
  call void @_ZNK4llvm4bolt14BinaryFunction15dumpGraphToFileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1360) %0, ptr nofree noundef nonnull align 8 dereferenceable(32) %4)
  %i.bu = load ptr, ptr %4, align 8, !tbaa !399   ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.bi
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNK4llvm11SmallStringILj255EEcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit
end_hunk_1
