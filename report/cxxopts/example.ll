Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cxxopts/original/example?download=true
inline.NumInlined: 9080
inline.NumDeleted: 3223
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_Z5parseiPPKc:bb.a
  %i.btz = getelementptr inbounds nuw i8, ptr %158, i64 56
  %i.bua = getelementptr inbounds nuw i8, ptr %158, i64 64
  %i.bub = load i64, ptr %i.bua, align 8, !tbaa !225 ; 2 uses
  %i.buc = urem i64 %i.btu, %i.bub                ; 2 uses
  %i.bud = load ptr, ptr %i.btz, align 8, !tbaa !224
  %i.bue = getelementptr inbounds nuw [8 x i8], ptr %i.bud, i64 %i.buc
  %i.buf = load ptr, ptr %i.bue, align 8, !tbaa !233 ; 2 uses
  %.not.i.i.i.i.i1426 = icmp eq ptr %i.buf, null
  br i1 %.not.i.i.i.i.i1426, label %_ZNK7cxxopts11ParseResult5countERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit1439, label %bb.ok

bb.ok:                                            ; preds = %bb.oj
  %i.bug = load ptr, ptr %i.buf, align 8, !tbaa !230 ; 3 uses
  %i.buh = getelementptr inbounds nuw i8, ptr %i.bug, i64 8
  %i.bui = load i64, ptr %i.buh, align 8, !tbaa !13
  %i.buj = icmp eq i64 %i.btu, %i.bui
  br i1 %i.buj, label %_ZNKSt13unordered_mapImN7cxxopts11OptionValueESt4hashImESt8equal_toImESaISt4pairIKmS1_EEE4findERS7_.exit.i1433, label %.lr.ph.i.i.i.i.i1427

bb.ol:                                            ; preds = %bb.om
  %i.buk = icmp eq i64 %i.btu, %i.bun
  br i1 %i.buk, label %_ZNKSt13unordered_mapImN7cxxopts11OptionValueESt4hashImESt8equal_toImESaISt4pairIKmS1_EEE4findERS7_.exit.i1433, label %.lr.ph.i.i.i.i.i1427, !llvm.loop !234

.lr.ph.i.i.i.i.i1427:                             ; preds = %bb.ok, %bb.ol
  %.020.i.i.i.i.i1428 = phi ptr [ %i.bul, %bb.ol ], [ %i.bug, %bb.ok ]
  %i.bul = load ptr, ptr %.020.i.i.i.i.i1428, align 8, !tbaa !230 ; 4 uses
  %.not18.i.i.i.i.i1429 = icmp eq ptr %i.bul, null
  br i1 %.not18.i.i.i.i.i1429, label %_ZNK7cxxopts11ParseResult5countERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit1439, label %bb.om

bb.om:                                            ; preds = %.lr.ph.i.i.i.i.i1427
  %i.bum = getelementptr inbounds nuw i8, ptr %i.bul, i64 8
  %i.bun = load i64, ptr %i.bum, align 8, !tbaa !13 ; 2 uses
  %i.buo = urem i64 %i.bun, %i.bub
  %.not19.i.i.i.i.i1430 = icmp eq i64 %i.buo, %i.buc
  br i1 %.not19.i.i.i.i.i1430, label %bb.ol, label %..loopexit_crit_edge21.i.i.i.i.i1431, !llvm.loop !234

..loopexit_crit_edge21.i.i.i.i.i1431:             ; preds = %bb.om
  br label %_ZNK7cxxopts11ParseResult5countERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit1439, !llvm.loop !234

_ZNKSt13unordered_mapImN7cxxopts11OptionValueESt4hashImESt8equal_toImESaISt4pairIKmS1_EEE4findERS7_.exit.i1433: ; preds = %bb.ol, %bb.oi, %bb.ok
  %.sroa.06.1.i.i.i1434 = phi ptr [ %.sroa.06.0.i.i.i1436, %bb.oi ], [ %i.bug, %bb.ok ], [ %i.bul, %bb.ol ]
  %i.bup = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i1434, i64 40
  %i.buq = load i64, ptr %i.bup, align 8, !tbaa !235
  %i.bur = icmp eq i64 %i.buq, 0
  br label %_ZNK7cxxopts11ParseResult5countERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit1439

_ZNK7cxxopts11ParseResult5countERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit1439: ; preds = %.lr.ph.i.i.i.i.i1427, %bb.oh, %_ZNKSt13unordered_mapImN7cxxopts11OptionValueESt4hashImESt8equal_toImESaISt4pairIKmS1_EEE4findERS7_.exit.i1433, %..loopexit_crit_edge21.i.i.i.i.i1431, %bb.oj, %.noexc1438
  %.1.i1432 = phi i1 [ true, %.noexc1438 ], [ %i.bur, %_ZNKSt13unordered_mapImN7cxxopts11OptionValueESt4hashImESt8equal_toImESaISt4pairIKmS1_EEE4findERS7_.exit.i1433 ], [ true, %..loopexit_crit_edge21.i.i.i.i.i1431 ], [ true, %bb.oh ], [ true, %bb.oj ], [ true, %.lr.ph.i.i.i.i.i1427 ]
  %i.bus = load ptr, ptr %164, align 8, !tbaa !15 ; 2 uses
  %i.but = icmp eq ptr %i.bus, %i.btm
  br i1 %i.but, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1442, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1440

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1440: ; preds = %_ZNK7cxxopts11ParseResult5countERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit1439
  %i.buu = load i64, ptr %i.btm, align 8, !tbaa !17
  %i.buv = add i64 %i.buu, 1
  call void @_ZdlPvm(ptr noundef %i.bus, i64 noundef %i.buv) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1442

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1442: ; preds = %_ZNK7cxxopts11ParseResult5countERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit1439, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1440
  call void @llvm.lifetime.end.p0(ptr nonnull %164) #30
  br i1 %.1.i1432, label %bb.ou, label %_ZNK7cxxopts11ParseResult5beginEv.exit

_ZNK7cxxopts11ParseResult5beginEv.exit:           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1442
  %i.buw = getelementptr inbounds nuw i8, ptr %158, i64 112
  %i.bux = load ptr, ptr %i.buw, align 8, !tbaa !264, !noalias !265 ; 2 uses
  %i.buy = getelementptr inbounds nuw i8, ptr %158, i64 120 ; 2 uses
  %i.buz = load ptr, ptr %i.buy, align 8, !tbaa !264, !noalias !265
  %i.bva = icmp ne ptr %i.bux, %i.buz             ; 3 uses
  %i.bvb = getelementptr inbounds nuw i8, ptr %158, i64 136 ; 2 uses
  %i.bvc = load ptr, ptr %i.bvb, align 8
  %.sroa.5.1 = select i1 %i.bva, ptr %i.bux, ptr %i.bvc ; 2 uses
  %i.bvd = getelementptr inbounds nuw i8, ptr %158, i64 144
  %i.bve = load ptr, ptr %i.bvd, align 8, !tbaa !264, !noalias !268 ; 2 uses
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
  %i.bvh = load ptr, ptr %163, align 8, !tbaa !15 ; 2 uses
  %i.bvi = icmp eq ptr %i.bvh, %i.bsc
  br i1 %i.bvi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1445, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1443

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1443: ; preds = %bb.on
  %i.bvj = load i64, ptr %i.bsc, align 8, !tbaa !17
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
  %i.bvm = load ptr, ptr %164, align 8, !tbaa !15 ; 2 uses
  %i.bvn = icmp eq ptr %i.bvm, %i.btm
  br i1 %i.bvn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1448, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1446

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1446: ; preds = %bb.oo
  %i.bvo = load i64, ptr %i.btm, align 8, !tbaa !17
  %i.bvp = add i64 %i.bvo, 1
  call void @_ZdlPvm(ptr noundef %i.bvm, i64 noundef %i.bvp) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1448

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1448: ; preds = %bb.oo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1446
  call void @llvm.lifetime.end.p0(ptr nonnull %164) #30
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit1865

bb.op:                                            ; preds = %.lr.ph, %_ZN7cxxopts11ParseResult8IteratorppEv.exit
  %.sroa.12.02289 = phi i8 [ %.sroa.12.1, %.lr.ph ], [ %.sroa.12.2, %_ZN7cxxopts11ParseResult8IteratorppEv.exit ]
  %.sroa.5.02288 = phi ptr [ %.sroa.5.1, %.lr.ph ], [ %.sroa.5.2, %_ZN7cxxopts11ParseResult8IteratorppEv.exit ] ; 5 uses
  %i.bvq = load ptr, ptr %.sroa.5.02288, align 8, !tbaa !15
  %i.bvr = getelementptr inbounds nuw i8, ptr %.sroa.5.02288, i64 8
  %i.bvs = load i64, ptr %i.bvr, align 8, !tbaa !18
  %i.bvt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.bvq, i64 noundef %i.bvs)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1450 unwind label %.loopexit2237 ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1450: ; preds = %bb.op
  %i.bvu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bvt, ptr noundef nonnull @.str.55, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit2237 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1450
  %i.bvv = getelementptr inbounds nuw i8, ptr %.sroa.5.02288, i64 32
  %i.bvw = load ptr, ptr %i.bvv, align 8, !tbaa !15
  %i.bvx = getelementptr inbounds nuw i8, ptr %.sroa.5.02288, i64 40
  %i.bvy = load i64, ptr %i.bvx, align 8, !tbaa !18
  %i.bvz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bvt, ptr noundef %i.bvw, i64 noundef %i.bvy)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1453 unwind label %.loopexit2237 ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1453: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bwa = load ptr, ptr %i.bvz, align 8, !tbaa !93
  %i.bwb = getelementptr i8, ptr %i.bwa, i64 -24
  %i.bwc = load i64, ptr %i.bwb, align 8
  %i.bwd = getelementptr inbounds i8, ptr %i.bvz, i64 %i.bwc
  %i.bwe = getelementptr inbounds nuw i8, ptr %i.bwd, i64 240
  %i.bwf = load ptr, ptr %i.bwe, align 8, !tbaa !241 ; 6 uses
  %.not.i.i.i1905 = icmp eq ptr %i.bwf, null
  br i1 %.not.i.i.i1905, label %bb.oq, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1906

bb.oq:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1453
  invoke void @_ZSt16__throw_bad_castv() #29
          to label %.noexc1910 unwind label %.loopexit.split-lp2238

.noexc1910:                                       ; preds = %bb.oq
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1906: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1453
  %i.bwg = getelementptr inbounds nuw i8, ptr %i.bwf, i64 56
  %i.bwh = load i8, ptr %i.bwg, align 8, !tbaa !256
  %.not.i1.i.i1907 = icmp eq i8 %i.bwh, 0
  br i1 %.not.i1.i.i1907, label %bb.os, label %bb.or

bb.or:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1906
  %i.bwi = getelementptr inbounds nuw i8, ptr %i.bwf, i64 67
  %i.bwj = load i8, ptr %i.bwi, align 1, !tbaa !17
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1908

bb.os:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1906
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bwf)
          to label %.noexc1911 unwind label %.loopexit2237

.noexc1911:                                       ; preds = %bb.os
  %i.bwk = load ptr, ptr %i.bwf, align 8, !tbaa !93
  %i.bwl = getelementptr inbounds nuw i8, ptr %i.bwk, i64 48
  %i.bwm = load ptr, ptr %i.bwl, align 8
  %i.bwn = invoke noundef signext i8 %i.bwm(ptr noundef nonnull align 8 dereferenceable(570) %i.bwf, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1908 unwind label %.loopexit2237, !inline_history !262

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
  %i.bws = load ptr, ptr %i.buy, align 8, !tbaa !264
  %i.bwt = icmp ne ptr %i.bwq, %i.bws             ; 2 uses
  %i.bwu = load ptr, ptr %i.bvb, align 8
  %spec.select = select i1 %i.bwt, ptr %i.bwq, ptr %i.bwu
  %spec.select2304 = zext i1 %i.bwt to i8
  br label %_ZN7cxxopts11ParseResult8IteratorppEv.exit

_ZN7cxxopts11ParseResult8IteratorppEv.exit:       ; preds = %bb.ot, %_ZNSolsEPFRSoS_E.exit1455
  %.sroa.5.2 = phi ptr [ %i.bwq, %_ZNSolsEPFRSoS_E.exit1455 ], [ %spec.select, %bb.ot ] ; 2 uses
  %.sroa.12.2 = phi i8 [ 0, %_ZNSolsEPFRSoS_E.exit1455 ], [ %spec.select2304, %bb.ot ] ; 2 uses
  %185 = icmp ne i8 %.sroa.12.2, 0
  %i.bwv = icmp ne ptr %.sroa.5.2, %i.bve
  %.not3.i = select i1 %185, i1 true, i1 %i.bwv
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
  %i.bww = load ptr, ptr %165, align 8, !tbaa !15
  %i.bwx = getelementptr inbounds nuw i8, ptr %165, i64 8
  %i.bwy = load i64, ptr %i.bwx, align 8, !tbaa !18
  %i.bwz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.bww, i64 noundef %i.bwy)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1457 unwind label %bb.pa ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1457: ; preds = %bb.ov
  %i.bxa = load ptr, ptr %i.bwz, align 8, !tbaa !93
  %i.bxb = getelementptr i8, ptr %i.bxa, i64 -24
  %i.bxc = load i64, ptr %i.bxb, align 8
  %i.bxd = getelementptr inbounds i8, ptr %i.bwz, i64 %i.bxc
  %i.bxe = getelementptr inbounds nuw i8, ptr %i.bxd, i64 240
  %i.bxf = load ptr, ptr %i.bxe, align 8, !tbaa !241 ; 6 uses
  %.not.i.i.i1916 = icmp eq ptr %i.bxf, null
  br i1 %.not.i.i.i1916, label %bb.ow, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1917

bb.ow:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1457
  invoke void @_ZSt16__throw_bad_castv() #29
          to label %.noexc1921 unwind label %bb.pa

.noexc1921:                                       ; preds = %bb.ow
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1917: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1457
  %i.bxg = getelementptr inbounds nuw i8, ptr %i.bxf, i64 56
  %i.bxh = load i8, ptr %i.bxg, align 8, !tbaa !256
  %.not.i1.i.i1918 = icmp eq i8 %i.bxh, 0
  br i1 %.not.i1.i.i1918, label %bb.oy, label %bb.ox

bb.ox:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1917
  %i.bxi = getelementptr inbounds nuw i8, ptr %i.bxf, i64 67
  %i.bxj = load i8, ptr %i.bxi, align 1, !tbaa !17
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1919

bb.oy:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1917
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bxf)
          to label %.noexc1922 unwind label %bb.pa

.noexc1922:                                       ; preds = %bb.oy
  %i.bxk = load ptr, ptr %i.bxf, align 8, !tbaa !93
  %i.bxl = getelementptr inbounds nuw i8, ptr %i.bxk, i64 48
  %i.bxm = load ptr, ptr %i.bxl, align 8
  %i.bxn = invoke noundef signext i8 %i.bxm(ptr noundef nonnull align 8 dereferenceable(570) %i.bxf, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1919 unwind label %bb.pa, !inline_history !262

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1919: ; preds = %.noexc1922, %bb.ox
  %.0.i.i.i1920 = phi i8 [ %i.bxj, %bb.ox ], [ %i.bxn, %.noexc1922 ]
  %i.bxo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.bwz, i8 noundef signext %.0.i.i.i1920)
          to label %.noexc1924 unwind label %bb.pa

.noexc1924:                                       ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1919
  %i.bxp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bxo)
          to label %_ZNSolsEPFRSoS_E.exit1459 unwind label %bb.pa ; 0 uses

_ZNSolsEPFRSoS_E.exit1459:                        ; preds = %.noexc1924
  %i.bxq = load ptr, ptr %165, align 8, !tbaa !15 ; 2 uses
  %i.bxr = getelementptr inbounds nuw i8, ptr %165, i64 16 ; 2 uses
  %i.bxs = icmp eq ptr %i.bxq, %i.bxr
  br i1 %i.bxs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1462, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1460

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1460: ; preds = %_ZNSolsEPFRSoS_E.exit1459
  %i.bxt = load i64, ptr %i.bxr, align 8, !tbaa !17
  %i.bxu = add i64 %i.bxt, 1
  call void @_ZdlPvm(ptr noundef %i.bxq, i64 noundef %i.bxu) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1462

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1462: ; preds = %_ZNSolsEPFRSoS_E.exit1459, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1460
  call void @llvm.lifetime.end.p0(ptr nonnull %165) #30
  br label %.loopexit2236

bb.oz:                                            ; preds = %bb.ou
  %i.bxv = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7cxxopts10exceptions9exceptionE
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1465

bb.pa:                                            ; preds = %.noexc1924, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1919, %.noexc1922, %bb.oy, %bb.ow, %bb.ov
  %i.bxw = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7cxxopts10exceptions9exceptionE ; 2 uses
  %i.bxx = load ptr, ptr %165, align 8, !tbaa !15 ; 2 uses
  %i.bxy = getelementptr inbounds nuw i8, ptr %165, i64 16 ; 2 uses
  %i.bxz = icmp eq ptr %i.bxx, %i.bxy
  br i1 %i.bxz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1465, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1463

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1463: ; preds = %bb.pa
  %i.bya = load i64, ptr %i.bxy, align 8, !tbaa !17
  %i.byb = add i64 %i.bya, 1
  call void @_ZdlPvm(ptr noundef %i.bxx, i64 noundef %i.byb) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1465

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1465: ; preds = %bb.pa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1463, %bb.oz
  %.pn390 = phi { ptr, i32 } [ %i.bxv, %bb.oz ], [ %i.bxw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1463 ], [ %i.bxw, %bb.pa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %165) #30
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit1865

bb.pb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1420
  %i.byc = load i8, ptr %i.o, align 1, !tbaa !52, !range !208, !noundef !209
  %i.byd = trunc nuw i8 %i.byc to i1
  br i1 %i.byd, label %bb.pc, label %._crit_edge.i.i1498

bb.pc:                                            ; preds = %bb.pb
  %i.bye = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.56, i64 noundef 19)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1467 unwind label %bb.po ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1467: ; preds = %bb.pc
  call void @llvm.lifetime.start.p0(ptr nonnull %166) #30
  %i.byf = getelementptr inbounds nuw i8, ptr %166, i64 16 ; 6 uses
  store ptr %i.byf, ptr %166, align 8, !tbaa !9
  store i8 97, ptr %i.byf, align 8, !tbaa !17
  %i.byg = getelementptr inbounds nuw i8, ptr %166, i64 8
  store i64 1, ptr %i.byg, align 8, !tbaa !18
  %i.byh = getelementptr inbounds nuw i8, ptr %166, i64 17
  store i8 0, ptr %i.byh, align 1, !tbaa !17
  %i.byi = invoke ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(184) %158, ptr noundef nonnull align 8 dereferenceable(32) %166)
          to label %.noexc1485 unwind label %bb.pp ; 2 uses

.noexc1485:                                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1467
  %i.byj = icmp eq ptr %i.byi, null
  br i1 %i.byj, label %_ZNK7cxxopts11ParseResult5countERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit1486, label %bb.pd

bb.pd:                                            ; preds = %.noexc1485
  %i.byk = getelementptr inbounds nuw i8, ptr %i.byi, i64 40
  %i.byl = getelementptr inbounds nuw i8, ptr %158, i64 80
  %i.bym = load i64, ptr %i.byl, align 8, !tbaa !229
  %.not.not.i.i.i1472 = icmp eq i64 %i.bym, 0
  %i.byn = load i64, ptr %i.byk, align 8          ; 4 uses
  br i1 %.not.not.i.i.i1472, label %bb.pe, label %bb.ph

bb.pe:                                            ; preds = %bb.pd
  %i.byo = getelementptr inbounds nuw i8, ptr %158, i64 72
  br label %bb.pf

bb.pf:                                            ; preds = %bb.pg, %bb.pe
  %.sroa.06.0.in.i.i.i1482 = phi ptr [ %i.byo, %bb.pe ], [ %.sroa.06.0.i.i.i1483, %bb.pg ]
  %.sroa.06.0.i.i.i1483 = load ptr, ptr %.sroa.06.0.in.i.i.i1482, align 8, !tbaa !230 ; 4 uses
  %.not.i.i.i1484 = icmp eq ptr %.sroa.06.0.i.i.i1483, null
  br i1 %.not.i.i.i1484, label %_ZNK7cxxopts11ParseResult5countERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit1486, label %bb.pg

bb.pg:                                            ; preds = %bb.pf
  %i.byp = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i1483, i64 8
  %i.byq = load i64, ptr %i.byp, align 8, !tbaa !13
  %i.byr = icmp eq i64 %i.byn, %i.byq
  br i1 %i.byr, label %_ZNKSt13unordered_mapImN7cxxopts11OptionValueESt4hashImESt8equal_toImESaISt4pairIKmS1_EEE4findERS7_.exit.i1480, label %bb.pf, !llvm.loop !231

bb.ph:                                            ; preds = %bb.pd
  %i.bys = getelementptr inbounds nuw i8, ptr %158, i64 56
  %i.byt = getelementptr inbounds nuw i8, ptr %158, i64 64
  %i.byu = load i64, ptr %i.byt, align 8, !tbaa !225 ; 2 uses
  %i.byv = urem i64 %i.byn, %i.byu                ; 2 uses
  %i.byw = load ptr, ptr %i.bys, align 8, !tbaa !224
  %i.byx = getelementptr inbounds nuw [8 x i8], ptr %i.byw, i64 %i.byv
  %i.byy = load ptr, ptr %i.byx, align 8, !tbaa !233 ; 2 uses
  %.not.i.i.i.i.i1473 = icmp eq ptr %i.byy, null
  br i1 %.not.i.i.i.i.i1473, label %_ZNK7cxxopts11ParseResult5countERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit1486, label %bb.pi

bb.pi:                                            ; preds = %bb.ph
  %i.byz = load ptr, ptr %i.byy, align 8, !tbaa !230 ; 3 uses
  %i.bza = getelementptr inbounds nuw i8, ptr %i.byz, i64 8
  %i.bzb = load i64, ptr %i.bza, align 8, !tbaa !13
  %i.bzc = icmp eq i64 %i.byn, %i.bzb
  br i1 %i.bzc, label %_ZNKSt13unordered_mapImN7cxxopts11OptionValueESt4hashImESt8equal_toImESaISt4pairIKmS1_EEE4findERS7_.exit.i1480, label %.lr.ph.i.i.i.i.i1474

bb.pj:                                            ; preds = %bb.pk
  %i.bzd = icmp eq i64 %i.byn, %i.bzg
  br i1 %i.bzd, label %_ZNKSt13unordered_mapImN7cxxopts11OptionValueESt4hashImESt8equal_toImESaISt4pairIKmS1_EEE4findERS7_.exit.i1480, label %.lr.ph.i.i.i.i.i1474, !llvm.loop !234

.lr.ph.i.i.i.i.i1474:                             ; preds = %bb.pi, %bb.pj
  %.020.i.i.i.i.i1475 = phi ptr [ %i.bze, %bb.pj ], [ %i.byz, %bb.pi ]
  %i.bze = load ptr, ptr %.020.i.i.i.i.i1475, align 8, !tbaa !230 ; 4 uses
  %.not18.i.i.i.i.i1476 = icmp eq ptr %i.bze, null
  br i1 %.not18.i.i.i.i.i1476, label %_ZNK7cxxopts11ParseResult5countERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit1486, label %bb.pk

bb.pk:                                            ; preds = %.lr.ph.i.i.i.i.i1474
  %i.bzf = getelementptr inbounds nuw i8, ptr %i.bze, i64 8
  %i.bzg = load i64, ptr %i.bzf, align 8, !tbaa !13 ; 2 uses
  %i.bzh = urem i64 %i.bzg, %i.byu
  %.not19.i.i.i.i.i1477 = icmp eq i64 %i.bzh, %i.byv
end_hunk_0
begin_hunk_1_@_ZNSt8__detail8_ScannerIcE17_M_eat_escape_awkEv:bb.a
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !598
  %i.ba = and i16 %i.az, 2048
  %i.bb = icmp eq i16 %i.ba, 0
  %i.bc = and i8 %i.au, -2
  %switch = icmp eq i8 %i.bc, 56
  %or.cond = or i1 %switch, %i.bb
  br i1 %or.cond, label %.critedge, label %bb.h

.critedge:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.1, %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit, %bb.g, %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 2, ptr %i.bd, align 8, !tbaa !515
  br label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.be = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  store ptr %i.be, ptr %i.a, align 8, !tbaa !516
  %i.bf = load i8, ptr %i.ar, align 1, !tbaa !17
  %i.bg = load i64, ptr %i.am, align 8, !tbaa !18 ; 4 uses
  %i.bh = add i64 %i.bg, 1                        ; 3 uses
  %i.bi = load ptr, ptr %i.al, align 8, !tbaa !15 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.aq
  br i1 %i.bj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.h
  %i.bk = icmp ult i64 %i.bg, 16
  tail call void @llvm.assume(i1 %i.bk)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.h
  %i.bl = load i64, ptr %i.aq, align 8, !tbaa !17
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.bm = phi i64 [ %i.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.bn = icmp ugt i64 %i.bh, %i.bm
  br i1 %i.bn, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.al, i64 noundef %i.bg, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i = load ptr, ptr %i.al, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %bb.i
  %i.bo = phi ptr [ %.pre.i.i, %bb.i ], [ %i.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bg
  store i8 %i.bf, ptr %i.bp, align 1, !tbaa !17
  store i64 %i.bh, ptr %i.am, align 8, !tbaa !18
  %i.bq = load ptr, ptr %i.al, align 8, !tbaa !15
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bh
  store i8 0, ptr %i.br, align 1, !tbaa !17
  %i.bs = load ptr, ptr %i.a, align 8, !tbaa !516 ; 4 uses
  %i.bt = load ptr, ptr %i.ap, align 8, !tbaa !517
  %.not17.1 = icmp eq ptr %i.bs, %i.bt
  br i1 %.not17.1, label %.critedge, label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit
  %i.bu = load ptr, ptr %i.e, align 8, !tbaa !594, !nonnull !209, !align !306
  %i.bv = load i8, ptr %i.bs, align 1, !tbaa !17  ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !597
  %i.by = zext i8 %i.bv to i64
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %i.by
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !598
  %i.cb = and i16 %i.ca, 2048
  %i.cc = icmp eq i16 %i.cb, 0
  %i.cd = and i8 %i.bv, -2
  %switch.1 = icmp eq i8 %i.cd, 56
  %or.cond.1 = or i1 %switch.1, %i.cc
  br i1 %or.cond.1, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bs, i64 1
  store ptr %i.ce, ptr %i.a, align 8, !tbaa !516
  %i.cf = load i8, ptr %i.bs, align 1, !tbaa !17
  %i.cg = load i64, ptr %i.am, align 8, !tbaa !18 ; 4 uses
  %i.ch = add i64 %i.cg, 1                        ; 3 uses
  %i.ci = load ptr, ptr %i.al, align 8, !tbaa !15 ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.aq
  br i1 %i.cj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1: ; preds = %bb.k
  %i.ck = load i64, ptr %i.aq, align 8, !tbaa !17
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.1: ; preds = %bb.k
  %i.cl = icmp ult i64 %i.cg, 16
  tail call void @llvm.assume(i1 %i.cl)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.1: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1
  %i.cm = phi i64 [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.1 ]
  %i.cn = icmp ugt i64 %i.ch, %i.cm
  br i1 %i.cn, label %bb.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.1

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.al, i64 noundef %i.cg, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i.1 = load ptr, ptr %i.al, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.1: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.1
  %i.co = phi ptr [ %.pre.i.i.1, %bb.l ], [ %i.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.1 ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cg
  store i8 %i.cf, ptr %i.cp, align 1, !tbaa !17
  store i64 %i.ch, ptr %i.am, align 8, !tbaa !18
  %i.cq = load ptr, ptr %i.al, align 8, !tbaa !15
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.ch
  store i8 0, ptr %i.cr, align 1, !tbaa !17
  br label %.critedge

bb.m:                                             ; preds = %.loopexit
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeE(i32 noundef 2) #29
  unreachable

bb.n:                                             ; preds = %bb.e, %.critedge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 11 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !516  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store ptr %i.c, ptr %i.a, align 8, !tbaa !516
  %i.d = load i8, ptr %i.b, align 1, !tbaa !17    ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !592
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !594, !nonnull !209, !align !306 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 313
  %i.j = zext i8 %i.d to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !17    ; 2 uses
  %.not.i = icmp eq i8 %i.l, 0
  br i1 %.not.i, label %bb.b, label %_ZNKSt5ctypeIcE6narrowEcc.exit

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !93
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef signext i8 %i.o(ptr noundef nonnull align 8 dereferenceable(570) %i.h, i8 noundef signext %i.d, i8 noundef signext 32), !inline_history !595 ; 3 uses
  %.not11.i = icmp eq i8 %i.p, 32
  br i1 %.not11.i, label %_ZNKSt5ctypeIcE6narrowEcc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 %i.p, ptr %i.k, align 1, !tbaa !17
  br label %_ZNKSt5ctypeIcE6narrowEcc.exit

_ZNKSt5ctypeIcE6narrowEcc.exit:                   ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i8 [ %i.l, %bb.a ], [ %i.p, %bb.c ], [ 32, %bb.b ]
  %i.q = sext i8 %.0.i to i32
  %i.r = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.f, i32 noundef %i.q) #30
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNKSt5ctypeIcE6narrowEcc.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 1, ptr %i.t, align 8, !tbaa !515
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.w = load i64, ptr %i.v, align 8, !tbaa !18
  %i.x = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 noundef 0, i64 noundef %i.w, i64 noundef 1, i8 noundef signext %i.d) ; 0 uses
  br label %.critedge

bb.e:                                             ; preds = %_ZNKSt5ctypeIcE6narrowEcc.exit
  %i.y = icmp eq i8 %i.d, 92
  br i1 %i.y, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !516  ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !517
  %i.ac = icmp eq ptr %i.z, %i.ab
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 2, ptr noundef nonnull @.str.92) #29
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !542
  %i.af = and i32 %i.ae, 288
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = load i8, ptr %i.z, align 1, !tbaa !17
  switch i8 %i.ag, label %bb.j [
    i8 40, label %bb.n
    i8 41, label %bb.n
    i8 123, label %bb.n
  ]

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.unpack = load i64, ptr %i.ah, align 8, !tbaa !543 ; 3 uses
  %.elt34 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.unpack35 = load i64, ptr %.elt34, align 8, !tbaa !543
  %i.ai = getelementptr inbounds i8, ptr %0, i64 %.unpack35 ; 2 uses
  %1 = and i64 %.unpack, 1
  %.not36 = icmp eq i64 %1, 0
  br i1 %.not36, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !93
  %i.ak = getelementptr i8, ptr %i.aj, i64 %.unpack
  %i.al = getelementptr i8, ptr %i.ak, i64 -1
  %i.am = load ptr, ptr %i.al, align 8, !nosanitize !209
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.an = inttoptr i64 %.unpack to ptr
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ao = phi ptr [ %i.am, %bb.k ], [ %i.an, %bb.l ]
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(248) %i.ai)
  br label %.critedge

bb.n:                                             ; preds = %bb.i, %bb.i, %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  store ptr %i.ap, ptr %i.a, align 8, !tbaa !516
  %i.aq = load i8, ptr %i.z, align 1, !tbaa !17
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.e
  %.022 = phi i8 [ %i.aq, %bb.n ], [ %i.d, %bb.e ] ; 5 uses
  switch i8 %.022, label %bb.ak [
    i8 40, label %bb.p
    i8 41, label %bb.ab
    i8 91, label %bb.ac
    i8 123, label %bb.ag
    i8 0, label %bb.ah
  ], !prof !602

bb.p:                                             ; preds = %bb.o
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !542 ; 2 uses
  %i.at = and i32 %i.as, 16
  %.not42 = icmp eq i32 %i.at, 0
  br i1 %.not42, label %bb.y, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.au = load ptr, ptr %i.a, align 8, !tbaa !516 ; 5 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !17
  %i.aw = icmp eq i8 %i.av, 63
  br i1 %i.aw, label %bb.r, label %bb.y

bb.r:                                             ; preds = %bb.q
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 1 ; 3 uses
  store ptr %i.ax, ptr %i.a, align 8, !tbaa !516
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !517
  %i.ba = icmp eq ptr %i.ax, %i.az
  br i1 %i.ba, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeE(i32 noundef 5) #29
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.bb = load i8, ptr %i.ax, align 1, !tbaa !17
  switch i8 %i.bb, label %bb.x [
    i8 58, label %bb.u
    i8 61, label %bb.v
    i8 33, label %bb.w
  ]

bb.u:                                             ; preds = %bb.t
  %i.bc = getelementptr inbounds nuw i8, ptr %i.au, i64 2
  store ptr %i.bc, ptr %i.a, align 8, !tbaa !516
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 6, ptr %i.bd, align 8, !tbaa !515
  br label %.critedge

bb.v:                                             ; preds = %bb.t
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 2
  store ptr %i.be, ptr %i.a, align 8, !tbaa !516
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 7, ptr %i.bf, align 8, !tbaa !515
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !18
  %i.bj = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %i.bg, i64 noundef 0, i64 noundef %i.bi, i64 noundef 1, i8 noundef signext 112) ; 0 uses
  br label %.critedge

bb.w:                                             ; preds = %bb.t
  %i.bk = getelementptr inbounds nuw i8, ptr %i.au, i64 2
  store ptr %i.bk, ptr %i.a, align 8, !tbaa !516
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 7, ptr %i.bl, align 8, !tbaa !515
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !18
  %i.bp = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %i.bm, i64 noundef 0, i64 noundef %i.bo, i64 noundef 1, i8 noundef signext 110) ; 0 uses
  br label %.critedge

bb.x:                                             ; preds = %bb.t
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 5, ptr noundef nonnull @.str.93) #29
  unreachable

bb.y:                                             ; preds = %bb.q, %bb.p
  %i.bq = and i32 %i.as, 2
  %.not33 = icmp eq i32 %i.bq, 0
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  br i1 %.not33, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i32 6, ptr %i.br, align 8, !tbaa !515
  br label %.critedge

bb.aa:                                            ; preds = %bb.y
  store i32 5, ptr %i.br, align 8, !tbaa !515
  br label %.critedge

bb.ab:                                            ; preds = %bb.o
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 8, ptr %i.bs, align 8, !tbaa !515
  br label %.critedge

bb.ac:                                            ; preds = %bb.o
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 2, ptr %i.bt, align 8, !tbaa !518
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i8 1, ptr %i.bu, align 8, !tbaa !593
  %i.bv = load ptr, ptr %i.a, align 8, !tbaa !516 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !517
  %.not32 = icmp eq ptr %i.bv, %i.bx
  br i1 %.not32, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.by = load i8, ptr %i.bv, align 1, !tbaa !17
  %i.bz = icmp eq i8 %i.by, 94
  br i1 %i.bz, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 10, ptr %i.ca, align 8, !tbaa !515
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  store ptr %i.cb, ptr %i.a, align 8, !tbaa !516
  br label %.critedge

bb.af:                                            ; preds = %bb.ad, %bb.ac
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 9, ptr %i.cc, align 8, !tbaa !515
  br label %.critedge

bb.ag:                                            ; preds = %bb.o
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 1, ptr %i.cd, align 8, !tbaa !518
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 12, ptr %i.ce, align 8, !tbaa !515
  br label %.critedge

bb.ah:                                            ; preds = %bb.o
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !542
  %i.ch = and i32 %i.cg, 16
  %.not41 = icmp eq i32 %i.ch, 0
  br i1 %.not41, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeE(i32 noundef 13) #29
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 1, ptr %i.ci, align 8, !tbaa !515
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !18
  %i.cm = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %i.cj, i64 noundef 0, i64 noundef %i.cl, i64 noundef 1, i8 noundef signext 0) ; 0 uses
  br label %.critedge

bb.ak:                                            ; preds = %bb.o
  %i.cn = and i8 %.022, -33
  %or.cond.not = icmp eq i8 %i.cn, 93
  br i1 %or.cond.not, label %bb.aq, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.co = load ptr, ptr %i.g, align 8, !tbaa !594, !nonnull !209, !align !306 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 313
  %i.cq = zext i8 %.022 to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cq ; 2 uses
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !17  ; 2 uses
  %.not.i37 = icmp eq i8 %i.cs, 0
  br i1 %.not.i37, label %bb.am, label %_ZNKSt5ctypeIcE6narrowEcc.exit40

bb.am:                                            ; preds = %bb.al
  %i.ct = load ptr, ptr %i.co, align 8, !tbaa !93
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 64
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = tail call noundef signext i8 %i.cv(ptr noundef nonnull align 8 dereferenceable(570) %i.co, i8 noundef signext %.022, i8 noundef signext 0), !inline_history !595 ; 3 uses
  %.not11.i39 = icmp eq i8 %i.cw, 0
  br i1 %.not11.i39, label %_ZNKSt5ctypeIcE6narrowEcc.exit40, label %bb.an

bb.an:                                            ; preds = %bb.am
  store i8 %i.cw, ptr %i.cr, align 1, !tbaa !17
  br label %_ZNKSt5ctypeIcE6narrowEcc.exit40

_ZNKSt5ctypeIcE6narrowEcc.exit40:                 ; preds = %bb.al, %bb.am, %bb.an
  %.0.i38 = phi i8 [ %i.cs, %bb.al ], [ %i.cw, %bb.an ], [ 0, %bb.am ]
  %i.cx = load i8, ptr %0, align 8, !tbaa !582    ; 2 uses
  %.not3144 = icmp eq i8 %i.cx, 0
  br i1 %.not3144, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNKSt5ctypeIcE6narrowEcc.exit40, %bb.ap
  %i.cy = phi i8 [ %i.de, %bb.ap ], [ %i.cx, %_ZNKSt5ctypeIcE6narrowEcc.exit40 ]
  %.045 = phi ptr [ %i.dd, %bb.ap ], [ %0, %_ZNKSt5ctypeIcE6narrowEcc.exit40 ] ; 2 uses
  %i.cz = icmp eq i8 %i.cy, %.0.i38
  br i1 %i.cz, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.lr.ph
  %i.da = getelementptr inbounds nuw i8, ptr %.045, i64 4
  %i.db = load i32, ptr %i.da, align 4, !tbaa !584
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 %i.db, ptr %i.dc, align 8, !tbaa !515
  br label %.critedge

bb.ap:                                            ; preds = %.lr.ph
  %i.dd = getelementptr inbounds nuw i8, ptr %.045, i64 8 ; 2 uses
  %i.de = load i8, ptr %i.dd, align 4, !tbaa !582 ; 2 uses
  %.not31 = icmp eq i8 %i.de, 0
  br i1 %.not31, label %.critedge, label %.lr.ph, !llvm.loop !603

bb.aq:                                            ; preds = %bb.ak
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 1, ptr %i.df, align 8, !tbaa !515
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !18
  %i.dj = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %i.dg, i64 noundef 0, i64 noundef %i.di, i64 noundef 1, i8 noundef signext %.022) ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.ap, %_ZNKSt5ctypeIcE6narrowEcc.exit40, %bb.ao, %bb.z, %bb.aa, %bb.u, %bb.w, %bb.v, %bb.af, %bb.ae, %bb.aj, %bb.aq, %bb.ag, %bb.ab, %bb.m, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !516  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !517  ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeE(i32 noundef 4) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 6 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !516
  %i.g = load i8, ptr %i.b, align 1, !tbaa !17    ; 2 uses
  switch i8 %i.g, label %bb.s [
    i8 45, label %bb.d
    i8 91, label %bb.e
    i8 93, label %bb.l
    i8 92, label %bb.n
  ]

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 28, ptr %i.h, align 8, !tbaa !515
  br label %bb.t

