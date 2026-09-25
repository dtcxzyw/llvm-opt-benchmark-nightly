Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cxxopts/original/example?download=true
inline.NumInlined: 9080
inline.NumDeleted: 3223
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_Z5parseiPPKc:bb.a
  %i.bsf = invoke ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(184) %158, ptr noundef nonnull align 8 dereferenceable(32) %163)
          to label %.noexc1416 unwind label %bb.on ; 2 uses

.noexc1416:                                       ; preds = %._crit_edge.i.i1399
  %i.bsg = icmp eq ptr %i.bsf, null
  br i1 %i.bsg, label %_ZNK7cxxopts11ParseResult5countERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit1417, label %bb.nx

bb.nx:                                            ; preds = %.noexc1416
  %i.bsh = getelementptr inbounds nuw i8, ptr %i.bsf, i64 40
  %i.bsi = getelementptr inbounds nuw i8, ptr %158, i64 80
  %i.bsj = load i64, ptr %i.bsi, align 8, !tbaa !151
  %.not.not.i.i.i1403 = icmp eq i64 %i.bsj, 0
  %i.bsk = load i64, ptr %i.bsh, align 8          ; 4 uses
  br i1 %.not.not.i.i.i1403, label %bb.ny, label %bb.ob

bb.ny:                                            ; preds = %bb.nx
  %i.bsl = getelementptr inbounds nuw i8, ptr %158, i64 72
  br label %bb.nz

bb.nz:                                            ; preds = %bb.oa, %bb.ny
  %.sroa.06.0.in.i.i.i1413 = phi ptr [ %i.bsl, %bb.ny ], [ %.sroa.06.0.i.i.i1414, %bb.oa ]
  %.sroa.06.0.i.i.i1414 = load ptr, ptr %.sroa.06.0.in.i.i.i1413, align 8, !tbaa !152 ; 4 uses
  %.not.i.i.i1415 = icmp eq ptr %.sroa.06.0.i.i.i1414, null
  br i1 %.not.i.i.i1415, label %_ZNK7cxxopts11ParseResult5countERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit1417, label %bb.oa

bb.oa:                                            ; preds = %bb.nz
  %i.bsm = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i1414, i64 8
  %i.bsn = load i64, ptr %i.bsm, align 8, !tbaa !67
  %i.bso = icmp eq i64 %i.bsk, %i.bsn
  br i1 %i.bso, label %_ZNKSt13unordered_mapImN7cxxopts11OptionValueESt4hashImESt8equal_toImESaISt4pairIKmS1_EEE4findERS7_.exit.i1411, label %bb.nz, !llvm.loop !2

bb.ob:                                            ; preds = %bb.nx
  %i.bsp = getelementptr inbounds nuw i8, ptr %158, i64 56
  %i.bsq = getelementptr inbounds nuw i8, ptr %158, i64 64
  %i.bsr = load i64, ptr %i.bsq, align 8, !tbaa !147 ; 2 uses
  %i.bss = urem i64 %i.bsk, %i.bsr                ; 2 uses
  %i.bst = load ptr, ptr %i.bsp, align 8, !tbaa !146
  %i.bsu = getelementptr inbounds nuw [8 x i8], ptr %i.bst, i64 %i.bss
  %i.bsv = load ptr, ptr %i.bsu, align 8, !tbaa !154 ; 2 uses
  %.not.i.i.i.i.i1404 = icmp eq ptr %i.bsv, null
  br i1 %.not.i.i.i.i.i1404, label %_ZNK7cxxopts11ParseResult5countERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit1417, label %bb.oc

bb.oc:                                            ; preds = %bb.ob
  %i.bsw = load ptr, ptr %i.bsv, align 8, !tbaa !152 ; 3 uses
  %i.bsx = getelementptr inbounds nuw i8, ptr %i.bsw, i64 8
  %i.bsy = load i64, ptr %i.bsx, align 8, !tbaa !67
  %i.bsz = icmp eq i64 %i.bsk, %i.bsy
  br i1 %i.bsz, label %_ZNKSt13unordered_mapImN7cxxopts11OptionValueESt4hashImESt8equal_toImESaISt4pairIKmS1_EEE4findERS7_.exit.i1411, label %.lr.ph.i.i.i.i.i1405

