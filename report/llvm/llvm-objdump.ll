Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/llvm-objdump?download=true
inline.NumInlined: 12438
inline.NumDeleted: 5742
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZL17disassembleObjectRN4llvm6object10ObjectFileERKS1_RN12_GLOBAL__N_118DisassemblerTargetERSt8optionalIS6_ERNS_7objdump13SourcePrinterEbRNS_11raw_ostreamE:bb.a
  br i1 %i.bfp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1040, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1038

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1038: ; preds = %_ZNSt14_Function_baseD2Ev.exit1037
  %i.bfq = load i64, ptr %i.bfb, align 8, !tbaa !107
  %i.bfr = add i64 %i.bfq, 1
  call void @_ZdlPvm(ptr noundef %i.bfo, i64 noundef %i.bfr) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1040

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1040: ; preds = %_ZNSt14_Function_baseD2Ev.exit1037, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1038
  call void @llvm.lifetime.end.p0(ptr nonnull %229) #34
  %i.bfs = getelementptr inbounds nuw i8, ptr %i.bfj, i64 16
  %i.bft = load ptr, ptr %i.bfs, align 8, !tbaa !3353, !noalias !3354 ; 2 uses
  %i.bfu = load ptr, ptr %i.bft, align 8, !tbaa !128, !noalias !3354
  %i.bfv = getelementptr inbounds nuw i8, ptr %i.bfu, i64 16
  %i.bfw = load ptr, ptr %i.bfv, align 8, !noalias !3354
  %i.bfx = call noundef nonnull align 8 dereferenceable(64) ptr %i.bfw(ptr noundef nonnull align 8 dereferenceable(16) %i.bft) #34, !noalias !3354, !inline_history !3017 ; 3 uses
  %i.bfy = load ptr, ptr %i.bfx, align 8, !tbaa !225, !noalias !3354 ; 3 uses
  %i.bfz = getelementptr inbounds nuw i8, ptr %i.bfx, i64 56
  %i.bga = load i32, ptr %i.bfz, align 8, !tbaa !3362, !noalias !3354 ; 2 uses
  %i.bgb = icmp eq i32 %i.bga, -1
  %i.bgc = getelementptr inbounds nuw i8, ptr %i.bfx, i64 8
  %i.bgd = load i32, ptr %i.bgc, align 8, !noalias !3354
  %i.bge = select i1 %i.bgb, i32 %i.bgd, i32 %i.bga ; 2 uses
  %i.bgf = zext i32 %i.bge to i64
  %.idx.i1041 = shl nuw nsw i64 %i.bgf, 3
  %i.bgg = getelementptr i8, ptr %i.bfy, i64 %.idx.i1041 ; 5 uses
  %.not1.i.i.i.i.i = icmp eq i32 %i.bge, 0
  br i1 %.not1.i.i.i.i.i, label %_ZN4llvm12DWARFContext13compile_unitsEv.exit, label %.lr.ph.i.i.i.i.i1042

.lr.ph.i.i.i.i.i1042:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1040, %bb.gl
  %.sroa.011.0.i.i = phi ptr [ %i.bgl, %bb.gl ], [ %i.bfy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1040 ] ; 3 uses
  %i.bgh = load ptr, ptr %.sroa.011.0.i.i, align 8, !tbaa !3364, !noalias !3365
  %i.bgi = getelementptr inbounds nuw i8, ptr %i.bgh, i64 96
  %i.bgj = load i8, ptr %i.bgi, align 8, !tbaa !3373, !noalias !3365
  %i.bgk = and i8 %i.bgj, -5
  %spec.select.i.i.i.not.i = icmp eq i8 %i.bgk, 2
  br i1 %spec.select.i.i.i.not.i, label %bb.gl, label %_ZN4llvm12DWARFContext13compile_unitsEv.exit

bb.gl:                                            ; preds = %.lr.ph.i.i.i.i.i1042
  %i.bgl = getelementptr inbounds nuw i8, ptr %.sroa.011.0.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i1043 = icmp eq ptr %i.bgl, %i.bgg
  br i1 %.not.i.i.i.i.i1043, label %.loopexit2169, label %.lr.ph.i.i.i.i.i1042, !llvm.loop !3020

_ZN4llvm12DWARFContext13compile_unitsEv.exit:     ; preds = %.lr.ph.i.i.i.i.i1042, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1040
  %.sroa.011.1.i.i = phi ptr [ %i.bfy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1040 ], [ %.sroa.011.0.i.i, %.lr.ph.i.i.i.i.i1042 ] ; 2 uses
  %.not21222365 = icmp eq ptr %.sroa.011.1.i.i, %i.bgg
  br i1 %.not21222365, label %.loopexit2169, label %.lr.ph2367

.lr.ph2367:                                       ; preds = %_ZN4llvm12DWARFContext13compile_unitsEv.exit, %_ZN4llvm20filter_iterator_baseIPSt10unique_ptrINS_9DWARFUnitESt14default_deleteIS2_EEPFbRKS5_ESt26bidirectional_iterator_tagEppEv.exit
  %.sroa.01940.02366 = phi ptr [ %.sroa.01940.1, %_ZN4llvm20filter_iterator_baseIPSt10unique_ptrINS_9DWARFUnitESt14default_deleteIS2_EEPFbRKS5_ESt26bidirectional_iterator_tagEppEv.exit ], [ %.sroa.011.1.i.i, %_ZN4llvm12DWARFContext13compile_unitsEv.exit ] ; 2 uses
  %i.bgm = load ptr, ptr %.sroa.01940.02366, align 8, !tbaa !3364 ; 4 uses
  call void @_ZN4llvm9DWARFUnit19extractDIEsIfNeededEb(ptr noundef nonnull align 8 dereferenceable(448) %i.bgm, i1 noundef zeroext false) #34
  %i.bgn = getelementptr inbounds nuw i8, ptr %i.bgm, i64 288
  %i.bgo = load ptr, ptr %i.bgn, align 8, !tbaa !3375 ; 2 uses
  %i.bgp = getelementptr inbounds nuw i8, ptr %i.bgm, i64 296
  %i.bgq = load ptr, ptr %i.bgp, align 8, !tbaa !3375
  %i.bgr = icmp eq ptr %i.bgo, %i.bgq             ; 2 uses
  %spec.select.i1044 = select i1 %i.bgr, ptr null, ptr %i.bgm
  %spec.select1.i = select i1 %i.bgr, ptr null, ptr %i.bgo
  call void @_ZN4llvm7objdump18LiveElementPrinter14addCompileUnitENS_8DWARFDieE(ptr noundef nonnull align 8 dereferenceable(264) %228, ptr %spec.select.i1044, ptr %spec.select1.i) #34
  %i.bgs = getelementptr inbounds nuw i8, ptr %.sroa.01940.02366, i64 8 ; 2 uses
  %.not1.i.i = icmp eq ptr %i.bgs, %i.bgg
  br i1 %.not1.i.i, label %.loopexit2169, label %.lr.ph.i.i1047

.lr.ph.i.i1047:                                   ; preds = %.lr.ph2367, %bb.gm
  %.sroa.01940.1 = phi ptr [ %i.bgx, %bb.gm ], [ %i.bgs, %.lr.ph2367 ] ; 4 uses
  %i.bgt = load ptr, ptr %.sroa.01940.1, align 8, !tbaa !3364
  %i.bgu = getelementptr inbounds nuw i8, ptr %i.bgt, i64 96
  %i.bgv = load i8, ptr %i.bgu, align 8, !tbaa !3373
  %i.bgw = and i8 %i.bgv, -5
  %spec.select.i.i.i3365.not = icmp eq i8 %i.bgw, 2
  br i1 %spec.select.i.i.i3365.not, label %bb.gm, label %_ZN4llvm20filter_iterator_baseIPSt10unique_ptrINS_9DWARFUnitESt14default_deleteIS2_EEPFbRKS5_ESt26bidirectional_iterator_tagEppEv.exit

bb.gm:                                            ; preds = %.lr.ph.i.i1047
  %i.bgx = getelementptr inbounds nuw i8, ptr %.sroa.01940.1, i64 8 ; 2 uses
  %.not.i.i1048 = icmp eq ptr %i.bgx, %i.bgg
  br i1 %.not.i.i1048, label %.loopexit2169, label %.lr.ph.i.i1047, !llvm.loop !3020

_ZN4llvm20filter_iterator_baseIPSt10unique_ptrINS_9DWARFUnitESt14default_deleteIS2_EEPFbRKS5_ESt26bidirectional_iterator_tagEppEv.exit: ; preds = %.lr.ph.i.i1047
  %.not2122 = icmp eq ptr %.sroa.01940.1, %i.bgg
  br i1 %.not2122, label %.loopexit2169, label %.lr.ph2367

.loopexit2169:                                    ; preds = %bb.gl, %.lr.ph2367, %_ZN4llvm20filter_iterator_baseIPSt10unique_ptrINS_9DWARFUnitESt14default_deleteIS2_EEPFbRKS5_ESt26bidirectional_iterator_tagEppEv.exit, %bb.gm, %_ZN4llvm12DWARFContext13compile_unitsEv.exit, %._crit_edge2364
  %.sroa.01953.0 = phi ptr [ null, %._crit_edge2364 ], [ %i.bfj, %_ZN4llvm12DWARFContext13compile_unitsEv.exit ], [ %i.bfj, %.lr.ph2367 ], [ %i.bfj, %bb.gm ], [ %i.bfj, %_ZN4llvm20filter_iterator_baseIPSt10unique_ptrINS_9DWARFUnitESt14default_deleteIS2_EEPFbRKS5_ESt26bidirectional_iterator_tagEppEv.exit ], [ %i.bfj, %bb.gl ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %233) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %233, i8 0, i64 48, i1 false)
  %i.bgy = load i8, ptr @_ZL17SymbolizeOperands, align 1, !tbaa !162, !range !163, !noundef !164
  %i.bgz = trunc nuw i8 %i.bgy to i1
  br i1 %i.bgz, label %bb.gn, label %bb.gp

bb.gn:                                            ; preds = %.loopexit2169
  %i.bha = load ptr, ptr %0, align 8, !tbaa !128
  %i.bhb = getelementptr inbounds nuw i8, ptr %i.bha, i64 448
  %i.bhc = load ptr, ptr %i.bhb, align 8
  %i.bhd = call noundef zeroext i1 %i.bhc(ptr noundef nonnull align 8 dereferenceable(48) %0) #34
  br i1 %i.bhd, label %bb.gp, label %bb.go

bb.go:                                            ; preds = %bb.gn
  call fastcc void @"_ZZL17disassembleObjectRN4llvm6object10ObjectFileERKS1_RN12_GLOBAL__N_118DisassemblerTargetERSt8optionalIS6_ERNS_7objdump13SourcePrinterEbRNS_11raw_ostreamEENK3$_5clES8_IjE"(ptr nonnull %233, ptr nonnull %0, i64 0)
  br label %bb.gp

bb.gp:                                            ; preds = %bb.go, %bb.gn, %.loopexit2169
  call void @llvm.lifetime.start.p0(ptr nonnull %234) #34
  %i.bhe = getelementptr inbounds nuw i8, ptr %234, i64 112 ; 7 uses
  store i8 0, ptr %i.bhe, align 8, !tbaa !3377
  br i1 %5, label %bb.gq, label %bb.gw

bb.gq:                                            ; preds = %bb.gp
  %i.bhf = call noundef zeroext i1 @_ZN4llvm9BTFParser14hasBTFSectionsERKNS_6object10ObjectFileE(ptr noundef nonnull align 8 dereferenceable(48) %0) #34
  br i1 %i.bhf, label %bb.gr, label %bb.gw

bb.gr:                                            ; preds = %bb.gq
  %i.bhg = load i8, ptr %i.bhe, align 8, !tbaa !3377, !range !163, !noundef !164
  %i.bhh = trunc nuw i8 %i.bhg to i1
  br i1 %i.bhh, label %bb.gs, label %_ZNSt8optionalIN4llvm9BTFParserEE7emplaceIJEEENSt9enable_ifIX18is_constructible_vIS1_DpT_EERS1_E4typeEDpOS5_.exit

bb.gs:                                            ; preds = %bb.gr
  store i8 0, ptr %i.bhe, align 8, !tbaa !3377
  call void @_ZN4llvm9BTFParserD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(120) %234) #34
  br label %_ZNSt8optionalIN4llvm9BTFParserEE7emplaceIJEEENSt9enable_ifIX18is_constructible_vIS1_DpT_EERS1_E4typeEDpOS5_.exit

_ZNSt8optionalIN4llvm9BTFParserEE7emplaceIJEEENSt9enable_ifIX18is_constructible_vIS1_DpT_EERS1_E4typeEDpOS5_.exit: ; preds = %bb.gr, %bb.gs
  %i.bhi = getelementptr inbounds nuw i8, ptr %234, i64 16
  %i.bhj = getelementptr inbounds nuw i8, ptr %234, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %234, i8 0, i64 16, i1 false)
  store ptr %i.bhj, ptr %i.bhi, align 8, !tbaa !249
  %i.bhk = getelementptr inbounds nuw i8, ptr %234, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.bhk, i8 0, i64 88, i1 false)
  store i8 1, ptr %i.bhe, align 8, !tbaa !3377
  call void @llvm.lifetime.start.p0(ptr nonnull %235) #34
  store i8 0, ptr %235, align 1, !tbaa !3379
  %i.bhl = getelementptr inbounds nuw i8, ptr %235, i64 1
  %i.bhm = getelementptr inbounds nuw i8, ptr %235, i64 2
  store i8 1, ptr %i.bhl, align 1, !tbaa !3380
  store i8 1, ptr %i.bhm, align 1, !tbaa !3381
  call void @llvm.lifetime.start.p0(ptr nonnull %236) #34
  call void @_ZN4llvm9BTFParser5parseERKNS_6object10ObjectFileERKNS0_12ParseOptionsE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %236, ptr noundef nonnull align 8 dereferenceable(112) %234, ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 1 dereferenceable(3) %235) #34
  %i.bhn = load ptr, ptr %236, align 8, !tbaa !136 ; 2 uses
  %.not2123 = icmp eq ptr %i.bhn, null
  br i1 %.not2123, label %_ZN4llvm5ErrorD2Ev.exit1050, label %bb.gt

bb.gt:                                            ; preds = %_ZNSt8optionalIN4llvm9BTFParserEE7emplaceIJEEENSt9enable_ifIX18is_constructible_vIS1_DpT_EERS1_E4typeEDpOS5_.exit
  store ptr %i.bhn, ptr %237, align 8, !tbaa !136
  store ptr null, ptr %236, align 8, !tbaa !136
  call void @_ZN4llvm9WithColor19defaultErrorHandlerENS_5ErrorE(ptr nofree noundef nonnull align 8 dereferenceable(8) %237) #34
  %i.bho = load ptr, ptr %237, align 8, !tbaa !136 ; 3 uses
  %i.bhp = icmp eq ptr %i.bho, null
  br i1 %i.bhp, label %_ZN4llvm5ErrorD2Ev.exit1049, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.bhq = load ptr, ptr %i.bho, align 8, !tbaa !128
  %i.bhr = getelementptr inbounds nuw i8, ptr %i.bhq, i64 8
  %i.bhs = load ptr, ptr %i.bhr, align 8
  call void %i.bhs(ptr noundef nonnull align 8 dereferenceable(8) %i.bho) #34, !inline_history !2
  br label %_ZN4llvm5ErrorD2Ev.exit1049

_ZN4llvm5ErrorD2Ev.exit1049:                      ; preds = %bb.gu, %bb.gt
  %.pr2062 = load ptr, ptr %236, align 8, !tbaa !136 ; 3 uses
  %i.bht = icmp eq ptr %.pr2062, null
  br i1 %i.bht, label %_ZN4llvm5ErrorD2Ev.exit1050, label %bb.gv

bb.gv:                                            ; preds = %_ZN4llvm5ErrorD2Ev.exit1049
  %i.bhu = load ptr, ptr %.pr2062, align 8, !tbaa !128
  %i.bhv = getelementptr inbounds nuw i8, ptr %i.bhu, i64 8
  %i.bhw = load ptr, ptr %i.bhv, align 8
  call void %i.bhw(ptr noundef nonnull align 8 dereferenceable(8) %.pr2062) #34, !inline_history !2
  br label %_ZN4llvm5ErrorD2Ev.exit1050

_ZN4llvm5ErrorD2Ev.exit1050:                      ; preds = %_ZNSt8optionalIN4llvm9BTFParserEE7emplaceIJEEENSt9enable_ifIX18is_constructible_vIS1_DpT_EERS1_E4typeEDpOS5_.exit, %_ZN4llvm5ErrorD2Ev.exit1049, %bb.gv
  call void @llvm.lifetime.end.p0(ptr nonnull %236) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %235) #34
  br label %bb.gw

bb.gw:                                            ; preds = %_ZN4llvm5ErrorD2Ev.exit1050, %bb.gq, %bb.gp
  call void @llvm.lifetime.start.p0(ptr nonnull %238) #34
  %i.bhx = getelementptr inbounds nuw i8, ptr %238, i64 24
  store ptr @"_ZNSt17_Function_handlerIFbRKN4llvm6object10SectionRefEEZNS0_7objdump17ToolSectionFilterERKNS1_10ObjectFileEPmE3$_0E9_M_invokeERKSt9_Any_dataS4_", ptr %i.bhx, align 8, !tbaa !147, !alias.scope !3382
  %i.bhy = getelementptr inbounds nuw i8, ptr %238, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %238, i8 0, i64 16, i1 false)
  store ptr @"_ZNSt17_Function_handlerIFbRKN4llvm6object10SectionRefEEZNS0_7objdump17ToolSectionFilterERKNS1_10ObjectFileEPmE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation", ptr %i.bhy, align 8, !tbaa !142, !alias.scope !3382
  %i.bhz = getelementptr inbounds nuw i8, ptr %238, i64 32
  store ptr %0, ptr %i.bhz, align 8, !tbaa !130, !alias.scope !3382
  call void @llvm.lifetime.start.p0(ptr nonnull %239) #34
  call void @_ZN4llvm6object13SectionFilter5beginEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::object::SectionFilterIterator") align 8 %239, ptr noundef nonnull align 8 dereferenceable(40) %238)
  call void @llvm.lifetime.start.p0(ptr nonnull %240) #34
  call void @_ZN4llvm6object13SectionFilter3endEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::object::SectionFilterIterator") align 8 %240, ptr noundef nonnull align 8 dereferenceable(40) %238)
  %i.bia = getelementptr inbounds nuw i8, ptr %239, i64 32 ; 34 uses
  %i.bib = getelementptr inbounds nuw i8, ptr %240, i64 32 ; 2 uses
  %i.bic = getelementptr inbounds nuw i8, ptr %239, i64 40 ; 21 uses
  %i.bid = getelementptr inbounds nuw i8, ptr %240, i64 40 ; 2 uses
  %i.bie = load ptr, ptr %i.bic, align 8, !tbaa !229 ; 2 uses
  %i.bif = load ptr, ptr %i.bid, align 8, !tbaa !229
  %i.big = icmp ne ptr %i.bie, %i.bif
  %lhsv.i.i.i.i.i10522446 = load i64, ptr %i.bia, align 8 ; 2 uses
  %rhsv.i.i.i.i.i2447 = load i64, ptr %i.bib, align 8
  %.not.i.i.i.i.i10532448 = icmp ne i64 %lhsv.i.i.i.i.i10522446, %rhsv.i.i.i.i.i2447
  %.not2.i.i10542449 = select i1 %i.big, i1 true, i1 %.not.i.i.i.i.i10532448
  br i1 %.not2.i.i10542449, label %.lr.ph2455, label %._crit_edge2456