bb.e:                                             ; preds = %bb.c
  %i.i = icmp eq ptr %i.f, %i.d
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 4, ptr noundef nonnull @.str.94) #29
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.j = load i8, ptr %i.f, align 1, !tbaa !17
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  switch i8 %i.j, label %bb.k [
    i8 46, label %bb.h
    i8 58, label %bb.i
    i8 61, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  store i32 16, ptr %i.k, align 8, !tbaa !515
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store ptr %i.l, ptr %i.a, align 8, !tbaa !516
  %i.m = load i8, ptr %i.f, align 1, !tbaa !17
  tail call void @_ZNSt8__detail8_ScannerIcE12_M_eat_classEc(ptr noundef nonnull align 8 dereferenceable(248) %0, i8 noundef signext %i.m)
  br label %bb.t

bb.i:                                             ; preds = %bb.g
  store i32 15, ptr %i.k, align 8, !tbaa !515
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store ptr %i.n, ptr %i.a, align 8, !tbaa !516
  %i.o = load i8, ptr %i.f, align 1, !tbaa !17
  tail call void @_ZNSt8__detail8_ScannerIcE12_M_eat_classEc(ptr noundef nonnull align 8 dereferenceable(248) %0, i8 noundef signext %i.o)
  br label %bb.t

bb.j:                                             ; preds = %bb.g
  store i32 17, ptr %i.k, align 8, !tbaa !515
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store ptr %i.p, ptr %i.a, align 8, !tbaa !516
  %i.q = load i8, ptr %i.f, align 1, !tbaa !17
  tail call void @_ZNSt8__detail8_ScannerIcE12_M_eat_classEc(ptr noundef nonnull align 8 dereferenceable(248) %0, i8 noundef signext %i.q)
  br label %bb.t

bb.k:                                             ; preds = %bb.g
  store i32 1, ptr %i.k, align 8, !tbaa !515
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.t = load i64, ptr %i.s, align 8, !tbaa !18
  %i.u = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 noundef 0, i64 noundef %i.t, i64 noundef 1, i8 noundef signext 91) ; 0 uses
  br label %bb.t

bb.l:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.w = load i32, ptr %i.v, align 4, !tbaa !542
  %i.x = and i32 %i.w, 16
  %i.y = icmp eq i32 %i.x, 0
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.aa = load i8, ptr %i.z, align 8, !range !208
  %i.ab = trunc nuw i8 %i.aa to i1
  %or.cond = select i1 %i.y, i1 %i.ab, i1 false
  br i1 %or.cond, label %bb.s, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 11, ptr %i.ac, align 8, !tbaa !515
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 0, ptr %i.ad, align 8, !tbaa !518
  br label %bb.t

bb.n:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !542
  %i.ag = and i32 %i.af, 144
  %or.cond14.not = icmp eq i32 %i.ag, 0
  br i1 %or.cond14.not, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.unpack = load i64, ptr %i.ah, align 8, !tbaa !543 ; 3 uses
  %.elt9 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.unpack10 = load i64, ptr %.elt9, align 8, !tbaa !543
  %i.ai = getelementptr inbounds i8, ptr %0, i64 %.unpack10 ; 2 uses
  %1 = and i64 %.unpack, 1
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !93
  %i.ak = getelementptr i8, ptr %i.aj, i64 %.unpack
  %i.al = getelementptr i8, ptr %i.ak, i64 -1
  %i.am = load ptr, ptr %i.al, align 8, !nosanitize !209
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.an = inttoptr i64 %.unpack to ptr
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ao = phi ptr [ %i.am, %bb.p ], [ %i.an, %bb.q ]
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(248) %i.ai)
  br label %bb.t

bb.s:                                             ; preds = %bb.n, %bb.l, %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 1, ptr %i.ap, align 8, !tbaa !515
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !18
  %i.at = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %i.aq, i64 noundef 0, i64 noundef %i.as, i64 noundef 1, i8 noundef signext %i.g) ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.i, %bb.k, %bb.j, %bb.h, %bb.r, %bb.s, %bb.m, %bb.d
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i8 0, ptr %i.au, align 8, !tbaa !593
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !516  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !517  ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeE(i32 noundef 6) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 3 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !516
  %i.g = load i8, ptr %i.b, align 1, !tbaa !17    ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !594, !nonnull !209, !align !306
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !597
  %i.l = zext i8 %i.g to i64
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.l
  %i.n = load i16, ptr %i.m, align 2, !tbaa !598
  %i.o = and i16 %i.n, 2048
  %.not9 = icmp eq i16 %i.o, 0
  br i1 %.not9, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 26, ptr %i.p, align 8, !tbaa !515
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !18
  %i.t = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 noundef 0, i64 noundef %i.s, i64 noundef 1, i8 noundef signext %i.g) ; 0 uses
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !516  ; 2 uses
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !517
  %.not812 = icmp eq ptr %i.u, %i.v
  br i1 %.not812, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit
  %i.x = phi ptr [ %i.u, %.lr.ph ], [ %i.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit ] ; 3 uses
  %i.y = load ptr, ptr %i.h, align 8, !tbaa !594, !nonnull !209, !align !306
  %i.z = load i8, ptr %i.x, align 1, !tbaa !17
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !597
  %i.ac = zext i8 %i.z to i64
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.ac
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !598
  %i.af = and i16 %i.ae, 2048
  %.not11 = icmp eq i16 %i.af, 0
  br i1 %.not11, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !516
  %i.ah = load i8, ptr %i.x, align 1, !tbaa !17
  %i.ai = load i64, ptr %i.r, align 8, !tbaa !18  ; 4 uses
  %i.aj = add i64 %i.ai, 1                        ; 3 uses
  %i.ak = load ptr, ptr %i.q, align 8, !tbaa !15  ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.w
  br i1 %i.al, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.f
  %i.am = icmp ult i64 %i.ai, 16
  tail call void @llvm.assume(i1 %i.am)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  %i.an = load i64, ptr %i.w, align 8, !tbaa !17
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.ao = phi i64 [ %i.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.ap = icmp ugt i64 %i.aj, %i.ao
  br i1 %i.ap, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 noundef %i.ai, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i = load ptr, ptr %i.q, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %bb.g
  %i.aq = phi ptr [ %.pre.i.i, %bb.g ], [ %i.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ai
  store i8 %i.ah, ptr %i.ar, align 1, !tbaa !17
  store i64 %i.aj, ptr %i.r, align 8, !tbaa !18
  %i.as = load ptr, ptr %i.q, align 8, !tbaa !15
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aj
  store i8 0, ptr %i.at, align 1, !tbaa !17
  %i.au = load ptr, ptr %i.a, align 8, !tbaa !516 ; 2 uses
  %i.av = load ptr, ptr %i.c, align 8, !tbaa !517
  %.not8 = icmp eq ptr %i.au, %i.av
  br i1 %.not8, label %.critedge, label %bb.e, !llvm.loop !604

bb.h:                                             ; preds = %bb.c
  %i.aw = icmp eq i8 %i.g, 44
  br i1 %i.aw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 25, ptr %i.ax, align 8, !tbaa !515
  br label %.critedge

bb.j:                                             ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !542
  %i.ba = and i32 %i.az, 288
  %.not10 = icmp eq i32 %i.ba, 0
  br i1 %.not10, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = icmp ne i8 %i.g, 92
  %.not = icmp eq ptr %i.f, %i.d
  %or.cond = select i1 %i.bb, i1 true, i1 %.not
  br i1 %or.cond, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = load i8, ptr %i.f, align 1, !tbaa !17
  %i.bd = icmp eq i8 %i.bc, 125
  br i1 %i.bd, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 0, ptr %i.be, align 8, !tbaa !518
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 13, ptr %i.bf, align 8, !tbaa !515
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store ptr %i.bg, ptr %i.a, align 8, !tbaa !516
  br label %.critedge

bb.n:                                             ; preds = %bb.l, %bb.k
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeE(i32 noundef 7) #29
  unreachable

bb.o:                                             ; preds = %bb.j
  %i.bh = icmp eq i8 %i.g, 125
  br i1 %i.bh, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 0, ptr %i.bi, align 8, !tbaa !518
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 13, ptr %i.bj, align 8, !tbaa !515
  br label %.critedge

bb.q:                                             ; preds = %bb.o
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeE(i32 noundef 7) #29
  unreachable

.critedge:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit, %bb.e, %bb.d, %bb.i, %bb.p, %bb.m
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail8_ScannerIcE12_M_eat_classEc(ptr noundef nonnull align 8 dereferenceable(248) %0, i8 noundef signext %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  store i64 0, ptr %i.b, align 8, !tbaa !18
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !15
  store i8 0, ptr %i.c, align 1, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 5 uses
end_hunk_1
begin_hunk_2_@_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE12_M_assertionEv:bb.a

bb.af:                                            ; preds = %bb.ae
  tail call void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.ai

bb.ag:                                            ; preds = %bb.ae
  tail call void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ae
  tail call void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah
  %i.cd = load ptr, ptr %i.bv, align 8, !tbaa !15
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !17
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_disjunctionEv(ptr noundef nonnull align 8 dereferenceable(400) %0)
  %i.cf = load i32, ptr %i.b, align 8, !tbaa !515
  %i.cg = icmp eq i32 %i.cf, 8
  br i1 %i.cg, label %bb.aj, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit9

bb.aj:                                            ; preds = %bb.ai
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bv, ptr noundef nonnull align 8 dereferenceable(32) %i.bu)
  %i.ch = load ptr, ptr %i.bw, align 8, !tbaa !516
  %i.ci = load ptr, ptr %i.by, align 8, !tbaa !517
  %i.cj = icmp eq ptr %i.ch, %i.ci
  br i1 %i.cj, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 27, ptr %i.b, align 8, !tbaa !515
  br label %bb.ap

bb.al:                                            ; preds = %bb.aj
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !518
  switch i32 %i.cl, label %bb.ap [
    i32 0, label %bb.am
    i32 2, label %bb.an
    i32 1, label %bb.ao
  ]

bb.am:                                            ; preds = %bb.al
  tail call void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.ap

bb.an:                                            ; preds = %bb.al
  tail call void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.ap

bb.ao:                                            ; preds = %bb.al
  tail call void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.ap

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit9: ; preds = %bb.ai
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeE(i32 noundef 5) #29
  unreachable

bb.ap:                                            ; preds = %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao
  %i.cm = icmp eq i8 %i.ce, 110
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 5 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !519, !noalias !643 ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !525, !noalias !643 ; 2 uses
  %i.cr = icmp eq ptr %i.co, %i.cq
  br i1 %i.cr, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cs = getelementptr inbounds i8, ptr %i.co, i64 -24 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.cs, align 8, !tbaa !561
  %.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %i.co, i64 -16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !13
  %.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %i.co, i64 -8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !13
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit

bb.ar:                                            ; preds = %bb.ap
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 3 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !526, !noalias !643
  %i.cv = getelementptr inbounds i8, ptr %i.cu, i64 -8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !527, !noalias !648 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 480
  %.sroa.0.0.copyload12 = load ptr, ptr %i.cx, align 8, !tbaa !561
  %.sroa.5.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.cw, i64 488
  %.sroa.5.0.copyload14 = load i64, ptr %.sroa.5.0..sroa_idx13, align 8, !tbaa !13
  %.sroa.6.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.cw, i64 496
  %.sroa.6.0.copyload16 = load i64, ptr %.sroa.6.0..sroa_idx15, align 8, !tbaa !13
  tail call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef 504) #32, !noalias !648
  %i.cy = load ptr, ptr %i.ct, align 8, !tbaa !529, !noalias !648
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 -8 ; 2 uses
  store ptr %i.cz, ptr %i.ct, align 8, !tbaa !526, !noalias !648
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !527, !noalias !648 ; 3 uses
  store ptr %i.da, ptr %i.cp, align 8, !tbaa !525, !noalias !648
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 504
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !530, !noalias !648
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 480
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit: ; preds = %bb.aq, %bb.ar
  %.sroa.6.0 = phi i64 [ %.sroa.6.0.copyload16, %bb.ar ], [ %.sroa.6.0.copyload, %bb.aq ]
  %.sroa.5.0 = phi i64 [ %.sroa.5.0.copyload14, %bb.ar ], [ %.sroa.5.0.copyload, %bb.aq ]
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.copyload12, %bb.ar ], [ %.sroa.0.0.copyload, %bb.aq ]
  %storemerge.i.i.i = phi ptr [ %i.dd, %bb.ar ], [ %i.cs, %bb.aq ]
  store ptr %storemerge.i.i.i, ptr %i.cn, align 8, !tbaa !531, !noalias !648
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !492
  %i.dg = tail call noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE16_M_insert_acceptEv(ptr noundef nonnull align 8 dereferenceable(88) %i.df)
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 56
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !509
  %i.dj = getelementptr inbounds nuw [48 x i8], ptr %i.di, i64 %.sroa.6.0
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store i64 %i.dg, ptr %i.dk, align 8, !tbaa !512
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.dl = load ptr, ptr %i.de, align 8, !tbaa !492 ; 2 uses
  %i.dm = tail call noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE19_M_insert_lookaheadElb(ptr noundef nonnull align 8 dereferenceable(88) %i.dl, i64 noundef %.sroa.5.0, i1 noundef zeroext %i.cm) ; 2 uses
  store ptr %i.dl, ptr %4, align 8, !tbaa !561
  %i.dn = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.dm, ptr %i.dn, align 8, !tbaa !569
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.dm, ptr %i.do, align 8, !tbaa !571
  %i.dp = load ptr, ptr %i.cn, align 8, !tbaa !531 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !572
  %i.ds = getelementptr inbounds i8, ptr %i.dr, i64 -24
  %.not.i.i.i10 = icmp eq ptr %i.dp, %i.ds
  br i1 %.not.i.i.i10, label %bb.at, label %bb.as

bb.as:                                            ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dp, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !573
  %i.dt = load ptr, ptr %i.cn, align 8, !tbaa !531
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  store ptr %i.du, ptr %i.cn, align 8, !tbaa !531
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit11

bb.at:                                            ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 304
  call void @_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.dv, ptr noundef nonnull align 8 dereferenceable(24) %4)
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit11

_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit11: ; preds = %bb.as, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit8

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit8: ; preds = %bb.a, %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit, %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit7, %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit11, %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit4
  %.0 = phi i1 [ true, %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit ], [ true, %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit4 ], [ true, %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit11 ], [ true, %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit7 ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE7_M_atomEv(ptr noundef nonnull align 8 dereferenceable(400) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__detail::_StateSeq", align 8 ; 7 uses
  %2 = alloca %"class.std::__detail::_StateSeq", align 8 ; 7 uses
  %3 = alloca %"class.std::__detail::_StateSeq", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 21 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 11 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !515
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !516
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !517
  %i.k = icmp eq ptr %i.h, %i.j
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 27, ptr %i.b, align 8, !tbaa !515
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.m = load i32, ptr %i.l, align 8, !tbaa !518
  switch i32 %i.m, label %bb.h [
    i32 0, label %bb.e
    i32 2, label %bb.f
    i32 1, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  tail call void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  tail call void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  tail call void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %i.n = load i32, ptr %0, align 8, !tbaa !471    ; 3 uses
  %i.o = and i32 %i.n, 16
  %.not7 = icmp eq i32 %i.o, 0
  %4 = and i32 %i.n, 1
  %.not8 = icmp eq i32 %4, 0                      ; 2 uses
  %i.p = and i32 %i.n, 8
  %.not9 = icmp eq i32 %i.p, 0                    ; 4 uses
  br i1 %.not7, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  br i1 %.not8, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  br i1 %.not9, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE27_M_insert_any_matcher_posixILb0ELb0EEEvv(ptr noundef nonnull align 8 dereferenceable(400) %0)
  br label %bb.co

bb.l:                                             ; preds = %bb.j
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE27_M_insert_any_matcher_posixILb0ELb1EEEvv(ptr noundef nonnull align 8 dereferenceable(400) %0)
  br label %bb.co

bb.m:                                             ; preds = %bb.i
  br i1 %.not9, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE27_M_insert_any_matcher_posixILb1ELb0EEEvv(ptr noundef nonnull align 8 dereferenceable(400) %0)
  br label %bb.co

bb.o:                                             ; preds = %bb.m
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE27_M_insert_any_matcher_posixILb1ELb1EEEvv(ptr noundef nonnull align 8 dereferenceable(400) %0)
  br label %bb.co

bb.p:                                             ; preds = %bb.h
  br i1 %.not8, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  br i1 %.not9, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE26_M_insert_any_matcher_ecmaILb0ELb0EEEvv(ptr noundef nonnull align 8 dereferenceable(400) %0)
  br label %bb.co

bb.s:                                             ; preds = %bb.q
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE26_M_insert_any_matcher_ecmaILb0ELb1EEEvv(ptr noundef nonnull align 8 dereferenceable(400) %0)
  br label %bb.co

bb.t:                                             ; preds = %bb.p
  br i1 %.not9, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE26_M_insert_any_matcher_ecmaILb1ELb0EEEvv(ptr noundef nonnull align 8 dereferenceable(400) %0)
  br label %bb.co

bb.v:                                             ; preds = %bb.t
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE26_M_insert_any_matcher_ecmaILb1ELb1EEEvv(ptr noundef nonnull align 8 dereferenceable(400) %0)
  br label %bb.co

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit: ; preds = %bb.a
  %i.q = tail call noundef zeroext i1 @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE11_M_try_charEv(ptr noundef nonnull align 8 dereferenceable(400) %0)
  br i1 %i.q, label %bb.w, label %bb.ad

bb.w:                                             ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit
  %i.r = load i32, ptr %0, align 8, !tbaa !471    ; 2 uses
  %5 = and i32 %i.r, 1
  %.not4 = icmp eq i32 %5, 0
  %i.s = and i32 %i.r, 8
  %.not5 = icmp eq i32 %i.s, 0                    ; 2 uses
  br i1 %.not4, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  br i1 %.not5, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE22_M_insert_char_matcherILb0ELb0EEEvv(ptr noundef nonnull align 8 dereferenceable(400) %0)
  br label %bb.co

bb.z:                                             ; preds = %bb.x
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE22_M_insert_char_matcherILb0ELb1EEEvv(ptr noundef nonnull align 8 dereferenceable(400) %0)
  br label %bb.co

bb.aa:                                            ; preds = %bb.w
  br i1 %.not5, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE22_M_insert_char_matcherILb1ELb0EEEvv(ptr noundef nonnull align 8 dereferenceable(400) %0)
  br label %bb.co

bb.ac:                                            ; preds = %bb.aa
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE22_M_insert_char_matcherILb1ELb1EEEvv(ptr noundef nonnull align 8 dereferenceable(400) %0)
  br label %bb.co

bb.ad:                                            ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit
  %i.t = load i32, ptr %i.b, align 8, !tbaa !515
  switch i32 %i.t, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit18 [
    i32 4, label %bb.ae
    i32 14, label %bb.ar
    i32 6, label %bb.be
    i32 5, label %bb.bw
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %i.u)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !516
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !517
  %i.aa = icmp eq ptr %i.x, %i.z
  br i1 %i.aa, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i32 27, ptr %i.b, align 8, !tbaa !515
  br label %bb.ak

bb.ag:                                            ; preds = %bb.ae
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !518
  switch i32 %i.ac, label %bb.ak [
    i32 0, label %bb.ah
    i32 2, label %bb.ai
    i32 1, label %bb.aj
  ]

bb.ah:                                            ; preds = %bb.ag
  tail call void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ag
  tail call void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ag
  tail call void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 304
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !492 ; 2 uses
  %i.ag = load ptr, ptr %i.v, align 8, !tbaa !15  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !18 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ai
  %.not12.i = icmp samesign eq i64 %i.ai, 0
  br i1 %.not12.i, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE16_M_cur_int_valueEi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ak
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 384
  br label %bb.al

bb.al:                                            ; preds = %bb.ao, %.lr.ph.i
  %.014.i = phi i32 [ 0, %.lr.ph.i ], [ %i.at, %bb.ao ]
  %.sroa.08.013.i = phi ptr [ %i.ag, %.lr.ph.i ], [ %i.au, %bb.ao ] ; 2 uses
  %i.al = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.014.i, i32 10) ; 2 uses
  %i.am = extractvalue { i32, i1 } %i.al, 1
  br i1 %i.am, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.an = extractvalue { i32, i1 } %i.al, 0
  %i.ao = load i8, ptr %.sroa.08.013.i, align 1, !tbaa !17
  %i.ap = load ptr, ptr %i.ak, align 8, !tbaa !649, !nonnull !209, !align !306
  %i.aq = tail call noundef i32 @_ZNKSt7__cxx1112regex_traitsIcE5valueEci(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, i8 noundef signext %i.ao, i32 noundef 10)
  %i.ar = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.an, i32 %i.aq) ; 2 uses
  %i.as = extractvalue { i32, i1 } %i.ar, 1
  br i1 %i.as, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am, %bb.al
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 3, ptr noundef nonnull @.str.100) #29
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.at = extractvalue { i32, i1 } %i.ar, 0       ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.au, %i.aj
  br i1 %.not.i, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE16_M_cur_int_valueEi.exit.loopexit, label %bb.al

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE16_M_cur_int_valueEi.exit.loopexit: ; preds = %bb.ao
  %i.av = sext i32 %i.at to i64
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE16_M_cur_int_valueEi.exit

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE16_M_cur_int_valueEi.exit: ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE16_M_cur_int_valueEi.exit.loopexit, %bb.ak
  %.0.lcssa.i = phi i64 [ 0, %bb.ak ], [ %i.av, %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE16_M_cur_int_valueEi.exit.loopexit ]
  %i.aw = tail call noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE17_M_insert_backrefEm(ptr noundef nonnull align 8 dereferenceable(88) %i.af, i64 noundef %.0.lcssa.i) ; 2 uses
  store ptr %i.af, ptr %1, align 8, !tbaa !561
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !569
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.aw, ptr %i.ay, align 8, !tbaa !571
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !531 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !572
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -24
  %.not.i.i.i = icmp eq ptr %i.ba, %i.bd
  br i1 %.not.i.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE16_M_cur_int_valueEi.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !573
  %i.be = load ptr, ptr %i.az, align 8, !tbaa !531
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store ptr %i.bf, ptr %i.az, align 8, !tbaa !531
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit

bb.aq:                                            ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE16_M_cur_int_valueEi.exit
  call void @_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit

_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit: ; preds = %bb.ap, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %bb.co

bb.ar:                                            ; preds = %bb.ad
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bh, ptr noundef nonnull align 8 dereferenceable(32) %i.bg)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !516
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !517
  %i.bm = icmp eq ptr %i.bj, %i.bl
  br i1 %i.bm, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  store i32 27, ptr %i.b, align 8, !tbaa !515
  br label %bb.ax

bb.at:                                            ; preds = %bb.ar
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !518
  switch i32 %i.bo, label %bb.ax [
    i32 0, label %bb.au
    i32 2, label %bb.av
    i32 1, label %bb.aw
  ]

bb.au:                                            ; preds = %bb.at
  tail call void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.ax

bb.av:                                            ; preds = %bb.at
  tail call void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.ax

bb.aw:                                            ; preds = %bb.at
  tail call void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.as, %bb.at, %bb.au, %bb.av, %bb.aw
  %i.bp = load i32, ptr %0, align 8, !tbaa !471   ; 2 uses
  %6 = and i32 %i.bp, 1
  %.not = icmp eq i32 %6, 0
  %i.bq = and i32 %i.bp, 8
  %.not2 = icmp eq i32 %i.bq, 0                   ; 2 uses
  br i1 %.not, label %bb.ay, label %bb.bb

bb.ay:                                            ; preds = %bb.ax
  br i1 %.not2, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE33_M_insert_character_class_matcherILb0ELb0EEEvv(ptr noundef nonnull align 8 dereferenceable(400) %0)
  br label %bb.co

bb.ba:                                            ; preds = %bb.ay
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE33_M_insert_character_class_matcherILb0ELb1EEEvv(ptr noundef nonnull align 8 dereferenceable(400) %0)
  br label %bb.co

bb.bb:                                            ; preds = %bb.ax
  br i1 %.not2, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE33_M_insert_character_class_matcherILb1ELb0EEEvv(ptr noundef nonnull align 8 dereferenceable(400) %0)
  br label %bb.co

bb.bd:                                            ; preds = %bb.bb
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE33_M_insert_character_class_matcherILb1ELb1EEEvv(ptr noundef nonnull align 8 dereferenceable(400) %0)
  br label %bb.co

bb.be:                                            ; preds = %bb.ad
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bs, ptr noundef nonnull align 8 dereferenceable(32) %i.br)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !516
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !517
  %i.bx = icmp eq ptr %i.bu, %i.bw
  br i1 %i.bx, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  store i32 27, ptr %i.b, align 8, !tbaa !515
  br label %bb.bk

bb.bg:                                            ; preds = %bb.be
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !518
  switch i32 %i.bz, label %bb.bk [
    i32 0, label %bb.bh
    i32 2, label %bb.bi
    i32 1, label %bb.bj
  ]

bb.bh:                                            ; preds = %bb.bg
  tail call void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.bk

bb.bi:                                            ; preds = %bb.bg
  tail call void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bg
  tail call void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bf, %bb.bg, %bb.bh, %bb.bi, %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !492 ; 3 uses
  %i.cc = tail call noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_dummyEv(ptr noundef nonnull align 8 dereferenceable(88) %i.cb) ; 2 uses
  store ptr %i.cb, ptr %2, align 8, !tbaa !561
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.cc, ptr %i.cd, align 8, !tbaa !569
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 16
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_disjunctionEv(ptr noundef nonnull align 8 dereferenceable(400) %0)
  %i.cf = load i32, ptr %i.b, align 8, !tbaa !515
  %i.cg = icmp eq i32 %i.cf, 8
  br i1 %i.cg, label %bb.bl, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit17

bb.bl:                                            ; preds = %bb.bk
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bs, ptr noundef nonnull align 8 dereferenceable(32) %i.br)
  %i.ch = load ptr, ptr %i.bt, align 8, !tbaa !516
  %i.ci = load ptr, ptr %i.bv, align 8, !tbaa !517
  %i.cj = icmp eq ptr %i.ch, %i.ci
  br i1 %i.cj, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  store i32 27, ptr %i.b, align 8, !tbaa !515
  br label %bb.br

bb.bn:                                            ; preds = %bb.bl
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !518
  switch i32 %i.cl, label %bb.br [
    i32 0, label %bb.bo
    i32 2, label %bb.bp
    i32 1, label %bb.bq
  ]

bb.bo:                                            ; preds = %bb.bn
  tail call void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.br

bb.bp:                                            ; preds = %bb.bn
  tail call void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.br

bb.bq:                                            ; preds = %bb.bn
  tail call void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.br

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit17: ; preds = %bb.bk
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeE(i32 noundef 5) #29
  unreachable

bb.br:                                            ; preds = %bb.bm, %bb.bn, %bb.bo, %bb.bp, %bb.bq
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 4 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !519, !noalias !650 ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !525, !noalias !650 ; 2 uses
  %i.cq = icmp eq ptr %i.cn, %i.cp
  br i1 %i.cq, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.cr = getelementptr inbounds i8, ptr %i.cn, i64 -24
  %.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %i.cn, i64 -16
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !13
  %.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %i.cn, i64 -8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !13
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 368
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !572
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit

bb.bt:                                            ; preds = %bb.br
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 3 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !526, !noalias !650
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 -8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !527, !noalias !655 ; 2 uses
  %.sroa.4.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.cv, i64 488
  %.sroa.4.0.copyload23 = load i64, ptr %.sroa.4.0..sroa_idx22, align 8, !tbaa !13
  %.sroa.5.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %i.cv, i64 496
  %.sroa.5.0.copyload25 = load i64, ptr %.sroa.5.0..sroa_idx24, align 8, !tbaa !13
  tail call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef 504) #32, !noalias !655
  %i.cw = load ptr, ptr %i.cs, align 8, !tbaa !529, !noalias !655
  %i.cx = getelementptr inbounds i8, ptr %i.cw, i64 -8 ; 2 uses
  store ptr %i.cx, ptr %i.cs, align 8, !tbaa !526, !noalias !655
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !527, !noalias !655 ; 3 uses
  store ptr %i.cy, ptr %i.co, align 8, !tbaa !525, !noalias !655
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 504 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr %i.cz, ptr %i.da, align 8, !tbaa !530, !noalias !655
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 480
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit: ; preds = %bb.bs, %bb.bt
  %i.dc = phi ptr [ %i.cz, %bb.bt ], [ %.pre, %bb.bs ]
  %.sroa.5.0 = phi i64 [ %.sroa.5.0.copyload25, %bb.bt ], [ %.sroa.5.0.copyload, %bb.bs ]
  %.sroa.4.0 = phi i64 [ %.sroa.4.0.copyload23, %bb.bt ], [ %.sroa.4.0.copyload, %bb.bs ]
  %storemerge.i.i.i = phi ptr [ %i.db, %bb.bt ], [ %i.cr, %bb.bs ] ; 3 uses
  store ptr %storemerge.i.i.i, ptr %i.cm, align 8, !tbaa !531, !noalias !655
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cb, i64 56
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !509
  %i.df = getelementptr inbounds nuw [48 x i8], ptr %i.de, i64 %i.cc
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store i64 %.sroa.4.0, ptr %i.dg, align 8, !tbaa !512
  store i64 %.sroa.5.0, ptr %i.ce, align 8, !tbaa !571
  %i.dh = getelementptr inbounds i8, ptr %i.dc, i64 -24
  %.not.i.i = icmp eq ptr %storemerge.i.i.i, %i.dh
  br i1 %.not.i.i, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %storemerge.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !573
  %i.di = load ptr, ptr %i.cm, align 8, !tbaa !531
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  store ptr %i.dj, ptr %i.cm, align 8, !tbaa !531
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit

bb.bv:                                            ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 304
  call void @_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_push_back_auxIJRKS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.dk, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit

_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit: ; preds = %bb.bu, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.co

bb.bw:                                            ; preds = %bb.ad
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.dm, ptr noundef nonnull align 8 dereferenceable(32) %i.dl)
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !516
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !517
  %i.dr = icmp eq ptr %i.do, %i.dq
  br i1 %i.dr, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  store i32 27, ptr %i.b, align 8, !tbaa !515
  br label %bb.cc

bb.by:                                            ; preds = %bb.bw
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !518
  switch i32 %i.dt, label %bb.cc [
    i32 0, label %bb.bz
end_hunk_2
begin_hunk_3_@_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE33_M_insert_character_class_matcherILb1ELb1EEEvv:bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !239
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !239
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, i8 0, i64 24, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.au = load <2 x ptr>, ptr %i.at, align 16, !tbaa !750
  store <2 x ptr> %i.au, ptr %i.as, align 8, !tbaa !750
  %i.av = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ax = load ptr, ptr %i.aw, align 16, !tbaa !751
  store ptr %i.ax, ptr %i.av, align 8, !tbaa !751
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.at, i8 0, i64 24, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.ba = load <2 x ptr>, ptr %i.az, align 8, !tbaa !734
  store <2 x ptr> %i.ba, ptr %i.ay, align 8, !tbaa !734
  %i.bb = getelementptr inbounds nuw i8, ptr %i.af, i64 88
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !735
  store ptr %i.bd, ptr %i.bb, align 8, !tbaa !735
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, i8 0, i64 24, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %i.af, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.be, ptr noundef nonnull align 16 dereferenceable(64) %i.z, i64 64, i1 false)
  store ptr %i.af, ptr %3, align 8, !tbaa !764
  store ptr @_ZNSt17_Function_handlerIFbcENSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEEE9_M_invokeERKSt9_Any_dataOc, ptr %i.ah, align 8, !tbaa !552
  store ptr @_ZNSt17_Function_handlerIFbcENSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation, ptr %i.ae, align 8, !tbaa !555
  %i.bf = invoke noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE17_M_insert_matcherESt8functionIFbcEE(ptr noundef nonnull align 8 dereferenceable(88) %i.ad, ptr nofree noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.g unwind label %bb.m       ; 2 uses

bb.g:                                             ; preds = %bb.f
  store ptr %i.ad, ptr %2, align 8, !tbaa !561
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !569
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.bf, ptr %i.bh, align 8, !tbaa !571
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !531 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !572
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -24
  %.not.i.i.i = icmp eq ptr %i.bj, %i.bm
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !573
  %i.bn = load ptr, ptr %i.bi, align 8, !tbaa !531
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  store ptr %i.bo, ptr %i.bi, align 8, !tbaa !531
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit

bb.i:                                             ; preds = %bb.g
  invoke void @_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit unwind label %bb.m

_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit: ; preds = %bb.h, %bb.i
  %i.bp = load ptr, ptr %i.ae, align 8, !tbaa !555 ; 2 uses
  %.not.i = icmp eq ptr %i.bp, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit
  %i.bq = invoke noundef zeroext i1 %i.bp(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #33
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %1) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  ret void

bb.l:                                             ; preds = %bb.b, %bb.a, %bb.c
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.m:                                             ; preds = %bb.i, %bb.f
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bv = load ptr, ptr %i.ae, align 8, !tbaa !555 ; 2 uses
  %.not.i8 = icmp eq ptr %i.bv, null
  br i1 %.not.i8, label %.body, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bw = invoke noundef zeroext i1 %i.bv(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %.body unwind label %bb.o      ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  %i.by = extractvalue { ptr, i32 } %i.bx, 0
  call void @__clang_call_terminate(ptr %i.by) #33
  unreachable

.body:                                            ; preds = %bb.e, %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.ag, %bb.e ], [ %i.bu, %bb.n ], [ %i.bu, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.p

bb.p:                                             ; preds = %.body, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.bt, %bb.l ]
  call void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %1) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE21_M_bracket_expressionEv(ptr noundef nonnull align 8 dereferenceable(400) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !515  ; 2 uses
  %i.d = icmp eq i32 %i.c, 10                     ; 5 uses
  br i1 %i.d, label %bb.b, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !516
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !517
  %i.k = icmp eq ptr %i.h, %i.j
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 27, ptr %i.b, align 8, !tbaa !515
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.m = load i32, ptr %i.l, align 8, !tbaa !518
  switch i32 %i.m, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread [
    i32 0, label %bb.e
    i32 2, label %bb.f
    i32 1, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  tail call void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread

bb.f:                                             ; preds = %bb.d
  tail call void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread

bb.g:                                             ; preds = %bb.d
  tail call void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit: ; preds = %bb.a
  %i.n = icmp eq i32 %i.c, 9
  br i1 %i.n, label %bb.h, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit8

bb.h:                                             ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.o)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !516
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !517
  %i.u = icmp eq ptr %i.r, %i.t
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 27, ptr %i.b, align 8, !tbaa !515
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread

bb.j:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.w = load i32, ptr %i.v, align 8, !tbaa !518
  switch i32 %i.w, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread [
    i32 0, label %bb.k
    i32 2, label %bb.l
    i32 1, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j
  tail call void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread

bb.l:                                             ; preds = %bb.j
  tail call void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread

bb.m:                                             ; preds = %bb.j
  tail call void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %i.x = load i32, ptr %0, align 8, !tbaa !471    ; 2 uses
  %1 = and i32 %i.x, 1
  %.not = icmp eq i32 %1, 0
  %i.y = and i32 %i.x, 8
  %.not6 = icmp eq i32 %i.y, 0                    ; 2 uses
  br i1 %.not, label %bb.n, label %bb.q

bb.n:                                             ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread
  br i1 %.not6, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE25_M_insert_bracket_matcherILb0ELb0EEEvb(ptr noundef nonnull align 8 dereferenceable(400) %0, i1 noundef zeroext %i.d)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit8

bb.p:                                             ; preds = %bb.n
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE25_M_insert_bracket_matcherILb0ELb1EEEvb(ptr noundef nonnull align 8 dereferenceable(400) %0, i1 noundef zeroext %i.d)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit8

bb.q:                                             ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread
  br i1 %.not6, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE25_M_insert_bracket_matcherILb1ELb0EEEvb(ptr noundef nonnull align 8 dereferenceable(400) %0, i1 noundef zeroext %i.d)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit8

bb.s:                                             ; preds = %bb.q
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE25_M_insert_bracket_matcherILb1ELb1EEEvb(ptr noundef nonnull align 8 dereferenceable(400) %0, i1 noundef zeroext %i.d)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit8

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit8: ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit, %bb.p, %bb.o, %bb.s, %bb.r
  %.0 = phi i1 [ true, %bb.p ], [ true, %bb.r ], [ true, %bb.s ], [ true, %bb.o ], [ false, %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE17_M_insert_matcherESt8functionIFbcEE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr nofree noundef align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function", align 8     ; 5 uses
  %3 = alloca %"struct.std::__detail::_State", align 8 ; 11 uses
  %4 = alloca %"struct.std::__detail::_State", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  store i32 11, ptr %3, align 8, !tbaa !533
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 -1, ptr %i.a, align 8, !tbaa !512
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !552  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !555  ; 3 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.f, null      ; 2 uses
  br i1 %.not.i.i.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 16, i1 false), !tbaa.struct !614
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !67
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %i.d, ptr %i.h, align 8, !tbaa !67
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 16, i1 false), !tbaa.struct !548
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i8 0, i64 24, i1 false)
  store ptr %i.d, ptr %i.j, align 8, !tbaa !552
  br i1 %.not.i.i.not.i.i, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 16, i1 false), !tbaa.struct !614
  store ptr %i.f, ptr %i.k, align 8, !tbaa !555
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  br label %_ZNSt8__detail6_StateIcEC2EOS1_.exit

_ZNSt8__detail6_StateIcEC2EOS1_.exit:             ; preds = %bb.c, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !550  ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !551
  %.not.i.i.i = icmp eq ptr %i.n, %i.p
  br i1 %.not.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %4, i64 48, i1 false), !tbaa.struct !548
  %i.q = load i32, ptr %4, align 8, !tbaa !533
  %i.r = icmp eq i32 %i.q, 11
  br i1 %i.r, label %bb.f, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i8 0, i64 24, i1 false)
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !552
  store ptr %i.v, ptr %i.t, align 8, !tbaa !552
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !555  ; 2 uses
  %.not.i.i.not.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.not.i.i.i.i.i, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.y, i64 16, i1 false), !tbaa.struct !614
  store ptr %i.x, ptr %i.z, align 8, !tbaa !555
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  br label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i

_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i:       ; preds = %bb.g, %bb.f, %bb.e
  %i.aa = load ptr, ptr %i.m, align 8, !tbaa !550
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48 ; 2 uses
  store ptr %i.ab, ptr %i.m, align 8, !tbaa !550
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

bb.h:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  invoke void @_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr %i.n, ptr noundef nonnull align 8 dereferenceable(48) %4)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.h
  %.pre.i = load ptr, ptr %i.m, align 8, !tbaa !550
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i: ; preds = %.noexc, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i
  %i.ac = phi ptr [ %i.ab, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i ], [ %.pre.i, %.noexc ]
  %i.ad = load ptr, ptr %i.l, align 8, !tbaa !509
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = sdiv exact i64 %i.ag, 48                ; 2 uses
  %i.ai = icmp ugt i64 %i.ah, 100000
  br i1 %i.ai, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  invoke void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 9, ptr noundef nonnull @.str.96) #29
          to label %.noexc4 unwind label %bb.q