bb.od:                                            ; preds = %bb.oe
  %i.bta = icmp eq i64 %i.bsk, %i.btd
  br i1 %i.bta, label %_ZNKSt13unordered_mapImN7cxxopts11OptionValueESt4hashImESt8equal_toImESaISt4pairIKmS1_EEE4findERS7_.exit.i1411, label %.lr.ph.i.i.i.i.i1405, !llvm.loop !3

.lr.ph.i.i.i.i.i1405:                             ; preds = %bb.oc, %bb.od
  %.020.i.i.i.i.i1406 = phi ptr [ %i.btb, %bb.od ], [ %i.bsw, %bb.oc ]
  %i.btb = load ptr, ptr %.020.i.i.i.i.i1406, align 8, !tbaa !152 ; 4 uses
  %.not18.i.i.i.i.i1407 = icmp eq ptr %i.btb, null
  br i1 %.not18.i.i.i.i.i1407, label %_ZNK7cxxopts11ParseResult5countERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit1417, label %bb.oe

bb.oe:                                            ; preds = %.lr.ph.i.i.i.i.i1405
  %i.btc = getelementptr inbounds nuw i8, ptr %i.btb, i64 8
  %i.btd = load i64, ptr %i.btc, align 8, !tbaa !67 ; 2 uses
  %i.bte = urem i64 %i.btd, %i.bsr
  %.not19.i.i.i.i.i1408 = icmp eq i64 %i.bte, %i.bss
  br i1 %.not19.i.i.i.i.i1408, label %bb.od, label %..loopexit_crit_edge21.i.i.i.i.i1409, !llvm.loop !3

..loopexit_crit_edge21.i.i.i.i.i1409:             ; preds = %bb.oe
  br label %_ZNK7cxxopts11ParseResult5countERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit1417, !llvm.loop !3

_ZNKSt13unordered_mapImN7cxxopts11OptionValueESt4hashImESt8equal_toImESaISt4pairIKmS1_EEE4findERS7_.exit.i1411: ; preds = %bb.od, %bb.oa, %bb.oc
  %.sroa.06.1.i.i.i1412 = phi ptr [ %.sroa.06.0.i.i.i1414, %bb.oa ], [ %i.bsw, %bb.oc ], [ %i.btb, %bb.od ]
  %i.btf = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i1412, i64 40
  %i.btg = load i64, ptr %i.btf, align 8, !tbaa !157
  %i.bth = icmp eq i64 %i.btg, 0
  br label %_ZNK7cxxopts11ParseResult5countERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit1417

_ZNK7cxxopts11ParseResult5countERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit1417: ; preds = %.lr.ph.i.i.i.i.i1405, %bb.nz, %_ZNKSt13unordered_mapImN7cxxopts11OptionValueESt4hashImESt8equal_toImESaISt4pairIKmS1_EEE4findERS7_.exit.i1411, %..loopexit_crit_edge21.i.i.i.i.i1409, %bb.ob, %.noexc1416
  %.1.i1410 = phi i1 [ true, %.noexc1416 ], [ %i.bth, %_ZNKSt13unordered_mapImN7cxxopts11OptionValueESt4hashImESt8equal_toImESaISt4pairIKmS1_EEE4findERS7_.exit.i1411 ], [ true, %..loopexit_crit_edge21.i.i.i.i.i1409 ], [ true, %bb.nz ], [ true, %bb.ob ], [ true, %.lr.ph.i.i.i.i.i1405 ]
  %i.bti = load ptr, ptr %163, align 8, !tbaa !69 ; 2 uses
  %i.btj = icmp eq ptr %i.bti, %i.bsc
  br i1 %i.btj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1420, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1418

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1418: ; preds = %_ZNK7cxxopts11ParseResult5countERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit1417
  %i.btk = load i64, ptr %i.bsc, align 8, !tbaa !70
  %i.btl = add i64 %i.btk, 1
  call void @_ZdlPvm(ptr noundef %i.bti, i64 noundef %i.btl) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1420

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1420: ; preds = %_ZNK7cxxopts11ParseResult5countERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit1417, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1418
  call void @llvm.lifetime.end.p0(ptr nonnull %163) #30
  br i1 %.1.i1410, label %bb.pb, label %._crit_edge.i.i1421