.lr.ph2455:                                       ; preds = %bb.gw
  %i.bih = getelementptr inbounds nuw i8, ptr %241, i64 16 ; 2 uses
  %i.bii = getelementptr inbounds nuw i8, ptr %241, i64 8
  %i.bij = getelementptr inbounds nuw i8, ptr %241, i64 12
  %.not = icmp eq ptr %.sroa.02046.0, null
  %i.bik = getelementptr inbounds nuw i8, ptr %56, i64 16
  %i.bil = getelementptr inbounds nuw i8, ptr %56, i64 8
  %i.bim = getelementptr inbounds nuw i8, ptr %49, i64 16 ; 2 uses
  %i.bin = getelementptr inbounds nuw i8, ptr %49, i64 32 ; 2 uses
  %i.bio = getelementptr inbounds nuw i8, ptr %49, i64 24
  %i.bip = getelementptr inbounds nuw i8, ptr %49, i64 28
  %i.biq = getelementptr inbounds nuw i8, ptr %50, i64 8 ; 6 uses
  %i.bir = getelementptr inbounds nuw i8, ptr %50, i64 16 ; 4 uses
  %i.bis = getelementptr inbounds nuw i8, ptr %52, i64 16
  %i.bit = getelementptr inbounds nuw i8, ptr %52, i64 32
  %i.biu = getelementptr inbounds nuw i8, ptr %52, i64 33
  %i.biv = getelementptr inbounds nuw i8, ptr %51, i64 16 ; 6 uses
  %i.biw = getelementptr inbounds nuw i8, ptr %51, i64 8 ; 5 uses
  %i.bix = getelementptr inbounds nuw i8, ptr %242, i64 16
  %.sroa.22.0..sroa_idx.i1145 = getelementptr inbounds nuw i8, ptr %242, i64 8
  %i.biy = getelementptr inbounds nuw i8, ptr %243, i64 8 ; 3 uses
  %.sroa.2.0..sroa_idx.i13.i = getelementptr inbounds nuw i8, ptr %243, i64 16 ; 3 uses
  %i.biz = getelementptr inbounds nuw i8, ptr %243, i64 25 ; 2 uses
  %i.bja = getelementptr inbounds nuw i8, ptr %243, i64 32 ; 2 uses
  %i.bjb = getelementptr inbounds nuw i8, ptr %243, i64 36 ; 3 uses
  %i.bjc = getelementptr inbounds nuw i8, ptr %243, i64 40 ; 3 uses
  %i.bjd = getelementptr inbounds nuw i8, ptr %243, i64 41
  %i.bje = getelementptr inbounds nuw i8, ptr %243, i64 42
  %i.bjf = getelementptr inbounds nuw i8, ptr %243, i64 43
  %i.bjg = getelementptr inbounds nuw i8, ptr %243, i64 24
  %i.bjh = getelementptr inbounds nuw i8, ptr %243, i64 28
  %i.bji = getelementptr inbounds nuw i8, ptr %244, i64 24 ; 2 uses
  %i.bjj = getelementptr inbounds nuw i8, ptr %244, i64 8 ; 2 uses
  %i.bjk = getelementptr inbounds nuw i8, ptr %244, i64 16
  %i.bjl = getelementptr inbounds nuw i8, ptr %245, i64 8
  %i.bjm = getelementptr inbounds nuw i8, ptr %245, i64 40
  %i.bjn = getelementptr inbounds nuw i8, ptr %245, i64 44
  %i.bjo = getelementptr inbounds nuw i8, ptr %245, i64 16
  %i.bjp = getelementptr inbounds nuw i8, ptr %245, i64 48 ; 2 uses
  %i.bjq = getelementptr inbounds nuw i8, ptr %246, i64 8 ; 2 uses
  %i.bjr = getelementptr inbounds nuw i8, ptr %246, i64 16 ; 2 uses
  %i.bjs = getelementptr inbounds nuw i8, ptr %247, i64 16 ; 4 uses
  %i.bjt = getelementptr inbounds nuw i8, ptr %247, i64 8
  %i.bju = getelementptr inbounds nuw i8, ptr %248, i64 8 ; 4 uses
  %i.bjv = getelementptr inbounds nuw i8, ptr %248, i64 16 ; 4 uses
  %i.bjw = getelementptr inbounds nuw i8, ptr %249, i64 16 ; 10 uses
  %i.bjx = getelementptr inbounds nuw i8, ptr %249, i64 8 ; 5 uses
  %i.bjy = getelementptr inbounds nuw i8, ptr %227, i64 12 ; 2 uses
  %i.bjz = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 9 uses
  %i.bka = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 25 uses
  %i.bkb = select i1 %i.gs, ptr @.str.177, ptr @.str.176
  %i.bkc = getelementptr inbounds nuw i8, ptr %250, i64 8
  %i.bkd = ptrtoint ptr %42 to i64
  %i.bke = getelementptr inbounds nuw i8, ptr %251, i64 8
  %i.bkf = getelementptr inbounds nuw i8, ptr %251, i64 16 ; 2 uses
  %i.bkg = getelementptr inbounds nuw i8, ptr %253, i64 8 ; 2 uses
  %i.bkh = getelementptr inbounds nuw i8, ptr %256, i64 8 ; 5 uses
  %i.bki = getelementptr inbounds nuw i8, ptr %254, i64 8
  %i.bkj = getelementptr inbounds nuw i8, ptr %257, i64 8
  %i.bkk = getelementptr inbounds nuw i8, ptr %257, i64 16
  %i.bkl = getelementptr inbounds nuw i8, ptr %257, i64 20
  %i.bkm = getelementptr inbounds nuw i8, ptr %257, i64 21
  %i.bkn = getelementptr inbounds nuw i8, ptr %257, i64 22
  %i.bko = getelementptr inbounds nuw i8, ptr %254, i64 16 ; 2 uses
  %i.bkp = getelementptr inbounds nuw i8, ptr %258, i64 8
  %i.bkq = getelementptr inbounds nuw i8, ptr %258, i64 40
  %i.bkr = getelementptr inbounds nuw i8, ptr %258, i64 44
  %i.bks = getelementptr inbounds nuw i8, ptr %258, i64 16 ; 6 uses
  %i.bkt = getelementptr inbounds nuw i8, ptr %258, i64 48
  %i.bku = getelementptr inbounds nuw i8, ptr %258, i64 72 ; 2 uses
  %i.bkv = getelementptr inbounds nuw i8, ptr %258, i64 96 ; 2 uses
  %i.bkw = getelementptr inbounds nuw i8, ptr %258, i64 80
  %i.bkx = getelementptr inbounds nuw i8, ptr %258, i64 88
  %i.bky = getelementptr inbounds nuw i8, ptr %258, i64 104
  %i.bkz = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 9 uses
  %i.bla = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 3 uses
  %i.blb = getelementptr inbounds nuw i8, ptr %33, i64 24 ; 3 uses
  %i.blc = getelementptr inbounds nuw i8, ptr %33, i64 40 ; 3 uses
  %i.bld = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 4 uses
  %i.ble = getelementptr inbounds nuw i8, ptr %34, i64 32 ; 4 uses
  %i.blf = getelementptr inbounds nuw i8, ptr %34, i64 24 ; 2 uses
  %i.blg = getelementptr inbounds nuw i8, ptr %34, i64 28 ; 2 uses
  %i.blh = getelementptr inbounds nuw i8, ptr %259, i64 16 ; 5 uses
  %i.bli = getelementptr inbounds nuw i8, ptr %259, i64 20 ; 8 uses
  %i.blj = getelementptr inbounds nuw i8, ptr %259, i64 8 ; 7 uses
  %i.blk = getelementptr inbounds nuw i8, ptr %36, i64 16
  %i.bll = getelementptr inbounds nuw i8, ptr %36, i64 32
  %i.blm = getelementptr inbounds nuw i8, ptr %36, i64 33
  %i.bln = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 8 uses
  %i.blo = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 5 uses
  %i.blp = getelementptr inbounds nuw i8, ptr %233, i64 16
  %i.blq = getelementptr inbounds nuw i8, ptr %260, i64 16 ; 4 uses
  %i.blr = getelementptr inbounds nuw i8, ptr %260, i64 20 ; 5 uses
  %i.bls = getelementptr inbounds nuw i8, ptr %260, i64 8 ; 5 uses
  %i.blt = getelementptr inbounds nuw i8, ptr %233, i64 24
  %i.blu = getelementptr inbounds nuw i8, ptr %233, i64 32
  %i.blv = getelementptr inbounds nuw i8, ptr %233, i64 44
  %i.blw = getelementptr inbounds nuw i8, ptr %233, i64 8
  %i.blx = getelementptr inbounds nuw i8, ptr %233, i64 20
  %i.bly = getelementptr inbounds nuw i8, ptr %31, i64 16
  %i.blz = getelementptr inbounds nuw i8, ptr %31, i64 32
  %i.bma = getelementptr inbounds nuw i8, ptr %31, i64 33
  %i.bmb = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 15 uses
  %i.bmc = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.bmd = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 7 uses
  %i.bme = getelementptr inbounds nuw i8, ptr %32, i64 32 ; 7 uses
  %i.bmf = getelementptr inbounds nuw i8, ptr %32, i64 48 ; 14 uses
  %i.bmg = getelementptr inbounds nuw i8, ptr %32, i64 40 ; 7 uses
  %i.bmh = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.bmi = getelementptr inbounds nuw i8, ptr %27, i64 40
  %i.bmj = getelementptr inbounds nuw i8, ptr %27, i64 44
  %i.bmk = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.bml = getelementptr inbounds nuw i8, ptr %27, i64 48
  %i.bmm = getelementptr inbounds nuw i8, ptr %27, i64 24 ; 8 uses
  %i.bmn = getelementptr inbounds nuw i8, ptr %27, i64 32 ; 24 uses
  %i.bmo = getelementptr inbounds nuw i8, ptr %28, i64 32
  %i.bmp = getelementptr inbounds nuw i8, ptr %28, i64 33
  %i.bmq = getelementptr inbounds nuw i8, ptr %29, i64 32
  %i.bmr = getelementptr inbounds nuw i8, ptr %29, i64 33
  %i.bms = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %spec.select2113 = select i1 %.0567, ptr %2, ptr %3
  %spec.select2112 = select i1 %.0567, ptr %3, ptr %2
  %i.bmt = getelementptr inbounds nuw i8, ptr %261, i64 16 ; 2 uses
  %i.bmu = getelementptr inbounds nuw i8, ptr %261, i64 32 ; 2 uses
  %i.bmv = getelementptr inbounds nuw i8, ptr %261, i64 24
  %i.bmw = getelementptr inbounds nuw i8, ptr %261, i64 28
  %i.bmx = getelementptr inbounds nuw i8, ptr %262, i64 8
  %i.bmy = getelementptr inbounds nuw i8, ptr %263, i64 8
  %i.bmz = getelementptr inbounds nuw i8, ptr %264, i64 8
  %i.bna = getelementptr inbounds nuw i8, ptr %265, i64 16
  %i.bnb = getelementptr inbounds nuw i8, ptr %265, i64 32
  %i.bnc = getelementptr inbounds nuw i8, ptr %265, i64 33
  %i.bnd = ptrtoint ptr %.sroa.111988.0.lcssa3118 to i64
  %i.bne = ptrtoint ptr %.sroa.01984.0.lcssa3120 to i64
  %i.bnf = sub i64 %i.bnd, %i.bne                 ; 2 uses
  %i.bng = icmp sgt i64 %i.bnf, 0
  %i.bnh = udiv exact i64 %i.bnf, 24
  %i.bni = getelementptr inbounds nuw i8, ptr %266, i64 16 ; 7 uses
  %i.bnj = getelementptr inbounds nuw i8, ptr %266, i64 8 ; 6 uses
  %i.bnk = getelementptr inbounds nuw i8, ptr %267, i64 24 ; 2 uses
  %i.bnl = getelementptr inbounds nuw i8, ptr %267, i64 8 ; 3 uses
  %i.bnm = getelementptr inbounds nuw i8, ptr %267, i64 16
  %i.bnn = getelementptr inbounds nuw i8, ptr %270, i64 16
  %i.bno = getelementptr inbounds nuw i8, ptr %270, i64 32
  %i.bnp = getelementptr inbounds nuw i8, ptr %270, i64 33
  %i.bnq = getelementptr inbounds nuw i8, ptr %269, i64 16
  %i.bnr = getelementptr inbounds nuw i8, ptr %269, i64 32
  %i.bns = getelementptr inbounds nuw i8, ptr %269, i64 33
  %i.bnt = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.bnu = ptrtoint ptr %22 to i64
  %i.bnv = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.bnw = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.bnx = getelementptr inbounds nuw i8, ptr %24, i64 20
  %i.bny = getelementptr inbounds nuw i8, ptr %24, i64 21
  %i.bnz = getelementptr inbounds nuw i8, ptr %24, i64 22
  %i.boa = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.bob = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.boc = getelementptr inbounds nuw i8, ptr %25, i64 20
  %i.bod = getelementptr inbounds nuw i8, ptr %25, i64 21
  %i.boe = getelementptr inbounds nuw i8, ptr %25, i64 22
  %i.bof = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.bog = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.boh = getelementptr inbounds nuw i8, ptr %26, i64 20
  %i.boi = getelementptr inbounds nuw i8, ptr %26, i64 21
  %i.boj = getelementptr inbounds nuw i8, ptr %26, i64 22
  %i.bok = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 2 uses
  %i.bol = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.bom = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.bon = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.boo = ptrtoint ptr %14 to i64
  %i.bop = select i1 %i.gs, ptr @.str.216, ptr @.str.214
  %i.boq = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.bor = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bos = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bot = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.bou = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.bov = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.bow = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.box = ptrtoint ptr %7 to i64
  %i.boy = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.boz = ptrtoint ptr %38 to i64
  %i.bpa = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.bpb = ptrtoint ptr %37 to i64
  %i.bpc = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.bpd = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 3 uses
  %i.bpe = getelementptr inbounds nuw i8, ptr %41, i64 8
  %scevgep.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.bpf = getelementptr inbounds nuw i8, ptr %239, i64 48 ; 2 uses
  %i.bpg = getelementptr inbounds nuw i8, ptr %239, i64 56 ; 2 uses
  %i.bph = getelementptr inbounds nuw i8, ptr %239, i64 16
  %i.bpi = getelementptr inbounds nuw i8, ptr %239, i64 24
  %i.bpj = insertelement <2 x ptr> poison, ptr %i.bkz, i64 0
  %i.bpk = shufflevector <2 x ptr> %i.bpj, <2 x ptr> poison, <2 x i32> zeroinitializer
  br label %bb.hb

._crit_edge2456:                                  ; preds = %_ZN4llvm6object21SectionFilterIteratorppEv.exit, %bb.gw
  %i.bpl = getelementptr inbounds nuw i8, ptr %240, i64 16
  %i.bpm = load ptr, ptr %i.bpl, align 8, !tbaa !142 ; 2 uses
  %.not.i.i1055 = icmp eq ptr %i.bpm, null
  br i1 %.not.i.i1055, label %_ZN4llvm6object21SectionFilterIteratorD2Ev.exit, label %bb.gx

bb.gx:                                            ; preds = %._crit_edge2456
end_hunk_0
begin_hunk_1_@_ZL17disassembleObjectRN4llvm6object10ObjectFileERKS1_RN12_GLOBAL__N_118DisassemblerTargetERSt8optionalIS6_ERNS_7objdump13SourcePrinterEbRNS_11raw_ostreamE:bb.a
  br i1 %.not21242457, label %._crit_edge2460, label %.lr.ph2459

.lr.ph2459:                                       ; preds = %_ZNK4llvm9StringMapINS_17EmptyStringSetTagENS_15MallocAllocatorEE4keysEv.exit
  %i.bqe = getelementptr inbounds nuw i8, ptr %272, i64 32
  %i.bqf = getelementptr inbounds nuw i8, ptr %272, i64 33
  %i.bqg = getelementptr inbounds nuw i8, ptr %272, i64 16
  %i.bqh = getelementptr inbounds nuw i8, ptr %272, i64 24
  %.pre2713 = load ptr, ptr %.sroa.0.0.i.i, align 8, !tbaa !122
  br label %bb.zr

bb.hb:                                            ; preds = %.lr.ph2455, %_ZN4llvm6object21SectionFilterIteratorppEv.exit
  %.pre2663 = phi ptr [ %i.bie, %.lr.ph2455 ], [ %i.fug, %_ZN4llvm6object21SectionFilterIteratorppEv.exit ] ; 3 uses
  %lhsv.i.i.i.i.i10522453 = phi i64 [ %lhsv.i.i.i.i.i10522446, %.lr.ph2455 ], [ %lhsv.i.i.i.i.i1052, %_ZN4llvm6object21SectionFilterIteratorppEv.exit ]
  %.02452 = phi ptr [ %2, %.lr.ph2455 ], [ %.16, %_ZN4llvm6object21SectionFilterIteratorppEv.exit ] ; 9 uses
  %.sroa.51913.02451 = phi i64 [ undef, %.lr.ph2455 ], [ %.sroa.51913.2, %_ZN4llvm6object21SectionFilterIteratorppEv.exit ] ; 4 uses
  %i.bqi = load ptr, ptr @_ZN4llvm7objdump14FilterSectionsB5cxx11E, align 8, !tbaa !318
  %i.bqj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm7objdump14FilterSectionsB5cxx11E, i64 8), align 8, !tbaa !318
  %i.bqk = icmp ne ptr %i.bqi, %i.bqj
  %i.bql = load i8, ptr @_ZN4llvm7objdump14DisassembleAllE, align 1, !range !163
  %i.bqm = trunc nuw i8 %i.bql to i1
  %or.cond17 = select i1 %i.bqk, i1 true, i1 %i.bqm
  br i1 %or.cond17, label %bb.he, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.bqn = load ptr, ptr %.pre2663, align 8, !tbaa !128
  %i.bqo = getelementptr inbounds nuw i8, ptr %i.bqn, i64 200
  %i.bqp = load ptr, ptr %i.bqo, align 8
  %i.bqq = call noundef zeroext i1 %i.bqp(ptr noundef nonnull align 8 dereferenceable(48) %.pre2663, i64 %lhsv.i.i.i.i.i10522453) #34, !inline_history !30
  br i1 %i.bqq, label %bb.hd, label %bb.yy

bb.hd:                                            ; preds = %bb.hc
  %i.bqr = load ptr, ptr %i.bic, align 8, !tbaa !229 ; 2 uses
  %.sroa.0.0.copyload.i1064 = load i64, ptr %i.bia, align 8, !tbaa !107
  %i.bqs = load ptr, ptr %i.bqr, align 8, !tbaa !128
  %i.bqt = getelementptr inbounds nuw i8, ptr %i.bqs, i64 224
  %i.bqu = load ptr, ptr %i.bqt, align 8
  %i.bqv = call noundef zeroext i1 %i.bqu(ptr noundef nonnull align 8 dereferenceable(48) %i.bqr, i64 %.sroa.0.0.copyload.i1064) #34, !inline_history !3023
  br i1 %i.bqv, label %bb.yy, label %._crit_edge2661

._crit_edge2661:                                  ; preds = %bb.hd
  %.pre2662 = load ptr, ptr %i.bic, align 8, !tbaa !229
  br label %bb.he

