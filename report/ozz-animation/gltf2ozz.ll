Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ozz-animation/original/gltf2ozz?download=true
inline.NumInlined: 15962
inline.NumDeleted: 4531
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN12GltfImporter22SampleAnimationChannelERKN8tinygltf5ModelERKNS0_16AnimationSamplerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEfPfPN3ozz9animation7offline12RawAnimation10JointTrackE:bb.a
  %i.acn = load i64, ptr %i.acm, align 8
  %i.aco = getelementptr inbounds i8, ptr %i.acj, i64 %i.acn
  %i.acp = getelementptr inbounds nuw i8, ptr %i.aco, i64 240
  %i.acq = load ptr, ptr %i.acp, align 8, !tbaa !486 ; 6 uses
  %.not.i.i.i88.i102 = icmp eq ptr %i.acq, null
  br i1 %.not.i.i.i88.i102, label %bb.dy, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i89.i103

bb.dy:                                            ; preds = %_ZN3ozz3log6LoggerlsIA65_cEERSoRKT_.exit.i101
  invoke void @_ZSt16__throw_bad_castv() #44
          to label %.noexc93.i110 unwind label %bb.eb

.noexc93.i110:                                    ; preds = %bb.dy
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i89.i103: ; preds = %_ZN3ozz3log6LoggerlsIA65_cEERSoRKT_.exit.i101
  %i.acr = getelementptr inbounds nuw i8, ptr %i.acq, i64 56
  %i.acs = load i8, ptr %i.acr, align 8, !tbaa !491
  %.not.i1.i.i90.i104 = icmp eq i8 %i.acs, 0
  br i1 %.not.i1.i.i90.i104, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i89.i103
  %i.act = getelementptr inbounds nuw i8, ptr %i.acq, i64 67
  %i.acu = load i8, ptr %i.act, align 1, !tbaa !75
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i91.i105

bb.ea:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i89.i103
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.acq)
          to label %.noexc94.i109 unwind label %bb.eb

.noexc94.i109:                                    ; preds = %bb.ea
  %i.acv = load ptr, ptr %i.acq, align 8, !tbaa !421
  %i.acw = getelementptr inbounds nuw i8, ptr %i.acv, i64 48
  %i.acx = load ptr, ptr %i.acw, align 8
  %i.acy = invoke noundef signext i8 %i.acx(ptr noundef nonnull align 8 dereferenceable(570) %i.acq, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i91.i105 unwind label %bb.eb, !inline_history !12

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i91.i105: ; preds = %.noexc94.i109, %bb.dz
  %.0.i.i.i92.i106 = phi i8 [ %i.acu, %bb.dz ], [ %i.acy, %.noexc94.i109 ]
  %i.acz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.acj, i8 noundef signext %.0.i.i.i92.i106)
          to label %.noexc96.i107 unwind label %bb.eb

.noexc96.i107:                                    ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i91.i105
  %i.ada = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.acz)
          to label %_ZNSolsEPFRSoS_E.exit74.i108 unwind label %bb.eb ; 0 uses

_ZNSolsEPFRSoS_E.exit74.i108:                     ; preds = %.noexc96.i107
  call void @_ZN3ozz3log6LoggerD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %21) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #41
  br label %_ZN12_GLOBAL__N_113SampleChannelISt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS2_12StdAllocatorIS6_EEEEEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSA_8AccessorERKNS2_4spanIKfEEffPT_.exit

bb.eb:                                            ; preds = %.noexc96.i107, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i91.i105, %.noexc94.i109, %bb.ea, %bb.dy, %_ZSt9is_sortedIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12RawAnimation11RotationKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEEZN12_GLOBAL__N_113SampleChannelISB_EEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSF_8AccessorERKNS2_4spanIKfEEffPT_EUlRKS6_S12_E_EbSZ_SZ_T0_.exit.i
  %i.adb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3ozz3log6LoggerD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %21) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #41
  br label %common.resume

.preheader.i.i.i75.i111:                          ; preds = %.preheader.i.i.i.i95, %bb.ec
  %.sroa.09.0.i.i.i.i112 = phi ptr [ %i.adc, %bb.ec ], [ %i.ace, %.preheader.i.i.i.i95 ] ; 5 uses
  %i.adc = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i.i112, i64 20 ; 3 uses
  %.not.i.i.i76.i113 = icmp eq ptr %i.adc, %i.acg
  br i1 %.not.i.i.i76.i113, label %_ZN12_GLOBAL__N_113SampleChannelISt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS2_12StdAllocatorIS6_EEEEEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSA_8AccessorERKNS2_4spanIKfEEffPT_.exit, label %bb.ec

bb.ec:                                            ; preds = %.preheader.i.i.i75.i111
  %.val.i.i.i.i77.i114 = load float, ptr %.sroa.09.0.i.i.i.i112, align 4, !tbaa !659
  %.val1.i.i.i.i78.i115 = load float, ptr %i.adc, align 4, !tbaa !659
  %i.add = fcmp oeq float %.val.i.i.i.i77.i114, %.val1.i.i.i.i78.i115
  br i1 %i.add, label %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12RawAnimation11RotationKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_113SampleChannelISB_EEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSH_8AccessorERKNS2_4spanIKfEEffPT_EUlRKS6_S14_E0_EEES11_S11_S11_T0_.exit.i.i.i, label %.preheader.i.i.i75.i111, !llvm.loop !3923

_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12RawAnimation11RotationKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_113SampleChannelISB_EEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSH_8AccessorERKNS2_4spanIKfEEffPT_EUlRKS6_S14_E0_EEES11_S11_S11_T0_.exit.i.i.i: ; preds = %bb.ec
  %i.ade = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i.i112, i64 40 ; 2 uses
  %.not19.i.i.i116 = icmp eq ptr %i.ade, %i.acg
  br i1 %.not19.i.i.i116, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12RawAnimation11RotationKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEEZN12_GLOBAL__N_113SampleChannelISB_EEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSF_8AccessorERKNS2_4spanIKfEEffPT_EUlRKS6_S12_E0_ESZ_SZ_SZ_T0_.exit.i, label %.lr.ph.i.i.i117