._crit_edge.i.i1421:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1420
  call void @llvm.lifetime.start.p0(ptr nonnull %164) #30
  %i.btm = getelementptr inbounds nuw i8, ptr %164, i64 16 ; 6 uses
  store ptr %i.btm, ptr %164, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.btm, ptr noundef nonnull align 1 dereferenceable(5) @.str.45, i64 5, i1 false)
  %i.btn = getelementptr inbounds nuw i8, ptr %164, i64 8
  store i64 5, ptr %i.btn, align 8, !tbaa !71
  %i.bto = getelementptr inbounds nuw i8, ptr %164, i64 21
  store i8 0, ptr %i.bto, align 1, !tbaa !70
  %i.btp = invoke ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(184) %158, ptr noundef nonnull align 8 dereferenceable(32) %164)
          to label %.noexc1438 unwind label %bb.oo ; 2 uses

.noexc1438:                                       ; preds = %._crit_edge.i.i1421
  %i.btq = icmp eq ptr %i.btp, null
  br i1 %i.btq, label %_ZNK7cxxopts11ParseResult5countERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit1439, label %bb.of

bb.of:                                            ; preds = %.noexc1438
  %i.btr = getelementptr inbounds nuw i8, ptr %i.btp, i64 40
  %i.bts = getelementptr inbounds nuw i8, ptr %158, i64 80
  %i.btt = load i64, ptr %i.bts, align 8, !tbaa !151
  %.not.not.i.i.i1425 = icmp eq i64 %i.btt, 0
  %i.btu = load i64, ptr %i.btr, align 8          ; 4 uses
  br i1 %.not.not.i.i.i1425, label %bb.og, label %bb.oj

bb.og:                                            ; preds = %bb.of
  %i.btv = getelementptr inbounds nuw i8, ptr %158, i64 72
  br label %bb.oh

bb.oh:                                            ; preds = %bb.oi, %bb.og
  %.sroa.06.0.in.i.i.i1435 = phi ptr [ %i.btv, %bb.og ], [ %.sroa.06.0.i.i.i1436, %bb.oi ]
  %.sroa.06.0.i.i.i1436 = load ptr, ptr %.sroa.06.0.in.i.i.i1435, align 8, !tbaa !152 ; 4 uses
  %.not.i.i.i1437 = icmp eq ptr %.sroa.06.0.i.i.i1436, null
  br i1 %.not.i.i.i1437, label %_ZNK7cxxopts11ParseResult5countERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit1439, label %bb.oi

bb.oi:                                            ; preds = %bb.oh
  %i.btw = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i1436, i64 8
  %i.btx = load i64, ptr %i.btw, align 8, !tbaa !67
  %i.bty = icmp eq i64 %i.btu, %i.btx
  br i1 %i.bty, label %_ZNKSt13unordered_mapImN7cxxopts11OptionValueESt4hashImESt8equal_toImESaISt4pairIKmS1_EEE4findERS7_.exit.i1433, label %bb.oh, !llvm.loop !2

bb.oj:                                            ; preds = %bb.of
  %i.btz = getelementptr inbounds nuw i8, ptr %158, i64 56
  %i.bua = getelementptr inbounds nuw i8, ptr %158, i64 64
  %i.bub = load i64, ptr %i.bua, align 8, !tbaa !147 ; 2 uses
  %i.buc = urem i64 %i.btu, %i.bub                ; 2 uses
  %i.bud = load ptr, ptr %i.btz, align 8, !tbaa !146
  %i.bue = getelementptr inbounds nuw [8 x i8], ptr %i.bud, i64 %i.buc
  %i.buf = load ptr, ptr %i.bue, align 8, !tbaa !154 ; 2 uses
  %.not.i.i.i.i.i1426 = icmp eq ptr %i.buf, null
  br i1 %.not.i.i.i.i.i1426, label %_ZNK7cxxopts11ParseResult5countERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit1439, label %bb.ok

bb.ok:                                            ; preds = %bb.oj
  %i.bug = load ptr, ptr %i.buf, align 8, !tbaa !152 ; 3 uses
  %i.buh = getelementptr inbounds nuw i8, ptr %i.bug, i64 8
  %i.bui = load i64, ptr %i.buh, align 8, !tbaa !67
  %i.buj = icmp eq i64 %i.btu, %i.bui
  br i1 %i.buj, label %_ZNKSt13unordered_mapImN7cxxopts11OptionValueESt4hashImESt8equal_toImESaISt4pairIKmS1_EEE4findERS7_.exit.i1433, label %.lr.ph.i.i.i.i.i1427