bb.he:                                            ; preds = %._crit_edge2661, %bb.hb
  %i.bqw = phi ptr [ %.pre2662, %._crit_edge2661 ], [ %.pre2663, %bb.hb ] ; 2 uses
  %.sroa.0.0.copyload.i1065 = load i64, ptr %i.bia, align 8, !tbaa !107
  %i.bqx = load ptr, ptr %i.bqw, align 8, !tbaa !128
  %i.bqy = getelementptr inbounds nuw i8, ptr %i.bqx, i64 152
  %i.bqz = load ptr, ptr %i.bqy, align 8
  %i.bra = call noundef i64 %i.bqz(ptr noundef nonnull align 8 dereferenceable(48) %i.bqw, i64 %.sroa.0.0.copyload.i1065) #34, !inline_history !27 ; 24 uses
  %i.brb = load ptr, ptr %i.bic, align 8, !tbaa !229 ; 2 uses
  %.sroa.0.0.copyload.i1066 = load i64, ptr %i.bia, align 8, !tbaa !107
  %i.brc = load ptr, ptr %i.brb, align 8, !tbaa !128
  %i.brd = getelementptr inbounds nuw i8, ptr %i.brc, i64 168
  %i.bre = load ptr, ptr %i.brd, align 8
  %i.brf = call noundef i64 %i.bre(ptr noundef nonnull align 8 dereferenceable(48) %i.brb, i64 %.sroa.0.0.copyload.i1066) #34, !inline_history !29 ; 2 uses
  %.not664 = icmp eq i64 %i.brf, 0
  br i1 %.not664, label %bb.yy, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.brg = load i8, ptr @_ZL17SymbolizeOperands, align 1, !tbaa !162, !range !163, !noundef !164
  %i.brh = trunc nuw i8 %i.brg to i1
  br i1 %i.brh, label %bb.hg, label %bb.hi

bb.hg:                                            ; preds = %bb.hf
  %i.bri = load ptr, ptr %0, align 8, !tbaa !128
  %i.brj = getelementptr inbounds nuw i8, ptr %i.bri, i64 448
  %i.brk = load ptr, ptr %i.brj, align 8
  %i.brl = call noundef zeroext i1 %i.brk(ptr noundef nonnull align 8 dereferenceable(48) %0) #34
  br i1 %i.brl, label %bb.hh, label %bb.hi

bb.hh:                                            ; preds = %bb.hg
  %i.brm = load ptr, ptr %i.bic, align 8, !tbaa !229 ; 2 uses
  %.sroa.0.0.copyload.i1067 = load i64, ptr %i.bia, align 8, !tbaa !107
  %i.brn = load ptr, ptr %i.brm, align 8, !tbaa !128
  %i.bro = getelementptr inbounds nuw i8, ptr %i.brn, i64 160
  %i.brp = load ptr, ptr %i.bro, align 8
  %i.brq = call noundef i64 %i.brp(ptr noundef nonnull align 8 dereferenceable(48) %i.brm, i64 %.sroa.0.0.copyload.i1067) #34, !inline_history !3024
  %.sroa.01931.0.insert.ext = and i64 %i.brq, 4294967295
  %.sroa.01931.0.insert.insert = or disjoint i64 %.sroa.01931.0.insert.ext, 4294967296
  call fastcc void @"_ZZL17disassembleObjectRN4llvm6object10ObjectFileERKS1_RN12_GLOBAL__N_118DisassemblerTargetERSt8optionalIS6_ERNS_7objdump13SourcePrinterEbRNS_11raw_ostreamEENK3$_5clES8_IjE"(ptr nonnull %233, ptr nonnull %0, i64 %.sroa.01931.0.insert.insert)
  br label %bb.hi

bb.hi:                                            ; preds = %bb.hh, %bb.hg, %bb.hf
  %i.brr = load ptr, ptr %i.gu, align 8, !tbaa !698 ; 2 uses
  %.not10.i.i.i.i1068 = icmp eq ptr %i.brr, null
  br i1 %.not10.i.i.i.i1068, label %.critedge.i1079, label %.lr.ph.i.i.i.i1069

.lr.ph.i.i.i.i1069:                               ; preds = %bb.hi, %.lr.ph.i.i.i.i1069
  %.012.i.i.i.i1070 = phi ptr [ %.1.i.i.i.i1075, %.lr.ph.i.i.i.i1069 ], [ %i.brr, %bb.hi ] ; 3 uses
  %.0811.i.i.i.i1071 = phi ptr [ %.19.i.i.i.i1072, %.lr.ph.i.i.i.i1069 ], [ %i.gt, %bb.hi ] ; 2 uses
  %i.brs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i1070, i64 32 ; 2 uses
  %i.brt = load i64, ptr %i.brs, align 8
  %i.bru = load i64, ptr %i.bia, align 8
  %i.brv = call i64 @llvm.bswap.i64(i64 %i.brt)
  %i.brw = call i64 @llvm.bswap.i64(i64 %i.bru)
  %i.brx = icmp ult i64 %i.brv, %i.brw            ; 3 uses
  %.19.i.i.i.i1072 = select i1 %i.brx, ptr %.0811.i.i.i.i1071, ptr %.012.i.i.i.i1070 ; 5 uses
  %.1.in.v.i.i.i.i1073 = select i1 %i.brx, i64 24, i64 16
  %.1.in.i.i.i.i1074 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i1070, i64 %.1.in.v.i.i.i.i1073
  %.1.i.i.i.i1075 = load ptr, ptr %.1.in.i.i.i.i1074, align 8, !tbaa !701 ; 2 uses
  %.not.i.i.i.i1076 = icmp eq ptr %.1.i.i.i.i1075, null
  br i1 %.not.i.i.i.i1076, label %_ZNSt3mapIN4llvm6object10SectionRefESt6vectorINS0_12SymbolInfoTyESaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE11lower_boundERSA_.exit.i1077, label %.lr.ph.i.i.i.i1069, !llvm.loop !2825

_ZNSt3mapIN4llvm6object10SectionRefESt6vectorINS0_12SymbolInfoTyESaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE11lower_boundERSA_.exit.i1077: ; preds = %.lr.ph.i.i.i.i1069
  %i.bry = icmp eq ptr %.19.i.i.i.i1072, %i.gt
  br i1 %i.bry, label %.critedge.i1079, label %bb.hj

bb.hj:                                            ; preds = %_ZNSt3mapIN4llvm6object10SectionRefESt6vectorINS0_12SymbolInfoTyESaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE11lower_boundERSA_.exit.i1077
  %.0811.i.i.i.i1071.sroa.gep = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i1071, i64 32
  %.19.i.i.i.i1072.sroa.sel = select i1 %i.brx, ptr %.0811.i.i.i.i1071.sroa.gep, ptr %i.brs
  %i.brz = load i64, ptr %i.bia, align 8
  %i.bsa = load i64, ptr %.19.i.i.i.i1072.sroa.sel, align 8
  %i.bsb = call i64 @llvm.bswap.i64(i64 %i.brz)
  %i.bsc = call i64 @llvm.bswap.i64(i64 %i.bsa)
  %i.bsd = icmp ult i64 %i.bsb, %i.bsc
  br i1 %i.bsd, label %.critedge.i1079, label %_ZNSt3mapIN4llvm6object10SectionRefESt6vectorINS0_12SymbolInfoTyESaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEEixERSA_.exit1081

.critedge.i1079:                                  ; preds = %bb.hj, %_ZNSt3mapIN4llvm6object10SectionRefESt6vectorINS0_12SymbolInfoTyESaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE11lower_boundERSA_.exit.i1077, %bb.hi
  %.08.lcssa.i.i.i11.i1080 = phi ptr [ %.19.i.i.i.i1072, %bb.hj ], [ %.19.i.i.i.i1072, %_ZNSt3mapIN4llvm6object10SectionRefESt6vectorINS0_12SymbolInfoTyESaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE11lower_boundERSA_.exit.i1077 ], [ %i.gt, %bb.hi ]
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #34
  store ptr %i.bia, ptr %59, align 8, !tbaa !231
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #34
  %i.bse = call ptr @_ZNSt8_Rb_treeIN4llvm6object10SectionRefESt4pairIKS2_St6vectorINS0_12SymbolInfoTyESaIS6_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESK_IJEEEEESt17_Rb_tree_iteratorIS9_ESt23_Rb_tree_const_iteratorIS9_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %194, ptr %.08.lcssa.i.i.i11.i1080, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %59, ptr noundef nonnull align 1 dereferenceable(1) %60)
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #34
  br label %_ZNSt3mapIN4llvm6object10SectionRefESt6vectorINS0_12SymbolInfoTyESaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEEixERSA_.exit1081

_ZNSt3mapIN4llvm6object10SectionRefESt6vectorINS0_12SymbolInfoTyESaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEEixERSA_.exit1081: ; preds = %bb.hj, %.critedge.i1079
  %.sroa.06.0.i1078 = phi ptr [ %i.bse, %.critedge.i1079 ], [ %.19.i.i.i.i1072, %bb.hj ] ; 4 uses
  %i.bsf = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i1078, i64 48 ; 14 uses
  %i.bsg = load ptr, ptr %i.gz, align 8, !tbaa !698 ; 2 uses
  %.not10.i.i.i.i1082 = icmp eq ptr %i.bsg, null
  br i1 %.not10.i.i.i.i1082, label %.critedge.i1093, label %.lr.ph.i.i.i.i1083

.lr.ph.i.i.i.i1083:                               ; preds = %_ZNSt3mapIN4llvm6object10SectionRefESt6vectorINS0_12SymbolInfoTyESaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEEixERSA_.exit1081, %.lr.ph.i.i.i.i1083
  %.012.i.i.i.i1084 = phi ptr [ %.1.i.i.i.i1089, %.lr.ph.i.i.i.i1083 ], [ %i.bsg, %_ZNSt3mapIN4llvm6object10SectionRefESt6vectorINS0_12SymbolInfoTyESaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEEixERSA_.exit1081 ] ; 3 uses
  %.0811.i.i.i.i1085 = phi ptr [ %.19.i.i.i.i1086, %.lr.ph.i.i.i.i1083 ], [ %i.gy, %_ZNSt3mapIN4llvm6object10SectionRefESt6vectorINS0_12SymbolInfoTyESaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEEixERSA_.exit1081 ] ; 2 uses
  %i.bsh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i1084, i64 32 ; 2 uses
  %i.bsi = load i64, ptr %i.bsh, align 8
  %i.bsj = load i64, ptr %i.bia, align 8
  %i.bsk = call i64 @llvm.bswap.i64(i64 %i.bsi)
  %i.bsl = call i64 @llvm.bswap.i64(i64 %i.bsj)
  %i.bsm = icmp ult i64 %i.bsk, %i.bsl            ; 3 uses
  %.19.i.i.i.i1086 = select i1 %i.bsm, ptr %.0811.i.i.i.i1085, ptr %.012.i.i.i.i1084 ; 5 uses
  %.1.in.v.i.i.i.i1087 = select i1 %i.bsm, i64 24, i64 16
  %.1.in.i.i.i.i1088 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i1084, i64 %.1.in.v.i.i.i.i1087
  %.1.i.i.i.i1089 = load ptr, ptr %.1.in.i.i.i.i1088, align 8, !tbaa !701 ; 2 uses
  %.not.i.i.i.i1090 = icmp eq ptr %.1.i.i.i.i1089, null
  br i1 %.not.i.i.i.i1090, label %_ZNSt3mapIN4llvm6object10SectionRefENS0_11SmallVectorISt4pairImcELj0EEESt4lessIS2_ESaIS4_IKS2_S6_EEE11lower_boundERS9_.exit.i1091, label %.lr.ph.i.i.i.i1083, !llvm.loop !2824

_ZNSt3mapIN4llvm6object10SectionRefENS0_11SmallVectorISt4pairImcELj0EEESt4lessIS2_ESaIS4_IKS2_S6_EEE11lower_boundERS9_.exit.i1091: ; preds = %.lr.ph.i.i.i.i1083
  %i.bsn = icmp eq ptr %.19.i.i.i.i1086, %i.gy
  br i1 %i.bsn, label %.critedge.i1093, label %bb.hk

bb.hk:                                            ; preds = %_ZNSt3mapIN4llvm6object10SectionRefENS0_11SmallVectorISt4pairImcELj0EEESt4lessIS2_ESaIS4_IKS2_S6_EEE11lower_boundERS9_.exit.i1091
  %.0811.i.i.i.i1085.sroa.gep = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i1085, i64 32
  %.19.i.i.i.i1086.sroa.sel = select i1 %i.bsm, ptr %.0811.i.i.i.i1085.sroa.gep, ptr %i.bsh
  %i.bso = load i64, ptr %i.bia, align 8
  %i.bsp = load i64, ptr %.19.i.i.i.i1086.sroa.sel, align 8
  %i.bsq = call i64 @llvm.bswap.i64(i64 %i.bso)
  %i.bsr = call i64 @llvm.bswap.i64(i64 %i.bsp)
  %i.bss = icmp ult i64 %i.bsq, %i.bsr
  br i1 %i.bss, label %.critedge.i1093, label %_ZNSt3mapIN4llvm6object10SectionRefENS0_11SmallVectorISt4pairImcELj0EEESt4lessIS2_ESaIS4_IKS2_S6_EEEixERS9_.exit1095

.critedge.i1093:                                  ; preds = %bb.hk, %_ZNSt3mapIN4llvm6object10SectionRefENS0_11SmallVectorISt4pairImcELj0EEESt4lessIS2_ESaIS4_IKS2_S6_EEE11lower_boundERS9_.exit.i1091, %_ZNSt3mapIN4llvm6object10SectionRefESt6vectorINS0_12SymbolInfoTyESaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEEixERSA_.exit1081
  %.08.lcssa.i.i.i11.i1094 = phi ptr [ %.19.i.i.i.i1086, %bb.hk ], [ %.19.i.i.i.i1086, %_ZNSt3mapIN4llvm6object10SectionRefENS0_11SmallVectorISt4pairImcELj0EEESt4lessIS2_ESaIS4_IKS2_S6_EEE11lower_boundERS9_.exit.i1091 ], [ %i.gy, %_ZNSt3mapIN4llvm6object10SectionRefESt6vectorINS0_12SymbolInfoTyESaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEEixERSA_.exit1081 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #34
  store ptr %i.bia, ptr %57, align 8, !tbaa !231
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #34
  %i.bst = call ptr @_ZNSt8_Rb_treeIN4llvm6object10SectionRefESt4pairIKS2_NS0_11SmallVectorIS3_ImcELj0EEEESt10_Select1stIS8_ESt4lessIS2_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %195, ptr %.08.lcssa.i.i.i11.i1094, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %57, ptr noundef nonnull align 1 dereferenceable(1) %58)
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #34
  br label %_ZNSt3mapIN4llvm6object10SectionRefENS0_11SmallVectorISt4pairImcELj0EEESt4lessIS2_ESaIS4_IKS2_S6_EEEixERS9_.exit1095

_ZNSt3mapIN4llvm6object10SectionRefENS0_11SmallVectorISt4pairImcELj0EEESt4lessIS2_ESaIS4_IKS2_S6_EEEixERS9_.exit1095: ; preds = %bb.hk, %.critedge.i1093
  %.sroa.06.0.i1092 = phi ptr [ %i.bst, %.critedge.i1093 ], [ %.19.i.i.i.i1086, %bb.hk ] ; 2 uses
  %i.bsu = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i1092, i64 48 ; 2 uses
  %i.bsv = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i1092, i64 56 ; 2 uses
  %i.bsw = load i32, ptr %i.bsv, align 8, !tbaa !226 ; 2 uses
  %.not.i.i.i.i1096 = icmp eq i32 %i.bsw, 0
  br i1 %.not.i.i.i.i1096, label %_ZN4llvm4sortIRNS_11SmallVectorISt4pairImcELj0EEEEEvOT_.exit, label %bb.hl

bb.hl:                                            ; preds = %_ZNSt3mapIN4llvm6object10SectionRefENS0_11SmallVectorISt4pairImcELj0EEESt4lessIS2_ESaIS4_IKS2_S6_EEEixERS9_.exit1095
  %i.bsx = zext i32 %i.bsw to i64                 ; 2 uses
  %.idx.i1097 = shl nuw nsw i64 %i.bsx, 4
  %i.bsy = load ptr, ptr %i.bsu, align 8, !tbaa !225 ; 3 uses
  %i.bsz = getelementptr inbounds nuw i8, ptr %i.bsy, i64 %.idx.i1097 ; 2 uses
  %i.bta = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bsx, i1 true)
  %i.btb = shl nuw nsw i64 %i.bta, 1
  %i.btc = xor i64 %i.btb, 126
  call void @_ZSt16__introsort_loopIPSt4pairImcElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_T1_(ptr noundef %i.bsy, ptr noundef nonnull %i.bsz, i64 noundef %i.btc)
  call void @_ZSt22__final_insertion_sortIPSt4pairImcEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_(ptr noundef %i.bsy, ptr noundef nonnull %i.bsz)
  br label %_ZN4llvm4sortIRNS_11SmallVectorISt4pairImcELj0EEEEEvOT_.exit

_ZN4llvm4sortIRNS_11SmallVectorISt4pairImcELj0EEEEEvOT_.exit: ; preds = %_ZNSt3mapIN4llvm6object10SectionRefENS0_11SmallVectorISt4pairImcELj0EEESt4lessIS2_ESaIS4_IKS2_S6_EEEixERS9_.exit1095, %bb.hl
  call void @llvm.lifetime.start.p0(ptr nonnull %241) #34
  store ptr %i.bih, ptr %241, align 8, !tbaa !225
  store i32 0, ptr %i.bii, align 8, !tbaa !226
  store i32 0, ptr %i.bij, align 4, !tbaa !227
  br i1 %.not, label %_ZN4llvm4sortIRNS_11SmallVectorISt4pairImPN12_GLOBAL__N_118DisassemblerTargetEELj0EEEEEvOT_.exit, label %bb.hm

bb.hm:                                            ; preds = %_ZN4llvm4sortIRNS_11SmallVectorISt4pairImcELj0EEEEEvOT_.exit
  %273 = call fastcc noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3mapIN4llvm6object10SectionRefENS0_11SmallVectorISt4pairImPN12_GLOBAL__N_118DisassemblerTargetEELj0EEESt4lessIS2_ESaIS4_IKS2_S9_EEEixERSC_(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.02046.0, ptr noundef nonnull align 8 dereferenceable(16) %i.bia) ; 6 uses
  %.val724.pre = load ptr, ptr %273, align 8, !tbaa !225 ; 14 uses
  %.phi.trans.insert.a = getelementptr inbounds nuw i8, ptr %273, i64 8
  %.val725.pre = load i32, ptr %.phi.trans.insert.a, align 8, !tbaa !226 ; 4 uses
  %i.btd = zext i32 %.val725.pre to i64           ; 2 uses
  %.idx.i1098 = shl nuw nsw i64 %i.btd, 4
  %i.bte = getelementptr inbounds nuw i8, ptr %.val724.pre, i64 %.idx.i1098 ; 3 uses
  %.not.i.i.i.i1099 = icmp eq i32 %.val725.pre, 0
  br i1 %.not.i.i.i.i1099, label %_ZN4llvm4sortIRNS_11SmallVectorISt4pairImPN12_GLOBAL__N_118DisassemblerTargetEELj0EEEEEvOT_.exit, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.btf = ptrtoint ptr %.val724.pre to i64
  %i.btg = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.btd, i1 true)
  %i.bth = shl nuw nsw i64 %i.btg, 1
  %i.bti = xor i64 %i.bth, 126
  call fastcc void @_ZSt16__introsort_loopIPSt4pairImPN12_GLOBAL__N_118DisassemblerTargetEElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr noundef %.val724.pre, ptr noundef nonnull %i.bte, i64 noundef %i.bti)
  %i.btj = icmp ugt i32 %.val725.pre, 16
  br i1 %i.btj, label %bb.ho, label %.preheader.i.i.i.i.i.i