.lr.ph.i.i.i117:                                  ; preds = %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12RawAnimation11RotationKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_113SampleChannelISB_EEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSH_8AccessorERKNS2_4spanIKfEEffPT_EUlRKS6_S14_E0_EEES11_S11_S11_T0_.exit.i.i.i, %bb.ee
  %i.adf = phi ptr [ %i.adi, %bb.ee ], [ %i.ade, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12RawAnimation11RotationKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_113SampleChannelISB_EEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSH_8AccessorERKNS2_4spanIKfEEffPT_EUlRKS6_S14_E0_EEES11_S11_S11_T0_.exit.i.i.i ] ; 3 uses
  %.sroa.0.020.i.i.i118 = phi ptr [ %.sroa.0.1.i.i.i121, %bb.ee ], [ %.sroa.09.0.i.i.i.i112, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12RawAnimation11RotationKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_113SampleChannelISB_EEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSH_8AccessorERKNS2_4spanIKfEEffPT_EUlRKS6_S14_E0_EEES11_S11_S11_T0_.exit.i.i.i ] ; 3 uses
  %.val.i.i.i.i119 = load float, ptr %.sroa.0.020.i.i.i118, align 4, !tbaa !659
  %.val1.i.i.i.i120 = load float, ptr %i.adf, align 4, !tbaa !659
  %i.adg = fcmp oeq float %.val.i.i.i.i119, %.val1.i.i.i.i120
  br i1 %i.adg, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %.lr.ph.i.i.i117
  %i.adh = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i.i.i118, i64 20 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.adh, ptr noundef nonnull align 4 dereferenceable(20) %i.adf, i64 20, i1 false), !tbaa.struct !663
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %.lr.ph.i.i.i117
  %.sroa.0.1.i.i.i121 = phi ptr [ %.sroa.0.020.i.i.i118, %.lr.ph.i.i.i117 ], [ %i.adh, %bb.ed ] ; 2 uses
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adf, i64 20 ; 2 uses
  %.not.i.i79.i122 = icmp eq ptr %i.adi, %i.acg
  br i1 %.not.i.i79.i122, label %._crit_edge.i.i.loopexit.i123, label %.lr.ph.i.i.i117, !llvm.loop !3924

._crit_edge.i.i.loopexit.i123:                    ; preds = %bb.ee
  %.pre38.pre.i124 = load ptr, ptr %i.acf, align 8, !tbaa !656
  %.pre450.pre = load ptr, ptr %i.qs, align 8, !tbaa !656
  br label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12RawAnimation11RotationKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEEZN12_GLOBAL__N_113SampleChannelISB_EEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSF_8AccessorERKNS2_4spanIKfEEffPT_EUlRKS6_S12_E0_ESZ_SZ_SZ_T0_.exit.i

_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12RawAnimation11RotationKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEEZN12_GLOBAL__N_113SampleChannelISB_EEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSF_8AccessorERKNS2_4spanIKfEEffPT_EUlRKS6_S12_E0_ESZ_SZ_SZ_T0_.exit.i: ; preds = %._crit_edge.i.i.loopexit.i123, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12RawAnimation11RotationKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_113SampleChannelISB_EEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSH_8AccessorERKNS2_4spanIKfEEffPT_EUlRKS6_S14_E0_EEES11_S11_S11_T0_.exit.i.i.i
  %.pre450 = phi ptr [ %i.ace, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12RawAnimation11RotationKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_113SampleChannelISB_EEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSH_8AccessorERKNS2_4spanIKfEEffPT_EUlRKS6_S14_E0_EEES11_S11_S11_T0_.exit.i.i.i ], [ %.pre450.pre, %._crit_edge.i.i.loopexit.i123 ] ; 3 uses
  %.pre38.i125 = phi ptr [ %i.acg, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12RawAnimation11RotationKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_113SampleChannelISB_EEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSH_8AccessorERKNS2_4spanIKfEEffPT_EUlRKS6_S14_E0_EEES11_S11_S11_T0_.exit.i.i.i ], [ %.pre38.pre.i124, %._crit_edge.i.i.loopexit.i123 ] ; 2 uses
  %.sroa.0.0.lcssa.i.i.i126 = phi ptr [ %.sroa.09.0.i.i.i.i112, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12RawAnimation11RotationKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_113SampleChannelISB_EEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSH_8AccessorERKNS2_4spanIKfEEffPT_EUlRKS6_S14_E0_EEES11_S11_S11_T0_.exit.i.i.i ], [ %.sroa.0.1.i.i.i121, %._crit_edge.i.i.loopexit.i123 ]
  %i.adj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i.i126, i64 20 ; 2 uses
  %i.adk = icmp eq ptr %i.adj, %.pre38.i125
  br i1 %i.adk, label %_ZN12_GLOBAL__N_113SampleChannelISt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS2_12StdAllocatorIS6_EEEEEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSA_8AccessorERKNS2_4spanIKfEEffPT_.exit, label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S7_EESC_.exit.i

_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S7_EESC_.exit.i: ; preds = %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12RawAnimation11RotationKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEEZN12_GLOBAL__N_113SampleChannelISB_EEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSF_8AccessorERKNS2_4spanIKfEEffPT_EUlRKS6_S12_E0_ESZ_SZ_SZ_T0_.exit.i
  %i.adl = ptrtoint ptr %i.adj to i64
  %i.adm = ptrtoint ptr %.pre450 to i64
  %i.adn = sub i64 %i.adl, %i.adm
  %i.ado = getelementptr inbounds i8, ptr %.pre450, i64 %i.adn
  store ptr %i.ado, ptr %i.acf, align 8, !tbaa !661
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #41
  call void @_ZN3ozz3log3LogC1Ev(ptr noundef nonnull align 8 dereferenceable(9) %22)
  %i.adp = load ptr, ptr %22, align 8, !tbaa !614, !nonnull !136, !align !563 ; 4 uses
  %i.adq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.adp, ptr noundef nonnull @.str.282, i64 noundef 130)
          to label %_ZN3ozz3log6LoggerlsIA131_cEERSoRKT_.exit.i127 unwind label %bb.ei ; 0 uses