.noexc4:                                          ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  %i.aj = load i32, ptr %4, align 8, !tbaa !533
  %i.ak = icmp eq i32 %i.aj, 11
  br i1 %i.ak, label %bb.k, label %_ZNSt8__detail6_StateIcED2Ev.exit

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !555 ; 2 uses
  %.not.i.i5 = icmp eq ptr %i.am, null
  br i1 %.not.i.i5, label %_ZNSt8__detail6_StateIcED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ao = invoke noundef zeroext i1 %i.am(ptr noundef nonnull align 8 dereferenceable(32) %i.an, ptr noundef nonnull align 8 dereferenceable(32) %i.an, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  call void @__clang_call_terminate(ptr %i.aq) #33
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit:                ; preds = %bb.j, %bb.k, %bb.l
  %i.ar = load i32, ptr %3, align 8, !tbaa !533
  %i.as = icmp eq i32 %i.ar, 11
  br i1 %i.as, label %bb.n, label %_ZNSt8__detail6_StateIcED2Ev.exit7

bb.n:                                             ; preds = %_ZNSt8__detail6_StateIcED2Ev.exit
  %i.at = load ptr, ptr %i.g, align 8, !tbaa !555 ; 2 uses
  %.not.i.i6 = icmp eq ptr %i.at, null
  br i1 %.not.i.i6, label %_ZNSt8__detail6_StateIcED2Ev.exit7, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = invoke noundef zeroext i1 %i.at(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit7 unwind label %bb.p ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  call void @__clang_call_terminate(ptr %i.aw) #33
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit7:               ; preds = %_ZNSt8__detail6_StateIcED2Ev.exit, %bb.n, %bb.o
  %i.ax = add nsw i64 %i.ah, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret i64 %i.ax

bb.q:                                             ; preds = %bb.i, %bb.h
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #30
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %i.ay
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFbcENSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb0EEEE9_M_invokeERKSt9_Any_dataOc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
end_hunk_3
begin_hunk_4_@_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EE22_M_add_character_classERKNS1_12basic_stringIcSt11char_traitsIcESaIcEEEb:bb.a
  %.not.i23.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  %i.bd = load ptr, ptr %i.v, align 8, !tbaa !735
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.be, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.bf) #32
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  store ptr %i.ak, ptr %i.s, align 8, !tbaa !738
  store ptr %i.bc, ptr %i.t, align 8, !tbaa !813
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ai
  store ptr %i.bg, ptr %i.v, align 8, !tbaa !735
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.f, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EE8_M_readyEv(ptr noundef nonnull align 8 dereferenceable(152) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.180, align 8            ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !19     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 4 uses
  %.not.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not.i.i, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit: ; preds = %bb.a
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.f, i1 true)
  %i.h = shl nuw nsw i64 %i.g, 1
  %i.i = xor i64 %i.h, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.a, ptr %i.c, i64 noundef %i.i)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.a, ptr %i.c)
  %.pre = load ptr, ptr %0, align 8, !tbaa !19    ; 4 uses
  %.pre36 = ptrtoaddr ptr %.pre to i64            ; 2 uses
  %.pre13 = load ptr, ptr %i.b, align 8, !tbaa !19 ; 7 uses
  %.pre1335 = ptrtoaddr ptr %.pre13 to i64        ; 2 uses
  %i.j = icmp eq ptr %.pre, %.pre13
  %i.k = getelementptr inbounds nuw i8, ptr %.pre, i64 1 ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.k, %.pre13
  %or.cond = select i1 %i.j, i1 true, i1 %.not.i.i.i31
  br i1 %or.cond, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %.lr.ph

.preheader.i.i.i:                                 ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, %.pre13
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %.lr.ph, !llvm.loop !823

.lr.ph:                                           ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit, %.preheader.i.i.i
  %indvar = phi i64 [ %indvar.next, %.preheader.i.i.i ], [ 0, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 3 uses
  %i.m = phi ptr [ %i.l, %.preheader.i.i.i ], [ %i.k, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 3 uses
  %.sroa.09.0.i.i.i32 = phi ptr [ %i.m, %.preheader.i.i.i ], [ %.pre, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 5 uses
  %i.n = load i8, ptr %.sroa.09.0.i.i.i32, align 1, !tbaa !17 ; 3 uses
  %i.o = load i8, ptr %i.m, align 1, !tbaa !17
  %i.p = icmp eq i8 %i.n, %i.o
  br i1 %i.p, label %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i, label %.preheader.i.i.i, !llvm.loop !823

_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i: ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i32, i64 2 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.q, %.pre13
  br i1 %.not18.i.i, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET_S7_S7_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i
  %i.r = xor i64 %.pre1335, 2
  %i.s = add i64 %indvar, %.pre36
  %i.t = sub i64 %i.r, %i.s
  %i.u = add i64 %.pre1335, -3
  %i.v = add i64 %indvar, %.pre36
  %i.w = sub i64 %i.u, %i.v
  %xtraiter = and i64 %i.t, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %bb.c
  %i.x = phi i8 [ %i.z, %bb.c ], [ %i.n, %.lr.ph.i.i.preheader ]
  %i.y = phi ptr [ %i.ac, %bb.c ], [ %i.q, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.0.019.i.i.prol = phi ptr [ %.sroa.0.1.i.i.prol, %bb.c ], [ %.sroa.09.0.i.i.i32, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.c ], [ 0, %.lr.ph.i.i.preheader ]
  %i.z = load i8, ptr %i.y, align 1, !tbaa !17    ; 4 uses
  %i.aa = icmp eq i8 %i.x, %i.z
  br i1 %i.aa, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.prol
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i.prol, i64 1 ; 2 uses
  store i8 %i.z, ptr %i.ab, align 1, !tbaa !17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i.prol
  %.sroa.0.1.i.i.prol = phi ptr [ %.sroa.0.019.i.i.prol, %.lr.ph.i.i.prol ], [ %i.ab, %bb.b ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !824

.lr.ph.i.i.prol.loopexit:                         ; preds = %bb.c, %.lr.ph.i.i.preheader
  %.sroa.0.1.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %.sroa.0.1.i.i.prol, %bb.c ]
  %.unr = phi i8 [ %i.n, %.lr.ph.i.i.preheader ], [ %i.z, %bb.c ]
  %.unr38 = phi ptr [ %i.q, %.lr.ph.i.i.preheader ], [ %i.ac, %bb.c ]
  %.sroa.0.019.i.i.unr = phi ptr [ %.sroa.09.0.i.i.i32, %.lr.ph.i.i.preheader ], [ %.sroa.0.1.i.i.prol, %bb.c ]
  %i.ad = icmp ult i64 %i.w, 3
  br i1 %i.ad, label %._crit_edge.i.i.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %bb.h
  %i.ae = phi i8 [ %i.as, %bb.h ], [ %.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.af = phi ptr [ %i.av, %bb.h ], [ %.unr38, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.019.i.i = phi ptr [ %.sroa.0.1.i.i.3, %bb.h ], [ %.sroa.0.019.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !17  ; 3 uses
  %i.ah = icmp eq i8 %i.ae, %i.ag
  br i1 %i.ah, label %.lr.ph.i.i.1, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i, i64 1 ; 2 uses
  store i8 %i.ag, ptr %i.ai, align 1, !tbaa !17
  br label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.0.1.i.i = phi ptr [ %.sroa.0.019.i.i, %.lr.ph.i.i ], [ %i.ai, %bb.d ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !17  ; 3 uses
  %i.al = icmp eq i8 %i.ag, %i.ak
  br i1 %i.al, label %.lr.ph.i.i.2, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.1
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i, i64 1 ; 2 uses
  store i8 %i.ak, ptr %i.am, align 1, !tbaa !17
  br label %.lr.ph.i.i.2

.lr.ph.i.i.2:                                     ; preds = %bb.e, %.lr.ph.i.i.1
  %.sroa.0.1.i.i.1 = phi ptr [ %.sroa.0.1.i.i, %.lr.ph.i.i.1 ], [ %i.am, %bb.e ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !17  ; 3 uses
  %i.ap = icmp eq i8 %i.ak, %i.ao
  br i1 %i.ap, label %.lr.ph.i.i.3, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.2
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.1, i64 1 ; 2 uses
  store i8 %i.ao, ptr %i.aq, align 1, !tbaa !17
  br label %.lr.ph.i.i.3

.lr.ph.i.i.3:                                     ; preds = %bb.f, %.lr.ph.i.i.2
  %.sroa.0.1.i.i.2 = phi ptr [ %.sroa.0.1.i.i.1, %.lr.ph.i.i.2 ], [ %i.aq, %bb.f ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.af, i64 3
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !17  ; 3 uses
  %i.at = icmp eq i8 %i.ao, %i.as
  br i1 %i.at, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.3
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.2, i64 1 ; 2 uses
  store i8 %i.as, ptr %i.au, align 1, !tbaa !17
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i.i.3
  %.sroa.0.1.i.i.3 = phi ptr [ %.sroa.0.1.i.i.2, %.lr.ph.i.i.3 ], [ %i.au, %bb.g ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.af, i64 4 ; 2 uses
  %.not.i.i5.3 = icmp eq ptr %i.av, %.pre13
  br i1 %.not.i.i5.3, label %._crit_edge.i.i.loopexit, label %.lr.ph.i.i, !llvm.loop !826

._crit_edge.i.i.loopexit:                         ; preds = %bb.h, %.lr.ph.i.i.prol.loopexit
  %.sroa.0.1.i.i.lcssa = phi ptr [ %.sroa.0.1.i.i.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %.sroa.0.1.i.i.3, %bb.h ]
  %.pre14.pre = load ptr, ptr %i.b, align 8, !tbaa !19
  br label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET_S7_S7_.exit

_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET_S7_S7_.exit: ; preds = %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i, %._crit_edge.i.i.loopexit
  %.pre14 = phi ptr [ %.pre13, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i ], [ %.pre14.pre, %._crit_edge.i.i.loopexit ]
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.09.0.i.i.i32, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i ], [ %.sroa.0.1.i.i.lcssa, %._crit_edge.i.i.loopexit ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i, i64 1 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %.pre14
  br i1 %i.ax, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET_S7_S7_.exit
  %i.ay = load ptr, ptr %0, align 8, !tbaa !19    ; 2 uses
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = getelementptr inbounds i8, ptr %i.ay, i64 %i.bb
  store ptr %i.bc, ptr %i.b, align 8, !tbaa !827
  br label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit

_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit: ; preds = %.preheader.i.i.i, %bb.a, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit, %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET_S7_S7_.exit, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 112
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt6bitsetILm256EE9referenceaSEb.exit.i, %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit
  %indvars.iv.i = phi i64 [ 0, %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit ], [ %indvars.iv.next.i, %_ZNSt6bitsetILm256EE9referenceaSEb.exit.i ] ; 4 uses
  %i.bg = trunc i64 %indvars.iv.i to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  store ptr %0, ptr %1, align 8, !tbaa !828
  store i8 %i.bg, ptr %i.be, align 8, !tbaa !830
  %i.bh = call noundef zeroext i1 @_ZZNKSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EE8_M_applyEcSt17integral_constantIbLb0EEENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(9) %1)
  %i.bi = load i8, ptr %i.bf, align 8, !tbaa !710, !range !208, !noundef !209
  %2 = zext i1 %i.bh to i8
  %.not.i = icmp eq i8 %i.bi, %2
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  %i.bj = lshr i64 %indvars.iv.i, 6
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bj ; 3 uses
  %i.bl = and i64 %indvars.iv.i, 63
  %i.bm = shl nuw i64 1, %i.bl                    ; 2 uses
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bn = load i64, ptr %i.bk, align 8, !tbaa !13
  %i.bo = or i64 %i.bn, %i.bm
  br label %_ZNSt6bitsetILm256EE9referenceaSEb.exit.i

bb.k:                                             ; preds = %bb.i
  %i.bp = xor i64 %i.bm, -1
  %i.bq = load i64, ptr %i.bk, align 8, !tbaa !13
  %i.br = and i64 %i.bq, %i.bp
  br label %_ZNSt6bitsetILm256EE9referenceaSEb.exit.i

_ZNSt6bitsetILm256EE9referenceaSEb.exit.i:        ; preds = %bb.k, %bb.j
  %storemerge.i = phi i64 [ %i.br, %bb.k ], [ %i.bo, %bb.j ]
  store i64 %storemerge.i, ptr %i.bk, align 8, !tbaa !13
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 256
  br i1 %exitcond.not.i, label %_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EE13_M_make_cacheESt17integral_constantIbLb1EE.exit, label %bb.i, !llvm.loop !831

_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EE13_M_make_cacheESt17integral_constantIbLb1EE.exit: ; preds = %_ZNSt6bitsetILm256EE9referenceaSEb.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !738  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !735
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #32
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !739  ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !733
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #32
  br label %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit:        ; preds = %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EED2Ev.exit, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !238  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !240  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.x, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.p, %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit ] ; 3 uses
  %i.s = load ptr, ptr %.05.i.i.i, align 8, !tbaa !15 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.v = load i64, ptr %i.t, align 8, !tbaa !17
  %i.w = add i64 %i.v, 1
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i2 = icmp eq ptr %i.x, %i.r
  br i1 %.not.i.i.i2, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !263

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.o, align 8, !tbaa !238
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit
  %i.y = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.p, %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !239
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ad) #32
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.d
  %i.ae = load ptr, ptr %0, align 8, !tbaa !740   ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i3, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !731
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.ae to i64
  %i.aj = sub i64 %i.ah, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.aj) #32
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local i32 @_ZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_b(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = tail call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #30
  %i.b = load ptr, ptr %0, align 8, !tbaa !494
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !495
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !499  ; 6 uses
  %.not.not.i = icmp eq ptr %i.f, null
  br i1 %.not.not.i, label %bb.b, label %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt16__throw_bad_castv() #29
  unreachable

_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit:  ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  store ptr %i.g, ptr %4, align 8, !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 0, ptr %i.h, align 8, !tbaa !18
  store i8 0, ptr %i.g, align 8, !tbaa !17
  %.not45 = icmp eq ptr %1, %2
  br i1 %.not45, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 313
  br label %bb.c

.preheader:                                       ; preds = %bb.g
  %.pre = load i64, ptr %i.h, align 8, !tbaa !18
  %.pre55 = load ptr, ptr %4, align 8             ; 17 uses
  %i.j = freeze i64 %.pre                         ; 16 uses
  switch i64 %i.j, label %.critedge32 [
    i64 6, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.14
    i64 1, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 5, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.3
  ]

bb.c:                                             ; preds = %.lr.ph, %bb.g
  %.02446 = phi ptr [ %1, %.lr.ph ], [ %i.ai, %bb.g ] ; 2 uses
  %i.k = load i8, ptr %.02446, align 1, !tbaa !17
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !93
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = invoke noundef signext i8 %i.n(ptr noundef nonnull align 8 dereferenceable(570) %i.f, i8 noundef signext %i.k)
          to label %_ZNKSt5ctypeIcE7tolowerEc.exit unwind label %bb.h, !inline_history !832 ; 2 uses

_ZNKSt5ctypeIcE7tolowerEc.exit:                   ; preds = %bb.c
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.p ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !17    ; 2 uses
  %.not.i = icmp eq i8 %i.r, 0
  br i1 %.not.i, label %bb.d, label %_ZNKSt5ctypeIcE6narrowEcc.exit

bb.d:                                             ; preds = %_ZNKSt5ctypeIcE7tolowerEc.exit
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !93
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = invoke noundef signext i8 %i.u(ptr noundef nonnull align 8 dereferenceable(570) %i.f, i8 noundef signext %i.o, i8 noundef signext 0)
          to label %.noexc unwind label %bb.h, !inline_history !595 ; 3 uses

.noexc:                                           ; preds = %bb.d
  %.not11.i = icmp eq i8 %i.v, 0
  br i1 %.not11.i, label %_ZNKSt5ctypeIcE6narrowEcc.exit, label %bb.e

bb.e:                                             ; preds = %.noexc
  store i8 %i.v, ptr %i.q, align 1, !tbaa !17
  br label %_ZNKSt5ctypeIcE6narrowEcc.exit

_ZNKSt5ctypeIcE6narrowEcc.exit:                   ; preds = %bb.e, %.noexc, %_ZNKSt5ctypeIcE7tolowerEc.exit
  %.0.i = phi i8 [ %i.r, %_ZNKSt5ctypeIcE7tolowerEc.exit ], [ %i.v, %bb.e ], [ 0, %.noexc ]
  %i.w = load i64, ptr %i.h, align 8, !tbaa !18   ; 4 uses
  %i.x = add i64 %i.w, 1                          ; 3 uses
  %i.y = load ptr, ptr %4, align 8, !tbaa !15     ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.g
  br i1 %i.z, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNKSt5ctypeIcE6narrowEcc.exit
  %i.aa = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.aa)
end_hunk_4
begin_hunk_5_@_ZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_b:bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.w
  store i8 %.0.i, ptr %i.af, align 1, !tbaa !17
  store i64 %i.x, ptr %i.h, align 8, !tbaa !18
  %i.ag = load ptr, ptr %4, align 8, !tbaa !15
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.x
  store i8 0, ptr %i.ah, align 1, !tbaa !17
  %i.ai = getelementptr inbounds nuw i8, ptr %.02446, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.ai, %2
  br i1 %.not, label %.preheader, label %bb.c, !llvm.loop !833

bb.h:                                             ; preds = %bb.f, %bb.d, %bb.c
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = load ptr, ptr %4, align 8, !tbaa !15    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.g
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %.preheader
  %bcmp.i = call i32 @bcmp(ptr %.pre55, ptr nonnull @.str.103, i64 %i.j)
  %i.am = icmp eq i32 %bcmp.i, 0
  br i1 %i.am, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.1

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.2, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.3, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.4, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.5, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.6, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.7, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.8, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.9, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.10, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.11, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.12, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.13, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.14
  %.019.ptr48.lcssa = phi ptr [ @_ZZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_bE12__classnamesB5cxx11, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ getelementptr inbounds nuw (i8, ptr @_ZZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_bE12__classnamesB5cxx11, i64 16), %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.1 ], [ getelementptr inbounds nuw (i8, ptr @_ZZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_bE12__classnamesB5cxx11, i64 32), %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.2 ], [ getelementptr inbounds nuw (i8, ptr @_ZZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_bE12__classnamesB5cxx11, i64 48), %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.3 ], [ getelementptr inbounds nuw (i8, ptr @_ZZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_bE12__classnamesB5cxx11, i64 64), %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.4 ], [ getelementptr inbounds nuw (i8, ptr @_ZZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_bE12__classnamesB5cxx11, i64 80), %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.5 ], [ getelementptr inbounds nuw (i8, ptr @_ZZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_bE12__classnamesB5cxx11, i64 96), %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.6 ], [ getelementptr inbounds nuw (i8, ptr @_ZZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_bE12__classnamesB5cxx11, i64 112), %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.7 ], [ getelementptr inbounds nuw (i8, ptr @_ZZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_bE12__classnamesB5cxx11, i64 128), %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.8 ], [ getelementptr inbounds nuw (i8, ptr @_ZZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_bE12__classnamesB5cxx11, i64 144), %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.9 ], [ getelementptr inbounds nuw (i8, ptr @_ZZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_bE12__classnamesB5cxx11, i64 160), %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.10 ], [ getelementptr inbounds nuw (i8, ptr @_ZZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_bE12__classnamesB5cxx11, i64 176), %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.11 ], [ getelementptr inbounds nuw (i8, ptr @_ZZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_bE12__classnamesB5cxx11, i64 192), %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.12 ], [ getelementptr inbounds nuw (i8, ptr @_ZZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_bE12__classnamesB5cxx11, i64 208), %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.13 ], [ getelementptr inbounds nuw (i8, ptr @_ZZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_bE12__classnamesB5cxx11, i64 224), %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.14 ] ; 2 uses
  br i1 %3, label %bb.i, label %.critedge

bb.i:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.an = getelementptr inbounds nuw i8, ptr %.019.ptr48.lcssa, i64 8
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !729
  %i.ap = and i16 %i.ao, 768
  %.not43 = icmp eq i16 %i.ap, 0
  br i1 %.not43, label %.critedge, label %.critedge32

.critedge:                                        ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.019.ptr48.lcssa, i64 8
  %i.ar = load i32, ptr %i.aq, align 8
  br label %.critedge32

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.1: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %bcmp.i.1 = call i32 @bcmp(ptr %.pre55, ptr nonnull @.str.104, i64 %i.j)
  %i.as = icmp eq i32 %bcmp.i.1, 0
  br i1 %i.as, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.2

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.2: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.1
  %bcmp.i.2 = call i32 @bcmp(ptr %.pre55, ptr nonnull @.str.105, i64 %i.j)
  %i.at = icmp eq i32 %bcmp.i.2, 0
  br i1 %i.at, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.critedge32

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.3: ; preds = %.preheader
  %bcmp.i.3 = call i32 @bcmp(ptr %.pre55, ptr nonnull @.str.106, i64 %i.j)
  %i.au = icmp eq i32 %bcmp.i.3, 0
  br i1 %i.au, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.4

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.4: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.3
  %bcmp.i.4 = call i32 @bcmp(ptr %.pre55, ptr nonnull @.str.107, i64 %i.j)
  %i.av = icmp eq i32 %bcmp.i.4, 0
  br i1 %i.av, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.5

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.5: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.4
  %bcmp.i.5 = call i32 @bcmp(ptr %.pre55, ptr nonnull @.str.108, i64 %i.j)
  %i.aw = icmp eq i32 %bcmp.i.5, 0
  br i1 %i.aw, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.6

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.6: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.5
  %bcmp.i.6 = call i32 @bcmp(ptr %.pre55, ptr nonnull @.str.109, i64 %i.j)
  %i.ax = icmp eq i32 %bcmp.i.6, 0
  br i1 %i.ax, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.7

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.7: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.6
  %bcmp.i.7 = call i32 @bcmp(ptr %.pre55, ptr nonnull @.str.110, i64 %i.j)
  %i.ay = icmp eq i32 %bcmp.i.7, 0
  br i1 %i.ay, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.8

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.8: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.7
  %bcmp.i.8 = call i32 @bcmp(ptr %.pre55, ptr nonnull @.str.111, i64 %i.j)
  %i.az = icmp eq i32 %bcmp.i.8, 0
  br i1 %i.az, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.9

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.9: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.8
  %bcmp.i.9 = call i32 @bcmp(ptr %.pre55, ptr nonnull @.str.112, i64 %i.j)
  %i.ba = icmp eq i32 %bcmp.i.9, 0
  br i1 %i.ba, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.10

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.10: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.9
  %bcmp.i.10 = call i32 @bcmp(ptr %.pre55, ptr nonnull @.str.113, i64 %i.j)
  %i.bb = icmp eq i32 %bcmp.i.10, 0
  br i1 %i.bb, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.11

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.11: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.10
  %bcmp.i.11 = call i32 @bcmp(ptr %.pre55, ptr nonnull @.str.114, i64 %i.j)
  %i.bc = icmp eq i32 %bcmp.i.11, 0
  br i1 %i.bc, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.12

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.12: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.11
  %bcmp.i.12 = call i32 @bcmp(ptr %.pre55, ptr nonnull @.str.115, i64 %i.j)
  %i.bd = icmp eq i32 %bcmp.i.12, 0
  br i1 %i.bd, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.13

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.13: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.12
  %bcmp.i.13 = call i32 @bcmp(ptr %.pre55, ptr nonnull @.str.116, i64 %i.j)
  %i.be = icmp eq i32 %bcmp.i.13, 0
  br i1 %i.be, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.critedge32

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.14: ; preds = %.preheader
  %bcmp.i.14 = call i32 @bcmp(ptr %.pre55, ptr nonnull @.str.117, i64 %i.j)
  %i.bf = icmp eq i32 %bcmp.i.14, 0
  br i1 %i.bf, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.critedge32

.critedge32:                                      ; preds = %.preheader, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.2, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.13, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.14, %bb.i, %.critedge
  %.sroa.6.4 = phi i32 [ 1024, %bb.i ], [ %i.ar, %.critedge ], [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.13 ], [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.2 ], [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.14 ], [ 0, %.preheader ] ; 2 uses
  %i.bg = icmp eq ptr %.pre55, %i.g
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.critedge32
  %i.bh = load i64, ptr %i.g, align 8, !tbaa !17
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %.pre55, i64 noundef %i.bi) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.critedge32, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.sroa.6.481 = phi i32 [ %.sroa.6.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.sroa.6.4, %.critedge32 ], [ 0, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret i32 %.sroa.6.481

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %bb.h
  %i.bj = load i64, ptr %i.g, align 8, !tbaa !17
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.bk) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  resume { ptr, i32 } %i.aj
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #1 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 16
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 4 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph43

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit
  %i.g = icmp eq i64 %i.aq, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph43, !llvm.loop !834

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge17.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.010.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_(ptr %0, ptr %storemerge17.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.h, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i ], [ %storemerge17.lcssa, %._crit_edge ]
  %i.h = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -1 ; 4 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !17    ; 2 uses
  %i.j = load i8, ptr %0, align 1, !tbaa !17
  store i8 %i.j, ptr %i.h, align 1, !tbaa !17
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = sub i64 %i.k, %i.a                       ; 5 uses
  %i.m = add nsw i64 %i.l, -1
  %i.n = lshr i64 %i.m, 1
  %i.o = icmp sgt i64 %i.l, 2
  br i1 %i.o, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.035.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.p = shl i64 %.035.i.i.i.i, 1                 ; 2 uses
  %i.q = add i64 %i.p, 2                          ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %0, i64 %i.q
  %i.s = or disjoint i64 %i.p, 1                  ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %0, i64 %i.s
  %i.u = load i8, ptr %i.r, align 1, !tbaa !17
  %i.v = load i8, ptr %i.t, align 1, !tbaa !17
  %i.w = icmp slt i8 %i.u, %i.v
  %spec.select.i.i.i.i = select i1 %i.w, i64 %i.s, i64 %i.q ; 4 uses
  %i.x = getelementptr inbounds i8, ptr %0, i64 %spec.select.i.i.i.i
  %i.y = load i8, ptr %i.x, align 1, !tbaa !17
  %i.z = getelementptr inbounds i8, ptr %0, i64 %.035.i.i.i.i
  store i8 %i.y, ptr %i.z, align 1, !tbaa !17
  %i.aa = icmp slt i64 %spec.select.i.i.i.i, %i.n
  br i1 %i.aa, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !835

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %4 = and i64 %i.l, 1
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ab = add nsw i64 %i.l, -2
  %i.ac = ashr exact i64 %i.ab, 1
  %i.ad = icmp eq i64 %.0.lcssa.i.i.i.i, %i.ac
  br i1 %i.ad, label %.thread.i.i.i, label %bb.d

.thread.i.i.i:                                    ; preds = %bb.c
  %i.ae = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.af = or disjoint i64 %i.ae, 1                ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !17
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %.0.lcssa.i.i.i.i
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !17
  br label %.lr.ph.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %.thread.i.i.i
  %.019.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.d ], [ %i.af, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.e
  %.019.i.i.i.i.i = phi i64 [ %.0920.i.i56.i.i.i, %bb.e ], [ %.019.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i56.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %.0920.i.i56.i.i.i
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !17  ; 2 uses
  %i.al = icmp slt i8 %i.ak, %i.i
  br i1 %i.al, label %bb.e, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.am = getelementptr inbounds i8, ptr %0, i64 %.019.i.i.i.i.i
  store i8 %i.ak, ptr %i.am, align 1, !tbaa !17
  %.not7.i.i.i = icmp eq i64 %.0920.i.i56.i.i.i, 0
  br i1 %.not7.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !836

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i, %bb.d
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.019.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.e ]
  %i.an = getelementptr inbounds i8, ptr %0, i64 %.0.lcssa.i.i.i.i.i
  store i8 %i.i, ptr %i.an, align 1, !tbaa !17
  %i.ao = icmp sgt i64 %i.l, 1
  br i1 %i.ao, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit, !llvm.loop !837

.lr.ph43:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1742 = phi ptr [ %.sroa.010.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01841 = phi i64 [ %i.aq, %bb.b ], [ %2, %.lr.ph ]
  %i.ap = phi i64 [ %i.bo, %bb.b ], [ %i.c, %.lr.ph ]
  %i.aq = add nsw i64 %.01841, -1                 ; 3 uses
  %i.ar = lshr i64 %i.ap, 1
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 %i.ar ; 3 uses
  %i.at = getelementptr inbounds i8, ptr %storemerge1742, i64 -1 ; 3 uses
  %i.au = load i8, ptr %i.e, align 1, !tbaa !17   ; 5 uses
  %i.av = load i8, ptr %i.as, align 1, !tbaa !17  ; 5 uses
  %i.aw = icmp slt i8 %i.au, %i.av
  %i.ax = load i8, ptr %i.at, align 1, !tbaa !17  ; 6 uses
  br i1 %i.aw, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.lr.ph43
  %i.ay = icmp slt i8 %i.av, %i.ax
  br i1 %i.ay, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.az = load i8, ptr %0, align 1, !tbaa !17
  store i8 %i.av, ptr %0, align 1, !tbaa !17
  store i8 %i.az, ptr %i.as, align 1, !tbaa !17
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.h:                                             ; preds = %bb.f
  %i.ba = icmp slt i8 %i.au, %i.ax
  %i.bb = load i8, ptr %0, align 1, !tbaa !17     ; 2 uses
  br i1 %i.ba, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i8 %i.ax, ptr %0, align 1, !tbaa !17
  store i8 %i.bb, ptr %i.at, align 1, !tbaa !17
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  store i8 %i.au, ptr %0, align 1, !tbaa !17
  store i8 %i.bb, ptr %i.e, align 1, !tbaa !17
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.k:                                             ; preds = %.lr.ph43
  %i.bc = icmp slt i8 %i.au, %i.ax
  br i1 %i.bc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bd = load i8, ptr %0, align 1, !tbaa !17
  store i8 %i.au, ptr %0, align 1, !tbaa !17
  store i8 %i.bd, ptr %i.e, align 1, !tbaa !17
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.m:                                             ; preds = %bb.k
  %i.be = icmp slt i8 %i.av, %i.ax
  %i.bf = load i8, ptr %0, align 1, !tbaa !17     ; 2 uses
  br i1 %i.be, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i8 %i.ax, ptr %0, align 1, !tbaa !17
  store i8 %i.bf, ptr %i.at, align 1, !tbaa !17
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  store i8 %i.av, ptr %0, align 1, !tbaa !17
  store i8 %i.bf, ptr %i.as, align 1, !tbaa !17
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader: ; preds = %bb.o, %bb.n, %bb.l, %bb.j, %bb.i, %bb.g
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader, %bb.r
  %.sroa.010.0.i.i = phi ptr [ %i.bj, %bb.r ], [ %i.e, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.r ], [ %storemerge1742, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader ]
  %i.bg = load i8, ptr %0, align 1, !tbaa !17     ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i ], [ %i.bj, %bb.p ] ; 8 uses
  %i.bh = load i8, ptr %.sroa.010.1.i.i, align 1, !tbaa !17 ; 2 uses
  %i.bi = icmp slt i8 %i.bh, %i.bg
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 1 ; 2 uses
  br i1 %i.bi, label %bb.p, label %.preheader.i.i, !llvm.loop !838

.preheader.i.i:                                   ; preds = %bb.p, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.p ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -1 ; 5 uses
  %i.bk = load i8, ptr %.sroa.0.1.i.i, align 1, !tbaa !17 ; 2 uses
  %i.bl = icmp slt i8 %i.bg, %i.bk
  br i1 %i.bl, label %.preheader.i.i, label %bb.q, !llvm.loop !839

bb.q:                                             ; preds = %.preheader.i.i
  %i.bm = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.bm, label %bb.r, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit

bb.r:                                             ; preds = %bb.q
  store i8 %i.bk, ptr %.sroa.010.1.i.i, align 1, !tbaa !17
  store i8 %i.bh, ptr %.sroa.0.1.i.i, align 1, !tbaa !17
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i, !llvm.loop !840

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit: ; preds = %bb.q
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge1742, i64 noundef %i.aq)
  %i.bn = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.bo = sub i64 %i.bn, %i.a                     ; 2 uses
  %i.bp = icmp sgt i64 %i.bo, 16
  br i1 %i.bp, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit, !llvm.loop !834

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %0, ptr %1) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 16
  br i1 %i.d, label %.lr.ph.i, label %bb.g

.lr.ph.i:                                         ; preds = %bb.a
  %.sroa.0.015.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %bb.b

bb.b:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i, %.lr.ph.i
  %.sroa.0.018.i.idx = phi i64 [ 1, %.lr.ph.i ], [ %.sroa.0.018.i.add, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i ] ; 4 uses
  %.pn17.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.018.i.ptr, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i ] ; 3 uses
  %.sroa.0.018.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.018.i.idx ; 4 uses
  %i.e = load i8, ptr %.sroa.0.018.i.ptr, align 1, !tbaa !17 ; 4 uses
  %i.f = load i8, ptr %0, align 1, !tbaa !17      ; 2 uses
  %i.g = icmp slt i8 %i.e, %i.f
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %.sroa.0.018.i.idx, 1
  br i1 %i.h, label %bb.d, label %bb.e, !prof !279

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0.015.i.ptr, ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %.sroa.0.018.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 1
  store i8 %i.f, ptr %i.i, align 1, !tbaa !17
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i

bb.f:                                             ; preds = %bb.b
  %i.j = load i8, ptr %.pn17.i, align 1, !tbaa !17 ; 2 uses
  %i.k = icmp slt i8 %i.e, %i.j
  br i1 %i.k, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %i.l = phi i8 [ %i.m, %.lr.ph.i.i ], [ %i.j, %bb.f ]
  %.sroa.0.09.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn17.i, %bb.f ] ; 3 uses
  %.sroa.04.08.i.i = phi ptr [ %.sroa.0.09.i.i, %.lr.ph.i.i ], [ %.sroa.0.018.i.ptr, %bb.f ]
  store i8 %i.l, ptr %.sroa.04.08.i.i, align 1, !tbaa !17
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i, i64 -1 ; 2 uses
  %i.m = load i8, ptr %.sroa.0.0.i.i, align 1, !tbaa !17 ; 2 uses
  %i.n = icmp slt i8 %i.e, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i, !llvm.loop !841

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %.lr.ph.i.i, %bb.f, %bb.e, %bb.d
  %.sink.i = phi ptr [ %0, %bb.e ], [ %0, %bb.d ], [ %.sroa.0.018.i.ptr, %bb.f ], [ %.sroa.0.09.i.i, %.lr.ph.i.i ]
  store i8 %i.e, ptr %.sink.i, align 1, !tbaa !17
  %.sroa.0.018.i.add = add nuw nsw i64 %.sroa.0.018.i.idx, 1 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.018.i.add, 16
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %bb.b, !llvm.loop !842

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %.not4.i = icmp eq ptr %i.o, %1
  br i1 %.not4.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %.lr.ph.i6.preheader

.lr.ph.i6.preheader:                              ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit
  %i.p = sub i64 %i.a, %i.b
  %i.q = add i64 %i.a, -17
  %xtraiter = and i64 %i.p, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i6.prol.loopexit, label %.lr.ph.i6.prol

.lr.ph.i6.prol:                                   ; preds = %.lr.ph.i6.preheader
  %i.r = load i8, ptr %i.o, align 1, !tbaa !17    ; 3 uses
  %.sroa.0.07.i.i.prol = getelementptr inbounds nuw i8, ptr %0, i64 15 ; 2 uses
  %i.s = load i8, ptr %.sroa.0.07.i.i.prol, align 1, !tbaa !17 ; 2 uses
  %i.t = icmp slt i8 %i.r, %i.s
  br i1 %i.t, label %.lr.ph.i.i8.prol, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.prol

.lr.ph.i.i8.prol:                                 ; preds = %.lr.ph.i6.prol, %.lr.ph.i.i8.prol
  %i.u = phi i8 [ %i.v, %.lr.ph.i.i8.prol ], [ %i.s, %.lr.ph.i6.prol ]
  %.sroa.0.09.i.i9.prol = phi ptr [ %.sroa.0.0.i.i11.prol, %.lr.ph.i.i8.prol ], [ %.sroa.0.07.i.i.prol, %.lr.ph.i6.prol ] ; 3 uses
  %.sroa.04.08.i.i10.prol = phi ptr [ %.sroa.0.09.i.i9.prol, %.lr.ph.i.i8.prol ], [ %i.o, %.lr.ph.i6.prol ]
  store i8 %i.u, ptr %.sroa.04.08.i.i10.prol, align 1, !tbaa !17
  %.sroa.0.0.i.i11.prol = getelementptr inbounds i8, ptr %.sroa.0.09.i.i9.prol, i64 -1 ; 2 uses
  %i.v = load i8, ptr %.sroa.0.0.i.i11.prol, align 1, !tbaa !17 ; 2 uses
  %i.w = icmp slt i8 %i.r, %i.v
  br i1 %i.w, label %.lr.ph.i.i8.prol, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.prol, !llvm.loop !841

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.prol: ; preds = %.lr.ph.i.i8.prol, %.lr.ph.i6.prol
  %.sroa.04.0.lcssa.i.i.prol = phi ptr [ %i.o, %.lr.ph.i6.prol ], [ %.sroa.0.09.i.i9.prol, %.lr.ph.i.i8.prol ]
  store i8 %i.r, ptr %.sroa.04.0.lcssa.i.i.prol, align 1, !tbaa !17
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 17
  br label %.lr.ph.i6.prol.loopexit

.lr.ph.i6.prol.loopexit:                          ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.prol, %.lr.ph.i6.preheader
  %.sroa.0.05.i.unr = phi ptr [ %i.o, %.lr.ph.i6.preheader ], [ %i.x, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.prol ]
  %i.y = icmp eq i64 %i.q, %i.b
  br i1 %i.y, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %.lr.ph.i6.prol.loopexit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.1
  %.sroa.0.05.i = phi ptr [ %i.am, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.1 ], [ %.sroa.0.05.i.unr, %.lr.ph.i6.prol.loopexit ] ; 8 uses
  %i.z = load i8, ptr %.sroa.0.05.i, align 1, !tbaa !17 ; 3 uses
  %.sroa.0.07.i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i, i64 -1 ; 2 uses
  %i.aa = load i8, ptr %.sroa.0.07.i.i, align 1, !tbaa !17 ; 2 uses
  %i.ab = icmp slt i8 %i.z, %i.aa
  br i1 %i.ab, label %.lr.ph.i.i8, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i

.lr.ph.i.i8:                                      ; preds = %.lr.ph.i6, %.lr.ph.i.i8
  %i.ac = phi i8 [ %i.ad, %.lr.ph.i.i8 ], [ %i.aa, %.lr.ph.i6 ]
  %.sroa.0.09.i.i9 = phi ptr [ %.sroa.0.0.i.i11, %.lr.ph.i.i8 ], [ %.sroa.0.07.i.i, %.lr.ph.i6 ] ; 3 uses
  %.sroa.04.08.i.i10 = phi ptr [ %.sroa.0.09.i.i9, %.lr.ph.i.i8 ], [ %.sroa.0.05.i, %.lr.ph.i6 ]
  store i8 %i.ac, ptr %.sroa.04.08.i.i10, align 1, !tbaa !17
  %.sroa.0.0.i.i11 = getelementptr inbounds i8, ptr %.sroa.0.09.i.i9, i64 -1 ; 2 uses
  %i.ad = load i8, ptr %.sroa.0.0.i.i11, align 1, !tbaa !17 ; 2 uses
  %i.ae = icmp slt i8 %i.z, %i.ad
  br i1 %i.ae, label %.lr.ph.i.i8, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, !llvm.loop !841

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i8, %.lr.ph.i6
  %.sroa.04.0.lcssa.i.i = phi ptr [ %.sroa.0.05.i, %.lr.ph.i6 ], [ %.sroa.0.09.i.i9, %.lr.ph.i.i8 ]
  store i8 %i.z, ptr %.sroa.04.0.lcssa.i.i, align 1, !tbaa !17
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 1 ; 3 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !17  ; 3 uses
  %i.ah = load i8, ptr %.sroa.0.05.i, align 1, !tbaa !17 ; 2 uses
  %i.ai = icmp slt i8 %i.ag, %i.ah
  br i1 %i.ai, label %.lr.ph.i.i8.1, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.1

.lr.ph.i.i8.1:                                    ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, %.lr.ph.i.i8.1
  %i.aj = phi i8 [ %i.ak, %.lr.ph.i.i8.1 ], [ %i.ah, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i ]
  %.sroa.0.09.i.i9.1 = phi ptr [ %.sroa.0.0.i.i11.1, %.lr.ph.i.i8.1 ], [ %.sroa.0.05.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i ] ; 3 uses
  %.sroa.04.08.i.i10.1 = phi ptr [ %.sroa.0.09.i.i9.1, %.lr.ph.i.i8.1 ], [ %i.af, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i ]
  store i8 %i.aj, ptr %.sroa.04.08.i.i10.1, align 1, !tbaa !17
  %.sroa.0.0.i.i11.1 = getelementptr inbounds i8, ptr %.sroa.0.09.i.i9.1, i64 -1 ; 2 uses
  %i.ak = load i8, ptr %.sroa.0.0.i.i11.1, align 1, !tbaa !17 ; 2 uses
  %i.al = icmp slt i8 %i.ag, %i.ak
  br i1 %i.al, label %.lr.ph.i.i8.1, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.1, !llvm.loop !841

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.1: ; preds = %.lr.ph.i.i8.1, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i
  %.sroa.04.0.lcssa.i.i.1 = phi ptr [ %i.af, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i ], [ %.sroa.0.09.i.i9.1, %.lr.ph.i.i8.1 ]
  store i8 %i.ag, ptr %.sroa.04.0.lcssa.i.i.1, align 1, !tbaa !17
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 2 ; 2 uses
  %.not.i7.1 = icmp eq ptr %i.am, %1
  br i1 %.not.i7.1, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %.lr.ph.i6, !llvm.loop !843

bb.g:                                             ; preds = %bb.a
  %i.an = icmp eq ptr %0, %1
  br i1 %i.an, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %.preheader.i12

.preheader.i12:                                   ; preds = %bb.g
  %.sroa.0.015.i13 = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  %.not16.i14 = icmp eq ptr %.sroa.0.015.i13, %1
  br i1 %.not16.i14, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %.lr.ph.i15

.lr.ph.i15:                                       ; preds = %.preheader.i12, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i18
  %.sroa.0.018.i16 = phi ptr [ %.sroa.0.0.i20, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i18 ], [ %.sroa.0.015.i13, %.preheader.i12 ] ; 6 uses
  %.pn17.i17 = phi ptr [ %.sroa.0.018.i16, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i18 ], [ %0, %.preheader.i12 ] ; 3 uses
  %i.ao = load i8, ptr %.sroa.0.018.i16, align 1, !tbaa !17 ; 4 uses
  %i.ap = load i8, ptr %0, align 1, !tbaa !17     ; 2 uses
  %i.aq = icmp slt i8 %i.ao, %i.ap
  br i1 %i.aq, label %bb.h, label %bb.l

bb.h:                                             ; preds = %.lr.ph.i15
  %i.ar = ptrtoint ptr %.sroa.0.018.i16 to i64
  %i.as = sub i64 %i.ar, %i.b                     ; 3 uses
  %i.at = icmp sgt i64 %i.as, 1
  br i1 %i.at, label %bb.i, label %bb.j, !prof !279

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0.015.i13, ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %i.as, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i18

bb.j:                                             ; preds = %bb.h
  %i.au = icmp eq i64 %i.as, 1
  br i1 %i.au, label %bb.k, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i18

bb.k:                                             ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %.pn17.i17, i64 1
  store i8 %i.ap, ptr %i.av, align 1, !tbaa !17
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i18

bb.l:                                             ; preds = %.lr.ph.i15
  %i.aw = load i8, ptr %.pn17.i17, align 1, !tbaa !17 ; 2 uses
  %i.ax = icmp slt i8 %i.ao, %i.aw
  br i1 %i.ax, label %.lr.ph.i.i22, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i18

.lr.ph.i.i22:                                     ; preds = %bb.l, %.lr.ph.i.i22
  %i.ay = phi i8 [ %i.az, %.lr.ph.i.i22 ], [ %i.aw, %bb.l ]
  %.sroa.0.09.i.i23 = phi ptr [ %.sroa.0.0.i.i25, %.lr.ph.i.i22 ], [ %.pn17.i17, %bb.l ] ; 3 uses
  %.sroa.04.08.i.i24 = phi ptr [ %.sroa.0.09.i.i23, %.lr.ph.i.i22 ], [ %.sroa.0.018.i16, %bb.l ]
  store i8 %i.ay, ptr %.sroa.04.08.i.i24, align 1, !tbaa !17
  %.sroa.0.0.i.i25 = getelementptr inbounds i8, ptr %.sroa.0.09.i.i23, i64 -1 ; 2 uses
  %i.az = load i8, ptr %.sroa.0.0.i.i25, align 1, !tbaa !17 ; 2 uses
  %i.ba = icmp slt i8 %i.ao, %i.az
  br i1 %i.ba, label %.lr.ph.i.i22, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i18, !llvm.loop !841

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i18: ; preds = %.lr.ph.i.i22, %bb.l, %bb.k, %bb.j, %bb.i
  %.sink.i19 = phi ptr [ %0, %bb.k ], [ %0, %bb.i ], [ %0, %bb.j ], [ %.sroa.0.018.i16, %bb.l ], [ %.sroa.0.09.i.i23, %.lr.ph.i.i22 ]
  store i8 %i.ao, ptr %.sink.i19, align 1, !tbaa !17
  %.sroa.0.0.i20 = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i16, i64 1 ; 2 uses
  %.not.i21 = icmp eq ptr %.sroa.0.0.i20, %1
  br i1 %.not.i21, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %.lr.ph.i15, !llvm.loop !842

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i18, %.lr.ph.i6.prol.loopexit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.1, %.preheader.i12, %bb.g, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %.fr = freeze i64 %i.c                          ; 4 uses
  %i.d = icmp slt i64 %.fr, 2
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add nsw i64 %.fr, -2                     ; 3 uses
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %i.g = add nsw i64 %.fr, -1
  %i.h = lshr i64 %i.g, 1                         ; 4 uses
  %3 = and i64 %.fr, 1
  %4 = icmp eq i64 %3, 0
  %i.i = lshr exact i64 %i.e, 1                   ; 2 uses
  br i1 %4, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %i.j = or disjoint i64 %i.e, 1                  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %i.i
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us
  %.08.us = phi i64 [ %i.ai, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us ], [ %i.f, %bb.b ] ; 8 uses
  %i.m = getelementptr inbounds i8, ptr %0, i64 %.08.us
  %i.n = load i8, ptr %i.m, align 1, !tbaa !17    ; 2 uses
  %i.o = icmp slt i64 %.08.us, %i.h
  br i1 %i.o, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.035.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.08.us, %.split.us ] ; 2 uses
  %i.p = shl i64 %.035.i.us, 1                    ; 2 uses
  %i.q = add i64 %i.p, 2                          ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %0, i64 %i.q
  %i.s = or disjoint i64 %i.p, 1                  ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %0, i64 %i.s
  %i.u = load i8, ptr %i.r, align 1, !tbaa !17
  %i.v = load i8, ptr %i.t, align 1, !tbaa !17
  %i.w = icmp slt i8 %i.u, %i.v
  %spec.select.i.us = select i1 %i.w, i64 %i.s, i64 %i.q ; 6 uses
  %i.x = getelementptr inbounds i8, ptr %0, i64 %spec.select.i.us
  %i.y = load i8, ptr %i.x, align 1, !tbaa !17
  %i.z = getelementptr inbounds i8, ptr %0, i64 %.035.i.us
  store i8 %i.y, ptr %i.z, align 1, !tbaa !17
  %i.aa = icmp slt i64 %spec.select.i.us, %i.h
  br i1 %i.aa, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !835

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %i.ab = icmp sgt i64 %spec.select.i.us, %.08.us
  br i1 %i.ab, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us, %bb.c
  %.019.i.i.us = phi i64 [ %.0920.i.i.us, %bb.c ], [ %spec.select.i.us, %._crit_edge.i.us ] ; 3 uses
  %.0920.in.i.i.us = add nsw i64 %.019.i.i.us, -1
  %.0920.i.i.us = sdiv i64 %.0920.in.i.i.us, 2    ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %.0920.i.i.us
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !17  ; 2 uses
  %i.ae = icmp slt i8 %i.ad, %i.n
  br i1 %i.ae, label %bb.c, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %.019.i.i.us
  store i8 %i.ad, ptr %i.af, align 1, !tbaa !17
  %i.ag = icmp sgt i64 %.0920.i.i.us, %.08.us
  br i1 %i.ag, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us, !llvm.loop !836

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us: ; preds = %.lr.ph.i.i.us, %bb.c, %.split.us, %._crit_edge.i.us
  %.0.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.08.us, %.split.us ], [ %.019.i.i.us, %.lr.ph.i.i.us ], [ %.0920.i.i.us, %bb.c ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %.0.lcssa.i.i.us
  store i8 %i.n, ptr %i.ah, align 1, !tbaa !17
  %.not.us = icmp eq i64 %.08.us, 0
  %i.ai = add nsw i64 %.08.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !844

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit
  %.08 = phi i64 [ %i.bh, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit ], [ %i.f, %.split.preheader ] ; 8 uses
  %i.aj = getelementptr inbounds i8, ptr %0, i64 %.08
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !17  ; 2 uses
  %i.al = icmp slt i64 %.08, %i.h
  br i1 %i.al, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.035.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.08, %.split ] ; 2 uses
  %i.am = shl i64 %.035.i, 1                      ; 2 uses
  %i.an = add i64 %i.am, 2                        ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %0, i64 %i.an
  %i.ap = or disjoint i64 %i.am, 1                ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %0, i64 %i.ap
  %i.ar = load i8, ptr %i.ao, align 1, !tbaa !17
  %i.as = load i8, ptr %i.aq, align 1, !tbaa !17
  %i.at = icmp slt i8 %i.ar, %i.as
  %spec.select.i = select i1 %i.at, i64 %i.ap, i64 %i.an ; 4 uses
  %i.au = getelementptr inbounds i8, ptr %0, i64 %spec.select.i
  %i.av = load i8, ptr %i.au, align 1, !tbaa !17
  %i.aw = getelementptr inbounds i8, ptr %0, i64 %.035.i
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !17
  %i.ax = icmp slt i64 %spec.select.i, %i.h
  br i1 %i.ax, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !835

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.08, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.ay = icmp eq i64 %.0.lcssa.i, %i.i
  br i1 %i.ay, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.az = load i8, ptr %i.k, align 1, !tbaa !17
  store i8 %i.az, ptr %i.l, align 1, !tbaa !17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %i.j, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.ba = icmp sgt i64 %.1.i, %.08
  br i1 %i.ba, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.019.i.i = phi i64 [ %.0920.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.0920.in.i.i = add nsw i64 %.019.i.i, -1
  %.0920.i.i = sdiv i64 %.0920.in.i.i, 2          ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 %.0920.i.i
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !17  ; 2 uses
  %i.bd = icmp slt i8 %i.bc, %i.ak
  br i1 %i.bd, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 %.019.i.i
  store i8 %i.bc, ptr %i.be, align 1, !tbaa !17
  %i.bf = icmp sgt i64 %.0920.i.i, %.08
  br i1 %i.bf, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit, !llvm.loop !836

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0920.i.i, %bb.f ], [ %.019.i.i, %.lr.ph.i.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 %.0.lcssa.i.i
  store i8 %i.ak, ptr %i.bg, align 1, !tbaa !17
  %.not = icmp eq i64 %.08, 0
  %i.bh = add nsw i64 %.08, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !844

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #23

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZZNKSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EE8_M_applyEcSt17integral_constantIbLb0EEENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(9) %0) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !828    ; 10 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !830   ; 6 uses
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.b to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = icmp sgt i64 %i.i, 0
  br i1 %i.j, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcNS0_5__ops14_Iter_less_valEET_SA_SA_RKT0_T1_.exit.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %bb.a, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %.016.i.i = phi i64 [ %.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.i, %bb.a ] ; 2 uses
  %.sroa.011.015.i.i = phi ptr [ %.sroa.011.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.k = lshr i64 %.016.i.i, 1                    ; 3 uses
  %.sink.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.011.015.i.i, i64 %i.k ; 2 uses
  %i.l = load i8, ptr %.sink.i.i.i, align 1, !tbaa !17
  %i.m = icmp slt i8 %i.l, %i.f                   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sink.i.i.i, i64 1
  %i.o = xor i64 %i.k, -1
  %i.p = add nsw i64 %.016.i.i, %i.o
  %.sroa.011.1.i.i = select i1 %i.m, ptr %i.n, ptr %.sroa.011.015.i.i ; 2 uses
  %.1.i.i = select i1 %i.m, i64 %i.p, i64 %i.k    ; 2 uses
  %i.q = icmp sgt i64 %.1.i.i, 0
  br i1 %i.q, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcNS0_5__ops14_Iter_less_valEET_SA_SA_RKT0_T1_.exit.i, !llvm.loop !845

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcNS0_5__ops14_Iter_less_valEET_SA_SA_RKT0_T1_.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, %bb.a
  %.sroa.011.0.lcssa.i.i = phi ptr [ %i.b, %bb.a ], [ %.sroa.011.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ] ; 2 uses
  %.not.i = icmp eq ptr %.sroa.011.0.lcssa.i.i, %i.d
  br i1 %.not.i, label %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcEbT_S8_RKT0_.exit.thread, label %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcEbT_S8_RKT0_.exit

_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcEbT_S8_RKT0_.exit: ; preds = %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcNS0_5__ops14_Iter_less_valEET_SA_SA_RKT0_T1_.exit.i
  %i.r = load i8, ptr %.sroa.011.0.lcssa.i.i, align 1, !tbaa !17
  %.not = icmp slt i8 %i.f, %i.r
  br i1 %.not, label %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcEbT_S8_RKT0_.exit.thread, label %_ZNKSt7__cxx1112regex_traitsIcE7isctypeEcNS1_10_RegexMaskE.exit.thread

_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcEbT_S8_RKT0_.exit.thread: ; preds = %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcNS0_5__ops14_Iter_less_valEET_SA_SA_RKT0_T1_.exit.i, %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcEbT_S8_RKT0_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !732  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !732  ; 2 uses
  %.not5256 = icmp eq ptr %i.t, %i.v
  br i1 %.not5256, label %.critedge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.046.057, i64 2 ; 2 uses
  %.not52 = icmp eq ptr %i.w, %i.v
  br i1 %.not52, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcEbT_S8_RKT0_.exit.thread, %bb.b
  %.sroa.046.057 = phi ptr [ %i.w, %bb.b ], [ %i.t, %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcEbT_S8_RKT0_.exit.thread ] ; 3 uses
  %i.x = load i8, ptr %.sroa.046.057, align 1, !tbaa !585
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.046.057, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !587
  %i.aa = icmp sle i8 %i.x, %i.f
  %i.ab = icmp sle i8 %i.f, %i.z
  %i.ac = and i1 %i.aa, %i.ab
  br i1 %i.ac, label %_ZNKSt7__cxx1112regex_traitsIcE7isctypeEcNS1_10_RegexMaskE.exit.thread, label %bb.b

.critedge:                                        ; preds = %bb.b, %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcEbT_S8_RKT0_.exit.thread
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 104 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !812, !nonnull !209, !align !306
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %.sroa.09.0.copyload = load i32, ptr %i.af, align 8 ; 2 uses
  %i.ag = tail call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #30
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !494
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !495
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ag
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !499 ; 7 uses
  %.not.not.i.i = icmp eq ptr %i.al, null
  br i1 %.not.not.i.i, label %bb.c, label %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i

bb.c:                                             ; preds = %.critedge
  tail call void @_ZSt16__throw_bad_castv() #29
  unreachable

_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i: ; preds = %.critedge
  %.sroa.0.0.extract.trunc.i = trunc i32 %.sroa.09.0.copyload to i16
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !597
  %i.ao = zext i8 %i.f to i64
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %i.ao
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !598
  %i.ar = and i16 %i.aq, %.sroa.0.0.extract.trunc.i
  %.not4.i = icmp eq i16 %i.ar, 0
  br i1 %.not4.i, label %bb.d, label %_ZNKSt7__cxx1112regex_traitsIcE7isctypeEcNS1_10_RegexMaskE.exit.thread

bb.d:                                             ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i
  %i.as = and i32 %.sroa.09.0.copyload, 65536
  %.not.i27 = icmp eq i32 %i.as, 0
  br i1 %.not.i27, label %_ZNKSt7__cxx1112regex_traitsIcE7isctypeEcNS1_10_RegexMaskE.exit.thread50, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  %i.au = load i8, ptr %i.at, align 8, !tbaa !256
  %.not.i.i = icmp eq i8 %i.au, 0
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 152
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !17
  br label %_ZNKSt7__cxx1112regex_traitsIcE7isctypeEcNS1_10_RegexMaskE.exit

bb.g:                                             ; preds = %bb.e
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.al)
  %i.ax = load ptr, ptr %i.al, align 8, !tbaa !93
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = tail call noundef signext i8 %i.az(ptr noundef nonnull align 8 dereferenceable(570) %i.al, i8 noundef signext 95), !inline_history !846
  br label %_ZNKSt7__cxx1112regex_traitsIcE7isctypeEcNS1_10_RegexMaskE.exit