bb.ho:                                            ; preds = %bb.hn
  %i.btk = getelementptr i8, ptr %.val724.pre, i64 8 ; 2 uses
  br label %bb.hp

bb.hp:                                            ; preds = %bb.hr, %bb.ho
  %indvar = phi i64 [ %indvar.next, %bb.hr ], [ 0, %bb.ho ] ; 2 uses
  %.023.i.idx.i.i.i.i.i = phi i64 [ %.023.i.add.i.i.i.i.i, %bb.hr ], [ 16, %bb.ho ] ; 3 uses
  %.pn22.i.i.i.i.i.i = phi ptr [ %.023.i.ptr.i.i.i.i.i, %bb.hr ], [ %.val724.pre, %bb.ho ] ; 5 uses
  %.023.i.ptr.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val724.pre, i64 %.023.i.idx.i.i.i.i.i ; 6 uses
  %.0.val.i.i.i.i.i.i = load i64, ptr %.023.i.ptr.i.i.i.i.i, align 8, !tbaa !725 ; 8 uses
  %i.btl = getelementptr i8, ptr %.pn22.i.i.i.i.i.i, i64 24
  %.0.val16.i.i.i.i.i.i = load ptr, ptr %i.btl, align 8 ; 5 uses
  %.val.i.i.i.i.i.i = load i64, ptr %.val724.pre, align 8, !tbaa !725 ; 2 uses
  %.val17.i.i.i.i.i.i = load ptr, ptr %i.btk, align 8
  %i.btm = icmp ult i64 %.0.val.i.i.i.i.i.i, %.val.i.i.i.i.i.i
  %i.btn = icmp uge i64 %.val.i.i.i.i.i.i, %.0.val.i.i.i.i.i.i
  %i.bto = icmp ult ptr %.0.val16.i.i.i.i.i.i, %.val17.i.i.i.i.i.i
  %spec.select.i.i.i.i.i.i.i.i = select i1 %i.btn, i1 %i.bto, i1 false
  %i.btp = select i1 %i.btm, i1 true, i1 %spec.select.i.i.i.i.i.i.i.i
  br i1 %i.btp, label %.lr.ph.i.i.i.i.i.preheader.i.i.i.i.i.i, label %bb.hq