_ZN3ozz3log6LoggerlsIA131_cEERSoRKT_.exit.i127:   ; preds = %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S7_EESC_.exit.i
  %i.adr = load ptr, ptr %i.adp, align 8, !tbaa !421
  %i.ads = getelementptr i8, ptr %i.adr, i64 -24
  %i.adt = load i64, ptr %i.ads, align 8
  %i.adu = getelementptr inbounds i8, ptr %i.adp, i64 %i.adt
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adu, i64 240
  %i.adw = load ptr, ptr %i.adv, align 8, !tbaa !486 ; 6 uses
  %.not.i.i.i99.i128 = icmp eq ptr %i.adw, null
  br i1 %.not.i.i.i99.i128, label %bb.ef, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i100.i129

bb.ef:                                            ; preds = %_ZN3ozz3log6LoggerlsIA131_cEERSoRKT_.exit.i127
  invoke void @_ZSt16__throw_bad_castv() #44
          to label %.noexc104.i136 unwind label %bb.ei

.noexc104.i136:                                   ; preds = %bb.ef
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i100.i129: ; preds = %_ZN3ozz3log6LoggerlsIA131_cEERSoRKT_.exit.i127
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adw, i64 56
  %i.ady = load i8, ptr %i.adx, align 8, !tbaa !491
  %.not.i1.i.i101.i130 = icmp eq i8 %i.ady, 0
  br i1 %.not.i1.i.i101.i130, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i100.i129
  %i.adz = getelementptr inbounds nuw i8, ptr %i.adw, i64 67
  %i.aea = load i8, ptr %i.adz, align 1, !tbaa !75
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i102.i131

bb.eh:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i100.i129
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.adw)
          to label %.noexc105.i135 unwind label %bb.ei

.noexc105.i135:                                   ; preds = %bb.eh
  %i.aeb = load ptr, ptr %i.adw, align 8, !tbaa !421
  %i.aec = getelementptr inbounds nuw i8, ptr %i.aeb, i64 48
  %i.aed = load ptr, ptr %i.aec, align 8
  %i.aee = invoke noundef signext i8 %i.aed(ptr noundef nonnull align 8 dereferenceable(570) %i.adw, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i102.i131 unwind label %bb.ei, !inline_history !12

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i102.i131: ; preds = %.noexc105.i135, %bb.eg
  %.0.i.i.i103.i132 = phi i8 [ %i.aea, %bb.eg ], [ %i.aee, %.noexc105.i135 ]
  %i.aef = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.adp, i8 noundef signext %.0.i.i.i103.i132)
          to label %.noexc107.i133 unwind label %bb.ei

.noexc107.i133:                                   ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i102.i131
  %i.aeg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aef)
          to label %_ZNSolsEPFRSoS_E.exit82.i134 unwind label %bb.ei ; 0 uses

_ZNSolsEPFRSoS_E.exit82.i134:                     ; preds = %.noexc107.i133
  call void @_ZN3ozz3log6LoggerD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %22) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #41
  %.pre449 = load ptr, ptr %i.qs, align 8, !tbaa !656
  %.pre451 = load ptr, ptr %i.acf, align 8, !tbaa !656
  br label %_ZN12_GLOBAL__N_113SampleChannelISt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS2_12StdAllocatorIS6_EEEEEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSA_8AccessorERKNS2_4spanIKfEEffPT_.exit

bb.ei:                                            ; preds = %.noexc107.i133, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i102.i131, %.noexc105.i135, %bb.eh, %bb.ef, %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S7_EESC_.exit.i
  %i.aeh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3ozz3log6LoggerD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %22) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #41
  br label %common.resume