_ZNKSt7__cxx1112regex_traitsIcE7isctypeEcNS1_10_RegexMaskE.exit: ; preds = %bb.f, %bb.g
  %.0.i.i = phi i8 [ %i.aw, %bb.f ], [ %i.ba, %bb.g ]
  %i.bb = icmp eq i8 %i.f, %.0.i.i
  br i1 %i.bb, label %_ZNKSt7__cxx1112regex_traitsIcE7isctypeEcNS1_10_RegexMaskE.exit.thread, label %_ZNKSt7__cxx1112regex_traitsIcE7isctypeEcNS1_10_RegexMaskE.exit.thread50

_ZNKSt7__cxx1112regex_traitsIcE7isctypeEcNS1_10_RegexMaskE.exit.thread50: ; preds = %bb.d, %_ZNKSt7__cxx1112regex_traitsIcE7isctypeEcNS1_10_RegexMaskE.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !272
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !272
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %i.bg = load ptr, ptr %i.ad, align 8, !tbaa !812, !nonnull !209, !align !306
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @_ZNKSt7__cxx1112regex_traitsIcE17transform_primaryIPKcEENS_12basic_stringIcSt11char_traitsIcESaIcEEET_SA_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 8 dereferenceable(8) %i.bg, ptr noundef nonnull %i.e, ptr noundef nonnull %i.bh)
  %i.bi = invoke ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops16_Iter_equals_valIS8_EEET_SH_SH_T0_St26random_access_iterator_tag(ptr %i.bd, ptr %i.bf, ptr nonnull align 8 dereferenceable(32) %1)
          to label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_ET_SE_SE_RKT0_.exit unwind label %bb.h

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_ET_SE_SE_RKT0_.exit: ; preds = %_ZNKSt7__cxx1112regex_traitsIcE7isctypeEcNS1_10_RegexMaskE.exit.thread50
  %i.bj = load ptr, ptr %i.be, align 8, !tbaa !272
  %.not53 = icmp eq ptr %i.bi, %i.bj
  %i.bk = load ptr, ptr %1, align 8, !tbaa !15    ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_ET_SE_SE_RKT0_.exit
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !17
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_ET_SE_SE_RKT0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.not53, label %bb.i, label %_ZNKSt7__cxx1112regex_traitsIcE7isctypeEcNS1_10_RegexMaskE.exit.thread

bb.h:                                             ; preds = %_ZNKSt7__cxx1112regex_traitsIcE7isctypeEcNS1_10_RegexMaskE.exit.thread50
  %i.bp = landingpad { ptr, i32 }
          cleanup
  %i.bq = load ptr, ptr %1, align 8, !tbaa !15    ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %bb.h
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !17
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  resume { ptr, i32 } %i.bp

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !734 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !734 ; 2 uses
  %.not5458 = icmp eq ptr %i.bw, %i.by
  br i1 %.not5458, label %_ZNKSt7__cxx1112regex_traitsIcE7isctypeEcNS1_10_RegexMaskE.exit.thread, label %.lr.ph60

.lr.ph60:                                         ; preds = %bb.i, %_ZNKSt7__cxx1112regex_traitsIcE7isctypeEcNS1_10_RegexMaskE.exit39.thread
  %.sroa.040.059 = phi ptr [ %i.cx, %_ZNKSt7__cxx1112regex_traitsIcE7isctypeEcNS1_10_RegexMaskE.exit39.thread ], [ %i.bw, %bb.i ] ; 2 uses
  %i.bz = load ptr, ptr %i.ad, align 8, !tbaa !812, !nonnull !209, !align !306
  %i.ca = load i8, ptr %i.e, align 8, !tbaa !830  ; 2 uses
  %.sroa.0.0.copyload = load i32, ptr %.sroa.040.059, align 2 ; 2 uses
  %i.cb = call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #30
  %i.cc = load ptr, ptr %i.bz, align 8, !tbaa !494
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !495
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cb
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !499 ; 7 uses
  %.not.not.i.i31 = icmp eq ptr %i.cg, null
  br i1 %.not.not.i.i31, label %bb.j, label %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i32

bb.j:                                             ; preds = %.lr.ph60
  call void @_ZSt16__throw_bad_castv() #29
end_hunk_5
begin_hunk_6_@_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EE22_M_add_character_classERKNS1_12basic_stringIcSt11char_traitsIcESaIcEEEb:bb.a
  %.not.i23.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  %i.bd = load ptr, ptr %i.v, align 8, !tbaa !735
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.be, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.bf) #32
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  store ptr %i.ak, ptr %i.s, align 8, !tbaa !738
  store ptr %i.bc, ptr %i.t, align 8, !tbaa !813
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ai
  store ptr %i.bg, ptr %i.v, align 8, !tbaa !735
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.f, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EE8_M_readyEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.193, align 8            ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !19     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 4 uses
  %.not.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not.i.i, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit: ; preds = %bb.a
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.f, i1 true)
  %i.h = shl nuw nsw i64 %i.g, 1
  %i.i = xor i64 %i.h, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.a, ptr %i.c, i64 noundef %i.i)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.a, ptr %i.c)
  %.pre = load ptr, ptr %0, align 8, !tbaa !19    ; 4 uses
  %.pre36 = ptrtoaddr ptr %.pre to i64            ; 2 uses
  %.pre13 = load ptr, ptr %i.b, align 8, !tbaa !19 ; 7 uses
  %.pre1335 = ptrtoaddr ptr %.pre13 to i64        ; 2 uses
  %i.j = icmp eq ptr %.pre, %.pre13
  %i.k = getelementptr inbounds nuw i8, ptr %.pre, i64 1 ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.k, %.pre13
  %or.cond = select i1 %i.j, i1 true, i1 %.not.i.i.i31
  br i1 %or.cond, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %.lr.ph

.preheader.i.i.i:                                 ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, %.pre13
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %.lr.ph, !llvm.loop !823