.lr.ph.i.i.i.i.i.preheader.i.i.i.i.i.i:           ; preds = %bb.hp
  %i.btq = lshr exact i64 %.023.i.idx.i.i.i.i.i, 4 ; 3 uses
  %i.btr = getelementptr inbounds nuw i8, ptr %.pn22.i.i.i.i.i.i, i64 32 ; 2 uses
  %xtraiter4814 = and i64 %i.btq, 3               ; 2 uses
  %lcmp.mod4815.not = icmp eq i64 %xtraiter4814, 0
  br i1 %lcmp.mod4815.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol:                ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol
  %.011.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.btw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %i.btq, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i.i.i ]
  %.0610.i.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.btt, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %i.btr, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i.i.i ] ; 2 uses
  %.079.i.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.bts, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.023.i.ptr.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i.i.i ] ; 2 uses
  %prol.iter4816 = phi i64 [ %prol.iter4816.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i.i.i ]
  %i.bts = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i.i.i.i.i.i.prol, i64 -16 ; 3 uses
  %i.btt = getelementptr inbounds i8, ptr %.0610.i.i.i.i.i.i.i.i.i.i.i.prol, i64 -16 ; 3 uses
  %.val.i.i.i.i.i.i.i.i.i.i.i.prol = load i64, ptr %i.bts, align 8, !tbaa !145
  %i.btu = getelementptr i8, ptr %.079.i.i.i.i.i.i.i.i.i.i.i.prol, i64 -8
  %.val8.i.i.i.i.i.i.i.i.i.i.i.prol = load ptr, ptr %i.btu, align 8, !tbaa !726
  store i64 %.val.i.i.i.i.i.i.i.i.i.i.i.prol, ptr %i.btt, align 8, !tbaa !725
  %i.btv = getelementptr inbounds i8, ptr %.0610.i.i.i.i.i.i.i.i.i.i.i.prol, i64 -8
  store ptr %.val8.i.i.i.i.i.i.i.i.i.i.i.prol, ptr %i.btv, align 8, !tbaa !727
  %i.btw = add nsw i64 %.011.i.i.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %prol.iter4816.next = add i64 %prol.iter4816, 1 ; 2 uses
  %prol.iter4816.cmp.not = icmp eq i64 %prol.iter4816.next, %xtraiter4814
  br i1 %prol.iter4816.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !3025

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i.i.i
  %.011.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.btq, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i.i.i ], [ %i.btw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %.0610.i.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.btr, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i.i.i ], [ %i.btt, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %.079.i.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %.023.i.ptr.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i.i.i ], [ %i.bts, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.btx = icmp ult i64 %indvar, 3
  br i1 %i.btx, label %_ZSt13move_backwardIPSt4pairImPN12_GLOBAL__N_118DisassemblerTargetEES5_ET0_T_S7_S6_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.011.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.buo, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.011.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.0610.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bul, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.0610.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %.079.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.buk, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.079.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %i.bty = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i.i.i.i.i.i, i64 -16
  %i.btz = getelementptr inbounds i8, ptr %.0610.i.i.i.i.i.i.i.i.i.i.i, i64 -16
  %.val.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bty, align 8, !tbaa !145
  %i.bua = getelementptr i8, ptr %.079.i.i.i.i.i.i.i.i.i.i.i, i64 -8
  %.val8.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bua, align 8, !tbaa !726
  store i64 %.val.i.i.i.i.i.i.i.i.i.i.i, ptr %i.btz, align 8, !tbaa !725
  %i.bub = getelementptr inbounds i8, ptr %.0610.i.i.i.i.i.i.i.i.i.i.i, i64 -8
  store ptr %.val8.i.i.i.i.i.i.i.i.i.i.i, ptr %i.bub, align 8, !tbaa !727
  %i.buc = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i.i.i.i.i.i, i64 -32
  %i.bud = getelementptr inbounds i8, ptr %.0610.i.i.i.i.i.i.i.i.i.i.i, i64 -32
  %.val.i.i.i.i.i.i.i.i.i.i.i.1 = load i64, ptr %i.buc, align 8, !tbaa !145
  %i.bue = getelementptr i8, ptr %.079.i.i.i.i.i.i.i.i.i.i.i, i64 -24
  %.val8.i.i.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.bue, align 8, !tbaa !726
  store i64 %.val.i.i.i.i.i.i.i.i.i.i.i.1, ptr %i.bud, align 8, !tbaa !725
  %i.buf = getelementptr inbounds i8, ptr %.0610.i.i.i.i.i.i.i.i.i.i.i, i64 -24
  store ptr %.val8.i.i.i.i.i.i.i.i.i.i.i.1, ptr %i.buf, align 8, !tbaa !727
  %i.bug = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i.i.i.i.i.i, i64 -48
  %i.buh = getelementptr inbounds i8, ptr %.0610.i.i.i.i.i.i.i.i.i.i.i, i64 -48
  %.val.i.i.i.i.i.i.i.i.i.i.i.2 = load i64, ptr %i.bug, align 8, !tbaa !145
  %i.bui = getelementptr i8, ptr %.079.i.i.i.i.i.i.i.i.i.i.i, i64 -40
  %.val8.i.i.i.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.bui, align 8, !tbaa !726
  store i64 %.val.i.i.i.i.i.i.i.i.i.i.i.2, ptr %i.buh, align 8, !tbaa !725
  %i.buj = getelementptr inbounds i8, ptr %.0610.i.i.i.i.i.i.i.i.i.i.i, i64 -40
  store ptr %.val8.i.i.i.i.i.i.i.i.i.i.i.2, ptr %i.buj, align 8, !tbaa !727
  %i.buk = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i.i.i.i.i.i, i64 -64 ; 2 uses
  %i.bul = getelementptr inbounds i8, ptr %.0610.i.i.i.i.i.i.i.i.i.i.i, i64 -64 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i.i.i.3 = load i64, ptr %i.buk, align 8, !tbaa !145
  %i.bum = getelementptr i8, ptr %.079.i.i.i.i.i.i.i.i.i.i.i, i64 -56
  %.val8.i.i.i.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.bum, align 8, !tbaa !726
  store i64 %.val.i.i.i.i.i.i.i.i.i.i.i.3, ptr %i.bul, align 8, !tbaa !725
  %i.bun = getelementptr inbounds i8, ptr %.0610.i.i.i.i.i.i.i.i.i.i.i, i64 -56
  store ptr %.val8.i.i.i.i.i.i.i.i.i.i.i.3, ptr %i.bun, align 8, !tbaa !727
  %i.buo = add nsw i64 %.011.i.i.i.i.i.i.i.i.i.i.i, -4
  %i.bup = icmp sgt i64 %.011.i.i.i.i.i.i.i.i.i.i.i, 4
  br i1 %i.bup, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt13move_backwardIPSt4pairImPN12_GLOBAL__N_118DisassemblerTargetEES5_ET0_T_S7_S6_.exit.i.i.i.i.i.i, !llvm.loop !3026

_ZSt13move_backwardIPSt4pairImPN12_GLOBAL__N_118DisassemblerTargetEES5_ET0_T_S7_S6_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit
  store i64 %.0.val.i.i.i.i.i.i, ptr %.val724.pre, align 8, !tbaa !725
  store ptr %.0.val16.i.i.i.i.i.i, ptr %i.btk, align 8, !tbaa !727
  br label %bb.hr

bb.hq:                                            ; preds = %bb.hp
  %.0.val1417.i.i.i.i.i.i.i = load i64, ptr %.pn22.i.i.i.i.i.i, align 8, !tbaa !725 ; 3 uses
  %i.buq = getelementptr i8, ptr %.pn22.i.i.i.i.i.i, i64 8
  %.0.val1518.i.i.i.i.i.i.i = load ptr, ptr %i.buq, align 8 ; 2 uses
  %i.bur = icmp ult i64 %.0.val.i.i.i.i.i.i, %.0.val1417.i.i.i.i.i.i.i
  %i.bus = icmp uge i64 %.0.val1417.i.i.i.i.i.i.i, %.0.val.i.i.i.i.i.i
  %i.but = icmp ult ptr %.0.val16.i.i.i.i.i.i, %.0.val1518.i.i.i.i.i.i.i
  %spec.select.i.i19.i.i.i.i.i.i.i = select i1 %i.bus, i1 %i.but, i1 false
  %i.buu = select i1 %i.bur, i1 true, i1 %spec.select.i.i19.i.i.i.i.i.i.i
  br i1 %i.buu, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt25__unguarded_linear_insertIPSt4pairImPN12_GLOBAL__N_118DisassemblerTargetEEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.hq, %.lr.ph.i.i.i.i.i.i.i
  %.0.val1523.i.i.i.i.i.i.i = phi ptr [ %.0.val15.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %.0.val1518.i.i.i.i.i.i.i, %bb.hq ]
  %.0.val1422.i.i.i.i.i.i.i = phi i64 [ %.0.val14.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %.0.val1417.i.i.i.i.i.i.i, %bb.hq ]
  %.021.i.i.i.i.i.i.i = phi ptr [ %.0.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %.pn22.i.i.i.i.i.i, %bb.hq ] ; 4 uses
  %.0920.i.i.i.i.i.i.i = phi ptr [ %.021.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %.023.i.ptr.i.i.i.i.i, %bb.hq ] ; 2 uses
  store i64 %.0.val1422.i.i.i.i.i.i.i, ptr %.0920.i.i.i.i.i.i.i, align 8, !tbaa !725
  %i.buv = getelementptr inbounds nuw i8, ptr %.0920.i.i.i.i.i.i.i, i64 8
  store ptr %.0.val1523.i.i.i.i.i.i.i, ptr %i.buv, align 8, !tbaa !727
  %.0.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.021.i.i.i.i.i.i.i, i64 -16 ; 2 uses
  %.0.val14.i.i.i.i.i.i.i = load i64, ptr %.0.i.i.i.i.i.i.i, align 8, !tbaa !725 ; 3 uses
  %i.buw = getelementptr i8, ptr %.021.i.i.i.i.i.i.i, i64 -8
  %.0.val15.i.i.i.i.i.i.i = load ptr, ptr %i.buw, align 8 ; 2 uses
  %i.bux = icmp ult i64 %.0.val.i.i.i.i.i.i, %.0.val14.i.i.i.i.i.i.i
  %i.buy = icmp uge i64 %.0.val14.i.i.i.i.i.i.i, %.0.val.i.i.i.i.i.i
  %i.buz = icmp ult ptr %.0.val16.i.i.i.i.i.i, %.0.val15.i.i.i.i.i.i.i
  %spec.select.i.i.i.i.i.i.i.i.i1102 = select i1 %i.buy, i1 %i.buz, i1 false
  %i.bva = select i1 %i.bux, i1 true, i1 %spec.select.i.i.i.i.i.i.i.i.i1102
  br i1 %i.bva, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt25__unguarded_linear_insertIPSt4pairImPN12_GLOBAL__N_118DisassemblerTargetEEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i.i.i, !llvm.loop !3027

_ZSt25__unguarded_linear_insertIPSt4pairImPN12_GLOBAL__N_118DisassemblerTargetEEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.hq
  %.09.lcssa.i.i.i.i.i.i.i = phi ptr [ %.023.i.ptr.i.i.i.i.i, %bb.hq ], [ %.021.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  store i64 %.0.val.i.i.i.i.i.i, ptr %.09.lcssa.i.i.i.i.i.i.i, align 8, !tbaa !725
  %i.bvb = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i.i.i.i.i.i, i64 8
  store ptr %.0.val16.i.i.i.i.i.i, ptr %i.bvb, align 8, !tbaa !727
  br label %bb.hr

bb.hr:                                            ; preds = %_ZSt25__unguarded_linear_insertIPSt4pairImPN12_GLOBAL__N_118DisassemblerTargetEEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i.i.i, %_ZSt13move_backwardIPSt4pairImPN12_GLOBAL__N_118DisassemblerTargetEES5_ET0_T_S7_S6_.exit.i.i.i.i.i.i
  %.023.i.add.i.i.i.i.i = add nuw nsw i64 %.023.i.idx.i.i.i.i.i, 16 ; 2 uses
  %.not.i.i.i.i.i.i1100 = icmp eq i64 %.023.i.add.i.i.i.i.i, 256
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i.i.i.i.i1100, label %_ZSt16__insertion_sortIPSt4pairImPN12_GLOBAL__N_118DisassemblerTargetEEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S9_T0_.exit.i.i.i.i.i, label %bb.hp, !llvm.loop !3028

_ZSt16__insertion_sortIPSt4pairImPN12_GLOBAL__N_118DisassemblerTargetEEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S9_T0_.exit.i.i.i.i.i: ; preds = %bb.hr
  %i.bvc = getelementptr inbounds nuw i8, ptr %.val724.pre, i64 256
  br label %.lr.ph.i.i.i.i.i.i1101

.lr.ph.i.i.i.i.i.i1101:                           ; preds = %_ZSt25__unguarded_linear_insertIPSt4pairImPN12_GLOBAL__N_118DisassemblerTargetEEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i11.i.i.i.i.i, %_ZSt16__insertion_sortIPSt4pairImPN12_GLOBAL__N_118DisassemblerTargetEEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S9_T0_.exit.i.i.i.i.i
  %.06.i.i.i.i.i.i = phi ptr [ %i.bvp, %_ZSt25__unguarded_linear_insertIPSt4pairImPN12_GLOBAL__N_118DisassemblerTargetEEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i11.i.i.i.i.i ], [ %i.bvc, %_ZSt16__insertion_sortIPSt4pairImPN12_GLOBAL__N_118DisassemblerTargetEEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S9_T0_.exit.i.i.i.i.i ] ; 7 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.06.i.i.i.i.i.i, align 8 ; 5 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i, i64 8
  %.sroa.5.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8 ; 3 uses
  %.016.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.06.i.i.i.i.i.i, i64 -16 ; 2 uses
  %.0.val1417.i.i8.i.i.i.i.i = load i64, ptr %.016.i.i.i.i.i.i.i, align 8, !tbaa !725 ; 3 uses
  %i.bvd = getelementptr i8, ptr %.06.i.i.i.i.i.i, i64 -8
  %.0.val1518.i.i9.i.i.i.i.i = load ptr, ptr %i.bvd, align 8 ; 2 uses
  %i.bve = icmp ult i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, %.0.val1417.i.i8.i.i.i.i.i
  %i.bvf = icmp uge i64 %.0.val1417.i.i8.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i.i
  %i.bvg = icmp ult ptr %.sroa.5.0.copyload.i.i.i.i.i.i.i, %.0.val1518.i.i9.i.i.i.i.i
  %spec.select.i.i19.i.i10.i.i.i.i.i = select i1 %i.bvf, i1 %i.bvg, i1 false
  %i.bvh = select i1 %i.bve, i1 true, i1 %spec.select.i.i19.i.i10.i.i.i.i.i
  br i1 %i.bvh, label %.lr.ph.i.i14.i.i.i.i.i, label %_ZSt25__unguarded_linear_insertIPSt4pairImPN12_GLOBAL__N_118DisassemblerTargetEEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i11.i.i.i.i.i

.lr.ph.i.i14.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i1101, %.lr.ph.i.i14.i.i.i.i.i
  %.0.val1523.i.i15.i.i.i.i.i = phi ptr [ %.0.val15.i.i21.i.i.i.i.i, %.lr.ph.i.i14.i.i.i.i.i ], [ %.0.val1518.i.i9.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i1101 ]
  %.0.val1422.i.i16.i.i.i.i.i = phi i64 [ %.0.val14.i.i20.i.i.i.i.i, %.lr.ph.i.i14.i.i.i.i.i ], [ %.0.val1417.i.i8.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i1101 ]
  %.021.i.i17.i.i.i.i.i = phi ptr [ %.0.i.i19.i.i.i.i.i, %.lr.ph.i.i14.i.i.i.i.i ], [ %.016.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i1101 ] ; 4 uses
  %.0920.i.i18.i.i.i.i.i = phi ptr [ %.021.i.i17.i.i.i.i.i, %.lr.ph.i.i14.i.i.i.i.i ], [ %.06.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i1101 ] ; 2 uses
  store i64 %.0.val1422.i.i16.i.i.i.i.i, ptr %.0920.i.i18.i.i.i.i.i, align 8, !tbaa !725
  %i.bvi = getelementptr inbounds nuw i8, ptr %.0920.i.i18.i.i.i.i.i, i64 8
  store ptr %.0.val1523.i.i15.i.i.i.i.i, ptr %i.bvi, align 8, !tbaa !727
  %.0.i.i19.i.i.i.i.i = getelementptr inbounds i8, ptr %.021.i.i17.i.i.i.i.i, i64 -16 ; 2 uses
  %.0.val14.i.i20.i.i.i.i.i = load i64, ptr %.0.i.i19.i.i.i.i.i, align 8, !tbaa !725 ; 3 uses
  %i.bvj = getelementptr i8, ptr %.021.i.i17.i.i.i.i.i, i64 -8
  %.0.val15.i.i21.i.i.i.i.i = load ptr, ptr %i.bvj, align 8 ; 2 uses
  %i.bvk = icmp ult i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, %.0.val14.i.i20.i.i.i.i.i
  %i.bvl = icmp uge i64 %.0.val14.i.i20.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i.i
  %i.bvm = icmp ult ptr %.sroa.5.0.copyload.i.i.i.i.i.i.i, %.0.val15.i.i21.i.i.i.i.i
  %spec.select.i.i.i.i22.i.i.i.i.i = select i1 %i.bvl, i1 %i.bvm, i1 false
  %i.bvn = select i1 %i.bvk, i1 true, i1 %spec.select.i.i.i.i22.i.i.i.i.i
  br i1 %i.bvn, label %.lr.ph.i.i14.i.i.i.i.i, label %_ZSt25__unguarded_linear_insertIPSt4pairImPN12_GLOBAL__N_118DisassemblerTargetEEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i11.i.i.i.i.i, !llvm.loop !3027

_ZSt25__unguarded_linear_insertIPSt4pairImPN12_GLOBAL__N_118DisassemblerTargetEEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i11.i.i.i.i.i: ; preds = %.lr.ph.i.i14.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i1101
  %.09.lcssa.i.i12.i.i.i.i.i = phi ptr [ %.06.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i1101 ], [ %.021.i.i17.i.i.i.i.i, %.lr.ph.i.i14.i.i.i.i.i ] ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, ptr %.09.lcssa.i.i12.i.i.i.i.i, align 8, !tbaa !725
  %i.bvo = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i12.i.i.i.i.i, i64 8
  store ptr %.sroa.5.0.copyload.i.i.i.i.i.i.i, ptr %i.bvo, align 8, !tbaa !727
  %i.bvp = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i13.i.i.i.i.i = icmp eq ptr %i.bvp, %i.bte
  br i1 %.not.i13.i.i.i.i.i, label %_ZN4llvm4sortIRNS_11SmallVectorISt4pairImPN12_GLOBAL__N_118DisassemblerTargetEELj0EEEEEvOT_.exit, label %.lr.ph.i.i.i.i.i.i1101, !llvm.loop !3029

.preheader.i.i.i.i.i.i:                           ; preds = %bb.hn
  %.not21.i.i.i.i.i.i = icmp eq i32 %.val725.pre, 1
  br i1 %.not21.i.i.i.i.i.i, label %_ZN4llvm4sortIRNS_11SmallVectorISt4pairImPN12_GLOBAL__N_118DisassemblerTargetEELj0EEEEEvOT_.exit, label %.lr.ph.i24.i.i.i.i.i

.lr.ph.i24.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i.i
  %.020.i23.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val724.pre, i64 16
  %i.bvq = getelementptr i8, ptr %.val724.pre, i64 8 ; 2 uses
  br label %bb.hs

bb.hs:                                            ; preds = %bb.hv, %.lr.ph.i24.i.i.i.i.i
  %.023.i25.i.i.i.i.i = phi ptr [ %.020.i23.i.i.i.i.i, %.lr.ph.i24.i.i.i.i.i ], [ %.0.i37.i.i.i.i.i, %bb.hv ] ; 8 uses
  %.pn22.i26.i.i.i.i.i = phi ptr [ %.val724.pre, %.lr.ph.i24.i.i.i.i.i ], [ %.023.i25.i.i.i.i.i, %bb.hv ] ; 5 uses
  %.0.val.i27.i.i.i.i.i = load i64, ptr %.023.i25.i.i.i.i.i, align 8, !tbaa !725 ; 8 uses
  %i.bvr = getelementptr i8, ptr %.pn22.i26.i.i.i.i.i, i64 24
  %.0.val16.i28.i.i.i.i.i = load ptr, ptr %i.bvr, align 8 ; 5 uses
  %.val.i29.i.i.i.i.i = load i64, ptr %.val724.pre, align 8, !tbaa !725 ; 2 uses
  %.val17.i30.i.i.i.i.i = load ptr, ptr %i.bvq, align 8
  %i.bvs = icmp ult i64 %.0.val.i27.i.i.i.i.i, %.val.i29.i.i.i.i.i
  %i.bvt = icmp uge i64 %.val.i29.i.i.i.i.i, %.0.val.i27.i.i.i.i.i
  %i.bvu = icmp ult ptr %.0.val16.i28.i.i.i.i.i, %.val17.i30.i.i.i.i.i
  %spec.select.i.i.i31.i.i.i.i.i = select i1 %i.bvt, i1 %i.bvu, i1 false
  %i.bvv = select i1 %i.bvs, i1 true, i1 %spec.select.i.i.i31.i.i.i.i.i
  br i1 %i.bvv, label %bb.ht, label %bb.hu

bb.ht:                                            ; preds = %bb.hs
  %i.bvw = ptrtoint ptr %.023.i25.i.i.i.i.i to i64
  %i.bvx = sub i64 %i.bvw, %i.btf
  %i.bvy = ashr exact i64 %i.bvx, 4               ; 5 uses
  %i.bvz = icmp sgt i64 %i.bvy, 0
  br i1 %i.bvz, label %.lr.ph.i.i.i.i.i.preheader.i49.i.i.i.i.i, label %_ZSt13move_backwardIPSt4pairImPN12_GLOBAL__N_118DisassemblerTargetEES5_ET0_T_S7_S6_.exit.i48.i.i.i.i.i

.lr.ph.i.i.i.i.i.preheader.i49.i.i.i.i.i:         ; preds = %bb.ht
  %i.bwa = getelementptr inbounds nuw i8, ptr %.pn22.i26.i.i.i.i.i, i64 32 ; 2 uses
  %xtraiter = and i64 %i.bvy, 3                   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i50.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i50.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i50.i.i.i.i.i.prol:              ; preds = %.lr.ph.i.i.i.i.i.preheader.i49.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i50.i.i.i.i.i.prol
  %.011.i.i.i.i.i.i51.i.i.i.i.i.prol = phi i64 [ %i.bwf, %.lr.ph.i.i.i.i.i.i50.i.i.i.i.i.prol ], [ %i.bvy, %.lr.ph.i.i.i.i.i.preheader.i49.i.i.i.i.i ]
  %.0610.i.i.i.i.i.i52.i.i.i.i.i.prol = phi ptr [ %i.bwc, %.lr.ph.i.i.i.i.i.i50.i.i.i.i.i.prol ], [ %i.bwa, %.lr.ph.i.i.i.i.i.preheader.i49.i.i.i.i.i ] ; 2 uses
  %.079.i.i.i.i.i.i53.i.i.i.i.i.prol = phi ptr [ %i.bwb, %.lr.ph.i.i.i.i.i.i50.i.i.i.i.i.prol ], [ %.023.i25.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader.i49.i.i.i.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i50.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i49.i.i.i.i.i ]
  %i.bwb = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i53.i.i.i.i.i.prol, i64 -16 ; 3 uses
  %i.bwc = getelementptr inbounds i8, ptr %.0610.i.i.i.i.i.i52.i.i.i.i.i.prol, i64 -16 ; 3 uses
  %.val.i.i.i.i.i.i54.i.i.i.i.i.prol = load i64, ptr %i.bwb, align 8, !tbaa !145
  %i.bwd = getelementptr i8, ptr %.079.i.i.i.i.i.i53.i.i.i.i.i.prol, i64 -8
  %.val8.i.i.i.i.i.i55.i.i.i.i.i.prol = load ptr, ptr %i.bwd, align 8, !tbaa !726
  store i64 %.val.i.i.i.i.i.i54.i.i.i.i.i.prol, ptr %i.bwc, align 8, !tbaa !725
  %i.bwe = getelementptr inbounds i8, ptr %.0610.i.i.i.i.i.i52.i.i.i.i.i.prol, i64 -8
  store ptr %.val8.i.i.i.i.i.i55.i.i.i.i.i.prol, ptr %i.bwe, align 8, !tbaa !727
  %i.bwf = add nsw i64 %.011.i.i.i.i.i.i51.i.i.i.i.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i50.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i50.i.i.i.i.i.prol, !llvm.loop !3030

.lr.ph.i.i.i.i.i.i50.i.i.i.i.i.prol.loopexit:     ; preds = %.lr.ph.i.i.i.i.i.i50.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader.i49.i.i.i.i.i
  %.011.i.i.i.i.i.i51.i.i.i.i.i.unr = phi i64 [ %i.bvy, %.lr.ph.i.i.i.i.i.preheader.i49.i.i.i.i.i ], [ %i.bwf, %.lr.ph.i.i.i.i.i.i50.i.i.i.i.i.prol ]
  %.0610.i.i.i.i.i.i52.i.i.i.i.i.unr = phi ptr [ %i.bwa, %.lr.ph.i.i.i.i.i.preheader.i49.i.i.i.i.i ], [ %i.bwc, %.lr.ph.i.i.i.i.i.i50.i.i.i.i.i.prol ]
  %.079.i.i.i.i.i.i53.i.i.i.i.i.unr = phi ptr [ %.023.i25.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader.i49.i.i.i.i.i ], [ %i.bwb, %.lr.ph.i.i.i.i.i.i50.i.i.i.i.i.prol ]
  %i.bwg = icmp ult i64 %i.bvy, 4
  br i1 %i.bwg, label %_ZSt13move_backwardIPSt4pairImPN12_GLOBAL__N_118DisassemblerTargetEES5_ET0_T_S7_S6_.exit.i48.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i50.i.i.i.i.i

.lr.ph.i.i.i.i.i.i50.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i50.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i50.i.i.i.i.i
  %.011.i.i.i.i.i.i51.i.i.i.i.i = phi i64 [ %i.bwx, %.lr.ph.i.i.i.i.i.i50.i.i.i.i.i ], [ %.011.i.i.i.i.i.i51.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i50.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.0610.i.i.i.i.i.i52.i.i.i.i.i = phi ptr [ %i.bwu, %.lr.ph.i.i.i.i.i.i50.i.i.i.i.i ], [ %.0610.i.i.i.i.i.i52.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i50.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %.079.i.i.i.i.i.i53.i.i.i.i.i = phi ptr [ %i.bwt, %.lr.ph.i.i.i.i.i.i50.i.i.i.i.i ], [ %.079.i.i.i.i.i.i53.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i50.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %i.bwh = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i53.i.i.i.i.i, i64 -16
  %i.bwi = getelementptr inbounds i8, ptr %.0610.i.i.i.i.i.i52.i.i.i.i.i, i64 -16
  %.val.i.i.i.i.i.i54.i.i.i.i.i = load i64, ptr %i.bwh, align 8, !tbaa !145
  %i.bwj = getelementptr i8, ptr %.079.i.i.i.i.i.i53.i.i.i.i.i, i64 -8
  %.val8.i.i.i.i.i.i55.i.i.i.i.i = load ptr, ptr %i.bwj, align 8, !tbaa !726
  store i64 %.val.i.i.i.i.i.i54.i.i.i.i.i, ptr %i.bwi, align 8, !tbaa !725
  %i.bwk = getelementptr inbounds i8, ptr %.0610.i.i.i.i.i.i52.i.i.i.i.i, i64 -8
  store ptr %.val8.i.i.i.i.i.i55.i.i.i.i.i, ptr %i.bwk, align 8, !tbaa !727
  %i.bwl = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i53.i.i.i.i.i, i64 -32
  %i.bwm = getelementptr inbounds i8, ptr %.0610.i.i.i.i.i.i52.i.i.i.i.i, i64 -32
  %.val.i.i.i.i.i.i54.i.i.i.i.i.1 = load i64, ptr %i.bwl, align 8, !tbaa !145
  %i.bwn = getelementptr i8, ptr %.079.i.i.i.i.i.i53.i.i.i.i.i, i64 -24
  %.val8.i.i.i.i.i.i55.i.i.i.i.i.1 = load ptr, ptr %i.bwn, align 8, !tbaa !726
  store i64 %.val.i.i.i.i.i.i54.i.i.i.i.i.1, ptr %i.bwm, align 8, !tbaa !725
  %i.bwo = getelementptr inbounds i8, ptr %.0610.i.i.i.i.i.i52.i.i.i.i.i, i64 -24
  store ptr %.val8.i.i.i.i.i.i55.i.i.i.i.i.1, ptr %i.bwo, align 8, !tbaa !727
  %i.bwp = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i53.i.i.i.i.i, i64 -48
  %i.bwq = getelementptr inbounds i8, ptr %.0610.i.i.i.i.i.i52.i.i.i.i.i, i64 -48
  %.val.i.i.i.i.i.i54.i.i.i.i.i.2 = load i64, ptr %i.bwp, align 8, !tbaa !145
  %i.bwr = getelementptr i8, ptr %.079.i.i.i.i.i.i53.i.i.i.i.i, i64 -40
  %.val8.i.i.i.i.i.i55.i.i.i.i.i.2 = load ptr, ptr %i.bwr, align 8, !tbaa !726
  store i64 %.val.i.i.i.i.i.i54.i.i.i.i.i.2, ptr %i.bwq, align 8, !tbaa !725
  %i.bws = getelementptr inbounds i8, ptr %.0610.i.i.i.i.i.i52.i.i.i.i.i, i64 -40
  store ptr %.val8.i.i.i.i.i.i55.i.i.i.i.i.2, ptr %i.bws, align 8, !tbaa !727
  %i.bwt = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i53.i.i.i.i.i, i64 -64 ; 2 uses
  %i.bwu = getelementptr inbounds i8, ptr %.0610.i.i.i.i.i.i52.i.i.i.i.i, i64 -64 ; 2 uses
  %.val.i.i.i.i.i.i54.i.i.i.i.i.3 = load i64, ptr %i.bwt, align 8, !tbaa !145
  %i.bwv = getelementptr i8, ptr %.079.i.i.i.i.i.i53.i.i.i.i.i, i64 -56
  %.val8.i.i.i.i.i.i55.i.i.i.i.i.3 = load ptr, ptr %i.bwv, align 8, !tbaa !726
  store i64 %.val.i.i.i.i.i.i54.i.i.i.i.i.3, ptr %i.bwu, align 8, !tbaa !725
  %i.bww = getelementptr inbounds i8, ptr %.0610.i.i.i.i.i.i52.i.i.i.i.i, i64 -56
  store ptr %.val8.i.i.i.i.i.i55.i.i.i.i.i.3, ptr %i.bww, align 8, !tbaa !727
  %i.bwx = add nsw i64 %.011.i.i.i.i.i.i51.i.i.i.i.i, -4
  %i.bwy = icmp sgt i64 %.011.i.i.i.i.i.i51.i.i.i.i.i, 4
  br i1 %i.bwy, label %.lr.ph.i.i.i.i.i.i50.i.i.i.i.i, label %_ZSt13move_backwardIPSt4pairImPN12_GLOBAL__N_118DisassemblerTargetEES5_ET0_T_S7_S6_.exit.i48.i.i.i.i.i, !llvm.loop !3026

_ZSt13move_backwardIPSt4pairImPN12_GLOBAL__N_118DisassemblerTargetEES5_ET0_T_S7_S6_.exit.i48.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i50.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i50.i.i.i.i.i, %bb.ht
  store i64 %.0.val.i27.i.i.i.i.i, ptr %.val724.pre, align 8, !tbaa !725
  store ptr %.0.val16.i28.i.i.i.i.i, ptr %i.bvq, align 8, !tbaa !727
  br label %bb.hv

bb.hu:                                            ; preds = %bb.hs
  %.0.val1417.i.i32.i.i.i.i.i = load i64, ptr %.pn22.i26.i.i.i.i.i, align 8, !tbaa !725 ; 3 uses
  %i.bwz = getelementptr i8, ptr %.pn22.i26.i.i.i.i.i, i64 8
  %.0.val1518.i.i33.i.i.i.i.i = load ptr, ptr %i.bwz, align 8 ; 2 uses
  %i.bxa = icmp ult i64 %.0.val.i27.i.i.i.i.i, %.0.val1417.i.i32.i.i.i.i.i
  %i.bxb = icmp uge i64 %.0.val1417.i.i32.i.i.i.i.i, %.0.val.i27.i.i.i.i.i
  %i.bxc = icmp ult ptr %.0.val16.i28.i.i.i.i.i, %.0.val1518.i.i33.i.i.i.i.i
  %spec.select.i.i19.i.i34.i.i.i.i.i = select i1 %i.bxb, i1 %i.bxc, i1 false
  %i.bxd = select i1 %i.bxa, i1 true, i1 %spec.select.i.i19.i.i34.i.i.i.i.i
  br i1 %i.bxd, label %.lr.ph.i.i39.i.i.i.i.i, label %_ZSt25__unguarded_linear_insertIPSt4pairImPN12_GLOBAL__N_118DisassemblerTargetEEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i35.i.i.i.i.i

.lr.ph.i.i39.i.i.i.i.i:                           ; preds = %bb.hu, %.lr.ph.i.i39.i.i.i.i.i
  %.0.val1523.i.i40.i.i.i.i.i = phi ptr [ %.0.val15.i.i46.i.i.i.i.i, %.lr.ph.i.i39.i.i.i.i.i ], [ %.0.val1518.i.i33.i.i.i.i.i, %bb.hu ]
  %.0.val1422.i.i41.i.i.i.i.i = phi i64 [ %.0.val14.i.i45.i.i.i.i.i, %.lr.ph.i.i39.i.i.i.i.i ], [ %.0.val1417.i.i32.i.i.i.i.i, %bb.hu ]
  %.021.i.i42.i.i.i.i.i = phi ptr [ %.0.i.i44.i.i.i.i.i, %.lr.ph.i.i39.i.i.i.i.i ], [ %.pn22.i26.i.i.i.i.i, %bb.hu ] ; 4 uses
  %.0920.i.i43.i.i.i.i.i = phi ptr [ %.021.i.i42.i.i.i.i.i, %.lr.ph.i.i39.i.i.i.i.i ], [ %.023.i25.i.i.i.i.i, %bb.hu ] ; 2 uses
  store i64 %.0.val1422.i.i41.i.i.i.i.i, ptr %.0920.i.i43.i.i.i.i.i, align 8, !tbaa !725
  %i.bxe = getelementptr inbounds nuw i8, ptr %.0920.i.i43.i.i.i.i.i, i64 8
  store ptr %.0.val1523.i.i40.i.i.i.i.i, ptr %i.bxe, align 8, !tbaa !727
  %.0.i.i44.i.i.i.i.i = getelementptr inbounds i8, ptr %.021.i.i42.i.i.i.i.i, i64 -16 ; 2 uses
  %.0.val14.i.i45.i.i.i.i.i = load i64, ptr %.0.i.i44.i.i.i.i.i, align 8, !tbaa !725 ; 3 uses
  %i.bxf = getelementptr i8, ptr %.021.i.i42.i.i.i.i.i, i64 -8
  %.0.val15.i.i46.i.i.i.i.i = load ptr, ptr %i.bxf, align 8 ; 2 uses
  %i.bxg = icmp ult i64 %.0.val.i27.i.i.i.i.i, %.0.val14.i.i45.i.i.i.i.i
  %i.bxh = icmp uge i64 %.0.val14.i.i45.i.i.i.i.i, %.0.val.i27.i.i.i.i.i
  %i.bxi = icmp ult ptr %.0.val16.i28.i.i.i.i.i, %.0.val15.i.i46.i.i.i.i.i
  %spec.select.i.i.i.i47.i.i.i.i.i = select i1 %i.bxh, i1 %i.bxi, i1 false
  %i.bxj = select i1 %i.bxg, i1 true, i1 %spec.select.i.i.i.i47.i.i.i.i.i
  br i1 %i.bxj, label %.lr.ph.i.i39.i.i.i.i.i, label %_ZSt25__unguarded_linear_insertIPSt4pairImPN12_GLOBAL__N_118DisassemblerTargetEEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i35.i.i.i.i.i, !llvm.loop !3027

_ZSt25__unguarded_linear_insertIPSt4pairImPN12_GLOBAL__N_118DisassemblerTargetEEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i35.i.i.i.i.i: ; preds = %.lr.ph.i.i39.i.i.i.i.i, %bb.hu
  %.09.lcssa.i.i36.i.i.i.i.i = phi ptr [ %.023.i25.i.i.i.i.i, %bb.hu ], [ %.021.i.i42.i.i.i.i.i, %.lr.ph.i.i39.i.i.i.i.i ] ; 2 uses
  store i64 %.0.val.i27.i.i.i.i.i, ptr %.09.lcssa.i.i36.i.i.i.i.i, align 8, !tbaa !725
  %i.bxk = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i36.i.i.i.i.i, i64 8
  store ptr %.0.val16.i28.i.i.i.i.i, ptr %i.bxk, align 8, !tbaa !727
  br label %bb.hv

bb.hv:                                            ; preds = %_ZSt25__unguarded_linear_insertIPSt4pairImPN12_GLOBAL__N_118DisassemblerTargetEEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i35.i.i.i.i.i, %_ZSt13move_backwardIPSt4pairImPN12_GLOBAL__N_118DisassemblerTargetEES5_ET0_T_S7_S6_.exit.i48.i.i.i.i.i
  %.0.i37.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.023.i25.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i38.i.i.i.i.i = icmp eq ptr %.0.i37.i.i.i.i.i, %i.bte
  br i1 %.not.i38.i.i.i.i.i, label %_ZN4llvm4sortIRNS_11SmallVectorISt4pairImPN12_GLOBAL__N_118DisassemblerTargetEELj0EEEEEvOT_.exit, label %bb.hs, !llvm.loop !3028

_ZN4llvm4sortIRNS_11SmallVectorISt4pairImPN12_GLOBAL__N_118DisassemblerTargetEELj0EEEEEvOT_.exit: ; preds = %bb.hv, %_ZSt25__unguarded_linear_insertIPSt4pairImPN12_GLOBAL__N_118DisassemblerTargetEEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i11.i.i.i.i.i, %_ZN4llvm4sortIRNS_11SmallVectorISt4pairImcELj0EEEEEvOT_.exit, %bb.hm, %.preheader.i.i.i.i.i.i
  %274 = phi ptr [ %273, %_ZSt25__unguarded_linear_insertIPSt4pairImPN12_GLOBAL__N_118DisassemblerTargetEEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i11.i.i.i.i.i ], [ %241, %_ZN4llvm4sortIRNS_11SmallVectorISt4pairImcELj0EEEEEvOT_.exit ], [ %273, %.preheader.i.i.i.i.i.i ], [ %273, %bb.hm ], [ %273, %bb.hv ] ; 2 uses
  %275 = getelementptr inbounds nuw i8, ptr %274, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #34, !noalias !3383
  %i.bxl = load ptr, ptr %i.bic, align 8, !tbaa !229, !noalias !3383 ; 2 uses
  %.sroa.0.0.copyload.i1103 = load i64, ptr %i.bia, align 8, !tbaa !107, !noalias !3383
  %i.bxm = load ptr, ptr %i.bxl, align 8, !tbaa !128, !noalias !3383
  %i.bxn = getelementptr inbounds nuw i8, ptr %i.bxm, i64 176
  %i.bxo = load ptr, ptr %i.bxn, align 8, !noalias !3383
  call void %i.bxo(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.482") align 8 %56, ptr noundef nonnull align 8 dereferenceable(48) %i.bxl, i64 %.sroa.0.0.copyload.i1103) #34, !noalias !3383, !inline_history !32
  %i.bxp = load i8, ptr %i.bik, align 8, !noalias !3383
  %i.bxq = trunc i8 %i.bxp to i1                  ; 2 uses
  %i.bxr = load i64, ptr %56, align 8
  %i.bxs = load i64, ptr %i.bil, align 8          ; 2 uses
  %.sroa.51913.3 = select i1 %i.bxq, i64 %.sroa.51913.02451, i64 %i.bxs ; 7 uses
  %.sink.i = inttoptr i64 %i.bxr to ptr           ; 12 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #34, !noalias !3383
  %i.bxt = call { ptr, i64 } @_ZNK4llvm6object6Binary11getFileNameEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #34 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %54)
  call void @llvm.lifetime.start.p0(ptr nonnull %55)
  br i1 %i.bxq, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i1109, label %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit1118

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i1109: ; preds = %_ZN4llvm4sortIRNS_11SmallVectorISt4pairImPN12_GLOBAL__N_118DisassemblerTargetEELj0EEEEEvOT_.exit
  %i.bxu = extractvalue { ptr, i64 } %i.bxt, 1
  %i.bxv = extractvalue { ptr, i64 } %i.bxt, 0
  store ptr %.sink.i, ptr %54, align 8, !tbaa !136, !alias.scope !3384
  store ptr @.str.18, ptr %55, align 8, !tbaa !149
  %i.bxw = getelementptr inbounds nuw i8, ptr %55, i64 8
  store i64 0, ptr %i.bxw, align 8, !tbaa !150
  call void @_ZN4llvm7objdump11reportErrorENS_5ErrorENS_9StringRefES2_S2_(ptr nofree noundef nonnull align 8 dereferenceable(8) %54, ptr %i.bxv, i64 %i.bxu, ptr nonnull @.str.18, i64 0, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %55) #37
  unreachable

_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit1118:   ; preds = %_ZN4llvm4sortIRNS_11SmallVectorISt4pairImPN12_GLOBAL__N_118DisassemblerTargetEELj0EEEEEvOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %54)
  call void @llvm.lifetime.end.p0(ptr nonnull %55)
  %i.bxx = load i32, ptr %i.hg, align 8, !tbaa !178
  %i.bxy = add i32 %i.bxx, -13
  %spec.select.i1119 = icmp ult i32 %i.bxy, 4
  br i1 %spec.select.i1119, label %bb.hw, label %bb.jc

bb.hw:                                            ; preds = %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit1118
  %i.bxz = load ptr, ptr %0, align 8, !tbaa !128
  %i.bya = getelementptr inbounds nuw i8, ptr %i.bxz, i64 392
  %i.byb = load ptr, ptr %i.bya, align 8
  %i.byc = call noundef i32 %i.byb(ptr noundef nonnull align 8 dereferenceable(48) %0) #34
  %i.byd = icmp eq i32 %i.byc, 26
  br i1 %i.byd, label %bb.hx, label %bb.jc

bb.hx:                                            ; preds = %bb.hw
  %i.bye = getelementptr inbounds nuw i8, ptr %.02452, i64 72
  %i.byf = load ptr, ptr %i.bye, align 8, !tbaa !550 ; 4 uses
  %i.byg = load ptr, ptr %.02452, align 8, !tbaa !538 ; 2 uses
  %i.byh = getelementptr inbounds nuw i8, ptr %.02452, i64 8 ; 4 uses
  %i.byi = getelementptr inbounds nuw i8, ptr %.02452, i64 88
  %i.byj = load ptr, ptr %i.byi, align 8, !tbaa !682 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %48)
  call void @llvm.lifetime.start.p0(ptr nonnull %53)
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #34
  %i.byk = getelementptr inbounds nuw i8, ptr %i.byg, i64 216 ; 2 uses
  %i.byl = load ptr, ptr %i.byk, align 8, !tbaa !3385 ; 2 uses
  %.not.i.i1120 = icmp eq ptr %i.byl, null
  %spec.select.i.i1121 = select i1 %.not.i.i1120, ptr @_ZN4llvm22createMCRelocationInfoERKNS_6TripleERNS_9MCContextE, ptr %i.byl
  %i.bym = call noundef ptr %spec.select.i.i1121(ptr noundef nonnull align 8 dereferenceable(56) %i.byh, ptr noundef nonnull align 8 dereferenceable(2208) %i.byf) #34, !inline_history !3035 ; 2 uses
  store ptr %i.bym, ptr %47, align 8, !tbaa !3387
  %.not50.i = icmp eq ptr %i.bym, null
  br i1 %.not50.i, label %_ZL13addSymbolizerRN4llvm9MCContextEPKNS_6TargetERKNS_6TripleEPNS_14MCDisassemblerEmNS_8ArrayRefIhEERSt6vectorINS_12SymbolInfoTyESaISD_EERSC_ISt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteISN_EESaISQ_EE.exit, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.byn = getelementptr inbounds nuw i8, ptr %i.byg, i64 224 ; 2 uses
  %i.byo = load ptr, ptr %i.byn, align 8, !tbaa !3388 ; 2 uses
  %.not.i38.i = icmp eq ptr %i.byo, null
  %spec.select.i39.i = select i1 %.not.i38.i, ptr @_ZN4llvm18createMCSymbolizerERKNS_6TripleEPFiPvmmmmiS3_EPFPKcS3_mPmmPS7_ES3_PNS_9MCContextEOSt10unique_ptrINS_16MCRelocationInfoESt14default_deleteISF_EE, ptr %i.byo
  %i.byp = call noundef ptr %spec.select.i39.i(ptr noundef nonnull align 8 dereferenceable(56) %i.byh, ptr noundef null, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(24) %i.bsf, ptr noundef nonnull align 8 dereferenceable(2208) %i.byf, ptr noundef nonnull align 8 dereferenceable(8) %47) #34, !inline_history !3036 ; 3 uses
  %i.byq = ptrtoint ptr %i.byp to i64
  store i64 %i.byq, ptr %48, align 8, !tbaa !3390
  call void @_ZN4llvm14MCDisassembler13setSymbolizerESt10unique_ptrINS_12MCSymbolizerESt14default_deleteIS2_EE(ptr noundef nonnull align 8 dereferenceable(40) %i.byj, ptr nofree noundef nonnull align 8 dereferenceable(8) %48) #34
  %i.byr = load ptr, ptr %48, align 8, !tbaa !3390 ; 3 uses
  %.not.i40.i = icmp eq ptr %i.byr, null
  br i1 %.not.i40.i, label %_ZNSt10unique_ptrIN4llvm12MCSymbolizerESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN4llvm12MCSymbolizerEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvm12MCSymbolizerEEclEPS1_.exit.i.i: ; preds = %bb.hy
  %i.bys = load ptr, ptr %i.byr, align 8, !tbaa !128
  %i.byt = getelementptr inbounds nuw i8, ptr %i.bys, i64 8
  %i.byu = load ptr, ptr %i.byt, align 8
  call void %i.byu(ptr noundef nonnull align 8 dereferenceable(24) %i.byr) #34, !inline_history !3037
  br label %_ZNSt10unique_ptrIN4llvm12MCSymbolizerESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN4llvm12MCSymbolizerESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN4llvm12MCSymbolizerEEclEPS1_.exit.i.i, %bb.hy
  %i.byv = load i8, ptr @_ZL17SymbolizeOperands, align 1, !tbaa !162, !range !163, !noundef !164
  %i.byw = trunc nuw i8 %i.byv to i1
  br i1 %i.byw, label %.preheader.i, label %_ZNSt10unique_ptrIN4llvm12MCSymbolizerESt14default_deleteIS1_EED2Ev.exit59.i

.preheader.i:                                     ; preds = %_ZNSt10unique_ptrIN4llvm12MCSymbolizerESt14default_deleteIS1_EED2Ev.exit.i
  %.not54.i = icmp eq i64 %i.bxs, 0
  br i1 %.not54.i, label %._crit_edge.i1124, label %.lr.ph.i1122

._crit_edge.i1124:                                ; preds = %_ZN4llvm6MCInstD2Ev.exit.i, %.preheader.i
  %i.byx = load ptr, ptr %i.byp, align 8, !tbaa !128
  %i.byy = getelementptr inbounds nuw i8, ptr %i.byx, i64 32
  %i.byz = load ptr, ptr %i.byy, align 8
  %i.bza = call { ptr, i64 } %i.byz(ptr noundef nonnull align 8 dereferenceable(24) %i.byp) #34, !inline_history !3038 ; 2 uses
  %i.bzb = extractvalue { ptr, i64 } %i.bza, 0    ; 2 uses
  %i.bzc = extractvalue { ptr, i64 } %i.bza, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %50, i8 0, i64 24, i1 false)
  %i.bzd = getelementptr inbounds nuw [8 x i8], ptr %i.bzb, i64 %i.bzc
  call void @_ZNSt6vectorImSaImEE15_M_range_insertIPKmEEvN9__gnu_cxx17__normal_iteratorIPmS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %50, ptr null, ptr noundef %i.bzb, ptr noundef %i.bzd)
  %i.bze = load ptr, ptr %50, align 8, !tbaa !730 ; 5 uses
  %i.bzf = load ptr, ptr %i.biq, align 8, !tbaa !730 ; 5 uses
  %.not.i.i.i.i.i1125 = icmp eq ptr %i.bze, %i.bzf
  br i1 %.not.i.i.i.i.i1125, label %_ZN4llvm4sortIRSt6vectorImSaImEEEEvOT_.exit.i, label %bb.hz

bb.hz:                                            ; preds = %._crit_edge.i1124
  %i.bzg = ptrtoint ptr %i.bzf to i64
  %i.bzh = ptrtoint ptr %i.bze to i64
  %i.bzi = sub i64 %i.bzg, %i.bzh
  %i.bzj = ashr exact i64 %i.bzi, 3
  %i.bzk = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bzj, i1 true)
  %i.bzl = shl nuw nsw i64 %i.bzk, 1
  %i.bzm = xor i64 %i.bzl, 126
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.bze, ptr %i.bzf, i64 noundef %i.bzm)
  call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.bze, ptr %i.bzf)
  %.pr.i = load ptr, ptr %50, align 8, !tbaa !730
  %.pre.i1126 = load ptr, ptr %i.biq, align 8, !tbaa !730
  br label %_ZN4llvm4sortIRSt6vectorImSaImEEEEvOT_.exit.i