_ZN12_GLOBAL__N_113SampleChannelISt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS2_12StdAllocatorIS6_EEEEEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSA_8AccessorERKNS2_4spanIKfEEffPT_.exit: ; preds = %.preheader.i.i.i75.i111, %_ZNSolsEPFRSoS_E.exit82.i134, %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12RawAnimation11RotationKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEEZN12_GLOBAL__N_113SampleChannelISB_EEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSF_8AccessorERKNS2_4spanIKfEEffPT_EUlRKS6_S12_E0_ESZ_SZ_SZ_T0_.exit.i
  %i.aei = phi ptr [ %.pre38.i125, %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12RawAnimation11RotationKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEEZN12_GLOBAL__N_113SampleChannelISB_EEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSF_8AccessorERKNS2_4spanIKfEEffPT_EUlRKS6_S12_E0_ESZ_SZ_SZ_T0_.exit.i ], [ %.pre451, %_ZNSolsEPFRSoS_E.exit82.i134 ], [ %i.acg, %.preheader.i.i.i75.i111 ] ; 2 uses
  %i.aej = phi ptr [ %.pre450, %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12RawAnimation11RotationKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEEZN12_GLOBAL__N_113SampleChannelISB_EEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSF_8AccessorERKNS2_4spanIKfEEffPT_EUlRKS6_S12_E0_ESZ_SZ_SZ_T0_.exit.i ], [ %.pre449, %_ZNSolsEPFRSoS_E.exit82.i134 ], [ %i.ace, %.preheader.i.i.i75.i111 ] ; 2 uses
  %.not409 = icmp eq ptr %i.aej, %i.aei
  br i1 %.not409, label %_ZN12_GLOBAL__N_113SampleChannelISt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS2_12StdAllocatorIS6_EEEEEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSA_8AccessorERKNS2_4spanIKfEEffPT_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN12_GLOBAL__N_113SampleChannelISt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS2_12StdAllocatorIS6_EEEEEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSA_8AccessorERKNS2_4spanIKfEEffPT_.exit, %.lr.ph
  %.sroa.0326.0410 = phi ptr [ %i.afa, %.lr.ph ], [ %i.aej, %_ZN12_GLOBAL__N_113SampleChannelISt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS2_12StdAllocatorIS6_EEEEEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSA_8AccessorERKNS2_4spanIKfEEffPT_.exit ] ; 3 uses
  %i.aek = getelementptr inbounds nuw i8, ptr %.sroa.0326.0410, i64 4 ; 2 uses
  %i.ael = getelementptr inbounds nuw i8, ptr %.sroa.0326.0410, i64 12 ; 2 uses
  %i.aem = load <2 x float>, ptr %i.ael, align 4, !tbaa !653 ; 3 uses
  %i.aen = extractelement <2 x float> %i.aem, i64 0 ; 2 uses
  %i.aeo = extractelement <2 x float> %i.aem, i64 1 ; 2 uses
  %i.aep = load <2 x float>, ptr %i.aek, align 4, !tbaa !653 ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.aep, %i.aep
  %i.aeq = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.aer = extractelement <2 x float> %i.aep, i64 0 ; 2 uses
  %i.aes = call float @llvm.fmuladd.f32(float %i.aer, float %i.aer, float %i.aeq)
  %i.aet = call float @llvm.fmuladd.f32(float %i.aen, float %i.aen, float %i.aes)
  %i.aeu = call float @llvm.fmuladd.f32(float %i.aeo, float %i.aeo, float %i.aet)
  %sqrt = call noundef float @sqrtf(float noundef %i.aeu) #41
  %i.aev = fdiv float 1.000000e+00, %sqrt
  %i.aew = insertelement <2 x float> poison, float %i.aev, i64 0
  %i.aex = shufflevector <2 x float> %i.aew, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aey = fmul <2 x float> %i.aep, %i.aex
  %i.aez = fmul <2 x float> %i.aem, %i.aex
  store <2 x float> %i.aey, ptr %i.aek, align 4, !tbaa !653
  store <2 x float> %i.aez, ptr %i.ael, align 4, !tbaa !653
  %i.afa = getelementptr inbounds nuw i8, ptr %.sroa.0326.0410, i64 20 ; 2 uses
  %.not = icmp eq ptr %i.afa, %i.aei
  br i1 %.not, label %_ZN12_GLOBAL__N_113SampleChannelISt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS2_12StdAllocatorIS6_EEEEEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSA_8AccessorERKNS2_4spanIKfEEffPT_.exit, label %.lr.ph

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit184: ; preds = %bb.o
  %.pre448 = load ptr, ptr %3, align 8, !tbaa !89
  %bcmp.i183 = tail call i32 @bcmp(ptr %.pre448, ptr nonnull @.str.187, i64 %i.co)
  %i.afb = icmp eq i32 %bcmp.i183, 0
  br i1 %i.afb, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit184.thread, label %_ZN12_GLOBAL__N_113SampleChannelISt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS2_12StdAllocatorIS6_EEEEEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSA_8AccessorERKNS2_4spanIKfEEffPT_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit184.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit184
  %i.afc = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 14 uses
  %i.afd = getelementptr inbounds nuw i8, ptr %0, i64 488
  %.val45 = load ptr, ptr %i.afd, align 8         ; 3 uses
  %i.afe = getelementptr inbounds nuw i8, ptr %0, i64 512
  %.val46 = load ptr, ptr %i.afe, align 8         ; 3 uses
  switch i64 %i.c, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit57.thread8.i188 [
    i64 6, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i301
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43.i277
    i64 11, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit57.i185
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i301: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit184.thread
  %i.aff = load ptr, ptr %i.a, align 8, !tbaa !89 ; 2 uses
  %i.afg = load i32, ptr %i.aff, align 1
  %i.afh = xor i32 %i.afg, 1162758476
  %i.afi = getelementptr i8, ptr %i.aff, i64 4
  %i.afj = load i16, ptr %i.afi, align 1
  %i.afk = zext i16 %i.afj to i32
  %i.afl = xor i32 %i.afk, 21057
  %i.afm = or i32 %i.afh, %i.afl
  %i.afn = icmp ne i32 %i.afm, 0
  %i.afo = zext i1 %i.afn to i32
  %i.afp = icmp eq i32 %i.afo, 0
  br i1 %i.afp, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i303, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit57.thread8.i188

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i303: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i301
  %i.afq = getelementptr inbounds nuw i8, ptr %i.al, i64 56 ; 4 uses
  %i.afr = load i64, ptr %i.afq, align 8, !tbaa !126 ; 3 uses
  %i.afs = icmp eq i64 %i.afr, 0
  br i1 %i.afs, label %bb.ej, label %bb.el

bb.ej:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i303
  %i.aft = load ptr, ptr %i.afc, align 8, !tbaa !675 ; 2 uses
  %i.afu = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  %i.afv = load ptr, ptr %i.afu, align 8, !tbaa !667
  %.not.i.i.i.i320 = icmp eq ptr %i.afv, %i.aft
  br i1 %.not.i.i.i.i320, label %.loopexit.i231, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  store ptr %i.aft, ptr %i.afu, align 8, !tbaa !667
  br label %.loopexit.i231

bb.el:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i303
  %i.afw = tail call fastcc { ptr, i64 } @_ZN12_GLOBAL__N_110BufferViewIN3ozz4math6Float3EEENS1_4spanIKT_EERKN8tinygltf5ModelERKNS8_8AccessorE(ptr readonly %.val45, ptr readonly %.val46, ptr noundef nonnull readonly align 8 dereferenceable(1216) %i.al) ; 2 uses
  %i.afx = extractvalue { ptr, i64 } %i.afw, 0
  %i.afy = extractvalue { ptr, i64 } %i.afw, 1
  %i.afz = mul i64 %i.afy, 12
  %i.aga = udiv i64 %i.afz, 12
  %.not.i.i304 = icmp eq i64 %i.aga, %i.afr
  %.not21.i.i315 = icmp eq i64 %i.cl, %i.afr
  %or.cond369 = and i1 %.not21.i.i315, %.not.i.i304
  br i1 %or.cond369, label %bb.er, label %bb.em

bb.em:                                            ; preds = %bb.el
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #41
  call void @_ZN3ozz3log3ErrC1Ev(ptr noundef nonnull align 8 dereferenceable(9) %10)
  %i.agb = load ptr, ptr %10, align 8, !tbaa !614, !nonnull !136, !align !563 ; 4 uses
  %i.agc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.agb, ptr noundef nonnull @.str.283, i64 noundef 47)
          to label %_ZN3ozz3log6LoggerlsIA48_cEERSoRKT_.exit.i.i305 unwind label %bb.eq ; 0 uses

_ZN3ozz3log6LoggerlsIA48_cEERSoRKT_.exit.i.i305:  ; preds = %bb.em
  %i.agd = load ptr, ptr %i.agb, align 8, !tbaa !421
  %i.age = getelementptr i8, ptr %i.agd, i64 -24
  %i.agf = load i64, ptr %i.age, align 8
  %i.agg = getelementptr inbounds i8, ptr %i.agb, i64 %i.agf
  %i.agh = getelementptr inbounds nuw i8, ptr %i.agg, i64 240
  %i.agi = load ptr, ptr %i.agh, align 8, !tbaa !486 ; 6 uses
  %.not.i.i.i.i.i306 = icmp eq ptr %i.agi, null
  br i1 %.not.i.i.i.i.i306, label %bb.en, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i307