.lr.ph:                                           ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit, %.preheader.i.i.i
  %indvar = phi i64 [ %indvar.next, %.preheader.i.i.i ], [ 0, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 3 uses
  %i.m = phi ptr [ %i.l, %.preheader.i.i.i ], [ %i.k, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 3 uses
  %.sroa.09.0.i.i.i32 = phi ptr [ %i.m, %.preheader.i.i.i ], [ %.pre, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 5 uses
  %i.n = load i8, ptr %.sroa.09.0.i.i.i32, align 1, !tbaa !17 ; 3 uses
  %i.o = load i8, ptr %i.m, align 1, !tbaa !17
  %i.p = icmp eq i8 %i.n, %i.o
  br i1 %i.p, label %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i, label %.preheader.i.i.i, !llvm.loop !823

_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i: ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i32, i64 2 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.q, %.pre13
  br i1 %.not18.i.i, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET_S7_S7_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i
  %i.r = xor i64 %.pre1335, 2
  %i.s = add i64 %indvar, %.pre36
  %i.t = sub i64 %i.r, %i.s
  %i.u = add i64 %.pre1335, -3
  %i.v = add i64 %indvar, %.pre36
  %i.w = sub i64 %i.u, %i.v
  %xtraiter = and i64 %i.t, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %bb.c
  %i.x = phi i8 [ %i.z, %bb.c ], [ %i.n, %.lr.ph.i.i.preheader ]
  %i.y = phi ptr [ %i.ac, %bb.c ], [ %i.q, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.0.019.i.i.prol = phi ptr [ %.sroa.0.1.i.i.prol, %bb.c ], [ %.sroa.09.0.i.i.i32, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.c ], [ 0, %.lr.ph.i.i.preheader ]
  %i.z = load i8, ptr %i.y, align 1, !tbaa !17    ; 4 uses
  %i.aa = icmp eq i8 %i.x, %i.z
  br i1 %i.aa, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.prol
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i.prol, i64 1 ; 2 uses
  store i8 %i.z, ptr %i.ab, align 1, !tbaa !17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i.prol
  %.sroa.0.1.i.i.prol = phi ptr [ %.sroa.0.019.i.i.prol, %.lr.ph.i.i.prol ], [ %i.ab, %bb.b ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !870

.lr.ph.i.i.prol.loopexit:                         ; preds = %bb.c, %.lr.ph.i.i.preheader
  %.sroa.0.1.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %.sroa.0.1.i.i.prol, %bb.c ]
  %.unr = phi i8 [ %i.n, %.lr.ph.i.i.preheader ], [ %i.z, %bb.c ]
  %.unr38 = phi ptr [ %i.q, %.lr.ph.i.i.preheader ], [ %i.ac, %bb.c ]
  %.sroa.0.019.i.i.unr = phi ptr [ %.sroa.09.0.i.i.i32, %.lr.ph.i.i.preheader ], [ %.sroa.0.1.i.i.prol, %bb.c ]
  %i.ad = icmp ult i64 %i.w, 3
  br i1 %i.ad, label %._crit_edge.i.i.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %bb.h
  %i.ae = phi i8 [ %i.as, %bb.h ], [ %.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.af = phi ptr [ %i.av, %bb.h ], [ %.unr38, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.019.i.i = phi ptr [ %.sroa.0.1.i.i.3, %bb.h ], [ %.sroa.0.019.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !17  ; 3 uses
  %i.ah = icmp eq i8 %i.ae, %i.ag
  br i1 %i.ah, label %.lr.ph.i.i.1, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i, i64 1 ; 2 uses
  store i8 %i.ag, ptr %i.ai, align 1, !tbaa !17
  br label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.0.1.i.i = phi ptr [ %.sroa.0.019.i.i, %.lr.ph.i.i ], [ %i.ai, %bb.d ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !17  ; 3 uses
  %i.al = icmp eq i8 %i.ag, %i.ak
  br i1 %i.al, label %.lr.ph.i.i.2, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.1
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i, i64 1 ; 2 uses
  store i8 %i.ak, ptr %i.am, align 1, !tbaa !17
  br label %.lr.ph.i.i.2

.lr.ph.i.i.2:                                     ; preds = %bb.e, %.lr.ph.i.i.1
  %.sroa.0.1.i.i.1 = phi ptr [ %.sroa.0.1.i.i, %.lr.ph.i.i.1 ], [ %i.am, %bb.e ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !17  ; 3 uses
  %i.ap = icmp eq i8 %i.ak, %i.ao
  br i1 %i.ap, label %.lr.ph.i.i.3, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.2
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.1, i64 1 ; 2 uses
  store i8 %i.ao, ptr %i.aq, align 1, !tbaa !17
  br label %.lr.ph.i.i.3

.lr.ph.i.i.3:                                     ; preds = %bb.f, %.lr.ph.i.i.2
  %.sroa.0.1.i.i.2 = phi ptr [ %.sroa.0.1.i.i.1, %.lr.ph.i.i.2 ], [ %i.aq, %bb.f ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.af, i64 3
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !17  ; 3 uses
  %i.at = icmp eq i8 %i.ao, %i.as
  br i1 %i.at, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.3
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.2, i64 1 ; 2 uses
  store i8 %i.as, ptr %i.au, align 1, !tbaa !17
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i.i.3
  %.sroa.0.1.i.i.3 = phi ptr [ %.sroa.0.1.i.i.2, %.lr.ph.i.i.3 ], [ %i.au, %bb.g ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.af, i64 4 ; 2 uses
  %.not.i.i5.3 = icmp eq ptr %i.av, %.pre13
  br i1 %.not.i.i5.3, label %._crit_edge.i.i.loopexit, label %.lr.ph.i.i, !llvm.loop !826

._crit_edge.i.i.loopexit:                         ; preds = %bb.h, %.lr.ph.i.i.prol.loopexit
  %.sroa.0.1.i.i.lcssa = phi ptr [ %.sroa.0.1.i.i.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %.sroa.0.1.i.i.3, %bb.h ]
  %.pre14.pre = load ptr, ptr %i.b, align 8, !tbaa !19
  br label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET_S7_S7_.exit

_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET_S7_S7_.exit: ; preds = %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i, %._crit_edge.i.i.loopexit
  %.pre14 = phi ptr [ %.pre13, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i ], [ %.pre14.pre, %._crit_edge.i.i.loopexit ]
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.09.0.i.i.i32, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i ], [ %.sroa.0.1.i.i.lcssa, %._crit_edge.i.i.loopexit ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i, i64 1 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %.pre14
  br i1 %i.ax, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET_S7_S7_.exit
  %i.ay = load ptr, ptr %0, align 8, !tbaa !19    ; 2 uses
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = getelementptr inbounds i8, ptr %i.ay, i64 %i.bb
  store ptr %i.bc, ptr %i.b, align 8, !tbaa !827
  br label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit

_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit: ; preds = %.preheader.i.i.i, %bb.a, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit, %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET_S7_S7_.exit, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 120
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt6bitsetILm256EE9referenceaSEb.exit.i, %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit
  %indvars.iv.i = phi i64 [ 0, %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit ], [ %indvars.iv.next.i, %_ZNSt6bitsetILm256EE9referenceaSEb.exit.i ] ; 4 uses
  %i.bg = trunc i64 %indvars.iv.i to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  store ptr %0, ptr %1, align 8, !tbaa !871
  store i8 %i.bg, ptr %i.be, align 8, !tbaa !873
  %i.bh = call noundef zeroext i1 @_ZZNKSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EE8_M_applyEcSt17integral_constantIbLb0EEENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(9) %1)
  %i.bi = load i8, ptr %i.bf, align 8, !tbaa !741, !range !208, !noundef !209
  %2 = zext i1 %i.bh to i8
  %.not.i = icmp eq i8 %i.bi, %2
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  %i.bj = lshr i64 %indvars.iv.i, 6
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bj ; 3 uses
  %i.bl = and i64 %indvars.iv.i, 63
  %i.bm = shl nuw i64 1, %i.bl                    ; 2 uses
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bn = load i64, ptr %i.bk, align 8, !tbaa !13
  %i.bo = or i64 %i.bn, %i.bm
  br label %_ZNSt6bitsetILm256EE9referenceaSEb.exit.i

bb.k:                                             ; preds = %bb.i
  %i.bp = xor i64 %i.bm, -1
  %i.bq = load i64, ptr %i.bk, align 8, !tbaa !13
  %i.br = and i64 %i.bq, %i.bp
  br label %_ZNSt6bitsetILm256EE9referenceaSEb.exit.i

_ZNSt6bitsetILm256EE9referenceaSEb.exit.i:        ; preds = %bb.k, %bb.j
  %storemerge.i = phi i64 [ %i.br, %bb.k ], [ %i.bo, %bb.j ]
  store i64 %storemerge.i, ptr %i.bk, align 8, !tbaa !13
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 256
  br i1 %exitcond.not.i, label %_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EE13_M_make_cacheESt17integral_constantIbLb1EE.exit, label %bb.i, !llvm.loop !874

_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EE13_M_make_cacheESt17integral_constantIbLb1EE.exit: ; preds = %_ZNSt6bitsetILm256EE9referenceaSEb.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !738  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !735
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #32
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !875  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !876  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.i, %i.k
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EED2Ev.exit, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.w, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i ], [ %i.i, %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EED2Ev.exit ] ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !15   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.p = load i64, ptr %i.n, align 8, !tbaa !17
  %i.q = add i64 %i.p, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.r = load ptr, ptr %.05.i.i.i, align 8, !tbaa !15 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.u = load i64, ptr %i.s, align 8, !tbaa !17
  %i.v = add i64 %i.u, 1
  tail call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #32
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i1 = icmp eq ptr %i.w, %i.k
  br i1 %.not.i.i.i1, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !877

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.h, align 8, !tbaa !875
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EED2Ev.exit
  %i.x = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i ], [ %i.i, %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !751
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #32
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i, %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !238 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !240 ; 2 uses
  %.not4.i.i.i2 = icmp eq ptr %i.ae, %i.ag
  br i1 %.not4.i.i.i2, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i3

.lr.ph.i.i.i3:                                    ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i4 = phi ptr [ %i.am, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.ae, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit ] ; 3 uses
  %i.ah = load ptr, ptr %.05.i.i.i4, align 8, !tbaa !15 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.05.i.i.i4, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i3
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !17
  %i.al = add i64 %i.ak, 1
  tail call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.05.i.i.i4, i64 32 ; 2 uses
  %.not.i.i.i5 = icmp eq ptr %i.am, %i.ag
  br i1 %.not.i.i.i5, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i3, !llvm.loop !263

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i6 = load ptr, ptr %i.ad, align 8, !tbaa !238
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit
  %i.an = phi ptr [ %.pr.i6, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.ae, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i7 = icmp eq ptr %i.an, null
  br i1 %.not.i.i1.i7, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !239
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.an to i64
  %i.as = sub i64 %i.aq, %i.ar
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.as) #32
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.d
  %i.at = load ptr, ptr %0, align 8, !tbaa !740   ; 3 uses
  %.not.i.i.i8 = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i8, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !731
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.at to i64
  %i.ay = sub i64 %i.aw, %i.ax
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ay) #32
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !875    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !876  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.o, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !15   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 48 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !17
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = load ptr, ptr %.05.i.i, align 8, !tbaa !15 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.m = load i64, ptr %i.k, align 8, !tbaa !17
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #32
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 64 ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !877

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i
end_hunk_6
begin_hunk_7_@_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EE22_M_add_character_classERKNS1_12basic_stringIcSt11char_traitsIcESaIcEEEb:bb.a
  %.not.i23.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  %i.bd = load ptr, ptr %i.v, align 8, !tbaa !735
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.be, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.bf) #32
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  store ptr %i.ak, ptr %i.s, align 8, !tbaa !738
  store ptr %i.bc, ptr %i.t, align 8, !tbaa !813
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ai
  store ptr %i.bg, ptr %i.v, align 8, !tbaa !735
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.f, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EE8_M_readyEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.198, align 8            ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !19     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 4 uses
  %.not.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not.i.i, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit: ; preds = %bb.a
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.f, i1 true)
  %i.h = shl nuw nsw i64 %i.g, 1
  %i.i = xor i64 %i.h, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.a, ptr %i.c, i64 noundef %i.i)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.a, ptr %i.c)
  %.pre = load ptr, ptr %0, align 8, !tbaa !19    ; 4 uses
  %.pre36 = ptrtoaddr ptr %.pre to i64            ; 2 uses
  %.pre13 = load ptr, ptr %i.b, align 8, !tbaa !19 ; 7 uses
  %.pre1335 = ptrtoaddr ptr %.pre13 to i64        ; 2 uses
  %i.j = icmp eq ptr %.pre, %.pre13
  %i.k = getelementptr inbounds nuw i8, ptr %.pre, i64 1 ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.k, %.pre13
  %or.cond = select i1 %i.j, i1 true, i1 %.not.i.i.i31
  br i1 %or.cond, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %.lr.ph

.preheader.i.i.i:                                 ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, %.pre13
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %.lr.ph, !llvm.loop !823

.lr.ph:                                           ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit, %.preheader.i.i.i
  %indvar = phi i64 [ %indvar.next, %.preheader.i.i.i ], [ 0, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 3 uses
  %i.m = phi ptr [ %i.l, %.preheader.i.i.i ], [ %i.k, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 3 uses
  %.sroa.09.0.i.i.i32 = phi ptr [ %i.m, %.preheader.i.i.i ], [ %.pre, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 5 uses
  %i.n = load i8, ptr %.sroa.09.0.i.i.i32, align 1, !tbaa !17 ; 3 uses
  %i.o = load i8, ptr %i.m, align 1, !tbaa !17
  %i.p = icmp eq i8 %i.n, %i.o
  br i1 %i.p, label %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i, label %.preheader.i.i.i, !llvm.loop !823

_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i: ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i32, i64 2 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.q, %.pre13
  br i1 %.not18.i.i, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET_S7_S7_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i
  %i.r = xor i64 %.pre1335, 2
  %i.s = add i64 %indvar, %.pre36
  %i.t = sub i64 %i.r, %i.s
  %i.u = add i64 %.pre1335, -3
  %i.v = add i64 %indvar, %.pre36
  %i.w = sub i64 %i.u, %i.v
  %xtraiter = and i64 %i.t, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %bb.c
  %i.x = phi i8 [ %i.z, %bb.c ], [ %i.n, %.lr.ph.i.i.preheader ]
  %i.y = phi ptr [ %i.ac, %bb.c ], [ %i.q, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.0.019.i.i.prol = phi ptr [ %.sroa.0.1.i.i.prol, %bb.c ], [ %.sroa.09.0.i.i.i32, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.c ], [ 0, %.lr.ph.i.i.preheader ]
  %i.z = load i8, ptr %i.y, align 1, !tbaa !17    ; 4 uses
  %i.aa = icmp eq i8 %i.x, %i.z
  br i1 %i.aa, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.prol
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i.prol, i64 1 ; 2 uses
  store i8 %i.z, ptr %i.ab, align 1, !tbaa !17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i.prol
  %.sroa.0.1.i.i.prol = phi ptr [ %.sroa.0.019.i.i.prol, %.lr.ph.i.i.prol ], [ %i.ab, %bb.b ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !897

.lr.ph.i.i.prol.loopexit:                         ; preds = %bb.c, %.lr.ph.i.i.preheader
  %.sroa.0.1.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %.sroa.0.1.i.i.prol, %bb.c ]
  %.unr = phi i8 [ %i.n, %.lr.ph.i.i.preheader ], [ %i.z, %bb.c ]
  %.unr38 = phi ptr [ %i.q, %.lr.ph.i.i.preheader ], [ %i.ac, %bb.c ]
  %.sroa.0.019.i.i.unr = phi ptr [ %.sroa.09.0.i.i.i32, %.lr.ph.i.i.preheader ], [ %.sroa.0.1.i.i.prol, %bb.c ]
  %i.ad = icmp ult i64 %i.w, 3
  br i1 %i.ad, label %._crit_edge.i.i.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %bb.h
  %i.ae = phi i8 [ %i.as, %bb.h ], [ %.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.af = phi ptr [ %i.av, %bb.h ], [ %.unr38, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.019.i.i = phi ptr [ %.sroa.0.1.i.i.3, %bb.h ], [ %.sroa.0.019.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !17  ; 3 uses
  %i.ah = icmp eq i8 %i.ae, %i.ag
  br i1 %i.ah, label %.lr.ph.i.i.1, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i, i64 1 ; 2 uses
  store i8 %i.ag, ptr %i.ai, align 1, !tbaa !17
  br label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.0.1.i.i = phi ptr [ %.sroa.0.019.i.i, %.lr.ph.i.i ], [ %i.ai, %bb.d ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !17  ; 3 uses
  %i.al = icmp eq i8 %i.ag, %i.ak
  br i1 %i.al, label %.lr.ph.i.i.2, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.1
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i, i64 1 ; 2 uses
  store i8 %i.ak, ptr %i.am, align 1, !tbaa !17
  br label %.lr.ph.i.i.2

.lr.ph.i.i.2:                                     ; preds = %bb.e, %.lr.ph.i.i.1
  %.sroa.0.1.i.i.1 = phi ptr [ %.sroa.0.1.i.i, %.lr.ph.i.i.1 ], [ %i.am, %bb.e ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !17  ; 3 uses
  %i.ap = icmp eq i8 %i.ak, %i.ao
  br i1 %i.ap, label %.lr.ph.i.i.3, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.2
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.1, i64 1 ; 2 uses
  store i8 %i.ao, ptr %i.aq, align 1, !tbaa !17
  br label %.lr.ph.i.i.3

.lr.ph.i.i.3:                                     ; preds = %bb.f, %.lr.ph.i.i.2
  %.sroa.0.1.i.i.2 = phi ptr [ %.sroa.0.1.i.i.1, %.lr.ph.i.i.2 ], [ %i.aq, %bb.f ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.af, i64 3
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !17  ; 3 uses
  %i.at = icmp eq i8 %i.ao, %i.as
  br i1 %i.at, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.3
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.2, i64 1 ; 2 uses
  store i8 %i.as, ptr %i.au, align 1, !tbaa !17
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i.i.3
  %.sroa.0.1.i.i.3 = phi ptr [ %.sroa.0.1.i.i.2, %.lr.ph.i.i.3 ], [ %i.au, %bb.g ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.af, i64 4 ; 2 uses
  %.not.i.i5.3 = icmp eq ptr %i.av, %.pre13
  br i1 %.not.i.i5.3, label %._crit_edge.i.i.loopexit, label %.lr.ph.i.i, !llvm.loop !826

._crit_edge.i.i.loopexit:                         ; preds = %bb.h, %.lr.ph.i.i.prol.loopexit
  %.sroa.0.1.i.i.lcssa = phi ptr [ %.sroa.0.1.i.i.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %.sroa.0.1.i.i.3, %bb.h ]
  %.pre14.pre = load ptr, ptr %i.b, align 8, !tbaa !19
  br label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET_S7_S7_.exit

_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET_S7_S7_.exit: ; preds = %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i, %._crit_edge.i.i.loopexit
  %.pre14 = phi ptr [ %.pre13, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i ], [ %.pre14.pre, %._crit_edge.i.i.loopexit ]
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.09.0.i.i.i32, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i ], [ %.sroa.0.1.i.i.lcssa, %._crit_edge.i.i.loopexit ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i, i64 1 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %.pre14
  br i1 %i.ax, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET_S7_S7_.exit
  %i.ay = load ptr, ptr %0, align 8, !tbaa !19    ; 2 uses
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = getelementptr inbounds i8, ptr %i.ay, i64 %i.bb
  store ptr %i.bc, ptr %i.b, align 8, !tbaa !827
  br label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit

_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit: ; preds = %.preheader.i.i.i, %bb.a, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit, %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET_S7_S7_.exit, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 120
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt6bitsetILm256EE9referenceaSEb.exit.i, %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit
  %indvars.iv.i = phi i64 [ 0, %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit ], [ %indvars.iv.next.i, %_ZNSt6bitsetILm256EE9referenceaSEb.exit.i ] ; 4 uses
  %i.bg = trunc i64 %indvars.iv.i to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  store ptr %0, ptr %1, align 8, !tbaa !898
  store i8 %i.bg, ptr %i.be, align 8, !tbaa !900
  %i.bh = call noundef zeroext i1 @_ZZNKSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EE8_M_applyEcSt17integral_constantIbLb0EEENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(9) %1)
  %i.bi = load i8, ptr %i.bf, align 8, !tbaa !754, !range !208, !noundef !209
  %2 = zext i1 %i.bh to i8
  %.not.i = icmp eq i8 %i.bi, %2
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  %i.bj = lshr i64 %indvars.iv.i, 6
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bj ; 3 uses
  %i.bl = and i64 %indvars.iv.i, 63
  %i.bm = shl nuw i64 1, %i.bl                    ; 2 uses
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bn = load i64, ptr %i.bk, align 8, !tbaa !13
  %i.bo = or i64 %i.bn, %i.bm
  br label %_ZNSt6bitsetILm256EE9referenceaSEb.exit.i

bb.k:                                             ; preds = %bb.i
  %i.bp = xor i64 %i.bm, -1
  %i.bq = load i64, ptr %i.bk, align 8, !tbaa !13
  %i.br = and i64 %i.bq, %i.bp
  br label %_ZNSt6bitsetILm256EE9referenceaSEb.exit.i

_ZNSt6bitsetILm256EE9referenceaSEb.exit.i:        ; preds = %bb.k, %bb.j
  %storemerge.i = phi i64 [ %i.br, %bb.k ], [ %i.bo, %bb.j ]
  store i64 %storemerge.i, ptr %i.bk, align 8, !tbaa !13
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 256
  br i1 %exitcond.not.i, label %_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EE13_M_make_cacheESt17integral_constantIbLb1EE.exit, label %bb.i, !llvm.loop !901

_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EE13_M_make_cacheESt17integral_constantIbLb1EE.exit: ; preds = %_ZNSt6bitsetILm256EE9referenceaSEb.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !738  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !735
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #32
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !739  ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !733
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #32
  br label %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit:        ; preds = %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EED2Ev.exit, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !238  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !240  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.x, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.p, %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit ] ; 3 uses
  %i.s = load ptr, ptr %.05.i.i.i, align 8, !tbaa !15 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.v = load i64, ptr %i.t, align 8, !tbaa !17
  %i.w = add i64 %i.v, 1
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i2 = icmp eq ptr %i.x, %i.r
  br i1 %.not.i.i.i2, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !263

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.o, align 8, !tbaa !238
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit
  %i.y = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.p, %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !239
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ad) #32
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.d
  %i.ae = load ptr, ptr %0, align 8, !tbaa !740   ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i3, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !731
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.ae to i64
  %i.aj = sub i64 %i.ah, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.aj) #32
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %bb.e
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZZNKSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EE8_M_applyEcSt17integral_constantIbLb0EEENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(9) %0) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !898    ; 11 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 104 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !900
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !774, !nonnull !209, !align !306
  %i.i = tail call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #30
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !494
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !495
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !499  ; 3 uses
  %.not.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.not.i.i.i, label %bb.b, label %_ZNKSt8__detail20_RegexTranslatorBaseINSt7__cxx1112regex_traitsIcEELb1ELb0EE12_M_translateEc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt16__throw_bad_castv() #29
  unreachable

_ZNKSt8__detail20_RegexTranslatorBaseINSt7__cxx1112regex_traitsIcEELb1ELb0EE12_M_translateEc.exit: ; preds = %bb.a
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !93
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef signext i8 %i.q(ptr noundef nonnull align 8 dereferenceable(570) %i.n, i8 noundef signext %i.g), !inline_history !775 ; 2 uses
  %i.s = ptrtoint ptr %i.d to i64
  %i.t = ptrtoint ptr %i.b to i64
  %i.u = sub i64 %i.s, %i.t                       ; 2 uses
  %i.v = icmp sgt i64 %i.u, 0
  br i1 %i.v, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcNS0_5__ops14_Iter_less_valEET_SA_SA_RKT0_T1_.exit.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %_ZNKSt8__detail20_RegexTranslatorBaseINSt7__cxx1112regex_traitsIcEELb1ELb0EE12_M_translateEc.exit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %.016.i.i = phi i64 [ %.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.u, %_ZNKSt8__detail20_RegexTranslatorBaseINSt7__cxx1112regex_traitsIcEELb1ELb0EE12_M_translateEc.exit ] ; 2 uses
  %.sroa.011.015.i.i = phi ptr [ %.sroa.011.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.b, %_ZNKSt8__detail20_RegexTranslatorBaseINSt7__cxx1112regex_traitsIcEELb1ELb0EE12_M_translateEc.exit ] ; 2 uses
  %i.w = lshr i64 %.016.i.i, 1                    ; 3 uses
  %.sink.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.011.015.i.i, i64 %i.w ; 2 uses
  %i.x = load i8, ptr %.sink.i.i.i, align 1, !tbaa !17
  %i.y = icmp slt i8 %i.x, %i.r                   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sink.i.i.i, i64 1
  %i.aa = xor i64 %i.w, -1
  %i.ab = add nsw i64 %.016.i.i, %i.aa
  %.sroa.011.1.i.i = select i1 %i.y, ptr %i.z, ptr %.sroa.011.015.i.i ; 2 uses
  %.1.i.i = select i1 %i.y, i64 %i.ab, i64 %i.w   ; 2 uses
  %i.ac = icmp sgt i64 %.1.i.i, 0
  br i1 %i.ac, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcNS0_5__ops14_Iter_less_valEET_SA_SA_RKT0_T1_.exit.i, !llvm.loop !845

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcNS0_5__ops14_Iter_less_valEET_SA_SA_RKT0_T1_.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, %_ZNKSt8__detail20_RegexTranslatorBaseINSt7__cxx1112regex_traitsIcEELb1ELb0EE12_M_translateEc.exit
  %.sroa.011.0.lcssa.i.i = phi ptr [ %i.b, %_ZNKSt8__detail20_RegexTranslatorBaseINSt7__cxx1112regex_traitsIcEELb1ELb0EE12_M_translateEc.exit ], [ %.sroa.011.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ] ; 2 uses
  %.not.i = icmp eq ptr %.sroa.011.0.lcssa.i.i, %i.d
  br i1 %.not.i, label %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcEbT_S8_RKT0_.exit.thread, label %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcEbT_S8_RKT0_.exit

_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcEbT_S8_RKT0_.exit: ; preds = %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcNS0_5__ops14_Iter_less_valEET_SA_SA_RKT0_T1_.exit.i
  %i.ad = load i8, ptr %.sroa.011.0.lcssa.i.i, align 1, !tbaa !17
  %.not = icmp slt i8 %i.r, %i.ad
  br i1 %.not, label %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcEbT_S8_RKT0_.exit.thread, label %_ZNKSt7__cxx1112regex_traitsIcE7isctypeEcNS1_10_RegexMaskE.exit.thread

_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcEbT_S8_RKT0_.exit.thread: ; preds = %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcNS0_5__ops14_Iter_less_valEET_SA_SA_RKT0_T1_.exit.i, %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcEbT_S8_RKT0_.exit
  %i.ae = load i8, ptr %i.f, align 8, !tbaa !900  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !732 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !732 ; 2 uses
  %.not5256 = icmp eq ptr %i.ag, %i.ai
  br i1 %.not5256, label %.critedge, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.046.057, i64 2 ; 2 uses
  %.not52 = icmp eq ptr %i.aj, %i.ai
  br i1 %.not52, label %.critedge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcEbT_S8_RKT0_.exit.thread, %bb.c
  %.sroa.046.057 = phi ptr [ %i.aj, %bb.c ], [ %i.ag, %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcEbT_S8_RKT0_.exit.thread ] ; 3 uses
  %i.ak = load i8, ptr %.sroa.046.057, align 1, !tbaa !585
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.046.057, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !587
  %i.an = tail call noundef zeroext i1 @_ZNKSt8__detail20_RegexTranslatorBaseINSt7__cxx1112regex_traitsIcEELb1ELb0EE17_M_in_range_icaseEccc(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i8 noundef signext %i.ak, i8 noundef signext %i.am, i8 noundef signext %i.ae)
  br i1 %i.an, label %_ZNKSt7__cxx1112regex_traitsIcE7isctypeEcNS1_10_RegexMaskE.exit.thread, label %bb.c

end_hunk_7
begin_hunk_8_@_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EE22_M_add_character_classERKNS1_12basic_stringIcSt11char_traitsIcESaIcEEEb:bb.a
  %.not.i23.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  %i.bd = load ptr, ptr %i.v, align 8, !tbaa !735
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.be, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.bf) #32
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  store ptr %i.ak, ptr %i.s, align 8, !tbaa !738
  store ptr %i.bc, ptr %i.t, align 8, !tbaa !813
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ai
  store ptr %i.bg, ptr %i.v, align 8, !tbaa !735
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.f, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EE8_M_readyEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.201, align 8            ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !19     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 4 uses
  %.not.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not.i.i, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit: ; preds = %bb.a
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.f, i1 true)
  %i.h = shl nuw nsw i64 %i.g, 1
  %i.i = xor i64 %i.h, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.a, ptr %i.c, i64 noundef %i.i)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.a, ptr %i.c)
  %.pre = load ptr, ptr %0, align 8, !tbaa !19    ; 4 uses
  %.pre36 = ptrtoaddr ptr %.pre to i64            ; 2 uses
  %.pre13 = load ptr, ptr %i.b, align 8, !tbaa !19 ; 7 uses
  %.pre1335 = ptrtoaddr ptr %.pre13 to i64        ; 2 uses
  %i.j = icmp eq ptr %.pre, %.pre13
  %i.k = getelementptr inbounds nuw i8, ptr %.pre, i64 1 ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.k, %.pre13
  %or.cond = select i1 %i.j, i1 true, i1 %.not.i.i.i31
  br i1 %or.cond, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %.lr.ph

.preheader.i.i.i:                                 ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, %.pre13
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %.lr.ph, !llvm.loop !823

.lr.ph:                                           ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit, %.preheader.i.i.i
  %indvar = phi i64 [ %indvar.next, %.preheader.i.i.i ], [ 0, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 3 uses
  %i.m = phi ptr [ %i.l, %.preheader.i.i.i ], [ %i.k, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 3 uses
  %.sroa.09.0.i.i.i32 = phi ptr [ %i.m, %.preheader.i.i.i ], [ %.pre, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 5 uses
  %i.n = load i8, ptr %.sroa.09.0.i.i.i32, align 1, !tbaa !17 ; 3 uses
  %i.o = load i8, ptr %i.m, align 1, !tbaa !17
  %i.p = icmp eq i8 %i.n, %i.o
  br i1 %i.p, label %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i, label %.preheader.i.i.i, !llvm.loop !823

_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i: ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i32, i64 2 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.q, %.pre13
  br i1 %.not18.i.i, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET_S7_S7_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i
  %i.r = xor i64 %.pre1335, 2
  %i.s = add i64 %indvar, %.pre36
  %i.t = sub i64 %i.r, %i.s
  %i.u = add i64 %.pre1335, -3
  %i.v = add i64 %indvar, %.pre36
  %i.w = sub i64 %i.u, %i.v
  %xtraiter = and i64 %i.t, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %bb.c
  %i.x = phi i8 [ %i.z, %bb.c ], [ %i.n, %.lr.ph.i.i.preheader ]
  %i.y = phi ptr [ %i.ac, %bb.c ], [ %i.q, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.0.019.i.i.prol = phi ptr [ %.sroa.0.1.i.i.prol, %bb.c ], [ %.sroa.09.0.i.i.i32, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.c ], [ 0, %.lr.ph.i.i.preheader ]
  %i.z = load i8, ptr %i.y, align 1, !tbaa !17    ; 4 uses
  %i.aa = icmp eq i8 %i.x, %i.z
  br i1 %i.aa, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.prol
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i.prol, i64 1 ; 2 uses
  store i8 %i.z, ptr %i.ab, align 1, !tbaa !17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i.prol
  %.sroa.0.1.i.i.prol = phi ptr [ %.sroa.0.019.i.i.prol, %.lr.ph.i.i.prol ], [ %i.ab, %bb.b ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !916

.lr.ph.i.i.prol.loopexit:                         ; preds = %bb.c, %.lr.ph.i.i.preheader
  %.sroa.0.1.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %.sroa.0.1.i.i.prol, %bb.c ]
  %.unr = phi i8 [ %i.n, %.lr.ph.i.i.preheader ], [ %i.z, %bb.c ]
  %.unr38 = phi ptr [ %i.q, %.lr.ph.i.i.preheader ], [ %i.ac, %bb.c ]
  %.sroa.0.019.i.i.unr = phi ptr [ %.sroa.09.0.i.i.i32, %.lr.ph.i.i.preheader ], [ %.sroa.0.1.i.i.prol, %bb.c ]
  %i.ad = icmp ult i64 %i.w, 3
  br i1 %i.ad, label %._crit_edge.i.i.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %bb.h
  %i.ae = phi i8 [ %i.as, %bb.h ], [ %.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.af = phi ptr [ %i.av, %bb.h ], [ %.unr38, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.019.i.i = phi ptr [ %.sroa.0.1.i.i.3, %bb.h ], [ %.sroa.0.019.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !17  ; 3 uses
  %i.ah = icmp eq i8 %i.ae, %i.ag
  br i1 %i.ah, label %.lr.ph.i.i.1, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i, i64 1 ; 2 uses
  store i8 %i.ag, ptr %i.ai, align 1, !tbaa !17
  br label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.0.1.i.i = phi ptr [ %.sroa.0.019.i.i, %.lr.ph.i.i ], [ %i.ai, %bb.d ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !17  ; 3 uses
  %i.al = icmp eq i8 %i.ag, %i.ak
  br i1 %i.al, label %.lr.ph.i.i.2, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.1
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i, i64 1 ; 2 uses
  store i8 %i.ak, ptr %i.am, align 1, !tbaa !17
  br label %.lr.ph.i.i.2

.lr.ph.i.i.2:                                     ; preds = %bb.e, %.lr.ph.i.i.1
  %.sroa.0.1.i.i.1 = phi ptr [ %.sroa.0.1.i.i, %.lr.ph.i.i.1 ], [ %i.am, %bb.e ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !17  ; 3 uses
  %i.ap = icmp eq i8 %i.ak, %i.ao
  br i1 %i.ap, label %.lr.ph.i.i.3, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.2
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.1, i64 1 ; 2 uses
  store i8 %i.ao, ptr %i.aq, align 1, !tbaa !17
  br label %.lr.ph.i.i.3

.lr.ph.i.i.3:                                     ; preds = %bb.f, %.lr.ph.i.i.2
  %.sroa.0.1.i.i.2 = phi ptr [ %.sroa.0.1.i.i.1, %.lr.ph.i.i.2 ], [ %i.aq, %bb.f ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.af, i64 3
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !17  ; 3 uses
  %i.at = icmp eq i8 %i.ao, %i.as
  br i1 %i.at, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.3
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.2, i64 1 ; 2 uses
  store i8 %i.as, ptr %i.au, align 1, !tbaa !17
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i.i.3
  %.sroa.0.1.i.i.3 = phi ptr [ %.sroa.0.1.i.i.2, %.lr.ph.i.i.3 ], [ %i.au, %bb.g ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.af, i64 4 ; 2 uses
  %.not.i.i5.3 = icmp eq ptr %i.av, %.pre13
  br i1 %.not.i.i5.3, label %._crit_edge.i.i.loopexit, label %.lr.ph.i.i, !llvm.loop !826

._crit_edge.i.i.loopexit:                         ; preds = %bb.h, %.lr.ph.i.i.prol.loopexit
  %.sroa.0.1.i.i.lcssa = phi ptr [ %.sroa.0.1.i.i.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %.sroa.0.1.i.i.3, %bb.h ]
  %.pre14.pre = load ptr, ptr %i.b, align 8, !tbaa !19
  br label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET_S7_S7_.exit

_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET_S7_S7_.exit: ; preds = %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i, %._crit_edge.i.i.loopexit
  %.pre14 = phi ptr [ %.pre13, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i ], [ %.pre14.pre, %._crit_edge.i.i.loopexit ]
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.09.0.i.i.i32, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i ], [ %.sroa.0.1.i.i.lcssa, %._crit_edge.i.i.loopexit ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i, i64 1 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %.pre14
  br i1 %i.ax, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET_S7_S7_.exit
  %i.ay = load ptr, ptr %0, align 8, !tbaa !19    ; 2 uses
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = getelementptr inbounds i8, ptr %i.ay, i64 %i.bb
  store ptr %i.bc, ptr %i.b, align 8, !tbaa !827
  br label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit

_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit: ; preds = %.preheader.i.i.i, %bb.a, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit, %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET_S7_S7_.exit, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 120
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt6bitsetILm256EE9referenceaSEb.exit.i, %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit
  %indvars.iv.i = phi i64 [ 0, %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit ], [ %indvars.iv.next.i, %_ZNSt6bitsetILm256EE9referenceaSEb.exit.i ] ; 4 uses
  %i.bg = trunc i64 %indvars.iv.i to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  store ptr %0, ptr %1, align 8, !tbaa !917
  store i8 %i.bg, ptr %i.be, align 8, !tbaa !919
  %i.bh = call noundef zeroext i1 @_ZZNKSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EE8_M_applyEcSt17integral_constantIbLb0EEENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(9) %1)
  %i.bi = load i8, ptr %i.bf, align 8, !tbaa !760, !range !208, !noundef !209
  %2 = zext i1 %i.bh to i8
  %.not.i = icmp eq i8 %i.bi, %2
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  %i.bj = lshr i64 %indvars.iv.i, 6
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bj ; 3 uses
  %i.bl = and i64 %indvars.iv.i, 63
  %i.bm = shl nuw i64 1, %i.bl                    ; 2 uses
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bn = load i64, ptr %i.bk, align 8, !tbaa !13
  %i.bo = or i64 %i.bn, %i.bm
  br label %_ZNSt6bitsetILm256EE9referenceaSEb.exit.i

bb.k:                                             ; preds = %bb.i
  %i.bp = xor i64 %i.bm, -1
  %i.bq = load i64, ptr %i.bk, align 8, !tbaa !13
  %i.br = and i64 %i.bq, %i.bp
  br label %_ZNSt6bitsetILm256EE9referenceaSEb.exit.i

_ZNSt6bitsetILm256EE9referenceaSEb.exit.i:        ; preds = %bb.k, %bb.j
  %storemerge.i = phi i64 [ %i.br, %bb.k ], [ %i.bo, %bb.j ]
  store i64 %storemerge.i, ptr %i.bk, align 8, !tbaa !13
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 256
  br i1 %exitcond.not.i, label %_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EE13_M_make_cacheESt17integral_constantIbLb1EE.exit, label %bb.i, !llvm.loop !920

_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EE13_M_make_cacheESt17integral_constantIbLb1EE.exit: ; preds = %_ZNSt6bitsetILm256EE9referenceaSEb.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !738  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !735
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #32
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !875  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !876  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.i, %i.k
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EED2Ev.exit, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.w, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i ], [ %i.i, %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EED2Ev.exit ] ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !15   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.p = load i64, ptr %i.n, align 8, !tbaa !17
  %i.q = add i64 %i.p, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.r = load ptr, ptr %.05.i.i.i, align 8, !tbaa !15 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.u = load i64, ptr %i.s, align 8, !tbaa !17
  %i.v = add i64 %i.u, 1
  tail call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #32
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i1 = icmp eq ptr %i.w, %i.k
  br i1 %.not.i.i.i1, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !877

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.h, align 8, !tbaa !875
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EED2Ev.exit
  %i.x = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i ], [ %i.i, %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !751
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #32
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i, %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !238 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !240 ; 2 uses
  %.not4.i.i.i2 = icmp eq ptr %i.ae, %i.ag
  br i1 %.not4.i.i.i2, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i3

.lr.ph.i.i.i3:                                    ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i4 = phi ptr [ %i.am, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.ae, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit ] ; 3 uses
  %i.ah = load ptr, ptr %.05.i.i.i4, align 8, !tbaa !15 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.05.i.i.i4, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i3
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !17
  %i.al = add i64 %i.ak, 1
  tail call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.05.i.i.i4, i64 32 ; 2 uses
  %.not.i.i.i5 = icmp eq ptr %i.am, %i.ag
  br i1 %.not.i.i.i5, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i3, !llvm.loop !263

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i6 = load ptr, ptr %i.ad, align 8, !tbaa !238
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit
  %i.an = phi ptr [ %.pr.i6, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.ae, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i7 = icmp eq ptr %i.an, null
  br i1 %.not.i.i1.i7, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !239
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.an to i64
  %i.as = sub i64 %i.aq, %i.ar
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.as) #32
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.d
  %i.at = load ptr, ptr %0, align 8, !tbaa !740   ; 3 uses
  %.not.i.i.i8 = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i8, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !731
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.at to i64
  %i.ay = sub i64 %i.aw, %i.ax
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ay) #32
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %bb.e
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZZNKSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EE8_M_applyEcSt17integral_constantIbLb0EEENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(9) %0) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !917    ; 11 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 104 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !919
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !779, !nonnull !209, !align !306
  %i.i = tail call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #30
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !494
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !495
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !499  ; 3 uses
  %.not.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.not.i.i.i, label %bb.b, label %_ZNKSt8__detail20_RegexTranslatorBaseINSt7__cxx1112regex_traitsIcEELb1ELb1EE12_M_translateEc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt16__throw_bad_castv() #29
  unreachable

_ZNKSt8__detail20_RegexTranslatorBaseINSt7__cxx1112regex_traitsIcEELb1ELb1EE12_M_translateEc.exit: ; preds = %bb.a
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !93
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef signext i8 %i.q(ptr noundef nonnull align 8 dereferenceable(570) %i.n, i8 noundef signext %i.g), !inline_history !780 ; 2 uses
  %i.s = ptrtoint ptr %i.d to i64
  %i.t = ptrtoint ptr %i.b to i64
  %i.u = sub i64 %i.s, %i.t                       ; 2 uses
  %i.v = icmp sgt i64 %i.u, 0
  br i1 %i.v, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcNS0_5__ops14_Iter_less_valEET_SA_SA_RKT0_T1_.exit.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %_ZNKSt8__detail20_RegexTranslatorBaseINSt7__cxx1112regex_traitsIcEELb1ELb1EE12_M_translateEc.exit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %.016.i.i = phi i64 [ %.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.u, %_ZNKSt8__detail20_RegexTranslatorBaseINSt7__cxx1112regex_traitsIcEELb1ELb1EE12_M_translateEc.exit ] ; 2 uses
  %.sroa.011.015.i.i = phi ptr [ %.sroa.011.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.b, %_ZNKSt8__detail20_RegexTranslatorBaseINSt7__cxx1112regex_traitsIcEELb1ELb1EE12_M_translateEc.exit ] ; 2 uses
end_hunk_8
begin_hunk_9_@_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE16_M_main_dispatchENS9_11_Match_modeESt17integral_constantIbLb0EE:bb.a
  %i.cg = load ptr, ptr %i.b, align 8, !tbaa !1054 ; 3 uses
  %i.ch = load ptr, ptr %i.g, align 8, !tbaa !1055 ; 2 uses
  %.not.i.i16 = icmp eq ptr %i.ch, %i.cg
  br i1 %.not.i.i16, label %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIPKcEESaIS5_EEESaIS8_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.r, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cp, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i.i ], [ %i.cg, %bb.r ] ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !404 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !407
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = ptrtoint ptr %i.cj to i64
  %i.co = sub i64 %i.cm, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef %i.co) #32
  br label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i.i: ; preds = %bb.s, %.lr.ph.i.i.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cp, %i.ch
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1056

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i.i
  store ptr %i.cg, ptr %i.g, align 8, !tbaa !1055
  br label %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIPKcEESaIS5_EEESaIS8_EE5clearEv.exit

_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIPKcEESaIS5_EEESaIS8_EE5clearEv.exit: ; preds = %bb.r, %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exit.i.i
  %i.cq = trunc nuw i8 %.3 to i1
  ret i1 %i.cq
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE6_M_dfsENS9_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1053
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 %2 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !52, !range !208, !noundef !209
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %common.ret, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 8 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.backedge, %.lr.ph.lr.ph
  %i.n = phi ptr [ %i.c, %.lr.ph.lr.ph ], [ %.be, %.lr.ph.backedge ]
  %.tr3852 = phi i64 [ %2, %.lr.ph.lr.ph ], [ %.tr3852.be, %.lr.ph.backedge ] ; 5 uses
  store i8 1, ptr %i.n, align 1, !tbaa !52
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !1083, !nonnull !209, !align !306 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !509
  %i.r = getelementptr inbounds nuw [48 x i8], ptr %i.q, i64 %.tr3852 ; 16 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !533
  switch i32 %i.s, label %common.ret [
    i32 2, label %bb.b
    i32 8, label %bb.j
    i32 9, label %bb.k
    i32 4, label %bb.l
    i32 5, label %bb.q
    i32 6, label %bb.s
    i32 7, label %bb.t
    i32 11, label %bb.u
    i32 3, label %bb.v
    i32 12, label %bb.w
    i32 1, label %bb.ac
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.u = load i8, ptr %i.t, align 8, !tbaa !17, !range !208, !noundef !209
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = load ptr, ptr %i.l, align 8, !tbaa !1058
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %.tr3852 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 5 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !1068 ; 4 uses
  %i.aa = icmp ne i32 %i.z, 0
  %.sroa.030.0.copyload.pre = load ptr, ptr %i.x, align 8 ; 2 uses
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !1048 ; 2 uses
  %.not.i26 = icmp eq ptr %.sroa.030.0.copyload.pre, %.pre
  %or.cond = select i1 %i.aa, i1 %.not.i26, i1 false
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %.pre, ptr %i.x, align 8, !tbaa !1066
  store i32 1, ptr %i.y, align 8, !tbaa !1068
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !17
  tail call void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE6_M_dfsENS9_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %i.ac), !inline_history !1103
  store ptr %.sroa.030.0.copyload.pre, ptr %i.x, align 8, !tbaa !1066
  br label %tailrecurse.backedge.sink.split

bb.e:                                             ; preds = %bb.c
  %i.ad = icmp slt i32 %i.z, 2
  br i1 %i.ad, label %bb.f, label %tailrecurse.backedge

bb.f:                                             ; preds = %bb.e
  %i.ae = add nsw i32 %i.z, 1
  store i32 %i.ae, ptr %i.y, align 8, !tbaa !1068
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !17
  tail call void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE6_M_dfsENS9_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %i.ag), !inline_history !1103
  %i.ah = load i32, ptr %i.y, align 8, !tbaa !1068
  %i.ai = add nsw i32 %i.ah, -1
  br label %tailrecurse.backedge.sink.split

tailrecurse.backedge.sink.split:                  ; preds = %bb.d, %bb.f
  %.sink = phi i32 [ %i.ai, %bb.f ], [ %i.z, %bb.d ]
  store i32 %.sink, ptr %i.y, align 8, !tbaa !1068
  br label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %tailrecurse.backedge.sink.split, %bb.t, %bb.s, %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE9_M_at_endEv.exit, %.split, %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_M_at_beginEv.exit, %bb.n, %bb.e
  %.tr38.be.in = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.tr38.be = load i64, ptr %.tr38.be.in, align 8, !tbaa !512 ; 2 uses
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !1053
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 %.tr38.be ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !52, !range !208, !noundef !209
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %common.ret, label %.lr.ph.backedge

.lr.ph.backedge:                                  ; preds = %tailrecurse.backedge, %tailrecurse
  %.be = phi ptr [ %i.ak, %tailrecurse.backedge ], [ %i.ea, %tailrecurse ]
  %.tr3852.be = phi i64 [ %.tr38.be, %tailrecurse.backedge ], [ %i.dy, %tailrecurse ]
  br label %.lr.ph

bb.g:                                             ; preds = %bb.b
  %i.an = load i8, ptr %i.m, align 4, !tbaa !1100, !range !208, !noundef !209
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %common.ret, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !512
  tail call void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE6_M_dfsENS9_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %i.aq), !inline_history !1104
  %i.ar = load i8, ptr %i.m, align 4, !tbaa !1100, !range !208, !noundef !209
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %common.ret, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE16_M_rep_once_moreENS9_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %.tr3852), !inline_history !1104
  br label %common.ret

common.ret:                                       ; preds = %bb.u, %bb.v, %bb.g, %bb.h, %bb.i, %bb.x, %bb.z, %bb.aa, %bb.ab, %bb.a, %bb.r, %bb.o, %bb.m, %bb.p, %tailrecurse.backedge, %bb.t, %bb.s, %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE9_M_at_endEv.exit, %.split, %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_M_at_beginEv.exit, %.lr.ph, %tailrecurse, %bb.ad, %bb.ae, %bb.k, %bb.j
  ret void

bb.j:                                             ; preds = %.lr.ph
  %i.at = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.au = load i64, ptr %i.at, align 8, !tbaa !17
  %i.av = load ptr, ptr %0, align 8, !tbaa !404
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %i.au ; 3 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1081
  %i.ay = load ptr, ptr %i.g, align 8, !tbaa !1048
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !1081
  %i.az = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !512
  tail call void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE6_M_dfsENS9_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %i.ba), !inline_history !1105
  store ptr %i.ax, ptr %i.aw, align 8, !tbaa !1081
  br label %common.ret

bb.k:                                             ; preds = %.lr.ph
  %i.bb = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !17
  %i.bd = load ptr, ptr %0, align 8, !tbaa !404
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %i.bc ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 3 uses
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 8
  %i.bf = load ptr, ptr %i.g, align 8, !tbaa !1048
  store i8 1, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !1077
  %i.bg = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !512
  %i.bi = load <2 x ptr>, ptr %i.be, align 8
  store ptr %i.bf, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !1080
  tail call void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE6_M_dfsENS9_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %i.bh), !inline_history !1106
  store <2 x ptr> %i.bi, ptr %i.be, align 8, !tbaa !19
  store i8 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !1077
  br label %common.ret

bb.l:                                             ; preds = %.lr.ph
  %i.bj = load ptr, ptr %i.g, align 8, !tbaa !1048 ; 2 uses
  %i.bk = load ptr, ptr %i.k, align 8, !tbaa !1034
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bm = load i32, ptr %i.j, align 8, !tbaa !1049 ; 2 uses
  %3 = and i32 %i.bm, 1
  %.not.i27 = icmp eq i32 %3, 0
  br i1 %.not.i27, label %bb.n, label %common.ret

bb.n:                                             ; preds = %bb.m
  %i.bn = and i32 %i.bm, 128
  %.not2.i = icmp eq i32 %i.bn, 0
  br i1 %.not2.i, label %tailrecurse.backedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bo = load ptr, ptr %i.i, align 8, !tbaa !1107, !nonnull !209, !align !306
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !1028
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !607
  %i.bt = and i32 %i.bs, 2064
  %i.bu = icmp eq i32 %i.bt, 2064
  br i1 %i.bu, label %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_M_at_beginEv.exit, label %common.ret

bb.p:                                             ; preds = %bb.l
  %i.bv = load ptr, ptr %i.i, align 8, !tbaa !1107, !nonnull !209, !align !306
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !1028
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !607
  %i.ca = and i32 %i.bz, 2064
  %i.cb = icmp eq i32 %i.ca, 2064
  br i1 %i.cb, label %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_M_at_beginEv.exit, label %common.ret

_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_M_at_beginEv.exit: ; preds = %bb.o, %bb.p
  %i.cc = getelementptr inbounds i8, ptr %i.bj, i64 -1
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !17
  %i.ce = tail call noundef zeroext i1 @_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE21_M_is_line_terminatorEc(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef signext %i.cd)
  br i1 %i.ce, label %tailrecurse.backedge, label %common.ret

bb.q:                                             ; preds = %.lr.ph
  %i.cf = load ptr, ptr %i.g, align 8, !tbaa !1048 ; 2 uses
  %i.cg = load ptr, ptr %i.h, align 8, !tbaa !1051
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %.split, label %bb.r

.split:                                           ; preds = %bb.q
  %i.ci = load i32, ptr %i.j, align 8, !tbaa !1049
  %i.cj = and i32 %i.ci, 2
  %.not.i29 = icmp eq i32 %i.cj, 0
  br i1 %.not.i29, label %tailrecurse.backedge, label %common.ret

bb.r:                                             ; preds = %bb.q
  %i.ck = load ptr, ptr %i.i, align 8, !tbaa !1107, !nonnull !209, !align !306
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !1028
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !607
  %i.cp = and i32 %i.co, 2064
  %i.cq = icmp eq i32 %i.cp, 2064
  br i1 %i.cq, label %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE9_M_at_endEv.exit, label %common.ret

_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE9_M_at_endEv.exit: ; preds = %bb.r
  %i.cr = load i8, ptr %i.cf, align 1, !tbaa !17
  %i.cs = tail call noundef zeroext i1 @_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE21_M_is_line_terminatorEc(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef signext %i.cr)
  br i1 %i.cs, label %tailrecurse.backedge, label %common.ret

bb.s:                                             ; preds = %.lr.ph
  %i.ct = tail call noundef zeroext i1 @_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE16_M_word_boundaryEv(ptr noundef nonnull align 8 dereferenceable(141) %0), !inline_history !1108
  %i.cu = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.cv = load i8, ptr %i.cu, align 8, !tbaa !17, !range !208, !noundef !209
  %i.cw = zext i1 %i.ct to i8
  %.not.i = icmp eq i8 %i.cv, %i.cw
  br i1 %.not.i, label %common.ret, label %tailrecurse.backedge

bb.t:                                             ; preds = %.lr.ph
  %i.cx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !17
  %i.cz = tail call noundef zeroext i1 @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE12_M_lookaheadEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i64 noundef %i.cy), !inline_history !1109
  %i.da = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.db = load i8, ptr %i.da, align 8, !tbaa !17, !range !208, !noundef !209
  %i.dc = zext i1 %i.cz to i8
  %.not.i24 = icmp eq i8 %i.db, %i.dc
  br i1 %.not.i24, label %common.ret, label %tailrecurse.backedge

bb.u:                                             ; preds = %.lr.ph
  tail call void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE15_M_handle_matchENS9_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %.tr3852)
  br label %common.ret

bb.v:                                             ; preds = %.lr.ph
  tail call void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE17_M_handle_backrefENS9_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %.tr3852)
  br label %common.ret

bb.w:                                             ; preds = %.lr.ph
  %i.dd = load ptr, ptr %i.g, align 8, !tbaa !1048 ; 2 uses
  %i.de = load ptr, ptr %i.k, align 8, !tbaa !1034
  %i.df = icmp eq ptr %i.dd, %i.de
  br i1 %i.df, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dg = load i32, ptr %i.j, align 8, !tbaa !1049
  %i.dh = and i32 %i.dg, 32
  %.not.i25 = icmp eq i32 %i.dh, 0
  br i1 %.not.i25, label %bb.y, label %common.ret

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.di = icmp eq i8 %1, 1
  br i1 %i.di, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dj = load ptr, ptr %i.h, align 8, !tbaa !1051
  %i.dk = icmp eq ptr %i.dd, %i.dj
  br i1 %i.dk, label %bb.aa, label %common.ret

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.dl = load i8, ptr %i.m, align 4, !tbaa !1100, !range !208, !noundef !209
  %i.dm = trunc nuw i8 %i.dl to i1
  br i1 %i.dm, label %common.ret, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i8 1, ptr %i.m, align 4, !tbaa !1100
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !1096, !nonnull !209, !align !306
  %i.dp = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEaSERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.do, ptr noundef nonnull align 8 dereferenceable(141) %0) ; 0 uses
  br label %common.ret

bb.ac:                                            ; preds = %.lr.ph
  %i.dq = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !607
  %i.ds = and i32 %i.dr, 16
  %.not.i88 = icmp eq i32 %i.ds, 0
  %i.dt = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !17
  tail call void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE6_M_dfsENS9_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %i.du), !inline_history !1110
  %i.dv = load i8, ptr %i.m, align 4, !tbaa !1100, !range !208, !noundef !209 ; 2 uses
  br i1 %.not.i88, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %common.ret, label %tailrecurse

tailrecurse:                                      ; preds = %bb.ad
  %i.dx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !512 ; 2 uses
  %i.dz = load ptr, ptr %i.a, align 8, !tbaa !1053
  %i.ea = getelementptr inbounds i8, ptr %i.dz, i64 %i.dy ; 2 uses
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !52, !range !208, !noundef !209
  %i.ec = trunc nuw i8 %i.eb to i1
  br i1 %i.ec, label %common.ret, label %.lr.ph.backedge

bb.ae:                                            ; preds = %bb.ac
  store i8 0, ptr %i.m, align 4, !tbaa !1100
  %i.ed = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !512
  tail call void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE6_M_dfsENS9_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %i.ee), !inline_history !1110
  %i.ef = load i8, ptr %i.m, align 4, !tbaa !1100, !range !208, !noundef !209
  %i.eg = or i8 %i.ef, %i.dv
  store i8 %i.eg, ptr %i.m, align 4, !tbaa !1100
  br label %common.ret
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIPKcEESaIS5_EEESaIS8_EE17_M_realloc_insertIJRlRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1055 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1054   ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIPKcEESaIS5_EEESaIS8_EE12_M_check_lenEmS4_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.95) #29
  unreachable

_ZNKSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIPKcEESaIS5_EEESaIS8_EE12_M_check_lenEmS4_.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #31 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  %i.r = load i64, ptr %2, align 8, !tbaa !13
  store i64 %i.r, ptr %i.q, align 8, !tbaa !1097
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1091 ; 3 uses
  %i.v = load ptr, ptr %3, align 8, !tbaa !404    ; 3 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.u, %i.v
  br i1 %.not.i.i.i.i.i, label %.noexc27, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIPKcEESaIS5_EEESaIS8_EE12_M_check_lenEmS4_.exit
  %i.z = sdiv exact i64 %i.y, 24
  %i.aa = icmp ugt i64 %i.z, 384307168202282325
  br i1 %i.aa, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIPKcEEE8allocateEmPKv.exit.i.i.i.i.i, !prof !187
end_hunk_9
begin_hunk_10_@_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE16_M_word_boundaryEv:bb.a

bb.i:                                             ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i
  %i.al = and i32 %i.y, 65536
  %.not.i.i = icmp eq i32 %i.al, 0
  br i1 %.not.i.i, label %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEc.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.an = load i8, ptr %i.am, align 8, !tbaa !256
  %.not.i.i.i = icmp eq i8 %i.an, 0
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 152
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !17
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i

bb.l:                                             ; preds = %bb.j
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ae)
  %i.aq = load ptr, ptr %i.ae, align 8, !tbaa !93
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = tail call noundef signext i8 %i.as(ptr noundef nonnull align 8 dereferenceable(570) %i.ae, i8 noundef signext 95), !inline_history !1126
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i

_ZNKSt5ctypeIcE5widenEc.exit.i.i:                 ; preds = %bb.l, %bb.k
  %.0.i.i.i = phi i8 [ %i.ap, %bb.k ], [ %i.at, %bb.l ]
  %i.au = icmp eq i8 %i.s, %.0.i.i.i
  %i.av = zext i1 %i.au to i32
  br label %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEc.exit

_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEc.exit: ; preds = %_ZNKSt5ctypeIcE5widenEc.exit.i.i, %bb.i, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i, %bb.f
  %.1 = phi i32 [ 0, %bb.f ], [ 1, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i ], [ 0, %bb.i ], [ %i.av, %_ZNKSt5ctypeIcE5widenEc.exit.i.i ]
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !1048 ; 2 uses
  %i.ax = load ptr, ptr %i.i, align 8, !tbaa !1051
  %.not9 = icmp eq ptr %i.aw, %i.ax
  br i1 %.not9, label %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEc.exit18, label %bb.m

bb.m:                                             ; preds = %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEc.exit
  %i.ay = load i8, ptr %i.aw, align 1, !tbaa !17  ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !1107, !nonnull !209, !align !306
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !1028
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 80 ; 2 uses
  %i.be = tail call i32 @_ZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_b(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef nonnull @_ZZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEcE3__s, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEcE3__s, i64 1), i1 noundef zeroext false) ; 2 uses
  %i.bf = tail call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #30
  %i.bg = load ptr, ptr %i.bd, align 8, !tbaa !494
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !495
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bf
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !499 ; 7 uses
  %.not.not.i.i.i10 = icmp eq ptr %i.bk, null
  br i1 %.not.not.i.i.i10, label %bb.n, label %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i11

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt16__throw_bad_castv() #29
  unreachable

_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i11: ; preds = %bb.m
  %.sroa.0.0.extract.trunc.i.i12 = trunc i32 %i.be to i16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !597
  %i.bn = zext i8 %i.ay to i64
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %i.bn
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !598
  %i.bq = and i16 %i.bp, %.sroa.0.0.extract.trunc.i.i12
  %.not4.i.i13 = icmp eq i16 %i.bq, 0
  br i1 %.not4.i.i13, label %bb.o, label %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEc.exit18

bb.o:                                             ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i11
  %i.br = and i32 %i.be, 65536
  %.not.i.i14 = icmp eq i32 %i.br, 0
  br i1 %.not.i.i14, label %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEc.exit18, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  %i.bt = load i8, ptr %i.bs, align 8, !tbaa !256
  %.not.i.i.i15 = icmp eq i8 %i.bt, 0
  br i1 %.not.i.i.i15, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bk, i64 152
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !17
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i16

bb.r:                                             ; preds = %bb.p
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bk)
  %i.bw = load ptr, ptr %i.bk, align 8, !tbaa !93
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = tail call noundef signext i8 %i.by(ptr noundef nonnull align 8 dereferenceable(570) %i.bk, i8 noundef signext 95), !inline_history !1126
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i16

_ZNKSt5ctypeIcE5widenEc.exit.i.i16:               ; preds = %bb.r, %bb.q
  %.0.i.i.i17 = phi i8 [ %i.bv, %bb.q ], [ %i.bz, %bb.r ]
  %i.ca = icmp eq i8 %i.ay, %.0.i.i.i17
  %i.cb = zext i1 %i.ca to i32
  br label %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEc.exit18

_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEc.exit18: ; preds = %_ZNKSt5ctypeIcE5widenEc.exit.i.i16, %bb.o, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i11, %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEc.exit
  %i.cc = phi i32 [ 0, %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEc.exit ], [ 1, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i11 ], [ 0, %bb.o ], [ %i.cb, %_ZNKSt5ctypeIcE5widenEc.exit.i.i16 ]
  %i.cd = icmp ne i32 %.1, %i.cc
  br label %bb.s

bb.s:                                             ; preds = %bb.d, %bb.b, %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEc.exit18
  %.04 = phi i1 [ %i.cd, %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEc.exit18 ], [ false, %bb.b ], [ false, %bb.d ]
  ret i1 %.04
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE12_M_lookaheadEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.244", align 8   ; 10 uses
  %3 = alloca %"class.std::__detail::_Executor", align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1091 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !404    ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sdiv exact i64 %i.f, 24
  %i.h = icmp ugt i64 %i.g, 384307168202282325
  br i1 %i.h, label %.noexc.i.i, label %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIPKcEEE8allocateEmPKv.exit.i.i.i.i, !prof !187

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

_ZNSt15__new_allocatorINSt7__cxx119sub_matchIPKcEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #31
  %.pre = load ptr, ptr %0, align 8, !tbaa !1076
  %.pre21 = load ptr, ptr %i.a, align 8, !tbaa !1076
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIPKcEEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.j = phi ptr [ %i.b, %bb.a ], [ %.pre21, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIPKcEEE8allocateEmPKv.exit.i.i.i.i ] ; 2 uses
  %i.k = phi ptr [ %i.c, %bb.a ], [ %.pre, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIPKcEEE8allocateEmPKv.exit.i.i.i.i ] ; 2 uses
  %i.l = phi ptr [ null, %bb.a ], [ %i.i, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIPKcEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.l, ptr %2, align 8, !tbaa !404
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.f
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !407
  %.not7.i.i.i.i.i = icmp eq ptr %i.k, %i.j
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEC2ERKS6_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.l, %bb.c ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i ], [ %i.k, %bb.c ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.p, %i.j
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEC2ERKS6_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1099

_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEC2ERKS6_.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.l, %bb.c ], [ %i.q, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.m, align 8, !tbaa !1091
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1048
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1051
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1107, !nonnull !209, !align !306
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.y = load i32, ptr %i.x, align 8, !tbaa !1049
  invoke void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EEC2ES2_S2_RSt6vectorIS5_S6_ERKNS3_11basic_regexIcS8_EENSt15regex_constants15match_flag_typeE(ptr noundef nonnull align 8 dereferenceable(141) %3, ptr noundef %i.s, ptr noundef %i.u, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.w, i32 noundef %i.y)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEC2ERKS6_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 128
  store i64 %1, ptr %i.z, align 8, !tbaa !1095
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1034
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !1048
  %i.ad = invoke noundef zeroext i1 @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE16_M_main_dispatchENS9_11_Match_modeESt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(141) %3, i8 noundef zeroext 1)
          to label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE20_M_search_from_firstEv.exit unwind label %bb.f, !inline_history !1127 ; 2 uses

_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE20_M_search_from_firstEv.exit: ; preds = %bb.d
  br i1 %i.ad, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE20_M_search_from_firstEv.exit
  %i.ae = load ptr, ptr %i.m, align 8, !tbaa !1091 ; 2 uses
  %i.af = load ptr, ptr %2, align 8, !tbaa !404   ; 5 uses
  %.not = icmp eq ptr %i.ae, %i.af
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 2 uses
  %i.aj = sdiv exact i64 %i.ai, 24                ; 3 uses
  %xtraiter = and i64 %i.aj, 1
  %i.ak = icmp eq i64 %i.ai, 24
  br i1 %i.ak, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.aj, -2
  br label %.lr.ph

bb.e:                                             ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEC2ERKS6_.exit
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.f:                                             ; preds = %bb.d
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(141) dereferenceable(141) %3) #30
  br label %bb.r

.lr.ph:                                           ; preds = %bb.i, %.lr.ph.preheader.new
  %.020 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.be, %bb.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.i ]
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %.020 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !1077, !range !208, !noundef !209
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.g, label %.lr.ph.1

bb.g:                                             ; preds = %.lr.ph
  %i.ar = load ptr, ptr %0, align 8, !tbaa !404
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.ar, i64 %.020 ; 2 uses
  %i.at = load <2 x ptr>, ptr %i.an, align 8, !tbaa !19
  store <2 x ptr> %i.at, ptr %i.as, align 8, !tbaa !19
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store i8 1, ptr %i.au, align 8, !tbaa !1077
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.g, %.lr.ph
  %i.av = or disjoint i64 %.020, 1                ; 2 uses
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %i.av ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !1077, !range !208, !noundef !209
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.1
  %i.ba = load ptr, ptr %0, align 8, !tbaa !404
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.ba, i64 %i.av ; 2 uses
  %i.bc = load <2 x ptr>, ptr %i.aw, align 8, !tbaa !19
  store <2 x ptr> %i.bc, ptr %i.bb, align 8, !tbaa !19
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store i8 1, ptr %i.bd, align 8, !tbaa !1077
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.1
  %i.be = add nuw i64 %.020, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !1128

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %.020.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.be, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod37 = trunc i64 %i.aj to i1
  call void @llvm.assume(i1 %lcmp.mod37)
  %i.bf = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %.020.epil.init ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load i8, ptr %i.bg, align 8, !tbaa !1077, !range !208, !noundef !209
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %.lr.ph.epil.preheader
  %i.bj = load ptr, ptr %0, align 8, !tbaa !404
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.bj, i64 %.020.epil.init ; 2 uses
  %i.bl = load <2 x ptr>, ptr %i.bf, align 8, !tbaa !19
  store <2 x ptr> %i.bl, ptr %i.bk, align 8, !tbaa !19
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store i8 1, ptr %i.bm, align 8, !tbaa !1077
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.j, %.lr.ph.epil.preheader, %.preheader, %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE20_M_search_from_firstEv.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !1053 ; 2 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.loopexit
  call void @_ZdaPv(ptr noundef nonnull %i.bp) #32
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.loopexit
  %i.br = load ptr, ptr %i.bn, align 8, !tbaa !1054 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !1055 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.br, %i.bt
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i15

.lr.ph.i.i.i.i.i15:                               ; preds = %bb.l, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.cb, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i.i.i ], [ %i.br, %bb.l ] ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !404 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i15
  %i.bw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !407
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = ptrtoint ptr %i.bv to i64
  %i.ca = sub i64 %i.by, %i.bz
  call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef %i.ca) #32
  br label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.m, %.lr.ph.i.i.i.i.i15
  %i.cb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i16 = icmp eq ptr %i.cb, %i.bt
  br i1 %.not.i.i.i.i.i16, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i15, !llvm.loop !1056

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.bn, align 8, !tbaa !1054
  br label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.l
  %i.cc = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.br, %bb.l ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS5_S6_EED2Ev.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exit.i.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !1057
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = ptrtoint ptr %i.cc to i64
  %i.ch = sub i64 %i.cf, %i.cg
  call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef %i.ch) #32
  br label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS5_S6_EED2Ev.exit.i

_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS5_S6_EED2Ev.exit.i: ; preds = %bb.n, %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exit.i.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !1058 ; 3 uses
  %.not.i.i.i.i17 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i.i17, label %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS5_S6_EED2Ev.exit.i
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !1059
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = ptrtoint ptr %i.cj to i64
  %i.co = sub i64 %i.cm, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef %i.co) #32
  br label %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i

_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i:    ; preds = %bb.o, %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS5_S6_EED2Ev.exit.i
  %i.cp = load ptr, ptr %3, align 8, !tbaa !404   ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i1.i, label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !407
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = ptrtoint ptr %i.cp to i64
  %i.cu = sub i64 %i.cs, %i.ct
  call void @_ZdlPvm(ptr noundef nonnull %i.cp, i64 noundef %i.cu) #32
  br label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EED2Ev.exit

_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.cv = load ptr, ptr %2, align 8, !tbaa !404   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EED2Ev.exit
  %i.cw = load ptr, ptr %i.o, align 8, !tbaa !407
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = ptrtoint ptr %i.cv to i64
  %i.cz = sub i64 %i.cx, %i.cy
  call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef %i.cz) #32
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit

_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit: ; preds = %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EED2Ev.exit, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret i1 %i.ad

bb.r:                                             ; preds = %bb.f, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %i.am, %bb.f ], [ %i.al, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.da = load ptr, ptr %2, align 8, !tbaa !404   ; 3 uses
  %.not.i.i.i18 = icmp eq ptr %i.da, null
  br i1 %.not.i.i.i18, label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit19, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.db = load ptr, ptr %i.o, align 8, !tbaa !407
  %i.dc = ptrtoint ptr %i.db to i64
  %i.dd = ptrtoint ptr %i.da to i64
  %i.de = sub i64 %i.dc, %i.dd
  call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef %i.de) #32
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit19

_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit19: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt8__detail16_Backref_matcherIPKcNSt7__cxx1112regex_traitsIcEEE8_M_applyES2_S2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::locale", align 8       ; 7 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !1123, !range !208, !noundef !209
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %2 to i64
  %i.d = ptrtoint ptr %1 to i64
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = ptrtoint ptr %4 to i64
  %i.g = ptrtoint ptr %3 to i64
  %i.h = sub i64 %i.f, %i.g
  %.not.i = icmp eq i64 %i.e, %i.h
  br i1 %.not.i, label %bb.c, label %_ZSt8__equal4IPKcS1_EbT_S2_T0_S3_.exit

bb.c:                                             ; preds = %bb.b
  %.not.not.i.i.i.i.i = icmp eq ptr %2, %1
  br i1 %.not.not.i.i.i.i.i, label %_ZSt8__equal4IPKcS1_EbT_S2_T0_S3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr %1, ptr %3, i64 %i.e)
  %.not9.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br label %_ZSt8__equal4IPKcS1_EbT_S2_T0_S3_.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1129, !nonnull !209, !align !306
  call void @_ZNSt6localeC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.j) #30
  %i.k = call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #30
  %i.l = load ptr, ptr %5, align 8, !tbaa !494
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !495
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.k
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !499  ; 5 uses
  %.not.not.i = icmp eq ptr %i.p, null
  br i1 %.not.not.i, label %bb.f, label %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt16__throw_bad_castv() #29
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.f
  unreachable

_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit:  ; preds = %bb.e
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.q = ptrtoint ptr %2 to i64
  %i.r = ptrtoint ptr %1 to i64
end_hunk_10
begin_hunk_11_@_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEaSERKS6_:bb.a
  br label %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIPKcEES5_S4_ET0_T_S7_S6_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIPKcEES5_S4_ET0_T_S7_S6_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIPKcEES5_S4_ET0_T_S7_S6_RSaIT1_E.exit.loopexit, %bb.g, %_ZSt4copyIPNSt7__cxx119sub_matchIPKcEES5_ET0_T_S7_S6_.exit, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EE13_M_deallocateEPS4_m.exit
  %i.bc = phi ptr [ %i.p, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EE13_M_deallocateEPS4_m.exit ], [ %.pre, %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIPKcEES5_S4_ET0_T_S7_S6_RSaIT1_E.exit.loopexit ], [ %i.i, %bb.g ], [ %i.i, %_ZSt4copyIPNSt7__cxx119sub_matchIPKcEES5_ET0_T_S7_S6_.exit ], [ %i.i, %.lr.ph.i.i.i.i.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.f
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !1091
  br label %bb.i

bb.i:                                             ; preds = %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIPKcEES5_S4_ET0_T_S7_S6_RSaIT1_E.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE6_M_dfsENS9_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef zeroext %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 8 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge283, %bb.a
  %.tr38 = phi i64 [ %2, %bb.a ], [ %.tr38.be284, %tailrecurse.backedge283 ] ; 5 uses
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !1135, !nonnull !209, !align !306 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !509
  %i.m = getelementptr inbounds nuw [48 x i8], ptr %i.l, i64 %.tr38 ; 19 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !533
  switch i32 %i.n, label %common.ret [
    i32 2, label %bb.b
    i32 8, label %bb.k
    i32 9, label %bb.l
    i32 4, label %bb.m
    i32 5, label %bb.r
    i32 6, label %bb.t
    i32 7, label %bb.u
    i32 11, label %bb.v
    i32 3, label %bb.z
    i32 12, label %bb.aa
    i32 1, label %bb.ai
  ]

bb.b:                                             ; preds = %tailrecurse
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.p = load i8, ptr %i.o, align 8, !tbaa !17, !range !208, !noundef !209
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !1058
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %.tr38 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 5 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !1068 ; 4 uses
  %i.v = icmp ne i32 %i.u, 0
  %.sroa.030.0.copyload.pre = load ptr, ptr %i.s, align 8 ; 2 uses
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !1073 ; 2 uses
  %.not.i26 = icmp eq ptr %.sroa.030.0.copyload.pre, %.pre
  %or.cond = select i1 %i.v, i1 %.not.i26, i1 false
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %.pre, ptr %i.s, align 8, !tbaa !1066
  store i32 1, ptr %i.t, align 8, !tbaa !1068
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !17
  tail call void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE6_M_dfsENS9_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef zeroext %1, i64 noundef %i.x), !inline_history !1136
  store ptr %.sroa.030.0.copyload.pre, ptr %i.s, align 8, !tbaa !1066
  br label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE16_M_rep_once_moreENS9_11_Match_modeEl.exit.sink.split

bb.e:                                             ; preds = %bb.c
  %i.y = icmp slt i32 %i.u, 2
  br i1 %i.y, label %bb.f, label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE16_M_rep_once_moreENS9_11_Match_modeEl.exit

bb.f:                                             ; preds = %bb.e
  %i.z = add nsw i32 %i.u, 1
  store i32 %i.z, ptr %i.t, align 8, !tbaa !1068
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !17
  tail call void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE6_M_dfsENS9_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef zeroext %1, i64 noundef %i.ab), !inline_history !1136
  %i.ac = load i32, ptr %i.t, align 8, !tbaa !1068
  %i.ad = add nsw i32 %i.ac, -1
  br label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE16_M_rep_once_moreENS9_11_Match_modeEl.exit.sink.split

_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE16_M_rep_once_moreENS9_11_Match_modeEl.exit.sink.split: ; preds = %bb.f, %bb.d
  %.sink = phi i32 [ %i.u, %bb.d ], [ %i.ad, %bb.f ]
  store i32 %.sink, ptr %i.t, align 8, !tbaa !1068
  br label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE16_M_rep_once_moreENS9_11_Match_modeEl.exit

_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE16_M_rep_once_moreENS9_11_Match_modeEl.exit: ; preds = %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE16_M_rep_once_moreENS9_11_Match_modeEl.exit.sink.split, %bb.e
  %i.ae = load i8, ptr %i.i, align 4, !tbaa !1074, !range !208, !noundef !209
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %common.ret, label %tailrecurse.backedge283

tailrecurse.backedge283:                          ; preds = %bb.aj, %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE16_M_rep_once_moreENS9_11_Match_modeEl.exit, %bb.o, %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE11_M_at_beginEv.exit, %.split, %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE9_M_at_endEv.exit, %bb.t, %bb.u
  %.tr38.be284.in = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.tr38.be284 = load i64, ptr %.tr38.be284.in, align 8, !tbaa !512
  br label %tailrecurse

bb.g:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !512
  tail call void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE6_M_dfsENS9_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef zeroext %1, i64 noundef %i.ah), !inline_history !1137
  %i.ai = load i8, ptr %i.i, align 4, !tbaa !1074, !range !208, !noundef !209
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %common.ret, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = load ptr, ptr %i.b, align 8, !tbaa !1135, !nonnull !209, !align !306
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !509
  %i.an = getelementptr inbounds nuw [48 x i8], ptr %i.am, i64 %.tr38 ; 2 uses
  %i.ao = load ptr, ptr %i.h, align 8, !tbaa !1058
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %.tr38 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 5 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !1068 ; 4 uses
  %i.as = icmp ne i32 %i.ar, 0
  %.sroa.0.0.copyload.pre.i = load ptr, ptr %i.ap, align 8 ; 2 uses
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !1073 ; 2 uses
  %.not.i108 = icmp eq ptr %.sroa.0.0.copyload.pre.i, %.pre.i
  %or.cond.i = select i1 %i.as, i1 %.not.i108, i1 false
  br i1 %or.cond.i, label %bb.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.h
  store ptr %.pre.i, ptr %i.ap, align 8, !tbaa !1066
  store i32 1, ptr %i.aq, align 8, !tbaa !1068
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.au = load i64, ptr %i.at, align 8, !tbaa !17
  tail call void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE6_M_dfsENS9_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef zeroext %1, i64 noundef %i.au), !inline_history !1136
  store ptr %.sroa.0.0.copyload.pre.i, ptr %i.ap, align 8, !tbaa !1066
  br label %.sink.split.i

bb.i:                                             ; preds = %bb.h
  %i.av = icmp slt i32 %i.ar, 2
  br i1 %i.av, label %bb.j, label %common.ret

bb.j:                                             ; preds = %bb.i
  %i.aw = add nsw i32 %i.ar, 1
  store i32 %i.aw, ptr %i.aq, align 8, !tbaa !1068
  %i.ax = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !17
  tail call void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE6_M_dfsENS9_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef zeroext %1, i64 noundef %i.ay), !inline_history !1136
  %i.az = load i32, ptr %i.aq, align 8, !tbaa !1068
  %i.ba = add nsw i32 %i.az, -1
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.j, %._crit_edge.i
  %.sink.i109 = phi i32 [ %i.ba, %bb.j ], [ %i.ar, %._crit_edge.i ]
  store i32 %.sink.i109, ptr %i.aq, align 8, !tbaa !1068
  br label %common.ret

common.ret:                                       ; preds = %.sink.split.i, %bb.i, %bb.z, %bb.g, %bb.v, %_ZNKSt8__detail6_StateIcE10_M_matchesEc.exit, %bb.y, %.thread.i, %bb.ac, %bb.ae, %bb.ag, %bb.ah, %tailrecurse, %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE16_M_rep_once_moreENS9_11_Match_modeEl.exit, %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE11_M_at_beginEv.exit, %.split, %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE9_M_at_endEv.exit, %bb.t, %bb.u, %bb.q, %bb.n, %bb.p, %bb.s, %bb.aj, %bb.ak, %bb.l, %bb.k
  ret void

bb.k:                                             ; preds = %tailrecurse
  %i.bb = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !17
  %i.bd = load ptr, ptr %0, align 8, !tbaa !404
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %i.bc ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !1081
  %i.bg = load ptr, ptr %i.c, align 8, !tbaa !1073
  store ptr %i.bg, ptr %i.be, align 8, !tbaa !1081
  %i.bh = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !512
  tail call void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE6_M_dfsENS9_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef zeroext %1, i64 noundef %i.bi), !inline_history !1138
  store ptr %i.bf, ptr %i.be, align 8, !tbaa !1081
  br label %common.ret

bb.l:                                             ; preds = %tailrecurse
  %i.bj = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !17
  %i.bl = load ptr, ptr %0, align 8, !tbaa !404
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.bl, i64 %i.bk ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 3 uses
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 8
  %i.bn = load ptr, ptr %i.c, align 8, !tbaa !1073
  store i8 1, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !1077
  %i.bo = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !512
  %i.bq = load <2 x ptr>, ptr %i.bm, align 8
  store ptr %i.bn, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !1080
  tail call void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE6_M_dfsENS9_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef zeroext %1, i64 noundef %i.bp), !inline_history !1139
  store <2 x ptr> %i.bq, ptr %i.bm, align 8, !tbaa !19
  store i8 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !1077
  br label %common.ret

bb.m:                                             ; preds = %tailrecurse
  %i.br = load ptr, ptr %i.c, align 8, !tbaa !1073 ; 2 uses
  %i.bs = load ptr, ptr %i.g, align 8, !tbaa !1060
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.bu = load i32, ptr %i.f, align 8, !tbaa !1087 ; 2 uses
  %3 = and i32 %i.bu, 1
  %.not.i27 = icmp eq i32 %3, 0
  br i1 %.not.i27, label %bb.o, label %common.ret

bb.o:                                             ; preds = %bb.n
  %i.bv = and i32 %i.bu, 128
  %.not2.i = icmp eq i32 %i.bv, 0
  br i1 %.not2.i, label %tailrecurse.backedge283, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bw = load ptr, ptr %i.e, align 8, !tbaa !1140, !nonnull !209, !align !306
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !1028
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !607
  %i.cb = and i32 %i.ca, 2064
  %i.cc = icmp eq i32 %i.cb, 2064
  br i1 %i.cc, label %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE11_M_at_beginEv.exit, label %common.ret

bb.q:                                             ; preds = %bb.m
  %i.cd = load ptr, ptr %i.e, align 8, !tbaa !1140, !nonnull !209, !align !306
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !1028
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !607
  %i.ci = and i32 %i.ch, 2064
  %i.cj = icmp eq i32 %i.ci, 2064
  br i1 %i.cj, label %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE11_M_at_beginEv.exit, label %common.ret

_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE11_M_at_beginEv.exit: ; preds = %bb.p, %bb.q
  %i.ck = getelementptr inbounds i8, ptr %i.br, i64 -1
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !17
  %i.cm = tail call noundef zeroext i1 @_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE21_M_is_line_terminatorEc(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef signext %i.cl)
  br i1 %i.cm, label %tailrecurse.backedge283, label %common.ret

bb.r:                                             ; preds = %tailrecurse
  %i.cn = load ptr, ptr %i.c, align 8, !tbaa !1073 ; 2 uses
  %i.co = load ptr, ptr %i.d, align 8, !tbaa !1063
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %.split, label %bb.s

.split:                                           ; preds = %bb.r
  %i.cq = load i32, ptr %i.f, align 8, !tbaa !1087
  %i.cr = and i32 %i.cq, 2
  %.not.i29 = icmp eq i32 %i.cr, 0
  br i1 %.not.i29, label %tailrecurse.backedge283, label %common.ret

bb.s:                                             ; preds = %bb.r
  %i.cs = load ptr, ptr %i.e, align 8, !tbaa !1140, !nonnull !209, !align !306
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !1028
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !607
  %i.cx = and i32 %i.cw, 2064
  %i.cy = icmp eq i32 %i.cx, 2064
  br i1 %i.cy, label %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE9_M_at_endEv.exit, label %common.ret

_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE9_M_at_endEv.exit: ; preds = %bb.s
  %i.cz = load i8, ptr %i.cn, align 1, !tbaa !17
  %i.da = tail call noundef zeroext i1 @_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE21_M_is_line_terminatorEc(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef signext %i.cz)
  br i1 %i.da, label %tailrecurse.backedge283, label %common.ret

bb.t:                                             ; preds = %tailrecurse
  %i.db = tail call noundef zeroext i1 @_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE16_M_word_boundaryEv(ptr noundef nonnull align 8 dereferenceable(117) %0), !inline_history !1141
  %i.dc = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.dd = load i8, ptr %i.dc, align 8, !tbaa !17, !range !208, !noundef !209
  %i.de = zext i1 %i.db to i8
  %.not.i = icmp eq i8 %i.dd, %i.de
  br i1 %.not.i, label %common.ret, label %tailrecurse.backedge283

bb.u:                                             ; preds = %tailrecurse
  %i.df = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !17
  %i.dh = tail call noundef zeroext i1 @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE12_M_lookaheadEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i64 noundef %i.dg), !inline_history !1142
  %i.di = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.dj = load i8, ptr %i.di, align 8, !tbaa !17, !range !208, !noundef !209
  %i.dk = zext i1 %i.dh to i8
  %.not.i24 = icmp eq i8 %i.dj, %i.dk
  br i1 %.not.i24, label %common.ret, label %tailrecurse.backedge283

bb.v:                                             ; preds = %tailrecurse
  %i.dl = load ptr, ptr %i.c, align 8, !tbaa !1073 ; 2 uses
  %i.dm = load ptr, ptr %i.d, align 8, !tbaa !1063
  %i.dn = icmp eq ptr %i.dl, %i.dm
  br i1 %i.dn, label %common.ret, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.do = load i8, ptr %i.dl, align 1, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.do, ptr %i.a, align 1, !tbaa !17
  %i.dp = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !555
  %.not.i.i.i = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i, label %bb.x, label %_ZNKSt8__detail6_StateIcE10_M_matchesEc.exit

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt25__throw_bad_function_callv() #29
  unreachable

_ZNKSt8__detail6_StateIcE10_M_matchesEc.exit:     ; preds = %bb.w
  %i.dr = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ds = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !552
  %i.du = call noundef zeroext i1 %i.dt(ptr noundef nonnull align 8 dereferenceable(32) %i.dr, ptr noundef nonnull align 1 dereferenceable(1) %i.a), !inline_history !1143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.du, label %bb.y, label %common.ret

bb.y:                                             ; preds = %_ZNKSt8__detail6_StateIcE10_M_matchesEc.exit
  %i.dv = load ptr, ptr %i.c, align 8, !tbaa !1073
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 1
  store ptr %i.dw, ptr %i.c, align 8, !tbaa !1073
  %i.dx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !512
  call void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE6_M_dfsENS9_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef zeroext %1, i64 noundef %i.dy), !inline_history !1144
  %i.dz = load ptr, ptr %i.c, align 8, !tbaa !1073
  %i.ea = getelementptr inbounds i8, ptr %i.dz, i64 -1
  store ptr %i.ea, ptr %i.c, align 8, !tbaa !1073
  br label %common.ret

bb.z:                                             ; preds = %tailrecurse
  tail call void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE17_M_handle_backrefENS9_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef zeroext %1, i64 noundef %.tr38)
  br label %common.ret

bb.aa:                                            ; preds = %tailrecurse
  %i.eb = icmp ne i8 %1, 0
  %i.ec = load ptr, ptr %i.c, align 8, !tbaa !1073 ; 4 uses
  %i.ed = load ptr, ptr %i.d, align 8
  %i.ee = icmp eq ptr %i.ec, %i.ed
  %narrow.i = select i1 %i.eb, i1 true, i1 %i.ee  ; 2 uses
  %.sink.i = zext i1 %narrow.i to i8
  store i8 %.sink.i, ptr %i.i, align 4, !tbaa !1074
  %i.ef = load ptr, ptr %i.g, align 8, !tbaa !1060 ; 2 uses
  %i.eg = icmp eq ptr %i.ec, %i.ef
  br i1 %i.eg, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.eh = load i32, ptr %i.f, align 8, !tbaa !1087
  %i.ei = and i32 %i.eh, 32
  %.not.i25 = icmp eq i32 %i.ei, 0
  br i1 %.not.i25, label %bb.ac, label %.thread.i

.thread.i:                                        ; preds = %bb.ab
  store i8 0, ptr %i.i, align 4, !tbaa !1074
  br label %common.ret

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  br i1 %narrow.i, label %bb.ad, label %common.ret

bb.ad:                                            ; preds = %bb.ac
  %i.ej = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !607
  %i.el = and i32 %i.ek, 16
  %.not1.i = icmp eq i32 %i.el, 0
  br i1 %.not1.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !1085, !nonnull !209, !align !306
  %i.eo = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEaSERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.en, ptr noundef nonnull align 8 dereferenceable(117) %0) ; 0 uses
  br label %common.ret

bb.af:                                            ; preds = %bb.ad
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !19 ; 2 uses
  %i.er = icmp eq ptr %i.eq, null
  br i1 %i.er, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.es = ptrtoint ptr %i.eq to i64
  %i.et = ptrtoint ptr %i.ef to i64               ; 2 uses
  %i.eu = sub i64 %i.es, %i.et
  %i.ev = ptrtoint ptr %i.ec to i64
  %i.ew = sub i64 %i.ev, %i.et
  %i.ex = icmp slt i64 %i.eu, %i.ew
  br i1 %i.ex, label %bb.ah, label %common.ret

bb.ah:                                            ; preds = %bb.ag, %bb.af
  store ptr %i.ec, ptr %i.ep, align 8, !tbaa !19
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !1085, !nonnull !209, !align !306
  %i.fa = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEaSERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.ez, ptr noundef nonnull align 8 dereferenceable(117) %0) ; 0 uses
  br label %common.ret

bb.ai:                                            ; preds = %tailrecurse
  %i.fb = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !607
  %i.fd = and i32 %i.fc, 16
  %.not.i111 = icmp eq i32 %i.fd, 0
  %i.fe = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !17
  tail call void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE6_M_dfsENS9_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef zeroext %1, i64 noundef %i.ff), !inline_history !1145
  %i.fg = load i8, ptr %i.i, align 4, !tbaa !1074, !range !208, !noundef !209 ; 2 uses
  br i1 %.not.i111, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fh = trunc nuw i8 %i.fg to i1
  br i1 %i.fh, label %common.ret, label %tailrecurse.backedge283

bb.ak:                                            ; preds = %bb.ai
  store i8 0, ptr %i.i, align 4, !tbaa !1074
  %i.fi = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !512
  tail call void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE6_M_dfsENS9_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef zeroext %1, i64 noundef %i.fj), !inline_history !1145
end_hunk_11
begin_hunk_12_@_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE12_M_lookaheadEl:bb.a
  br i1 %i.h, label %.noexc.i.i, label %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIPKcEEE8allocateEmPKv.exit.i.i.i.i, !prof !187

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

_ZNSt15__new_allocatorINSt7__cxx119sub_matchIPKcEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #31
  %.pre = load ptr, ptr %0, align 8, !tbaa !1076
  %.pre25 = load ptr, ptr %i.a, align 8, !tbaa !1076
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIPKcEEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.j = phi ptr [ %i.b, %bb.a ], [ %.pre25, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIPKcEEE8allocateEmPKv.exit.i.i.i.i ] ; 2 uses
  %i.k = phi ptr [ %i.c, %bb.a ], [ %.pre, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIPKcEEE8allocateEmPKv.exit.i.i.i.i ] ; 2 uses
  %i.l = phi ptr [ null, %bb.a ], [ %i.i, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIPKcEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.l, ptr %2, align 8, !tbaa !404
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.f
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !407
  %.not7.i.i.i.i.i = icmp eq ptr %i.k, %i.j
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEC2ERKS6_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.l, %bb.c ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i ], [ %i.k, %bb.c ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.p, %i.j
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEC2ERKS6_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1099

_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEC2ERKS6_.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.l, %bb.c ], [ %i.q, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.m, align 8, !tbaa !1091
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1073 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.w = load i32, ptr %i.v, align 8, !tbaa !1087 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(117) %3, i8 0, i64 24, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.s, ptr %i.x, align 8, !tbaa !1060
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.z = load ptr, ptr %i.u, align 8, !tbaa !1140, !nonnull !209, !align !306
  %i.aa = load <2 x ptr>, ptr %i.t, align 8, !tbaa !67
  store <2 x ptr> %i.aa, ptr %i.y, align 8, !tbaa !67
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1028 ; 3 uses
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !561
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 64
  store ptr %2, ptr %i.ae, align 8, !tbaa !1065
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !550 ; 2 uses
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !509 ; 2 uses
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = sdiv exact i64 %i.am, 48                ; 7 uses
  %i.ao = icmp ugt i64 %i.an, 576460752303423487
  br i1 %i.ao, label %bb.d, label %_ZNSt6vectorISt4pairIPKciESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i

bb.d:                                             ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEC2ERKS6_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.118) #29
          to label %.noexc.i unwind label %bb.e

.noexc.i:                                         ; preds = %bb.d
  unreachable