_ZN4llvm4sortIRSt6vectorImSaImEEEEvOT_.exit.i:    ; preds = %bb.hz, %._crit_edge.i1124
  %i.bzn = phi ptr [ %i.bzf, %._crit_edge.i1124 ], [ %.pre.i1126, %bb.hz ] ; 11 uses
  %i.bzo = phi ptr [ %i.bze, %._crit_edge.i1124 ], [ %.pr.i, %bb.hz ] ; 10 uses
  %i.bzp = icmp eq ptr %i.bzo, %i.bzn
  br i1 %i.bzp, label %_ZN4llvm6uniqueIRSt6vectorImSaImEEEEDaOT_.exit.i, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %_ZN4llvm4sortIRSt6vectorImSaImEEEEvOT_.exit.i, %bb.ia
  %.sroa.09.0.i.i.i.i.i = phi ptr [ %i.bzq, %bb.ia ], [ %i.bzo, %_ZN4llvm4sortIRSt6vectorImSaImEEEEvOT_.exit.i ] ; 5 uses
  %i.bzq = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i.i.i, i64 8 ; 3 uses
  %.not.i.i.i.i41.i = icmp eq ptr %i.bzq, %i.bzn
  br i1 %.not.i.i.i.i41.i, label %_ZN4llvm6uniqueIRSt6vectorImSaImEEEEDaOT_.exit.i, label %bb.ia

bb.ia:                                            ; preds = %.preheader.i.i.i.i.i
  %i.bzr = load i64, ptr %.sroa.09.0.i.i.i.i.i, align 8, !tbaa !145 ; 2 uses
  %i.bzs = load i64, ptr %i.bzq, align 8, !tbaa !145
  %i.bzt = icmp eq i64 %i.bzr, %i.bzs
  br i1 %i.bzt, label %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i.i.i, label %.preheader.i.i.i.i.i, !llvm.loop !3039

_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i.i.i: ; preds = %bb.ia
  %i.bzu = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i.i.i, i64 16 ; 2 uses
  %.not18.i.i.i.i = icmp eq ptr %i.bzu, %i.bzn
  br i1 %.not18.i.i.i.i, label %._crit_edge.i.i.i.i1129, label %.lr.ph.i.i.i.i1127

.lr.ph.i.i.i.i1127:                               ; preds = %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i.i.i, %bb.ic
  %i.bzv = phi i64 [ %i.bzx, %bb.ic ], [ %i.bzr, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i.i.i ]
  %i.bzw = phi ptr [ %i.caa, %bb.ic ], [ %i.bzu, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i.i.i ] ; 2 uses
  %.sroa.0.019.i.i.i.i = phi ptr [ %.sroa.0.1.i.i.i.i, %bb.ic ], [ %.sroa.09.0.i.i.i.i.i, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i.i.i ] ; 2 uses
  %i.bzx = load i64, ptr %i.bzw, align 8, !tbaa !145 ; 3 uses
  %i.bzy = icmp eq i64 %i.bzv, %i.bzx
  br i1 %i.bzy, label %bb.ic, label %bb.ib

bb.ib:                                            ; preds = %.lr.ph.i.i.i.i1127
  %i.bzz = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i.i.i, i64 8 ; 2 uses
  store i64 %i.bzx, ptr %i.bzz, align 8, !tbaa !145
  br label %bb.ic

bb.ic:                                            ; preds = %bb.ib, %.lr.ph.i.i.i.i1127
  %.sroa.0.1.i.i.i.i = phi ptr [ %.sroa.0.019.i.i.i.i, %.lr.ph.i.i.i.i1127 ], [ %i.bzz, %bb.ib ] ; 2 uses
  %i.caa = getelementptr inbounds nuw i8, ptr %i.bzw, i64 8 ; 2 uses
  %.not.i.i.i.i1128 = icmp eq ptr %i.caa, %i.bzn
  br i1 %.not.i.i.i.i1128, label %._crit_edge.i.i.i.i1129, label %.lr.ph.i.i.i.i1127, !llvm.loop !3040

._crit_edge.i.i.i.i1129:                          ; preds = %bb.ic, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i.i.i
  %.sroa.0.0.lcssa.i.i.i.i = phi ptr [ %.sroa.09.0.i.i.i.i.i, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i.i.i ], [ %.sroa.0.1.i.i.i.i, %bb.ic ]
  %i.cab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i.i.i, i64 8
  br label %_ZN4llvm6uniqueIRSt6vectorImSaImEEEEDaOT_.exit.i

_ZN4llvm6uniqueIRSt6vectorImSaImEEEEDaOT_.exit.i: ; preds = %.preheader.i.i.i.i.i, %._crit_edge.i.i.i.i1129, %_ZN4llvm4sortIRSt6vectorImSaImEEEEvOT_.exit.i
  %.sroa.05.0.i.i.i.i = phi ptr [ %i.cab, %._crit_edge.i.i.i.i1129 ], [ %i.bzn, %_ZN4llvm4sortIRSt6vectorImSaImEEEEvOT_.exit.i ], [ %i.bzn, %.preheader.i.i.i.i.i ] ; 2 uses
  %i.cac = ptrtoint ptr %.sroa.05.0.i.i.i.i to i64
  %i.cad = ptrtoint ptr %i.bzo to i64             ; 3 uses
  %i.cae = sub i64 %i.cac, %i.cad                 ; 2 uses
  %i.caf = ashr exact i64 %i.cae, 3               ; 3 uses
  %i.cag = ptrtoint ptr %i.bzn to i64             ; 2 uses
  %i.cah = sub i64 %i.cag, %i.cad                 ; 4 uses
  %i.cai = ashr exact i64 %i.cah, 3               ; 7 uses
  %i.caj = icmp ugt i64 %i.caf, %i.cai
  br i1 %i.caj, label %bb.id, label %bb.ij