bb.en:                                            ; preds = %_ZN3ozz3log6LoggerlsIA48_cEERSoRKT_.exit.i.i305
  invoke void @_ZSt16__throw_bad_castv() #44
          to label %.noexc.i.i314 unwind label %bb.eq

.noexc.i.i314:                                    ; preds = %bb.en
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i307: ; preds = %_ZN3ozz3log6LoggerlsIA48_cEERSoRKT_.exit.i.i305
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agi, i64 56
  %i.agk = load i8, ptr %i.agj, align 8, !tbaa !491
  %.not.i1.i.i.i.i308 = icmp eq i8 %i.agk, 0
  br i1 %.not.i1.i.i.i.i308, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i307
  %i.agl = getelementptr inbounds nuw i8, ptr %i.agi, i64 67
  %i.agm = load i8, ptr %i.agl, align 1, !tbaa !75
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i309

bb.ep:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i307
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.agi)
          to label %.noexc23.i.i313 unwind label %bb.eq

.noexc23.i.i313:                                  ; preds = %bb.ep
  %i.agn = load ptr, ptr %i.agi, align 8, !tbaa !421
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agn, i64 48
  %i.agp = load ptr, ptr %i.ago, align 8
  %i.agq = invoke noundef signext i8 %i.agp(ptr noundef nonnull align 8 dereferenceable(570) %i.agi, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i309 unwind label %bb.eq, !inline_history !12

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i309: ; preds = %.noexc23.i.i313, %bb.eo
  %.0.i.i.i.i.i310 = phi i8 [ %i.agm, %bb.eo ], [ %i.agq, %.noexc23.i.i313 ]
  %i.agr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.agb, i8 noundef signext %.0.i.i.i.i.i310)
          to label %.noexc25.i.i311 unwind label %bb.eq

.noexc25.i.i311:                                  ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i309
  %i.ags = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.agr)
          to label %_ZNSolsEPFRSoS_E.exit.i.i312 unwind label %bb.eq ; 0 uses

_ZNSolsEPFRSoS_E.exit.i.i312:                     ; preds = %.noexc25.i.i311
  call void @_ZN3ozz3log6LoggerD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %10) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #41
  br label %_ZN12_GLOBAL__N_113SampleChannelISt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS2_12StdAllocatorIS6_EEEEEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSA_8AccessorERKNS2_4spanIKfEEffPT_.exit

bb.eq:                                            ; preds = %.noexc25.i.i311, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i309, %.noexc23.i.i313, %bb.ep, %bb.en, %bb.em
  %i.agt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3ozz3log6LoggerD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %10) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #41
  br label %common.resume

bb.er:                                            ; preds = %bb.el
  %i.agu = load i64, ptr %i.afq, align 8, !tbaa !126
  tail call void @_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %i.afc, i64 noundef %i.agu)
  %i.agv = load i64, ptr %i.afq, align 8, !tbaa !126
  %.not2.i.i316 = icmp eq i64 %i.agv, 0
  br i1 %.not2.i.i316, label %.loopexit.i231, label %.lr.ph.i.i317

.lr.ph.i.i317:                                    ; preds = %bb.er
  %i.agw = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.agx = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 3 uses
  %i.agy = getelementptr inbounds nuw i8, ptr %6, i64 64
  br label %bb.es

bb.es:                                            ; preds = %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE9push_backERKS4_.exit.i.i, %.lr.ph.i.i317
  %.01.i.i318 = phi i64 [ 0, %.lr.ph.i.i317 ], [ %i.ahg, %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE9push_backERKS4_.exit.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #41
  %i.agz = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %.01.i.i318
  %i.aha = load float, ptr %i.agz, align 4, !tbaa !653
  store float %i.aha, ptr %11, align 4, !tbaa !3942
  %i.ahb = getelementptr inbounds nuw [12 x i8], ptr %i.afx, i64 %.01.i.i318
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.agw, ptr noundef nonnull align 4 dereferenceable(12) %i.ahb, i64 12, i1 false), !tbaa.struct !3935
  %i.ahc = load ptr, ptr %i.agx, align 8, !tbaa !667 ; 3 uses
  %i.ahd = load ptr, ptr %i.agy, align 8, !tbaa !668
  %.not.i.i.i319 = icmp eq ptr %i.ahc, %i.ahd
  br i1 %.not.i.i.i319, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ahc, ptr noundef nonnull align 4 dereferenceable(16) %11, i64 16, i1 false), !tbaa.struct !654
  %i.ahe = load ptr, ptr %i.agx, align 8, !tbaa !667
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.ahe, i64 16
  store ptr %i.ahf, ptr %i.agx, align 8, !tbaa !667
  br label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE9push_backERKS4_.exit.i.i

bb.eu:                                            ; preds = %bb.es
  call void @_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.afc, ptr %i.ahc, ptr noundef nonnull align 4 dereferenceable(16) %11)
  br label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE9push_backERKS4_.exit.i.i

_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE9push_backERKS4_.exit.i.i: ; preds = %bb.eu, %bb.et
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #41
  %i.ahg = add nuw i64 %.01.i.i318, 1             ; 2 uses
  %i.ahh = load i64, ptr %i.afq, align 8, !tbaa !126
  %i.ahi = icmp ult i64 %i.ahg, %i.ahh
  br i1 %i.ahi, label %bb.es, label %.loopexit.i231, !llvm.loop !3925

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43.i277: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit184.thread
  %.pre.i278 = load ptr, ptr %i.a, align 8, !tbaa !89
  %i.ahj = load i32, ptr %.pre.i278, align 1
  %i.ahk = icmp ne i32 %i.ahj, 1346720851
  %i.ahl = zext i1 %i.ahk to i32
  %i.ahm = icmp eq i32 %i.ahl, 0
  br i1 %i.ahm, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43.thread.i280, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit57.thread8.i188

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43.thread.i280: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43.i277
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.al, i64 56 ; 4 uses
  %i.aho = load i64, ptr %i.ahn, align 8, !tbaa !126 ; 3 uses
  %i.ahp = icmp eq i64 %i.aho, 0
  br i1 %i.ahp, label %bb.ev, label %bb.ex