bb.ol:                                            ; preds = %bb.om
  %i.buk = icmp eq i64 %i.btu, %i.bun
  br i1 %i.buk, label %_ZNKSt13unordered_mapImN7cxxopts11OptionValueESt4hashImESt8equal_toImESaISt4pairIKmS1_EEE4findERS7_.exit.i1433, label %.lr.ph.i.i.i.i.i1427, !llvm.loop !3

.lr.ph.i.i.i.i.i1427:                             ; preds = %bb.ok, %bb.ol
  %.020.i.i.i.i.i1428 = phi ptr [ %i.bul, %bb.ol ], [ %i.bug, %bb.ok ]
  %i.bul = load ptr, ptr %.020.i.i.i.i.i1428, align 8, !tbaa !152 ; 4 uses
  %.not18.i.i.i.i.i1429 = icmp eq ptr %i.bul, null
  br i1 %.not18.i.i.i.i.i1429, label %_ZNK7cxxopts11ParseResult5countERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit1439, label %bb.om

bb.om:                                            ; preds = %.lr.ph.i.i.i.i.i1427
  %i.bum = getelementptr inbounds nuw i8, ptr %i.bul, i64 8
  %i.bun = load i64, ptr %i.bum, align 8, !tbaa !67 ; 2 uses
  %i.buo = urem i64 %i.bun, %i.bub
  %.not19.i.i.i.i.i1430 = icmp eq i64 %i.buo, %i.buc
  br i1 %.not19.i.i.i.i.i1430, label %bb.ol, label %..loopexit_crit_edge21.i.i.i.i.i1431, !llvm.loop !3

..loopexit_crit_edge21.i.i.i.i.i1431:             ; preds = %bb.om
  br label %_ZNK7cxxopts11ParseResult5countERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit1439, !llvm.loop !3

_ZNKSt13unordered_mapImN7cxxopts11OptionValueESt4hashImESt8equal_toImESaISt4pairIKmS1_EEE4findERS7_.exit.i1433: ; preds = %bb.ol, %bb.oi, %bb.ok
  %.sroa.06.1.i.i.i1434 = phi ptr [ %.sroa.06.0.i.i.i1436, %bb.oi ], [ %i.bug, %bb.ok ], [ %i.bul, %bb.ol ]
  %i.bup = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i1434, i64 40
  %i.buq = load i64, ptr %i.bup, align 8, !tbaa !157
  %i.bur = icmp eq i64 %i.buq, 0
  br label %_ZNK7cxxopts11ParseResult5countERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit1439

_ZNK7cxxopts11ParseResult5countERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit1439: ; preds = %.lr.ph.i.i.i.i.i1427, %bb.oh, %_ZNKSt13unordered_mapImN7cxxopts11OptionValueESt4hashImESt8equal_toImESaISt4pairIKmS1_EEE4findERS7_.exit.i1433, %..loopexit_crit_edge21.i.i.i.i.i1431, %bb.oj, %.noexc1438
  %.1.i1432 = phi i1 [ true, %.noexc1438 ], [ %i.bur, %_ZNKSt13unordered_mapImN7cxxopts11OptionValueESt4hashImESt8equal_toImESaISt4pairIKmS1_EEE4findERS7_.exit.i1433 ], [ true, %..loopexit_crit_edge21.i.i.i.i.i1431 ], [ true, %bb.oh ], [ true, %bb.oj ], [ true, %.lr.ph.i.i.i.i.i1427 ]
  %i.bus = load ptr, ptr %164, align 8, !tbaa !69 ; 2 uses
  %i.but = icmp eq ptr %i.bus, %i.btm
  br i1 %i.but, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1442, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1440

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1440: ; preds = %_ZNK7cxxopts11ParseResult5countERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit1439
  %i.buu = load i64, ptr %i.btm, align 8, !tbaa !70
  %i.buv = add i64 %i.buu, 1
  call void @_ZdlPvm(ptr noundef %i.bus, i64 noundef %i.buv) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1442

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1442: ; preds = %_ZNK7cxxopts11ParseResult5countERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit1439, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1440
  call void @llvm.lifetime.end.p0(ptr nonnull %164) #30
  br i1 %.1.i1432, label %bb.ou, label %_ZNK7cxxopts11ParseResult5beginEv.exit