_ZNSt6vectorISt4pairIPKciESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEC2ERKS6_.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i15 = icmp eq ptr %i.ai, %i.aj
  br i1 %.not.i.i.i.i.i15, label %.loopexit.i, label %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i.i

_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i.i: ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i
  %i.ap = shl nuw nsw i64 %i.an, 4
  %i.aq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #31
          to label %.noexc10.i unwind label %bb.e ; 4 uses

.noexc10.i:                                       ; preds = %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i.i
  store ptr %i.aq, ptr %i.af, align 8, !tbaa !1058
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.aq, i64 %i.an
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 88
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !1059
  %xtraiter = and i64 %i.an, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.noexc10.i, %.lr.ph.i.i.i.i.i.i.prol
  %.013.i.i.i.i.i.i.prol = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.aq, %.noexc10.i ] ; 3 uses
  %.01012.i.i.i.i.i.i.prol = phi i64 [ %i.au, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.an, %.noexc10.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.noexc10.i ]
  store ptr null, ptr %.013.i.i.i.i.i.i.prol, align 8, !tbaa !1066
  %i.at = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.prol, i64 8
  store i32 0, ptr %i.at, align 8, !tbaa !1068
  %i.au = add i64 %.01012.i.i.i.i.i.i.prol, -1    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !1148

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.noexc10.i
  %.lcssa.unr = phi ptr [ poison, %.noexc10.i ], [ %i.av, %.lr.ph.i.i.i.i.i.i.prol ]
  %.013.i.i.i.i.i.i.unr = phi ptr [ %i.aq, %.noexc10.i ], [ %i.av, %.lr.ph.i.i.i.i.i.i.prol ]
  %.01012.i.i.i.i.i.i.unr = phi i64 [ %i.an, %.noexc10.i ], [ %i.au, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.aw = icmp ult i64 %i.an, 8
  br i1 %i.aw, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.013.i.i.i.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.01012.i.i.i.i.i.i = phi i64 [ %i.bm, %.lr.ph.i.i.i.i.i.i ], [ %.01012.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  store ptr null, ptr %.013.i.i.i.i.i.i, align 8, !tbaa !1066
  %i.ax = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 8
  store i32 0, ptr %i.ax, align 8, !tbaa !1068
  %i.ay = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 16
  store ptr null, ptr %i.ay, align 8, !tbaa !1066
  %i.az = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 24
  store i32 0, ptr %i.az, align 8, !tbaa !1068
  %i.ba = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 32
  store ptr null, ptr %i.ba, align 8, !tbaa !1066
  %i.bb = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 40
  store i32 0, ptr %i.bb, align 8, !tbaa !1068
  %i.bc = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 48
  store ptr null, ptr %i.bc, align 8, !tbaa !1066
  %i.bd = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 56
  store i32 0, ptr %i.bd, align 8, !tbaa !1068
  %i.be = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 64
  store ptr null, ptr %i.be, align 8, !tbaa !1066
  %i.bf = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 72
  store i32 0, ptr %i.bf, align 8, !tbaa !1068
  %i.bg = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 80
  store ptr null, ptr %i.bg, align 8, !tbaa !1066
  %i.bh = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 88
  store i32 0, ptr %i.bh, align 8, !tbaa !1068
  %i.bi = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 96
  store ptr null, ptr %i.bi, align 8, !tbaa !1066
  %i.bj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 104
  store i32 0, ptr %i.bj, align 8, !tbaa !1068
  %i.bk = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 112
  store ptr null, ptr %i.bk, align 8, !tbaa !1066
  %i.bl = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 120
  store i32 0, ptr %i.bl, align 8, !tbaa !1068
  %i.bm = add i64 %.01012.i.i.i.i.i.i, -8         ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.i.7 = icmp eq i64 %i.bm, 0
  br i1 %.not.i.i.i.i.i.i.7, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1070

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %_ZNSt6vectorISt4pairIPKciESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorISt4pairIPKciESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.bn, %.lr.ph.i.i.i.i.i.i ]
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 80
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.bo, align 8, !tbaa !1071
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.br = and i32 %i.w, 128
  %.not.i = icmp eq i32 %i.br, 0
  %i.bs = and i32 %i.w, -6
  %spec.select = select i1 %.not.i, i32 %i.w, i32 %i.bs
  store i32 %spec.select, ptr %i.bq, align 8, !tbaa !1050
  store i64 %1, ptr %i.bp, align 8, !tbaa !1075
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.s, ptr %i.bt, align 8, !tbaa !1073
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 116 ; 2 uses
  store i8 0, ptr %i.bu, align 4, !tbaa !1074
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 104
  store ptr null, ptr %i.bv, align 8, !tbaa !19
  %i.bw = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEaSERKS6_(ptr noundef nonnull align 8 dereferenceable(117) %3, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc unwind label %bb.g, !inline_history !1149 ; 0 uses

bb.e:                                             ; preds = %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i.i, %bb.d
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.body

.noexc:                                           ; preds = %.loopexit.i
  %i.by = load i64, ptr %i.bp, align 8, !tbaa !1075
  invoke void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE6_M_dfsENS9_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %3, i8 noundef zeroext 1, i64 noundef %i.by)
          to label %bb.f unwind label %bb.g, !inline_history !1149

bb.f:                                             ; preds = %.noexc
  %i.bz = load i8, ptr %i.bu, align 4, !tbaa !1074, !range !208, !noundef !209
  %i.ca = trunc nuw i8 %i.bz to i1                ; 2 uses
  br i1 %i.ca, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.f
  %i.cb = load ptr, ptr %i.m, align 8, !tbaa !1091 ; 2 uses
  %i.cc = load ptr, ptr %2, align 8, !tbaa !404   ; 5 uses
  %.not = icmp eq ptr %i.cb, %i.cc
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce                    ; 2 uses
  %i.cg = sdiv exact i64 %i.cf, 24                ; 3 uses
  %xtraiter39 = and i64 %i.cg, 1
  %i.ch = icmp eq i64 %i.cf, 24
  br i1 %i.ch, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.cg, -2
  br label %.lr.ph

bb.g:                                             ; preds = %.noexc, %.loopexit.i
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(117) dereferenceable(117) %3) #30
  br label %.body

.lr.ph:                                           ; preds = %bb.j, %.lr.ph.preheader.new
  %.023 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.da, %bb.j ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.j ]
  %i.cj = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %.023 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load i8, ptr %i.ck, align 8, !tbaa !1077, !range !208, !noundef !209
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %bb.h, label %.lr.ph.1

bb.h:                                             ; preds = %.lr.ph
  %i.cn = load ptr, ptr %0, align 8, !tbaa !404
  %i.co = getelementptr inbounds nuw [24 x i8], ptr %i.cn, i64 %.023 ; 2 uses
  %i.cp = load <2 x ptr>, ptr %i.cj, align 8, !tbaa !19
  store <2 x ptr> %i.cp, ptr %i.co, align 8, !tbaa !19
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  store i8 1, ptr %i.cq, align 8, !tbaa !1077
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.h, %.lr.ph
  %i.cr = or disjoint i64 %.023, 1                ; 2 uses
  %i.cs = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %i.cr ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cu = load i8, ptr %i.ct, align 8, !tbaa !1077, !range !208, !noundef !209
  %i.cv = trunc nuw i8 %i.cu to i1
  br i1 %i.cv, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.1
  %i.cw = load ptr, ptr %0, align 8, !tbaa !404
  %i.cx = getelementptr inbounds nuw [24 x i8], ptr %i.cw, i64 %i.cr ; 2 uses
  %i.cy = load <2 x ptr>, ptr %i.cs, align 8, !tbaa !19
  store <2 x ptr> %i.cy, ptr %i.cx, align 8, !tbaa !19
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store i8 1, ptr %i.cz, align 8, !tbaa !1077
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.1
  %i.da = add nuw i64 %.023, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !1150

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.j
  %lcmp.mod40.not = icmp eq i64 %xtraiter39, 0
  br i1 %lcmp.mod40.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %.023.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.da, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod41 = trunc i64 %i.cg to i1
  call void @llvm.assume(i1 %lcmp.mod41)
  %i.db = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %.023.epil.init ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dd = load i8, ptr %i.dc, align 8, !tbaa !1077, !range !208, !noundef !209
  %i.de = trunc nuw i8 %i.dd to i1
  br i1 %i.de, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %.lr.ph.epil.preheader
  %i.df = load ptr, ptr %0, align 8, !tbaa !404
  %i.dg = getelementptr inbounds nuw [24 x i8], ptr %i.df, i64 %.023.epil.init ; 2 uses
  %i.dh = load <2 x ptr>, ptr %i.db, align 8, !tbaa !19
  store <2 x ptr> %i.dh, ptr %i.dg, align 8, !tbaa !19
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  store i8 1, ptr %i.di, align 8, !tbaa !1077
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.k, %.lr.ph.epil.preheader, %.preheader, %bb.f
  %i.dj = load ptr, ptr %i.af, align 8, !tbaa !1058 ; 3 uses
  %.not.i.i.i.i17 = icmp eq ptr %i.dj, null
  br i1 %.not.i.i.i.i17, label %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i, label %bb.l

bb.l:                                             ; preds = %.loopexit
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !1059
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = ptrtoint ptr %i.dj to i64
  %i.do = sub i64 %i.dm, %i.dn
  call void @_ZdlPvm(ptr noundef nonnull %i.dj, i64 noundef %i.do) #32
  br label %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i

_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i:    ; preds = %bb.l, %.loopexit
  %i.dp = load ptr, ptr %3, align 8, !tbaa !404   ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.dp, null
  br i1 %.not.i.i.i1.i, label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !407
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = ptrtoint ptr %i.dp to i64
  %i.du = sub i64 %i.ds, %i.dt
  call void @_ZdlPvm(ptr noundef nonnull %i.dp, i64 noundef %i.du) #32
  br label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EED2Ev.exit

_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.dv = load ptr, ptr %2, align 8, !tbaa !404   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.dv, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EED2Ev.exit
  %i.dw = load ptr, ptr %i.o, align 8, !tbaa !407
  %i.dx = ptrtoint ptr %i.dw to i64
  %i.dy = ptrtoint ptr %i.dv to i64
  %i.dz = sub i64 %i.dx, %i.dy
  call void @_ZdlPvm(ptr noundef nonnull %i.dv, i64 noundef %i.dz) #32
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit

_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit: ; preds = %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EED2Ev.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret i1 %i.ca

.body:                                            ; preds = %bb.e, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %i.ci, %bb.g ], [ %i.bx, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.ea = load ptr, ptr %2, align 8, !tbaa !404   ; 3 uses
  %.not.i.i.i19 = icmp eq ptr %i.ea, null
  br i1 %.not.i.i.i19, label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit20, label %bb.o

bb.o:                                             ; preds = %.body
  %i.eb = load ptr, ptr %i.o, align 8, !tbaa !407
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = ptrtoint ptr %i.ea to i64
  %i.ee = sub i64 %i.ec, %i.ed
  call void @_ZdlPvm(ptr noundef nonnull %i.ea, i64 noundef %i.ee) #32
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit20

_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit20: ; preds = %.body, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEEC2ESA_SA_RKNS_11basic_regexIcSC_EENSt15regex_constants15match_flag_typeE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::regex_iterator", align 8 ; 8 uses
  store ptr %1, ptr %0, align 8, !tbaa !19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.b, align 8, !tbaa !1151
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %4, ptr %i.c, align 8, !tbaa !1152
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i8 0, i64 32, i1 false)
  %i.e = invoke noundef zeroext i1 @_ZNSt8__detail17__regex_algo_implIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEEcNS5_12regex_traitsIcEEEEbT_SH_RNS5_13match_resultsISH_T0_EERKNS5_11basic_regexIT1_T2_EENSt15regex_constants15match_flag_typeENS_20_RegexExecutorPolicyEb(ptr %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %4, i32 noundef 0, i1 noundef zeroext false)
          to label %_ZSt12regex_searchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS4_9sub_matchISA_EEEcNS4_12regex_traitsIcEEEbT_SG_RNS4_13match_resultsISG_T0_EERKNS4_11basic_regexIT1_T2_EENSt15regex_constants15match_flag_typeE.exit unwind label %bb.e

_ZSt12regex_searchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS4_9sub_matchISA_EEEcNS4_12regex_traitsIcEEEbT_SG_RNS4_13match_resultsISG_T0_EERKNS4_11basic_regexIT1_T2_EENSt15regex_constants15match_flag_typeE.exit: ; preds = %bb.a
  br i1 %i.e, label %bb.h, label %bb.b

bb.b:                                             ; preds = %_ZSt12regex_searchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS4_9sub_matchISA_EEEcNS4_12regex_traitsIcEEEbT_SG_RNS4_13match_resultsISG_T0_EERKNS4_11basic_regexIT1_T2_EENSt15regex_constants15match_flag_typeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %5, i8 0, i64 64, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %0, i8 0, i64 28, i1 false)
  %i.g = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEaSERKSE_(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %bb.c unwind label %bb.f       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.j = load i64, ptr %i.i, align 8, !tbaa !19
  store i64 %i.j, ptr %i.h, align 8, !tbaa !19
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !411  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !414
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #32
  br label %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit

_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.f:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !411  ; 3 uses
  %.not.i.i.i.i11 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i11, label %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit12, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !414
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #32
  br label %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit12

_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit12: ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.i

bb.h:                                             ; preds = %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit, %_ZSt12regex_searchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS4_9sub_matchISA_EEEcNS4_12regex_traitsIcEEEbT_SG_RNS4_13match_resultsISG_T0_EERKNS4_11basic_regexIT1_T2_EENSt15regex_constants15match_flag_typeE.exit
  ret void

bb.i:                                             ; preds = %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit12, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %i.r, %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit12 ], [ %i.q, %bb.e ]
  %i.y = load ptr, ptr %i.d, align 8, !tbaa !411  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !414
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ad) #32
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit: ; preds = %bb.i, %bb.j
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1120regex_token_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEE7_M_initESA_SA_(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr %1, ptr %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::regex_iterator", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  store i8 0, ptr %i.a, align 8, !tbaa !469
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !468  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !468  ; 2 uses
  %.not89 = icmp eq ptr %i.c, %i.e
  br i1 %.not89, label %.loopexit, label %.critedge

bb.b:                                             ; preds = %.critedge
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.05.010, i64 4 ; 2 uses
  %.not8 = icmp eq ptr %i.f, %i.e
  br i1 %.not8, label %.loopexit, label %.critedge

end_hunk_12
begin_hunk_13_@_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE16_M_main_dispatchENSH_11_Match_modeESt17integral_constantIbLb0EE:bb.a

bb.s:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !414
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = ptrtoint ptr %i.cj to i64
  %i.co = sub i64 %i.cm, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef %i.co) #32
  br label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i: ; preds = %bb.s, %.lr.ph.i.i.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cp, %i.ch
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1173

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i
  store ptr %i.cg, ptr %i.g, align 8, !tbaa !1172
  br label %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE5clearEv.exit

_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE5clearEv.exit: ; preds = %bb.r, %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i.i
  %i.cq = trunc nuw i8 %.3 to i1
  ret i1 %i.cq
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1170
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 %2 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !52, !range !208, !noundef !209
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %common.ret, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 8 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.backedge, %.lr.ph.lr.ph
  %i.n = phi ptr [ %i.c, %.lr.ph.lr.ph ], [ %.be, %.lr.ph.backedge ]
  %.tr3751 = phi i64 [ %2, %.lr.ph.lr.ph ], [ %.tr3751.be, %.lr.ph.backedge ] ; 5 uses
  store i8 1, ptr %i.n, align 1, !tbaa !52
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !1190, !nonnull !209, !align !306 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !509
  %i.r = getelementptr inbounds nuw [48 x i8], ptr %i.q, i64 %.tr3751 ; 16 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !533
  switch i32 %i.s, label %common.ret [
    i32 2, label %bb.b
    i32 8, label %bb.k
    i32 9, label %bb.l
    i32 4, label %bb.m
    i32 5, label %bb.r
    i32 6, label %bb.t
    i32 7, label %bb.u
    i32 11, label %bb.v
    i32 3, label %bb.w
    i32 12, label %bb.x
    i32 1, label %bb.ad
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.u = load i8, ptr %i.t, align 8, !tbaa !17, !range !208, !noundef !209
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = load ptr, ptr %i.l, align 8, !tbaa !1175
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %.tr3751 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 5 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !1178 ; 4 uses
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %._crit_edge, label %bb.d

._crit_edge:                                      ; preds = %bb.c
  %.sroa.029.0.copyload.pre = load i64, ptr %i.x, align 8
  %.pre = load i64, ptr %i.g, align 8, !tbaa !19
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %i.x, align 8             ; 2 uses
  %i.ac = load ptr, ptr %i.g, align 8             ; 2 uses
  %.not = icmp eq ptr %i.ab, %i.ac
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %i.af = phi i64 [ %.pre, %._crit_edge ], [ %i.ae, %bb.d ]
  %.sroa.029.0.copyload = phi i64 [ %.sroa.029.0.copyload.pre, %._crit_edge ], [ %i.ad, %bb.d ]
  store i64 %i.af, ptr %i.x, align 8, !tbaa !19
  store i32 1, ptr %i.y, align 8, !tbaa !1178
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !17
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %i.ah), !inline_history !1208
  store i64 %.sroa.029.0.copyload, ptr %i.x, align 8, !tbaa !19
  br label %tailrecurse.backedge.sink.split

bb.f:                                             ; preds = %bb.d
  %i.ai = icmp slt i32 %i.z, 2
  br i1 %i.ai, label %bb.g, label %tailrecurse.backedge

bb.g:                                             ; preds = %bb.f
  %i.aj = add nsw i32 %i.z, 1
  store i32 %i.aj, ptr %i.y, align 8, !tbaa !1178
  %i.ak = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !17
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %i.al), !inline_history !1208
  %i.am = load i32, ptr %i.y, align 8, !tbaa !1178
  %i.an = add nsw i32 %i.am, -1
  br label %tailrecurse.backedge.sink.split

tailrecurse.backedge.sink.split:                  ; preds = %bb.e, %bb.g
  %.sink = phi i32 [ %i.an, %bb.g ], [ %i.z, %bb.e ]
  store i32 %.sink, ptr %i.y, align 8, !tbaa !1178
  br label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %tailrecurse.backedge.sink.split, %bb.u, %bb.t, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE9_M_at_endEv.exit, %.split, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_M_at_beginEv.exit, %bb.o, %bb.f
  %.tr37.be.in = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.tr37.be = load i64, ptr %.tr37.be.in, align 8, !tbaa !512 ; 2 uses
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !1170
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 %.tr37.be ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !52, !range !208, !noundef !209
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %common.ret, label %.lr.ph.backedge

.lr.ph.backedge:                                  ; preds = %tailrecurse.backedge, %tailrecurse
  %.be = phi ptr [ %i.ap, %tailrecurse.backedge ], [ %i.ee, %tailrecurse ]
  %.tr3751.be = phi i64 [ %.tr37.be, %tailrecurse.backedge ], [ %i.ec, %tailrecurse ]
  br label %.lr.ph

bb.h:                                             ; preds = %bb.b
  %i.as = load i8, ptr %i.m, align 4, !tbaa !1205, !range !208, !noundef !209
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %common.ret, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !512
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %i.av), !inline_history !1209
  %i.aw = load i8, ptr %i.m, align 4, !tbaa !1205, !range !208, !noundef !209
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %common.ret, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE16_M_rep_once_moreENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %.tr3751), !inline_history !1209
  br label %common.ret

common.ret:                                       ; preds = %bb.v, %bb.w, %bb.h, %bb.i, %bb.j, %bb.y, %bb.aa, %bb.ab, %bb.ac, %bb.a, %bb.s, %bb.p, %bb.n, %bb.q, %tailrecurse.backedge, %bb.u, %bb.t, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE9_M_at_endEv.exit, %.split, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_M_at_beginEv.exit, %.lr.ph, %tailrecurse, %bb.ae, %bb.af, %bb.l, %bb.k
  ret void

bb.k:                                             ; preds = %.lr.ph
  %i.ay = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !17
  %i.ba = load ptr, ptr %0, align 8, !tbaa !411
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.ba, i64 %i.az ; 3 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.bb, align 8, !tbaa !19
  %i.bc = load i64, ptr %i.g, align 8, !tbaa !19
  store i64 %i.bc, ptr %i.bb, align 8, !tbaa !19
  %i.bd = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !512
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %i.be), !inline_history !1210
  store ptr %.sroa.0.0.copyload.i, ptr %i.bb, align 8, !tbaa !19
  br label %common.ret

bb.l:                                             ; preds = %.lr.ph
  %i.bf = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !17
  %i.bh = load ptr, ptr %0, align 8, !tbaa !411
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %i.bh, i64 %i.bg ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 3 uses
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 8
  %i.bj = load i64, ptr %i.g, align 8, !tbaa !19
  store i8 1, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !1188
  %i.bk = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !512
  %i.bm = load <2 x i64>, ptr %i.bi, align 8
  store i64 %i.bj, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !19
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %i.bl), !inline_history !1211
  store <2 x i64> %i.bm, ptr %i.bi, align 8, !tbaa !19
  store i8 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !1188
  br label %common.ret

bb.m:                                             ; preds = %.lr.ph
  %i.bn = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.bo = load ptr, ptr %i.k, align 8, !tbaa !19
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.bq = load i32, ptr %i.j, align 8, !tbaa !1154 ; 2 uses
  %3 = and i32 %i.bq, 1
  %.not.i26 = icmp eq i32 %3, 0
  br i1 %.not.i26, label %bb.o, label %common.ret

bb.o:                                             ; preds = %bb.n
  %i.br = and i32 %i.bq, 128
  %.not3.i = icmp eq i32 %i.br, 0
  br i1 %.not3.i, label %tailrecurse.backedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bs = load ptr, ptr %i.i, align 8, !tbaa !1212, !nonnull !209, !align !306
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !1028
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !607
  %i.bx = and i32 %i.bw, 2064
  %i.by = icmp eq i32 %i.bx, 2064
  br i1 %i.by, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_M_at_beginEv.exit, label %common.ret

bb.q:                                             ; preds = %bb.m
  %i.bz = load ptr, ptr %i.i, align 8, !tbaa !1212, !nonnull !209, !align !306
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !1028
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !607
  %i.ce = and i32 %i.cd, 2064
  %i.cf = icmp eq i32 %i.ce, 2064
  br i1 %i.cf, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_M_at_beginEv.exit, label %common.ret

_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_M_at_beginEv.exit: ; preds = %bb.p, %bb.q
  %i.cg = getelementptr inbounds i8, ptr %i.bn, i64 -1
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !17
  %i.ci = tail call noundef zeroext i1 @_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE21_M_is_line_terminatorEc(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef signext %i.ch)
  br i1 %i.ci, label %tailrecurse.backedge, label %common.ret

bb.r:                                             ; preds = %.lr.ph
  %i.cj = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.ck = load ptr, ptr %i.h, align 8, !tbaa !19
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %.split, label %bb.s

.split:                                           ; preds = %bb.r
  %i.cm = load i32, ptr %i.j, align 8, !tbaa !1154
  %i.cn = and i32 %i.cm, 2
  %.not.i28 = icmp eq i32 %i.cn, 0
  br i1 %.not.i28, label %tailrecurse.backedge, label %common.ret

bb.s:                                             ; preds = %bb.r
  %i.co = load ptr, ptr %i.i, align 8, !tbaa !1212, !nonnull !209, !align !306
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !1028
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !607
  %i.ct = and i32 %i.cs, 2064
  %i.cu = icmp eq i32 %i.ct, 2064
  br i1 %i.cu, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE9_M_at_endEv.exit, label %common.ret

_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE9_M_at_endEv.exit: ; preds = %bb.s
  %i.cv = load i8, ptr %i.cj, align 1, !tbaa !17
  %i.cw = tail call noundef zeroext i1 @_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE21_M_is_line_terminatorEc(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef signext %i.cv)
  br i1 %i.cw, label %tailrecurse.backedge, label %common.ret

bb.t:                                             ; preds = %.lr.ph
  %i.cx = tail call noundef zeroext i1 @_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE16_M_word_boundaryEv(ptr noundef nonnull align 8 dereferenceable(141) %0), !inline_history !1213
  %i.cy = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.cz = load i8, ptr %i.cy, align 8, !tbaa !17, !range !208, !noundef !209
  %i.da = zext i1 %i.cx to i8
  %.not.i = icmp eq i8 %i.cz, %i.da
  br i1 %.not.i, label %common.ret, label %tailrecurse.backedge

bb.u:                                             ; preds = %.lr.ph
  %i.db = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !17
  %i.dd = tail call noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE12_M_lookaheadEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i64 noundef %i.dc), !inline_history !1214
  %i.de = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.df = load i8, ptr %i.de, align 8, !tbaa !17, !range !208, !noundef !209
  %i.dg = zext i1 %i.dd to i8
  %.not.i24 = icmp eq i8 %i.df, %i.dg
  br i1 %.not.i24, label %common.ret, label %tailrecurse.backedge

bb.v:                                             ; preds = %.lr.ph
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE15_M_handle_matchENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %.tr3751)
  br label %common.ret

bb.w:                                             ; preds = %.lr.ph
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE17_M_handle_backrefENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %.tr3751)
  br label %common.ret

bb.x:                                             ; preds = %.lr.ph
  %i.dh = load ptr, ptr %i.g, align 8, !tbaa !19  ; 2 uses
  %i.di = load ptr, ptr %i.k, align 8, !tbaa !19
  %i.dj = icmp eq ptr %i.dh, %i.di
  br i1 %i.dj, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dk = load i32, ptr %i.j, align 8, !tbaa !1154
  %i.dl = and i32 %i.dk, 32
  %.not.i25 = icmp eq i32 %i.dl, 0
  br i1 %.not.i25, label %bb.z, label %common.ret

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.dm = icmp eq i8 %1, 1
  br i1 %i.dm, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dn = load ptr, ptr %i.h, align 8, !tbaa !19
  %i.do = icmp eq ptr %i.dh, %i.dn
  br i1 %i.do, label %bb.ab, label %common.ret

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.dp = load i8, ptr %i.m, align 4, !tbaa !1205, !range !208, !noundef !209
  %i.dq = trunc nuw i8 %i.dp to i1
  br i1 %i.dq, label %common.ret, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store i8 1, ptr %i.m, align 4, !tbaa !1205
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !1202, !nonnull !209, !align !306
  %i.dt = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEaSERKSE_(ptr noundef nonnull align 8 dereferenceable(24) %i.ds, ptr noundef nonnull align 8 dereferenceable(141) %0) ; 0 uses
  br label %common.ret

bb.ad:                                            ; preds = %.lr.ph
  %i.du = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !607
  %i.dw = and i32 %i.dv, 16
  %.not.i88 = icmp eq i32 %i.dw, 0
  %i.dx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !17
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %i.dy), !inline_history !1215
  %i.dz = load i8, ptr %i.m, align 4, !tbaa !1205, !range !208, !noundef !209 ; 2 uses
  br i1 %.not.i88, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %common.ret, label %tailrecurse

tailrecurse:                                      ; preds = %bb.ae
  %i.eb = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !512 ; 2 uses
  %i.ed = load ptr, ptr %i.a, align 8, !tbaa !1170
  %i.ee = getelementptr inbounds i8, ptr %i.ed, i64 %i.ec ; 2 uses
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !52, !range !208, !noundef !209
  %i.eg = trunc nuw i8 %i.ef to i1
  br i1 %i.eg, label %common.ret, label %.lr.ph.backedge

bb.af:                                            ; preds = %bb.ad
  store i8 0, ptr %i.m, align 4, !tbaa !1205
  %i.eh = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !512
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %i.ei), !inline_history !1215
  %i.ej = load i8, ptr %i.m, align 4, !tbaa !1205, !range !208, !noundef !209
  %i.ek = or i8 %i.ej, %i.dz
  store i8 %i.ek, ptr %i.m, align 4, !tbaa !1205
  br label %common.ret
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE17_M_realloc_insertIJRlRKSF_EEEvNS4_IPSG_SI_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1172 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1171   ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE12_M_check_lenEmS6_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.95) #29
  unreachable

_ZNKSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE12_M_check_lenEmS6_.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #31 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  %i.r = load i64, ptr %2, align 8, !tbaa !13
  store i64 %i.r, ptr %i.q, align 8, !tbaa !1203
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !465  ; 3 uses
  %i.v = load ptr, ptr %3, align 8, !tbaa !411    ; 3 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.u, %i.v
  br i1 %.not.i.i.i.i.i, label %.noexc27, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE12_M_check_lenEmS6_.exit
  %i.z = sdiv exact i64 %i.y, 24
  %i.aa = icmp ugt i64 %i.z, 384307168202282325
  br i1 %i.aa, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i, !prof !187
end_hunk_13
begin_hunk_14_@_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE16_M_word_boundaryEv:bb.a

bb.i:                                             ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i
  %i.al = and i32 %i.y, 65536
  %.not.i.i = icmp eq i32 %i.al, 0
  br i1 %.not.i.i, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.an = load i8, ptr %i.am, align 8, !tbaa !256
  %.not.i.i.i = icmp eq i8 %i.an, 0
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 152
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !17
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i

bb.l:                                             ; preds = %bb.j
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ae)
  %i.aq = load ptr, ptr %i.ae, align 8, !tbaa !93
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = tail call noundef signext i8 %i.as(ptr noundef nonnull align 8 dereferenceable(570) %i.ae, i8 noundef signext 95), !inline_history !1230
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i

_ZNKSt5ctypeIcE5widenEc.exit.i.i:                 ; preds = %bb.l, %bb.k
  %.0.i.i.i = phi i8 [ %i.ap, %bb.k ], [ %i.at, %bb.l ]
  %i.au = icmp eq i8 %i.s, %.0.i.i.i
  %i.av = zext i1 %i.au to i32
  br label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit

_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit: ; preds = %_ZNKSt5ctypeIcE5widenEc.exit.i.i, %bb.i, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i, %bb.f
  %.1 = phi i32 [ 0, %bb.f ], [ 1, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i ], [ 0, %bb.i ], [ %i.av, %_ZNKSt5ctypeIcE5widenEc.exit.i.i ]
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  %i.ax = load ptr, ptr %i.i, align 8, !tbaa !19
  %.not18 = icmp eq ptr %i.aw, %i.ax
  br i1 %.not18, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit15, label %bb.m

bb.m:                                             ; preds = %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit
  %i.ay = load i8, ptr %i.aw, align 1, !tbaa !17  ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !1212, !nonnull !209, !align !306
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !1028
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 80 ; 2 uses
  %i.be = tail call i32 @_ZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_b(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef nonnull @_ZZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEcE3__s, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEcE3__s, i64 1), i1 noundef zeroext false) ; 2 uses
  %i.bf = tail call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #30
  %i.bg = load ptr, ptr %i.bd, align 8, !tbaa !494
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !495
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bf
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !499 ; 7 uses
  %.not.not.i.i.i7 = icmp eq ptr %i.bk, null
  br i1 %.not.not.i.i.i7, label %bb.n, label %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i8

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt16__throw_bad_castv() #29
  unreachable

_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i8: ; preds = %bb.m
  %.sroa.0.0.extract.trunc.i.i9 = trunc i32 %i.be to i16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !597
  %i.bn = zext i8 %i.ay to i64
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %i.bn
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !598
  %i.bq = and i16 %i.bp, %.sroa.0.0.extract.trunc.i.i9
  %.not4.i.i10 = icmp eq i16 %i.bq, 0
  br i1 %.not4.i.i10, label %bb.o, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit15

bb.o:                                             ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i8
  %i.br = and i32 %i.be, 65536
  %.not.i.i11 = icmp eq i32 %i.br, 0
  br i1 %.not.i.i11, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit15, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  %i.bt = load i8, ptr %i.bs, align 8, !tbaa !256
  %.not.i.i.i12 = icmp eq i8 %i.bt, 0
  br i1 %.not.i.i.i12, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bk, i64 152
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !17
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i13

bb.r:                                             ; preds = %bb.p
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bk)
  %i.bw = load ptr, ptr %i.bk, align 8, !tbaa !93
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = tail call noundef signext i8 %i.by(ptr noundef nonnull align 8 dereferenceable(570) %i.bk, i8 noundef signext 95), !inline_history !1230
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i13

_ZNKSt5ctypeIcE5widenEc.exit.i.i13:               ; preds = %bb.r, %bb.q
  %.0.i.i.i14 = phi i8 [ %i.bv, %bb.q ], [ %i.bz, %bb.r ]
  %i.ca = icmp eq i8 %i.ay, %.0.i.i.i14
  %i.cb = zext i1 %i.ca to i32
  br label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit15

_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit15: ; preds = %_ZNKSt5ctypeIcE5widenEc.exit.i.i13, %bb.o, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i8, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit
  %i.cc = phi i32 [ 0, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit ], [ 1, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i8 ], [ 0, %bb.o ], [ %i.cb, %_ZNKSt5ctypeIcE5widenEc.exit.i.i13 ]
  %i.cd = icmp ne i32 %.1, %i.cc
  br label %bb.s

bb.s:                                             ; preds = %bb.d, %bb.b, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit15
  %.0 = phi i1 [ %i.cd, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit15 ], [ false, %bb.b ], [ false, %bb.d ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE12_M_lookaheadEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.96", align 8    ; 10 uses
  %3 = alloca %"class.std::__detail::_Executor.275", align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !465  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !411    ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sdiv exact i64 %i.f, 24
  %i.h = icmp ugt i64 %i.g, 384307168202282325
  br i1 %i.h, label %.noexc.i.i, label %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i, !prof !187

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #31
  %.pre = load ptr, ptr %0, align 8, !tbaa !466
  %.pre22 = load ptr, ptr %i.a, align 8, !tbaa !466
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.j = phi ptr [ %i.b, %bb.a ], [ %.pre22, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i ] ; 2 uses
  %i.k = phi ptr [ %i.c, %bb.a ], [ %.pre, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i ] ; 2 uses
  %i.l = phi ptr [ null, %bb.a ], [ %i.i, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.l, ptr %2, align 8, !tbaa !411
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.f
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !414
  %.not7.i.i.i.i.i = icmp eq ptr %i.k, %i.j
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.l, %bb.c ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i ], [ %i.k, %bb.c ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.p, %i.j
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !467

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.l, %bb.c ], [ %i.q, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.m, align 8, !tbaa !465
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.06.0.copyload = load ptr, ptr %i.r, align 8, !tbaa !19
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.0.0.copyload = load ptr, ptr %i.s, align 8, !tbaa !19
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1212, !nonnull !209, !align !306
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.w = load i32, ptr %i.v, align 8, !tbaa !1154
  invoke void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EEC2ESB_SB_RSt6vectorISD_SE_ERKNS5_11basic_regexIcSG_EENSt15regex_constants15match_flag_typeE(ptr noundef nonnull align 8 dereferenceable(141) %3, ptr %.sroa.06.0.copyload, ptr %.sroa.0.0.copyload, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i32 noundef %i.w)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 128
  store i64 %1, ptr %i.x, align 8, !tbaa !1201
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !19
  store i64 %i.aa, ptr %i.z, align 8, !tbaa !19
  %i.ab = invoke noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE16_M_main_dispatchENSH_11_Match_modeESt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(141) %3, i8 noundef zeroext 1)
          to label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE20_M_search_from_firstEv.exit unwind label %bb.f, !inline_history !1231 ; 2 uses

_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE20_M_search_from_firstEv.exit: ; preds = %bb.d
  br i1 %i.ab, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE20_M_search_from_firstEv.exit
  %i.ac = load ptr, ptr %i.m, align 8, !tbaa !465 ; 2 uses
  %i.ad = load ptr, ptr %2, align 8, !tbaa !411   ; 5 uses
  %.not = icmp eq ptr %i.ac, %i.ad
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af                    ; 2 uses
  %i.ah = sdiv exact i64 %i.ag, 24                ; 3 uses
  %xtraiter = and i64 %i.ah, 1
  %i.ai = icmp eq i64 %i.ag, 24
  br i1 %i.ai, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.ah, -2
  br label %.lr.ph

bb.e:                                             ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.f:                                             ; preds = %bb.d
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(141) dereferenceable(141) %3) #30
  br label %bb.r

.lr.ph:                                           ; preds = %bb.i, %.lr.ph.preheader.new
  %.021 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.bi, %bb.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.i ]
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %.021 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load i8, ptr %i.am, align 8, !tbaa !1188, !range !208, !noundef !209
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.g, label %.lr.ph.1

bb.g:                                             ; preds = %.lr.ph
  %i.ap = load ptr, ptr %0, align 8, !tbaa !411
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.ap, i64 %.021 ; 3 uses
  %i.ar = load i64, ptr %i.al, align 8, !tbaa !19
  store i64 %i.ar, ptr %i.aq, align 8, !tbaa !19
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.au = load i64, ptr %i.as, align 8, !tbaa !19
  store i64 %i.au, ptr %i.at, align 8, !tbaa !19
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store i8 1, ptr %i.av, align 8, !tbaa !1188
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.g, %.lr.ph
  %i.aw = or disjoint i64 %.021, 1                ; 2 uses
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %i.aw ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !1188, !range !208, !noundef !209
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.1
  %i.bb = load ptr, ptr %0, align 8, !tbaa !411
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.bb, i64 %i.aw ; 3 uses
  %i.bd = load i64, ptr %i.ax, align 8, !tbaa !19
  store i64 %i.bd, ptr %i.bc, align 8, !tbaa !19
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !19
  store i64 %i.bg, ptr %i.bf, align 8, !tbaa !19
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store i8 1, ptr %i.bh, align 8, !tbaa !1188
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.1
  %i.bi = add nuw i64 %.021, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !1232

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %.021.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bi, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod38 = trunc i64 %i.ah to i1
  call void @llvm.assume(i1 %lcmp.mod38)
  %i.bj = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %.021.epil.init ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load i8, ptr %i.bk, align 8, !tbaa !1188, !range !208, !noundef !209
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %.lr.ph.epil.preheader
  %i.bn = load ptr, ptr %0, align 8, !tbaa !411
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %.021.epil.init ; 3 uses
  %i.bp = load i64, ptr %i.bj, align 8, !tbaa !19
  store i64 %i.bp, ptr %i.bo, align 8, !tbaa !19
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !19
  store i64 %i.bs, ptr %i.br, align 8, !tbaa !19
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store i8 1, ptr %i.bt, align 8, !tbaa !1188
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.j, %.lr.ph.epil.preheader, %.preheader, %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE20_M_search_from_firstEv.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !1170 ; 2 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.loopexit
  call void @_ZdaPv(ptr noundef nonnull %i.bw) #32
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.loopexit
  %i.by = load ptr, ptr %i.bu, align 8, !tbaa !1171 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !1172 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.by, %i.ca
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i16

.lr.ph.i.i.i.i.i16:                               ; preds = %bb.l, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.ci, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i ], [ %i.by, %bb.l ] ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !411 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i16
  %i.cd = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !414
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = ptrtoint ptr %i.cc to i64
  %i.ch = sub i64 %i.cf, %i.cg
  call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef %i.ch) #32
  br label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.m, %.lr.ph.i.i.i.i.i16
  %i.ci = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i17 = icmp eq ptr %i.ci, %i.ca
  br i1 %.not.i.i.i.i.i17, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i16, !llvm.loop !1173

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.bu, align 8, !tbaa !1171
  br label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.l
  %i.cj = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.by, %bb.l ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !1174
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = ptrtoint ptr %i.cj to i64
  %i.co = sub i64 %i.cm, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef %i.co) #32
  br label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i