bb.ev:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43.thread.i280
  %i.ahq = load ptr, ptr %i.afc, align 8, !tbaa !675 ; 2 uses
  %i.ahr = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  %i.ahs = load ptr, ptr %i.ahr, align 8, !tbaa !667
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE17_M_default_appendEm:bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.015.i.prol, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.p, align 4, !tbaa !3950
  %i.q = add nsw i64 %.01214.i.prol, -1           ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.015.i.prol, i64 20 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !3947

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.r, %.lr.ph.i.prol ]
  %.015.i.unr = phi ptr [ %i.b, %.lr.ph.i.preheader ], [ %i.r, %.lr.ph.i.prol ]
  %.01214.i.unr = phi i64 [ %1, %.lr.ph.i.preheader ], [ %i.q, %.lr.ph.i.prol ]
  %i.s = icmp ult i64 %1, 8
  br i1 %i.s, label %_ZSt27__uninitialized_default_n_aIPN3ozz9animation7offline12RawAnimation11RotationKeyEmNS0_12StdAllocatorIS4_EEET_S8_T0_RT1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.015.i = phi ptr [ %i.aj, %.lr.ph.i ], [ %.015.i.unr, %.lr.ph.i.prol.loopexit ] ; 17 uses
  %.01214.i = phi i64 [ %i.ai, %.lr.ph.i ], [ %.01214.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.t = getelementptr inbounds nuw i8, ptr %.015.i, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.015.i, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.t, align 4, !tbaa !3950
  %i.u = getelementptr inbounds nuw i8, ptr %.015.i, i64 20
  %i.v = getelementptr inbounds nuw i8, ptr %.015.i, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.v, align 4, !tbaa !3950
  %i.w = getelementptr inbounds nuw i8, ptr %.015.i, i64 40
  %i.x = getelementptr inbounds nuw i8, ptr %.015.i, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.x, align 4, !tbaa !3950
  %i.y = getelementptr inbounds nuw i8, ptr %.015.i, i64 60
  %i.z = getelementptr inbounds nuw i8, ptr %.015.i, i64 76
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.z, align 4, !tbaa !3950
  %i.aa = getelementptr inbounds nuw i8, ptr %.015.i, i64 80
  %i.ab = getelementptr inbounds nuw i8, ptr %.015.i, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ab, align 4, !tbaa !3950
  %i.ac = getelementptr inbounds nuw i8, ptr %.015.i, i64 100
  %i.ad = getelementptr inbounds nuw i8, ptr %.015.i, i64 116
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ac, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ad, align 4, !tbaa !3950
  %i.ae = getelementptr inbounds nuw i8, ptr %.015.i, i64 120
  %i.af = getelementptr inbounds nuw i8, ptr %.015.i, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.af, align 4, !tbaa !3950
  %i.ag = getelementptr inbounds nuw i8, ptr %.015.i, i64 140
  %i.ah = getelementptr inbounds nuw i8, ptr %.015.i, i64 156
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ag, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ah, align 4, !tbaa !3950
  %i.ai = add nsw i64 %.01214.i, -8               ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.015.i, i64 160 ; 2 uses
  %.not.i.7 = icmp eq i64 %i.ai, 0
  br i1 %.not.i.7, label %_ZSt27__uninitialized_default_n_aIPN3ozz9animation7offline12RawAnimation11RotationKeyEmNS0_12StdAllocatorIS4_EEET_S8_T0_RT1_.exit, label %.lr.ph.i, !llvm.loop !3948

_ZSt27__uninitialized_default_n_aIPN3ozz9animation7offline12RawAnimation11RotationKeyEmNS0_12StdAllocatorIS4_EEET_S8_T0_RT1_.exit: ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.aj, %.lr.ph.i ]
  store ptr %.lcssa, ptr %i.a, align 8, !tbaa !661
  br label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.ak = icmp ult i64 %i.n, %1
  br i1 %i.ak, label %bb.d, label %_ZNKSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.258) #44
  unreachable

_ZNKSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.al = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.am = tail call i64 @llvm.umin.i64(i64 %i.al, i64 461168601842738790) ; 2 uses
  %i.an = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.e unwind label %bb.f       ; 2 uses

bb.e:                                             ; preds = %_ZNKSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE12_M_check_lenEmPKc.exit
  %i.ao = mul nuw nsw i64 %i.am, 20
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !421
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = invoke noundef ptr %i.ar(ptr noundef nonnull align 8 dereferenceable(8) %i.an, i64 noundef %i.ao, i64 noundef 4)
          to label %_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE11_M_allocateEm.exit unwind label %bb.f ; 4 uses

bb.f:                                             ; preds = %bb.e, %_ZNKSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE12_M_check_lenEmPKc.exit
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  tail call void @__clang_call_terminate(ptr %i.au) #40
  unreachable

_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE11_M_allocateEm.exit: ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.f ; 3 uses
  %xtraiter50 = and i64 %1, 7                     ; 2 uses
  %lcmp.mod51.not = icmp eq i64 %xtraiter50, 0
  br i1 %lcmp.mod51.not, label %.lr.ph.i41.prol.loopexit, label %.lr.ph.i41.prol