_ZNK7cxxopts11ParseResult5beginEv.exit:           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1442
  %i.buw = getelementptr inbounds nuw i8, ptr %158, i64 112
  %i.bux = load ptr, ptr %i.buw, align 8, !tbaa !176, !noalias !839 ; 2 uses
  %i.buy = getelementptr inbounds nuw i8, ptr %158, i64 120 ; 2 uses
  %i.buz = load ptr, ptr %i.buy, align 8, !tbaa !176, !noalias !839
  %i.bva = icmp ne ptr %i.bux, %i.buz             ; 3 uses
  %i.bvb = getelementptr inbounds nuw i8, ptr %158, i64 136 ; 2 uses
  %i.bvc = load ptr, ptr %i.bvb, align 8
  %.sroa.5.1 = select i1 %i.bva, ptr %i.bux, ptr %i.bvc ; 2 uses
  %i.bvd = getelementptr inbounds nuw i8, ptr %158, i64 144
  %i.bve = load ptr, ptr %i.bvd, align 8, !tbaa !176, !noalias !840 ; 2 uses
  %i.bvf = icmp ne ptr %.sroa.5.1, %i.bve
  %.not3.i2287 = select i1 %i.bva, i1 true, i1 %i.bvf
  br i1 %.not3.i2287, label %.lr.ph, label %.loopexit2236

.lr.ph:                                           ; preds = %_ZNK7cxxopts11ParseResult5beginEv.exit
  %.sroa.12.1 = zext i1 %i.bva to i8
  br label %bb.op

bb.on:                                            ; preds = %._crit_edge.i.i1399
  %i.bvg = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7cxxopts10exceptions9exceptionE
  %i.bvh = load ptr, ptr %163, align 8, !tbaa !69 ; 2 uses
  %i.bvi = icmp eq ptr %i.bvh, %i.bsc
  br i1 %i.bvi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1445, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1443

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1443: ; preds = %bb.on
  %i.bvj = load i64, ptr %i.bsc, align 8, !tbaa !70
  %i.bvk = add i64 %i.bvj, 1
  call void @_ZdlPvm(ptr noundef %i.bvh, i64 noundef %i.bvk) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1445

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1445: ; preds = %bb.on, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1443
  call void @llvm.lifetime.end.p0(ptr nonnull %163) #30
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit1865

bb.oo:                                            ; preds = %._crit_edge.i.i1421
  %i.bvl = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7cxxopts10exceptions9exceptionE
  %i.bvm = load ptr, ptr %164, align 8, !tbaa !69 ; 2 uses
  %i.bvn = icmp eq ptr %i.bvm, %i.btm
  br i1 %i.bvn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1448, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1446

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1446: ; preds = %bb.oo
  %i.bvo = load i64, ptr %i.btm, align 8, !tbaa !70
  %i.bvp = add i64 %i.bvo, 1
  call void @_ZdlPvm(ptr noundef %i.bvm, i64 noundef %i.bvp) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1448

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1448: ; preds = %bb.oo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1446
  call void @llvm.lifetime.end.p0(ptr nonnull %164) #30
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit1865

bb.op:                                            ; preds = %.lr.ph, %_ZN7cxxopts11ParseResult8IteratorppEv.exit
  %.sroa.12.02289 = phi i8 [ %.sroa.12.1, %.lr.ph ], [ %.sroa.12.2, %_ZN7cxxopts11ParseResult8IteratorppEv.exit ]
  %.sroa.5.02288 = phi ptr [ %.sroa.5.1, %.lr.ph ], [ %.sroa.5.2, %_ZN7cxxopts11ParseResult8IteratorppEv.exit ] ; 5 uses
  %i.bvq = load ptr, ptr %.sroa.5.02288, align 8, !tbaa !69
  %i.bvr = getelementptr inbounds nuw i8, ptr %.sroa.5.02288, i64 8
  %i.bvs = load i64, ptr %i.bvr, align 8, !tbaa !71
  %i.bvt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.bvq, i64 noundef %i.bvs)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1450 unwind label %.loopexit2237 ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1450: ; preds = %bb.op
  %i.bvu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bvt, ptr noundef nonnull @.str.55, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit2237 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1450
  %i.bvv = getelementptr inbounds nuw i8, ptr %.sroa.5.02288, i64 32
  %i.bvw = load ptr, ptr %i.bvv, align 8, !tbaa !69
  %i.bvx = getelementptr inbounds nuw i8, ptr %.sroa.5.02288, i64 40
  %i.bvy = load i64, ptr %i.bvx, align 8, !tbaa !71
  %i.bvz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bvt, ptr noundef %i.bvw, i64 noundef %i.bvy)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1453 unwind label %.loopexit2237 ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1453: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bwa = load ptr, ptr %i.bvz, align 8, !tbaa !120
  %i.bwb = getelementptr i8, ptr %i.bwa, i64 -24
  %i.bwc = load i64, ptr %i.bwb, align 8
  %i.bwd = getelementptr inbounds i8, ptr %i.bvz, i64 %i.bwc
  %i.bwe = getelementptr inbounds nuw i8, ptr %i.bwd, i64 240
  %i.bwf = load ptr, ptr %i.bwe, align 8, !tbaa !838 ; 6 uses
  %.not.i.i.i1905 = icmp eq ptr %i.bwf, null
  br i1 %.not.i.i.i1905, label %bb.oq, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1906