_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i: ; preds = %bb.n, %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !1175 ; 3 uses
  %.not.i.i.i.i18 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i.i18, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !1176
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = ptrtoint ptr %i.cq to i64
  %i.cv = sub i64 %i.ct, %i.cu
  call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef %i.cv) #32
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i: ; preds = %bb.o, %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i
  %i.cw = load ptr, ptr %3, align 8, !tbaa !411   ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.cw, null
  br i1 %.not.i.i.i1.i, label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !414
  %i.cz = ptrtoint ptr %i.cy to i64
  %i.da = ptrtoint ptr %i.cw to i64
  %i.db = sub i64 %i.cz, %i.da
  call void @_ZdlPvm(ptr noundef nonnull %i.cw, i64 noundef %i.db) #32
  br label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev.exit

_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.dc = load ptr, ptr %2, align 8, !tbaa !411   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev.exit
  %i.dd = load ptr, ptr %i.o, align 8, !tbaa !414
  %i.de = ptrtoint ptr %i.dd to i64
  %i.df = ptrtoint ptr %i.dc to i64
  %i.dg = sub i64 %i.de, %i.df
  call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef %i.dg) #32
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit: ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev.exit, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret i1 %i.ab

bb.r:                                             ; preds = %bb.f, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %i.ak, %bb.f ], [ %i.aj, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.dh = load ptr, ptr %2, align 8, !tbaa !411   ; 3 uses
  %.not.i.i.i19 = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i19, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit20, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.di = load ptr, ptr %i.o, align 8, !tbaa !414
  %i.dj = ptrtoint ptr %i.di to i64
  %i.dk = ptrtoint ptr %i.dh to i64
  %i.dl = sub i64 %i.dj, %i.dk
  call void @_ZdlPvm(ptr noundef nonnull %i.dh, i64 noundef %i.dl) #32
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit20

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit20: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt8__detail16_Backref_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_12regex_traitsIcEEE8_M_applyESB_SB_SB_SB_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, ptr %2, ptr %3, ptr %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::locale", align 8       ; 7 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !1227, !range !208, !noundef !209
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %2 to i64
  %i.d = ptrtoint ptr %1 to i64
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = ptrtoint ptr %4 to i64
  %i.g = ptrtoint ptr %3 to i64
  %i.h = sub i64 %i.f, %i.g
  %.not.i = icmp eq i64 %i.e, %i.h
  br i1 %.not.i, label %bb.c, label %_ZSt8__equal4IN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_EbT_SB_T0_SC_.exit

bb.c:                                             ; preds = %bb.b
  %.not.not.i.i.i.i.i = icmp eq ptr %2, %1
  br i1 %.not.not.i.i.i.i.i, label %_ZSt8__equal4IN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_EbT_SB_T0_SC_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr %1, ptr %3, i64 %i.e)
  %.not9.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br label %_ZSt8__equal4IN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_EbT_SB_T0_SC_.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1233, !nonnull !209, !align !306
  call void @_ZNSt6localeC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.j) #30
  %i.k = call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #30
  %i.l = load ptr, ptr %5, align 8, !tbaa !494
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !495
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.k
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !499  ; 5 uses
  %.not.not.i = icmp eq ptr %i.p, null
  br i1 %.not.not.i, label %bb.f, label %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt16__throw_bad_castv() #29
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.f
  unreachable

_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit:  ; preds = %bb.e
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.q = ptrtoint ptr %2 to i64
end_hunk_14
begin_hunk_15_@_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE6_M_dfsENSH_11_Match_modeEl:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 8 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge283, %bb.a
  %.tr37 = phi i64 [ %2, %bb.a ], [ %.tr37.be284, %tailrecurse.backedge283 ] ; 5 uses
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !1239, !nonnull !209, !align !306 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !509
  %i.m = getelementptr inbounds nuw [48 x i8], ptr %i.l, i64 %.tr37 ; 19 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !533
  switch i32 %i.n, label %common.ret [
    i32 2, label %bb.b
    i32 8, label %bb.n
    i32 9, label %bb.o
    i32 4, label %bb.p
    i32 5, label %bb.u
    i32 6, label %bb.w
    i32 7, label %bb.x
    i32 11, label %bb.y
    i32 3, label %bb.ac
    i32 12, label %bb.ad
    i32 1, label %bb.am
  ]

bb.b:                                             ; preds = %tailrecurse
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.p = load i8, ptr %i.o, align 8, !tbaa !17, !range !208, !noundef !209
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !1175
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %.tr37 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 5 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !1178 ; 4 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %._crit_edge, label %bb.d

._crit_edge:                                      ; preds = %bb.c
  %.sroa.029.0.copyload.pre = load i64, ptr %i.s, align 8
  %.pre = load i64, ptr %i.c, align 8, !tbaa !19
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.x = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq ptr %i.w, %i.x
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %i.aa = phi i64 [ %.pre, %._crit_edge ], [ %i.z, %bb.d ]
  %.sroa.029.0.copyload = phi i64 [ %.sroa.029.0.copyload.pre, %._crit_edge ], [ %i.y, %bb.d ]
  store i64 %i.aa, ptr %i.s, align 8, !tbaa !19
  store i32 1, ptr %i.t, align 8, !tbaa !1178
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !17
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef zeroext %1, i64 noundef %i.ac), !inline_history !1240
  store i64 %.sroa.029.0.copyload, ptr %i.s, align 8, !tbaa !19
  br label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE16_M_rep_once_moreENSH_11_Match_modeEl.exit.sink.split

bb.f:                                             ; preds = %bb.d
  %i.ad = icmp slt i32 %i.u, 2
  br i1 %i.ad, label %bb.g, label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE16_M_rep_once_moreENSH_11_Match_modeEl.exit

bb.g:                                             ; preds = %bb.f
  %i.ae = add nsw i32 %i.u, 1
  store i32 %i.ae, ptr %i.t, align 8, !tbaa !1178
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !17
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef zeroext %1, i64 noundef %i.ag), !inline_history !1240
  %i.ah = load i32, ptr %i.t, align 8, !tbaa !1178
  %i.ai = add nsw i32 %i.ah, -1
  br label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE16_M_rep_once_moreENSH_11_Match_modeEl.exit.sink.split

_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE16_M_rep_once_moreENSH_11_Match_modeEl.exit.sink.split: ; preds = %bb.g, %bb.e
  %.sink = phi i32 [ %i.u, %bb.e ], [ %i.ai, %bb.g ]
  store i32 %.sink, ptr %i.t, align 8, !tbaa !1178
  br label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE16_M_rep_once_moreENSH_11_Match_modeEl.exit

_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE16_M_rep_once_moreENSH_11_Match_modeEl.exit: ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE16_M_rep_once_moreENSH_11_Match_modeEl.exit.sink.split, %bb.f
  %i.aj = load i8, ptr %i.i, align 4, !tbaa !1185, !range !208, !noundef !209
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %common.ret, label %tailrecurse.backedge283

tailrecurse.backedge283:                          ; preds = %bb.an, %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE16_M_rep_once_moreENSH_11_Match_modeEl.exit, %bb.r, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE11_M_at_beginEv.exit, %.split, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE9_M_at_endEv.exit, %bb.w, %bb.x
  %.tr37.be284.in = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.tr37.be284 = load i64, ptr %.tr37.be284.in, align 8, !tbaa !512
  br label %tailrecurse

bb.h:                                             ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !512
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef zeroext %1, i64 noundef %i.am), !inline_history !1241
  %i.an = load i8, ptr %i.i, align 4, !tbaa !1185, !range !208, !noundef !209
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %common.ret, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = load ptr, ptr %i.b, align 8, !tbaa !1239, !nonnull !209, !align !306
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !509
  %i.as = getelementptr inbounds nuw [48 x i8], ptr %i.ar, i64 %.tr37 ; 2 uses
  %i.at = load ptr, ptr %i.h, align 8, !tbaa !1175
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %.tr37 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 5 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !1178 ; 4 uses
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %._crit_edge.i, label %bb.j

._crit_edge.i:                                    ; preds = %bb.i
  %.sroa.0.0.copyload.pre.i = load i64, ptr %i.au, align 8
  %.pre.i = load i64, ptr %i.c, align 8, !tbaa !19
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ay = load ptr, ptr %i.au, align 8            ; 2 uses
  %i.az = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not.i107 = icmp eq ptr %i.ay, %i.az
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.az to i64
  br i1 %.not.i107, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i
  %i.bc = phi i64 [ %.pre.i, %._crit_edge.i ], [ %i.bb, %bb.j ]
  %.sroa.0.0.copyload.i108 = phi i64 [ %.sroa.0.0.copyload.pre.i, %._crit_edge.i ], [ %i.ba, %bb.j ]
  store i64 %i.bc, ptr %i.au, align 8, !tbaa !19
  store i32 1, ptr %i.av, align 8, !tbaa !1178
  %i.bd = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !17
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef zeroext %1, i64 noundef %i.be), !inline_history !1240
  store i64 %.sroa.0.0.copyload.i108, ptr %i.au, align 8, !tbaa !19
  br label %.sink.split.i

bb.l:                                             ; preds = %bb.j
  %i.bf = icmp slt i32 %i.aw, 2
  br i1 %i.bf, label %bb.m, label %common.ret

bb.m:                                             ; preds = %bb.l
  %i.bg = add nsw i32 %i.aw, 1
  store i32 %i.bg, ptr %i.av, align 8, !tbaa !1178
  %i.bh = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !17
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef zeroext %1, i64 noundef %i.bi), !inline_history !1240
  %i.bj = load i32, ptr %i.av, align 8, !tbaa !1178
  %i.bk = add nsw i32 %i.bj, -1
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.m, %bb.k
  %.sink.i109 = phi i32 [ %i.bk, %bb.m ], [ %i.aw, %bb.k ]
  store i32 %.sink.i109, ptr %i.av, align 8, !tbaa !1178
  br label %common.ret

common.ret:                                       ; preds = %bb.ab, %_ZNKSt8__detail6_StateIcE10_M_matchesEc.exit.i, %bb.y, %.sink.split.i, %bb.l, %bb.ac, %bb.h, %.thread.i, %bb.ah, %bb.aj, %bb.al, %.critedge.i, %tailrecurse, %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE16_M_rep_once_moreENSH_11_Match_modeEl.exit, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE11_M_at_beginEv.exit, %.split, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE9_M_at_endEv.exit, %bb.w, %bb.x, %bb.t, %bb.q, %bb.s, %bb.v, %bb.an, %bb.ao, %bb.o, %bb.n
  ret void

bb.n:                                             ; preds = %tailrecurse
  %i.bl = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !17
  %i.bn = load ptr, ptr %0, align 8, !tbaa !411
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %i.bm ; 3 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.bo, align 8, !tbaa !19
  %i.bp = load i64, ptr %i.c, align 8, !tbaa !19
  store i64 %i.bp, ptr %i.bo, align 8, !tbaa !19
  %i.bq = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !512
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef zeroext %1, i64 noundef %i.br), !inline_history !1242
  store ptr %.sroa.0.0.copyload.i, ptr %i.bo, align 8, !tbaa !19
  br label %common.ret

bb.o:                                             ; preds = %tailrecurse
  %i.bs = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !17
  %i.bu = load ptr, ptr %0, align 8, !tbaa !411
  %i.bv = getelementptr inbounds nuw [24 x i8], ptr %i.bu, i64 %i.bt ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 3 uses
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 8
  %i.bw = load i64, ptr %i.c, align 8, !tbaa !19
  store i8 1, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !1188
  %i.bx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !512
  %i.bz = load <2 x i64>, ptr %i.bv, align 8
  store i64 %i.bw, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !19
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef zeroext %1, i64 noundef %i.by), !inline_history !1243
  store <2 x i64> %i.bz, ptr %i.bv, align 8, !tbaa !19
  store i8 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !1188
  br label %common.ret

bb.p:                                             ; preds = %tailrecurse
  %i.ca = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.cb = load ptr, ptr %i.g, align 8, !tbaa !19
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.cd = load i32, ptr %i.f, align 8, !tbaa !1194 ; 2 uses
  %3 = and i32 %i.cd, 1
  %.not.i26 = icmp eq i32 %3, 0
  br i1 %.not.i26, label %bb.r, label %common.ret

bb.r:                                             ; preds = %bb.q
  %i.ce = and i32 %i.cd, 128
  %.not3.i = icmp eq i32 %i.ce, 0
  br i1 %.not3.i, label %tailrecurse.backedge283, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cf = load ptr, ptr %i.e, align 8, !tbaa !1244, !nonnull !209, !align !306
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !1028
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !607
  %i.ck = and i32 %i.cj, 2064
  %i.cl = icmp eq i32 %i.ck, 2064
  br i1 %i.cl, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE11_M_at_beginEv.exit, label %common.ret

bb.t:                                             ; preds = %bb.p
  %i.cm = load ptr, ptr %i.e, align 8, !tbaa !1244, !nonnull !209, !align !306
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !1028
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !607
  %i.cr = and i32 %i.cq, 2064
  %i.cs = icmp eq i32 %i.cr, 2064
  br i1 %i.cs, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE11_M_at_beginEv.exit, label %common.ret

_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE11_M_at_beginEv.exit: ; preds = %bb.s, %bb.t
  %i.ct = getelementptr inbounds i8, ptr %i.ca, i64 -1
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !17
  %i.cv = tail call noundef zeroext i1 @_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE21_M_is_line_terminatorEc(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef signext %i.cu)
  br i1 %i.cv, label %tailrecurse.backedge283, label %common.ret

bb.u:                                             ; preds = %tailrecurse
  %i.cw = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.cx = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %.split, label %bb.v

.split:                                           ; preds = %bb.u
  %i.cz = load i32, ptr %i.f, align 8, !tbaa !1194
  %i.da = and i32 %i.cz, 2
  %.not.i28 = icmp eq i32 %i.da, 0
  br i1 %.not.i28, label %tailrecurse.backedge283, label %common.ret

bb.v:                                             ; preds = %bb.u
  %i.db = load ptr, ptr %i.e, align 8, !tbaa !1244, !nonnull !209, !align !306
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !1028
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load i32, ptr %i.de, align 8, !tbaa !607
  %i.dg = and i32 %i.df, 2064
  %i.dh = icmp eq i32 %i.dg, 2064
  br i1 %i.dh, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE9_M_at_endEv.exit, label %common.ret

_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE9_M_at_endEv.exit: ; preds = %bb.v
  %i.di = load i8, ptr %i.cw, align 1, !tbaa !17
  %i.dj = tail call noundef zeroext i1 @_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE21_M_is_line_terminatorEc(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef signext %i.di)
  br i1 %i.dj, label %tailrecurse.backedge283, label %common.ret

bb.w:                                             ; preds = %tailrecurse
  %i.dk = tail call noundef zeroext i1 @_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE16_M_word_boundaryEv(ptr noundef nonnull align 8 dereferenceable(117) %0), !inline_history !1245
  %i.dl = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.dm = load i8, ptr %i.dl, align 8, !tbaa !17, !range !208, !noundef !209
  %i.dn = zext i1 %i.dk to i8
  %.not.i = icmp eq i8 %i.dm, %i.dn
  br i1 %.not.i, label %common.ret, label %tailrecurse.backedge283

bb.x:                                             ; preds = %tailrecurse
  %i.do = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !17
  %i.dq = tail call noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE12_M_lookaheadEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i64 noundef %i.dp), !inline_history !1246
  %i.dr = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.ds = load i8, ptr %i.dr, align 8, !tbaa !17, !range !208, !noundef !209
  %i.dt = zext i1 %i.dq to i8
  %.not.i24 = icmp eq i8 %i.ds, %i.dt
  br i1 %.not.i24, label %common.ret, label %tailrecurse.backedge283

bb.y:                                             ; preds = %tailrecurse
  %i.du = load ptr, ptr %i.c, align 8, !tbaa !19  ; 2 uses
  %i.dv = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.dw = icmp eq ptr %i.du, %i.dv
  br i1 %i.dw, label %common.ret, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dx = load i8, ptr %i.du, align 1, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.dx, ptr %i.a, align 1, !tbaa !17
  %i.dy = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !555
  %.not.i.i.i.i = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i.i, label %bb.aa, label %_ZNKSt8__detail6_StateIcE10_M_matchesEc.exit.i

bb.aa:                                            ; preds = %bb.z
  tail call void @_ZSt25__throw_bad_function_callv() #29, !inline_history !1247
  unreachable

_ZNKSt8__detail6_StateIcE10_M_matchesEc.exit.i:   ; preds = %bb.z
  %i.ea = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.eb = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !552
  %i.ed = call noundef zeroext i1 %i.ec(ptr noundef nonnull align 8 dereferenceable(32) %i.ea, ptr noundef nonnull align 1 dereferenceable(1) %i.a), !inline_history !1248
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.ed, label %bb.ab, label %common.ret

bb.ab:                                            ; preds = %_ZNKSt8__detail6_StateIcE10_M_matchesEc.exit.i
  %i.ee = load ptr, ptr %i.c, align 8, !tbaa !1168
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 1
  store ptr %i.ef, ptr %i.c, align 8, !tbaa !1168
  %i.eg = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !512
  call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef zeroext %1, i64 noundef %i.eh), !inline_history !1247
  %i.ei = load ptr, ptr %i.c, align 8, !tbaa !1168
  %i.ej = getelementptr inbounds i8, ptr %i.ei, i64 -1
  store ptr %i.ej, ptr %i.c, align 8, !tbaa !1168
  br label %common.ret

bb.ac:                                            ; preds = %tailrecurse
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE17_M_handle_backrefENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef zeroext %1, i64 noundef %.tr37)
  br label %common.ret

bb.ad:                                            ; preds = %tailrecurse
  %i.ek = icmp eq i8 %1, 0
  %i.el = load ptr, ptr %i.c, align 8             ; 3 uses
  br i1 %i.ek, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.em = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.en = icmp eq ptr %i.el, %i.em
  %i.eo = zext i1 %i.en to i8
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %.sink.i = phi i8 [ %i.eo, %bb.ae ], [ 1, %bb.ad ] ; 2 uses
  %i.ep = ptrtoint ptr %i.el to i64               ; 2 uses
  store i8 %.sink.i, ptr %i.i, align 4, !tbaa !1185
  %i.eq = load ptr, ptr %i.g, align 8, !tbaa !19  ; 2 uses
  %i.er = icmp eq ptr %i.el, %i.eq
  br i1 %i.er, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.es = load i32, ptr %i.f, align 8, !tbaa !1194
  %i.et = and i32 %i.es, 32
  %.not.i25 = icmp eq i32 %i.et, 0
  br i1 %.not.i25, label %bb.ah, label %.thread.i

.thread.i:                                        ; preds = %bb.ag
  store i8 0, ptr %i.i, align 4, !tbaa !1185
  br label %common.ret

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.eu = trunc nuw i8 %.sink.i to i1
  br i1 %i.eu, label %bb.ai, label %common.ret

bb.ai:                                            ; preds = %bb.ah
  %i.ev = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !607
  %i.ex = and i32 %i.ew, 16
  %.not4.i = icmp eq i32 %i.ex, 0
  br i1 %.not4.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !1192, !nonnull !209, !align !306
  %i.fa = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEaSERKSE_(ptr noundef nonnull align 8 dereferenceable(24) %i.ez, ptr noundef nonnull align 8 dereferenceable(117) %0) ; 0 uses
  br label %common.ret

bb.ak:                                            ; preds = %bb.ai
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !19 ; 2 uses
  %i.fd = icmp eq ptr %i.fc, null
  br i1 %i.fd, label %.critedge.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fe = ptrtoint ptr %i.fc to i64
  %i.ff = ptrtoint ptr %i.eq to i64               ; 2 uses
  %i.fg = sub i64 %i.fe, %i.ff
  %i.fh = sub i64 %i.ep, %i.ff
  %i.fi = icmp slt i64 %i.fg, %i.fh
  br i1 %i.fi, label %.critedge.i, label %common.ret

.critedge.i:                                      ; preds = %bb.al, %bb.ak
  store i64 %i.ep, ptr %i.fb, align 8, !tbaa !19
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !1192, !nonnull !209, !align !306
  %i.fl = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEaSERKSE_(ptr noundef nonnull align 8 dereferenceable(24) %i.fk, ptr noundef nonnull align 8 dereferenceable(117) %0) ; 0 uses
  br label %common.ret

bb.am:                                            ; preds = %tailrecurse
  %i.fm = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.fn = load i32, ptr %i.fm, align 8, !tbaa !607
  %i.fo = and i32 %i.fn, 16
  %.not.i111 = icmp eq i32 %i.fo, 0
  %i.fp = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !17
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef zeroext %1, i64 noundef %i.fq), !inline_history !1249
  %i.fr = load i8, ptr %i.i, align 4, !tbaa !1185, !range !208, !noundef !209 ; 2 uses
  br i1 %.not.i111, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fs = trunc nuw i8 %i.fr to i1
end_hunk_15
begin_hunk_16_@_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE12_M_lookaheadEl:bb.a

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #31
  %.pre = load ptr, ptr %0, align 8, !tbaa !466
  %.pre26 = load ptr, ptr %i.a, align 8, !tbaa !466
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.j = phi ptr [ %i.b, %bb.a ], [ %.pre26, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i ] ; 2 uses
  %i.k = phi ptr [ %i.c, %bb.a ], [ %.pre, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i ] ; 2 uses
  %i.l = phi ptr [ null, %bb.a ], [ %i.i, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.l, ptr %2, align 8, !tbaa !411
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.f
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !414
  %.not7.i.i.i.i.i = icmp eq ptr %i.k, %i.j
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.l, %bb.c ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i ], [ %i.k, %bb.c ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.p, %i.j
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !467

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.l, %bb.c ], [ %i.q, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.m, align 8, !tbaa !465
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.06.0.copyload = load ptr, ptr %i.r, align 8, !tbaa !19 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.v = load i32, ptr %i.u, align 8, !tbaa !1194 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(117) %3, i8 0, i64 24, i1 false)
  store ptr %.sroa.06.0.copyload, ptr %i.w, align 8, !tbaa !19
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !1244, !nonnull !209, !align !306
  %i.z = load <2 x ptr>, ptr %i.s, align 8, !tbaa !67
  store <2 x ptr> %i.z, ptr %i.x, align 8, !tbaa !67
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1028 ; 3 uses
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !561
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 64
  store ptr %2, ptr %i.ad, align 8, !tbaa !1177
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !550 ; 2 uses
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !509 ; 2 uses
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = sdiv exact i64 %i.al, 48                ; 7 uses
  %i.an = icmp ugt i64 %i.am, 576460752303423487
  %i.ao = ptrtoint ptr %.sroa.06.0.copyload to i64
  br i1 %i.an, label %bb.d, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i

bb.d:                                             ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.118) #29
          to label %.noexc.i unwind label %bb.e

.noexc.i:                                         ; preds = %bb.d
  unreachable

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i16 = icmp eq ptr %i.ah, %i.ai
  br i1 %.not.i.i.i.i.i16, label %.loopexit.i, label %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i

_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i: ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i
  %i.ap = shl nuw nsw i64 %i.am, 4
  %i.aq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #31
          to label %.noexc9.i unwind label %bb.e  ; 4 uses

.noexc9.i:                                        ; preds = %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i
  store ptr %i.aq, ptr %i.ae, align 8, !tbaa !1175
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.aq, i64 %i.am
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 88
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !1176
  %xtraiter = and i64 %i.am, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.noexc9.i, %.lr.ph.i.i.i.i.i.i.prol
  %.013.i.i.i.i.i.i.prol = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.aq, %.noexc9.i ] ; 3 uses
  %.01012.i.i.i.i.i.i.prol = phi i64 [ %i.au, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.am, %.noexc9.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.noexc9.i ]
  store ptr null, ptr %.013.i.i.i.i.i.i.prol, align 8, !tbaa !1168
  %i.at = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.prol, i64 8
  store i32 0, ptr %i.at, align 8, !tbaa !1178
  %i.au = add i64 %.01012.i.i.i.i.i.i.prol, -1    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !1252

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.noexc9.i
  %.lcssa.unr = phi ptr [ poison, %.noexc9.i ], [ %i.av, %.lr.ph.i.i.i.i.i.i.prol ]
  %.013.i.i.i.i.i.i.unr = phi ptr [ %i.aq, %.noexc9.i ], [ %i.av, %.lr.ph.i.i.i.i.i.i.prol ]
  %.01012.i.i.i.i.i.i.unr = phi i64 [ %i.am, %.noexc9.i ], [ %i.au, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.aw = icmp ult i64 %i.am, 8
  br i1 %i.aw, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.013.i.i.i.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.01012.i.i.i.i.i.i = phi i64 [ %i.bm, %.lr.ph.i.i.i.i.i.i ], [ %.01012.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  store ptr null, ptr %.013.i.i.i.i.i.i, align 8, !tbaa !1168
  %i.ax = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 8
  store i32 0, ptr %i.ax, align 8, !tbaa !1178
  %i.ay = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 16
  store ptr null, ptr %i.ay, align 8, !tbaa !1168
  %i.az = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 24
  store i32 0, ptr %i.az, align 8, !tbaa !1178
  %i.ba = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 32
  store ptr null, ptr %i.ba, align 8, !tbaa !1168
  %i.bb = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 40
  store i32 0, ptr %i.bb, align 8, !tbaa !1178
  %i.bc = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 48
  store ptr null, ptr %i.bc, align 8, !tbaa !1168
  %i.bd = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 56
  store i32 0, ptr %i.bd, align 8, !tbaa !1178
  %i.be = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 64
  store ptr null, ptr %i.be, align 8, !tbaa !1168
  %i.bf = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 72
  store i32 0, ptr %i.bf, align 8, !tbaa !1178
  %i.bg = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 80
  store ptr null, ptr %i.bg, align 8, !tbaa !1168
  %i.bh = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 88
  store i32 0, ptr %i.bh, align 8, !tbaa !1178
  %i.bi = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 96
  store ptr null, ptr %i.bi, align 8, !tbaa !1168
  %i.bj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 104
  store i32 0, ptr %i.bj, align 8, !tbaa !1178
  %i.bk = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 112
  store ptr null, ptr %i.bk, align 8, !tbaa !1168
  %i.bl = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 120
  store i32 0, ptr %i.bl, align 8, !tbaa !1178
  %i.bm = add i64 %.01012.i.i.i.i.i.i, -8         ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.i.7 = icmp eq i64 %i.bm, 0
  br i1 %.not.i.i.i.i.i.i.7, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1181

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.bn, %.lr.ph.i.i.i.i.i.i ]
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 80
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.bo, align 8, !tbaa !1182
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.bs = and i32 %i.v, 128
  %.not.i = icmp eq i32 %i.bs, 0
  %i.bt = and i32 %i.v, -6
  %spec.select = select i1 %.not.i, i32 %i.v, i32 %i.bt
  store i32 %spec.select, ptr %i.br, align 8, !tbaa !1050
  store i64 %1, ptr %i.bp, align 8, !tbaa !1187
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.ao, ptr %i.bu, align 8, !tbaa !19
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 116 ; 2 uses
  store i8 0, ptr %i.bv, align 4, !tbaa !1185
  store i64 0, ptr %i.bq, align 8, !tbaa !19
  %i.bw = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEaSERKSE_(ptr noundef nonnull align 8 dereferenceable(117) %3, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc unwind label %bb.g, !inline_history !1253 ; 0 uses

bb.e:                                             ; preds = %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i, %bb.d
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.body

.noexc:                                           ; preds = %.loopexit.i
  %i.by = load i64, ptr %i.bp, align 8, !tbaa !1187
  invoke void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %3, i8 noundef zeroext 1, i64 noundef %i.by)
          to label %bb.f unwind label %bb.g, !inline_history !1253

bb.f:                                             ; preds = %.noexc
  %i.bz = load i8, ptr %i.bv, align 4, !tbaa !1185, !range !208, !noundef !209
  %i.ca = trunc nuw i8 %i.bz to i1                ; 2 uses
  br i1 %i.ca, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.f
  %i.cb = load ptr, ptr %i.m, align 8, !tbaa !465 ; 2 uses
  %i.cc = load ptr, ptr %2, align 8, !tbaa !411   ; 5 uses
  %.not = icmp eq ptr %i.cb, %i.cc
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce                    ; 2 uses
  %i.cg = sdiv exact i64 %i.cf, 24                ; 3 uses
  %xtraiter40 = and i64 %i.cg, 1
  %i.ch = icmp eq i64 %i.cf, 24
  br i1 %i.ch, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.cg, -2
  br label %.lr.ph

bb.g:                                             ; preds = %.noexc, %.loopexit.i
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(117) dereferenceable(117) %3) #30
  br label %.body

.lr.ph:                                           ; preds = %bb.j, %.lr.ph.preheader.new
  %.024 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.dg, %bb.j ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.j ]
  %i.cj = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %.024 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load i8, ptr %i.ck, align 8, !tbaa !1188, !range !208, !noundef !209
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %bb.h, label %.lr.ph.1

bb.h:                                             ; preds = %.lr.ph
  %i.cn = load ptr, ptr %0, align 8, !tbaa !411
  %i.co = getelementptr inbounds nuw [24 x i8], ptr %i.cn, i64 %.024 ; 3 uses
  %i.cp = load i64, ptr %i.cj, align 8, !tbaa !19
  store i64 %i.cp, ptr %i.co, align 8, !tbaa !19
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cs = load i64, ptr %i.cq, align 8, !tbaa !19
  store i64 %i.cs, ptr %i.cr, align 8, !tbaa !19
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  store i8 1, ptr %i.ct, align 8, !tbaa !1188
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.h, %.lr.ph
  %i.cu = or disjoint i64 %.024, 1                ; 2 uses
  %i.cv = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %i.cu ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cx = load i8, ptr %i.cw, align 8, !tbaa !1188, !range !208, !noundef !209
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.1
  %i.cz = load ptr, ptr %0, align 8, !tbaa !411
  %i.da = getelementptr inbounds nuw [24 x i8], ptr %i.cz, i64 %i.cu ; 3 uses
  %i.db = load i64, ptr %i.cv, align 8, !tbaa !19
  store i64 %i.db, ptr %i.da, align 8, !tbaa !19
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.de = load i64, ptr %i.dc, align 8, !tbaa !19
  store i64 %i.de, ptr %i.dd, align 8, !tbaa !19
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  store i8 1, ptr %i.df, align 8, !tbaa !1188
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.1
  %i.dg = add nuw i64 %.024, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !1254

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.j
  %lcmp.mod41.not = icmp eq i64 %xtraiter40, 0
  br i1 %lcmp.mod41.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %.024.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.dg, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod42 = trunc i64 %i.cg to i1
  call void @llvm.assume(i1 %lcmp.mod42)
  %i.dh = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %.024.epil.init ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = load i8, ptr %i.di, align 8, !tbaa !1188, !range !208, !noundef !209
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %.lr.ph.epil.preheader
  %i.dl = load ptr, ptr %0, align 8, !tbaa !411
  %i.dm = getelementptr inbounds nuw [24 x i8], ptr %i.dl, i64 %.024.epil.init ; 3 uses
  %i.dn = load i64, ptr %i.dh, align 8, !tbaa !19
  store i64 %i.dn, ptr %i.dm, align 8, !tbaa !19
  %i.do = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.dq = load i64, ptr %i.do, align 8, !tbaa !19
  store i64 %i.dq, ptr %i.dp, align 8, !tbaa !19
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store i8 1, ptr %i.dr, align 8, !tbaa !1188
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.k, %.lr.ph.epil.preheader, %.preheader, %bb.f
  %i.ds = load ptr, ptr %i.ae, align 8, !tbaa !1175 ; 3 uses
  %.not.i.i.i.i18 = icmp eq ptr %i.ds, null
  br i1 %.not.i.i.i.i18, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i, label %bb.l

bb.l:                                             ; preds = %.loopexit
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !1176
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = ptrtoint ptr %i.ds to i64
  %i.dx = sub i64 %i.dv, %i.dw
  call void @_ZdlPvm(ptr noundef nonnull %i.ds, i64 noundef %i.dx) #32
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i: ; preds = %bb.l, %.loopexit
  %i.dy = load ptr, ptr %3, align 8, !tbaa !411   ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.dy, null
  br i1 %.not.i.i.i1.i, label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !414
  %i.eb = ptrtoint ptr %i.ea to i64
  %i.ec = ptrtoint ptr %i.dy to i64
  %i.ed = sub i64 %i.eb, %i.ec
  call void @_ZdlPvm(ptr noundef nonnull %i.dy, i64 noundef %i.ed) #32
  br label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EED2Ev.exit

_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.ee = load ptr, ptr %2, align 8, !tbaa !411   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ee, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EED2Ev.exit
  %i.ef = load ptr, ptr %i.o, align 8, !tbaa !414
  %i.eg = ptrtoint ptr %i.ef to i64
  %i.eh = ptrtoint ptr %i.ee to i64
  %i.ei = sub i64 %i.eg, %i.eh
  call void @_ZdlPvm(ptr noundef nonnull %i.ee, i64 noundef %i.ei) #32
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit: ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EED2Ev.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret i1 %i.ca

.body:                                            ; preds = %bb.e, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %i.ci, %bb.g ], [ %i.bx, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.ej = load ptr, ptr %2, align 8, !tbaa !411   ; 3 uses
  %.not.i.i.i20 = icmp eq ptr %i.ej, null
  br i1 %.not.i.i.i20, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit21, label %bb.o

bb.o:                                             ; preds = %.body
  %i.ek = load ptr, ptr %i.o, align 8, !tbaa !414
  %i.el = ptrtoint ptr %i.ek to i64
  %i.em = ptrtoint ptr %i.ej to i64
  %i.en = sub i64 %i.el, %i.em
  call void @_ZdlPvm(ptr noundef nonnull %i.ej, i64 noundef %i.en) #32
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit21

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit21: ; preds = %.body, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEEeqERKSD_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1151 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond, label %_ZNSt7__cxx11eqIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEbRKNS_9sub_matchIT_EESF_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq ptr %i.b, %i.e
  br i1 %i.g, label %bb.c, label %_ZNSt7__cxx11eqIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEbRKNS_9sub_matchIT_EESF_.exit

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !19
  %i.i = load ptr, ptr %1, align 8, !tbaa !19
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %bb.d, label %_ZNSt7__cxx11eqIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEbRKNS_9sub_matchIT_EESF_.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !19
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !19
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %bb.e, label %_ZNSt7__cxx11eqIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEbRKNS_9sub_matchIT_EESF_.exit

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !1152
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load i32, ptr %i.r, align 8, !tbaa !1152
  %i.t = icmp eq i32 %i.q, %i.s
  br i1 %i.t, label %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit, label %_ZNSt7__cxx11eqIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEbRKNS_9sub_matchIT_EESF_.exit

_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit: ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !466  ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !466  ; 2 uses
  %i.y = icmp eq ptr %i.v, %i.x
  %.pre.i = ptrtoint ptr %i.x to i64
  %.pre2.i = ptrtoint ptr %i.v to i64
  %.pre4.i = sub i64 %.pre.i, %.pre2.i            ; 2 uses
  %.not = icmp eq i64 %.pre4.i, 72
  %or.cond17 = or i1 %i.y, %.not
  %i.z = getelementptr i8, ptr %i.v, i64 %.pre4.i
  %i.aa = getelementptr i8, ptr %i.z, i64 -72
  %i.ab = select i1 %or.cond17, ptr %i.aa, ptr %i.v ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !466 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !466 ; 2 uses
  %i.ag = icmp eq ptr %i.ad, %i.af
  %.pre.i10 = ptrtoint ptr %i.af to i64
  %.pre2.i11 = ptrtoint ptr %i.ad to i64
  %.pre4.i12 = sub i64 %.pre.i10, %.pre2.i11      ; 2 uses
  %.not16 = icmp eq i64 %.pre4.i12, 72
  %or.cond18 = or i1 %i.ag, %.not16
  %i.ah = getelementptr i8, ptr %i.ad, i64 %.pre4.i12
  %i.ai = getelementptr i8, ptr %i.ah, i64 -72
  %i.aj = select i1 %or.cond18, ptr %i.ai, ptr %i.ad ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !1188, !range !208, !noundef !209
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !19
  %i.ap = load ptr, ptr %i.ab, align 8, !tbaa !19 ; 2 uses
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar                    ; 2 uses
  %.not.not.i.i.i = icmp eq i64 %i.as, 0
  br i1 %.not.not.i.i.i, label %bb.g, label %_ZNKSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEE6_M_strISA_EENSt9enable_ifIXsr8__detail20__is_contiguous_iterIT_EE5valueENSB_13__string_viewEE4typeEv.exit.i.i

bb.g:                                             ; preds = %bb.f, %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit
  br label %_ZNKSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEE6_M_strISA_EENSt9enable_ifIXsr8__detail20__is_contiguous_iterIT_EE5valueENSB_13__string_viewEE4typeEv.exit.i.i

_ZNKSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEE6_M_strISA_EENSt9enable_ifIXsr8__detail20__is_contiguous_iterIT_EE5valueENSB_13__string_viewEE4typeEv.exit.i.i: ; preds = %bb.g, %bb.f
  %.sroa.0.1.i.i.i = phi ptr [ null, %bb.g ], [ %i.ap, %bb.f ]
  %.sroa.4.1.i.i.i = phi i64 [ 0, %bb.g ], [ %i.as, %bb.f ] ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.au = load i8, ptr %i.at, align 8, !tbaa !1188, !range !208, !noundef !209
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNKSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEE6_M_strISA_EENSt9enable_ifIXsr8__detail20__is_contiguous_iterIT_EE5valueENSB_13__string_viewEE4typeEv.exit.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !19
  %i.ay = load ptr, ptr %i.aj, align 8, !tbaa !19 ; 2 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 2 uses
  %.not.not.i6.i.i = icmp eq i64 %i.bb, 0
  br i1 %.not.not.i6.i.i, label %bb.i, label %_ZNKSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEE6_M_strISA_EENSt9enable_ifIXsr8__detail20__is_contiguous_iterIT_EE5valueENSB_13__string_viewEE4typeEv.exit7.i.i

bb.i:                                             ; preds = %bb.h, %_ZNKSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEE6_M_strISA_EENSt9enable_ifIXsr8__detail20__is_contiguous_iterIT_EE5valueENSB_13__string_viewEE4typeEv.exit.i.i
  br label %_ZNKSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEE6_M_strISA_EENSt9enable_ifIXsr8__detail20__is_contiguous_iterIT_EE5valueENSB_13__string_viewEE4typeEv.exit7.i.i

_ZNKSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEE6_M_strISA_EENSt9enable_ifIXsr8__detail20__is_contiguous_iterIT_EE5valueENSB_13__string_viewEE4typeEv.exit7.i.i: ; preds = %bb.i, %bb.h
  %.sroa.0.1.i2.i.i = phi ptr [ null, %bb.i ], [ %i.ay, %bb.h ]
  %.sroa.4.1.i3.i.i = phi i64 [ 0, %bb.i ], [ %i.bb, %bb.h ] ; 4 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.4.1.i3.i.i, i64 %.sroa.4.1.i.i.i) ; 2 uses
  %.not.i.i.i = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %.not.i.i.i, label %select.unfold.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
end_hunk_16