.lr.ph.i41.prol:                                  ; preds = %_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE11_M_allocateEm.exit, %.lr.ph.i41.prol
  %.015.i42.prol = phi ptr [ %i.ay, %.lr.ph.i41.prol ], [ %i.av, %_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE11_M_allocateEm.exit ] ; 3 uses
  %.01214.i43.prol = phi i64 [ %i.ax, %.lr.ph.i41.prol ], [ %1, %_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE11_M_allocateEm.exit ]
  %prol.iter52 = phi i64 [ %prol.iter52.next, %.lr.ph.i41.prol ], [ 0, %_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE11_M_allocateEm.exit ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.015.i42.prol, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.015.i42.prol, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.aw, align 4, !tbaa !3950
  %i.ax = add nsw i64 %.01214.i43.prol, -1        ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.015.i42.prol, i64 20 ; 2 uses
  %prol.iter52.next = add i64 %prol.iter52, 1     ; 2 uses
  %prol.iter52.cmp.not = icmp eq i64 %prol.iter52.next, %xtraiter50
  br i1 %prol.iter52.cmp.not, label %.lr.ph.i41.prol.loopexit, label %.lr.ph.i41.prol, !llvm.loop !3949

.lr.ph.i41.prol.loopexit:                         ; preds = %.lr.ph.i41.prol, %_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE11_M_allocateEm.exit
  %.015.i42.unr = phi ptr [ %i.av, %_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE11_M_allocateEm.exit ], [ %i.ay, %.lr.ph.i41.prol ]
  %.01214.i43.unr = phi i64 [ %1, %_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE11_M_allocateEm.exit ], [ %i.ax, %.lr.ph.i41.prol ]
  %i.az = icmp ult i64 %1, 8
  br i1 %i.az, label %_ZSt27__uninitialized_default_n_aIPN3ozz9animation7offline12RawAnimation11RotationKeyEmNS0_12StdAllocatorIS4_EEET_S8_T0_RT1_.exit46, label %.lr.ph.i41

.lr.ph.i41:                                       ; preds = %.lr.ph.i41.prol.loopexit, %.lr.ph.i41
  %.015.i42 = phi ptr [ %i.bq, %.lr.ph.i41 ], [ %.015.i42.unr, %.lr.ph.i41.prol.loopexit ] ; 17 uses
  %.01214.i43 = phi i64 [ %i.bp, %.lr.ph.i41 ], [ %.01214.i43.unr, %.lr.ph.i41.prol.loopexit ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.015.i42, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.015.i42, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ba, align 4, !tbaa !3950
  %i.bb = getelementptr inbounds nuw i8, ptr %.015.i42, i64 20
  %i.bc = getelementptr inbounds nuw i8, ptr %.015.i42, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bb, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bc, align 4, !tbaa !3950
  %i.bd = getelementptr inbounds nuw i8, ptr %.015.i42, i64 40
  %i.be = getelementptr inbounds nuw i8, ptr %.015.i42, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bd, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.be, align 4, !tbaa !3950
  %i.bf = getelementptr inbounds nuw i8, ptr %.015.i42, i64 60
  %i.bg = getelementptr inbounds nuw i8, ptr %.015.i42, i64 76
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bf, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bg, align 4, !tbaa !3950
  %i.bh = getelementptr inbounds nuw i8, ptr %.015.i42, i64 80
  %i.bi = getelementptr inbounds nuw i8, ptr %.015.i42, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bh, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bi, align 4, !tbaa !3950
  %i.bj = getelementptr inbounds nuw i8, ptr %.015.i42, i64 100
  %i.bk = getelementptr inbounds nuw i8, ptr %.015.i42, i64 116
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bj, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bk, align 4, !tbaa !3950
  %i.bl = getelementptr inbounds nuw i8, ptr %.015.i42, i64 120
  %i.bm = getelementptr inbounds nuw i8, ptr %.015.i42, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bl, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bm, align 4, !tbaa !3950
  %i.bn = getelementptr inbounds nuw i8, ptr %.015.i42, i64 140
  %i.bo = getelementptr inbounds nuw i8, ptr %.015.i42, i64 156
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bn, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bo, align 4, !tbaa !3950
  %i.bp = add nsw i64 %.01214.i43, -8             ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.015.i42, i64 160
  %.not.i44.7 = icmp eq i64 %i.bp, 0
  br i1 %.not.i44.7, label %_ZSt27__uninitialized_default_n_aIPN3ozz9animation7offline12RawAnimation11RotationKeyEmNS0_12StdAllocatorIS4_EEET_S8_T0_RT1_.exit46, label %.lr.ph.i41, !llvm.loop !3948

_ZSt27__uninitialized_default_n_aIPN3ozz9animation7offline12RawAnimation11RotationKeyEmNS0_12StdAllocatorIS4_EEET_S8_T0_RT1_.exit46: ; preds = %.lr.ph.i41, %.lr.ph.i41.prol.loopexit
  %.not13.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not13.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation11RotationKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt27__uninitialized_default_n_aIPN3ozz9animation7offline12RawAnimation11RotationKeyEmNS0_12StdAllocatorIS4_EEET_S8_T0_RT1_.exit46, %.lr.ph.i.i
  %.015.i.i = phi ptr [ %i.bs, %.lr.ph.i.i ], [ %i.as, %_ZSt27__uninitialized_default_n_aIPN3ozz9animation7offline12RawAnimation11RotationKeyEmNS0_12StdAllocatorIS4_EEET_S8_T0_RT1_.exit46 ] ; 2 uses
  %.sroa.010.014.i.i = phi ptr [ %i.br, %.lr.ph.i.i ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN3ozz9animation7offline12RawAnimation11RotationKeyEmNS0_12StdAllocatorIS4_EEET_S8_T0_RT1_.exit46 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.015.i.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.010.014.i.i, i64 20, i1 false), !tbaa.struct !663
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 20 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 20
  %.not.i.i = icmp eq ptr %i.br, %i.b
  br i1 %.not.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation11RotationKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i, !llvm.loop !54

_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation11RotationKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit: ; preds = %.lr.ph.i.i, %_ZSt27__uninitialized_default_n_aIPN3ozz9animation7offline12RawAnimation11RotationKeyEmNS0_12StdAllocatorIS4_EEET_S8_T0_RT1_.exit46
  %.not.i47 = icmp eq ptr %i.c, null
  br i1 %.not.i47, label %_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE13_M_deallocateEPS4_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation11RotationKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit
  %i.bt = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.h unwind label %bb.i       ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !421
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8
  invoke void %i.bw(ptr noundef nonnull align 8 dereferenceable(8) %i.bt, ptr noundef nonnull %i.c)
          to label %_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE13_M_deallocateEPS4_m.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  %i.by = extractvalue { ptr, i32 } %i.bx, 0
  tail call void @__clang_call_terminate(ptr %i.by) #40
  unreachable

_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE13_M_deallocateEPS4_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation11RotationKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit, %bb.h
  store ptr %i.as, ptr %0, align 8, !tbaa !674
  %i.bz = getelementptr inbounds nuw [20 x i8], ptr %i.av, i64 %1
  store ptr %i.bz, ptr %i.a, align 8, !tbaa !661
  %i.ca = getelementptr inbounds nuw [20 x i8], ptr %i.as, i64 %i.am
  store ptr %i.ca, ptr %i.h, align 8, !tbaa !662
  br label %bb.j

bb.j:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN3ozz9animation7offline12RawAnimation11RotationKeyEmNS0_12StdAllocatorIS4_EEET_S8_T0_RT1_.exit, %_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE13_M_deallocateEPS4_m.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #32

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, 576460752303423487
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.105) #44
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !668
  %i.d = load ptr, ptr %0, align 8, !tbaa !675    ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 4
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !667  ; 3 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f
  %i.n = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.e unwind label %bb.f       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.o = shl nuw nsw i64 %1, 4
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !421
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = invoke noundef ptr %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.n, i64 noundef %i.o, i64 noundef 4)
          to label %_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE11_M_allocateEm.exit.i unwind label %bb.f ; 4 uses

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #40
  unreachable