bb.oq:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1453
  invoke void @_ZSt16__throw_bad_castv() #29
          to label %.noexc1910 unwind label %.loopexit.split-lp2238

.noexc1910:                                       ; preds = %bb.oq
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1906: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1453
  %i.bwg = getelementptr inbounds nuw i8, ptr %i.bwf, i64 56
  %i.bwh = load i8, ptr %i.bwg, align 8, !tbaa !175
  %.not.i1.i.i1907 = icmp eq i8 %i.bwh, 0
  br i1 %.not.i1.i.i1907, label %bb.os, label %bb.or

bb.or:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1906
  %i.bwi = getelementptr inbounds nuw i8, ptr %i.bwf, i64 67
  %i.bwj = load i8, ptr %i.bwi, align 1, !tbaa !70
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1908

bb.os:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1906
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bwf)
          to label %.noexc1911 unwind label %.loopexit2237

.noexc1911:                                       ; preds = %bb.os
  %i.bwk = load ptr, ptr %i.bwf, align 8, !tbaa !120
  %i.bwl = getelementptr inbounds nuw i8, ptr %i.bwk, i64 48
  %i.bwm = load ptr, ptr %i.bwl, align 8
  %i.bwn = invoke noundef signext i8 %i.bwm(ptr noundef nonnull align 8 dereferenceable(570) %i.bwf, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1908 unwind label %.loopexit2237, !inline_history !784

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1908: ; preds = %.noexc1911, %bb.or
  %.0.i.i.i1909 = phi i8 [ %i.bwj, %bb.or ], [ %i.bwn, %.noexc1911 ]
  %i.bwo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.bvz, i8 noundef signext %.0.i.i.i1909)
          to label %.noexc1913 unwind label %.loopexit2237

.noexc1913:                                       ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1908
  %i.bwp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bwo)
          to label %_ZNSolsEPFRSoS_E.exit1455 unwind label %.loopexit2237 ; 0 uses

_ZNSolsEPFRSoS_E.exit1455:                        ; preds = %.noexc1913
  %i.bwq = getelementptr inbounds nuw i8, ptr %.sroa.5.02288, i64 64 ; 3 uses
  %i.bwr = trunc nuw i8 %.sroa.12.02289 to i1
  br i1 %i.bwr, label %bb.ot, label %_ZN7cxxopts11ParseResult8IteratorppEv.exit

bb.ot:                                            ; preds = %_ZNSolsEPFRSoS_E.exit1455
  %i.bws = load ptr, ptr %i.buy, align 8, !tbaa !176
  %i.bwt = icmp ne ptr %i.bwq, %i.bws             ; 2 uses
  %i.bwu = load ptr, ptr %i.bvb, align 8
  %spec.select = select i1 %i.bwt, ptr %i.bwq, ptr %i.bwu
  %spec.select2304 = zext i1 %i.bwt to i8
  br label %_ZN7cxxopts11ParseResult8IteratorppEv.exit