bb.id:                                            ; preds = %_ZN4llvm6uniqueIRSt6vectorImSaImEEEEDaOT_.exit.i
  %i.cak = sub nuw nsw i64 %i.caf, %i.cai         ; 6 uses
  %i.cal = load ptr, ptr %i.bir, align 8, !tbaa !732
  %i.cam = ptrtoint ptr %i.cal to i64
  %i.can = sub i64 %i.cam, %i.cag
  %i.cao = ashr exact i64 %i.can, 3               ; 2 uses
  %i.cap = icmp ult i64 %i.cai, 1152921504606846976
  call void @llvm.assume(i1 %i.cap)
  %i.caq = xor i64 %i.cai, 1152921504606846975    ; 2 uses
  %i.car = icmp ule i64 %i.cao, %i.caq
  call void @llvm.assume(i1 %i.car)
  %.not23.i.i = icmp ult i64 %i.cao, %i.cak
  br i1 %.not23.i.i, label %bb.if, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  store i64 0, ptr %i.bzn, align 8, !tbaa !145
  %i.cas = getelementptr i8, ptr %i.bzn, i64 8    ; 3 uses
  %i.cat = add nsw i64 %i.cak, -1                 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZL17disassembleObjectRN4llvm6object10ObjectFileERKS1_RN12_GLOBAL__N_118DisassemblerTargetERSt8optionalIS6_ERNS_7objdump13SourcePrinterEbRNS_11raw_ostreamE:bb.a
  %.phi.trans.insert.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i, i64 8
  %.pre.i.i.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i, align 8, !tbaa !152, !alias.scope !3440
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i, %bb.rj
  %i.efd = phi i64 [ %.pre.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.eez, %bb.rj ]
  %i.efe = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i, i64 8
  %i.eff = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i, i64 8
  store i64 %i.efd, ptr %i.eff, align 8, !tbaa !152, !alias.scope !3439
  store ptr %i.eew, ptr %.092.i.i.i.i.i.i.i, align 8, !tbaa !106, !alias.scope !3440
  store i64 0, ptr %i.efe, align 8, !tbaa !152, !alias.scope !3440
  store i8 0, ptr %i.eew, align 8, !tbaa !107, !alias.scope !3440
  %i.efg = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.efh = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.efi = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i, i64 48 ; 3 uses
  store ptr %i.efi, ptr %i.efg, align 8, !tbaa !151, !alias.scope !3439
  %i.efj = load ptr, ptr %i.efh, align 8, !tbaa !106, !alias.scope !3440 ; 2 uses
  %i.efk = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i, i64 48 ; 5 uses
  %i.efl = icmp eq ptr %i.efj, %i.efk
  br i1 %i.efl, label %bb.rk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i.i.i.i

bb.rk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i.i
  %i.efm = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i, i64 40
  %i.efn = load i64, ptr %i.efm, align 8, !tbaa !152, !alias.scope !3440 ; 3 uses
  %i.efo = icmp ult i64 %i.efn, 16
  call void @llvm.assume(i1 %i.efo)
  %i.efp = add nuw nsw i64 %i.efn, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.efi, ptr noundef nonnull align 8 dereferenceable(1) %i.efk, i64 %i.efp, i1 false), !alias.scope !3441
  br label %_ZSt19__relocate_object_aIN12_GLOBAL__N_114BBAddrMapLabelES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i.i
  store ptr %i.efj, ptr %i.efg, align 8, !tbaa !106, !alias.scope !3439
  %i.efq = load i64, ptr %i.efk, align 8, !tbaa !107, !alias.scope !3440
  store i64 %i.efq, ptr %i.efi, align 8, !tbaa !107, !alias.scope !3439
  %.phi.trans.insert1.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i, i64 40
  %.pre2.i.i.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert1.i.i.i.i.i.i.i.i, align 8, !tbaa !152, !alias.scope !3440
  br label %_ZSt19__relocate_object_aIN12_GLOBAL__N_114BBAddrMapLabelES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i.i

_ZSt19__relocate_object_aIN12_GLOBAL__N_114BBAddrMapLabelES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i.i.i.i, %bb.rk
  %i.efr = phi i64 [ %i.efn, %bb.rk ], [ %.pre2.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i.i.i.i ]
  %i.efs = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i, i64 40
  %i.eft = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i, i64 40
  store i64 %i.efr, ptr %i.eft, align 8, !tbaa !152, !alias.scope !3439
  store ptr %i.efk, ptr %i.efh, align 8, !tbaa !106, !alias.scope !3440
  store i64 0, ptr %i.efs, align 8, !tbaa !152, !alias.scope !3440
  store i8 0, ptr %i.efk, align 8, !tbaa !107, !alias.scope !3440
  %i.efu = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %i.efv = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i1401 = icmp eq ptr %i.efu, %i.ecq
  br i1 %.not.i.i.i.i.i.i.i1401, label %_ZNSt6vectorIN12_GLOBAL__N_114BBAddrMapLabelESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i1400, !llvm.loop !3151

_ZNSt6vectorIN12_GLOBAL__N_114BBAddrMapLabelESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i.i.i: ; preds = %_ZSt19__relocate_object_aIN12_GLOBAL__N_114BBAddrMapLabelES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i.i, %_ZN12_GLOBAL__N_114BBAddrMapLabelC2EOS0_.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i1402 = phi ptr [ %i.edz, %_ZN12_GLOBAL__N_114BBAddrMapLabelC2EOS0_.exit.i.i.i.i ], [ %i.efv, %_ZSt19__relocate_object_aIN12_GLOBAL__N_114BBAddrMapLabelES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i.i ]
  %i.efw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i1402, i64 64
  %.not.i35.i.i.i.i = icmp eq ptr %.val.i.i.i.i, null
  br i1 %.not.i35.i.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_114BBAddrMapLabelESaIS1_EE9push_backEOS1_.exit.i, label %bb.rl

bb.rl:                                            ; preds = %_ZNSt6vectorIN12_GLOBAL__N_114BBAddrMapLabelESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i.i.i
  %i.efx = load ptr, ptr %i.ecr, align 8, !tbaa !801
  %i.efy = ptrtoint ptr %i.efx to i64
  %i.efz = sub i64 %i.efy, %i.edp
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.efz) #33
  br label %_ZNSt6vectorIN12_GLOBAL__N_114BBAddrMapLabelESaIS1_EE9push_backEOS1_.exit.i

_ZNSt6vectorIN12_GLOBAL__N_114BBAddrMapLabelESaIS1_EE9push_backEOS1_.exit.i: ; preds = %bb.rl, %_ZNSt6vectorIN12_GLOBAL__N_114BBAddrMapLabelESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i.i.i
  store ptr %i.edz, ptr %i.dyj, align 8, !tbaa !802
  store ptr %i.efw, ptr %i.ecp, align 8, !tbaa !800
  %i.ega = getelementptr inbounds nuw [64 x i8], ptr %i.edz, i64 %i.edx
  store ptr %i.ega, ptr %i.ecr, align 8, !tbaa !801
  %.pre75.i = load ptr, ptr %i.bme, align 8, !tbaa !106 ; 2 uses
  %i.egb = icmp eq ptr %.pre75.i, %i.bmf
  br i1 %i.egb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt6vectorIN12_GLOBAL__N_114BBAddrMapLabelESaIS1_EE9push_backEOS1_.exit.i
  %i.egc = load i64, ptr %i.bmf, align 8, !tbaa !107
  %i.egd = add i64 %i.egc, 1
  call void @_ZdlPvm(ptr noundef %.pre75.i, i64 noundef %i.egd) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZNSt6vectorIN12_GLOBAL__N_114BBAddrMapLabelESaIS1_EE9push_backEOS1_.exit.thread.i, %_ZNSt6vectorIN12_GLOBAL__N_114BBAddrMapLabelESaIS1_EE9push_backEOS1_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.ege = load ptr, ptr %32, align 8, !tbaa !106 ; 2 uses
  %i.egf = icmp eq ptr %i.ege, %i.bmb
  br i1 %i.egf, label %_ZN12_GLOBAL__N_114BBAddrMapLabelD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.egg = load i64, ptr %i.bmb, align 8, !tbaa !107
  %i.egh = add i64 %i.egg, 1
  call void @_ZdlPvm(ptr noundef %i.ege, i64 noundef %i.egh) #33
  br label %_ZN12_GLOBAL__N_114BBAddrMapLabelD2Ev.exit.i

_ZN12_GLOBAL__N_114BBAddrMapLabelD2Ev.exit.i:     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #34
  %i.egi = load ptr, ptr %30, align 8, !tbaa !106 ; 2 uses
  %i.egj = icmp eq ptr %i.egi, %i.bms
  br i1 %i.egj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1394, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1393

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1393: ; preds = %_ZN12_GLOBAL__N_114BBAddrMapLabelD2Ev.exit.i
  %i.egk = load i64, ptr %i.bms, align 8, !tbaa !107
  %i.egl = add i64 %i.egk, 1
  call void @_ZdlPvm(ptr noundef %i.egi, i64 noundef %i.egl) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1394

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1394: ; preds = %_ZN12_GLOBAL__N_114BBAddrMapLabelD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1393
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #34
  %.pre76.i = load ptr, ptr %i.dwy, align 8, !tbaa !783
  %.pre77.i = load ptr, ptr %i.dwx, align 8, !tbaa !784
  br label %bb.rm