_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE11_M_allocateEm.exit.i: ; preds = %bb.e
  %.not13.i.i = icmp eq ptr %i.d, %i.k
  br i1 %.not13.i.i, label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE20_M_allocate_and_copyISt13move_iteratorIPS4_EEESA_mT_SC_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE11_M_allocateEm.exit.i, %.lr.ph.i.i
  %.015.i.i = phi ptr [ %i.w, %.lr.ph.i.i ], [ %i.s, %_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE11_M_allocateEm.exit.i ] ; 2 uses
  %.sroa.010.014.i.i = phi ptr [ %i.v, %.lr.ph.i.i ], [ %i.d, %_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE11_M_allocateEm.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.015.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.010.014.i.i, i64 16, i1 false), !tbaa.struct !654
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 16
  %.not.i11.i = icmp eq ptr %i.v, %i.k
  br i1 %.not.i11.i, label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE20_M_allocate_and_copyISt13move_iteratorIPS4_EEESA_mT_SC_.exit, label %.lr.ph.i.i, !llvm.loop !55

_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE20_M_allocate_and_copyISt13move_iteratorIPS4_EEESA_mT_SC_.exit: ; preds = %.lr.ph.i.i, %_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE11_M_allocateEm.exit.i
  %i.x = load ptr, ptr %0, align 8, !tbaa !675    ; 2 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE13_M_deallocateEPS4_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE20_M_allocate_and_copyISt13move_iteratorIPS4_EEESA_mT_SC_.exit
  %i.y = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.h unwind label %bb.i       ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !421
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  invoke void %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull %i.x)
          to label %_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE13_M_deallocateEPS4_m.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #40
  unreachable

_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE20_M_allocate_and_copyISt13move_iteratorIPS4_EEESA_mT_SC_.exit, %bb.h
  store ptr %i.s, ptr %0, align 8, !tbaa !675
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.m
  store ptr %i.ae, ptr %i.j, align 8, !tbaa !667
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %1
  store ptr %i.af, ptr %i.b, align 8, !tbaa !668
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE13_M_deallocateEPS4_m.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !667  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !675    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.106) #44
  unreachable

_ZNKSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %_ZNKSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE12_M_check_lenEmPKc.exit
  %i.p = shl nuw nsw i64 %i.l, 4
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !421
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = invoke noundef ptr %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.o, i64 noundef %i.p, i64 noundef 4)
          to label %bb.e unwind label %bb.d       ; 5 uses

bb.d:                                             ; preds = %bb.c, %_ZNKSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE12_M_check_lenEmPKc.exit
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #40
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.w, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !654
  %.not13.i.i = icmp eq ptr %i.c, %1
  br i1 %.not13.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation8ScaleKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.i
  %.015.i.i = phi ptr [ %i.y, %.lr.ph.i.i ], [ %i.t, %bb.e ] ; 2 uses
  %.sroa.010.014.i.i = phi ptr [ %i.x, %.lr.ph.i.i ], [ %i.c, %bb.e ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.015.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.010.014.i.i, i64 16, i1 false), !tbaa.struct !654
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.x, %1
  br i1 %.not.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation8ScaleKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i, !llvm.loop !55

_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation8ScaleKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit: ; preds = %.lr.ph.i.i, %bb.e
  %.0.lcssa.i.i = phi ptr [ %i.t, %bb.e ], [ %i.y, %.lr.ph.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 16 ; 2 uses
  %.not13.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not13.i.i28, label %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation8ScaleKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit34, label %.lr.ph.i.i29

.lr.ph.i.i29:                                     ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation8ScaleKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit, %.lr.ph.i.i29
  %.015.i.i30 = phi ptr [ %i.ab, %.lr.ph.i.i29 ], [ %i.z, %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation8ScaleKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit ] ; 2 uses
  %.sroa.010.014.i.i31 = phi ptr [ %i.aa, %.lr.ph.i.i29 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation8ScaleKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.015.i.i30, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.010.014.i.i31, i64 16, i1 false), !tbaa.struct !654
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i31, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.015.i.i30, i64 16 ; 2 uses
  %.not.i.i32 = icmp eq ptr %i.aa, %i.b
  br i1 %.not.i.i32, label %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation8ScaleKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit34, label %.lr.ph.i.i29, !llvm.loop !55

_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation8ScaleKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit34: ; preds = %.lr.ph.i.i29, %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation8ScaleKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit
  %.0.lcssa.i.i33 = phi ptr [ %i.z, %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation8ScaleKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit ], [ %i.ab, %.lr.ph.i.i29 ]
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE13_M_deallocateEPS4_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation8ScaleKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit34
  %i.ac = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.g unwind label %bb.h       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !421
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  invoke void %i.af(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull %i.c)
          to label %_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE13_M_deallocateEPS4_m.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  tail call void @__clang_call_terminate(ptr %i.ah) #40
  unreachable

_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE13_M_deallocateEPS4_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation8ScaleKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit34, %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.t, ptr %0, align 8, !tbaa !675
  store ptr %.0.lcssa.i.i33, ptr %i.a, align 8, !tbaa !667
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.l
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !668
  ret void
}

; Function Attrs: mustprogress uwtable
end_hunk_1