_ZN7cxxopts11ParseResult8IteratorppEv.exit:       ; preds = %bb.ot, %_ZNSolsEPFRSoS_E.exit1455
  %.sroa.5.2 = phi ptr [ %i.bwq, %_ZNSolsEPFRSoS_E.exit1455 ], [ %spec.select, %bb.ot ] ; 2 uses
  %.sroa.12.2 = phi i8 [ 0, %_ZNSolsEPFRSoS_E.exit1455 ], [ %spec.select2304, %bb.ot ] ; 2 uses
  %i.bwv = icmp ne i8 %.sroa.12.2, 0
  %i.bww = icmp ne ptr %.sroa.5.2, %i.bve
  %.not3.i = select i1 %i.bwv, i1 true, i1 %i.bww
  br i1 %.not3.i, label %bb.op, label %.loopexit2236

.loopexit2237:                                    ; preds = %bb.op, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1450, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.os, %.noexc1911, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1908, %.noexc1913
  %lpad.loopexit2239 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7cxxopts10exceptions9exceptionE
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit1865

.loopexit.split-lp2238:                           ; preds = %bb.oq
  %lpad.loopexit.split-lp2240 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7cxxopts10exceptions9exceptionE
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit1865

bb.ou:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1442
  call void @llvm.lifetime.start.p0(ptr nonnull %165) #30
  invoke void @_ZNK7cxxopts11ParseResult16arguments_stringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %165, ptr noundef nonnull align 8 dereferenceable(184) %158)
          to label %bb.ov unwind label %bb.oz

bb.ov:                                            ; preds = %bb.ou
  %i.bwx = load ptr, ptr %165, align 8, !tbaa !69
  %i.bwy = getelementptr inbounds nuw i8, ptr %165, i64 8
  %i.bwz = load i64, ptr %i.bwy, align 8, !tbaa !71
  %i.bxa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.bwx, i64 noundef %i.bwz)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1457 unwind label %bb.pa ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1457: ; preds = %bb.ov
  %i.bxb = load ptr, ptr %i.bxa, align 8, !tbaa !120
  %i.bxc = getelementptr i8, ptr %i.bxb, i64 -24
  %i.bxd = load i64, ptr %i.bxc, align 8
  %i.bxe = getelementptr inbounds i8, ptr %i.bxa, i64 %i.bxd
  %i.bxf = getelementptr inbounds nuw i8, ptr %i.bxe, i64 240
  %i.bxg = load ptr, ptr %i.bxf, align 8, !tbaa !838 ; 6 uses
  %.not.i.i.i1916 = icmp eq ptr %i.bxg, null
  br i1 %.not.i.i.i1916, label %bb.ow, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1917

bb.ow:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1457
  invoke void @_ZSt16__throw_bad_castv() #29
          to label %.noexc1921 unwind label %bb.pa

.noexc1921:                                       ; preds = %bb.ow
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1917: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1457
  %i.bxh = getelementptr inbounds nuw i8, ptr %i.bxg, i64 56
  %i.bxi = load i8, ptr %i.bxh, align 8, !tbaa !175
  %.not.i1.i.i1918 = icmp eq i8 %i.bxi, 0
  br i1 %.not.i1.i.i1918, label %bb.oy, label %bb.ox

bb.ox:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1917
  %i.bxj = getelementptr inbounds nuw i8, ptr %i.bxg, i64 67
  %i.bxk = load i8, ptr %i.bxj, align 1, !tbaa !70
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1919

bb.oy:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1917
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bxg)
          to label %.noexc1922 unwind label %bb.pa

.noexc1922:                                       ; preds = %bb.oy
  %i.bxl = load ptr, ptr %i.bxg, align 8, !tbaa !120
  %i.bxm = getelementptr inbounds nuw i8, ptr %i.bxl, i64 48
  %i.bxn = load ptr, ptr %i.bxm, align 8
  %i.bxo = invoke noundef signext i8 %i.bxn(ptr noundef nonnull align 8 dereferenceable(570) %i.bxg, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1919 unwind label %bb.pa, !inline_history !784

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1919: ; preds = %.noexc1922, %bb.ox
  %.0.i.i.i1920 = phi i8 [ %i.bxk, %bb.ox ], [ %i.bxo, %.noexc1922 ]
  %i.bxp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.bxa, i8 noundef signext %.0.i.i.i1920)
          to label %.noexc1924 unwind label %bb.pa

.noexc1924:                                       ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1919
  %i.bxq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bxp)
          to label %_ZNSolsEPFRSoS_E.exit1459 unwind label %bb.pa ; 0 uses
end_hunk_0