bb.rm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1394, %bb.pu
  %i.egm = phi ptr [ %i.dxz, %bb.pu ], [ %.pre77.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1394 ] ; 2 uses
  %i.egn = phi ptr [ %i.dya, %bb.pu ], [ %.pre76.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1394 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  %i.ego = add nuw i64 %.055.i, 1                 ; 2 uses
  %i.egp = ptrtoint ptr %i.egn to i64
  %i.egq = ptrtoint ptr %i.egm to i64
  %i.egr = sub i64 %i.egp, %i.egq
  %i.egs = sdiv exact i64 %i.egr, 48
  %i.egt = icmp ult i64 %i.ego, %i.egs
  br i1 %i.egt, label %bb.pu, label %_ZL22collectBBAddrMapLabelsRKN12_GLOBAL__N_113BBAddrMapInfoEmmmRN4llvm8DenseMapImSt6vectorINS_14BBAddrMapLabelESaIS6_EENS3_12DenseMapInfoImvEENS3_6detail12DenseMapPairImS8_EEEE.exit, !llvm.loop !3152

_ZL22collectBBAddrMapLabelsRKN12_GLOBAL__N_113BBAddrMapInfoEmmmRN4llvm8DenseMapImSt6vectorINS_14BBAddrMapLabelESaIS6_EENS3_12DenseMapInfoImvEENS3_6detail12DenseMapPairImS8_EEEE.exit: ; preds = %bb.pt, %bb.rm, %_ZNK4llvm6object9BBAddrMap29getBBRangeIndexForBaseAddressEm.exit._crit_edge.i, %bb.ps, %_ZNK12_GLOBAL__N_113BBAddrMapInfo18getEntryForAddressEm.exit.i, %_ZL25collectLocalBranchTargetsN4llvm8ArrayRefIhEEPNS_15MCInstrAnalysisEPNS_14MCDisassemblerEPNS_13MCInstPrinterEPKNS_15MCSubtargetInfoEmmmRNS_8DenseMapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImSH_EEEE.exit, %bb.oa
  %i.egu = getelementptr inbounds nuw i8, ptr %.12442, i64 96
  %i.egv = load ptr, ptr %i.egu, align 8, !tbaa !694 ; 3 uses
  %.not2129 = icmp eq ptr %i.egv, null
  br i1 %.not2129, label %bb.ro, label %bb.rn

bb.rn:                                            ; preds = %_ZL22collectBBAddrMapLabelsRKN12_GLOBAL__N_113BBAddrMapInfoEmmmRN4llvm8DenseMapImSt6vectorINS_14BBAddrMapLabelESaIS6_EENS3_12DenseMapInfoImvEENS3_6detail12DenseMapPairImS8_EEEE.exit
  %i.egw = load ptr, ptr %i.egv, align 8, !tbaa !128
  %i.egx = getelementptr inbounds nuw i8, ptr %i.egw, i64 16
  %i.egy = load ptr, ptr %i.egx, align 8
  call void %i.egy(ptr noundef nonnull align 8 dereferenceable(16) %i.egv) #34
  br label %bb.ro

bb.ro:                                            ; preds = %bb.rn, %_ZL22collectBBAddrMapLabelsRKN12_GLOBAL__N_113BBAddrMapInfoEmmmRN4llvm8DenseMapImSt6vectorINS_14BBAddrMapLabelESaIS6_EENS3_12DenseMapInfoImvEENS3_6detail12DenseMapPairImS8_EEEE.exit
  %i.egz = icmp ult i64 %.0, %i.cuc
  br i1 %i.egz, label %.lr.ph3668, label %.loopexit3190

.lr.ph3668:                                       ; preds = %bb.ro
  %i.eha = add i64 %.02051, %i.cji
  br label %bb.rp

bb.rp:                                            ; preds = %.lr.ph3668, %bb.yp
  %.23666 = phi ptr [ %.12442, %.lr.ph3668 ], [ %.8, %bb.yp ] ; 3 uses
  %.06163665 = phi i1 [ false, %.lr.ph3668 ], [ %.1617, %bb.yp ] ; 3 uses
  %.13664 = phi i64 [ %.0, %.lr.ph3668 ], [ %i.fre, %bb.yp ] ; 9 uses
  %.sroa.03456.33663 = phi ptr [ %.sroa.03456.2, %.lr.ph3668 ], [ %.sroa.03456.13, %bb.yp ] ; 20 uses
  %i.ehb = load i32, ptr %i.bsv, align 8, !tbaa !226 ; 2 uses
  %.not.i1408 = icmp eq i32 %i.ehb, 0
  br i1 %.not.i1408, label %bb.ry, label %bb.rq

bb.rq:                                            ; preds = %bb.rp
  %i.ehc = load ptr, ptr %i.bsu, align 8, !tbaa !225 ; 2 uses
  %i.ehd = zext i32 %i.ehb to i64
  br label %_ZSt9__advanceIPKSt4pairImcElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i

_ZSt9__advanceIPKSt4pairImcElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i: ; preds = %bb.rq, %_ZSt9__advanceIPKSt4pairImcElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %.017.i.i.i = phi i64 [ %.1.i.i.i1413, %_ZSt9__advanceIPKSt4pairImcElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %i.ehd, %bb.rq ] ; 2 uses
  %.01016.i.i.i = phi ptr [ %.111.i.i.i, %_ZSt9__advanceIPKSt4pairImcElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %i.ehc, %bb.rq ] ; 2 uses
  %i.ehe = lshr i64 %.017.i.i.i, 1                ; 3 uses
  %i.ehf = getelementptr inbounds nuw [16 x i8], ptr %.01016.i.i.i, i64 %i.ehe ; 2 uses
  %.val12.i.i.i = load i64, ptr %i.ehf, align 8, !tbaa !704
  %.not.i.i.i1412 = icmp ugt i64 %.val12.i.i.i, %.13664 ; 2 uses
  %i.ehg = getelementptr inbounds nuw i8, ptr %i.ehf, i64 16
  %i.ehh = xor i64 %i.ehe, -1
  %i.ehi = add nsw i64 %.017.i.i.i, %i.ehh
  %.111.i.i.i = select i1 %.not.i.i.i1412, ptr %.01016.i.i.i, ptr %i.ehg ; 3 uses
  %.1.i.i.i1413 = select i1 %.not.i.i.i1412, i64 %i.ehe, i64 %i.ehi ; 2 uses
  %i.ehj = icmp sgt i64 %.1.i.i.i1413, 0
  br i1 %i.ehj, label %_ZSt9__advanceIPKSt4pairImcElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %"_ZN4llvm15partition_pointIRNS_8ArrayRefISt4pairImcEEEZL20getMappingSymbolKindS4_mE3$_0RKS3_EEDaOT_T0_.exit.i", !llvm.loop !3153

"_ZN4llvm15partition_pointIRNS_8ArrayRefISt4pairImcEEEZL20getMappingSymbolKindS4_mE3$_0RKS3_EEDaOT_T0_.exit.i": ; preds = %_ZSt9__advanceIPKSt4pairImcElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %i.ehk = icmp eq ptr %.111.i.i.i, %i.ehc
  br i1 %i.ehk, label %_ZL20getMappingSymbolKindN4llvm8ArrayRefISt4pairImcEEEm.exit, label %bb.rr

bb.rr:                                            ; preds = %"_ZN4llvm15partition_pointIRNS_8ArrayRefISt4pairImcEEEZL20getMappingSymbolKindS4_mE3$_0RKS3_EEDaOT_T0_.exit.i"
  %i.ehl = getelementptr inbounds i8, ptr %.111.i.i.i, i64 -8
  %i.ehm = load i8, ptr %i.ehl, align 8, !tbaa !705
  br label %_ZL20getMappingSymbolKindN4llvm8ArrayRefISt4pairImcEEEm.exit

_ZL20getMappingSymbolKindN4llvm8ArrayRefISt4pairImcEEEm.exit: ; preds = %"_ZN4llvm15partition_pointIRNS_8ArrayRefISt4pairImcEEEZL20getMappingSymbolKindS4_mE3$_0RKS3_EEDaOT_T0_.exit.i", %bb.rr
  %.0.i1409 = phi i8 [ %i.ehm, %bb.rr ], [ 0, %"_ZN4llvm15partition_pointIRNS_8ArrayRefISt4pairImcEEEZL20getMappingSymbolKindS4_mE3$_0RKS3_EEDaOT_T0_.exit.i" ] ; 2 uses
  %i.ehn = icmp eq i8 %.0.i1409, 100              ; 2 uses
  %.val706 = load i8, ptr %i.ag, align 8, !tbaa !451, !range !163, !noundef !164
  %i.eho = trunc nuw i8 %.val706 to i1
  br i1 %i.eho, label %bb.rs, label %bb.rv

bb.rs:                                            ; preds = %_ZL20getMappingSymbolKindN4llvm8ArrayRefISt4pairImcEEEm.exit
  switch i8 %.0.i1409, label %bb.rv [
    i8 97, label %bb.rt
    i8 116, label %bb.ru
  ]

bb.rt:                                            ; preds = %bb.rs
  br label %bb.rv

bb.ru:                                            ; preds = %bb.rs
  br label %bb.rv

bb.rv:                                            ; preds = %bb.ru, %bb.rt, %bb.rs, %_ZL20getMappingSymbolKindN4llvm8ArrayRefISt4pairImcEEEm.exit
  %.3 = phi ptr [ %.23666, %_ZL20getMappingSymbolKindN4llvm8ArrayRefISt4pairImcEEEm.exit ], [ %spec.select2112, %bb.rt ], [ %.23666, %bb.rs ], [ %spec.select2113, %bb.ru ]
  %i.ehp = load i32, ptr %275, align 8, !tbaa !226 ; 2 uses
  %.not.i1414 = icmp eq i32 %i.ehp, 0
  br i1 %.not.i1414, label %.thread2079, label %bb.rw

bb.rw:                                            ; preds = %bb.rv
  %.val734 = load ptr, ptr %274, align 8, !tbaa !225 ; 2 uses
  %i.ehq = zext i32 %i.ehp to i64
  br label %.lr.ph.i.i.i1416

.lr.ph.i.i.i1416:                                 ; preds = %bb.rw, %.lr.ph.i.i.i1416
  %.016.i.i.i1417 = phi i64 [ %.1.i.i.i1422, %.lr.ph.i.i.i1416 ], [ %i.ehq, %bb.rw ] ; 2 uses
  %.01015.i.i.i = phi ptr [ %.111.i.i.i1421, %.lr.ph.i.i.i1416 ], [ %.val734, %bb.rw ] ; 2 uses
  %i.ehr = lshr i64 %.016.i.i.i1417, 1            ; 3 uses
  %i.ehs = getelementptr inbounds nuw [16 x i8], ptr %.01015.i.i.i, i64 %i.ehr ; 2 uses
  %.val12.i.i.i1419 = load i64, ptr %i.ehs, align 8, !tbaa !725
  %.not.i.i.i1420 = icmp ugt i64 %.val12.i.i.i1419, %.13664 ; 2 uses
  %i.eht = getelementptr inbounds nuw i8, ptr %i.ehs, i64 16
  %i.ehu = xor i64 %i.ehr, -1
  %i.ehv = add nsw i64 %.016.i.i.i1417, %i.ehu
  %.111.i.i.i1421 = select i1 %.not.i.i.i1420, ptr %.01015.i.i.i, ptr %i.eht ; 3 uses
  %.1.i.i.i1422 = select i1 %.not.i.i.i1420, i64 %i.ehr, i64 %i.ehv ; 2 uses
  %i.ehw = icmp sgt i64 %.1.i.i.i1422, 0
  br i1 %i.ehw, label %.lr.ph.i.i.i1416, label %"_ZN4llvm15partition_pointIRNS_8ArrayRefISt4pairImPN12_GLOBAL__N_118DisassemblerTargetEEEEZL24getRISCVISAMappingTargetS7_mE3$_0RKS6_EEDaOT_T0_.exit.i", !llvm.loop !3154

"_ZN4llvm15partition_pointIRNS_8ArrayRefISt4pairImPN12_GLOBAL__N_118DisassemblerTargetEEEEZL24getRISCVISAMappingTargetS7_mE3$_0RKS6_EEDaOT_T0_.exit.i": ; preds = %.lr.ph.i.i.i1416
  %i.ehx = icmp eq ptr %.111.i.i.i1421, %.val734
  br i1 %i.ehx, label %_ZL24getRISCVISAMappingTargetN4llvm8ArrayRefISt4pairImPN12_GLOBAL__N_118DisassemblerTargetEEEEm.exit, label %bb.rx

bb.rx:                                            ; preds = %"_ZN4llvm15partition_pointIRNS_8ArrayRefISt4pairImPN12_GLOBAL__N_118DisassemblerTargetEEEEZL24getRISCVISAMappingTargetS7_mE3$_0RKS6_EEDaOT_T0_.exit.i"
  %i.ehy = getelementptr inbounds i8, ptr %.111.i.i.i1421, i64 -8
  %i.ehz = load ptr, ptr %i.ehy, align 8, !tbaa !727
  br label %_ZL24getRISCVISAMappingTargetN4llvm8ArrayRefISt4pairImPN12_GLOBAL__N_118DisassemblerTargetEEEEm.exit

_ZL24getRISCVISAMappingTargetN4llvm8ArrayRefISt4pairImPN12_GLOBAL__N_118DisassemblerTargetEEEEm.exit: ; preds = %"_ZN4llvm15partition_pointIRNS_8ArrayRefISt4pairImPN12_GLOBAL__N_118DisassemblerTargetEEEEZL24getRISCVISAMappingTargetS7_mE3$_0RKS6_EEDaOT_T0_.exit.i", %bb.rx
  %.0.i1415 = phi ptr [ %i.ehz, %bb.rx ], [ null, %"_ZN4llvm15partition_pointIRNS_8ArrayRefISt4pairImPN12_GLOBAL__N_118DisassemblerTargetEEEEZL24getRISCVISAMappingTargetS7_mE3$_0RKS6_EEDaOT_T0_.exit.i" ] ; 2 uses
  %.not676 = icmp eq ptr %.0.i1415, null
  %.699 = select i1 %.not676, ptr %2, ptr %.0.i1415
  br label %.thread2079

bb.ry:                                            ; preds = %bb.rp
  %i.eia = load i32, ptr %i.ae, align 8, !tbaa !226 ; 2 uses
  %.not.i1423 = icmp eq i32 %i.eia, 0
  br i1 %.not.i1423, label %.thread2079, label %_ZSt9__advanceIPSt4pairImmElEvRT_T0_St26random_access_iterator_tag.exit.i.preheader.i

_ZSt9__advanceIPSt4pairImmElEvRT_T0_St26random_access_iterator_tag.exit.i.preheader.i: ; preds = %bb.ry
  %i.eib = add i64 %.13664, %i.bra                ; 2 uses
  %.val736 = load ptr, ptr %190, align 8, !tbaa !225 ; 2 uses
  %i.eic = zext i32 %i.eia to i64
  br label %_ZSt9__advanceIPSt4pairImmElEvRT_T0_St26random_access_iterator_tag.exit.i.i

_ZSt9__advanceIPSt4pairImmElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %_ZSt9__advanceIPSt4pairImmElEvRT_T0_St26random_access_iterator_tag.exit.i.i, %_ZSt9__advanceIPSt4pairImmElEvRT_T0_St26random_access_iterator_tag.exit.i.preheader.i
  %.017.i.i = phi i64 [ %.1.i.i1428, %_ZSt9__advanceIPSt4pairImmElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.eic, %_ZSt9__advanceIPSt4pairImmElEvRT_T0_St26random_access_iterator_tag.exit.i.preheader.i ] ; 2 uses
  %.01016.i.i = phi ptr [ %.111.i.i, %_ZSt9__advanceIPSt4pairImmElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %.val736, %_ZSt9__advanceIPSt4pairImmElEvRT_T0_St26random_access_iterator_tag.exit.i.preheader.i ] ; 2 uses
  %i.eid = lshr i64 %.017.i.i, 1                  ; 3 uses
  %i.eie = getelementptr inbounds nuw [16 x i8], ptr %.01016.i.i, i64 %i.eid ; 2 uses
  %.val12.i.i = load i64, ptr %i.eie, align 8, !tbaa !696
  %.not.i.i1427 = icmp ugt i64 %.val12.i.i, %i.eib ; 2 uses
  %i.eif = getelementptr inbounds nuw i8, ptr %i.eie, i64 16
  %i.eig = xor i64 %i.eid, -1
  %i.eih = add nsw i64 %.017.i.i, %i.eig
  %.111.i.i = select i1 %.not.i.i1427, ptr %.01016.i.i, ptr %i.eif ; 3 uses
  %.1.i.i1428 = select i1 %.not.i.i1427, i64 %i.eid, i64 %i.eih ; 2 uses
  %i.eii = icmp sgt i64 %.1.i.i1428, 0
  br i1 %i.eii, label %_ZSt9__advanceIPSt4pairImmElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %"_ZN4llvm15partition_pointIRNS_11SmallVectorISt4pairImmELj0EEEZL17disassembleObjectRNS_6object10ObjectFileERKS7_RN12_GLOBAL__N_118DisassemblerTargetERSt8optionalISC_ERNS_7objdump13SourcePrinterEbRNS_11raw_ostreamEE3$_1RS3_EEDaOT_T0_.exit", !llvm.loop !3155

"_ZN4llvm15partition_pointIRNS_11SmallVectorISt4pairImmELj0EEEZL17disassembleObjectRNS_6object10ObjectFileERKS7_RN12_GLOBAL__N_118DisassemblerTargetERSt8optionalISC_ERNS_7objdump13SourcePrinterEbRNS_11raw_ostreamEE3$_1RS3_EEDaOT_T0_.exit": ; preds = %_ZSt9__advanceIPSt4pairImmElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %.not677 = icmp eq ptr %.111.i.i, %.val736
  br i1 %.not677, label %bb.sa, label %bb.rz

bb.rz:                                            ; preds = %"_ZN4llvm15partition_pointIRNS_11SmallVectorISt4pairImmELj0EEEZL17disassembleObjectRNS_6object10ObjectFileERKS7_RN12_GLOBAL__N_118DisassemblerTargetERSt8optionalISC_ERNS_7objdump13SourcePrinterEbRNS_11raw_ostreamEE3$_1RS3_EEDaOT_T0_.exit"
  %i.eij = getelementptr inbounds i8, ptr %.111.i.i, i64 -8
  %i.eik = load i64, ptr %i.eij, align 8, !tbaa !697
  %i.eil = icmp ult i64 %i.eib, %i.eik
  br i1 %i.eil, label %.thread2079, label %bb.sa

bb.sa:                                            ; preds = %"_ZN4llvm15partition_pointIRNS_11SmallVectorISt4pairImmELj0EEEZL17disassembleObjectRNS_6object10ObjectFileERKS7_RN12_GLOBAL__N_118DisassemblerTargetERSt8optionalISC_ERNS_7objdump13SourcePrinterEbRNS_11raw_ostreamEE3$_1RS3_EEDaOT_T0_.exit", %bb.rz
  %i.eim = icmp ne i64 %.13664, 0                 ; 2 uses
  %.neg = sext i1 %i.eim to i64
  %i.ein = add i64 %.13664, %.neg
  %i.eio = select i1 %i.eim, i64 4, i64 0
  %i.eip = add i64 %i.ein, %i.eio
  %i.eiq = and i64 %i.eip, -4                     ; 2 uses
  %.not678 = icmp ult i64 %i.eiq, %i.cuc
  br i1 %.not678, label %.thread2079, label %.loopexit3190

.thread2079:                                      ; preds = %bb.rz, %bb.rv, %_ZL24getRISCVISAMappingTargetN4llvm8ArrayRefISt4pairImPN12_GLOBAL__N_118DisassemblerTargetEEEEm.exit, %bb.ry, %bb.sa
  %.23469 = phi i64 [ %.13664, %bb.ry ], [ %i.eiq, %bb.sa ], [ %.13664, %bb.rz ], [ %.13664, %bb.rv ], [ %.13664, %_ZL24getRISCVISAMappingTargetN4llvm8ArrayRefISt4pairImPN12_GLOBAL__N_118DisassemblerTargetEEEEm.exit ] ; 24 uses
  %.1617 = phi i1 [ %.06163665, %bb.ry ], [ %.06163665, %bb.sa ], [ %.06163665, %bb.rz ], [ %i.ehn, %bb.rv ], [ %i.ehn, %_ZL24getRISCVISAMappingTargetN4llvm8ArrayRefISt4pairImPN12_GLOBAL__N_118DisassemblerTargetEEEEm.exit ] ; 2 uses
  %.8 = phi ptr [ %.23666, %bb.ry ], [ %2, %bb.sa ], [ %3, %bb.rz ], [ %.3, %bb.rv ], [ %.699, %_ZL24getRISCVISAMappingTargetN4llvm8ArrayRefISt4pairImPN12_GLOBAL__N_118DisassemblerTargetEEEEm.exit ] ; 13 uses
  %i.eir = load i8, ptr @_ZL17DisassembleZeroes, align 1, !tbaa !162, !range !163, !noundef !164
  %i.eis = trunc nuw i8 %i.eir to i1
  br i1 %i.eis, label %.thread2086, label %bb.sb

bb.sb:                                            ; preds = %.thread2079
  %i.eit = sub i64 %i.cuc, %.23469                ; 2 uses
  %.not2130 = icmp ne ptr %.sroa.03456.33663, %.0.lcssa.i.i.i.i.i1182
  %or.cond3476.not = select i1 %5, i1 %.not2130, i1 false
  br i1 %or.cond3476.not, label %bb.sc, label %bb.sd

bb.sc:                                            ; preds = %bb.sb
  %i.eiu = getelementptr inbounds nuw i8, ptr %.sroa.03456.33663, i64 8
  %i.eiv = load ptr, ptr %i.eiu, align 8, !tbaa !247 ; 2 uses
  %.sroa.0.0.copyload.i1429 = load i64, ptr %.sroa.03456.33663, align 8, !tbaa !107
  %i.eiw = load ptr, ptr %i.eiv, align 8, !tbaa !128
  %i.eix = getelementptr inbounds nuw i8, ptr %i.eiw, i64 304
  %i.eiy = load ptr, ptr %i.eix, align 8
  %i.eiz = call noundef i64 %i.eiy(ptr noundef nonnull align 8 dereferenceable(48) %i.eiv, i64 %.sroa.0.0.copyload.i1429) #34, !inline_history !5
  %i.eja = add i64 %.23469, %i.cjn
  %i.ejb = sub i64 %i.eiz, %i.eja
  %.sroa.speculated1776 = call i64 @llvm.umin.i64(i64 %i.eit, i64 %i.ejb)
  br label %bb.sd

bb.sd:                                            ; preds = %bb.sc, %bb.sb
  %.02050 = phi i64 [ %.sroa.speculated1776, %bb.sc ], [ %i.eit, %bb.sb ] ; 3 uses
  %i.ejc = getelementptr inbounds nuw i8, ptr %.sink.i, i64 %.23469
  %.not10.i = icmp eq i64 %.02050, 0
  br i1 %.not10.i, label %.thread2086, label %.lr.ph.i1433

.lr.ph.i1433:                                     ; preds = %bb.sd, %bb.se
  %.07.i = phi i64 [ %i.ejf, %bb.se ], [ 0, %bb.sd ] ; 3 uses
  %i.ejd = getelementptr inbounds nuw i8, ptr %i.ejc, i64 %.07.i
  %i.eje = load i8, ptr %i.ejd, align 1, !tbaa !107
  %.not.i1434 = icmp eq i8 %i.eje, 0
  br i1 %.not.i1434, label %bb.se, label %.critedge.i1435

bb.se:                                            ; preds = %.lr.ph.i1433
  %i.ejf = add nuw i64 %.07.i, 1                  ; 2 uses
  %exitcond.not.i1436 = icmp eq i64 %i.ejf, %.02050
  br i1 %exitcond.not.i1436, label %.critedge.i1435, label %.lr.ph.i1433, !llvm.loop !3156

.critedge.i1435:                                  ; preds = %bb.se, %.lr.ph.i1433
  %.0.lcssa.i = phi i64 [ %.02050, %bb.se ], [ %.07.i, %.lr.ph.i1433 ]
  %.0.lcssa.fr.i = freeze i64 %.0.lcssa.i         ; 2 uses
  %i.ejg = icmp ult i64 %.0.lcssa.fr.i, 8
  %i.ejh = and i64 %.0.lcssa.fr.i, -4             ; 2 uses
  br i1 %i.ejg, label %.thread2086, label %_ZL23countSkippableZeroBytesN4llvm8ArrayRefIhEE.exit

_ZL23countSkippableZeroBytesN4llvm8ArrayRefIhEE.exit: ; preds = %.critedge.i1435
  %i.eji = load ptr, ptr %.1603.ph.sroa.gep2631, align 8, !tbaa !161
  %i.ejj = load ptr, ptr %.1603.ph.sroa.gep2627, align 8, !tbaa !158 ; 2 uses
  %i.ejk = ptrtoint ptr %i.eji to i64
  %i.ejl = ptrtoint ptr %i.ejj to i64
  %i.ejm = sub i64 %i.ejk, %i.ejl
  %i.ejn = icmp ult i64 %i.ejm, 5
  br i1 %i.ejn, label %bb.sf, label %bb.sg

bb.sf:                                            ; preds = %_ZL23countSkippableZeroBytesN4llvm8ArrayRefIhEE.exit
  %i.ejo = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %258, ptr noundef nonnull @.str.183, i64 noundef 5) #34 ; 2 uses
  %.phi.trans.insert2703 = getelementptr inbounds nuw i8, ptr %i.ejo, i64 32
  %.pre2704 = load ptr, ptr %.phi.trans.insert2703, align 8, !tbaa !158
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit1439

bb.sg:                                            ; preds = %_ZL23countSkippableZeroBytesN4llvm8ArrayRefIhEE.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.ejj, ptr noundef nonnull align 1 dereferenceable(5) @.str.183, i64 5, i1 false)
  %i.ejp = load ptr, ptr %.1603.ph.sroa.gep2627, align 8, !tbaa !158
  %i.ejq = getelementptr inbounds nuw i8, ptr %i.ejp, i64 5 ; 2 uses
  store ptr %i.ejq, ptr %.1603.ph.sroa.gep2627, align 8, !tbaa !158
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit1439

_ZN4llvm11raw_ostreamlsEPKc.exit1439:             ; preds = %bb.sf, %bb.sg
  %i.ejr = phi ptr [ %.pre2704, %bb.sf ], [ %i.ejq, %bb.sg ] ; 3 uses
  %.0.i.i1438 = phi ptr [ %i.ejo, %bb.sf ], [ %258, %bb.sg ] ; 3 uses
  %i.ejs = getelementptr inbounds nuw i8, ptr %.0.i.i1438, i64 24
  %i.ejt = load ptr, ptr %i.ejs, align 8, !tbaa !161
  %.not.i1440 = icmp ult ptr %i.ejr, %i.ejt
  br i1 %.not.i1440, label %bb.si, label %bb.sh

bb.sh:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit1439
  %i.eju = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i1438, i8 noundef zeroext 10) #34 ; 0 uses
  br label %bb.yp

bb.si:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit1439
  %i.ejv = getelementptr inbounds nuw i8, ptr %.0.i.i1438, i64 32
  %i.ejw = getelementptr inbounds nuw i8, ptr %i.ejr, i64 1
  store ptr %i.ejw, ptr %i.ejv, align 8, !tbaa !158
  store i8 10, ptr %i.ejr, align 1, !tbaa !107
  br label %bb.yp

.thread2086:                                      ; preds = %.critedge.i1435, %bb.sd, %.thread2079
  br i1 %.1617, label %_ZNK4llvm6object6Binary14isLittleEndianEv.exit.i, label %bb.st

_ZNK4llvm6object6Binary14isLittleEndianEv.exit.i: ; preds = %.thread2086
  %i.ejx = getelementptr inbounds nuw i8, ptr %.8, i64 64
  %i.ejy = load ptr, ptr %i.ejx, align 8, !tbaa !453 ; 2 uses
  %.val738 = load i32, ptr %i.hg, align 8, !tbaa !178 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  %i.ejz = icmp ugt i32 %.val738, 20
  %switch.cast = trunc i32 %.val738 to i21
  %switch.downshift = lshr i21 698367, %switch.cast
  %switch.masked = trunc i21 %switch.downshift to i1
  %i.eka = select i1 %i.ejz, i1 true, i1 %switch.masked ; 2 uses
  %i.ekb = load ptr, ptr %258, align 8, !tbaa !128
  %i.ekc = getelementptr inbounds nuw i8, ptr %i.ekb, i64 80
  %i.ekd = load ptr, ptr %i.ekc, align 8
  %i.eke = call noundef i64 %i.ekd(ptr noundef nonnull align 8 dereferenceable(48) %258) #34, !inline_history !3157
  %i.ekf = load ptr, ptr %.1603.ph.sroa.gep2627, align 8, !tbaa !158
  %i.ekg = load ptr, ptr %i.bks, align 8, !tbaa !159
  %i.ekh = ptrtoint ptr %i.ekf to i64
  %i.eki = ptrtoint ptr %i.ekg to i64
  %i.ekj = add i64 %i.eke, %i.ekh
  %.neg.i = sub i64 %i.eki, %i.ekj                ; 3 uses
  %i.ekk = add i64 %.23469, %i.bra
  store ptr @.str.209, ptr %23, align 8, !tbaa !169, !alias.scope !3442
  store i64 %i.ekk, ptr %i.bnt, align 8, !tbaa !170, !alias.scope !3442
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #34
  store ptr %23, ptr %22, align 8, !tbaa !172
end_hunk_2
